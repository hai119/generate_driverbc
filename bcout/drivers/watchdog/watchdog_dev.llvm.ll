; ModuleID = '../bcout/drivers/watchdog/watchdog_dev.llvm.bc'
source_filename = "drivers/watchdog/watchdog_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.kthread_work* }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
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
%struct.seqcount = type { i32 }
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
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
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
%struct.user_namespace = type opaque
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.61, %struct.list_head, %struct.list_head, %union.anon.62 }
%struct.seqcount_spinlock = type { %struct.seqcount }
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
%struct.module = type opaque
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
%struct.xattr_handler = type opaque
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
%struct.block_device = type opaque
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
%struct.fsnotify_mark_connector = type opaque
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.61 = type { %struct.list_head }
%union.anon.62 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.53, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.54, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.55, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.58, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.kgid_t = type { i32 }
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
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.58 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.56 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.56 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
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
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.30 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.30 = type { %struct.callback_head }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.22, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.23, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.24, %union.anon.28, %struct.key_restriction* }
%union.anon.22 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.23 = type { i64 }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
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
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.44, i32, [12 x i8] }
%union.anon.44 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.45 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.vm_struct = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
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
%struct.kthread_work = type { %struct.list_head, void (%struct.kthread_work*)*, %struct.kthread_worker*, i32 }
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
%struct.kref = type { %struct.refcount_struct }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
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
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type opaque
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.subsys_private = type opaque
%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { i8* }
%struct.watchdog_core_data = type { %struct.device, %struct.cdev, %struct.watchdog_device*, %struct.mutex, i64, i64, i64, %struct.hrtimer, %struct.kthread_work, i64 }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.watchdog_device = type { i32, %struct.device*, %struct.attribute_group**, %struct.watchdog_info*, %struct.watchdog_ops*, %struct.watchdog_governor*, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, i8*, %struct.watchdog_core_data*, i64, %struct.list_head }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { %struct.module*, {}*, {}*, {}*, i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*, i32)*, i32 (%struct.watchdog_device*, i32)*, i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*, i64, i8*)*, i64 (%struct.watchdog_device*, i32, i64)* }
%struct.watchdog_governor = type { [20 x i8], void (%struct.watchdog_device*)* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.miscdevice = type { i32, i8*, %struct.file_operations*, %struct.list_head, %struct.device*, %struct.device*, %struct.attribute_group**, i8*, i16 }
%struct.kmem_cache = type opaque

@.str = private unnamed_addr constant [10 x i8] c"watchdogd\00", align 1
@watchdog_kworker = internal global %struct.kthread_worker* null, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [47 x i8] c"\013watchdog: Failed to create watchdog kworker\0A\00", align 1
@watchdog_dev_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3603
@watchdog_class = internal global %struct.class { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), %struct.module* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.kobject* null, i32 (%struct.device*, %struct.kobj_uevent_env*)* null, i8* (%struct.device*, i16*)* null, void (%struct.class*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, %struct.kobj_ns_type_operations* null, i8* (%struct.device*)* null, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)* null, %struct.dev_pm_ops* null, %struct.subsys_private* null }, align 8, !dbg !3705
@.str.2 = private unnamed_addr constant [37 x i8] c"\013watchdog: couldn't register class\0A\00", align 1
@watchdog_devt = internal global i32 0, align 4, !dbg !3682
@.str.3 = private unnamed_addr constant [9 x i8] c"watchdog\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"\013watchdog: watchdog: unable to allocate char dev region\0A\00", align 1
@__param_str_handle_boot_enabled = internal constant [29 x i8] c"watchdog.handle_boot_enabled\00", align 16, !dbg !3707
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@handle_boot_enabled = internal global i8 1, align 1, !dbg !3712
@__param_handle_boot_enabled = internal constant %struct.kernel_param { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__param_str_handle_boot_enabled, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.64 { i8* @handle_boot_enabled } }, section "__param", align 8, !dbg !3608
@__UNIQUE_ID_handle_boot_enabledtype209 = internal constant [43 x i8] c"watchdog.parmtype=handle_boot_enabled:bool\00", section ".modinfo", align 1, !dbg !3660
@__UNIQUE_ID_handle_boot_enabled210 = internal constant [124 x i8] c"watchdog.parm=handle_boot_enabled:Watchdog core auto-updates boot enabled watchdogs before userspace takes over (default=1)\00", section ".modinfo", align 1, !dbg !3665
@__param_str_open_timeout = internal constant [22 x i8] c"watchdog.open_timeout\00", align 16, !dbg !3714
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 8
@open_timeout = internal global i32 0, align 4, !dbg !3719
@__param_open_timeout = internal constant %struct.kernel_param { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__param_str_open_timeout, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.64 { i8* bitcast (i32* @open_timeout to i8*) } }, section "__param", align 8, !dbg !3670
@__UNIQUE_ID_open_timeouttype211 = internal constant [36 x i8] c"watchdog.parmtype=open_timeout:uint\00", section ".modinfo", align 1, !dbg !3672
@__UNIQUE_ID_open_timeout212 = internal constant [129 x i8] c"watchdog.parm=open_timeout:Maximum time (in seconds, 0 means infinity) for userspace to take over a running watchdog (default=0)\00", section ".modinfo", align 1, !dbg !3677
@watchdog_cdev_register.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3684
@.str.5 = private unnamed_addr constant [15 x i8] c"&wd_data->lock\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"watchdog%d\00", align 1
@old_wd_data = internal global %struct.watchdog_core_data* null, align 8, !dbg !3687
@watchdog_miscdev = internal global %struct.miscdevice { i32 130, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), %struct.file_operations* @watchdog_fops, %struct.list_head zeroinitializer, %struct.device* null, %struct.device* null, %struct.attribute_group** null, i8* null, i16 0 }, align 8, !dbg !3689
@.str.7 = private unnamed_addr constant [63 x i8] c"\013watchdog: %s: cannot register miscdev on minor=%d (err=%d).\0A\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"\013watchdog: %s: a legacy watchdog module is probably present.\0A\00", align 1
@watchdog_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i8*, i64, i64*)* @watchdog_write, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* @watchdog_ioctl, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @watchdog_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @watchdog_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8, !dbg !3703
@.str.9 = private unnamed_addr constant [51 x i8] c"\013watchdog: watchdog%d unable to add device %d:%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [80 x i8] c"\016watchdog: watchdog%d running and kernel based pre-userspace handler disabled\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.11 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@.str.14 = private unnamed_addr constant [67 x i8] c"\016watchdog: watchdog%d: nowayout prevents watchdog being stopped!\0A\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"\012watchdog: watchdog%d: watchdog did not stop!\0A\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (void ()* @watchdog_dev_exit to i8*), i8* bitcast (%struct.kernel_param* @__param_handle_boot_enabled to i8*), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__UNIQUE_ID_handle_boot_enabledtype209, i32 0, i32 0), i8* getelementptr inbounds ([124 x i8], [124 x i8]* @__UNIQUE_ID_handle_boot_enabled210, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_open_timeout to i8*), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__UNIQUE_ID_open_timeouttype211, i32 0, i32 0), i8* getelementptr inbounds ([129 x i8], [129 x i8]* @__UNIQUE_ID_open_timeout212, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @watchdog_dev_register(%struct.watchdog_device* %wdd) #0 !dbg !3727 {
entry:
  %retval = alloca i32, align 4
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  %ret = alloca i32, align 4
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !3728, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3730, metadata !DIExpression()), !dbg !3731
  %0 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !3732
  %call = call i32 @watchdog_cdev_register(%struct.watchdog_device* %0) #11, !dbg !3733
  store i32 %call, i32* %ret, align 4, !dbg !3734
  %1 = load i32, i32* %ret, align 4, !dbg !3735
  %tobool = icmp ne i32 %1, 0, !dbg !3735
  br i1 %tobool, label %if.then, label %if.end, !dbg !3737

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !3738
  store i32 %2, i32* %retval, align 4, !dbg !3739
  br label %return, !dbg !3739

if.end:                                           ; preds = %entry
  %3 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !3740
  %call1 = call i32 @watchdog_register_pretimeout(%struct.watchdog_device* %3) #11, !dbg !3741
  store i32 %call1, i32* %ret, align 4, !dbg !3742
  %4 = load i32, i32* %ret, align 4, !dbg !3743
  %tobool2 = icmp ne i32 %4, 0, !dbg !3743
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !3745

if.then3:                                         ; preds = %if.end
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !3746
  call void @watchdog_cdev_unregister(%struct.watchdog_device* %5) #11, !dbg !3747
  br label %if.end4, !dbg !3747

if.end4:                                          ; preds = %if.then3, %if.end
  %6 = load i32, i32* %ret, align 4, !dbg !3748
  store i32 %6, i32* %retval, align 4, !dbg !3749
  br label %return, !dbg !3749

return:                                           ; preds = %if.end4, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !3750
  ret i32 %7, !dbg !3750
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @watchdog_cdev_register(%struct.watchdog_device* %wdd) #0 !dbg !3686 {
entry:
  %retval = alloca i32, align 4
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  %wd_data = alloca %struct.watchdog_core_data*, align 8
  %err = alloca i32, align 4
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !3751, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.declare(metadata %struct.watchdog_core_data** %wd_data, metadata !3753, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.declare(metadata i32* %err, metadata !3755, metadata !DIExpression()), !dbg !3756
  %call = call i8* @kzalloc(i64 968, i32 3264) #11, !dbg !3757
  %0 = bitcast i8* %call to %struct.watchdog_core_data*, !dbg !3757
  store %struct.watchdog_core_data* %0, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3758
  %1 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3759
  %tobool = icmp ne %struct.watchdog_core_data* %1, null, !dbg !3759
  br i1 %tobool, label %if.end, label %if.then, !dbg !3761

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !3762
  br label %return, !dbg !3762

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !3763

do.body:                                          ; preds = %if.end
  %2 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3764
  %lock = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %2, i32 0, i32 3, !dbg !3764
  call void @__mutex_init(%struct.mutex* %lock, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), %struct.lock_class_key* @watchdog_cdev_register.__key) #11, !dbg !3764
  br label %do.end, !dbg !3764

do.end:                                           ; preds = %do.body
  %3 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !3766
  %4 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3767
  %wdd1 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %4, i32 0, i32 2, !dbg !3768
  store %struct.watchdog_device* %3, %struct.watchdog_device** %wdd1, align 8, !dbg !3769
  %5 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3770
  %6 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !3771
  %wd_data2 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %6, i32 0, i32 16, !dbg !3772
  store %struct.watchdog_core_data* %5, %struct.watchdog_core_data** %wd_data2, align 8, !dbg !3773
  %7 = load %struct.kthread_worker*, %struct.kthread_worker** @watchdog_kworker, align 8, !dbg !3774
  %8 = bitcast %struct.kthread_worker* %7 to i8*, !dbg !3774
  %call3 = call zeroext i1 @IS_ERR_OR_NULL(i8* %8) #11, !dbg !3776
  br i1 %call3, label %if.then4, label %if.end5, !dbg !3777

if.then4:                                         ; preds = %do.end
  %9 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3778
  %10 = bitcast %struct.watchdog_core_data* %9 to i8*, !dbg !3778
  call void @kfree(i8* %10) #11, !dbg !3780
  store i32 -19, i32* %retval, align 4, !dbg !3781
  br label %return, !dbg !3781

if.end5:                                          ; preds = %do.end
  %11 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3782
  %dev = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %11, i32 0, i32 0, !dbg !3783
  call void @device_initialize(%struct.device* %dev) #11, !dbg !3784
  %12 = load i32, i32* @watchdog_devt, align 4, !dbg !3785
  %shr = lshr i32 %12, 20, !dbg !3785
  %shl = shl i32 %shr, 20, !dbg !3785
  %13 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !3785
  %id = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %13, i32 0, i32 0, !dbg !3785
  %14 = load i32, i32* %id, align 8, !dbg !3785
  %or = or i32 %shl, %14, !dbg !3785
  %15 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3786
  %dev6 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %15, i32 0, i32 0, !dbg !3787
  %devt = getelementptr inbounds %struct.device, %struct.device* %dev6, i32 0, i32 25, !dbg !3788
  store i32 %or, i32* %devt, align 8, !dbg !3789
  %16 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3790
  %dev7 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %16, i32 0, i32 0, !dbg !3791
  %class = getelementptr inbounds %struct.device, %struct.device* %dev7, i32 0, i32 29, !dbg !3792
  store %struct.class* @watchdog_class, %struct.class** %class, align 8, !dbg !3793
  %17 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !3794
  %parent = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %17, i32 0, i32 1, !dbg !3795
  %18 = load %struct.device*, %struct.device** %parent, align 8, !dbg !3795
  %19 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3796
  %dev8 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %19, i32 0, i32 0, !dbg !3797
  %parent9 = getelementptr inbounds %struct.device, %struct.device* %dev8, i32 0, i32 1, !dbg !3798
  store %struct.device* %18, %struct.device** %parent9, align 8, !dbg !3799
  %20 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !3800
  %groups = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %20, i32 0, i32 2, !dbg !3801
  %21 = load %struct.attribute_group**, %struct.attribute_group*** %groups, align 8, !dbg !3801
  %22 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3802
  %dev10 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %22, i32 0, i32 0, !dbg !3803
  %groups11 = getelementptr inbounds %struct.device, %struct.device* %dev10, i32 0, i32 30, !dbg !3804
  store %struct.attribute_group** %21, %struct.attribute_group*** %groups11, align 8, !dbg !3805
  %23 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3806
  %dev12 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %23, i32 0, i32 0, !dbg !3807
  %release = getelementptr inbounds %struct.device, %struct.device* %dev12, i32 0, i32 31, !dbg !3808
  store void (%struct.device*)* @watchdog_core_data_release, void (%struct.device*)** %release, align 8, !dbg !3809
  %24 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3810
  %dev13 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %24, i32 0, i32 0, !dbg !3811
  %25 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !3812
  %26 = bitcast %struct.watchdog_device* %25 to i8*, !dbg !3812
  call void @dev_set_drvdata(%struct.device* %dev13, i8* %26) #11, !dbg !3813
  %27 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3814
  %dev14 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %27, i32 0, i32 0, !dbg !3815
  %28 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !3816
  %id15 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %28, i32 0, i32 0, !dbg !3817
  %29 = load i32, i32* %id15, align 8, !dbg !3817
  %call16 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %dev14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %29) #11, !dbg !3818
  br label %do.body17, !dbg !3819

do.body17:                                        ; preds = %if.end5
  %30 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3820
  %work = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %30, i32 0, i32 8, !dbg !3820
  %31 = bitcast %struct.kthread_work* %work to i8*, !dbg !3820
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 40, i1 false), !dbg !3820
  %32 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3820
  %work18 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %32, i32 0, i32 8, !dbg !3820
  %node = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %work18, i32 0, i32 0, !dbg !3820
  call void @INIT_LIST_HEAD(%struct.list_head* %node) #11, !dbg !3820
  %33 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3820
  %work19 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %33, i32 0, i32 8, !dbg !3820
  %func = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %work19, i32 0, i32 1, !dbg !3820
  store void (%struct.kthread_work*)* @watchdog_ping_work, void (%struct.kthread_work*)** %func, align 8, !dbg !3820
  br label %do.end20, !dbg !3820

do.end20:                                         ; preds = %do.body17
  %34 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3822
  %timer = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %34, i32 0, i32 7, !dbg !3823
  call void @hrtimer_init(%struct.hrtimer* %timer, i32 1, i32 9) #11, !dbg !3824
  %35 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3825
  %timer21 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %35, i32 0, i32 7, !dbg !3826
  %function = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer21, i32 0, i32 2, !dbg !3827
  store i32 (%struct.hrtimer*)* @watchdog_timer_expired, i32 (%struct.hrtimer*)** %function, align 8, !dbg !3828
  %36 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !3829
  %id22 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %36, i32 0, i32 0, !dbg !3831
  %37 = load i32, i32* %id22, align 8, !dbg !3831
  %cmp = icmp eq i32 %37, 0, !dbg !3832
  br i1 %cmp, label %if.then23, label %if.end38, !dbg !3833

if.then23:                                        ; preds = %do.end20
  %38 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3834
  store %struct.watchdog_core_data* %38, %struct.watchdog_core_data** @old_wd_data, align 8, !dbg !3836
  %39 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !3837
  %parent24 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %39, i32 0, i32 1, !dbg !3838
  %40 = load %struct.device*, %struct.device** %parent24, align 8, !dbg !3838
  store %struct.device* %40, %struct.device** getelementptr inbounds (%struct.miscdevice, %struct.miscdevice* @watchdog_miscdev, i32 0, i32 4), align 8, !dbg !3839
  %call25 = call i32 @misc_register(%struct.miscdevice* @watchdog_miscdev) #11, !dbg !3840
  store i32 %call25, i32* %err, align 4, !dbg !3841
  %41 = load i32, i32* %err, align 4, !dbg !3842
  %cmp26 = icmp ne i32 %41, 0, !dbg !3844
  br i1 %cmp26, label %if.then27, label %if.end37, !dbg !3845

if.then27:                                        ; preds = %if.then23
  %42 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !3846
  %info = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %42, i32 0, i32 3, !dbg !3846
  %43 = load %struct.watchdog_info*, %struct.watchdog_info** %info, align 8, !dbg !3846
  %identity = getelementptr inbounds %struct.watchdog_info, %struct.watchdog_info* %43, i32 0, i32 2, !dbg !3846
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %identity, i64 0, i64 0, !dbg !3846
  %44 = load i32, i32* %err, align 4, !dbg !3846
  %call28 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i8* %arraydecay, i32 130, i32 %44) #12, !dbg !3846
  %45 = load i32, i32* %err, align 4, !dbg !3848
  %cmp29 = icmp eq i32 %45, -16, !dbg !3850
  br i1 %cmp29, label %if.then30, label %if.end35, !dbg !3851

if.then30:                                        ; preds = %if.then27
  %46 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !3852
  %info31 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %46, i32 0, i32 3, !dbg !3852
  %47 = load %struct.watchdog_info*, %struct.watchdog_info** %info31, align 8, !dbg !3852
  %identity32 = getelementptr inbounds %struct.watchdog_info, %struct.watchdog_info* %47, i32 0, i32 2, !dbg !3852
  %arraydecay33 = getelementptr inbounds [32 x i8], [32 x i8]* %identity32, i64 0, i64 0, !dbg !3852
  %call34 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i64 0, i64 0), i8* %arraydecay33) #12, !dbg !3852
  br label %if.end35, !dbg !3852

if.end35:                                         ; preds = %if.then30, %if.then27
  store %struct.watchdog_core_data* null, %struct.watchdog_core_data** @old_wd_data, align 8, !dbg !3853
  %48 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3854
  %dev36 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %48, i32 0, i32 0, !dbg !3855
  call void @put_device(%struct.device* %dev36) #11, !dbg !3856
  %49 = load i32, i32* %err, align 4, !dbg !3857
  store i32 %49, i32* %retval, align 4, !dbg !3858
  br label %return, !dbg !3858

if.end37:                                         ; preds = %if.then23
  br label %if.end38, !dbg !3859

if.end38:                                         ; preds = %if.end37, %do.end20
  %50 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3860
  %cdev = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %50, i32 0, i32 1, !dbg !3861
  call void @cdev_init(%struct.cdev* %cdev, %struct.file_operations* @watchdog_fops) #11, !dbg !3862
  %51 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3863
  %cdev39 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %51, i32 0, i32 1, !dbg !3864
  %52 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3865
  %dev40 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %52, i32 0, i32 0, !dbg !3866
  %call41 = call i32 @cdev_device_add(%struct.cdev* %cdev39, %struct.device* %dev40) #11, !dbg !3867
  store i32 %call41, i32* %err, align 4, !dbg !3868
  %53 = load i32, i32* %err, align 4, !dbg !3869
  %tobool42 = icmp ne i32 %53, 0, !dbg !3869
  br i1 %tobool42, label %if.then43, label %if.end53, !dbg !3871

if.then43:                                        ; preds = %if.end38
  %54 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !3872
  %id44 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %54, i32 0, i32 0, !dbg !3872
  %55 = load i32, i32* %id44, align 8, !dbg !3872
  %56 = load i32, i32* @watchdog_devt, align 4, !dbg !3872
  %shr45 = lshr i32 %56, 20, !dbg !3872
  %57 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !3872
  %id46 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %57, i32 0, i32 0, !dbg !3872
  %58 = load i32, i32* %id46, align 8, !dbg !3872
  %call47 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0), i32 %55, i32 %shr45, i32 %58) #12, !dbg !3872
  %59 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !3874
  %id48 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %59, i32 0, i32 0, !dbg !3876
  %60 = load i32, i32* %id48, align 8, !dbg !3876
  %cmp49 = icmp eq i32 %60, 0, !dbg !3877
  br i1 %cmp49, label %if.then50, label %if.end52, !dbg !3878

if.then50:                                        ; preds = %if.then43
  call void @misc_deregister(%struct.miscdevice* @watchdog_miscdev) #11, !dbg !3879
  store %struct.watchdog_core_data* null, %struct.watchdog_core_data** @old_wd_data, align 8, !dbg !3881
  %61 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3882
  %dev51 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %61, i32 0, i32 0, !dbg !3883
  call void @put_device(%struct.device* %dev51) #11, !dbg !3884
  br label %if.end52, !dbg !3885

if.end52:                                         ; preds = %if.then50, %if.then43
  %62 = load i32, i32* %err, align 4, !dbg !3886
  store i32 %62, i32* %retval, align 4, !dbg !3887
  br label %return, !dbg !3887

if.end53:                                         ; preds = %if.end38
  %63 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !3888
  %ops = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %63, i32 0, i32 4, !dbg !3889
  %64 = load %struct.watchdog_ops*, %struct.watchdog_ops** %ops, align 8, !dbg !3889
  %owner = getelementptr inbounds %struct.watchdog_ops, %struct.watchdog_ops* %64, i32 0, i32 0, !dbg !3890
  %65 = load %struct.module*, %struct.module** %owner, align 8, !dbg !3890
  %66 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3891
  %cdev54 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %66, i32 0, i32 1, !dbg !3892
  %owner55 = getelementptr inbounds %struct.cdev, %struct.cdev* %cdev54, i32 0, i32 1, !dbg !3893
  store %struct.module* %65, %struct.module** %owner55, align 8, !dbg !3894
  %call56 = call i64 @ktime_get() #11, !dbg !3895
  %sub = sub i64 %call56, 1, !dbg !3895
  %67 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3896
  %last_hw_keepalive = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %67, i32 0, i32 5, !dbg !3897
  store i64 %sub, i64* %last_hw_keepalive, align 8, !dbg !3898
  %68 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3899
  call void @watchdog_set_open_deadline(%struct.watchdog_core_data* %68) #11, !dbg !3900
  %69 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !3901
  %call57 = call zeroext i1 @watchdog_hw_running(%struct.watchdog_device* %69) #11, !dbg !3903
  br i1 %call57, label %if.then58, label %if.end69, !dbg !3904

if.then58:                                        ; preds = %if.end53
  %70 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !3905
  %ops59 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %70, i32 0, i32 4, !dbg !3907
  %71 = load %struct.watchdog_ops*, %struct.watchdog_ops** %ops59, align 8, !dbg !3907
  %owner60 = getelementptr inbounds %struct.watchdog_ops, %struct.watchdog_ops* %71, i32 0, i32 0, !dbg !3908
  %72 = load %struct.module*, %struct.module** %owner60, align 8, !dbg !3908
  call void @__module_get(%struct.module* %72) #11, !dbg !3909
  %73 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3910
  %dev61 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %73, i32 0, i32 0, !dbg !3911
  %call62 = call %struct.device* @get_device(%struct.device* %dev61) #11, !dbg !3912
  %74 = load i8, i8* @handle_boot_enabled, align 1, !dbg !3913
  %tobool63 = trunc i8 %74 to i1, !dbg !3913
  br i1 %tobool63, label %if.then64, label %if.else, !dbg !3915

if.then64:                                        ; preds = %if.then58
  %75 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3916
  %timer65 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %75, i32 0, i32 7, !dbg !3917
  call void @hrtimer_start(%struct.hrtimer* %timer65, i64 0, i32 9) #11, !dbg !3918
  br label %if.end68, !dbg !3918

if.else:                                          ; preds = %if.then58
  %76 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !3919
  %id66 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %76, i32 0, i32 0, !dbg !3919
  %77 = load i32, i32* %id66, align 8, !dbg !3919
  %call67 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.10, i64 0, i64 0), i32 %77) #12, !dbg !3919
  br label %if.end68

if.end68:                                         ; preds = %if.else, %if.then64
  br label %if.end69, !dbg !3920

if.end69:                                         ; preds = %if.end68, %if.end53
  store i32 0, i32* %retval, align 4, !dbg !3921
  br label %return, !dbg !3921

return:                                           ; preds = %if.end69, %if.end52, %if.end35, %if.then4, %if.then
  %78 = load i32, i32* %retval, align 4, !dbg !3922
  ret i32 %78, !dbg !3922
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @watchdog_register_pretimeout(%struct.watchdog_device* %wdd) #0 !dbg !3923 {
entry:
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !3924, metadata !DIExpression()), !dbg !3925
  ret i32 0, !dbg !3926
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @watchdog_cdev_unregister(%struct.watchdog_device* %wdd) #0 !dbg !3927 {
entry:
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  %wd_data = alloca %struct.watchdog_core_data*, align 8
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !3928, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.declare(metadata %struct.watchdog_core_data** %wd_data, metadata !3930, metadata !DIExpression()), !dbg !3931
  %0 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !3932
  %wd_data1 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %0, i32 0, i32 16, !dbg !3933
  %1 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data1, align 8, !dbg !3933
  store %struct.watchdog_core_data* %1, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3931
  %2 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3934
  %cdev = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %2, i32 0, i32 1, !dbg !3935
  %3 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3936
  %dev = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %3, i32 0, i32 0, !dbg !3937
  call void @cdev_device_del(%struct.cdev* %cdev, %struct.device* %dev) #11, !dbg !3938
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !3939
  %id = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %4, i32 0, i32 0, !dbg !3941
  %5 = load i32, i32* %id, align 8, !dbg !3941
  %cmp = icmp eq i32 %5, 0, !dbg !3942
  br i1 %cmp, label %if.then, label %if.end, !dbg !3943

if.then:                                          ; preds = %entry
  call void @misc_deregister(%struct.miscdevice* @watchdog_miscdev) #11, !dbg !3944
  store %struct.watchdog_core_data* null, %struct.watchdog_core_data** @old_wd_data, align 8, !dbg !3946
  br label %if.end, !dbg !3947

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !3948
  %call = call zeroext i1 @watchdog_active(%struct.watchdog_device* %6) #11, !dbg !3950
  br i1 %call, label %land.lhs.true, label %if.end5, !dbg !3951

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !3952
  %status = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %7, i32 0, i32 17, !dbg !3953
  %call2 = call zeroext i1 @test_bit(i64 4, i64* %status) #11, !dbg !3954
  br i1 %call2, label %if.then3, label %if.end5, !dbg !3955

if.then3:                                         ; preds = %land.lhs.true
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !3956
  %call4 = call i32 @watchdog_stop(%struct.watchdog_device* %8) #11, !dbg !3958
  br label %if.end5, !dbg !3959

if.end5:                                          ; preds = %if.then3, %land.lhs.true, %if.end
  %9 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3960
  %lock = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %9, i32 0, i32 3, !dbg !3961
  call void @mutex_lock(%struct.mutex* %lock) #11, !dbg !3962
  %10 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3963
  %wdd6 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %10, i32 0, i32 2, !dbg !3964
  store %struct.watchdog_device* null, %struct.watchdog_device** %wdd6, align 8, !dbg !3965
  %11 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !3966
  %wd_data7 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %11, i32 0, i32 16, !dbg !3967
  store %struct.watchdog_core_data* null, %struct.watchdog_core_data** %wd_data7, align 8, !dbg !3968
  %12 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3969
  %lock8 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %12, i32 0, i32 3, !dbg !3970
  call void @mutex_unlock(%struct.mutex* %lock8) #11, !dbg !3971
  %13 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3972
  %timer = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %13, i32 0, i32 7, !dbg !3973
  %call9 = call i32 @hrtimer_cancel(%struct.hrtimer* %timer) #11, !dbg !3974
  %14 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3975
  %work = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %14, i32 0, i32 8, !dbg !3976
  %call10 = call zeroext i1 @kthread_cancel_work_sync(%struct.kthread_work* %work) #11, !dbg !3977
  %15 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !3978
  %dev11 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %15, i32 0, i32 0, !dbg !3979
  call void @put_device(%struct.device* %dev11) #11, !dbg !3980
  ret void, !dbg !3981
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @watchdog_dev_unregister(%struct.watchdog_device* %wdd) #0 !dbg !3982 {
entry:
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !3983, metadata !DIExpression()), !dbg !3984
  %0 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !3985
  call void @watchdog_unregister_pretimeout(%struct.watchdog_device* %0) #11, !dbg !3986
  %1 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !3987
  call void @watchdog_cdev_unregister(%struct.watchdog_device* %1) #11, !dbg !3988
  ret void, !dbg !3989
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @watchdog_unregister_pretimeout(%struct.watchdog_device* %wdd) #0 !dbg !3990 {
entry:
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !3991, metadata !DIExpression()), !dbg !3992
  ret void, !dbg !3993
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @watchdog_set_last_hw_keepalive(%struct.watchdog_device* %wdd, i32 %last_ping_ms) #0 !dbg !3994 {
entry:
  %retval = alloca i32, align 4
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  %last_ping_ms.addr = alloca i32, align 4
  %wd_data = alloca %struct.watchdog_core_data*, align 8
  %now = alloca i64, align 8
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !3995, metadata !DIExpression()), !dbg !3996
  store i32 %last_ping_ms, i32* %last_ping_ms.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %last_ping_ms.addr, metadata !3997, metadata !DIExpression()), !dbg !3998
  call void @llvm.dbg.declare(metadata %struct.watchdog_core_data** %wd_data, metadata !3999, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.declare(metadata i64* %now, metadata !4001, metadata !DIExpression()), !dbg !4002
  %0 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !4003
  %tobool = icmp ne %struct.watchdog_device* %0, null, !dbg !4003
  br i1 %tobool, label %if.end, label %if.then, !dbg !4005

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4006
  br label %return, !dbg !4006

if.end:                                           ; preds = %entry
  %1 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !4007
  %wd_data1 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %1, i32 0, i32 16, !dbg !4008
  %2 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data1, align 8, !dbg !4008
  store %struct.watchdog_core_data* %2, %struct.watchdog_core_data** %wd_data, align 8, !dbg !4009
  %call = call i64 @ktime_get() #11, !dbg !4010
  store i64 %call, i64* %now, align 8, !dbg !4011
  %3 = load i64, i64* %now, align 8, !dbg !4012
  %4 = load i32, i32* %last_ping_ms.addr, align 4, !dbg !4012
  %conv = zext i32 %4 to i64, !dbg !4012
  %call2 = call i64 @ms_to_ktime(i64 %conv) #11, !dbg !4012
  %sub = sub i64 %3, %call2, !dbg !4012
  %5 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !4013
  %last_hw_keepalive = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %5, i32 0, i32 5, !dbg !4014
  store i64 %sub, i64* %last_hw_keepalive, align 8, !dbg !4015
  %6 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !4016
  %call3 = call i32 @__watchdog_ping(%struct.watchdog_device* %6) #11, !dbg !4017
  store i32 %call3, i32* %retval, align 4, !dbg !4018
  br label %return, !dbg !4018

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !4019
  ret i32 %7, !dbg !4019
}

; Function Attrs: noredzone
declare dso_local i64 @ktime_get() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ms_to_ktime(i64 %ms) #0 !dbg !4020 {
entry:
  %ms.addr = alloca i64, align 8
  store i64 %ms, i64* %ms.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %ms.addr, metadata !4023, metadata !DIExpression()), !dbg !4024
  %0 = load i64, i64* %ms.addr, align 8, !dbg !4025
  %mul = mul i64 %0, 1000000, !dbg !4026
  ret i64 %mul, !dbg !4027
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__watchdog_ping(%struct.watchdog_device* %wdd) #0 !dbg !4028 {
entry:
  %retval = alloca i32, align 4
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  %wd_data = alloca %struct.watchdog_core_data*, align 8
  %earliest_keepalive = alloca i64, align 8
  %now = alloca i64, align 8
  %err = alloca i32, align 4
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !4029, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.declare(metadata %struct.watchdog_core_data** %wd_data, metadata !4031, metadata !DIExpression()), !dbg !4032
  %0 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !4033
  %wd_data1 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %0, i32 0, i32 16, !dbg !4034
  %1 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data1, align 8, !dbg !4034
  store %struct.watchdog_core_data* %1, %struct.watchdog_core_data** %wd_data, align 8, !dbg !4032
  call void @llvm.dbg.declare(metadata i64* %earliest_keepalive, metadata !4035, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.declare(metadata i64* %now, metadata !4037, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4039, metadata !DIExpression()), !dbg !4040
  %2 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !4041
  %last_hw_keepalive = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %2, i32 0, i32 5, !dbg !4041
  %3 = load i64, i64* %last_hw_keepalive, align 8, !dbg !4041
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !4041
  %min_hw_heartbeat_ms = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %4, i32 0, i32 11, !dbg !4041
  %5 = load i32, i32* %min_hw_heartbeat_ms, align 4, !dbg !4041
  %conv = zext i32 %5 to i64, !dbg !4041
  %call = call i64 @ms_to_ktime(i64 %conv) #11, !dbg !4041
  %add = add i64 %3, %call, !dbg !4041
  store i64 %add, i64* %earliest_keepalive, align 8, !dbg !4042
  %call2 = call i64 @ktime_get() #11, !dbg !4043
  store i64 %call2, i64* %now, align 8, !dbg !4044
  %6 = load i64, i64* %earliest_keepalive, align 8, !dbg !4045
  %7 = load i64, i64* %now, align 8, !dbg !4047
  %call3 = call zeroext i1 @ktime_after(i64 %6, i64 %7) #11, !dbg !4048
  br i1 %call3, label %if.then, label %if.end, !dbg !4049

if.then:                                          ; preds = %entry
  %8 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !4050
  %timer = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %8, i32 0, i32 7, !dbg !4052
  %9 = load i64, i64* %earliest_keepalive, align 8, !dbg !4053
  %10 = load i64, i64* %now, align 8, !dbg !4053
  %sub = sub i64 %9, %10, !dbg !4053
  call void @hrtimer_start(%struct.hrtimer* %timer, i64 %sub, i32 9) #11, !dbg !4054
  store i32 0, i32* %retval, align 4, !dbg !4055
  br label %return, !dbg !4055

if.end:                                           ; preds = %entry
  %11 = load i64, i64* %now, align 8, !dbg !4056
  %12 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !4057
  %last_hw_keepalive4 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %12, i32 0, i32 5, !dbg !4058
  store i64 %11, i64* %last_hw_keepalive4, align 8, !dbg !4059
  %13 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !4060
  %ops = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %13, i32 0, i32 4, !dbg !4062
  %14 = load %struct.watchdog_ops*, %struct.watchdog_ops** %ops, align 8, !dbg !4062
  %ping = getelementptr inbounds %struct.watchdog_ops, %struct.watchdog_ops* %14, i32 0, i32 3, !dbg !4063
  %ping5 = bitcast {}** %ping to i32 (%struct.watchdog_device*)**, !dbg !4063
  %15 = load i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*)** %ping5, align 8, !dbg !4063
  %tobool = icmp ne i32 (%struct.watchdog_device*)* %15, null, !dbg !4060
  br i1 %tobool, label %if.then6, label %if.else, !dbg !4064

if.then6:                                         ; preds = %if.end
  %16 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !4065
  %ops7 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %16, i32 0, i32 4, !dbg !4066
  %17 = load %struct.watchdog_ops*, %struct.watchdog_ops** %ops7, align 8, !dbg !4066
  %ping8 = getelementptr inbounds %struct.watchdog_ops, %struct.watchdog_ops* %17, i32 0, i32 3, !dbg !4067
  %ping9 = bitcast {}** %ping8 to i32 (%struct.watchdog_device*)**, !dbg !4067
  %18 = load i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*)** %ping9, align 8, !dbg !4067
  %19 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !4068
  %call10 = call i32 %18(%struct.watchdog_device* %19) #11, !dbg !4065
  store i32 %call10, i32* %err, align 4, !dbg !4069
  br label %if.end14, !dbg !4070

if.else:                                          ; preds = %if.end
  %20 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !4071
  %ops11 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %20, i32 0, i32 4, !dbg !4072
  %21 = load %struct.watchdog_ops*, %struct.watchdog_ops** %ops11, align 8, !dbg !4072
  %start = getelementptr inbounds %struct.watchdog_ops, %struct.watchdog_ops* %21, i32 0, i32 1, !dbg !4073
  %start12 = bitcast {}** %start to i32 (%struct.watchdog_device*)**, !dbg !4073
  %22 = load i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*)** %start12, align 8, !dbg !4073
  %23 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !4074
  %call13 = call i32 %22(%struct.watchdog_device* %23) #11, !dbg !4071
  store i32 %call13, i32* %err, align 4, !dbg !4075
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then6
  %24 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !4076
  call void @watchdog_update_worker(%struct.watchdog_device* %24) #11, !dbg !4077
  %25 = load i32, i32* %err, align 4, !dbg !4078
  store i32 %25, i32* %retval, align 4, !dbg !4079
  br label %return, !dbg !4079

return:                                           ; preds = %if.end14, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !4080
  ret i32 %26, !dbg !4080
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @watchdog_dev_init() #3 section ".init.text" !dbg !3605 {
entry:
  %retval = alloca i32, align 4
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4081, metadata !DIExpression()), !dbg !4082
  %call = call %struct.kthread_worker* (i32, i8*, ...) @kthread_create_worker(i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #11, !dbg !4083
  store %struct.kthread_worker* %call, %struct.kthread_worker** @watchdog_kworker, align 8, !dbg !4084
  %0 = load %struct.kthread_worker*, %struct.kthread_worker** @watchdog_kworker, align 8, !dbg !4085
  %1 = bitcast %struct.kthread_worker* %0 to i8*, !dbg !4085
  %call1 = call zeroext i1 @IS_ERR(i8* %1) #11, !dbg !4087
  br i1 %call1, label %if.then, label %if.end, !dbg !4088

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0)) #12, !dbg !4089
  %2 = load %struct.kthread_worker*, %struct.kthread_worker** @watchdog_kworker, align 8, !dbg !4091
  %3 = bitcast %struct.kthread_worker* %2 to i8*, !dbg !4091
  %call3 = call i64 @PTR_ERR(i8* %3) #11, !dbg !4092
  %conv = trunc i64 %call3 to i32, !dbg !4092
  store i32 %conv, i32* %retval, align 4, !dbg !4093
  br label %return, !dbg !4093

if.end:                                           ; preds = %entry
  %4 = load %struct.kthread_worker*, %struct.kthread_worker** @watchdog_kworker, align 8, !dbg !4094
  %task = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %4, i32 0, i32 4, !dbg !4095
  %5 = load %struct.task_struct*, %struct.task_struct** %task, align 8, !dbg !4095
  call void @sched_set_fifo(%struct.task_struct* %5) #11, !dbg !4096
  %call4 = call i32 @__class_register(%struct.class* @watchdog_class, %struct.lock_class_key* @watchdog_dev_init.__key) #11, !dbg !4097
  store i32 %call4, i32* %tmp, align 4, !dbg !4097
  %6 = load i32, i32* %tmp, align 4, !dbg !4097
  store i32 %6, i32* %err, align 4, !dbg !4099
  %7 = load i32, i32* %err, align 4, !dbg !4100
  %cmp = icmp slt i32 %7, 0, !dbg !4102
  br i1 %cmp, label %if.then6, label %if.end8, !dbg !4103

if.then6:                                         ; preds = %if.end
  %call7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0)) #12, !dbg !4104
  br label %err_register, !dbg !4106

if.end8:                                          ; preds = %if.end
  %call9 = call i32 @alloc_chrdev_region(i32* @watchdog_devt, i32 0, i32 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)) #11, !dbg !4107
  store i32 %call9, i32* %err, align 4, !dbg !4108
  %8 = load i32, i32* %err, align 4, !dbg !4109
  %cmp10 = icmp slt i32 %8, 0, !dbg !4111
  br i1 %cmp10, label %if.then12, label %if.end14, !dbg !4112

if.then12:                                        ; preds = %if.end8
  %call13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0)) #12, !dbg !4113
  br label %err_alloc, !dbg !4115

if.end14:                                         ; preds = %if.end8
  store i32 0, i32* %retval, align 4, !dbg !4116
  br label %return, !dbg !4116

err_alloc:                                        ; preds = %if.then12
  call void @llvm.dbg.label(metadata !4117), !dbg !4118
  call void @class_unregister(%struct.class* @watchdog_class) #11, !dbg !4119
  br label %err_register, !dbg !4119

err_register:                                     ; preds = %err_alloc, %if.then6
  call void @llvm.dbg.label(metadata !4120), !dbg !4121
  %9 = load %struct.kthread_worker*, %struct.kthread_worker** @watchdog_kworker, align 8, !dbg !4122
  call void @kthread_destroy_worker(%struct.kthread_worker* %9) #11, !dbg !4123
  %10 = load i32, i32* %err, align 4, !dbg !4124
  store i32 %10, i32* %retval, align 4, !dbg !4125
  br label %return, !dbg !4125

return:                                           ; preds = %err_register, %if.end14, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !4126
  ret i32 %11, !dbg !4126
}

; Function Attrs: noredzone
declare dso_local %struct.kthread_worker* @kthread_create_worker(i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !4127 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4131, metadata !DIExpression()), !dbg !4132
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4133
  %1 = ptrtoint i8* %0 to i64, !dbg !4133
  %2 = inttoptr i64 %1 to i8*, !dbg !4133
  %3 = ptrtoint i8* %2 to i64, !dbg !4133
  %cmp = icmp uge i64 %3, -4095, !dbg !4133
  %lnot = xor i1 %cmp, true, !dbg !4133
  %lnot1 = xor i1 %lnot, true, !dbg !4133
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4133
  %conv = sext i32 %lnot.ext to i64, !dbg !4133
  %tobool = icmp ne i64 %conv, 0, !dbg !4133
  ret i1 %tobool, !dbg !4134
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !4135 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4138, metadata !DIExpression()), !dbg !4139
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4140
  %1 = ptrtoint i8* %0 to i64, !dbg !4141
  ret i64 %1, !dbg !4142
}

; Function Attrs: noredzone
declare dso_local void @sched_set_fifo(%struct.task_struct*) #2

; Function Attrs: noredzone
declare dso_local i32 @__class_register(%struct.class*, %struct.lock_class_key*) #2

; Function Attrs: noredzone
declare dso_local i32 @alloc_chrdev_region(i32*, i32, i32, i8*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @class_unregister(%struct.class*) #2

; Function Attrs: noredzone
declare dso_local void @kthread_destroy_worker(%struct.kthread_worker*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local void @watchdog_dev_exit() #3 section ".exit.text" !dbg !4143 {
entry:
  %0 = load i32, i32* @watchdog_devt, align 4, !dbg !4144
  call void @unregister_chrdev_region(i32 %0, i32 32) #11, !dbg !4145
  call void @class_unregister(%struct.class* @watchdog_class) #11, !dbg !4146
  %1 = load %struct.kthread_worker*, %struct.kthread_worker** @watchdog_kworker, align 8, !dbg !4147
  call void @kthread_destroy_worker(%struct.kthread_worker* %1) #11, !dbg !4148
  ret void, !dbg !4149
}

; Function Attrs: noredzone
declare dso_local void @unregister_chrdev_region(i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4150 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4153, metadata !DIExpression()), !dbg !4157
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4163, metadata !DIExpression()), !dbg !4164
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4165, metadata !DIExpression()), !dbg !4166
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4167, metadata !DIExpression()), !dbg !4168
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4169, metadata !DIExpression()), !dbg !4173
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4175, metadata !DIExpression()), !dbg !4179
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4181, metadata !DIExpression()), !dbg !4185
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4190, metadata !DIExpression()), !dbg !4191
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4192, metadata !DIExpression()), !dbg !4193
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4194, metadata !DIExpression()), !dbg !4195
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4196, metadata !DIExpression()), !dbg !4197
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4198, metadata !DIExpression()), !dbg !4199
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4200, metadata !DIExpression()), !dbg !4201
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4202, metadata !DIExpression()), !dbg !4203
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4204, metadata !DIExpression()), !dbg !4205
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4206, metadata !DIExpression()), !dbg !4207
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4208, metadata !DIExpression()), !dbg !4209
  %0 = load i64, i64* %size.addr, align 8, !dbg !4210
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4211
  %or = or i32 %1, 256, !dbg !4212
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4213
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4214
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4215

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4216
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4217
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4218

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4219
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4220
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4221
  %call.i.i = call i32 @get_order(i64 %7) #13, !dbg !4222
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4199
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4223
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4224
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4225
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4226
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4227
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4228
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #14, !dbg !4229
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4229
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4229
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4229
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4229
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4230
  br label %kmalloc.exit, !dbg !4230

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4231
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4232
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4232
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4234

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4235
  br label %kmalloc_index.exit.i, !dbg !4235

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4236
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4238
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4239

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4240
  br label %kmalloc_index.exit.i, !dbg !4240

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4241
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4243
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4244

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4245
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4246
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4247

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4248
  br label %kmalloc_index.exit.i, !dbg !4248

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4249
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4251
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4252

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4253
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4254
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4255

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4256
  br label %kmalloc_index.exit.i, !dbg !4256

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4257
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4259
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4260

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4261
  br label %kmalloc_index.exit.i, !dbg !4261

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4262
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4264
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4265

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4266
  br label %kmalloc_index.exit.i, !dbg !4266

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4267
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4269
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4270

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4271
  br label %kmalloc_index.exit.i, !dbg !4271

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4272
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4274
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4275

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4276
  br label %kmalloc_index.exit.i, !dbg !4276

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4277
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4279
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4280

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4281
  br label %kmalloc_index.exit.i, !dbg !4281

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4282
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4284
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4285

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4286
  br label %kmalloc_index.exit.i, !dbg !4286

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4287
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4289
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4290

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4291
  br label %kmalloc_index.exit.i, !dbg !4291

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4292
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4294
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4295

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4296
  br label %kmalloc_index.exit.i, !dbg !4296

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4297
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4299
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4300

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4301
  br label %kmalloc_index.exit.i, !dbg !4301

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4302
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4304
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4305

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4306
  br label %kmalloc_index.exit.i, !dbg !4306

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4307
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4309
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4310

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4311
  br label %kmalloc_index.exit.i, !dbg !4311

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4312
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4314
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4315

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4316
  br label %kmalloc_index.exit.i, !dbg !4316

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4317
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4319
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4320

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4321
  br label %kmalloc_index.exit.i, !dbg !4321

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4322
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4324
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4325

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4326
  br label %kmalloc_index.exit.i, !dbg !4326

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4327
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4329
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4330

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4331
  br label %kmalloc_index.exit.i, !dbg !4331

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4332
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4334
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4335

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4336
  br label %kmalloc_index.exit.i, !dbg !4336

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4337
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4339
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4340

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4341
  br label %kmalloc_index.exit.i, !dbg !4341

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4342
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4344
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4345

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4346
  br label %kmalloc_index.exit.i, !dbg !4346

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4347
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4349
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4350

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4351
  br label %kmalloc_index.exit.i, !dbg !4351

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4352
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4354
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4355

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4356
  br label %kmalloc_index.exit.i, !dbg !4356

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4357
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4359
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4360

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4361
  br label %kmalloc_index.exit.i, !dbg !4361

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4362
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4364
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4365

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4366
  br label %kmalloc_index.exit.i, !dbg !4366

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4367
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4369
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4370

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4371
  br label %kmalloc_index.exit.i, !dbg !4371

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4372
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4374
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4375

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4376
  br label %kmalloc_index.exit.i, !dbg !4376

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4377, !srcloc !4380
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 202) #10, !dbg !4381, !srcloc !4384
  unreachable, !dbg !4385

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4386
  store i32 %45, i32* %index.i, align 4, !dbg !4387
  %46 = load i32, i32* %index.i, align 4, !dbg !4388
  %tobool.i = icmp ne i32 %46, 0, !dbg !4388
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4390

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4391
  br label %kmalloc.exit, !dbg !4391

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4392
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4393
  %and.i.i = and i32 %48, 17, !dbg !4393
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4393
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4393
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4393
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4393
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4395

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4396
  br label %kmalloc_type.exit.i, !dbg !4396

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4397
  %and2.i.i = and i32 %49, 1, !dbg !4398
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4397
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4397
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4397
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4399
  br label %kmalloc_type.exit.i, !dbg !4399

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4400
  %idxprom.i = zext i32 %51 to i64, !dbg !4401
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4401
  %52 = load i32, i32* %index.i, align 4, !dbg !4402
  %idxprom6.i = zext i32 %52 to i64, !dbg !4401
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4401
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4401
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4403
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4404
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4405
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4406
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #14, !dbg !4407
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4407
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4407
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4407
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4407
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4168
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4408
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4409
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4410
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4411
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #14, !dbg !4412
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4413
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4414
  store i8* %62, i8** %retval.i, align 8, !dbg !4415
  br label %kmalloc.exit, !dbg !4415

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4416
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4417
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #14, !dbg !4418
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4418
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4418
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4418
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4418
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4419
  br label %kmalloc.exit, !dbg !4419

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4420
  ret i8* %65, !dbg !4421
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(i8* %ptr) #0 !dbg !4422 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4423, metadata !DIExpression()), !dbg !4424
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4425
  %tobool = icmp ne i8* %0, null, !dbg !4425
  %lnot = xor i1 %tobool, true, !dbg !4425
  %lnot1 = xor i1 %lnot, true, !dbg !4425
  %lnot2 = xor i1 %lnot1, true, !dbg !4425
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4425
  %conv = sext i32 %lnot.ext to i64, !dbg !4425
  %tobool3 = icmp ne i64 %conv, 0, !dbg !4425
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !4426

lor.rhs:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !4427
  %2 = ptrtoint i8* %1 to i64, !dbg !4427
  %3 = inttoptr i64 %2 to i8*, !dbg !4427
  %4 = ptrtoint i8* %3 to i64, !dbg !4427
  %cmp = icmp uge i64 %4, -4095, !dbg !4427
  %lnot5 = xor i1 %cmp, true, !dbg !4427
  %lnot7 = xor i1 %lnot5, true, !dbg !4427
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !4427
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !4427
  %tobool10 = icmp ne i64 %conv9, 0, !dbg !4426
  br label %lor.end, !dbg !4426

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool10, %lor.rhs ]
  ret i1 %5, !dbg !4428
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noredzone
declare dso_local void @device_initialize(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @watchdog_core_data_release(%struct.device* %dev) #0 !dbg !4429 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %wd_data = alloca %struct.watchdog_core_data*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.watchdog_core_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4430, metadata !DIExpression()), !dbg !4431
  call void @llvm.dbg.declare(metadata %struct.watchdog_core_data** %wd_data, metadata !4432, metadata !DIExpression()), !dbg !4433
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4434, metadata !DIExpression()), !dbg !4436
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4436
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4436
  store i8* %1, i8** %__mptr, align 8, !dbg !4436
  br label %do.body, !dbg !4436

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4437

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4436
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4436
  %3 = bitcast i8* %add.ptr to %struct.watchdog_core_data*, !dbg !4436
  store %struct.watchdog_core_data* %3, %struct.watchdog_core_data** %tmp, align 8, !dbg !4437
  %4 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %tmp, align 8, !dbg !4436
  store %struct.watchdog_core_data* %4, %struct.watchdog_core_data** %wd_data, align 8, !dbg !4439
  %5 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !4440
  %6 = bitcast %struct.watchdog_core_data* %5 to i8*, !dbg !4440
  call void @kfree(i8* %6) #11, !dbg !4441
  ret void, !dbg !4442
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #0 !dbg !4443 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4446, metadata !DIExpression()), !dbg !4447
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4448, metadata !DIExpression()), !dbg !4449
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4450
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4451
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !4452
  store i8* %0, i8** %driver_data, align 8, !dbg !4453
  ret void, !dbg !4454
}

; Function Attrs: noredzone
declare dso_local i32 @dev_set_name(%struct.device*, i8*, ...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !4455 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !4459, metadata !DIExpression()), !dbg !4460
  br label %do.body, !dbg !4461

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4462

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4464

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4462

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4466
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4466
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4466
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !4466
  br label %do.end3, !dbg !4466

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4462

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4468
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4469
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !4470
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !4471
  ret void, !dbg !4472
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @watchdog_ping_work(%struct.kthread_work* %work) #0 !dbg !4473 {
entry:
  %work.addr = alloca %struct.kthread_work*, align 8
  %wd_data = alloca %struct.watchdog_core_data*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.watchdog_core_data*, align 8
  store %struct.kthread_work* %work, %struct.kthread_work** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kthread_work** %work.addr, metadata !4474, metadata !DIExpression()), !dbg !4475
  call void @llvm.dbg.declare(metadata %struct.watchdog_core_data** %wd_data, metadata !4476, metadata !DIExpression()), !dbg !4477
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4478, metadata !DIExpression()), !dbg !4480
  %0 = load %struct.kthread_work*, %struct.kthread_work** %work.addr, align 8, !dbg !4480
  %1 = bitcast %struct.kthread_work* %0 to i8*, !dbg !4480
  store i8* %1, i8** %__mptr, align 8, !dbg !4480
  br label %do.body, !dbg !4480

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4481

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4480
  %add.ptr = getelementptr i8, i8* %2, i64 -920, !dbg !4480
  %3 = bitcast i8* %add.ptr to %struct.watchdog_core_data*, !dbg !4480
  store %struct.watchdog_core_data* %3, %struct.watchdog_core_data** %tmp, align 8, !dbg !4481
  %4 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %tmp, align 8, !dbg !4480
  store %struct.watchdog_core_data* %4, %struct.watchdog_core_data** %wd_data, align 8, !dbg !4483
  %5 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !4484
  %lock = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %5, i32 0, i32 3, !dbg !4485
  call void @mutex_lock(%struct.mutex* %lock) #11, !dbg !4486
  %6 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !4487
  %call = call zeroext i1 @watchdog_worker_should_ping(%struct.watchdog_core_data* %6) #11, !dbg !4489
  br i1 %call, label %if.then, label %if.end, !dbg !4490

if.then:                                          ; preds = %do.end
  %7 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !4491
  %wdd = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %7, i32 0, i32 2, !dbg !4492
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !4492
  %call1 = call i32 @__watchdog_ping(%struct.watchdog_device* %8) #11, !dbg !4493
  br label %if.end, !dbg !4493

if.end:                                           ; preds = %if.then, %do.end
  %9 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !4494
  %lock2 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %9, i32 0, i32 3, !dbg !4495
  call void @mutex_unlock(%struct.mutex* %lock2) #11, !dbg !4496
  ret void, !dbg !4497
}

; Function Attrs: noredzone
declare dso_local void @hrtimer_init(%struct.hrtimer*, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @watchdog_timer_expired(%struct.hrtimer* %timer) #0 !dbg !4498 {
entry:
  %timer.addr = alloca %struct.hrtimer*, align 8
  %wd_data = alloca %struct.watchdog_core_data*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.watchdog_core_data*, align 8
  store %struct.hrtimer* %timer, %struct.hrtimer** %timer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hrtimer** %timer.addr, metadata !4499, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.declare(metadata %struct.watchdog_core_data** %wd_data, metadata !4501, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4503, metadata !DIExpression()), !dbg !4505
  %0 = load %struct.hrtimer*, %struct.hrtimer** %timer.addr, align 8, !dbg !4505
  %1 = bitcast %struct.hrtimer* %0 to i8*, !dbg !4505
  store i8* %1, i8** %__mptr, align 8, !dbg !4505
  br label %do.body, !dbg !4505

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4506

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4505
  %add.ptr = getelementptr i8, i8* %2, i64 -856, !dbg !4505
  %3 = bitcast i8* %add.ptr to %struct.watchdog_core_data*, !dbg !4505
  store %struct.watchdog_core_data* %3, %struct.watchdog_core_data** %tmp, align 8, !dbg !4506
  %4 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %tmp, align 8, !dbg !4505
  store %struct.watchdog_core_data* %4, %struct.watchdog_core_data** %wd_data, align 8, !dbg !4508
  %5 = load %struct.kthread_worker*, %struct.kthread_worker** @watchdog_kworker, align 8, !dbg !4509
  %6 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !4510
  %work = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %6, i32 0, i32 8, !dbg !4511
  %call = call zeroext i1 @kthread_queue_work(%struct.kthread_worker* %5, %struct.kthread_work* %work) #11, !dbg !4512
  ret i32 0, !dbg !4513
}

; Function Attrs: noredzone
declare dso_local i32 @misc_register(%struct.miscdevice*) #2

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local void @cdev_init(%struct.cdev*, %struct.file_operations*) #2

; Function Attrs: noredzone
declare dso_local i32 @cdev_device_add(%struct.cdev*, %struct.device*) #2

; Function Attrs: noredzone
declare dso_local void @misc_deregister(%struct.miscdevice*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @watchdog_set_open_deadline(%struct.watchdog_core_data* %data) #0 !dbg !4514 {
entry:
  %data.addr = alloca %struct.watchdog_core_data*, align 8
  store %struct.watchdog_core_data* %data, %struct.watchdog_core_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_core_data** %data.addr, metadata !4517, metadata !DIExpression()), !dbg !4518
  %0 = load i32, i32* @open_timeout, align 4, !dbg !4519
  %tobool = icmp ne i32 %0, 0, !dbg !4519
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4519

cond.true:                                        ; preds = %entry
  %call = call i64 @ktime_get() #11, !dbg !4520
  %1 = load i32, i32* @open_timeout, align 4, !dbg !4521
  %conv = zext i32 %1 to i64, !dbg !4521
  %call1 = call i64 @ktime_set(i64 %conv, i64 0) #11, !dbg !4522
  %add = add i64 %call, %call1, !dbg !4523
  br label %cond.end, !dbg !4519

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4519

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add, %cond.true ], [ 9223372036854775807, %cond.false ], !dbg !4519
  %2 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %data.addr, align 8, !dbg !4524
  %open_deadline = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %2, i32 0, i32 6, !dbg !4525
  store i64 %cond, i64* %open_deadline, align 8, !dbg !4526
  ret void, !dbg !4527
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @watchdog_hw_running(%struct.watchdog_device* %wdd) #0 !dbg !4528 {
entry:
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !4531, metadata !DIExpression()), !dbg !4532
  %0 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !4533
  %status = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %0, i32 0, i32 17, !dbg !4534
  %call = call zeroext i1 @test_bit(i64 3, i64* %status) #11, !dbg !4535
  ret i1 %call, !dbg !4536
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__module_get(%struct.module* %module) #0 !dbg !4537 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !4541, metadata !DIExpression()), !dbg !4542
  ret void, !dbg !4543
}

; Function Attrs: noredzone
declare dso_local %struct.device* @get_device(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hrtimer_start(%struct.hrtimer* %timer, i64 %tim, i32 %mode) #0 !dbg !4544 {
entry:
  %timer.addr = alloca %struct.hrtimer*, align 8
  %tim.addr = alloca i64, align 8
  %mode.addr = alloca i32, align 4
  store %struct.hrtimer* %timer, %struct.hrtimer** %timer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hrtimer** %timer.addr, metadata !4548, metadata !DIExpression()), !dbg !4549
  store i64 %tim, i64* %tim.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %tim.addr, metadata !4550, metadata !DIExpression()), !dbg !4551
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !4552, metadata !DIExpression()), !dbg !4553
  %0 = load %struct.hrtimer*, %struct.hrtimer** %timer.addr, align 8, !dbg !4554
  %1 = load i64, i64* %tim.addr, align 8, !dbg !4555
  %2 = load i32, i32* %mode.addr, align 4, !dbg !4556
  call void @hrtimer_start_range_ns(%struct.hrtimer* %0, i64 %1, i64 0, i32 %2) #11, !dbg !4557
  ret void, !dbg !4558
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !4559 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4563, metadata !DIExpression()), !dbg !4568
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4570, metadata !DIExpression()), !dbg !4571
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4572, metadata !DIExpression()), !dbg !4573
  %0 = load i64, i64* %size.addr, align 8, !dbg !4574
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4576
  br i1 %1, label %if.then, label %if.end447, !dbg !4577

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4578
  %tobool = icmp ne i64 %2, 0, !dbg !4578
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4581

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4582
  br label %return, !dbg !4582

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4583
  %cmp = icmp ult i64 %3, 4096, !dbg !4585
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4586

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4587
  br label %return, !dbg !4587

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub = sub i64 %4, 1, !dbg !4588
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4588
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4588

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub4 = sub i64 %6, 1, !dbg !4588
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4588
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4588

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub6 = sub i64 %8, 1, !dbg !4588
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4588
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4588

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4588

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub9 = sub i64 %9, 1, !dbg !4588
  %and = and i64 %sub9, -9223372036854775808, !dbg !4588
  %tobool10 = icmp ne i64 %and, 0, !dbg !4588
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4588

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4588

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub13 = sub i64 %10, 1, !dbg !4588
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4588
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4588
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4588

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4588

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub18 = sub i64 %11, 1, !dbg !4588
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4588
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4588
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4588

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4588

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub23 = sub i64 %12, 1, !dbg !4588
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4588
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4588
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4588

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4588

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub28 = sub i64 %13, 1, !dbg !4588
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4588
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4588
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4588

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4588

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub33 = sub i64 %14, 1, !dbg !4588
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4588
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4588
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4588

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4588

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub38 = sub i64 %15, 1, !dbg !4588
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4588
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4588
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4588

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4588

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub43 = sub i64 %16, 1, !dbg !4588
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4588
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4588
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4588

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4588

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub48 = sub i64 %17, 1, !dbg !4588
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4588
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4588
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4588

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4588

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub53 = sub i64 %18, 1, !dbg !4588
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4588
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4588
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4588

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4588

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub58 = sub i64 %19, 1, !dbg !4588
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4588
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4588
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4588

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4588

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub63 = sub i64 %20, 1, !dbg !4588
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4588
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4588
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4588

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4588

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub68 = sub i64 %21, 1, !dbg !4588
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4588
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4588
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4588

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4588

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub73 = sub i64 %22, 1, !dbg !4588
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4588
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4588
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4588

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4588

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub78 = sub i64 %23, 1, !dbg !4588
  %and79 = and i64 %sub78, 562949953421312, !dbg !4588
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4588
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4588

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4588

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub83 = sub i64 %24, 1, !dbg !4588
  %and84 = and i64 %sub83, 281474976710656, !dbg !4588
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4588
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4588

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4588

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub88 = sub i64 %25, 1, !dbg !4588
  %and89 = and i64 %sub88, 140737488355328, !dbg !4588
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4588
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4588

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4588

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub93 = sub i64 %26, 1, !dbg !4588
  %and94 = and i64 %sub93, 70368744177664, !dbg !4588
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4588
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4588

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4588

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub98 = sub i64 %27, 1, !dbg !4588
  %and99 = and i64 %sub98, 35184372088832, !dbg !4588
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4588
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4588

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4588

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub103 = sub i64 %28, 1, !dbg !4588
  %and104 = and i64 %sub103, 17592186044416, !dbg !4588
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4588
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4588

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4588

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub108 = sub i64 %29, 1, !dbg !4588
  %and109 = and i64 %sub108, 8796093022208, !dbg !4588
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4588
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4588

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4588

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub113 = sub i64 %30, 1, !dbg !4588
  %and114 = and i64 %sub113, 4398046511104, !dbg !4588
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4588
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4588

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4588

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub118 = sub i64 %31, 1, !dbg !4588
  %and119 = and i64 %sub118, 2199023255552, !dbg !4588
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4588
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4588

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4588

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub123 = sub i64 %32, 1, !dbg !4588
  %and124 = and i64 %sub123, 1099511627776, !dbg !4588
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4588
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4588

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4588

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub128 = sub i64 %33, 1, !dbg !4588
  %and129 = and i64 %sub128, 549755813888, !dbg !4588
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4588
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4588

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4588

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub133 = sub i64 %34, 1, !dbg !4588
  %and134 = and i64 %sub133, 274877906944, !dbg !4588
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4588
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4588

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4588

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub138 = sub i64 %35, 1, !dbg !4588
  %and139 = and i64 %sub138, 137438953472, !dbg !4588
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4588
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4588

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4588

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub143 = sub i64 %36, 1, !dbg !4588
  %and144 = and i64 %sub143, 68719476736, !dbg !4588
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4588
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4588

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4588

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub148 = sub i64 %37, 1, !dbg !4588
  %and149 = and i64 %sub148, 34359738368, !dbg !4588
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4588
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4588

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4588

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub153 = sub i64 %38, 1, !dbg !4588
  %and154 = and i64 %sub153, 17179869184, !dbg !4588
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4588
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4588

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4588

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub158 = sub i64 %39, 1, !dbg !4588
  %and159 = and i64 %sub158, 8589934592, !dbg !4588
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4588
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4588

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4588

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub163 = sub i64 %40, 1, !dbg !4588
  %and164 = and i64 %sub163, 4294967296, !dbg !4588
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4588
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4588

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4588

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub168 = sub i64 %41, 1, !dbg !4588
  %and169 = and i64 %sub168, 2147483648, !dbg !4588
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4588
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4588

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4588

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub173 = sub i64 %42, 1, !dbg !4588
  %and174 = and i64 %sub173, 1073741824, !dbg !4588
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4588
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4588

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4588

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub178 = sub i64 %43, 1, !dbg !4588
  %and179 = and i64 %sub178, 536870912, !dbg !4588
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4588
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4588

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4588

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub183 = sub i64 %44, 1, !dbg !4588
  %and184 = and i64 %sub183, 268435456, !dbg !4588
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4588
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4588

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4588

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub188 = sub i64 %45, 1, !dbg !4588
  %and189 = and i64 %sub188, 134217728, !dbg !4588
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4588
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4588

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4588

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub193 = sub i64 %46, 1, !dbg !4588
  %and194 = and i64 %sub193, 67108864, !dbg !4588
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4588
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4588

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4588

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub198 = sub i64 %47, 1, !dbg !4588
  %and199 = and i64 %sub198, 33554432, !dbg !4588
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4588
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4588

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4588

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub203 = sub i64 %48, 1, !dbg !4588
  %and204 = and i64 %sub203, 16777216, !dbg !4588
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4588
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4588

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4588

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub208 = sub i64 %49, 1, !dbg !4588
  %and209 = and i64 %sub208, 8388608, !dbg !4588
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4588
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4588

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4588

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub213 = sub i64 %50, 1, !dbg !4588
  %and214 = and i64 %sub213, 4194304, !dbg !4588
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4588
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4588

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4588

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub218 = sub i64 %51, 1, !dbg !4588
  %and219 = and i64 %sub218, 2097152, !dbg !4588
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4588
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4588

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4588

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub223 = sub i64 %52, 1, !dbg !4588
  %and224 = and i64 %sub223, 1048576, !dbg !4588
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4588
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4588

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4588

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub228 = sub i64 %53, 1, !dbg !4588
  %and229 = and i64 %sub228, 524288, !dbg !4588
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4588
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4588

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4588

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub233 = sub i64 %54, 1, !dbg !4588
  %and234 = and i64 %sub233, 262144, !dbg !4588
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4588
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4588

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4588

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub238 = sub i64 %55, 1, !dbg !4588
  %and239 = and i64 %sub238, 131072, !dbg !4588
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4588
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4588

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4588

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub243 = sub i64 %56, 1, !dbg !4588
  %and244 = and i64 %sub243, 65536, !dbg !4588
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4588
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4588

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4588

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub248 = sub i64 %57, 1, !dbg !4588
  %and249 = and i64 %sub248, 32768, !dbg !4588
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4588
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4588

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4588

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub253 = sub i64 %58, 1, !dbg !4588
  %and254 = and i64 %sub253, 16384, !dbg !4588
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4588
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4588

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4588

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub258 = sub i64 %59, 1, !dbg !4588
  %and259 = and i64 %sub258, 8192, !dbg !4588
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4588
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4588

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4588

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub263 = sub i64 %60, 1, !dbg !4588
  %and264 = and i64 %sub263, 4096, !dbg !4588
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4588
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4588

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4588

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub268 = sub i64 %61, 1, !dbg !4588
  %and269 = and i64 %sub268, 2048, !dbg !4588
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4588
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4588

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4588

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub273 = sub i64 %62, 1, !dbg !4588
  %and274 = and i64 %sub273, 1024, !dbg !4588
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4588
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4588

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4588

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub278 = sub i64 %63, 1, !dbg !4588
  %and279 = and i64 %sub278, 512, !dbg !4588
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4588
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4588

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4588

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub283 = sub i64 %64, 1, !dbg !4588
  %and284 = and i64 %sub283, 256, !dbg !4588
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4588
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4588

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4588

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub288 = sub i64 %65, 1, !dbg !4588
  %and289 = and i64 %sub288, 128, !dbg !4588
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4588
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4588

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4588

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub293 = sub i64 %66, 1, !dbg !4588
  %and294 = and i64 %sub293, 64, !dbg !4588
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4588
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4588

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4588

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub298 = sub i64 %67, 1, !dbg !4588
  %and299 = and i64 %sub298, 32, !dbg !4588
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4588
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4588

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4588

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub303 = sub i64 %68, 1, !dbg !4588
  %and304 = and i64 %sub303, 16, !dbg !4588
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4588
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4588

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4588

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub308 = sub i64 %69, 1, !dbg !4588
  %and309 = and i64 %sub308, 8, !dbg !4588
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4588
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4588

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4588

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub313 = sub i64 %70, 1, !dbg !4588
  %and314 = and i64 %sub313, 4, !dbg !4588
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4588
  %71 = zext i1 %tobool315 to i64, !dbg !4588
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4588
  br label %cond.end, !dbg !4588

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4588
  br label %cond.end317, !dbg !4588

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4588
  br label %cond.end319, !dbg !4588

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4588
  br label %cond.end321, !dbg !4588

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4588
  br label %cond.end323, !dbg !4588

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4588
  br label %cond.end325, !dbg !4588

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4588
  br label %cond.end327, !dbg !4588

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4588
  br label %cond.end329, !dbg !4588

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4588
  br label %cond.end331, !dbg !4588

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4588
  br label %cond.end333, !dbg !4588

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4588
  br label %cond.end335, !dbg !4588

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4588
  br label %cond.end337, !dbg !4588

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4588
  br label %cond.end339, !dbg !4588

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4588
  br label %cond.end341, !dbg !4588

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4588
  br label %cond.end343, !dbg !4588

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4588
  br label %cond.end345, !dbg !4588

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4588
  br label %cond.end347, !dbg !4588

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4588
  br label %cond.end349, !dbg !4588

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4588
  br label %cond.end351, !dbg !4588

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4588
  br label %cond.end353, !dbg !4588

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4588
  br label %cond.end355, !dbg !4588

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4588
  br label %cond.end357, !dbg !4588

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4588
  br label %cond.end359, !dbg !4588

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4588
  br label %cond.end361, !dbg !4588

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4588
  br label %cond.end363, !dbg !4588

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4588
  br label %cond.end365, !dbg !4588

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4588
  br label %cond.end367, !dbg !4588

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4588
  br label %cond.end369, !dbg !4588

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4588
  br label %cond.end371, !dbg !4588

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4588
  br label %cond.end373, !dbg !4588

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4588
  br label %cond.end375, !dbg !4588

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4588
  br label %cond.end377, !dbg !4588

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4588
  br label %cond.end379, !dbg !4588

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4588
  br label %cond.end381, !dbg !4588

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4588
  br label %cond.end383, !dbg !4588

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4588
  br label %cond.end385, !dbg !4588

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4588
  br label %cond.end387, !dbg !4588

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4588
  br label %cond.end389, !dbg !4588

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4588
  br label %cond.end391, !dbg !4588

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4588
  br label %cond.end393, !dbg !4588

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4588
  br label %cond.end395, !dbg !4588

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4588
  br label %cond.end397, !dbg !4588

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4588
  br label %cond.end399, !dbg !4588

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4588
  br label %cond.end401, !dbg !4588

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4588
  br label %cond.end403, !dbg !4588

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4588
  br label %cond.end405, !dbg !4588

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4588
  br label %cond.end407, !dbg !4588

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4588
  br label %cond.end409, !dbg !4588

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4588
  br label %cond.end411, !dbg !4588

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4588
  br label %cond.end413, !dbg !4588

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4588
  br label %cond.end415, !dbg !4588

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4588
  br label %cond.end417, !dbg !4588

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4588
  br label %cond.end419, !dbg !4588

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4588
  br label %cond.end421, !dbg !4588

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4588
  br label %cond.end423, !dbg !4588

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4588
  br label %cond.end425, !dbg !4588

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4588
  br label %cond.end427, !dbg !4588

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4588
  br label %cond.end429, !dbg !4588

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4588
  br label %cond.end431, !dbg !4588

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4588
  br label %cond.end433, !dbg !4588

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4588
  br label %cond.end435, !dbg !4588

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4588
  br label %cond.end437, !dbg !4588

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4588
  br label %cond.end440, !dbg !4588

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4588

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4588
  br label %cond.end444, !dbg !4588

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4588
  %sub443 = sub i64 %72, 1, !dbg !4588
  %call = call i32 @__ilog2_u64(i64 %sub443) #13, !dbg !4588
  br label %cond.end444, !dbg !4588

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4588
  %sub446 = sub i32 %cond445, 12, !dbg !4589
  %add = add i32 %sub446, 1, !dbg !4590
  store i32 %add, i32* %retval, align 4, !dbg !4591
  br label %return, !dbg !4591

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4592
  %dec = add i64 %73, -1, !dbg !4592
  store i64 %dec, i64* %size.addr, align 8, !dbg !4592
  %74 = load i64, i64* %size.addr, align 8, !dbg !4593
  %shr = lshr i64 %74, 12, !dbg !4593
  store i64 %shr, i64* %size.addr, align 8, !dbg !4593
  %75 = load i64, i64* %size.addr, align 8, !dbg !4594
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4571
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4595
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4596
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #9, !dbg !4595, !srcloc !4597
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4595
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4598
  %add.i = add i32 %79, 1, !dbg !4599
  store i32 %add.i, i32* %retval, align 4, !dbg !4600
  br label %return, !dbg !4600

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4601
  ret i32 %80, !dbg !4601
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !4602 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4563, metadata !DIExpression()), !dbg !4606
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4570, metadata !DIExpression()), !dbg !4608
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4609, metadata !DIExpression()), !dbg !4610
  %0 = load i64, i64* %n.addr, align 8, !dbg !4611
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4608
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4612
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4613
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #9, !dbg !4612, !srcloc !4597
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4612
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4614
  %add.i = add i32 %4, 1, !dbg !4615
  %sub = sub i32 %add.i, 1, !dbg !4616
  ret i32 %sub, !dbg !4617
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4618 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4622, metadata !DIExpression()), !dbg !4623
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4624, metadata !DIExpression()), !dbg !4625
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4626, metadata !DIExpression()), !dbg !4627
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4628, metadata !DIExpression()), !dbg !4629
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4630
  ret i8* %0, !dbg !4631
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @watchdog_worker_should_ping(%struct.watchdog_core_data* %wd_data) #0 !dbg !4632 {
entry:
  %retval = alloca i1, align 1
  %wd_data.addr = alloca %struct.watchdog_core_data*, align 8
  %wdd = alloca %struct.watchdog_device*, align 8
  store %struct.watchdog_core_data* %wd_data, %struct.watchdog_core_data** %wd_data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_core_data** %wd_data.addr, metadata !4635, metadata !DIExpression()), !dbg !4636
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd, metadata !4637, metadata !DIExpression()), !dbg !4638
  %0 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data.addr, align 8, !dbg !4639
  %wdd1 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %0, i32 0, i32 2, !dbg !4640
  %1 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd1, align 8, !dbg !4640
  store %struct.watchdog_device* %1, %struct.watchdog_device** %wdd, align 8, !dbg !4638
  %2 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !4641
  %tobool = icmp ne %struct.watchdog_device* %2, null, !dbg !4641
  br i1 %tobool, label %if.end, label %if.then, !dbg !4643

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !4644
  br label %return, !dbg !4644

if.end:                                           ; preds = %entry
  %3 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !4645
  %call = call zeroext i1 @watchdog_active(%struct.watchdog_device* %3) #11, !dbg !4647
  br i1 %call, label %if.then2, label %if.end3, !dbg !4648

if.then2:                                         ; preds = %if.end
  store i1 true, i1* %retval, align 1, !dbg !4649
  br label %return, !dbg !4649

if.end3:                                          ; preds = %if.end
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !4650
  %call4 = call zeroext i1 @watchdog_hw_running(%struct.watchdog_device* %4) #11, !dbg !4651
  br i1 %call4, label %land.rhs, label %land.end, !dbg !4652

land.rhs:                                         ; preds = %if.end3
  %5 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data.addr, align 8, !dbg !4653
  %call5 = call zeroext i1 @watchdog_past_open_deadline(%struct.watchdog_core_data* %5) #11, !dbg !4654
  %lnot = xor i1 %call5, true, !dbg !4655
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end3
  %6 = phi i1 [ false, %if.end3 ], [ %lnot, %land.rhs ], !dbg !4656
  store i1 %6, i1* %retval, align 1, !dbg !4657
  br label %return, !dbg !4657

return:                                           ; preds = %land.end, %if.then2, %if.then
  %7 = load i1, i1* %retval, align 1, !dbg !4658
  ret i1 %7, !dbg !4658
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @watchdog_active(%struct.watchdog_device* %wdd) #0 !dbg !4659 {
entry:
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !4660, metadata !DIExpression()), !dbg !4661
  %0 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !4662
  %status = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %0, i32 0, i32 17, !dbg !4663
  %call = call zeroext i1 @test_bit(i64 0, i64* %status) #11, !dbg !4664
  ret i1 %call, !dbg !4665
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @watchdog_past_open_deadline(%struct.watchdog_core_data* %data) #0 !dbg !4666 {
entry:
  %data.addr = alloca %struct.watchdog_core_data*, align 8
  store %struct.watchdog_core_data* %data, %struct.watchdog_core_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_core_data** %data.addr, metadata !4667, metadata !DIExpression()), !dbg !4668
  %call = call i64 @ktime_get() #11, !dbg !4669
  %0 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %data.addr, align 8, !dbg !4670
  %open_deadline = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %0, i32 0, i32 6, !dbg !4671
  %1 = load i64, i64* %open_deadline, align 8, !dbg !4671
  %call1 = call zeroext i1 @ktime_after(i64 %call, i64 %1) #11, !dbg !4672
  ret i1 %call1, !dbg !4673
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !4674 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !4681, metadata !DIExpression()), !dbg !4683
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !4685, metadata !DIExpression()), !dbg !4686
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !4687, metadata !DIExpression()), !dbg !4688
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4689, metadata !DIExpression()), !dbg !4691
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4693, metadata !DIExpression()), !dbg !4694
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4695, metadata !DIExpression()), !dbg !4703
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4705, metadata !DIExpression()), !dbg !4706
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4707, metadata !DIExpression()), !dbg !4708
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4709, metadata !DIExpression()), !dbg !4710
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4711
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4712
  %div = sdiv i64 %1, 64, !dbg !4712
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4713
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4711
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4714
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4715
  %conv.i = trunc i64 %4 to i32, !dbg !4715
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #14, !dbg !4716
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4717
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4717
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #14, !dbg !4717
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4718
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !4718
  br i1 %8, label %cond.true, label %cond.false, !dbg !4718

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !4718
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !4718
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !4719
  %and.i = and i64 %11, 63, !dbg !4720
  %shl.i = shl i64 1, %and.i, !dbg !4721
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !4722
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !4723
  %shr.i = ashr i64 %13, 6, !dbg !4724
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !4722
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !4722
  %and1.i = and i64 %shl.i, %14, !dbg !4725
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !4726
  %conv = zext i1 %cmp.i to i32, !dbg !4718
  br label %cond.end, !dbg !4718

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !4718
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !4718
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !4727
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !4728
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #10, !dbg !4729, !srcloc !4730
  store i8 %19, i8* %oldbit.i, align 1, !dbg !4729
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !4731
  %tobool.i = trunc i8 %20 to i1, !dbg !4731
  %conv2 = zext i1 %tobool.i to i32, !dbg !4718
  br label %cond.end, !dbg !4718

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !4718
  %tobool = icmp ne i32 %cond, 0, !dbg !4718
  ret i1 %tobool, !dbg !4732
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !4733 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !4737, metadata !DIExpression()), !dbg !4738
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4739, metadata !DIExpression()), !dbg !4740
  ret i1 true, !dbg !4741
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !4742 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4746, metadata !DIExpression()), !dbg !4747
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4748, metadata !DIExpression()), !dbg !4749
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4750, metadata !DIExpression()), !dbg !4751
  ret void, !dbg !4752
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @ktime_after(i64 %cmp1, i64 %cmp2) #0 !dbg !4753 {
entry:
  %cmp1.addr = alloca i64, align 8
  %cmp2.addr = alloca i64, align 8
  store i64 %cmp1, i64* %cmp1.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp1.addr, metadata !4757, metadata !DIExpression()), !dbg !4758
  store i64 %cmp2, i64* %cmp2.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp2.addr, metadata !4759, metadata !DIExpression()), !dbg !4760
  %0 = load i64, i64* %cmp1.addr, align 8, !dbg !4761
  %1 = load i64, i64* %cmp2.addr, align 8, !dbg !4762
  %call = call i32 @ktime_compare(i64 %0, i64 %1) #11, !dbg !4763
  %cmp = icmp sgt i32 %call, 0, !dbg !4764
  ret i1 %cmp, !dbg !4765
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ktime_compare(i64 %cmp1, i64 %cmp2) #0 !dbg !4766 {
entry:
  %retval = alloca i32, align 4
  %cmp1.addr = alloca i64, align 8
  %cmp2.addr = alloca i64, align 8
  store i64 %cmp1, i64* %cmp1.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp1.addr, metadata !4769, metadata !DIExpression()), !dbg !4770
  store i64 %cmp2, i64* %cmp2.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp2.addr, metadata !4771, metadata !DIExpression()), !dbg !4772
  %0 = load i64, i64* %cmp1.addr, align 8, !dbg !4773
  %1 = load i64, i64* %cmp2.addr, align 8, !dbg !4775
  %cmp = icmp slt i64 %0, %1, !dbg !4776
  br i1 %cmp, label %if.then, label %if.end, !dbg !4777

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !4778
  br label %return, !dbg !4778

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %cmp1.addr, align 8, !dbg !4779
  %3 = load i64, i64* %cmp2.addr, align 8, !dbg !4781
  %cmp3 = icmp sgt i64 %2, %3, !dbg !4782
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !4783

if.then4:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !4784
  br label %return, !dbg !4784

if.end5:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4785
  br label %return, !dbg !4785

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !4786
  ret i32 %4, !dbg !4786
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @kthread_queue_work(%struct.kthread_worker*, %struct.kthread_work*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @watchdog_write(%struct.file* %file, i8* %data, i64 %len, i64* %ppos) #0 !dbg !4787 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca %struct.file*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ppos.addr = alloca i64*, align 8
  %wd_data = alloca %struct.watchdog_core_data*, align 8
  %wdd = alloca %struct.watchdog_device*, align 8
  %err = alloca i32, align 4
  %i = alloca i64, align 8
  %c = alloca i8, align 1
  %tmp = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i8, align 1
  %tmp4 = alloca i64, align 8
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4788, metadata !DIExpression()), !dbg !4789
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4790, metadata !DIExpression()), !dbg !4791
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !4792, metadata !DIExpression()), !dbg !4793
  store i64* %ppos, i64** %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %ppos.addr, metadata !4794, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.declare(metadata %struct.watchdog_core_data** %wd_data, metadata !4796, metadata !DIExpression()), !dbg !4797
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4798
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !4799
  %1 = load i8*, i8** %private_data, align 8, !dbg !4799
  %2 = bitcast i8* %1 to %struct.watchdog_core_data*, !dbg !4798
  store %struct.watchdog_core_data* %2, %struct.watchdog_core_data** %wd_data, align 8, !dbg !4797
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd, metadata !4800, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4802, metadata !DIExpression()), !dbg !4803
  call void @llvm.dbg.declare(metadata i64* %i, metadata !4804, metadata !DIExpression()), !dbg !4805
  call void @llvm.dbg.declare(metadata i8* %c, metadata !4806, metadata !DIExpression()), !dbg !4807
  %3 = load i64, i64* %len.addr, align 8, !dbg !4808
  %cmp = icmp eq i64 %3, 0, !dbg !4810
  br i1 %cmp, label %if.then, label %if.end, !dbg !4811

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !4812
  br label %return, !dbg !4812

if.end:                                           ; preds = %entry
  %4 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !4813
  %status = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %4, i32 0, i32 9, !dbg !4814
  call void @clear_bit(i64 1, i64* %status) #11, !dbg !4815
  store i64 0, i64* %i, align 8, !dbg !4816
  br label %for.cond, !dbg !4818

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i64, i64* %i, align 8, !dbg !4819
  %6 = load i64, i64* %len.addr, align 8, !dbg !4821
  %cmp1 = icmp ne i64 %5, %6, !dbg !4822
  br i1 %cmp1, label %for.body, label %for.end, !dbg !4823

for.body:                                         ; preds = %for.cond
  call void @might_fault() #11, !dbg !4824
  call void @llvm.dbg.declare(metadata i32* %__ret_gu, metadata !4828, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.declare(metadata i8* %__val_gu, metadata !4831, metadata !DIExpression()), !dbg !4830
  %7 = call i64 @llvm.read_register.i64(metadata !3721), !dbg !4830
  %8 = load i8*, i8** %data.addr, align 8, !dbg !4830
  %9 = load i64, i64* %i, align 8, !dbg !4830
  %add.ptr = getelementptr i8, i8* %8, i64 %9, !dbg !4830
  %10 = call { i8*, i8, i64 } asm sideeffect "call __get_user_${4:P}", "={ax},={rdx},={rsp},0,i,2,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr, i64 1, i64 %7) #10, !dbg !4830, !srcloc !4832
  %asmresult = extractvalue { i8*, i8, i64 } %10, 0, !dbg !4830
  %asmresult2 = extractvalue { i8*, i8, i64 } %10, 1, !dbg !4830
  %asmresult3 = extractvalue { i8*, i8, i64 } %10, 2, !dbg !4830
  %11 = ptrtoint i8* %asmresult to i64, !dbg !4830
  %12 = trunc i64 %11 to i32, !dbg !4830
  store i32 %12, i32* %__ret_gu, align 4, !dbg !4830
  store i8 %asmresult2, i8* %__val_gu, align 1, !dbg !4830
  call void @llvm.write_register.i64(metadata !3721, i64 %asmresult3), !dbg !4830
  %13 = load i8, i8* %__val_gu, align 1, !dbg !4830
  store i8 %13, i8* %c, align 1, !dbg !4830
  %14 = load i32, i32* %__ret_gu, align 4, !dbg !4830
  %conv = sext i32 %14 to i64, !dbg !4830
  store i64 %conv, i64* %tmp4, align 8, !dbg !4830
  %15 = load i64, i64* %tmp4, align 8, !dbg !4830
  store i64 %15, i64* %tmp, align 8, !dbg !4824
  %16 = load i64, i64* %tmp, align 8, !dbg !4824
  %tobool = icmp ne i64 %16, 0, !dbg !4833
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !4834

if.then5:                                         ; preds = %for.body
  store i64 -14, i64* %retval, align 8, !dbg !4835
  br label %return, !dbg !4835

if.end6:                                          ; preds = %for.body
  %17 = load i8, i8* %c, align 1, !dbg !4836
  %conv7 = sext i8 %17 to i32, !dbg !4836
  %cmp8 = icmp eq i32 %conv7, 86, !dbg !4838
  br i1 %cmp8, label %if.then10, label %if.end12, !dbg !4839

if.then10:                                        ; preds = %if.end6
  %18 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !4840
  %status11 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %18, i32 0, i32 9, !dbg !4841
  call void @set_bit(i64 1, i64* %status11) #11, !dbg !4842
  br label %if.end12, !dbg !4842

if.end12:                                         ; preds = %if.then10, %if.end6
  br label %for.inc, !dbg !4843

for.inc:                                          ; preds = %if.end12
  %19 = load i64, i64* %i, align 8, !dbg !4844
  %inc = add i64 %19, 1, !dbg !4844
  store i64 %inc, i64* %i, align 8, !dbg !4844
  br label %for.cond, !dbg !4845, !llvm.loop !4846

for.end:                                          ; preds = %for.cond
  store i32 -19, i32* %err, align 4, !dbg !4848
  %20 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !4849
  %lock = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %20, i32 0, i32 3, !dbg !4850
  call void @mutex_lock(%struct.mutex* %lock) #11, !dbg !4851
  %21 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !4852
  %wdd13 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %21, i32 0, i32 2, !dbg !4853
  %22 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd13, align 8, !dbg !4853
  store %struct.watchdog_device* %22, %struct.watchdog_device** %wdd, align 8, !dbg !4854
  %23 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !4855
  %tobool14 = icmp ne %struct.watchdog_device* %23, null, !dbg !4855
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !4857

if.then15:                                        ; preds = %for.end
  %24 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !4858
  %call = call i32 @watchdog_ping(%struct.watchdog_device* %24) #11, !dbg !4859
  store i32 %call, i32* %err, align 4, !dbg !4860
  br label %if.end16, !dbg !4861

if.end16:                                         ; preds = %if.then15, %for.end
  %25 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !4862
  %lock17 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %25, i32 0, i32 3, !dbg !4863
  call void @mutex_unlock(%struct.mutex* %lock17) #11, !dbg !4864
  %26 = load i32, i32* %err, align 4, !dbg !4865
  %cmp18 = icmp slt i32 %26, 0, !dbg !4867
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !4868

if.then20:                                        ; preds = %if.end16
  %27 = load i32, i32* %err, align 4, !dbg !4869
  %conv21 = sext i32 %27 to i64, !dbg !4869
  store i64 %conv21, i64* %retval, align 8, !dbg !4870
  br label %return, !dbg !4870

if.end22:                                         ; preds = %if.end16
  %28 = load i64, i64* %len.addr, align 8, !dbg !4871
  store i64 %28, i64* %retval, align 8, !dbg !4872
  br label %return, !dbg !4872

return:                                           ; preds = %if.end22, %if.then20, %if.then5, %if.then
  %29 = load i64, i64* %retval, align 8, !dbg !4873
  ret i64 %29, !dbg !4873
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @watchdog_ioctl(%struct.file* %file, i32 %cmd, i64 %arg) #0 !dbg !4874 {
entry:
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !4875, metadata !DIExpression()), !dbg !4880
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !4889, metadata !DIExpression()), !dbg !4890
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !4891, metadata !DIExpression()), !dbg !4892
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !4893, metadata !DIExpression()), !dbg !4894
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !4895, metadata !DIExpression()), !dbg !4898
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !4899, metadata !DIExpression()), !dbg !4900
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !4901, metadata !DIExpression()), !dbg !4902
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !4903, metadata !DIExpression()), !dbg !4904
  %file.addr = alloca %struct.file*, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %wd_data = alloca %struct.watchdog_core_data*, align 8
  %argp = alloca i8*, align 8
  %wdd = alloca %struct.watchdog_device*, align 8
  %p = alloca i32*, align 8
  %val = alloca i32, align 4
  %err = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca i8*, align 8
  %__val_pu = alloca i32, align 4
  %tmp9 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %__ret_pu13 = alloca i32, align 4
  %__ptr_pu14 = alloca i8*, align 8
  %__val_pu15 = alloca i32, align 4
  %tmp18 = alloca i64, align 8
  %tmp22 = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i32, align 4
  %tmp26 = alloca i64, align 8
  %tmp52 = alloca i64, align 8
  %__ret_gu53 = alloca i32, align 4
  %__val_gu54 = alloca i32, align 4
  %tmp58 = alloca i64, align 8
  %tmp78 = alloca i64, align 8
  %__ret_pu79 = alloca i32, align 4
  %__ptr_pu80 = alloca i8*, align 8
  %__val_pu81 = alloca i32, align 4
  %tmp85 = alloca i64, align 8
  %tmp94 = alloca i64, align 8
  %__ret_pu95 = alloca i32, align 4
  %__ptr_pu96 = alloca i8*, align 8
  %__val_pu97 = alloca i32, align 4
  %tmp100 = alloca i64, align 8
  %tmp104 = alloca i64, align 8
  %__ret_gu105 = alloca i32, align 4
  %__val_gu106 = alloca i32, align 4
  %tmp110 = alloca i64, align 8
  %tmp117 = alloca i64, align 8
  %__ret_pu118 = alloca i32, align 4
  %__ptr_pu119 = alloca i8*, align 8
  %__val_pu120 = alloca i32, align 4
  %tmp123 = alloca i64, align 8
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4905, metadata !DIExpression()), !dbg !4906
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !4907, metadata !DIExpression()), !dbg !4908
  store i64 %arg, i64* %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %arg.addr, metadata !4909, metadata !DIExpression()), !dbg !4910
  call void @llvm.dbg.declare(metadata %struct.watchdog_core_data** %wd_data, metadata !4911, metadata !DIExpression()), !dbg !4912
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4913
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !4914
  %1 = load i8*, i8** %private_data, align 8, !dbg !4914
  %2 = bitcast i8* %1 to %struct.watchdog_core_data*, !dbg !4913
  store %struct.watchdog_core_data* %2, %struct.watchdog_core_data** %wd_data, align 8, !dbg !4912
  call void @llvm.dbg.declare(metadata i8** %argp, metadata !4915, metadata !DIExpression()), !dbg !4916
  %3 = load i64, i64* %arg.addr, align 8, !dbg !4917
  %4 = inttoptr i64 %3 to i8*, !dbg !4918
  store i8* %4, i8** %argp, align 8, !dbg !4916
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd, metadata !4919, metadata !DIExpression()), !dbg !4920
  call void @llvm.dbg.declare(metadata i32** %p, metadata !4921, metadata !DIExpression()), !dbg !4922
  %5 = load i8*, i8** %argp, align 8, !dbg !4923
  %6 = bitcast i8* %5 to i32*, !dbg !4923
  store i32* %6, i32** %p, align 8, !dbg !4922
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4924, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4926, metadata !DIExpression()), !dbg !4927
  %7 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !4928
  %lock = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %7, i32 0, i32 3, !dbg !4929
  call void @mutex_lock(%struct.mutex* %lock) #11, !dbg !4930
  %8 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !4931
  %wdd1 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %8, i32 0, i32 2, !dbg !4932
  %9 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd1, align 8, !dbg !4932
  store %struct.watchdog_device* %9, %struct.watchdog_device** %wdd, align 8, !dbg !4933
  %10 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !4934
  %tobool = icmp ne %struct.watchdog_device* %10, null, !dbg !4934
  br i1 %tobool, label %if.end, label %if.then, !dbg !4936

if.then:                                          ; preds = %entry
  store i32 -19, i32* %err, align 4, !dbg !4937
  br label %out_ioctl, !dbg !4939

if.end:                                           ; preds = %entry
  %11 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !4940
  %12 = load i32, i32* %cmd.addr, align 4, !dbg !4941
  %13 = load i64, i64* %arg.addr, align 8, !dbg !4942
  %call = call i32 @watchdog_ioctl_op(%struct.watchdog_device* %11, i32 %12, i64 %13) #11, !dbg !4943
  store i32 %call, i32* %err, align 4, !dbg !4944
  %14 = load i32, i32* %err, align 4, !dbg !4945
  %cmp = icmp ne i32 %14, -515, !dbg !4947
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4948

if.then2:                                         ; preds = %if.end
  br label %out_ioctl, !dbg !4949

if.end3:                                          ; preds = %if.end
  %15 = load i32, i32* %cmd.addr, align 4, !dbg !4950
  switch i32 %15, label %sw.default [
    i32 -2144839936, label %sw.bb
    i32 -2147199231, label %sw.bb6
    i32 -2147199230, label %sw.bb11
    i32 -2147199228, label %sw.bb21
    i32 -2147199227, label %sw.bb44
    i32 -1073457402, label %sw.bb51
    i32 -2147199225, label %sw.bb73
    i32 -2147199222, label %sw.bb88
    i32 -1073457400, label %sw.bb103
    i32 -2147199223, label %sw.bb116
  ], !dbg !4951

sw.bb:                                            ; preds = %if.end3
  %16 = load i8*, i8** %argp, align 8, !dbg !4952
  %17 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !4953
  %info = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %17, i32 0, i32 3, !dbg !4954
  %18 = load %struct.watchdog_info*, %struct.watchdog_info** %info, align 8, !dbg !4954
  %19 = bitcast %struct.watchdog_info* %18 to i8*, !dbg !4953
  store i8* %16, i8** %to.addr.i, align 8
  store i8* %19, i8** %from.addr.i, align 8
  store i64 40, i64* %n.addr.i, align 8
  %20 = load i8*, i8** %from.addr.i, align 8, !dbg !4955
  %21 = load i64, i64* %n.addr.i, align 8, !dbg !4955
  store i8* %20, i8** %addr.addr.i.i, align 8
  store i64 %21, i64* %bytes.addr.i.i, align 8
  store i8 1, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !4894
  %22 = load i32, i32* %sz.i.i, align 4, !dbg !4956
  %cmp.i.i = icmp sge i32 %22, 0, !dbg !4956
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !4956

land.rhs.i.i:                                     ; preds = %sw.bb
  %23 = load i32, i32* %sz.i.i, align 4, !dbg !4956
  %conv.i.i = sext i32 %23 to i64, !dbg !4956
  %24 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4956
  %cmp1.i.i = icmp ult i64 %conv.i.i, %24, !dbg !4956
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %sw.bb
  %25 = phi i1 [ false, %sw.bb ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !4958
  %lnot.i.i = xor i1 %25, true, !dbg !4956
  %lnot.ext.i.i = zext i1 %25 to i32, !dbg !4956
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4956
  br i1 %25, label %if.then.i.i, label %if.end10.i.i, !dbg !4959

if.then.i.i:                                      ; preds = %land.end.i.i
  %26 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4960
  %27 = call i1 @llvm.is.constant.i64(i64 %26) #10, !dbg !4963
  br i1 %27, label %if.else.i.i, label %if.then5.i.i, !dbg !4964

if.then5.i.i:                                     ; preds = %if.then.i.i
  %28 = load i32, i32* %sz.i.i, align 4, !dbg !4965
  %29 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4966
  call void @copy_overflow(i32 %28, i64 %29) #14, !dbg !4967
  br label %if.end9.i.i, !dbg !4967

if.else.i.i:                                      ; preds = %if.then.i.i
  %30 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !4968
  %tobool6.i.i = trunc i8 %30 to i1, !dbg !4968
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !4970

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #14, !dbg !4971
  br label %if.end.i.i, !dbg !4971

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #14, !dbg !4972
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !4973
  br label %check_copy_size.exit.i, !dbg !4973

if.end10.i.i:                                     ; preds = %land.end.i.i
  %31 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4898
  %cmp11.i.i = icmp ugt i64 %31, 2147483647, !dbg !4898
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !4898
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !4898
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !4898
  %32 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !4974
  %tobool17.i.i = icmp ne i32 %32, 0, !dbg !4974
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !4974
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !4974
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !4974
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !4898

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i32 150, i32 2307, i64 12) #10, !dbg !4976, !srcloc !4979
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 40) #10, !dbg !4980, !srcloc !4982
  br label %if.end31.i.i, !dbg !4983

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %33 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !4898
  %tobool32.i.i = icmp ne i32 %33, 0, !dbg !4898
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !4898
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !4898
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !4898
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !4974
  %34 = load i64, i64* %tmp.i.i, align 8, !dbg !4898
  %tobool38.i.i = icmp ne i64 %34, 0, !dbg !4984
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !4985

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !4986
  br label %check_copy_size.exit.i, !dbg !4986

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %35 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !4987
  %36 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4988
  %37 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !4989
  %tobool41.i.i = trunc i8 %37 to i1, !dbg !4989
  call void @check_object_size(i8* %35, i64 %36, i1 zeroext %tobool41.i.i) #14, !dbg !4990
  store i1 true, i1* %retval.i.i, align 1, !dbg !4991
  br label %check_copy_size.exit.i, !dbg !4991

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %38 = load i1, i1* %retval.i.i, align 1, !dbg !4992
  %lnot.i = xor i1 %38, true, !dbg !4955
  %lnot.ext.i = zext i1 %38 to i32, !dbg !4955
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !4955
  br i1 %38, label %if.then.i, label %copy_to_user.exit, !dbg !4993

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %39 = load i8*, i8** %to.addr.i, align 8, !dbg !4994
  %40 = load i8*, i8** %from.addr.i, align 8, !dbg !4995
  %41 = load i64, i64* %n.addr.i, align 8, !dbg !4996
  %call2.i = call i64 @_copy_to_user(i8* %39, i8* %40, i64 %41) #14, !dbg !4997
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !4998
  br label %copy_to_user.exit, !dbg !4999

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i
  %42 = load i64, i64* %n.addr.i, align 8, !dbg !5000
  %tobool5 = icmp ne i64 %42, 0, !dbg !5001
  %43 = zext i1 %tobool5 to i64, !dbg !5001
  %cond = select i1 %tobool5, i32 -14, i32 0, !dbg !5001
  store i32 %cond, i32* %err, align 4, !dbg !5002
  br label %sw.epilog, !dbg !5003

sw.bb6:                                           ; preds = %if.end3
  %44 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !5004
  %call7 = call i32 @watchdog_get_status(%struct.watchdog_device* %44) #11, !dbg !5005
  store i32 %call7, i32* %val, align 4, !dbg !5006
  call void @might_fault() #11, !dbg !5007
  call void @llvm.dbg.declare(metadata i32* %__ret_pu, metadata !5009, metadata !DIExpression()), !dbg !5011
  call void @llvm.dbg.declare(metadata i8** %__ptr_pu, metadata !5012, metadata !DIExpression()), !dbg !5011
  call void @llvm.dbg.declare(metadata i32* %__val_pu, metadata !5013, metadata !DIExpression()), !dbg !5011
  %45 = load i32*, i32** %p, align 8, !dbg !5011
  %46 = bitcast i32* %45 to i8*, !dbg !5011
  store i8* %46, i8** %__ptr_pu, align 8, !dbg !5011
  %47 = load i32, i32* %val, align 4, !dbg !5011
  store i32 %47, i32* %__val_pu, align 4, !dbg !5011
  %48 = call i64 @llvm.read_register.i64(metadata !3721), !dbg !5011
  %49 = load i8*, i8** %__ptr_pu, align 8, !dbg !5011
  %50 = load i32, i32* %__val_pu, align 4, !dbg !5011
  %51 = call { i8*, i64 } asm sideeffect "call __put_user_${4:P}", "={cx},={rsp},0,{rax},i,1,~{ebx},~{dirflag},~{fpsr},~{flags}"(i8* %49, i32 %50, i64 4, i64 %48) #10, !dbg !5011, !srcloc !5014
  %asmresult = extractvalue { i8*, i64 } %51, 0, !dbg !5011
  %asmresult8 = extractvalue { i8*, i64 } %51, 1, !dbg !5011
  %52 = ptrtoint i8* %asmresult to i64, !dbg !5011
  %53 = trunc i64 %52 to i32, !dbg !5011
  store i32 %53, i32* %__ret_pu, align 4, !dbg !5011
  call void @llvm.write_register.i64(metadata !3721, i64 %asmresult8), !dbg !5011
  %54 = load i32, i32* %__ret_pu, align 4, !dbg !5011
  %conv = sext i32 %54 to i64, !dbg !5011
  store i64 %conv, i64* %tmp9, align 8, !dbg !5011
  %55 = load i64, i64* %tmp9, align 8, !dbg !5011
  store i64 %55, i64* %tmp, align 8, !dbg !5007
  %56 = load i64, i64* %tmp, align 8, !dbg !5007
  %conv10 = trunc i64 %56 to i32, !dbg !5015
  store i32 %conv10, i32* %err, align 4, !dbg !5016
  br label %sw.epilog, !dbg !5017

sw.bb11:                                          ; preds = %if.end3
  call void @might_fault() #11, !dbg !5018
  call void @llvm.dbg.declare(metadata i32* %__ret_pu13, metadata !5020, metadata !DIExpression()), !dbg !5022
  call void @llvm.dbg.declare(metadata i8** %__ptr_pu14, metadata !5023, metadata !DIExpression()), !dbg !5022
  call void @llvm.dbg.declare(metadata i32* %__val_pu15, metadata !5024, metadata !DIExpression()), !dbg !5022
  %57 = load i32*, i32** %p, align 8, !dbg !5022
  %58 = bitcast i32* %57 to i8*, !dbg !5022
  store i8* %58, i8** %__ptr_pu14, align 8, !dbg !5022
  %59 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !5022
  %bootstatus = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %59, i32 0, i32 6, !dbg !5022
  %60 = load i32, i32* %bootstatus, align 8, !dbg !5022
  store i32 %60, i32* %__val_pu15, align 4, !dbg !5022
  %61 = call i64 @llvm.read_register.i64(metadata !3721), !dbg !5022
  %62 = load i8*, i8** %__ptr_pu14, align 8, !dbg !5022
  %63 = load i32, i32* %__val_pu15, align 4, !dbg !5022
  %64 = call { i8*, i64 } asm sideeffect "call __put_user_${4:P}", "={cx},={rsp},0,{rax},i,1,~{ebx},~{dirflag},~{fpsr},~{flags}"(i8* %62, i32 %63, i64 4, i64 %61) #10, !dbg !5022, !srcloc !5025
  %asmresult16 = extractvalue { i8*, i64 } %64, 0, !dbg !5022
  %asmresult17 = extractvalue { i8*, i64 } %64, 1, !dbg !5022
  %65 = ptrtoint i8* %asmresult16 to i64, !dbg !5022
  %66 = trunc i64 %65 to i32, !dbg !5022
  store i32 %66, i32* %__ret_pu13, align 4, !dbg !5022
  call void @llvm.write_register.i64(metadata !3721, i64 %asmresult17), !dbg !5022
  %67 = load i32, i32* %__ret_pu13, align 4, !dbg !5022
  %conv19 = sext i32 %67 to i64, !dbg !5022
  store i64 %conv19, i64* %tmp18, align 8, !dbg !5022
  %68 = load i64, i64* %tmp18, align 8, !dbg !5022
  store i64 %68, i64* %tmp12, align 8, !dbg !5018
  %69 = load i64, i64* %tmp12, align 8, !dbg !5018
  %conv20 = trunc i64 %69 to i32, !dbg !5026
  store i32 %conv20, i32* %err, align 4, !dbg !5027
  br label %sw.epilog, !dbg !5028

sw.bb21:                                          ; preds = %if.end3
  call void @might_fault() #11, !dbg !5029
  call void @llvm.dbg.declare(metadata i32* %__ret_gu, metadata !5032, metadata !DIExpression()), !dbg !5034
  call void @llvm.dbg.declare(metadata i32* %__val_gu, metadata !5035, metadata !DIExpression()), !dbg !5034
  %70 = call i64 @llvm.read_register.i64(metadata !3721), !dbg !5034
  %71 = load i32*, i32** %p, align 8, !dbg !5034
  %72 = call { i32*, i32, i64 } asm sideeffect "call __get_user_${4:P}", "={ax},={rdx},={rsp},0,i,2,~{dirflag},~{fpsr},~{flags}"(i32* %71, i64 4, i64 %70) #10, !dbg !5034, !srcloc !5036
  %asmresult23 = extractvalue { i32*, i32, i64 } %72, 0, !dbg !5034
  %asmresult24 = extractvalue { i32*, i32, i64 } %72, 1, !dbg !5034
  %asmresult25 = extractvalue { i32*, i32, i64 } %72, 2, !dbg !5034
  %73 = ptrtoint i32* %asmresult23 to i64, !dbg !5034
  %74 = trunc i64 %73 to i32, !dbg !5034
  store i32 %74, i32* %__ret_gu, align 4, !dbg !5034
  store i32 %asmresult24, i32* %__val_gu, align 4, !dbg !5034
  call void @llvm.write_register.i64(metadata !3721, i64 %asmresult25), !dbg !5034
  %75 = load i32, i32* %__val_gu, align 4, !dbg !5034
  store i32 %75, i32* %val, align 4, !dbg !5034
  %76 = load i32, i32* %__ret_gu, align 4, !dbg !5034
  %conv27 = sext i32 %76 to i64, !dbg !5034
  store i64 %conv27, i64* %tmp26, align 8, !dbg !5034
  %77 = load i64, i64* %tmp26, align 8, !dbg !5034
  store i64 %77, i64* %tmp22, align 8, !dbg !5029
  %78 = load i64, i64* %tmp22, align 8, !dbg !5029
  %tobool28 = icmp ne i64 %78, 0, !dbg !5037
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !5038

if.then29:                                        ; preds = %sw.bb21
  store i32 -14, i32* %err, align 4, !dbg !5039
  br label %sw.epilog, !dbg !5041

if.end30:                                         ; preds = %sw.bb21
  %79 = load i32, i32* %val, align 4, !dbg !5042
  %and = and i32 %79, 1, !dbg !5044
  %tobool31 = icmp ne i32 %and, 0, !dbg !5044
  br i1 %tobool31, label %if.then32, label %if.end38, !dbg !5045

if.then32:                                        ; preds = %if.end30
  %80 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !5046
  %call33 = call i32 @watchdog_stop(%struct.watchdog_device* %80) #11, !dbg !5048
  store i32 %call33, i32* %err, align 4, !dbg !5049
  %81 = load i32, i32* %err, align 4, !dbg !5050
  %cmp34 = icmp slt i32 %81, 0, !dbg !5052
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !5053

if.then36:                                        ; preds = %if.then32
  br label %sw.epilog, !dbg !5054

if.end37:                                         ; preds = %if.then32
  br label %if.end38, !dbg !5055

if.end38:                                         ; preds = %if.end37, %if.end30
  %82 = load i32, i32* %val, align 4, !dbg !5056
  %and39 = and i32 %82, 2, !dbg !5058
  %tobool40 = icmp ne i32 %and39, 0, !dbg !5058
  br i1 %tobool40, label %if.then41, label %if.end43, !dbg !5059

if.then41:                                        ; preds = %if.end38
  %83 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !5060
  %call42 = call i32 @watchdog_start(%struct.watchdog_device* %83) #11, !dbg !5061
  store i32 %call42, i32* %err, align 4, !dbg !5062
  br label %if.end43, !dbg !5063

if.end43:                                         ; preds = %if.then41, %if.end38
  br label %sw.epilog, !dbg !5064

sw.bb44:                                          ; preds = %if.end3
  %84 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !5065
  %info45 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %84, i32 0, i32 3, !dbg !5067
  %85 = load %struct.watchdog_info*, %struct.watchdog_info** %info45, align 8, !dbg !5067
  %options = getelementptr inbounds %struct.watchdog_info, %struct.watchdog_info* %85, i32 0, i32 0, !dbg !5068
  %86 = load i32, i32* %options, align 4, !dbg !5068
  %and46 = and i32 %86, 32768, !dbg !5069
  %tobool47 = icmp ne i32 %and46, 0, !dbg !5069
  br i1 %tobool47, label %if.end49, label %if.then48, !dbg !5070

if.then48:                                        ; preds = %sw.bb44
  store i32 -95, i32* %err, align 4, !dbg !5071
  br label %sw.epilog, !dbg !5073

if.end49:                                         ; preds = %sw.bb44
  %87 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !5074
  %call50 = call i32 @watchdog_ping(%struct.watchdog_device* %87) #11, !dbg !5075
  store i32 %call50, i32* %err, align 4, !dbg !5076
  br label %sw.epilog, !dbg !5077

sw.bb51:                                          ; preds = %if.end3
  call void @might_fault() #11, !dbg !5078
  call void @llvm.dbg.declare(metadata i32* %__ret_gu53, metadata !5081, metadata !DIExpression()), !dbg !5083
  call void @llvm.dbg.declare(metadata i32* %__val_gu54, metadata !5084, metadata !DIExpression()), !dbg !5083
  %88 = call i64 @llvm.read_register.i64(metadata !3721), !dbg !5083
  %89 = load i32*, i32** %p, align 8, !dbg !5083
  %90 = call { i32*, i32, i64 } asm sideeffect "call __get_user_${4:P}", "={ax},={rdx},={rsp},0,i,2,~{dirflag},~{fpsr},~{flags}"(i32* %89, i64 4, i64 %88) #10, !dbg !5083, !srcloc !5085
  %asmresult55 = extractvalue { i32*, i32, i64 } %90, 0, !dbg !5083
  %asmresult56 = extractvalue { i32*, i32, i64 } %90, 1, !dbg !5083
  %asmresult57 = extractvalue { i32*, i32, i64 } %90, 2, !dbg !5083
  %91 = ptrtoint i32* %asmresult55 to i64, !dbg !5083
  %92 = trunc i64 %91 to i32, !dbg !5083
  store i32 %92, i32* %__ret_gu53, align 4, !dbg !5083
  store i32 %asmresult56, i32* %__val_gu54, align 4, !dbg !5083
  call void @llvm.write_register.i64(metadata !3721, i64 %asmresult57), !dbg !5083
  %93 = load i32, i32* %__val_gu54, align 4, !dbg !5083
  store i32 %93, i32* %val, align 4, !dbg !5083
  %94 = load i32, i32* %__ret_gu53, align 4, !dbg !5083
  %conv59 = sext i32 %94 to i64, !dbg !5083
  store i64 %conv59, i64* %tmp58, align 8, !dbg !5083
  %95 = load i64, i64* %tmp58, align 8, !dbg !5083
  store i64 %95, i64* %tmp52, align 8, !dbg !5078
  %96 = load i64, i64* %tmp52, align 8, !dbg !5078
  %tobool60 = icmp ne i64 %96, 0, !dbg !5086
  br i1 %tobool60, label %if.then61, label %if.end62, !dbg !5087

if.then61:                                        ; preds = %sw.bb51
  store i32 -14, i32* %err, align 4, !dbg !5088
  br label %sw.epilog, !dbg !5090

if.end62:                                         ; preds = %sw.bb51
  %97 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !5091
  %98 = load i32, i32* %val, align 4, !dbg !5092
  %call63 = call i32 @watchdog_set_timeout(%struct.watchdog_device* %97, i32 %98) #11, !dbg !5093
  store i32 %call63, i32* %err, align 4, !dbg !5094
  %99 = load i32, i32* %err, align 4, !dbg !5095
  %cmp64 = icmp slt i32 %99, 0, !dbg !5097
  br i1 %cmp64, label %if.then66, label %if.end67, !dbg !5098

if.then66:                                        ; preds = %if.end62
  br label %sw.epilog, !dbg !5099

if.end67:                                         ; preds = %if.end62
  %100 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !5100
  %call68 = call i32 @watchdog_ping(%struct.watchdog_device* %100) #11, !dbg !5101
  store i32 %call68, i32* %err, align 4, !dbg !5102
  %101 = load i32, i32* %err, align 4, !dbg !5103
  %cmp69 = icmp slt i32 %101, 0, !dbg !5105
  br i1 %cmp69, label %if.then71, label %if.end72, !dbg !5106

if.then71:                                        ; preds = %if.end67
  br label %sw.epilog, !dbg !5107

if.end72:                                         ; preds = %if.end67
  br label %sw.bb73, !dbg !5108

sw.bb73:                                          ; preds = %if.end3, %if.end72
  %102 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !5109
  %timeout = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %102, i32 0, i32 7, !dbg !5111
  %103 = load i32, i32* %timeout, align 4, !dbg !5111
  %cmp74 = icmp eq i32 %103, 0, !dbg !5112
  br i1 %cmp74, label %if.then76, label %if.end77, !dbg !5113

if.then76:                                        ; preds = %sw.bb73
  store i32 -95, i32* %err, align 4, !dbg !5114
  br label %sw.epilog, !dbg !5116

if.end77:                                         ; preds = %sw.bb73
  call void @might_fault() #11, !dbg !5117
  call void @llvm.dbg.declare(metadata i32* %__ret_pu79, metadata !5119, metadata !DIExpression()), !dbg !5121
  call void @llvm.dbg.declare(metadata i8** %__ptr_pu80, metadata !5122, metadata !DIExpression()), !dbg !5121
  call void @llvm.dbg.declare(metadata i32* %__val_pu81, metadata !5123, metadata !DIExpression()), !dbg !5121
  %104 = load i32*, i32** %p, align 8, !dbg !5121
  %105 = bitcast i32* %104 to i8*, !dbg !5121
  store i8* %105, i8** %__ptr_pu80, align 8, !dbg !5121
  %106 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !5121
  %timeout82 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %106, i32 0, i32 7, !dbg !5121
  %107 = load i32, i32* %timeout82, align 4, !dbg !5121
  store i32 %107, i32* %__val_pu81, align 4, !dbg !5121
  %108 = call i64 @llvm.read_register.i64(metadata !3721), !dbg !5121
  %109 = load i8*, i8** %__ptr_pu80, align 8, !dbg !5121
  %110 = load i32, i32* %__val_pu81, align 4, !dbg !5121
  %111 = call { i8*, i64 } asm sideeffect "call __put_user_${4:P}", "={cx},={rsp},0,{rax},i,1,~{ebx},~{dirflag},~{fpsr},~{flags}"(i8* %109, i32 %110, i64 4, i64 %108) #10, !dbg !5121, !srcloc !5124
  %asmresult83 = extractvalue { i8*, i64 } %111, 0, !dbg !5121
  %asmresult84 = extractvalue { i8*, i64 } %111, 1, !dbg !5121
  %112 = ptrtoint i8* %asmresult83 to i64, !dbg !5121
  %113 = trunc i64 %112 to i32, !dbg !5121
  store i32 %113, i32* %__ret_pu79, align 4, !dbg !5121
  call void @llvm.write_register.i64(metadata !3721, i64 %asmresult84), !dbg !5121
  %114 = load i32, i32* %__ret_pu79, align 4, !dbg !5121
  %conv86 = sext i32 %114 to i64, !dbg !5121
  store i64 %conv86, i64* %tmp85, align 8, !dbg !5121
  %115 = load i64, i64* %tmp85, align 8, !dbg !5121
  store i64 %115, i64* %tmp78, align 8, !dbg !5117
  %116 = load i64, i64* %tmp78, align 8, !dbg !5117
  %conv87 = trunc i64 %116 to i32, !dbg !5125
  store i32 %conv87, i32* %err, align 4, !dbg !5126
  br label %sw.epilog, !dbg !5127

sw.bb88:                                          ; preds = %if.end3
  %117 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !5128
  %call89 = call i32 @watchdog_get_timeleft(%struct.watchdog_device* %117, i32* %val) #11, !dbg !5129
  store i32 %call89, i32* %err, align 4, !dbg !5130
  %118 = load i32, i32* %err, align 4, !dbg !5131
  %cmp90 = icmp slt i32 %118, 0, !dbg !5133
  br i1 %cmp90, label %if.then92, label %if.end93, !dbg !5134

if.then92:                                        ; preds = %sw.bb88
  br label %sw.epilog, !dbg !5135

if.end93:                                         ; preds = %sw.bb88
  call void @might_fault() #11, !dbg !5136
  call void @llvm.dbg.declare(metadata i32* %__ret_pu95, metadata !5138, metadata !DIExpression()), !dbg !5140
  call void @llvm.dbg.declare(metadata i8** %__ptr_pu96, metadata !5141, metadata !DIExpression()), !dbg !5140
  call void @llvm.dbg.declare(metadata i32* %__val_pu97, metadata !5142, metadata !DIExpression()), !dbg !5140
  %119 = load i32*, i32** %p, align 8, !dbg !5140
  %120 = bitcast i32* %119 to i8*, !dbg !5140
  store i8* %120, i8** %__ptr_pu96, align 8, !dbg !5140
  %121 = load i32, i32* %val, align 4, !dbg !5140
  store i32 %121, i32* %__val_pu97, align 4, !dbg !5140
  %122 = call i64 @llvm.read_register.i64(metadata !3721), !dbg !5140
  %123 = load i8*, i8** %__ptr_pu96, align 8, !dbg !5140
  %124 = load i32, i32* %__val_pu97, align 4, !dbg !5140
  %125 = call { i8*, i64 } asm sideeffect "call __put_user_${4:P}", "={cx},={rsp},0,{rax},i,1,~{ebx},~{dirflag},~{fpsr},~{flags}"(i8* %123, i32 %124, i64 4, i64 %122) #10, !dbg !5140, !srcloc !5143
  %asmresult98 = extractvalue { i8*, i64 } %125, 0, !dbg !5140
  %asmresult99 = extractvalue { i8*, i64 } %125, 1, !dbg !5140
  %126 = ptrtoint i8* %asmresult98 to i64, !dbg !5140
  %127 = trunc i64 %126 to i32, !dbg !5140
  store i32 %127, i32* %__ret_pu95, align 4, !dbg !5140
  call void @llvm.write_register.i64(metadata !3721, i64 %asmresult99), !dbg !5140
  %128 = load i32, i32* %__ret_pu95, align 4, !dbg !5140
  %conv101 = sext i32 %128 to i64, !dbg !5140
  store i64 %conv101, i64* %tmp100, align 8, !dbg !5140
  %129 = load i64, i64* %tmp100, align 8, !dbg !5140
  store i64 %129, i64* %tmp94, align 8, !dbg !5136
  %130 = load i64, i64* %tmp94, align 8, !dbg !5136
  %conv102 = trunc i64 %130 to i32, !dbg !5144
  store i32 %conv102, i32* %err, align 4, !dbg !5145
  br label %sw.epilog, !dbg !5146

sw.bb103:                                         ; preds = %if.end3
  call void @might_fault() #11, !dbg !5147
  call void @llvm.dbg.declare(metadata i32* %__ret_gu105, metadata !5150, metadata !DIExpression()), !dbg !5152
  call void @llvm.dbg.declare(metadata i32* %__val_gu106, metadata !5153, metadata !DIExpression()), !dbg !5152
  %131 = call i64 @llvm.read_register.i64(metadata !3721), !dbg !5152
  %132 = load i32*, i32** %p, align 8, !dbg !5152
  %133 = call { i32*, i32, i64 } asm sideeffect "call __get_user_${4:P}", "={ax},={rdx},={rsp},0,i,2,~{dirflag},~{fpsr},~{flags}"(i32* %132, i64 4, i64 %131) #10, !dbg !5152, !srcloc !5154
  %asmresult107 = extractvalue { i32*, i32, i64 } %133, 0, !dbg !5152
  %asmresult108 = extractvalue { i32*, i32, i64 } %133, 1, !dbg !5152
  %asmresult109 = extractvalue { i32*, i32, i64 } %133, 2, !dbg !5152
  %134 = ptrtoint i32* %asmresult107 to i64, !dbg !5152
  %135 = trunc i64 %134 to i32, !dbg !5152
  store i32 %135, i32* %__ret_gu105, align 4, !dbg !5152
  store i32 %asmresult108, i32* %__val_gu106, align 4, !dbg !5152
  call void @llvm.write_register.i64(metadata !3721, i64 %asmresult109), !dbg !5152
  %136 = load i32, i32* %__val_gu106, align 4, !dbg !5152
  store i32 %136, i32* %val, align 4, !dbg !5152
  %137 = load i32, i32* %__ret_gu105, align 4, !dbg !5152
  %conv111 = sext i32 %137 to i64, !dbg !5152
  store i64 %conv111, i64* %tmp110, align 8, !dbg !5152
  %138 = load i64, i64* %tmp110, align 8, !dbg !5152
  store i64 %138, i64* %tmp104, align 8, !dbg !5147
  %139 = load i64, i64* %tmp104, align 8, !dbg !5147
  %tobool112 = icmp ne i64 %139, 0, !dbg !5155
  br i1 %tobool112, label %if.then113, label %if.end114, !dbg !5156

if.then113:                                       ; preds = %sw.bb103
  store i32 -14, i32* %err, align 4, !dbg !5157
  br label %sw.epilog, !dbg !5159

if.end114:                                        ; preds = %sw.bb103
  %140 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !5160
  %141 = load i32, i32* %val, align 4, !dbg !5161
  %call115 = call i32 @watchdog_set_pretimeout(%struct.watchdog_device* %140, i32 %141) #11, !dbg !5162
  store i32 %call115, i32* %err, align 4, !dbg !5163
  br label %sw.epilog, !dbg !5164

sw.bb116:                                         ; preds = %if.end3
  call void @might_fault() #11, !dbg !5165
  call void @llvm.dbg.declare(metadata i32* %__ret_pu118, metadata !5167, metadata !DIExpression()), !dbg !5169
  call void @llvm.dbg.declare(metadata i8** %__ptr_pu119, metadata !5170, metadata !DIExpression()), !dbg !5169
  call void @llvm.dbg.declare(metadata i32* %__val_pu120, metadata !5171, metadata !DIExpression()), !dbg !5169
  %142 = load i32*, i32** %p, align 8, !dbg !5169
  %143 = bitcast i32* %142 to i8*, !dbg !5169
  store i8* %143, i8** %__ptr_pu119, align 8, !dbg !5169
  %144 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !5169
  %pretimeout = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %144, i32 0, i32 8, !dbg !5169
  %145 = load i32, i32* %pretimeout, align 8, !dbg !5169
  store i32 %145, i32* %__val_pu120, align 4, !dbg !5169
  %146 = call i64 @llvm.read_register.i64(metadata !3721), !dbg !5169
  %147 = load i8*, i8** %__ptr_pu119, align 8, !dbg !5169
  %148 = load i32, i32* %__val_pu120, align 4, !dbg !5169
  %149 = call { i8*, i64 } asm sideeffect "call __put_user_${4:P}", "={cx},={rsp},0,{rax},i,1,~{ebx},~{dirflag},~{fpsr},~{flags}"(i8* %147, i32 %148, i64 4, i64 %146) #10, !dbg !5169, !srcloc !5172
  %asmresult121 = extractvalue { i8*, i64 } %149, 0, !dbg !5169
  %asmresult122 = extractvalue { i8*, i64 } %149, 1, !dbg !5169
  %150 = ptrtoint i8* %asmresult121 to i64, !dbg !5169
  %151 = trunc i64 %150 to i32, !dbg !5169
  store i32 %151, i32* %__ret_pu118, align 4, !dbg !5169
  call void @llvm.write_register.i64(metadata !3721, i64 %asmresult122), !dbg !5169
  %152 = load i32, i32* %__ret_pu118, align 4, !dbg !5169
  %conv124 = sext i32 %152 to i64, !dbg !5169
  store i64 %conv124, i64* %tmp123, align 8, !dbg !5169
  %153 = load i64, i64* %tmp123, align 8, !dbg !5169
  store i64 %153, i64* %tmp117, align 8, !dbg !5165
  %154 = load i64, i64* %tmp117, align 8, !dbg !5165
  %conv125 = trunc i64 %154 to i32, !dbg !5173
  store i32 %conv125, i32* %err, align 4, !dbg !5174
  br label %sw.epilog, !dbg !5175

sw.default:                                       ; preds = %if.end3
  store i32 -25, i32* %err, align 4, !dbg !5176
  br label %sw.epilog, !dbg !5177

sw.epilog:                                        ; preds = %sw.default, %sw.bb116, %if.end114, %if.then113, %if.end93, %if.then92, %if.end77, %if.then76, %if.then71, %if.then66, %if.then61, %if.end49, %if.then48, %if.end43, %if.then36, %if.then29, %sw.bb11, %sw.bb6, %copy_to_user.exit
  br label %out_ioctl, !dbg !5178

out_ioctl:                                        ; preds = %sw.epilog, %if.then2, %if.then
  call void @llvm.dbg.label(metadata !5179), !dbg !5180
  %155 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5181
  %lock126 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %155, i32 0, i32 3, !dbg !5182
  call void @mutex_unlock(%struct.mutex* %lock126) #11, !dbg !5183
  %156 = load i32, i32* %err, align 4, !dbg !5184
  %conv127 = sext i32 %156 to i64, !dbg !5184
  ret i64 %conv127, !dbg !5185
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @watchdog_open(%struct.inode* %inode, %struct.file* %file) #0 !dbg !5186 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  %wd_data = alloca %struct.watchdog_core_data*, align 8
  %wdd = alloca %struct.watchdog_device*, align 8
  %hw_running = alloca i8, align 1
  %err = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.watchdog_core_data*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !5187, metadata !DIExpression()), !dbg !5188
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !5189, metadata !DIExpression()), !dbg !5190
  call void @llvm.dbg.declare(metadata %struct.watchdog_core_data** %wd_data, metadata !5191, metadata !DIExpression()), !dbg !5192
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd, metadata !5193, metadata !DIExpression()), !dbg !5194
  call void @llvm.dbg.declare(metadata i8* %hw_running, metadata !5195, metadata !DIExpression()), !dbg !5196
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5197, metadata !DIExpression()), !dbg !5198
  %0 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !5199
  %call = call i32 @imajor(%struct.inode* %0) #11, !dbg !5201
  %cmp = icmp eq i32 %call, 10, !dbg !5202
  br i1 %cmp, label %if.then, label %if.else, !dbg !5203

if.then:                                          ; preds = %entry
  %1 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** @old_wd_data, align 8, !dbg !5204
  store %struct.watchdog_core_data* %1, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5205
  br label %if.end, !dbg !5206

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5207, metadata !DIExpression()), !dbg !5209
  %2 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !5209
  %3 = getelementptr inbounds %struct.inode, %struct.inode* %2, i32 0, i32 40, !dbg !5209
  %i_cdev = bitcast %union.anon.58* %3 to %struct.cdev**, !dbg !5209
  %4 = load %struct.cdev*, %struct.cdev** %i_cdev, align 8, !dbg !5209
  %5 = bitcast %struct.cdev* %4 to i8*, !dbg !5209
  store i8* %5, i8** %__mptr, align 8, !dbg !5209
  br label %do.body, !dbg !5209

do.body:                                          ; preds = %if.else
  br label %do.end, !dbg !5210

do.end:                                           ; preds = %do.body
  %6 = load i8*, i8** %__mptr, align 8, !dbg !5209
  %add.ptr = getelementptr i8, i8* %6, i64 -696, !dbg !5209
  %7 = bitcast i8* %add.ptr to %struct.watchdog_core_data*, !dbg !5209
  store %struct.watchdog_core_data* %7, %struct.watchdog_core_data** %tmp, align 8, !dbg !5210
  %8 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %tmp, align 8, !dbg !5209
  store %struct.watchdog_core_data* %8, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5212
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  %9 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5213
  %status = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %9, i32 0, i32 9, !dbg !5215
  %call1 = call zeroext i1 @test_and_set_bit(i64 0, i64* %status) #11, !dbg !5216
  br i1 %call1, label %if.then2, label %if.end3, !dbg !5217

if.then2:                                         ; preds = %if.end
  store i32 -16, i32* %retval, align 4, !dbg !5218
  br label %return, !dbg !5218

if.end3:                                          ; preds = %if.end
  %10 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5219
  %wdd4 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %10, i32 0, i32 2, !dbg !5220
  %11 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd4, align 8, !dbg !5220
  store %struct.watchdog_device* %11, %struct.watchdog_device** %wdd, align 8, !dbg !5221
  %12 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !5222
  %call5 = call zeroext i1 @watchdog_hw_running(%struct.watchdog_device* %12) #11, !dbg !5223
  %frombool = zext i1 %call5 to i8, !dbg !5224
  store i8 %frombool, i8* %hw_running, align 1, !dbg !5224
  %13 = load i8, i8* %hw_running, align 1, !dbg !5225
  %tobool = trunc i8 %13 to i1, !dbg !5225
  br i1 %tobool, label %if.end8, label %land.lhs.true, !dbg !5227

land.lhs.true:                                    ; preds = %if.end3
  %14 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !5228
  %ops = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %14, i32 0, i32 4, !dbg !5229
  %15 = load %struct.watchdog_ops*, %struct.watchdog_ops** %ops, align 8, !dbg !5229
  %owner = getelementptr inbounds %struct.watchdog_ops, %struct.watchdog_ops* %15, i32 0, i32 0, !dbg !5230
  %16 = load %struct.module*, %struct.module** %owner, align 8, !dbg !5230
  %call6 = call zeroext i1 @try_module_get(%struct.module* %16) #11, !dbg !5231
  br i1 %call6, label %if.end8, label %if.then7, !dbg !5232

if.then7:                                         ; preds = %land.lhs.true
  store i32 -16, i32* %err, align 4, !dbg !5233
  br label %out_clear, !dbg !5235

if.end8:                                          ; preds = %land.lhs.true, %if.end3
  %17 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !5236
  %call9 = call i32 @watchdog_start(%struct.watchdog_device* %17) #11, !dbg !5237
  store i32 %call9, i32* %err, align 4, !dbg !5238
  %18 = load i32, i32* %err, align 4, !dbg !5239
  %cmp10 = icmp slt i32 %18, 0, !dbg !5241
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !5242

if.then11:                                        ; preds = %if.end8
  br label %out_mod, !dbg !5243

if.end12:                                         ; preds = %if.end8
  %19 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5244
  %20 = bitcast %struct.watchdog_core_data* %19 to i8*, !dbg !5244
  %21 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5245
  %private_data = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 15, !dbg !5246
  store i8* %20, i8** %private_data, align 8, !dbg !5247
  %22 = load i8, i8* %hw_running, align 1, !dbg !5248
  %tobool13 = trunc i8 %22 to i1, !dbg !5248
  br i1 %tobool13, label %if.end16, label %if.then14, !dbg !5250

if.then14:                                        ; preds = %if.end12
  %23 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5251
  %dev = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %23, i32 0, i32 0, !dbg !5252
  %call15 = call %struct.device* @get_device(%struct.device* %dev) #11, !dbg !5253
  br label %if.end16, !dbg !5253

if.end16:                                         ; preds = %if.then14, %if.end12
  %24 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5254
  %open_deadline = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %24, i32 0, i32 6, !dbg !5255
  store i64 9223372036854775807, i64* %open_deadline, align 8, !dbg !5256
  %25 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !5257
  %26 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5258
  %call17 = call i32 @stream_open(%struct.inode* %25, %struct.file* %26) #11, !dbg !5259
  store i32 %call17, i32* %retval, align 4, !dbg !5260
  br label %return, !dbg !5260

out_mod:                                          ; preds = %if.then11
  call void @llvm.dbg.label(metadata !5261), !dbg !5262
  %27 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5263
  %wdd18 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %27, i32 0, i32 2, !dbg !5264
  %28 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd18, align 8, !dbg !5264
  %ops19 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %28, i32 0, i32 4, !dbg !5265
  %29 = load %struct.watchdog_ops*, %struct.watchdog_ops** %ops19, align 8, !dbg !5265
  %owner20 = getelementptr inbounds %struct.watchdog_ops, %struct.watchdog_ops* %29, i32 0, i32 0, !dbg !5266
  %30 = load %struct.module*, %struct.module** %owner20, align 8, !dbg !5266
  call void @module_put(%struct.module* %30) #11, !dbg !5267
  br label %out_clear, !dbg !5267

out_clear:                                        ; preds = %out_mod, %if.then7
  call void @llvm.dbg.label(metadata !5268), !dbg !5269
  %31 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5270
  %status21 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %31, i32 0, i32 9, !dbg !5271
  call void @clear_bit(i64 0, i64* %status21) #11, !dbg !5272
  %32 = load i32, i32* %err, align 4, !dbg !5273
  store i32 %32, i32* %retval, align 4, !dbg !5274
  br label %return, !dbg !5274

return:                                           ; preds = %out_clear, %if.end16, %if.then2
  %33 = load i32, i32* %retval, align 4, !dbg !5275
  ret i32 %33, !dbg !5275
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @watchdog_release(%struct.inode* %inode, %struct.file* %file) #0 !dbg !5276 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  %wd_data = alloca %struct.watchdog_core_data*, align 8
  %wdd = alloca %struct.watchdog_device*, align 8
  %err = alloca i32, align 4
  %running = alloca i8, align 1
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !5277, metadata !DIExpression()), !dbg !5278
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !5279, metadata !DIExpression()), !dbg !5280
  call void @llvm.dbg.declare(metadata %struct.watchdog_core_data** %wd_data, metadata !5281, metadata !DIExpression()), !dbg !5282
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5283
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !5284
  %1 = load i8*, i8** %private_data, align 8, !dbg !5284
  %2 = bitcast i8* %1 to %struct.watchdog_core_data*, !dbg !5283
  store %struct.watchdog_core_data* %2, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5282
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd, metadata !5285, metadata !DIExpression()), !dbg !5286
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5287, metadata !DIExpression()), !dbg !5288
  store i32 -16, i32* %err, align 4, !dbg !5288
  call void @llvm.dbg.declare(metadata i8* %running, metadata !5289, metadata !DIExpression()), !dbg !5290
  %3 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5291
  %lock = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %3, i32 0, i32 3, !dbg !5292
  call void @mutex_lock(%struct.mutex* %lock) #11, !dbg !5293
  %4 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5294
  %wdd1 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %4, i32 0, i32 2, !dbg !5295
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd1, align 8, !dbg !5295
  store %struct.watchdog_device* %5, %struct.watchdog_device** %wdd, align 8, !dbg !5296
  %6 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !5297
  %tobool = icmp ne %struct.watchdog_device* %6, null, !dbg !5297
  br i1 %tobool, label %if.end, label %if.then, !dbg !5299

if.then:                                          ; preds = %entry
  br label %done, !dbg !5300

if.end:                                           ; preds = %entry
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !5301
  %call = call zeroext i1 @watchdog_active(%struct.watchdog_device* %7) #11, !dbg !5303
  br i1 %call, label %if.else, label %if.then2, !dbg !5304

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %err, align 4, !dbg !5305
  br label %if.end8, !dbg !5306

if.else:                                          ; preds = %if.end
  %8 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5307
  %status = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %8, i32 0, i32 9, !dbg !5309
  %call3 = call zeroext i1 @test_and_clear_bit(i64 1, i64* %status) #11, !dbg !5310
  br i1 %call3, label %if.then5, label %lor.lhs.false, !dbg !5311

lor.lhs.false:                                    ; preds = %if.else
  %9 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !5312
  %info = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %9, i32 0, i32 3, !dbg !5313
  %10 = load %struct.watchdog_info*, %struct.watchdog_info** %info, align 8, !dbg !5313
  %options = getelementptr inbounds %struct.watchdog_info, %struct.watchdog_info* %10, i32 0, i32 0, !dbg !5314
  %11 = load i32, i32* %options, align 4, !dbg !5314
  %and = and i32 %11, 256, !dbg !5315
  %tobool4 = icmp ne i32 %and, 0, !dbg !5315
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !5316

if.then5:                                         ; preds = %lor.lhs.false, %if.else
  %12 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !5317
  %call6 = call i32 @watchdog_stop(%struct.watchdog_device* %12) #11, !dbg !5318
  store i32 %call6, i32* %err, align 4, !dbg !5319
  br label %if.end7, !dbg !5320

if.end7:                                          ; preds = %if.then5, %lor.lhs.false
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then2
  %13 = load i32, i32* %err, align 4, !dbg !5321
  %cmp = icmp slt i32 %13, 0, !dbg !5323
  br i1 %cmp, label %if.then9, label %if.end12, !dbg !5324

if.then9:                                         ; preds = %if.end8
  %14 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !5325
  %id = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %14, i32 0, i32 0, !dbg !5325
  %15 = load i32, i32* %id, align 8, !dbg !5325
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0), i32 %15) #12, !dbg !5325
  %16 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !5327
  %call11 = call i32 @watchdog_ping(%struct.watchdog_device* %16) #11, !dbg !5328
  br label %if.end12, !dbg !5329

if.end12:                                         ; preds = %if.then9, %if.end8
  %17 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !5330
  call void @watchdog_update_worker(%struct.watchdog_device* %17) #11, !dbg !5331
  %18 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5332
  %status13 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %18, i32 0, i32 9, !dbg !5333
  call void @clear_bit(i64 0, i64* %status13) #11, !dbg !5334
  br label %done, !dbg !5334

done:                                             ; preds = %if.end12, %if.then
  call void @llvm.dbg.label(metadata !5335), !dbg !5336
  %19 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !5337
  %tobool14 = icmp ne %struct.watchdog_device* %19, null, !dbg !5337
  br i1 %tobool14, label %land.rhs, label %land.end, !dbg !5338

land.rhs:                                         ; preds = %done
  %20 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !5339
  %call15 = call zeroext i1 @watchdog_hw_running(%struct.watchdog_device* %20) #11, !dbg !5340
  br label %land.end

land.end:                                         ; preds = %land.rhs, %done
  %21 = phi i1 [ false, %done ], [ %call15, %land.rhs ], !dbg !5341
  %frombool = zext i1 %21 to i8, !dbg !5342
  store i8 %frombool, i8* %running, align 1, !dbg !5342
  %22 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5343
  %lock16 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %22, i32 0, i32 3, !dbg !5344
  call void @mutex_unlock(%struct.mutex* %lock16) #11, !dbg !5345
  %23 = load i8, i8* %running, align 1, !dbg !5346
  %tobool17 = trunc i8 %23 to i1, !dbg !5346
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !5348

if.then18:                                        ; preds = %land.end
  %24 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5349
  %cdev = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %24, i32 0, i32 1, !dbg !5351
  %owner = getelementptr inbounds %struct.cdev, %struct.cdev* %cdev, i32 0, i32 1, !dbg !5352
  %25 = load %struct.module*, %struct.module** %owner, align 8, !dbg !5352
  call void @module_put(%struct.module* %25) #11, !dbg !5353
  %26 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5354
  %dev = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %26, i32 0, i32 0, !dbg !5355
  call void @put_device(%struct.device* %dev) #11, !dbg !5356
  br label %if.end19, !dbg !5357

if.end19:                                         ; preds = %if.then18, %land.end
  ret i32 0, !dbg !5358
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_bit(i64 %nr, i64* %addr) #0 !dbg !5359 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5364, metadata !DIExpression()), !dbg !5366
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5368, metadata !DIExpression()), !dbg !5369
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5370, metadata !DIExpression()), !dbg !5372
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5374, metadata !DIExpression()), !dbg !5375
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5376, metadata !DIExpression()), !dbg !5377
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5378, metadata !DIExpression()), !dbg !5379
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5380
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5381
  %div = sdiv i64 %1, 64, !dbg !5381
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5382
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5380
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5383
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5384
  %conv.i = trunc i64 %4 to i32, !dbg !5384
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #14, !dbg !5385
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5386
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5386
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #14, !dbg !5386
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5387
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5388
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !5389
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #10, !dbg !5391
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !5392

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !5393
  %12 = bitcast i64* %11 to i8*, !dbg !5393
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5393
  %shr.i = ashr i64 %13, 3, !dbg !5393
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !5393
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !5395
  %and.i = and i64 %14, 7, !dbg !5395
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !5395
  %shl.i = shl i32 1, %sh_prom.i, !dbg !5395
  %neg.i = xor i32 %shl.i, -1, !dbg !5396
  call void asm sideeffect "andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %neg.i, i8* %add.ptr.i) #10, !dbg !5397, !srcloc !5398
  br label %arch_clear_bit.exit, !dbg !5399

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !5400
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !5402
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #10, !dbg !5403, !srcloc !5404
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %if.then.i, %if.else.i
  ret void, !dbg !5405
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @might_fault() #0 !dbg !5406 {
entry:
  ret void, !dbg !5408
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #10

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #0 !dbg !5409 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5410, metadata !DIExpression()), !dbg !5412
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5414, metadata !DIExpression()), !dbg !5415
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5370, metadata !DIExpression()), !dbg !5416
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5374, metadata !DIExpression()), !dbg !5418
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5419, metadata !DIExpression()), !dbg !5420
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5421, metadata !DIExpression()), !dbg !5422
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5423
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5424
  %div = sdiv i64 %1, 64, !dbg !5424
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5425
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5423
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5426
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5427
  %conv.i = trunc i64 %4 to i32, !dbg !5427
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #14, !dbg !5428
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5429
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5429
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #14, !dbg !5429
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5430
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5431
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !5432
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #10, !dbg !5434
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !5435

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !5436
  %12 = bitcast i64* %11 to i8*, !dbg !5436
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5436
  %shr.i = ashr i64 %13, 3, !dbg !5436
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !5436
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !5438
  %and.i = and i64 %14, 7, !dbg !5438
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !5438
  %shl.i = shl i32 1, %sh_prom.i, !dbg !5438
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #10, !dbg !5439, !srcloc !5440
  br label %arch_set_bit.exit, !dbg !5441

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !5442
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !5444
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #10, !dbg !5445, !srcloc !5446
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !5447
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @watchdog_ping(%struct.watchdog_device* %wdd) #0 !dbg !5448 {
entry:
  %retval = alloca i32, align 4
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  %wd_data = alloca %struct.watchdog_core_data*, align 8
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !5449, metadata !DIExpression()), !dbg !5450
  call void @llvm.dbg.declare(metadata %struct.watchdog_core_data** %wd_data, metadata !5451, metadata !DIExpression()), !dbg !5452
  %0 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5453
  %wd_data1 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %0, i32 0, i32 16, !dbg !5454
  %1 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data1, align 8, !dbg !5454
  store %struct.watchdog_core_data* %1, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5452
  %2 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5455
  %call = call zeroext i1 @watchdog_active(%struct.watchdog_device* %2) #11, !dbg !5457
  br i1 %call, label %if.end, label %land.lhs.true, !dbg !5458

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5459
  %call2 = call zeroext i1 @watchdog_hw_running(%struct.watchdog_device* %3) #11, !dbg !5460
  br i1 %call2, label %if.end, label %if.then, !dbg !5461

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !5462
  br label %return, !dbg !5462

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5463
  %status = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %4, i32 0, i32 9, !dbg !5464
  call void @set_bit(i64 2, i64* %status) #11, !dbg !5465
  %call3 = call i64 @ktime_get() #11, !dbg !5466
  %5 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5467
  %last_keepalive = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %5, i32 0, i32 4, !dbg !5468
  store i64 %call3, i64* %last_keepalive, align 8, !dbg !5469
  %6 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5470
  %call4 = call i32 @__watchdog_ping(%struct.watchdog_device* %6) #11, !dbg !5471
  store i32 %call4, i32* %retval, align 4, !dbg !5472
  br label %return, !dbg !5472

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !5473
  ret i32 %7, !dbg !5473
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !5474 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5475, metadata !DIExpression()), !dbg !5476
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5477, metadata !DIExpression()), !dbg !5478
  ret i1 true, !dbg !5479
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @watchdog_ioctl_op(%struct.watchdog_device* %wdd, i32 %cmd, i64 %arg) #0 !dbg !5480 {
entry:
  %retval = alloca i32, align 4
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !5483, metadata !DIExpression()), !dbg !5484
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !5485, metadata !DIExpression()), !dbg !5486
  store i64 %arg, i64* %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %arg.addr, metadata !5487, metadata !DIExpression()), !dbg !5488
  %0 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5489
  %ops = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %0, i32 0, i32 4, !dbg !5491
  %1 = load %struct.watchdog_ops*, %struct.watchdog_ops** %ops, align 8, !dbg !5491
  %ioctl = getelementptr inbounds %struct.watchdog_ops, %struct.watchdog_ops* %1, i32 0, i32 9, !dbg !5492
  %2 = load i64 (%struct.watchdog_device*, i32, i64)*, i64 (%struct.watchdog_device*, i32, i64)** %ioctl, align 8, !dbg !5492
  %tobool = icmp ne i64 (%struct.watchdog_device*, i32, i64)* %2, null, !dbg !5489
  br i1 %tobool, label %if.end, label %if.then, !dbg !5493

if.then:                                          ; preds = %entry
  store i32 -515, i32* %retval, align 4, !dbg !5494
  br label %return, !dbg !5494

if.end:                                           ; preds = %entry
  %3 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5495
  %ops1 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %3, i32 0, i32 4, !dbg !5496
  %4 = load %struct.watchdog_ops*, %struct.watchdog_ops** %ops1, align 8, !dbg !5496
  %ioctl2 = getelementptr inbounds %struct.watchdog_ops, %struct.watchdog_ops* %4, i32 0, i32 9, !dbg !5497
  %5 = load i64 (%struct.watchdog_device*, i32, i64)*, i64 (%struct.watchdog_device*, i32, i64)** %ioctl2, align 8, !dbg !5497
  %6 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5498
  %7 = load i32, i32* %cmd.addr, align 4, !dbg !5499
  %8 = load i64, i64* %arg.addr, align 8, !dbg !5500
  %call = call i64 %5(%struct.watchdog_device* %6, i32 %7, i64 %8) #11, !dbg !5495
  %conv = trunc i64 %call to i32, !dbg !5495
  store i32 %conv, i32* %retval, align 4, !dbg !5501
  br label %return, !dbg !5501

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !5502
  ret i32 %9, !dbg !5502
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @watchdog_get_status(%struct.watchdog_device* %wdd) #0 !dbg !5503 {
entry:
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  %wd_data = alloca %struct.watchdog_core_data*, align 8
  %status = alloca i32, align 4
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !5504, metadata !DIExpression()), !dbg !5505
  call void @llvm.dbg.declare(metadata %struct.watchdog_core_data** %wd_data, metadata !5506, metadata !DIExpression()), !dbg !5507
  %0 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5508
  %wd_data1 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %0, i32 0, i32 16, !dbg !5509
  %1 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data1, align 8, !dbg !5509
  store %struct.watchdog_core_data* %1, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5507
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5510, metadata !DIExpression()), !dbg !5511
  %2 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5512
  %ops = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %2, i32 0, i32 4, !dbg !5514
  %3 = load %struct.watchdog_ops*, %struct.watchdog_ops** %ops, align 8, !dbg !5514
  %status2 = getelementptr inbounds %struct.watchdog_ops, %struct.watchdog_ops* %3, i32 0, i32 4, !dbg !5515
  %4 = load i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*)** %status2, align 8, !dbg !5515
  %tobool = icmp ne i32 (%struct.watchdog_device*)* %4, null, !dbg !5512
  br i1 %tobool, label %if.then, label %if.else, !dbg !5516

if.then:                                          ; preds = %entry
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5517
  %ops3 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %5, i32 0, i32 4, !dbg !5518
  %6 = load %struct.watchdog_ops*, %struct.watchdog_ops** %ops3, align 8, !dbg !5518
  %status4 = getelementptr inbounds %struct.watchdog_ops, %struct.watchdog_ops* %6, i32 0, i32 4, !dbg !5519
  %7 = load i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*)** %status4, align 8, !dbg !5519
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5520
  %call = call i32 %7(%struct.watchdog_device* %8) #11, !dbg !5517
  store i32 %call, i32* %status, align 4, !dbg !5521
  br label %if.end, !dbg !5522

if.else:                                          ; preds = %entry
  %9 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5523
  %bootstatus = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %9, i32 0, i32 6, !dbg !5524
  %10 = load i32, i32* %bootstatus, align 8, !dbg !5524
  %and = and i32 %10, 127, !dbg !5525
  store i32 %and, i32* %status, align 4, !dbg !5526
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5527
  %status5 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %11, i32 0, i32 9, !dbg !5529
  %call6 = call zeroext i1 @test_bit(i64 1, i64* %status5) #11, !dbg !5530
  br i1 %call6, label %if.then7, label %if.end8, !dbg !5531

if.then7:                                         ; preds = %if.end
  %12 = load i32, i32* %status, align 4, !dbg !5532
  %or = or i32 %12, 256, !dbg !5532
  store i32 %or, i32* %status, align 4, !dbg !5532
  br label %if.end8, !dbg !5533

if.end8:                                          ; preds = %if.then7, %if.end
  %13 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5534
  %status9 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %13, i32 0, i32 9, !dbg !5536
  %call10 = call zeroext i1 @test_and_clear_bit(i64 2, i64* %status9) #11, !dbg !5537
  br i1 %call10, label %if.then11, label %if.end13, !dbg !5538

if.then11:                                        ; preds = %if.end8
  %14 = load i32, i32* %status, align 4, !dbg !5539
  %or12 = or i32 %14, 32768, !dbg !5539
  store i32 %or12, i32* %status, align 4, !dbg !5539
  br label %if.end13, !dbg !5540

if.end13:                                         ; preds = %if.then11, %if.end8
  %15 = load i32, i32* %status, align 4, !dbg !5541
  ret i32 %15, !dbg !5542
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @watchdog_stop(%struct.watchdog_device* %wdd) #0 !dbg !5543 {
entry:
  %retval = alloca i32, align 4
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  %err = alloca i32, align 4
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !5544, metadata !DIExpression()), !dbg !5545
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5546, metadata !DIExpression()), !dbg !5547
  store i32 0, i32* %err, align 4, !dbg !5547
  %0 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5548
  %call = call zeroext i1 @watchdog_active(%struct.watchdog_device* %0) #11, !dbg !5550
  br i1 %call, label %if.end, label %if.then, !dbg !5551

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5552
  br label %return, !dbg !5552

if.end:                                           ; preds = %entry
  %1 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5553
  %status = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %1, i32 0, i32 17, !dbg !5555
  %call1 = call zeroext i1 @test_bit(i64 1, i64* %status) #11, !dbg !5556
  br i1 %call1, label %if.then2, label %if.end4, !dbg !5557

if.then2:                                         ; preds = %if.end
  %2 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5558
  %id = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %2, i32 0, i32 0, !dbg !5558
  %3 = load i32, i32* %id, align 8, !dbg !5558
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.14, i64 0, i64 0), i32 %3) #12, !dbg !5558
  store i32 -16, i32* %retval, align 4, !dbg !5560
  br label %return, !dbg !5560

if.end4:                                          ; preds = %if.end
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5561
  %ops = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %4, i32 0, i32 4, !dbg !5563
  %5 = load %struct.watchdog_ops*, %struct.watchdog_ops** %ops, align 8, !dbg !5563
  %stop = getelementptr inbounds %struct.watchdog_ops, %struct.watchdog_ops* %5, i32 0, i32 2, !dbg !5564
  %stop5 = bitcast {}** %stop to i32 (%struct.watchdog_device*)**, !dbg !5564
  %6 = load i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*)** %stop5, align 8, !dbg !5564
  %tobool = icmp ne i32 (%struct.watchdog_device*)* %6, null, !dbg !5561
  br i1 %tobool, label %if.then6, label %if.else, !dbg !5565

if.then6:                                         ; preds = %if.end4
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5566
  %status7 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %7, i32 0, i32 17, !dbg !5568
  call void @clear_bit(i64 3, i64* %status7) #11, !dbg !5569
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5570
  %ops8 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %8, i32 0, i32 4, !dbg !5571
  %9 = load %struct.watchdog_ops*, %struct.watchdog_ops** %ops8, align 8, !dbg !5571
  %stop9 = getelementptr inbounds %struct.watchdog_ops, %struct.watchdog_ops* %9, i32 0, i32 2, !dbg !5572
  %stop10 = bitcast {}** %stop9 to i32 (%struct.watchdog_device*)**, !dbg !5572
  %10 = load i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*)** %stop10, align 8, !dbg !5572
  %11 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5573
  %call11 = call i32 %10(%struct.watchdog_device* %11) #11, !dbg !5570
  store i32 %call11, i32* %err, align 4, !dbg !5574
  br label %if.end13, !dbg !5575

if.else:                                          ; preds = %if.end4
  %12 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5576
  %status12 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %12, i32 0, i32 17, !dbg !5578
  call void @set_bit(i64 3, i64* %status12) #11, !dbg !5579
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then6
  %13 = load i32, i32* %err, align 4, !dbg !5580
  %cmp = icmp eq i32 %13, 0, !dbg !5582
  br i1 %cmp, label %if.then14, label %if.end16, !dbg !5583

if.then14:                                        ; preds = %if.end13
  %14 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5584
  %status15 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %14, i32 0, i32 17, !dbg !5586
  call void @clear_bit(i64 0, i64* %status15) #11, !dbg !5587
  %15 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5588
  call void @watchdog_update_worker(%struct.watchdog_device* %15) #11, !dbg !5589
  br label %if.end16, !dbg !5590

if.end16:                                         ; preds = %if.then14, %if.end13
  %16 = load i32, i32* %err, align 4, !dbg !5591
  store i32 %16, i32* %retval, align 4, !dbg !5592
  br label %return, !dbg !5592

return:                                           ; preds = %if.end16, %if.then2, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !5593
  ret i32 %17, !dbg !5593
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @watchdog_start(%struct.watchdog_device* %wdd) #0 !dbg !5594 {
entry:
  %retval = alloca i32, align 4
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  %wd_data = alloca %struct.watchdog_core_data*, align 8
  %started_at = alloca i64, align 8
  %err = alloca i32, align 4
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !5595, metadata !DIExpression()), !dbg !5596
  call void @llvm.dbg.declare(metadata %struct.watchdog_core_data** %wd_data, metadata !5597, metadata !DIExpression()), !dbg !5598
  %0 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5599
  %wd_data1 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %0, i32 0, i32 16, !dbg !5600
  %1 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data1, align 8, !dbg !5600
  store %struct.watchdog_core_data* %1, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5598
  call void @llvm.dbg.declare(metadata i64* %started_at, metadata !5601, metadata !DIExpression()), !dbg !5602
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5603, metadata !DIExpression()), !dbg !5604
  %2 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5605
  %call = call zeroext i1 @watchdog_active(%struct.watchdog_device* %2) #11, !dbg !5607
  br i1 %call, label %if.then, label %if.end, !dbg !5608

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5609
  br label %return, !dbg !5609

if.end:                                           ; preds = %entry
  %3 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5610
  %status = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %3, i32 0, i32 9, !dbg !5611
  call void @set_bit(i64 2, i64* %status) #11, !dbg !5612
  %call2 = call i64 @ktime_get() #11, !dbg !5613
  store i64 %call2, i64* %started_at, align 8, !dbg !5614
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5615
  %call3 = call zeroext i1 @watchdog_hw_running(%struct.watchdog_device* %4) #11, !dbg !5617
  br i1 %call3, label %land.lhs.true, label %if.else, !dbg !5618

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5619
  %ops = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %5, i32 0, i32 4, !dbg !5620
  %6 = load %struct.watchdog_ops*, %struct.watchdog_ops** %ops, align 8, !dbg !5620
  %ping = getelementptr inbounds %struct.watchdog_ops, %struct.watchdog_ops* %6, i32 0, i32 3, !dbg !5621
  %ping4 = bitcast {}** %ping to i32 (%struct.watchdog_device*)**, !dbg !5621
  %7 = load i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*)** %ping4, align 8, !dbg !5621
  %tobool = icmp ne i32 (%struct.watchdog_device*)* %7, null, !dbg !5619
  br i1 %tobool, label %if.then5, label %if.else, !dbg !5622

if.then5:                                         ; preds = %land.lhs.true
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5623
  %call6 = call i32 @__watchdog_ping(%struct.watchdog_device* %8) #11, !dbg !5625
  store i32 %call6, i32* %err, align 4, !dbg !5626
  %9 = load i32, i32* %err, align 4, !dbg !5627
  %cmp = icmp eq i32 %9, 0, !dbg !5629
  br i1 %cmp, label %if.then7, label %if.end9, !dbg !5630

if.then7:                                         ; preds = %if.then5
  %10 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5631
  %status8 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %10, i32 0, i32 17, !dbg !5632
  call void @set_bit(i64 0, i64* %status8) #11, !dbg !5633
  br label %if.end9, !dbg !5633

if.end9:                                          ; preds = %if.then7, %if.then5
  br label %if.end17, !dbg !5634

if.else:                                          ; preds = %land.lhs.true, %if.end
  %11 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5635
  %ops10 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %11, i32 0, i32 4, !dbg !5637
  %12 = load %struct.watchdog_ops*, %struct.watchdog_ops** %ops10, align 8, !dbg !5637
  %start = getelementptr inbounds %struct.watchdog_ops, %struct.watchdog_ops* %12, i32 0, i32 1, !dbg !5638
  %start11 = bitcast {}** %start to i32 (%struct.watchdog_device*)**, !dbg !5638
  %13 = load i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*)** %start11, align 8, !dbg !5638
  %14 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5639
  %call12 = call i32 %13(%struct.watchdog_device* %14) #11, !dbg !5635
  store i32 %call12, i32* %err, align 4, !dbg !5640
  %15 = load i32, i32* %err, align 4, !dbg !5641
  %cmp13 = icmp eq i32 %15, 0, !dbg !5643
  br i1 %cmp13, label %if.then14, label %if.end16, !dbg !5644

if.then14:                                        ; preds = %if.else
  %16 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5645
  %status15 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %16, i32 0, i32 17, !dbg !5647
  call void @set_bit(i64 0, i64* %status15) #11, !dbg !5648
  %17 = load i64, i64* %started_at, align 8, !dbg !5649
  %18 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5650
  %last_keepalive = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %18, i32 0, i32 4, !dbg !5651
  store i64 %17, i64* %last_keepalive, align 8, !dbg !5652
  %19 = load i64, i64* %started_at, align 8, !dbg !5653
  %20 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5654
  %last_hw_keepalive = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %20, i32 0, i32 5, !dbg !5655
  store i64 %19, i64* %last_hw_keepalive, align 8, !dbg !5656
  %21 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5657
  call void @watchdog_update_worker(%struct.watchdog_device* %21) #11, !dbg !5658
  br label %if.end16, !dbg !5659

if.end16:                                         ; preds = %if.then14, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end9
  %22 = load i32, i32* %err, align 4, !dbg !5660
  store i32 %22, i32* %retval, align 4, !dbg !5661
  br label %return, !dbg !5661

return:                                           ; preds = %if.end17, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !5662
  ret i32 %23, !dbg !5662
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @watchdog_set_timeout(%struct.watchdog_device* %wdd, i32 %timeout) #0 !dbg !5663 {
entry:
  %retval = alloca i32, align 4
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  %timeout.addr = alloca i32, align 4
  %err = alloca i32, align 4
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !5664, metadata !DIExpression()), !dbg !5665
  store i32 %timeout, i32* %timeout.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %timeout.addr, metadata !5666, metadata !DIExpression()), !dbg !5667
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5668, metadata !DIExpression()), !dbg !5669
  store i32 0, i32* %err, align 4, !dbg !5669
  %0 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5670
  %info = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %0, i32 0, i32 3, !dbg !5672
  %1 = load %struct.watchdog_info*, %struct.watchdog_info** %info, align 8, !dbg !5672
  %options = getelementptr inbounds %struct.watchdog_info, %struct.watchdog_info* %1, i32 0, i32 0, !dbg !5673
  %2 = load i32, i32* %options, align 4, !dbg !5673
  %and = and i32 %2, 128, !dbg !5674
  %tobool = icmp ne i32 %and, 0, !dbg !5674
  br i1 %tobool, label %if.end, label %if.then, !dbg !5675

if.then:                                          ; preds = %entry
  store i32 -95, i32* %retval, align 4, !dbg !5676
  br label %return, !dbg !5676

if.end:                                           ; preds = %entry
  %3 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5677
  %4 = load i32, i32* %timeout.addr, align 4, !dbg !5679
  %call = call zeroext i1 @watchdog_timeout_invalid(%struct.watchdog_device* %3, i32 %4) #11, !dbg !5680
  br i1 %call, label %if.then1, label %if.end2, !dbg !5681

if.then1:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !5682
  br label %return, !dbg !5682

if.end2:                                          ; preds = %if.end
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5683
  %ops = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %5, i32 0, i32 4, !dbg !5685
  %6 = load %struct.watchdog_ops*, %struct.watchdog_ops** %ops, align 8, !dbg !5685
  %set_timeout = getelementptr inbounds %struct.watchdog_ops, %struct.watchdog_ops* %6, i32 0, i32 5, !dbg !5686
  %7 = load i32 (%struct.watchdog_device*, i32)*, i32 (%struct.watchdog_device*, i32)** %set_timeout, align 8, !dbg !5686
  %tobool3 = icmp ne i32 (%struct.watchdog_device*, i32)* %7, null, !dbg !5683
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !5687

if.then4:                                         ; preds = %if.end2
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5688
  %ops5 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %8, i32 0, i32 4, !dbg !5690
  %9 = load %struct.watchdog_ops*, %struct.watchdog_ops** %ops5, align 8, !dbg !5690
  %set_timeout6 = getelementptr inbounds %struct.watchdog_ops, %struct.watchdog_ops* %9, i32 0, i32 5, !dbg !5691
  %10 = load i32 (%struct.watchdog_device*, i32)*, i32 (%struct.watchdog_device*, i32)** %set_timeout6, align 8, !dbg !5691
  %11 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5692
  %12 = load i32, i32* %timeout.addr, align 4, !dbg !5693
  %call7 = call i32 %10(%struct.watchdog_device* %11, i32 %12) #11, !dbg !5688
  store i32 %call7, i32* %err, align 4, !dbg !5694
  br label %if.end13, !dbg !5695

if.else:                                          ; preds = %if.end2
  %13 = load i32, i32* %timeout.addr, align 4, !dbg !5696
  %14 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5698
  %timeout8 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %14, i32 0, i32 7, !dbg !5699
  store i32 %13, i32* %timeout8, align 4, !dbg !5700
  %15 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5701
  %pretimeout = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %15, i32 0, i32 8, !dbg !5703
  %16 = load i32, i32* %pretimeout, align 8, !dbg !5703
  %17 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5704
  %timeout9 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %17, i32 0, i32 7, !dbg !5705
  %18 = load i32, i32* %timeout9, align 4, !dbg !5705
  %cmp = icmp uge i32 %16, %18, !dbg !5706
  br i1 %cmp, label %if.then10, label %if.end12, !dbg !5707

if.then10:                                        ; preds = %if.else
  %19 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5708
  %pretimeout11 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %19, i32 0, i32 8, !dbg !5709
  store i32 0, i32* %pretimeout11, align 8, !dbg !5710
  br label %if.end12, !dbg !5708

if.end12:                                         ; preds = %if.then10, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then4
  %20 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5711
  call void @watchdog_update_worker(%struct.watchdog_device* %20) #11, !dbg !5712
  %21 = load i32, i32* %err, align 4, !dbg !5713
  store i32 %21, i32* %retval, align 4, !dbg !5714
  br label %return, !dbg !5714

return:                                           ; preds = %if.end13, %if.then1, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !5715
  ret i32 %22, !dbg !5715
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @watchdog_get_timeleft(%struct.watchdog_device* %wdd, i32* %timeleft) #0 !dbg !5716 {
entry:
  %retval = alloca i32, align 4
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  %timeleft.addr = alloca i32*, align 8
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !5719, metadata !DIExpression()), !dbg !5720
  store i32* %timeleft, i32** %timeleft.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %timeleft.addr, metadata !5721, metadata !DIExpression()), !dbg !5722
  %0 = load i32*, i32** %timeleft.addr, align 8, !dbg !5723
  store i32 0, i32* %0, align 4, !dbg !5724
  %1 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5725
  %ops = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %1, i32 0, i32 4, !dbg !5727
  %2 = load %struct.watchdog_ops*, %struct.watchdog_ops** %ops, align 8, !dbg !5727
  %get_timeleft = getelementptr inbounds %struct.watchdog_ops, %struct.watchdog_ops* %2, i32 0, i32 7, !dbg !5728
  %3 = load i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*)** %get_timeleft, align 8, !dbg !5728
  %tobool = icmp ne i32 (%struct.watchdog_device*)* %3, null, !dbg !5725
  br i1 %tobool, label %if.end, label %if.then, !dbg !5729

if.then:                                          ; preds = %entry
  store i32 -95, i32* %retval, align 4, !dbg !5730
  br label %return, !dbg !5730

if.end:                                           ; preds = %entry
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5731
  %ops1 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %4, i32 0, i32 4, !dbg !5732
  %5 = load %struct.watchdog_ops*, %struct.watchdog_ops** %ops1, align 8, !dbg !5732
  %get_timeleft2 = getelementptr inbounds %struct.watchdog_ops, %struct.watchdog_ops* %5, i32 0, i32 7, !dbg !5733
  %6 = load i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*)** %get_timeleft2, align 8, !dbg !5733
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5734
  %call = call i32 %6(%struct.watchdog_device* %7) #11, !dbg !5731
  %8 = load i32*, i32** %timeleft.addr, align 8, !dbg !5735
  store i32 %call, i32* %8, align 4, !dbg !5736
  store i32 0, i32* %retval, align 4, !dbg !5737
  br label %return, !dbg !5737

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !5738
  ret i32 %9, !dbg !5738
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @watchdog_set_pretimeout(%struct.watchdog_device* %wdd, i32 %timeout) #0 !dbg !5739 {
entry:
  %retval = alloca i32, align 4
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  %timeout.addr = alloca i32, align 4
  %err = alloca i32, align 4
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !5740, metadata !DIExpression()), !dbg !5741
  store i32 %timeout, i32* %timeout.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %timeout.addr, metadata !5742, metadata !DIExpression()), !dbg !5743
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5744, metadata !DIExpression()), !dbg !5745
  store i32 0, i32* %err, align 4, !dbg !5745
  %0 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5746
  %info = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %0, i32 0, i32 3, !dbg !5748
  %1 = load %struct.watchdog_info*, %struct.watchdog_info** %info, align 8, !dbg !5748
  %options = getelementptr inbounds %struct.watchdog_info, %struct.watchdog_info* %1, i32 0, i32 0, !dbg !5749
  %2 = load i32, i32* %options, align 4, !dbg !5749
  %and = and i32 %2, 512, !dbg !5750
  %tobool = icmp ne i32 %and, 0, !dbg !5750
  br i1 %tobool, label %if.end, label %if.then, !dbg !5751

if.then:                                          ; preds = %entry
  store i32 -95, i32* %retval, align 4, !dbg !5752
  br label %return, !dbg !5752

if.end:                                           ; preds = %entry
  %3 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5753
  %4 = load i32, i32* %timeout.addr, align 4, !dbg !5755
  %call = call zeroext i1 @watchdog_pretimeout_invalid(%struct.watchdog_device* %3, i32 %4) #11, !dbg !5756
  br i1 %call, label %if.then1, label %if.end2, !dbg !5757

if.then1:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !5758
  br label %return, !dbg !5758

if.end2:                                          ; preds = %if.end
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5759
  %ops = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %5, i32 0, i32 4, !dbg !5761
  %6 = load %struct.watchdog_ops*, %struct.watchdog_ops** %ops, align 8, !dbg !5761
  %set_pretimeout = getelementptr inbounds %struct.watchdog_ops, %struct.watchdog_ops* %6, i32 0, i32 6, !dbg !5762
  %7 = load i32 (%struct.watchdog_device*, i32)*, i32 (%struct.watchdog_device*, i32)** %set_pretimeout, align 8, !dbg !5762
  %tobool3 = icmp ne i32 (%struct.watchdog_device*, i32)* %7, null, !dbg !5759
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !5763

if.then4:                                         ; preds = %if.end2
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5764
  %ops5 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %8, i32 0, i32 4, !dbg !5765
  %9 = load %struct.watchdog_ops*, %struct.watchdog_ops** %ops5, align 8, !dbg !5765
  %set_pretimeout6 = getelementptr inbounds %struct.watchdog_ops, %struct.watchdog_ops* %9, i32 0, i32 6, !dbg !5766
  %10 = load i32 (%struct.watchdog_device*, i32)*, i32 (%struct.watchdog_device*, i32)** %set_pretimeout6, align 8, !dbg !5766
  %11 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5767
  %12 = load i32, i32* %timeout.addr, align 4, !dbg !5768
  %call7 = call i32 %10(%struct.watchdog_device* %11, i32 %12) #11, !dbg !5764
  store i32 %call7, i32* %err, align 4, !dbg !5769
  br label %if.end8, !dbg !5770

if.else:                                          ; preds = %if.end2
  %13 = load i32, i32* %timeout.addr, align 4, !dbg !5771
  %14 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5772
  %pretimeout = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %14, i32 0, i32 8, !dbg !5773
  store i32 %13, i32* %pretimeout, align 8, !dbg !5774
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4
  %15 = load i32, i32* %err, align 4, !dbg !5775
  store i32 %15, i32* %retval, align 4, !dbg !5776
  br label %return, !dbg !5776

return:                                           ; preds = %if.end8, %if.then1, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !5777
  ret i32 %16, !dbg !5777
}

; Function Attrs: noredzone
declare dso_local i64 @_copy_to_user(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @copy_overflow(i32 %size, i64 %count) #0 !dbg !5778 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5781, metadata !DIExpression()), !dbg !5782
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5783, metadata !DIExpression()), !dbg !5784
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5785, metadata !DIExpression()), !dbg !5787
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !5787
  %0 = load i32, i32* %__ret_warn_on, align 4, !dbg !5788
  %tobool = icmp ne i32 %0, 0, !dbg !5788
  %lnot = xor i1 %tobool, true, !dbg !5788
  %lnot1 = xor i1 %lnot, true, !dbg !5788
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5788
  %conv = sext i32 %lnot.ext to i64, !dbg !5788
  %tobool2 = icmp ne i64 %conv, 0, !dbg !5788
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5787

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5788

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !5790

do.body3:                                         ; preds = %do.body
  br label %do.end, !dbg !5792

do.end:                                           ; preds = %do.body3
  %1 = load i32, i32* %size.addr, align 4, !dbg !5790
  %2 = load i64, i64* %count.addr, align 8, !dbg !5790
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i32 %1, i64 %2) #11, !dbg !5790
  br label %do.body4, !dbg !5790

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !5794

do.body5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5796

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !5794

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i32 134, i32 2313, i64 12) #10, !dbg !5798, !srcloc !5800
  br label %do.end8, !dbg !5798

do.end8:                                          ; preds = %do.body7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #10, !dbg !5801, !srcloc !5803
  br label %do.body9, !dbg !5794

do.body9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !5804

do.end10:                                         ; preds = %do.body9
  br label %do.end11, !dbg !5794

do.end11:                                         ; preds = %do.end10
  br label %do.body12, !dbg !5790

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !5806

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !5790

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !5790

if.end:                                           ; preds = %do.end14, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !5787
  %tobool15 = icmp ne i32 %3, 0, !dbg !5787
  %lnot16 = xor i1 %tobool15, true, !dbg !5787
  %lnot18 = xor i1 %lnot16, true, !dbg !5787
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !5787
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !5787
  store i64 %conv20, i64* %tmp, align 8, !dbg !5788
  %4 = load i64, i64* %tmp, align 8, !dbg !5787
  ret void, !dbg !5808
}

; Function Attrs: noredzone
declare dso_local void @__bad_copy_from() #2

; Function Attrs: noredzone
declare dso_local void @__bad_copy_to() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @check_object_size(i8* %ptr, i64 %n, i1 zeroext %to_user) #0 !dbg !5809 {
entry:
  %ptr.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5812, metadata !DIExpression()), !dbg !5813
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5814, metadata !DIExpression()), !dbg !5815
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, i8* %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %to_user.addr, metadata !5816, metadata !DIExpression()), !dbg !5817
  ret void, !dbg !5818
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_and_clear_bit(i64 %nr, i64* %addr) #0 !dbg !5819 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5822, metadata !DIExpression()), !dbg !5824
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5826, metadata !DIExpression()), !dbg !5827
  %c.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %c.i, metadata !5828, metadata !DIExpression()), !dbg !5830
  %tmp.i = alloca i8, align 1
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5831, metadata !DIExpression()), !dbg !5833
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5835, metadata !DIExpression()), !dbg !5836
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5837, metadata !DIExpression()), !dbg !5838
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5839, metadata !DIExpression()), !dbg !5840
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5841
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5842
  %div = sdiv i64 %1, 64, !dbg !5842
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5843
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5841
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5844
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5845
  %conv.i = trunc i64 %4 to i32, !dbg !5845
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #14, !dbg !5846
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5847
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5847
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #14, !dbg !5847
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5848
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5849
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !5830
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !5830
  %11 = call i8 asm sideeffect " btrq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64* %9) #10, !dbg !5830, !srcloc !5850
  store i8 %11, i8* %c.i, align 1, !dbg !5830
  %12 = load i8, i8* %c.i, align 1, !dbg !5830
  %tobool.i = trunc i8 %12 to i1, !dbg !5830
  %frombool.i = zext i1 %tobool.i to i8, !dbg !5830
  store i8 %frombool.i, i8* %tmp.i, align 1, !dbg !5830
  %13 = load i8, i8* %tmp.i, align 1, !dbg !5830
  %tobool1.i = trunc i8 %13 to i1, !dbg !5830
  ret i1 %tobool1.i, !dbg !5851
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @watchdog_update_worker(%struct.watchdog_device* %wdd) #0 !dbg !5852 {
entry:
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  %wd_data = alloca %struct.watchdog_core_data*, align 8
  %t = alloca i64, align 8
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !5853, metadata !DIExpression()), !dbg !5854
  call void @llvm.dbg.declare(metadata %struct.watchdog_core_data** %wd_data, metadata !5855, metadata !DIExpression()), !dbg !5856
  %0 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5857
  %wd_data1 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %0, i32 0, i32 16, !dbg !5858
  %1 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data1, align 8, !dbg !5858
  store %struct.watchdog_core_data* %1, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5856
  %2 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5859
  %call = call zeroext i1 @watchdog_need_worker(%struct.watchdog_device* %2) #11, !dbg !5861
  br i1 %call, label %if.then, label %if.else, !dbg !5862

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %t, metadata !5863, metadata !DIExpression()), !dbg !5865
  %3 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5866
  %call2 = call i64 @watchdog_next_keepalive(%struct.watchdog_device* %3) #11, !dbg !5867
  store i64 %call2, i64* %t, align 8, !dbg !5865
  %4 = load i64, i64* %t, align 8, !dbg !5868
  %cmp = icmp sgt i64 %4, 0, !dbg !5870
  br i1 %cmp, label %if.then3, label %if.end, !dbg !5871

if.then3:                                         ; preds = %if.then
  %5 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5872
  %timer = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %5, i32 0, i32 7, !dbg !5873
  %6 = load i64, i64* %t, align 8, !dbg !5874
  call void @hrtimer_start(%struct.hrtimer* %timer, i64 %6, i32 9) #11, !dbg !5875
  br label %if.end, !dbg !5875

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !5876

if.else:                                          ; preds = %entry
  %7 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5877
  %timer4 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %7, i32 0, i32 7, !dbg !5879
  %call5 = call i32 @hrtimer_cancel(%struct.hrtimer* %timer4) #11, !dbg !5880
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.end
  ret void, !dbg !5881
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @watchdog_need_worker(%struct.watchdog_device* %wdd) #0 !dbg !5882 {
entry:
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  %hm = alloca i32, align 4
  %t = alloca i32, align 4
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !5883, metadata !DIExpression()), !dbg !5884
  call void @llvm.dbg.declare(metadata i32* %hm, metadata !5885, metadata !DIExpression()), !dbg !5886
  %0 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5887
  %max_hw_heartbeat_ms = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %0, i32 0, i32 12, !dbg !5888
  %1 = load i32, i32* %max_hw_heartbeat_ms, align 8, !dbg !5888
  store i32 %1, i32* %hm, align 4, !dbg !5886
  call void @llvm.dbg.declare(metadata i32* %t, metadata !5889, metadata !DIExpression()), !dbg !5890
  %2 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5891
  %timeout = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %2, i32 0, i32 7, !dbg !5892
  %3 = load i32, i32* %timeout, align 4, !dbg !5892
  %mul = mul i32 %3, 1000, !dbg !5893
  store i32 %mul, i32* %t, align 4, !dbg !5890
  %4 = load i32, i32* %hm, align 4, !dbg !5894
  %tobool = icmp ne i32 %4, 0, !dbg !5894
  br i1 %tobool, label %land.lhs.true, label %lor.rhs, !dbg !5895

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5896
  %call = call zeroext i1 @watchdog_active(%struct.watchdog_device* %5) #11, !dbg !5897
  br i1 %call, label %land.lhs.true1, label %lor.rhs, !dbg !5898

land.lhs.true1:                                   ; preds = %land.lhs.true
  %6 = load i32, i32* %t, align 4, !dbg !5899
  %7 = load i32, i32* %hm, align 4, !dbg !5900
  %cmp = icmp ugt i32 %6, %7, !dbg !5901
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5902

lor.rhs:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %8 = load i32, i32* %t, align 4, !dbg !5903
  %tobool2 = icmp ne i32 %8, 0, !dbg !5903
  br i1 %tobool2, label %land.lhs.true3, label %land.end, !dbg !5904

land.lhs.true3:                                   ; preds = %lor.rhs
  %9 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5905
  %call4 = call zeroext i1 @watchdog_active(%struct.watchdog_device* %9) #11, !dbg !5906
  br i1 %call4, label %land.end, label %land.rhs, !dbg !5907

land.rhs:                                         ; preds = %land.lhs.true3
  %10 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5908
  %call5 = call zeroext i1 @watchdog_hw_running(%struct.watchdog_device* %10) #11, !dbg !5909
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true3, %lor.rhs
  %11 = phi i1 [ false, %land.lhs.true3 ], [ false, %lor.rhs ], [ %call5, %land.rhs ], !dbg !5910
  br label %lor.end, !dbg !5902

lor.end:                                          ; preds = %land.end, %land.lhs.true1
  %12 = phi i1 [ true, %land.lhs.true1 ], [ %11, %land.end ]
  ret i1 %12, !dbg !5911
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @watchdog_next_keepalive(%struct.watchdog_device* %wdd) #0 !dbg !5912 {
entry:
  %retval = alloca i64, align 8
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  %wd_data = alloca %struct.watchdog_core_data*, align 8
  %timeout_ms = alloca i32, align 4
  %keepalive_interval = alloca i64, align 8
  %last_heartbeat = alloca i64, align 8
  %latest_heartbeat = alloca i64, align 8
  %virt_timeout = alloca i64, align 8
  %hw_heartbeat_ms = alloca i32, align 4
  %__x = alloca i32, align 4
  %__y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___x203 = alloca i32, align 4
  %__UNIQUE_ID___y204 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !5915, metadata !DIExpression()), !dbg !5916
  call void @llvm.dbg.declare(metadata %struct.watchdog_core_data** %wd_data, metadata !5917, metadata !DIExpression()), !dbg !5918
  %0 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5919
  %wd_data1 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %0, i32 0, i32 16, !dbg !5920
  %1 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data1, align 8, !dbg !5920
  store %struct.watchdog_core_data* %1, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5918
  call void @llvm.dbg.declare(metadata i32* %timeout_ms, metadata !5921, metadata !DIExpression()), !dbg !5922
  %2 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5923
  %timeout = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %2, i32 0, i32 7, !dbg !5924
  %3 = load i32, i32* %timeout, align 4, !dbg !5924
  %mul = mul i32 %3, 1000, !dbg !5925
  store i32 %mul, i32* %timeout_ms, align 4, !dbg !5922
  call void @llvm.dbg.declare(metadata i64* %keepalive_interval, metadata !5926, metadata !DIExpression()), !dbg !5927
  call void @llvm.dbg.declare(metadata i64* %last_heartbeat, metadata !5928, metadata !DIExpression()), !dbg !5929
  call void @llvm.dbg.declare(metadata i64* %latest_heartbeat, metadata !5930, metadata !DIExpression()), !dbg !5931
  call void @llvm.dbg.declare(metadata i64* %virt_timeout, metadata !5932, metadata !DIExpression()), !dbg !5933
  call void @llvm.dbg.declare(metadata i32* %hw_heartbeat_ms, metadata !5934, metadata !DIExpression()), !dbg !5935
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5936
  %call = call zeroext i1 @watchdog_active(%struct.watchdog_device* %4) #11, !dbg !5938
  br i1 %call, label %if.then, label %if.else, !dbg !5939

if.then:                                          ; preds = %entry
  %5 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5940
  %last_keepalive = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %5, i32 0, i32 4, !dbg !5940
  %6 = load i64, i64* %last_keepalive, align 8, !dbg !5940
  %7 = load i32, i32* %timeout_ms, align 4, !dbg !5940
  %conv = zext i32 %7 to i64, !dbg !5940
  %call2 = call i64 @ms_to_ktime(i64 %conv) #11, !dbg !5940
  %add = add i64 %6, %call2, !dbg !5940
  store i64 %add, i64* %virt_timeout, align 8, !dbg !5941
  br label %if.end, !dbg !5942

if.else:                                          ; preds = %entry
  %8 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %wd_data, align 8, !dbg !5943
  %open_deadline = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %8, i32 0, i32 6, !dbg !5944
  %9 = load i64, i64* %open_deadline, align 8, !dbg !5944
  store i64 %9, i64* %virt_timeout, align 8, !dbg !5945
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.dbg.declare(metadata i32* %__x, metadata !5946, metadata !DIExpression()), !dbg !5948
  %10 = load i32, i32* %timeout_ms, align 4, !dbg !5948
  store i32 %10, i32* %__x, align 4, !dbg !5948
  call void @llvm.dbg.declare(metadata i32* %__y, metadata !5949, metadata !DIExpression()), !dbg !5948
  %11 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5948
  %max_hw_heartbeat_ms = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %11, i32 0, i32 12, !dbg !5948
  %12 = load i32, i32* %max_hw_heartbeat_ms, align 8, !dbg !5948
  store i32 %12, i32* %__y, align 4, !dbg !5948
  %13 = load i32, i32* %__x, align 4, !dbg !5948
  %cmp = icmp eq i32 %13, 0, !dbg !5948
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5948

cond.true:                                        ; preds = %if.end
  %14 = load i32, i32* %__y, align 4, !dbg !5948
  br label %cond.end15, !dbg !5948

cond.false:                                       ; preds = %if.end
  %15 = load i32, i32* %__y, align 4, !dbg !5948
  %cmp4 = icmp eq i32 %15, 0, !dbg !5948
  br i1 %cmp4, label %cond.true6, label %cond.false7, !dbg !5948

cond.true6:                                       ; preds = %cond.false
  %16 = load i32, i32* %__x, align 4, !dbg !5948
  br label %cond.end13, !dbg !5948

cond.false7:                                      ; preds = %cond.false
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x203, metadata !5950, metadata !DIExpression()), !dbg !5952
  %17 = load i32, i32* %__x, align 4, !dbg !5952
  store i32 %17, i32* %__UNIQUE_ID___x203, align 4, !dbg !5952
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y204, metadata !5953, metadata !DIExpression()), !dbg !5952
  %18 = load i32, i32* %__y, align 4, !dbg !5952
  store i32 %18, i32* %__UNIQUE_ID___y204, align 4, !dbg !5952
  %19 = load i32, i32* %__UNIQUE_ID___x203, align 4, !dbg !5952
  %20 = load i32, i32* %__UNIQUE_ID___y204, align 4, !dbg !5952
  %cmp9 = icmp ult i32 %19, %20, !dbg !5952
  br i1 %cmp9, label %cond.true11, label %cond.false12, !dbg !5952

cond.true11:                                      ; preds = %cond.false7
  %21 = load i32, i32* %__UNIQUE_ID___x203, align 4, !dbg !5952
  br label %cond.end, !dbg !5952

cond.false12:                                     ; preds = %cond.false7
  %22 = load i32, i32* %__UNIQUE_ID___y204, align 4, !dbg !5952
  br label %cond.end, !dbg !5952

cond.end:                                         ; preds = %cond.false12, %cond.true11
  %cond = phi i32 [ %21, %cond.true11 ], [ %22, %cond.false12 ], !dbg !5952
  store i32 %cond, i32* %tmp8, align 4, !dbg !5952
  %23 = load i32, i32* %tmp8, align 4, !dbg !5952
  br label %cond.end13, !dbg !5948

cond.end13:                                       ; preds = %cond.end, %cond.true6
  %cond14 = phi i32 [ %16, %cond.true6 ], [ %23, %cond.end ], !dbg !5948
  br label %cond.end15, !dbg !5948

cond.end15:                                       ; preds = %cond.end13, %cond.true
  %cond16 = phi i32 [ %14, %cond.true ], [ %cond14, %cond.end13 ], !dbg !5948
  store i32 %cond16, i32* %tmp, align 4, !dbg !5948
  %24 = load i32, i32* %tmp, align 4, !dbg !5948
  store i32 %24, i32* %hw_heartbeat_ms, align 4, !dbg !5954
  %25 = load i32, i32* %hw_heartbeat_ms, align 4, !dbg !5955
  %div = udiv i32 %25, 2, !dbg !5956
  %conv17 = zext i32 %div to i64, !dbg !5955
  %call18 = call i64 @ms_to_ktime(i64 %conv17) #11, !dbg !5957
  store i64 %call18, i64* %keepalive_interval, align 8, !dbg !5958
  %26 = load i64, i64* %virt_timeout, align 8, !dbg !5959
  %27 = load i32, i32* %hw_heartbeat_ms, align 4, !dbg !5959
  %conv19 = zext i32 %27 to i64, !dbg !5959
  %call20 = call i64 @ms_to_ktime(i64 %conv19) #11, !dbg !5959
  %sub = sub i64 %26, %call20, !dbg !5959
  store i64 %sub, i64* %last_heartbeat, align 8, !dbg !5960
  %28 = load i64, i64* %last_heartbeat, align 8, !dbg !5961
  %call21 = call i64 @ktime_get() #11, !dbg !5961
  %sub22 = sub i64 %28, %call21, !dbg !5961
  store i64 %sub22, i64* %latest_heartbeat, align 8, !dbg !5962
  %29 = load i64, i64* %latest_heartbeat, align 8, !dbg !5963
  %30 = load i64, i64* %keepalive_interval, align 8, !dbg !5965
  %call23 = call zeroext i1 @ktime_before(i64 %29, i64 %30) #11, !dbg !5966
  br i1 %call23, label %if.then24, label %if.end25, !dbg !5967

if.then24:                                        ; preds = %cond.end15
  %31 = load i64, i64* %latest_heartbeat, align 8, !dbg !5968
  store i64 %31, i64* %retval, align 8, !dbg !5969
  br label %return, !dbg !5969

if.end25:                                         ; preds = %cond.end15
  %32 = load i64, i64* %keepalive_interval, align 8, !dbg !5970
  store i64 %32, i64* %retval, align 8, !dbg !5971
  br label %return, !dbg !5971

return:                                           ; preds = %if.end25, %if.then24
  %33 = load i64, i64* %retval, align 8, !dbg !5972
  ret i64 %33, !dbg !5972
}

; Function Attrs: noredzone
declare dso_local i32 @hrtimer_cancel(%struct.hrtimer*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @ktime_before(i64 %cmp1, i64 %cmp2) #0 !dbg !5973 {
entry:
  %cmp1.addr = alloca i64, align 8
  %cmp2.addr = alloca i64, align 8
  store i64 %cmp1, i64* %cmp1.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp1.addr, metadata !5974, metadata !DIExpression()), !dbg !5975
  store i64 %cmp2, i64* %cmp2.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp2.addr, metadata !5976, metadata !DIExpression()), !dbg !5977
  %0 = load i64, i64* %cmp1.addr, align 8, !dbg !5978
  %1 = load i64, i64* %cmp2.addr, align 8, !dbg !5979
  %call = call i32 @ktime_compare(i64 %0, i64 %1) #11, !dbg !5980
  %cmp = icmp slt i32 %call, 0, !dbg !5981
  ret i1 %cmp, !dbg !5982
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @watchdog_timeout_invalid(%struct.watchdog_device* %wdd, i32 %t) #0 !dbg !5983 {
entry:
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  %t.addr = alloca i32, align 4
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !5986, metadata !DIExpression()), !dbg !5987
  store i32 %t, i32* %t.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %t.addr, metadata !5988, metadata !DIExpression()), !dbg !5989
  %0 = load i32, i32* %t.addr, align 4, !dbg !5990
  %cmp = icmp ugt i32 %0, 4294967, !dbg !5991
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !5992

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %t.addr, align 4, !dbg !5993
  %2 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5994
  %min_timeout = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %2, i32 0, i32 9, !dbg !5995
  %3 = load i32, i32* %min_timeout, align 4, !dbg !5995
  %cmp1 = icmp ult i32 %1, %3, !dbg !5996
  br i1 %cmp1, label %lor.end, label %lor.rhs, !dbg !5997

lor.rhs:                                          ; preds = %lor.lhs.false
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !5998
  %max_hw_heartbeat_ms = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %4, i32 0, i32 12, !dbg !5999
  %5 = load i32, i32* %max_hw_heartbeat_ms, align 8, !dbg !5999
  %tobool = icmp ne i32 %5, 0, !dbg !5998
  br i1 %tobool, label %land.end, label %land.lhs.true, !dbg !6000

land.lhs.true:                                    ; preds = %lor.rhs
  %6 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !6001
  %max_timeout = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %6, i32 0, i32 10, !dbg !6002
  %7 = load i32, i32* %max_timeout, align 8, !dbg !6002
  %tobool2 = icmp ne i32 %7, 0, !dbg !6001
  br i1 %tobool2, label %land.rhs, label %land.end, !dbg !6003

land.rhs:                                         ; preds = %land.lhs.true
  %8 = load i32, i32* %t.addr, align 4, !dbg !6004
  %9 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !6005
  %max_timeout3 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %9, i32 0, i32 10, !dbg !6006
  %10 = load i32, i32* %max_timeout3, align 8, !dbg !6006
  %cmp4 = icmp ugt i32 %8, %10, !dbg !6007
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %lor.rhs
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %lor.rhs ], [ %cmp4, %land.rhs ], !dbg !6008
  br label %lor.end, !dbg !5997

lor.end:                                          ; preds = %land.end, %lor.lhs.false, %entry
  %12 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %11, %land.end ]
  ret i1 %12, !dbg !6009
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @watchdog_pretimeout_invalid(%struct.watchdog_device* %wdd, i32 %t) #0 !dbg !6010 {
entry:
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  %t.addr = alloca i32, align 4
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !6011, metadata !DIExpression()), !dbg !6012
  store i32 %t, i32* %t.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %t.addr, metadata !6013, metadata !DIExpression()), !dbg !6014
  %0 = load i32, i32* %t.addr, align 4, !dbg !6015
  %tobool = icmp ne i32 %0, 0, !dbg !6015
  br i1 %tobool, label %land.lhs.true, label %land.end, !dbg !6016

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !6017
  %timeout = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %1, i32 0, i32 7, !dbg !6018
  %2 = load i32, i32* %timeout, align 4, !dbg !6018
  %tobool1 = icmp ne i32 %2, 0, !dbg !6017
  br i1 %tobool1, label %land.rhs, label %land.end, !dbg !6019

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load i32, i32* %t.addr, align 4, !dbg !6020
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !6021
  %timeout2 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %4, i32 0, i32 7, !dbg !6022
  %5 = load i32, i32* %timeout2, align 4, !dbg !6022
  %cmp = icmp uge i32 %3, %5, !dbg !6023
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %6 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp, %land.rhs ], !dbg !6024
  ret i1 %6, !dbg !6025
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @imajor(%struct.inode* %inode) #0 !dbg !6026 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !6029, metadata !DIExpression()), !dbg !6030
  %0 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !6031
  %i_rdev = getelementptr inbounds %struct.inode, %struct.inode* %0, i32 0, i32 10, !dbg !6031
  %1 = load i32, i32* %i_rdev, align 4, !dbg !6031
  %shr = lshr i32 %1, 20, !dbg !6031
  ret i32 %shr, !dbg !6032
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_and_set_bit(i64 %nr, i64* %addr) #0 !dbg !6033 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !6034, metadata !DIExpression()), !dbg !6036
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !6038, metadata !DIExpression()), !dbg !6039
  %c.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %c.i, metadata !6040, metadata !DIExpression()), !dbg !6042
  %tmp.i = alloca i8, align 1
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5831, metadata !DIExpression()), !dbg !6043
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5835, metadata !DIExpression()), !dbg !6045
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !6046, metadata !DIExpression()), !dbg !6047
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !6048, metadata !DIExpression()), !dbg !6049
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !6050
  %1 = load i64, i64* %nr.addr, align 8, !dbg !6051
  %div = sdiv i64 %1, 64, !dbg !6051
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !6052
  %2 = bitcast i64* %add.ptr to i8*, !dbg !6050
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !6053
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !6054
  %conv.i = trunc i64 %4 to i32, !dbg !6054
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #14, !dbg !6055
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !6056
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !6056
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #14, !dbg !6056
  %7 = load i64, i64* %nr.addr, align 8, !dbg !6057
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !6058
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !6042
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !6042
  %11 = call i8 asm sideeffect " btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64* %9) #10, !dbg !6042, !srcloc !6059
  store i8 %11, i8* %c.i, align 1, !dbg !6042
  %12 = load i8, i8* %c.i, align 1, !dbg !6042
  %tobool.i = trunc i8 %12 to i1, !dbg !6042
  %frombool.i = zext i1 %tobool.i to i8, !dbg !6042
  store i8 %frombool.i, i8* %tmp.i, align 1, !dbg !6042
  %13 = load i8, i8* %tmp.i, align 1, !dbg !6042
  %tobool1.i = trunc i8 %13 to i1, !dbg !6042
  ret i1 %tobool1.i, !dbg !6060
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @try_module_get(%struct.module* %module) #0 !dbg !6061 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !6064, metadata !DIExpression()), !dbg !6065
  ret i1 true, !dbg !6066
}

; Function Attrs: noredzone
declare dso_local i32 @stream_open(%struct.inode*, %struct.file*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @module_put(%struct.module* %module) #0 !dbg !6067 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !6068, metadata !DIExpression()), !dbg !6069
  ret void, !dbg !6070
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_set(i64 %secs, i64 %nsecs) #0 !dbg !6071 {
entry:
  %retval = alloca i64, align 8
  %secs.addr = alloca i64, align 8
  %nsecs.addr = alloca i64, align 8
  store i64 %secs, i64* %secs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %secs.addr, metadata !6076, metadata !DIExpression()), !dbg !6077
  store i64 %nsecs, i64* %nsecs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nsecs.addr, metadata !6078, metadata !DIExpression()), !dbg !6079
  %0 = load i64, i64* %secs.addr, align 8, !dbg !6080
  %cmp = icmp sge i64 %0, 9223372036, !dbg !6080
  %lnot = xor i1 %cmp, true, !dbg !6080
  %lnot1 = xor i1 %lnot, true, !dbg !6080
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6080
  %conv = sext i32 %lnot.ext to i64, !dbg !6080
  %tobool = icmp ne i64 %conv, 0, !dbg !6080
  br i1 %tobool, label %if.then, label %if.end, !dbg !6082

if.then:                                          ; preds = %entry
  store i64 9223372036854775807, i64* %retval, align 8, !dbg !6083
  br label %return, !dbg !6083

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %secs.addr, align 8, !dbg !6084
  %mul = mul i64 %1, 1000000000, !dbg !6085
  %2 = load i64, i64* %nsecs.addr, align 8, !dbg !6086
  %add = add i64 %mul, %2, !dbg !6087
  store i64 %add, i64* %retval, align 8, !dbg !6088
  br label %return, !dbg !6088

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval, align 8, !dbg !6089
  ret i64 %3, !dbg !6089
}

; Function Attrs: noredzone
declare dso_local void @hrtimer_start_range_ns(%struct.hrtimer*, i64, i64, i32) #2

; Function Attrs: noredzone
declare dso_local void @cdev_device_del(%struct.cdev*, %struct.device*) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @kthread_cancel_work_sync(%struct.kthread_work*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind willreturn }
attributes #8 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { noredzone }
attributes #12 = { cold noredzone }
attributes #13 = { noredzone nounwind readnone }
attributes #14 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!3721}
!llvm.module.flags = !{!3722, !3723, !3724, !3725}
!llvm.ident = !{!3726}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "watchdog_kworker", scope: !2, file: !3, line: 78, type: !3585, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !109, globals: !3602, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/watchdog/watchdog_dev.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !18, !24, !30, !39, !47, !53, !59, !66, !74, !80, !97, !104}
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
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_mode", file: !14, line: 39, baseType: !7, size: 32, elements: !81)
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96}
!82 = !DIEnumerator(name: "HRTIMER_MODE_ABS", value: 0, isUnsigned: true)
!83 = !DIEnumerator(name: "HRTIMER_MODE_REL", value: 1, isUnsigned: true)
!84 = !DIEnumerator(name: "HRTIMER_MODE_PINNED", value: 2, isUnsigned: true)
!85 = !DIEnumerator(name: "HRTIMER_MODE_SOFT", value: 4, isUnsigned: true)
!86 = !DIEnumerator(name: "HRTIMER_MODE_HARD", value: 8, isUnsigned: true)
!87 = !DIEnumerator(name: "HRTIMER_MODE_ABS_PINNED", value: 2, isUnsigned: true)
!88 = !DIEnumerator(name: "HRTIMER_MODE_REL_PINNED", value: 3, isUnsigned: true)
!89 = !DIEnumerator(name: "HRTIMER_MODE_ABS_SOFT", value: 4, isUnsigned: true)
!90 = !DIEnumerator(name: "HRTIMER_MODE_REL_SOFT", value: 5, isUnsigned: true)
!91 = !DIEnumerator(name: "HRTIMER_MODE_ABS_PINNED_SOFT", value: 6, isUnsigned: true)
!92 = !DIEnumerator(name: "HRTIMER_MODE_REL_PINNED_SOFT", value: 7, isUnsigned: true)
!93 = !DIEnumerator(name: "HRTIMER_MODE_ABS_HARD", value: 8, isUnsigned: true)
!94 = !DIEnumerator(name: "HRTIMER_MODE_REL_HARD", value: 9, isUnsigned: true)
!95 = !DIEnumerator(name: "HRTIMER_MODE_ABS_PINNED_HARD", value: 10, isUnsigned: true)
!96 = !DIEnumerator(name: "HRTIMER_MODE_REL_PINNED_HARD", value: 11, isUnsigned: true)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !98, line: 305, baseType: !7, size: 32, elements: !99)
!98 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!99 = !{!100, !101, !102, !103}
!100 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!101 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!102 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!103 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !105, line: 10, baseType: !7, size: 32, elements: !106)
!105 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!106 = !{!107, !108}
!107 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!108 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!109 = !{!110, !7, !112, !113, !114, !3596, !3598, !127, !3599, !3601, !168, !689, !330, !219}
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !111, line: 148, baseType: !7)
!111 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!113 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "watchdog_core_data", file: !3, line: 57, size: 7744, elements: !116)
!116 = !{!117, !3483, !3484, !3568, !3569, !3570, !3571, !3572, !3573, !3595}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !115, file: !3, line: 58, baseType: !118, size: 5568)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !60, line: 461, size: 5568, elements: !119)
!119 = !{!120, !3141, !3143, !3146, !3147, !3198, !3271, !3272, !3273, !3274, !3275, !3284, !3389, !3402, !3405, !3406, !3410, !3412, !3413, !3414, !3418, !3424, !3425, !3428, !3432, !3435, !3436, !3437, !3438, !3439, !3471, !3472, !3473, !3476, !3479, !3480, !3481, !3482}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !118, file: !60, line: 462, baseType: !121, size: 512)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !122, line: 64, size: 512, elements: !123)
!122 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!123 = !{!124, !128, !134, !136, !197, !2992, !3131, !3136, !3137, !3138, !3139, !3140}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !121, file: !122, line: 65, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!127 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !121, file: !122, line: 66, baseType: !129, size: 128, offset: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !111, line: 178, size: 128, elements: !130)
!130 = !{!131, !133}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !129, file: !111, line: 179, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !129, file: !111, line: 179, baseType: !132, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !121, file: !122, line: 67, baseType: !135, size: 64, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !121, file: !122, line: 68, baseType: !137, size: 64, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !122, line: 192, size: 704, elements: !139)
!139 = !{!140, !141, !157, !158}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !138, file: !122, line: 193, baseType: !129, size: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !138, file: !122, line: 194, baseType: !142, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !143, line: 83, baseType: !144)
!143 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !143, line: 71, elements: !145)
!145 = !{!146}
!146 = !DIDerivedType(tag: DW_TAG_member, scope: !144, file: !143, line: 72, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !144, file: !143, line: 72, elements: !148)
!148 = !{!149}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !147, file: !143, line: 73, baseType: !150)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !143, line: 20, elements: !151)
!151 = !{!152}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !150, file: !143, line: 21, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !154, line: 25, baseType: !155)
!154 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !154, line: 25, elements: !156)
!156 = !{}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !138, file: !122, line: 195, baseType: !121, size: 512, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !138, file: !122, line: 196, baseType: !159, size: 64, offset: 640)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !122, line: 156, size: 192, elements: !162)
!162 = !{!163, !169, !174}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !161, file: !122, line: 157, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!168, !137, !135}
!168 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !161, file: !122, line: 158, baseType: !170, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{!125, !137, !135}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !161, file: !122, line: 159, baseType: !175, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!168, !137, !135, !179}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !122, line: 148, size: 20736, elements: !181)
!181 = !{!182, !187, !191, !192, !196}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !180, file: !122, line: 149, baseType: !183, size: 192)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 192, elements: !185)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!185 = !{!186}
!186 = !DISubrange(count: 3)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !180, file: !122, line: 150, baseType: !188, size: 4096, offset: 192)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 4096, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !180, file: !122, line: 151, baseType: !168, size: 32, offset: 4288)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !180, file: !122, line: 152, baseType: !193, size: 16384, offset: 4320)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 16384, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 2048)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !180, file: !122, line: 153, baseType: !168, size: 32, offset: 20704)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !121, file: !122, line: 69, baseType: !198, size: 64, offset: 320)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !122, line: 138, size: 448, elements: !200)
!200 = !{!201, !205, !234, !236, !2952, !2982, !2986}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !199, file: !122, line: 139, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !135}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !199, file: !122, line: 140, baseType: !206, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !209, line: 230, size: 128, elements: !210)
!209 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!210 = !{!211, !227}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !208, file: !209, line: 231, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!215, !135, !220, !184}
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !111, line: 60, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !217, line: 73, baseType: !218)
!217 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !217, line: 15, baseType: !219)
!219 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !209, line: 30, size: 128, elements: !222)
!222 = !{!223, !224}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !221, file: !209, line: 31, baseType: !125, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !221, file: !209, line: 32, baseType: !225, size: 16, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !111, line: 19, baseType: !226)
!226 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !208, file: !209, line: 232, baseType: !228, size: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!215, !135, !220, !125, !231}
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !111, line: 55, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !217, line: 72, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !217, line: 16, baseType: !113)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !199, file: !122, line: 141, baseType: !235, size: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !199, file: !122, line: 142, baseType: !237, size: 64, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !209, line: 84, size: 320, elements: !241)
!241 = !{!242, !243, !247, !2949, !2950}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !240, file: !209, line: 85, baseType: !125, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !240, file: !209, line: 86, baseType: !244, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!225, !135, !220, !168}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !240, file: !209, line: 88, baseType: !248, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!225, !135, !251, !168}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !209, line: 168, size: 448, elements: !253)
!253 = !{!254, !255, !256, !257, !2944, !2945}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !252, file: !209, line: 169, baseType: !221, size: 128)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !252, file: !209, line: 170, baseType: !231, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !252, file: !209, line: 171, baseType: !112, size: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !252, file: !209, line: 172, baseType: !258, size: 64, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!215, !261, !135, !251, !184, !440, !231}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 916, size: 1856, align: 32, elements: !263)
!263 = !{!264, !282, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2927, !2928, !2937, !2938, !2939, !2940, !2941, !2942, !2943}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !262, file: !31, line: 920, baseType: !265, size: 128)
!265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !262, file: !31, line: 917, size: 128, elements: !266)
!266 = !{!267, !273}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !265, file: !31, line: 918, baseType: !268, size: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !269, line: 58, size: 64, elements: !270)
!269 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!270 = !{!271}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !268, file: !269, line: 59, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !265, file: !31, line: 919, baseType: !274, size: 128, align: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !111, line: 216, size: 128, align: 64, elements: !275)
!275 = !{!276, !278}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !274, file: !111, line: 217, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !274, file: !111, line: 218, baseType: !279, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{null, !277}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !262, file: !31, line: 921, baseType: !283, size: 128, offset: 128)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !284, line: 8, size: 128, elements: !285)
!284 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!285 = !{!286, !290}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !283, file: !284, line: 9, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !289, line: 18, flags: DIFlagFwdDecl)
!289 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!290 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !283, file: !284, line: 10, baseType: !291, size: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !289, line: 89, size: 1536, elements: !293)
!293 = !{!294, !295, !305, !313, !314, !337, !2877, !2879, !2891, !2892, !2893, !2894, !2895, !2901, !2902, !2903}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !292, file: !289, line: 91, baseType: !7, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !292, file: !289, line: 92, baseType: !296, size: 32, offset: 32)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !297, line: 277, baseType: !298)
!297 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !297, line: 277, size: 32, elements: !299)
!299 = !{!300}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !298, file: !297, line: 277, baseType: !301, size: 32)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !297, line: 70, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !297, line: 65, size: 32, elements: !303)
!303 = !{!304}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !302, file: !297, line: 66, baseType: !7, size: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !292, file: !289, line: 93, baseType: !306, size: 128, offset: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !307, line: 38, size: 128, elements: !308)
!307 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!308 = !{!309, !311}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !306, file: !307, line: 39, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !306, file: !307, line: 39, baseType: !312, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !292, file: !289, line: 94, baseType: !291, size: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !292, file: !289, line: 95, baseType: !315, size: 128, offset: 256)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !289, line: 47, size: 128, elements: !316)
!316 = !{!317, !333}
!317 = !DIDerivedType(tag: DW_TAG_member, scope: !315, file: !289, line: 48, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !315, file: !289, line: 48, size: 64, elements: !319)
!319 = !{!320, !329}
!320 = !DIDerivedType(tag: DW_TAG_member, scope: !318, file: !289, line: 49, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !318, file: !289, line: 49, size: 64, elements: !322)
!322 = !{!323, !328}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !321, file: !289, line: 50, baseType: !324, size: 32)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !325, line: 21, baseType: !326)
!325 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !327, line: 27, baseType: !7)
!327 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!328 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !321, file: !289, line: 50, baseType: !324, size: 32, offset: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !318, file: !289, line: 52, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !325, line: 23, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !327, line: 31, baseType: !332)
!332 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !315, file: !289, line: 54, baseType: !334, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!336 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !292, file: !289, line: 96, baseType: !338, size: 64, offset: 384)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 610, size: 4224, elements: !340)
!340 = !{!341, !342, !343, !351, !358, !359, !507, !2580, !2581, !2582, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2845, !2853, !2854, !2855, !2873, !2874, !2875, !2876}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !339, file: !31, line: 611, baseType: !225, size: 16)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !339, file: !31, line: 612, baseType: !226, size: 16, offset: 16)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !339, file: !31, line: 613, baseType: !344, size: 32, offset: 32)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !345, line: 23, baseType: !346)
!345 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !345, line: 21, size: 32, elements: !347)
!347 = !{!348}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !346, file: !345, line: 22, baseType: !349, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !111, line: 32, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !217, line: 49, baseType: !7)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !339, file: !31, line: 614, baseType: !352, size: 32, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !345, line: 28, baseType: !353)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !345, line: 26, size: 32, elements: !354)
!354 = !{!355}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !353, file: !345, line: 27, baseType: !356, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !111, line: 33, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !217, line: 50, baseType: !7)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !339, file: !31, line: 615, baseType: !7, size: 32, offset: 96)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !339, file: !31, line: 622, baseType: !360, size: 64, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1864, size: 1536, align: 512, elements: !363)
!363 = !{!364, !368, !381, !385, !391, !395, !401, !405, !409, !413, !417, !418, !424, !428, !454, !483, !487, !493, !498, !502, !503}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !362, file: !31, line: 1865, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!291, !338, !291, !7}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !362, file: !31, line: 1866, baseType: !369, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!125, !291, !338, !372}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !374, line: 10, size: 128, elements: !375)
!374 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!375 = !{!376, !380}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !373, file: !374, line: 11, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !112}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !373, file: !374, line: 12, baseType: !112, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !362, file: !31, line: 1867, baseType: !382, size: 64, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{!168, !338, !168}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !362, file: !31, line: 1868, baseType: !386, size: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{!389, !338, !168}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 581, flags: DIFlagFwdDecl)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !362, file: !31, line: 1870, baseType: !392, size: 64, offset: 256)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{!168, !291, !184, !168}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !362, file: !31, line: 1872, baseType: !396, size: 64, offset: 320)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!168, !338, !291, !225, !399}
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !111, line: 30, baseType: !400)
!400 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !362, file: !31, line: 1873, baseType: !402, size: 64, offset: 384)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!168, !291, !338, !291}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !362, file: !31, line: 1874, baseType: !406, size: 64, offset: 448)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!168, !338, !291}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !362, file: !31, line: 1875, baseType: !410, size: 64, offset: 512)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!168, !338, !291, !125}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !362, file: !31, line: 1876, baseType: !414, size: 64, offset: 576)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{!168, !338, !291, !225}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !362, file: !31, line: 1877, baseType: !406, size: 64, offset: 640)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !362, file: !31, line: 1878, baseType: !419, size: 64, offset: 704)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!168, !338, !291, !225, !422}
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !111, line: 16, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !111, line: 13, baseType: !324)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !362, file: !31, line: 1879, baseType: !425, size: 64, offset: 768)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!168, !338, !291, !338, !291, !7}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !362, file: !31, line: 1881, baseType: !429, size: 64, offset: 832)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!168, !291, !432}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 219, size: 640, elements: !434)
!434 = !{!435, !436, !437, !438, !439, !443, !451, !452, !453}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !433, file: !31, line: 220, baseType: !7, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !433, file: !31, line: 221, baseType: !225, size: 16, offset: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !433, file: !31, line: 222, baseType: !344, size: 32, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !433, file: !31, line: 223, baseType: !352, size: 32, offset: 96)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !433, file: !31, line: 224, baseType: !440, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !111, line: 46, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !217, line: 88, baseType: !442)
!442 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !433, file: !31, line: 225, baseType: !444, size: 128, offset: 192)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !445, line: 13, size: 128, elements: !446)
!445 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!446 = !{!447, !450}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !444, file: !445, line: 14, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !445, line: 8, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !327, line: 30, baseType: !442)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !444, file: !445, line: 15, baseType: !219, size: 64, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !433, file: !31, line: 226, baseType: !444, size: 128, offset: 320)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !433, file: !31, line: 227, baseType: !444, size: 128, offset: 448)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !433, file: !31, line: 234, baseType: !261, size: 64, offset: 576)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !362, file: !31, line: 1882, baseType: !455, size: 64, offset: 896)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!168, !458, !460, !324, !7}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !462, line: 22, size: 1152, elements: !463)
!462 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!463 = !{!464, !465, !466, !467, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !461, file: !462, line: 23, baseType: !324, size: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !461, file: !462, line: 24, baseType: !225, size: 16, offset: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !461, file: !462, line: 25, baseType: !7, size: 32, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !461, file: !462, line: 26, baseType: !468, size: 32, offset: 96)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !111, line: 104, baseType: !324)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !461, file: !462, line: 27, baseType: !330, size: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !461, file: !462, line: 28, baseType: !330, size: 64, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !461, file: !462, line: 37, baseType: !330, size: 64, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !461, file: !462, line: 38, baseType: !422, size: 32, offset: 320)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !461, file: !462, line: 39, baseType: !422, size: 32, offset: 352)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !461, file: !462, line: 40, baseType: !344, size: 32, offset: 384)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !461, file: !462, line: 41, baseType: !352, size: 32, offset: 416)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !461, file: !462, line: 42, baseType: !440, size: 64, offset: 448)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !461, file: !462, line: 43, baseType: !444, size: 128, offset: 512)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !461, file: !462, line: 44, baseType: !444, size: 128, offset: 640)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !461, file: !462, line: 45, baseType: !444, size: 128, offset: 768)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !461, file: !462, line: 46, baseType: !444, size: 128, offset: 896)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !461, file: !462, line: 47, baseType: !330, size: 64, offset: 1024)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !461, file: !462, line: 48, baseType: !330, size: 64, offset: 1088)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !362, file: !31, line: 1883, baseType: !484, size: 64, offset: 960)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!215, !291, !184, !231}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !362, file: !31, line: 1884, baseType: !488, size: 64, offset: 1024)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!168, !338, !491, !330, !330}
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 50, flags: DIFlagFwdDecl)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !362, file: !31, line: 1886, baseType: !494, size: 64, offset: 1088)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!168, !338, !497, !168}
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !362, file: !31, line: 1887, baseType: !499, size: 64, offset: 1152)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!168, !338, !291, !261, !7, !225}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !362, file: !31, line: 1890, baseType: !414, size: 64, offset: 1216)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !362, file: !31, line: 1891, baseType: !504, size: 64, offset: 1280)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!168, !338, !389, !168}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !339, file: !31, line: 623, baseType: !508, size: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1416, size: 9472, elements: !510)
!510 = !{!511, !512, !513, !514, !515, !516, !566, !2187, !2269, !2352, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2368, !2372, !2373, !2376, !2377, !2380, !2381, !2382, !2423, !2450, !2451, !2452, !2453, !2454, !2455, !2458, !2460, !2467, !2468, !2470, !2471, !2472, !2531, !2532, !2547, !2548, !2549, !2550, !2551, !2554, !2555, !2556, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !509, file: !31, line: 1417, baseType: !129, size: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !509, file: !31, line: 1418, baseType: !422, size: 32, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !509, file: !31, line: 1419, baseType: !336, size: 8, offset: 160)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !509, file: !31, line: 1420, baseType: !113, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !509, file: !31, line: 1421, baseType: !440, size: 64, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !509, file: !31, line: 1422, baseType: !517, size: 64, offset: 320)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2228, size: 576, elements: !519)
!519 = !{!520, !521, !522, !529, !533, !537, !541, !545, !546, !556, !559, !560, !561, !563, !564, !565}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !518, file: !31, line: 2229, baseType: !125, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !518, file: !31, line: 2230, baseType: !168, size: 32, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !518, file: !31, line: 2238, baseType: !523, size: 64, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!168, !526}
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !528, line: 28, flags: DIFlagFwdDecl)
!528 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!529 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !518, file: !31, line: 2239, baseType: !530, size: 64, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !532)
!532 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 70, flags: DIFlagFwdDecl)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !518, file: !31, line: 2240, baseType: !534, size: 64, offset: 256)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!291, !517, !168, !125, !112}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !518, file: !31, line: 2242, baseType: !538, size: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !508}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !518, file: !31, line: 2243, baseType: !542, size: 64, offset: 384)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !544, line: 76, flags: DIFlagFwdDecl)
!544 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!545 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !518, file: !31, line: 2244, baseType: !517, size: 64, offset: 448)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !518, file: !31, line: 2245, baseType: !547, size: 64, offset: 512)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !111, line: 182, size: 64, elements: !548)
!548 = !{!549}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !547, file: !111, line: 183, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !111, line: 186, size: 128, elements: !552)
!552 = !{!553, !554}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !551, file: !111, line: 187, baseType: !550, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !551, file: !111, line: 187, baseType: !555, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !518, file: !31, line: 2247, baseType: !557, offset: 576)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !558, line: 187, elements: !156)
!558 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!559 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !518, file: !31, line: 2248, baseType: !557, offset: 576)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !518, file: !31, line: 2249, baseType: !557, offset: 576)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !518, file: !31, line: 2250, baseType: !562, offset: 576)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !557, elements: !185)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !518, file: !31, line: 2252, baseType: !557, offset: 576)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !518, file: !31, line: 2253, baseType: !557, offset: 576)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !518, file: !31, line: 2254, baseType: !557, offset: 576)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !509, file: !31, line: 1423, baseType: !567, size: 64, offset: 384)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !569)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 1935, size: 1472, elements: !570)
!570 = !{!571, !575, !579, !580, !584, !590, !594, !595, !596, !600, !604, !605, !606, !607, !613, !618, !619, !626, !627, !628, !629, !2171, !2186}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !569, file: !31, line: 1936, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!338, !508}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !569, file: !31, line: 1937, baseType: !576, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !338}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !569, file: !31, line: 1938, baseType: !576, size: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !569, file: !31, line: 1940, baseType: !581, size: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !338, !168}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !569, file: !31, line: 1941, baseType: !585, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!168, !338, !588}
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !31, line: 289, flags: DIFlagFwdDecl)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !569, file: !31, line: 1942, baseType: !591, size: 64, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!168, !338}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !569, file: !31, line: 1943, baseType: !576, size: 64, offset: 384)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !569, file: !31, line: 1944, baseType: !538, size: 64, offset: 448)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !569, file: !31, line: 1945, baseType: !597, size: 64, offset: 512)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!168, !508, !168}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !569, file: !31, line: 1946, baseType: !601, size: 64, offset: 576)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!168, !508}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !569, file: !31, line: 1947, baseType: !601, size: 64, offset: 640)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !569, file: !31, line: 1948, baseType: !601, size: 64, offset: 704)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !569, file: !31, line: 1949, baseType: !601, size: 64, offset: 768)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !569, file: !31, line: 1950, baseType: !608, size: 64, offset: 832)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!168, !291, !611}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 57, flags: DIFlagFwdDecl)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !569, file: !31, line: 1951, baseType: !614, size: 64, offset: 896)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!168, !508, !617, !184}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !569, file: !31, line: 1952, baseType: !538, size: 64, offset: 960)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !569, file: !31, line: 1954, baseType: !620, size: 64, offset: 1024)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!168, !623, !291}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !625, line: 539, flags: DIFlagFwdDecl)
!625 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!626 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !569, file: !31, line: 1955, baseType: !620, size: 64, offset: 1088)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !569, file: !31, line: 1956, baseType: !620, size: 64, offset: 1152)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !569, file: !31, line: 1957, baseType: !620, size: 64, offset: 1216)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !569, file: !31, line: 1963, baseType: !630, size: 64, offset: 1280)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!168, !508, !633, !110}
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !635, line: 68, size: 512, align: 128, elements: !636)
!635 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!636 = !{!637, !638, !2163, !2170}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !634, file: !635, line: 69, baseType: !113, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, scope: !634, file: !635, line: 77, baseType: !639, size: 320, offset: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !634, file: !635, line: 77, size: 320, elements: !640)
!640 = !{!641, !828, !833, !861, !869, !875, !2155, !2162}
!641 = !DIDerivedType(tag: DW_TAG_member, scope: !639, file: !635, line: 78, baseType: !642, size: 320)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !639, file: !635, line: 78, size: 320, elements: !643)
!643 = !{!644, !645, !826, !827}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !642, file: !635, line: 84, baseType: !129, size: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !642, file: !635, line: 86, baseType: !646, size: 64, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 451, size: 1216, align: 64, elements: !648)
!648 = !{!649, !650, !657, !658, !663, !678, !694, !695, !696, !697, !819, !820, !823, !824, !825}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !647, file: !31, line: 452, baseType: !338, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !647, file: !31, line: 453, baseType: !651, size: 128, offset: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !652, line: 292, size: 128, elements: !653)
!652 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!653 = !{!654, !655, !656}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !651, file: !652, line: 293, baseType: !142)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !651, file: !652, line: 295, baseType: !110, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !651, file: !652, line: 296, baseType: !112, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !647, file: !31, line: 454, baseType: !110, size: 32, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !647, file: !31, line: 455, baseType: !659, size: 32, offset: 224)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !111, line: 168, baseType: !660)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !111, line: 166, size: 32, elements: !661)
!661 = !{!662}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !660, file: !111, line: 167, baseType: !168, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !647, file: !31, line: 460, baseType: !664, size: 128, offset: 256)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !665, line: 125, size: 128, elements: !666)
!665 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!666 = !{!667, !677}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !664, file: !665, line: 126, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !665, line: 31, size: 64, elements: !669)
!669 = !{!670}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !668, file: !665, line: 32, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !665, line: 24, size: 192, align: 64, elements: !673)
!673 = !{!674, !675, !676}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !672, file: !665, line: 25, baseType: !113, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !672, file: !665, line: 26, baseType: !671, size: 64, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !672, file: !665, line: 27, baseType: !671, size: 64, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !664, file: !665, line: 127, baseType: !671, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !647, file: !31, line: 461, baseType: !679, size: 256, offset: 384)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !680, line: 35, size: 256, elements: !681)
!680 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!681 = !{!682, !690, !691, !693}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !679, file: !680, line: 36, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !684, line: 13, baseType: !685)
!684 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !111, line: 175, baseType: !686)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !111, line: 173, size: 64, elements: !687)
!687 = !{!688}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !686, file: !111, line: 174, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !325, line: 22, baseType: !449)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !679, file: !680, line: 42, baseType: !683, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !679, file: !680, line: 46, baseType: !692, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !143, line: 29, baseType: !150)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !679, file: !680, line: 47, baseType: !129, size: 128, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !647, file: !31, line: 462, baseType: !113, size: 64, offset: 640)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !647, file: !31, line: 463, baseType: !113, size: 64, offset: 704)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !647, file: !31, line: 464, baseType: !113, size: 64, offset: 768)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !647, file: !31, line: 465, baseType: !698, size: 64, offset: 832)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !700)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 367, size: 1408, elements: !701)
!701 = !{!702, !706, !710, !714, !718, !722, !728, !734, !738, !743, !747, !751, !755, !783, !787, !793, !794, !795, !799, !804, !808, !815}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !700, file: !31, line: 368, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!168, !633, !588}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !700, file: !31, line: 369, baseType: !707, size: 64, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!168, !261, !633}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !700, file: !31, line: 372, baseType: !711, size: 64, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!168, !646, !588}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !700, file: !31, line: 375, baseType: !715, size: 64, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{!168, !633}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !700, file: !31, line: 381, baseType: !719, size: 64, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!168, !261, !646, !132, !7}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !700, file: !31, line: 383, baseType: !723, size: 64, offset: 320)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{null, !726}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !31, line: 290, flags: DIFlagFwdDecl)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !700, file: !31, line: 385, baseType: !729, size: 64, offset: 384)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!168, !261, !646, !440, !7, !7, !732, !733}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !700, file: !31, line: 388, baseType: !735, size: 64, offset: 448)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!168, !261, !646, !440, !7, !7, !633, !112}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !700, file: !31, line: 393, baseType: !739, size: 64, offset: 512)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!742, !646, !742}
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !111, line: 125, baseType: !330)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !700, file: !31, line: 394, baseType: !744, size: 64, offset: 576)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{null, !633, !7, !7}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !700, file: !31, line: 395, baseType: !748, size: 64, offset: 640)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!168, !633, !110}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !700, file: !31, line: 396, baseType: !752, size: 64, offset: 704)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{null, !633}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !700, file: !31, line: 397, baseType: !756, size: 64, offset: 768)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!215, !759, !781}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 320, size: 384, elements: !761)
!761 = !{!762, !763, !764, !768, !769, !770, !773, !774}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !760, file: !31, line: 321, baseType: !261, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !760, file: !31, line: 326, baseType: !440, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !760, file: !31, line: 327, baseType: !765, size: 64, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{null, !759, !219, !219}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !760, file: !31, line: 328, baseType: !112, size: 64, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !760, file: !31, line: 329, baseType: !168, size: 32, offset: 256)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !760, file: !31, line: 330, baseType: !771, size: 16, offset: 288)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !325, line: 19, baseType: !772)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !327, line: 24, baseType: !226)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !760, file: !31, line: 331, baseType: !771, size: 16, offset: 304)
!774 = !DIDerivedType(tag: DW_TAG_member, scope: !760, file: !31, line: 332, baseType: !775, size: 64, offset: 320)
!775 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !760, file: !31, line: 332, size: 64, elements: !776)
!776 = !{!777, !778}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !775, file: !31, line: 333, baseType: !7, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !775, file: !31, line: 334, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !31, line: 334, flags: DIFlagFwdDecl)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !31, line: 64, flags: DIFlagFwdDecl)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !700, file: !31, line: 402, baseType: !784, size: 64, offset: 832)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{!168, !646, !633, !633, !5}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !700, file: !31, line: 404, baseType: !788, size: 64, offset: 896)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{!399, !633, !791}
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !792, line: 305, baseType: !7)
!792 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!793 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !700, file: !31, line: 405, baseType: !752, size: 64, offset: 960)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !700, file: !31, line: 406, baseType: !715, size: 64, offset: 1024)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !700, file: !31, line: 407, baseType: !796, size: 64, offset: 1088)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!168, !633, !113, !113}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !700, file: !31, line: 409, baseType: !800, size: 64, offset: 1152)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{null, !633, !803, !803}
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !700, file: !31, line: 410, baseType: !805, size: 64, offset: 1216)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!168, !646, !633}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !700, file: !31, line: 413, baseType: !809, size: 64, offset: 1280)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!168, !812, !261, !814}
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !31, line: 61, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !700, file: !31, line: 415, baseType: !816, size: 64, offset: 1344)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{null, !261}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !647, file: !31, line: 466, baseType: !113, size: 64, offset: 896)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !647, file: !31, line: 467, baseType: !821, size: 32, offset: 960)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !822, line: 8, baseType: !324)
!822 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!823 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !647, file: !31, line: 468, baseType: !142, offset: 992)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !647, file: !31, line: 469, baseType: !129, size: 128, offset: 1024)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !647, file: !31, line: 470, baseType: !112, size: 64, offset: 1152)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !642, file: !635, line: 87, baseType: !113, size: 64, offset: 192)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !642, file: !635, line: 94, baseType: !113, size: 64, offset: 256)
!828 = !DIDerivedType(tag: DW_TAG_member, scope: !639, file: !635, line: 96, baseType: !829, size: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !639, file: !635, line: 96, size: 64, elements: !830)
!830 = !{!831}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !829, file: !635, line: 101, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !111, line: 143, baseType: !330)
!833 = !DIDerivedType(tag: DW_TAG_member, scope: !639, file: !635, line: 103, baseType: !834, size: 320)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !639, file: !635, line: 103, size: 320, elements: !835)
!835 = !{!836, !846, !849, !850}
!836 = !DIDerivedType(tag: DW_TAG_member, scope: !834, file: !635, line: 104, baseType: !837, size: 128)
!837 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !834, file: !635, line: 104, size: 128, elements: !838)
!838 = !{!839, !840}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !837, file: !635, line: 105, baseType: !129, size: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, scope: !837, file: !635, line: 106, baseType: !841, size: 128)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !837, file: !635, line: 106, size: 128, elements: !842)
!842 = !{!843, !844, !845}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !841, file: !635, line: 107, baseType: !633, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !841, file: !635, line: 109, baseType: !168, size: 32, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !841, file: !635, line: 110, baseType: !168, size: 32, offset: 96)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !834, file: !635, line: 117, baseType: !847, size: 64, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !635, line: 117, flags: DIFlagFwdDecl)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !834, file: !635, line: 119, baseType: !112, size: 64, offset: 192)
!850 = !DIDerivedType(tag: DW_TAG_member, scope: !834, file: !635, line: 120, baseType: !851, size: 64, offset: 256)
!851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !834, file: !635, line: 120, size: 64, elements: !852)
!852 = !{!853, !854, !855}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !851, file: !635, line: 121, baseType: !112, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !851, file: !635, line: 122, baseType: !113, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, scope: !851, file: !635, line: 123, baseType: !856, size: 32)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !851, file: !635, line: 123, size: 32, elements: !857)
!857 = !{!858, !859, !860}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !856, file: !635, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !856, file: !635, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !856, file: !635, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!861 = !DIDerivedType(tag: DW_TAG_member, scope: !639, file: !635, line: 130, baseType: !862, size: 192)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !639, file: !635, line: 130, size: 192, elements: !863)
!863 = !{!864, !865, !866, !867, !868}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !862, file: !635, line: 131, baseType: !113, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !862, file: !635, line: 134, baseType: !336, size: 8, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !862, file: !635, line: 135, baseType: !336, size: 8, offset: 72)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !862, file: !635, line: 136, baseType: !659, size: 32, offset: 96)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !862, file: !635, line: 137, baseType: !7, size: 32, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_member, scope: !639, file: !635, line: 139, baseType: !870, size: 256)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !639, file: !635, line: 139, size: 256, elements: !871)
!871 = !{!872, !873, !874}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !870, file: !635, line: 140, baseType: !113, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !870, file: !635, line: 141, baseType: !659, size: 32, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !870, file: !635, line: 143, baseType: !129, size: 128, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, scope: !639, file: !635, line: 145, baseType: !876, size: 256)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !639, file: !635, line: 145, size: 256, elements: !877)
!877 = !{!878, !879, !881, !882, !2154}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !876, file: !635, line: 146, baseType: !113, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !876, file: !635, line: 147, baseType: !880, size: 64, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !625, line: 509, baseType: !633)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !876, file: !635, line: 148, baseType: !113, size: 64, offset: 128)
!882 = !DIDerivedType(tag: DW_TAG_member, scope: !876, file: !635, line: 149, baseType: !883, size: 64, offset: 192)
!883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !876, file: !635, line: 149, size: 64, elements: !884)
!884 = !{!885, !2153}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !883, file: !635, line: 150, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !635, line: 388, size: 7296, elements: !888)
!888 = !{!889, !2149}
!889 = !DIDerivedType(tag: DW_TAG_member, scope: !887, file: !635, line: 389, baseType: !890, size: 7296)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !887, file: !635, line: 389, size: 7296, elements: !891)
!891 = !{!892, !930, !931, !932, !936, !937, !938, !939, !940, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !981, !989, !992, !1038, !1039, !2133, !2134, !2137, !2138, !2139, !2142, !2143, !2144, !2147, !2148}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !890, file: !635, line: 390, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !635, line: 305, size: 1472, elements: !895)
!895 = !{!896, !897, !898, !899, !900, !901, !902, !903, !910, !911, !916, !917, !920, !924, !925, !926, !927, !928}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !894, file: !635, line: 308, baseType: !113, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !894, file: !635, line: 309, baseType: !113, size: 64, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !894, file: !635, line: 313, baseType: !893, size: 64, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !894, file: !635, line: 313, baseType: !893, size: 64, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !894, file: !635, line: 315, baseType: !672, size: 192, align: 64, offset: 256)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !894, file: !635, line: 323, baseType: !113, size: 64, offset: 448)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !894, file: !635, line: 327, baseType: !886, size: 64, offset: 512)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !894, file: !635, line: 333, baseType: !904, size: 64, offset: 576)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !625, line: 284, baseType: !905)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !625, line: 284, size: 64, elements: !906)
!906 = !{!907}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !905, file: !625, line: 284, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !909, line: 19, baseType: !113)
!909 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!910 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !894, file: !635, line: 334, baseType: !113, size: 64, offset: 640)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !894, file: !635, line: 343, baseType: !912, size: 256, offset: 704)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !894, file: !635, line: 340, size: 256, elements: !913)
!913 = !{!914, !915}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !912, file: !635, line: 341, baseType: !672, size: 192, align: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !912, file: !635, line: 342, baseType: !113, size: 64, offset: 192)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !894, file: !635, line: 351, baseType: !129, size: 128, offset: 960)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !894, file: !635, line: 353, baseType: !918, size: 64, offset: 1088)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !635, line: 353, flags: DIFlagFwdDecl)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !894, file: !635, line: 356, baseType: !921, size: 64, offset: 1152)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !923)
!923 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !635, line: 356, flags: DIFlagFwdDecl)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !894, file: !635, line: 359, baseType: !113, size: 64, offset: 1216)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !894, file: !635, line: 361, baseType: !261, size: 64, offset: 1280)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !894, file: !635, line: 362, baseType: !112, size: 64, offset: 1344)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !894, file: !635, line: 365, baseType: !683, size: 64, offset: 1408)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !894, file: !635, line: 373, baseType: !929, offset: 1472)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !635, line: 296, elements: !156)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !890, file: !635, line: 391, baseType: !668, size: 64, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !890, file: !635, line: 392, baseType: !330, size: 64, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !890, file: !635, line: 394, baseType: !933, size: 64, offset: 192)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{!113, !261, !113, !113, !113, !113}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !890, file: !635, line: 398, baseType: !113, size: 64, offset: 256)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !890, file: !635, line: 399, baseType: !113, size: 64, offset: 320)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !890, file: !635, line: 405, baseType: !113, size: 64, offset: 384)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !890, file: !635, line: 406, baseType: !113, size: 64, offset: 448)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !890, file: !635, line: 407, baseType: !941, size: 64, offset: 512)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !625, line: 286, baseType: !943)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !625, line: 286, size: 64, elements: !944)
!944 = !{!945}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !943, file: !625, line: 286, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !909, line: 18, baseType: !113)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !890, file: !635, line: 416, baseType: !659, size: 32, offset: 576)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !890, file: !635, line: 428, baseType: !659, size: 32, offset: 608)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !890, file: !635, line: 437, baseType: !659, size: 32, offset: 640)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !890, file: !635, line: 447, baseType: !659, size: 32, offset: 672)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !890, file: !635, line: 450, baseType: !683, size: 64, offset: 704)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !890, file: !635, line: 452, baseType: !168, size: 32, offset: 768)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !890, file: !635, line: 454, baseType: !142, offset: 800)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !890, file: !635, line: 457, baseType: !679, size: 256, offset: 832)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !890, file: !635, line: 459, baseType: !129, size: 128, offset: 1088)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !890, file: !635, line: 466, baseType: !113, size: 64, offset: 1216)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !890, file: !635, line: 467, baseType: !113, size: 64, offset: 1280)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !890, file: !635, line: 469, baseType: !113, size: 64, offset: 1344)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !890, file: !635, line: 470, baseType: !113, size: 64, offset: 1408)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !890, file: !635, line: 471, baseType: !685, size: 64, offset: 1472)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !890, file: !635, line: 472, baseType: !113, size: 64, offset: 1536)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !890, file: !635, line: 473, baseType: !113, size: 64, offset: 1600)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !890, file: !635, line: 474, baseType: !113, size: 64, offset: 1664)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !890, file: !635, line: 475, baseType: !113, size: 64, offset: 1728)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !890, file: !635, line: 477, baseType: !142, offset: 1792)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !890, file: !635, line: 478, baseType: !113, size: 64, offset: 1792)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !890, file: !635, line: 478, baseType: !113, size: 64, offset: 1856)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !890, file: !635, line: 478, baseType: !113, size: 64, offset: 1920)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !890, file: !635, line: 478, baseType: !113, size: 64, offset: 1984)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !890, file: !635, line: 479, baseType: !113, size: 64, offset: 2048)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !890, file: !635, line: 479, baseType: !113, size: 64, offset: 2112)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !890, file: !635, line: 479, baseType: !113, size: 64, offset: 2176)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !890, file: !635, line: 480, baseType: !113, size: 64, offset: 2240)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !890, file: !635, line: 480, baseType: !113, size: 64, offset: 2304)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !890, file: !635, line: 480, baseType: !113, size: 64, offset: 2368)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !890, file: !635, line: 480, baseType: !113, size: 64, offset: 2432)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !890, file: !635, line: 482, baseType: !978, size: 2816, offset: 2496)
!978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 2816, elements: !979)
!979 = !{!980}
!980 = !DISubrange(count: 44)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !890, file: !635, line: 488, baseType: !982, size: 256, offset: 5312)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !983, line: 60, size: 256, elements: !984)
!983 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!984 = !{!985}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !982, file: !983, line: 61, baseType: !986, size: 256)
!986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !683, size: 256, elements: !987)
!987 = !{!988}
!988 = !DISubrange(count: 4)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !890, file: !635, line: 490, baseType: !990, size: 64, offset: 5568)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !635, line: 490, flags: DIFlagFwdDecl)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !890, file: !635, line: 493, baseType: !993, size: 896, offset: 5632)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !994, line: 53, baseType: !995)
!994 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !994, line: 13, size: 896, elements: !996)
!996 = !{!997, !998, !999, !1000, !1003, !1004, !1011, !1012, !1032, !1033, !1034}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !995, file: !994, line: 18, baseType: !330, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !995, file: !994, line: 28, baseType: !685, size: 64, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !995, file: !994, line: 31, baseType: !679, size: 256, offset: 128)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !995, file: !994, line: 32, baseType: !1001, size: 64, offset: 384)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !994, line: 32, flags: DIFlagFwdDecl)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !995, file: !994, line: 37, baseType: !226, size: 16, offset: 448)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !995, file: !994, line: 40, baseType: !1005, size: 192, offset: 512)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1006, line: 53, size: 192, elements: !1007)
!1006 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1007 = !{!1008, !1009, !1010}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1005, file: !1006, line: 54, baseType: !683, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1005, file: !1006, line: 55, baseType: !142, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1005, file: !1006, line: 59, baseType: !129, size: 128, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !995, file: !994, line: 41, baseType: !112, size: 64, offset: 704)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !995, file: !994, line: 42, baseType: !1013, size: 64, offset: 768)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1015)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1016, line: 13, size: 896, elements: !1017)
!1016 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1017 = !{!1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1015, file: !1016, line: 14, baseType: !112, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1015, file: !1016, line: 15, baseType: !113, size: 64, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1015, file: !1016, line: 17, baseType: !113, size: 64, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1015, file: !1016, line: 17, baseType: !113, size: 64, offset: 192)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1015, file: !1016, line: 19, baseType: !219, size: 64, offset: 256)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1015, file: !1016, line: 21, baseType: !219, size: 64, offset: 320)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1015, file: !1016, line: 22, baseType: !219, size: 64, offset: 384)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1015, file: !1016, line: 23, baseType: !219, size: 64, offset: 448)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1015, file: !1016, line: 24, baseType: !219, size: 64, offset: 512)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1015, file: !1016, line: 25, baseType: !219, size: 64, offset: 576)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1015, file: !1016, line: 26, baseType: !219, size: 64, offset: 640)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1015, file: !1016, line: 27, baseType: !219, size: 64, offset: 704)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1015, file: !1016, line: 28, baseType: !219, size: 64, offset: 768)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1015, file: !1016, line: 29, baseType: !219, size: 64, offset: 832)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !995, file: !994, line: 44, baseType: !659, size: 32, offset: 832)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !995, file: !994, line: 50, baseType: !771, size: 16, offset: 864)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !995, file: !994, line: 51, baseType: !1035, size: 16, offset: 880)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !325, line: 18, baseType: !1036)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !327, line: 23, baseType: !1037)
!1037 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !890, file: !635, line: 495, baseType: !113, size: 64, offset: 6528)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !890, file: !635, line: 497, baseType: !1040, size: 64, offset: 6592)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !635, line: 381, size: 384, elements: !1042)
!1042 = !{!1043, !1044, !2132}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1041, file: !635, line: 382, baseType: !659, size: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1041, file: !635, line: 383, baseType: !1045, size: 128, offset: 64)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !635, line: 376, size: 128, elements: !1046)
!1046 = !{!1047, !2130}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1045, file: !635, line: 377, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1050, line: 640, size: 48640, elements: !1051)
!1050 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1051 = !{!1052, !1058, !1060, !1061, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1078, !1096, !1107, !1192, !1193, !1194, !1205, !1206, !1208, !1209, !1210, !1211, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1290, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1328, !1330, !1331, !1332, !1344, !1345, !1346, !1347, !1348, !1349, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1373, !1378, !1562, !1563, !1564, !1565, !1569, !1572, !1575, !1578, !1581, !1584, !1685, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1731, !1732, !1733, !1734, !1735, !1740, !1741, !1742, !1745, !1746, !1749, !1752, !1755, !1758, !1801, !1804, !1805, !1884, !1885, !1888, !1889, !1892, !1893, !1894, !1898, !1899, !1900, !1913, !1914, !1915, !1925, !1930, !1933, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1049, file: !1050, line: 646, baseType: !1053, size: 128)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1054, line: 56, size: 128, elements: !1055)
!1054 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1055 = !{!1056, !1057}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1053, file: !1054, line: 57, baseType: !113, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1053, file: !1054, line: 58, baseType: !324, size: 32, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1049, file: !1050, line: 649, baseType: !1059, size: 64, offset: 128)
!1059 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !219)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1049, file: !1050, line: 657, baseType: !112, size: 64, offset: 192)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1049, file: !1050, line: 658, baseType: !1062, size: 32, offset: 256)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1063, line: 113, baseType: !1064)
!1063 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1063, line: 111, size: 32, elements: !1065)
!1065 = !{!1066}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1064, file: !1063, line: 112, baseType: !659, size: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1049, file: !1050, line: 660, baseType: !7, size: 32, offset: 288)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1049, file: !1050, line: 661, baseType: !7, size: 32, offset: 320)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1049, file: !1050, line: 684, baseType: !168, size: 32, offset: 352)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1049, file: !1050, line: 686, baseType: !168, size: 32, offset: 384)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1049, file: !1050, line: 687, baseType: !168, size: 32, offset: 416)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1049, file: !1050, line: 688, baseType: !168, size: 32, offset: 448)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1049, file: !1050, line: 689, baseType: !7, size: 32, offset: 480)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1049, file: !1050, line: 691, baseType: !1075, size: 64, offset: 512)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1077)
!1077 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1050, line: 691, flags: DIFlagFwdDecl)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1049, file: !1050, line: 692, baseType: !1079, size: 832, offset: 576)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1050, line: 451, size: 832, elements: !1080)
!1080 = !{!1081, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1079, file: !1050, line: 453, baseType: !1082, size: 128)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1050, line: 325, size: 128, elements: !1083)
!1083 = !{!1084, !1085}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1082, file: !1050, line: 326, baseType: !113, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1082, file: !1050, line: 327, baseType: !324, size: 32, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1079, file: !1050, line: 454, baseType: !672, size: 192, align: 64, offset: 128)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1079, file: !1050, line: 455, baseType: !129, size: 128, offset: 320)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1079, file: !1050, line: 456, baseType: !7, size: 32, offset: 448)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1079, file: !1050, line: 458, baseType: !330, size: 64, offset: 512)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1079, file: !1050, line: 459, baseType: !330, size: 64, offset: 576)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1079, file: !1050, line: 460, baseType: !330, size: 64, offset: 640)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1079, file: !1050, line: 461, baseType: !330, size: 64, offset: 704)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1079, file: !1050, line: 463, baseType: !330, size: 64, offset: 768)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1079, file: !1050, line: 465, baseType: !1095, offset: 832)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1050, line: 415, elements: !156)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1049, file: !1050, line: 693, baseType: !1097, size: 384, offset: 1408)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1050, line: 489, size: 384, elements: !1098)
!1098 = !{!1099, !1100, !1101, !1102, !1103, !1104, !1105}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1097, file: !1050, line: 490, baseType: !129, size: 128)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1097, file: !1050, line: 491, baseType: !113, size: 64, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1097, file: !1050, line: 492, baseType: !113, size: 64, offset: 192)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1097, file: !1050, line: 493, baseType: !7, size: 32, offset: 256)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1097, file: !1050, line: 494, baseType: !226, size: 16, offset: 288)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1097, file: !1050, line: 495, baseType: !226, size: 16, offset: 304)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1097, file: !1050, line: 497, baseType: !1106, size: 64, offset: 320)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1049, file: !1050, line: 697, baseType: !1108, size: 1792, offset: 1792)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1050, line: 507, size: 1792, elements: !1109)
!1109 = !{!1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1189, !1190}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1108, file: !1050, line: 508, baseType: !672, size: 192, align: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1108, file: !1050, line: 515, baseType: !330, size: 64, offset: 192)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1108, file: !1050, line: 516, baseType: !330, size: 64, offset: 256)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1108, file: !1050, line: 517, baseType: !330, size: 64, offset: 320)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1108, file: !1050, line: 518, baseType: !330, size: 64, offset: 384)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1108, file: !1050, line: 519, baseType: !330, size: 64, offset: 448)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1108, file: !1050, line: 526, baseType: !689, size: 64, offset: 512)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1108, file: !1050, line: 527, baseType: !330, size: 64, offset: 576)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1108, file: !1050, line: 528, baseType: !7, size: 32, offset: 640)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1108, file: !1050, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1108, file: !1050, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1108, file: !1050, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1108, file: !1050, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1108, file: !1050, line: 563, baseType: !1124, size: 512, offset: 704)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !14, line: 118, size: 512, elements: !1125)
!1125 = !{!1126, !1134, !1135, !1140, !1183, !1186, !1187, !1188}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1124, file: !14, line: 119, baseType: !1127, size: 256)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1128, line: 9, size: 256, elements: !1129)
!1128 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1129 = !{!1130, !1131}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1127, file: !1128, line: 10, baseType: !672, size: 192, align: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1127, file: !1128, line: 11, baseType: !1132, size: 64, offset: 192)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1133, line: 29, baseType: !689)
!1133 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1124, file: !14, line: 120, baseType: !1132, size: 64, offset: 256)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1124, file: !14, line: 121, baseType: !1136, size: 64, offset: 320)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!13, !1139}
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1124, file: !14, line: 122, baseType: !1141, size: 64, offset: 384)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !14, line: 159, size: 512, align: 512, elements: !1143)
!1143 = !{!1144, !1164, !1165, !1168, !1173, !1174, !1178, !1182}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1142, file: !14, line: 160, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !14, line: 214, size: 4608, align: 512, elements: !1147)
!1147 = !{!1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1146, file: !14, line: 215, baseType: !692)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1146, file: !14, line: 216, baseType: !7, size: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1146, file: !14, line: 217, baseType: !7, size: 32, offset: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1146, file: !14, line: 218, baseType: !7, size: 32, offset: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1146, file: !14, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1146, file: !14, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1146, file: !14, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1146, file: !14, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1146, file: !14, line: 233, baseType: !1132, size: 64, offset: 128)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1146, file: !14, line: 234, baseType: !1139, size: 64, offset: 192)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1146, file: !14, line: 235, baseType: !1132, size: 64, offset: 256)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1146, file: !14, line: 236, baseType: !1139, size: 64, offset: 320)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1146, file: !14, line: 237, baseType: !1161, size: 4096, offset: 512)
!1161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1142, size: 4096, elements: !1162)
!1162 = !{!1163}
!1163 = !DISubrange(count: 8)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1142, file: !14, line: 161, baseType: !7, size: 32, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1142, file: !14, line: 162, baseType: !1166, size: 32, offset: 96)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !111, line: 27, baseType: !1167)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !217, line: 96, baseType: !168)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1142, file: !14, line: 163, baseType: !1169, size: 32, offset: 128)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !297, line: 276, baseType: !1170)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !297, line: 276, size: 32, elements: !1171)
!1171 = !{!1172}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1170, file: !297, line: 276, baseType: !301, size: 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1142, file: !14, line: 164, baseType: !1139, size: 64, offset: 192)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1142, file: !14, line: 165, baseType: !1175, size: 128, offset: 256)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1128, line: 14, size: 128, elements: !1176)
!1176 = !{!1177}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1175, file: !1128, line: 15, baseType: !664, size: 128)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1142, file: !14, line: 166, baseType: !1179, size: 64, offset: 384)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!1132}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1142, file: !14, line: 167, baseType: !1132, size: 64, offset: 448)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1124, file: !14, line: 123, baseType: !1184, size: 8, offset: 448)
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !325, line: 17, baseType: !1185)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !327, line: 21, baseType: !336)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1124, file: !14, line: 124, baseType: !1184, size: 8, offset: 456)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1124, file: !14, line: 125, baseType: !1184, size: 8, offset: 464)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1124, file: !14, line: 126, baseType: !1184, size: 8, offset: 472)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1108, file: !1050, line: 572, baseType: !1124, size: 512, offset: 1216)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1108, file: !1050, line: 580, baseType: !1191, size: 64, offset: 1728)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1049, file: !1050, line: 721, baseType: !7, size: 32, offset: 3584)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1049, file: !1050, line: 722, baseType: !168, size: 32, offset: 3616)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1049, file: !1050, line: 723, baseType: !1195, size: 64, offset: 3648)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1197)
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1198, line: 17, baseType: !1199)
!1198 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1198, line: 17, size: 64, elements: !1200)
!1200 = !{!1201}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1199, file: !1198, line: 17, baseType: !1202, size: 64)
!1202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 64, elements: !1203)
!1203 = !{!1204}
!1204 = !DISubrange(count: 1)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1049, file: !1050, line: 724, baseType: !1197, size: 64, offset: 3712)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1049, file: !1050, line: 749, baseType: !1207, offset: 3776)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1050, line: 290, elements: !156)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1049, file: !1050, line: 751, baseType: !129, size: 128, offset: 3776)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1049, file: !1050, line: 757, baseType: !886, size: 64, offset: 3904)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1049, file: !1050, line: 758, baseType: !886, size: 64, offset: 3968)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1049, file: !1050, line: 761, baseType: !1212, size: 320, offset: 4032)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !983, line: 34, size: 320, elements: !1213)
!1213 = !{!1214, !1215}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1212, file: !983, line: 35, baseType: !330, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1212, file: !983, line: 36, baseType: !1216, size: 256, offset: 64)
!1216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !893, size: 256, elements: !987)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1049, file: !1050, line: 766, baseType: !168, size: 32, offset: 4352)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1049, file: !1050, line: 767, baseType: !168, size: 32, offset: 4384)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1049, file: !1050, line: 768, baseType: !168, size: 32, offset: 4416)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1049, file: !1050, line: 770, baseType: !168, size: 32, offset: 4448)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1049, file: !1050, line: 772, baseType: !113, size: 64, offset: 4480)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1049, file: !1050, line: 775, baseType: !7, size: 32, offset: 4544)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1049, file: !1050, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1049, file: !1050, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1049, file: !1050, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1049, file: !1050, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1049, file: !1050, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1049, file: !1050, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1049, file: !1050, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1049, file: !1050, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1049, file: !1050, line: 831, baseType: !113, size: 64, offset: 4672)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1049, file: !1050, line: 833, baseType: !1233, size: 384, offset: 4736)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !19, line: 25, size: 384, elements: !1234)
!1234 = !{!1235, !1240}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1233, file: !19, line: 26, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!219, !1239}
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, scope: !1233, file: !19, line: 27, baseType: !1241, size: 320, offset: 64)
!1241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1233, file: !19, line: 27, size: 320, elements: !1242)
!1242 = !{!1243, !1253, !1280}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1241, file: !19, line: 36, baseType: !1244, size: 320)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1241, file: !19, line: 29, size: 320, elements: !1245)
!1245 = !{!1246, !1248, !1249, !1250, !1251, !1252}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1244, file: !19, line: 30, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1244, file: !19, line: 31, baseType: !324, size: 32, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1244, file: !19, line: 32, baseType: !324, size: 32, offset: 96)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1244, file: !19, line: 33, baseType: !324, size: 32, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1244, file: !19, line: 34, baseType: !330, size: 64, offset: 192)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1244, file: !19, line: 35, baseType: !1247, size: 64, offset: 256)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1241, file: !19, line: 46, baseType: !1254, size: 192)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1241, file: !19, line: 38, size: 192, elements: !1255)
!1255 = !{!1256, !1257, !1258, !1279}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1254, file: !19, line: 39, baseType: !1166, size: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1254, file: !19, line: 40, baseType: !18, size: 32, offset: 32)
!1258 = !DIDerivedType(tag: DW_TAG_member, scope: !1254, file: !19, line: 41, baseType: !1259, size: 64, offset: 64)
!1259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1254, file: !19, line: 41, size: 64, elements: !1260)
!1260 = !{!1261, !1269}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1259, file: !19, line: 42, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1264, line: 7, size: 128, elements: !1265)
!1264 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1265 = !{!1266, !1268}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1263, file: !1264, line: 8, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !217, line: 93, baseType: !442)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1263, file: !1264, line: 9, baseType: !442, size: 64, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1259, file: !19, line: 43, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1272, line: 7, size: 64, elements: !1273)
!1272 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1273 = !{!1274, !1278}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1271, file: !1272, line: 8, baseType: !1275, size: 32)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1272, line: 5, baseType: !1276)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !325, line: 20, baseType: !1277)
!1277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !327, line: 26, baseType: !168)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1271, file: !1272, line: 9, baseType: !1276, size: 32, offset: 32)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1254, file: !19, line: 45, baseType: !330, size: 64, offset: 128)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1241, file: !19, line: 54, baseType: !1281, size: 256)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1241, file: !19, line: 48, size: 256, elements: !1282)
!1282 = !{!1283, !1286, !1287, !1288, !1289}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1281, file: !19, line: 49, baseType: !1284, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !19, line: 14, flags: DIFlagFwdDecl)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1281, file: !19, line: 50, baseType: !168, size: 32, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1281, file: !19, line: 51, baseType: !168, size: 32, offset: 96)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1281, file: !19, line: 52, baseType: !113, size: 64, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1281, file: !19, line: 53, baseType: !113, size: 64, offset: 192)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1049, file: !1050, line: 835, baseType: !1291, size: 32, offset: 5120)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !111, line: 22, baseType: !1292)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !217, line: 28, baseType: !168)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1049, file: !1050, line: 836, baseType: !1291, size: 32, offset: 5152)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1049, file: !1050, line: 840, baseType: !113, size: 64, offset: 5184)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1049, file: !1050, line: 849, baseType: !1048, size: 64, offset: 5248)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1049, file: !1050, line: 852, baseType: !1048, size: 64, offset: 5312)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1049, file: !1050, line: 857, baseType: !129, size: 128, offset: 5376)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1049, file: !1050, line: 858, baseType: !129, size: 128, offset: 5504)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1049, file: !1050, line: 859, baseType: !1048, size: 64, offset: 5632)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1049, file: !1050, line: 867, baseType: !129, size: 128, offset: 5696)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1049, file: !1050, line: 868, baseType: !129, size: 128, offset: 5824)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1049, file: !1050, line: 871, baseType: !1303, size: 64, offset: 5952)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !40, line: 59, size: 768, elements: !1305)
!1305 = !{!1306, !1307, !1308, !1309, !1311, !1312, !1319, !1320}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1304, file: !40, line: 61, baseType: !1062, size: 32)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1304, file: !40, line: 62, baseType: !7, size: 32, offset: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1304, file: !40, line: 63, baseType: !142, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1304, file: !40, line: 65, baseType: !1310, size: 256, offset: 64)
!1310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 256, elements: !987)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1304, file: !40, line: 66, baseType: !547, size: 64, offset: 320)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1304, file: !40, line: 68, baseType: !1313, size: 128, offset: 384)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1314, line: 40, baseType: !1315)
!1314 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1314, line: 36, size: 128, elements: !1316)
!1316 = !{!1317, !1318}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1315, file: !1314, line: 37, baseType: !142)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1315, file: !1314, line: 38, baseType: !129, size: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1304, file: !40, line: 69, baseType: !274, size: 128, align: 64, offset: 512)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1304, file: !40, line: 70, baseType: !1321, size: 128, offset: 640)
!1321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1322, size: 128, elements: !1203)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !40, line: 54, size: 128, elements: !1323)
!1323 = !{!1324, !1325}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1322, file: !40, line: 55, baseType: !168, size: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1322, file: !40, line: 56, baseType: !1326, size: 64, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !40, line: 56, flags: DIFlagFwdDecl)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1049, file: !1050, line: 872, baseType: !1329, size: 512, offset: 6016)
!1329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, size: 512, elements: !987)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1049, file: !1050, line: 873, baseType: !129, size: 128, offset: 6528)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1049, file: !1050, line: 874, baseType: !129, size: 128, offset: 6656)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1049, file: !1050, line: 876, baseType: !1333, size: 64, offset: 6784)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1335, line: 26, size: 192, elements: !1336)
!1335 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1336 = !{!1337, !1338}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1334, file: !1335, line: 27, baseType: !7, size: 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1334, file: !1335, line: 28, baseType: !1339, size: 128, offset: 64)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1340, line: 43, size: 128, elements: !1341)
!1340 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1341 = !{!1342, !1343}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1339, file: !1340, line: 44, baseType: !692)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1339, file: !1340, line: 45, baseType: !129, size: 128)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1049, file: !1050, line: 879, baseType: !617, size: 64, offset: 6848)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1049, file: !1050, line: 882, baseType: !617, size: 64, offset: 6912)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1049, file: !1050, line: 884, baseType: !330, size: 64, offset: 6976)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1049, file: !1050, line: 885, baseType: !330, size: 64, offset: 7040)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1049, file: !1050, line: 890, baseType: !330, size: 64, offset: 7104)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1049, file: !1050, line: 891, baseType: !1350, size: 128, offset: 7168)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1050, line: 242, size: 128, elements: !1351)
!1351 = !{!1352, !1353, !1354}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1350, file: !1050, line: 244, baseType: !330, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1350, file: !1050, line: 245, baseType: !330, size: 64, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1350, file: !1050, line: 246, baseType: !692, offset: 128)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1049, file: !1050, line: 900, baseType: !113, size: 64, offset: 7296)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1049, file: !1050, line: 901, baseType: !113, size: 64, offset: 7360)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1049, file: !1050, line: 904, baseType: !330, size: 64, offset: 7424)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1049, file: !1050, line: 907, baseType: !330, size: 64, offset: 7488)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1049, file: !1050, line: 910, baseType: !113, size: 64, offset: 7552)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1049, file: !1050, line: 911, baseType: !113, size: 64, offset: 7616)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1049, file: !1050, line: 914, baseType: !1362, size: 640, offset: 7680)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1363, line: 123, size: 640, elements: !1364)
!1363 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1364 = !{!1365, !1371, !1372}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1362, file: !1363, line: 124, baseType: !1366, size: 576)
!1366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1367, size: 576, elements: !185)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1363, line: 108, size: 192, elements: !1368)
!1368 = !{!1369, !1370}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1367, file: !1363, line: 109, baseType: !330, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1367, file: !1363, line: 110, baseType: !1175, size: 128, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1362, file: !1363, line: 125, baseType: !7, size: 32, offset: 576)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1362, file: !1363, line: 126, baseType: !7, size: 32, offset: 608)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1049, file: !1050, line: 917, baseType: !1374, size: 192, offset: 8320)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1363, line: 134, size: 192, elements: !1375)
!1375 = !{!1376, !1377}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1374, file: !1363, line: 135, baseType: !274, size: 128, align: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1374, file: !1363, line: 136, baseType: !7, size: 32, offset: 128)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1049, file: !1050, line: 923, baseType: !1379, size: 64, offset: 8512)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1381)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1382, line: 111, size: 1280, elements: !1383)
!1382 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1383 = !{!1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1403, !1404, !1405, !1406, !1407, !1408, !1515, !1516, !1517, !1518, !1544, !1547, !1557}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1381, file: !1382, line: 112, baseType: !659, size: 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1381, file: !1382, line: 120, baseType: !344, size: 32, offset: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1381, file: !1382, line: 121, baseType: !352, size: 32, offset: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1381, file: !1382, line: 122, baseType: !344, size: 32, offset: 96)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1381, file: !1382, line: 123, baseType: !352, size: 32, offset: 128)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1381, file: !1382, line: 124, baseType: !344, size: 32, offset: 160)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1381, file: !1382, line: 125, baseType: !352, size: 32, offset: 192)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1381, file: !1382, line: 126, baseType: !344, size: 32, offset: 224)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1381, file: !1382, line: 127, baseType: !352, size: 32, offset: 256)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1381, file: !1382, line: 128, baseType: !7, size: 32, offset: 288)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1381, file: !1382, line: 129, baseType: !1395, size: 64, offset: 320)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1396, line: 26, baseType: !1397)
!1396 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1396, line: 24, size: 64, elements: !1398)
!1398 = !{!1399}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1397, file: !1396, line: 25, baseType: !1400, size: 64)
!1400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 64, elements: !1401)
!1401 = !{!1402}
!1402 = !DISubrange(count: 2)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1381, file: !1382, line: 130, baseType: !1395, size: 64, offset: 384)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1381, file: !1382, line: 131, baseType: !1395, size: 64, offset: 448)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1381, file: !1382, line: 132, baseType: !1395, size: 64, offset: 512)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1381, file: !1382, line: 133, baseType: !1395, size: 64, offset: 576)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1381, file: !1382, line: 135, baseType: !336, size: 8, offset: 640)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1381, file: !1382, line: 137, baseType: !1409, size: 64, offset: 704)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1411, line: 189, size: 1664, elements: !1412)
!1411 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1412 = !{!1413, !1414, !1417, !1422, !1423, !1426, !1427, !1432, !1433, !1434, !1435, !1437, !1438, !1439, !1440, !1441, !1479, !1500}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1410, file: !1411, line: 190, baseType: !1062, size: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1410, file: !1411, line: 191, baseType: !1415, size: 32, offset: 32)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1411, line: 28, baseType: !1416)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !111, line: 98, baseType: !1276)
!1417 = !DIDerivedType(tag: DW_TAG_member, scope: !1410, file: !1411, line: 192, baseType: !1418, size: 192, offset: 64)
!1418 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1410, file: !1411, line: 192, size: 192, elements: !1419)
!1419 = !{!1420, !1421}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1418, file: !1411, line: 193, baseType: !129, size: 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1418, file: !1411, line: 194, baseType: !672, size: 192, align: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1410, file: !1411, line: 199, baseType: !679, size: 256, offset: 256)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1410, file: !1411, line: 200, baseType: !1424, size: 64, offset: 512)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1411, line: 200, flags: DIFlagFwdDecl)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1410, file: !1411, line: 201, baseType: !112, size: 64, offset: 576)
!1427 = !DIDerivedType(tag: DW_TAG_member, scope: !1410, file: !1411, line: 202, baseType: !1428, size: 64, offset: 640)
!1428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1410, file: !1411, line: 202, size: 64, elements: !1429)
!1429 = !{!1430, !1431}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1428, file: !1411, line: 203, baseType: !448, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1428, file: !1411, line: 204, baseType: !448, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1410, file: !1411, line: 206, baseType: !448, size: 64, offset: 704)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1410, file: !1411, line: 207, baseType: !344, size: 32, offset: 768)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1410, file: !1411, line: 208, baseType: !352, size: 32, offset: 800)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1410, file: !1411, line: 209, baseType: !1436, size: 32, offset: 832)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1411, line: 31, baseType: !468)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1410, file: !1411, line: 210, baseType: !226, size: 16, offset: 864)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1410, file: !1411, line: 211, baseType: !226, size: 16, offset: 880)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1410, file: !1411, line: 215, baseType: !1037, size: 16, offset: 896)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1410, file: !1411, line: 222, baseType: !113, size: 64, offset: 960)
!1441 = !DIDerivedType(tag: DW_TAG_member, scope: !1410, file: !1411, line: 239, baseType: !1442, size: 320, offset: 1024)
!1442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1410, file: !1411, line: 239, size: 320, elements: !1443)
!1443 = !{!1444, !1471}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1442, file: !1411, line: 240, baseType: !1445, size: 320)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1411, line: 108, size: 320, elements: !1446)
!1446 = !{!1447, !1448, !1460, !1463, !1470}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1445, file: !1411, line: 110, baseType: !113, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, scope: !1445, file: !1411, line: 111, baseType: !1449, size: 64, offset: 64)
!1449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1445, file: !1411, line: 111, size: 64, elements: !1450)
!1450 = !{!1451, !1459}
!1451 = !DIDerivedType(tag: DW_TAG_member, scope: !1449, file: !1411, line: 112, baseType: !1452, size: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1449, file: !1411, line: 112, size: 64, elements: !1453)
!1453 = !{!1454, !1455}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1452, file: !1411, line: 114, baseType: !771, size: 16)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1452, file: !1411, line: 115, baseType: !1456, size: 48, offset: 16)
!1456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 48, elements: !1457)
!1457 = !{!1458}
!1458 = !DISubrange(count: 6)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1449, file: !1411, line: 121, baseType: !113, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1445, file: !1411, line: 123, baseType: !1461, size: 64, offset: 128)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1411, line: 96, flags: DIFlagFwdDecl)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1445, file: !1411, line: 124, baseType: !1464, size: 64, offset: 192)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1411, line: 102, size: 192, elements: !1466)
!1466 = !{!1467, !1468, !1469}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1465, file: !1411, line: 103, baseType: !274, size: 128, align: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1465, file: !1411, line: 104, baseType: !1062, size: 32, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1465, file: !1411, line: 105, baseType: !399, size: 8, offset: 160)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1445, file: !1411, line: 125, baseType: !125, size: 64, offset: 256)
!1471 = !DIDerivedType(tag: DW_TAG_member, scope: !1442, file: !1411, line: 241, baseType: !1472, size: 320)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1442, file: !1411, line: 241, size: 320, elements: !1473)
!1473 = !{!1474, !1475, !1476, !1477, !1478}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1472, file: !1411, line: 242, baseType: !113, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1472, file: !1411, line: 243, baseType: !113, size: 64, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1472, file: !1411, line: 244, baseType: !1461, size: 64, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1472, file: !1411, line: 245, baseType: !1464, size: 64, offset: 192)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1472, file: !1411, line: 246, baseType: !184, size: 64, offset: 256)
!1479 = !DIDerivedType(tag: DW_TAG_member, scope: !1410, file: !1411, line: 254, baseType: !1480, size: 256, offset: 1344)
!1480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1410, file: !1411, line: 254, size: 256, elements: !1481)
!1481 = !{!1482, !1488}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1480, file: !1411, line: 255, baseType: !1483, size: 256)
!1483 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1411, line: 128, size: 256, elements: !1484)
!1484 = !{!1485, !1486}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1483, file: !1411, line: 129, baseType: !112, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1483, file: !1411, line: 130, baseType: !1487, size: 256)
!1487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 256, elements: !987)
!1488 = !DIDerivedType(tag: DW_TAG_member, scope: !1480, file: !1411, line: 256, baseType: !1489, size: 256)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1480, file: !1411, line: 256, size: 256, elements: !1490)
!1490 = !{!1491, !1492}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1489, file: !1411, line: 258, baseType: !129, size: 128)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1489, file: !1411, line: 259, baseType: !1493, size: 128, offset: 128)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1494, line: 22, size: 128, elements: !1495)
!1494 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1495 = !{!1496, !1499}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1493, file: !1494, line: 23, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1494, line: 23, flags: DIFlagFwdDecl)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1493, file: !1494, line: 24, baseType: !113, size: 64, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1410, file: !1411, line: 274, baseType: !1501, size: 64, offset: 1600)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1411, line: 170, size: 192, elements: !1503)
!1503 = !{!1504, !1513, !1514}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1502, file: !1411, line: 171, baseType: !1505, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1411, line: 165, baseType: !1506)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!168, !1409, !1509, !1511, !1409}
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1462)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1483)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1502, file: !1411, line: 172, baseType: !1409, size: 64, offset: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1502, file: !1411, line: 173, baseType: !1461, size: 64, offset: 128)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1381, file: !1382, line: 138, baseType: !1409, size: 64, offset: 768)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1381, file: !1382, line: 139, baseType: !1409, size: 64, offset: 832)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1381, file: !1382, line: 140, baseType: !1409, size: 64, offset: 896)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1381, file: !1382, line: 145, baseType: !1519, size: 64, offset: 960)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1521, line: 13, size: 896, elements: !1522)
!1521 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1522 = !{!1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1520, file: !1521, line: 14, baseType: !1062, size: 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1520, file: !1521, line: 15, baseType: !659, size: 32, offset: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1520, file: !1521, line: 16, baseType: !659, size: 32, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1520, file: !1521, line: 21, baseType: !683, size: 64, offset: 128)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1520, file: !1521, line: 27, baseType: !113, size: 64, offset: 192)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1520, file: !1521, line: 28, baseType: !113, size: 64, offset: 256)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1520, file: !1521, line: 29, baseType: !683, size: 64, offset: 320)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1520, file: !1521, line: 32, baseType: !551, size: 128, offset: 384)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1520, file: !1521, line: 33, baseType: !344, size: 32, offset: 512)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1520, file: !1521, line: 37, baseType: !683, size: 64, offset: 576)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1520, file: !1521, line: 44, baseType: !1534, size: 256, offset: 640)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1535, line: 15, size: 256, elements: !1536)
!1535 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1536 = !{!1537, !1538, !1539, !1540, !1541, !1542, !1543}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1534, file: !1535, line: 16, baseType: !692)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1534, file: !1535, line: 18, baseType: !168, size: 32)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1534, file: !1535, line: 19, baseType: !168, size: 32, offset: 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1534, file: !1535, line: 20, baseType: !168, size: 32, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1534, file: !1535, line: 21, baseType: !168, size: 32, offset: 96)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1534, file: !1535, line: 22, baseType: !113, size: 64, offset: 128)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1534, file: !1535, line: 23, baseType: !113, size: 64, offset: 192)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1381, file: !1382, line: 146, baseType: !1545, size: 64, offset: 1024)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !635, line: 516, flags: DIFlagFwdDecl)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1381, file: !1382, line: 147, baseType: !1548, size: 64, offset: 1088)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1382, line: 25, size: 64, elements: !1550)
!1550 = !{!1551, !1552, !1553}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1549, file: !1382, line: 26, baseType: !659, size: 32)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1549, file: !1382, line: 27, baseType: !168, size: 32, offset: 32)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1549, file: !1382, line: 28, baseType: !1554, offset: 64)
!1554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, elements: !1555)
!1555 = !{!1556}
!1556 = !DISubrange(count: 0)
!1557 = !DIDerivedType(tag: DW_TAG_member, scope: !1381, file: !1382, line: 149, baseType: !1558, size: 128, offset: 1152)
!1558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1381, file: !1382, line: 149, size: 128, elements: !1559)
!1559 = !{!1560, !1561}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1558, file: !1382, line: 150, baseType: !168, size: 32)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1558, file: !1382, line: 151, baseType: !274, size: 128, align: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1049, file: !1050, line: 926, baseType: !1379, size: 64, offset: 8576)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1049, file: !1050, line: 929, baseType: !1379, size: 64, offset: 8640)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1049, file: !1050, line: 933, baseType: !1409, size: 64, offset: 8704)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1049, file: !1050, line: 943, baseType: !1566, size: 128, offset: 8768)
!1566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 128, elements: !1567)
!1567 = !{!1568}
!1568 = !DISubrange(count: 16)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1049, file: !1050, line: 945, baseType: !1570, size: 64, offset: 8896)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1050, line: 49, flags: DIFlagFwdDecl)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1049, file: !1050, line: 956, baseType: !1573, size: 64, offset: 8960)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1050, line: 45, flags: DIFlagFwdDecl)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1049, file: !1050, line: 959, baseType: !1576, size: 64, offset: 9024)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1050, line: 959, flags: DIFlagFwdDecl)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1049, file: !1050, line: 962, baseType: !1579, size: 64, offset: 9088)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1050, line: 66, flags: DIFlagFwdDecl)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1049, file: !1050, line: 966, baseType: !1582, size: 64, offset: 9152)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1050, line: 50, flags: DIFlagFwdDecl)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1049, file: !1050, line: 969, baseType: !1585, size: 64, offset: 9216)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1587, line: 82, size: 7296, elements: !1588)
!1587 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1588 = !{!1589, !1590, !1591, !1592, !1593, !1594, !1595, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1624, !1633, !1634, !1636, !1637, !1638, !1641, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1671, !1672, !1679, !1680, !1681, !1682, !1683, !1684}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1586, file: !1587, line: 83, baseType: !1062, size: 32)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1586, file: !1587, line: 84, baseType: !659, size: 32, offset: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1586, file: !1587, line: 85, baseType: !168, size: 32, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1586, file: !1587, line: 86, baseType: !129, size: 128, offset: 128)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1586, file: !1587, line: 88, baseType: !1313, size: 128, offset: 256)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1586, file: !1587, line: 91, baseType: !1048, size: 64, offset: 384)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1586, file: !1587, line: 94, baseType: !1596, size: 192, offset: 448)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1597, line: 30, size: 192, elements: !1598)
!1597 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1598 = !{!1599, !1600}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1596, file: !1597, line: 31, baseType: !129, size: 128)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1596, file: !1597, line: 32, baseType: !1601, size: 64, offset: 128)
!1601 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1602, line: 25, baseType: !1603)
!1602 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1602, line: 23, size: 64, elements: !1604)
!1604 = !{!1605}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1603, file: !1602, line: 24, baseType: !1202, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1586, file: !1587, line: 97, baseType: !547, size: 64, offset: 640)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1586, file: !1587, line: 100, baseType: !168, size: 32, offset: 704)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1586, file: !1587, line: 106, baseType: !168, size: 32, offset: 736)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1586, file: !1587, line: 107, baseType: !1048, size: 64, offset: 768)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1586, file: !1587, line: 110, baseType: !168, size: 32, offset: 832)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1586, file: !1587, line: 111, baseType: !7, size: 32, offset: 864)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1586, file: !1587, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1586, file: !1587, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1586, file: !1587, line: 128, baseType: !168, size: 32, offset: 928)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1586, file: !1587, line: 129, baseType: !129, size: 128, offset: 960)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1586, file: !1587, line: 132, baseType: !1124, size: 512, offset: 1088)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1586, file: !1587, line: 133, baseType: !1132, size: 64, offset: 1600)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1586, file: !1587, line: 140, baseType: !1619, size: 256, offset: 1664)
!1619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1620, size: 256, elements: !1401)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1587, line: 38, size: 128, elements: !1621)
!1621 = !{!1622, !1623}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1620, file: !1587, line: 39, baseType: !330, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1620, file: !1587, line: 40, baseType: !330, size: 64, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1586, file: !1587, line: 146, baseType: !1625, size: 192, offset: 1920)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1587, line: 66, size: 192, elements: !1626)
!1626 = !{!1627}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1625, file: !1587, line: 67, baseType: !1628, size: 192)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1587, line: 47, size: 192, elements: !1629)
!1629 = !{!1630, !1631, !1632}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1628, file: !1587, line: 48, baseType: !685, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1628, file: !1587, line: 49, baseType: !685, size: 64, offset: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1628, file: !1587, line: 50, baseType: !685, size: 64, offset: 128)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1586, file: !1587, line: 150, baseType: !1362, size: 640, offset: 2112)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1586, file: !1587, line: 153, baseType: !1635, size: 256, offset: 2752)
!1635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1303, size: 256, elements: !987)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1586, file: !1587, line: 159, baseType: !1303, size: 64, offset: 3008)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1586, file: !1587, line: 162, baseType: !168, size: 32, offset: 3072)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1586, file: !1587, line: 164, baseType: !1639, size: 64, offset: 3136)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1587, line: 164, flags: DIFlagFwdDecl)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1586, file: !1587, line: 175, baseType: !1642, size: 32, offset: 3200)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !297, line: 805, baseType: !1643)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !297, line: 798, size: 32, elements: !1644)
!1644 = !{!1645, !1646}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1643, file: !297, line: 803, baseType: !296, size: 32)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1643, file: !297, line: 804, baseType: !142, offset: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1586, file: !1587, line: 176, baseType: !330, size: 64, offset: 3264)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1586, file: !1587, line: 176, baseType: !330, size: 64, offset: 3328)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1586, file: !1587, line: 176, baseType: !330, size: 64, offset: 3392)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1586, file: !1587, line: 176, baseType: !330, size: 64, offset: 3456)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1586, file: !1587, line: 177, baseType: !330, size: 64, offset: 3520)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1586, file: !1587, line: 178, baseType: !330, size: 64, offset: 3584)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1586, file: !1587, line: 179, baseType: !1350, size: 128, offset: 3648)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1586, file: !1587, line: 180, baseType: !113, size: 64, offset: 3776)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1586, file: !1587, line: 180, baseType: !113, size: 64, offset: 3840)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1586, file: !1587, line: 180, baseType: !113, size: 64, offset: 3904)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1586, file: !1587, line: 180, baseType: !113, size: 64, offset: 3968)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1586, file: !1587, line: 181, baseType: !113, size: 64, offset: 4032)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1586, file: !1587, line: 181, baseType: !113, size: 64, offset: 4096)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1586, file: !1587, line: 181, baseType: !113, size: 64, offset: 4160)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1586, file: !1587, line: 181, baseType: !113, size: 64, offset: 4224)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1586, file: !1587, line: 182, baseType: !113, size: 64, offset: 4288)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1586, file: !1587, line: 182, baseType: !113, size: 64, offset: 4352)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1586, file: !1587, line: 182, baseType: !113, size: 64, offset: 4416)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1586, file: !1587, line: 182, baseType: !113, size: 64, offset: 4480)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1586, file: !1587, line: 183, baseType: !113, size: 64, offset: 4544)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1586, file: !1587, line: 183, baseType: !113, size: 64, offset: 4608)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1586, file: !1587, line: 184, baseType: !1669, offset: 4672)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1670, line: 12, elements: !156)
!1670 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1586, file: !1587, line: 192, baseType: !332, size: 64, offset: 4672)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1586, file: !1587, line: 203, baseType: !1673, size: 2048, offset: 4736)
!1673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1674, size: 2048, elements: !1567)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1675, line: 43, size: 128, elements: !1676)
!1675 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1676 = !{!1677, !1678}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1674, file: !1675, line: 44, baseType: !233, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1674, file: !1675, line: 45, baseType: !233, size: 64, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1586, file: !1587, line: 220, baseType: !399, size: 8, offset: 6784)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1586, file: !1587, line: 221, baseType: !1037, size: 16, offset: 6800)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1586, file: !1587, line: 222, baseType: !1037, size: 16, offset: 6816)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1586, file: !1587, line: 224, baseType: !886, size: 64, offset: 6848)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1586, file: !1587, line: 227, baseType: !1005, size: 192, offset: 6912)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1586, file: !1587, line: 233, baseType: !1005, size: 192, offset: 7104)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1049, file: !1050, line: 970, baseType: !1686, size: 64, offset: 9280)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1587, line: 20, size: 16576, elements: !1688)
!1688 = !{!1689, !1690, !1691, !1692}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1687, file: !1587, line: 21, baseType: !142)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1687, file: !1587, line: 22, baseType: !1062, size: 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1687, file: !1587, line: 23, baseType: !1313, size: 128, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1687, file: !1587, line: 24, baseType: !1693, size: 16384, offset: 192)
!1693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1694, size: 16384, elements: !189)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1597, line: 49, size: 256, elements: !1695)
!1695 = !{!1696}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1694, file: !1597, line: 50, baseType: !1697, size: 256)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1597, line: 35, size: 256, elements: !1698)
!1698 = !{!1699, !1706, !1707, !1713}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1697, file: !1597, line: 37, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1701, line: 19, baseType: !1702)
!1701 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1701, line: 18, baseType: !1704)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{null, !168}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1697, file: !1597, line: 38, baseType: !113, size: 64, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1697, file: !1597, line: 44, baseType: !1708, size: 64, offset: 128)
!1708 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1701, line: 22, baseType: !1709)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1701, line: 21, baseType: !1711)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{null}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1697, file: !1597, line: 46, baseType: !1601, size: 64, offset: 192)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1049, file: !1050, line: 971, baseType: !1601, size: 64, offset: 9344)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1049, file: !1050, line: 972, baseType: !1601, size: 64, offset: 9408)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1049, file: !1050, line: 974, baseType: !1601, size: 64, offset: 9472)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1049, file: !1050, line: 975, baseType: !1596, size: 192, offset: 9536)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1049, file: !1050, line: 976, baseType: !113, size: 64, offset: 9728)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1049, file: !1050, line: 977, baseType: !231, size: 64, offset: 9792)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1049, file: !1050, line: 978, baseType: !7, size: 32, offset: 9856)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1049, file: !1050, line: 980, baseType: !277, size: 64, offset: 9920)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1049, file: !1050, line: 989, baseType: !1723, size: 128, offset: 9984)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1724, line: 35, size: 128, elements: !1725)
!1724 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1725 = !{!1726, !1727, !1728}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1723, file: !1724, line: 36, baseType: !168, size: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1723, file: !1724, line: 37, baseType: !659, size: 32, offset: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1723, file: !1724, line: 38, baseType: !1729, size: 64, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1724, line: 23, flags: DIFlagFwdDecl)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1049, file: !1050, line: 992, baseType: !330, size: 64, offset: 10112)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1049, file: !1050, line: 993, baseType: !330, size: 64, offset: 10176)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1049, file: !1050, line: 996, baseType: !142, offset: 10240)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1049, file: !1050, line: 999, baseType: !692, offset: 10240)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1049, file: !1050, line: 1001, baseType: !1736, size: 64, offset: 10240)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1050, line: 636, size: 64, elements: !1737)
!1737 = !{!1738}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1736, file: !1050, line: 637, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1049, file: !1050, line: 1005, baseType: !664, size: 128, offset: 10304)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1049, file: !1050, line: 1007, baseType: !1048, size: 64, offset: 10432)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1049, file: !1050, line: 1009, baseType: !1743, size: 64, offset: 10496)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1050, line: 1009, flags: DIFlagFwdDecl)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1049, file: !1050, line: 1043, baseType: !112, size: 64, offset: 10560)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1049, file: !1050, line: 1046, baseType: !1747, size: 64, offset: 10624)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1050, line: 41, flags: DIFlagFwdDecl)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1049, file: !1050, line: 1050, baseType: !1750, size: 64, offset: 10688)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1050, line: 42, flags: DIFlagFwdDecl)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1049, file: !1050, line: 1054, baseType: !1753, size: 64, offset: 10752)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1050, line: 55, flags: DIFlagFwdDecl)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1049, file: !1050, line: 1056, baseType: !1756, size: 64, offset: 10816)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1050, line: 40, flags: DIFlagFwdDecl)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1049, file: !1050, line: 1058, baseType: !1759, size: 64, offset: 10880)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1761, line: 99, size: 704, elements: !1762)
!1761 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1762 = !{!1763, !1764, !1765, !1766, !1767, !1768, !1769, !1788, !1789}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1760, file: !1761, line: 100, baseType: !683, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1760, file: !1761, line: 101, baseType: !659, size: 32, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1760, file: !1761, line: 102, baseType: !659, size: 32, offset: 96)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1760, file: !1761, line: 105, baseType: !142, offset: 128)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1760, file: !1761, line: 107, baseType: !226, size: 16, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1760, file: !1761, line: 109, baseType: !651, size: 128, offset: 192)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1760, file: !1761, line: 110, baseType: !1770, size: 64, offset: 320)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1761, line: 73, size: 448, elements: !1772)
!1772 = !{!1773, !1776, !1777, !1782, !1787}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1771, file: !1761, line: 74, baseType: !1774, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1761, line: 74, flags: DIFlagFwdDecl)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1771, file: !1761, line: 75, baseType: !1759, size: 64, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, scope: !1771, file: !1761, line: 83, baseType: !1778, size: 128, offset: 128)
!1778 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1771, file: !1761, line: 83, size: 128, elements: !1779)
!1779 = !{!1780, !1781}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1778, file: !1761, line: 84, baseType: !129, size: 128)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1778, file: !1761, line: 85, baseType: !847, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, scope: !1771, file: !1761, line: 87, baseType: !1783, size: 128, offset: 256)
!1783 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1771, file: !1761, line: 87, size: 128, elements: !1784)
!1784 = !{!1785, !1786}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1783, file: !1761, line: 88, baseType: !551, size: 128)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1783, file: !1761, line: 89, baseType: !274, size: 128, align: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1771, file: !1761, line: 92, baseType: !7, size: 32, offset: 384)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1760, file: !1761, line: 111, baseType: !547, size: 64, offset: 384)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1760, file: !1761, line: 113, baseType: !1790, size: 256, offset: 448)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1791, line: 102, size: 256, elements: !1792)
!1791 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1792 = !{!1793, !1794, !1795}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1790, file: !1791, line: 103, baseType: !683, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1790, file: !1791, line: 104, baseType: !129, size: 128, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1790, file: !1791, line: 105, baseType: !1796, size: 64, offset: 192)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1791, line: 21, baseType: !1797)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{null, !1800}
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1049, file: !1050, line: 1061, baseType: !1802, size: 64, offset: 10944)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1050, line: 43, flags: DIFlagFwdDecl)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1049, file: !1050, line: 1064, baseType: !113, size: 64, offset: 11008)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1049, file: !1050, line: 1065, baseType: !1806, size: 64, offset: 11072)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1597, line: 14, baseType: !1808)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1597, line: 12, size: 384, elements: !1809)
!1809 = !{!1810}
!1810 = !DIDerivedType(tag: DW_TAG_member, scope: !1808, file: !1597, line: 13, baseType: !1811, size: 384)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1808, file: !1597, line: 13, size: 384, elements: !1812)
!1812 = !{!1813, !1814, !1815, !1816}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1811, file: !1597, line: 13, baseType: !168, size: 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1811, file: !1597, line: 13, baseType: !168, size: 32, offset: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1811, file: !1597, line: 13, baseType: !168, size: 32, offset: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1811, file: !1597, line: 13, baseType: !1817, size: 256, offset: 128)
!1817 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1818, line: 32, size: 256, elements: !1819)
!1818 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1819 = !{!1820, !1825, !1838, !1844, !1853, !1873, !1878}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1817, file: !1818, line: 37, baseType: !1821, size: 64)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1817, file: !1818, line: 34, size: 64, elements: !1822)
!1822 = !{!1823, !1824}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1821, file: !1818, line: 35, baseType: !1292, size: 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1821, file: !1818, line: 36, baseType: !350, size: 32, offset: 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1817, file: !1818, line: 45, baseType: !1826, size: 192)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1817, file: !1818, line: 40, size: 192, elements: !1827)
!1827 = !{!1828, !1830, !1831, !1837}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1826, file: !1818, line: 41, baseType: !1829, size: 32)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !217, line: 95, baseType: !168)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1826, file: !1818, line: 42, baseType: !168, size: 32, offset: 32)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1826, file: !1818, line: 43, baseType: !1832, size: 64, offset: 64)
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1818, line: 11, baseType: !1833)
!1833 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1818, line: 8, size: 64, elements: !1834)
!1834 = !{!1835, !1836}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1833, file: !1818, line: 9, baseType: !168, size: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1833, file: !1818, line: 10, baseType: !112, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1826, file: !1818, line: 44, baseType: !168, size: 32, offset: 128)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1817, file: !1818, line: 52, baseType: !1839, size: 128)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1817, file: !1818, line: 48, size: 128, elements: !1840)
!1840 = !{!1841, !1842, !1843}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1839, file: !1818, line: 49, baseType: !1292, size: 32)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1839, file: !1818, line: 50, baseType: !350, size: 32, offset: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1839, file: !1818, line: 51, baseType: !1832, size: 64, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1817, file: !1818, line: 61, baseType: !1845, size: 256)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1817, file: !1818, line: 55, size: 256, elements: !1846)
!1846 = !{!1847, !1848, !1849, !1850, !1852}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1845, file: !1818, line: 56, baseType: !1292, size: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1845, file: !1818, line: 57, baseType: !350, size: 32, offset: 32)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1845, file: !1818, line: 58, baseType: !168, size: 32, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1845, file: !1818, line: 59, baseType: !1851, size: 64, offset: 128)
!1851 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !217, line: 94, baseType: !218)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1845, file: !1818, line: 60, baseType: !1851, size: 64, offset: 192)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1817, file: !1818, line: 95, baseType: !1854, size: 256)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1817, file: !1818, line: 64, size: 256, elements: !1855)
!1855 = !{!1856, !1857}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1854, file: !1818, line: 65, baseType: !112, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, scope: !1854, file: !1818, line: 77, baseType: !1858, size: 192, offset: 64)
!1858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1854, file: !1818, line: 77, size: 192, elements: !1859)
!1859 = !{!1860, !1861, !1868}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1858, file: !1818, line: 82, baseType: !1037, size: 16)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1858, file: !1818, line: 88, baseType: !1862, size: 192)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1858, file: !1818, line: 84, size: 192, elements: !1863)
!1863 = !{!1864, !1866, !1867}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1862, file: !1818, line: 85, baseType: !1865, size: 64)
!1865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 64, elements: !1162)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1862, file: !1818, line: 86, baseType: !112, size: 64, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1862, file: !1818, line: 87, baseType: !112, size: 64, offset: 128)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1858, file: !1818, line: 93, baseType: !1869, size: 96)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1858, file: !1818, line: 90, size: 96, elements: !1870)
!1870 = !{!1871, !1872}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1869, file: !1818, line: 91, baseType: !1865, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1869, file: !1818, line: 92, baseType: !326, size: 32, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1817, file: !1818, line: 101, baseType: !1874, size: 128)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1817, file: !1818, line: 98, size: 128, elements: !1875)
!1875 = !{!1876, !1877}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1874, file: !1818, line: 99, baseType: !219, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1874, file: !1818, line: 100, baseType: !168, size: 32, offset: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1817, file: !1818, line: 108, baseType: !1879, size: 128)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1817, file: !1818, line: 104, size: 128, elements: !1880)
!1880 = !{!1881, !1882, !1883}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1879, file: !1818, line: 105, baseType: !112, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1879, file: !1818, line: 106, baseType: !168, size: 32, offset: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1879, file: !1818, line: 107, baseType: !7, size: 32, offset: 96)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1049, file: !1050, line: 1067, baseType: !1669, offset: 11136)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1049, file: !1050, line: 1099, baseType: !1886, size: 64, offset: 11136)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1050, line: 56, flags: DIFlagFwdDecl)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1049, file: !1050, line: 1103, baseType: !129, size: 128, offset: 11200)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1049, file: !1050, line: 1104, baseType: !1890, size: 64, offset: 11328)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1050, line: 46, flags: DIFlagFwdDecl)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1049, file: !1050, line: 1105, baseType: !1005, size: 192, offset: 11392)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1049, file: !1050, line: 1106, baseType: !7, size: 32, offset: 11584)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1049, file: !1050, line: 1109, baseType: !1895, size: 128, offset: 11648)
!1895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1896, size: 128, elements: !1401)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1050, line: 51, flags: DIFlagFwdDecl)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1049, file: !1050, line: 1110, baseType: !1005, size: 192, offset: 11776)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1049, file: !1050, line: 1111, baseType: !129, size: 128, offset: 11968)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1049, file: !1050, line: 1173, baseType: !1901, size: 64, offset: 12096)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1903, line: 62, size: 256, align: 256, elements: !1904)
!1903 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1904 = !{!1905, !1906, !1907, !1912}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1902, file: !1903, line: 75, baseType: !326, size: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1902, file: !1903, line: 90, baseType: !326, size: 32, offset: 32)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1902, file: !1903, line: 124, baseType: !1908, size: 64, offset: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1902, file: !1903, line: 109, size: 64, elements: !1909)
!1909 = !{!1910, !1911}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1908, file: !1903, line: 110, baseType: !331, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1908, file: !1903, line: 112, baseType: !331, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1902, file: !1903, line: 144, baseType: !326, size: 32, offset: 128)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1049, file: !1050, line: 1174, baseType: !324, size: 32, offset: 12160)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1049, file: !1050, line: 1179, baseType: !113, size: 64, offset: 12224)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1049, file: !1050, line: 1182, baseType: !1916, size: 128, offset: 12288)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !983, line: 76, size: 128, elements: !1917)
!1917 = !{!1918, !1923, !1924}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1916, file: !983, line: 85, baseType: !1919, size: 64)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1920, line: 7, size: 64, elements: !1921)
!1920 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1921 = !{!1922}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1919, file: !1920, line: 12, baseType: !1199, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1916, file: !983, line: 88, baseType: !399, size: 8, offset: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1916, file: !983, line: 95, baseType: !399, size: 8, offset: 72)
!1925 = !DIDerivedType(tag: DW_TAG_member, scope: !1049, file: !1050, line: 1184, baseType: !1926, size: 128, offset: 12416)
!1926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1049, file: !1050, line: 1184, size: 128, elements: !1927)
!1927 = !{!1928, !1929}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1926, file: !1050, line: 1185, baseType: !1062, size: 32)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1926, file: !1050, line: 1186, baseType: !274, size: 128, align: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1049, file: !1050, line: 1190, baseType: !1931, size: 64, offset: 12544)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1050, line: 53, flags: DIFlagFwdDecl)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1049, file: !1050, line: 1192, baseType: !1934, size: 128, offset: 12608)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !983, line: 64, size: 128, elements: !1935)
!1935 = !{!1936, !1937, !1938}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1934, file: !983, line: 65, baseType: !633, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1934, file: !983, line: 67, baseType: !326, size: 32, offset: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1934, file: !983, line: 68, baseType: !326, size: 32, offset: 96)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1049, file: !1050, line: 1206, baseType: !168, size: 32, offset: 12736)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1049, file: !1050, line: 1207, baseType: !168, size: 32, offset: 12768)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1049, file: !1050, line: 1209, baseType: !113, size: 64, offset: 12800)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1049, file: !1050, line: 1219, baseType: !330, size: 64, offset: 12864)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1049, file: !1050, line: 1220, baseType: !330, size: 64, offset: 12928)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1049, file: !1050, line: 1317, baseType: !168, size: 32, offset: 12992)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1049, file: !1050, line: 1319, baseType: !1048, size: 64, offset: 13056)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1049, file: !1050, line: 1322, baseType: !1947, size: 64, offset: 13120)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1050, line: 1322, flags: DIFlagFwdDecl)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1049, file: !1050, line: 1326, baseType: !1062, size: 32, offset: 13184)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1049, file: !1050, line: 1342, baseType: !112, size: 64, offset: 13248)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1049, file: !1050, line: 1343, baseType: !331, size: 64, offset: 13312)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1049, file: !1050, line: 1344, baseType: !330, size: 64, offset: 13376)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1049, file: !1050, line: 1345, baseType: !331, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1049, file: !1050, line: 1346, baseType: !331, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1049, file: !1050, line: 1347, baseType: !331, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1049, file: !1050, line: 1348, baseType: !274, size: 128, align: 64, offset: 13504)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1049, file: !1050, line: 1358, baseType: !1958, size: 34816, offset: 13824)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1959, line: 485, size: 34816, elements: !1960)
!1959 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1960 = !{!1961, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1990, !1991, !1992, !1993, !1994, !1995, !1998, !1999, !2000}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1958, file: !1959, line: 487, baseType: !1962, size: 192)
!1962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1963, size: 192, elements: !185)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1964, line: 16, size: 64, elements: !1965)
!1964 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1965 = !{!1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1963, file: !1964, line: 17, baseType: !771, size: 16)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1963, file: !1964, line: 18, baseType: !771, size: 16, offset: 16)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1963, file: !1964, line: 19, baseType: !771, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1963, file: !1964, line: 19, baseType: !771, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1963, file: !1964, line: 19, baseType: !771, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1963, file: !1964, line: 19, baseType: !771, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1963, file: !1964, line: 19, baseType: !771, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1963, file: !1964, line: 20, baseType: !771, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1963, file: !1964, line: 20, baseType: !771, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1963, file: !1964, line: 20, baseType: !771, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1963, file: !1964, line: 20, baseType: !771, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1963, file: !1964, line: 20, baseType: !771, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1963, file: !1964, line: 20, baseType: !771, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1958, file: !1959, line: 491, baseType: !113, size: 64, offset: 192)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1958, file: !1959, line: 495, baseType: !226, size: 16, offset: 256)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1958, file: !1959, line: 496, baseType: !226, size: 16, offset: 272)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1958, file: !1959, line: 497, baseType: !226, size: 16, offset: 288)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1958, file: !1959, line: 498, baseType: !226, size: 16, offset: 304)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1958, file: !1959, line: 502, baseType: !113, size: 64, offset: 320)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1958, file: !1959, line: 503, baseType: !113, size: 64, offset: 384)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1958, file: !1959, line: 514, baseType: !1987, size: 256, offset: 448)
!1987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1988, size: 256, elements: !987)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1959, line: 483, flags: DIFlagFwdDecl)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1958, file: !1959, line: 516, baseType: !113, size: 64, offset: 704)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1958, file: !1959, line: 518, baseType: !113, size: 64, offset: 768)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1958, file: !1959, line: 520, baseType: !113, size: 64, offset: 832)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1958, file: !1959, line: 521, baseType: !113, size: 64, offset: 896)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1958, file: !1959, line: 522, baseType: !113, size: 64, offset: 960)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1958, file: !1959, line: 528, baseType: !1996, size: 64, offset: 1024)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1959, line: 10, flags: DIFlagFwdDecl)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1958, file: !1959, line: 535, baseType: !113, size: 64, offset: 1088)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1958, file: !1959, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1958, file: !1959, line: 540, baseType: !2001, size: 33280, offset: 1536)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2002, line: 317, size: 33280, elements: !2003)
!2002 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2003 = !{!2004, !2005, !2006}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2001, file: !2002, line: 330, baseType: !7, size: 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2001, file: !2002, line: 337, baseType: !113, size: 64, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2001, file: !2002, line: 348, baseType: !2007, size: 32768, offset: 512)
!2007 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2002, line: 304, size: 32768, elements: !2008)
!2008 = !{!2009, !2024, !2063, !2113, !2126}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2007, file: !2002, line: 305, baseType: !2010, size: 896)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2002, line: 12, size: 896, elements: !2011)
!2011 = !{!2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2023}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2010, file: !2002, line: 13, baseType: !324, size: 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2010, file: !2002, line: 14, baseType: !324, size: 32, offset: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2010, file: !2002, line: 15, baseType: !324, size: 32, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2010, file: !2002, line: 16, baseType: !324, size: 32, offset: 96)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2010, file: !2002, line: 17, baseType: !324, size: 32, offset: 128)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2010, file: !2002, line: 18, baseType: !324, size: 32, offset: 160)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2010, file: !2002, line: 19, baseType: !324, size: 32, offset: 192)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2010, file: !2002, line: 22, baseType: !2020, size: 640, offset: 224)
!2020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 640, elements: !2021)
!2021 = !{!2022}
!2022 = !DISubrange(count: 20)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2010, file: !2002, line: 25, baseType: !324, size: 32, offset: 864)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2007, file: !2002, line: 306, baseType: !2025, size: 4096, align: 128)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2002, line: 34, size: 4096, align: 128, elements: !2026)
!2026 = !{!2027, !2028, !2029, !2030, !2031, !2046, !2047, !2048, !2052, !2054, !2058}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2025, file: !2002, line: 35, baseType: !771, size: 16)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2025, file: !2002, line: 36, baseType: !771, size: 16, offset: 16)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2025, file: !2002, line: 37, baseType: !771, size: 16, offset: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2025, file: !2002, line: 38, baseType: !771, size: 16, offset: 48)
!2031 = !DIDerivedType(tag: DW_TAG_member, scope: !2025, file: !2002, line: 39, baseType: !2032, size: 128, offset: 64)
!2032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2025, file: !2002, line: 39, size: 128, elements: !2033)
!2033 = !{!2034, !2039}
!2034 = !DIDerivedType(tag: DW_TAG_member, scope: !2032, file: !2002, line: 40, baseType: !2035, size: 128)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2032, file: !2002, line: 40, size: 128, elements: !2036)
!2036 = !{!2037, !2038}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2035, file: !2002, line: 41, baseType: !330, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2035, file: !2002, line: 42, baseType: !330, size: 64, offset: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, scope: !2032, file: !2002, line: 44, baseType: !2040, size: 128)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2032, file: !2002, line: 44, size: 128, elements: !2041)
!2041 = !{!2042, !2043, !2044, !2045}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2040, file: !2002, line: 45, baseType: !324, size: 32)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2040, file: !2002, line: 46, baseType: !324, size: 32, offset: 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2040, file: !2002, line: 47, baseType: !324, size: 32, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2040, file: !2002, line: 48, baseType: !324, size: 32, offset: 96)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2025, file: !2002, line: 51, baseType: !324, size: 32, offset: 192)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2025, file: !2002, line: 52, baseType: !324, size: 32, offset: 224)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2025, file: !2002, line: 55, baseType: !2049, size: 1024, offset: 256)
!2049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 1024, elements: !2050)
!2050 = !{!2051}
!2051 = !DISubrange(count: 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2025, file: !2002, line: 58, baseType: !2053, size: 2048, offset: 1280)
!2053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 2048, elements: !189)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2025, file: !2002, line: 60, baseType: !2055, size: 384, offset: 3328)
!2055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 384, elements: !2056)
!2056 = !{!2057}
!2057 = !DISubrange(count: 12)
!2058 = !DIDerivedType(tag: DW_TAG_member, scope: !2025, file: !2002, line: 62, baseType: !2059, size: 384, offset: 3712)
!2059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2025, file: !2002, line: 62, size: 384, elements: !2060)
!2060 = !{!2061, !2062}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2059, file: !2002, line: 63, baseType: !2055, size: 384)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2059, file: !2002, line: 64, baseType: !2055, size: 384)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2007, file: !2002, line: 307, baseType: !2064, size: 1088)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2002, line: 79, size: 1088, elements: !2065)
!2065 = !{!2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2112}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2064, file: !2002, line: 80, baseType: !324, size: 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2064, file: !2002, line: 81, baseType: !324, size: 32, offset: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2064, file: !2002, line: 82, baseType: !324, size: 32, offset: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2064, file: !2002, line: 83, baseType: !324, size: 32, offset: 96)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2064, file: !2002, line: 84, baseType: !324, size: 32, offset: 128)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2064, file: !2002, line: 85, baseType: !324, size: 32, offset: 160)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2064, file: !2002, line: 86, baseType: !324, size: 32, offset: 192)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2064, file: !2002, line: 88, baseType: !2020, size: 640, offset: 224)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2064, file: !2002, line: 89, baseType: !1184, size: 8, offset: 864)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2064, file: !2002, line: 90, baseType: !1184, size: 8, offset: 872)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2064, file: !2002, line: 91, baseType: !1184, size: 8, offset: 880)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2064, file: !2002, line: 92, baseType: !1184, size: 8, offset: 888)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2064, file: !2002, line: 93, baseType: !1184, size: 8, offset: 896)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2064, file: !2002, line: 94, baseType: !1184, size: 8, offset: 904)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2064, file: !2002, line: 95, baseType: !2081, size: 64, offset: 960)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2083, line: 11, size: 128, elements: !2084)
!2083 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2084 = !{!2085, !2086}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2082, file: !2083, line: 12, baseType: !219, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2082, file: !2083, line: 13, baseType: !2087, size: 64, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2089, line: 56, size: 1344, elements: !2090)
!2089 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2090 = !{!2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2088, file: !2089, line: 61, baseType: !113, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2088, file: !2089, line: 62, baseType: !113, size: 64, offset: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2088, file: !2089, line: 63, baseType: !113, size: 64, offset: 128)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2088, file: !2089, line: 64, baseType: !113, size: 64, offset: 192)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2088, file: !2089, line: 65, baseType: !113, size: 64, offset: 256)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2088, file: !2089, line: 66, baseType: !113, size: 64, offset: 320)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2088, file: !2089, line: 68, baseType: !113, size: 64, offset: 384)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2088, file: !2089, line: 69, baseType: !113, size: 64, offset: 448)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2088, file: !2089, line: 70, baseType: !113, size: 64, offset: 512)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2088, file: !2089, line: 71, baseType: !113, size: 64, offset: 576)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2088, file: !2089, line: 72, baseType: !113, size: 64, offset: 640)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2088, file: !2089, line: 73, baseType: !113, size: 64, offset: 704)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2088, file: !2089, line: 74, baseType: !113, size: 64, offset: 768)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2088, file: !2089, line: 75, baseType: !113, size: 64, offset: 832)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2088, file: !2089, line: 76, baseType: !113, size: 64, offset: 896)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2088, file: !2089, line: 81, baseType: !113, size: 64, offset: 960)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2088, file: !2089, line: 83, baseType: !113, size: 64, offset: 1024)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2088, file: !2089, line: 84, baseType: !113, size: 64, offset: 1088)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2088, file: !2089, line: 85, baseType: !113, size: 64, offset: 1152)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2088, file: !2089, line: 86, baseType: !113, size: 64, offset: 1216)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2088, file: !2089, line: 87, baseType: !113, size: 64, offset: 1280)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2064, file: !2002, line: 96, baseType: !324, size: 32, offset: 1024)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2007, file: !2002, line: 308, baseType: !2114, size: 4608, align: 512)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2002, line: 289, size: 4608, align: 512, elements: !2115)
!2115 = !{!2116, !2117, !2124}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2114, file: !2002, line: 290, baseType: !2025, size: 4096, align: 128)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2114, file: !2002, line: 291, baseType: !2118, size: 512, offset: 4096)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2002, line: 268, size: 512, elements: !2119)
!2119 = !{!2120, !2121, !2122}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2118, file: !2002, line: 269, baseType: !330, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2118, file: !2002, line: 270, baseType: !330, size: 64, offset: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2118, file: !2002, line: 271, baseType: !2123, size: 384, offset: 128)
!2123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 384, elements: !1457)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2114, file: !2002, line: 292, baseType: !2125, offset: 4608)
!2125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1184, elements: !1555)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2007, file: !2002, line: 309, baseType: !2127, size: 32768)
!2127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1184, size: 32768, elements: !2128)
!2128 = !{!2129}
!2129 = !DISubrange(count: 4096)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1045, file: !635, line: 378, baseType: !2131, size: 64, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1041, file: !635, line: 384, baseType: !1334, size: 192, offset: 192)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !890, file: !635, line: 500, baseType: !142, offset: 6656)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !890, file: !635, line: 501, baseType: !2135, size: 64, offset: 6656)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !635, line: 387, flags: DIFlagFwdDecl)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !890, file: !635, line: 516, baseType: !1545, size: 64, offset: 6720)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !890, file: !635, line: 519, baseType: !261, size: 64, offset: 6784)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !890, file: !635, line: 521, baseType: !2140, size: 64, offset: 6848)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !635, line: 521, flags: DIFlagFwdDecl)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !890, file: !635, line: 545, baseType: !659, size: 32, offset: 6912)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !890, file: !635, line: 548, baseType: !399, size: 8, offset: 6944)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !890, file: !635, line: 550, baseType: !2145, offset: 6952)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2146, line: 142, elements: !156)
!2146 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !890, file: !635, line: 554, baseType: !1790, size: 256, offset: 6976)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !890, file: !635, line: 557, baseType: !324, size: 32, offset: 7232)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !887, file: !635, line: 565, baseType: !2150, offset: 7296)
!2150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, elements: !2151)
!2151 = !{!2152}
!2152 = !DISubrange(count: -1)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !883, file: !635, line: 151, baseType: !659, size: 32)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !876, file: !635, line: 156, baseType: !142, offset: 256)
!2155 = !DIDerivedType(tag: DW_TAG_member, scope: !639, file: !635, line: 159, baseType: !2156, size: 128)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !639, file: !635, line: 159, size: 128, elements: !2157)
!2157 = !{!2158, !2161}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2156, file: !635, line: 161, baseType: !2159, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !635, line: 161, flags: DIFlagFwdDecl)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2156, file: !635, line: 162, baseType: !112, size: 64, offset: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !639, file: !635, line: 176, baseType: !274, size: 128, align: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, scope: !634, file: !635, line: 179, baseType: !2164, size: 32, offset: 384)
!2164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !634, file: !635, line: 179, size: 32, elements: !2165)
!2165 = !{!2166, !2167, !2168, !2169}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2164, file: !635, line: 184, baseType: !659, size: 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2164, file: !635, line: 192, baseType: !7, size: 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2164, file: !635, line: 194, baseType: !7, size: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2164, file: !635, line: 195, baseType: !168, size: 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !634, file: !635, line: 199, baseType: !659, size: 32, offset: 416)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !569, file: !31, line: 1964, baseType: !2172, size: 64, offset: 1344)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!219, !508, !2175}
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2177, line: 12, size: 256, elements: !2178)
!2177 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2178 = !{!2179, !2180, !2181, !2182, !2183}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2176, file: !2177, line: 13, baseType: !110, size: 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2176, file: !2177, line: 16, baseType: !168, size: 32, offset: 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2176, file: !2177, line: 23, baseType: !113, size: 64, offset: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2176, file: !2177, line: 30, baseType: !113, size: 64, offset: 128)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2176, file: !2177, line: 33, baseType: !2184, size: 64, offset: 192)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !635, line: 27, flags: DIFlagFwdDecl)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !569, file: !31, line: 1966, baseType: !2172, size: 64, offset: 1408)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !509, file: !31, line: 1424, baseType: !2188, size: 64, offset: 448)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2190)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !25, line: 322, size: 704, elements: !2191)
!2191 = !{!2192, !2238, !2242, !2246, !2247, !2248, !2249, !2250, !2255, !2260, !2264}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2190, file: !25, line: 323, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!168, !2196}
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !25, line: 294, size: 1600, elements: !2198)
!2198 = !{!2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2223, !2224, !2225}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2197, file: !25, line: 295, baseType: !551, size: 128)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2197, file: !25, line: 296, baseType: !129, size: 128, offset: 128)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2197, file: !25, line: 297, baseType: !129, size: 128, offset: 256)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2197, file: !25, line: 298, baseType: !129, size: 128, offset: 384)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2197, file: !25, line: 299, baseType: !1005, size: 192, offset: 512)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2197, file: !25, line: 300, baseType: !142, offset: 704)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2197, file: !25, line: 301, baseType: !659, size: 32, offset: 704)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2197, file: !25, line: 302, baseType: !508, size: 64, offset: 768)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2197, file: !25, line: 303, baseType: !2208, size: 64, offset: 832)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !25, line: 68, size: 64, elements: !2209)
!2209 = !{!2210, !2222}
!2210 = !DIDerivedType(tag: DW_TAG_member, scope: !2208, file: !25, line: 69, baseType: !2211, size: 32)
!2211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2208, file: !25, line: 69, size: 32, elements: !2212)
!2212 = !{!2213, !2214, !2215}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2211, file: !25, line: 70, baseType: !344, size: 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2211, file: !25, line: 71, baseType: !352, size: 32)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2211, file: !25, line: 72, baseType: !2216, size: 32)
!2216 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2217, line: 24, baseType: !2218)
!2217 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2217, line: 22, size: 32, elements: !2219)
!2219 = !{!2220}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2218, file: !2217, line: 23, baseType: !2221, size: 32)
!2221 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2217, line: 20, baseType: !350)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2208, file: !25, line: 74, baseType: !24, size: 32, offset: 32)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2197, file: !25, line: 304, baseType: !440, size: 64, offset: 896)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2197, file: !25, line: 305, baseType: !113, size: 64, offset: 960)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2197, file: !25, line: 306, baseType: !2226, size: 576, offset: 1024)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !25, line: 205, size: 576, elements: !2227)
!2227 = !{!2228, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2226, file: !25, line: 206, baseType: !2229, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !25, line: 66, baseType: !442)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2226, file: !25, line: 207, baseType: !2229, size: 64, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2226, file: !25, line: 208, baseType: !2229, size: 64, offset: 128)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2226, file: !25, line: 209, baseType: !2229, size: 64, offset: 192)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2226, file: !25, line: 210, baseType: !2229, size: 64, offset: 256)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2226, file: !25, line: 211, baseType: !2229, size: 64, offset: 320)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2226, file: !25, line: 212, baseType: !2229, size: 64, offset: 384)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2226, file: !25, line: 213, baseType: !448, size: 64, offset: 448)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2226, file: !25, line: 214, baseType: !448, size: 64, offset: 512)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2190, file: !25, line: 324, baseType: !2239, size: 64, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!2196, !508, !168}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2190, file: !25, line: 325, baseType: !2243, size: 64, offset: 128)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{null, !2196}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2190, file: !25, line: 326, baseType: !2193, size: 64, offset: 192)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2190, file: !25, line: 327, baseType: !2193, size: 64, offset: 256)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2190, file: !25, line: 328, baseType: !2193, size: 64, offset: 320)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2190, file: !25, line: 329, baseType: !597, size: 64, offset: 384)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2190, file: !25, line: 332, baseType: !2251, size: 64, offset: 448)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!2254, !338}
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2190, file: !25, line: 333, baseType: !2256, size: 64, offset: 512)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!168, !338, !2259}
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2190, file: !25, line: 335, baseType: !2261, size: 64, offset: 576)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!168, !338, !2254}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2190, file: !25, line: 337, baseType: !2265, size: 64, offset: 640)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!168, !508, !2268}
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !509, file: !31, line: 1425, baseType: !2270, size: 64, offset: 512)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2272)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !25, line: 428, size: 704, elements: !2273)
!2273 = !{!2274, !2278, !2279, !2283, !2284, !2285, !2300, !2323, !2327, !2328, !2351}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2272, file: !25, line: 429, baseType: !2275, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!168, !508, !168, !168, !458}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2272, file: !25, line: 430, baseType: !597, size: 64, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2272, file: !25, line: 431, baseType: !2280, size: 64, offset: 128)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!168, !508, !7}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2272, file: !25, line: 432, baseType: !2280, size: 64, offset: 192)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2272, file: !25, line: 433, baseType: !597, size: 64, offset: 256)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2272, file: !25, line: 434, baseType: !2286, size: 64, offset: 320)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!168, !508, !168, !2289}
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !25, line: 415, size: 256, elements: !2291)
!2291 = !{!2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2290, file: !25, line: 416, baseType: !168, size: 32)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2290, file: !25, line: 417, baseType: !7, size: 32, offset: 32)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2290, file: !25, line: 418, baseType: !7, size: 32, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2290, file: !25, line: 420, baseType: !7, size: 32, offset: 96)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2290, file: !25, line: 421, baseType: !7, size: 32, offset: 128)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2290, file: !25, line: 422, baseType: !7, size: 32, offset: 160)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2290, file: !25, line: 423, baseType: !7, size: 32, offset: 192)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2290, file: !25, line: 424, baseType: !7, size: 32, offset: 224)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2272, file: !25, line: 435, baseType: !2301, size: 64, offset: 384)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!168, !508, !2208, !2304}
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !25, line: 343, size: 960, elements: !2306)
!2306 = !{!2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2305, file: !25, line: 344, baseType: !168, size: 32)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2305, file: !25, line: 345, baseType: !330, size: 64, offset: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2305, file: !25, line: 346, baseType: !330, size: 64, offset: 128)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2305, file: !25, line: 347, baseType: !330, size: 64, offset: 192)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2305, file: !25, line: 348, baseType: !330, size: 64, offset: 256)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2305, file: !25, line: 349, baseType: !330, size: 64, offset: 320)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2305, file: !25, line: 350, baseType: !330, size: 64, offset: 384)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2305, file: !25, line: 351, baseType: !689, size: 64, offset: 448)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2305, file: !25, line: 353, baseType: !689, size: 64, offset: 512)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2305, file: !25, line: 354, baseType: !168, size: 32, offset: 576)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2305, file: !25, line: 355, baseType: !168, size: 32, offset: 608)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2305, file: !25, line: 356, baseType: !330, size: 64, offset: 640)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2305, file: !25, line: 357, baseType: !330, size: 64, offset: 704)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2305, file: !25, line: 358, baseType: !330, size: 64, offset: 768)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2305, file: !25, line: 359, baseType: !689, size: 64, offset: 832)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2305, file: !25, line: 360, baseType: !168, size: 32, offset: 896)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2272, file: !25, line: 436, baseType: !2324, size: 64, offset: 448)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!168, !508, !2268, !2304}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2272, file: !25, line: 438, baseType: !2301, size: 64, offset: 512)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2272, file: !25, line: 439, baseType: !2329, size: 64, offset: 576)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!168, !508, !2332}
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !25, line: 409, size: 1408, elements: !2334)
!2334 = !{!2335, !2336}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2333, file: !25, line: 410, baseType: !7, size: 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2333, file: !25, line: 411, baseType: !2337, size: 1344, offset: 64)
!2337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2338, size: 1344, elements: !185)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !25, line: 395, size: 448, elements: !2339)
!2339 = !{!2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2350}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2338, file: !25, line: 396, baseType: !7, size: 32)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2338, file: !25, line: 397, baseType: !7, size: 32, offset: 32)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2338, file: !25, line: 399, baseType: !7, size: 32, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2338, file: !25, line: 400, baseType: !7, size: 32, offset: 96)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2338, file: !25, line: 401, baseType: !7, size: 32, offset: 128)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2338, file: !25, line: 402, baseType: !7, size: 32, offset: 160)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2338, file: !25, line: 403, baseType: !7, size: 32, offset: 192)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2338, file: !25, line: 404, baseType: !332, size: 64, offset: 256)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2338, file: !25, line: 405, baseType: !2349, size: 64, offset: 320)
!2349 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !111, line: 126, baseType: !330)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2338, file: !25, line: 406, baseType: !2349, size: 64, offset: 384)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2272, file: !25, line: 440, baseType: !2280, size: 64, offset: 640)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !509, file: !31, line: 1426, baseType: !2353, size: 64, offset: 576)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2355)
!2355 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 49, flags: DIFlagFwdDecl)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !509, file: !31, line: 1427, baseType: !113, size: 64, offset: 640)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !509, file: !31, line: 1428, baseType: !113, size: 64, offset: 704)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !509, file: !31, line: 1429, baseType: !113, size: 64, offset: 768)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !509, file: !31, line: 1430, baseType: !291, size: 64, offset: 832)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !509, file: !31, line: 1431, baseType: !679, size: 256, offset: 896)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !509, file: !31, line: 1432, baseType: !168, size: 32, offset: 1152)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !509, file: !31, line: 1433, baseType: !659, size: 32, offset: 1184)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !509, file: !31, line: 1437, baseType: !2364, size: 64, offset: 1216)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2367)
!2367 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1437, flags: DIFlagFwdDecl)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !509, file: !31, line: 1449, baseType: !2369, size: 64, offset: 1280)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !307, line: 34, size: 64, elements: !2370)
!2370 = !{!2371}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2369, file: !307, line: 35, baseType: !310, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !509, file: !31, line: 1450, baseType: !129, size: 128, offset: 1344)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !509, file: !31, line: 1451, baseType: !2374, size: 64, offset: 1472)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !31, line: 699, flags: DIFlagFwdDecl)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !509, file: !31, line: 1452, baseType: !1756, size: 64, offset: 1536)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !509, file: !31, line: 1453, baseType: !2378, size: 64, offset: 1600)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1453, flags: DIFlagFwdDecl)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !509, file: !31, line: 1454, baseType: !551, size: 128, offset: 1664)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !509, file: !31, line: 1455, baseType: !7, size: 32, offset: 1792)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !509, file: !31, line: 1456, baseType: !2383, size: 2432, offset: 1856)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !25, line: 518, size: 2432, elements: !2384)
!2384 = !{!2385, !2386, !2387, !2389, !2421}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2383, file: !25, line: 519, baseType: !7, size: 32)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2383, file: !25, line: 520, baseType: !679, size: 256, offset: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2383, file: !25, line: 521, baseType: !2388, size: 192, offset: 320)
!2388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 192, elements: !185)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2383, file: !25, line: 522, baseType: !2390, size: 1728, offset: 512)
!2390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2391, size: 1728, elements: !185)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !25, line: 222, size: 576, elements: !2392)
!2392 = !{!2393, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2391, file: !25, line: 223, baseType: !2394, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !25, line: 443, size: 256, elements: !2396)
!2396 = !{!2397, !2398, !2411, !2412}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2395, file: !25, line: 444, baseType: !168, size: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2395, file: !25, line: 445, baseType: !2399, size: 64, offset: 64)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2401)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !25, line: 310, size: 512, elements: !2402)
!2402 = !{!2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2401, file: !25, line: 311, baseType: !597, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2401, file: !25, line: 312, baseType: !597, size: 64, offset: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2401, file: !25, line: 313, baseType: !597, size: 64, offset: 128)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2401, file: !25, line: 314, baseType: !597, size: 64, offset: 192)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2401, file: !25, line: 315, baseType: !2193, size: 64, offset: 256)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2401, file: !25, line: 316, baseType: !2193, size: 64, offset: 320)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2401, file: !25, line: 317, baseType: !2193, size: 64, offset: 384)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2401, file: !25, line: 318, baseType: !2265, size: 64, offset: 448)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2395, file: !25, line: 446, baseType: !542, size: 64, offset: 128)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2395, file: !25, line: 447, baseType: !2394, size: 64, offset: 192)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2391, file: !25, line: 224, baseType: !168, size: 32, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2391, file: !25, line: 226, baseType: !129, size: 128, offset: 128)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2391, file: !25, line: 227, baseType: !113, size: 64, offset: 256)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2391, file: !25, line: 228, baseType: !7, size: 32, offset: 320)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2391, file: !25, line: 229, baseType: !7, size: 32, offset: 352)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2391, file: !25, line: 230, baseType: !2229, size: 64, offset: 384)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2391, file: !25, line: 231, baseType: !2229, size: 64, offset: 448)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2391, file: !25, line: 232, baseType: !112, size: 64, offset: 512)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2383, file: !25, line: 523, baseType: !2422, size: 192, offset: 2240)
!2422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2399, size: 192, elements: !185)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !509, file: !31, line: 1458, baseType: !2424, size: 2112, offset: 4288)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1410, size: 2112, elements: !2425)
!2425 = !{!2426, !2427, !2428}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2424, file: !31, line: 1411, baseType: !168, size: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2424, file: !31, line: 1412, baseType: !1313, size: 128, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2424, file: !31, line: 1413, baseType: !2429, size: 1920, offset: 192)
!2429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2430, size: 1920, elements: !185)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2431, line: 12, size: 640, elements: !2432)
!2431 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2432 = !{!2433, !2441, !2443, !2448, !2449}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2430, file: !2431, line: 13, baseType: !2434, size: 320)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2435, line: 17, size: 320, elements: !2436)
!2435 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2436 = !{!2437, !2438, !2439, !2440}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2434, file: !2435, line: 18, baseType: !168, size: 32)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2434, file: !2435, line: 19, baseType: !168, size: 32, offset: 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2434, file: !2435, line: 20, baseType: !1313, size: 128, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2434, file: !2435, line: 22, baseType: !274, size: 128, align: 64, offset: 192)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2430, file: !2431, line: 14, baseType: !2442, size: 64, offset: 320)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2430, file: !2431, line: 15, baseType: !2444, size: 64, offset: 384)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2445, line: 16, size: 64, elements: !2446)
!2445 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2446 = !{!2447}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2444, file: !2445, line: 17, baseType: !1048, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2430, file: !2431, line: 16, baseType: !1313, size: 128, offset: 448)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2430, file: !2431, line: 17, baseType: !659, size: 32, offset: 576)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !509, file: !31, line: 1465, baseType: !112, size: 64, offset: 6400)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !509, file: !31, line: 1468, baseType: !324, size: 32, offset: 6464)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !509, file: !31, line: 1470, baseType: !448, size: 64, offset: 6528)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !509, file: !31, line: 1471, baseType: !448, size: 64, offset: 6592)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !509, file: !31, line: 1473, baseType: !326, size: 32, offset: 6656)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !509, file: !31, line: 1474, baseType: !2456, size: 64, offset: 6720)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 603, flags: DIFlagFwdDecl)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !509, file: !31, line: 1477, baseType: !2459, size: 256, offset: 6784)
!2459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 256, elements: !2050)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !509, file: !31, line: 1478, baseType: !2461, size: 128, offset: 7040)
!2461 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2462, line: 18, baseType: !2463)
!2462 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2462, line: 16, size: 128, elements: !2464)
!2464 = !{!2465}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2463, file: !2462, line: 17, baseType: !2466, size: 128)
!2466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1185, size: 128, elements: !1567)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !509, file: !31, line: 1480, baseType: !7, size: 32, offset: 7168)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !509, file: !31, line: 1481, baseType: !2469, size: 32, offset: 7200)
!2469 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !111, line: 150, baseType: !7)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !509, file: !31, line: 1487, baseType: !1005, size: 192, offset: 7232)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !509, file: !31, line: 1493, baseType: !125, size: 64, offset: 7424)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !509, file: !31, line: 1495, baseType: !2473, size: 64, offset: 7488)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2475)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !289, line: 135, size: 1024, align: 512, elements: !2476)
!2476 = !{!2477, !2481, !2482, !2489, !2495, !2499, !2503, !2507, !2508, !2512, !2516, !2521, !2525}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2475, file: !289, line: 136, baseType: !2478, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!168, !291, !7}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2475, file: !289, line: 137, baseType: !2478, size: 64, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2475, file: !289, line: 138, baseType: !2483, size: 64, offset: 128)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!168, !2486, !2488}
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2475, file: !289, line: 139, baseType: !2490, size: 64, offset: 192)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!168, !2486, !7, !125, !2493}
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2475, file: !289, line: 141, baseType: !2496, size: 64, offset: 256)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!168, !2486}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2475, file: !289, line: 142, baseType: !2500, size: 64, offset: 320)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!168, !291}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2475, file: !289, line: 143, baseType: !2504, size: 64, offset: 384)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{null, !291}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2475, file: !289, line: 144, baseType: !2504, size: 64, offset: 448)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2475, file: !289, line: 145, baseType: !2509, size: 64, offset: 512)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{null, !291, !338}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2475, file: !289, line: 146, baseType: !2513, size: 64, offset: 576)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!184, !291, !184, !168}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2475, file: !289, line: 147, baseType: !2517, size: 64, offset: 640)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!287, !2520}
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2475, file: !289, line: 148, baseType: !2522, size: 64, offset: 704)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!168, !458, !399}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2475, file: !289, line: 149, baseType: !2526, size: 64, offset: 768)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!291, !291, !2529}
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !509, file: !31, line: 1500, baseType: !168, size: 32, offset: 7552)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !509, file: !31, line: 1502, baseType: !2533, size: 448, offset: 7616)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2177, line: 60, size: 448, elements: !2534)
!2534 = !{!2535, !2540, !2541, !2542, !2543, !2544, !2545}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2533, file: !2177, line: 61, baseType: !2536, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!113, !2539, !2175}
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2533, file: !2177, line: 63, baseType: !2536, size: 64, offset: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2533, file: !2177, line: 66, baseType: !219, size: 64, offset: 128)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2533, file: !2177, line: 67, baseType: !168, size: 32, offset: 192)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2533, file: !2177, line: 68, baseType: !7, size: 32, offset: 224)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2533, file: !2177, line: 71, baseType: !129, size: 128, offset: 256)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2533, file: !2177, line: 77, baseType: !2546, size: 64, offset: 384)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !509, file: !31, line: 1505, baseType: !683, size: 64, offset: 8064)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !509, file: !31, line: 1508, baseType: !683, size: 64, offset: 8128)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !509, file: !31, line: 1511, baseType: !168, size: 32, offset: 8192)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !509, file: !31, line: 1514, baseType: !821, size: 32, offset: 8224)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !509, file: !31, line: 1517, baseType: !2552, size: 64, offset: 8256)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1791, line: 18, flags: DIFlagFwdDecl)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !509, file: !31, line: 1518, baseType: !547, size: 64, offset: 8320)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !509, file: !31, line: 1525, baseType: !1545, size: 64, offset: 8384)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !509, file: !31, line: 1532, baseType: !2557, size: 64, offset: 8448)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2558, line: 52, size: 64, elements: !2559)
!2558 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2559 = !{!2560}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2557, file: !2558, line: 53, baseType: !2561, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2558, line: 40, size: 256, elements: !2563)
!2563 = !{!2564, !2565, !2570}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2562, file: !2558, line: 42, baseType: !142)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2562, file: !2558, line: 44, baseType: !2566, size: 192)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2558, line: 28, size: 192, elements: !2567)
!2567 = !{!2568, !2569}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2566, file: !2558, line: 29, baseType: !129, size: 128)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2566, file: !2558, line: 31, baseType: !219, size: 64, offset: 128)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2562, file: !2558, line: 49, baseType: !219, size: 64, offset: 192)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !509, file: !31, line: 1533, baseType: !2557, size: 64, offset: 8512)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !509, file: !31, line: 1534, baseType: !274, size: 128, align: 64, offset: 8576)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !509, file: !31, line: 1535, baseType: !1790, size: 256, offset: 8704)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !509, file: !31, line: 1537, baseType: !1005, size: 192, offset: 8960)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !509, file: !31, line: 1542, baseType: !168, size: 32, offset: 9152)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !509, file: !31, line: 1545, baseType: !142, offset: 9184)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !509, file: !31, line: 1546, baseType: !129, size: 128, offset: 9216)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !509, file: !31, line: 1548, baseType: !142, offset: 9344)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !509, file: !31, line: 1549, baseType: !129, size: 128, offset: 9344)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !339, file: !31, line: 624, baseType: !646, size: 64, offset: 256)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !339, file: !31, line: 631, baseType: !113, size: 64, offset: 320)
!2582 = !DIDerivedType(tag: DW_TAG_member, scope: !339, file: !31, line: 639, baseType: !2583, size: 32, offset: 384)
!2583 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !339, file: !31, line: 639, size: 32, elements: !2584)
!2584 = !{!2585, !2587}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2583, file: !31, line: 640, baseType: !2586, size: 32)
!2586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2583, file: !31, line: 641, baseType: !7, size: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !339, file: !31, line: 643, baseType: !422, size: 32, offset: 416)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !339, file: !31, line: 644, baseType: !440, size: 64, offset: 448)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !339, file: !31, line: 645, baseType: !444, size: 128, offset: 512)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !339, file: !31, line: 646, baseType: !444, size: 128, offset: 640)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !339, file: !31, line: 647, baseType: !444, size: 128, offset: 768)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !339, file: !31, line: 648, baseType: !142, offset: 896)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !339, file: !31, line: 649, baseType: !226, size: 16, offset: 896)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !339, file: !31, line: 650, baseType: !1184, size: 8, offset: 912)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !339, file: !31, line: 651, baseType: !1184, size: 8, offset: 920)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !339, file: !31, line: 652, baseType: !2349, size: 64, offset: 960)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !339, file: !31, line: 659, baseType: !113, size: 64, offset: 1024)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !339, file: !31, line: 660, baseType: !679, size: 256, offset: 1088)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !339, file: !31, line: 662, baseType: !113, size: 64, offset: 1344)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !339, file: !31, line: 663, baseType: !113, size: 64, offset: 1408)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !339, file: !31, line: 665, baseType: !551, size: 128, offset: 1472)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !339, file: !31, line: 666, baseType: !129, size: 128, offset: 1600)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !339, file: !31, line: 675, baseType: !129, size: 128, offset: 1728)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !339, file: !31, line: 676, baseType: !129, size: 128, offset: 1856)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !339, file: !31, line: 677, baseType: !129, size: 128, offset: 1984)
!2607 = !DIDerivedType(tag: DW_TAG_member, scope: !339, file: !31, line: 678, baseType: !2608, size: 128, offset: 2112)
!2608 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !339, file: !31, line: 678, size: 128, elements: !2609)
!2609 = !{!2610, !2611}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2608, file: !31, line: 679, baseType: !547, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2608, file: !31, line: 680, baseType: !274, size: 128, align: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !339, file: !31, line: 682, baseType: !685, size: 64, offset: 2240)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !339, file: !31, line: 683, baseType: !685, size: 64, offset: 2304)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !339, file: !31, line: 684, baseType: !659, size: 32, offset: 2368)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !339, file: !31, line: 685, baseType: !659, size: 32, offset: 2400)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !339, file: !31, line: 686, baseType: !659, size: 32, offset: 2432)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !339, file: !31, line: 688, baseType: !659, size: 32, offset: 2464)
!2618 = !DIDerivedType(tag: DW_TAG_member, scope: !339, file: !31, line: 690, baseType: !2619, size: 64, offset: 2496)
!2619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !339, file: !31, line: 690, size: 64, elements: !2620)
!2620 = !{!2621, !2844}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2619, file: !31, line: 691, baseType: !2622, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2624)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1822, size: 2048, elements: !2625)
!2625 = !{!2626, !2627, !2631, !2636, !2640, !2641, !2642, !2646, !2659, !2660, !2668, !2672, !2673, !2677, !2678, !2682, !2687, !2688, !2692, !2696, !2804, !2808, !2809, !2813, !2814, !2818, !2822, !2827, !2831, !2835, !2839, !2843}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2624, file: !31, line: 1823, baseType: !542, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2624, file: !31, line: 1824, baseType: !2628, size: 64, offset: 64)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!440, !261, !440, !168}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2624, file: !31, line: 1825, baseType: !2632, size: 64, offset: 128)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!215, !261, !184, !231, !2635}
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2624, file: !31, line: 1826, baseType: !2637, size: 64, offset: 192)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!215, !261, !125, !231, !2635}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2624, file: !31, line: 1827, baseType: !756, size: 64, offset: 256)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2624, file: !31, line: 1828, baseType: !756, size: 64, offset: 320)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2624, file: !31, line: 1829, baseType: !2643, size: 64, offset: 384)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!168, !759, !399}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2624, file: !31, line: 1830, baseType: !2647, size: 64, offset: 448)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!168, !261, !2650}
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1776, size: 128, elements: !2652)
!2652 = !{!2653, !2658}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2651, file: !31, line: 1777, baseType: !2654, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1773, baseType: !2655)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!168, !2650, !125, !168, !440, !330, !7}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2651, file: !31, line: 1778, baseType: !440, size: 64, offset: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2624, file: !31, line: 1831, baseType: !2647, size: 64, offset: 512)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2624, file: !31, line: 1832, baseType: !2661, size: 64, offset: 576)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!2664, !261, !2666}
!2664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2665, line: 52, baseType: !7)
!2665 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !528, line: 27, flags: DIFlagFwdDecl)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2624, file: !31, line: 1833, baseType: !2669, size: 64, offset: 640)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!219, !261, !7, !113}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2624, file: !31, line: 1834, baseType: !2669, size: 64, offset: 704)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2624, file: !31, line: 1835, baseType: !2674, size: 64, offset: 768)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!168, !261, !893}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2624, file: !31, line: 1836, baseType: !113, size: 64, offset: 832)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2624, file: !31, line: 1837, baseType: !2679, size: 64, offset: 896)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!168, !338, !261}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2624, file: !31, line: 1838, baseType: !2683, size: 64, offset: 960)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!168, !261, !2686}
!2686 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1007, baseType: !112)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2624, file: !31, line: 1839, baseType: !2679, size: 64, offset: 1024)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2624, file: !31, line: 1840, baseType: !2689, size: 64, offset: 1088)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!168, !261, !440, !440, !168}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2624, file: !31, line: 1841, baseType: !2693, size: 64, offset: 1152)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!168, !168, !261, !168}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2624, file: !31, line: 1842, baseType: !2697, size: 64, offset: 1216)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!168, !261, !168, !2700}
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1062, size: 1664, elements: !2702)
!2702 = !{!2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2734, !2735, !2736, !2749, !2780}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2701, file: !31, line: 1063, baseType: !2700, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2701, file: !31, line: 1064, baseType: !129, size: 128, offset: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2701, file: !31, line: 1065, baseType: !551, size: 128, offset: 192)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2701, file: !31, line: 1066, baseType: !129, size: 128, offset: 320)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2701, file: !31, line: 1069, baseType: !129, size: 128, offset: 448)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2701, file: !31, line: 1072, baseType: !2686, size: 64, offset: 576)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2701, file: !31, line: 1073, baseType: !7, size: 32, offset: 640)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2701, file: !31, line: 1074, baseType: !336, size: 8, offset: 672)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2701, file: !31, line: 1075, baseType: !7, size: 32, offset: 704)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2701, file: !31, line: 1076, baseType: !168, size: 32, offset: 736)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2701, file: !31, line: 1077, baseType: !1313, size: 128, offset: 768)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2701, file: !31, line: 1078, baseType: !261, size: 64, offset: 896)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2701, file: !31, line: 1079, baseType: !440, size: 64, offset: 960)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2701, file: !31, line: 1080, baseType: !440, size: 64, offset: 1024)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2701, file: !31, line: 1082, baseType: !2718, size: 64, offset: 1088)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !31, line: 1314, size: 320, elements: !2720)
!2720 = !{!2721, !2729, !2730, !2731, !2732, !2733}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2719, file: !31, line: 1315, baseType: !2722)
!2722 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2723, line: 20, baseType: !2724)
!2723 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2723, line: 11, elements: !2725)
!2725 = !{!2726}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2724, file: !2723, line: 12, baseType: !2727)
!2727 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !154, line: 33, baseType: !2728)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !154, line: 31, elements: !156)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2719, file: !31, line: 1316, baseType: !168, size: 32)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2719, file: !31, line: 1317, baseType: !168, size: 32, offset: 32)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2719, file: !31, line: 1318, baseType: !2718, size: 64, offset: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2719, file: !31, line: 1319, baseType: !261, size: 64, offset: 128)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2719, file: !31, line: 1320, baseType: !274, size: 128, align: 64, offset: 192)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2701, file: !31, line: 1084, baseType: !113, size: 64, offset: 1152)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2701, file: !31, line: 1085, baseType: !113, size: 64, offset: 1216)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2701, file: !31, line: 1087, baseType: !2737, size: 64, offset: 1280)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2739)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !31, line: 1011, size: 128, elements: !2740)
!2740 = !{!2741, !2745}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2739, file: !31, line: 1012, baseType: !2742, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{null, !2700, !2700}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2739, file: !31, line: 1013, baseType: !2746, size: 64, offset: 64)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{null, !2700}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2701, file: !31, line: 1088, baseType: !2750, size: 64, offset: 1344)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2752)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !31, line: 1016, size: 512, elements: !2753)
!2753 = !{!2754, !2758, !2762, !2763, !2767, !2771, !2775, !2779}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2752, file: !31, line: 1017, baseType: !2755, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{!2686, !2686}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2752, file: !31, line: 1018, baseType: !2759, size: 64, offset: 64)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{null, !2686}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2752, file: !31, line: 1019, baseType: !2746, size: 64, offset: 128)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2752, file: !31, line: 1020, baseType: !2764, size: 64, offset: 192)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!168, !2700, !168}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2752, file: !31, line: 1021, baseType: !2768, size: 64, offset: 256)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!399, !2700}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2752, file: !31, line: 1022, baseType: !2772, size: 64, offset: 320)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!168, !2700, !168, !132}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2752, file: !31, line: 1023, baseType: !2776, size: 64, offset: 384)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{null, !2700, !733}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2752, file: !31, line: 1024, baseType: !2768, size: 64, offset: 448)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2701, file: !31, line: 1097, baseType: !2781, size: 256, offset: 1408)
!2781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2701, file: !31, line: 1089, size: 256, elements: !2782)
!2782 = !{!2783, !2792, !2798}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2781, file: !31, line: 1090, baseType: !2784, size: 256)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2785, line: 10, size: 256, elements: !2786)
!2785 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2786 = !{!2787, !2788, !2791}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2784, file: !2785, line: 11, baseType: !324, size: 32)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2784, file: !2785, line: 12, baseType: !2789, size: 64, offset: 64)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2785, line: 5, flags: DIFlagFwdDecl)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2784, file: !2785, line: 13, baseType: !129, size: 128, offset: 128)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2781, file: !31, line: 1091, baseType: !2793, size: 64)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2785, line: 17, size: 64, elements: !2794)
!2794 = !{!2795}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2793, file: !2785, line: 18, baseType: !2796, size: 64)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2785, line: 16, flags: DIFlagFwdDecl)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2781, file: !31, line: 1096, baseType: !2799, size: 192)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2781, file: !31, line: 1092, size: 192, elements: !2800)
!2800 = !{!2801, !2802, !2803}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2799, file: !31, line: 1093, baseType: !129, size: 128)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2799, file: !31, line: 1094, baseType: !168, size: 32, offset: 128)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2799, file: !31, line: 1095, baseType: !7, size: 32, offset: 160)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2624, file: !31, line: 1843, baseType: !2805, size: 64, offset: 1280)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!215, !261, !633, !168, !231, !2635, !168}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2624, file: !31, line: 1844, baseType: !933, size: 64, offset: 1344)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2624, file: !31, line: 1845, baseType: !2810, size: 64, offset: 1408)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!168, !168}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2624, file: !31, line: 1846, baseType: !2697, size: 64, offset: 1472)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2624, file: !31, line: 1847, baseType: !2815, size: 64, offset: 1536)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!215, !1931, !261, !2635, !231, !7}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2624, file: !31, line: 1848, baseType: !2819, size: 64, offset: 1600)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!215, !261, !2635, !1931, !231, !7}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2624, file: !31, line: 1849, baseType: !2823, size: 64, offset: 1664)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!168, !261, !219, !2826, !733}
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2624, file: !31, line: 1850, baseType: !2828, size: 64, offset: 1728)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!219, !261, !168, !440, !440}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2624, file: !31, line: 1852, baseType: !2832, size: 64, offset: 1792)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{null, !623, !261}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2624, file: !31, line: 1856, baseType: !2836, size: 64, offset: 1856)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!215, !261, !440, !261, !440, !231, !7}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2624, file: !31, line: 1858, baseType: !2840, size: 64, offset: 1920)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!440, !261, !440, !261, !440, !440, !7}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2624, file: !31, line: 1861, baseType: !2689, size: 64, offset: 1984)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2619, file: !31, line: 692, baseType: !576, size: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !339, file: !31, line: 694, baseType: !2846, size: 64, offset: 2560)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 1100, size: 384, elements: !2848)
!2848 = !{!2849, !2850, !2851, !2852}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2847, file: !31, line: 1101, baseType: !142)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2847, file: !31, line: 1102, baseType: !129, size: 128)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2847, file: !31, line: 1103, baseType: !129, size: 128, offset: 128)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2847, file: !31, line: 1104, baseType: !129, size: 128, offset: 256)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !339, file: !31, line: 695, baseType: !647, size: 1216, align: 64, offset: 2624)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !339, file: !31, line: 696, baseType: !129, size: 128, offset: 3840)
!2855 = !DIDerivedType(tag: DW_TAG_member, scope: !339, file: !31, line: 697, baseType: !2856, size: 64, offset: 3968)
!2856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !339, file: !31, line: 697, size: 64, elements: !2857)
!2857 = !{!2858, !2859, !2860, !2871, !2872}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2856, file: !31, line: 698, baseType: !1931, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2856, file: !31, line: 699, baseType: !2374, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2856, file: !31, line: 700, baseType: !2861, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !2863, line: 14, size: 832, elements: !2864)
!2863 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!2864 = !{!2865, !2866, !2867, !2868, !2869, !2870}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2862, file: !2863, line: 15, baseType: !121, size: 512)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2862, file: !2863, line: 16, baseType: !542, size: 64, offset: 512)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2862, file: !2863, line: 17, baseType: !2622, size: 64, offset: 576)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2862, file: !2863, line: 18, baseType: !129, size: 128, offset: 640)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2862, file: !2863, line: 19, baseType: !422, size: 32, offset: 768)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2862, file: !2863, line: 20, baseType: !7, size: 32, offset: 800)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2856, file: !31, line: 701, baseType: !184, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2856, file: !31, line: 702, baseType: !7, size: 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !339, file: !31, line: 705, baseType: !326, size: 32, offset: 4032)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !339, file: !31, line: 708, baseType: !326, size: 32, offset: 4064)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !339, file: !31, line: 709, baseType: !2456, size: 64, offset: 4096)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !339, file: !31, line: 720, baseType: !112, size: 64, offset: 4160)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !292, file: !289, line: 98, baseType: !2878, size: 256, offset: 448)
!2878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 256, elements: !2050)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !292, file: !289, line: 101, baseType: !2880, size: 32, offset: 704)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2881, line: 25, size: 32, elements: !2882)
!2881 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2882 = !{!2883}
!2883 = !DIDerivedType(tag: DW_TAG_member, scope: !2880, file: !2881, line: 26, baseType: !2884, size: 32)
!2884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2880, file: !2881, line: 26, size: 32, elements: !2885)
!2885 = !{!2886}
!2886 = !DIDerivedType(tag: DW_TAG_member, scope: !2884, file: !2881, line: 30, baseType: !2887, size: 32)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2884, file: !2881, line: 30, size: 32, elements: !2888)
!2888 = !{!2889, !2890}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2887, file: !2881, line: 31, baseType: !142)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2887, file: !2881, line: 32, baseType: !168, size: 32)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !292, file: !289, line: 102, baseType: !2473, size: 64, offset: 768)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !292, file: !289, line: 103, baseType: !508, size: 64, offset: 832)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !292, file: !289, line: 104, baseType: !113, size: 64, offset: 896)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !292, file: !289, line: 105, baseType: !112, size: 64, offset: 960)
!2895 = !DIDerivedType(tag: DW_TAG_member, scope: !292, file: !289, line: 107, baseType: !2896, size: 128, offset: 1024)
!2896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !289, line: 107, size: 128, elements: !2897)
!2897 = !{!2898, !2899}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2896, file: !289, line: 108, baseType: !129, size: 128)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2896, file: !289, line: 109, baseType: !2900, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !292, file: !289, line: 111, baseType: !129, size: 128, offset: 1152)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !292, file: !289, line: 112, baseType: !129, size: 128, offset: 1280)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !292, file: !289, line: 120, baseType: !2904, size: 128, offset: 1408)
!2904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !289, line: 116, size: 128, elements: !2905)
!2905 = !{!2906, !2907, !2908}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2904, file: !289, line: 117, baseType: !551, size: 128)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2904, file: !289, line: 118, baseType: !306, size: 128)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2904, file: !289, line: 119, baseType: !274, size: 128, align: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !262, file: !31, line: 922, baseType: !338, size: 64, offset: 256)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !262, file: !31, line: 923, baseType: !2622, size: 64, offset: 320)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !262, file: !31, line: 929, baseType: !142, offset: 384)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !262, file: !31, line: 930, baseType: !30, size: 32, offset: 384)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !262, file: !31, line: 931, baseType: !683, size: 64, offset: 448)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !262, file: !31, line: 932, baseType: !7, size: 32, offset: 512)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !262, file: !31, line: 933, baseType: !2469, size: 32, offset: 544)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !262, file: !31, line: 934, baseType: !1005, size: 192, offset: 576)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !262, file: !31, line: 935, baseType: !440, size: 64, offset: 768)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !262, file: !31, line: 936, baseType: !2919, size: 192, offset: 832)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 885, size: 192, elements: !2920)
!2920 = !{!2921, !2922, !2923, !2924, !2925, !2926}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2919, file: !31, line: 886, baseType: !2722)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2919, file: !31, line: 887, baseType: !1303, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2919, file: !31, line: 888, baseType: !39, size: 32, offset: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2919, file: !31, line: 889, baseType: !344, size: 32, offset: 96)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2919, file: !31, line: 889, baseType: !344, size: 32, offset: 128)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2919, file: !31, line: 890, baseType: !168, size: 32, offset: 160)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !262, file: !31, line: 937, baseType: !1379, size: 64, offset: 1024)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !262, file: !31, line: 938, baseType: !2929, size: 256, offset: 1088)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 896, size: 256, elements: !2930)
!2930 = !{!2931, !2932, !2933, !2934, !2935, !2936}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2929, file: !31, line: 897, baseType: !113, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2929, file: !31, line: 898, baseType: !7, size: 32, offset: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2929, file: !31, line: 899, baseType: !7, size: 32, offset: 96)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2929, file: !31, line: 902, baseType: !7, size: 32, offset: 128)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2929, file: !31, line: 903, baseType: !7, size: 32, offset: 160)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2929, file: !31, line: 904, baseType: !440, size: 64, offset: 192)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !262, file: !31, line: 940, baseType: !330, size: 64, offset: 1344)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !262, file: !31, line: 945, baseType: !112, size: 64, offset: 1408)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !262, file: !31, line: 949, baseType: !129, size: 128, offset: 1472)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !262, file: !31, line: 950, baseType: !129, size: 128, offset: 1600)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !262, file: !31, line: 952, baseType: !646, size: 64, offset: 1728)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !262, file: !31, line: 953, baseType: !821, size: 32, offset: 1792)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !262, file: !31, line: 954, baseType: !821, size: 32, offset: 1824)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !252, file: !209, line: 174, baseType: !258, size: 64, offset: 320)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !252, file: !209, line: 176, baseType: !2946, size: 64, offset: 384)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!168, !261, !135, !251, !893}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !240, file: !209, line: 90, baseType: !235, size: 64, offset: 192)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !240, file: !209, line: 91, baseType: !2951, size: 64, offset: 256)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !199, file: !122, line: 143, baseType: !2953, size: 64, offset: 256)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!2956, !135}
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2958)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !48, line: 39, size: 384, elements: !2959)
!2959 = !{!2960, !2961, !2965, !2969, !2977, !2981}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2958, file: !48, line: 40, baseType: !47, size: 32)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2958, file: !48, line: 41, baseType: !2962, size: 64, offset: 64)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!399}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2958, file: !48, line: 42, baseType: !2966, size: 64, offset: 128)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!112}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2958, file: !48, line: 43, baseType: !2970, size: 64, offset: 192)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!2973, !2975}
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !48, line: 19, flags: DIFlagFwdDecl)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2958, file: !48, line: 44, baseType: !2978, size: 64, offset: 256)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!2973}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2958, file: !48, line: 45, baseType: !377, size: 64, offset: 320)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !199, file: !122, line: 144, baseType: !2983, size: 64, offset: 320)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!2973, !135}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !199, file: !122, line: 145, baseType: !2987, size: 64, offset: 384)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{null, !135, !2990, !2991}
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !121, file: !122, line: 70, baseType: !2993, size: 64, offset: 384)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !528, line: 123, size: 1024, elements: !2995)
!2995 = !{!2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3124, !3125, !3126, !3127, !3128}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2994, file: !528, line: 124, baseType: !659, size: 32)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2994, file: !528, line: 125, baseType: !659, size: 32, offset: 32)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2994, file: !528, line: 135, baseType: !2993, size: 64, offset: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2994, file: !528, line: 136, baseType: !125, size: 64, offset: 128)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2994, file: !528, line: 138, baseType: !672, size: 192, align: 64, offset: 192)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2994, file: !528, line: 140, baseType: !2973, size: 64, offset: 384)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2994, file: !528, line: 141, baseType: !7, size: 32, offset: 448)
!3003 = !DIDerivedType(tag: DW_TAG_member, scope: !2994, file: !528, line: 142, baseType: !3004, size: 256, offset: 512)
!3004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2994, file: !528, line: 142, size: 256, elements: !3005)
!3005 = !{!3006, !3052, !3056}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3004, file: !528, line: 143, baseType: !3007, size: 192)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !528, line: 91, size: 192, elements: !3008)
!3008 = !{!3009, !3010, !3011}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3007, file: !528, line: 92, baseType: !113, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3007, file: !528, line: 94, baseType: !668, size: 64, offset: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3007, file: !528, line: 100, baseType: !3012, size: 64, offset: 128)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !528, line: 180, size: 704, elements: !3014)
!3014 = !{!3015, !3016, !3017, !3024, !3025, !3026, !3050, !3051}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3013, file: !528, line: 182, baseType: !2993, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3013, file: !528, line: 183, baseType: !7, size: 32, offset: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3013, file: !528, line: 186, baseType: !3018, size: 192, offset: 128)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3019, line: 19, size: 192, elements: !3020)
!3019 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3020 = !{!3021, !3022, !3023}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3018, file: !3019, line: 20, baseType: !651, size: 128)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3018, file: !3019, line: 21, baseType: !7, size: 32, offset: 128)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3018, file: !3019, line: 22, baseType: !7, size: 32, offset: 160)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3013, file: !528, line: 187, baseType: !324, size: 32, offset: 320)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3013, file: !528, line: 188, baseType: !324, size: 32, offset: 352)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3013, file: !528, line: 189, baseType: !3027, size: 64, offset: 384)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !528, line: 168, size: 320, elements: !3029)
!3029 = !{!3030, !3034, !3038, !3042, !3046}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3028, file: !528, line: 169, baseType: !3031, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!168, !623, !3012}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3028, file: !528, line: 171, baseType: !3035, size: 64, offset: 64)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!168, !2993, !125, !225}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3028, file: !528, line: 173, baseType: !3039, size: 64, offset: 128)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!168, !2993}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3028, file: !528, line: 174, baseType: !3043, size: 64, offset: 192)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!168, !2993, !2993, !125}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3028, file: !528, line: 176, baseType: !3047, size: 64, offset: 256)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!168, !623, !2993, !3012}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3013, file: !528, line: 192, baseType: !129, size: 128, offset: 448)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3013, file: !528, line: 194, baseType: !1313, size: 128, offset: 576)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3004, file: !528, line: 144, baseType: !3053, size: 64)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !528, line: 103, size: 64, elements: !3054)
!3054 = !{!3055}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3053, file: !528, line: 104, baseType: !2993, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3004, file: !528, line: 145, baseType: !3057, size: 256)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !528, line: 107, size: 256, elements: !3058)
!3058 = !{!3059, !3119, !3122, !3123}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3057, file: !528, line: 108, baseType: !3060, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3062)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !528, line: 217, size: 768, elements: !3063)
!3063 = !{!3064, !3084, !3088, !3092, !3096, !3100, !3104, !3108, !3109, !3110, !3111, !3115}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3062, file: !528, line: 222, baseType: !3065, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!168, !3068}
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !528, line: 197, size: 1088, elements: !3070)
!3070 = !{!3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3069, file: !528, line: 199, baseType: !2993, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3069, file: !528, line: 200, baseType: !261, size: 64, offset: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3069, file: !528, line: 201, baseType: !623, size: 64, offset: 128)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3069, file: !528, line: 202, baseType: !112, size: 64, offset: 192)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3069, file: !528, line: 205, baseType: !1005, size: 192, offset: 256)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3069, file: !528, line: 206, baseType: !1005, size: 192, offset: 448)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3069, file: !528, line: 207, baseType: !168, size: 32, offset: 640)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3069, file: !528, line: 208, baseType: !129, size: 128, offset: 704)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3069, file: !528, line: 209, baseType: !184, size: 64, offset: 832)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3069, file: !528, line: 211, baseType: !231, size: 64, offset: 896)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3069, file: !528, line: 212, baseType: !399, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3069, file: !528, line: 213, baseType: !399, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3069, file: !528, line: 214, baseType: !921, size: 64, offset: 1024)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3062, file: !528, line: 223, baseType: !3085, size: 64, offset: 64)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{null, !3068}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3062, file: !528, line: 236, baseType: !3089, size: 64, offset: 128)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!168, !623, !112}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3062, file: !528, line: 238, baseType: !3093, size: 64, offset: 192)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!112, !623, !2635}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3062, file: !528, line: 239, baseType: !3097, size: 64, offset: 256)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!112, !623, !112, !2635}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3062, file: !528, line: 240, baseType: !3101, size: 64, offset: 320)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{null, !623, !112}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3062, file: !528, line: 242, baseType: !3105, size: 64, offset: 384)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!215, !3068, !184, !231, !440}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3062, file: !528, line: 252, baseType: !231, size: 64, offset: 448)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3062, file: !528, line: 259, baseType: !399, size: 8, offset: 512)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3062, file: !528, line: 260, baseType: !3105, size: 64, offset: 576)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3062, file: !528, line: 263, baseType: !3112, size: 64, offset: 640)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!2664, !3068, !2666}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3062, file: !528, line: 266, baseType: !3116, size: 64, offset: 704)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!168, !3068, !893}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3057, file: !528, line: 109, baseType: !3120, size: 64, offset: 64)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !528, line: 31, flags: DIFlagFwdDecl)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3057, file: !528, line: 110, baseType: !440, size: 64, offset: 128)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3057, file: !528, line: 111, baseType: !2993, size: 64, offset: 192)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2994, file: !528, line: 148, baseType: !112, size: 64, offset: 768)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2994, file: !528, line: 154, baseType: !330, size: 64, offset: 832)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2994, file: !528, line: 156, baseType: !226, size: 16, offset: 896)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2994, file: !528, line: 157, baseType: !225, size: 16, offset: 912)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2994, file: !528, line: 158, baseType: !3129, size: 64, offset: 960)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !528, line: 32, flags: DIFlagFwdDecl)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !121, file: !122, line: 71, baseType: !3132, size: 32, offset: 448)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3133, line: 19, size: 32, elements: !3134)
!3133 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3134 = !{!3135}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3132, file: !3133, line: 20, baseType: !1062, size: 32)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !121, file: !122, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !121, file: !122, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !121, file: !122, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !121, file: !122, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !121, file: !122, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !118, file: !60, line: 463, baseType: !3142, size: 64, offset: 512)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !118, file: !60, line: 465, baseType: !3144, size: 64, offset: 576)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !60, line: 36, flags: DIFlagFwdDecl)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !118, file: !60, line: 467, baseType: !125, size: 64, offset: 640)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !118, file: !60, line: 468, baseType: !3148, size: 64, offset: 704)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3150)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !60, line: 87, size: 384, elements: !3151)
!3151 = !{!3152, !3153, !3154, !3158, !3163, !3167}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3150, file: !60, line: 88, baseType: !125, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3150, file: !60, line: 89, baseType: !237, size: 64, offset: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3150, file: !60, line: 90, baseType: !3155, size: 64, offset: 128)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!168, !3142, !179}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3150, file: !60, line: 91, baseType: !3159, size: 64, offset: 192)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!184, !3142, !3162, !2990, !2991}
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3150, file: !60, line: 93, baseType: !3164, size: 64, offset: 256)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{null, !3142}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3150, file: !60, line: 95, baseType: !3168, size: 64, offset: 320)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3170)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !67, line: 278, size: 1472, elements: !3171)
!3171 = !{!3172, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3170, file: !67, line: 279, baseType: !3173, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!168, !3142}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3170, file: !67, line: 280, baseType: !3164, size: 64, offset: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3170, file: !67, line: 281, baseType: !3173, size: 64, offset: 128)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3170, file: !67, line: 282, baseType: !3173, size: 64, offset: 192)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3170, file: !67, line: 283, baseType: !3173, size: 64, offset: 256)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3170, file: !67, line: 284, baseType: !3173, size: 64, offset: 320)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3170, file: !67, line: 285, baseType: !3173, size: 64, offset: 384)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3170, file: !67, line: 286, baseType: !3173, size: 64, offset: 448)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3170, file: !67, line: 287, baseType: !3173, size: 64, offset: 512)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3170, file: !67, line: 288, baseType: !3173, size: 64, offset: 576)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3170, file: !67, line: 289, baseType: !3173, size: 64, offset: 640)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3170, file: !67, line: 290, baseType: !3173, size: 64, offset: 704)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3170, file: !67, line: 291, baseType: !3173, size: 64, offset: 768)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3170, file: !67, line: 292, baseType: !3173, size: 64, offset: 832)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3170, file: !67, line: 293, baseType: !3173, size: 64, offset: 896)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3170, file: !67, line: 294, baseType: !3173, size: 64, offset: 960)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3170, file: !67, line: 295, baseType: !3173, size: 64, offset: 1024)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3170, file: !67, line: 296, baseType: !3173, size: 64, offset: 1088)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3170, file: !67, line: 297, baseType: !3173, size: 64, offset: 1152)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3170, file: !67, line: 298, baseType: !3173, size: 64, offset: 1216)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3170, file: !67, line: 299, baseType: !3173, size: 64, offset: 1280)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3170, file: !67, line: 300, baseType: !3173, size: 64, offset: 1344)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3170, file: !67, line: 301, baseType: !3173, size: 64, offset: 1408)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !118, file: !60, line: 470, baseType: !3199, size: 64, offset: 768)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3201, line: 82, size: 1408, elements: !3202)
!3201 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3202 = !{!3203, !3204, !3205, !3206, !3207, !3208, !3209, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3266, !3269, !3270}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3200, file: !3201, line: 83, baseType: !125, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3200, file: !3201, line: 84, baseType: !125, size: 64, offset: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3200, file: !3201, line: 85, baseType: !3142, size: 64, offset: 128)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3200, file: !3201, line: 86, baseType: !237, size: 64, offset: 192)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3200, file: !3201, line: 87, baseType: !237, size: 64, offset: 256)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3200, file: !3201, line: 88, baseType: !237, size: 64, offset: 320)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3200, file: !3201, line: 90, baseType: !3210, size: 64, offset: 384)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!168, !3142, !3213}
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !54, line: 95, size: 1152, elements: !3215)
!3215 = !{!3216, !3217, !3218, !3219, !3220, !3221, !3222, !3226, !3230, !3231, !3232, !3233, !3234, !3242, !3243, !3244, !3245, !3246, !3247}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3214, file: !54, line: 96, baseType: !125, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3214, file: !54, line: 97, baseType: !3199, size: 64, offset: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3214, file: !54, line: 99, baseType: !542, size: 64, offset: 128)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3214, file: !54, line: 100, baseType: !125, size: 64, offset: 192)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3214, file: !54, line: 102, baseType: !399, size: 8, offset: 256)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3214, file: !54, line: 103, baseType: !53, size: 32, offset: 288)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3214, file: !54, line: 105, baseType: !3223, size: 64, offset: 320)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3225)
!3225 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !54, line: 105, flags: DIFlagFwdDecl)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3214, file: !54, line: 106, baseType: !3227, size: 64, offset: 384)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3229)
!3229 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !54, line: 106, flags: DIFlagFwdDecl)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3214, file: !54, line: 108, baseType: !3173, size: 64, offset: 448)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3214, file: !54, line: 109, baseType: !3164, size: 64, offset: 512)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3214, file: !54, line: 110, baseType: !3173, size: 64, offset: 576)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3214, file: !54, line: 111, baseType: !3164, size: 64, offset: 640)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3214, file: !54, line: 112, baseType: !3235, size: 64, offset: 704)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!168, !3142, !3238}
!3238 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !67, line: 52, baseType: !3239)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !67, line: 50, size: 32, elements: !3240)
!3240 = !{!3241}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3239, file: !67, line: 51, baseType: !168, size: 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3214, file: !54, line: 113, baseType: !3173, size: 64, offset: 768)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3214, file: !54, line: 114, baseType: !237, size: 64, offset: 832)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3214, file: !54, line: 115, baseType: !237, size: 64, offset: 896)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3214, file: !54, line: 117, baseType: !3168, size: 64, offset: 960)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3214, file: !54, line: 118, baseType: !3164, size: 64, offset: 1024)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3214, file: !54, line: 120, baseType: !3248, size: 64, offset: 1088)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !54, line: 120, flags: DIFlagFwdDecl)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3200, file: !3201, line: 91, baseType: !3155, size: 64, offset: 448)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3200, file: !3201, line: 92, baseType: !3173, size: 64, offset: 512)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3200, file: !3201, line: 93, baseType: !3164, size: 64, offset: 576)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3200, file: !3201, line: 94, baseType: !3173, size: 64, offset: 640)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3200, file: !3201, line: 95, baseType: !3164, size: 64, offset: 704)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3200, file: !3201, line: 97, baseType: !3173, size: 64, offset: 768)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3200, file: !3201, line: 98, baseType: !3173, size: 64, offset: 832)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3200, file: !3201, line: 100, baseType: !3235, size: 64, offset: 896)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3200, file: !3201, line: 101, baseType: !3173, size: 64, offset: 960)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3200, file: !3201, line: 103, baseType: !3173, size: 64, offset: 1024)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3200, file: !3201, line: 105, baseType: !3173, size: 64, offset: 1088)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3200, file: !3201, line: 107, baseType: !3168, size: 64, offset: 1152)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3200, file: !3201, line: 109, baseType: !3263, size: 64, offset: 1216)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3265)
!3265 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3201, line: 109, flags: DIFlagFwdDecl)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3200, file: !3201, line: 111, baseType: !3267, size: 64, offset: 1280)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3201, line: 111, flags: DIFlagFwdDecl)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3200, file: !3201, line: 112, baseType: !557, offset: 1344)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3200, file: !3201, line: 114, baseType: !399, size: 8, offset: 1344)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !118, file: !60, line: 471, baseType: !3213, size: 64, offset: 832)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !118, file: !60, line: 473, baseType: !112, size: 64, offset: 896)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !118, file: !60, line: 475, baseType: !112, size: 64, offset: 960)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !118, file: !60, line: 480, baseType: !1005, size: 192, offset: 1024)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !118, file: !60, line: 484, baseType: !3276, size: 576, offset: 1216)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !60, line: 361, size: 576, elements: !3277)
!3277 = !{!3278, !3279, !3280, !3281, !3282, !3283}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3276, file: !60, line: 362, baseType: !129, size: 128)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3276, file: !60, line: 363, baseType: !129, size: 128, offset: 128)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3276, file: !60, line: 364, baseType: !129, size: 128, offset: 256)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3276, file: !60, line: 365, baseType: !129, size: 128, offset: 384)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3276, file: !60, line: 366, baseType: !399, size: 8, offset: 512)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3276, file: !60, line: 367, baseType: !59, size: 32, offset: 544)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !118, file: !60, line: 485, baseType: !3285, size: 2304, offset: 1792)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !67, line: 565, size: 2304, elements: !3286)
!3286 = !{!3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3382, !3386}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3285, file: !67, line: 566, baseType: !3238, size: 32)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3285, file: !67, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3285, file: !67, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3285, file: !67, line: 569, baseType: !399, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3285, file: !67, line: 570, baseType: !399, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3285, file: !67, line: 571, baseType: !399, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3285, file: !67, line: 572, baseType: !399, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3285, file: !67, line: 573, baseType: !399, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3285, file: !67, line: 574, baseType: !399, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3285, file: !67, line: 575, baseType: !399, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3285, file: !67, line: 576, baseType: !399, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3285, file: !67, line: 577, baseType: !324, size: 32, offset: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3285, file: !67, line: 578, baseType: !142, offset: 96)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3285, file: !67, line: 580, baseType: !129, size: 128, offset: 128)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3285, file: !67, line: 581, baseType: !1334, size: 192, offset: 256)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3285, file: !67, line: 582, baseType: !3303, size: 64, offset: 448)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3305, line: 43, size: 1472, elements: !3306)
!3305 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3306 = !{!3307, !3308, !3309, !3310, !3311, !3314, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3304, file: !3305, line: 44, baseType: !125, size: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3304, file: !3305, line: 45, baseType: !168, size: 32, offset: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3304, file: !3305, line: 46, baseType: !129, size: 128, offset: 128)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3304, file: !3305, line: 47, baseType: !142, offset: 256)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3304, file: !3305, line: 48, baseType: !3312, size: 64, offset: 256)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !67, line: 533, flags: DIFlagFwdDecl)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3304, file: !3305, line: 49, baseType: !3315, size: 320, offset: 320)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3316, line: 11, size: 320, elements: !3317)
!3316 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3317 = !{!3318, !3319, !3320, !3325}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3315, file: !3316, line: 16, baseType: !551, size: 128)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3315, file: !3316, line: 17, baseType: !113, size: 64, offset: 128)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3315, file: !3316, line: 18, baseType: !3321, size: 64, offset: 192)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{null, !3324}
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3315, file: !3316, line: 19, baseType: !324, size: 32, offset: 256)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3304, file: !3305, line: 50, baseType: !113, size: 64, offset: 640)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3304, file: !3305, line: 51, baseType: !1132, size: 64, offset: 704)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3304, file: !3305, line: 52, baseType: !1132, size: 64, offset: 768)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3304, file: !3305, line: 53, baseType: !1132, size: 64, offset: 832)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3304, file: !3305, line: 54, baseType: !1132, size: 64, offset: 896)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3304, file: !3305, line: 55, baseType: !1132, size: 64, offset: 960)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3304, file: !3305, line: 56, baseType: !113, size: 64, offset: 1024)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3304, file: !3305, line: 57, baseType: !113, size: 64, offset: 1088)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3304, file: !3305, line: 58, baseType: !113, size: 64, offset: 1152)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3304, file: !3305, line: 59, baseType: !113, size: 64, offset: 1216)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3304, file: !3305, line: 60, baseType: !113, size: 64, offset: 1280)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3304, file: !3305, line: 61, baseType: !3142, size: 64, offset: 1344)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3304, file: !3305, line: 62, baseType: !399, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3304, file: !3305, line: 63, baseType: !399, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3285, file: !67, line: 583, baseType: !399, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3285, file: !67, line: 584, baseType: !399, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3285, file: !67, line: 585, baseType: !399, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3285, file: !67, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3285, file: !67, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3285, file: !67, line: 592, baseType: !1124, size: 512, offset: 576)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3285, file: !67, line: 593, baseType: !330, size: 64, offset: 1088)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3285, file: !67, line: 594, baseType: !1790, size: 256, offset: 1152)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3285, file: !67, line: 595, baseType: !1313, size: 128, offset: 1408)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3285, file: !67, line: 596, baseType: !3312, size: 64, offset: 1536)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3285, file: !67, line: 597, baseType: !659, size: 32, offset: 1600)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3285, file: !67, line: 598, baseType: !659, size: 32, offset: 1632)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3285, file: !67, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3285, file: !67, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3285, file: !67, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3285, file: !67, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3285, file: !67, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3285, file: !67, line: 604, baseType: !399, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3285, file: !67, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3285, file: !67, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3285, file: !67, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3285, file: !67, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3285, file: !67, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3285, file: !67, line: 610, baseType: !7, size: 32, offset: 1696)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3285, file: !67, line: 611, baseType: !66, size: 32, offset: 1728)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3285, file: !67, line: 612, baseType: !74, size: 32, offset: 1760)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3285, file: !67, line: 613, baseType: !168, size: 32, offset: 1792)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3285, file: !67, line: 614, baseType: !168, size: 32, offset: 1824)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3285, file: !67, line: 615, baseType: !330, size: 64, offset: 1856)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3285, file: !67, line: 616, baseType: !330, size: 64, offset: 1920)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3285, file: !67, line: 617, baseType: !330, size: 64, offset: 1984)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3285, file: !67, line: 618, baseType: !330, size: 64, offset: 2048)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3285, file: !67, line: 620, baseType: !3373, size: 64, offset: 2112)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !67, line: 536, size: 256, elements: !3375)
!3375 = !{!3376, !3377, !3378, !3379}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3374, file: !67, line: 537, baseType: !142)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3374, file: !67, line: 538, baseType: !7, size: 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3374, file: !67, line: 540, baseType: !129, size: 128, offset: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3374, file: !67, line: 543, baseType: !3380, size: 64, offset: 192)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !67, line: 534, flags: DIFlagFwdDecl)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3285, file: !67, line: 621, baseType: !3383, size: 64, offset: 2176)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{null, !3142, !1276}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3285, file: !67, line: 622, baseType: !3387, size: 64, offset: 2240)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !67, line: 622, flags: DIFlagFwdDecl)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !118, file: !60, line: 486, baseType: !3390, size: 64, offset: 4096)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !67, line: 642, size: 1792, elements: !3392)
!3392 = !{!3393, !3394, !3395, !3399, !3400, !3401}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3391, file: !67, line: 643, baseType: !3170, size: 1472)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3391, file: !67, line: 644, baseType: !3173, size: 64, offset: 1472)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3391, file: !67, line: 645, baseType: !3396, size: 64, offset: 1536)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{null, !3142, !399}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3391, file: !67, line: 646, baseType: !3173, size: 64, offset: 1600)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3391, file: !67, line: 647, baseType: !3164, size: 64, offset: 1664)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3391, file: !67, line: 648, baseType: !3164, size: 64, offset: 1728)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !118, file: !60, line: 493, baseType: !3403, size: 64, offset: 4160)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !60, line: 493, flags: DIFlagFwdDecl)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !118, file: !60, line: 499, baseType: !129, size: 128, offset: 4224)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !118, file: !60, line: 502, baseType: !3407, size: 64, offset: 4352)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3409)
!3409 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !60, line: 502, flags: DIFlagFwdDecl)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !118, file: !60, line: 504, baseType: !3411, size: 64, offset: 4416)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !118, file: !60, line: 505, baseType: !330, size: 64, offset: 4480)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !118, file: !60, line: 510, baseType: !330, size: 64, offset: 4544)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !118, file: !60, line: 511, baseType: !3415, size: 64, offset: 4608)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3417)
!3417 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !60, line: 511, flags: DIFlagFwdDecl)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !118, file: !60, line: 513, baseType: !3419, size: 64, offset: 4672)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !60, line: 288, size: 128, elements: !3421)
!3421 = !{!3422, !3423}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3420, file: !60, line: 293, baseType: !7, size: 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3420, file: !60, line: 294, baseType: !113, size: 64, offset: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !118, file: !60, line: 515, baseType: !129, size: 128, offset: 4736)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !118, file: !60, line: 526, baseType: !3426, offset: 4864)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3427, line: 5, elements: !156)
!3427 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !118, file: !60, line: 528, baseType: !3429, size: 64, offset: 4864)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3431, line: 14, flags: DIFlagFwdDecl)
!3431 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !118, file: !60, line: 529, baseType: !3433, size: 64, offset: 4928)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3201, line: 22, flags: DIFlagFwdDecl)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !118, file: !60, line: 534, baseType: !422, size: 32, offset: 4992)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !118, file: !60, line: 535, baseType: !324, size: 32, offset: 5024)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !118, file: !60, line: 537, baseType: !142, offset: 5056)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !118, file: !60, line: 538, baseType: !129, size: 128, offset: 5056)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !118, file: !60, line: 540, baseType: !3440, size: 64, offset: 5184)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3442, line: 54, size: 960, elements: !3443)
!3442 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3443 = !{!3444, !3445, !3446, !3447, !3448, !3449, !3450, !3454, !3458, !3459, !3460, !3461, !3465, !3469, !3470}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3441, file: !3442, line: 55, baseType: !125, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3441, file: !3442, line: 56, baseType: !542, size: 64, offset: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3441, file: !3442, line: 58, baseType: !237, size: 64, offset: 128)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3441, file: !3442, line: 59, baseType: !237, size: 64, offset: 192)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3441, file: !3442, line: 60, baseType: !135, size: 64, offset: 256)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3441, file: !3442, line: 62, baseType: !3155, size: 64, offset: 320)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3441, file: !3442, line: 63, baseType: !3451, size: 64, offset: 384)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!184, !3142, !3162}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3441, file: !3442, line: 65, baseType: !3455, size: 64, offset: 448)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{null, !3440}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3441, file: !3442, line: 66, baseType: !3164, size: 64, offset: 512)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3441, file: !3442, line: 68, baseType: !3173, size: 64, offset: 576)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3441, file: !3442, line: 70, baseType: !2956, size: 64, offset: 640)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3441, file: !3442, line: 71, baseType: !3462, size: 64, offset: 704)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!2973, !3142}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3441, file: !3442, line: 73, baseType: !3466, size: 64, offset: 768)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{null, !3142, !2990, !2991}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3441, file: !3442, line: 75, baseType: !3168, size: 64, offset: 832)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3441, file: !3442, line: 77, baseType: !3267, size: 64, offset: 896)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !118, file: !60, line: 541, baseType: !237, size: 64, offset: 5248)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !118, file: !60, line: 543, baseType: !3164, size: 64, offset: 5312)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !118, file: !60, line: 544, baseType: !3474, size: 64, offset: 5376)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !60, line: 45, flags: DIFlagFwdDecl)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !118, file: !60, line: 545, baseType: !3477, size: 64, offset: 5440)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !60, line: 47, flags: DIFlagFwdDecl)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !118, file: !60, line: 547, baseType: !399, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !118, file: !60, line: 548, baseType: !399, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !118, file: !60, line: 549, baseType: !399, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !118, file: !60, line: 550, baseType: !399, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !115, file: !3, line: 59, baseType: !2862, size: 832, offset: 5568)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "wdd", scope: !115, file: !3, line: 60, baseType: !3485, size: 64, offset: 6400)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "watchdog_device", file: !3487, line: 94, size: 1344, elements: !3488)
!3487 = !DIFile(filename: "./include/linux/watchdog.h", directory: "/home/lizy2001/genbc/linux")
!3488 = !{!3489, !3490, !3491, !3492, !3502, !3532, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3563, !3564, !3565, !3566, !3567}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3486, file: !3487, line: 95, baseType: !168, size: 32)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3486, file: !3487, line: 96, baseType: !3142, size: 64, offset: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3486, file: !3487, line: 97, baseType: !237, size: 64, offset: 128)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3486, file: !3487, line: 98, baseType: !3493, size: 64, offset: 192)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3495)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "watchdog_info", file: !3496, line: 18, size: 320, elements: !3497)
!3496 = !DIFile(filename: "./include/uapi/linux/watchdog.h", directory: "/home/lizy2001/genbc/linux")
!3497 = !{!3498, !3499, !3500}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !3495, file: !3496, line: 19, baseType: !326, size: 32)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_version", scope: !3495, file: !3496, line: 20, baseType: !326, size: 32, offset: 32)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "identity", scope: !3495, file: !3496, line: 21, baseType: !3501, size: 256, offset: 64)
!3501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1185, size: 256, elements: !2050)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3486, file: !3487, line: 99, baseType: !3503, size: 64, offset: 256)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3505)
!3505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "watchdog_ops", file: !3487, line: 43, size: 640, elements: !3506)
!3506 = !{!3507, !3508, !3512, !3513, !3514, !3518, !3522, !3523, !3524, !3528}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3505, file: !3487, line: 44, baseType: !542, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3505, file: !3487, line: 46, baseType: !3509, size: 64, offset: 64)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!168, !3485}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3505, file: !3487, line: 48, baseType: !3509, size: 64, offset: 128)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !3505, file: !3487, line: 49, baseType: !3509, size: 64, offset: 192)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3505, file: !3487, line: 50, baseType: !3515, size: 64, offset: 256)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!7, !3485}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "set_timeout", scope: !3505, file: !3487, line: 51, baseType: !3519, size: 64, offset: 320)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!168, !3485, !7}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "set_pretimeout", scope: !3505, file: !3487, line: 52, baseType: !3519, size: 64, offset: 384)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeleft", scope: !3505, file: !3487, line: 53, baseType: !3515, size: 64, offset: 448)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "restart", scope: !3505, file: !3487, line: 54, baseType: !3525, size: 64, offset: 512)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!168, !3485, !113, !112}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !3505, file: !3487, line: 55, baseType: !3529, size: 64, offset: 576)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!219, !3485, !7, !113}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "gov", scope: !3486, file: !3487, line: 100, baseType: !3533, size: 64, offset: 320)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3535)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "watchdog_governor", file: !3536, line: 9, size: 256, elements: !3537)
!3536 = !DIFile(filename: "drivers/watchdog/watchdog_pretimeout.h", directory: "/home/lizy2001/genbc/linux")
!3537 = !{!3538, !3540}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3535, file: !3536, line: 10, baseType: !3539, size: 160)
!3539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 160, elements: !2021)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "pretimeout", scope: !3535, file: !3536, line: 11, baseType: !3541, size: 64, offset: 192)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{null, !3485}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "bootstatus", scope: !3486, file: !3487, line: 101, baseType: !7, size: 32, offset: 384)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3486, file: !3487, line: 102, baseType: !7, size: 32, offset: 416)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "pretimeout", scope: !3486, file: !3487, line: 103, baseType: !7, size: 32, offset: 448)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "min_timeout", scope: !3486, file: !3487, line: 104, baseType: !7, size: 32, offset: 480)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "max_timeout", scope: !3486, file: !3487, line: 105, baseType: !7, size: 32, offset: 512)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "min_hw_heartbeat_ms", scope: !3486, file: !3487, line: 106, baseType: !7, size: 32, offset: 544)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_heartbeat_ms", scope: !3486, file: !3487, line: 107, baseType: !7, size: 32, offset: 576)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "reboot_nb", scope: !3486, file: !3487, line: 108, baseType: !3552, size: 192, offset: 640)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !3553, line: 54, size: 192, elements: !3554)
!3553 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!3554 = !{!3555, !3561, !3562}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !3552, file: !3553, line: 55, baseType: !3556, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !3553, line: 51, baseType: !3557)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!168, !3560, !113, !112}
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3552, file: !3553, line: 56, baseType: !3560, size: 64, offset: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !3552, file: !3553, line: 57, baseType: !168, size: 32, offset: 128)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "restart_nb", scope: !3486, file: !3487, line: 109, baseType: !3552, size: 192, offset: 832)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3486, file: !3487, line: 110, baseType: !112, size: 64, offset: 1024)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "wd_data", scope: !3486, file: !3487, line: 111, baseType: !114, size: 64, offset: 1088)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3486, file: !3487, line: 112, baseType: !113, size: 64, offset: 1152)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "deferred", scope: !3486, file: !3487, line: 119, baseType: !129, size: 128, offset: 1216)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !115, file: !3, line: 61, baseType: !1005, size: 192, offset: 6464)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "last_keepalive", scope: !115, file: !3, line: 62, baseType: !1132, size: 64, offset: 6656)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "last_hw_keepalive", scope: !115, file: !3, line: 63, baseType: !1132, size: 64, offset: 6720)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "open_deadline", scope: !115, file: !3, line: 64, baseType: !1132, size: 64, offset: 6784)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !115, file: !3, line: 65, baseType: !1124, size: 512, offset: 6848)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !115, file: !3, line: 66, baseType: !3574, size: 320, offset: 7360)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_work", file: !3575, line: 98, size: 320, elements: !3576)
!3575 = !DIFile(filename: "./include/linux/kthread.h", directory: "/home/lizy2001/genbc/linux")
!3576 = !{!3577, !3578, !3584, !3594}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3574, file: !3575, line: 99, baseType: !129, size: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3574, file: !3575, line: 100, baseType: !3579, size: 64, offset: 128)
!3579 = !DIDerivedType(tag: DW_TAG_typedef, name: "kthread_work_func_t", file: !3575, line: 82, baseType: !3580)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{null, !3583}
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !3574, file: !3575, line: 101, baseType: !3585, size: 64, offset: 192)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_worker", file: !3575, line: 89, size: 448, elements: !3587)
!3587 = !{!3588, !3589, !3590, !3591, !3592, !3593}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3586, file: !3575, line: 90, baseType: !7, size: 32)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3586, file: !3575, line: 91, baseType: !692, offset: 32)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3586, file: !3575, line: 92, baseType: !129, size: 128, offset: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_work_list", scope: !3586, file: !3575, line: 93, baseType: !129, size: 128, offset: 192)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3586, file: !3575, line: 94, baseType: !1048, size: 64, offset: 320)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "current_work", scope: !3586, file: !3575, line: 95, baseType: !3583, size: 64, offset: 384)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "canceling", scope: !3574, file: !3575, line: 103, baseType: !168, size: 32, offset: 256)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !115, file: !3, line: 67, baseType: !113, size: 64, offset: 7680)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !132)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !127)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!3602 = !{!3603, !3608, !3660, !3665, !3670, !3672, !3677, !3682, !0, !3684, !3687, !3689, !3703, !3705, !3707, !3712, !3714, !3719}
!3603 = !DIGlobalVariableExpression(var: !3604, expr: !DIExpression())
!3604 = distinct !DIGlobalVariable(name: "__key", scope: !3605, file: !3, line: 1188, type: !557, isLocal: true, isDefinition: true)
!3605 = distinct !DISubprogram(name: "watchdog_dev_init", scope: !3, file: !3, line: 1177, type: !3606, scopeLine: 1178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !156)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!168}
!3608 = !DIGlobalVariableExpression(var: !3609, expr: !DIExpression())
!3609 = distinct !DIGlobalVariable(name: "__param_handle_boot_enabled", scope: !2, file: !3, line: 1222, type: !3610, isLocal: true, isDefinition: true, align: 64)
!3610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3611)
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3612, line: 69, size: 320, elements: !3613)
!3612 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!3613 = !{!3614, !3615, !3616, !3632, !3634, !3638, !3639}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3611, file: !3612, line: 70, baseType: !125, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3611, file: !3612, line: 71, baseType: !542, size: 64, offset: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3611, file: !3612, line: 72, baseType: !3617, size: 64, offset: 128)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3619)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3612, line: 47, size: 256, elements: !3620)
!3620 = !{!3621, !3622, !3627, !3631}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3619, file: !3612, line: 49, baseType: !7, size: 32)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3619, file: !3612, line: 51, baseType: !3623, size: 64, offset: 64)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!168, !125, !3626}
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3619, file: !3612, line: 53, baseType: !3628, size: 64, offset: 128)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{!168, !184, !3626}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3619, file: !3612, line: 55, baseType: !377, size: 64, offset: 192)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3611, file: !3612, line: 73, baseType: !3633, size: 16, offset: 192)
!3633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !771)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3611, file: !3612, line: 74, baseType: !3635, size: 8, offset: 208)
!3635 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !325, line: 16, baseType: !3636)
!3636 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !327, line: 20, baseType: !3637)
!3637 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3611, file: !3612, line: 75, baseType: !1184, size: 8, offset: 216)
!3639 = !DIDerivedType(tag: DW_TAG_member, scope: !3611, file: !3612, line: 76, baseType: !3640, size: 64, offset: 256)
!3640 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3611, file: !3612, line: 76, size: 64, elements: !3641)
!3641 = !{!3642, !3643, !3650}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3640, file: !3612, line: 77, baseType: !112, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3640, file: !3612, line: 78, baseType: !3644, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3646)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3612, line: 86, size: 128, elements: !3647)
!3647 = !{!3648, !3649}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3646, file: !3612, line: 87, baseType: !7, size: 32)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3646, file: !3612, line: 88, baseType: !184, size: 64, offset: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3640, file: !3612, line: 79, baseType: !3651, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3653)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3612, line: 92, size: 256, elements: !3654)
!3654 = !{!3655, !3656, !3657, !3658, !3659}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3653, file: !3612, line: 94, baseType: !7, size: 32)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3653, file: !3612, line: 95, baseType: !7, size: 32, offset: 32)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3653, file: !3612, line: 96, baseType: !2442, size: 64, offset: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3653, file: !3612, line: 97, baseType: !3617, size: 64, offset: 128)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3653, file: !3612, line: 98, baseType: !112, size: 64, offset: 192)
!3660 = !DIGlobalVariableExpression(var: !3661, expr: !DIExpression())
!3661 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_handle_boot_enabledtype209", scope: !2, file: !3, line: 1222, type: !3662, isLocal: true, isDefinition: true, align: 8)
!3662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 344, elements: !3663)
!3663 = !{!3664}
!3664 = !DISubrange(count: 43)
!3665 = !DIGlobalVariableExpression(var: !3666, expr: !DIExpression())
!3666 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_handle_boot_enabled210", scope: !2, file: !3, line: 1223, type: !3667, isLocal: true, isDefinition: true, align: 8)
!3667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 992, elements: !3668)
!3668 = !{!3669}
!3669 = !DISubrange(count: 124)
!3670 = !DIGlobalVariableExpression(var: !3671, expr: !DIExpression())
!3671 = distinct !DIGlobalVariable(name: "__param_open_timeout", scope: !2, file: !3, line: 1227, type: !3610, isLocal: true, isDefinition: true, align: 64)
!3672 = !DIGlobalVariableExpression(var: !3673, expr: !DIExpression())
!3673 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_open_timeouttype211", scope: !2, file: !3, line: 1227, type: !3674, isLocal: true, isDefinition: true, align: 8)
!3674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 288, elements: !3675)
!3675 = !{!3676}
!3676 = !DISubrange(count: 36)
!3677 = !DIGlobalVariableExpression(var: !3678, expr: !DIExpression())
!3678 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_open_timeout212", scope: !2, file: !3, line: 1228, type: !3679, isLocal: true, isDefinition: true, align: 8)
!3679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 1032, elements: !3680)
!3680 = !{!3681}
!3681 = !DISubrange(count: 129)
!3682 = !DIGlobalVariableExpression(var: !3683, expr: !DIExpression())
!3683 = distinct !DIGlobalVariable(name: "watchdog_devt", scope: !2, file: !3, line: 74, type: !422, isLocal: true, isDefinition: true)
!3684 = !DIGlobalVariableExpression(var: !3685, expr: !DIExpression())
!3685 = distinct !DIGlobalVariable(name: "__key", scope: !3686, file: !3, line: 990, type: !557, isLocal: true, isDefinition: true)
!3686 = distinct !DISubprogram(name: "watchdog_cdev_register", scope: !3, file: !3, line: 982, type: !3510, scopeLine: 983, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!3687 = !DIGlobalVariableExpression(var: !3688, expr: !DIExpression())
!3688 = distinct !DIGlobalVariable(name: "old_wd_data", scope: !2, file: !3, line: 76, type: !114, isLocal: true, isDefinition: true)
!3689 = !DIGlobalVariableExpression(var: !3690, expr: !DIExpression())
!3690 = distinct !DIGlobalVariable(name: "watchdog_miscdev", scope: !2, file: !3, line: 961, type: !3691, isLocal: true, isDefinition: true)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "miscdevice", file: !3692, line: 79, size: 640, elements: !3693)
!3692 = !DIFile(filename: "./include/linux/miscdevice.h", directory: "/home/lizy2001/genbc/linux")
!3693 = !{!3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3691, file: !3692, line: 80, baseType: !168, size: 32)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3691, file: !3692, line: 81, baseType: !125, size: 64, offset: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !3691, file: !3692, line: 82, baseType: !2622, size: 64, offset: 128)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3691, file: !3692, line: 83, baseType: !129, size: 128, offset: 192)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3691, file: !3692, line: 84, baseType: !3142, size: 64, offset: 320)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "this_device", scope: !3691, file: !3692, line: 85, baseType: !3142, size: 64, offset: 384)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3691, file: !3692, line: 86, baseType: !237, size: 64, offset: 448)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !3691, file: !3692, line: 87, baseType: !125, size: 64, offset: 512)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3691, file: !3692, line: 88, baseType: !225, size: 16, offset: 576)
!3703 = !DIGlobalVariableExpression(var: !3704, expr: !DIExpression())
!3704 = distinct !DIGlobalVariable(name: "watchdog_fops", scope: !2, file: !3, line: 952, type: !2623, isLocal: true, isDefinition: true)
!3705 = !DIGlobalVariableExpression(var: !3706, expr: !DIExpression())
!3706 = distinct !DIGlobalVariable(name: "watchdog_class", scope: !2, file: !3, line: 967, type: !3441, isLocal: true, isDefinition: true)
!3707 = !DIGlobalVariableExpression(var: !3708, expr: !DIExpression())
!3708 = distinct !DIGlobalVariable(name: "__param_str_handle_boot_enabled", scope: !2, file: !3, line: 1222, type: !3709, isLocal: true, isDefinition: true)
!3709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 232, elements: !3710)
!3710 = !{!3711}
!3711 = !DISubrange(count: 29)
!3712 = !DIGlobalVariableExpression(var: !3713, expr: !DIExpression())
!3713 = distinct !DIGlobalVariable(name: "handle_boot_enabled", scope: !2, file: !3, line: 80, type: !399, isLocal: true, isDefinition: true)
!3714 = !DIGlobalVariableExpression(var: !3715, expr: !DIExpression())
!3715 = distinct !DIGlobalVariable(name: "__param_str_open_timeout", scope: !2, file: !3, line: 1227, type: !3716, isLocal: true, isDefinition: true)
!3716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 176, elements: !3717)
!3717 = !{!3718}
!3718 = !DISubrange(count: 22)
!3719 = !DIGlobalVariableExpression(var: !3720, expr: !DIExpression())
!3720 = distinct !DIGlobalVariable(name: "open_timeout", scope: !2, file: !3, line: 83, type: !7, isLocal: true, isDefinition: true)
!3721 = !{!"rsp"}
!3722 = !{i32 7, !"Dwarf Version", i32 4}
!3723 = !{i32 2, !"Debug Info Version", i32 3}
!3724 = !{i32 1, !"wchar_size", i32 2}
!3725 = !{i32 1, !"Code Model", i32 2}
!3726 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3727 = distinct !DISubprogram(name: "watchdog_dev_register", scope: !3, file: !3, line: 1112, type: !3510, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !156)
!3728 = !DILocalVariable(name: "wdd", arg: 1, scope: !3727, file: !3, line: 1112, type: !3485)
!3729 = !DILocation(line: 1112, column: 51, scope: !3727)
!3730 = !DILocalVariable(name: "ret", scope: !3727, file: !3, line: 1114, type: !168)
!3731 = !DILocation(line: 1114, column: 6, scope: !3727)
!3732 = !DILocation(line: 1116, column: 31, scope: !3727)
!3733 = !DILocation(line: 1116, column: 8, scope: !3727)
!3734 = !DILocation(line: 1116, column: 6, scope: !3727)
!3735 = !DILocation(line: 1117, column: 6, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3727, file: !3, line: 1117, column: 6)
!3737 = !DILocation(line: 1117, column: 6, scope: !3727)
!3738 = !DILocation(line: 1118, column: 10, scope: !3736)
!3739 = !DILocation(line: 1118, column: 3, scope: !3736)
!3740 = !DILocation(line: 1120, column: 37, scope: !3727)
!3741 = !DILocation(line: 1120, column: 8, scope: !3727)
!3742 = !DILocation(line: 1120, column: 6, scope: !3727)
!3743 = !DILocation(line: 1121, column: 6, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3727, file: !3, line: 1121, column: 6)
!3745 = !DILocation(line: 1121, column: 6, scope: !3727)
!3746 = !DILocation(line: 1122, column: 28, scope: !3744)
!3747 = !DILocation(line: 1122, column: 3, scope: !3744)
!3748 = !DILocation(line: 1124, column: 9, scope: !3727)
!3749 = !DILocation(line: 1124, column: 2, scope: !3727)
!3750 = !DILocation(line: 1125, column: 1, scope: !3727)
!3751 = !DILocalVariable(name: "wdd", arg: 1, scope: !3686, file: !3, line: 982, type: !3485)
!3752 = !DILocation(line: 982, column: 59, scope: !3686)
!3753 = !DILocalVariable(name: "wd_data", scope: !3686, file: !3, line: 984, type: !114)
!3754 = !DILocation(line: 984, column: 29, scope: !3686)
!3755 = !DILocalVariable(name: "err", scope: !3686, file: !3, line: 985, type: !168)
!3756 = !DILocation(line: 985, column: 6, scope: !3686)
!3757 = !DILocation(line: 987, column: 12, scope: !3686)
!3758 = !DILocation(line: 987, column: 10, scope: !3686)
!3759 = !DILocation(line: 988, column: 7, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3686, file: !3, line: 988, column: 6)
!3761 = !DILocation(line: 988, column: 6, scope: !3686)
!3762 = !DILocation(line: 989, column: 3, scope: !3760)
!3763 = !DILocation(line: 990, column: 2, scope: !3686)
!3764 = !DILocation(line: 990, column: 2, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3686, file: !3, line: 990, column: 2)
!3766 = !DILocation(line: 992, column: 17, scope: !3686)
!3767 = !DILocation(line: 992, column: 2, scope: !3686)
!3768 = !DILocation(line: 992, column: 11, scope: !3686)
!3769 = !DILocation(line: 992, column: 15, scope: !3686)
!3770 = !DILocation(line: 993, column: 17, scope: !3686)
!3771 = !DILocation(line: 993, column: 2, scope: !3686)
!3772 = !DILocation(line: 993, column: 7, scope: !3686)
!3773 = !DILocation(line: 993, column: 15, scope: !3686)
!3774 = !DILocation(line: 995, column: 21, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3686, file: !3, line: 995, column: 6)
!3776 = !DILocation(line: 995, column: 6, scope: !3775)
!3777 = !DILocation(line: 995, column: 6, scope: !3686)
!3778 = !DILocation(line: 996, column: 9, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3775, file: !3, line: 995, column: 40)
!3780 = !DILocation(line: 996, column: 3, scope: !3779)
!3781 = !DILocation(line: 997, column: 3, scope: !3779)
!3782 = !DILocation(line: 1000, column: 21, scope: !3686)
!3783 = !DILocation(line: 1000, column: 30, scope: !3686)
!3784 = !DILocation(line: 1000, column: 2, scope: !3686)
!3785 = !DILocation(line: 1001, column: 22, scope: !3686)
!3786 = !DILocation(line: 1001, column: 2, scope: !3686)
!3787 = !DILocation(line: 1001, column: 11, scope: !3686)
!3788 = !DILocation(line: 1001, column: 15, scope: !3686)
!3789 = !DILocation(line: 1001, column: 20, scope: !3686)
!3790 = !DILocation(line: 1002, column: 2, scope: !3686)
!3791 = !DILocation(line: 1002, column: 11, scope: !3686)
!3792 = !DILocation(line: 1002, column: 15, scope: !3686)
!3793 = !DILocation(line: 1002, column: 21, scope: !3686)
!3794 = !DILocation(line: 1003, column: 24, scope: !3686)
!3795 = !DILocation(line: 1003, column: 29, scope: !3686)
!3796 = !DILocation(line: 1003, column: 2, scope: !3686)
!3797 = !DILocation(line: 1003, column: 11, scope: !3686)
!3798 = !DILocation(line: 1003, column: 15, scope: !3686)
!3799 = !DILocation(line: 1003, column: 22, scope: !3686)
!3800 = !DILocation(line: 1004, column: 24, scope: !3686)
!3801 = !DILocation(line: 1004, column: 29, scope: !3686)
!3802 = !DILocation(line: 1004, column: 2, scope: !3686)
!3803 = !DILocation(line: 1004, column: 11, scope: !3686)
!3804 = !DILocation(line: 1004, column: 15, scope: !3686)
!3805 = !DILocation(line: 1004, column: 22, scope: !3686)
!3806 = !DILocation(line: 1005, column: 2, scope: !3686)
!3807 = !DILocation(line: 1005, column: 11, scope: !3686)
!3808 = !DILocation(line: 1005, column: 15, scope: !3686)
!3809 = !DILocation(line: 1005, column: 23, scope: !3686)
!3810 = !DILocation(line: 1006, column: 19, scope: !3686)
!3811 = !DILocation(line: 1006, column: 28, scope: !3686)
!3812 = !DILocation(line: 1006, column: 33, scope: !3686)
!3813 = !DILocation(line: 1006, column: 2, scope: !3686)
!3814 = !DILocation(line: 1007, column: 16, scope: !3686)
!3815 = !DILocation(line: 1007, column: 25, scope: !3686)
!3816 = !DILocation(line: 1007, column: 44, scope: !3686)
!3817 = !DILocation(line: 1007, column: 49, scope: !3686)
!3818 = !DILocation(line: 1007, column: 2, scope: !3686)
!3819 = !DILocation(line: 1009, column: 2, scope: !3686)
!3820 = !DILocation(line: 1009, column: 2, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3686, file: !3, line: 1009, column: 2)
!3822 = !DILocation(line: 1010, column: 16, scope: !3686)
!3823 = !DILocation(line: 1010, column: 25, scope: !3686)
!3824 = !DILocation(line: 1010, column: 2, scope: !3686)
!3825 = !DILocation(line: 1011, column: 2, scope: !3686)
!3826 = !DILocation(line: 1011, column: 11, scope: !3686)
!3827 = !DILocation(line: 1011, column: 17, scope: !3686)
!3828 = !DILocation(line: 1011, column: 26, scope: !3686)
!3829 = !DILocation(line: 1013, column: 6, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3686, file: !3, line: 1013, column: 6)
!3831 = !DILocation(line: 1013, column: 11, scope: !3830)
!3832 = !DILocation(line: 1013, column: 14, scope: !3830)
!3833 = !DILocation(line: 1013, column: 6, scope: !3686)
!3834 = !DILocation(line: 1014, column: 17, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3830, file: !3, line: 1013, column: 20)
!3836 = !DILocation(line: 1014, column: 15, scope: !3835)
!3837 = !DILocation(line: 1015, column: 29, scope: !3835)
!3838 = !DILocation(line: 1015, column: 34, scope: !3835)
!3839 = !DILocation(line: 1015, column: 27, scope: !3835)
!3840 = !DILocation(line: 1016, column: 9, scope: !3835)
!3841 = !DILocation(line: 1016, column: 7, scope: !3835)
!3842 = !DILocation(line: 1017, column: 7, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3835, file: !3, line: 1017, column: 7)
!3844 = !DILocation(line: 1017, column: 11, scope: !3843)
!3845 = !DILocation(line: 1017, column: 7, scope: !3835)
!3846 = !DILocation(line: 1018, column: 4, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3843, file: !3, line: 1017, column: 17)
!3848 = !DILocation(line: 1020, column: 8, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 1020, column: 8)
!3850 = !DILocation(line: 1020, column: 12, scope: !3849)
!3851 = !DILocation(line: 1020, column: 8, scope: !3847)
!3852 = !DILocation(line: 1021, column: 5, scope: !3849)
!3853 = !DILocation(line: 1023, column: 16, scope: !3847)
!3854 = !DILocation(line: 1024, column: 16, scope: !3847)
!3855 = !DILocation(line: 1024, column: 25, scope: !3847)
!3856 = !DILocation(line: 1024, column: 4, scope: !3847)
!3857 = !DILocation(line: 1025, column: 11, scope: !3847)
!3858 = !DILocation(line: 1025, column: 4, scope: !3847)
!3859 = !DILocation(line: 1027, column: 2, scope: !3835)
!3860 = !DILocation(line: 1030, column: 13, scope: !3686)
!3861 = !DILocation(line: 1030, column: 22, scope: !3686)
!3862 = !DILocation(line: 1030, column: 2, scope: !3686)
!3863 = !DILocation(line: 1033, column: 25, scope: !3686)
!3864 = !DILocation(line: 1033, column: 34, scope: !3686)
!3865 = !DILocation(line: 1033, column: 41, scope: !3686)
!3866 = !DILocation(line: 1033, column: 50, scope: !3686)
!3867 = !DILocation(line: 1033, column: 8, scope: !3686)
!3868 = !DILocation(line: 1033, column: 6, scope: !3686)
!3869 = !DILocation(line: 1034, column: 6, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3686, file: !3, line: 1034, column: 6)
!3871 = !DILocation(line: 1034, column: 6, scope: !3686)
!3872 = !DILocation(line: 1035, column: 3, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3870, file: !3, line: 1034, column: 11)
!3874 = !DILocation(line: 1037, column: 7, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3873, file: !3, line: 1037, column: 7)
!3876 = !DILocation(line: 1037, column: 12, scope: !3875)
!3877 = !DILocation(line: 1037, column: 15, scope: !3875)
!3878 = !DILocation(line: 1037, column: 7, scope: !3873)
!3879 = !DILocation(line: 1038, column: 4, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3875, file: !3, line: 1037, column: 21)
!3881 = !DILocation(line: 1039, column: 16, scope: !3880)
!3882 = !DILocation(line: 1040, column: 16, scope: !3880)
!3883 = !DILocation(line: 1040, column: 25, scope: !3880)
!3884 = !DILocation(line: 1040, column: 4, scope: !3880)
!3885 = !DILocation(line: 1041, column: 3, scope: !3880)
!3886 = !DILocation(line: 1042, column: 10, scope: !3873)
!3887 = !DILocation(line: 1042, column: 3, scope: !3873)
!3888 = !DILocation(line: 1045, column: 24, scope: !3686)
!3889 = !DILocation(line: 1045, column: 29, scope: !3686)
!3890 = !DILocation(line: 1045, column: 34, scope: !3686)
!3891 = !DILocation(line: 1045, column: 2, scope: !3686)
!3892 = !DILocation(line: 1045, column: 11, scope: !3686)
!3893 = !DILocation(line: 1045, column: 16, scope: !3686)
!3894 = !DILocation(line: 1045, column: 22, scope: !3686)
!3895 = !DILocation(line: 1048, column: 31, scope: !3686)
!3896 = !DILocation(line: 1048, column: 2, scope: !3686)
!3897 = !DILocation(line: 1048, column: 11, scope: !3686)
!3898 = !DILocation(line: 1048, column: 29, scope: !3686)
!3899 = !DILocation(line: 1049, column: 29, scope: !3686)
!3900 = !DILocation(line: 1049, column: 2, scope: !3686)
!3901 = !DILocation(line: 1055, column: 26, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3686, file: !3, line: 1055, column: 6)
!3903 = !DILocation(line: 1055, column: 6, scope: !3902)
!3904 = !DILocation(line: 1055, column: 6, scope: !3686)
!3905 = !DILocation(line: 1056, column: 16, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3902, file: !3, line: 1055, column: 32)
!3907 = !DILocation(line: 1056, column: 21, scope: !3906)
!3908 = !DILocation(line: 1056, column: 26, scope: !3906)
!3909 = !DILocation(line: 1056, column: 3, scope: !3906)
!3910 = !DILocation(line: 1057, column: 15, scope: !3906)
!3911 = !DILocation(line: 1057, column: 24, scope: !3906)
!3912 = !DILocation(line: 1057, column: 3, scope: !3906)
!3913 = !DILocation(line: 1058, column: 7, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 1058, column: 7)
!3915 = !DILocation(line: 1058, column: 7, scope: !3906)
!3916 = !DILocation(line: 1059, column: 19, scope: !3914)
!3917 = !DILocation(line: 1059, column: 28, scope: !3914)
!3918 = !DILocation(line: 1059, column: 4, scope: !3914)
!3919 = !DILocation(line: 1062, column: 4, scope: !3914)
!3920 = !DILocation(line: 1064, column: 2, scope: !3906)
!3921 = !DILocation(line: 1066, column: 2, scope: !3686)
!3922 = !DILocation(line: 1067, column: 1, scope: !3686)
!3923 = distinct !DISubprogram(name: "watchdog_register_pretimeout", scope: !3536, file: !3536, line: 34, type: !3510, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!3924 = !DILocalVariable(name: "wdd", arg: 1, scope: !3923, file: !3536, line: 34, type: !3485)
!3925 = !DILocation(line: 34, column: 72, scope: !3923)
!3926 = !DILocation(line: 36, column: 2, scope: !3923)
!3927 = distinct !DISubprogram(name: "watchdog_cdev_unregister", scope: !3, file: !3, line: 1077, type: !3542, scopeLine: 1078, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!3928 = !DILocalVariable(name: "wdd", arg: 1, scope: !3927, file: !3, line: 1077, type: !3485)
!3929 = !DILocation(line: 1077, column: 62, scope: !3927)
!3930 = !DILocalVariable(name: "wd_data", scope: !3927, file: !3, line: 1079, type: !114)
!3931 = !DILocation(line: 1079, column: 29, scope: !3927)
!3932 = !DILocation(line: 1079, column: 39, scope: !3927)
!3933 = !DILocation(line: 1079, column: 44, scope: !3927)
!3934 = !DILocation(line: 1081, column: 19, scope: !3927)
!3935 = !DILocation(line: 1081, column: 28, scope: !3927)
!3936 = !DILocation(line: 1081, column: 35, scope: !3927)
!3937 = !DILocation(line: 1081, column: 44, scope: !3927)
!3938 = !DILocation(line: 1081, column: 2, scope: !3927)
!3939 = !DILocation(line: 1082, column: 6, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3927, file: !3, line: 1082, column: 6)
!3941 = !DILocation(line: 1082, column: 11, scope: !3940)
!3942 = !DILocation(line: 1082, column: 14, scope: !3940)
!3943 = !DILocation(line: 1082, column: 6, scope: !3927)
!3944 = !DILocation(line: 1083, column: 3, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3940, file: !3, line: 1082, column: 20)
!3946 = !DILocation(line: 1084, column: 15, scope: !3945)
!3947 = !DILocation(line: 1085, column: 2, scope: !3945)
!3948 = !DILocation(line: 1087, column: 22, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3927, file: !3, line: 1087, column: 6)
!3950 = !DILocation(line: 1087, column: 6, scope: !3949)
!3951 = !DILocation(line: 1087, column: 27, scope: !3949)
!3952 = !DILocation(line: 1088, column: 41, scope: !3949)
!3953 = !DILocation(line: 1088, column: 46, scope: !3949)
!3954 = !DILocation(line: 1088, column: 6, scope: !3949)
!3955 = !DILocation(line: 1087, column: 6, scope: !3927)
!3956 = !DILocation(line: 1089, column: 17, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3949, file: !3, line: 1088, column: 55)
!3958 = !DILocation(line: 1089, column: 3, scope: !3957)
!3959 = !DILocation(line: 1090, column: 2, scope: !3957)
!3960 = !DILocation(line: 1092, column: 14, scope: !3927)
!3961 = !DILocation(line: 1092, column: 23, scope: !3927)
!3962 = !DILocation(line: 1092, column: 2, scope: !3927)
!3963 = !DILocation(line: 1093, column: 2, scope: !3927)
!3964 = !DILocation(line: 1093, column: 11, scope: !3927)
!3965 = !DILocation(line: 1093, column: 15, scope: !3927)
!3966 = !DILocation(line: 1094, column: 2, scope: !3927)
!3967 = !DILocation(line: 1094, column: 7, scope: !3927)
!3968 = !DILocation(line: 1094, column: 15, scope: !3927)
!3969 = !DILocation(line: 1095, column: 16, scope: !3927)
!3970 = !DILocation(line: 1095, column: 25, scope: !3927)
!3971 = !DILocation(line: 1095, column: 2, scope: !3927)
!3972 = !DILocation(line: 1097, column: 18, scope: !3927)
!3973 = !DILocation(line: 1097, column: 27, scope: !3927)
!3974 = !DILocation(line: 1097, column: 2, scope: !3927)
!3975 = !DILocation(line: 1098, column: 28, scope: !3927)
!3976 = !DILocation(line: 1098, column: 37, scope: !3927)
!3977 = !DILocation(line: 1098, column: 2, scope: !3927)
!3978 = !DILocation(line: 1100, column: 14, scope: !3927)
!3979 = !DILocation(line: 1100, column: 23, scope: !3927)
!3980 = !DILocation(line: 1100, column: 2, scope: !3927)
!3981 = !DILocation(line: 1101, column: 1, scope: !3927)
!3982 = distinct !DISubprogram(name: "watchdog_dev_unregister", scope: !3, file: !3, line: 1135, type: !3542, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !156)
!3983 = !DILocalVariable(name: "wdd", arg: 1, scope: !3982, file: !3, line: 1135, type: !3485)
!3984 = !DILocation(line: 1135, column: 54, scope: !3982)
!3985 = !DILocation(line: 1137, column: 33, scope: !3982)
!3986 = !DILocation(line: 1137, column: 2, scope: !3982)
!3987 = !DILocation(line: 1138, column: 27, scope: !3982)
!3988 = !DILocation(line: 1138, column: 2, scope: !3982)
!3989 = !DILocation(line: 1139, column: 1, scope: !3982)
!3990 = distinct !DISubprogram(name: "watchdog_unregister_pretimeout", scope: !3536, file: !3536, line: 39, type: !3542, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!3991 = !DILocalVariable(name: "wdd", arg: 1, scope: !3990, file: !3536, line: 39, type: !3485)
!3992 = !DILocation(line: 39, column: 75, scope: !3990)
!3993 = !DILocation(line: 41, column: 1, scope: !3990)
!3994 = distinct !DISubprogram(name: "watchdog_set_last_hw_keepalive", scope: !3, file: !3, line: 1152, type: !3520, scopeLine: 1154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !156)
!3995 = !DILocalVariable(name: "wdd", arg: 1, scope: !3994, file: !3, line: 1152, type: !3485)
!3996 = !DILocation(line: 1152, column: 60, scope: !3994)
!3997 = !DILocalVariable(name: "last_ping_ms", arg: 2, scope: !3994, file: !3, line: 1153, type: !7)
!3998 = !DILocation(line: 1153, column: 21, scope: !3994)
!3999 = !DILocalVariable(name: "wd_data", scope: !3994, file: !3, line: 1155, type: !114)
!4000 = !DILocation(line: 1155, column: 29, scope: !3994)
!4001 = !DILocalVariable(name: "now", scope: !3994, file: !3, line: 1156, type: !1132)
!4002 = !DILocation(line: 1156, column: 10, scope: !3994)
!4003 = !DILocation(line: 1158, column: 7, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !3994, file: !3, line: 1158, column: 6)
!4005 = !DILocation(line: 1158, column: 6, scope: !3994)
!4006 = !DILocation(line: 1159, column: 3, scope: !4004)
!4007 = !DILocation(line: 1161, column: 12, scope: !3994)
!4008 = !DILocation(line: 1161, column: 17, scope: !3994)
!4009 = !DILocation(line: 1161, column: 10, scope: !3994)
!4010 = !DILocation(line: 1163, column: 8, scope: !3994)
!4011 = !DILocation(line: 1163, column: 6, scope: !3994)
!4012 = !DILocation(line: 1165, column: 31, scope: !3994)
!4013 = !DILocation(line: 1165, column: 2, scope: !3994)
!4014 = !DILocation(line: 1165, column: 11, scope: !3994)
!4015 = !DILocation(line: 1165, column: 29, scope: !3994)
!4016 = !DILocation(line: 1167, column: 25, scope: !3994)
!4017 = !DILocation(line: 1167, column: 9, scope: !3994)
!4018 = !DILocation(line: 1167, column: 2, scope: !3994)
!4019 = !DILocation(line: 1168, column: 1, scope: !3994)
!4020 = distinct !DISubprogram(name: "ms_to_ktime", scope: !1133, file: !1133, line: 227, type: !4021, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{!1132, !330}
!4023 = !DILocalVariable(name: "ms", arg: 1, scope: !4020, file: !1133, line: 227, type: !330)
!4024 = !DILocation(line: 227, column: 39, scope: !4020)
!4025 = !DILocation(line: 229, column: 9, scope: !4020)
!4026 = !DILocation(line: 229, column: 12, scope: !4020)
!4027 = !DILocation(line: 229, column: 2, scope: !4020)
!4028 = distinct !DISubprogram(name: "__watchdog_ping", scope: !3, file: !3, line: 164, type: !3510, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4029 = !DILocalVariable(name: "wdd", arg: 1, scope: !4028, file: !3, line: 164, type: !3485)
!4030 = !DILocation(line: 164, column: 52, scope: !4028)
!4031 = !DILocalVariable(name: "wd_data", scope: !4028, file: !3, line: 166, type: !114)
!4032 = !DILocation(line: 166, column: 29, scope: !4028)
!4033 = !DILocation(line: 166, column: 39, scope: !4028)
!4034 = !DILocation(line: 166, column: 44, scope: !4028)
!4035 = !DILocalVariable(name: "earliest_keepalive", scope: !4028, file: !3, line: 167, type: !1132)
!4036 = !DILocation(line: 167, column: 10, scope: !4028)
!4037 = !DILocalVariable(name: "now", scope: !4028, file: !3, line: 167, type: !1132)
!4038 = !DILocation(line: 167, column: 30, scope: !4028)
!4039 = !DILocalVariable(name: "err", scope: !4028, file: !3, line: 168, type: !168)
!4040 = !DILocation(line: 168, column: 6, scope: !4028)
!4041 = !DILocation(line: 170, column: 23, scope: !4028)
!4042 = !DILocation(line: 170, column: 21, scope: !4028)
!4043 = !DILocation(line: 172, column: 8, scope: !4028)
!4044 = !DILocation(line: 172, column: 6, scope: !4028)
!4045 = !DILocation(line: 174, column: 18, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 174, column: 6)
!4047 = !DILocation(line: 174, column: 38, scope: !4046)
!4048 = !DILocation(line: 174, column: 6, scope: !4046)
!4049 = !DILocation(line: 174, column: 6, scope: !4028)
!4050 = !DILocation(line: 175, column: 18, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4046, file: !3, line: 174, column: 44)
!4052 = !DILocation(line: 175, column: 27, scope: !4051)
!4053 = !DILocation(line: 176, column: 10, scope: !4051)
!4054 = !DILocation(line: 175, column: 3, scope: !4051)
!4055 = !DILocation(line: 178, column: 3, scope: !4051)
!4056 = !DILocation(line: 181, column: 31, scope: !4028)
!4057 = !DILocation(line: 181, column: 2, scope: !4028)
!4058 = !DILocation(line: 181, column: 11, scope: !4028)
!4059 = !DILocation(line: 181, column: 29, scope: !4028)
!4060 = !DILocation(line: 183, column: 6, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 183, column: 6)
!4062 = !DILocation(line: 183, column: 11, scope: !4061)
!4063 = !DILocation(line: 183, column: 16, scope: !4061)
!4064 = !DILocation(line: 183, column: 6, scope: !4028)
!4065 = !DILocation(line: 184, column: 9, scope: !4061)
!4066 = !DILocation(line: 184, column: 14, scope: !4061)
!4067 = !DILocation(line: 184, column: 19, scope: !4061)
!4068 = !DILocation(line: 184, column: 24, scope: !4061)
!4069 = !DILocation(line: 184, column: 7, scope: !4061)
!4070 = !DILocation(line: 184, column: 3, scope: !4061)
!4071 = !DILocation(line: 186, column: 9, scope: !4061)
!4072 = !DILocation(line: 186, column: 14, scope: !4061)
!4073 = !DILocation(line: 186, column: 19, scope: !4061)
!4074 = !DILocation(line: 186, column: 25, scope: !4061)
!4075 = !DILocation(line: 186, column: 7, scope: !4061)
!4076 = !DILocation(line: 188, column: 25, scope: !4028)
!4077 = !DILocation(line: 188, column: 2, scope: !4028)
!4078 = !DILocation(line: 190, column: 9, scope: !4028)
!4079 = !DILocation(line: 190, column: 2, scope: !4028)
!4080 = !DILocation(line: 191, column: 1, scope: !4028)
!4081 = !DILocalVariable(name: "err", scope: !3605, file: !3, line: 1179, type: !168)
!4082 = !DILocation(line: 1179, column: 6, scope: !3605)
!4083 = !DILocation(line: 1181, column: 21, scope: !3605)
!4084 = !DILocation(line: 1181, column: 19, scope: !3605)
!4085 = !DILocation(line: 1182, column: 13, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !3605, file: !3, line: 1182, column: 6)
!4087 = !DILocation(line: 1182, column: 6, scope: !4086)
!4088 = !DILocation(line: 1182, column: 6, scope: !3605)
!4089 = !DILocation(line: 1183, column: 3, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4086, file: !3, line: 1182, column: 32)
!4091 = !DILocation(line: 1184, column: 18, scope: !4090)
!4092 = !DILocation(line: 1184, column: 10, scope: !4090)
!4093 = !DILocation(line: 1184, column: 3, scope: !4090)
!4094 = !DILocation(line: 1186, column: 17, scope: !3605)
!4095 = !DILocation(line: 1186, column: 35, scope: !3605)
!4096 = !DILocation(line: 1186, column: 2, scope: !3605)
!4097 = !DILocation(line: 1188, column: 8, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !3605, file: !3, line: 1188, column: 8)
!4099 = !DILocation(line: 1188, column: 6, scope: !3605)
!4100 = !DILocation(line: 1189, column: 6, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !3605, file: !3, line: 1189, column: 6)
!4102 = !DILocation(line: 1189, column: 10, scope: !4101)
!4103 = !DILocation(line: 1189, column: 6, scope: !3605)
!4104 = !DILocation(line: 1190, column: 3, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4101, file: !3, line: 1189, column: 15)
!4106 = !DILocation(line: 1191, column: 3, scope: !4105)
!4107 = !DILocation(line: 1194, column: 8, scope: !3605)
!4108 = !DILocation(line: 1194, column: 6, scope: !3605)
!4109 = !DILocation(line: 1195, column: 6, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !3605, file: !3, line: 1195, column: 6)
!4111 = !DILocation(line: 1195, column: 10, scope: !4110)
!4112 = !DILocation(line: 1195, column: 6, scope: !3605)
!4113 = !DILocation(line: 1196, column: 3, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4110, file: !3, line: 1195, column: 15)
!4115 = !DILocation(line: 1197, column: 3, scope: !4114)
!4116 = !DILocation(line: 1200, column: 2, scope: !3605)
!4117 = !DILabel(scope: !3605, name: "err_alloc", file: !3, line: 1202)
!4118 = !DILocation(line: 1202, column: 1, scope: !3605)
!4119 = !DILocation(line: 1203, column: 2, scope: !3605)
!4120 = !DILabel(scope: !3605, name: "err_register", file: !3, line: 1204)
!4121 = !DILocation(line: 1204, column: 1, scope: !3605)
!4122 = !DILocation(line: 1205, column: 25, scope: !3605)
!4123 = !DILocation(line: 1205, column: 2, scope: !3605)
!4124 = !DILocation(line: 1206, column: 9, scope: !3605)
!4125 = !DILocation(line: 1206, column: 2, scope: !3605)
!4126 = !DILocation(line: 1207, column: 1, scope: !3605)
!4127 = distinct !DISubprogram(name: "IS_ERR", scope: !4128, file: !4128, line: 34, type: !4129, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4128 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!4129 = !DISubroutineType(types: !4130)
!4130 = !{!399, !2973}
!4131 = !DILocalVariable(name: "ptr", arg: 1, scope: !4127, file: !4128, line: 34, type: !2973)
!4132 = !DILocation(line: 34, column: 60, scope: !4127)
!4133 = !DILocation(line: 36, column: 9, scope: !4127)
!4134 = !DILocation(line: 36, column: 2, scope: !4127)
!4135 = distinct !DISubprogram(name: "PTR_ERR", scope: !4128, file: !4128, line: 29, type: !4136, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!219, !2973}
!4138 = !DILocalVariable(name: "ptr", arg: 1, scope: !4135, file: !4128, line: 29, type: !2973)
!4139 = !DILocation(line: 29, column: 61, scope: !4135)
!4140 = !DILocation(line: 31, column: 16, scope: !4135)
!4141 = !DILocation(line: 31, column: 9, scope: !4135)
!4142 = !DILocation(line: 31, column: 2, scope: !4135)
!4143 = distinct !DISubprogram(name: "watchdog_dev_exit", scope: !3, file: !3, line: 1215, type: !1711, scopeLine: 1216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4144 = !DILocation(line: 1217, column: 27, scope: !4143)
!4145 = !DILocation(line: 1217, column: 2, scope: !4143)
!4146 = !DILocation(line: 1218, column: 2, scope: !4143)
!4147 = !DILocation(line: 1219, column: 25, scope: !4143)
!4148 = !DILocation(line: 1219, column: 2, scope: !4143)
!4149 = !DILocation(line: 1220, column: 1, scope: !4143)
!4150 = distinct !DISubprogram(name: "kzalloc", scope: !98, file: !98, line: 662, type: !4151, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!112, !231, !110}
!4153 = !DILocalVariable(name: "s", arg: 1, scope: !4154, file: !98, line: 445, type: !847)
!4154 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !98, file: !98, line: 445, type: !4155, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!112, !847, !110, !231}
!4157 = !DILocation(line: 445, column: 72, scope: !4154, inlinedAt: !4158)
!4158 = distinct !DILocation(line: 552, column: 10, scope: !4159, inlinedAt: !4162)
!4159 = distinct !DILexicalBlock(scope: !4160, file: !98, line: 540, column: 34)
!4160 = distinct !DILexicalBlock(scope: !4161, file: !98, line: 540, column: 6)
!4161 = distinct !DISubprogram(name: "kmalloc", scope: !98, file: !98, line: 538, type: !4151, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4162 = distinct !DILocation(line: 664, column: 9, scope: !4150)
!4163 = !DILocalVariable(name: "flags", arg: 2, scope: !4154, file: !98, line: 446, type: !110)
!4164 = !DILocation(line: 446, column: 9, scope: !4154, inlinedAt: !4158)
!4165 = !DILocalVariable(name: "size", arg: 3, scope: !4154, file: !98, line: 446, type: !231)
!4166 = !DILocation(line: 446, column: 23, scope: !4154, inlinedAt: !4158)
!4167 = !DILocalVariable(name: "ret", scope: !4154, file: !98, line: 448, type: !112)
!4168 = !DILocation(line: 448, column: 8, scope: !4154, inlinedAt: !4158)
!4169 = !DILocalVariable(name: "flags", arg: 1, scope: !4170, file: !98, line: 318, type: !110)
!4170 = distinct !DISubprogram(name: "kmalloc_type", scope: !98, file: !98, line: 318, type: !4171, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!97, !110}
!4173 = !DILocation(line: 318, column: 67, scope: !4170, inlinedAt: !4174)
!4174 = distinct !DILocation(line: 553, column: 20, scope: !4159, inlinedAt: !4162)
!4175 = !DILocalVariable(name: "size", arg: 1, scope: !4176, file: !98, line: 346, type: !231)
!4176 = distinct !DISubprogram(name: "kmalloc_index", scope: !98, file: !98, line: 346, type: !4177, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!7, !231}
!4179 = !DILocation(line: 346, column: 58, scope: !4176, inlinedAt: !4180)
!4180 = distinct !DILocation(line: 547, column: 11, scope: !4159, inlinedAt: !4162)
!4181 = !DILocalVariable(name: "size", arg: 1, scope: !4182, file: !98, line: 472, type: !231)
!4182 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !98, file: !98, line: 472, type: !4183, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!112, !231, !110, !7}
!4185 = !DILocation(line: 472, column: 28, scope: !4182, inlinedAt: !4186)
!4186 = distinct !DILocation(line: 481, column: 9, scope: !4187, inlinedAt: !4188)
!4187 = distinct !DISubprogram(name: "kmalloc_large", scope: !98, file: !98, line: 478, type: !4151, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4188 = distinct !DILocation(line: 545, column: 11, scope: !4189, inlinedAt: !4162)
!4189 = distinct !DILexicalBlock(scope: !4159, file: !98, line: 544, column: 7)
!4190 = !DILocalVariable(name: "flags", arg: 2, scope: !4182, file: !98, line: 472, type: !110)
!4191 = !DILocation(line: 472, column: 40, scope: !4182, inlinedAt: !4186)
!4192 = !DILocalVariable(name: "order", arg: 3, scope: !4182, file: !98, line: 472, type: !7)
!4193 = !DILocation(line: 472, column: 60, scope: !4182, inlinedAt: !4186)
!4194 = !DILocalVariable(name: "size", arg: 1, scope: !4187, file: !98, line: 478, type: !231)
!4195 = !DILocation(line: 478, column: 51, scope: !4187, inlinedAt: !4188)
!4196 = !DILocalVariable(name: "flags", arg: 2, scope: !4187, file: !98, line: 478, type: !110)
!4197 = !DILocation(line: 478, column: 63, scope: !4187, inlinedAt: !4188)
!4198 = !DILocalVariable(name: "order", scope: !4187, file: !98, line: 480, type: !7)
!4199 = !DILocation(line: 480, column: 15, scope: !4187, inlinedAt: !4188)
!4200 = !DILocalVariable(name: "size", arg: 1, scope: !4161, file: !98, line: 538, type: !231)
!4201 = !DILocation(line: 538, column: 45, scope: !4161, inlinedAt: !4162)
!4202 = !DILocalVariable(name: "flags", arg: 2, scope: !4161, file: !98, line: 538, type: !110)
!4203 = !DILocation(line: 538, column: 57, scope: !4161, inlinedAt: !4162)
!4204 = !DILocalVariable(name: "index", scope: !4159, file: !98, line: 542, type: !7)
!4205 = !DILocation(line: 542, column: 16, scope: !4159, inlinedAt: !4162)
!4206 = !DILocalVariable(name: "size", arg: 1, scope: !4150, file: !98, line: 662, type: !231)
!4207 = !DILocation(line: 662, column: 36, scope: !4150)
!4208 = !DILocalVariable(name: "flags", arg: 2, scope: !4150, file: !98, line: 662, type: !110)
!4209 = !DILocation(line: 662, column: 48, scope: !4150)
!4210 = !DILocation(line: 664, column: 17, scope: !4150)
!4211 = !DILocation(line: 664, column: 23, scope: !4150)
!4212 = !DILocation(line: 664, column: 29, scope: !4150)
!4213 = !DILocation(line: 540, column: 27, scope: !4160, inlinedAt: !4162)
!4214 = !DILocation(line: 540, column: 6, scope: !4160, inlinedAt: !4162)
!4215 = !DILocation(line: 540, column: 6, scope: !4161, inlinedAt: !4162)
!4216 = !DILocation(line: 544, column: 7, scope: !4189, inlinedAt: !4162)
!4217 = !DILocation(line: 544, column: 12, scope: !4189, inlinedAt: !4162)
!4218 = !DILocation(line: 544, column: 7, scope: !4159, inlinedAt: !4162)
!4219 = !DILocation(line: 545, column: 25, scope: !4189, inlinedAt: !4162)
!4220 = !DILocation(line: 545, column: 31, scope: !4189, inlinedAt: !4162)
!4221 = !DILocation(line: 480, column: 33, scope: !4187, inlinedAt: !4188)
!4222 = !DILocation(line: 480, column: 23, scope: !4187, inlinedAt: !4188)
!4223 = !DILocation(line: 481, column: 29, scope: !4187, inlinedAt: !4188)
!4224 = !DILocation(line: 481, column: 35, scope: !4187, inlinedAt: !4188)
!4225 = !DILocation(line: 481, column: 42, scope: !4187, inlinedAt: !4188)
!4226 = !DILocation(line: 474, column: 23, scope: !4182, inlinedAt: !4186)
!4227 = !DILocation(line: 474, column: 29, scope: !4182, inlinedAt: !4186)
!4228 = !DILocation(line: 474, column: 36, scope: !4182, inlinedAt: !4186)
!4229 = !DILocation(line: 474, column: 9, scope: !4182, inlinedAt: !4186)
!4230 = !DILocation(line: 545, column: 4, scope: !4189, inlinedAt: !4162)
!4231 = !DILocation(line: 547, column: 25, scope: !4159, inlinedAt: !4162)
!4232 = !DILocation(line: 348, column: 7, scope: !4233, inlinedAt: !4180)
!4233 = distinct !DILexicalBlock(scope: !4176, file: !98, line: 348, column: 6)
!4234 = !DILocation(line: 348, column: 6, scope: !4176, inlinedAt: !4180)
!4235 = !DILocation(line: 349, column: 3, scope: !4233, inlinedAt: !4180)
!4236 = !DILocation(line: 351, column: 6, scope: !4237, inlinedAt: !4180)
!4237 = distinct !DILexicalBlock(scope: !4176, file: !98, line: 351, column: 6)
!4238 = !DILocation(line: 351, column: 11, scope: !4237, inlinedAt: !4180)
!4239 = !DILocation(line: 351, column: 6, scope: !4176, inlinedAt: !4180)
!4240 = !DILocation(line: 352, column: 3, scope: !4237, inlinedAt: !4180)
!4241 = !DILocation(line: 354, column: 32, scope: !4242, inlinedAt: !4180)
!4242 = distinct !DILexicalBlock(scope: !4176, file: !98, line: 354, column: 6)
!4243 = !DILocation(line: 354, column: 37, scope: !4242, inlinedAt: !4180)
!4244 = !DILocation(line: 354, column: 42, scope: !4242, inlinedAt: !4180)
!4245 = !DILocation(line: 354, column: 45, scope: !4242, inlinedAt: !4180)
!4246 = !DILocation(line: 354, column: 50, scope: !4242, inlinedAt: !4180)
!4247 = !DILocation(line: 354, column: 6, scope: !4176, inlinedAt: !4180)
!4248 = !DILocation(line: 355, column: 3, scope: !4242, inlinedAt: !4180)
!4249 = !DILocation(line: 356, column: 32, scope: !4250, inlinedAt: !4180)
!4250 = distinct !DILexicalBlock(scope: !4176, file: !98, line: 356, column: 6)
!4251 = !DILocation(line: 356, column: 37, scope: !4250, inlinedAt: !4180)
!4252 = !DILocation(line: 356, column: 43, scope: !4250, inlinedAt: !4180)
!4253 = !DILocation(line: 356, column: 46, scope: !4250, inlinedAt: !4180)
!4254 = !DILocation(line: 356, column: 51, scope: !4250, inlinedAt: !4180)
!4255 = !DILocation(line: 356, column: 6, scope: !4176, inlinedAt: !4180)
!4256 = !DILocation(line: 357, column: 3, scope: !4250, inlinedAt: !4180)
!4257 = !DILocation(line: 358, column: 6, scope: !4258, inlinedAt: !4180)
!4258 = distinct !DILexicalBlock(scope: !4176, file: !98, line: 358, column: 6)
!4259 = !DILocation(line: 358, column: 11, scope: !4258, inlinedAt: !4180)
!4260 = !DILocation(line: 358, column: 6, scope: !4176, inlinedAt: !4180)
!4261 = !DILocation(line: 358, column: 26, scope: !4258, inlinedAt: !4180)
!4262 = !DILocation(line: 359, column: 6, scope: !4263, inlinedAt: !4180)
!4263 = distinct !DILexicalBlock(scope: !4176, file: !98, line: 359, column: 6)
!4264 = !DILocation(line: 359, column: 11, scope: !4263, inlinedAt: !4180)
!4265 = !DILocation(line: 359, column: 6, scope: !4176, inlinedAt: !4180)
!4266 = !DILocation(line: 359, column: 26, scope: !4263, inlinedAt: !4180)
!4267 = !DILocation(line: 360, column: 6, scope: !4268, inlinedAt: !4180)
!4268 = distinct !DILexicalBlock(scope: !4176, file: !98, line: 360, column: 6)
!4269 = !DILocation(line: 360, column: 11, scope: !4268, inlinedAt: !4180)
!4270 = !DILocation(line: 360, column: 6, scope: !4176, inlinedAt: !4180)
!4271 = !DILocation(line: 360, column: 26, scope: !4268, inlinedAt: !4180)
!4272 = !DILocation(line: 361, column: 6, scope: !4273, inlinedAt: !4180)
!4273 = distinct !DILexicalBlock(scope: !4176, file: !98, line: 361, column: 6)
!4274 = !DILocation(line: 361, column: 11, scope: !4273, inlinedAt: !4180)
!4275 = !DILocation(line: 361, column: 6, scope: !4176, inlinedAt: !4180)
!4276 = !DILocation(line: 361, column: 26, scope: !4273, inlinedAt: !4180)
!4277 = !DILocation(line: 362, column: 6, scope: !4278, inlinedAt: !4180)
!4278 = distinct !DILexicalBlock(scope: !4176, file: !98, line: 362, column: 6)
!4279 = !DILocation(line: 362, column: 11, scope: !4278, inlinedAt: !4180)
!4280 = !DILocation(line: 362, column: 6, scope: !4176, inlinedAt: !4180)
!4281 = !DILocation(line: 362, column: 26, scope: !4278, inlinedAt: !4180)
!4282 = !DILocation(line: 363, column: 6, scope: !4283, inlinedAt: !4180)
!4283 = distinct !DILexicalBlock(scope: !4176, file: !98, line: 363, column: 6)
!4284 = !DILocation(line: 363, column: 11, scope: !4283, inlinedAt: !4180)
!4285 = !DILocation(line: 363, column: 6, scope: !4176, inlinedAt: !4180)
!4286 = !DILocation(line: 363, column: 26, scope: !4283, inlinedAt: !4180)
!4287 = !DILocation(line: 364, column: 6, scope: !4288, inlinedAt: !4180)
!4288 = distinct !DILexicalBlock(scope: !4176, file: !98, line: 364, column: 6)
!4289 = !DILocation(line: 364, column: 11, scope: !4288, inlinedAt: !4180)
!4290 = !DILocation(line: 364, column: 6, scope: !4176, inlinedAt: !4180)
!4291 = !DILocation(line: 364, column: 26, scope: !4288, inlinedAt: !4180)
!4292 = !DILocation(line: 365, column: 6, scope: !4293, inlinedAt: !4180)
!4293 = distinct !DILexicalBlock(scope: !4176, file: !98, line: 365, column: 6)
!4294 = !DILocation(line: 365, column: 11, scope: !4293, inlinedAt: !4180)
!4295 = !DILocation(line: 365, column: 6, scope: !4176, inlinedAt: !4180)
!4296 = !DILocation(line: 365, column: 26, scope: !4293, inlinedAt: !4180)
!4297 = !DILocation(line: 366, column: 6, scope: !4298, inlinedAt: !4180)
!4298 = distinct !DILexicalBlock(scope: !4176, file: !98, line: 366, column: 6)
!4299 = !DILocation(line: 366, column: 11, scope: !4298, inlinedAt: !4180)
!4300 = !DILocation(line: 366, column: 6, scope: !4176, inlinedAt: !4180)
!4301 = !DILocation(line: 366, column: 26, scope: !4298, inlinedAt: !4180)
!4302 = !DILocation(line: 367, column: 6, scope: !4303, inlinedAt: !4180)
!4303 = distinct !DILexicalBlock(scope: !4176, file: !98, line: 367, column: 6)
!4304 = !DILocation(line: 367, column: 11, scope: !4303, inlinedAt: !4180)
!4305 = !DILocation(line: 367, column: 6, scope: !4176, inlinedAt: !4180)
!4306 = !DILocation(line: 367, column: 26, scope: !4303, inlinedAt: !4180)
!4307 = !DILocation(line: 368, column: 6, scope: !4308, inlinedAt: !4180)
!4308 = distinct !DILexicalBlock(scope: !4176, file: !98, line: 368, column: 6)
!4309 = !DILocation(line: 368, column: 11, scope: !4308, inlinedAt: !4180)
!4310 = !DILocation(line: 368, column: 6, scope: !4176, inlinedAt: !4180)
!4311 = !DILocation(line: 368, column: 26, scope: !4308, inlinedAt: !4180)
!4312 = !DILocation(line: 369, column: 6, scope: !4313, inlinedAt: !4180)
!4313 = distinct !DILexicalBlock(scope: !4176, file: !98, line: 369, column: 6)
!4314 = !DILocation(line: 369, column: 11, scope: !4313, inlinedAt: !4180)
!4315 = !DILocation(line: 369, column: 6, scope: !4176, inlinedAt: !4180)
!4316 = !DILocation(line: 369, column: 26, scope: !4313, inlinedAt: !4180)
!4317 = !DILocation(line: 370, column: 6, scope: !4318, inlinedAt: !4180)
!4318 = distinct !DILexicalBlock(scope: !4176, file: !98, line: 370, column: 6)
!4319 = !DILocation(line: 370, column: 11, scope: !4318, inlinedAt: !4180)
!4320 = !DILocation(line: 370, column: 6, scope: !4176, inlinedAt: !4180)
!4321 = !DILocation(line: 370, column: 26, scope: !4318, inlinedAt: !4180)
!4322 = !DILocation(line: 371, column: 6, scope: !4323, inlinedAt: !4180)
!4323 = distinct !DILexicalBlock(scope: !4176, file: !98, line: 371, column: 6)
!4324 = !DILocation(line: 371, column: 11, scope: !4323, inlinedAt: !4180)
!4325 = !DILocation(line: 371, column: 6, scope: !4176, inlinedAt: !4180)
!4326 = !DILocation(line: 371, column: 26, scope: !4323, inlinedAt: !4180)
!4327 = !DILocation(line: 372, column: 6, scope: !4328, inlinedAt: !4180)
!4328 = distinct !DILexicalBlock(scope: !4176, file: !98, line: 372, column: 6)
!4329 = !DILocation(line: 372, column: 11, scope: !4328, inlinedAt: !4180)
!4330 = !DILocation(line: 372, column: 6, scope: !4176, inlinedAt: !4180)
!4331 = !DILocation(line: 372, column: 26, scope: !4328, inlinedAt: !4180)
!4332 = !DILocation(line: 373, column: 6, scope: !4333, inlinedAt: !4180)
!4333 = distinct !DILexicalBlock(scope: !4176, file: !98, line: 373, column: 6)
!4334 = !DILocation(line: 373, column: 11, scope: !4333, inlinedAt: !4180)
!4335 = !DILocation(line: 373, column: 6, scope: !4176, inlinedAt: !4180)
!4336 = !DILocation(line: 373, column: 26, scope: !4333, inlinedAt: !4180)
!4337 = !DILocation(line: 374, column: 6, scope: !4338, inlinedAt: !4180)
!4338 = distinct !DILexicalBlock(scope: !4176, file: !98, line: 374, column: 6)
!4339 = !DILocation(line: 374, column: 11, scope: !4338, inlinedAt: !4180)
!4340 = !DILocation(line: 374, column: 6, scope: !4176, inlinedAt: !4180)
!4341 = !DILocation(line: 374, column: 26, scope: !4338, inlinedAt: !4180)
!4342 = !DILocation(line: 375, column: 6, scope: !4343, inlinedAt: !4180)
!4343 = distinct !DILexicalBlock(scope: !4176, file: !98, line: 375, column: 6)
!4344 = !DILocation(line: 375, column: 11, scope: !4343, inlinedAt: !4180)
!4345 = !DILocation(line: 375, column: 6, scope: !4176, inlinedAt: !4180)
!4346 = !DILocation(line: 375, column: 27, scope: !4343, inlinedAt: !4180)
!4347 = !DILocation(line: 376, column: 6, scope: !4348, inlinedAt: !4180)
!4348 = distinct !DILexicalBlock(scope: !4176, file: !98, line: 376, column: 6)
!4349 = !DILocation(line: 376, column: 11, scope: !4348, inlinedAt: !4180)
!4350 = !DILocation(line: 376, column: 6, scope: !4176, inlinedAt: !4180)
!4351 = !DILocation(line: 376, column: 32, scope: !4348, inlinedAt: !4180)
!4352 = !DILocation(line: 377, column: 6, scope: !4353, inlinedAt: !4180)
!4353 = distinct !DILexicalBlock(scope: !4176, file: !98, line: 377, column: 6)
!4354 = !DILocation(line: 377, column: 11, scope: !4353, inlinedAt: !4180)
!4355 = !DILocation(line: 377, column: 6, scope: !4176, inlinedAt: !4180)
!4356 = !DILocation(line: 377, column: 32, scope: !4353, inlinedAt: !4180)
!4357 = !DILocation(line: 378, column: 6, scope: !4358, inlinedAt: !4180)
!4358 = distinct !DILexicalBlock(scope: !4176, file: !98, line: 378, column: 6)
!4359 = !DILocation(line: 378, column: 11, scope: !4358, inlinedAt: !4180)
!4360 = !DILocation(line: 378, column: 6, scope: !4176, inlinedAt: !4180)
!4361 = !DILocation(line: 378, column: 32, scope: !4358, inlinedAt: !4180)
!4362 = !DILocation(line: 379, column: 6, scope: !4363, inlinedAt: !4180)
!4363 = distinct !DILexicalBlock(scope: !4176, file: !98, line: 379, column: 6)
!4364 = !DILocation(line: 379, column: 11, scope: !4363, inlinedAt: !4180)
!4365 = !DILocation(line: 379, column: 6, scope: !4176, inlinedAt: !4180)
!4366 = !DILocation(line: 379, column: 33, scope: !4363, inlinedAt: !4180)
!4367 = !DILocation(line: 380, column: 6, scope: !4368, inlinedAt: !4180)
!4368 = distinct !DILexicalBlock(scope: !4176, file: !98, line: 380, column: 6)
!4369 = !DILocation(line: 380, column: 11, scope: !4368, inlinedAt: !4180)
!4370 = !DILocation(line: 380, column: 6, scope: !4176, inlinedAt: !4180)
!4371 = !DILocation(line: 380, column: 33, scope: !4368, inlinedAt: !4180)
!4372 = !DILocation(line: 381, column: 6, scope: !4373, inlinedAt: !4180)
!4373 = distinct !DILexicalBlock(scope: !4176, file: !98, line: 381, column: 6)
!4374 = !DILocation(line: 381, column: 11, scope: !4373, inlinedAt: !4180)
!4375 = !DILocation(line: 381, column: 6, scope: !4176, inlinedAt: !4180)
!4376 = !DILocation(line: 381, column: 33, scope: !4373, inlinedAt: !4180)
!4377 = !DILocation(line: 382, column: 2, scope: !4378, inlinedAt: !4180)
!4378 = distinct !DILexicalBlock(scope: !4379, file: !98, line: 382, column: 2)
!4379 = distinct !DILexicalBlock(scope: !4176, file: !98, line: 382, column: 2)
!4380 = !{i32 -2142874082, i32 -2142874053, i32 -2142874007, i32 -2142873949, i32 -2142873895, i32 -2142873841, i32 -2142873786, i32 -2142873755}
!4381 = !DILocation(line: 382, column: 2, scope: !4382, inlinedAt: !4180)
!4382 = distinct !DILexicalBlock(scope: !4383, file: !98, line: 382, column: 2)
!4383 = distinct !DILexicalBlock(scope: !4379, file: !98, line: 382, column: 2)
!4384 = !{i32 -2142873312, i32 -2142873305, i32 -2142873251, i32 -2142873220, i32 -2142873190}
!4385 = !DILocation(line: 382, column: 2, scope: !4383, inlinedAt: !4180)
!4386 = !DILocation(line: 386, column: 1, scope: !4176, inlinedAt: !4180)
!4387 = !DILocation(line: 547, column: 9, scope: !4159, inlinedAt: !4162)
!4388 = !DILocation(line: 549, column: 8, scope: !4389, inlinedAt: !4162)
!4389 = distinct !DILexicalBlock(scope: !4159, file: !98, line: 549, column: 7)
!4390 = !DILocation(line: 549, column: 7, scope: !4159, inlinedAt: !4162)
!4391 = !DILocation(line: 550, column: 4, scope: !4389, inlinedAt: !4162)
!4392 = !DILocation(line: 553, column: 33, scope: !4159, inlinedAt: !4162)
!4393 = !DILocation(line: 325, column: 6, scope: !4394, inlinedAt: !4174)
!4394 = distinct !DILexicalBlock(scope: !4170, file: !98, line: 325, column: 6)
!4395 = !DILocation(line: 325, column: 6, scope: !4170, inlinedAt: !4174)
!4396 = !DILocation(line: 326, column: 3, scope: !4394, inlinedAt: !4174)
!4397 = !DILocation(line: 332, column: 9, scope: !4170, inlinedAt: !4174)
!4398 = !DILocation(line: 332, column: 15, scope: !4170, inlinedAt: !4174)
!4399 = !DILocation(line: 332, column: 2, scope: !4170, inlinedAt: !4174)
!4400 = !DILocation(line: 336, column: 1, scope: !4170, inlinedAt: !4174)
!4401 = !DILocation(line: 553, column: 5, scope: !4159, inlinedAt: !4162)
!4402 = !DILocation(line: 553, column: 41, scope: !4159, inlinedAt: !4162)
!4403 = !DILocation(line: 554, column: 5, scope: !4159, inlinedAt: !4162)
!4404 = !DILocation(line: 554, column: 12, scope: !4159, inlinedAt: !4162)
!4405 = !DILocation(line: 448, column: 31, scope: !4154, inlinedAt: !4158)
!4406 = !DILocation(line: 448, column: 34, scope: !4154, inlinedAt: !4158)
!4407 = !DILocation(line: 448, column: 14, scope: !4154, inlinedAt: !4158)
!4408 = !DILocation(line: 450, column: 22, scope: !4154, inlinedAt: !4158)
!4409 = !DILocation(line: 450, column: 25, scope: !4154, inlinedAt: !4158)
!4410 = !DILocation(line: 450, column: 30, scope: !4154, inlinedAt: !4158)
!4411 = !DILocation(line: 450, column: 36, scope: !4154, inlinedAt: !4158)
!4412 = !DILocation(line: 450, column: 8, scope: !4154, inlinedAt: !4158)
!4413 = !DILocation(line: 450, column: 6, scope: !4154, inlinedAt: !4158)
!4414 = !DILocation(line: 451, column: 9, scope: !4154, inlinedAt: !4158)
!4415 = !DILocation(line: 552, column: 3, scope: !4159, inlinedAt: !4162)
!4416 = !DILocation(line: 557, column: 19, scope: !4161, inlinedAt: !4162)
!4417 = !DILocation(line: 557, column: 25, scope: !4161, inlinedAt: !4162)
!4418 = !DILocation(line: 557, column: 9, scope: !4161, inlinedAt: !4162)
!4419 = !DILocation(line: 557, column: 2, scope: !4161, inlinedAt: !4162)
!4420 = !DILocation(line: 558, column: 1, scope: !4161, inlinedAt: !4162)
!4421 = !DILocation(line: 664, column: 2, scope: !4150)
!4422 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !4128, file: !4128, line: 39, type: !4129, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4423 = !DILocalVariable(name: "ptr", arg: 1, scope: !4422, file: !4128, line: 39, type: !2973)
!4424 = !DILocation(line: 39, column: 68, scope: !4422)
!4425 = !DILocation(line: 41, column: 9, scope: !4422)
!4426 = !DILocation(line: 41, column: 24, scope: !4422)
!4427 = !DILocation(line: 41, column: 27, scope: !4422)
!4428 = !DILocation(line: 41, column: 2, scope: !4422)
!4429 = distinct !DISubprogram(name: "watchdog_core_data_release", scope: !3, file: !3, line: 883, type: !3165, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4430 = !DILocalVariable(name: "dev", arg: 1, scope: !4429, file: !3, line: 883, type: !3142)
!4431 = !DILocation(line: 883, column: 55, scope: !4429)
!4432 = !DILocalVariable(name: "wd_data", scope: !4429, file: !3, line: 885, type: !114)
!4433 = !DILocation(line: 885, column: 29, scope: !4429)
!4434 = !DILocalVariable(name: "__mptr", scope: !4435, file: !3, line: 887, type: !112)
!4435 = distinct !DILexicalBlock(scope: !4429, file: !3, line: 887, column: 12)
!4436 = !DILocation(line: 887, column: 12, scope: !4435)
!4437 = !DILocation(line: 887, column: 12, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4435, file: !3, line: 887, column: 12)
!4439 = !DILocation(line: 887, column: 10, scope: !4429)
!4440 = !DILocation(line: 889, column: 8, scope: !4429)
!4441 = !DILocation(line: 889, column: 2, scope: !4429)
!4442 = !DILocation(line: 890, column: 1, scope: !4429)
!4443 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !60, file: !60, line: 660, type: !4444, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{null, !3142, !112}
!4446 = !DILocalVariable(name: "dev", arg: 1, scope: !4443, file: !60, line: 660, type: !3142)
!4447 = !DILocation(line: 660, column: 51, scope: !4443)
!4448 = !DILocalVariable(name: "data", arg: 2, scope: !4443, file: !60, line: 660, type: !112)
!4449 = !DILocation(line: 660, column: 62, scope: !4443)
!4450 = !DILocation(line: 662, column: 21, scope: !4443)
!4451 = !DILocation(line: 662, column: 2, scope: !4443)
!4452 = !DILocation(line: 662, column: 7, scope: !4443)
!4453 = !DILocation(line: 662, column: 19, scope: !4443)
!4454 = !DILocation(line: 663, column: 1, scope: !4443)
!4455 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4456, file: !4456, line: 33, type: !4457, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4456 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4457 = !DISubroutineType(types: !4458)
!4458 = !{null, !132}
!4459 = !DILocalVariable(name: "list", arg: 1, scope: !4455, file: !4456, line: 33, type: !132)
!4460 = !DILocation(line: 33, column: 53, scope: !4455)
!4461 = !DILocation(line: 35, column: 2, scope: !4455)
!4462 = !DILocation(line: 35, column: 2, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !4455, file: !4456, line: 35, column: 2)
!4464 = !DILocation(line: 35, column: 2, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4463, file: !4456, line: 35, column: 2)
!4466 = !DILocation(line: 35, column: 2, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4463, file: !4456, line: 35, column: 2)
!4468 = !DILocation(line: 36, column: 15, scope: !4455)
!4469 = !DILocation(line: 36, column: 2, scope: !4455)
!4470 = !DILocation(line: 36, column: 8, scope: !4455)
!4471 = !DILocation(line: 36, column: 13, scope: !4455)
!4472 = !DILocation(line: 37, column: 1, scope: !4455)
!4473 = distinct !DISubprogram(name: "watchdog_ping_work", scope: !3, file: !3, line: 231, type: !3581, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4474 = !DILocalVariable(name: "work", arg: 1, scope: !4473, file: !3, line: 231, type: !3583)
!4475 = !DILocation(line: 231, column: 53, scope: !4473)
!4476 = !DILocalVariable(name: "wd_data", scope: !4473, file: !3, line: 233, type: !114)
!4477 = !DILocation(line: 233, column: 29, scope: !4473)
!4478 = !DILocalVariable(name: "__mptr", scope: !4479, file: !3, line: 235, type: !112)
!4479 = distinct !DILexicalBlock(scope: !4473, file: !3, line: 235, column: 12)
!4480 = !DILocation(line: 235, column: 12, scope: !4479)
!4481 = !DILocation(line: 235, column: 12, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4479, file: !3, line: 235, column: 12)
!4483 = !DILocation(line: 235, column: 10, scope: !4473)
!4484 = !DILocation(line: 237, column: 14, scope: !4473)
!4485 = !DILocation(line: 237, column: 23, scope: !4473)
!4486 = !DILocation(line: 237, column: 2, scope: !4473)
!4487 = !DILocation(line: 238, column: 34, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4473, file: !3, line: 238, column: 6)
!4489 = !DILocation(line: 238, column: 6, scope: !4488)
!4490 = !DILocation(line: 238, column: 6, scope: !4473)
!4491 = !DILocation(line: 239, column: 19, scope: !4488)
!4492 = !DILocation(line: 239, column: 28, scope: !4488)
!4493 = !DILocation(line: 239, column: 3, scope: !4488)
!4494 = !DILocation(line: 240, column: 16, scope: !4473)
!4495 = !DILocation(line: 240, column: 25, scope: !4473)
!4496 = !DILocation(line: 240, column: 2, scope: !4473)
!4497 = !DILocation(line: 241, column: 1, scope: !4473)
!4498 = distinct !DISubprogram(name: "watchdog_timer_expired", scope: !3, file: !3, line: 243, type: !1137, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4499 = !DILocalVariable(name: "timer", arg: 1, scope: !4498, file: !3, line: 243, type: !1139)
!4500 = !DILocation(line: 243, column: 68, scope: !4498)
!4501 = !DILocalVariable(name: "wd_data", scope: !4498, file: !3, line: 245, type: !114)
!4502 = !DILocation(line: 245, column: 29, scope: !4498)
!4503 = !DILocalVariable(name: "__mptr", scope: !4504, file: !3, line: 247, type: !112)
!4504 = distinct !DILexicalBlock(scope: !4498, file: !3, line: 247, column: 12)
!4505 = !DILocation(line: 247, column: 12, scope: !4504)
!4506 = !DILocation(line: 247, column: 12, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4504, file: !3, line: 247, column: 12)
!4508 = !DILocation(line: 247, column: 10, scope: !4498)
!4509 = !DILocation(line: 249, column: 21, scope: !4498)
!4510 = !DILocation(line: 249, column: 40, scope: !4498)
!4511 = !DILocation(line: 249, column: 49, scope: !4498)
!4512 = !DILocation(line: 249, column: 2, scope: !4498)
!4513 = !DILocation(line: 250, column: 2, scope: !4498)
!4514 = distinct !DISubprogram(name: "watchdog_set_open_deadline", scope: !3, file: !3, line: 90, type: !4515, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4515 = !DISubroutineType(types: !4516)
!4516 = !{null, !114}
!4517 = !DILocalVariable(name: "data", arg: 1, scope: !4514, file: !3, line: 90, type: !114)
!4518 = !DILocation(line: 90, column: 67, scope: !4514)
!4519 = !DILocation(line: 92, column: 24, scope: !4514)
!4520 = !DILocation(line: 93, column: 3, scope: !4514)
!4521 = !DILocation(line: 93, column: 27, scope: !4514)
!4522 = !DILocation(line: 93, column: 17, scope: !4514)
!4523 = !DILocation(line: 93, column: 15, scope: !4514)
!4524 = !DILocation(line: 92, column: 2, scope: !4514)
!4525 = !DILocation(line: 92, column: 8, scope: !4514)
!4526 = !DILocation(line: 92, column: 22, scope: !4514)
!4527 = !DILocation(line: 94, column: 1, scope: !4514)
!4528 = distinct !DISubprogram(name: "watchdog_hw_running", scope: !3487, file: !3487, line: 135, type: !4529, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4529 = !DISubroutineType(types: !4530)
!4530 = !{!399, !3485}
!4531 = !DILocalVariable(name: "wdd", arg: 1, scope: !4528, file: !3487, line: 135, type: !3485)
!4532 = !DILocation(line: 135, column: 64, scope: !4528)
!4533 = !DILocation(line: 137, column: 36, scope: !4528)
!4534 = !DILocation(line: 137, column: 41, scope: !4528)
!4535 = !DILocation(line: 137, column: 9, scope: !4528)
!4536 = !DILocation(line: 137, column: 2, scope: !4528)
!4537 = distinct !DISubprogram(name: "__module_get", scope: !4538, file: !4538, line: 747, type: !4539, scopeLine: 748, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4538 = !DIFile(filename: "./include/linux/module.h", directory: "/home/lizy2001/genbc/linux")
!4539 = !DISubroutineType(types: !4540)
!4540 = !{null, !542}
!4541 = !DILocalVariable(name: "module", arg: 1, scope: !4537, file: !4538, line: 747, type: !542)
!4542 = !DILocation(line: 747, column: 48, scope: !4537)
!4543 = !DILocation(line: 749, column: 1, scope: !4537)
!4544 = distinct !DISubprogram(name: "hrtimer_start", scope: !14, file: !14, line: 419, type: !4545, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4545 = !DISubroutineType(types: !4546)
!4546 = !{null, !1139, !1132, !4547}
!4547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!4548 = !DILocalVariable(name: "timer", arg: 1, scope: !4544, file: !14, line: 419, type: !1139)
!4549 = !DILocation(line: 419, column: 50, scope: !4544)
!4550 = !DILocalVariable(name: "tim", arg: 2, scope: !4544, file: !14, line: 419, type: !1132)
!4551 = !DILocation(line: 419, column: 65, scope: !4544)
!4552 = !DILocalVariable(name: "mode", arg: 3, scope: !4544, file: !14, line: 420, type: !4547)
!4553 = !DILocation(line: 420, column: 30, scope: !4544)
!4554 = !DILocation(line: 422, column: 25, scope: !4544)
!4555 = !DILocation(line: 422, column: 32, scope: !4544)
!4556 = !DILocation(line: 422, column: 40, scope: !4544)
!4557 = !DILocation(line: 422, column: 2, scope: !4544)
!4558 = !DILocation(line: 423, column: 1, scope: !4544)
!4559 = distinct !DISubprogram(name: "get_order", scope: !4560, file: !4560, line: 29, type: !4561, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4560 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4561 = !DISubroutineType(types: !4562)
!4562 = !{!168, !113}
!4563 = !DILocalVariable(name: "x", arg: 1, scope: !4564, file: !4565, line: 366, type: !331)
!4564 = distinct !DISubprogram(name: "fls64", scope: !4565, file: !4565, line: 366, type: !4566, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4565 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4566 = !DISubroutineType(types: !4567)
!4567 = !{!168, !331}
!4568 = !DILocation(line: 366, column: 40, scope: !4564, inlinedAt: !4569)
!4569 = distinct !DILocation(line: 46, column: 9, scope: !4559)
!4570 = !DILocalVariable(name: "bitpos", scope: !4564, file: !4565, line: 368, type: !168)
!4571 = !DILocation(line: 368, column: 6, scope: !4564, inlinedAt: !4569)
!4572 = !DILocalVariable(name: "size", arg: 1, scope: !4559, file: !4560, line: 29, type: !113)
!4573 = !DILocation(line: 29, column: 63, scope: !4559)
!4574 = !DILocation(line: 31, column: 27, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4559, file: !4560, line: 31, column: 6)
!4576 = !DILocation(line: 31, column: 6, scope: !4575)
!4577 = !DILocation(line: 31, column: 6, scope: !4559)
!4578 = !DILocation(line: 32, column: 8, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4580, file: !4560, line: 32, column: 7)
!4580 = distinct !DILexicalBlock(scope: !4575, file: !4560, line: 31, column: 34)
!4581 = !DILocation(line: 32, column: 7, scope: !4580)
!4582 = !DILocation(line: 33, column: 4, scope: !4579)
!4583 = !DILocation(line: 35, column: 7, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4580, file: !4560, line: 35, column: 7)
!4585 = !DILocation(line: 35, column: 12, scope: !4584)
!4586 = !DILocation(line: 35, column: 7, scope: !4580)
!4587 = !DILocation(line: 36, column: 4, scope: !4584)
!4588 = !DILocation(line: 38, column: 10, scope: !4580)
!4589 = !DILocation(line: 38, column: 28, scope: !4580)
!4590 = !DILocation(line: 38, column: 41, scope: !4580)
!4591 = !DILocation(line: 38, column: 3, scope: !4580)
!4592 = !DILocation(line: 41, column: 6, scope: !4559)
!4593 = !DILocation(line: 42, column: 7, scope: !4559)
!4594 = !DILocation(line: 46, column: 15, scope: !4559)
!4595 = !DILocation(line: 374, column: 2, scope: !4564, inlinedAt: !4569)
!4596 = !DILocation(line: 376, column: 14, scope: !4564, inlinedAt: !4569)
!4597 = !{i32 312106}
!4598 = !DILocation(line: 377, column: 9, scope: !4564, inlinedAt: !4569)
!4599 = !DILocation(line: 377, column: 16, scope: !4564, inlinedAt: !4569)
!4600 = !DILocation(line: 46, column: 2, scope: !4559)
!4601 = !DILocation(line: 48, column: 1, scope: !4559)
!4602 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4603, file: !4603, line: 30, type: !4604, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4603 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!168, !330}
!4606 = !DILocation(line: 366, column: 40, scope: !4564, inlinedAt: !4607)
!4607 = distinct !DILocation(line: 32, column: 9, scope: !4602)
!4608 = !DILocation(line: 368, column: 6, scope: !4564, inlinedAt: !4607)
!4609 = !DILocalVariable(name: "n", arg: 1, scope: !4602, file: !4603, line: 30, type: !330)
!4610 = !DILocation(line: 30, column: 21, scope: !4602)
!4611 = !DILocation(line: 32, column: 15, scope: !4602)
!4612 = !DILocation(line: 374, column: 2, scope: !4564, inlinedAt: !4607)
!4613 = !DILocation(line: 376, column: 14, scope: !4564, inlinedAt: !4607)
!4614 = !DILocation(line: 377, column: 9, scope: !4564, inlinedAt: !4607)
!4615 = !DILocation(line: 377, column: 16, scope: !4564, inlinedAt: !4607)
!4616 = !DILocation(line: 32, column: 18, scope: !4602)
!4617 = !DILocation(line: 32, column: 2, scope: !4602)
!4618 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4619, file: !4619, line: 137, type: !4620, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4619 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!112, !847, !2973, !231, !110}
!4622 = !DILocalVariable(name: "s", arg: 1, scope: !4618, file: !4619, line: 137, type: !847)
!4623 = !DILocation(line: 137, column: 54, scope: !4618)
!4624 = !DILocalVariable(name: "object", arg: 2, scope: !4618, file: !4619, line: 137, type: !2973)
!4625 = !DILocation(line: 137, column: 69, scope: !4618)
!4626 = !DILocalVariable(name: "size", arg: 3, scope: !4618, file: !4619, line: 138, type: !231)
!4627 = !DILocation(line: 138, column: 12, scope: !4618)
!4628 = !DILocalVariable(name: "flags", arg: 4, scope: !4618, file: !4619, line: 138, type: !110)
!4629 = !DILocation(line: 138, column: 24, scope: !4618)
!4630 = !DILocation(line: 140, column: 17, scope: !4618)
!4631 = !DILocation(line: 140, column: 2, scope: !4618)
!4632 = distinct !DISubprogram(name: "watchdog_worker_should_ping", scope: !3, file: !3, line: 218, type: !4633, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!399, !114}
!4635 = !DILocalVariable(name: "wd_data", arg: 1, scope: !4632, file: !3, line: 218, type: !114)
!4636 = !DILocation(line: 218, column: 68, scope: !4632)
!4637 = !DILocalVariable(name: "wdd", scope: !4632, file: !3, line: 220, type: !3485)
!4638 = !DILocation(line: 220, column: 26, scope: !4632)
!4639 = !DILocation(line: 220, column: 32, scope: !4632)
!4640 = !DILocation(line: 220, column: 41, scope: !4632)
!4641 = !DILocation(line: 222, column: 7, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4632, file: !3, line: 222, column: 6)
!4643 = !DILocation(line: 222, column: 6, scope: !4632)
!4644 = !DILocation(line: 223, column: 3, scope: !4642)
!4645 = !DILocation(line: 225, column: 22, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4632, file: !3, line: 225, column: 6)
!4647 = !DILocation(line: 225, column: 6, scope: !4646)
!4648 = !DILocation(line: 225, column: 6, scope: !4632)
!4649 = !DILocation(line: 226, column: 3, scope: !4646)
!4650 = !DILocation(line: 228, column: 29, scope: !4632)
!4651 = !DILocation(line: 228, column: 9, scope: !4632)
!4652 = !DILocation(line: 228, column: 34, scope: !4632)
!4653 = !DILocation(line: 228, column: 66, scope: !4632)
!4654 = !DILocation(line: 228, column: 38, scope: !4632)
!4655 = !DILocation(line: 228, column: 37, scope: !4632)
!4656 = !DILocation(line: 0, scope: !4632)
!4657 = !DILocation(line: 228, column: 2, scope: !4632)
!4658 = !DILocation(line: 229, column: 1, scope: !4632)
!4659 = distinct !DISubprogram(name: "watchdog_active", scope: !3487, file: !3487, line: 126, type: !4529, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4660 = !DILocalVariable(name: "wdd", arg: 1, scope: !4659, file: !3487, line: 126, type: !3485)
!4661 = !DILocation(line: 126, column: 60, scope: !4659)
!4662 = !DILocation(line: 128, column: 32, scope: !4659)
!4663 = !DILocation(line: 128, column: 37, scope: !4659)
!4664 = !DILocation(line: 128, column: 9, scope: !4659)
!4665 = !DILocation(line: 128, column: 2, scope: !4659)
!4666 = distinct !DISubprogram(name: "watchdog_past_open_deadline", scope: !3, file: !3, line: 85, type: !4633, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4667 = !DILocalVariable(name: "data", arg: 1, scope: !4666, file: !3, line: 85, type: !114)
!4668 = !DILocation(line: 85, column: 68, scope: !4666)
!4669 = !DILocation(line: 87, column: 21, scope: !4666)
!4670 = !DILocation(line: 87, column: 34, scope: !4666)
!4671 = !DILocation(line: 87, column: 40, scope: !4666)
!4672 = !DILocation(line: 87, column: 9, scope: !4666)
!4673 = !DILocation(line: 87, column: 2, scope: !4666)
!4674 = distinct !DISubprogram(name: "test_bit", scope: !4675, file: !4675, line: 132, type: !4676, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4675 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!399, !219, !4678}
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4680)
!4680 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !113)
!4681 = !DILocalVariable(name: "nr", arg: 1, scope: !4682, file: !4565, line: 210, type: !219)
!4682 = distinct !DISubprogram(name: "variable_test_bit", scope: !4565, file: !4565, line: 210, type: !4676, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4683 = !DILocation(line: 210, column: 52, scope: !4682, inlinedAt: !4684)
!4684 = distinct !DILocation(line: 135, column: 9, scope: !4674)
!4685 = !DILocalVariable(name: "addr", arg: 2, scope: !4682, file: !4565, line: 210, type: !4678)
!4686 = !DILocation(line: 210, column: 86, scope: !4682, inlinedAt: !4684)
!4687 = !DILocalVariable(name: "oldbit", scope: !4682, file: !4565, line: 212, type: !399)
!4688 = !DILocation(line: 212, column: 7, scope: !4682, inlinedAt: !4684)
!4689 = !DILocalVariable(name: "nr", arg: 1, scope: !4690, file: !4565, line: 204, type: !219)
!4690 = distinct !DISubprogram(name: "constant_test_bit", scope: !4565, file: !4565, line: 204, type: !4676, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4691 = !DILocation(line: 204, column: 52, scope: !4690, inlinedAt: !4692)
!4692 = distinct !DILocation(line: 135, column: 9, scope: !4674)
!4693 = !DILocalVariable(name: "addr", arg: 2, scope: !4690, file: !4565, line: 204, type: !4678)
!4694 = !DILocation(line: 204, column: 86, scope: !4690, inlinedAt: !4692)
!4695 = !DILocalVariable(name: "v", arg: 1, scope: !4696, file: !4697, line: 69, type: !4700)
!4696 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4697, file: !4697, line: 69, type: !4698, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4697 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4698 = !DISubroutineType(types: !4699)
!4699 = !{null, !4700, !231}
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4702)
!4702 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4703 = !DILocation(line: 69, column: 73, scope: !4696, inlinedAt: !4704)
!4704 = distinct !DILocation(line: 134, column: 2, scope: !4674)
!4705 = !DILocalVariable(name: "size", arg: 2, scope: !4696, file: !4697, line: 69, type: !231)
!4706 = !DILocation(line: 69, column: 83, scope: !4696, inlinedAt: !4704)
!4707 = !DILocalVariable(name: "nr", arg: 1, scope: !4674, file: !4675, line: 132, type: !219)
!4708 = !DILocation(line: 132, column: 34, scope: !4674)
!4709 = !DILocalVariable(name: "addr", arg: 2, scope: !4674, file: !4675, line: 132, type: !4678)
!4710 = !DILocation(line: 132, column: 68, scope: !4674)
!4711 = !DILocation(line: 134, column: 25, scope: !4674)
!4712 = !DILocation(line: 134, column: 32, scope: !4674)
!4713 = !DILocation(line: 134, column: 30, scope: !4674)
!4714 = !DILocation(line: 71, column: 19, scope: !4696, inlinedAt: !4704)
!4715 = !DILocation(line: 71, column: 22, scope: !4696, inlinedAt: !4704)
!4716 = !DILocation(line: 71, column: 2, scope: !4696, inlinedAt: !4704)
!4717 = !DILocation(line: 72, column: 2, scope: !4696, inlinedAt: !4704)
!4718 = !DILocation(line: 135, column: 9, scope: !4674)
!4719 = !DILocation(line: 206, column: 19, scope: !4690, inlinedAt: !4692)
!4720 = !DILocation(line: 206, column: 22, scope: !4690, inlinedAt: !4692)
!4721 = !DILocation(line: 206, column: 15, scope: !4690, inlinedAt: !4692)
!4722 = !DILocation(line: 207, column: 4, scope: !4690, inlinedAt: !4692)
!4723 = !DILocation(line: 207, column: 9, scope: !4690, inlinedAt: !4692)
!4724 = !DILocation(line: 207, column: 12, scope: !4690, inlinedAt: !4692)
!4725 = !DILocation(line: 206, column: 44, scope: !4690, inlinedAt: !4692)
!4726 = !DILocation(line: 207, column: 37, scope: !4690, inlinedAt: !4692)
!4727 = !DILocation(line: 217, column: 33, scope: !4682, inlinedAt: !4684)
!4728 = !DILocation(line: 217, column: 46, scope: !4682, inlinedAt: !4684)
!4729 = !DILocation(line: 214, column: 2, scope: !4682, inlinedAt: !4684)
!4730 = !{i32 -2147130867, i32 -2147130807}
!4731 = !DILocation(line: 219, column: 9, scope: !4682, inlinedAt: !4684)
!4732 = !DILocation(line: 135, column: 2, scope: !4674)
!4733 = distinct !DISubprogram(name: "kasan_check_read", scope: !4734, file: !4734, line: 34, type: !4735, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4734 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4735 = !DISubroutineType(types: !4736)
!4736 = !{!399, !4700, !7}
!4737 = !DILocalVariable(name: "p", arg: 1, scope: !4733, file: !4734, line: 34, type: !4700)
!4738 = !DILocation(line: 34, column: 58, scope: !4733)
!4739 = !DILocalVariable(name: "size", arg: 2, scope: !4733, file: !4734, line: 34, type: !7)
!4740 = !DILocation(line: 34, column: 74, scope: !4733)
!4741 = !DILocation(line: 36, column: 2, scope: !4733)
!4742 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4743, file: !4743, line: 178, type: !4744, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4743 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4744 = !DISubroutineType(types: !4745)
!4745 = !{null, !4700, !231, !168}
!4746 = !DILocalVariable(name: "ptr", arg: 1, scope: !4742, file: !4743, line: 178, type: !4700)
!4747 = !DILocation(line: 178, column: 60, scope: !4742)
!4748 = !DILocalVariable(name: "size", arg: 2, scope: !4742, file: !4743, line: 178, type: !231)
!4749 = !DILocation(line: 178, column: 72, scope: !4742)
!4750 = !DILocalVariable(name: "type", arg: 3, scope: !4742, file: !4743, line: 179, type: !168)
!4751 = !DILocation(line: 179, column: 15, scope: !4742)
!4752 = !DILocation(line: 179, column: 23, scope: !4742)
!4753 = distinct !DISubprogram(name: "ktime_after", scope: !1133, file: !1133, line: 111, type: !4754, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{!399, !4756, !4756}
!4756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1132)
!4757 = !DILocalVariable(name: "cmp1", arg: 1, scope: !4753, file: !1133, line: 111, type: !4756)
!4758 = !DILocation(line: 111, column: 46, scope: !4753)
!4759 = !DILocalVariable(name: "cmp2", arg: 2, scope: !4753, file: !1133, line: 111, type: !4756)
!4760 = !DILocation(line: 111, column: 66, scope: !4753)
!4761 = !DILocation(line: 113, column: 23, scope: !4753)
!4762 = !DILocation(line: 113, column: 29, scope: !4753)
!4763 = !DILocation(line: 113, column: 9, scope: !4753)
!4764 = !DILocation(line: 113, column: 35, scope: !4753)
!4765 = !DILocation(line: 113, column: 2, scope: !4753)
!4766 = distinct !DISubprogram(name: "ktime_compare", scope: !1133, file: !1133, line: 95, type: !4767, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4767 = !DISubroutineType(types: !4768)
!4768 = !{!168, !4756, !4756}
!4769 = !DILocalVariable(name: "cmp1", arg: 1, scope: !4766, file: !1133, line: 95, type: !4756)
!4770 = !DILocation(line: 95, column: 47, scope: !4766)
!4771 = !DILocalVariable(name: "cmp2", arg: 2, scope: !4766, file: !1133, line: 95, type: !4756)
!4772 = !DILocation(line: 95, column: 67, scope: !4766)
!4773 = !DILocation(line: 97, column: 6, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4766, file: !1133, line: 97, column: 6)
!4775 = !DILocation(line: 97, column: 13, scope: !4774)
!4776 = !DILocation(line: 97, column: 11, scope: !4774)
!4777 = !DILocation(line: 97, column: 6, scope: !4766)
!4778 = !DILocation(line: 98, column: 3, scope: !4774)
!4779 = !DILocation(line: 99, column: 6, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4766, file: !1133, line: 99, column: 6)
!4781 = !DILocation(line: 99, column: 13, scope: !4780)
!4782 = !DILocation(line: 99, column: 11, scope: !4780)
!4783 = !DILocation(line: 99, column: 6, scope: !4766)
!4784 = !DILocation(line: 100, column: 3, scope: !4780)
!4785 = !DILocation(line: 101, column: 2, scope: !4766)
!4786 = !DILocation(line: 102, column: 1, scope: !4766)
!4787 = distinct !DISubprogram(name: "watchdog_write", scope: !3, file: !3, line: 661, type: !2638, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4788 = !DILocalVariable(name: "file", arg: 1, scope: !4787, file: !3, line: 661, type: !261)
!4789 = !DILocation(line: 661, column: 44, scope: !4787)
!4790 = !DILocalVariable(name: "data", arg: 2, scope: !4787, file: !3, line: 661, type: !125)
!4791 = !DILocation(line: 661, column: 69, scope: !4787)
!4792 = !DILocalVariable(name: "len", arg: 3, scope: !4787, file: !3, line: 662, type: !231)
!4793 = !DILocation(line: 662, column: 14, scope: !4787)
!4794 = !DILocalVariable(name: "ppos", arg: 4, scope: !4787, file: !3, line: 662, type: !2635)
!4795 = !DILocation(line: 662, column: 27, scope: !4787)
!4796 = !DILocalVariable(name: "wd_data", scope: !4787, file: !3, line: 664, type: !114)
!4797 = !DILocation(line: 664, column: 29, scope: !4787)
!4798 = !DILocation(line: 664, column: 39, scope: !4787)
!4799 = !DILocation(line: 664, column: 45, scope: !4787)
!4800 = !DILocalVariable(name: "wdd", scope: !4787, file: !3, line: 665, type: !3485)
!4801 = !DILocation(line: 665, column: 26, scope: !4787)
!4802 = !DILocalVariable(name: "err", scope: !4787, file: !3, line: 666, type: !168)
!4803 = !DILocation(line: 666, column: 6, scope: !4787)
!4804 = !DILocalVariable(name: "i", scope: !4787, file: !3, line: 667, type: !231)
!4805 = !DILocation(line: 667, column: 9, scope: !4787)
!4806 = !DILocalVariable(name: "c", scope: !4787, file: !3, line: 668, type: !127)
!4807 = !DILocation(line: 668, column: 7, scope: !4787)
!4808 = !DILocation(line: 670, column: 6, scope: !4809)
!4809 = distinct !DILexicalBlock(scope: !4787, file: !3, line: 670, column: 6)
!4810 = !DILocation(line: 670, column: 10, scope: !4809)
!4811 = !DILocation(line: 670, column: 6, scope: !4787)
!4812 = !DILocation(line: 671, column: 3, scope: !4809)
!4813 = !DILocation(line: 677, column: 34, scope: !4787)
!4814 = !DILocation(line: 677, column: 43, scope: !4787)
!4815 = !DILocation(line: 677, column: 2, scope: !4787)
!4816 = !DILocation(line: 680, column: 9, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4787, file: !3, line: 680, column: 2)
!4818 = !DILocation(line: 680, column: 7, scope: !4817)
!4819 = !DILocation(line: 680, column: 14, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4817, file: !3, line: 680, column: 2)
!4821 = !DILocation(line: 680, column: 19, scope: !4820)
!4822 = !DILocation(line: 680, column: 16, scope: !4820)
!4823 = !DILocation(line: 680, column: 2, scope: !4817)
!4824 = !DILocation(line: 681, column: 7, scope: !4825)
!4825 = distinct !DILexicalBlock(scope: !4826, file: !3, line: 681, column: 7)
!4826 = distinct !DILexicalBlock(scope: !4827, file: !3, line: 681, column: 7)
!4827 = distinct !DILexicalBlock(scope: !4820, file: !3, line: 680, column: 29)
!4828 = !DILocalVariable(name: "__ret_gu", scope: !4829, file: !3, line: 681, type: !168)
!4829 = distinct !DILexicalBlock(scope: !4825, file: !3, line: 681, column: 7)
!4830 = !DILocation(line: 681, column: 7, scope: !4829)
!4831 = !DILocalVariable(name: "__val_gu", scope: !4829, file: !3, line: 681, type: !336)
!4832 = !{i32 -2142839769}
!4833 = !DILocation(line: 681, column: 7, scope: !4826)
!4834 = !DILocation(line: 681, column: 7, scope: !4827)
!4835 = !DILocation(line: 682, column: 4, scope: !4826)
!4836 = !DILocation(line: 683, column: 7, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4827, file: !3, line: 683, column: 7)
!4838 = !DILocation(line: 683, column: 9, scope: !4837)
!4839 = !DILocation(line: 683, column: 7, scope: !4827)
!4840 = !DILocation(line: 684, column: 34, scope: !4837)
!4841 = !DILocation(line: 684, column: 43, scope: !4837)
!4842 = !DILocation(line: 684, column: 4, scope: !4837)
!4843 = !DILocation(line: 685, column: 2, scope: !4827)
!4844 = !DILocation(line: 680, column: 25, scope: !4820)
!4845 = !DILocation(line: 680, column: 2, scope: !4820)
!4846 = distinct !{!4846, !4823, !4847}
!4847 = !DILocation(line: 685, column: 2, scope: !4817)
!4848 = !DILocation(line: 689, column: 6, scope: !4787)
!4849 = !DILocation(line: 690, column: 14, scope: !4787)
!4850 = !DILocation(line: 690, column: 23, scope: !4787)
!4851 = !DILocation(line: 690, column: 2, scope: !4787)
!4852 = !DILocation(line: 691, column: 8, scope: !4787)
!4853 = !DILocation(line: 691, column: 17, scope: !4787)
!4854 = !DILocation(line: 691, column: 6, scope: !4787)
!4855 = !DILocation(line: 692, column: 6, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4787, file: !3, line: 692, column: 6)
!4857 = !DILocation(line: 692, column: 6, scope: !4787)
!4858 = !DILocation(line: 693, column: 23, scope: !4856)
!4859 = !DILocation(line: 693, column: 9, scope: !4856)
!4860 = !DILocation(line: 693, column: 7, scope: !4856)
!4861 = !DILocation(line: 693, column: 3, scope: !4856)
!4862 = !DILocation(line: 694, column: 16, scope: !4787)
!4863 = !DILocation(line: 694, column: 25, scope: !4787)
!4864 = !DILocation(line: 694, column: 2, scope: !4787)
!4865 = !DILocation(line: 696, column: 6, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4787, file: !3, line: 696, column: 6)
!4867 = !DILocation(line: 696, column: 10, scope: !4866)
!4868 = !DILocation(line: 696, column: 6, scope: !4787)
!4869 = !DILocation(line: 697, column: 10, scope: !4866)
!4870 = !DILocation(line: 697, column: 3, scope: !4866)
!4871 = !DILocation(line: 699, column: 9, scope: !4787)
!4872 = !DILocation(line: 699, column: 2, scope: !4787)
!4873 = !DILocation(line: 700, column: 1, scope: !4787)
!4874 = distinct !DISubprogram(name: "watchdog_ioctl", scope: !3, file: !3, line: 712, type: !2670, scopeLine: 714, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4875 = !DILocalVariable(name: "addr", arg: 1, scope: !4876, file: !4877, line: 138, type: !2973)
!4876 = distinct !DISubprogram(name: "check_copy_size", scope: !4877, file: !4877, line: 138, type: !4878, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4877 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!4878 = !DISubroutineType(types: !4879)
!4879 = !{!399, !2973, !231, !399}
!4880 = !DILocation(line: 138, column: 29, scope: !4876, inlinedAt: !4881)
!4881 = distinct !DILocation(line: 199, column: 6, scope: !4882, inlinedAt: !4887)
!4882 = distinct !DILexicalBlock(scope: !4884, file: !4883, line: 199, column: 6)
!4883 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/lizy2001/genbc/linux")
!4884 = distinct !DISubprogram(name: "copy_to_user", scope: !4883, file: !4883, line: 197, type: !4885, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!4885 = !DISubroutineType(types: !4886)
!4886 = !{!113, !112, !2973, !113}
!4887 = distinct !DILocation(line: 736, column: 9, scope: !4888)
!4888 = distinct !DILexicalBlock(scope: !4874, file: !3, line: 734, column: 15)
!4889 = !DILocalVariable(name: "bytes", arg: 2, scope: !4876, file: !4877, line: 138, type: !231)
!4890 = !DILocation(line: 138, column: 42, scope: !4876, inlinedAt: !4881)
!4891 = !DILocalVariable(name: "is_source", arg: 3, scope: !4876, file: !4877, line: 138, type: !399)
!4892 = !DILocation(line: 138, column: 54, scope: !4876, inlinedAt: !4881)
!4893 = !DILocalVariable(name: "sz", scope: !4876, file: !4877, line: 140, type: !168)
!4894 = !DILocation(line: 140, column: 6, scope: !4876, inlinedAt: !4881)
!4895 = !DILocalVariable(name: "__ret_warn_on", scope: !4896, file: !4877, line: 150, type: !168)
!4896 = distinct !DILexicalBlock(scope: !4897, file: !4877, line: 150, column: 6)
!4897 = distinct !DILexicalBlock(scope: !4876, file: !4877, line: 150, column: 6)
!4898 = !DILocation(line: 150, column: 6, scope: !4896, inlinedAt: !4881)
!4899 = !DILocalVariable(name: "to", arg: 1, scope: !4884, file: !4883, line: 197, type: !112)
!4900 = !DILocation(line: 197, column: 27, scope: !4884, inlinedAt: !4887)
!4901 = !DILocalVariable(name: "from", arg: 2, scope: !4884, file: !4883, line: 197, type: !2973)
!4902 = !DILocation(line: 197, column: 43, scope: !4884, inlinedAt: !4887)
!4903 = !DILocalVariable(name: "n", arg: 3, scope: !4884, file: !4883, line: 197, type: !113)
!4904 = !DILocation(line: 197, column: 63, scope: !4884, inlinedAt: !4887)
!4905 = !DILocalVariable(name: "file", arg: 1, scope: !4874, file: !3, line: 712, type: !261)
!4906 = !DILocation(line: 712, column: 41, scope: !4874)
!4907 = !DILocalVariable(name: "cmd", arg: 2, scope: !4874, file: !3, line: 712, type: !7)
!4908 = !DILocation(line: 712, column: 60, scope: !4874)
!4909 = !DILocalVariable(name: "arg", arg: 3, scope: !4874, file: !3, line: 713, type: !113)
!4910 = !DILocation(line: 713, column: 22, scope: !4874)
!4911 = !DILocalVariable(name: "wd_data", scope: !4874, file: !3, line: 715, type: !114)
!4912 = !DILocation(line: 715, column: 29, scope: !4874)
!4913 = !DILocation(line: 715, column: 39, scope: !4874)
!4914 = !DILocation(line: 715, column: 45, scope: !4874)
!4915 = !DILocalVariable(name: "argp", scope: !4874, file: !3, line: 716, type: !112)
!4916 = !DILocation(line: 716, column: 15, scope: !4874)
!4917 = !DILocation(line: 716, column: 37, scope: !4874)
!4918 = !DILocation(line: 716, column: 22, scope: !4874)
!4919 = !DILocalVariable(name: "wdd", scope: !4874, file: !3, line: 717, type: !3485)
!4920 = !DILocation(line: 717, column: 26, scope: !4874)
!4921 = !DILocalVariable(name: "p", scope: !4874, file: !3, line: 718, type: !617)
!4922 = !DILocation(line: 718, column: 14, scope: !4874)
!4923 = !DILocation(line: 718, column: 18, scope: !4874)
!4924 = !DILocalVariable(name: "val", scope: !4874, file: !3, line: 719, type: !7)
!4925 = !DILocation(line: 719, column: 15, scope: !4874)
!4926 = !DILocalVariable(name: "err", scope: !4874, file: !3, line: 720, type: !168)
!4927 = !DILocation(line: 720, column: 6, scope: !4874)
!4928 = !DILocation(line: 722, column: 14, scope: !4874)
!4929 = !DILocation(line: 722, column: 23, scope: !4874)
!4930 = !DILocation(line: 722, column: 2, scope: !4874)
!4931 = !DILocation(line: 724, column: 8, scope: !4874)
!4932 = !DILocation(line: 724, column: 17, scope: !4874)
!4933 = !DILocation(line: 724, column: 6, scope: !4874)
!4934 = !DILocation(line: 725, column: 7, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !4874, file: !3, line: 725, column: 6)
!4936 = !DILocation(line: 725, column: 6, scope: !4874)
!4937 = !DILocation(line: 726, column: 7, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4935, file: !3, line: 725, column: 12)
!4939 = !DILocation(line: 727, column: 3, scope: !4938)
!4940 = !DILocation(line: 730, column: 26, scope: !4874)
!4941 = !DILocation(line: 730, column: 31, scope: !4874)
!4942 = !DILocation(line: 730, column: 36, scope: !4874)
!4943 = !DILocation(line: 730, column: 8, scope: !4874)
!4944 = !DILocation(line: 730, column: 6, scope: !4874)
!4945 = !DILocation(line: 731, column: 6, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4874, file: !3, line: 731, column: 6)
!4947 = !DILocation(line: 731, column: 10, scope: !4946)
!4948 = !DILocation(line: 731, column: 6, scope: !4874)
!4949 = !DILocation(line: 732, column: 3, scope: !4946)
!4950 = !DILocation(line: 734, column: 10, scope: !4874)
!4951 = !DILocation(line: 734, column: 2, scope: !4874)
!4952 = !DILocation(line: 736, column: 22, scope: !4888)
!4953 = !DILocation(line: 736, column: 28, scope: !4888)
!4954 = !DILocation(line: 736, column: 33, scope: !4888)
!4955 = !DILocation(line: 199, column: 6, scope: !4882, inlinedAt: !4887)
!4956 = !DILocation(line: 141, column: 6, scope: !4957, inlinedAt: !4881)
!4957 = distinct !DILexicalBlock(scope: !4876, file: !4877, line: 141, column: 6)
!4958 = !DILocation(line: 0, scope: !4957, inlinedAt: !4881)
!4959 = !DILocation(line: 141, column: 6, scope: !4876, inlinedAt: !4881)
!4960 = !DILocation(line: 142, column: 29, scope: !4961, inlinedAt: !4881)
!4961 = distinct !DILexicalBlock(scope: !4962, file: !4877, line: 142, column: 7)
!4962 = distinct !DILexicalBlock(scope: !4957, file: !4877, line: 141, column: 39)
!4963 = !DILocation(line: 142, column: 8, scope: !4961, inlinedAt: !4881)
!4964 = !DILocation(line: 142, column: 7, scope: !4962, inlinedAt: !4881)
!4965 = !DILocation(line: 143, column: 18, scope: !4961, inlinedAt: !4881)
!4966 = !DILocation(line: 143, column: 22, scope: !4961, inlinedAt: !4881)
!4967 = !DILocation(line: 143, column: 4, scope: !4961, inlinedAt: !4881)
!4968 = !DILocation(line: 144, column: 12, scope: !4969, inlinedAt: !4881)
!4969 = distinct !DILexicalBlock(scope: !4961, file: !4877, line: 144, column: 12)
!4970 = !DILocation(line: 144, column: 12, scope: !4961, inlinedAt: !4881)
!4971 = !DILocation(line: 145, column: 4, scope: !4969, inlinedAt: !4881)
!4972 = !DILocation(line: 147, column: 4, scope: !4969, inlinedAt: !4881)
!4973 = !DILocation(line: 148, column: 3, scope: !4962, inlinedAt: !4881)
!4974 = !DILocation(line: 150, column: 6, scope: !4975, inlinedAt: !4881)
!4975 = distinct !DILexicalBlock(scope: !4896, file: !4877, line: 150, column: 6)
!4976 = !DILocation(line: 150, column: 6, scope: !4977, inlinedAt: !4881)
!4977 = distinct !DILexicalBlock(scope: !4978, file: !4877, line: 150, column: 6)
!4978 = distinct !DILexicalBlock(scope: !4975, file: !4877, line: 150, column: 6)
!4979 = !{i32 -2145556822, i32 -2145556793, i32 -2145556747, i32 -2145556689, i32 -2145556635, i32 -2145556581, i32 -2145556526, i32 -2145556495}
!4980 = !DILocation(line: 150, column: 6, scope: !4981, inlinedAt: !4881)
!4981 = distinct !DILexicalBlock(scope: !4978, file: !4877, line: 150, column: 6)
!4982 = !{i32 -2145556075, i32 -2145556068, i32 -2145556016, i32 -2145555985, i32 -2145555955}
!4983 = !DILocation(line: 150, column: 6, scope: !4978, inlinedAt: !4881)
!4984 = !DILocation(line: 150, column: 6, scope: !4897, inlinedAt: !4881)
!4985 = !DILocation(line: 150, column: 6, scope: !4876, inlinedAt: !4881)
!4986 = !DILocation(line: 151, column: 3, scope: !4897, inlinedAt: !4881)
!4987 = !DILocation(line: 152, column: 20, scope: !4876, inlinedAt: !4881)
!4988 = !DILocation(line: 152, column: 26, scope: !4876, inlinedAt: !4881)
!4989 = !DILocation(line: 152, column: 33, scope: !4876, inlinedAt: !4881)
!4990 = !DILocation(line: 152, column: 2, scope: !4876, inlinedAt: !4881)
!4991 = !DILocation(line: 153, column: 2, scope: !4876, inlinedAt: !4881)
!4992 = !DILocation(line: 154, column: 1, scope: !4876, inlinedAt: !4881)
!4993 = !DILocation(line: 199, column: 6, scope: !4884, inlinedAt: !4887)
!4994 = !DILocation(line: 200, column: 21, scope: !4882, inlinedAt: !4887)
!4995 = !DILocation(line: 200, column: 25, scope: !4882, inlinedAt: !4887)
!4996 = !DILocation(line: 200, column: 31, scope: !4882, inlinedAt: !4887)
!4997 = !DILocation(line: 200, column: 7, scope: !4882, inlinedAt: !4887)
!4998 = !DILocation(line: 200, column: 5, scope: !4882, inlinedAt: !4887)
!4999 = !DILocation(line: 200, column: 3, scope: !4882, inlinedAt: !4887)
!5000 = !DILocation(line: 201, column: 9, scope: !4884, inlinedAt: !4887)
!5001 = !DILocation(line: 736, column: 9, scope: !4888)
!5002 = !DILocation(line: 736, column: 7, scope: !4888)
!5003 = !DILocation(line: 738, column: 3, scope: !4888)
!5004 = !DILocation(line: 740, column: 29, scope: !4888)
!5005 = !DILocation(line: 740, column: 9, scope: !4888)
!5006 = !DILocation(line: 740, column: 7, scope: !4888)
!5007 = !DILocation(line: 741, column: 9, scope: !5008)
!5008 = distinct !DILexicalBlock(scope: !4888, file: !3, line: 741, column: 9)
!5009 = !DILocalVariable(name: "__ret_pu", scope: !5010, file: !3, line: 741, type: !168)
!5010 = distinct !DILexicalBlock(scope: !5008, file: !3, line: 741, column: 9)
!5011 = !DILocation(line: 741, column: 9, scope: !5010)
!5012 = !DILocalVariable(name: "__ptr_pu", scope: !5010, file: !3, line: 741, type: !112)
!5013 = !DILocalVariable(name: "__val_pu", scope: !5010, file: !3, line: 741, type: !168)
!5014 = !{i32 -2142836346}
!5015 = !DILocation(line: 741, column: 9, scope: !4888)
!5016 = !DILocation(line: 741, column: 7, scope: !4888)
!5017 = !DILocation(line: 742, column: 3, scope: !4888)
!5018 = !DILocation(line: 744, column: 9, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !4888, file: !3, line: 744, column: 9)
!5020 = !DILocalVariable(name: "__ret_pu", scope: !5021, file: !3, line: 744, type: !168)
!5021 = distinct !DILexicalBlock(scope: !5019, file: !3, line: 744, column: 9)
!5022 = !DILocation(line: 744, column: 9, scope: !5021)
!5023 = !DILocalVariable(name: "__ptr_pu", scope: !5021, file: !3, line: 744, type: !112)
!5024 = !DILocalVariable(name: "__val_pu", scope: !5021, file: !3, line: 744, type: !168)
!5025 = !{i32 -2142834893}
!5026 = !DILocation(line: 744, column: 9, scope: !4888)
!5027 = !DILocation(line: 744, column: 7, scope: !4888)
!5028 = !DILocation(line: 745, column: 3, scope: !4888)
!5029 = !DILocation(line: 747, column: 7, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 747, column: 7)
!5031 = distinct !DILexicalBlock(scope: !4888, file: !3, line: 747, column: 7)
!5032 = !DILocalVariable(name: "__ret_gu", scope: !5033, file: !3, line: 747, type: !168)
!5033 = distinct !DILexicalBlock(scope: !5030, file: !3, line: 747, column: 7)
!5034 = !DILocation(line: 747, column: 7, scope: !5033)
!5035 = !DILocalVariable(name: "__val_gu", scope: !5033, file: !3, line: 747, type: !7)
!5036 = !{i32 -2142833523}
!5037 = !DILocation(line: 747, column: 7, scope: !5031)
!5038 = !DILocation(line: 747, column: 7, scope: !4888)
!5039 = !DILocation(line: 748, column: 8, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 747, column: 25)
!5041 = !DILocation(line: 749, column: 4, scope: !5040)
!5042 = !DILocation(line: 751, column: 7, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !4888, file: !3, line: 751, column: 7)
!5044 = !DILocation(line: 751, column: 11, scope: !5043)
!5045 = !DILocation(line: 751, column: 7, scope: !4888)
!5046 = !DILocation(line: 752, column: 24, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !5043, file: !3, line: 751, column: 32)
!5048 = !DILocation(line: 752, column: 10, scope: !5047)
!5049 = !DILocation(line: 752, column: 8, scope: !5047)
!5050 = !DILocation(line: 753, column: 8, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !5047, file: !3, line: 753, column: 8)
!5052 = !DILocation(line: 753, column: 12, scope: !5051)
!5053 = !DILocation(line: 753, column: 8, scope: !5047)
!5054 = !DILocation(line: 754, column: 5, scope: !5051)
!5055 = !DILocation(line: 755, column: 3, scope: !5047)
!5056 = !DILocation(line: 756, column: 7, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !4888, file: !3, line: 756, column: 7)
!5058 = !DILocation(line: 756, column: 11, scope: !5057)
!5059 = !DILocation(line: 756, column: 7, scope: !4888)
!5060 = !DILocation(line: 757, column: 25, scope: !5057)
!5061 = !DILocation(line: 757, column: 10, scope: !5057)
!5062 = !DILocation(line: 757, column: 8, scope: !5057)
!5063 = !DILocation(line: 757, column: 4, scope: !5057)
!5064 = !DILocation(line: 758, column: 3, scope: !4888)
!5065 = !DILocation(line: 760, column: 9, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !4888, file: !3, line: 760, column: 7)
!5067 = !DILocation(line: 760, column: 14, scope: !5066)
!5068 = !DILocation(line: 760, column: 20, scope: !5066)
!5069 = !DILocation(line: 760, column: 28, scope: !5066)
!5070 = !DILocation(line: 760, column: 7, scope: !4888)
!5071 = !DILocation(line: 761, column: 8, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !5066, file: !3, line: 760, column: 52)
!5073 = !DILocation(line: 762, column: 4, scope: !5072)
!5074 = !DILocation(line: 764, column: 23, scope: !4888)
!5075 = !DILocation(line: 764, column: 9, scope: !4888)
!5076 = !DILocation(line: 764, column: 7, scope: !4888)
!5077 = !DILocation(line: 765, column: 3, scope: !4888)
!5078 = !DILocation(line: 767, column: 7, scope: !5079)
!5079 = distinct !DILexicalBlock(scope: !5080, file: !3, line: 767, column: 7)
!5080 = distinct !DILexicalBlock(scope: !4888, file: !3, line: 767, column: 7)
!5081 = !DILocalVariable(name: "__ret_gu", scope: !5082, file: !3, line: 767, type: !168)
!5082 = distinct !DILexicalBlock(scope: !5079, file: !3, line: 767, column: 7)
!5083 = !DILocation(line: 767, column: 7, scope: !5082)
!5084 = !DILocalVariable(name: "__val_gu", scope: !5082, file: !3, line: 767, type: !7)
!5085 = !{i32 -2142830455}
!5086 = !DILocation(line: 767, column: 7, scope: !5080)
!5087 = !DILocation(line: 767, column: 7, scope: !4888)
!5088 = !DILocation(line: 768, column: 8, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !5080, file: !3, line: 767, column: 25)
!5090 = !DILocation(line: 769, column: 4, scope: !5089)
!5091 = !DILocation(line: 771, column: 30, scope: !4888)
!5092 = !DILocation(line: 771, column: 35, scope: !4888)
!5093 = !DILocation(line: 771, column: 9, scope: !4888)
!5094 = !DILocation(line: 771, column: 7, scope: !4888)
!5095 = !DILocation(line: 772, column: 7, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !4888, file: !3, line: 772, column: 7)
!5097 = !DILocation(line: 772, column: 11, scope: !5096)
!5098 = !DILocation(line: 772, column: 7, scope: !4888)
!5099 = !DILocation(line: 773, column: 4, scope: !5096)
!5100 = !DILocation(line: 777, column: 23, scope: !4888)
!5101 = !DILocation(line: 777, column: 9, scope: !4888)
!5102 = !DILocation(line: 777, column: 7, scope: !4888)
!5103 = !DILocation(line: 778, column: 7, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !4888, file: !3, line: 778, column: 7)
!5105 = !DILocation(line: 778, column: 11, scope: !5104)
!5106 = !DILocation(line: 778, column: 7, scope: !4888)
!5107 = !DILocation(line: 779, column: 4, scope: !5104)
!5108 = !DILocation(line: 778, column: 13, scope: !5104)
!5109 = !DILocation(line: 783, column: 7, scope: !5110)
!5110 = distinct !DILexicalBlock(scope: !4888, file: !3, line: 783, column: 7)
!5111 = !DILocation(line: 783, column: 12, scope: !5110)
!5112 = !DILocation(line: 783, column: 20, scope: !5110)
!5113 = !DILocation(line: 783, column: 7, scope: !4888)
!5114 = !DILocation(line: 784, column: 8, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5110, file: !3, line: 783, column: 26)
!5116 = !DILocation(line: 785, column: 4, scope: !5115)
!5117 = !DILocation(line: 787, column: 9, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !4888, file: !3, line: 787, column: 9)
!5119 = !DILocalVariable(name: "__ret_pu", scope: !5120, file: !3, line: 787, type: !168)
!5120 = distinct !DILexicalBlock(scope: !5118, file: !3, line: 787, column: 9)
!5121 = !DILocation(line: 787, column: 9, scope: !5120)
!5122 = !DILocalVariable(name: "__ptr_pu", scope: !5120, file: !3, line: 787, type: !112)
!5123 = !DILocalVariable(name: "__val_pu", scope: !5120, file: !3, line: 787, type: !168)
!5124 = !{i32 -2142828015}
!5125 = !DILocation(line: 787, column: 9, scope: !4888)
!5126 = !DILocation(line: 787, column: 7, scope: !4888)
!5127 = !DILocation(line: 788, column: 3, scope: !4888)
!5128 = !DILocation(line: 790, column: 31, scope: !4888)
!5129 = !DILocation(line: 790, column: 9, scope: !4888)
!5130 = !DILocation(line: 790, column: 7, scope: !4888)
!5131 = !DILocation(line: 791, column: 7, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !4888, file: !3, line: 791, column: 7)
!5133 = !DILocation(line: 791, column: 11, scope: !5132)
!5134 = !DILocation(line: 791, column: 7, scope: !4888)
!5135 = !DILocation(line: 792, column: 4, scope: !5132)
!5136 = !DILocation(line: 793, column: 9, scope: !5137)
!5137 = distinct !DILexicalBlock(scope: !4888, file: !3, line: 793, column: 9)
!5138 = !DILocalVariable(name: "__ret_pu", scope: !5139, file: !3, line: 793, type: !168)
!5139 = distinct !DILexicalBlock(scope: !5137, file: !3, line: 793, column: 9)
!5140 = !DILocation(line: 793, column: 9, scope: !5139)
!5141 = !DILocalVariable(name: "__ptr_pu", scope: !5139, file: !3, line: 793, type: !112)
!5142 = !DILocalVariable(name: "__val_pu", scope: !5139, file: !3, line: 793, type: !168)
!5143 = !{i32 -2142826562}
!5144 = !DILocation(line: 793, column: 9, scope: !4888)
!5145 = !DILocation(line: 793, column: 7, scope: !4888)
!5146 = !DILocation(line: 794, column: 3, scope: !4888)
!5147 = !DILocation(line: 796, column: 7, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5149, file: !3, line: 796, column: 7)
!5149 = distinct !DILexicalBlock(scope: !4888, file: !3, line: 796, column: 7)
!5150 = !DILocalVariable(name: "__ret_gu", scope: !5151, file: !3, line: 796, type: !168)
!5151 = distinct !DILexicalBlock(scope: !5148, file: !3, line: 796, column: 7)
!5152 = !DILocation(line: 796, column: 7, scope: !5151)
!5153 = !DILocalVariable(name: "__val_gu", scope: !5151, file: !3, line: 796, type: !7)
!5154 = !{i32 -2142825184}
!5155 = !DILocation(line: 796, column: 7, scope: !5149)
!5156 = !DILocation(line: 796, column: 7, scope: !4888)
!5157 = !DILocation(line: 797, column: 8, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5149, file: !3, line: 796, column: 25)
!5159 = !DILocation(line: 798, column: 4, scope: !5158)
!5160 = !DILocation(line: 800, column: 33, scope: !4888)
!5161 = !DILocation(line: 800, column: 38, scope: !4888)
!5162 = !DILocation(line: 800, column: 9, scope: !4888)
!5163 = !DILocation(line: 800, column: 7, scope: !4888)
!5164 = !DILocation(line: 801, column: 3, scope: !4888)
!5165 = !DILocation(line: 803, column: 9, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !4888, file: !3, line: 803, column: 9)
!5167 = !DILocalVariable(name: "__ret_pu", scope: !5168, file: !3, line: 803, type: !168)
!5168 = distinct !DILexicalBlock(scope: !5166, file: !3, line: 803, column: 9)
!5169 = !DILocation(line: 803, column: 9, scope: !5168)
!5170 = !DILocalVariable(name: "__ptr_pu", scope: !5168, file: !3, line: 803, type: !112)
!5171 = !DILocalVariable(name: "__val_pu", scope: !5168, file: !3, line: 803, type: !168)
!5172 = !{i32 -2142822777}
!5173 = !DILocation(line: 803, column: 9, scope: !4888)
!5174 = !DILocation(line: 803, column: 7, scope: !4888)
!5175 = !DILocation(line: 804, column: 3, scope: !4888)
!5176 = !DILocation(line: 806, column: 7, scope: !4888)
!5177 = !DILocation(line: 807, column: 3, scope: !4888)
!5178 = !DILocation(line: 808, column: 2, scope: !4888)
!5179 = !DILabel(scope: !4874, name: "out_ioctl", file: !3, line: 810)
!5180 = !DILocation(line: 810, column: 1, scope: !4874)
!5181 = !DILocation(line: 811, column: 16, scope: !4874)
!5182 = !DILocation(line: 811, column: 25, scope: !4874)
!5183 = !DILocation(line: 811, column: 2, scope: !4874)
!5184 = !DILocation(line: 812, column: 9, scope: !4874)
!5185 = !DILocation(line: 812, column: 2, scope: !4874)
!5186 = distinct !DISubprogram(name: "watchdog_open", scope: !3, file: !3, line: 825, type: !2680, scopeLine: 826, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!5187 = !DILocalVariable(name: "inode", arg: 1, scope: !5186, file: !3, line: 825, type: !338)
!5188 = !DILocation(line: 825, column: 40, scope: !5186)
!5189 = !DILocalVariable(name: "file", arg: 2, scope: !5186, file: !3, line: 825, type: !261)
!5190 = !DILocation(line: 825, column: 60, scope: !5186)
!5191 = !DILocalVariable(name: "wd_data", scope: !5186, file: !3, line: 827, type: !114)
!5192 = !DILocation(line: 827, column: 29, scope: !5186)
!5193 = !DILocalVariable(name: "wdd", scope: !5186, file: !3, line: 828, type: !3485)
!5194 = !DILocation(line: 828, column: 26, scope: !5186)
!5195 = !DILocalVariable(name: "hw_running", scope: !5186, file: !3, line: 829, type: !399)
!5196 = !DILocation(line: 829, column: 7, scope: !5186)
!5197 = !DILocalVariable(name: "err", scope: !5186, file: !3, line: 830, type: !168)
!5198 = !DILocation(line: 830, column: 6, scope: !5186)
!5199 = !DILocation(line: 833, column: 13, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5186, file: !3, line: 833, column: 6)
!5201 = !DILocation(line: 833, column: 6, scope: !5200)
!5202 = !DILocation(line: 833, column: 20, scope: !5200)
!5203 = !DILocation(line: 833, column: 6, scope: !5186)
!5204 = !DILocation(line: 834, column: 13, scope: !5200)
!5205 = !DILocation(line: 834, column: 11, scope: !5200)
!5206 = !DILocation(line: 834, column: 3, scope: !5200)
!5207 = !DILocalVariable(name: "__mptr", scope: !5208, file: !3, line: 836, type: !112)
!5208 = distinct !DILexicalBlock(scope: !5200, file: !3, line: 836, column: 13)
!5209 = !DILocation(line: 836, column: 13, scope: !5208)
!5210 = !DILocation(line: 836, column: 13, scope: !5211)
!5211 = distinct !DILexicalBlock(scope: !5208, file: !3, line: 836, column: 13)
!5212 = !DILocation(line: 836, column: 11, scope: !5200)
!5213 = !DILocation(line: 840, column: 40, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5186, file: !3, line: 840, column: 6)
!5215 = !DILocation(line: 840, column: 49, scope: !5214)
!5216 = !DILocation(line: 840, column: 6, scope: !5214)
!5217 = !DILocation(line: 840, column: 6, scope: !5186)
!5218 = !DILocation(line: 841, column: 3, scope: !5214)
!5219 = !DILocation(line: 843, column: 8, scope: !5186)
!5220 = !DILocation(line: 843, column: 17, scope: !5186)
!5221 = !DILocation(line: 843, column: 6, scope: !5186)
!5222 = !DILocation(line: 849, column: 35, scope: !5186)
!5223 = !DILocation(line: 849, column: 15, scope: !5186)
!5224 = !DILocation(line: 849, column: 13, scope: !5186)
!5225 = !DILocation(line: 850, column: 7, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5186, file: !3, line: 850, column: 6)
!5227 = !DILocation(line: 850, column: 18, scope: !5226)
!5228 = !DILocation(line: 850, column: 37, scope: !5226)
!5229 = !DILocation(line: 850, column: 42, scope: !5226)
!5230 = !DILocation(line: 850, column: 47, scope: !5226)
!5231 = !DILocation(line: 850, column: 22, scope: !5226)
!5232 = !DILocation(line: 850, column: 6, scope: !5186)
!5233 = !DILocation(line: 851, column: 7, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5226, file: !3, line: 850, column: 55)
!5235 = !DILocation(line: 852, column: 3, scope: !5234)
!5236 = !DILocation(line: 855, column: 23, scope: !5186)
!5237 = !DILocation(line: 855, column: 8, scope: !5186)
!5238 = !DILocation(line: 855, column: 6, scope: !5186)
!5239 = !DILocation(line: 856, column: 6, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5186, file: !3, line: 856, column: 6)
!5241 = !DILocation(line: 856, column: 10, scope: !5240)
!5242 = !DILocation(line: 856, column: 6, scope: !5186)
!5243 = !DILocation(line: 857, column: 3, scope: !5240)
!5244 = !DILocation(line: 859, column: 23, scope: !5186)
!5245 = !DILocation(line: 859, column: 2, scope: !5186)
!5246 = !DILocation(line: 859, column: 8, scope: !5186)
!5247 = !DILocation(line: 859, column: 21, scope: !5186)
!5248 = !DILocation(line: 861, column: 7, scope: !5249)
!5249 = distinct !DILexicalBlock(scope: !5186, file: !3, line: 861, column: 6)
!5250 = !DILocation(line: 861, column: 6, scope: !5186)
!5251 = !DILocation(line: 862, column: 15, scope: !5249)
!5252 = !DILocation(line: 862, column: 24, scope: !5249)
!5253 = !DILocation(line: 862, column: 3, scope: !5249)
!5254 = !DILocation(line: 871, column: 2, scope: !5186)
!5255 = !DILocation(line: 871, column: 11, scope: !5186)
!5256 = !DILocation(line: 871, column: 25, scope: !5186)
!5257 = !DILocation(line: 874, column: 21, scope: !5186)
!5258 = !DILocation(line: 874, column: 28, scope: !5186)
!5259 = !DILocation(line: 874, column: 9, scope: !5186)
!5260 = !DILocation(line: 874, column: 2, scope: !5186)
!5261 = !DILabel(scope: !5186, name: "out_mod", file: !3, line: 876)
!5262 = !DILocation(line: 876, column: 1, scope: !5186)
!5263 = !DILocation(line: 877, column: 13, scope: !5186)
!5264 = !DILocation(line: 877, column: 22, scope: !5186)
!5265 = !DILocation(line: 877, column: 27, scope: !5186)
!5266 = !DILocation(line: 877, column: 32, scope: !5186)
!5267 = !DILocation(line: 877, column: 2, scope: !5186)
!5268 = !DILabel(scope: !5186, name: "out_clear", file: !3, line: 878)
!5269 = !DILocation(line: 878, column: 1, scope: !5186)
!5270 = !DILocation(line: 879, column: 29, scope: !5186)
!5271 = !DILocation(line: 879, column: 38, scope: !5186)
!5272 = !DILocation(line: 879, column: 2, scope: !5186)
!5273 = !DILocation(line: 880, column: 9, scope: !5186)
!5274 = !DILocation(line: 880, column: 2, scope: !5186)
!5275 = !DILocation(line: 881, column: 1, scope: !5186)
!5276 = distinct !DISubprogram(name: "watchdog_release", scope: !3, file: !3, line: 902, type: !2680, scopeLine: 903, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!5277 = !DILocalVariable(name: "inode", arg: 1, scope: !5276, file: !3, line: 902, type: !338)
!5278 = !DILocation(line: 902, column: 43, scope: !5276)
!5279 = !DILocalVariable(name: "file", arg: 2, scope: !5276, file: !3, line: 902, type: !261)
!5280 = !DILocation(line: 902, column: 63, scope: !5276)
!5281 = !DILocalVariable(name: "wd_data", scope: !5276, file: !3, line: 904, type: !114)
!5282 = !DILocation(line: 904, column: 29, scope: !5276)
!5283 = !DILocation(line: 904, column: 39, scope: !5276)
!5284 = !DILocation(line: 904, column: 45, scope: !5276)
!5285 = !DILocalVariable(name: "wdd", scope: !5276, file: !3, line: 905, type: !3485)
!5286 = !DILocation(line: 905, column: 26, scope: !5276)
!5287 = !DILocalVariable(name: "err", scope: !5276, file: !3, line: 906, type: !168)
!5288 = !DILocation(line: 906, column: 6, scope: !5276)
!5289 = !DILocalVariable(name: "running", scope: !5276, file: !3, line: 907, type: !399)
!5290 = !DILocation(line: 907, column: 7, scope: !5276)
!5291 = !DILocation(line: 909, column: 14, scope: !5276)
!5292 = !DILocation(line: 909, column: 23, scope: !5276)
!5293 = !DILocation(line: 909, column: 2, scope: !5276)
!5294 = !DILocation(line: 911, column: 8, scope: !5276)
!5295 = !DILocation(line: 911, column: 17, scope: !5276)
!5296 = !DILocation(line: 911, column: 6, scope: !5276)
!5297 = !DILocation(line: 912, column: 7, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !5276, file: !3, line: 912, column: 6)
!5299 = !DILocation(line: 912, column: 6, scope: !5276)
!5300 = !DILocation(line: 913, column: 3, scope: !5298)
!5301 = !DILocation(line: 920, column: 23, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !5276, file: !3, line: 920, column: 6)
!5303 = !DILocation(line: 920, column: 7, scope: !5302)
!5304 = !DILocation(line: 920, column: 6, scope: !5276)
!5305 = !DILocation(line: 921, column: 7, scope: !5302)
!5306 = !DILocation(line: 921, column: 3, scope: !5302)
!5307 = !DILocation(line: 922, column: 52, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5302, file: !3, line: 922, column: 11)
!5309 = !DILocation(line: 922, column: 61, scope: !5308)
!5310 = !DILocation(line: 922, column: 11, scope: !5308)
!5311 = !DILocation(line: 922, column: 69, scope: !5308)
!5312 = !DILocation(line: 923, column: 6, scope: !5308)
!5313 = !DILocation(line: 923, column: 11, scope: !5308)
!5314 = !DILocation(line: 923, column: 17, scope: !5308)
!5315 = !DILocation(line: 923, column: 25, scope: !5308)
!5316 = !DILocation(line: 922, column: 11, scope: !5302)
!5317 = !DILocation(line: 924, column: 23, scope: !5308)
!5318 = !DILocation(line: 924, column: 9, scope: !5308)
!5319 = !DILocation(line: 924, column: 7, scope: !5308)
!5320 = !DILocation(line: 924, column: 3, scope: !5308)
!5321 = !DILocation(line: 927, column: 6, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5276, file: !3, line: 927, column: 6)
!5323 = !DILocation(line: 927, column: 10, scope: !5322)
!5324 = !DILocation(line: 927, column: 6, scope: !5276)
!5325 = !DILocation(line: 928, column: 3, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5322, file: !3, line: 927, column: 15)
!5327 = !DILocation(line: 929, column: 17, scope: !5326)
!5328 = !DILocation(line: 929, column: 3, scope: !5326)
!5329 = !DILocation(line: 930, column: 2, scope: !5326)
!5330 = !DILocation(line: 932, column: 25, scope: !5276)
!5331 = !DILocation(line: 932, column: 2, scope: !5276)
!5332 = !DILocation(line: 935, column: 29, scope: !5276)
!5333 = !DILocation(line: 935, column: 38, scope: !5276)
!5334 = !DILocation(line: 935, column: 2, scope: !5276)
!5335 = !DILabel(scope: !5276, name: "done", file: !3, line: 937)
!5336 = !DILocation(line: 937, column: 1, scope: !5276)
!5337 = !DILocation(line: 938, column: 12, scope: !5276)
!5338 = !DILocation(line: 938, column: 16, scope: !5276)
!5339 = !DILocation(line: 938, column: 39, scope: !5276)
!5340 = !DILocation(line: 938, column: 19, scope: !5276)
!5341 = !DILocation(line: 0, scope: !5276)
!5342 = !DILocation(line: 938, column: 10, scope: !5276)
!5343 = !DILocation(line: 939, column: 16, scope: !5276)
!5344 = !DILocation(line: 939, column: 25, scope: !5276)
!5345 = !DILocation(line: 939, column: 2, scope: !5276)
!5346 = !DILocation(line: 945, column: 7, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !5276, file: !3, line: 945, column: 6)
!5348 = !DILocation(line: 945, column: 6, scope: !5276)
!5349 = !DILocation(line: 946, column: 14, scope: !5350)
!5350 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 945, column: 16)
!5351 = !DILocation(line: 946, column: 23, scope: !5350)
!5352 = !DILocation(line: 946, column: 28, scope: !5350)
!5353 = !DILocation(line: 946, column: 3, scope: !5350)
!5354 = !DILocation(line: 947, column: 15, scope: !5350)
!5355 = !DILocation(line: 947, column: 24, scope: !5350)
!5356 = !DILocation(line: 947, column: 3, scope: !5350)
!5357 = !DILocation(line: 948, column: 2, scope: !5350)
!5358 = !DILocation(line: 949, column: 2, scope: !5276)
!5359 = distinct !DISubprogram(name: "clear_bit", scope: !5360, file: !5360, line: 39, type: !5361, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!5360 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5361 = !DISubroutineType(types: !5362)
!5362 = !{null, !219, !5363}
!5363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!5364 = !DILocalVariable(name: "nr", arg: 1, scope: !5365, file: !4565, line: 72, type: !219)
!5365 = distinct !DISubprogram(name: "arch_clear_bit", scope: !4565, file: !4565, line: 72, type: !5361, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!5366 = !DILocation(line: 72, column: 21, scope: !5365, inlinedAt: !5367)
!5367 = distinct !DILocation(line: 42, column: 2, scope: !5359)
!5368 = !DILocalVariable(name: "addr", arg: 2, scope: !5365, file: !4565, line: 72, type: !5363)
!5369 = !DILocation(line: 72, column: 49, scope: !5365, inlinedAt: !5367)
!5370 = !DILocalVariable(name: "v", arg: 1, scope: !5371, file: !4697, line: 84, type: !4700)
!5371 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4697, file: !4697, line: 84, type: !4698, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!5372 = !DILocation(line: 84, column: 74, scope: !5371, inlinedAt: !5373)
!5373 = distinct !DILocation(line: 41, column: 2, scope: !5359)
!5374 = !DILocalVariable(name: "size", arg: 2, scope: !5371, file: !4697, line: 84, type: !231)
!5375 = !DILocation(line: 84, column: 84, scope: !5371, inlinedAt: !5373)
!5376 = !DILocalVariable(name: "nr", arg: 1, scope: !5359, file: !5360, line: 39, type: !219)
!5377 = !DILocation(line: 39, column: 35, scope: !5359)
!5378 = !DILocalVariable(name: "addr", arg: 2, scope: !5359, file: !5360, line: 39, type: !5363)
!5379 = !DILocation(line: 39, column: 63, scope: !5359)
!5380 = !DILocation(line: 41, column: 26, scope: !5359)
!5381 = !DILocation(line: 41, column: 33, scope: !5359)
!5382 = !DILocation(line: 41, column: 31, scope: !5359)
!5383 = !DILocation(line: 86, column: 20, scope: !5371, inlinedAt: !5373)
!5384 = !DILocation(line: 86, column: 23, scope: !5371, inlinedAt: !5373)
!5385 = !DILocation(line: 86, column: 2, scope: !5371, inlinedAt: !5373)
!5386 = !DILocation(line: 87, column: 2, scope: !5371, inlinedAt: !5373)
!5387 = !DILocation(line: 42, column: 17, scope: !5359)
!5388 = !DILocation(line: 42, column: 21, scope: !5359)
!5389 = !DILocation(line: 74, column: 27, scope: !5390, inlinedAt: !5367)
!5390 = distinct !DILexicalBlock(scope: !5365, file: !4565, line: 74, column: 6)
!5391 = !DILocation(line: 74, column: 6, scope: !5390, inlinedAt: !5367)
!5392 = !DILocation(line: 74, column: 6, scope: !5365, inlinedAt: !5367)
!5393 = !DILocation(line: 76, column: 6, scope: !5394, inlinedAt: !5367)
!5394 = distinct !DILexicalBlock(scope: !5390, file: !4565, line: 74, column: 32)
!5395 = !DILocation(line: 77, column: 13, scope: !5394, inlinedAt: !5367)
!5396 = !DILocation(line: 77, column: 12, scope: !5394, inlinedAt: !5367)
!5397 = !DILocation(line: 75, column: 3, scope: !5394, inlinedAt: !5367)
!5398 = !{i32 -2147139161}
!5399 = !DILocation(line: 78, column: 2, scope: !5394, inlinedAt: !5367)
!5400 = !DILocation(line: 80, column: 8, scope: !5401, inlinedAt: !5367)
!5401 = distinct !DILexicalBlock(scope: !5390, file: !4565, line: 78, column: 9)
!5402 = !DILocation(line: 80, column: 32, scope: !5401, inlinedAt: !5367)
!5403 = !DILocation(line: 79, column: 3, scope: !5401, inlinedAt: !5367)
!5404 = !{i32 -2147139029}
!5405 = !DILocation(line: 43, column: 1, scope: !5359)
!5406 = distinct !DISubprogram(name: "might_fault", scope: !5407, file: !5407, line: 315, type: !1711, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!5407 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!5408 = !DILocation(line: 315, column: 40, scope: !5406)
!5409 = distinct !DISubprogram(name: "set_bit", scope: !5360, file: !5360, line: 26, type: !5361, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!5410 = !DILocalVariable(name: "nr", arg: 1, scope: !5411, file: !4565, line: 52, type: !219)
!5411 = distinct !DISubprogram(name: "arch_set_bit", scope: !4565, file: !4565, line: 52, type: !5361, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!5412 = !DILocation(line: 52, column: 19, scope: !5411, inlinedAt: !5413)
!5413 = distinct !DILocation(line: 29, column: 2, scope: !5409)
!5414 = !DILocalVariable(name: "addr", arg: 2, scope: !5411, file: !4565, line: 52, type: !5363)
!5415 = !DILocation(line: 52, column: 47, scope: !5411, inlinedAt: !5413)
!5416 = !DILocation(line: 84, column: 74, scope: !5371, inlinedAt: !5417)
!5417 = distinct !DILocation(line: 28, column: 2, scope: !5409)
!5418 = !DILocation(line: 84, column: 84, scope: !5371, inlinedAt: !5417)
!5419 = !DILocalVariable(name: "nr", arg: 1, scope: !5409, file: !5360, line: 26, type: !219)
!5420 = !DILocation(line: 26, column: 33, scope: !5409)
!5421 = !DILocalVariable(name: "addr", arg: 2, scope: !5409, file: !5360, line: 26, type: !5363)
!5422 = !DILocation(line: 26, column: 61, scope: !5409)
!5423 = !DILocation(line: 28, column: 26, scope: !5409)
!5424 = !DILocation(line: 28, column: 33, scope: !5409)
!5425 = !DILocation(line: 28, column: 31, scope: !5409)
!5426 = !DILocation(line: 86, column: 20, scope: !5371, inlinedAt: !5417)
!5427 = !DILocation(line: 86, column: 23, scope: !5371, inlinedAt: !5417)
!5428 = !DILocation(line: 86, column: 2, scope: !5371, inlinedAt: !5417)
!5429 = !DILocation(line: 87, column: 2, scope: !5371, inlinedAt: !5417)
!5430 = !DILocation(line: 29, column: 15, scope: !5409)
!5431 = !DILocation(line: 29, column: 19, scope: !5409)
!5432 = !DILocation(line: 54, column: 27, scope: !5433, inlinedAt: !5413)
!5433 = distinct !DILexicalBlock(scope: !5411, file: !4565, line: 54, column: 6)
!5434 = !DILocation(line: 54, column: 6, scope: !5433, inlinedAt: !5413)
!5435 = !DILocation(line: 54, column: 6, scope: !5411, inlinedAt: !5413)
!5436 = !DILocation(line: 56, column: 6, scope: !5437, inlinedAt: !5413)
!5437 = distinct !DILexicalBlock(scope: !5433, file: !4565, line: 54, column: 32)
!5438 = !DILocation(line: 57, column: 12, scope: !5437, inlinedAt: !5413)
!5439 = !DILocation(line: 55, column: 3, scope: !5437, inlinedAt: !5413)
!5440 = !{i32 -2147140115}
!5441 = !DILocation(line: 59, column: 2, scope: !5437, inlinedAt: !5413)
!5442 = !DILocation(line: 61, column: 8, scope: !5443, inlinedAt: !5413)
!5443 = distinct !DILexicalBlock(scope: !5433, file: !4565, line: 59, column: 9)
!5444 = !DILocation(line: 61, column: 32, scope: !5443, inlinedAt: !5413)
!5445 = !DILocation(line: 60, column: 3, scope: !5443, inlinedAt: !5413)
!5446 = !{i32 -2147139983}
!5447 = !DILocation(line: 30, column: 1, scope: !5409)
!5448 = distinct !DISubprogram(name: "watchdog_ping", scope: !3, file: !3, line: 205, type: !3510, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!5449 = !DILocalVariable(name: "wdd", arg: 1, scope: !5448, file: !3, line: 205, type: !3485)
!5450 = !DILocation(line: 205, column: 50, scope: !5448)
!5451 = !DILocalVariable(name: "wd_data", scope: !5448, file: !3, line: 207, type: !114)
!5452 = !DILocation(line: 207, column: 29, scope: !5448)
!5453 = !DILocation(line: 207, column: 39, scope: !5448)
!5454 = !DILocation(line: 207, column: 44, scope: !5448)
!5455 = !DILocation(line: 209, column: 23, scope: !5456)
!5456 = distinct !DILexicalBlock(scope: !5448, file: !3, line: 209, column: 6)
!5457 = !DILocation(line: 209, column: 7, scope: !5456)
!5458 = !DILocation(line: 209, column: 28, scope: !5456)
!5459 = !DILocation(line: 209, column: 52, scope: !5456)
!5460 = !DILocation(line: 209, column: 32, scope: !5456)
!5461 = !DILocation(line: 209, column: 6, scope: !5448)
!5462 = !DILocation(line: 210, column: 3, scope: !5456)
!5463 = !DILocation(line: 212, column: 28, scope: !5448)
!5464 = !DILocation(line: 212, column: 37, scope: !5448)
!5465 = !DILocation(line: 212, column: 2, scope: !5448)
!5466 = !DILocation(line: 214, column: 28, scope: !5448)
!5467 = !DILocation(line: 214, column: 2, scope: !5448)
!5468 = !DILocation(line: 214, column: 11, scope: !5448)
!5469 = !DILocation(line: 214, column: 26, scope: !5448)
!5470 = !DILocation(line: 215, column: 25, scope: !5448)
!5471 = !DILocation(line: 215, column: 9, scope: !5448)
!5472 = !DILocation(line: 215, column: 2, scope: !5448)
!5473 = !DILocation(line: 216, column: 1, scope: !5448)
!5474 = distinct !DISubprogram(name: "kasan_check_write", scope: !4734, file: !4734, line: 38, type: !4735, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!5475 = !DILocalVariable(name: "p", arg: 1, scope: !5474, file: !4734, line: 38, type: !4700)
!5476 = !DILocation(line: 38, column: 59, scope: !5474)
!5477 = !DILocalVariable(name: "size", arg: 2, scope: !5474, file: !4734, line: 38, type: !7)
!5478 = !DILocation(line: 38, column: 75, scope: !5474)
!5479 = !DILocation(line: 40, column: 2, scope: !5474)
!5480 = distinct !DISubprogram(name: "watchdog_ioctl_op", scope: !3, file: !3, line: 640, type: !5481, scopeLine: 642, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!5481 = !DISubroutineType(types: !5482)
!5482 = !{!168, !3485, !7, !113}
!5483 = !DILocalVariable(name: "wdd", arg: 1, scope: !5480, file: !3, line: 640, type: !3485)
!5484 = !DILocation(line: 640, column: 54, scope: !5480)
!5485 = !DILocalVariable(name: "cmd", arg: 2, scope: !5480, file: !3, line: 640, type: !7)
!5486 = !DILocation(line: 640, column: 72, scope: !5480)
!5487 = !DILocalVariable(name: "arg", arg: 3, scope: !5480, file: !3, line: 641, type: !113)
!5488 = !DILocation(line: 641, column: 22, scope: !5480)
!5489 = !DILocation(line: 643, column: 7, scope: !5490)
!5490 = distinct !DILexicalBlock(scope: !5480, file: !3, line: 643, column: 6)
!5491 = !DILocation(line: 643, column: 12, scope: !5490)
!5492 = !DILocation(line: 643, column: 17, scope: !5490)
!5493 = !DILocation(line: 643, column: 6, scope: !5480)
!5494 = !DILocation(line: 644, column: 3, scope: !5490)
!5495 = !DILocation(line: 646, column: 9, scope: !5480)
!5496 = !DILocation(line: 646, column: 14, scope: !5480)
!5497 = !DILocation(line: 646, column: 19, scope: !5480)
!5498 = !DILocation(line: 646, column: 25, scope: !5480)
!5499 = !DILocation(line: 646, column: 30, scope: !5480)
!5500 = !DILocation(line: 646, column: 35, scope: !5480)
!5501 = !DILocation(line: 646, column: 2, scope: !5480)
!5502 = !DILocation(line: 647, column: 1, scope: !5480)
!5503 = distinct !DISubprogram(name: "watchdog_get_status", scope: !3, file: !3, line: 342, type: !3516, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!5504 = !DILocalVariable(name: "wdd", arg: 1, scope: !5503, file: !3, line: 342, type: !3485)
!5505 = !DILocation(line: 342, column: 65, scope: !5503)
!5506 = !DILocalVariable(name: "wd_data", scope: !5503, file: !3, line: 344, type: !114)
!5507 = !DILocation(line: 344, column: 29, scope: !5503)
!5508 = !DILocation(line: 344, column: 39, scope: !5503)
!5509 = !DILocation(line: 344, column: 44, scope: !5503)
!5510 = !DILocalVariable(name: "status", scope: !5503, file: !3, line: 345, type: !7)
!5511 = !DILocation(line: 345, column: 15, scope: !5503)
!5512 = !DILocation(line: 347, column: 6, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5503, file: !3, line: 347, column: 6)
!5514 = !DILocation(line: 347, column: 11, scope: !5513)
!5515 = !DILocation(line: 347, column: 16, scope: !5513)
!5516 = !DILocation(line: 347, column: 6, scope: !5503)
!5517 = !DILocation(line: 348, column: 12, scope: !5513)
!5518 = !DILocation(line: 348, column: 17, scope: !5513)
!5519 = !DILocation(line: 348, column: 22, scope: !5513)
!5520 = !DILocation(line: 348, column: 29, scope: !5513)
!5521 = !DILocation(line: 348, column: 10, scope: !5513)
!5522 = !DILocation(line: 348, column: 3, scope: !5513)
!5523 = !DILocation(line: 350, column: 12, scope: !5513)
!5524 = !DILocation(line: 350, column: 17, scope: !5513)
!5525 = !DILocation(line: 350, column: 28, scope: !5513)
!5526 = !DILocation(line: 350, column: 10, scope: !5513)
!5527 = !DILocation(line: 358, column: 37, scope: !5528)
!5528 = distinct !DILexicalBlock(scope: !5503, file: !3, line: 358, column: 6)
!5529 = !DILocation(line: 358, column: 46, scope: !5528)
!5530 = !DILocation(line: 358, column: 6, scope: !5528)
!5531 = !DILocation(line: 358, column: 6, scope: !5503)
!5532 = !DILocation(line: 359, column: 10, scope: !5528)
!5533 = !DILocation(line: 359, column: 3, scope: !5528)
!5534 = !DILocation(line: 361, column: 43, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5503, file: !3, line: 361, column: 6)
!5536 = !DILocation(line: 361, column: 52, scope: !5535)
!5537 = !DILocation(line: 361, column: 6, scope: !5535)
!5538 = !DILocation(line: 361, column: 6, scope: !5503)
!5539 = !DILocation(line: 362, column: 10, scope: !5535)
!5540 = !DILocation(line: 362, column: 3, scope: !5535)
!5541 = !DILocation(line: 364, column: 9, scope: !5503)
!5542 = !DILocation(line: 364, column: 2, scope: !5503)
!5543 = distinct !DISubprogram(name: "watchdog_stop", scope: !3, file: !3, line: 305, type: !3510, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!5544 = !DILocalVariable(name: "wdd", arg: 1, scope: !5543, file: !3, line: 305, type: !3485)
!5545 = !DILocation(line: 305, column: 50, scope: !5543)
!5546 = !DILocalVariable(name: "err", scope: !5543, file: !3, line: 307, type: !168)
!5547 = !DILocation(line: 307, column: 6, scope: !5543)
!5548 = !DILocation(line: 309, column: 23, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5543, file: !3, line: 309, column: 6)
!5550 = !DILocation(line: 309, column: 7, scope: !5549)
!5551 = !DILocation(line: 309, column: 6, scope: !5543)
!5552 = !DILocation(line: 310, column: 3, scope: !5549)
!5553 = !DILocation(line: 312, column: 33, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5543, file: !3, line: 312, column: 6)
!5555 = !DILocation(line: 312, column: 38, scope: !5554)
!5556 = !DILocation(line: 312, column: 6, scope: !5554)
!5557 = !DILocation(line: 312, column: 6, scope: !5543)
!5558 = !DILocation(line: 313, column: 3, scope: !5559)
!5559 = distinct !DILexicalBlock(scope: !5554, file: !3, line: 312, column: 47)
!5560 = !DILocation(line: 315, column: 3, scope: !5559)
!5561 = !DILocation(line: 318, column: 6, scope: !5562)
!5562 = distinct !DILexicalBlock(scope: !5543, file: !3, line: 318, column: 6)
!5563 = !DILocation(line: 318, column: 11, scope: !5562)
!5564 = !DILocation(line: 318, column: 16, scope: !5562)
!5565 = !DILocation(line: 318, column: 6, scope: !5543)
!5566 = !DILocation(line: 319, column: 31, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5562, file: !3, line: 318, column: 22)
!5568 = !DILocation(line: 319, column: 36, scope: !5567)
!5569 = !DILocation(line: 319, column: 3, scope: !5567)
!5570 = !DILocation(line: 320, column: 9, scope: !5567)
!5571 = !DILocation(line: 320, column: 14, scope: !5567)
!5572 = !DILocation(line: 320, column: 19, scope: !5567)
!5573 = !DILocation(line: 320, column: 24, scope: !5567)
!5574 = !DILocation(line: 320, column: 7, scope: !5567)
!5575 = !DILocation(line: 321, column: 2, scope: !5567)
!5576 = !DILocation(line: 322, column: 29, scope: !5577)
!5577 = distinct !DILexicalBlock(scope: !5562, file: !3, line: 321, column: 9)
!5578 = !DILocation(line: 322, column: 34, scope: !5577)
!5579 = !DILocation(line: 322, column: 3, scope: !5577)
!5580 = !DILocation(line: 325, column: 6, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5543, file: !3, line: 325, column: 6)
!5582 = !DILocation(line: 325, column: 10, scope: !5581)
!5583 = !DILocation(line: 325, column: 6, scope: !5543)
!5584 = !DILocation(line: 326, column: 27, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 325, column: 16)
!5586 = !DILocation(line: 326, column: 32, scope: !5585)
!5587 = !DILocation(line: 326, column: 3, scope: !5585)
!5588 = !DILocation(line: 327, column: 26, scope: !5585)
!5589 = !DILocation(line: 327, column: 3, scope: !5585)
!5590 = !DILocation(line: 328, column: 2, scope: !5585)
!5591 = !DILocation(line: 330, column: 9, scope: !5543)
!5592 = !DILocation(line: 330, column: 2, scope: !5543)
!5593 = !DILocation(line: 331, column: 1, scope: !5543)
!5594 = distinct !DISubprogram(name: "watchdog_start", scope: !3, file: !3, line: 264, type: !3510, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!5595 = !DILocalVariable(name: "wdd", arg: 1, scope: !5594, file: !3, line: 264, type: !3485)
!5596 = !DILocation(line: 264, column: 51, scope: !5594)
!5597 = !DILocalVariable(name: "wd_data", scope: !5594, file: !3, line: 266, type: !114)
!5598 = !DILocation(line: 266, column: 29, scope: !5594)
!5599 = !DILocation(line: 266, column: 39, scope: !5594)
!5600 = !DILocation(line: 266, column: 44, scope: !5594)
!5601 = !DILocalVariable(name: "started_at", scope: !5594, file: !3, line: 267, type: !1132)
!5602 = !DILocation(line: 267, column: 10, scope: !5594)
!5603 = !DILocalVariable(name: "err", scope: !5594, file: !3, line: 268, type: !168)
!5604 = !DILocation(line: 268, column: 6, scope: !5594)
!5605 = !DILocation(line: 270, column: 22, scope: !5606)
!5606 = distinct !DILexicalBlock(scope: !5594, file: !3, line: 270, column: 6)
!5607 = !DILocation(line: 270, column: 6, scope: !5606)
!5608 = !DILocation(line: 270, column: 6, scope: !5594)
!5609 = !DILocation(line: 271, column: 3, scope: !5606)
!5610 = !DILocation(line: 273, column: 28, scope: !5594)
!5611 = !DILocation(line: 273, column: 37, scope: !5594)
!5612 = !DILocation(line: 273, column: 2, scope: !5594)
!5613 = !DILocation(line: 275, column: 15, scope: !5594)
!5614 = !DILocation(line: 275, column: 13, scope: !5594)
!5615 = !DILocation(line: 276, column: 26, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5594, file: !3, line: 276, column: 6)
!5617 = !DILocation(line: 276, column: 6, scope: !5616)
!5618 = !DILocation(line: 276, column: 31, scope: !5616)
!5619 = !DILocation(line: 276, column: 34, scope: !5616)
!5620 = !DILocation(line: 276, column: 39, scope: !5616)
!5621 = !DILocation(line: 276, column: 44, scope: !5616)
!5622 = !DILocation(line: 276, column: 6, scope: !5594)
!5623 = !DILocation(line: 277, column: 25, scope: !5624)
!5624 = distinct !DILexicalBlock(scope: !5616, file: !3, line: 276, column: 50)
!5625 = !DILocation(line: 277, column: 9, scope: !5624)
!5626 = !DILocation(line: 277, column: 7, scope: !5624)
!5627 = !DILocation(line: 278, column: 7, scope: !5628)
!5628 = distinct !DILexicalBlock(scope: !5624, file: !3, line: 278, column: 7)
!5629 = !DILocation(line: 278, column: 11, scope: !5628)
!5630 = !DILocation(line: 278, column: 7, scope: !5624)
!5631 = !DILocation(line: 279, column: 26, scope: !5628)
!5632 = !DILocation(line: 279, column: 31, scope: !5628)
!5633 = !DILocation(line: 279, column: 4, scope: !5628)
!5634 = !DILocation(line: 280, column: 2, scope: !5624)
!5635 = !DILocation(line: 281, column: 9, scope: !5636)
!5636 = distinct !DILexicalBlock(scope: !5616, file: !3, line: 280, column: 9)
!5637 = !DILocation(line: 281, column: 14, scope: !5636)
!5638 = !DILocation(line: 281, column: 19, scope: !5636)
!5639 = !DILocation(line: 281, column: 25, scope: !5636)
!5640 = !DILocation(line: 281, column: 7, scope: !5636)
!5641 = !DILocation(line: 282, column: 7, scope: !5642)
!5642 = distinct !DILexicalBlock(scope: !5636, file: !3, line: 282, column: 7)
!5643 = !DILocation(line: 282, column: 11, scope: !5642)
!5644 = !DILocation(line: 282, column: 7, scope: !5636)
!5645 = !DILocation(line: 283, column: 26, scope: !5646)
!5646 = distinct !DILexicalBlock(scope: !5642, file: !3, line: 282, column: 17)
!5647 = !DILocation(line: 283, column: 31, scope: !5646)
!5648 = !DILocation(line: 283, column: 4, scope: !5646)
!5649 = !DILocation(line: 284, column: 30, scope: !5646)
!5650 = !DILocation(line: 284, column: 4, scope: !5646)
!5651 = !DILocation(line: 284, column: 13, scope: !5646)
!5652 = !DILocation(line: 284, column: 28, scope: !5646)
!5653 = !DILocation(line: 285, column: 33, scope: !5646)
!5654 = !DILocation(line: 285, column: 4, scope: !5646)
!5655 = !DILocation(line: 285, column: 13, scope: !5646)
!5656 = !DILocation(line: 285, column: 31, scope: !5646)
!5657 = !DILocation(line: 286, column: 27, scope: !5646)
!5658 = !DILocation(line: 286, column: 4, scope: !5646)
!5659 = !DILocation(line: 287, column: 3, scope: !5646)
!5660 = !DILocation(line: 290, column: 9, scope: !5594)
!5661 = !DILocation(line: 290, column: 2, scope: !5594)
!5662 = !DILocation(line: 291, column: 1, scope: !5594)
!5663 = distinct !DISubprogram(name: "watchdog_set_timeout", scope: !3, file: !3, line: 375, type: !3520, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!5664 = !DILocalVariable(name: "wdd", arg: 1, scope: !5663, file: !3, line: 375, type: !3485)
!5665 = !DILocation(line: 375, column: 57, scope: !5663)
!5666 = !DILocalVariable(name: "timeout", arg: 2, scope: !5663, file: !3, line: 376, type: !7)
!5667 = !DILocation(line: 376, column: 21, scope: !5663)
!5668 = !DILocalVariable(name: "err", scope: !5663, file: !3, line: 378, type: !168)
!5669 = !DILocation(line: 378, column: 6, scope: !5663)
!5670 = !DILocation(line: 380, column: 8, scope: !5671)
!5671 = distinct !DILexicalBlock(scope: !5663, file: !3, line: 380, column: 6)
!5672 = !DILocation(line: 380, column: 13, scope: !5671)
!5673 = !DILocation(line: 380, column: 19, scope: !5671)
!5674 = !DILocation(line: 380, column: 27, scope: !5671)
!5675 = !DILocation(line: 380, column: 6, scope: !5663)
!5676 = !DILocation(line: 381, column: 3, scope: !5671)
!5677 = !DILocation(line: 383, column: 31, scope: !5678)
!5678 = distinct !DILexicalBlock(scope: !5663, file: !3, line: 383, column: 6)
!5679 = !DILocation(line: 383, column: 36, scope: !5678)
!5680 = !DILocation(line: 383, column: 6, scope: !5678)
!5681 = !DILocation(line: 383, column: 6, scope: !5663)
!5682 = !DILocation(line: 384, column: 3, scope: !5678)
!5683 = !DILocation(line: 386, column: 6, scope: !5684)
!5684 = distinct !DILexicalBlock(scope: !5663, file: !3, line: 386, column: 6)
!5685 = !DILocation(line: 386, column: 11, scope: !5684)
!5686 = !DILocation(line: 386, column: 16, scope: !5684)
!5687 = !DILocation(line: 386, column: 6, scope: !5663)
!5688 = !DILocation(line: 387, column: 9, scope: !5689)
!5689 = distinct !DILexicalBlock(scope: !5684, file: !3, line: 386, column: 29)
!5690 = !DILocation(line: 387, column: 14, scope: !5689)
!5691 = !DILocation(line: 387, column: 19, scope: !5689)
!5692 = !DILocation(line: 387, column: 31, scope: !5689)
!5693 = !DILocation(line: 387, column: 36, scope: !5689)
!5694 = !DILocation(line: 387, column: 7, scope: !5689)
!5695 = !DILocation(line: 388, column: 2, scope: !5689)
!5696 = !DILocation(line: 389, column: 18, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5684, file: !3, line: 388, column: 9)
!5698 = !DILocation(line: 389, column: 3, scope: !5697)
!5699 = !DILocation(line: 389, column: 8, scope: !5697)
!5700 = !DILocation(line: 389, column: 16, scope: !5697)
!5701 = !DILocation(line: 391, column: 7, scope: !5702)
!5702 = distinct !DILexicalBlock(scope: !5697, file: !3, line: 391, column: 7)
!5703 = !DILocation(line: 391, column: 12, scope: !5702)
!5704 = !DILocation(line: 391, column: 26, scope: !5702)
!5705 = !DILocation(line: 391, column: 31, scope: !5702)
!5706 = !DILocation(line: 391, column: 23, scope: !5702)
!5707 = !DILocation(line: 391, column: 7, scope: !5697)
!5708 = !DILocation(line: 392, column: 4, scope: !5702)
!5709 = !DILocation(line: 392, column: 9, scope: !5702)
!5710 = !DILocation(line: 392, column: 20, scope: !5702)
!5711 = !DILocation(line: 395, column: 25, scope: !5663)
!5712 = !DILocation(line: 395, column: 2, scope: !5663)
!5713 = !DILocation(line: 397, column: 9, scope: !5663)
!5714 = !DILocation(line: 397, column: 2, scope: !5663)
!5715 = !DILocation(line: 398, column: 1, scope: !5663)
!5716 = distinct !DISubprogram(name: "watchdog_get_timeleft", scope: !3, file: !3, line: 435, type: !5717, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!5717 = !DISubroutineType(types: !5718)
!5718 = !{!168, !3485, !2442}
!5719 = !DILocalVariable(name: "wdd", arg: 1, scope: !5716, file: !3, line: 435, type: !3485)
!5720 = !DILocation(line: 435, column: 58, scope: !5716)
!5721 = !DILocalVariable(name: "timeleft", arg: 2, scope: !5716, file: !3, line: 436, type: !2442)
!5722 = !DILocation(line: 436, column: 22, scope: !5716)
!5723 = !DILocation(line: 438, column: 3, scope: !5716)
!5724 = !DILocation(line: 438, column: 12, scope: !5716)
!5725 = !DILocation(line: 440, column: 7, scope: !5726)
!5726 = distinct !DILexicalBlock(scope: !5716, file: !3, line: 440, column: 6)
!5727 = !DILocation(line: 440, column: 12, scope: !5726)
!5728 = !DILocation(line: 440, column: 17, scope: !5726)
!5729 = !DILocation(line: 440, column: 6, scope: !5716)
!5730 = !DILocation(line: 441, column: 3, scope: !5726)
!5731 = !DILocation(line: 443, column: 14, scope: !5716)
!5732 = !DILocation(line: 443, column: 19, scope: !5716)
!5733 = !DILocation(line: 443, column: 24, scope: !5716)
!5734 = !DILocation(line: 443, column: 37, scope: !5716)
!5735 = !DILocation(line: 443, column: 3, scope: !5716)
!5736 = !DILocation(line: 443, column: 12, scope: !5716)
!5737 = !DILocation(line: 445, column: 2, scope: !5716)
!5738 = !DILocation(line: 446, column: 1, scope: !5716)
!5739 = distinct !DISubprogram(name: "watchdog_set_pretimeout", scope: !3, file: !3, line: 406, type: !3520, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!5740 = !DILocalVariable(name: "wdd", arg: 1, scope: !5739, file: !3, line: 406, type: !3485)
!5741 = !DILocation(line: 406, column: 60, scope: !5739)
!5742 = !DILocalVariable(name: "timeout", arg: 2, scope: !5739, file: !3, line: 407, type: !7)
!5743 = !DILocation(line: 407, column: 21, scope: !5739)
!5744 = !DILocalVariable(name: "err", scope: !5739, file: !3, line: 409, type: !168)
!5745 = !DILocation(line: 409, column: 6, scope: !5739)
!5746 = !DILocation(line: 411, column: 8, scope: !5747)
!5747 = distinct !DILexicalBlock(scope: !5739, file: !3, line: 411, column: 6)
!5748 = !DILocation(line: 411, column: 13, scope: !5747)
!5749 = !DILocation(line: 411, column: 19, scope: !5747)
!5750 = !DILocation(line: 411, column: 27, scope: !5747)
!5751 = !DILocation(line: 411, column: 6, scope: !5739)
!5752 = !DILocation(line: 412, column: 3, scope: !5747)
!5753 = !DILocation(line: 414, column: 34, scope: !5754)
!5754 = distinct !DILexicalBlock(scope: !5739, file: !3, line: 414, column: 6)
!5755 = !DILocation(line: 414, column: 39, scope: !5754)
!5756 = !DILocation(line: 414, column: 6, scope: !5754)
!5757 = !DILocation(line: 414, column: 6, scope: !5739)
!5758 = !DILocation(line: 415, column: 3, scope: !5754)
!5759 = !DILocation(line: 417, column: 6, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !5739, file: !3, line: 417, column: 6)
!5761 = !DILocation(line: 417, column: 11, scope: !5760)
!5762 = !DILocation(line: 417, column: 16, scope: !5760)
!5763 = !DILocation(line: 417, column: 6, scope: !5739)
!5764 = !DILocation(line: 418, column: 9, scope: !5760)
!5765 = !DILocation(line: 418, column: 14, scope: !5760)
!5766 = !DILocation(line: 418, column: 19, scope: !5760)
!5767 = !DILocation(line: 418, column: 34, scope: !5760)
!5768 = !DILocation(line: 418, column: 39, scope: !5760)
!5769 = !DILocation(line: 418, column: 7, scope: !5760)
!5770 = !DILocation(line: 418, column: 3, scope: !5760)
!5771 = !DILocation(line: 420, column: 21, scope: !5760)
!5772 = !DILocation(line: 420, column: 3, scope: !5760)
!5773 = !DILocation(line: 420, column: 8, scope: !5760)
!5774 = !DILocation(line: 420, column: 19, scope: !5760)
!5775 = !DILocation(line: 422, column: 9, scope: !5739)
!5776 = !DILocation(line: 422, column: 2, scope: !5739)
!5777 = !DILocation(line: 423, column: 1, scope: !5739)
!5778 = distinct !DISubprogram(name: "copy_overflow", scope: !4877, file: !4877, line: 132, type: !5779, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!5779 = !DISubroutineType(types: !5780)
!5780 = !{null, !168, !113}
!5781 = !DILocalVariable(name: "size", arg: 1, scope: !5778, file: !4877, line: 132, type: !168)
!5782 = !DILocation(line: 132, column: 38, scope: !5778)
!5783 = !DILocalVariable(name: "count", arg: 2, scope: !5778, file: !4877, line: 132, type: !113)
!5784 = !DILocation(line: 132, column: 58, scope: !5778)
!5785 = !DILocalVariable(name: "__ret_warn_on", scope: !5786, file: !4877, line: 134, type: !168)
!5786 = distinct !DILexicalBlock(scope: !5778, file: !4877, line: 134, column: 2)
!5787 = !DILocation(line: 134, column: 2, scope: !5786)
!5788 = !DILocation(line: 134, column: 2, scope: !5789)
!5789 = distinct !DILexicalBlock(scope: !5786, file: !4877, line: 134, column: 2)
!5790 = !DILocation(line: 134, column: 2, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5789, file: !4877, line: 134, column: 2)
!5792 = !DILocation(line: 134, column: 2, scope: !5793)
!5793 = distinct !DILexicalBlock(scope: !5791, file: !4877, line: 134, column: 2)
!5794 = !DILocation(line: 134, column: 2, scope: !5795)
!5795 = distinct !DILexicalBlock(scope: !5791, file: !4877, line: 134, column: 2)
!5796 = !DILocation(line: 134, column: 2, scope: !5797)
!5797 = distinct !DILexicalBlock(scope: !5795, file: !4877, line: 134, column: 2)
!5798 = !DILocation(line: 134, column: 2, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5795, file: !4877, line: 134, column: 2)
!5800 = !{i32 -2145558646, i32 -2145558617, i32 -2145558571, i32 -2145558513, i32 -2145558459, i32 -2145558405, i32 -2145558350, i32 -2145558319}
!5801 = !DILocation(line: 134, column: 2, scope: !5802)
!5802 = distinct !DILexicalBlock(scope: !5795, file: !4877, line: 134, column: 2)
!5803 = !{i32 -2145557899, i32 -2145557892, i32 -2145557840, i32 -2145557809, i32 -2145557779}
!5804 = !DILocation(line: 134, column: 2, scope: !5805)
!5805 = distinct !DILexicalBlock(scope: !5795, file: !4877, line: 134, column: 2)
!5806 = !DILocation(line: 134, column: 2, scope: !5807)
!5807 = distinct !DILexicalBlock(scope: !5791, file: !4877, line: 134, column: 2)
!5808 = !DILocation(line: 135, column: 1, scope: !5778)
!5809 = distinct !DISubprogram(name: "check_object_size", scope: !4877, file: !4877, line: 122, type: !5810, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!5810 = !DISubroutineType(types: !5811)
!5811 = !{null, !2973, !113, !399}
!5812 = !DILocalVariable(name: "ptr", arg: 1, scope: !5809, file: !4877, line: 122, type: !2973)
!5813 = !DILocation(line: 122, column: 50, scope: !5809)
!5814 = !DILocalVariable(name: "n", arg: 2, scope: !5809, file: !4877, line: 122, type: !113)
!5815 = !DILocation(line: 122, column: 69, scope: !5809)
!5816 = !DILocalVariable(name: "to_user", arg: 3, scope: !5809, file: !4877, line: 123, type: !399)
!5817 = !DILocation(line: 123, column: 15, scope: !5809)
!5818 = !DILocation(line: 124, column: 3, scope: !5809)
!5819 = distinct !DISubprogram(name: "test_and_clear_bit", scope: !5360, file: !5360, line: 81, type: !5820, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!5820 = !DISubroutineType(types: !5821)
!5821 = !{!399, !219, !5363}
!5822 = !DILocalVariable(name: "nr", arg: 1, scope: !5823, file: !4565, line: 160, type: !219)
!5823 = distinct !DISubprogram(name: "arch_test_and_clear_bit", scope: !4565, file: !4565, line: 160, type: !5820, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!5824 = !DILocation(line: 160, column: 30, scope: !5823, inlinedAt: !5825)
!5825 = distinct !DILocation(line: 84, column: 9, scope: !5819)
!5826 = !DILocalVariable(name: "addr", arg: 2, scope: !5823, file: !4565, line: 160, type: !5363)
!5827 = !DILocation(line: 160, column: 58, scope: !5823, inlinedAt: !5825)
!5828 = !DILocalVariable(name: "c", scope: !5829, file: !4565, line: 162, type: !399)
!5829 = distinct !DILexicalBlock(scope: !5823, file: !4565, line: 162, column: 9)
!5830 = !DILocation(line: 162, column: 9, scope: !5829, inlinedAt: !5825)
!5831 = !DILocalVariable(name: "v", arg: 1, scope: !5832, file: !4697, line: 99, type: !4700)
!5832 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4697, file: !4697, line: 99, type: !4698, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!5833 = !DILocation(line: 99, column: 79, scope: !5832, inlinedAt: !5834)
!5834 = distinct !DILocation(line: 83, column: 2, scope: !5819)
!5835 = !DILocalVariable(name: "size", arg: 2, scope: !5832, file: !4697, line: 99, type: !231)
!5836 = !DILocation(line: 99, column: 89, scope: !5832, inlinedAt: !5834)
!5837 = !DILocalVariable(name: "nr", arg: 1, scope: !5819, file: !5360, line: 81, type: !219)
!5838 = !DILocation(line: 81, column: 44, scope: !5819)
!5839 = !DILocalVariable(name: "addr", arg: 2, scope: !5819, file: !5360, line: 81, type: !5363)
!5840 = !DILocation(line: 81, column: 72, scope: !5819)
!5841 = !DILocation(line: 83, column: 31, scope: !5819)
!5842 = !DILocation(line: 83, column: 38, scope: !5819)
!5843 = !DILocation(line: 83, column: 36, scope: !5819)
!5844 = !DILocation(line: 101, column: 20, scope: !5832, inlinedAt: !5834)
!5845 = !DILocation(line: 101, column: 23, scope: !5832, inlinedAt: !5834)
!5846 = !DILocation(line: 101, column: 2, scope: !5832, inlinedAt: !5834)
!5847 = !DILocation(line: 102, column: 2, scope: !5832, inlinedAt: !5834)
!5848 = !DILocation(line: 84, column: 33, scope: !5819)
!5849 = !DILocation(line: 84, column: 37, scope: !5819)
!5850 = !{i32 -2147133717, i32 -2147133621}
!5851 = !DILocation(line: 84, column: 2, scope: !5819)
!5852 = distinct !DISubprogram(name: "watchdog_update_worker", scope: !3, file: !3, line: 149, type: !3542, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!5853 = !DILocalVariable(name: "wdd", arg: 1, scope: !5852, file: !3, line: 149, type: !3485)
!5854 = !DILocation(line: 149, column: 67, scope: !5852)
!5855 = !DILocalVariable(name: "wd_data", scope: !5852, file: !3, line: 151, type: !114)
!5856 = !DILocation(line: 151, column: 29, scope: !5852)
!5857 = !DILocation(line: 151, column: 39, scope: !5852)
!5858 = !DILocation(line: 151, column: 44, scope: !5852)
!5859 = !DILocation(line: 153, column: 27, scope: !5860)
!5860 = distinct !DILexicalBlock(scope: !5852, file: !3, line: 153, column: 6)
!5861 = !DILocation(line: 153, column: 6, scope: !5860)
!5862 = !DILocation(line: 153, column: 6, scope: !5852)
!5863 = !DILocalVariable(name: "t", scope: !5864, file: !3, line: 154, type: !1132)
!5864 = distinct !DILexicalBlock(scope: !5860, file: !3, line: 153, column: 33)
!5865 = !DILocation(line: 154, column: 11, scope: !5864)
!5866 = !DILocation(line: 154, column: 39, scope: !5864)
!5867 = !DILocation(line: 154, column: 15, scope: !5864)
!5868 = !DILocation(line: 156, column: 7, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5864, file: !3, line: 156, column: 7)
!5870 = !DILocation(line: 156, column: 9, scope: !5869)
!5871 = !DILocation(line: 156, column: 7, scope: !5864)
!5872 = !DILocation(line: 157, column: 19, scope: !5869)
!5873 = !DILocation(line: 157, column: 28, scope: !5869)
!5874 = !DILocation(line: 157, column: 35, scope: !5869)
!5875 = !DILocation(line: 157, column: 4, scope: !5869)
!5876 = !DILocation(line: 159, column: 2, scope: !5864)
!5877 = !DILocation(line: 160, column: 19, scope: !5878)
!5878 = distinct !DILexicalBlock(scope: !5860, file: !3, line: 159, column: 9)
!5879 = !DILocation(line: 160, column: 28, scope: !5878)
!5880 = !DILocation(line: 160, column: 3, scope: !5878)
!5881 = !DILocation(line: 162, column: 1, scope: !5852)
!5882 = distinct !DISubprogram(name: "watchdog_need_worker", scope: !3, file: !3, line: 96, type: !4529, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!5883 = !DILocalVariable(name: "wdd", arg: 1, scope: !5882, file: !3, line: 96, type: !3485)
!5884 = !DILocation(line: 96, column: 65, scope: !5882)
!5885 = !DILocalVariable(name: "hm", scope: !5882, file: !3, line: 99, type: !7)
!5886 = !DILocation(line: 99, column: 15, scope: !5882)
!5887 = !DILocation(line: 99, column: 20, scope: !5882)
!5888 = !DILocation(line: 99, column: 25, scope: !5882)
!5889 = !DILocalVariable(name: "t", scope: !5882, file: !3, line: 100, type: !7)
!5890 = !DILocation(line: 100, column: 15, scope: !5882)
!5891 = !DILocation(line: 100, column: 19, scope: !5882)
!5892 = !DILocation(line: 100, column: 24, scope: !5882)
!5893 = !DILocation(line: 100, column: 32, scope: !5882)
!5894 = !DILocation(line: 115, column: 10, scope: !5882)
!5895 = !DILocation(line: 115, column: 13, scope: !5882)
!5896 = !DILocation(line: 115, column: 32, scope: !5882)
!5897 = !DILocation(line: 115, column: 16, scope: !5882)
!5898 = !DILocation(line: 115, column: 37, scope: !5882)
!5899 = !DILocation(line: 115, column: 40, scope: !5882)
!5900 = !DILocation(line: 115, column: 44, scope: !5882)
!5901 = !DILocation(line: 115, column: 42, scope: !5882)
!5902 = !DILocation(line: 115, column: 48, scope: !5882)
!5903 = !DILocation(line: 116, column: 4, scope: !5882)
!5904 = !DILocation(line: 116, column: 6, scope: !5882)
!5905 = !DILocation(line: 116, column: 26, scope: !5882)
!5906 = !DILocation(line: 116, column: 10, scope: !5882)
!5907 = !DILocation(line: 116, column: 31, scope: !5882)
!5908 = !DILocation(line: 116, column: 54, scope: !5882)
!5909 = !DILocation(line: 116, column: 34, scope: !5882)
!5910 = !DILocation(line: 0, scope: !5882)
!5911 = !DILocation(line: 115, column: 2, scope: !5882)
!5912 = distinct !DISubprogram(name: "watchdog_next_keepalive", scope: !3, file: !3, line: 119, type: !5913, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!5913 = !DISubroutineType(types: !5914)
!5914 = !{!1132, !3485}
!5915 = !DILocalVariable(name: "wdd", arg: 1, scope: !5912, file: !3, line: 119, type: !3485)
!5916 = !DILocation(line: 119, column: 64, scope: !5912)
!5917 = !DILocalVariable(name: "wd_data", scope: !5912, file: !3, line: 121, type: !114)
!5918 = !DILocation(line: 121, column: 29, scope: !5912)
!5919 = !DILocation(line: 121, column: 39, scope: !5912)
!5920 = !DILocation(line: 121, column: 44, scope: !5912)
!5921 = !DILocalVariable(name: "timeout_ms", scope: !5912, file: !3, line: 122, type: !7)
!5922 = !DILocation(line: 122, column: 15, scope: !5912)
!5923 = !DILocation(line: 122, column: 28, scope: !5912)
!5924 = !DILocation(line: 122, column: 33, scope: !5912)
!5925 = !DILocation(line: 122, column: 41, scope: !5912)
!5926 = !DILocalVariable(name: "keepalive_interval", scope: !5912, file: !3, line: 123, type: !1132)
!5927 = !DILocation(line: 123, column: 10, scope: !5912)
!5928 = !DILocalVariable(name: "last_heartbeat", scope: !5912, file: !3, line: 124, type: !1132)
!5929 = !DILocation(line: 124, column: 10, scope: !5912)
!5930 = !DILocalVariable(name: "latest_heartbeat", scope: !5912, file: !3, line: 124, type: !1132)
!5931 = !DILocation(line: 124, column: 26, scope: !5912)
!5932 = !DILocalVariable(name: "virt_timeout", scope: !5912, file: !3, line: 125, type: !1132)
!5933 = !DILocation(line: 125, column: 10, scope: !5912)
!5934 = !DILocalVariable(name: "hw_heartbeat_ms", scope: !5912, file: !3, line: 126, type: !7)
!5935 = !DILocation(line: 126, column: 15, scope: !5912)
!5936 = !DILocation(line: 128, column: 22, scope: !5937)
!5937 = distinct !DILexicalBlock(scope: !5912, file: !3, line: 128, column: 6)
!5938 = !DILocation(line: 128, column: 6, scope: !5937)
!5939 = !DILocation(line: 128, column: 6, scope: !5912)
!5940 = !DILocation(line: 129, column: 18, scope: !5937)
!5941 = !DILocation(line: 129, column: 16, scope: !5937)
!5942 = !DILocation(line: 129, column: 3, scope: !5937)
!5943 = !DILocation(line: 132, column: 18, scope: !5937)
!5944 = !DILocation(line: 132, column: 27, scope: !5937)
!5945 = !DILocation(line: 132, column: 16, scope: !5937)
!5946 = !DILocalVariable(name: "__x", scope: !5947, file: !3, line: 134, type: !7)
!5947 = distinct !DILexicalBlock(scope: !5912, file: !3, line: 134, column: 20)
!5948 = !DILocation(line: 134, column: 20, scope: !5947)
!5949 = !DILocalVariable(name: "__y", scope: !5947, file: !3, line: 134, type: !7)
!5950 = !DILocalVariable(name: "__UNIQUE_ID___x203", scope: !5951, file: !3, line: 134, type: !7)
!5951 = distinct !DILexicalBlock(scope: !5947, file: !3, line: 134, column: 20)
!5952 = !DILocation(line: 134, column: 20, scope: !5951)
!5953 = !DILocalVariable(name: "__UNIQUE_ID___y204", scope: !5951, file: !3, line: 134, type: !7)
!5954 = !DILocation(line: 134, column: 18, scope: !5912)
!5955 = !DILocation(line: 135, column: 35, scope: !5912)
!5956 = !DILocation(line: 135, column: 51, scope: !5912)
!5957 = !DILocation(line: 135, column: 23, scope: !5912)
!5958 = !DILocation(line: 135, column: 21, scope: !5912)
!5959 = !DILocation(line: 142, column: 19, scope: !5912)
!5960 = !DILocation(line: 142, column: 17, scope: !5912)
!5961 = !DILocation(line: 143, column: 21, scope: !5912)
!5962 = !DILocation(line: 143, column: 19, scope: !5912)
!5963 = !DILocation(line: 144, column: 19, scope: !5964)
!5964 = distinct !DILexicalBlock(scope: !5912, file: !3, line: 144, column: 6)
!5965 = !DILocation(line: 144, column: 37, scope: !5964)
!5966 = !DILocation(line: 144, column: 6, scope: !5964)
!5967 = !DILocation(line: 144, column: 6, scope: !5912)
!5968 = !DILocation(line: 145, column: 10, scope: !5964)
!5969 = !DILocation(line: 145, column: 3, scope: !5964)
!5970 = !DILocation(line: 146, column: 9, scope: !5912)
!5971 = !DILocation(line: 146, column: 2, scope: !5912)
!5972 = !DILocation(line: 147, column: 1, scope: !5912)
!5973 = distinct !DISubprogram(name: "ktime_before", scope: !1133, file: !1133, line: 123, type: !4754, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!5974 = !DILocalVariable(name: "cmp1", arg: 1, scope: !5973, file: !1133, line: 123, type: !4756)
!5975 = !DILocation(line: 123, column: 47, scope: !5973)
!5976 = !DILocalVariable(name: "cmp2", arg: 2, scope: !5973, file: !1133, line: 123, type: !4756)
!5977 = !DILocation(line: 123, column: 67, scope: !5973)
!5978 = !DILocation(line: 125, column: 23, scope: !5973)
!5979 = !DILocation(line: 125, column: 29, scope: !5973)
!5980 = !DILocation(line: 125, column: 9, scope: !5973)
!5981 = !DILocation(line: 125, column: 35, scope: !5973)
!5982 = !DILocation(line: 125, column: 2, scope: !5973)
!5983 = distinct !DISubprogram(name: "watchdog_timeout_invalid", scope: !3487, file: !3487, line: 160, type: !5984, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!5984 = !DISubroutineType(types: !5985)
!5985 = !{!399, !3485, !7}
!5986 = !DILocalVariable(name: "wdd", arg: 1, scope: !5983, file: !3487, line: 160, type: !3485)
!5987 = !DILocation(line: 160, column: 69, scope: !5983)
!5988 = !DILocalVariable(name: "t", arg: 2, scope: !5983, file: !3487, line: 160, type: !7)
!5989 = !DILocation(line: 160, column: 87, scope: !5983)
!5990 = !DILocation(line: 173, column: 9, scope: !5983)
!5991 = !DILocation(line: 173, column: 11, scope: !5983)
!5992 = !DILocation(line: 173, column: 29, scope: !5983)
!5993 = !DILocation(line: 173, column: 32, scope: !5983)
!5994 = !DILocation(line: 173, column: 36, scope: !5983)
!5995 = !DILocation(line: 173, column: 41, scope: !5983)
!5996 = !DILocation(line: 173, column: 34, scope: !5983)
!5997 = !DILocation(line: 173, column: 53, scope: !5983)
!5998 = !DILocation(line: 174, column: 5, scope: !5983)
!5999 = !DILocation(line: 174, column: 10, scope: !5983)
!6000 = !DILocation(line: 174, column: 30, scope: !5983)
!6001 = !DILocation(line: 174, column: 33, scope: !5983)
!6002 = !DILocation(line: 174, column: 38, scope: !5983)
!6003 = !DILocation(line: 174, column: 50, scope: !5983)
!6004 = !DILocation(line: 175, column: 4, scope: !5983)
!6005 = !DILocation(line: 175, column: 8, scope: !5983)
!6006 = !DILocation(line: 175, column: 13, scope: !5983)
!6007 = !DILocation(line: 175, column: 6, scope: !5983)
!6008 = !DILocation(line: 0, scope: !5983)
!6009 = !DILocation(line: 173, column: 2, scope: !5983)
!6010 = distinct !DISubprogram(name: "watchdog_pretimeout_invalid", scope: !3487, file: !3487, line: 179, type: !5984, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!6011 = !DILocalVariable(name: "wdd", arg: 1, scope: !6010, file: !3487, line: 179, type: !3485)
!6012 = !DILocation(line: 179, column: 72, scope: !6010)
!6013 = !DILocalVariable(name: "t", arg: 2, scope: !6010, file: !3487, line: 180, type: !7)
!6014 = !DILocation(line: 180, column: 26, scope: !6010)
!6015 = !DILocation(line: 182, column: 9, scope: !6010)
!6016 = !DILocation(line: 182, column: 11, scope: !6010)
!6017 = !DILocation(line: 182, column: 14, scope: !6010)
!6018 = !DILocation(line: 182, column: 19, scope: !6010)
!6019 = !DILocation(line: 182, column: 27, scope: !6010)
!6020 = !DILocation(line: 182, column: 30, scope: !6010)
!6021 = !DILocation(line: 182, column: 35, scope: !6010)
!6022 = !DILocation(line: 182, column: 40, scope: !6010)
!6023 = !DILocation(line: 182, column: 32, scope: !6010)
!6024 = !DILocation(line: 0, scope: !6010)
!6025 = !DILocation(line: 182, column: 2, scope: !6010)
!6026 = distinct !DISubprogram(name: "imajor", scope: !31, file: !31, line: 880, type: !6027, scopeLine: 881, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!6027 = !DISubroutineType(types: !6028)
!6028 = !{!7, !2529}
!6029 = !DILocalVariable(name: "inode", arg: 1, scope: !6026, file: !31, line: 880, type: !2529)
!6030 = !DILocation(line: 880, column: 51, scope: !6026)
!6031 = !DILocation(line: 882, column: 9, scope: !6026)
!6032 = !DILocation(line: 882, column: 2, scope: !6026)
!6033 = distinct !DISubprogram(name: "test_and_set_bit", scope: !5360, file: !5360, line: 68, type: !5820, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!6034 = !DILocalVariable(name: "nr", arg: 1, scope: !6035, file: !4565, line: 136, type: !219)
!6035 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !4565, file: !4565, line: 136, type: !5820, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!6036 = !DILocation(line: 136, column: 28, scope: !6035, inlinedAt: !6037)
!6037 = distinct !DILocation(line: 71, column: 9, scope: !6033)
!6038 = !DILocalVariable(name: "addr", arg: 2, scope: !6035, file: !4565, line: 136, type: !5363)
!6039 = !DILocation(line: 136, column: 56, scope: !6035, inlinedAt: !6037)
!6040 = !DILocalVariable(name: "c", scope: !6041, file: !4565, line: 138, type: !399)
!6041 = distinct !DILexicalBlock(scope: !6035, file: !4565, line: 138, column: 9)
!6042 = !DILocation(line: 138, column: 9, scope: !6041, inlinedAt: !6037)
!6043 = !DILocation(line: 99, column: 79, scope: !5832, inlinedAt: !6044)
!6044 = distinct !DILocation(line: 70, column: 2, scope: !6033)
!6045 = !DILocation(line: 99, column: 89, scope: !5832, inlinedAt: !6044)
!6046 = !DILocalVariable(name: "nr", arg: 1, scope: !6033, file: !5360, line: 68, type: !219)
!6047 = !DILocation(line: 68, column: 42, scope: !6033)
!6048 = !DILocalVariable(name: "addr", arg: 2, scope: !6033, file: !5360, line: 68, type: !5363)
!6049 = !DILocation(line: 68, column: 70, scope: !6033)
!6050 = !DILocation(line: 70, column: 31, scope: !6033)
!6051 = !DILocation(line: 70, column: 38, scope: !6033)
!6052 = !DILocation(line: 70, column: 36, scope: !6033)
!6053 = !DILocation(line: 101, column: 20, scope: !5832, inlinedAt: !6044)
!6054 = !DILocation(line: 101, column: 23, scope: !5832, inlinedAt: !6044)
!6055 = !DILocation(line: 101, column: 2, scope: !5832, inlinedAt: !6044)
!6056 = !DILocation(line: 102, column: 2, scope: !5832, inlinedAt: !6044)
!6057 = !DILocation(line: 71, column: 31, scope: !6033)
!6058 = !DILocation(line: 71, column: 35, scope: !6033)
!6059 = !{i32 -2147135629, i32 -2147135533}
!6060 = !DILocation(line: 71, column: 2, scope: !6033)
!6061 = distinct !DISubprogram(name: "try_module_get", scope: !4538, file: !4538, line: 751, type: !6062, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!6062 = !DISubroutineType(types: !6063)
!6063 = !{!399, !542}
!6064 = !DILocalVariable(name: "module", arg: 1, scope: !6061, file: !4538, line: 751, type: !542)
!6065 = !DILocation(line: 751, column: 50, scope: !6061)
!6066 = !DILocation(line: 753, column: 2, scope: !6061)
!6067 = distinct !DISubprogram(name: "module_put", scope: !4538, file: !4538, line: 756, type: !4539, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!6068 = !DILocalVariable(name: "module", arg: 1, scope: !6067, file: !4538, line: 756, type: !542)
!6069 = !DILocation(line: 756, column: 46, scope: !6067)
!6070 = !DILocation(line: 758, column: 1, scope: !6067)
!6071 = distinct !DISubprogram(name: "ktime_set", scope: !1133, file: !1133, line: 38, type: !6072, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!6072 = !DISubroutineType(types: !6073)
!6073 = !{!1132, !6074, !6075}
!6074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !689)
!6075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!6076 = !DILocalVariable(name: "secs", arg: 1, scope: !6071, file: !1133, line: 38, type: !6074)
!6077 = !DILocation(line: 38, column: 43, scope: !6071)
!6078 = !DILocalVariable(name: "nsecs", arg: 2, scope: !6071, file: !1133, line: 38, type: !6075)
!6079 = !DILocation(line: 38, column: 69, scope: !6071)
!6080 = !DILocation(line: 40, column: 6, scope: !6081)
!6081 = distinct !DILexicalBlock(scope: !6071, file: !1133, line: 40, column: 6)
!6082 = !DILocation(line: 40, column: 6, scope: !6071)
!6083 = !DILocation(line: 41, column: 3, scope: !6081)
!6084 = !DILocation(line: 43, column: 9, scope: !6071)
!6085 = !DILocation(line: 43, column: 14, scope: !6071)
!6086 = !DILocation(line: 43, column: 36, scope: !6071)
!6087 = !DILocation(line: 43, column: 29, scope: !6071)
!6088 = !DILocation(line: 43, column: 2, scope: !6071)
!6089 = !DILocation(line: 44, column: 1, scope: !6071)
