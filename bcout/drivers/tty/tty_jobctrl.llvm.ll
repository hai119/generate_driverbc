; ModuleID = '../bcout/drivers/tty/tty_jobctrl.llvm.bc'
source_filename = "drivers/tty/tty_jobctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
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
%struct.vdso_image = type opaque
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
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.page = type { i64, %union.anon.2, %union.anon.51, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
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
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.spinlock, %struct.spinlock, %struct.ktermios, %struct.ktermios, %struct.termiox*, [64 x i8], %struct.pid*, %struct.pid*, i64, i32, %struct.winsize, i8, i64, i32, i16, i56, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
%struct.kref = type { %struct.refcount_struct }
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
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.tty_driver = type { i32, %struct.kref, %struct.cdev**, %struct.module*, i8*, i8*, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, %struct.proc_dir_entry*, %struct.tty_driver*, %struct.tty_struct**, %struct.tty_port**, %struct.ktermios**, i8*, %struct.tty_operations*, %struct.list_head }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.proc_dir_entry = type opaque
%struct.tty_operations = type { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, i32 (%struct.tty_driver*, %struct.tty_struct*)*, void (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i64)*, i64 (%struct.tty_struct*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, {}*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i8)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, %struct.winsize*)*, i32 (%struct.tty_struct*, %struct.termiox*)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, void (%struct.tty_struct*, %struct.seq_file*)*, i32 (%struct.seq_file*, i8*)* }
%struct.serial_icounter_struct = type opaque
%struct.serial_struct = type opaque
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.tty_ldisc = type { %struct.tty_ldisc_ops*, %struct.tty_struct* }
%struct.tty_ldisc_ops = type { i32, i8*, i32, i32, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*, i8*, i8*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)*, %struct.module*, i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.termiox = type { i16, i16, [5 x i16], i16 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.tty_buffer = type { %union.anon.64, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon.64 = type { %struct.tty_buffer* }
%struct.llist_head = type { %struct.llist_node* }
%struct.llist_node = type { %struct.llist_node* }
%struct.tty_port_operations = type { i32 (%struct.tty_port*)*, void (%struct.tty_port*, i32)*, void (%struct.tty_port*)*, i32 (%struct.tty_port*, %struct.tty_struct*)*, void (%struct.tty_port*)* }
%struct.tty_port_client_operations = type { i32 (%struct.tty_port*, i8*, i8*, i64)*, void (%struct.tty_port*)* }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i64, i64 }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { void (i32)*, i64, void ()*, %struct.sigset_t }
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, %struct.seccomp_filter* }
%struct.seccomp_filter = type opaque
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
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
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
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
%struct.paravirt_patch_template = type { %struct.pv_init_ops, %struct.pv_time_ops, %struct.pv_cpu_ops, %struct.pv_irq_ops, %struct.pv_mmu_ops, %struct.pv_lock_ops }
%struct.pv_init_ops = type { i32 (i8, i8*, i64, i32)* }
%struct.pv_time_ops = type { i64 ()*, i64 (i32)* }
%struct.pv_cpu_ops = type { void ()*, i64 (i32)*, void (i32, i64)*, i64 ()*, void (i64)*, void (i64)*, void ()*, void (%struct.desc_ptr*)*, void (%struct.desc_ptr*)*, void (i8*, i32)*, i64 ()*, void (%struct.thread_struct*, i32)*, void (i32)*, void (%struct.desc_struct*, i32, i8*)*, void (%struct.desc_struct*, i32, i8*, i32)*, void (%struct.gate_struct*, i32, %struct.gate_struct*)*, void (%struct.desc_struct*, i32)*, void (%struct.desc_struct*, i32)*, void (i64)*, void ()*, void ()*, void ()*, void (i32*, i32*, i32*, i32*)*, i64 (i32)*, void (i32, i32, i32)*, i64 (i32, i32*)*, i32 (i32, i32, i32)*, i64 (i32)*, void ()*, void ()*, void ()*, void (%struct.task_struct*)*, void (%struct.task_struct*)* }
%struct.desc_ptr = type <{ i16, i64 }>
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.pv_irq_ops = type { %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void ()*, void ()* }
%struct.paravirt_callee_save = type { i8* }
%struct.pv_mmu_ops = type { void ()*, void ()*, void (i64)*, void (%struct.cpumask*, %struct.flush_tlb_info*)*, void (%struct.mmu_gather*, i8*)*, void (%struct.mm_struct*)*, %struct.paravirt_callee_save, void (i64)*, i64 ()*, void (i64)*, void (%struct.mm_struct*, %struct.mm_struct*)*, void (%struct.mm_struct*, %struct.mm_struct*)*, i32 (%struct.mm_struct*)*, void (%struct.mm_struct*, %struct.pgd_t*)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (i64)*, void (i64)*, void (i64)*, void (i64)*, void (%struct.pte_t*, i64)*, void (%struct.pmd_t*, i64)*, i64 (%struct.vm_area_struct*, i64, %struct.pte_t*)*, void (%struct.vm_area_struct*, i64, %struct.pte_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pud_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.p4d_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pgd_t*, i64)*, %struct.pv_lazy_ops, void (i32, i64, i64)* }
%struct.flush_tlb_info = type opaque
%struct.mmu_gather = type opaque
%struct.pte_t = type { i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.p4d_t = type { i64 }
%struct.pv_lazy_ops = type { void ()*, void ()*, void ()* }
%struct.pv_lock_ops = type { void (%struct.qspinlock*, i32)*, %struct.paravirt_callee_save, void (i8*, i8)*, void (i32)*, %struct.paravirt_callee_save }
%struct.qspinlock = type opaque

@.str = private unnamed_addr constant [37 x i8] c"\014%s %s: sig=%d, tty->pgrp == NULL!\0A\00", align 1
@tasklist_lock = external dso_local global %struct.rwlock_t, align 1
@current_task = external dso_local global %struct.task_struct*, section ".data", align 8
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @__tty_check_change(%struct.tty_struct* %tty, i32 %sig) #0 !dbg !3850 {
entry:
  %pscr_ret__.i59 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i59, metadata !3851, metadata !DIExpression()), !dbg !3857
  %__vpp_verify.i60 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i60, metadata !3864, metadata !DIExpression()), !dbg !3866
  %pfo_val__.i61 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i61, metadata !3867, metadata !DIExpression()), !dbg !3869
  %tmp.i62 = alloca %struct.task_struct*, align 8
  %tmp1.i63 = alloca %struct.task_struct*, align 8
  %lock.addr.i56 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i56, metadata !3870, metadata !DIExpression()), !dbg !3876
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !3878, metadata !DIExpression()), !dbg !3879
  %tmp.i57 = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !3880, metadata !DIExpression()), !dbg !3885
  %pscr_ret__.i51 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i51, metadata !3851, metadata !DIExpression()), !dbg !3892
  %__vpp_verify.i52 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i52, metadata !3864, metadata !DIExpression()), !dbg !3894
  %pfo_val__.i53 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i53, metadata !3867, metadata !DIExpression()), !dbg !3895
  %tmp.i54 = alloca %struct.task_struct*, align 8
  %tmp1.i55 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !3851, metadata !DIExpression()), !dbg !3896
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !3864, metadata !DIExpression()), !dbg !3899
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !3867, metadata !DIExpression()), !dbg !3900
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %retval = alloca i32, align 4
  %tty.addr = alloca %struct.tty_struct*, align 8
  %sig.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %pgrp = alloca %struct.pid*, align 8
  %tty_pgrp = alloca %struct.pid*, align 8
  %ret = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy9 = alloca i64, align 8
  %__dummy210 = alloca i64, align 8
  %tmp13 = alloca i32, align 4
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !3901, metadata !DIExpression()), !dbg !3902
  store i32 %sig, i32* %sig.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sig.addr, metadata !3903, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !3905, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.declare(metadata %struct.pid** %pgrp, metadata !3907, metadata !DIExpression()), !dbg !3908
  call void @llvm.dbg.declare(metadata %struct.pid** %tty_pgrp, metadata !3909, metadata !DIExpression()), !dbg !3910
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3911, metadata !DIExpression()), !dbg !3912
  store i32 0, i32* %ret, align 4, !dbg !3912
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !3899
  %0 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !3899
  %1 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !3900, !srcloc !3913
  store i64 %1, i64* %pfo_val__.i, align 8, !dbg !3900
  %2 = load i64, i64* %pfo_val__.i, align 8, !dbg !3900
  %3 = inttoptr i64 %2 to %struct.task_struct*, !dbg !3900
  store %struct.task_struct* %3, %struct.task_struct** %tmp.i, align 8, !dbg !3900
  %4 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !3900
  store %struct.task_struct* %4, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !3896
  %5 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !3896
  store %struct.task_struct* %5, %struct.task_struct** %tmp1.i, align 8, !dbg !3896
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !3896
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 74, !dbg !3914
  %7 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 64, !dbg !3914
  %tty1 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %7, i32 0, i32 24, !dbg !3915
  %8 = load %struct.tty_struct*, %struct.tty_struct** %tty1, align 8, !dbg !3915
  %9 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !3916
  %cmp = icmp ne %struct.tty_struct* %8, %9, !dbg !3917
  br i1 %cmp, label %if.then, label %if.end, !dbg !3918

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3919
  br label %return, !dbg !3919

if.end:                                           ; preds = %entry
  call void @__rcu_read_lock() #8, !dbg !3920
  store i8* null, i8** %__vpp_verify.i52, align 8, !dbg !3894
  %10 = load i8*, i8** %__vpp_verify.i52, align 8, !dbg !3894
  %11 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !3895, !srcloc !3913
  store i64 %11, i64* %pfo_val__.i53, align 8, !dbg !3895
  %12 = load i64, i64* %pfo_val__.i53, align 8, !dbg !3895
  %13 = inttoptr i64 %12 to %struct.task_struct*, !dbg !3895
  store %struct.task_struct* %13, %struct.task_struct** %tmp.i54, align 8, !dbg !3895
  %14 = load %struct.task_struct*, %struct.task_struct** %tmp.i54, align 8, !dbg !3895
  store %struct.task_struct* %14, %struct.task_struct** %pscr_ret__.i51, align 8, !dbg !3892
  %15 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i51, align 8, !dbg !3892
  store %struct.task_struct* %15, %struct.task_struct** %tmp1.i55, align 8, !dbg !3892
  %16 = load %struct.task_struct*, %struct.task_struct** %tmp1.i55, align 8, !dbg !3892
  %call3 = call %struct.pid* @task_pgrp(%struct.task_struct* %16) #9, !dbg !3924
  store %struct.pid* %call3, %struct.pid** %pgrp, align 8, !dbg !3925
  br label %do.body, !dbg !3926

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !3927

do.body4:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !3928, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !3931, metadata !DIExpression()), !dbg !3930
  %cmp5 = icmp eq i64* %__dummy, %__dummy2, !dbg !3930
  %conv = zext i1 %cmp5 to i32, !dbg !3930
  store i32 1, i32* %tmp, align 4, !dbg !3930
  %17 = load i32, i32* %tmp, align 4, !dbg !3930
  br label %do.body6, !dbg !3932

do.body6:                                         ; preds = %do.body4
  br label %do.body7, !dbg !3933

do.body7:                                         ; preds = %do.body6
  br label %do.body8, !dbg !3934

do.body8:                                         ; preds = %do.body7
  call void @llvm.dbg.declare(metadata i64* %__dummy9, metadata !3936, metadata !DIExpression()), !dbg !3939
  call void @llvm.dbg.declare(metadata i64* %__dummy210, metadata !3940, metadata !DIExpression()), !dbg !3939
  %cmp11 = icmp eq i64* %__dummy9, %__dummy210, !dbg !3939
  %conv12 = zext i1 %cmp11 to i32, !dbg !3939
  store i32 1, i32* %tmp13, align 4, !dbg !3939
  %18 = load i32, i32* %tmp13, align 4, !dbg !3939
  %call14 = call i64 @arch_local_irq_save() #9, !dbg !3941
  store i64 %call14, i64* %flags, align 8, !dbg !3941
  br label %do.end, !dbg !3941

do.end:                                           ; preds = %do.body8
  br label %do.end15, !dbg !3934

do.end15:                                         ; preds = %do.end
  br label %do.body16, !dbg !3933

do.body16:                                        ; preds = %do.end15
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !3942, !srcloc !3943
  br label %do.body17, !dbg !3942

do.body17:                                        ; preds = %do.body16
  %19 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !3944
  %ctrl_lock = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %19, i32 0, i32 13, !dbg !3944
  store %struct.spinlock* %ctrl_lock, %struct.spinlock** %lock.addr.i, align 8
  %20 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !3945
  %21 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %20, i32 0, i32 0, !dbg !3946
  %rlock.i = bitcast %union.anon.1* %21 to %struct.raw_spinlock*, !dbg !3946
  br label %do.end19, !dbg !3944

do.end19:                                         ; preds = %do.body17
  br label %do.end20, !dbg !3942

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !3933

do.end21:                                         ; preds = %do.end20
  br label %do.end22, !dbg !3932

do.end22:                                         ; preds = %do.end21
  br label %do.end23, !dbg !3927

do.end23:                                         ; preds = %do.end22
  %22 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !3947
  %pgrp24 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %22, i32 0, i32 19, !dbg !3948
  %23 = load %struct.pid*, %struct.pid** %pgrp24, align 8, !dbg !3948
  store %struct.pid* %23, %struct.pid** %tty_pgrp, align 8, !dbg !3949
  %24 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !3950
  %ctrl_lock25 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %24, i32 0, i32 13, !dbg !3951
  %25 = load i64, i64* %flags, align 8, !dbg !3952
  store %struct.spinlock* %ctrl_lock25, %struct.spinlock** %lock.addr.i56, align 8
  store i64 %25, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !178, metadata !3953, metadata !DIExpression()) #5, !dbg !3956
  call void @llvm.dbg.declare(metadata !178, metadata !3957, metadata !DIExpression()) #5, !dbg !3956
  store i32 1, i32* %tmp.i57, align 4, !dbg !3956
  %26 = load i32, i32* %tmp.i57, align 4, !dbg !3956
  call void @llvm.dbg.declare(metadata !178, metadata !3958, metadata !DIExpression()) #5, !dbg !3963
  call void @llvm.dbg.declare(metadata !178, metadata !3964, metadata !DIExpression()) #5, !dbg !3963
  store i32 1, i32* %tmp8.i, align 4, !dbg !3963
  %27 = load i32, i32* %tmp8.i, align 4, !dbg !3963
  %28 = load i64, i64* %flags.addr.i, align 8, !dbg !3965
  call void @arch_local_irq_restore(i64 %28) #8, !dbg !3965
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !3966, !srcloc !3968
  %29 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i56, align 8, !dbg !3969
  %30 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %29, i32 0, i32 0, !dbg !3969
  %rlock.i58 = bitcast %union.anon.1* %30 to %struct.raw_spinlock*, !dbg !3969
  %31 = load %struct.pid*, %struct.pid** %tty_pgrp, align 8, !dbg !3971
  %tobool = icmp ne %struct.pid* %31, null, !dbg !3971
  br i1 %tobool, label %land.lhs.true, label %if.end44, !dbg !3972

land.lhs.true:                                    ; preds = %do.end23
  %32 = load %struct.pid*, %struct.pid** %pgrp, align 8, !dbg !3973
  %33 = load %struct.pid*, %struct.pid** %tty_pgrp, align 8, !dbg !3974
  %cmp26 = icmp ne %struct.pid* %32, %33, !dbg !3975
  br i1 %cmp26, label %if.then28, label %if.end44, !dbg !3976

if.then28:                                        ; preds = %land.lhs.true
  %34 = load i32, i32* %sig.addr, align 4, !dbg !3977
  %call29 = call i32 @is_ignored(i32 %34) #9, !dbg !3978
  %tobool30 = icmp ne i32 %call29, 0, !dbg !3978
  br i1 %tobool30, label %if.then31, label %if.else, !dbg !3979

if.then31:                                        ; preds = %if.then28
  %35 = load i32, i32* %sig.addr, align 4, !dbg !3980
  %cmp32 = icmp eq i32 %35, 21, !dbg !3983
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !3984

if.then34:                                        ; preds = %if.then31
  store i32 -5, i32* %ret, align 4, !dbg !3985
  br label %if.end35, !dbg !3986

if.end35:                                         ; preds = %if.then34, %if.then31
  br label %if.end43, !dbg !3987

if.else:                                          ; preds = %if.then28
  %call36 = call i32 @is_current_pgrp_orphaned() #9, !dbg !3988
  %tobool37 = icmp ne i32 %call36, 0, !dbg !3988
  br i1 %tobool37, label %if.then38, label %if.else39, !dbg !3989

if.then38:                                        ; preds = %if.else
  store i32 -5, i32* %ret, align 4, !dbg !3990
  br label %if.end42, !dbg !3991

if.else39:                                        ; preds = %if.else
  %36 = load %struct.pid*, %struct.pid** %pgrp, align 8, !dbg !3992
  %37 = load i32, i32* %sig.addr, align 4, !dbg !3993
  %call40 = call i32 @kill_pgrp(%struct.pid* %36, i32 %37, i32 1) #9, !dbg !3994
  store i8* null, i8** %__vpp_verify.i60, align 8, !dbg !3866
  %38 = load i8*, i8** %__vpp_verify.i60, align 8, !dbg !3866
  %39 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !3869, !srcloc !3913
  store i64 %39, i64* %pfo_val__.i61, align 8, !dbg !3869
  %40 = load i64, i64* %pfo_val__.i61, align 8, !dbg !3869
  %41 = inttoptr i64 %40 to %struct.task_struct*, !dbg !3869
  store %struct.task_struct* %41, %struct.task_struct** %tmp.i62, align 8, !dbg !3869
  %42 = load %struct.task_struct*, %struct.task_struct** %tmp.i62, align 8, !dbg !3869
  store %struct.task_struct* %42, %struct.task_struct** %pscr_ret__.i59, align 8, !dbg !3857
  %43 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i59, align 8, !dbg !3857
  store %struct.task_struct* %43, %struct.task_struct** %tmp1.i63, align 8, !dbg !3857
  %44 = load %struct.task_struct*, %struct.task_struct** %tmp1.i63, align 8, !dbg !3857
  %45 = bitcast %struct.task_struct* %44 to %struct.thread_info*, !dbg !3995
  call void @set_ti_thread_flag(%struct.thread_info* %45, i32 2) #9, !dbg !3995
  store i32 -512, i32* %ret, align 4, !dbg !3996
  br label %if.end42

if.end42:                                         ; preds = %if.else39, %if.then38
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end35
  br label %if.end44, !dbg !3997

if.end44:                                         ; preds = %if.end43, %land.lhs.true, %do.end23
  call void @rcu_read_unlock() #9, !dbg !3998
  %46 = load %struct.pid*, %struct.pid** %tty_pgrp, align 8, !dbg !3999
  %tobool45 = icmp ne %struct.pid* %46, null, !dbg !3999
  br i1 %tobool45, label %if.end50, label %if.then46, !dbg !4001

if.then46:                                        ; preds = %if.end44
  %47 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4002
  %call47 = call i8* @tty_driver_name(%struct.tty_struct* %47) #9, !dbg !4002
  %48 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4002
  %call48 = call i8* @tty_name(%struct.tty_struct* %48) #9, !dbg !4002
  %49 = load i32, i32* %sig.addr, align 4, !dbg !4002
  %call49 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %call47, i8* %call48, i32 %49) #10, !dbg !4002
  br label %if.end50, !dbg !4002

if.end50:                                         ; preds = %if.then46, %if.end44
  %50 = load i32, i32* %ret, align 4, !dbg !4003
  store i32 %50, i32* %retval, align 4, !dbg !4004
  br label %return, !dbg !4004

return:                                           ; preds = %if.end50, %if.then
  %51 = load i32, i32* %retval, align 4, !dbg !4005
  ret i32 %51, !dbg !4005
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pid* @task_pgrp(%struct.task_struct* %task) #0 !dbg !4006 {
entry:
  %task.addr = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %task, %struct.task_struct** %task.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %task.addr, metadata !4009, metadata !DIExpression()), !dbg !4010
  %0 = load %struct.task_struct*, %struct.task_struct** %task.addr, align 8, !dbg !4011
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i32 0, i32 74, !dbg !4012
  %1 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 64, !dbg !4012
  %pids = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %1, i32 0, i32 21, !dbg !4013
  %arrayidx = getelementptr [4 x %struct.pid*], [4 x %struct.pid*]* %pids, i64 0, i64 2, !dbg !4011
  %2 = load %struct.pid*, %struct.pid** %arrayidx, align 8, !dbg !4011
  ret %struct.pid* %2, !dbg !4014
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !4015 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !4019, metadata !DIExpression()), !dbg !4020
  %call = call i64 @arch_local_save_flags() #9, !dbg !4021
  store i64 %call, i64* %f, align 8, !dbg !4022
  call void @arch_local_irq_disable() #9, !dbg !4023
  %0 = load i64, i64* %f, align 8, !dbg !4024
  ret i64 %0, !dbg !4025
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @is_ignored(i32 %sig) #0 !dbg !4026 {
entry:
  %pscr_ret__.i3 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i3, metadata !3851, metadata !DIExpression()), !dbg !4027
  %__vpp_verify.i4 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i4, metadata !3864, metadata !DIExpression()), !dbg !4029
  %pfo_val__.i5 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i5, metadata !3867, metadata !DIExpression()), !dbg !4030
  %tmp.i6 = alloca %struct.task_struct*, align 8
  %tmp1.i7 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !3851, metadata !DIExpression()), !dbg !4031
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !3864, metadata !DIExpression()), !dbg !4033
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !3867, metadata !DIExpression()), !dbg !4034
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %sig.addr = alloca i32, align 4
  store i32 %sig, i32* %sig.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sig.addr, metadata !4035, metadata !DIExpression()), !dbg !4036
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !4033
  %0 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !4033
  %1 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !4034, !srcloc !3913
  store i64 %1, i64* %pfo_val__.i, align 8, !dbg !4034
  %2 = load i64, i64* %pfo_val__.i, align 8, !dbg !4034
  %3 = inttoptr i64 %2 to %struct.task_struct*, !dbg !4034
  store %struct.task_struct* %3, %struct.task_struct** %tmp.i, align 8, !dbg !4034
  %4 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !4034
  store %struct.task_struct* %4, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !4031
  %5 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !4031
  store %struct.task_struct* %5, %struct.task_struct** %tmp1.i, align 8, !dbg !4031
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !4031
  %blocked = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 76, !dbg !4037
  %7 = load i32, i32* %sig.addr, align 4, !dbg !4038
  %call1 = call i32 @sigismember(%struct.sigset_t* %blocked, i32 %7) #9, !dbg !4039
  %tobool = icmp ne i32 %call1, 0, !dbg !4039
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !4040

lor.rhs:                                          ; preds = %entry
  store i8* null, i8** %__vpp_verify.i4, align 8, !dbg !4029
  %8 = load i8*, i8** %__vpp_verify.i4, align 8, !dbg !4029
  %9 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !4030, !srcloc !3913
  store i64 %9, i64* %pfo_val__.i5, align 8, !dbg !4030
  %10 = load i64, i64* %pfo_val__.i5, align 8, !dbg !4030
  %11 = inttoptr i64 %10 to %struct.task_struct*, !dbg !4030
  store %struct.task_struct* %11, %struct.task_struct** %tmp.i6, align 8, !dbg !4030
  %12 = load %struct.task_struct*, %struct.task_struct** %tmp.i6, align 8, !dbg !4030
  store %struct.task_struct* %12, %struct.task_struct** %pscr_ret__.i3, align 8, !dbg !4027
  %13 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i3, align 8, !dbg !4027
  store %struct.task_struct* %13, %struct.task_struct** %tmp1.i7, align 8, !dbg !4027
  %14 = load %struct.task_struct*, %struct.task_struct** %tmp1.i7, align 8, !dbg !4027
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i32 0, i32 75, !dbg !4041
  %15 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 8, !dbg !4041
  %action = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %15, i32 0, i32 3, !dbg !4042
  %16 = load i32, i32* %sig.addr, align 4, !dbg !4043
  %sub = sub i32 %16, 1, !dbg !4044
  %idxprom = sext i32 %sub to i64, !dbg !4045
  %arrayidx = getelementptr [64 x %struct.k_sigaction], [64 x %struct.k_sigaction]* %action, i64 0, i64 %idxprom, !dbg !4045
  %sa = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %arrayidx, i32 0, i32 0, !dbg !4046
  %sa_handler = getelementptr inbounds %struct.sigaction, %struct.sigaction* %sa, i32 0, i32 0, !dbg !4047
  %17 = load void (i32)*, void (i32)** %sa_handler, align 8, !dbg !4047
  %cmp = icmp eq void (i32)* %17, inttoptr (i64 1 to void (i32)*), !dbg !4048
  br label %lor.end, !dbg !4040

lor.end:                                          ; preds = %lor.rhs, %entry
  %18 = phi i1 [ true, %entry ], [ %cmp, %lor.rhs ]
  %lor.ext = zext i1 %18 to i32, !dbg !4040
  ret i32 %lor.ext, !dbg !4049
}

; Function Attrs: noredzone
declare dso_local i32 @is_current_pgrp_orphaned() #2

; Function Attrs: noredzone
declare dso_local i32 @kill_pgrp(%struct.pid*, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_ti_thread_flag(%struct.thread_info* %ti, i32 %flag) #0 !dbg !4050 {
entry:
  %ti.addr = alloca %struct.thread_info*, align 8
  %flag.addr = alloca i32, align 4
  store %struct.thread_info* %ti, %struct.thread_info** %ti.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thread_info** %ti.addr, metadata !4054, metadata !DIExpression()), !dbg !4055
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !4056, metadata !DIExpression()), !dbg !4057
  %0 = load i32, i32* %flag.addr, align 4, !dbg !4058
  %conv = sext i32 %0 to i64, !dbg !4058
  %1 = load %struct.thread_info*, %struct.thread_info** %ti.addr, align 8, !dbg !4059
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %1, i32 0, i32 0, !dbg !4060
  call void @set_bit(i64 %conv, i64* %flags) #9, !dbg !4061
  ret void, !dbg !4062
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @rcu_read_unlock() #0 !dbg !4063 {
entry:
  br label %do.body, !dbg !4064

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4065

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #9, !dbg !4067
  br label %do.body1, !dbg !4068

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4069

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !4071
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i8* @tty_driver_name(%struct.tty_struct*) #2

; Function Attrs: noredzone
declare dso_local i8* @tty_name(%struct.tty_struct*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tty_check_change(%struct.tty_struct* %tty) #0 !dbg !4072 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4073, metadata !DIExpression()), !dbg !4074
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4075
  %call = call i32 @__tty_check_change(%struct.tty_struct* %0, i32 22) #9, !dbg !4076
  ret i32 %call, !dbg !4077
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @proc_clear_tty(%struct.task_struct* %p) #0 !dbg !4078 {
entry:
  %lock.addr.i24 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i24, metadata !3870, metadata !DIExpression()), !dbg !4081
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !3878, metadata !DIExpression()), !dbg !4083
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !3880, metadata !DIExpression()), !dbg !4084
  %p.addr = alloca %struct.task_struct*, align 8
  %flags = alloca i64, align 8
  %tty = alloca %struct.tty_struct*, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.task_struct* %p, %struct.task_struct** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %p.addr, metadata !4091, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4093, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty, metadata !4095, metadata !DIExpression()), !dbg !4096
  br label %do.body, !dbg !4097

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4098

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4099, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4102, metadata !DIExpression()), !dbg !4101
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4101
  %conv = zext i1 %cmp to i32, !dbg !4101
  store i32 1, i32* %tmp, align 4, !dbg !4101
  %0 = load i32, i32* %tmp, align 4, !dbg !4101
  br label %do.body2, !dbg !4103

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4104

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4105

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !4107, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !4111, metadata !DIExpression()), !dbg !4110
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !4110
  %conv8 = zext i1 %cmp7 to i32, !dbg !4110
  store i32 1, i32* %tmp9, align 4, !dbg !4110
  %1 = load i32, i32* %tmp9, align 4, !dbg !4110
  %call = call i64 @arch_local_irq_save() #9, !dbg !4112
  store i64 %call, i64* %flags, align 8, !dbg !4112
  br label %do.end, !dbg !4112

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !4105

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !4104

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4113, !srcloc !4114
  br label %do.body12, !dbg !4113

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.task_struct*, %struct.task_struct** %p.addr, align 8, !dbg !4115
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i32 0, i32 75, !dbg !4115
  %3 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 8, !dbg !4115
  %siglock = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %3, i32 0, i32 0, !dbg !4115
  store %struct.spinlock* %siglock, %struct.spinlock** %lock.addr.i, align 8
  %4 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4116
  %5 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %4, i32 0, i32 0, !dbg !4117
  %rlock.i = bitcast %union.anon.1* %5 to %struct.raw_spinlock*, !dbg !4117
  br label %do.end14, !dbg !4115

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !4113

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !4104

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4103

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4098

do.end18:                                         ; preds = %do.end17
  %6 = load %struct.task_struct*, %struct.task_struct** %p.addr, align 8, !dbg !4118
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 74, !dbg !4119
  %7 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 64, !dbg !4119
  %tty19 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %7, i32 0, i32 24, !dbg !4120
  %8 = load %struct.tty_struct*, %struct.tty_struct** %tty19, align 8, !dbg !4120
  store %struct.tty_struct* %8, %struct.tty_struct** %tty, align 8, !dbg !4121
  %9 = load %struct.task_struct*, %struct.task_struct** %p.addr, align 8, !dbg !4122
  %signal20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 74, !dbg !4123
  %10 = load %struct.signal_struct*, %struct.signal_struct** %signal20, align 64, !dbg !4123
  %tty21 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %10, i32 0, i32 24, !dbg !4124
  store %struct.tty_struct* null, %struct.tty_struct** %tty21, align 8, !dbg !4125
  %11 = load %struct.task_struct*, %struct.task_struct** %p.addr, align 8, !dbg !4126
  %sighand22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 75, !dbg !4127
  %12 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand22, align 8, !dbg !4127
  %siglock23 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %12, i32 0, i32 0, !dbg !4128
  %13 = load i64, i64* %flags, align 8, !dbg !4129
  store %struct.spinlock* %siglock23, %struct.spinlock** %lock.addr.i24, align 8
  store i64 %13, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !178, metadata !3953, metadata !DIExpression()) #5, !dbg !4130
  call void @llvm.dbg.declare(metadata !178, metadata !3957, metadata !DIExpression()) #5, !dbg !4130
  store i32 1, i32* %tmp.i, align 4, !dbg !4130
  %14 = load i32, i32* %tmp.i, align 4, !dbg !4130
  call void @llvm.dbg.declare(metadata !178, metadata !3958, metadata !DIExpression()) #5, !dbg !4131
  call void @llvm.dbg.declare(metadata !178, metadata !3964, metadata !DIExpression()) #5, !dbg !4131
  store i32 1, i32* %tmp8.i, align 4, !dbg !4131
  %15 = load i32, i32* %tmp8.i, align 4, !dbg !4131
  %16 = load i64, i64* %flags.addr.i, align 8, !dbg !4132
  call void @arch_local_irq_restore(i64 %16) #8, !dbg !4132
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4133, !srcloc !3968
  %17 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i24, align 8, !dbg !4134
  %18 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %17, i32 0, i32 0, !dbg !4134
  %rlock.i25 = bitcast %union.anon.1* %18 to %struct.raw_spinlock*, !dbg !4134
  %19 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8, !dbg !4135
  call void @tty_kref_put(%struct.tty_struct* %19) #9, !dbg !4136
  ret void, !dbg !4137
}

; Function Attrs: noredzone
declare dso_local void @tty_kref_put(%struct.tty_struct*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @tty_open_proc_set_tty(%struct.file* %filp, %struct.tty_struct* %tty) #0 !dbg !4138 {
entry:
  %lock.addr.i34 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i34, metadata !4141, metadata !DIExpression()), !dbg !4145
  %pscr_ret__.i29 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i29, metadata !3851, metadata !DIExpression()), !dbg !4147
  %__vpp_verify.i30 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i30, metadata !3864, metadata !DIExpression()), !dbg !4149
  %pfo_val__.i31 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i31, metadata !3867, metadata !DIExpression()), !dbg !4150
  %tmp.i32 = alloca %struct.task_struct*, align 8
  %tmp1.i33 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i24 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i24, metadata !3851, metadata !DIExpression()), !dbg !4151
  %__vpp_verify.i25 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i25, metadata !3864, metadata !DIExpression()), !dbg !4154
  %pfo_val__.i26 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i26, metadata !3867, metadata !DIExpression()), !dbg !4155
  %tmp.i27 = alloca %struct.task_struct*, align 8
  %tmp1.i28 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i19 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i19, metadata !3851, metadata !DIExpression()), !dbg !4156
  %__vpp_verify.i20 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i20, metadata !3864, metadata !DIExpression()), !dbg !4158
  %pfo_val__.i21 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i21, metadata !3867, metadata !DIExpression()), !dbg !4159
  %tmp.i22 = alloca %struct.task_struct*, align 8
  %tmp1.i23 = alloca %struct.task_struct*, align 8
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4160, metadata !DIExpression()), !dbg !4162
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !3851, metadata !DIExpression()), !dbg !4164
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !3864, metadata !DIExpression()), !dbg !4166
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !3867, metadata !DIExpression()), !dbg !4167
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %filp.addr = alloca %struct.file*, align 8
  %tty.addr = alloca %struct.tty_struct*, align 8
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !4168, metadata !DIExpression()), !dbg !4169
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4170, metadata !DIExpression()), !dbg !4171
  br label %do.body, !dbg !4172

do.body:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4173, !srcloc !4175
  br label %do.body1, !dbg !4173

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4176

do.end:                                           ; preds = %do.body1
  br label %do.end2, !dbg !4173

do.end2:                                          ; preds = %do.end
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !4166
  %0 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !4166
  %1 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !4167, !srcloc !3913
  store i64 %1, i64* %pfo_val__.i, align 8, !dbg !4167
  %2 = load i64, i64* %pfo_val__.i, align 8, !dbg !4167
  %3 = inttoptr i64 %2 to %struct.task_struct*, !dbg !4167
  store %struct.task_struct* %3, %struct.task_struct** %tmp.i, align 8, !dbg !4167
  %4 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !4167
  store %struct.task_struct* %4, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !4164
  %5 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !4164
  store %struct.task_struct* %5, %struct.task_struct** %tmp1.i, align 8, !dbg !4164
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !4164
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 75, !dbg !4178
  %7 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 8, !dbg !4178
  %siglock = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %7, i32 0, i32 0, !dbg !4179
  store %struct.spinlock* %siglock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #8, !dbg !4180
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4183, !srcloc !4185
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4186
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !4186
  %rlock.i = bitcast %union.anon.1* %9 to %struct.raw_spinlock*, !dbg !4186
  store i8* null, i8** %__vpp_verify.i20, align 8, !dbg !4158
  %10 = load i8*, i8** %__vpp_verify.i20, align 8, !dbg !4158
  %11 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !4159, !srcloc !3913
  store i64 %11, i64* %pfo_val__.i21, align 8, !dbg !4159
  %12 = load i64, i64* %pfo_val__.i21, align 8, !dbg !4159
  %13 = inttoptr i64 %12 to %struct.task_struct*, !dbg !4159
  store %struct.task_struct* %13, %struct.task_struct** %tmp.i22, align 8, !dbg !4159
  %14 = load %struct.task_struct*, %struct.task_struct** %tmp.i22, align 8, !dbg !4159
  store %struct.task_struct* %14, %struct.task_struct** %pscr_ret__.i19, align 8, !dbg !4156
  %15 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i19, align 8, !dbg !4156
  store %struct.task_struct* %15, %struct.task_struct** %tmp1.i23, align 8, !dbg !4156
  %16 = load %struct.task_struct*, %struct.task_struct** %tmp1.i23, align 8, !dbg !4156
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 74, !dbg !4188
  %17 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 64, !dbg !4188
  %leader = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %17, i32 0, i32 23, !dbg !4189
  %18 = load i32, i32* %leader, align 8, !dbg !4189
  %tobool = icmp ne i32 %18, 0, !dbg !4190
  br i1 %tobool, label %land.lhs.true, label %if.end11, !dbg !4191

land.lhs.true:                                    ; preds = %do.end2
  store i8* null, i8** %__vpp_verify.i25, align 8, !dbg !4154
  %19 = load i8*, i8** %__vpp_verify.i25, align 8, !dbg !4154
  %20 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !4155, !srcloc !3913
  store i64 %20, i64* %pfo_val__.i26, align 8, !dbg !4155
  %21 = load i64, i64* %pfo_val__.i26, align 8, !dbg !4155
  %22 = inttoptr i64 %21 to %struct.task_struct*, !dbg !4155
  store %struct.task_struct* %22, %struct.task_struct** %tmp.i27, align 8, !dbg !4155
  %23 = load %struct.task_struct*, %struct.task_struct** %tmp.i27, align 8, !dbg !4155
  store %struct.task_struct* %23, %struct.task_struct** %pscr_ret__.i24, align 8, !dbg !4151
  %24 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i24, align 8, !dbg !4151
  store %struct.task_struct* %24, %struct.task_struct** %tmp1.i28, align 8, !dbg !4151
  %25 = load %struct.task_struct*, %struct.task_struct** %tmp1.i28, align 8, !dbg !4151
  %signal5 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %25, i32 0, i32 74, !dbg !4192
  %26 = load %struct.signal_struct*, %struct.signal_struct** %signal5, align 64, !dbg !4192
  %tty6 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %26, i32 0, i32 24, !dbg !4193
  %27 = load %struct.tty_struct*, %struct.tty_struct** %tty6, align 8, !dbg !4193
  %tobool7 = icmp ne %struct.tty_struct* %27, null, !dbg !4194
  br i1 %tobool7, label %if.end11, label %land.lhs.true8, !dbg !4195

land.lhs.true8:                                   ; preds = %land.lhs.true
  %28 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4196
  %session = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %28, i32 0, i32 20, !dbg !4197
  %29 = load %struct.pid*, %struct.pid** %session, align 8, !dbg !4197
  %cmp = icmp eq %struct.pid* %29, null, !dbg !4198
  br i1 %cmp, label %if.then, label %if.end11, !dbg !4199

if.then:                                          ; preds = %land.lhs.true8
  %30 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !4200
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 8, !dbg !4203
  %31 = load i32, i32* %f_mode, align 4, !dbg !4203
  %and = and i32 %31, 1, !dbg !4204
  %tobool9 = icmp ne i32 %and, 0, !dbg !4204
  br i1 %tobool9, label %if.then10, label %if.end, !dbg !4205

if.then10:                                        ; preds = %if.then
  %32 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4206
  call void @__proc_set_tty(%struct.tty_struct* %32) #9, !dbg !4207
  br label %if.end, !dbg !4207

if.end:                                           ; preds = %if.then10, %if.then
  br label %if.end11, !dbg !4208

if.end11:                                         ; preds = %if.end, %land.lhs.true8, %land.lhs.true, %do.end2
  store i8* null, i8** %__vpp_verify.i30, align 8, !dbg !4149
  %33 = load i8*, i8** %__vpp_verify.i30, align 8, !dbg !4149
  %34 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !4150, !srcloc !3913
  store i64 %34, i64* %pfo_val__.i31, align 8, !dbg !4150
  %35 = load i64, i64* %pfo_val__.i31, align 8, !dbg !4150
  %36 = inttoptr i64 %35 to %struct.task_struct*, !dbg !4150
  store %struct.task_struct* %36, %struct.task_struct** %tmp.i32, align 8, !dbg !4150
  %37 = load %struct.task_struct*, %struct.task_struct** %tmp.i32, align 8, !dbg !4150
  store %struct.task_struct* %37, %struct.task_struct** %pscr_ret__.i29, align 8, !dbg !4147
  %38 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i29, align 8, !dbg !4147
  store %struct.task_struct* %38, %struct.task_struct** %tmp1.i33, align 8, !dbg !4147
  %39 = load %struct.task_struct*, %struct.task_struct** %tmp1.i33, align 8, !dbg !4147
  %sighand13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %39, i32 0, i32 75, !dbg !4209
  %40 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand13, align 8, !dbg !4209
  %siglock14 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %40, i32 0, i32 0, !dbg !4210
  store %struct.spinlock* %siglock14, %struct.spinlock** %lock.addr.i34, align 8
  call void @arch_local_irq_enable() #8, !dbg !4211
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4214, !srcloc !4216
  %41 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i34, align 8, !dbg !4217
  %42 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %41, i32 0, i32 0, !dbg !4217
  %rlock.i35 = bitcast %union.anon.1* %42 to %struct.raw_spinlock*, !dbg !4217
  br label %do.body15, !dbg !4219

do.body15:                                        ; preds = %if.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4220, !srcloc !4222
  br label %do.body16, !dbg !4220

do.body16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !4223

do.end17:                                         ; preds = %do.body16
  br label %do.end18, !dbg !4220

do.end18:                                         ; preds = %do.end17
  ret void, !dbg !4225
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__proc_set_tty(%struct.tty_struct* %tty) #0 !dbg !4226 {
entry:
  %pscr_ret__.i71 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i71, metadata !3851, metadata !DIExpression()), !dbg !4227
  %__vpp_verify.i72 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i72, metadata !3864, metadata !DIExpression()), !dbg !4229
  %pfo_val__.i73 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i73, metadata !3867, metadata !DIExpression()), !dbg !4230
  %tmp.i74 = alloca %struct.task_struct*, align 8
  %tmp1.i75 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i66 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i66, metadata !3851, metadata !DIExpression()), !dbg !4231
  %__vpp_verify.i67 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i67, metadata !3864, metadata !DIExpression()), !dbg !4233
  %pfo_val__.i68 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i68, metadata !3867, metadata !DIExpression()), !dbg !4234
  %tmp.i69 = alloca %struct.task_struct*, align 8
  %tmp1.i70 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i61 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i61, metadata !3851, metadata !DIExpression()), !dbg !4235
  %__vpp_verify.i62 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i62, metadata !3864, metadata !DIExpression()), !dbg !4239
  %pfo_val__.i63 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i63, metadata !3867, metadata !DIExpression()), !dbg !4240
  %tmp.i64 = alloca %struct.task_struct*, align 8
  %tmp1.i65 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i56 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i56, metadata !3851, metadata !DIExpression()), !dbg !4241
  %__vpp_verify.i57 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i57, metadata !3864, metadata !DIExpression()), !dbg !4243
  %pfo_val__.i58 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i58, metadata !3867, metadata !DIExpression()), !dbg !4244
  %tmp.i59 = alloca %struct.task_struct*, align 8
  %tmp1.i60 = alloca %struct.task_struct*, align 8
  %lock.addr.i53 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i53, metadata !3870, metadata !DIExpression()), !dbg !4245
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !3878, metadata !DIExpression()), !dbg !4247
  %tmp.i54 = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %pscr_ret__.i48 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i48, metadata !3851, metadata !DIExpression()), !dbg !4248
  %__vpp_verify.i49 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i49, metadata !3864, metadata !DIExpression()), !dbg !4250
  %pfo_val__.i50 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i50, metadata !3867, metadata !DIExpression()), !dbg !4251
  %tmp.i51 = alloca %struct.task_struct*, align 8
  %tmp1.i52 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i43 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i43, metadata !3851, metadata !DIExpression()), !dbg !4252
  %__vpp_verify.i44 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i44, metadata !3864, metadata !DIExpression()), !dbg !4254
  %pfo_val__.i45 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i45, metadata !3867, metadata !DIExpression()), !dbg !4255
  %tmp.i46 = alloca %struct.task_struct*, align 8
  %tmp1.i47 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !3851, metadata !DIExpression()), !dbg !4256
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !3864, metadata !DIExpression()), !dbg !4258
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !3867, metadata !DIExpression()), !dbg !4259
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !3880, metadata !DIExpression()), !dbg !4260
  %tty.addr = alloca %struct.tty_struct*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  %tmp30 = alloca i32, align 4
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4267, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4269, metadata !DIExpression()), !dbg !4270
  br label %do.body, !dbg !4271

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4272

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4273, metadata !DIExpression()), !dbg !4275
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4276, metadata !DIExpression()), !dbg !4275
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4275
  %conv = zext i1 %cmp to i32, !dbg !4275
  store i32 1, i32* %tmp, align 4, !dbg !4275
  %0 = load i32, i32* %tmp, align 4, !dbg !4275
  br label %do.body2, !dbg !4277

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4278

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4279

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !4281, metadata !DIExpression()), !dbg !4284
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !4285, metadata !DIExpression()), !dbg !4284
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !4284
  %conv8 = zext i1 %cmp7 to i32, !dbg !4284
  store i32 1, i32* %tmp9, align 4, !dbg !4284
  %1 = load i32, i32* %tmp9, align 4, !dbg !4284
  %call = call i64 @arch_local_irq_save() #9, !dbg !4286
  store i64 %call, i64* %flags, align 8, !dbg !4286
  br label %do.end, !dbg !4286

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !4279

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !4278

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4287, !srcloc !4288
  br label %do.body12, !dbg !4287

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4289
  %ctrl_lock = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %2, i32 0, i32 13, !dbg !4289
  store %struct.spinlock* %ctrl_lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4290
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !4291
  %rlock.i = bitcast %union.anon.1* %4 to %struct.raw_spinlock*, !dbg !4291
  br label %do.end14, !dbg !4289

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !4287

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !4278

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4277

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4272

do.end18:                                         ; preds = %do.end17
  %5 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4292
  %session = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 20, !dbg !4293
  %6 = load %struct.pid*, %struct.pid** %session, align 8, !dbg !4293
  call void @put_pid(%struct.pid* %6) #9, !dbg !4294
  %7 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4295
  %pgrp = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 19, !dbg !4296
  %8 = load %struct.pid*, %struct.pid** %pgrp, align 8, !dbg !4296
  call void @put_pid(%struct.pid* %8) #9, !dbg !4297
  store i8* null, i8** %__vpp_verify.i44, align 8, !dbg !4254
  %9 = load i8*, i8** %__vpp_verify.i44, align 8, !dbg !4254
  %10 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !4255, !srcloc !3913
  store i64 %10, i64* %pfo_val__.i45, align 8, !dbg !4255
  %11 = load i64, i64* %pfo_val__.i45, align 8, !dbg !4255
  %12 = inttoptr i64 %11 to %struct.task_struct*, !dbg !4255
  store %struct.task_struct* %12, %struct.task_struct** %tmp.i46, align 8, !dbg !4255
  %13 = load %struct.task_struct*, %struct.task_struct** %tmp.i46, align 8, !dbg !4255
  store %struct.task_struct* %13, %struct.task_struct** %pscr_ret__.i43, align 8, !dbg !4252
  %14 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i43, align 8, !dbg !4252
  store %struct.task_struct* %14, %struct.task_struct** %tmp1.i47, align 8, !dbg !4252
  %15 = load %struct.task_struct*, %struct.task_struct** %tmp1.i47, align 8, !dbg !4252
  %call20 = call %struct.pid* @task_pgrp(%struct.task_struct* %15) #9, !dbg !4298
  %call21 = call %struct.pid* @get_pid(%struct.pid* %call20) #9, !dbg !4299
  %16 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4300
  %pgrp22 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %16, i32 0, i32 19, !dbg !4301
  store %struct.pid* %call21, %struct.pid** %pgrp22, align 8, !dbg !4302
  store i8* null, i8** %__vpp_verify.i49, align 8, !dbg !4250
  %17 = load i8*, i8** %__vpp_verify.i49, align 8, !dbg !4250
  %18 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !4251, !srcloc !3913
  store i64 %18, i64* %pfo_val__.i50, align 8, !dbg !4251
  %19 = load i64, i64* %pfo_val__.i50, align 8, !dbg !4251
  %20 = inttoptr i64 %19 to %struct.task_struct*, !dbg !4251
  store %struct.task_struct* %20, %struct.task_struct** %tmp.i51, align 8, !dbg !4251
  %21 = load %struct.task_struct*, %struct.task_struct** %tmp.i51, align 8, !dbg !4251
  store %struct.task_struct* %21, %struct.task_struct** %pscr_ret__.i48, align 8, !dbg !4248
  %22 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i48, align 8, !dbg !4248
  store %struct.task_struct* %22, %struct.task_struct** %tmp1.i52, align 8, !dbg !4248
  %23 = load %struct.task_struct*, %struct.task_struct** %tmp1.i52, align 8, !dbg !4248
  %call24 = call %struct.pid* @task_session(%struct.task_struct* %23) #9, !dbg !4303
  %call25 = call %struct.pid* @get_pid(%struct.pid* %call24) #9, !dbg !4304
  %24 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4305
  %session26 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %24, i32 0, i32 20, !dbg !4306
  store %struct.pid* %call25, %struct.pid** %session26, align 8, !dbg !4307
  %25 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4308
  %ctrl_lock27 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %25, i32 0, i32 13, !dbg !4309
  %26 = load i64, i64* %flags, align 8, !dbg !4310
  store %struct.spinlock* %ctrl_lock27, %struct.spinlock** %lock.addr.i53, align 8
  store i64 %26, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !178, metadata !3953, metadata !DIExpression()) #5, !dbg !4311
  call void @llvm.dbg.declare(metadata !178, metadata !3957, metadata !DIExpression()) #5, !dbg !4311
  store i32 1, i32* %tmp.i54, align 4, !dbg !4311
  %27 = load i32, i32* %tmp.i54, align 4, !dbg !4311
  call void @llvm.dbg.declare(metadata !178, metadata !3958, metadata !DIExpression()) #5, !dbg !4312
  call void @llvm.dbg.declare(metadata !178, metadata !3964, metadata !DIExpression()) #5, !dbg !4312
  store i32 1, i32* %tmp8.i, align 4, !dbg !4312
  %28 = load i32, i32* %tmp8.i, align 4, !dbg !4312
  %29 = load i64, i64* %flags.addr.i, align 8, !dbg !4313
  call void @arch_local_irq_restore(i64 %29) #8, !dbg !4313
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4314, !srcloc !3968
  %30 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i53, align 8, !dbg !4315
  %31 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %30, i32 0, i32 0, !dbg !4315
  %rlock.i55 = bitcast %union.anon.1* %31 to %struct.raw_spinlock*, !dbg !4315
  store i8* null, i8** %__vpp_verify.i57, align 8, !dbg !4243
  %32 = load i8*, i8** %__vpp_verify.i57, align 8, !dbg !4243
  %33 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !4244, !srcloc !3913
  store i64 %33, i64* %pfo_val__.i58, align 8, !dbg !4244
  %34 = load i64, i64* %pfo_val__.i58, align 8, !dbg !4244
  %35 = inttoptr i64 %34 to %struct.task_struct*, !dbg !4244
  store %struct.task_struct* %35, %struct.task_struct** %tmp.i59, align 8, !dbg !4244
  %36 = load %struct.task_struct*, %struct.task_struct** %tmp.i59, align 8, !dbg !4244
  store %struct.task_struct* %36, %struct.task_struct** %pscr_ret__.i56, align 8, !dbg !4241
  %37 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i56, align 8, !dbg !4241
  store %struct.task_struct* %37, %struct.task_struct** %tmp1.i60, align 8, !dbg !4241
  %38 = load %struct.task_struct*, %struct.task_struct** %tmp1.i60, align 8, !dbg !4241
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %38, i32 0, i32 74, !dbg !4316
  %39 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 64, !dbg !4316
  %tty29 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %39, i32 0, i32 24, !dbg !4317
  %40 = load %struct.tty_struct*, %struct.tty_struct** %tty29, align 8, !dbg !4317
  %tobool = icmp ne %struct.tty_struct* %40, null, !dbg !4318
  br i1 %tobool, label %if.then, label %if.end, !dbg !4319

if.then:                                          ; preds = %do.end18
  store i32 0, i32* %tmp30, align 4, !dbg !4320
  %41 = load i32, i32* %tmp30, align 4, !dbg !4323
  store i8* null, i8** %__vpp_verify.i62, align 8, !dbg !4239
  %42 = load i8*, i8** %__vpp_verify.i62, align 8, !dbg !4239
  %43 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !4240, !srcloc !3913
  store i64 %43, i64* %pfo_val__.i63, align 8, !dbg !4240
  %44 = load i64, i64* %pfo_val__.i63, align 8, !dbg !4240
  %45 = inttoptr i64 %44 to %struct.task_struct*, !dbg !4240
  store %struct.task_struct* %45, %struct.task_struct** %tmp.i64, align 8, !dbg !4240
  %46 = load %struct.task_struct*, %struct.task_struct** %tmp.i64, align 8, !dbg !4240
  store %struct.task_struct* %46, %struct.task_struct** %pscr_ret__.i61, align 8, !dbg !4235
  %47 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i61, align 8, !dbg !4235
  store %struct.task_struct* %47, %struct.task_struct** %tmp1.i65, align 8, !dbg !4235
  %48 = load %struct.task_struct*, %struct.task_struct** %tmp1.i65, align 8, !dbg !4235
  %signal32 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %48, i32 0, i32 74, !dbg !4324
  %49 = load %struct.signal_struct*, %struct.signal_struct** %signal32, align 64, !dbg !4324
  %tty33 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %49, i32 0, i32 24, !dbg !4325
  %50 = load %struct.tty_struct*, %struct.tty_struct** %tty33, align 8, !dbg !4325
  call void @tty_kref_put(%struct.tty_struct* %50) #9, !dbg !4326
  br label %if.end, !dbg !4327

if.end:                                           ; preds = %if.then, %do.end18
  store i8* null, i8** %__vpp_verify.i67, align 8, !dbg !4233
  %51 = load i8*, i8** %__vpp_verify.i67, align 8, !dbg !4233
  %52 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !4234, !srcloc !3913
  store i64 %52, i64* %pfo_val__.i68, align 8, !dbg !4234
  %53 = load i64, i64* %pfo_val__.i68, align 8, !dbg !4234
  %54 = inttoptr i64 %53 to %struct.task_struct*, !dbg !4234
  store %struct.task_struct* %54, %struct.task_struct** %tmp.i69, align 8, !dbg !4234
  %55 = load %struct.task_struct*, %struct.task_struct** %tmp.i69, align 8, !dbg !4234
  store %struct.task_struct* %55, %struct.task_struct** %pscr_ret__.i66, align 8, !dbg !4231
  %56 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i66, align 8, !dbg !4231
  store %struct.task_struct* %56, %struct.task_struct** %tmp1.i70, align 8, !dbg !4231
  %57 = load %struct.task_struct*, %struct.task_struct** %tmp1.i70, align 8, !dbg !4231
  %signal35 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %57, i32 0, i32 74, !dbg !4328
  %58 = load %struct.signal_struct*, %struct.signal_struct** %signal35, align 64, !dbg !4328
  %tty_old_pgrp = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %58, i32 0, i32 22, !dbg !4329
  %59 = load %struct.pid*, %struct.pid** %tty_old_pgrp, align 8, !dbg !4329
  call void @put_pid(%struct.pid* %59) #9, !dbg !4330
  %60 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4331
  %call36 = call %struct.tty_struct* @tty_kref_get(%struct.tty_struct* %60) #9, !dbg !4332
  store i8* null, i8** %__vpp_verify.i72, align 8, !dbg !4229
  %61 = load i8*, i8** %__vpp_verify.i72, align 8, !dbg !4229
  %62 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !4230, !srcloc !3913
  store i64 %62, i64* %pfo_val__.i73, align 8, !dbg !4230
  %63 = load i64, i64* %pfo_val__.i73, align 8, !dbg !4230
  %64 = inttoptr i64 %63 to %struct.task_struct*, !dbg !4230
  store %struct.task_struct* %64, %struct.task_struct** %tmp.i74, align 8, !dbg !4230
  %65 = load %struct.task_struct*, %struct.task_struct** %tmp.i74, align 8, !dbg !4230
  store %struct.task_struct* %65, %struct.task_struct** %pscr_ret__.i71, align 8, !dbg !4227
  %66 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i71, align 8, !dbg !4227
  store %struct.task_struct* %66, %struct.task_struct** %tmp1.i75, align 8, !dbg !4227
  %67 = load %struct.task_struct*, %struct.task_struct** %tmp1.i75, align 8, !dbg !4227
  %signal38 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %67, i32 0, i32 74, !dbg !4333
  %68 = load %struct.signal_struct*, %struct.signal_struct** %signal38, align 64, !dbg !4333
  %tty39 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %68, i32 0, i32 24, !dbg !4334
  store %struct.tty_struct* %call36, %struct.tty_struct** %tty39, align 8, !dbg !4335
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !4258
  %69 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !4258
  %70 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !4259, !srcloc !3913
  store i64 %70, i64* %pfo_val__.i, align 8, !dbg !4259
  %71 = load i64, i64* %pfo_val__.i, align 8, !dbg !4259
  %72 = inttoptr i64 %71 to %struct.task_struct*, !dbg !4259
  store %struct.task_struct* %72, %struct.task_struct** %tmp.i, align 8, !dbg !4259
  %73 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !4259
  store %struct.task_struct* %73, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !4256
  %74 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !4256
  store %struct.task_struct* %74, %struct.task_struct** %tmp1.i, align 8, !dbg !4256
  %75 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !4256
  %signal41 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %75, i32 0, i32 74, !dbg !4336
  %76 = load %struct.signal_struct*, %struct.signal_struct** %signal41, align 64, !dbg !4336
  %tty_old_pgrp42 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %76, i32 0, i32 22, !dbg !4337
  store %struct.pid* null, %struct.pid** %tty_old_pgrp42, align 8, !dbg !4338
  ret void, !dbg !4339
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.tty_struct* @get_current_tty() #0 !dbg !4340 {
entry:
  %pscr_ret__.i34 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i34, metadata !3851, metadata !DIExpression()), !dbg !4343
  %__vpp_verify.i35 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i35, metadata !3864, metadata !DIExpression()), !dbg !4345
  %pfo_val__.i36 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i36, metadata !3867, metadata !DIExpression()), !dbg !4346
  %tmp.i37 = alloca %struct.task_struct*, align 8
  %tmp1.i38 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i29 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i29, metadata !3851, metadata !DIExpression()), !dbg !4347
  %__vpp_verify.i30 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i30, metadata !3864, metadata !DIExpression()), !dbg !4349
  %pfo_val__.i31 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i31, metadata !3867, metadata !DIExpression()), !dbg !4350
  %tmp.i32 = alloca %struct.task_struct*, align 8
  %tmp1.i33 = alloca %struct.task_struct*, align 8
  %lock.addr.i26 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i26, metadata !3870, metadata !DIExpression()), !dbg !4351
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !3878, metadata !DIExpression()), !dbg !4353
  %tmp.i27 = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !3880, metadata !DIExpression()), !dbg !4354
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !3851, metadata !DIExpression()), !dbg !4361
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !3864, metadata !DIExpression()), !dbg !4363
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !3867, metadata !DIExpression()), !dbg !4364
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %tty = alloca %struct.tty_struct*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty, metadata !4365, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4367, metadata !DIExpression()), !dbg !4368
  br label %do.body, !dbg !4369

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4370

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4371, metadata !DIExpression()), !dbg !4373
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4374, metadata !DIExpression()), !dbg !4373
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4373
  %conv = zext i1 %cmp to i32, !dbg !4373
  store i32 1, i32* %tmp, align 4, !dbg !4373
  %0 = load i32, i32* %tmp, align 4, !dbg !4373
  br label %do.body2, !dbg !4375

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4376

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4377

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !4379, metadata !DIExpression()), !dbg !4382
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !4383, metadata !DIExpression()), !dbg !4382
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !4382
  %conv8 = zext i1 %cmp7 to i32, !dbg !4382
  store i32 1, i32* %tmp9, align 4, !dbg !4382
  %1 = load i32, i32* %tmp9, align 4, !dbg !4382
  %call = call i64 @arch_local_irq_save() #9, !dbg !4384
  store i64 %call, i64* %flags, align 8, !dbg !4384
  br label %do.end, !dbg !4384

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !4377

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !4376

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4385, !srcloc !4386
  br label %do.body12, !dbg !4385

do.body12:                                        ; preds = %do.body11
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !4363
  %2 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !4363
  %3 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !4364, !srcloc !3913
  store i64 %3, i64* %pfo_val__.i, align 8, !dbg !4364
  %4 = load i64, i64* %pfo_val__.i, align 8, !dbg !4364
  %5 = inttoptr i64 %4 to %struct.task_struct*, !dbg !4364
  store %struct.task_struct* %5, %struct.task_struct** %tmp.i, align 8, !dbg !4364
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !4364
  store %struct.task_struct* %6, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !4361
  %7 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !4361
  store %struct.task_struct* %7, %struct.task_struct** %tmp1.i, align 8, !dbg !4361
  %8 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !4361
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 75, !dbg !4387
  %9 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 8, !dbg !4387
  %siglock = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %9, i32 0, i32 0, !dbg !4387
  store %struct.spinlock* %siglock, %struct.spinlock** %lock.addr.i, align 8
  %10 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4388
  %11 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %10, i32 0, i32 0, !dbg !4389
  %rlock.i = bitcast %union.anon.1* %11 to %struct.raw_spinlock*, !dbg !4389
  br label %do.end15, !dbg !4387

do.end15:                                         ; preds = %do.body12
  br label %do.end16, !dbg !4385

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4376

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4375

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !4370

do.end19:                                         ; preds = %do.end18
  store i8* null, i8** %__vpp_verify.i30, align 8, !dbg !4349
  %12 = load i8*, i8** %__vpp_verify.i30, align 8, !dbg !4349
  %13 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !4350, !srcloc !3913
  store i64 %13, i64* %pfo_val__.i31, align 8, !dbg !4350
  %14 = load i64, i64* %pfo_val__.i31, align 8, !dbg !4350
  %15 = inttoptr i64 %14 to %struct.task_struct*, !dbg !4350
  store %struct.task_struct* %15, %struct.task_struct** %tmp.i32, align 8, !dbg !4350
  %16 = load %struct.task_struct*, %struct.task_struct** %tmp.i32, align 8, !dbg !4350
  store %struct.task_struct* %16, %struct.task_struct** %pscr_ret__.i29, align 8, !dbg !4347
  %17 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i29, align 8, !dbg !4347
  store %struct.task_struct* %17, %struct.task_struct** %tmp1.i33, align 8, !dbg !4347
  %18 = load %struct.task_struct*, %struct.task_struct** %tmp1.i33, align 8, !dbg !4347
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 74, !dbg !4390
  %19 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 64, !dbg !4390
  %tty21 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %19, i32 0, i32 24, !dbg !4391
  %20 = load %struct.tty_struct*, %struct.tty_struct** %tty21, align 8, !dbg !4391
  %call22 = call %struct.tty_struct* @tty_kref_get(%struct.tty_struct* %20) #9, !dbg !4392
  store %struct.tty_struct* %call22, %struct.tty_struct** %tty, align 8, !dbg !4393
  store i8* null, i8** %__vpp_verify.i35, align 8, !dbg !4345
  %21 = load i8*, i8** %__vpp_verify.i35, align 8, !dbg !4345
  %22 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !4346, !srcloc !3913
  store i64 %22, i64* %pfo_val__.i36, align 8, !dbg !4346
  %23 = load i64, i64* %pfo_val__.i36, align 8, !dbg !4346
  %24 = inttoptr i64 %23 to %struct.task_struct*, !dbg !4346
  store %struct.task_struct* %24, %struct.task_struct** %tmp.i37, align 8, !dbg !4346
  %25 = load %struct.task_struct*, %struct.task_struct** %tmp.i37, align 8, !dbg !4346
  store %struct.task_struct* %25, %struct.task_struct** %pscr_ret__.i34, align 8, !dbg !4343
  %26 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i34, align 8, !dbg !4343
  store %struct.task_struct* %26, %struct.task_struct** %tmp1.i38, align 8, !dbg !4343
  %27 = load %struct.task_struct*, %struct.task_struct** %tmp1.i38, align 8, !dbg !4343
  %sighand24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %27, i32 0, i32 75, !dbg !4394
  %28 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand24, align 8, !dbg !4394
  %siglock25 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %28, i32 0, i32 0, !dbg !4395
  %29 = load i64, i64* %flags, align 8, !dbg !4396
  store %struct.spinlock* %siglock25, %struct.spinlock** %lock.addr.i26, align 8
  store i64 %29, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !178, metadata !3953, metadata !DIExpression()) #5, !dbg !4397
  call void @llvm.dbg.declare(metadata !178, metadata !3957, metadata !DIExpression()) #5, !dbg !4397
  store i32 1, i32* %tmp.i27, align 4, !dbg !4397
  %30 = load i32, i32* %tmp.i27, align 4, !dbg !4397
  call void @llvm.dbg.declare(metadata !178, metadata !3958, metadata !DIExpression()) #5, !dbg !4398
  call void @llvm.dbg.declare(metadata !178, metadata !3964, metadata !DIExpression()) #5, !dbg !4398
  store i32 1, i32* %tmp8.i, align 4, !dbg !4398
  %31 = load i32, i32* %tmp8.i, align 4, !dbg !4398
  %32 = load i64, i64* %flags.addr.i, align 8, !dbg !4399
  call void @arch_local_irq_restore(i64 %32) #8, !dbg !4399
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4400, !srcloc !3968
  %33 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i26, align 8, !dbg !4401
  %34 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %33, i32 0, i32 0, !dbg !4401
  %rlock.i28 = bitcast %union.anon.1* %34 to %struct.raw_spinlock*, !dbg !4401
  %35 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8, !dbg !4402
  ret %struct.tty_struct* %35, !dbg !4403
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.tty_struct* @tty_kref_get(%struct.tty_struct* %tty) #0 !dbg !4404 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4407, metadata !DIExpression()), !dbg !4408
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4409
  %tobool = icmp ne %struct.tty_struct* %0, null, !dbg !4409
  br i1 %tobool, label %if.then, label %if.end, !dbg !4411

if.then:                                          ; preds = %entry
  %1 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4412
  %kref = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %1, i32 0, i32 1, !dbg !4413
  call void @kref_get(%struct.kref* %kref) #9, !dbg !4414
  br label %if.end, !dbg !4414

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4415
  ret %struct.tty_struct* %2, !dbg !4416
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @session_clear_tty(%struct.pid* %session) #0 !dbg !4417 {
entry:
  %session.addr = alloca %struct.pid*, align 8
  %p = alloca %struct.task_struct*, align 8
  %____ptr = alloca %struct.hlist_node*, align 8
  %________p1 = alloca %struct.hlist_node*, align 8
  %tmp = alloca %struct.hlist_node*, align 8
  %tmp2 = alloca %struct.hlist_node*, align 8
  %tmp3 = alloca %struct.task_struct*, align 8
  %__mptr = alloca i8*, align 8
  %tmp6 = alloca %struct.task_struct*, align 8
  %____ptr8 = alloca %struct.hlist_node*, align 8
  %________p19 = alloca %struct.hlist_node*, align 8
  %tmp12 = alloca %struct.hlist_node*, align 8
  %tmp14 = alloca %struct.hlist_node*, align 8
  %tmp15 = alloca %struct.task_struct*, align 8
  %__mptr18 = alloca i8*, align 8
  %tmp21 = alloca %struct.task_struct*, align 8
  store %struct.pid* %session, %struct.pid** %session.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pid** %session.addr, metadata !4420, metadata !DIExpression()), !dbg !4421
  call void @llvm.dbg.declare(metadata %struct.task_struct** %p, metadata !4422, metadata !DIExpression()), !dbg !4423
  br label %do.body, !dbg !4424

do.body:                                          ; preds = %entry
  %0 = load %struct.pid*, %struct.pid** %session.addr, align 8, !dbg !4425
  %cmp = icmp ne %struct.pid* %0, null, !dbg !4425
  br i1 %cmp, label %if.then, label %if.end, !dbg !4428

if.then:                                          ; preds = %do.body
  call void @llvm.dbg.declare(metadata %struct.hlist_node** %____ptr, metadata !4429, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.declare(metadata %struct.hlist_node** %________p1, metadata !4433, metadata !DIExpression()), !dbg !4435
  br label %do.body1, !dbg !4436

do.body1:                                         ; preds = %if.then
  br label %do.end, !dbg !4438

do.end:                                           ; preds = %do.body1
  %1 = load %struct.pid*, %struct.pid** %session.addr, align 8, !dbg !4436
  %tasks = getelementptr inbounds %struct.pid, %struct.pid* %1, i32 0, i32 3, !dbg !4436
  %arrayidx = getelementptr [4 x %struct.hlist_head], [4 x %struct.hlist_head]* %tasks, i64 0, i64 3, !dbg !4436
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %arrayidx, i32 0, i32 0, !dbg !4436
  %2 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8, !dbg !4436
  store %struct.hlist_node* %2, %struct.hlist_node** %tmp, align 8, !dbg !4438
  %3 = load %struct.hlist_node*, %struct.hlist_node** %tmp, align 8, !dbg !4436
  store %struct.hlist_node* %3, %struct.hlist_node** %________p1, align 8, !dbg !4435
  %4 = load %struct.hlist_node*, %struct.hlist_node** %________p1, align 8, !dbg !4435
  store %struct.hlist_node* %4, %struct.hlist_node** %tmp2, align 8, !dbg !4435
  %5 = load %struct.hlist_node*, %struct.hlist_node** %tmp2, align 8, !dbg !4435
  store %struct.hlist_node* %5, %struct.hlist_node** %____ptr, align 8, !dbg !4432
  %6 = load %struct.hlist_node*, %struct.hlist_node** %____ptr, align 8, !dbg !4432
  %tobool = icmp ne %struct.hlist_node* %6, null, !dbg !4432
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4432

cond.true:                                        ; preds = %do.end
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4440, metadata !DIExpression()), !dbg !4442
  %7 = load %struct.hlist_node*, %struct.hlist_node** %____ptr, align 8, !dbg !4442
  %8 = bitcast %struct.hlist_node* %7 to i8*, !dbg !4442
  store i8* %8, i8** %__mptr, align 8, !dbg !4442
  br label %do.body4, !dbg !4442

do.body4:                                         ; preds = %cond.true
  br label %do.end5, !dbg !4443

do.end5:                                          ; preds = %do.body4
  %9 = load i8*, i8** %__mptr, align 8, !dbg !4442
  %add.ptr = getelementptr i8, i8* %9, i64 -800, !dbg !4442
  %10 = bitcast i8* %add.ptr to %struct.task_struct*, !dbg !4442
  store %struct.task_struct* %10, %struct.task_struct** %tmp6, align 8, !dbg !4443
  %11 = load %struct.task_struct*, %struct.task_struct** %tmp6, align 8, !dbg !4442
  br label %cond.end, !dbg !4432

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !4432

cond.end:                                         ; preds = %cond.false, %do.end5
  %cond = phi %struct.task_struct* [ %11, %do.end5 ], [ null, %cond.false ], !dbg !4432
  store %struct.task_struct* %cond, %struct.task_struct** %tmp3, align 8, !dbg !4432
  %12 = load %struct.task_struct*, %struct.task_struct** %tmp3, align 8, !dbg !4432
  store %struct.task_struct* %12, %struct.task_struct** %p, align 8, !dbg !4445
  br label %for.cond, !dbg !4445

for.cond:                                         ; preds = %cond.end24, %cond.end
  %13 = load %struct.task_struct*, %struct.task_struct** %p, align 8, !dbg !4446
  %tobool7 = icmp ne %struct.task_struct* %13, null, !dbg !4445
  br i1 %tobool7, label %for.body, label %for.end, !dbg !4445

for.body:                                         ; preds = %for.cond
  %14 = load %struct.task_struct*, %struct.task_struct** %p, align 8, !dbg !4448
  call void @proc_clear_tty(%struct.task_struct* %14) #9, !dbg !4451
  br label %for.inc, !dbg !4452

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata %struct.hlist_node** %____ptr8, metadata !4453, metadata !DIExpression()), !dbg !4455
  call void @llvm.dbg.declare(metadata %struct.hlist_node** %________p19, metadata !4456, metadata !DIExpression()), !dbg !4458
  br label %do.body10, !dbg !4459

do.body10:                                        ; preds = %for.inc
  br label %do.end11, !dbg !4461

do.end11:                                         ; preds = %do.body10
  %15 = load %struct.task_struct*, %struct.task_struct** %p, align 8, !dbg !4459
  %pid_links = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i32 0, i32 46, !dbg !4459
  %arrayidx13 = getelementptr [4 x %struct.hlist_node], [4 x %struct.hlist_node]* %pid_links, i64 0, i64 3, !dbg !4459
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %arrayidx13, i32 0, i32 0, !dbg !4459
  %16 = load volatile %struct.hlist_node*, %struct.hlist_node** %next, align 16, !dbg !4459
  store %struct.hlist_node* %16, %struct.hlist_node** %tmp12, align 8, !dbg !4461
  %17 = load %struct.hlist_node*, %struct.hlist_node** %tmp12, align 8, !dbg !4459
  store %struct.hlist_node* %17, %struct.hlist_node** %________p19, align 8, !dbg !4458
  %18 = load %struct.hlist_node*, %struct.hlist_node** %________p19, align 8, !dbg !4458
  store %struct.hlist_node* %18, %struct.hlist_node** %tmp14, align 8, !dbg !4458
  %19 = load %struct.hlist_node*, %struct.hlist_node** %tmp14, align 8, !dbg !4458
  store %struct.hlist_node* %19, %struct.hlist_node** %____ptr8, align 8, !dbg !4455
  %20 = load %struct.hlist_node*, %struct.hlist_node** %____ptr8, align 8, !dbg !4455
  %tobool16 = icmp ne %struct.hlist_node* %20, null, !dbg !4455
  br i1 %tobool16, label %cond.true17, label %cond.false23, !dbg !4455

cond.true17:                                      ; preds = %do.end11
  call void @llvm.dbg.declare(metadata i8** %__mptr18, metadata !4463, metadata !DIExpression()), !dbg !4465
  %21 = load %struct.hlist_node*, %struct.hlist_node** %____ptr8, align 8, !dbg !4465
  %22 = bitcast %struct.hlist_node* %21 to i8*, !dbg !4465
  store i8* %22, i8** %__mptr18, align 8, !dbg !4465
  br label %do.body19, !dbg !4465

do.body19:                                        ; preds = %cond.true17
  br label %do.end20, !dbg !4466

do.end20:                                         ; preds = %do.body19
  %23 = load i8*, i8** %__mptr18, align 8, !dbg !4465
  %add.ptr22 = getelementptr i8, i8* %23, i64 -800, !dbg !4465
  %24 = bitcast i8* %add.ptr22 to %struct.task_struct*, !dbg !4465
  store %struct.task_struct* %24, %struct.task_struct** %tmp21, align 8, !dbg !4466
  %25 = load %struct.task_struct*, %struct.task_struct** %tmp21, align 8, !dbg !4465
  br label %cond.end24, !dbg !4455

cond.false23:                                     ; preds = %do.end11
  br label %cond.end24, !dbg !4455

cond.end24:                                       ; preds = %cond.false23, %do.end20
  %cond25 = phi %struct.task_struct* [ %25, %do.end20 ], [ null, %cond.false23 ], !dbg !4455
  store %struct.task_struct* %cond25, %struct.task_struct** %tmp15, align 8, !dbg !4455
  %26 = load %struct.task_struct*, %struct.task_struct** %tmp15, align 8, !dbg !4455
  store %struct.task_struct* %26, %struct.task_struct** %p, align 8, !dbg !4446
  br label %for.cond, !dbg !4446, !llvm.loop !4468

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !4469

if.end:                                           ; preds = %for.end, %do.body
  br label %do.end26, !dbg !4470

do.end26:                                         ; preds = %if.end
  ret void, !dbg !4471
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tty_signal_session_leader(%struct.tty_struct* %tty, i32 %exit_session) #0 !dbg !4472 {
entry:
  %lock.addr.i79 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i79, metadata !4141, metadata !DIExpression()), !dbg !4473
  %lock.addr.i77 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i77, metadata !4483, metadata !DIExpression()), !dbg !4485
  %lock.addr.i75 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i75, metadata !4487, metadata !DIExpression()), !dbg !4489
  %lock.addr.i73 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i73, metadata !4141, metadata !DIExpression()), !dbg !4491
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4160, metadata !DIExpression()), !dbg !4495
  %tty.addr = alloca %struct.tty_struct*, align 8
  %exit_session.addr = alloca i32, align 4
  %p = alloca %struct.task_struct*, align 8
  %refs = alloca i32, align 4
  %tty_pgrp = alloca %struct.pid*, align 8
  %____ptr = alloca %struct.hlist_node*, align 8
  %________p1 = alloca %struct.hlist_node*, align 8
  %tmp = alloca %struct.hlist_node*, align 8
  %tmp9 = alloca %struct.hlist_node*, align 8
  %tmp10 = alloca %struct.task_struct*, align 8
  %__mptr = alloca i8*, align 8
  %tmp14 = alloca %struct.task_struct*, align 8
  %____ptr41 = alloca %struct.hlist_node*, align 8
  %________p142 = alloca %struct.hlist_node*, align 8
  %tmp45 = alloca %struct.hlist_node*, align 8
  %tmp47 = alloca %struct.hlist_node*, align 8
  %tmp48 = alloca %struct.task_struct*, align 8
  %__mptr51 = alloca i8*, align 8
  %tmp54 = alloca %struct.task_struct*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4497, metadata !DIExpression()), !dbg !4498
  store i32 %exit_session, i32* %exit_session.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %exit_session.addr, metadata !4499, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.declare(metadata %struct.task_struct** %p, metadata !4501, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.declare(metadata i32* %refs, metadata !4503, metadata !DIExpression()), !dbg !4504
  store i32 0, i32* %refs, align 4, !dbg !4504
  call void @llvm.dbg.declare(metadata %struct.pid** %tty_pgrp, metadata !4505, metadata !DIExpression()), !dbg !4506
  store %struct.pid* null, %struct.pid** %tty_pgrp, align 8, !dbg !4506
  br label %do.body, !dbg !4507

do.body:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4508, !srcloc !4510
  br label %do.body1, !dbg !4508

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4511

do.end:                                           ; preds = %do.body1
  br label %do.end2, !dbg !4508

do.end2:                                          ; preds = %do.end
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4513
  %session = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 20, !dbg !4514
  %1 = load %struct.pid*, %struct.pid** %session, align 8, !dbg !4514
  %tobool = icmp ne %struct.pid* %1, null, !dbg !4513
  br i1 %tobool, label %if.then, label %if.end61, !dbg !4515

if.then:                                          ; preds = %do.end2
  br label %do.body3, !dbg !4516

do.body3:                                         ; preds = %if.then
  %2 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4517
  %session4 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %2, i32 0, i32 20, !dbg !4517
  %3 = load %struct.pid*, %struct.pid** %session4, align 8, !dbg !4517
  %cmp = icmp ne %struct.pid* %3, null, !dbg !4517
  br i1 %cmp, label %if.then5, label %if.end59, !dbg !4518

if.then5:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata %struct.hlist_node** %____ptr, metadata !4519, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.declare(metadata %struct.hlist_node** %________p1, metadata !4522, metadata !DIExpression()), !dbg !4524
  br label %do.body6, !dbg !4525

do.body6:                                         ; preds = %if.then5
  br label %do.end7, !dbg !4527

do.end7:                                          ; preds = %do.body6
  %4 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4525
  %session8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 20, !dbg !4525
  %5 = load %struct.pid*, %struct.pid** %session8, align 8, !dbg !4525
  %tasks = getelementptr inbounds %struct.pid, %struct.pid* %5, i32 0, i32 3, !dbg !4525
  %arrayidx = getelementptr [4 x %struct.hlist_head], [4 x %struct.hlist_head]* %tasks, i64 0, i64 3, !dbg !4525
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %arrayidx, i32 0, i32 0, !dbg !4525
  %6 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8, !dbg !4525
  store %struct.hlist_node* %6, %struct.hlist_node** %tmp, align 8, !dbg !4527
  %7 = load %struct.hlist_node*, %struct.hlist_node** %tmp, align 8, !dbg !4525
  store %struct.hlist_node* %7, %struct.hlist_node** %________p1, align 8, !dbg !4524
  %8 = load %struct.hlist_node*, %struct.hlist_node** %________p1, align 8, !dbg !4524
  store %struct.hlist_node* %8, %struct.hlist_node** %tmp9, align 8, !dbg !4524
  %9 = load %struct.hlist_node*, %struct.hlist_node** %tmp9, align 8, !dbg !4524
  store %struct.hlist_node* %9, %struct.hlist_node** %____ptr, align 8, !dbg !4521
  %10 = load %struct.hlist_node*, %struct.hlist_node** %____ptr, align 8, !dbg !4521
  %tobool11 = icmp ne %struct.hlist_node* %10, null, !dbg !4521
  br i1 %tobool11, label %cond.true, label %cond.false, !dbg !4521

cond.true:                                        ; preds = %do.end7
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4529, metadata !DIExpression()), !dbg !4531
  %11 = load %struct.hlist_node*, %struct.hlist_node** %____ptr, align 8, !dbg !4531
  %12 = bitcast %struct.hlist_node* %11 to i8*, !dbg !4531
  store i8* %12, i8** %__mptr, align 8, !dbg !4531
  br label %do.body12, !dbg !4531

do.body12:                                        ; preds = %cond.true
  br label %do.end13, !dbg !4532

do.end13:                                         ; preds = %do.body12
  %13 = load i8*, i8** %__mptr, align 8, !dbg !4531
  %add.ptr = getelementptr i8, i8* %13, i64 -800, !dbg !4531
  %14 = bitcast i8* %add.ptr to %struct.task_struct*, !dbg !4531
  store %struct.task_struct* %14, %struct.task_struct** %tmp14, align 8, !dbg !4532
  %15 = load %struct.task_struct*, %struct.task_struct** %tmp14, align 8, !dbg !4531
  br label %cond.end, !dbg !4521

cond.false:                                       ; preds = %do.end7
  br label %cond.end, !dbg !4521

cond.end:                                         ; preds = %cond.false, %do.end13
  %cond = phi %struct.task_struct* [ %15, %do.end13 ], [ null, %cond.false ], !dbg !4521
  store %struct.task_struct* %cond, %struct.task_struct** %tmp10, align 8, !dbg !4521
  %16 = load %struct.task_struct*, %struct.task_struct** %tmp10, align 8, !dbg !4521
  store %struct.task_struct* %16, %struct.task_struct** %p, align 8, !dbg !4534
  br label %for.cond, !dbg !4534

for.cond:                                         ; preds = %cond.end57, %cond.end
  %17 = load %struct.task_struct*, %struct.task_struct** %p, align 8, !dbg !4535
  %tobool15 = icmp ne %struct.task_struct* %17, null, !dbg !4534
  br i1 %tobool15, label %for.body, label %for.end, !dbg !4534

for.body:                                         ; preds = %for.cond
  %18 = load %struct.task_struct*, %struct.task_struct** %p, align 8, !dbg !4536
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 75, !dbg !4537
  %19 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 8, !dbg !4537
  %siglock = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %19, i32 0, i32 0, !dbg !4538
  store %struct.spinlock* %siglock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #8, !dbg !4539
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4540, !srcloc !4185
  %20 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4541
  %21 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %20, i32 0, i32 0, !dbg !4541
  %rlock.i = bitcast %union.anon.1* %21 to %struct.raw_spinlock*, !dbg !4541
  %22 = load %struct.task_struct*, %struct.task_struct** %p, align 8, !dbg !4542
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %22, i32 0, i32 74, !dbg !4544
  %23 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 64, !dbg !4544
  %tty16 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %23, i32 0, i32 24, !dbg !4545
  %24 = load %struct.tty_struct*, %struct.tty_struct** %tty16, align 8, !dbg !4545
  %25 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4546
  %cmp17 = icmp eq %struct.tty_struct* %24, %25, !dbg !4547
  br i1 %cmp17, label %if.then18, label %if.end, !dbg !4548

if.then18:                                        ; preds = %for.body
  %26 = load %struct.task_struct*, %struct.task_struct** %p, align 8, !dbg !4549
  %signal19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %26, i32 0, i32 74, !dbg !4551
  %27 = load %struct.signal_struct*, %struct.signal_struct** %signal19, align 64, !dbg !4551
  %tty20 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %27, i32 0, i32 24, !dbg !4552
  store %struct.tty_struct* null, %struct.tty_struct** %tty20, align 8, !dbg !4553
  %28 = load i32, i32* %refs, align 4, !dbg !4554
  %inc = add i32 %28, 1, !dbg !4554
  store i32 %inc, i32* %refs, align 4, !dbg !4554
  br label %if.end, !dbg !4555

if.end:                                           ; preds = %if.then18, %for.body
  %29 = load %struct.task_struct*, %struct.task_struct** %p, align 8, !dbg !4556
  %signal21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %29, i32 0, i32 74, !dbg !4557
  %30 = load %struct.signal_struct*, %struct.signal_struct** %signal21, align 64, !dbg !4557
  %leader = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %30, i32 0, i32 23, !dbg !4558
  %31 = load i32, i32* %leader, align 8, !dbg !4558
  %tobool22 = icmp ne i32 %31, 0, !dbg !4556
  br i1 %tobool22, label %if.end26, label %if.then23, !dbg !4559

if.then23:                                        ; preds = %if.end
  %32 = load %struct.task_struct*, %struct.task_struct** %p, align 8, !dbg !4560
  %sighand24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %32, i32 0, i32 75, !dbg !4561
  %33 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand24, align 8, !dbg !4561
  %siglock25 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %33, i32 0, i32 0, !dbg !4562
  store %struct.spinlock* %siglock25, %struct.spinlock** %lock.addr.i73, align 8
  call void @arch_local_irq_enable() #8, !dbg !4563
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4564, !srcloc !4216
  %34 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i73, align 8, !dbg !4565
  %35 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %34, i32 0, i32 0, !dbg !4565
  %rlock.i74 = bitcast %union.anon.1* %35 to %struct.raw_spinlock*, !dbg !4565
  br label %for.inc, !dbg !4566

if.end26:                                         ; preds = %if.end
  %36 = load %struct.task_struct*, %struct.task_struct** %p, align 8, !dbg !4567
  %call = call i32 @__group_send_sig_info(i32 1, %struct.kernel_siginfo* inttoptr (i64 1 to %struct.kernel_siginfo*), %struct.task_struct* %36) #9, !dbg !4568
  %37 = load %struct.task_struct*, %struct.task_struct** %p, align 8, !dbg !4569
  %call27 = call i32 @__group_send_sig_info(i32 18, %struct.kernel_siginfo* inttoptr (i64 1 to %struct.kernel_siginfo*), %struct.task_struct* %37) #9, !dbg !4570
  %38 = load %struct.task_struct*, %struct.task_struct** %p, align 8, !dbg !4571
  %signal28 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %38, i32 0, i32 74, !dbg !4572
  %39 = load %struct.signal_struct*, %struct.signal_struct** %signal28, align 64, !dbg !4572
  %tty_old_pgrp = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %39, i32 0, i32 22, !dbg !4573
  %40 = load %struct.pid*, %struct.pid** %tty_old_pgrp, align 8, !dbg !4573
  call void @put_pid(%struct.pid* %40) #9, !dbg !4574
  %41 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4575
  %ctrl_lock = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %41, i32 0, i32 13, !dbg !4576
  store %struct.spinlock* %ctrl_lock, %struct.spinlock** %lock.addr.i75, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4577, !srcloc !4579
  %42 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i75, align 8, !dbg !4580
  %43 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %42, i32 0, i32 0, !dbg !4580
  %rlock.i76 = bitcast %union.anon.1* %43 to %struct.raw_spinlock*, !dbg !4580
  %44 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4582
  %pgrp = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %44, i32 0, i32 19, !dbg !4583
  %45 = load %struct.pid*, %struct.pid** %pgrp, align 8, !dbg !4583
  %call29 = call %struct.pid* @get_pid(%struct.pid* %45) #9, !dbg !4584
  store %struct.pid* %call29, %struct.pid** %tty_pgrp, align 8, !dbg !4585
  %46 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4586
  %pgrp30 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %46, i32 0, i32 19, !dbg !4588
  %47 = load %struct.pid*, %struct.pid** %pgrp30, align 8, !dbg !4588
  %tobool31 = icmp ne %struct.pid* %47, null, !dbg !4586
  br i1 %tobool31, label %if.then32, label %if.end37, !dbg !4589

if.then32:                                        ; preds = %if.end26
  %48 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4590
  %pgrp33 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %48, i32 0, i32 19, !dbg !4591
  %49 = load %struct.pid*, %struct.pid** %pgrp33, align 8, !dbg !4591
  %call34 = call %struct.pid* @get_pid(%struct.pid* %49) #9, !dbg !4592
  %50 = load %struct.task_struct*, %struct.task_struct** %p, align 8, !dbg !4593
  %signal35 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %50, i32 0, i32 74, !dbg !4594
  %51 = load %struct.signal_struct*, %struct.signal_struct** %signal35, align 64, !dbg !4594
  %tty_old_pgrp36 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %51, i32 0, i32 22, !dbg !4595
  store %struct.pid* %call34, %struct.pid** %tty_old_pgrp36, align 8, !dbg !4596
  br label %if.end37, !dbg !4593

if.end37:                                         ; preds = %if.then32, %if.end26
  %52 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4597
  %ctrl_lock38 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %52, i32 0, i32 13, !dbg !4598
  store %struct.spinlock* %ctrl_lock38, %struct.spinlock** %lock.addr.i77, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4599, !srcloc !4601
  %53 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i77, align 8, !dbg !4602
  %54 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %53, i32 0, i32 0, !dbg !4602
  %rlock.i78 = bitcast %union.anon.1* %54 to %struct.raw_spinlock*, !dbg !4602
  %55 = load %struct.task_struct*, %struct.task_struct** %p, align 8, !dbg !4604
  %sighand39 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %55, i32 0, i32 75, !dbg !4605
  %56 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand39, align 8, !dbg !4605
  %siglock40 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %56, i32 0, i32 0, !dbg !4606
  store %struct.spinlock* %siglock40, %struct.spinlock** %lock.addr.i79, align 8
  call void @arch_local_irq_enable() #8, !dbg !4607
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4608, !srcloc !4216
  %57 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i79, align 8, !dbg !4609
  %58 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %57, i32 0, i32 0, !dbg !4609
  %rlock.i80 = bitcast %union.anon.1* %58 to %struct.raw_spinlock*, !dbg !4609
  br label %for.inc, !dbg !4610

for.inc:                                          ; preds = %if.end37, %if.then23
  call void @llvm.dbg.declare(metadata %struct.hlist_node** %____ptr41, metadata !4611, metadata !DIExpression()), !dbg !4613
  call void @llvm.dbg.declare(metadata %struct.hlist_node** %________p142, metadata !4614, metadata !DIExpression()), !dbg !4616
  br label %do.body43, !dbg !4617

do.body43:                                        ; preds = %for.inc
  br label %do.end44, !dbg !4619

do.end44:                                         ; preds = %do.body43
  %59 = load %struct.task_struct*, %struct.task_struct** %p, align 8, !dbg !4617
  %pid_links = getelementptr inbounds %struct.task_struct, %struct.task_struct* %59, i32 0, i32 46, !dbg !4617
  %arrayidx46 = getelementptr [4 x %struct.hlist_node], [4 x %struct.hlist_node]* %pid_links, i64 0, i64 3, !dbg !4617
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %arrayidx46, i32 0, i32 0, !dbg !4617
  %60 = load volatile %struct.hlist_node*, %struct.hlist_node** %next, align 16, !dbg !4617
  store %struct.hlist_node* %60, %struct.hlist_node** %tmp45, align 8, !dbg !4619
  %61 = load %struct.hlist_node*, %struct.hlist_node** %tmp45, align 8, !dbg !4617
  store %struct.hlist_node* %61, %struct.hlist_node** %________p142, align 8, !dbg !4616
  %62 = load %struct.hlist_node*, %struct.hlist_node** %________p142, align 8, !dbg !4616
  store %struct.hlist_node* %62, %struct.hlist_node** %tmp47, align 8, !dbg !4616
  %63 = load %struct.hlist_node*, %struct.hlist_node** %tmp47, align 8, !dbg !4616
  store %struct.hlist_node* %63, %struct.hlist_node** %____ptr41, align 8, !dbg !4613
  %64 = load %struct.hlist_node*, %struct.hlist_node** %____ptr41, align 8, !dbg !4613
  %tobool49 = icmp ne %struct.hlist_node* %64, null, !dbg !4613
  br i1 %tobool49, label %cond.true50, label %cond.false56, !dbg !4613

cond.true50:                                      ; preds = %do.end44
  call void @llvm.dbg.declare(metadata i8** %__mptr51, metadata !4621, metadata !DIExpression()), !dbg !4623
  %65 = load %struct.hlist_node*, %struct.hlist_node** %____ptr41, align 8, !dbg !4623
  %66 = bitcast %struct.hlist_node* %65 to i8*, !dbg !4623
  store i8* %66, i8** %__mptr51, align 8, !dbg !4623
  br label %do.body52, !dbg !4623

do.body52:                                        ; preds = %cond.true50
  br label %do.end53, !dbg !4624

do.end53:                                         ; preds = %do.body52
  %67 = load i8*, i8** %__mptr51, align 8, !dbg !4623
  %add.ptr55 = getelementptr i8, i8* %67, i64 -800, !dbg !4623
  %68 = bitcast i8* %add.ptr55 to %struct.task_struct*, !dbg !4623
  store %struct.task_struct* %68, %struct.task_struct** %tmp54, align 8, !dbg !4624
  %69 = load %struct.task_struct*, %struct.task_struct** %tmp54, align 8, !dbg !4623
  br label %cond.end57, !dbg !4613

cond.false56:                                     ; preds = %do.end44
  br label %cond.end57, !dbg !4613

cond.end57:                                       ; preds = %cond.false56, %do.end53
  %cond58 = phi %struct.task_struct* [ %69, %do.end53 ], [ null, %cond.false56 ], !dbg !4613
  store %struct.task_struct* %cond58, %struct.task_struct** %tmp48, align 8, !dbg !4613
  %70 = load %struct.task_struct*, %struct.task_struct** %tmp48, align 8, !dbg !4613
  store %struct.task_struct* %70, %struct.task_struct** %p, align 8, !dbg !4535
  br label %for.cond, !dbg !4535, !llvm.loop !4626

for.end:                                          ; preds = %for.cond
  br label %if.end59, !dbg !4627

if.end59:                                         ; preds = %for.end, %do.body3
  br label %do.end60, !dbg !4628

do.end60:                                         ; preds = %if.end59
  br label %if.end61, !dbg !4629

if.end61:                                         ; preds = %do.end60, %do.end2
  br label %do.body62, !dbg !4630

do.body62:                                        ; preds = %if.end61
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4631, !srcloc !4633
  br label %do.body63, !dbg !4631

do.body63:                                        ; preds = %do.body62
  br label %do.end64, !dbg !4634

do.end64:                                         ; preds = %do.body63
  br label %do.end65, !dbg !4631

do.end65:                                         ; preds = %do.end64
  %71 = load %struct.pid*, %struct.pid** %tty_pgrp, align 8, !dbg !4636
  %tobool66 = icmp ne %struct.pid* %71, null, !dbg !4636
  br i1 %tobool66, label %if.then67, label %if.end72, !dbg !4638

if.then67:                                        ; preds = %do.end65
  %72 = load i32, i32* %exit_session.addr, align 4, !dbg !4639
  %tobool68 = icmp ne i32 %72, 0, !dbg !4639
  br i1 %tobool68, label %if.then69, label %if.end71, !dbg !4642

if.then69:                                        ; preds = %if.then67
  %73 = load %struct.pid*, %struct.pid** %tty_pgrp, align 8, !dbg !4643
  %74 = load i32, i32* %exit_session.addr, align 4, !dbg !4644
  %call70 = call i32 @kill_pgrp(%struct.pid* %73, i32 1, i32 %74) #9, !dbg !4645
  br label %if.end71, !dbg !4645

if.end71:                                         ; preds = %if.then69, %if.then67
  %75 = load %struct.pid*, %struct.pid** %tty_pgrp, align 8, !dbg !4646
  call void @put_pid(%struct.pid* %75) #9, !dbg !4647
  br label %if.end72, !dbg !4648

if.end72:                                         ; preds = %if.end71, %do.end65
  %76 = load i32, i32* %refs, align 4, !dbg !4649
  ret i32 %76, !dbg !4650
}

; Function Attrs: noredzone
declare dso_local i32 @__group_send_sig_info(i32, %struct.kernel_siginfo*, %struct.task_struct*) #2

; Function Attrs: noredzone
declare dso_local void @put_pid(%struct.pid*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pid* @get_pid(%struct.pid* %pid) #0 !dbg !4651 {
entry:
  %pid.addr = alloca %struct.pid*, align 8
  store %struct.pid* %pid, %struct.pid** %pid.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pid** %pid.addr, metadata !4654, metadata !DIExpression()), !dbg !4655
  %0 = load %struct.pid*, %struct.pid** %pid.addr, align 8, !dbg !4656
  %tobool = icmp ne %struct.pid* %0, null, !dbg !4656
  br i1 %tobool, label %if.then, label %if.end, !dbg !4658

if.then:                                          ; preds = %entry
  %1 = load %struct.pid*, %struct.pid** %pid.addr, align 8, !dbg !4659
  %count = getelementptr inbounds %struct.pid, %struct.pid* %1, i32 0, i32 0, !dbg !4660
  call void @refcount_inc(%struct.refcount_struct* %count) #9, !dbg !4661
  br label %if.end, !dbg !4661

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.pid*, %struct.pid** %pid.addr, align 8, !dbg !4662
  ret %struct.pid* %2, !dbg !4663
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @disassociate_ctty(i32 %on_exit) #0 !dbg !4664 {
entry:
  %pscr_ret__.i145 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i145, metadata !3851, metadata !DIExpression()), !dbg !4665
  %__vpp_verify.i146 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i146, metadata !3864, metadata !DIExpression()), !dbg !4667
  %pfo_val__.i147 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i147, metadata !3867, metadata !DIExpression()), !dbg !4668
  %tmp.i148 = alloca %struct.task_struct*, align 8
  %tmp1.i149 = alloca %struct.task_struct*, align 8
  %lock.addr.i142 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i142, metadata !3870, metadata !DIExpression()), !dbg !4669
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !3878, metadata !DIExpression()), !dbg !4673
  %tmp.i143 = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i140 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i140, metadata !3880, metadata !DIExpression()), !dbg !4674
  %lock.addr.i138 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i138, metadata !4141, metadata !DIExpression()), !dbg !4681
  %pscr_ret__.i133 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i133, metadata !3851, metadata !DIExpression()), !dbg !4683
  %__vpp_verify.i134 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i134, metadata !3864, metadata !DIExpression()), !dbg !4685
  %pfo_val__.i135 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i135, metadata !3867, metadata !DIExpression()), !dbg !4686
  %tmp.i136 = alloca %struct.task_struct*, align 8
  %tmp1.i137 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i128 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i128, metadata !3851, metadata !DIExpression()), !dbg !4687
  %__vpp_verify.i129 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i129, metadata !3864, metadata !DIExpression()), !dbg !4689
  %pfo_val__.i130 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i130, metadata !3867, metadata !DIExpression()), !dbg !4690
  %tmp.i131 = alloca %struct.task_struct*, align 8
  %tmp1.i132 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i123 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i123, metadata !3851, metadata !DIExpression()), !dbg !4691
  %__vpp_verify.i124 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i124, metadata !3864, metadata !DIExpression()), !dbg !4693
  %pfo_val__.i125 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i125, metadata !3867, metadata !DIExpression()), !dbg !4694
  %tmp.i126 = alloca %struct.task_struct*, align 8
  %tmp1.i127 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i118 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i118, metadata !3851, metadata !DIExpression()), !dbg !4695
  %__vpp_verify.i119 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i119, metadata !3864, metadata !DIExpression()), !dbg !4697
  %pfo_val__.i120 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i120, metadata !3867, metadata !DIExpression()), !dbg !4698
  %tmp.i121 = alloca %struct.task_struct*, align 8
  %tmp1.i122 = alloca %struct.task_struct*, align 8
  %lock.addr.i116 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i116, metadata !4160, metadata !DIExpression()), !dbg !4699
  %pscr_ret__.i111 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i111, metadata !3851, metadata !DIExpression()), !dbg !4701
  %__vpp_verify.i112 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i112, metadata !3864, metadata !DIExpression()), !dbg !4703
  %pfo_val__.i113 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i113, metadata !3867, metadata !DIExpression()), !dbg !4704
  %tmp.i114 = alloca %struct.task_struct*, align 8
  %tmp1.i115 = alloca %struct.task_struct*, align 8
  %lock.addr.i109 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i109, metadata !4141, metadata !DIExpression()), !dbg !4705
  %pscr_ret__.i104 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i104, metadata !3851, metadata !DIExpression()), !dbg !4710
  %__vpp_verify.i105 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i105, metadata !3864, metadata !DIExpression()), !dbg !4712
  %pfo_val__.i106 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i106, metadata !3867, metadata !DIExpression()), !dbg !4713
  %tmp.i107 = alloca %struct.task_struct*, align 8
  %tmp1.i108 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i99 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i99, metadata !3851, metadata !DIExpression()), !dbg !4714
  %__vpp_verify.i100 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i100, metadata !3864, metadata !DIExpression()), !dbg !4716
  %pfo_val__.i101 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i101, metadata !3867, metadata !DIExpression()), !dbg !4717
  %tmp.i102 = alloca %struct.task_struct*, align 8
  %tmp1.i103 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i94 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i94, metadata !3851, metadata !DIExpression()), !dbg !4718
  %__vpp_verify.i95 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i95, metadata !3864, metadata !DIExpression()), !dbg !4720
  %pfo_val__.i96 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i96, metadata !3867, metadata !DIExpression()), !dbg !4721
  %tmp.i97 = alloca %struct.task_struct*, align 8
  %tmp1.i98 = alloca %struct.task_struct*, align 8
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4160, metadata !DIExpression()), !dbg !4722
  %pscr_ret__.i89 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i89, metadata !3851, metadata !DIExpression()), !dbg !4724
  %__vpp_verify.i90 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i90, metadata !3864, metadata !DIExpression()), !dbg !4726
  %pfo_val__.i91 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i91, metadata !3867, metadata !DIExpression()), !dbg !4727
  %tmp.i92 = alloca %struct.task_struct*, align 8
  %tmp1.i93 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !3851, metadata !DIExpression()), !dbg !4728
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !3864, metadata !DIExpression()), !dbg !4731
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !3867, metadata !DIExpression()), !dbg !4732
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %on_exit.addr = alloca i32, align 4
  %tty = alloca %struct.tty_struct*, align 8
  %tty_pgrp = alloca %struct.pid*, align 8
  %old_pgrp = alloca %struct.pid*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy60 = alloca i64, align 8
  %__dummy261 = alloca i64, align 8
  %tmp64 = alloca i32, align 4
  store i32 %on_exit, i32* %on_exit.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %on_exit.addr, metadata !4733, metadata !DIExpression()), !dbg !4734
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty, metadata !4735, metadata !DIExpression()), !dbg !4736
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !4731
  %0 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !4731
  %1 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !4732, !srcloc !3913
  store i64 %1, i64* %pfo_val__.i, align 8, !dbg !4732
  %2 = load i64, i64* %pfo_val__.i, align 8, !dbg !4732
  %3 = inttoptr i64 %2 to %struct.task_struct*, !dbg !4732
  store %struct.task_struct* %3, %struct.task_struct** %tmp.i, align 8, !dbg !4732
  %4 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !4732
  store %struct.task_struct* %4, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !4728
  %5 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !4728
  store %struct.task_struct* %5, %struct.task_struct** %tmp1.i, align 8, !dbg !4728
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !4728
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 74, !dbg !4737
  %7 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 64, !dbg !4737
  %leader = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %7, i32 0, i32 23, !dbg !4738
  %8 = load i32, i32* %leader, align 8, !dbg !4738
  %tobool = icmp ne i32 %8, 0, !dbg !4739
  br i1 %tobool, label %if.end, label %if.then, !dbg !4740

if.then:                                          ; preds = %entry
  br label %do.end88, !dbg !4741

if.end:                                           ; preds = %entry
  %call1 = call %struct.tty_struct* @get_current_tty() #9, !dbg !4742
  store %struct.tty_struct* %call1, %struct.tty_struct** %tty, align 8, !dbg !4743
  %9 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8, !dbg !4744
  %tobool2 = icmp ne %struct.tty_struct* %9, null, !dbg !4744
  br i1 %tobool2, label %if.then3, label %if.else17, !dbg !4745

if.then3:                                         ; preds = %if.end
  %10 = load i32, i32* %on_exit.addr, align 4, !dbg !4746
  %tobool4 = icmp ne i32 %10, 0, !dbg !4746
  br i1 %tobool4, label %land.lhs.true, label %if.else, !dbg !4749

land.lhs.true:                                    ; preds = %if.then3
  %11 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8, !dbg !4750
  %driver = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 3, !dbg !4751
  %12 = load %struct.tty_driver*, %struct.tty_driver** %driver, align 8, !dbg !4751
  %type = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %12, i32 0, i32 10, !dbg !4752
  %13 = load i16, i16* %type, align 8, !dbg !4752
  %conv = sext i16 %13 to i32, !dbg !4750
  %cmp = icmp ne i32 %conv, 4, !dbg !4753
  br i1 %cmp, label %if.then6, label %if.else, !dbg !4754

if.then6:                                         ; preds = %land.lhs.true
  %14 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8, !dbg !4755
  call void @tty_vhangup_session(%struct.tty_struct* %14) #9, !dbg !4757
  br label %if.end16, !dbg !4758

if.else:                                          ; preds = %land.lhs.true, %if.then3
  call void @llvm.dbg.declare(metadata %struct.pid** %tty_pgrp, metadata !4759, metadata !DIExpression()), !dbg !4761
  %15 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8, !dbg !4762
  %call7 = call %struct.pid* @tty_get_pgrp(%struct.tty_struct* %15) #9, !dbg !4763
  store %struct.pid* %call7, %struct.pid** %tty_pgrp, align 8, !dbg !4761
  %16 = load %struct.pid*, %struct.pid** %tty_pgrp, align 8, !dbg !4764
  %tobool8 = icmp ne %struct.pid* %16, null, !dbg !4764
  br i1 %tobool8, label %if.then9, label %if.end15, !dbg !4766

if.then9:                                         ; preds = %if.else
  %17 = load %struct.pid*, %struct.pid** %tty_pgrp, align 8, !dbg !4767
  %18 = load i32, i32* %on_exit.addr, align 4, !dbg !4769
  %call10 = call i32 @kill_pgrp(%struct.pid* %17, i32 1, i32 %18) #9, !dbg !4770
  %19 = load i32, i32* %on_exit.addr, align 4, !dbg !4771
  %tobool11 = icmp ne i32 %19, 0, !dbg !4771
  br i1 %tobool11, label %if.end14, label %if.then12, !dbg !4773

if.then12:                                        ; preds = %if.then9
  %20 = load %struct.pid*, %struct.pid** %tty_pgrp, align 8, !dbg !4774
  %21 = load i32, i32* %on_exit.addr, align 4, !dbg !4775
  %call13 = call i32 @kill_pgrp(%struct.pid* %20, i32 18, i32 %21) #9, !dbg !4776
  br label %if.end14, !dbg !4776

if.end14:                                         ; preds = %if.then12, %if.then9
  %22 = load %struct.pid*, %struct.pid** %tty_pgrp, align 8, !dbg !4777
  call void @put_pid(%struct.pid* %22) #9, !dbg !4778
  br label %if.end15, !dbg !4779

if.end15:                                         ; preds = %if.end14, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then6
  %23 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8, !dbg !4780
  call void @tty_kref_put(%struct.tty_struct* %23) #9, !dbg !4781
  br label %if.end35, !dbg !4782

if.else17:                                        ; preds = %if.end
  %24 = load i32, i32* %on_exit.addr, align 4, !dbg !4783
  %tobool18 = icmp ne i32 %24, 0, !dbg !4783
  br i1 %tobool18, label %if.then19, label %if.end34, !dbg !4784

if.then19:                                        ; preds = %if.else17
  call void @llvm.dbg.declare(metadata %struct.pid** %old_pgrp, metadata !4785, metadata !DIExpression()), !dbg !4786
  store i8* null, i8** %__vpp_verify.i90, align 8, !dbg !4726
  %25 = load i8*, i8** %__vpp_verify.i90, align 8, !dbg !4726
  %26 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !4727, !srcloc !3913
  store i64 %26, i64* %pfo_val__.i91, align 8, !dbg !4727
  %27 = load i64, i64* %pfo_val__.i91, align 8, !dbg !4727
  %28 = inttoptr i64 %27 to %struct.task_struct*, !dbg !4727
  store %struct.task_struct* %28, %struct.task_struct** %tmp.i92, align 8, !dbg !4727
  %29 = load %struct.task_struct*, %struct.task_struct** %tmp.i92, align 8, !dbg !4727
  store %struct.task_struct* %29, %struct.task_struct** %pscr_ret__.i89, align 8, !dbg !4724
  %30 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i89, align 8, !dbg !4724
  store %struct.task_struct* %30, %struct.task_struct** %tmp1.i93, align 8, !dbg !4724
  %31 = load %struct.task_struct*, %struct.task_struct** %tmp1.i93, align 8, !dbg !4724
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %31, i32 0, i32 75, !dbg !4787
  %32 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 8, !dbg !4787
  %siglock = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %32, i32 0, i32 0, !dbg !4788
  store %struct.spinlock* %siglock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #8, !dbg !4789
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4790, !srcloc !4185
  %33 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4791
  %34 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %33, i32 0, i32 0, !dbg !4791
  %rlock.i = bitcast %union.anon.1* %34 to %struct.raw_spinlock*, !dbg !4791
  store i8* null, i8** %__vpp_verify.i95, align 8, !dbg !4720
  %35 = load i8*, i8** %__vpp_verify.i95, align 8, !dbg !4720
  %36 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !4721, !srcloc !3913
  store i64 %36, i64* %pfo_val__.i96, align 8, !dbg !4721
  %37 = load i64, i64* %pfo_val__.i96, align 8, !dbg !4721
  %38 = inttoptr i64 %37 to %struct.task_struct*, !dbg !4721
  store %struct.task_struct* %38, %struct.task_struct** %tmp.i97, align 8, !dbg !4721
  %39 = load %struct.task_struct*, %struct.task_struct** %tmp.i97, align 8, !dbg !4721
  store %struct.task_struct* %39, %struct.task_struct** %pscr_ret__.i94, align 8, !dbg !4718
  %40 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i94, align 8, !dbg !4718
  store %struct.task_struct* %40, %struct.task_struct** %tmp1.i98, align 8, !dbg !4718
  %41 = load %struct.task_struct*, %struct.task_struct** %tmp1.i98, align 8, !dbg !4718
  %signal22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %41, i32 0, i32 74, !dbg !4792
  %42 = load %struct.signal_struct*, %struct.signal_struct** %signal22, align 64, !dbg !4792
  %tty_old_pgrp = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %42, i32 0, i32 22, !dbg !4793
  %43 = load %struct.pid*, %struct.pid** %tty_old_pgrp, align 8, !dbg !4793
  store %struct.pid* %43, %struct.pid** %old_pgrp, align 8, !dbg !4794
  store i8* null, i8** %__vpp_verify.i100, align 8, !dbg !4716
  %44 = load i8*, i8** %__vpp_verify.i100, align 8, !dbg !4716
  %45 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !4717, !srcloc !3913
  store i64 %45, i64* %pfo_val__.i101, align 8, !dbg !4717
  %46 = load i64, i64* %pfo_val__.i101, align 8, !dbg !4717
  %47 = inttoptr i64 %46 to %struct.task_struct*, !dbg !4717
  store %struct.task_struct* %47, %struct.task_struct** %tmp.i102, align 8, !dbg !4717
  %48 = load %struct.task_struct*, %struct.task_struct** %tmp.i102, align 8, !dbg !4717
  store %struct.task_struct* %48, %struct.task_struct** %pscr_ret__.i99, align 8, !dbg !4714
  %49 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i99, align 8, !dbg !4714
  store %struct.task_struct* %49, %struct.task_struct** %tmp1.i103, align 8, !dbg !4714
  %50 = load %struct.task_struct*, %struct.task_struct** %tmp1.i103, align 8, !dbg !4714
  %signal24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %50, i32 0, i32 74, !dbg !4795
  %51 = load %struct.signal_struct*, %struct.signal_struct** %signal24, align 64, !dbg !4795
  %tty_old_pgrp25 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %51, i32 0, i32 22, !dbg !4796
  store %struct.pid* null, %struct.pid** %tty_old_pgrp25, align 8, !dbg !4797
  store i8* null, i8** %__vpp_verify.i105, align 8, !dbg !4712
  %52 = load i8*, i8** %__vpp_verify.i105, align 8, !dbg !4712
  %53 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !4713, !srcloc !3913
  store i64 %53, i64* %pfo_val__.i106, align 8, !dbg !4713
  %54 = load i64, i64* %pfo_val__.i106, align 8, !dbg !4713
  %55 = inttoptr i64 %54 to %struct.task_struct*, !dbg !4713
  store %struct.task_struct* %55, %struct.task_struct** %tmp.i107, align 8, !dbg !4713
  %56 = load %struct.task_struct*, %struct.task_struct** %tmp.i107, align 8, !dbg !4713
  store %struct.task_struct* %56, %struct.task_struct** %pscr_ret__.i104, align 8, !dbg !4710
  %57 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i104, align 8, !dbg !4710
  store %struct.task_struct* %57, %struct.task_struct** %tmp1.i108, align 8, !dbg !4710
  %58 = load %struct.task_struct*, %struct.task_struct** %tmp1.i108, align 8, !dbg !4710
  %sighand27 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %58, i32 0, i32 75, !dbg !4798
  %59 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand27, align 8, !dbg !4798
  %siglock28 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %59, i32 0, i32 0, !dbg !4799
  store %struct.spinlock* %siglock28, %struct.spinlock** %lock.addr.i109, align 8
  call void @arch_local_irq_enable() #8, !dbg !4800
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4801, !srcloc !4216
  %60 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i109, align 8, !dbg !4802
  %61 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %60, i32 0, i32 0, !dbg !4802
  %rlock.i110 = bitcast %union.anon.1* %61 to %struct.raw_spinlock*, !dbg !4802
  %62 = load %struct.pid*, %struct.pid** %old_pgrp, align 8, !dbg !4803
  %tobool29 = icmp ne %struct.pid* %62, null, !dbg !4803
  br i1 %tobool29, label %if.then30, label %if.end33, !dbg !4805

if.then30:                                        ; preds = %if.then19
  %63 = load %struct.pid*, %struct.pid** %old_pgrp, align 8, !dbg !4806
  %64 = load i32, i32* %on_exit.addr, align 4, !dbg !4808
  %call31 = call i32 @kill_pgrp(%struct.pid* %63, i32 1, i32 %64) #9, !dbg !4809
  %65 = load %struct.pid*, %struct.pid** %old_pgrp, align 8, !dbg !4810
  %66 = load i32, i32* %on_exit.addr, align 4, !dbg !4811
  %call32 = call i32 @kill_pgrp(%struct.pid* %65, i32 18, i32 %66) #9, !dbg !4812
  %67 = load %struct.pid*, %struct.pid** %old_pgrp, align 8, !dbg !4813
  call void @put_pid(%struct.pid* %67) #9, !dbg !4814
  br label %if.end33, !dbg !4815

if.end33:                                         ; preds = %if.then30, %if.then19
  br label %do.end88, !dbg !4816

if.end34:                                         ; preds = %if.else17
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end16
  store i8* null, i8** %__vpp_verify.i112, align 8, !dbg !4703
  %68 = load i8*, i8** %__vpp_verify.i112, align 8, !dbg !4703
  %69 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !4704, !srcloc !3913
  store i64 %69, i64* %pfo_val__.i113, align 8, !dbg !4704
  %70 = load i64, i64* %pfo_val__.i113, align 8, !dbg !4704
  %71 = inttoptr i64 %70 to %struct.task_struct*, !dbg !4704
  store %struct.task_struct* %71, %struct.task_struct** %tmp.i114, align 8, !dbg !4704
  %72 = load %struct.task_struct*, %struct.task_struct** %tmp.i114, align 8, !dbg !4704
  store %struct.task_struct* %72, %struct.task_struct** %pscr_ret__.i111, align 8, !dbg !4701
  %73 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i111, align 8, !dbg !4701
  store %struct.task_struct* %73, %struct.task_struct** %tmp1.i115, align 8, !dbg !4701
  %74 = load %struct.task_struct*, %struct.task_struct** %tmp1.i115, align 8, !dbg !4701
  %sighand37 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %74, i32 0, i32 75, !dbg !4817
  %75 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand37, align 8, !dbg !4817
  %siglock38 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %75, i32 0, i32 0, !dbg !4818
  store %struct.spinlock* %siglock38, %struct.spinlock** %lock.addr.i116, align 8
  call void @arch_local_irq_disable() #8, !dbg !4819
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4820, !srcloc !4185
  %76 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i116, align 8, !dbg !4821
  %77 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %76, i32 0, i32 0, !dbg !4821
  %rlock.i117 = bitcast %union.anon.1* %77 to %struct.raw_spinlock*, !dbg !4821
  store i8* null, i8** %__vpp_verify.i119, align 8, !dbg !4697
  %78 = load i8*, i8** %__vpp_verify.i119, align 8, !dbg !4697
  %79 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !4698, !srcloc !3913
  store i64 %79, i64* %pfo_val__.i120, align 8, !dbg !4698
  %80 = load i64, i64* %pfo_val__.i120, align 8, !dbg !4698
  %81 = inttoptr i64 %80 to %struct.task_struct*, !dbg !4698
  store %struct.task_struct* %81, %struct.task_struct** %tmp.i121, align 8, !dbg !4698
  %82 = load %struct.task_struct*, %struct.task_struct** %tmp.i121, align 8, !dbg !4698
  store %struct.task_struct* %82, %struct.task_struct** %pscr_ret__.i118, align 8, !dbg !4695
  %83 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i118, align 8, !dbg !4695
  store %struct.task_struct* %83, %struct.task_struct** %tmp1.i122, align 8, !dbg !4695
  %84 = load %struct.task_struct*, %struct.task_struct** %tmp1.i122, align 8, !dbg !4695
  %signal40 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %84, i32 0, i32 74, !dbg !4822
  %85 = load %struct.signal_struct*, %struct.signal_struct** %signal40, align 64, !dbg !4822
  %tty_old_pgrp41 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %85, i32 0, i32 22, !dbg !4823
  %86 = load %struct.pid*, %struct.pid** %tty_old_pgrp41, align 8, !dbg !4823
  call void @put_pid(%struct.pid* %86) #9, !dbg !4824
  store i8* null, i8** %__vpp_verify.i124, align 8, !dbg !4693
  %87 = load i8*, i8** %__vpp_verify.i124, align 8, !dbg !4693
  %88 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !4694, !srcloc !3913
  store i64 %88, i64* %pfo_val__.i125, align 8, !dbg !4694
  %89 = load i64, i64* %pfo_val__.i125, align 8, !dbg !4694
  %90 = inttoptr i64 %89 to %struct.task_struct*, !dbg !4694
  store %struct.task_struct* %90, %struct.task_struct** %tmp.i126, align 8, !dbg !4694
  %91 = load %struct.task_struct*, %struct.task_struct** %tmp.i126, align 8, !dbg !4694
  store %struct.task_struct* %91, %struct.task_struct** %pscr_ret__.i123, align 8, !dbg !4691
  %92 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i123, align 8, !dbg !4691
  store %struct.task_struct* %92, %struct.task_struct** %tmp1.i127, align 8, !dbg !4691
  %93 = load %struct.task_struct*, %struct.task_struct** %tmp1.i127, align 8, !dbg !4691
  %signal43 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %93, i32 0, i32 74, !dbg !4825
  %94 = load %struct.signal_struct*, %struct.signal_struct** %signal43, align 64, !dbg !4825
  %tty_old_pgrp44 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %94, i32 0, i32 22, !dbg !4826
  store %struct.pid* null, %struct.pid** %tty_old_pgrp44, align 8, !dbg !4827
  store i8* null, i8** %__vpp_verify.i129, align 8, !dbg !4689
  %95 = load i8*, i8** %__vpp_verify.i129, align 8, !dbg !4689
  %96 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !4690, !srcloc !3913
  store i64 %96, i64* %pfo_val__.i130, align 8, !dbg !4690
  %97 = load i64, i64* %pfo_val__.i130, align 8, !dbg !4690
  %98 = inttoptr i64 %97 to %struct.task_struct*, !dbg !4690
  store %struct.task_struct* %98, %struct.task_struct** %tmp.i131, align 8, !dbg !4690
  %99 = load %struct.task_struct*, %struct.task_struct** %tmp.i131, align 8, !dbg !4690
  store %struct.task_struct* %99, %struct.task_struct** %pscr_ret__.i128, align 8, !dbg !4687
  %100 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i128, align 8, !dbg !4687
  store %struct.task_struct* %100, %struct.task_struct** %tmp1.i132, align 8, !dbg !4687
  %101 = load %struct.task_struct*, %struct.task_struct** %tmp1.i132, align 8, !dbg !4687
  %signal46 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %101, i32 0, i32 74, !dbg !4828
  %102 = load %struct.signal_struct*, %struct.signal_struct** %signal46, align 64, !dbg !4828
  %tty47 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %102, i32 0, i32 24, !dbg !4829
  %103 = load %struct.tty_struct*, %struct.tty_struct** %tty47, align 8, !dbg !4829
  %call48 = call %struct.tty_struct* @tty_kref_get(%struct.tty_struct* %103) #9, !dbg !4830
  store %struct.tty_struct* %call48, %struct.tty_struct** %tty, align 8, !dbg !4831
  store i8* null, i8** %__vpp_verify.i134, align 8, !dbg !4685
  %104 = load i8*, i8** %__vpp_verify.i134, align 8, !dbg !4685
  %105 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !4686, !srcloc !3913
  store i64 %105, i64* %pfo_val__.i135, align 8, !dbg !4686
  %106 = load i64, i64* %pfo_val__.i135, align 8, !dbg !4686
  %107 = inttoptr i64 %106 to %struct.task_struct*, !dbg !4686
  store %struct.task_struct* %107, %struct.task_struct** %tmp.i136, align 8, !dbg !4686
  %108 = load %struct.task_struct*, %struct.task_struct** %tmp.i136, align 8, !dbg !4686
  store %struct.task_struct* %108, %struct.task_struct** %pscr_ret__.i133, align 8, !dbg !4683
  %109 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i133, align 8, !dbg !4683
  store %struct.task_struct* %109, %struct.task_struct** %tmp1.i137, align 8, !dbg !4683
  %110 = load %struct.task_struct*, %struct.task_struct** %tmp1.i137, align 8, !dbg !4683
  %sighand50 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %110, i32 0, i32 75, !dbg !4832
  %111 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand50, align 8, !dbg !4832
  %siglock51 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %111, i32 0, i32 0, !dbg !4833
  store %struct.spinlock* %siglock51, %struct.spinlock** %lock.addr.i138, align 8
  call void @arch_local_irq_enable() #8, !dbg !4834
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4835, !srcloc !4216
  %112 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i138, align 8, !dbg !4836
  %113 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %112, i32 0, i32 0, !dbg !4836
  %rlock.i139 = bitcast %union.anon.1* %113 to %struct.raw_spinlock*, !dbg !4836
  %114 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8, !dbg !4837
  %tobool52 = icmp ne %struct.tty_struct* %114, null, !dbg !4837
  br i1 %tobool52, label %if.then53, label %if.end78, !dbg !4838

if.then53:                                        ; preds = %if.end35
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4839, metadata !DIExpression()), !dbg !4840
  %115 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8, !dbg !4841
  call void @tty_lock(%struct.tty_struct* %115) #9, !dbg !4842
  br label %do.body, !dbg !4843

do.body:                                          ; preds = %if.then53
  br label %do.body54, !dbg !4844

do.body54:                                        ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4845, metadata !DIExpression()), !dbg !4847
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4848, metadata !DIExpression()), !dbg !4847
  %cmp55 = icmp eq i64* %__dummy, %__dummy2, !dbg !4847
  %conv56 = zext i1 %cmp55 to i32, !dbg !4847
  store i32 1, i32* %tmp, align 4, !dbg !4847
  %116 = load i32, i32* %tmp, align 4, !dbg !4847
  br label %do.body57, !dbg !4849

do.body57:                                        ; preds = %do.body54
  br label %do.body58, !dbg !4850

do.body58:                                        ; preds = %do.body57
  br label %do.body59, !dbg !4851

do.body59:                                        ; preds = %do.body58
  call void @llvm.dbg.declare(metadata i64* %__dummy60, metadata !4853, metadata !DIExpression()), !dbg !4856
  call void @llvm.dbg.declare(metadata i64* %__dummy261, metadata !4857, metadata !DIExpression()), !dbg !4856
  %cmp62 = icmp eq i64* %__dummy60, %__dummy261, !dbg !4856
  %conv63 = zext i1 %cmp62 to i32, !dbg !4856
  store i32 1, i32* %tmp64, align 4, !dbg !4856
  %117 = load i32, i32* %tmp64, align 4, !dbg !4856
  %call65 = call i64 @arch_local_irq_save() #9, !dbg !4858
  store i64 %call65, i64* %flags, align 8, !dbg !4858
  br label %do.end, !dbg !4858

do.end:                                           ; preds = %do.body59
  br label %do.end66, !dbg !4851

do.end66:                                         ; preds = %do.end
  br label %do.body67, !dbg !4850

do.body67:                                        ; preds = %do.end66
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4859, !srcloc !4860
  br label %do.body68, !dbg !4859

do.body68:                                        ; preds = %do.body67
  %118 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8, !dbg !4861
  %ctrl_lock = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %118, i32 0, i32 13, !dbg !4861
  store %struct.spinlock* %ctrl_lock, %struct.spinlock** %lock.addr.i140, align 8
  %119 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i140, align 8, !dbg !4862
  %120 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %119, i32 0, i32 0, !dbg !4863
  %rlock.i141 = bitcast %union.anon.1* %120 to %struct.raw_spinlock*, !dbg !4863
  br label %do.end70, !dbg !4861

do.end70:                                         ; preds = %do.body68
  br label %do.end71, !dbg !4859

do.end71:                                         ; preds = %do.end70
  br label %do.end72, !dbg !4850

do.end72:                                         ; preds = %do.end71
  br label %do.end73, !dbg !4849

do.end73:                                         ; preds = %do.end72
  br label %do.end74, !dbg !4844

do.end74:                                         ; preds = %do.end73
  %121 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8, !dbg !4864
  %session = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %121, i32 0, i32 20, !dbg !4865
  %122 = load %struct.pid*, %struct.pid** %session, align 8, !dbg !4865
  call void @put_pid(%struct.pid* %122) #9, !dbg !4866
  %123 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8, !dbg !4867
  %pgrp = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %123, i32 0, i32 19, !dbg !4868
  %124 = load %struct.pid*, %struct.pid** %pgrp, align 8, !dbg !4868
  call void @put_pid(%struct.pid* %124) #9, !dbg !4869
  %125 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8, !dbg !4870
  %session75 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %125, i32 0, i32 20, !dbg !4871
  store %struct.pid* null, %struct.pid** %session75, align 8, !dbg !4872
  %126 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8, !dbg !4873
  %pgrp76 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %126, i32 0, i32 19, !dbg !4874
  store %struct.pid* null, %struct.pid** %pgrp76, align 8, !dbg !4875
  %127 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8, !dbg !4876
  %ctrl_lock77 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %127, i32 0, i32 13, !dbg !4877
  %128 = load i64, i64* %flags, align 8, !dbg !4878
  store %struct.spinlock* %ctrl_lock77, %struct.spinlock** %lock.addr.i142, align 8
  store i64 %128, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !178, metadata !3953, metadata !DIExpression()) #5, !dbg !4879
  call void @llvm.dbg.declare(metadata !178, metadata !3957, metadata !DIExpression()) #5, !dbg !4879
  store i32 1, i32* %tmp.i143, align 4, !dbg !4879
  %129 = load i32, i32* %tmp.i143, align 4, !dbg !4879
  call void @llvm.dbg.declare(metadata !178, metadata !3958, metadata !DIExpression()) #5, !dbg !4880
  call void @llvm.dbg.declare(metadata !178, metadata !3964, metadata !DIExpression()) #5, !dbg !4880
  store i32 1, i32* %tmp8.i, align 4, !dbg !4880
  %130 = load i32, i32* %tmp8.i, align 4, !dbg !4880
  %131 = load i64, i64* %flags.addr.i, align 8, !dbg !4881
  call void @arch_local_irq_restore(i64 %131) #8, !dbg !4881
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4882, !srcloc !3968
  %132 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i142, align 8, !dbg !4883
  %133 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %132, i32 0, i32 0, !dbg !4883
  %rlock.i144 = bitcast %union.anon.1* %133 to %struct.raw_spinlock*, !dbg !4883
  %134 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8, !dbg !4884
  call void @tty_unlock(%struct.tty_struct* %134) #9, !dbg !4885
  %135 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8, !dbg !4886
  call void @tty_kref_put(%struct.tty_struct* %135) #9, !dbg !4887
  br label %if.end78, !dbg !4888

if.end78:                                         ; preds = %do.end74, %if.end35
  br label %do.body79, !dbg !4889

do.body79:                                        ; preds = %if.end78
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4890, !srcloc !4892
  br label %do.body80, !dbg !4890

do.body80:                                        ; preds = %do.body79
  br label %do.end81, !dbg !4893

do.end81:                                         ; preds = %do.body80
  br label %do.end82, !dbg !4890

do.end82:                                         ; preds = %do.end81
  store i8* null, i8** %__vpp_verify.i146, align 8, !dbg !4667
  %136 = load i8*, i8** %__vpp_verify.i146, align 8, !dbg !4667
  %137 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !4668, !srcloc !3913
  store i64 %137, i64* %pfo_val__.i147, align 8, !dbg !4668
  %138 = load i64, i64* %pfo_val__.i147, align 8, !dbg !4668
  %139 = inttoptr i64 %138 to %struct.task_struct*, !dbg !4668
  store %struct.task_struct* %139, %struct.task_struct** %tmp.i148, align 8, !dbg !4668
  %140 = load %struct.task_struct*, %struct.task_struct** %tmp.i148, align 8, !dbg !4668
  store %struct.task_struct* %140, %struct.task_struct** %pscr_ret__.i145, align 8, !dbg !4665
  %141 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i145, align 8, !dbg !4665
  store %struct.task_struct* %141, %struct.task_struct** %tmp1.i149, align 8, !dbg !4665
  %142 = load %struct.task_struct*, %struct.task_struct** %tmp1.i149, align 8, !dbg !4665
  %call84 = call %struct.pid* @task_session(%struct.task_struct* %142) #9, !dbg !4895
  call void @session_clear_tty(%struct.pid* %call84) #9, !dbg !4896
  br label %do.body85, !dbg !4897

do.body85:                                        ; preds = %do.end82
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4898, !srcloc !4900
  br label %do.body86, !dbg !4898

do.body86:                                        ; preds = %do.body85
  br label %do.end87, !dbg !4901

do.end87:                                         ; preds = %do.body86
  br label %do.end88, !dbg !4898

do.end88:                                         ; preds = %if.then, %if.end33, %do.end87
  ret void, !dbg !4903
}

; Function Attrs: noredzone
declare dso_local void @tty_vhangup_session(%struct.tty_struct*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.pid* @tty_get_pgrp(%struct.tty_struct* %tty) #0 !dbg !4904 {
entry:
  %lock.addr.i22 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i22, metadata !3870, metadata !DIExpression()), !dbg !4907
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !3878, metadata !DIExpression()), !dbg !4909
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !3880, metadata !DIExpression()), !dbg !4910
  %tty.addr = alloca %struct.tty_struct*, align 8
  %flags = alloca i64, align 8
  %pgrp = alloca %struct.pid*, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4917, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4919, metadata !DIExpression()), !dbg !4920
  call void @llvm.dbg.declare(metadata %struct.pid** %pgrp, metadata !4921, metadata !DIExpression()), !dbg !4922
  br label %do.body, !dbg !4923

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4924

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4925, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4928, metadata !DIExpression()), !dbg !4927
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4927
  %conv = zext i1 %cmp to i32, !dbg !4927
  store i32 1, i32* %tmp, align 4, !dbg !4927
  %0 = load i32, i32* %tmp, align 4, !dbg !4927
  br label %do.body2, !dbg !4929

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4930

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4931

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !4933, metadata !DIExpression()), !dbg !4936
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !4937, metadata !DIExpression()), !dbg !4936
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !4936
  %conv8 = zext i1 %cmp7 to i32, !dbg !4936
  store i32 1, i32* %tmp9, align 4, !dbg !4936
  %1 = load i32, i32* %tmp9, align 4, !dbg !4936
  %call = call i64 @arch_local_irq_save() #9, !dbg !4938
  store i64 %call, i64* %flags, align 8, !dbg !4938
  br label %do.end, !dbg !4938

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !4931

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !4930

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4939, !srcloc !4940
  br label %do.body12, !dbg !4939

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4941
  %ctrl_lock = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %2, i32 0, i32 13, !dbg !4941
  store %struct.spinlock* %ctrl_lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4942
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !4943
  %rlock.i = bitcast %union.anon.1* %4 to %struct.raw_spinlock*, !dbg !4943
  br label %do.end14, !dbg !4941

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !4939

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !4930

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4929

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4924

do.end18:                                         ; preds = %do.end17
  %5 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4944
  %pgrp19 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 19, !dbg !4945
  %6 = load %struct.pid*, %struct.pid** %pgrp19, align 8, !dbg !4945
  %call20 = call %struct.pid* @get_pid(%struct.pid* %6) #9, !dbg !4946
  store %struct.pid* %call20, %struct.pid** %pgrp, align 8, !dbg !4947
  %7 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4948
  %ctrl_lock21 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 13, !dbg !4949
  %8 = load i64, i64* %flags, align 8, !dbg !4950
  store %struct.spinlock* %ctrl_lock21, %struct.spinlock** %lock.addr.i22, align 8
  store i64 %8, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !178, metadata !3953, metadata !DIExpression()) #5, !dbg !4951
  call void @llvm.dbg.declare(metadata !178, metadata !3957, metadata !DIExpression()) #5, !dbg !4951
  store i32 1, i32* %tmp.i, align 4, !dbg !4951
  %9 = load i32, i32* %tmp.i, align 4, !dbg !4951
  call void @llvm.dbg.declare(metadata !178, metadata !3958, metadata !DIExpression()) #5, !dbg !4952
  call void @llvm.dbg.declare(metadata !178, metadata !3964, metadata !DIExpression()) #5, !dbg !4952
  store i32 1, i32* %tmp8.i, align 4, !dbg !4952
  %10 = load i32, i32* %tmp8.i, align 4, !dbg !4952
  %11 = load i64, i64* %flags.addr.i, align 8, !dbg !4953
  call void @arch_local_irq_restore(i64 %11) #8, !dbg !4953
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4954, !srcloc !3968
  %12 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i22, align 8, !dbg !4955
  %13 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %12, i32 0, i32 0, !dbg !4955
  %rlock.i23 = bitcast %union.anon.1* %13 to %struct.raw_spinlock*, !dbg !4955
  %14 = load %struct.pid*, %struct.pid** %pgrp, align 8, !dbg !4956
  ret %struct.pid* %14, !dbg !4957
}

; Function Attrs: noredzone
declare dso_local void @tty_lock(%struct.tty_struct*) #2

; Function Attrs: noredzone
declare dso_local void @tty_unlock(%struct.tty_struct*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pid* @task_session(%struct.task_struct* %task) #0 !dbg !4958 {
entry:
  %task.addr = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %task, %struct.task_struct** %task.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %task.addr, metadata !4959, metadata !DIExpression()), !dbg !4960
  %0 = load %struct.task_struct*, %struct.task_struct** %task.addr, align 8, !dbg !4961
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i32 0, i32 74, !dbg !4962
  %1 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 64, !dbg !4962
  %pids = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %1, i32 0, i32 21, !dbg !4963
  %arrayidx = getelementptr [4 x %struct.pid*], [4 x %struct.pid*]* %pids, i64 0, i64 3, !dbg !4961
  %2 = load %struct.pid*, %struct.pid** %arrayidx, align 8, !dbg !4961
  ret %struct.pid* %2, !dbg !4964
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @no_tty() #0 !dbg !4965 {
entry:
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !3851, metadata !DIExpression()), !dbg !4966
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !3864, metadata !DIExpression()), !dbg !4968
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !3867, metadata !DIExpression()), !dbg !4969
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %tsk = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %tsk, metadata !4970, metadata !DIExpression()), !dbg !4971
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !4968
  %0 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !4968
  %1 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !4969, !srcloc !3913
  store i64 %1, i64* %pfo_val__.i, align 8, !dbg !4969
  %2 = load i64, i64* %pfo_val__.i, align 8, !dbg !4969
  %3 = inttoptr i64 %2 to %struct.task_struct*, !dbg !4969
  store %struct.task_struct* %3, %struct.task_struct** %tmp.i, align 8, !dbg !4969
  %4 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !4969
  store %struct.task_struct* %4, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !4966
  %5 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !4966
  store %struct.task_struct* %5, %struct.task_struct** %tmp1.i, align 8, !dbg !4966
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !4966
  store %struct.task_struct* %6, %struct.task_struct** %tsk, align 8, !dbg !4971
  call void @disassociate_ctty(i32 0) #9, !dbg !4972
  %7 = load %struct.task_struct*, %struct.task_struct** %tsk, align 8, !dbg !4973
  call void @proc_clear_tty(%struct.task_struct* %7) #9, !dbg !4974
  ret void, !dbg !4975
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @tty_jobctrl_ioctl(%struct.tty_struct* %tty, %struct.tty_struct* %real_tty, %struct.file* %file, i32 %cmd, i64 %arg) #0 !dbg !4976 {
entry:
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !3851, metadata !DIExpression()), !dbg !4979
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !3864, metadata !DIExpression()), !dbg !4983
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !3867, metadata !DIExpression()), !dbg !4984
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %retval = alloca i64, align 8
  %tty.addr = alloca %struct.tty_struct*, align 8
  %real_tty.addr = alloca %struct.tty_struct*, align 8
  %file.addr = alloca %struct.file*, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4985, metadata !DIExpression()), !dbg !4986
  store %struct.tty_struct* %real_tty, %struct.tty_struct** %real_tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %real_tty.addr, metadata !4987, metadata !DIExpression()), !dbg !4988
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4989, metadata !DIExpression()), !dbg !4990
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !4991, metadata !DIExpression()), !dbg !4992
  store i64 %arg, i64* %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %arg.addr, metadata !4993, metadata !DIExpression()), !dbg !4994
  call void @llvm.dbg.declare(metadata i8** %p, metadata !4995, metadata !DIExpression()), !dbg !4996
  %0 = load i64, i64* %arg.addr, align 8, !dbg !4997
  %1 = inttoptr i64 %0 to i8*, !dbg !4998
  store i8* %1, i8** %p, align 8, !dbg !4996
  %2 = load i32, i32* %cmd.addr, align 4, !dbg !4999
  switch i32 %2, label %sw.epilog [
    i32 21538, label %sw.bb
    i32 21518, label %sw.bb2
    i32 21519, label %sw.bb5
    i32 21520, label %sw.bb8
    i32 21545, label %sw.bb11
  ], !dbg !5000

sw.bb:                                            ; preds = %entry
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !4983
  %3 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !4983
  %4 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !4984, !srcloc !3913
  store i64 %4, i64* %pfo_val__.i, align 8, !dbg !4984
  %5 = load i64, i64* %pfo_val__.i, align 8, !dbg !4984
  %6 = inttoptr i64 %5 to %struct.task_struct*, !dbg !4984
  store %struct.task_struct* %6, %struct.task_struct** %tmp.i, align 8, !dbg !4984
  %7 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !4984
  store %struct.task_struct* %7, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !4979
  %8 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !4979
  store %struct.task_struct* %8, %struct.task_struct** %tmp1.i, align 8, !dbg !4979
  %9 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !4979
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 74, !dbg !5001
  %10 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 64, !dbg !5001
  %tty1 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %10, i32 0, i32 24, !dbg !5002
  %11 = load %struct.tty_struct*, %struct.tty_struct** %tty1, align 8, !dbg !5002
  %12 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5003
  %cmp = icmp ne %struct.tty_struct* %11, %12, !dbg !5004
  br i1 %cmp, label %if.then, label %if.end, !dbg !5005

if.then:                                          ; preds = %sw.bb
  store i64 -25, i64* %retval, align 8, !dbg !5006
  br label %return, !dbg !5006

if.end:                                           ; preds = %sw.bb
  call void @no_tty() #9, !dbg !5007
  store i64 0, i64* %retval, align 8, !dbg !5008
  br label %return, !dbg !5008

sw.bb2:                                           ; preds = %entry
  %13 = load %struct.tty_struct*, %struct.tty_struct** %real_tty.addr, align 8, !dbg !5009
  %14 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5010
  %15 = load i64, i64* %arg.addr, align 8, !dbg !5011
  %conv = trunc i64 %15 to i32, !dbg !5011
  %call3 = call i32 @tiocsctty(%struct.tty_struct* %13, %struct.file* %14, i32 %conv) #9, !dbg !5012
  %conv4 = sext i32 %call3 to i64, !dbg !5012
  store i64 %conv4, i64* %retval, align 8, !dbg !5013
  br label %return, !dbg !5013

sw.bb5:                                           ; preds = %entry
  %16 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5014
  %17 = load %struct.tty_struct*, %struct.tty_struct** %real_tty.addr, align 8, !dbg !5015
  %18 = load i8*, i8** %p, align 8, !dbg !5016
  %19 = bitcast i8* %18 to i32*, !dbg !5016
  %call6 = call i32 @tiocgpgrp(%struct.tty_struct* %16, %struct.tty_struct* %17, i32* %19) #9, !dbg !5017
  %conv7 = sext i32 %call6 to i64, !dbg !5017
  store i64 %conv7, i64* %retval, align 8, !dbg !5018
  br label %return, !dbg !5018

sw.bb8:                                           ; preds = %entry
  %20 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5019
  %21 = load %struct.tty_struct*, %struct.tty_struct** %real_tty.addr, align 8, !dbg !5020
  %22 = load i8*, i8** %p, align 8, !dbg !5021
  %23 = bitcast i8* %22 to i32*, !dbg !5021
  %call9 = call i32 @tiocspgrp(%struct.tty_struct* %20, %struct.tty_struct* %21, i32* %23) #9, !dbg !5022
  %conv10 = sext i32 %call9 to i64, !dbg !5022
  store i64 %conv10, i64* %retval, align 8, !dbg !5023
  br label %return, !dbg !5023

sw.bb11:                                          ; preds = %entry
  %24 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5024
  %25 = load %struct.tty_struct*, %struct.tty_struct** %real_tty.addr, align 8, !dbg !5025
  %26 = load i8*, i8** %p, align 8, !dbg !5026
  %27 = bitcast i8* %26 to i32*, !dbg !5026
  %call12 = call i32 @tiocgsid(%struct.tty_struct* %24, %struct.tty_struct* %25, i32* %27) #9, !dbg !5027
  %conv13 = sext i32 %call12 to i64, !dbg !5027
  store i64 %conv13, i64* %retval, align 8, !dbg !5028
  br label %return, !dbg !5028

sw.epilog:                                        ; preds = %entry
  store i64 -515, i64* %retval, align 8, !dbg !5029
  br label %return, !dbg !5029

return:                                           ; preds = %sw.epilog, %sw.bb11, %sw.bb8, %sw.bb5, %sw.bb2, %if.end, %if.then
  %28 = load i64, i64* %retval, align 8, !dbg !5030
  ret i64 %28, !dbg !5030
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tiocsctty(%struct.tty_struct* %tty, %struct.file* %file, i32 %arg) #0 !dbg !5031 {
entry:
  %pscr_ret__.i44 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i44, metadata !3851, metadata !DIExpression()), !dbg !5034
  %__vpp_verify.i45 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i45, metadata !3864, metadata !DIExpression()), !dbg !5037
  %pfo_val__.i46 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i46, metadata !3867, metadata !DIExpression()), !dbg !5038
  %tmp.i47 = alloca %struct.task_struct*, align 8
  %tmp1.i48 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i39 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i39, metadata !3851, metadata !DIExpression()), !dbg !5039
  %__vpp_verify.i40 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i40, metadata !3864, metadata !DIExpression()), !dbg !5041
  %pfo_val__.i41 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i41, metadata !3867, metadata !DIExpression()), !dbg !5042
  %tmp.i42 = alloca %struct.task_struct*, align 8
  %tmp1.i43 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i34 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i34, metadata !3851, metadata !DIExpression()), !dbg !5043
  %__vpp_verify.i35 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i35, metadata !3864, metadata !DIExpression()), !dbg !5046
  %pfo_val__.i36 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i36, metadata !3867, metadata !DIExpression()), !dbg !5047
  %tmp.i37 = alloca %struct.task_struct*, align 8
  %tmp1.i38 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !3851, metadata !DIExpression()), !dbg !5048
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !3864, metadata !DIExpression()), !dbg !5050
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !3867, metadata !DIExpression()), !dbg !5051
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %tty.addr = alloca %struct.tty_struct*, align 8
  %file.addr = alloca %struct.file*, align 8
  %arg.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5052, metadata !DIExpression()), !dbg !5053
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !5054, metadata !DIExpression()), !dbg !5055
  store i32 %arg, i32* %arg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %arg.addr, metadata !5056, metadata !DIExpression()), !dbg !5057
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5058, metadata !DIExpression()), !dbg !5059
  store i32 0, i32* %ret, align 4, !dbg !5059
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5060
  call void @tty_lock(%struct.tty_struct* %0) #9, !dbg !5061
  br label %do.body, !dbg !5062

do.body:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5063, !srcloc !5065
  br label %do.body1, !dbg !5063

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5066

do.end:                                           ; preds = %do.body1
  br label %do.end2, !dbg !5063

do.end2:                                          ; preds = %do.end
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !5050
  %1 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !5050
  %2 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !5051, !srcloc !3913
  store i64 %2, i64* %pfo_val__.i, align 8, !dbg !5051
  %3 = load i64, i64* %pfo_val__.i, align 8, !dbg !5051
  %4 = inttoptr i64 %3 to %struct.task_struct*, !dbg !5051
  store %struct.task_struct* %4, %struct.task_struct** %tmp.i, align 8, !dbg !5051
  %5 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !5051
  store %struct.task_struct* %5, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5048
  %6 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5048
  store %struct.task_struct* %6, %struct.task_struct** %tmp1.i, align 8, !dbg !5048
  %7 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !5048
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i32 0, i32 74, !dbg !5068
  %8 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 64, !dbg !5068
  %leader = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %8, i32 0, i32 23, !dbg !5069
  %9 = load i32, i32* %leader, align 8, !dbg !5069
  %tobool = icmp ne i32 %9, 0, !dbg !5070
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5071

land.lhs.true:                                    ; preds = %do.end2
  store i8* null, i8** %__vpp_verify.i35, align 8, !dbg !5046
  %10 = load i8*, i8** %__vpp_verify.i35, align 8, !dbg !5046
  %11 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !5047, !srcloc !3913
  store i64 %11, i64* %pfo_val__.i36, align 8, !dbg !5047
  %12 = load i64, i64* %pfo_val__.i36, align 8, !dbg !5047
  %13 = inttoptr i64 %12 to %struct.task_struct*, !dbg !5047
  store %struct.task_struct* %13, %struct.task_struct** %tmp.i37, align 8, !dbg !5047
  %14 = load %struct.task_struct*, %struct.task_struct** %tmp.i37, align 8, !dbg !5047
  store %struct.task_struct* %14, %struct.task_struct** %pscr_ret__.i34, align 8, !dbg !5043
  %15 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i34, align 8, !dbg !5043
  store %struct.task_struct* %15, %struct.task_struct** %tmp1.i38, align 8, !dbg !5043
  %16 = load %struct.task_struct*, %struct.task_struct** %tmp1.i38, align 8, !dbg !5043
  %call4 = call %struct.pid* @task_session(%struct.task_struct* %16) #9, !dbg !5072
  %17 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5073
  %session = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %17, i32 0, i32 20, !dbg !5074
  %18 = load %struct.pid*, %struct.pid** %session, align 8, !dbg !5074
  %cmp = icmp eq %struct.pid* %call4, %18, !dbg !5075
  br i1 %cmp, label %if.then, label %if.end, !dbg !5076

if.then:                                          ; preds = %land.lhs.true
  br label %unlock, !dbg !5077

if.end:                                           ; preds = %land.lhs.true, %do.end2
  store i8* null, i8** %__vpp_verify.i40, align 8, !dbg !5041
  %19 = load i8*, i8** %__vpp_verify.i40, align 8, !dbg !5041
  %20 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !5042, !srcloc !3913
  store i64 %20, i64* %pfo_val__.i41, align 8, !dbg !5042
  %21 = load i64, i64* %pfo_val__.i41, align 8, !dbg !5042
  %22 = inttoptr i64 %21 to %struct.task_struct*, !dbg !5042
  store %struct.task_struct* %22, %struct.task_struct** %tmp.i42, align 8, !dbg !5042
  %23 = load %struct.task_struct*, %struct.task_struct** %tmp.i42, align 8, !dbg !5042
  store %struct.task_struct* %23, %struct.task_struct** %pscr_ret__.i39, align 8, !dbg !5039
  %24 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i39, align 8, !dbg !5039
  store %struct.task_struct* %24, %struct.task_struct** %tmp1.i43, align 8, !dbg !5039
  %25 = load %struct.task_struct*, %struct.task_struct** %tmp1.i43, align 8, !dbg !5039
  %signal6 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %25, i32 0, i32 74, !dbg !5078
  %26 = load %struct.signal_struct*, %struct.signal_struct** %signal6, align 64, !dbg !5078
  %leader7 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %26, i32 0, i32 23, !dbg !5079
  %27 = load i32, i32* %leader7, align 8, !dbg !5079
  %tobool8 = icmp ne i32 %27, 0, !dbg !5080
  br i1 %tobool8, label %lor.lhs.false, label %if.then13, !dbg !5081

lor.lhs.false:                                    ; preds = %if.end
  store i8* null, i8** %__vpp_verify.i45, align 8, !dbg !5037
  %28 = load i8*, i8** %__vpp_verify.i45, align 8, !dbg !5037
  %29 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !5038, !srcloc !3913
  store i64 %29, i64* %pfo_val__.i46, align 8, !dbg !5038
  %30 = load i64, i64* %pfo_val__.i46, align 8, !dbg !5038
  %31 = inttoptr i64 %30 to %struct.task_struct*, !dbg !5038
  store %struct.task_struct* %31, %struct.task_struct** %tmp.i47, align 8, !dbg !5038
  %32 = load %struct.task_struct*, %struct.task_struct** %tmp.i47, align 8, !dbg !5038
  store %struct.task_struct* %32, %struct.task_struct** %pscr_ret__.i44, align 8, !dbg !5034
  %33 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i44, align 8, !dbg !5034
  store %struct.task_struct* %33, %struct.task_struct** %tmp1.i48, align 8, !dbg !5034
  %34 = load %struct.task_struct*, %struct.task_struct** %tmp1.i48, align 8, !dbg !5034
  %signal10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %34, i32 0, i32 74, !dbg !5082
  %35 = load %struct.signal_struct*, %struct.signal_struct** %signal10, align 64, !dbg !5082
  %tty11 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %35, i32 0, i32 24, !dbg !5083
  %36 = load %struct.tty_struct*, %struct.tty_struct** %tty11, align 8, !dbg !5083
  %tobool12 = icmp ne %struct.tty_struct* %36, null, !dbg !5084
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !5085

if.then13:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -1, i32* %ret, align 4, !dbg !5086
  br label %unlock, !dbg !5088

if.end14:                                         ; preds = %lor.lhs.false
  %37 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5089
  %session15 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %37, i32 0, i32 20, !dbg !5091
  %38 = load %struct.pid*, %struct.pid** %session15, align 8, !dbg !5091
  %tobool16 = icmp ne %struct.pid* %38, null, !dbg !5089
  br i1 %tobool16, label %if.then17, label %if.end24, !dbg !5092

if.then17:                                        ; preds = %if.end14
  %39 = load i32, i32* %arg.addr, align 4, !dbg !5093
  %cmp18 = icmp eq i32 %39, 1, !dbg !5096
  br i1 %cmp18, label %land.lhs.true19, label %if.else, !dbg !5097

land.lhs.true19:                                  ; preds = %if.then17
  %call20 = call zeroext i1 @capable(i32 21) #9, !dbg !5098
  br i1 %call20, label %if.then21, label %if.else, !dbg !5099

if.then21:                                        ; preds = %land.lhs.true19
  %40 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5100
  %session22 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %40, i32 0, i32 20, !dbg !5102
  %41 = load %struct.pid*, %struct.pid** %session22, align 8, !dbg !5102
  call void @session_clear_tty(%struct.pid* %41) #9, !dbg !5103
  br label %if.end23, !dbg !5104

if.else:                                          ; preds = %land.lhs.true19, %if.then17
  store i32 -1, i32* %ret, align 4, !dbg !5105
  br label %unlock, !dbg !5107

if.end23:                                         ; preds = %if.then21
  br label %if.end24, !dbg !5108

if.end24:                                         ; preds = %if.end23, %if.end14
  %42 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5109
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %42, i32 0, i32 8, !dbg !5111
  %43 = load i32, i32* %f_mode, align 4, !dbg !5111
  %and = and i32 %43, 1, !dbg !5112
  %cmp25 = icmp eq i32 %and, 0, !dbg !5113
  br i1 %cmp25, label %land.lhs.true26, label %if.end29, !dbg !5114

land.lhs.true26:                                  ; preds = %if.end24
  %call27 = call zeroext i1 @capable(i32 21) #9, !dbg !5115
  br i1 %call27, label %if.end29, label %if.then28, !dbg !5116

if.then28:                                        ; preds = %land.lhs.true26
  store i32 -1, i32* %ret, align 4, !dbg !5117
  br label %unlock, !dbg !5119

if.end29:                                         ; preds = %land.lhs.true26, %if.end24
  %44 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5120
  call void @proc_set_tty(%struct.tty_struct* %44) #9, !dbg !5121
  br label %unlock, !dbg !5121

unlock:                                           ; preds = %if.end29, %if.then28, %if.else, %if.then13, %if.then
  call void @llvm.dbg.label(metadata !5122), !dbg !5123
  br label %do.body30, !dbg !5124

do.body30:                                        ; preds = %unlock
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5125, !srcloc !5127
  br label %do.body31, !dbg !5125

do.body31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !5128

do.end32:                                         ; preds = %do.body31
  br label %do.end33, !dbg !5125

do.end33:                                         ; preds = %do.end32
  %45 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5130
  call void @tty_unlock(%struct.tty_struct* %45) #9, !dbg !5131
  %46 = load i32, i32* %ret, align 4, !dbg !5132
  ret i32 %46, !dbg !5133
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tiocgpgrp(%struct.tty_struct* %tty, %struct.tty_struct* %real_tty, i32* %p) #0 !dbg !5134 {
entry:
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !3851, metadata !DIExpression()), !dbg !5138
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !3864, metadata !DIExpression()), !dbg !5141
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !3867, metadata !DIExpression()), !dbg !5142
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %retval = alloca i32, align 4
  %tty.addr = alloca %struct.tty_struct*, align 8
  %real_tty.addr = alloca %struct.tty_struct*, align 8
  %p.addr = alloca i32*, align 8
  %pid = alloca %struct.pid*, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca i8*, align 8
  %__val_pu = alloca i32, align 4
  %tmp6 = alloca i64, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5143, metadata !DIExpression()), !dbg !5144
  store %struct.tty_struct* %real_tty, %struct.tty_struct** %real_tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %real_tty.addr, metadata !5145, metadata !DIExpression()), !dbg !5146
  store i32* %p, i32** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr, metadata !5147, metadata !DIExpression()), !dbg !5148
  call void @llvm.dbg.declare(metadata %struct.pid** %pid, metadata !5149, metadata !DIExpression()), !dbg !5150
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5151, metadata !DIExpression()), !dbg !5152
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5153
  %1 = load %struct.tty_struct*, %struct.tty_struct** %real_tty.addr, align 8, !dbg !5154
  %cmp = icmp eq %struct.tty_struct* %0, %1, !dbg !5155
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5156

land.lhs.true:                                    ; preds = %entry
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !5141
  %2 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !5141
  %3 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !5142, !srcloc !3913
  store i64 %3, i64* %pfo_val__.i, align 8, !dbg !5142
  %4 = load i64, i64* %pfo_val__.i, align 8, !dbg !5142
  %5 = inttoptr i64 %4 to %struct.task_struct*, !dbg !5142
  store %struct.task_struct* %5, %struct.task_struct** %tmp.i, align 8, !dbg !5142
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !5142
  store %struct.task_struct* %6, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5138
  %7 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5138
  store %struct.task_struct* %7, %struct.task_struct** %tmp1.i, align 8, !dbg !5138
  %8 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !5138
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 74, !dbg !5157
  %9 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 64, !dbg !5157
  %tty1 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %9, i32 0, i32 24, !dbg !5158
  %10 = load %struct.tty_struct*, %struct.tty_struct** %tty1, align 8, !dbg !5158
  %11 = load %struct.tty_struct*, %struct.tty_struct** %real_tty.addr, align 8, !dbg !5159
  %cmp2 = icmp ne %struct.tty_struct* %10, %11, !dbg !5160
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5161

if.then:                                          ; preds = %land.lhs.true
  store i32 -25, i32* %retval, align 4, !dbg !5162
  br label %return, !dbg !5162

if.end:                                           ; preds = %land.lhs.true, %entry
  %12 = load %struct.tty_struct*, %struct.tty_struct** %real_tty.addr, align 8, !dbg !5163
  %call3 = call %struct.pid* @tty_get_pgrp(%struct.tty_struct* %12) #9, !dbg !5164
  store %struct.pid* %call3, %struct.pid** %pid, align 8, !dbg !5165
  call void @might_fault() #9, !dbg !5166
  call void @llvm.dbg.declare(metadata i32* %__ret_pu, metadata !5168, metadata !DIExpression()), !dbg !5170
  call void @llvm.dbg.declare(metadata i8** %__ptr_pu, metadata !5171, metadata !DIExpression()), !dbg !5170
  call void @llvm.dbg.declare(metadata i32* %__val_pu, metadata !5172, metadata !DIExpression()), !dbg !5170
  %13 = load i32*, i32** %p.addr, align 8, !dbg !5170
  %14 = bitcast i32* %13 to i8*, !dbg !5170
  store i8* %14, i8** %__ptr_pu, align 8, !dbg !5170
  %15 = load %struct.pid*, %struct.pid** %pid, align 8, !dbg !5170
  %call4 = call i32 @pid_vnr(%struct.pid* %15) #9, !dbg !5170
  store i32 %call4, i32* %__val_pu, align 4, !dbg !5170
  %16 = call i64 @llvm.read_register.i64(metadata !3844), !dbg !5170
  %17 = load i8*, i8** %__ptr_pu, align 8, !dbg !5170
  %18 = load i32, i32* %__val_pu, align 4, !dbg !5170
  %19 = call { i8*, i64 } asm sideeffect "call __put_user_${4:P}", "={cx},={rsp},0,{rax},i,1,~{ebx},~{dirflag},~{fpsr},~{flags}"(i8* %17, i32 %18, i64 4, i64 %16) #5, !dbg !5170, !srcloc !5173
  %asmresult = extractvalue { i8*, i64 } %19, 0, !dbg !5170
  %asmresult5 = extractvalue { i8*, i64 } %19, 1, !dbg !5170
  %20 = ptrtoint i8* %asmresult to i64, !dbg !5170
  %21 = trunc i64 %20 to i32, !dbg !5170
  store i32 %21, i32* %__ret_pu, align 4, !dbg !5170
  call void @llvm.write_register.i64(metadata !3844, i64 %asmresult5), !dbg !5170
  %22 = load i32, i32* %__ret_pu, align 4, !dbg !5170
  %conv = sext i32 %22 to i64, !dbg !5170
  store i64 %conv, i64* %tmp6, align 8, !dbg !5170
  %23 = load i64, i64* %tmp6, align 8, !dbg !5170
  store i64 %23, i64* %tmp, align 8, !dbg !5166
  %24 = load i64, i64* %tmp, align 8, !dbg !5166
  %conv7 = trunc i64 %24 to i32, !dbg !5174
  store i32 %conv7, i32* %ret, align 4, !dbg !5175
  %25 = load %struct.pid*, %struct.pid** %pid, align 8, !dbg !5176
  call void @put_pid(%struct.pid* %25) #9, !dbg !5177
  %26 = load i32, i32* %ret, align 4, !dbg !5178
  store i32 %26, i32* %retval, align 4, !dbg !5179
  br label %return, !dbg !5179

return:                                           ; preds = %if.end, %if.then
  %27 = load i32, i32* %retval, align 4, !dbg !5180
  ret i32 %27, !dbg !5180
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tiocspgrp(%struct.tty_struct* %tty, %struct.tty_struct* %real_tty, i32* %p) #0 !dbg !5181 {
entry:
  %lock.addr.i59 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i59, metadata !4141, metadata !DIExpression()), !dbg !5182
  %pscr_ret__.i54 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i54, metadata !3851, metadata !DIExpression()), !dbg !5184
  %__vpp_verify.i55 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i55, metadata !3864, metadata !DIExpression()), !dbg !5187
  %pfo_val__.i56 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i56, metadata !3867, metadata !DIExpression()), !dbg !5188
  %tmp.i57 = alloca %struct.task_struct*, align 8
  %tmp1.i58 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i49 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i49, metadata !3851, metadata !DIExpression()), !dbg !5189
  %__vpp_verify.i50 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i50, metadata !3864, metadata !DIExpression()), !dbg !5192
  %pfo_val__.i51 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i51, metadata !3867, metadata !DIExpression()), !dbg !5193
  %tmp.i52 = alloca %struct.task_struct*, align 8
  %tmp1.i53 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i44 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i44, metadata !3851, metadata !DIExpression()), !dbg !5194
  %__vpp_verify.i45 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i45, metadata !3864, metadata !DIExpression()), !dbg !5196
  %pfo_val__.i46 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i46, metadata !3867, metadata !DIExpression()), !dbg !5197
  %tmp.i47 = alloca %struct.task_struct*, align 8
  %tmp1.i48 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !3851, metadata !DIExpression()), !dbg !5198
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !3864, metadata !DIExpression()), !dbg !5200
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !3867, metadata !DIExpression()), !dbg !5201
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4160, metadata !DIExpression()), !dbg !5202
  %retval = alloca i32, align 4
  %tty.addr = alloca %struct.tty_struct*, align 8
  %real_tty.addr = alloca %struct.tty_struct*, align 8
  %p.addr = alloca i32*, align 8
  %pgrp = alloca %struct.pid*, align 8
  %pgrp_nr = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i32, align 4
  %tmp6 = alloca i64, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5204, metadata !DIExpression()), !dbg !5205
  store %struct.tty_struct* %real_tty, %struct.tty_struct** %real_tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %real_tty.addr, metadata !5206, metadata !DIExpression()), !dbg !5207
  store i32* %p, i32** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr, metadata !5208, metadata !DIExpression()), !dbg !5209
  call void @llvm.dbg.declare(metadata %struct.pid** %pgrp, metadata !5210, metadata !DIExpression()), !dbg !5211
  call void @llvm.dbg.declare(metadata i32* %pgrp_nr, metadata !5212, metadata !DIExpression()), !dbg !5213
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5214, metadata !DIExpression()), !dbg !5215
  %0 = load %struct.tty_struct*, %struct.tty_struct** %real_tty.addr, align 8, !dbg !5216
  %call = call i32 @tty_check_change(%struct.tty_struct* %0) #9, !dbg !5217
  store i32 %call, i32* %retval1, align 4, !dbg !5215
  %1 = load i32, i32* %retval1, align 4, !dbg !5218
  %cmp = icmp eq i32 %1, -5, !dbg !5220
  br i1 %cmp, label %if.then, label %if.end, !dbg !5221

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval, align 4, !dbg !5222
  br label %return, !dbg !5222

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %retval1, align 4, !dbg !5223
  %tobool = icmp ne i32 %2, 0, !dbg !5223
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !5225

if.then2:                                         ; preds = %if.end
  %3 = load i32, i32* %retval1, align 4, !dbg !5226
  store i32 %3, i32* %retval, align 4, !dbg !5227
  br label %return, !dbg !5227

if.end3:                                          ; preds = %if.end
  call void @might_fault() #9, !dbg !5228
  call void @llvm.dbg.declare(metadata i32* %__ret_gu, metadata !5231, metadata !DIExpression()), !dbg !5233
  call void @llvm.dbg.declare(metadata i32* %__val_gu, metadata !5234, metadata !DIExpression()), !dbg !5233
  %4 = call i64 @llvm.read_register.i64(metadata !3844), !dbg !5233
  %5 = load i32*, i32** %p.addr, align 8, !dbg !5233
  %6 = call { i32*, i32, i64 } asm sideeffect "call __get_user_${4:P}", "={ax},={rdx},={rsp},0,i,2,~{dirflag},~{fpsr},~{flags}"(i32* %5, i64 4, i64 %4) #5, !dbg !5233, !srcloc !5235
  %asmresult = extractvalue { i32*, i32, i64 } %6, 0, !dbg !5233
  %asmresult4 = extractvalue { i32*, i32, i64 } %6, 1, !dbg !5233
  %asmresult5 = extractvalue { i32*, i32, i64 } %6, 2, !dbg !5233
  %7 = ptrtoint i32* %asmresult to i64, !dbg !5233
  %8 = trunc i64 %7 to i32, !dbg !5233
  store i32 %8, i32* %__ret_gu, align 4, !dbg !5233
  store i32 %asmresult4, i32* %__val_gu, align 4, !dbg !5233
  call void @llvm.write_register.i64(metadata !3844, i64 %asmresult5), !dbg !5233
  %9 = load i32, i32* %__val_gu, align 4, !dbg !5233
  store i32 %9, i32* %pgrp_nr, align 4, !dbg !5233
  %10 = load i32, i32* %__ret_gu, align 4, !dbg !5233
  %conv = sext i32 %10 to i64, !dbg !5233
  store i64 %conv, i64* %tmp6, align 8, !dbg !5233
  %11 = load i64, i64* %tmp6, align 8, !dbg !5233
  store i64 %11, i64* %tmp, align 8, !dbg !5228
  %12 = load i64, i64* %tmp, align 8, !dbg !5228
  %tobool7 = icmp ne i64 %12, 0, !dbg !5236
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !5237

if.then8:                                         ; preds = %if.end3
  store i32 -14, i32* %retval, align 4, !dbg !5238
  br label %return, !dbg !5238

if.end9:                                          ; preds = %if.end3
  %13 = load i32, i32* %pgrp_nr, align 4, !dbg !5239
  %cmp10 = icmp slt i32 %13, 0, !dbg !5241
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !5242

if.then12:                                        ; preds = %if.end9
  store i32 -22, i32* %retval, align 4, !dbg !5243
  br label %return, !dbg !5243

if.end13:                                         ; preds = %if.end9
  %14 = load %struct.tty_struct*, %struct.tty_struct** %real_tty.addr, align 8, !dbg !5244
  %ctrl_lock = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %14, i32 0, i32 13, !dbg !5245
  store %struct.spinlock* %ctrl_lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #8, !dbg !5246
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5247, !srcloc !4185
  %15 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5248
  %16 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %15, i32 0, i32 0, !dbg !5248
  %rlock.i = bitcast %union.anon.1* %16 to %struct.raw_spinlock*, !dbg !5248
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !5200
  %17 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !5200
  %18 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !5201, !srcloc !3913
  store i64 %18, i64* %pfo_val__.i, align 8, !dbg !5201
  %19 = load i64, i64* %pfo_val__.i, align 8, !dbg !5201
  %20 = inttoptr i64 %19 to %struct.task_struct*, !dbg !5201
  store %struct.task_struct* %20, %struct.task_struct** %tmp.i, align 8, !dbg !5201
  %21 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !5201
  store %struct.task_struct* %21, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5198
  %22 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5198
  store %struct.task_struct* %22, %struct.task_struct** %tmp1.i, align 8, !dbg !5198
  %23 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !5198
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 74, !dbg !5249
  %24 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 64, !dbg !5249
  %tty15 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %24, i32 0, i32 24, !dbg !5250
  %25 = load %struct.tty_struct*, %struct.tty_struct** %tty15, align 8, !dbg !5250
  %tobool16 = icmp ne %struct.tty_struct* %25, null, !dbg !5251
  br i1 %tobool16, label %lor.lhs.false, label %if.then27, !dbg !5252

lor.lhs.false:                                    ; preds = %if.end13
  store i8* null, i8** %__vpp_verify.i45, align 8, !dbg !5196
  %26 = load i8*, i8** %__vpp_verify.i45, align 8, !dbg !5196
  %27 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !5197, !srcloc !3913
  store i64 %27, i64* %pfo_val__.i46, align 8, !dbg !5197
  %28 = load i64, i64* %pfo_val__.i46, align 8, !dbg !5197
  %29 = inttoptr i64 %28 to %struct.task_struct*, !dbg !5197
  store %struct.task_struct* %29, %struct.task_struct** %tmp.i47, align 8, !dbg !5197
  %30 = load %struct.task_struct*, %struct.task_struct** %tmp.i47, align 8, !dbg !5197
  store %struct.task_struct* %30, %struct.task_struct** %pscr_ret__.i44, align 8, !dbg !5194
  %31 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i44, align 8, !dbg !5194
  store %struct.task_struct* %31, %struct.task_struct** %tmp1.i48, align 8, !dbg !5194
  %32 = load %struct.task_struct*, %struct.task_struct** %tmp1.i48, align 8, !dbg !5194
  %signal18 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %32, i32 0, i32 74, !dbg !5253
  %33 = load %struct.signal_struct*, %struct.signal_struct** %signal18, align 64, !dbg !5253
  %tty19 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %33, i32 0, i32 24, !dbg !5254
  %34 = load %struct.tty_struct*, %struct.tty_struct** %tty19, align 8, !dbg !5254
  %35 = load %struct.tty_struct*, %struct.tty_struct** %real_tty.addr, align 8, !dbg !5255
  %cmp20 = icmp ne %struct.tty_struct* %34, %35, !dbg !5256
  br i1 %cmp20, label %if.then27, label %lor.lhs.false22, !dbg !5257

lor.lhs.false22:                                  ; preds = %lor.lhs.false
  %36 = load %struct.tty_struct*, %struct.tty_struct** %real_tty.addr, align 8, !dbg !5258
  %session = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %36, i32 0, i32 20, !dbg !5259
  %37 = load %struct.pid*, %struct.pid** %session, align 8, !dbg !5259
  store i8* null, i8** %__vpp_verify.i50, align 8, !dbg !5192
  %38 = load i8*, i8** %__vpp_verify.i50, align 8, !dbg !5192
  %39 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !5193, !srcloc !3913
  store i64 %39, i64* %pfo_val__.i51, align 8, !dbg !5193
  %40 = load i64, i64* %pfo_val__.i51, align 8, !dbg !5193
  %41 = inttoptr i64 %40 to %struct.task_struct*, !dbg !5193
  store %struct.task_struct* %41, %struct.task_struct** %tmp.i52, align 8, !dbg !5193
  %42 = load %struct.task_struct*, %struct.task_struct** %tmp.i52, align 8, !dbg !5193
  store %struct.task_struct* %42, %struct.task_struct** %pscr_ret__.i49, align 8, !dbg !5189
  %43 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i49, align 8, !dbg !5189
  store %struct.task_struct* %43, %struct.task_struct** %tmp1.i53, align 8, !dbg !5189
  %44 = load %struct.task_struct*, %struct.task_struct** %tmp1.i53, align 8, !dbg !5189
  %call24 = call %struct.pid* @task_session(%struct.task_struct* %44) #9, !dbg !5260
  %cmp25 = icmp ne %struct.pid* %37, %call24, !dbg !5261
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !5262

if.then27:                                        ; preds = %lor.lhs.false22, %lor.lhs.false, %if.end13
  store i32 -25, i32* %retval1, align 4, !dbg !5263
  br label %out_unlock_ctrl, !dbg !5265

if.end28:                                         ; preds = %lor.lhs.false22
  call void @__rcu_read_lock() #8, !dbg !5266
  %45 = load i32, i32* %pgrp_nr, align 4, !dbg !5268
  %call29 = call %struct.pid* @find_vpid(i32 %45) #9, !dbg !5269
  store %struct.pid* %call29, %struct.pid** %pgrp, align 8, !dbg !5270
  store i32 -3, i32* %retval1, align 4, !dbg !5271
  %46 = load %struct.pid*, %struct.pid** %pgrp, align 8, !dbg !5272
  %tobool30 = icmp ne %struct.pid* %46, null, !dbg !5272
  br i1 %tobool30, label %if.end32, label %if.then31, !dbg !5274

if.then31:                                        ; preds = %if.end28
  br label %out_unlock, !dbg !5275

if.end32:                                         ; preds = %if.end28
  store i32 -1, i32* %retval1, align 4, !dbg !5276
  %47 = load %struct.pid*, %struct.pid** %pgrp, align 8, !dbg !5277
  %call33 = call %struct.pid* @session_of_pgrp(%struct.pid* %47) #9, !dbg !5278
  store i8* null, i8** %__vpp_verify.i55, align 8, !dbg !5187
  %48 = load i8*, i8** %__vpp_verify.i55, align 8, !dbg !5187
  %49 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !5188, !srcloc !3913
  store i64 %49, i64* %pfo_val__.i56, align 8, !dbg !5188
  %50 = load i64, i64* %pfo_val__.i56, align 8, !dbg !5188
  %51 = inttoptr i64 %50 to %struct.task_struct*, !dbg !5188
  store %struct.task_struct* %51, %struct.task_struct** %tmp.i57, align 8, !dbg !5188
  %52 = load %struct.task_struct*, %struct.task_struct** %tmp.i57, align 8, !dbg !5188
  store %struct.task_struct* %52, %struct.task_struct** %pscr_ret__.i54, align 8, !dbg !5184
  %53 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i54, align 8, !dbg !5184
  store %struct.task_struct* %53, %struct.task_struct** %tmp1.i58, align 8, !dbg !5184
  %54 = load %struct.task_struct*, %struct.task_struct** %tmp1.i58, align 8, !dbg !5184
  %call35 = call %struct.pid* @task_session(%struct.task_struct* %54) #9, !dbg !5279
  %cmp36 = icmp ne %struct.pid* %call33, %call35, !dbg !5280
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !5281

if.then38:                                        ; preds = %if.end32
  br label %out_unlock, !dbg !5282

if.end39:                                         ; preds = %if.end32
  store i32 0, i32* %retval1, align 4, !dbg !5283
  %55 = load %struct.tty_struct*, %struct.tty_struct** %real_tty.addr, align 8, !dbg !5284
  %pgrp40 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %55, i32 0, i32 19, !dbg !5285
  %56 = load %struct.pid*, %struct.pid** %pgrp40, align 8, !dbg !5285
  call void @put_pid(%struct.pid* %56) #9, !dbg !5286
  %57 = load %struct.pid*, %struct.pid** %pgrp, align 8, !dbg !5287
  %call41 = call %struct.pid* @get_pid(%struct.pid* %57) #9, !dbg !5288
  %58 = load %struct.tty_struct*, %struct.tty_struct** %real_tty.addr, align 8, !dbg !5289
  %pgrp42 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %58, i32 0, i32 19, !dbg !5290
  store %struct.pid* %call41, %struct.pid** %pgrp42, align 8, !dbg !5291
  br label %out_unlock, !dbg !5289

out_unlock:                                       ; preds = %if.end39, %if.then38, %if.then31
  call void @llvm.dbg.label(metadata !5292), !dbg !5293
  call void @rcu_read_unlock() #9, !dbg !5294
  br label %out_unlock_ctrl, !dbg !5294

out_unlock_ctrl:                                  ; preds = %out_unlock, %if.then27
  call void @llvm.dbg.label(metadata !5295), !dbg !5296
  %59 = load %struct.tty_struct*, %struct.tty_struct** %real_tty.addr, align 8, !dbg !5297
  %ctrl_lock43 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %59, i32 0, i32 13, !dbg !5298
  store %struct.spinlock* %ctrl_lock43, %struct.spinlock** %lock.addr.i59, align 8
  call void @arch_local_irq_enable() #8, !dbg !5299
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5300, !srcloc !4216
  %60 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i59, align 8, !dbg !5301
  %61 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %60, i32 0, i32 0, !dbg !5301
  %rlock.i60 = bitcast %union.anon.1* %61 to %struct.raw_spinlock*, !dbg !5301
  %62 = load i32, i32* %retval1, align 4, !dbg !5302
  store i32 %62, i32* %retval, align 4, !dbg !5303
  br label %return, !dbg !5303

return:                                           ; preds = %out_unlock_ctrl, %if.then12, %if.then8, %if.then2, %if.then
  %63 = load i32, i32* %retval, align 4, !dbg !5304
  ret i32 %63, !dbg !5304
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tiocgsid(%struct.tty_struct* %tty, %struct.tty_struct* %real_tty, i32* %p) #0 !dbg !5305 {
entry:
  %lock.addr.i37 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i37, metadata !3870, metadata !DIExpression()), !dbg !5306
  %flags.addr.i38 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i38, metadata !3878, metadata !DIExpression()), !dbg !5308
  %tmp.i39 = alloca i32, align 4
  %tmp8.i40 = alloca i32, align 4
  %lock.addr.i34 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i34, metadata !3870, metadata !DIExpression()), !dbg !5309
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !3878, metadata !DIExpression()), !dbg !5311
  %tmp.i35 = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !3880, metadata !DIExpression()), !dbg !5312
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !3851, metadata !DIExpression()), !dbg !5319
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !3864, metadata !DIExpression()), !dbg !5322
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !3867, metadata !DIExpression()), !dbg !5323
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %retval = alloca i32, align 4
  %tty.addr = alloca %struct.tty_struct*, align 8
  %real_tty.addr = alloca %struct.tty_struct*, align 8
  %p.addr = alloca i32*, align 8
  %flags = alloca i64, align 8
  %sid = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy8 = alloca i64, align 8
  %__dummy29 = alloca i64, align 8
  %tmp12 = alloca i32, align 4
  %tmp28 = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca i8*, align 8
  %__val_pu = alloca i32, align 4
  %tmp30 = alloca i64, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5324, metadata !DIExpression()), !dbg !5325
  store %struct.tty_struct* %real_tty, %struct.tty_struct** %real_tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %real_tty.addr, metadata !5326, metadata !DIExpression()), !dbg !5327
  store i32* %p, i32** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr, metadata !5328, metadata !DIExpression()), !dbg !5329
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5330, metadata !DIExpression()), !dbg !5331
  call void @llvm.dbg.declare(metadata i32* %sid, metadata !5332, metadata !DIExpression()), !dbg !5333
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5334
  %1 = load %struct.tty_struct*, %struct.tty_struct** %real_tty.addr, align 8, !dbg !5335
  %cmp = icmp eq %struct.tty_struct* %0, %1, !dbg !5336
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5337

land.lhs.true:                                    ; preds = %entry
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !5322
  %2 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !5322
  %3 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !5323, !srcloc !3913
  store i64 %3, i64* %pfo_val__.i, align 8, !dbg !5323
  %4 = load i64, i64* %pfo_val__.i, align 8, !dbg !5323
  %5 = inttoptr i64 %4 to %struct.task_struct*, !dbg !5323
  store %struct.task_struct* %5, %struct.task_struct** %tmp.i, align 8, !dbg !5323
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !5323
  store %struct.task_struct* %6, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5319
  %7 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5319
  store %struct.task_struct* %7, %struct.task_struct** %tmp1.i, align 8, !dbg !5319
  %8 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !5319
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 74, !dbg !5338
  %9 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 64, !dbg !5338
  %tty1 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %9, i32 0, i32 24, !dbg !5339
  %10 = load %struct.tty_struct*, %struct.tty_struct** %tty1, align 8, !dbg !5339
  %11 = load %struct.tty_struct*, %struct.tty_struct** %real_tty.addr, align 8, !dbg !5340
  %cmp2 = icmp ne %struct.tty_struct* %10, %11, !dbg !5341
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5342

if.then:                                          ; preds = %land.lhs.true
  store i32 -25, i32* %retval, align 4, !dbg !5343
  br label %return, !dbg !5343

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %do.body, !dbg !5344

do.body:                                          ; preds = %if.end
  br label %do.body3, !dbg !5345

do.body3:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5346, metadata !DIExpression()), !dbg !5348
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5349, metadata !DIExpression()), !dbg !5348
  %cmp4 = icmp eq i64* %__dummy, %__dummy2, !dbg !5348
  %conv = zext i1 %cmp4 to i32, !dbg !5348
  store i32 1, i32* %tmp, align 4, !dbg !5348
  %12 = load i32, i32* %tmp, align 4, !dbg !5348
  br label %do.body5, !dbg !5350

do.body5:                                         ; preds = %do.body3
  br label %do.body6, !dbg !5351

do.body6:                                         ; preds = %do.body5
  br label %do.body7, !dbg !5352

do.body7:                                         ; preds = %do.body6
  call void @llvm.dbg.declare(metadata i64* %__dummy8, metadata !5354, metadata !DIExpression()), !dbg !5357
  call void @llvm.dbg.declare(metadata i64* %__dummy29, metadata !5358, metadata !DIExpression()), !dbg !5357
  %cmp10 = icmp eq i64* %__dummy8, %__dummy29, !dbg !5357
  %conv11 = zext i1 %cmp10 to i32, !dbg !5357
  store i32 1, i32* %tmp12, align 4, !dbg !5357
  %13 = load i32, i32* %tmp12, align 4, !dbg !5357
  %call13 = call i64 @arch_local_irq_save() #9, !dbg !5359
  store i64 %call13, i64* %flags, align 8, !dbg !5359
  br label %do.end, !dbg !5359

do.end:                                           ; preds = %do.body7
  br label %do.end14, !dbg !5352

do.end14:                                         ; preds = %do.end
  br label %do.body15, !dbg !5351

do.body15:                                        ; preds = %do.end14
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5360, !srcloc !5361
  br label %do.body16, !dbg !5360

do.body16:                                        ; preds = %do.body15
  %14 = load %struct.tty_struct*, %struct.tty_struct** %real_tty.addr, align 8, !dbg !5362
  %ctrl_lock = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %14, i32 0, i32 13, !dbg !5362
  store %struct.spinlock* %ctrl_lock, %struct.spinlock** %lock.addr.i, align 8
  %15 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5363
  %16 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %15, i32 0, i32 0, !dbg !5364
  %rlock.i = bitcast %union.anon.1* %16 to %struct.raw_spinlock*, !dbg !5364
  br label %do.end18, !dbg !5362

do.end18:                                         ; preds = %do.body16
  br label %do.end19, !dbg !5360

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !5351

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !5350

do.end21:                                         ; preds = %do.end20
  br label %do.end22, !dbg !5345

do.end22:                                         ; preds = %do.end21
  %17 = load %struct.tty_struct*, %struct.tty_struct** %real_tty.addr, align 8, !dbg !5365
  %session = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %17, i32 0, i32 20, !dbg !5367
  %18 = load %struct.pid*, %struct.pid** %session, align 8, !dbg !5367
  %tobool = icmp ne %struct.pid* %18, null, !dbg !5365
  br i1 %tobool, label %if.end24, label %if.then23, !dbg !5368

if.then23:                                        ; preds = %do.end22
  br label %err, !dbg !5369

if.end24:                                         ; preds = %do.end22
  %19 = load %struct.tty_struct*, %struct.tty_struct** %real_tty.addr, align 8, !dbg !5370
  %session25 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %19, i32 0, i32 20, !dbg !5371
  %20 = load %struct.pid*, %struct.pid** %session25, align 8, !dbg !5371
  %call26 = call i32 @pid_vnr(%struct.pid* %20) #9, !dbg !5372
  store i32 %call26, i32* %sid, align 4, !dbg !5373
  %21 = load %struct.tty_struct*, %struct.tty_struct** %real_tty.addr, align 8, !dbg !5374
  %ctrl_lock27 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %21, i32 0, i32 13, !dbg !5375
  %22 = load i64, i64* %flags, align 8, !dbg !5376
  store %struct.spinlock* %ctrl_lock27, %struct.spinlock** %lock.addr.i37, align 8
  store i64 %22, i64* %flags.addr.i38, align 8
  call void @llvm.dbg.declare(metadata !178, metadata !3953, metadata !DIExpression()) #5, !dbg !5377
  call void @llvm.dbg.declare(metadata !178, metadata !3957, metadata !DIExpression()) #5, !dbg !5377
  store i32 1, i32* %tmp.i39, align 4, !dbg !5377
  %23 = load i32, i32* %tmp.i39, align 4, !dbg !5377
  call void @llvm.dbg.declare(metadata !178, metadata !3958, metadata !DIExpression()) #5, !dbg !5378
  call void @llvm.dbg.declare(metadata !178, metadata !3964, metadata !DIExpression()) #5, !dbg !5378
  store i32 1, i32* %tmp8.i40, align 4, !dbg !5378
  %24 = load i32, i32* %tmp8.i40, align 4, !dbg !5378
  %25 = load i64, i64* %flags.addr.i38, align 8, !dbg !5379
  call void @arch_local_irq_restore(i64 %25) #8, !dbg !5379
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5380, !srcloc !3968
  %26 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i37, align 8, !dbg !5381
  %27 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %26, i32 0, i32 0, !dbg !5381
  %rlock.i41 = bitcast %union.anon.1* %27 to %struct.raw_spinlock*, !dbg !5381
  call void @might_fault() #9, !dbg !5382
  call void @llvm.dbg.declare(metadata i32* %__ret_pu, metadata !5384, metadata !DIExpression()), !dbg !5386
  call void @llvm.dbg.declare(metadata i8** %__ptr_pu, metadata !5387, metadata !DIExpression()), !dbg !5386
  call void @llvm.dbg.declare(metadata i32* %__val_pu, metadata !5388, metadata !DIExpression()), !dbg !5386
  %28 = load i32*, i32** %p.addr, align 8, !dbg !5386
  %29 = bitcast i32* %28 to i8*, !dbg !5386
  store i8* %29, i8** %__ptr_pu, align 8, !dbg !5386
  %30 = load i32, i32* %sid, align 4, !dbg !5386
  store i32 %30, i32* %__val_pu, align 4, !dbg !5386
  %31 = call i64 @llvm.read_register.i64(metadata !3844), !dbg !5386
  %32 = load i8*, i8** %__ptr_pu, align 8, !dbg !5386
  %33 = load i32, i32* %__val_pu, align 4, !dbg !5386
  %34 = call { i8*, i64 } asm sideeffect "call __put_user_${4:P}", "={cx},={rsp},0,{rax},i,1,~{ebx},~{dirflag},~{fpsr},~{flags}"(i8* %32, i32 %33, i64 4, i64 %31) #5, !dbg !5386, !srcloc !5389
  %asmresult = extractvalue { i8*, i64 } %34, 0, !dbg !5386
  %asmresult29 = extractvalue { i8*, i64 } %34, 1, !dbg !5386
  %35 = ptrtoint i8* %asmresult to i64, !dbg !5386
  %36 = trunc i64 %35 to i32, !dbg !5386
  store i32 %36, i32* %__ret_pu, align 4, !dbg !5386
  call void @llvm.write_register.i64(metadata !3844, i64 %asmresult29), !dbg !5386
  %37 = load i32, i32* %__ret_pu, align 4, !dbg !5386
  %conv31 = sext i32 %37 to i64, !dbg !5386
  store i64 %conv31, i64* %tmp30, align 8, !dbg !5386
  %38 = load i64, i64* %tmp30, align 8, !dbg !5386
  store i64 %38, i64* %tmp28, align 8, !dbg !5382
  %39 = load i64, i64* %tmp28, align 8, !dbg !5382
  %conv32 = trunc i64 %39 to i32, !dbg !5390
  store i32 %conv32, i32* %retval, align 4, !dbg !5391
  br label %return, !dbg !5391

err:                                              ; preds = %if.then23
  call void @llvm.dbg.label(metadata !5392), !dbg !5393
  %40 = load %struct.tty_struct*, %struct.tty_struct** %real_tty.addr, align 8, !dbg !5394
  %ctrl_lock33 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %40, i32 0, i32 13, !dbg !5395
  %41 = load i64, i64* %flags, align 8, !dbg !5396
  store %struct.spinlock* %ctrl_lock33, %struct.spinlock** %lock.addr.i34, align 8
  store i64 %41, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !178, metadata !3953, metadata !DIExpression()) #5, !dbg !5397
  call void @llvm.dbg.declare(metadata !178, metadata !3957, metadata !DIExpression()) #5, !dbg !5397
  store i32 1, i32* %tmp.i35, align 4, !dbg !5397
  %42 = load i32, i32* %tmp.i35, align 4, !dbg !5397
  call void @llvm.dbg.declare(metadata !178, metadata !3958, metadata !DIExpression()) #5, !dbg !5398
  call void @llvm.dbg.declare(metadata !178, metadata !3964, metadata !DIExpression()) #5, !dbg !5398
  store i32 1, i32* %tmp8.i, align 4, !dbg !5398
  %43 = load i32, i32* %tmp8.i, align 4, !dbg !5398
  %44 = load i64, i64* %flags.addr.i, align 8, !dbg !5399
  call void @arch_local_irq_restore(i64 %44) #8, !dbg !5399
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5400, !srcloc !3968
  %45 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i34, align 8, !dbg !5401
  %46 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %45, i32 0, i32 0, !dbg !5401
  %rlock.i36 = bitcast %union.anon.1* %46 to %struct.raw_spinlock*, !dbg !5401
  store i32 -25, i32* %retval, align 4, !dbg !5402
  br label %return, !dbg !5402

return:                                           ; preds = %err, %if.end24, %if.then
  %47 = load i32, i32* %retval, align 4, !dbg !5403
  ret i32 %47, !dbg !5403
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__rcu_read_lock() #0 !dbg !5404 {
entry:
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5405, !srcloc !5406
  ret void, !dbg !5407
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !5408 {
entry:
  %__ret = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  %__mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5409, metadata !DIExpression()), !dbg !5411
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5412, metadata !DIExpression()), !dbg !5411
  %0 = load i64, i64* %__edi, align 8, !dbg !5411
  store i64 %0, i64* %__edi, align 8, !dbg !5411
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5413, metadata !DIExpression()), !dbg !5411
  %1 = load i64, i64* %__esi, align 8, !dbg !5411
  store i64 %1, i64* %__esi, align 8, !dbg !5411
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5414, metadata !DIExpression()), !dbg !5411
  %2 = load i64, i64* %__edx, align 8, !dbg !5411
  store i64 %2, i64* %__edx, align 8, !dbg !5411
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5415, metadata !DIExpression()), !dbg !5411
  %3 = load i64, i64* %__ecx, align 8, !dbg !5411
  store i64 %3, i64* %__ecx, align 8, !dbg !5411
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5416, metadata !DIExpression()), !dbg !5411
  %4 = load i64, i64* %__eax, align 8, !dbg !5411
  store i64 %4, i64* %__eax, align 8, !dbg !5411
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !5411
  %6 = call i64 @llvm.read_register.i64(metadata !3844), !dbg !5417
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #5, !dbg !5417, !srcloc !5420
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5417
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5417
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5417
  call void @llvm.write_register.i64(metadata !3844, i64 %asmresult1), !dbg !5417
  %8 = load i64, i64* %__eax, align 8, !dbg !5417
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !5421, metadata !DIExpression()), !dbg !5423
  store i64 -1, i64* %__mask, align 8, !dbg !5423
  %9 = load i64, i64* %__mask, align 8, !dbg !5423
  store i64 %9, i64* %tmp, align 8, !dbg !5423
  %10 = load i64, i64* %tmp, align 8, !dbg !5423
  %and = and i64 %8, %10, !dbg !5417
  store i64 %and, i64* %__ret, align 8, !dbg !5417
  %11 = load i64, i64* %__ret, align 8, !dbg !5411
  store i64 %11, i64* %tmp2, align 8, !dbg !5424
  %12 = load i64, i64* %tmp2, align 8, !dbg !5411
  ret i64 %12, !dbg !5425
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !5426 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5427, metadata !DIExpression()), !dbg !5429
  %0 = load i64, i64* %__edi, align 8, !dbg !5429
  store i64 %0, i64* %__edi, align 8, !dbg !5429
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5430, metadata !DIExpression()), !dbg !5429
  %1 = load i64, i64* %__esi, align 8, !dbg !5429
  store i64 %1, i64* %__esi, align 8, !dbg !5429
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5431, metadata !DIExpression()), !dbg !5429
  %2 = load i64, i64* %__edx, align 8, !dbg !5429
  store i64 %2, i64* %__edx, align 8, !dbg !5429
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5432, metadata !DIExpression()), !dbg !5429
  %3 = load i64, i64* %__ecx, align 8, !dbg !5429
  store i64 %3, i64* %__ecx, align 8, !dbg !5429
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5433, metadata !DIExpression()), !dbg !5429
  %4 = load i64, i64* %__eax, align 8, !dbg !5429
  store i64 %4, i64* %__eax, align 8, !dbg !5429
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !5429
  %6 = call i64 @llvm.read_register.i64(metadata !3844), !dbg !5429
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #5, !dbg !5429, !srcloc !5434
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5429
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5429
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5429
  call void @llvm.write_register.i64(metadata !3844, i64 %asmresult1), !dbg !5429
  ret void, !dbg !5435
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !5436 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !5439, metadata !DIExpression()), !dbg !5440
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5441, metadata !DIExpression()), !dbg !5443
  %0 = load i64, i64* %__edi, align 8, !dbg !5443
  store i64 %0, i64* %__edi, align 8, !dbg !5443
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5444, metadata !DIExpression()), !dbg !5443
  %1 = load i64, i64* %__esi, align 8, !dbg !5443
  store i64 %1, i64* %__esi, align 8, !dbg !5443
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5445, metadata !DIExpression()), !dbg !5443
  %2 = load i64, i64* %__edx, align 8, !dbg !5443
  store i64 %2, i64* %__edx, align 8, !dbg !5443
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5446, metadata !DIExpression()), !dbg !5443
  %3 = load i64, i64* %__ecx, align 8, !dbg !5443
  store i64 %3, i64* %__ecx, align 8, !dbg !5443
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5447, metadata !DIExpression()), !dbg !5443
  %4 = load i64, i64* %__eax, align 8, !dbg !5443
  store i64 %4, i64* %__eax, align 8, !dbg !5443
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !5443
  %6 = call i64 @llvm.read_register.i64(metadata !3844), !dbg !5443
  %7 = load i64, i64* %f.addr, align 8, !dbg !5443
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #5, !dbg !5443, !srcloc !5448
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !5443
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !5443
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5443
  call void @llvm.write_register.i64(metadata !3844, i64 %asmresult1), !dbg !5443
  ret void, !dbg !5449
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sigismember(%struct.sigset_t* %set, i32 %_sig) #0 !dbg !5450 {
entry:
  %set.addr = alloca %struct.sigset_t*, align 8
  %_sig.addr = alloca i32, align 4
  %sig = alloca i64, align 8
  store %struct.sigset_t* %set, %struct.sigset_t** %set.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sigset_t** %set.addr, metadata !5454, metadata !DIExpression()), !dbg !5455
  store i32 %_sig, i32* %_sig.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %_sig.addr, metadata !5456, metadata !DIExpression()), !dbg !5457
  call void @llvm.dbg.declare(metadata i64* %sig, metadata !5458, metadata !DIExpression()), !dbg !5459
  %0 = load i32, i32* %_sig.addr, align 4, !dbg !5460
  %sub = sub i32 %0, 1, !dbg !5461
  %conv = sext i32 %sub to i64, !dbg !5460
  store i64 %conv, i64* %sig, align 8, !dbg !5459
  %1 = load %struct.sigset_t*, %struct.sigset_t** %set.addr, align 8, !dbg !5462
  %sig1 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %1, i32 0, i32 0, !dbg !5464
  %arrayidx = getelementptr [1 x i64], [1 x i64]* %sig1, i64 0, i64 0, !dbg !5462
  %2 = load i64, i64* %arrayidx, align 8, !dbg !5462
  %3 = load i64, i64* %sig, align 8, !dbg !5465
  %shr = lshr i64 %2, %3, !dbg !5466
  %and = and i64 1, %shr, !dbg !5467
  %conv2 = trunc i64 %and to i32, !dbg !5468
  ret i32 %conv2, !dbg !5469
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #0 !dbg !5470 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5476, metadata !DIExpression()), !dbg !5479
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5481, metadata !DIExpression()), !dbg !5482
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5483, metadata !DIExpression()), !dbg !5491
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5493, metadata !DIExpression()), !dbg !5494
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5495, metadata !DIExpression()), !dbg !5496
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5497, metadata !DIExpression()), !dbg !5498
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5499
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5500
  %div = sdiv i64 %1, 64, !dbg !5500
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5501
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5499
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5502
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5503
  %conv.i = trunc i64 %4 to i32, !dbg !5503
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #8, !dbg !5504
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5505
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5505
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #8, !dbg !5505
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5506
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5507
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !5508
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #5, !dbg !5510
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !5511

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !5512
  %12 = bitcast i64* %11 to i8*, !dbg !5512
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5512
  %shr.i = ashr i64 %13, 3, !dbg !5512
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !5512
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !5514
  %and.i = and i64 %14, 7, !dbg !5514
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !5514
  %shl.i = shl i32 1, %sh_prom.i, !dbg !5514
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #5, !dbg !5515, !srcloc !5516
  br label %arch_set_bit.exit, !dbg !5517

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !5518
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !5520
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #5, !dbg !5521, !srcloc !5522
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !5523
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !5524 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5528, metadata !DIExpression()), !dbg !5529
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5530, metadata !DIExpression()), !dbg !5531
  ret i1 true, !dbg !5532
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5533 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5537, metadata !DIExpression()), !dbg !5538
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5539, metadata !DIExpression()), !dbg !5540
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5541, metadata !DIExpression()), !dbg !5542
  ret void, !dbg !5543
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__rcu_read_unlock() #0 !dbg !5544 {
entry:
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5545, !srcloc !5546
  br label %do.body, !dbg !5547

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5548

do.end:                                           ; preds = %do.body
  ret void, !dbg !5550
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_enable() #0 !dbg !5551 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5552, metadata !DIExpression()), !dbg !5554
  %0 = load i64, i64* %__edi, align 8, !dbg !5554
  store i64 %0, i64* %__edi, align 8, !dbg !5554
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5555, metadata !DIExpression()), !dbg !5554
  %1 = load i64, i64* %__esi, align 8, !dbg !5554
  store i64 %1, i64* %__esi, align 8, !dbg !5554
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5556, metadata !DIExpression()), !dbg !5554
  %2 = load i64, i64* %__edx, align 8, !dbg !5554
  store i64 %2, i64* %__edx, align 8, !dbg !5554
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5557, metadata !DIExpression()), !dbg !5554
  %3 = load i64, i64* %__ecx, align 8, !dbg !5554
  store i64 %3, i64* %__ecx, align 8, !dbg !5554
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5558, metadata !DIExpression()), !dbg !5554
  %4 = load i64, i64* %__eax, align 8, !dbg !5554
  store i64 %4, i64* %__eax, align 8, !dbg !5554
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), align 8, !dbg !5554
  %6 = call i64 @llvm.read_register.i64(metadata !3844), !dbg !5554
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 39, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), i32 1, i64 %6) #5, !dbg !5554, !srcloc !5559
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5554
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5554
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5554
  call void @llvm.write_register.i64(metadata !3844, i64 %asmresult1), !dbg !5554
  ret void, !dbg !5560
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kref_get(%struct.kref* %kref) #0 !dbg !5561 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !5565, metadata !DIExpression()), !dbg !5566
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5567
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !5568
  call void @refcount_inc(%struct.refcount_struct* %refcount) #9, !dbg !5569
  ret void, !dbg !5570
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_inc(%struct.refcount_struct* %r) #0 !dbg !5571 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5575, metadata !DIExpression()), !dbg !5576
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5577
  call void @__refcount_inc(%struct.refcount_struct* %0, i32* null) #9, !dbg !5578
  ret void, !dbg !5579
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_inc(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5580 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5583, metadata !DIExpression()), !dbg !5584
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5585, metadata !DIExpression()), !dbg !5586
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5587
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !5588
  call void @__refcount_add(i32 1, %struct.refcount_struct* %0, i32* %1) #9, !dbg !5589
  ret void, !dbg !5590
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_add(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5591 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5594, metadata !DIExpression()), !dbg !5600
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5605, metadata !DIExpression()), !dbg !5606
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !5607, metadata !DIExpression()), !dbg !5609
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5610, metadata !DIExpression()), !dbg !5612
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5614, metadata !DIExpression()), !dbg !5615
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5616, metadata !DIExpression()), !dbg !5617
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5618, metadata !DIExpression()), !dbg !5619
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5620, metadata !DIExpression()), !dbg !5621
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5622, metadata !DIExpression()), !dbg !5623
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5624, metadata !DIExpression()), !dbg !5625
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5626, metadata !DIExpression()), !dbg !5627
  %0 = load i32, i32* %i.addr, align 4, !dbg !5628
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5629
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !5630
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5631
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5631
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5632
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5633
  %conv.i.i = trunc i64 %5 to i32, !dbg !5633
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #8, !dbg !5634
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5635
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5635
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #8, !dbg !5635
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !5636
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5637
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5609
  store i32 %10, i32* %__ret.i.i, align 4, !dbg !5609
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !5609
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5609
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !5609
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #5, !dbg !5609, !srcloc !5638
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !5609
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !5609
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !5609
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !5609
  store i32 %15, i32* %old, align 4, !dbg !5627
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !5639
  %tobool = icmp ne i32* %16, null, !dbg !5639
  br i1 %tobool, label %if.then, label %if.end, !dbg !5641

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !5642
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !5643
  store i32 %17, i32* %18, align 4, !dbg !5644
  br label %if.end, !dbg !5645

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !5646
  %tobool1 = icmp ne i32 %19, 0, !dbg !5646
  %lnot = xor i1 %tobool1, true, !dbg !5646
  %lnot2 = xor i1 %lnot, true, !dbg !5646
  %lnot3 = xor i1 %lnot2, true, !dbg !5646
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5646
  %conv = sext i32 %lnot.ext to i64, !dbg !5646
  %tobool4 = icmp ne i64 %conv, 0, !dbg !5646
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5648

if.then5:                                         ; preds = %if.end
  %20 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5649
  call void @refcount_warn_saturate(%struct.refcount_struct* %20, i32 2) #9, !dbg !5650
  br label %if.end17, !dbg !5650

if.else:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !5651
  %cmp = icmp slt i32 %21, 0, !dbg !5651
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5651

lor.rhs:                                          ; preds = %if.else
  %22 = load i32, i32* %old, align 4, !dbg !5651
  %23 = load i32, i32* %i.addr, align 4, !dbg !5651
  %add = add i32 %22, %23, !dbg !5651
  %cmp7 = icmp slt i32 %add, 0, !dbg !5651
  br label %lor.end, !dbg !5651

lor.end:                                          ; preds = %lor.rhs, %if.else
  %24 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %24, true, !dbg !5651
  %lnot11 = xor i1 %lnot9, true, !dbg !5651
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5651
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !5651
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !5651
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5653

if.then15:                                        ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5654
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 1) #9, !dbg !5655
  br label %if.end16, !dbg !5655

if.end16:                                         ; preds = %if.then15, %lor.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then5
  ret void, !dbg !5656
}

; Function Attrs: noredzone
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct*, i32) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @capable(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @proc_set_tty(%struct.tty_struct* %tty) #0 !dbg !5657 {
entry:
  %lock.addr.i9 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i9, metadata !4141, metadata !DIExpression()), !dbg !5658
  %pscr_ret__.i4 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i4, metadata !3851, metadata !DIExpression()), !dbg !5660
  %__vpp_verify.i5 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i5, metadata !3864, metadata !DIExpression()), !dbg !5662
  %pfo_val__.i6 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i6, metadata !3867, metadata !DIExpression()), !dbg !5663
  %tmp.i7 = alloca %struct.task_struct*, align 8
  %tmp1.i8 = alloca %struct.task_struct*, align 8
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4160, metadata !DIExpression()), !dbg !5664
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !3851, metadata !DIExpression()), !dbg !5666
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !3864, metadata !DIExpression()), !dbg !5668
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !3867, metadata !DIExpression()), !dbg !5669
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %tty.addr = alloca %struct.tty_struct*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5670, metadata !DIExpression()), !dbg !5671
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !5668
  %0 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !5668
  %1 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !5669, !srcloc !3913
  store i64 %1, i64* %pfo_val__.i, align 8, !dbg !5669
  %2 = load i64, i64* %pfo_val__.i, align 8, !dbg !5669
  %3 = inttoptr i64 %2 to %struct.task_struct*, !dbg !5669
  store %struct.task_struct* %3, %struct.task_struct** %tmp.i, align 8, !dbg !5669
  %4 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !5669
  store %struct.task_struct* %4, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5666
  %5 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5666
  store %struct.task_struct* %5, %struct.task_struct** %tmp1.i, align 8, !dbg !5666
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !5666
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 75, !dbg !5672
  %7 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 8, !dbg !5672
  %siglock = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %7, i32 0, i32 0, !dbg !5673
  store %struct.spinlock* %siglock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #8, !dbg !5674
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5675, !srcloc !4185
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5676
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !5676
  %rlock.i = bitcast %union.anon.1* %9 to %struct.raw_spinlock*, !dbg !5676
  %10 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5677
  call void @__proc_set_tty(%struct.tty_struct* %10) #9, !dbg !5678
  store i8* null, i8** %__vpp_verify.i5, align 8, !dbg !5662
  %11 = load i8*, i8** %__vpp_verify.i5, align 8, !dbg !5662
  %12 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !5663, !srcloc !3913
  store i64 %12, i64* %pfo_val__.i6, align 8, !dbg !5663
  %13 = load i64, i64* %pfo_val__.i6, align 8, !dbg !5663
  %14 = inttoptr i64 %13 to %struct.task_struct*, !dbg !5663
  store %struct.task_struct* %14, %struct.task_struct** %tmp.i7, align 8, !dbg !5663
  %15 = load %struct.task_struct*, %struct.task_struct** %tmp.i7, align 8, !dbg !5663
  store %struct.task_struct* %15, %struct.task_struct** %pscr_ret__.i4, align 8, !dbg !5660
  %16 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i4, align 8, !dbg !5660
  store %struct.task_struct* %16, %struct.task_struct** %tmp1.i8, align 8, !dbg !5660
  %17 = load %struct.task_struct*, %struct.task_struct** %tmp1.i8, align 8, !dbg !5660
  %sighand2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %17, i32 0, i32 75, !dbg !5679
  %18 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand2, align 8, !dbg !5679
  %siglock3 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %18, i32 0, i32 0, !dbg !5680
  store %struct.spinlock* %siglock3, %struct.spinlock** %lock.addr.i9, align 8
  call void @arch_local_irq_enable() #8, !dbg !5681
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5682, !srcloc !4216
  %19 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i9, align 8, !dbg !5683
  %20 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %19, i32 0, i32 0, !dbg !5683
  %rlock.i10 = bitcast %union.anon.1* %20 to %struct.raw_spinlock*, !dbg !5683
  ret void, !dbg !5684
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @might_fault() #0 !dbg !5685 {
entry:
  ret void, !dbg !5687
}

; Function Attrs: noredzone
declare dso_local i32 @pid_vnr(%struct.pid*) #2

; Function Attrs: noredzone
declare dso_local %struct.pid* @find_vpid(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pid* @session_of_pgrp(%struct.pid* %pgrp) #0 !dbg !5688 {
entry:
  %pgrp.addr = alloca %struct.pid*, align 8
  %p = alloca %struct.task_struct*, align 8
  %sid = alloca %struct.pid*, align 8
  store %struct.pid* %pgrp, %struct.pid** %pgrp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pid** %pgrp.addr, metadata !5689, metadata !DIExpression()), !dbg !5690
  call void @llvm.dbg.declare(metadata %struct.task_struct** %p, metadata !5691, metadata !DIExpression()), !dbg !5692
  call void @llvm.dbg.declare(metadata %struct.pid** %sid, metadata !5693, metadata !DIExpression()), !dbg !5694
  store %struct.pid* null, %struct.pid** %sid, align 8, !dbg !5694
  %0 = load %struct.pid*, %struct.pid** %pgrp.addr, align 8, !dbg !5695
  %call = call %struct.task_struct* @pid_task(%struct.pid* %0, i32 2) #9, !dbg !5696
  store %struct.task_struct* %call, %struct.task_struct** %p, align 8, !dbg !5697
  %1 = load %struct.task_struct*, %struct.task_struct** %p, align 8, !dbg !5698
  %cmp = icmp eq %struct.task_struct* %1, null, !dbg !5700
  br i1 %cmp, label %if.then, label %if.end, !dbg !5701

if.then:                                          ; preds = %entry
  %2 = load %struct.pid*, %struct.pid** %pgrp.addr, align 8, !dbg !5702
  %call1 = call %struct.task_struct* @pid_task(%struct.pid* %2, i32 0) #9, !dbg !5703
  store %struct.task_struct* %call1, %struct.task_struct** %p, align 8, !dbg !5704
  br label %if.end, !dbg !5705

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.task_struct*, %struct.task_struct** %p, align 8, !dbg !5706
  %cmp2 = icmp ne %struct.task_struct* %3, null, !dbg !5708
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !5709

if.then3:                                         ; preds = %if.end
  %4 = load %struct.task_struct*, %struct.task_struct** %p, align 8, !dbg !5710
  %call4 = call %struct.pid* @task_session(%struct.task_struct* %4) #9, !dbg !5711
  store %struct.pid* %call4, %struct.pid** %sid, align 8, !dbg !5712
  br label %if.end5, !dbg !5713

if.end5:                                          ; preds = %if.then3, %if.end
  %5 = load %struct.pid*, %struct.pid** %sid, align 8, !dbg !5714
  ret %struct.pid* %5, !dbg !5715
}

; Function Attrs: noredzone
declare dso_local %struct.task_struct* @pid_task(%struct.pid*, i32) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind readnone }
attributes #8 = { noredzone nounwind }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }

!llvm.dbg.cu = !{!0}
!llvm.named.register.rsp = !{!3844}
!llvm.module.flags = !{!3845, !3846, !3847, !3848}
!llvm.ident = !{!3849}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !91, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/tty/tty_jobctrl.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !11, !16, !22, !28, !37, !45, !51, !57, !64, !72, !78, !83}
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
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !84, line: 119, baseType: !5, size: 32, elements: !85)
!84 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!85 = !{!86, !87, !88, !89, !90}
!86 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0, isUnsigned: true)
!87 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1, isUnsigned: true)
!88 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2, isUnsigned: true)
!89 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3, isUnsigned: true)
!90 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4, isUnsigned: true)
!91 = !{!92, !103, !104, !106, !114, !109, !115, !3838, !3839, !97, !3425, !3840, !3841, !3843, !2526}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !94, line: 56, size: 128, elements: !95)
!94 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !98}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !93, file: !94, line: 57, baseType: !97, size: 64)
!97 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !93, file: !94, line: 58, baseType: !99, size: 32, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !100, line: 21, baseType: !101)
!100 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !102, line: 27, baseType: !5)
!102 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !105, line: 150, baseType: !5)
!105 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !105, line: 186, size: 128, elements: !111)
!111 = !{!112, !113}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !110, file: !105, line: 187, baseType: !109, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !110, file: !105, line: 187, baseType: !114, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !117, line: 640, size: 48640, elements: !118)
!117 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!118 = !{!119, !120, !123, !124, !134, !135, !136, !137, !138, !139, !140, !141, !145, !179, !191, !301, !302, !303, !314, !315, !317, !318, !2447, !2448, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2525, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2540, !2541, !2542, !2544, !2545, !2546, !2547, !2548, !2549, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2573, !2578, !2579, !2580, !2581, !2582, !2584, !2587, !2590, !2593, !2596, !2599, !3410, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3456, !3457, !3458, !3459, !3460, !3465, !3466, !3467, !3470, !3471, !3474, !3477, !3480, !3481, !3513, !3516, !3517, !3596, !3597, !3600, !3601, !3604, !3605, !3606, !3610, !3611, !3612, !3625, !3626, !3627, !3637, !3642, !3643, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !116, file: !117, line: 646, baseType: !93, size: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !116, file: !117, line: 649, baseType: !121, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !122)
!122 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !116, file: !117, line: 657, baseType: !103, size: 64, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !116, file: !117, line: 658, baseType: !125, size: 32, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !84, line: 113, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !84, line: 111, size: 32, elements: !127)
!127 = !{!128}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !126, file: !84, line: 112, baseType: !129, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !105, line: 168, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !105, line: 166, size: 32, elements: !131)
!131 = !{!132}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !130, file: !105, line: 167, baseType: !133, size: 32)
!133 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !116, file: !117, line: 660, baseType: !5, size: 32, offset: 288)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !116, file: !117, line: 661, baseType: !5, size: 32, offset: 320)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !116, file: !117, line: 684, baseType: !133, size: 32, offset: 352)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !116, file: !117, line: 686, baseType: !133, size: 32, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !116, file: !117, line: 687, baseType: !133, size: 32, offset: 416)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !116, file: !117, line: 688, baseType: !133, size: 32, offset: 448)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !116, file: !117, line: 689, baseType: !5, size: 32, offset: 480)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !116, file: !117, line: 691, baseType: !142, size: 64, offset: 512)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!144 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !117, line: 691, flags: DIFlagFwdDecl)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !116, file: !117, line: 692, baseType: !146, size: 832, offset: 576)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !117, line: 451, size: 832, elements: !147)
!147 = !{!148, !153, !161, !167, !168, !172, !173, !174, !175, !176}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !146, file: !117, line: 453, baseType: !149, size: 128)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !117, line: 325, size: 128, elements: !150)
!150 = !{!151, !152}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !149, file: !117, line: 326, baseType: !97, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !149, file: !117, line: 327, baseType: !99, size: 32, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !146, file: !117, line: 454, baseType: !154, size: 192, align: 64, offset: 128)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !155, line: 24, size: 192, align: 64, elements: !156)
!155 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!156 = !{!157, !158, !160}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !154, file: !155, line: 25, baseType: !97, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !154, file: !155, line: 26, baseType: !159, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !154, file: !155, line: 27, baseType: !159, size: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !146, file: !117, line: 455, baseType: !162, size: 128, offset: 320)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !105, line: 178, size: 128, elements: !163)
!163 = !{!164, !166}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !162, file: !105, line: 179, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !162, file: !105, line: 179, baseType: !165, size: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !146, file: !117, line: 456, baseType: !5, size: 32, offset: 448)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !146, file: !117, line: 458, baseType: !169, size: 64, offset: 512)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !100, line: 23, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !102, line: 31, baseType: !171)
!171 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !146, file: !117, line: 459, baseType: !169, size: 64, offset: 576)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !146, file: !117, line: 460, baseType: !169, size: 64, offset: 640)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !146, file: !117, line: 461, baseType: !169, size: 64, offset: 704)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !146, file: !117, line: 463, baseType: !169, size: 64, offset: 768)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !146, file: !117, line: 465, baseType: !177, offset: 832)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !117, line: 415, elements: !178)
!178 = !{}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !116, file: !117, line: 693, baseType: !180, size: 384, offset: 1408)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !117, line: 489, size: 384, elements: !181)
!181 = !{!182, !183, !184, !185, !186, !188, !189}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !180, file: !117, line: 490, baseType: !162, size: 128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !180, file: !117, line: 491, baseType: !97, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !180, file: !117, line: 492, baseType: !97, size: 64, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !180, file: !117, line: 493, baseType: !5, size: 32, offset: 256)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !180, file: !117, line: 494, baseType: !187, size: 16, offset: 288)
!187 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !180, file: !117, line: 495, baseType: !187, size: 16, offset: 304)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !180, file: !117, line: 497, baseType: !190, size: 64, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !116, file: !117, line: 697, baseType: !192, size: 1792, offset: 1792)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !117, line: 507, size: 1792, elements: !193)
!193 = !{!194, !195, !196, !197, !198, !199, !200, !204, !205, !206, !207, !208, !209, !210, !298, !299}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !192, file: !117, line: 508, baseType: !154, size: 192, align: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !192, file: !117, line: 515, baseType: !169, size: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !192, file: !117, line: 516, baseType: !169, size: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !192, file: !117, line: 517, baseType: !169, size: 64, offset: 320)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !192, file: !117, line: 518, baseType: !169, size: 64, offset: 384)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !192, file: !117, line: 519, baseType: !169, size: 64, offset: 448)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !192, file: !117, line: 526, baseType: !201, size: 64, offset: 512)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !100, line: 22, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !102, line: 30, baseType: !203)
!203 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !192, file: !117, line: 527, baseType: !169, size: 64, offset: 576)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !192, file: !117, line: 528, baseType: !5, size: 32, offset: 640)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !192, file: !117, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !192, file: !117, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !192, file: !117, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !192, file: !117, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !192, file: !117, line: 563, baseType: !211, size: 512, offset: 704)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !12, line: 118, size: 512, elements: !212)
!212 = !{!213, !221, !222, !227, !291, !295, !296, !297}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !211, file: !12, line: 119, baseType: !214, size: 256)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !215, line: 9, size: 256, elements: !216)
!215 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!216 = !{!217, !218}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !214, file: !215, line: 10, baseType: !154, size: 192, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !214, file: !215, line: 11, baseType: !219, size: 64, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !220, line: 29, baseType: !201)
!220 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !211, file: !12, line: 120, baseType: !219, size: 64, offset: 256)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !211, file: !12, line: 121, baseType: !223, size: 64, offset: 320)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!11, !226}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !211, file: !12, line: 122, baseType: !228, size: 64, offset: 384)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !12, line: 159, size: 512, align: 512, elements: !230)
!230 = !{!231, !259, !260, !264, !274, !275, !286, !290}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !229, file: !12, line: 160, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !12, line: 214, size: 4608, align: 512, elements: !234)
!234 = !{!235, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !233, file: !12, line: 215, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !237, line: 29, baseType: !238)
!237 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !237, line: 20, elements: !239)
!239 = !{!240}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !238, file: !237, line: 21, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !242, line: 25, baseType: !243)
!242 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 25, elements: !178)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !233, file: !12, line: 216, baseType: !5, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !233, file: !12, line: 217, baseType: !5, size: 32, offset: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !233, file: !12, line: 218, baseType: !5, size: 32, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !233, file: !12, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !233, file: !12, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !233, file: !12, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !233, file: !12, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !233, file: !12, line: 233, baseType: !219, size: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !233, file: !12, line: 234, baseType: !226, size: 64, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !233, file: !12, line: 235, baseType: !219, size: 64, offset: 256)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !233, file: !12, line: 236, baseType: !226, size: 64, offset: 320)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !233, file: !12, line: 237, baseType: !256, size: 4096, offset: 512)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 4096, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 8)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !229, file: !12, line: 161, baseType: !5, size: 32, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !229, file: !12, line: 162, baseType: !261, size: 32, offset: 96)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !105, line: 27, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !263, line: 96, baseType: !133)
!263 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!264 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !229, file: !12, line: 163, baseType: !265, size: 32, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !266, line: 276, baseType: !267)
!266 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !266, line: 276, size: 32, elements: !268)
!268 = !{!269}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !267, file: !266, line: 276, baseType: !270, size: 32)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !266, line: 70, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !266, line: 65, size: 32, elements: !272)
!272 = !{!273}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !271, file: !266, line: 66, baseType: !5, size: 32)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !229, file: !12, line: 164, baseType: !226, size: 64, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !229, file: !12, line: 165, baseType: !276, size: 128, offset: 256)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !215, line: 14, size: 128, elements: !277)
!277 = !{!278}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !276, file: !215, line: 15, baseType: !279, size: 128)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !155, line: 125, size: 128, elements: !280)
!280 = !{!281, !285}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !279, file: !155, line: 126, baseType: !282, size: 64)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !155, line: 31, size: 64, elements: !283)
!283 = !{!284}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !282, file: !155, line: 32, baseType: !159, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !279, file: !155, line: 127, baseType: !159, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !229, file: !12, line: 166, baseType: !287, size: 64, offset: 384)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!219}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !229, file: !12, line: 167, baseType: !219, size: 64, offset: 448)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !211, file: !12, line: 123, baseType: !292, size: 8, offset: 448)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !100, line: 17, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !102, line: 21, baseType: !294)
!294 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !211, file: !12, line: 124, baseType: !292, size: 8, offset: 456)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !211, file: !12, line: 125, baseType: !292, size: 8, offset: 464)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !211, file: !12, line: 126, baseType: !292, size: 8, offset: 472)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !192, file: !117, line: 572, baseType: !211, size: 512, offset: 1216)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !192, file: !117, line: 580, baseType: !300, size: 64, offset: 1728)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !116, file: !117, line: 721, baseType: !5, size: 32, offset: 3584)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !116, file: !117, line: 722, baseType: !133, size: 32, offset: 3616)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !116, file: !117, line: 723, baseType: !304, size: 64, offset: 3648)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !307, line: 17, baseType: !308)
!307 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !307, line: 17, size: 64, elements: !309)
!309 = !{!310}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !308, file: !307, line: 17, baseType: !311, size: 64)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 64, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 1)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !116, file: !117, line: 724, baseType: !306, size: 64, offset: 3712)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !116, file: !117, line: 749, baseType: !316, offset: 3776)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !117, line: 290, elements: !178)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !116, file: !117, line: 751, baseType: !162, size: 128, offset: 3776)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !116, file: !117, line: 757, baseType: !319, size: 64, offset: 3904)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !321, line: 388, size: 7296, elements: !322)
!321 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!322 = !{!323, !2443}
!323 = !DIDerivedType(tag: DW_TAG_member, scope: !320, file: !321, line: 389, baseType: !324, size: 7296)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !320, file: !321, line: 389, size: 7296, elements: !325)
!325 = !{!326, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2372, !2378, !2381, !2404, !2405, !2427, !2428, !2431, !2432, !2433, !2436, !2437, !2438, !2441, !2442}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !324, file: !321, line: 390, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !321, line: 305, size: 1472, elements: !329)
!329 = !{!330, !331, !332, !333, !334, !335, !336, !337, !345, !346, !351, !352, !355, !359, !360, !2320, !2321, !2322}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !328, file: !321, line: 308, baseType: !97, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !328, file: !321, line: 309, baseType: !97, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !328, file: !321, line: 313, baseType: !327, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !328, file: !321, line: 313, baseType: !327, size: 64, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !328, file: !321, line: 315, baseType: !154, size: 192, align: 64, offset: 256)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !328, file: !321, line: 323, baseType: !97, size: 64, offset: 448)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !328, file: !321, line: 327, baseType: !319, size: 64, offset: 512)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !328, file: !321, line: 333, baseType: !338, size: 64, offset: 576)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !339, line: 284, baseType: !340)
!339 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !339, line: 284, size: 64, elements: !341)
!341 = !{!342}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !340, file: !339, line: 284, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !344, line: 19, baseType: !97)
!344 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!345 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !328, file: !321, line: 334, baseType: !97, size: 64, offset: 640)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !328, file: !321, line: 343, baseType: !347, size: 256, offset: 704)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !328, file: !321, line: 340, size: 256, elements: !348)
!348 = !{!349, !350}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !347, file: !321, line: 341, baseType: !154, size: 192, align: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !347, file: !321, line: 342, baseType: !97, size: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !328, file: !321, line: 351, baseType: !162, size: 128, offset: 960)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !328, file: !321, line: 353, baseType: !353, size: 64, offset: 1088)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !321, line: 353, flags: DIFlagFwdDecl)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !328, file: !321, line: 356, baseType: !356, size: 64, offset: 1152)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!358 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !321, line: 356, flags: DIFlagFwdDecl)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !328, file: !321, line: 359, baseType: !97, size: 64, offset: 1216)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !328, file: !321, line: 361, baseType: !361, size: 64, offset: 1280)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !29, line: 916, size: 1856, align: 32, elements: !363)
!363 = !{!364, !382, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2119, !2304, !2313, !2314, !2315, !2316, !2317, !2318, !2319}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !362, file: !29, line: 920, baseType: !365, size: 128)
!365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !362, file: !29, line: 917, size: 128, elements: !366)
!366 = !{!367, !373}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !365, file: !29, line: 918, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !369, line: 58, size: 64, elements: !370)
!369 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!370 = !{!371}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !368, file: !369, line: 59, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !365, file: !29, line: 919, baseType: !374, size: 128, align: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !105, line: 216, size: 128, align: 64, elements: !375)
!375 = !{!376, !378}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !374, file: !105, line: 217, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !374, file: !105, line: 218, baseType: !379, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !377}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !362, file: !29, line: 921, baseType: !383, size: 128, offset: 128)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !384, line: 8, size: 128, elements: !385)
!384 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!385 = !{!386, !390}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !383, file: !384, line: 9, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !389, line: 18, flags: DIFlagFwdDecl)
!389 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!390 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !383, file: !384, line: 10, baseType: !391, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !389, line: 89, size: 1536, elements: !393)
!393 = !{!394, !395, !400, !408, !409, !424, !2048, !2050, !2062, !2063, !2064, !2065, !2066, !2072, !2073, !2074}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !392, file: !389, line: 91, baseType: !5, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !392, file: !389, line: 92, baseType: !396, size: 32, offset: 32)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !266, line: 277, baseType: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !266, line: 277, size: 32, elements: !398)
!398 = !{!399}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !397, file: !266, line: 277, baseType: !270, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !392, file: !389, line: 93, baseType: !401, size: 128, offset: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !402, line: 38, size: 128, elements: !403)
!402 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!403 = !{!404, !406}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !401, file: !402, line: 39, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !401, file: !402, line: 39, baseType: !407, size: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !392, file: !389, line: 94, baseType: !391, size: 64, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !392, file: !389, line: 95, baseType: !410, size: 128, offset: 256)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !389, line: 47, size: 128, elements: !411)
!411 = !{!412, !421}
!412 = !DIDerivedType(tag: DW_TAG_member, scope: !410, file: !389, line: 48, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !410, file: !389, line: 48, size: 64, elements: !414)
!414 = !{!415, !420}
!415 = !DIDerivedType(tag: DW_TAG_member, scope: !413, file: !389, line: 49, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !413, file: !389, line: 49, size: 64, elements: !417)
!417 = !{!418, !419}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !416, file: !389, line: 50, baseType: !99, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !416, file: !389, line: 50, baseType: !99, size: 32, offset: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !413, file: !389, line: 52, baseType: !169, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !410, file: !389, line: 54, baseType: !422, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !392, file: !389, line: 96, baseType: !425, size: 64, offset: 384)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !29, line: 610, size: 4224, elements: !427)
!427 = !{!428, !430, !431, !439, !446, !447, !603, !1458, !1459, !1460, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1727, !1735, !1736, !1737, !2044, !2045, !2046, !2047}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !426, file: !29, line: 611, baseType: !429, size: 16)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !105, line: 19, baseType: !187)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !426, file: !29, line: 612, baseType: !187, size: 16, offset: 16)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !426, file: !29, line: 613, baseType: !432, size: 32, offset: 32)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !433, line: 23, baseType: !434)
!433 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !433, line: 21, size: 32, elements: !435)
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !434, file: !433, line: 22, baseType: !437, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !105, line: 32, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !263, line: 49, baseType: !5)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !426, file: !29, line: 614, baseType: !440, size: 32, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !433, line: 28, baseType: !441)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !433, line: 26, size: 32, elements: !442)
!442 = !{!443}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !441, file: !433, line: 27, baseType: !444, size: 32)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !105, line: 33, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !263, line: 50, baseType: !5)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !426, file: !29, line: 615, baseType: !5, size: 32, offset: 96)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !426, file: !29, line: 622, baseType: !448, size: 64, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !450)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !29, line: 1864, size: 1536, align: 512, elements: !451)
!451 = !{!452, !456, !472, !476, !482, !487, !493, !497, !501, !505, !509, !510, !516, !520, !544, !573, !583, !589, !594, !598, !599}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !450, file: !29, line: 1865, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!391, !425, !391, !5}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !450, file: !29, line: 1866, baseType: !457, size: 64, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!460, !391, !425, !463}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !462)
!462 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !465, line: 10, size: 128, elements: !466)
!465 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!466 = !{!467, !471}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !464, file: !465, line: 11, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !103}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !464, file: !465, line: 12, baseType: !103, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !450, file: !29, line: 1867, baseType: !473, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!133, !425, !133}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !450, file: !29, line: 1868, baseType: !477, size: 64, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!480, !425, !133}
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !29, line: 581, flags: DIFlagFwdDecl)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !450, file: !29, line: 1870, baseType: !483, size: 64, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!133, !391, !486, !133}
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !450, file: !29, line: 1872, baseType: !488, size: 64, offset: 320)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!133, !425, !391, !429, !491}
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !105, line: 30, baseType: !492)
!492 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !450, file: !29, line: 1873, baseType: !494, size: 64, offset: 384)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!133, !391, !425, !391}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !450, file: !29, line: 1874, baseType: !498, size: 64, offset: 448)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!133, !425, !391}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !450, file: !29, line: 1875, baseType: !502, size: 64, offset: 512)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!133, !425, !391, !460}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !450, file: !29, line: 1876, baseType: !506, size: 64, offset: 576)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!133, !425, !391, !429}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !450, file: !29, line: 1877, baseType: !498, size: 64, offset: 640)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !450, file: !29, line: 1878, baseType: !511, size: 64, offset: 704)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!133, !425, !391, !429, !514}
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !105, line: 16, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !105, line: 13, baseType: !99)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !450, file: !29, line: 1879, baseType: !517, size: 64, offset: 768)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!133, !425, !391, !425, !391, !5}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !450, file: !29, line: 1881, baseType: !521, size: 64, offset: 832)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!133, !391, !524}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !29, line: 219, size: 640, elements: !526)
!526 = !{!527, !528, !529, !530, !531, !534, !541, !542, !543}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !525, file: !29, line: 220, baseType: !5, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !525, file: !29, line: 221, baseType: !429, size: 16, offset: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !525, file: !29, line: 222, baseType: !432, size: 32, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !525, file: !29, line: 223, baseType: !440, size: 32, offset: 96)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !525, file: !29, line: 224, baseType: !532, size: 64, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !105, line: 46, baseType: !533)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !263, line: 88, baseType: !203)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !525, file: !29, line: 225, baseType: !535, size: 128, offset: 192)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !536, line: 13, size: 128, elements: !537)
!536 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!537 = !{!538, !540}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !535, file: !536, line: 14, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !536, line: 8, baseType: !202)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !535, file: !536, line: 15, baseType: !122, size: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !525, file: !29, line: 226, baseType: !535, size: 128, offset: 320)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !525, file: !29, line: 227, baseType: !535, size: 128, offset: 448)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !525, file: !29, line: 234, baseType: !361, size: 64, offset: 576)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !450, file: !29, line: 1882, baseType: !545, size: 64, offset: 896)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!133, !548, !550, !99, !5}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !552, line: 22, size: 1152, elements: !553)
!552 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!553 = !{!554, !555, !556, !557, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !551, file: !552, line: 23, baseType: !99, size: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !551, file: !552, line: 24, baseType: !429, size: 16, offset: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !551, file: !552, line: 25, baseType: !5, size: 32, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !551, file: !552, line: 26, baseType: !558, size: 32, offset: 96)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !105, line: 104, baseType: !99)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !551, file: !552, line: 27, baseType: !169, size: 64, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !551, file: !552, line: 28, baseType: !169, size: 64, offset: 192)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !551, file: !552, line: 37, baseType: !169, size: 64, offset: 256)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !551, file: !552, line: 38, baseType: !514, size: 32, offset: 320)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !551, file: !552, line: 39, baseType: !514, size: 32, offset: 352)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !551, file: !552, line: 40, baseType: !432, size: 32, offset: 384)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !551, file: !552, line: 41, baseType: !440, size: 32, offset: 416)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !551, file: !552, line: 42, baseType: !532, size: 64, offset: 448)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !551, file: !552, line: 43, baseType: !535, size: 128, offset: 512)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !551, file: !552, line: 44, baseType: !535, size: 128, offset: 640)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !551, file: !552, line: 45, baseType: !535, size: 128, offset: 768)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !551, file: !552, line: 46, baseType: !535, size: 128, offset: 896)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !551, file: !552, line: 47, baseType: !169, size: 64, offset: 1024)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !551, file: !552, line: 48, baseType: !169, size: 64, offset: 1088)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !450, file: !29, line: 1883, baseType: !574, size: 64, offset: 960)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!577, !391, !486, !580}
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !105, line: 60, baseType: !578)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !263, line: 73, baseType: !579)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !263, line: 15, baseType: !122)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !105, line: 55, baseType: !581)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !263, line: 72, baseType: !582)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !263, line: 16, baseType: !97)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !450, file: !29, line: 1884, baseType: !584, size: 64, offset: 1024)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!133, !425, !587, !169, !169}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !29, line: 50, flags: DIFlagFwdDecl)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !450, file: !29, line: 1886, baseType: !590, size: 64, offset: 1088)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!133, !425, !593, !133}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !450, file: !29, line: 1887, baseType: !595, size: 64, offset: 1152)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!133, !425, !391, !361, !5, !429}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !450, file: !29, line: 1890, baseType: !506, size: 64, offset: 1216)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !450, file: !29, line: 1891, baseType: !600, size: 64, offset: 1280)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!133, !425, !480, !133}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !426, file: !29, line: 623, baseType: !604, size: 64, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !29, line: 1416, size: 9472, elements: !606)
!606 = !{!607, !608, !609, !610, !611, !612, !657, !1041, !1123, !1206, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1222, !1226, !1227, !1230, !1233, !1236, !1237, !1238, !1279, !1312, !1313, !1314, !1315, !1316, !1317, !1320, !1324, !1333, !1334, !1335, !1336, !1337, !1396, !1397, !1412, !1413, !1414, !1415, !1416, !1420, !1421, !1424, !1439, !1440, !1441, !1452, !1453, !1454, !1455, !1456, !1457}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !605, file: !29, line: 1417, baseType: !162, size: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !605, file: !29, line: 1418, baseType: !514, size: 32, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !605, file: !29, line: 1419, baseType: !294, size: 8, offset: 160)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !605, file: !29, line: 1420, baseType: !97, size: 64, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !605, file: !29, line: 1421, baseType: !532, size: 64, offset: 256)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !605, file: !29, line: 1422, baseType: !613, size: 64, offset: 320)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !29, line: 2228, size: 576, elements: !615)
!615 = !{!616, !617, !618, !624, !628, !632, !636, !640, !641, !645, !648, !649, !650, !654, !655, !656}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !614, file: !29, line: 2229, baseType: !460, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !614, file: !29, line: 2230, baseType: !133, size: 32, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !614, file: !29, line: 2238, baseType: !619, size: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!133, !622}
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !29, line: 69, flags: DIFlagFwdDecl)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !614, file: !29, line: 2239, baseType: !625, size: 64, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !627)
!627 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !29, line: 70, flags: DIFlagFwdDecl)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !614, file: !29, line: 2240, baseType: !629, size: 64, offset: 256)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!391, !613, !133, !460, !103}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !614, file: !29, line: 2242, baseType: !633, size: 64, offset: 320)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{null, !604}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !614, file: !29, line: 2243, baseType: !637, size: 64, offset: 384)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !639, line: 76, flags: DIFlagFwdDecl)
!639 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!640 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !614, file: !29, line: 2244, baseType: !613, size: 64, offset: 448)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !614, file: !29, line: 2245, baseType: !642, size: 64, offset: 512)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !105, line: 182, size: 64, elements: !643)
!643 = !{!644}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !642, file: !105, line: 183, baseType: !109, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !614, file: !29, line: 2247, baseType: !646, offset: 576)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !647, line: 187, elements: !178)
!647 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!648 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !614, file: !29, line: 2248, baseType: !646, offset: 576)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !614, file: !29, line: 2249, baseType: !646, offset: 576)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !614, file: !29, line: 2250, baseType: !651, offset: 576)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !646, elements: !652)
!652 = !{!653}
!653 = !DISubrange(count: 3)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !614, file: !29, line: 2252, baseType: !646, offset: 576)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !614, file: !29, line: 2253, baseType: !646, offset: 576)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !614, file: !29, line: 2254, baseType: !646, offset: 576)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !605, file: !29, line: 1423, baseType: !658, size: 64, offset: 384)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !660)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !29, line: 1935, size: 1472, elements: !661)
!661 = !{!662, !666, !670, !671, !675, !681, !685, !686, !687, !691, !695, !696, !697, !698, !704, !709, !710, !772, !773, !774, !775, !1025, !1040}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !660, file: !29, line: 1936, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!425, !604}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !660, file: !29, line: 1937, baseType: !667, size: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{null, !425}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !660, file: !29, line: 1938, baseType: !667, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !660, file: !29, line: 1940, baseType: !672, size: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{null, !425, !133}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !660, file: !29, line: 1941, baseType: !676, size: 64, offset: 256)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!133, !425, !679}
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !29, line: 289, flags: DIFlagFwdDecl)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !660, file: !29, line: 1942, baseType: !682, size: 64, offset: 320)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!133, !425}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !660, file: !29, line: 1943, baseType: !667, size: 64, offset: 384)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !660, file: !29, line: 1944, baseType: !633, size: 64, offset: 448)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !660, file: !29, line: 1945, baseType: !688, size: 64, offset: 512)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!133, !604, !133}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !660, file: !29, line: 1946, baseType: !692, size: 64, offset: 576)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!133, !604}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !660, file: !29, line: 1947, baseType: !692, size: 64, offset: 640)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !660, file: !29, line: 1948, baseType: !692, size: 64, offset: 704)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !660, file: !29, line: 1949, baseType: !692, size: 64, offset: 768)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !660, file: !29, line: 1950, baseType: !699, size: 64, offset: 832)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!133, !391, !702}
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !29, line: 57, flags: DIFlagFwdDecl)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !660, file: !29, line: 1951, baseType: !705, size: 64, offset: 896)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!133, !604, !708, !486}
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !660, file: !29, line: 1952, baseType: !633, size: 64, offset: 960)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !660, file: !29, line: 1954, baseType: !711, size: 64, offset: 1024)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!133, !714, !391}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !716, line: 16, size: 896, elements: !717)
!716 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!717 = !{!718, !719, !720, !721, !722, !723, !724, !725, !745, !767, !768, !771}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !715, file: !716, line: 17, baseType: !486, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !715, file: !716, line: 18, baseType: !580, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !715, file: !716, line: 19, baseType: !580, size: 64, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !715, file: !716, line: 20, baseType: !580, size: 64, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !715, file: !716, line: 21, baseType: !580, size: 64, offset: 256)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !715, file: !716, line: 22, baseType: !532, size: 64, offset: 320)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !715, file: !716, line: 23, baseType: !532, size: 64, offset: 384)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !715, file: !716, line: 24, baseType: !726, size: 192, offset: 448)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !727, line: 53, size: 192, elements: !728)
!727 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!728 = !{!729, !736, !744}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !726, file: !727, line: 54, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !731, line: 13, baseType: !732)
!731 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !105, line: 175, baseType: !733)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !105, line: 173, size: 64, elements: !734)
!734 = !{!735}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !733, file: !105, line: 174, baseType: !201, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !726, file: !727, line: 55, baseType: !737, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !237, line: 83, baseType: !738)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !237, line: 71, elements: !739)
!739 = !{!740}
!740 = !DIDerivedType(tag: DW_TAG_member, scope: !738, file: !237, line: 72, baseType: !741)
!741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !738, file: !237, line: 72, elements: !742)
!742 = !{!743}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !741, file: !237, line: 73, baseType: !238)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !726, file: !727, line: 59, baseType: !162, size: 128, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !715, file: !716, line: 25, baseType: !746, size: 64, offset: 640)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !748)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !716, line: 31, size: 256, elements: !749)
!749 = !{!750, !755, !759, !763}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !748, file: !716, line: 32, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!103, !714, !754}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !748, file: !716, line: 33, baseType: !756, size: 64, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{null, !714, !103}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !748, file: !716, line: 34, baseType: !760, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!103, !714, !103, !754}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !748, file: !716, line: 35, baseType: !764, size: 64, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!133, !714, !103}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !715, file: !716, line: 26, baseType: !133, size: 32, offset: 704)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !715, file: !716, line: 27, baseType: !769, size: 64, offset: 768)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !362)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !715, file: !716, line: 28, baseType: !103, size: 64, offset: 832)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !660, file: !29, line: 1955, baseType: !711, size: 64, offset: 1088)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !660, file: !29, line: 1956, baseType: !711, size: 64, offset: 1152)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !660, file: !29, line: 1957, baseType: !711, size: 64, offset: 1216)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !660, file: !29, line: 1963, baseType: !776, size: 64, offset: 1280)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!133, !604, !779, !801}
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !321, line: 68, size: 512, align: 128, elements: !781)
!781 = !{!782, !783, !1017, !1024}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !780, file: !321, line: 69, baseType: !97, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, scope: !780, file: !321, line: 77, baseType: !784, size: 320, offset: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !780, file: !321, line: 77, size: 320, elements: !785)
!785 = !{!786, !948, !953, !982, !990, !996, !1009, !1016}
!786 = !DIDerivedType(tag: DW_TAG_member, scope: !784, file: !321, line: 78, baseType: !787, size: 320)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !784, file: !321, line: 78, size: 320, elements: !788)
!788 = !{!789, !790, !946, !947}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !787, file: !321, line: 84, baseType: !162, size: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !787, file: !321, line: 86, baseType: !791, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !29, line: 451, size: 1216, align: 64, elements: !793)
!793 = !{!794, !795, !803, !804, !805, !806, !814, !815, !816, !817, !939, !940, !943, !944, !945}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !792, file: !29, line: 452, baseType: !425, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !792, file: !29, line: 453, baseType: !796, size: 128, offset: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !797, line: 292, size: 128, elements: !798)
!797 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!798 = !{!799, !800, !802}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !796, file: !797, line: 293, baseType: !737)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !796, file: !797, line: 295, baseType: !801, size: 32)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !105, line: 148, baseType: !5)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !796, file: !797, line: 296, baseType: !103, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !792, file: !29, line: 454, baseType: !801, size: 32, offset: 192)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !792, file: !29, line: 455, baseType: !129, size: 32, offset: 224)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !792, file: !29, line: 460, baseType: !279, size: 128, offset: 256)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !792, file: !29, line: 461, baseType: !807, size: 256, offset: 384)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !808, line: 35, size: 256, elements: !809)
!808 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!809 = !{!810, !811, !812, !813}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !807, file: !808, line: 36, baseType: !730, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !807, file: !808, line: 42, baseType: !730, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !807, file: !808, line: 46, baseType: !236, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !807, file: !808, line: 47, baseType: !162, size: 128, offset: 128)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !792, file: !29, line: 462, baseType: !97, size: 64, offset: 640)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !792, file: !29, line: 463, baseType: !97, size: 64, offset: 704)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !792, file: !29, line: 464, baseType: !97, size: 64, offset: 768)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !792, file: !29, line: 465, baseType: !818, size: 64, offset: 832)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !820)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !29, line: 367, size: 1408, elements: !821)
!821 = !{!822, !826, !830, !834, !838, !842, !848, !854, !858, !863, !867, !871, !875, !903, !907, !913, !914, !915, !919, !924, !928, !935}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !820, file: !29, line: 368, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{!133, !779, !679}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !820, file: !29, line: 369, baseType: !827, size: 64, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!133, !361, !779}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !820, file: !29, line: 372, baseType: !831, size: 64, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!133, !791, !679}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !820, file: !29, line: 375, baseType: !835, size: 64, offset: 192)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{!133, !779}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !820, file: !29, line: 381, baseType: !839, size: 64, offset: 256)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!133, !361, !791, !165, !5}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !820, file: !29, line: 383, baseType: !843, size: 64, offset: 320)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{null, !846}
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !29, line: 290, flags: DIFlagFwdDecl)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !820, file: !29, line: 385, baseType: !849, size: 64, offset: 384)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!133, !361, !791, !532, !5, !5, !852, !853}
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !820, file: !29, line: 388, baseType: !855, size: 64, offset: 448)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!133, !361, !791, !532, !5, !5, !779, !103}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !820, file: !29, line: 393, baseType: !859, size: 64, offset: 512)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!862, !791, !862}
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !105, line: 125, baseType: !169)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !820, file: !29, line: 394, baseType: !864, size: 64, offset: 576)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{null, !779, !5, !5}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !820, file: !29, line: 395, baseType: !868, size: 64, offset: 640)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!133, !779, !801}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !820, file: !29, line: 396, baseType: !872, size: 64, offset: 704)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{null, !779}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !820, file: !29, line: 397, baseType: !876, size: 64, offset: 768)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!577, !879, !901}
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !29, line: 320, size: 384, elements: !881)
!881 = !{!882, !883, !884, !888, !889, !890, !893, !894}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !880, file: !29, line: 321, baseType: !361, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !880, file: !29, line: 326, baseType: !532, size: 64, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !880, file: !29, line: 327, baseType: !885, size: 64, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{null, !879, !122, !122}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !880, file: !29, line: 328, baseType: !103, size: 64, offset: 192)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !880, file: !29, line: 329, baseType: !133, size: 32, offset: 256)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !880, file: !29, line: 330, baseType: !891, size: 16, offset: 288)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !100, line: 19, baseType: !892)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !102, line: 24, baseType: !187)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !880, file: !29, line: 331, baseType: !891, size: 16, offset: 304)
!894 = !DIDerivedType(tag: DW_TAG_member, scope: !880, file: !29, line: 332, baseType: !895, size: 64, offset: 320)
!895 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !880, file: !29, line: 332, size: 64, elements: !896)
!896 = !{!897, !898}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !895, file: !29, line: 333, baseType: !5, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !895, file: !29, line: 334, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !29, line: 334, flags: DIFlagFwdDecl)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !29, line: 64, flags: DIFlagFwdDecl)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !820, file: !29, line: 402, baseType: !904, size: 64, offset: 832)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{!133, !791, !779, !779, !3}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !820, file: !29, line: 404, baseType: !908, size: 64, offset: 896)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DISubroutineType(types: !910)
!910 = !{!491, !779, !911}
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !912, line: 305, baseType: !5)
!912 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!913 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !820, file: !29, line: 405, baseType: !872, size: 64, offset: 960)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !820, file: !29, line: 406, baseType: !835, size: 64, offset: 1024)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !820, file: !29, line: 407, baseType: !916, size: 64, offset: 1088)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{!133, !779, !97, !97}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !820, file: !29, line: 409, baseType: !920, size: 64, offset: 1152)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{null, !779, !923, !923}
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !820, file: !29, line: 410, baseType: !925, size: 64, offset: 1216)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DISubroutineType(types: !927)
!927 = !{!133, !791, !779}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !820, file: !29, line: 413, baseType: !929, size: 64, offset: 1280)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{!133, !932, !361, !934}
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !29, line: 61, flags: DIFlagFwdDecl)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !820, file: !29, line: 415, baseType: !936, size: 64, offset: 1344)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{null, !361}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !792, file: !29, line: 466, baseType: !97, size: 64, offset: 896)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !792, file: !29, line: 467, baseType: !941, size: 32, offset: 960)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !942, line: 8, baseType: !99)
!942 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!943 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !792, file: !29, line: 468, baseType: !737, offset: 992)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !792, file: !29, line: 469, baseType: !162, size: 128, offset: 1024)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !792, file: !29, line: 470, baseType: !103, size: 64, offset: 1152)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !787, file: !321, line: 87, baseType: !97, size: 64, offset: 192)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !787, file: !321, line: 94, baseType: !97, size: 64, offset: 256)
!948 = !DIDerivedType(tag: DW_TAG_member, scope: !784, file: !321, line: 96, baseType: !949, size: 64)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !784, file: !321, line: 96, size: 64, elements: !950)
!950 = !{!951}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !949, file: !321, line: 101, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !105, line: 143, baseType: !169)
!953 = !DIDerivedType(tag: DW_TAG_member, scope: !784, file: !321, line: 103, baseType: !954, size: 320)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !784, file: !321, line: 103, size: 320, elements: !955)
!955 = !{!956, !966, !970, !971}
!956 = !DIDerivedType(tag: DW_TAG_member, scope: !954, file: !321, line: 104, baseType: !957, size: 128)
!957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !954, file: !321, line: 104, size: 128, elements: !958)
!958 = !{!959, !960}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !957, file: !321, line: 105, baseType: !162, size: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, scope: !957, file: !321, line: 106, baseType: !961, size: 128)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !957, file: !321, line: 106, size: 128, elements: !962)
!962 = !{!963, !964, !965}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !961, file: !321, line: 107, baseType: !779, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !961, file: !321, line: 109, baseType: !133, size: 32, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !961, file: !321, line: 110, baseType: !133, size: 32, offset: 96)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !954, file: !321, line: 117, baseType: !967, size: 64, offset: 128)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !969, line: 323, flags: DIFlagFwdDecl)
!969 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/lizy2001/genbc/linux")
!970 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !954, file: !321, line: 119, baseType: !103, size: 64, offset: 192)
!971 = !DIDerivedType(tag: DW_TAG_member, scope: !954, file: !321, line: 120, baseType: !972, size: 64, offset: 256)
!972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !954, file: !321, line: 120, size: 64, elements: !973)
!973 = !{!974, !975, !976}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !972, file: !321, line: 121, baseType: !103, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !972, file: !321, line: 122, baseType: !97, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !321, line: 123, baseType: !977, size: 32)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !972, file: !321, line: 123, size: 32, elements: !978)
!978 = !{!979, !980, !981}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !977, file: !321, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !977, file: !321, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !977, file: !321, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!982 = !DIDerivedType(tag: DW_TAG_member, scope: !784, file: !321, line: 130, baseType: !983, size: 192)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !784, file: !321, line: 130, size: 192, elements: !984)
!984 = !{!985, !986, !987, !988, !989}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !983, file: !321, line: 131, baseType: !97, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !983, file: !321, line: 134, baseType: !294, size: 8, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !983, file: !321, line: 135, baseType: !294, size: 8, offset: 72)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !983, file: !321, line: 136, baseType: !129, size: 32, offset: 96)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !983, file: !321, line: 137, baseType: !5, size: 32, offset: 128)
!990 = !DIDerivedType(tag: DW_TAG_member, scope: !784, file: !321, line: 139, baseType: !991, size: 256)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !784, file: !321, line: 139, size: 256, elements: !992)
!992 = !{!993, !994, !995}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !991, file: !321, line: 140, baseType: !97, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !991, file: !321, line: 141, baseType: !129, size: 32, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !991, file: !321, line: 143, baseType: !162, size: 128, offset: 128)
!996 = !DIDerivedType(tag: DW_TAG_member, scope: !784, file: !321, line: 145, baseType: !997, size: 256)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !784, file: !321, line: 145, size: 256, elements: !998)
!998 = !{!999, !1000, !1002, !1003, !1008}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !997, file: !321, line: 146, baseType: !97, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !997, file: !321, line: 147, baseType: !1001, size: 64, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !339, line: 509, baseType: !779)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !997, file: !321, line: 148, baseType: !97, size: 64, offset: 128)
!1003 = !DIDerivedType(tag: DW_TAG_member, scope: !997, file: !321, line: 149, baseType: !1004, size: 64, offset: 192)
!1004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !997, file: !321, line: 149, size: 64, elements: !1005)
!1005 = !{!1006, !1007}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1004, file: !321, line: 150, baseType: !319, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1004, file: !321, line: 151, baseType: !129, size: 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !997, file: !321, line: 156, baseType: !737, offset: 256)
!1009 = !DIDerivedType(tag: DW_TAG_member, scope: !784, file: !321, line: 159, baseType: !1010, size: 128)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !784, file: !321, line: 159, size: 128, elements: !1011)
!1011 = !{!1012, !1015}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1010, file: !321, line: 161, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !321, line: 161, flags: DIFlagFwdDecl)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1010, file: !321, line: 162, baseType: !103, size: 64, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !784, file: !321, line: 176, baseType: !374, size: 128, align: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, scope: !780, file: !321, line: 179, baseType: !1018, size: 32, offset: 384)
!1018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !780, file: !321, line: 179, size: 32, elements: !1019)
!1019 = !{!1020, !1021, !1022, !1023}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1018, file: !321, line: 184, baseType: !129, size: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1018, file: !321, line: 192, baseType: !5, size: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1018, file: !321, line: 194, baseType: !5, size: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1018, file: !321, line: 195, baseType: !133, size: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !780, file: !321, line: 199, baseType: !129, size: 32, offset: 416)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !660, file: !29, line: 1964, baseType: !1026, size: 64, offset: 1344)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!122, !604, !1029}
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1031, line: 12, size: 256, elements: !1032)
!1031 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!1032 = !{!1033, !1034, !1035, !1036, !1037}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1030, file: !1031, line: 13, baseType: !801, size: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1030, file: !1031, line: 16, baseType: !133, size: 32, offset: 32)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1030, file: !1031, line: 23, baseType: !97, size: 64, offset: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1030, file: !1031, line: 30, baseType: !97, size: 64, offset: 128)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1030, file: !1031, line: 33, baseType: !1038, size: 64, offset: 192)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !321, line: 27, flags: DIFlagFwdDecl)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !660, file: !29, line: 1966, baseType: !1026, size: 64, offset: 1408)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !605, file: !29, line: 1424, baseType: !1042, size: 64, offset: 448)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1044)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !23, line: 322, size: 704, elements: !1045)
!1045 = !{!1046, !1092, !1096, !1100, !1101, !1102, !1103, !1104, !1109, !1114, !1118}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1044, file: !23, line: 323, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!133, !1050}
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !23, line: 294, size: 1600, elements: !1052)
!1052 = !{!1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1077, !1078, !1079}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1051, file: !23, line: 295, baseType: !110, size: 128)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1051, file: !23, line: 296, baseType: !162, size: 128, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1051, file: !23, line: 297, baseType: !162, size: 128, offset: 256)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1051, file: !23, line: 298, baseType: !162, size: 128, offset: 384)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1051, file: !23, line: 299, baseType: !726, size: 192, offset: 512)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1051, file: !23, line: 300, baseType: !737, offset: 704)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1051, file: !23, line: 301, baseType: !129, size: 32, offset: 704)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1051, file: !23, line: 302, baseType: !604, size: 64, offset: 768)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1051, file: !23, line: 303, baseType: !1062, size: 64, offset: 832)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !23, line: 68, size: 64, elements: !1063)
!1063 = !{!1064, !1076}
!1064 = !DIDerivedType(tag: DW_TAG_member, scope: !1062, file: !23, line: 69, baseType: !1065, size: 32)
!1065 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1062, file: !23, line: 69, size: 32, elements: !1066)
!1066 = !{!1067, !1068, !1069}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1065, file: !23, line: 70, baseType: !432, size: 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1065, file: !23, line: 71, baseType: !440, size: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1065, file: !23, line: 72, baseType: !1070, size: 32)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1071, line: 24, baseType: !1072)
!1071 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1071, line: 22, size: 32, elements: !1073)
!1073 = !{!1074}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1072, file: !1071, line: 23, baseType: !1075, size: 32)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1071, line: 20, baseType: !438)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1062, file: !23, line: 74, baseType: !22, size: 32, offset: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1051, file: !23, line: 304, baseType: !532, size: 64, offset: 896)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1051, file: !23, line: 305, baseType: !97, size: 64, offset: 960)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1051, file: !23, line: 306, baseType: !1080, size: 576, offset: 1024)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !23, line: 205, size: 576, elements: !1081)
!1081 = !{!1082, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1080, file: !23, line: 206, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !23, line: 66, baseType: !203)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1080, file: !23, line: 207, baseType: !1083, size: 64, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1080, file: !23, line: 208, baseType: !1083, size: 64, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1080, file: !23, line: 209, baseType: !1083, size: 64, offset: 192)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1080, file: !23, line: 210, baseType: !1083, size: 64, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1080, file: !23, line: 211, baseType: !1083, size: 64, offset: 320)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1080, file: !23, line: 212, baseType: !1083, size: 64, offset: 384)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1080, file: !23, line: 213, baseType: !539, size: 64, offset: 448)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1080, file: !23, line: 214, baseType: !539, size: 64, offset: 512)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1044, file: !23, line: 324, baseType: !1093, size: 64, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!1050, !604, !133}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1044, file: !23, line: 325, baseType: !1097, size: 64, offset: 128)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{null, !1050}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1044, file: !23, line: 326, baseType: !1047, size: 64, offset: 192)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1044, file: !23, line: 327, baseType: !1047, size: 64, offset: 256)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1044, file: !23, line: 328, baseType: !1047, size: 64, offset: 320)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1044, file: !23, line: 329, baseType: !688, size: 64, offset: 384)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1044, file: !23, line: 332, baseType: !1105, size: 64, offset: 448)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!1108, !425}
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1044, file: !23, line: 333, baseType: !1110, size: 64, offset: 512)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!133, !425, !1113}
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1044, file: !23, line: 335, baseType: !1115, size: 64, offset: 576)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!133, !425, !1108}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1044, file: !23, line: 337, baseType: !1119, size: 64, offset: 640)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!133, !604, !1122}
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !605, file: !29, line: 1425, baseType: !1124, size: 64, offset: 512)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1126)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !23, line: 428, size: 704, elements: !1127)
!1127 = !{!1128, !1132, !1133, !1137, !1138, !1139, !1154, !1177, !1181, !1182, !1205}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1126, file: !23, line: 429, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!133, !604, !133, !133, !548}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1126, file: !23, line: 430, baseType: !688, size: 64, offset: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1126, file: !23, line: 431, baseType: !1134, size: 64, offset: 128)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!133, !604, !5}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1126, file: !23, line: 432, baseType: !1134, size: 64, offset: 192)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1126, file: !23, line: 433, baseType: !688, size: 64, offset: 256)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1126, file: !23, line: 434, baseType: !1140, size: 64, offset: 320)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!133, !604, !133, !1143}
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !23, line: 415, size: 256, elements: !1145)
!1145 = !{!1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1144, file: !23, line: 416, baseType: !133, size: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1144, file: !23, line: 417, baseType: !5, size: 32, offset: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1144, file: !23, line: 418, baseType: !5, size: 32, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1144, file: !23, line: 420, baseType: !5, size: 32, offset: 96)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1144, file: !23, line: 421, baseType: !5, size: 32, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1144, file: !23, line: 422, baseType: !5, size: 32, offset: 160)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1144, file: !23, line: 423, baseType: !5, size: 32, offset: 192)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1144, file: !23, line: 424, baseType: !5, size: 32, offset: 224)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1126, file: !23, line: 435, baseType: !1155, size: 64, offset: 384)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!133, !604, !1062, !1158}
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !23, line: 343, size: 960, elements: !1160)
!1160 = !{!1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1159, file: !23, line: 344, baseType: !133, size: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1159, file: !23, line: 345, baseType: !169, size: 64, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1159, file: !23, line: 346, baseType: !169, size: 64, offset: 128)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1159, file: !23, line: 347, baseType: !169, size: 64, offset: 192)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1159, file: !23, line: 348, baseType: !169, size: 64, offset: 256)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1159, file: !23, line: 349, baseType: !169, size: 64, offset: 320)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1159, file: !23, line: 350, baseType: !169, size: 64, offset: 384)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1159, file: !23, line: 351, baseType: !201, size: 64, offset: 448)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1159, file: !23, line: 353, baseType: !201, size: 64, offset: 512)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1159, file: !23, line: 354, baseType: !133, size: 32, offset: 576)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1159, file: !23, line: 355, baseType: !133, size: 32, offset: 608)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1159, file: !23, line: 356, baseType: !169, size: 64, offset: 640)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1159, file: !23, line: 357, baseType: !169, size: 64, offset: 704)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1159, file: !23, line: 358, baseType: !169, size: 64, offset: 768)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1159, file: !23, line: 359, baseType: !201, size: 64, offset: 832)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1159, file: !23, line: 360, baseType: !133, size: 32, offset: 896)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1126, file: !23, line: 436, baseType: !1178, size: 64, offset: 448)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!133, !604, !1122, !1158}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1126, file: !23, line: 438, baseType: !1155, size: 64, offset: 512)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1126, file: !23, line: 439, baseType: !1183, size: 64, offset: 576)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!133, !604, !1186}
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !23, line: 409, size: 1408, elements: !1188)
!1188 = !{!1189, !1190}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1187, file: !23, line: 410, baseType: !5, size: 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1187, file: !23, line: 411, baseType: !1191, size: 1344, offset: 64)
!1191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1192, size: 1344, elements: !652)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !23, line: 395, size: 448, elements: !1193)
!1193 = !{!1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1204}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1192, file: !23, line: 396, baseType: !5, size: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1192, file: !23, line: 397, baseType: !5, size: 32, offset: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1192, file: !23, line: 399, baseType: !5, size: 32, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1192, file: !23, line: 400, baseType: !5, size: 32, offset: 96)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1192, file: !23, line: 401, baseType: !5, size: 32, offset: 128)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1192, file: !23, line: 402, baseType: !5, size: 32, offset: 160)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1192, file: !23, line: 403, baseType: !5, size: 32, offset: 192)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1192, file: !23, line: 404, baseType: !171, size: 64, offset: 256)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1192, file: !23, line: 405, baseType: !1203, size: 64, offset: 320)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !105, line: 126, baseType: !169)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1192, file: !23, line: 406, baseType: !1203, size: 64, offset: 384)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1126, file: !23, line: 440, baseType: !1134, size: 64, offset: 640)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !605, file: !29, line: 1426, baseType: !1207, size: 64, offset: 576)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1209)
!1209 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !29, line: 49, flags: DIFlagFwdDecl)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !605, file: !29, line: 1427, baseType: !97, size: 64, offset: 640)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !605, file: !29, line: 1428, baseType: !97, size: 64, offset: 704)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !605, file: !29, line: 1429, baseType: !97, size: 64, offset: 768)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !605, file: !29, line: 1430, baseType: !391, size: 64, offset: 832)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !605, file: !29, line: 1431, baseType: !807, size: 256, offset: 896)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !605, file: !29, line: 1432, baseType: !133, size: 32, offset: 1152)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !605, file: !29, line: 1433, baseType: !129, size: 32, offset: 1184)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !605, file: !29, line: 1437, baseType: !1218, size: 64, offset: 1216)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1221)
!1221 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !29, line: 1437, flags: DIFlagFwdDecl)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !605, file: !29, line: 1449, baseType: !1223, size: 64, offset: 1280)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !402, line: 34, size: 64, elements: !1224)
!1224 = !{!1225}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1223, file: !402, line: 35, baseType: !405, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !605, file: !29, line: 1450, baseType: !162, size: 128, offset: 1344)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !605, file: !29, line: 1451, baseType: !1228, size: 64, offset: 1472)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !29, line: 699, flags: DIFlagFwdDecl)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !605, file: !29, line: 1452, baseType: !1231, size: 64, offset: 1536)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !117, line: 40, flags: DIFlagFwdDecl)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !605, file: !29, line: 1453, baseType: !1234, size: 64, offset: 1600)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !29, line: 1453, flags: DIFlagFwdDecl)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !605, file: !29, line: 1454, baseType: !110, size: 128, offset: 1664)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !605, file: !29, line: 1455, baseType: !5, size: 32, offset: 1792)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !605, file: !29, line: 1456, baseType: !1239, size: 2432, offset: 1856)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !23, line: 518, size: 2432, elements: !1240)
!1240 = !{!1241, !1242, !1243, !1245, !1277}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1239, file: !23, line: 519, baseType: !5, size: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1239, file: !23, line: 520, baseType: !807, size: 256, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1239, file: !23, line: 521, baseType: !1244, size: 192, offset: 320)
!1244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 192, elements: !652)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1239, file: !23, line: 522, baseType: !1246, size: 1728, offset: 512)
!1246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1247, size: 1728, elements: !652)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !23, line: 222, size: 576, elements: !1248)
!1248 = !{!1249, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1247, file: !23, line: 223, baseType: !1250, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !23, line: 443, size: 256, elements: !1252)
!1252 = !{!1253, !1254, !1267, !1268}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1251, file: !23, line: 444, baseType: !133, size: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1251, file: !23, line: 445, baseType: !1255, size: 64, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1257)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !23, line: 310, size: 512, elements: !1258)
!1258 = !{!1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1257, file: !23, line: 311, baseType: !688, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1257, file: !23, line: 312, baseType: !688, size: 64, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1257, file: !23, line: 313, baseType: !688, size: 64, offset: 128)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1257, file: !23, line: 314, baseType: !688, size: 64, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1257, file: !23, line: 315, baseType: !1047, size: 64, offset: 256)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1257, file: !23, line: 316, baseType: !1047, size: 64, offset: 320)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1257, file: !23, line: 317, baseType: !1047, size: 64, offset: 384)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1257, file: !23, line: 318, baseType: !1119, size: 64, offset: 448)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1251, file: !23, line: 446, baseType: !637, size: 64, offset: 128)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1251, file: !23, line: 447, baseType: !1250, size: 64, offset: 192)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1247, file: !23, line: 224, baseType: !133, size: 32, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1247, file: !23, line: 226, baseType: !162, size: 128, offset: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1247, file: !23, line: 227, baseType: !97, size: 64, offset: 256)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1247, file: !23, line: 228, baseType: !5, size: 32, offset: 320)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1247, file: !23, line: 229, baseType: !5, size: 32, offset: 352)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1247, file: !23, line: 230, baseType: !1083, size: 64, offset: 384)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1247, file: !23, line: 231, baseType: !1083, size: 64, offset: 448)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1247, file: !23, line: 232, baseType: !103, size: 64, offset: 512)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1239, file: !23, line: 523, baseType: !1278, size: 192, offset: 2240)
!1278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1255, size: 192, elements: !652)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !605, file: !29, line: 1458, baseType: !1280, size: 2112, offset: 4288)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !29, line: 1410, size: 2112, elements: !1281)
!1281 = !{!1282, !1283, !1290}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1280, file: !29, line: 1411, baseType: !133, size: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !1280, file: !29, line: 1412, baseType: !1284, size: 128, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1285, line: 40, baseType: !1286)
!1285 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1285, line: 36, size: 128, elements: !1287)
!1287 = !{!1288, !1289}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1286, file: !1285, line: 37, baseType: !737)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1286, file: !1285, line: 38, baseType: !162, size: 128)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1280, file: !29, line: 1413, baseType: !1291, size: 1920, offset: 192)
!1291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1292, size: 1920, elements: !652)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1293, line: 12, size: 640, elements: !1294)
!1293 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1294 = !{!1295, !1303, !1305, !1310, !1311}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1292, file: !1293, line: 13, baseType: !1296, size: 320)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1297, line: 17, size: 320, elements: !1298)
!1297 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!1298 = !{!1299, !1300, !1301, !1302}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1296, file: !1297, line: 18, baseType: !133, size: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1296, file: !1297, line: 19, baseType: !133, size: 32, offset: 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1296, file: !1297, line: 20, baseType: !1284, size: 128, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1296, file: !1297, line: 22, baseType: !374, size: 128, align: 64, offset: 192)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1292, file: !1293, line: 14, baseType: !1304, size: 64, offset: 320)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1292, file: !1293, line: 15, baseType: !1306, size: 64, offset: 384)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1307, line: 16, size: 64, elements: !1308)
!1307 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!1308 = !{!1309}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1306, file: !1307, line: 17, baseType: !115, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1292, file: !1293, line: 16, baseType: !1284, size: 128, offset: 448)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1292, file: !1293, line: 17, baseType: !129, size: 32, offset: 576)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !605, file: !29, line: 1465, baseType: !103, size: 64, offset: 6400)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !605, file: !29, line: 1468, baseType: !99, size: 32, offset: 6464)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !605, file: !29, line: 1470, baseType: !539, size: 64, offset: 6528)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !605, file: !29, line: 1471, baseType: !539, size: 64, offset: 6592)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !605, file: !29, line: 1473, baseType: !101, size: 32, offset: 6656)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !605, file: !29, line: 1474, baseType: !1318, size: 64, offset: 6720)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !29, line: 603, flags: DIFlagFwdDecl)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !605, file: !29, line: 1477, baseType: !1321, size: 256, offset: 6784)
!1321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 256, elements: !1322)
!1322 = !{!1323}
!1323 = !DISubrange(count: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !605, file: !29, line: 1478, baseType: !1325, size: 128, offset: 7040)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1326, line: 18, baseType: !1327)
!1326 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1326, line: 16, size: 128, elements: !1328)
!1328 = !{!1329}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1327, file: !1326, line: 17, baseType: !1330, size: 128)
!1330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 128, elements: !1331)
!1331 = !{!1332}
!1332 = !DISubrange(count: 16)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !605, file: !29, line: 1480, baseType: !5, size: 32, offset: 7168)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !605, file: !29, line: 1481, baseType: !104, size: 32, offset: 7200)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !605, file: !29, line: 1487, baseType: !726, size: 192, offset: 7232)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !605, file: !29, line: 1493, baseType: !460, size: 64, offset: 7424)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !605, file: !29, line: 1495, baseType: !1338, size: 64, offset: 7488)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1340)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !389, line: 135, size: 1024, align: 512, elements: !1341)
!1341 = !{!1342, !1346, !1347, !1354, !1360, !1364, !1368, !1372, !1373, !1377, !1381, !1386, !1390}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1340, file: !389, line: 136, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!133, !391, !5}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1340, file: !389, line: 137, baseType: !1343, size: 64, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1340, file: !389, line: 138, baseType: !1348, size: 64, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!133, !1351, !1353}
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1340, file: !389, line: 139, baseType: !1355, size: 64, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!133, !1351, !5, !460, !1358}
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1340, file: !389, line: 141, baseType: !1361, size: 64, offset: 256)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!133, !1351}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1340, file: !389, line: 142, baseType: !1365, size: 64, offset: 320)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!133, !391}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1340, file: !389, line: 143, baseType: !1369, size: 64, offset: 384)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{null, !391}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1340, file: !389, line: 144, baseType: !1369, size: 64, offset: 448)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1340, file: !389, line: 145, baseType: !1374, size: 64, offset: 512)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{null, !391, !425}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1340, file: !389, line: 146, baseType: !1378, size: 64, offset: 576)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!486, !391, !486, !133}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1340, file: !389, line: 147, baseType: !1382, size: 64, offset: 640)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!387, !1385}
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1340, file: !389, line: 148, baseType: !1387, size: 64, offset: 704)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!133, !548, !491}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1340, file: !389, line: 149, baseType: !1391, size: 64, offset: 768)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!391, !391, !1394}
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !605, file: !29, line: 1500, baseType: !133, size: 32, offset: 7552)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !605, file: !29, line: 1502, baseType: !1398, size: 448, offset: 7616)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1031, line: 60, size: 448, elements: !1399)
!1399 = !{!1400, !1405, !1406, !1407, !1408, !1409, !1410}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1398, file: !1031, line: 61, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!97, !1404, !1029}
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1398, file: !1031, line: 63, baseType: !1401, size: 64, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1398, file: !1031, line: 66, baseType: !122, size: 64, offset: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1398, file: !1031, line: 67, baseType: !133, size: 32, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1398, file: !1031, line: 68, baseType: !5, size: 32, offset: 224)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1398, file: !1031, line: 71, baseType: !162, size: 128, offset: 256)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1398, file: !1031, line: 77, baseType: !1411, size: 64, offset: 384)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !605, file: !29, line: 1505, baseType: !730, size: 64, offset: 8064)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !605, file: !29, line: 1508, baseType: !730, size: 64, offset: 8128)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !605, file: !29, line: 1511, baseType: !133, size: 32, offset: 8192)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !605, file: !29, line: 1514, baseType: !941, size: 32, offset: 8224)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !605, file: !29, line: 1517, baseType: !1417, size: 64, offset: 8256)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1419, line: 18, flags: DIFlagFwdDecl)
!1419 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !605, file: !29, line: 1518, baseType: !642, size: 64, offset: 8320)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !605, file: !29, line: 1525, baseType: !1422, size: 64, offset: 8384)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !433, line: 18, flags: DIFlagFwdDecl)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !605, file: !29, line: 1532, baseType: !1425, size: 64, offset: 8448)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1426, line: 52, size: 64, elements: !1427)
!1426 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!1427 = !{!1428}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1425, file: !1426, line: 53, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1426, line: 40, size: 256, elements: !1431)
!1431 = !{!1432, !1433, !1438}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1430, file: !1426, line: 42, baseType: !737)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1430, file: !1426, line: 44, baseType: !1434, size: 192)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1426, line: 28, size: 192, elements: !1435)
!1435 = !{!1436, !1437}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1434, file: !1426, line: 29, baseType: !162, size: 128)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1434, file: !1426, line: 31, baseType: !122, size: 64, offset: 128)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1430, file: !1426, line: 49, baseType: !122, size: 64, offset: 192)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !605, file: !29, line: 1533, baseType: !1425, size: 64, offset: 8512)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !605, file: !29, line: 1534, baseType: !374, size: 128, align: 64, offset: 8576)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !605, file: !29, line: 1535, baseType: !1442, size: 256, offset: 8704)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1419, line: 102, size: 256, elements: !1443)
!1443 = !{!1444, !1445, !1446}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1442, file: !1419, line: 103, baseType: !730, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1442, file: !1419, line: 104, baseType: !162, size: 128, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1442, file: !1419, line: 105, baseType: !1447, size: 64, offset: 192)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1419, line: 21, baseType: !1448)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{null, !1451}
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !605, file: !29, line: 1537, baseType: !726, size: 192, offset: 8960)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !605, file: !29, line: 1542, baseType: !133, size: 32, offset: 9152)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !605, file: !29, line: 1545, baseType: !737, offset: 9184)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !605, file: !29, line: 1546, baseType: !162, size: 128, offset: 9216)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !605, file: !29, line: 1548, baseType: !737, offset: 9344)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !605, file: !29, line: 1549, baseType: !162, size: 128, offset: 9344)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !426, file: !29, line: 624, baseType: !791, size: 64, offset: 256)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !426, file: !29, line: 631, baseType: !97, size: 64, offset: 320)
!1460 = !DIDerivedType(tag: DW_TAG_member, scope: !426, file: !29, line: 639, baseType: !1461, size: 32, offset: 384)
!1461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !29, line: 639, size: 32, elements: !1462)
!1462 = !{!1463, !1465}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !1461, file: !29, line: 640, baseType: !1464, size: 32)
!1464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !1461, file: !29, line: 641, baseType: !5, size: 32)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !426, file: !29, line: 643, baseType: !514, size: 32, offset: 416)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !426, file: !29, line: 644, baseType: !532, size: 64, offset: 448)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !426, file: !29, line: 645, baseType: !535, size: 128, offset: 512)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !426, file: !29, line: 646, baseType: !535, size: 128, offset: 640)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !426, file: !29, line: 647, baseType: !535, size: 128, offset: 768)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !426, file: !29, line: 648, baseType: !737, offset: 896)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !426, file: !29, line: 649, baseType: !187, size: 16, offset: 896)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !426, file: !29, line: 650, baseType: !292, size: 8, offset: 912)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !426, file: !29, line: 651, baseType: !292, size: 8, offset: 920)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !426, file: !29, line: 652, baseType: !1203, size: 64, offset: 960)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !426, file: !29, line: 659, baseType: !97, size: 64, offset: 1024)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !426, file: !29, line: 660, baseType: !807, size: 256, offset: 1088)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !426, file: !29, line: 662, baseType: !97, size: 64, offset: 1344)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !426, file: !29, line: 663, baseType: !97, size: 64, offset: 1408)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !426, file: !29, line: 665, baseType: !110, size: 128, offset: 1472)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !426, file: !29, line: 666, baseType: !162, size: 128, offset: 1600)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !426, file: !29, line: 675, baseType: !162, size: 128, offset: 1728)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !426, file: !29, line: 676, baseType: !162, size: 128, offset: 1856)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !426, file: !29, line: 677, baseType: !162, size: 128, offset: 1984)
!1485 = !DIDerivedType(tag: DW_TAG_member, scope: !426, file: !29, line: 678, baseType: !1486, size: 128, offset: 2112)
!1486 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !29, line: 678, size: 128, elements: !1487)
!1487 = !{!1488, !1489}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !1486, file: !29, line: 679, baseType: !642, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !1486, file: !29, line: 680, baseType: !374, size: 128, align: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !426, file: !29, line: 682, baseType: !732, size: 64, offset: 2240)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !426, file: !29, line: 683, baseType: !732, size: 64, offset: 2304)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !426, file: !29, line: 684, baseType: !129, size: 32, offset: 2368)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !426, file: !29, line: 685, baseType: !129, size: 32, offset: 2400)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !426, file: !29, line: 686, baseType: !129, size: 32, offset: 2432)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !426, file: !29, line: 688, baseType: !129, size: 32, offset: 2464)
!1496 = !DIDerivedType(tag: DW_TAG_member, scope: !426, file: !29, line: 690, baseType: !1497, size: 64, offset: 2496)
!1497 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !29, line: 690, size: 64, elements: !1498)
!1498 = !{!1499, !1726}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !1497, file: !29, line: 691, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1502)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !29, line: 1822, size: 2048, elements: !1503)
!1503 = !{!1504, !1505, !1509, !1513, !1517, !1518, !1519, !1523, !1536, !1537, !1545, !1549, !1550, !1554, !1555, !1559, !1564, !1565, !1569, !1573, !1681, !1685, !1689, !1693, !1694, !1700, !1704, !1709, !1713, !1717, !1721, !1725}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1502, file: !29, line: 1823, baseType: !637, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1502, file: !29, line: 1824, baseType: !1506, size: 64, offset: 64)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!532, !361, !532, !133}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1502, file: !29, line: 1825, baseType: !1510, size: 64, offset: 128)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!577, !361, !486, !580, !754}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1502, file: !29, line: 1826, baseType: !1514, size: 64, offset: 192)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!577, !361, !460, !580, !754}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1502, file: !29, line: 1827, baseType: !876, size: 64, offset: 256)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1502, file: !29, line: 1828, baseType: !876, size: 64, offset: 320)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1502, file: !29, line: 1829, baseType: !1520, size: 64, offset: 384)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!133, !879, !491}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1502, file: !29, line: 1830, baseType: !1524, size: 64, offset: 448)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!133, !361, !1527}
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !29, line: 1776, size: 128, elements: !1529)
!1529 = !{!1530, !1535}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1528, file: !29, line: 1777, baseType: !1531, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !29, line: 1773, baseType: !1532)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!133, !1527, !460, !133, !532, !169, !5}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1528, file: !29, line: 1778, baseType: !532, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1502, file: !29, line: 1831, baseType: !1524, size: 64, offset: 512)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1502, file: !29, line: 1832, baseType: !1538, size: 64, offset: 576)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!1541, !361, !1543}
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1542, line: 52, baseType: !5)
!1542 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !29, line: 56, flags: DIFlagFwdDecl)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1502, file: !29, line: 1833, baseType: !1546, size: 64, offset: 640)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!122, !361, !5, !97}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1502, file: !29, line: 1834, baseType: !1546, size: 64, offset: 704)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1502, file: !29, line: 1835, baseType: !1551, size: 64, offset: 768)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!133, !361, !327}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1502, file: !29, line: 1836, baseType: !97, size: 64, offset: 832)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1502, file: !29, line: 1837, baseType: !1556, size: 64, offset: 896)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!133, !425, !361}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1502, file: !29, line: 1838, baseType: !1560, size: 64, offset: 960)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!133, !361, !1563}
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !29, line: 1007, baseType: !103)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1502, file: !29, line: 1839, baseType: !1556, size: 64, offset: 1024)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1502, file: !29, line: 1840, baseType: !1566, size: 64, offset: 1088)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!133, !361, !532, !532, !133}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1502, file: !29, line: 1841, baseType: !1570, size: 64, offset: 1152)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!133, !133, !361, !133}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1502, file: !29, line: 1842, baseType: !1574, size: 64, offset: 1216)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!133, !361, !133, !1577}
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !29, line: 1062, size: 1664, elements: !1579)
!1579 = !{!1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1611, !1612, !1613, !1626, !1657}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1578, file: !29, line: 1063, baseType: !1577, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1578, file: !29, line: 1064, baseType: !162, size: 128, offset: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1578, file: !29, line: 1065, baseType: !110, size: 128, offset: 192)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1578, file: !29, line: 1066, baseType: !162, size: 128, offset: 320)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1578, file: !29, line: 1069, baseType: !162, size: 128, offset: 448)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1578, file: !29, line: 1072, baseType: !1563, size: 64, offset: 576)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1578, file: !29, line: 1073, baseType: !5, size: 32, offset: 640)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1578, file: !29, line: 1074, baseType: !294, size: 8, offset: 672)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1578, file: !29, line: 1075, baseType: !5, size: 32, offset: 704)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1578, file: !29, line: 1076, baseType: !133, size: 32, offset: 736)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1578, file: !29, line: 1077, baseType: !1284, size: 128, offset: 768)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1578, file: !29, line: 1078, baseType: !361, size: 64, offset: 896)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1578, file: !29, line: 1079, baseType: !532, size: 64, offset: 960)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1578, file: !29, line: 1080, baseType: !532, size: 64, offset: 1024)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1578, file: !29, line: 1082, baseType: !1595, size: 64, offset: 1088)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !29, line: 1314, size: 320, elements: !1597)
!1597 = !{!1598, !1606, !1607, !1608, !1609, !1610}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1596, file: !29, line: 1315, baseType: !1599)
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1600, line: 20, baseType: !1601)
!1600 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1600, line: 11, elements: !1602)
!1602 = !{!1603}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1601, file: !1600, line: 12, baseType: !1604)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !242, line: 33, baseType: !1605)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 31, elements: !178)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1596, file: !29, line: 1316, baseType: !133, size: 32)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1596, file: !29, line: 1317, baseType: !133, size: 32, offset: 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1596, file: !29, line: 1318, baseType: !1595, size: 64, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1596, file: !29, line: 1319, baseType: !361, size: 64, offset: 128)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1596, file: !29, line: 1320, baseType: !374, size: 128, align: 64, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1578, file: !29, line: 1084, baseType: !97, size: 64, offset: 1152)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1578, file: !29, line: 1085, baseType: !97, size: 64, offset: 1216)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1578, file: !29, line: 1087, baseType: !1614, size: 64, offset: 1280)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1616)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !29, line: 1011, size: 128, elements: !1617)
!1617 = !{!1618, !1622}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1616, file: !29, line: 1012, baseType: !1619, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{null, !1577, !1577}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1616, file: !29, line: 1013, baseType: !1623, size: 64, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{null, !1577}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1578, file: !29, line: 1088, baseType: !1627, size: 64, offset: 1344)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1629)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !29, line: 1016, size: 512, elements: !1630)
!1630 = !{!1631, !1635, !1639, !1640, !1644, !1648, !1652, !1656}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1629, file: !29, line: 1017, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!1563, !1563}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1629, file: !29, line: 1018, baseType: !1636, size: 64, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{null, !1563}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1629, file: !29, line: 1019, baseType: !1623, size: 64, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1629, file: !29, line: 1020, baseType: !1641, size: 64, offset: 192)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!133, !1577, !133}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1629, file: !29, line: 1021, baseType: !1645, size: 64, offset: 256)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!491, !1577}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1629, file: !29, line: 1022, baseType: !1649, size: 64, offset: 320)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!133, !1577, !133, !165}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1629, file: !29, line: 1023, baseType: !1653, size: 64, offset: 384)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{null, !1577, !853}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1629, file: !29, line: 1024, baseType: !1645, size: 64, offset: 448)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1578, file: !29, line: 1097, baseType: !1658, size: 256, offset: 1408)
!1658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1578, file: !29, line: 1089, size: 256, elements: !1659)
!1659 = !{!1660, !1669, !1675}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1658, file: !29, line: 1090, baseType: !1661, size: 256)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1662, line: 10, size: 256, elements: !1663)
!1662 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!1663 = !{!1664, !1665, !1668}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1661, file: !1662, line: 11, baseType: !99, size: 32)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1661, file: !1662, line: 12, baseType: !1666, size: 64, offset: 64)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1662, line: 5, flags: DIFlagFwdDecl)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1661, file: !1662, line: 13, baseType: !162, size: 128, offset: 128)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1658, file: !29, line: 1091, baseType: !1670, size: 64)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1662, line: 17, size: 64, elements: !1671)
!1671 = !{!1672}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1670, file: !1662, line: 18, baseType: !1673, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1662, line: 16, flags: DIFlagFwdDecl)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1658, file: !29, line: 1096, baseType: !1676, size: 192)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1658, file: !29, line: 1092, size: 192, elements: !1677)
!1677 = !{!1678, !1679, !1680}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1676, file: !29, line: 1093, baseType: !162, size: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1676, file: !29, line: 1094, baseType: !133, size: 32, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1676, file: !29, line: 1095, baseType: !5, size: 32, offset: 160)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1502, file: !29, line: 1843, baseType: !1682, size: 64, offset: 1280)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!577, !361, !779, !133, !580, !754, !133}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1502, file: !29, line: 1844, baseType: !1686, size: 64, offset: 1344)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!97, !361, !97, !97, !97, !97}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1502, file: !29, line: 1845, baseType: !1690, size: 64, offset: 1408)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!133, !133}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1502, file: !29, line: 1846, baseType: !1574, size: 64, offset: 1472)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1502, file: !29, line: 1847, baseType: !1695, size: 64, offset: 1536)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!577, !1698, !361, !754, !580, !5}
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !117, line: 53, flags: DIFlagFwdDecl)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1502, file: !29, line: 1848, baseType: !1701, size: 64, offset: 1600)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!577, !361, !754, !1698, !580, !5}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1502, file: !29, line: 1849, baseType: !1705, size: 64, offset: 1664)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!133, !361, !122, !1708, !853}
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1502, file: !29, line: 1850, baseType: !1710, size: 64, offset: 1728)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!122, !361, !133, !532, !532}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1502, file: !29, line: 1852, baseType: !1714, size: 64, offset: 1792)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{null, !714, !361}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1502, file: !29, line: 1856, baseType: !1718, size: 64, offset: 1856)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!577, !361, !532, !361, !532, !580, !5}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1502, file: !29, line: 1858, baseType: !1722, size: 64, offset: 1920)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!532, !361, !532, !361, !532, !532, !5}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1502, file: !29, line: 1861, baseType: !1566, size: 64, offset: 1984)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1497, file: !29, line: 692, baseType: !667, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !426, file: !29, line: 694, baseType: !1728, size: 64, offset: 2560)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !29, line: 1100, size: 384, elements: !1730)
!1730 = !{!1731, !1732, !1733, !1734}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !1729, file: !29, line: 1101, baseType: !737)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !1729, file: !29, line: 1102, baseType: !162, size: 128)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !1729, file: !29, line: 1103, baseType: !162, size: 128, offset: 128)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !1729, file: !29, line: 1104, baseType: !162, size: 128, offset: 256)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !426, file: !29, line: 695, baseType: !792, size: 1216, align: 64, offset: 2624)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !426, file: !29, line: 696, baseType: !162, size: 128, offset: 3840)
!1737 = !DIDerivedType(tag: DW_TAG_member, scope: !426, file: !29, line: 697, baseType: !1738, size: 64, offset: 3968)
!1738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !29, line: 697, size: 64, elements: !1739)
!1739 = !{!1740, !1741, !1742, !2042, !2043}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !1738, file: !29, line: 698, baseType: !1698, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !1738, file: !29, line: 699, baseType: !1228, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !1738, file: !29, line: 700, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !1745, line: 14, size: 832, elements: !1746)
!1745 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!1746 = !{!1747, !2037, !2038, !2039, !2040, !2041}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1744, file: !1745, line: 15, baseType: !1748, size: 512)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1749, line: 64, size: 512, elements: !1750)
!1749 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!1750 = !{!1751, !1752, !1753, !1755, !1797, !1899, !2027, !2032, !2033, !2034, !2035, !2036}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1748, file: !1749, line: 65, baseType: !460, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1748, file: !1749, line: 66, baseType: !162, size: 128, offset: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1748, file: !1749, line: 67, baseType: !1754, size: 64, offset: 192)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1748, file: !1749, line: 68, baseType: !1756, size: 64, offset: 256)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1749, line: 192, size: 704, elements: !1758)
!1758 = !{!1759, !1760, !1761, !1762}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1757, file: !1749, line: 193, baseType: !162, size: 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1757, file: !1749, line: 194, baseType: !737, offset: 128)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1757, file: !1749, line: 195, baseType: !1748, size: 512, offset: 128)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1757, file: !1749, line: 196, baseType: !1763, size: 64, offset: 640)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1765)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1749, line: 156, size: 192, elements: !1766)
!1766 = !{!1767, !1772, !1777}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1765, file: !1749, line: 157, baseType: !1768, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1769)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!133, !1756, !1754}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1765, file: !1749, line: 158, baseType: !1773, size: 64, offset: 64)
!1773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1774)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!460, !1756, !1754}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1765, file: !1749, line: 159, baseType: !1778, size: 64, offset: 128)
!1778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1779)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!133, !1756, !1754, !1782}
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1749, line: 148, size: 20736, elements: !1784)
!1784 = !{!1785, !1787, !1791, !1792, !1796}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1783, file: !1749, line: 149, baseType: !1786, size: 192)
!1786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 192, elements: !652)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1783, file: !1749, line: 150, baseType: !1788, size: 4096, offset: 192)
!1788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 4096, elements: !1789)
!1789 = !{!1790}
!1790 = !DISubrange(count: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1783, file: !1749, line: 151, baseType: !133, size: 32, offset: 4288)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1783, file: !1749, line: 152, baseType: !1793, size: 16384, offset: 4320)
!1793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 16384, elements: !1794)
!1794 = !{!1795}
!1795 = !DISubrange(count: 2048)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1783, file: !1749, line: 153, baseType: !133, size: 32, offset: 20704)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1748, file: !1749, line: 69, baseType: !1798, size: 64, offset: 320)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1749, line: 138, size: 448, elements: !1800)
!1800 = !{!1801, !1805, !1824, !1826, !1859, !1889, !1893}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1799, file: !1749, line: 139, baseType: !1802, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{null, !1754}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1799, file: !1749, line: 140, baseType: !1806, size: 64, offset: 64)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1808)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1809, line: 230, size: 128, elements: !1810)
!1809 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!1810 = !{!1811, !1820}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1808, file: !1809, line: 231, baseType: !1812, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!577, !1754, !1815, !486}
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1809, line: 30, size: 128, elements: !1817)
!1817 = !{!1818, !1819}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1816, file: !1809, line: 31, baseType: !460, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1816, file: !1809, line: 32, baseType: !429, size: 16, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1808, file: !1809, line: 232, baseType: !1821, size: 64, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!577, !1754, !1815, !460, !580}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !1799, file: !1749, line: 141, baseType: !1825, size: 64, offset: 128)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1799, file: !1749, line: 142, baseType: !1827, size: 64, offset: 192)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1830)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1809, line: 84, size: 320, elements: !1831)
!1831 = !{!1832, !1833, !1837, !1856, !1857}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1830, file: !1809, line: 85, baseType: !460, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1830, file: !1809, line: 86, baseType: !1834, size: 64, offset: 64)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!429, !1754, !1815, !133}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1830, file: !1809, line: 88, baseType: !1838, size: 64, offset: 128)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!429, !1754, !1841, !133}
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1809, line: 168, size: 448, elements: !1843)
!1843 = !{!1844, !1845, !1846, !1847, !1851, !1852}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1842, file: !1809, line: 169, baseType: !1816, size: 128)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1842, file: !1809, line: 170, baseType: !580, size: 64, offset: 128)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1842, file: !1809, line: 171, baseType: !103, size: 64, offset: 192)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1842, file: !1809, line: 172, baseType: !1848, size: 64, offset: 256)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!577, !361, !1754, !1841, !486, !532, !580}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1842, file: !1809, line: 174, baseType: !1848, size: 64, offset: 320)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1842, file: !1809, line: 176, baseType: !1853, size: 64, offset: 384)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!133, !361, !1754, !1841, !327}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1830, file: !1809, line: 90, baseType: !1825, size: 64, offset: 192)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1830, file: !1809, line: 91, baseType: !1858, size: 64, offset: 256)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1799, file: !1749, line: 143, baseType: !1860, size: 64, offset: 256)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!1863, !1754}
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1865)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !46, line: 39, size: 384, elements: !1866)
!1866 = !{!1867, !1868, !1872, !1876, !1884, !1888}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1865, file: !46, line: 40, baseType: !45, size: 32)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1865, file: !46, line: 41, baseType: !1869, size: 64, offset: 64)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!491}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1865, file: !46, line: 42, baseType: !1873, size: 64, offset: 128)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!103}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1865, file: !46, line: 43, baseType: !1877, size: 64, offset: 192)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!1880, !1882}
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !46, line: 19, flags: DIFlagFwdDecl)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1865, file: !46, line: 44, baseType: !1885, size: 64, offset: 256)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!1880}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1865, file: !46, line: 45, baseType: !468, size: 64, offset: 320)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1799, file: !1749, line: 144, baseType: !1890, size: 64, offset: 320)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!1880, !1754}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1799, file: !1749, line: 145, baseType: !1894, size: 64, offset: 384)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{null, !1754, !1897, !1898}
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1748, file: !1749, line: 70, baseType: !1900, size: 64, offset: 384)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1902, line: 123, size: 1024, elements: !1903)
!1902 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1903 = !{!1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !2020, !2021, !2022, !2023, !2024}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1901, file: !1902, line: 124, baseType: !129, size: 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1901, file: !1902, line: 125, baseType: !129, size: 32, offset: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1901, file: !1902, line: 135, baseType: !1900, size: 64, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1901, file: !1902, line: 136, baseType: !460, size: 64, offset: 128)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1901, file: !1902, line: 138, baseType: !154, size: 192, align: 64, offset: 192)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1901, file: !1902, line: 140, baseType: !1880, size: 64, offset: 384)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1901, file: !1902, line: 141, baseType: !5, size: 32, offset: 448)
!1911 = !DIDerivedType(tag: DW_TAG_member, scope: !1901, file: !1902, line: 142, baseType: !1912, size: 256, offset: 512)
!1912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1901, file: !1902, line: 142, size: 256, elements: !1913)
!1913 = !{!1914, !1960, !1964}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1912, file: !1902, line: 143, baseType: !1915, size: 192)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1902, line: 91, size: 192, elements: !1916)
!1916 = !{!1917, !1918, !1919}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1915, file: !1902, line: 92, baseType: !97, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1915, file: !1902, line: 94, baseType: !282, size: 64, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1915, file: !1902, line: 100, baseType: !1920, size: 64, offset: 128)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1902, line: 180, size: 704, elements: !1922)
!1922 = !{!1923, !1924, !1925, !1932, !1933, !1934, !1958, !1959}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1921, file: !1902, line: 182, baseType: !1900, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1921, file: !1902, line: 183, baseType: !5, size: 32, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1921, file: !1902, line: 186, baseType: !1926, size: 192, offset: 128)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1927, line: 19, size: 192, elements: !1928)
!1927 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1928 = !{!1929, !1930, !1931}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1926, file: !1927, line: 20, baseType: !796, size: 128)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1926, file: !1927, line: 21, baseType: !5, size: 32, offset: 128)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1926, file: !1927, line: 22, baseType: !5, size: 32, offset: 160)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1921, file: !1902, line: 187, baseType: !99, size: 32, offset: 320)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1921, file: !1902, line: 188, baseType: !99, size: 32, offset: 352)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1921, file: !1902, line: 189, baseType: !1935, size: 64, offset: 384)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1902, line: 168, size: 320, elements: !1937)
!1937 = !{!1938, !1942, !1946, !1950, !1954}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1936, file: !1902, line: 169, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!133, !714, !1920}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1936, file: !1902, line: 171, baseType: !1943, size: 64, offset: 64)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!133, !1900, !460, !429}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1936, file: !1902, line: 173, baseType: !1947, size: 64, offset: 128)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!133, !1900}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1936, file: !1902, line: 174, baseType: !1951, size: 64, offset: 192)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!133, !1900, !1900, !460}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1936, file: !1902, line: 176, baseType: !1955, size: 64, offset: 256)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!133, !714, !1900, !1920}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1921, file: !1902, line: 192, baseType: !162, size: 128, offset: 448)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1921, file: !1902, line: 194, baseType: !1284, size: 128, offset: 576)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1912, file: !1902, line: 144, baseType: !1961, size: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1902, line: 103, size: 64, elements: !1962)
!1962 = !{!1963}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1961, file: !1902, line: 104, baseType: !1900, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1912, file: !1902, line: 145, baseType: !1965, size: 256)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1902, line: 107, size: 256, elements: !1966)
!1966 = !{!1967, !2015, !2018, !2019}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1965, file: !1902, line: 108, baseType: !1968, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1970)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1902, line: 217, size: 768, elements: !1971)
!1971 = !{!1972, !1992, !1996, !1997, !1998, !1999, !2000, !2004, !2005, !2006, !2007, !2011}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1970, file: !1902, line: 222, baseType: !1973, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!133, !1976}
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1902, line: 197, size: 1088, elements: !1978)
!1978 = !{!1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1977, file: !1902, line: 199, baseType: !1900, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1977, file: !1902, line: 200, baseType: !361, size: 64, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1977, file: !1902, line: 201, baseType: !714, size: 64, offset: 128)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1977, file: !1902, line: 202, baseType: !103, size: 64, offset: 192)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1977, file: !1902, line: 205, baseType: !726, size: 192, offset: 256)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1977, file: !1902, line: 206, baseType: !726, size: 192, offset: 448)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1977, file: !1902, line: 207, baseType: !133, size: 32, offset: 640)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1977, file: !1902, line: 208, baseType: !162, size: 128, offset: 704)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1977, file: !1902, line: 209, baseType: !486, size: 64, offset: 832)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1977, file: !1902, line: 211, baseType: !580, size: 64, offset: 896)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1977, file: !1902, line: 212, baseType: !491, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1977, file: !1902, line: 213, baseType: !491, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1977, file: !1902, line: 214, baseType: !356, size: 64, offset: 1024)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1970, file: !1902, line: 223, baseType: !1993, size: 64, offset: 64)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{null, !1976}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1970, file: !1902, line: 236, baseType: !764, size: 64, offset: 128)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1970, file: !1902, line: 238, baseType: !751, size: 64, offset: 192)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1970, file: !1902, line: 239, baseType: !760, size: 64, offset: 256)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1970, file: !1902, line: 240, baseType: !756, size: 64, offset: 320)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1970, file: !1902, line: 242, baseType: !2001, size: 64, offset: 384)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!577, !1976, !486, !580, !532}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1970, file: !1902, line: 252, baseType: !580, size: 64, offset: 448)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1970, file: !1902, line: 259, baseType: !491, size: 8, offset: 512)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1970, file: !1902, line: 260, baseType: !2001, size: 64, offset: 576)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1970, file: !1902, line: 263, baseType: !2008, size: 64, offset: 640)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!1541, !1976, !1543}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1970, file: !1902, line: 266, baseType: !2012, size: 64, offset: 704)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!133, !1976, !327}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1965, file: !1902, line: 109, baseType: !2016, size: 64, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1902, line: 31, flags: DIFlagFwdDecl)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1965, file: !1902, line: 110, baseType: !532, size: 64, offset: 128)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1965, file: !1902, line: 111, baseType: !1900, size: 64, offset: 192)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1901, file: !1902, line: 148, baseType: !103, size: 64, offset: 768)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1901, file: !1902, line: 154, baseType: !169, size: 64, offset: 832)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1901, file: !1902, line: 156, baseType: !187, size: 16, offset: 896)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1901, file: !1902, line: 157, baseType: !429, size: 16, offset: 912)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1901, file: !1902, line: 158, baseType: !2025, size: 64, offset: 960)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1902, line: 32, flags: DIFlagFwdDecl)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1748, file: !1749, line: 71, baseType: !2028, size: 32, offset: 448)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2029, line: 19, size: 32, elements: !2030)
!2029 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!2030 = !{!2031}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2028, file: !2029, line: 20, baseType: !125, size: 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1748, file: !1749, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1748, file: !1749, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1748, file: !1749, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1748, file: !1749, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1748, file: !1749, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1744, file: !1745, line: 16, baseType: !637, size: 64, offset: 512)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1744, file: !1745, line: 17, baseType: !1500, size: 64, offset: 576)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1744, file: !1745, line: 18, baseType: !162, size: 128, offset: 640)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1744, file: !1745, line: 19, baseType: !514, size: 32, offset: 768)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1744, file: !1745, line: 20, baseType: !5, size: 32, offset: 800)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !1738, file: !29, line: 701, baseType: !486, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !1738, file: !29, line: 702, baseType: !5, size: 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !426, file: !29, line: 705, baseType: !101, size: 32, offset: 4032)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !426, file: !29, line: 708, baseType: !101, size: 32, offset: 4064)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !426, file: !29, line: 709, baseType: !1318, size: 64, offset: 4096)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !426, file: !29, line: 720, baseType: !103, size: 64, offset: 4160)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !392, file: !389, line: 98, baseType: !2049, size: 256, offset: 448)
!2049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 256, elements: !1322)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !392, file: !389, line: 101, baseType: !2051, size: 32, offset: 704)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2052, line: 25, size: 32, elements: !2053)
!2052 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2053 = !{!2054}
!2054 = !DIDerivedType(tag: DW_TAG_member, scope: !2051, file: !2052, line: 26, baseType: !2055, size: 32)
!2055 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2051, file: !2052, line: 26, size: 32, elements: !2056)
!2056 = !{!2057}
!2057 = !DIDerivedType(tag: DW_TAG_member, scope: !2055, file: !2052, line: 30, baseType: !2058, size: 32)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2055, file: !2052, line: 30, size: 32, elements: !2059)
!2059 = !{!2060, !2061}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2058, file: !2052, line: 31, baseType: !737)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2058, file: !2052, line: 32, baseType: !133, size: 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !392, file: !389, line: 102, baseType: !1338, size: 64, offset: 768)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !392, file: !389, line: 103, baseType: !604, size: 64, offset: 832)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !392, file: !389, line: 104, baseType: !97, size: 64, offset: 896)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !392, file: !389, line: 105, baseType: !103, size: 64, offset: 960)
!2066 = !DIDerivedType(tag: DW_TAG_member, scope: !392, file: !389, line: 107, baseType: !2067, size: 128, offset: 1024)
!2067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !392, file: !389, line: 107, size: 128, elements: !2068)
!2068 = !{!2069, !2070}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2067, file: !389, line: 108, baseType: !162, size: 128)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2067, file: !389, line: 109, baseType: !2071, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !392, file: !389, line: 111, baseType: !162, size: 128, offset: 1152)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !392, file: !389, line: 112, baseType: !162, size: 128, offset: 1280)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !392, file: !389, line: 120, baseType: !2075, size: 128, offset: 1408)
!2075 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !392, file: !389, line: 116, size: 128, elements: !2076)
!2076 = !{!2077, !2078, !2079}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2075, file: !389, line: 117, baseType: !110, size: 128)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2075, file: !389, line: 118, baseType: !401, size: 128)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2075, file: !389, line: 119, baseType: !374, size: 128, align: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !362, file: !29, line: 922, baseType: !425, size: 64, offset: 256)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !362, file: !29, line: 923, baseType: !1500, size: 64, offset: 320)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !362, file: !29, line: 929, baseType: !737, offset: 384)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !362, file: !29, line: 930, baseType: !28, size: 32, offset: 384)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !362, file: !29, line: 931, baseType: !730, size: 64, offset: 448)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !362, file: !29, line: 932, baseType: !5, size: 32, offset: 512)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !362, file: !29, line: 933, baseType: !104, size: 32, offset: 544)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !362, file: !29, line: 934, baseType: !726, size: 192, offset: 576)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !362, file: !29, line: 935, baseType: !532, size: 64, offset: 768)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !362, file: !29, line: 936, baseType: !2090, size: 192, offset: 832)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !29, line: 885, size: 192, elements: !2091)
!2091 = !{!2092, !2093, !2115, !2116, !2117, !2118}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2090, file: !29, line: 886, baseType: !1599)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2090, file: !29, line: 887, baseType: !2094, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !38, line: 59, size: 768, elements: !2096)
!2096 = !{!2097, !2098, !2099, !2100, !2104, !2105, !2106, !2107}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2095, file: !38, line: 61, baseType: !125, size: 32)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2095, file: !38, line: 62, baseType: !5, size: 32, offset: 32)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2095, file: !38, line: 63, baseType: !737, offset: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2095, file: !38, line: 65, baseType: !2101, size: 256, offset: 64)
!2101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 256, elements: !2102)
!2102 = !{!2103}
!2103 = !DISubrange(count: 4)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2095, file: !38, line: 66, baseType: !642, size: 64, offset: 320)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !2095, file: !38, line: 68, baseType: !1284, size: 128, offset: 384)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2095, file: !38, line: 69, baseType: !374, size: 128, align: 64, offset: 512)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !2095, file: !38, line: 70, baseType: !2108, size: 128, offset: 640)
!2108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2109, size: 128, elements: !312)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !38, line: 54, size: 128, elements: !2110)
!2110 = !{!2111, !2112}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2109, file: !38, line: 55, baseType: !133, size: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2109, file: !38, line: 56, baseType: !2113, size: 64, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !38, line: 56, flags: DIFlagFwdDecl)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2090, file: !29, line: 888, baseType: !37, size: 32, offset: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2090, file: !29, line: 889, baseType: !432, size: 32, offset: 96)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2090, file: !29, line: 889, baseType: !432, size: 32, offset: 128)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2090, file: !29, line: 890, baseType: !133, size: 32, offset: 160)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !362, file: !29, line: 937, baseType: !2120, size: 64, offset: 1024)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2122)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2123, line: 111, size: 1280, elements: !2124)
!2123 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!2124 = !{!2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2144, !2145, !2146, !2147, !2148, !2149, !2259, !2260, !2261, !2262, !2288, !2289, !2299}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2122, file: !2123, line: 112, baseType: !129, size: 32)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2122, file: !2123, line: 120, baseType: !432, size: 32, offset: 32)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2122, file: !2123, line: 121, baseType: !440, size: 32, offset: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2122, file: !2123, line: 122, baseType: !432, size: 32, offset: 96)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2122, file: !2123, line: 123, baseType: !440, size: 32, offset: 128)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2122, file: !2123, line: 124, baseType: !432, size: 32, offset: 160)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2122, file: !2123, line: 125, baseType: !440, size: 32, offset: 192)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2122, file: !2123, line: 126, baseType: !432, size: 32, offset: 224)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2122, file: !2123, line: 127, baseType: !440, size: 32, offset: 256)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2122, file: !2123, line: 128, baseType: !5, size: 32, offset: 288)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2122, file: !2123, line: 129, baseType: !2136, size: 64, offset: 320)
!2136 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2137, line: 26, baseType: !2138)
!2137 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !2137, line: 24, size: 64, elements: !2139)
!2139 = !{!2140}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !2138, file: !2137, line: 25, baseType: !2141, size: 64)
!2141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 64, elements: !2142)
!2142 = !{!2143}
!2143 = !DISubrange(count: 2)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2122, file: !2123, line: 130, baseType: !2136, size: 64, offset: 384)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2122, file: !2123, line: 131, baseType: !2136, size: 64, offset: 448)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2122, file: !2123, line: 132, baseType: !2136, size: 64, offset: 512)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2122, file: !2123, line: 133, baseType: !2136, size: 64, offset: 576)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2122, file: !2123, line: 135, baseType: !294, size: 8, offset: 640)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2122, file: !2123, line: 137, baseType: !2150, size: 64, offset: 704)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2152, line: 189, size: 1664, elements: !2153)
!2152 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!2153 = !{!2154, !2155, !2160, !2165, !2166, !2169, !2170, !2175, !2176, !2177, !2178, !2180, !2181, !2182, !2184, !2185, !2223, !2244}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2151, file: !2152, line: 190, baseType: !125, size: 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2151, file: !2152, line: 191, baseType: !2156, size: 32, offset: 32)
!2156 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2152, line: 28, baseType: !2157)
!2157 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !105, line: 98, baseType: !2158)
!2158 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !100, line: 20, baseType: !2159)
!2159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !102, line: 26, baseType: !133)
!2160 = !DIDerivedType(tag: DW_TAG_member, scope: !2151, file: !2152, line: 192, baseType: !2161, size: 192, offset: 64)
!2161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2151, file: !2152, line: 192, size: 192, elements: !2162)
!2162 = !{!2163, !2164}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2161, file: !2152, line: 193, baseType: !162, size: 128)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2161, file: !2152, line: 194, baseType: !154, size: 192, align: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2151, file: !2152, line: 199, baseType: !807, size: 256, offset: 256)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2151, file: !2152, line: 200, baseType: !2167, size: 64, offset: 512)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2152, line: 200, flags: DIFlagFwdDecl)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2151, file: !2152, line: 201, baseType: !103, size: 64, offset: 576)
!2170 = !DIDerivedType(tag: DW_TAG_member, scope: !2151, file: !2152, line: 202, baseType: !2171, size: 64, offset: 640)
!2171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2151, file: !2152, line: 202, size: 64, elements: !2172)
!2172 = !{!2173, !2174}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2171, file: !2152, line: 203, baseType: !539, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2171, file: !2152, line: 204, baseType: !539, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2151, file: !2152, line: 206, baseType: !539, size: 64, offset: 704)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2151, file: !2152, line: 207, baseType: !432, size: 32, offset: 768)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2151, file: !2152, line: 208, baseType: !440, size: 32, offset: 800)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2151, file: !2152, line: 209, baseType: !2179, size: 32, offset: 832)
!2179 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2152, line: 31, baseType: !558)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2151, file: !2152, line: 210, baseType: !187, size: 16, offset: 864)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2151, file: !2152, line: 211, baseType: !187, size: 16, offset: 880)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2151, file: !2152, line: 215, baseType: !2183, size: 16, offset: 896)
!2183 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2151, file: !2152, line: 222, baseType: !97, size: 64, offset: 960)
!2185 = !DIDerivedType(tag: DW_TAG_member, scope: !2151, file: !2152, line: 239, baseType: !2186, size: 320, offset: 1024)
!2186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2151, file: !2152, line: 239, size: 320, elements: !2187)
!2187 = !{!2188, !2215}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2186, file: !2152, line: 240, baseType: !2189, size: 320)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2152, line: 108, size: 320, elements: !2190)
!2190 = !{!2191, !2192, !2204, !2207, !2214}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2189, file: !2152, line: 110, baseType: !97, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, scope: !2189, file: !2152, line: 111, baseType: !2193, size: 64, offset: 64)
!2193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2189, file: !2152, line: 111, size: 64, elements: !2194)
!2194 = !{!2195, !2203}
!2195 = !DIDerivedType(tag: DW_TAG_member, scope: !2193, file: !2152, line: 112, baseType: !2196, size: 64)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2193, file: !2152, line: 112, size: 64, elements: !2197)
!2197 = !{!2198, !2199}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2196, file: !2152, line: 114, baseType: !891, size: 16)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2196, file: !2152, line: 115, baseType: !2200, size: 48, offset: 16)
!2200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 48, elements: !2201)
!2201 = !{!2202}
!2202 = !DISubrange(count: 6)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2193, file: !2152, line: 121, baseType: !97, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2189, file: !2152, line: 123, baseType: !2205, size: 64, offset: 128)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2152, line: 96, flags: DIFlagFwdDecl)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2189, file: !2152, line: 124, baseType: !2208, size: 64, offset: 192)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2152, line: 102, size: 192, elements: !2210)
!2210 = !{!2211, !2212, !2213}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2209, file: !2152, line: 103, baseType: !374, size: 128, align: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2209, file: !2152, line: 104, baseType: !125, size: 32, offset: 128)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2209, file: !2152, line: 105, baseType: !491, size: 8, offset: 160)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2189, file: !2152, line: 125, baseType: !460, size: 64, offset: 256)
!2215 = !DIDerivedType(tag: DW_TAG_member, scope: !2186, file: !2152, line: 241, baseType: !2216, size: 320)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2186, file: !2152, line: 241, size: 320, elements: !2217)
!2217 = !{!2218, !2219, !2220, !2221, !2222}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2216, file: !2152, line: 242, baseType: !97, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2216, file: !2152, line: 243, baseType: !97, size: 64, offset: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2216, file: !2152, line: 244, baseType: !2205, size: 64, offset: 128)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2216, file: !2152, line: 245, baseType: !2208, size: 64, offset: 192)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2216, file: !2152, line: 246, baseType: !486, size: 64, offset: 256)
!2223 = !DIDerivedType(tag: DW_TAG_member, scope: !2151, file: !2152, line: 254, baseType: !2224, size: 256, offset: 1344)
!2224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2151, file: !2152, line: 254, size: 256, elements: !2225)
!2225 = !{!2226, !2232}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2224, file: !2152, line: 255, baseType: !2227, size: 256)
!2227 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2152, line: 128, size: 256, elements: !2228)
!2228 = !{!2229, !2230}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2227, file: !2152, line: 129, baseType: !103, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2227, file: !2152, line: 130, baseType: !2231, size: 256)
!2231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 256, elements: !2102)
!2232 = !DIDerivedType(tag: DW_TAG_member, scope: !2224, file: !2152, line: 256, baseType: !2233, size: 256)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2224, file: !2152, line: 256, size: 256, elements: !2234)
!2234 = !{!2235, !2236}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2233, file: !2152, line: 258, baseType: !162, size: 128)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2233, file: !2152, line: 259, baseType: !2237, size: 128, offset: 128)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2238, line: 22, size: 128, elements: !2239)
!2238 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!2239 = !{!2240, !2243}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2237, file: !2238, line: 23, baseType: !2241, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2238, line: 23, flags: DIFlagFwdDecl)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2237, file: !2238, line: 24, baseType: !97, size: 64, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2151, file: !2152, line: 274, baseType: !2245, size: 64, offset: 1600)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2152, line: 170, size: 192, elements: !2247)
!2247 = !{!2248, !2257, !2258}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2246, file: !2152, line: 171, baseType: !2249, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2152, line: 165, baseType: !2250)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!133, !2150, !2253, !2255, !2150}
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2206)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2227)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2246, file: !2152, line: 172, baseType: !2150, size: 64, offset: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2246, file: !2152, line: 173, baseType: !2205, size: 64, offset: 128)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2122, file: !2123, line: 138, baseType: !2150, size: 64, offset: 768)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2122, file: !2123, line: 139, baseType: !2150, size: 64, offset: 832)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2122, file: !2123, line: 140, baseType: !2150, size: 64, offset: 896)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2122, file: !2123, line: 145, baseType: !2263, size: 64, offset: 960)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2265, line: 13, size: 896, elements: !2266)
!2265 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!2266 = !{!2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2264, file: !2265, line: 14, baseType: !125, size: 32)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2264, file: !2265, line: 15, baseType: !129, size: 32, offset: 32)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2264, file: !2265, line: 16, baseType: !129, size: 32, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2264, file: !2265, line: 21, baseType: !730, size: 64, offset: 128)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2264, file: !2265, line: 27, baseType: !97, size: 64, offset: 192)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2264, file: !2265, line: 28, baseType: !97, size: 64, offset: 256)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2264, file: !2265, line: 29, baseType: !730, size: 64, offset: 320)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2264, file: !2265, line: 32, baseType: !110, size: 128, offset: 384)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2264, file: !2265, line: 33, baseType: !432, size: 32, offset: 512)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2264, file: !2265, line: 37, baseType: !730, size: 64, offset: 576)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2264, file: !2265, line: 44, baseType: !2278, size: 256, offset: 640)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2279, line: 15, size: 256, elements: !2280)
!2279 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2280 = !{!2281, !2282, !2283, !2284, !2285, !2286, !2287}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2278, file: !2279, line: 16, baseType: !236)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2278, file: !2279, line: 18, baseType: !133, size: 32)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2278, file: !2279, line: 19, baseType: !133, size: 32, offset: 32)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2278, file: !2279, line: 20, baseType: !133, size: 32, offset: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2278, file: !2279, line: 21, baseType: !133, size: 32, offset: 96)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2278, file: !2279, line: 22, baseType: !97, size: 64, offset: 128)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2278, file: !2279, line: 23, baseType: !97, size: 64, offset: 192)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2122, file: !2123, line: 146, baseType: !1422, size: 64, offset: 1024)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2122, file: !2123, line: 147, baseType: !2290, size: 64, offset: 1088)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2123, line: 25, size: 64, elements: !2292)
!2292 = !{!2293, !2294, !2295}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2291, file: !2123, line: 26, baseType: !129, size: 32)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2291, file: !2123, line: 27, baseType: !133, size: 32, offset: 32)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2291, file: !2123, line: 28, baseType: !2296, offset: 64)
!2296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, elements: !2297)
!2297 = !{!2298}
!2298 = !DISubrange(count: 0)
!2299 = !DIDerivedType(tag: DW_TAG_member, scope: !2122, file: !2123, line: 149, baseType: !2300, size: 128, offset: 1152)
!2300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2122, file: !2123, line: 149, size: 128, elements: !2301)
!2301 = !{!2302, !2303}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2300, file: !2123, line: 150, baseType: !133, size: 32)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2300, file: !2123, line: 151, baseType: !374, size: 128, align: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !362, file: !29, line: 938, baseType: !2305, size: 256, offset: 1088)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !29, line: 896, size: 256, elements: !2306)
!2306 = !{!2307, !2308, !2309, !2310, !2311, !2312}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2305, file: !29, line: 897, baseType: !97, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2305, file: !29, line: 898, baseType: !5, size: 32, offset: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2305, file: !29, line: 899, baseType: !5, size: 32, offset: 96)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2305, file: !29, line: 902, baseType: !5, size: 32, offset: 128)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2305, file: !29, line: 903, baseType: !5, size: 32, offset: 160)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2305, file: !29, line: 904, baseType: !532, size: 64, offset: 192)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !362, file: !29, line: 940, baseType: !169, size: 64, offset: 1344)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !362, file: !29, line: 945, baseType: !103, size: 64, offset: 1408)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !362, file: !29, line: 949, baseType: !162, size: 128, offset: 1472)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !362, file: !29, line: 950, baseType: !162, size: 128, offset: 1600)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !362, file: !29, line: 952, baseType: !791, size: 64, offset: 1728)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !362, file: !29, line: 953, baseType: !941, size: 32, offset: 1792)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !362, file: !29, line: 954, baseType: !941, size: 32, offset: 1824)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !328, file: !321, line: 362, baseType: !103, size: 64, offset: 1344)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !328, file: !321, line: 365, baseType: !730, size: 64, offset: 1408)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !328, file: !321, line: 373, baseType: !2323, offset: 1472)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !321, line: 296, elements: !178)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !324, file: !321, line: 391, baseType: !282, size: 64, offset: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !324, file: !321, line: 392, baseType: !169, size: 64, offset: 128)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !324, file: !321, line: 394, baseType: !1686, size: 64, offset: 192)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !324, file: !321, line: 398, baseType: !97, size: 64, offset: 256)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !324, file: !321, line: 399, baseType: !97, size: 64, offset: 320)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !324, file: !321, line: 405, baseType: !97, size: 64, offset: 384)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !324, file: !321, line: 406, baseType: !97, size: 64, offset: 448)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !324, file: !321, line: 407, baseType: !2332, size: 64, offset: 512)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !339, line: 286, baseType: !2334)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !339, line: 286, size: 64, elements: !2335)
!2335 = !{!2336}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2334, file: !339, line: 286, baseType: !2337, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !344, line: 18, baseType: !97)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !324, file: !321, line: 416, baseType: !129, size: 32, offset: 576)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !324, file: !321, line: 428, baseType: !129, size: 32, offset: 608)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !324, file: !321, line: 437, baseType: !129, size: 32, offset: 640)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !324, file: !321, line: 447, baseType: !129, size: 32, offset: 672)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !324, file: !321, line: 450, baseType: !730, size: 64, offset: 704)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !324, file: !321, line: 452, baseType: !133, size: 32, offset: 768)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !324, file: !321, line: 454, baseType: !737, offset: 800)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !324, file: !321, line: 457, baseType: !807, size: 256, offset: 832)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !324, file: !321, line: 459, baseType: !162, size: 128, offset: 1088)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !324, file: !321, line: 466, baseType: !97, size: 64, offset: 1216)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !324, file: !321, line: 467, baseType: !97, size: 64, offset: 1280)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !324, file: !321, line: 469, baseType: !97, size: 64, offset: 1344)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !324, file: !321, line: 470, baseType: !97, size: 64, offset: 1408)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !324, file: !321, line: 471, baseType: !732, size: 64, offset: 1472)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !324, file: !321, line: 472, baseType: !97, size: 64, offset: 1536)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !324, file: !321, line: 473, baseType: !97, size: 64, offset: 1600)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !324, file: !321, line: 474, baseType: !97, size: 64, offset: 1664)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !324, file: !321, line: 475, baseType: !97, size: 64, offset: 1728)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !324, file: !321, line: 477, baseType: !737, offset: 1792)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !324, file: !321, line: 478, baseType: !97, size: 64, offset: 1792)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !324, file: !321, line: 478, baseType: !97, size: 64, offset: 1856)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !324, file: !321, line: 478, baseType: !97, size: 64, offset: 1920)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !324, file: !321, line: 478, baseType: !97, size: 64, offset: 1984)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !324, file: !321, line: 479, baseType: !97, size: 64, offset: 2048)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !324, file: !321, line: 479, baseType: !97, size: 64, offset: 2112)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !324, file: !321, line: 479, baseType: !97, size: 64, offset: 2176)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !324, file: !321, line: 480, baseType: !97, size: 64, offset: 2240)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !324, file: !321, line: 480, baseType: !97, size: 64, offset: 2304)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !324, file: !321, line: 480, baseType: !97, size: 64, offset: 2368)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !324, file: !321, line: 480, baseType: !97, size: 64, offset: 2432)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !324, file: !321, line: 482, baseType: !2369, size: 2816, offset: 2496)
!2369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 2816, elements: !2370)
!2370 = !{!2371}
!2371 = !DISubrange(count: 44)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !324, file: !321, line: 488, baseType: !2373, size: 256, offset: 5312)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2374, line: 60, size: 256, elements: !2375)
!2374 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2375 = !{!2376}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2373, file: !2374, line: 61, baseType: !2377, size: 256)
!2377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !730, size: 256, elements: !2102)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !324, file: !321, line: 490, baseType: !2379, size: 64, offset: 5568)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !321, line: 490, flags: DIFlagFwdDecl)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !324, file: !321, line: 493, baseType: !2382, size: 896, offset: 5632)
!2382 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2383, line: 53, baseType: !2384)
!2383 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2383, line: 13, size: 896, elements: !2385)
!2385 = !{!2386, !2387, !2388, !2389, !2392, !2393, !2394, !2395, !2399, !2400, !2401}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2384, file: !2383, line: 18, baseType: !169, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2384, file: !2383, line: 28, baseType: !732, size: 64, offset: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2384, file: !2383, line: 31, baseType: !807, size: 256, offset: 128)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2384, file: !2383, line: 32, baseType: !2390, size: 64, offset: 384)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2383, line: 32, flags: DIFlagFwdDecl)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2384, file: !2383, line: 37, baseType: !187, size: 16, offset: 448)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2384, file: !2383, line: 40, baseType: !726, size: 192, offset: 512)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2384, file: !2383, line: 41, baseType: !103, size: 64, offset: 704)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2384, file: !2383, line: 42, baseType: !2396, size: 64, offset: 768)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2398)
!2398 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2383, line: 42, flags: DIFlagFwdDecl)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2384, file: !2383, line: 44, baseType: !129, size: 32, offset: 832)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2384, file: !2383, line: 50, baseType: !891, size: 16, offset: 864)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2384, file: !2383, line: 51, baseType: !2402, size: 16, offset: 880)
!2402 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !100, line: 18, baseType: !2403)
!2403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !102, line: 23, baseType: !2183)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !324, file: !321, line: 495, baseType: !97, size: 64, offset: 6528)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !324, file: !321, line: 497, baseType: !2406, size: 64, offset: 6592)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !321, line: 381, size: 384, elements: !2408)
!2408 = !{!2409, !2410, !2416}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2407, file: !321, line: 382, baseType: !129, size: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2407, file: !321, line: 383, baseType: !2411, size: 128, offset: 64)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !321, line: 376, size: 128, elements: !2412)
!2412 = !{!2413, !2414}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2411, file: !321, line: 377, baseType: !115, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2411, file: !321, line: 378, baseType: !2415, size: 64, offset: 64)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2407, file: !321, line: 384, baseType: !2417, size: 192, offset: 192)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2418, line: 26, size: 192, elements: !2419)
!2418 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2419 = !{!2420, !2421}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2417, file: !2418, line: 27, baseType: !5, size: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2417, file: !2418, line: 28, baseType: !2422, size: 128, offset: 64)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2423, line: 43, size: 128, elements: !2424)
!2423 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2424 = !{!2425, !2426}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2422, file: !2423, line: 44, baseType: !236)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2422, file: !2423, line: 45, baseType: !162, size: 128)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !324, file: !321, line: 500, baseType: !737, offset: 6656)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !324, file: !321, line: 501, baseType: !2429, size: 64, offset: 6656)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !321, line: 387, flags: DIFlagFwdDecl)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !324, file: !321, line: 516, baseType: !1422, size: 64, offset: 6720)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !324, file: !321, line: 519, baseType: !361, size: 64, offset: 6784)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !324, file: !321, line: 521, baseType: !2434, size: 64, offset: 6848)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !321, line: 521, flags: DIFlagFwdDecl)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !324, file: !321, line: 545, baseType: !129, size: 32, offset: 6912)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !324, file: !321, line: 548, baseType: !491, size: 8, offset: 6944)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !324, file: !321, line: 550, baseType: !2439, offset: 6952)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2440, line: 142, elements: !178)
!2440 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !324, file: !321, line: 554, baseType: !1442, size: 256, offset: 6976)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !324, file: !321, line: 557, baseType: !99, size: 32, offset: 7232)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !320, file: !321, line: 565, baseType: !2444, offset: 7296)
!2444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, elements: !2445)
!2445 = !{!2446}
!2446 = !DISubrange(count: -1)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !116, file: !117, line: 758, baseType: !319, size: 64, offset: 3968)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !116, file: !117, line: 761, baseType: !2449, size: 320, offset: 4032)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2374, line: 34, size: 320, elements: !2450)
!2450 = !{!2451, !2452}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2449, file: !2374, line: 35, baseType: !169, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2449, file: !2374, line: 36, baseType: !2453, size: 256, offset: 64)
!2453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 256, elements: !2102)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !116, file: !117, line: 766, baseType: !133, size: 32, offset: 4352)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !116, file: !117, line: 767, baseType: !133, size: 32, offset: 4384)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !116, file: !117, line: 768, baseType: !133, size: 32, offset: 4416)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !116, file: !117, line: 770, baseType: !133, size: 32, offset: 4448)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !116, file: !117, line: 772, baseType: !97, size: 64, offset: 4480)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !116, file: !117, line: 775, baseType: !5, size: 32, offset: 4544)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !116, file: !117, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !116, file: !117, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !116, file: !117, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !116, file: !117, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !116, file: !117, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !116, file: !117, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !116, file: !117, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !116, file: !117, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !116, file: !117, line: 831, baseType: !97, size: 64, offset: 4672)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !116, file: !117, line: 833, baseType: !2470, size: 384, offset: 4736)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !17, line: 25, size: 384, elements: !2471)
!2471 = !{!2472, !2477}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2470, file: !17, line: 26, baseType: !2473, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!122, !2476}
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, scope: !2470, file: !17, line: 27, baseType: !2478, size: 320, offset: 64)
!2478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2470, file: !17, line: 27, size: 320, elements: !2479)
!2479 = !{!2480, !2490, !2515}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2478, file: !17, line: 36, baseType: !2481, size: 320)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2478, file: !17, line: 29, size: 320, elements: !2482)
!2482 = !{!2483, !2485, !2486, !2487, !2488, !2489}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2481, file: !17, line: 30, baseType: !2484, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2481, file: !17, line: 31, baseType: !99, size: 32, offset: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2481, file: !17, line: 32, baseType: !99, size: 32, offset: 96)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2481, file: !17, line: 33, baseType: !99, size: 32, offset: 128)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2481, file: !17, line: 34, baseType: !169, size: 64, offset: 192)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2481, file: !17, line: 35, baseType: !2484, size: 64, offset: 256)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2478, file: !17, line: 46, baseType: !2491, size: 192)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2478, file: !17, line: 38, size: 192, elements: !2492)
!2492 = !{!2493, !2494, !2495, !2514}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2491, file: !17, line: 39, baseType: !261, size: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2491, file: !17, line: 40, baseType: !16, size: 32, offset: 32)
!2495 = !DIDerivedType(tag: DW_TAG_member, scope: !2491, file: !17, line: 41, baseType: !2496, size: 64, offset: 64)
!2496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2491, file: !17, line: 41, size: 64, elements: !2497)
!2497 = !{!2498, !2506}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2496, file: !17, line: 42, baseType: !2499, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2501, line: 7, size: 128, elements: !2502)
!2501 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2502 = !{!2503, !2505}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2500, file: !2501, line: 8, baseType: !2504, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !263, line: 93, baseType: !203)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2500, file: !2501, line: 9, baseType: !203, size: 64, offset: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2496, file: !17, line: 43, baseType: !2507, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2509, line: 7, size: 64, elements: !2510)
!2509 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2510 = !{!2511, !2513}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2508, file: !2509, line: 8, baseType: !2512, size: 32)
!2512 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2509, line: 5, baseType: !2158)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2508, file: !2509, line: 9, baseType: !2158, size: 32, offset: 32)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2491, file: !17, line: 45, baseType: !169, size: 64, offset: 128)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2478, file: !17, line: 54, baseType: !2516, size: 256)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2478, file: !17, line: 48, size: 256, elements: !2517)
!2517 = !{!2518, !2521, !2522, !2523, !2524}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2516, file: !17, line: 49, baseType: !2519, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !17, line: 14, flags: DIFlagFwdDecl)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2516, file: !17, line: 50, baseType: !133, size: 32, offset: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2516, file: !17, line: 51, baseType: !133, size: 32, offset: 96)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2516, file: !17, line: 52, baseType: !97, size: 64, offset: 128)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2516, file: !17, line: 53, baseType: !97, size: 64, offset: 192)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !116, file: !117, line: 835, baseType: !2526, size: 32, offset: 5120)
!2526 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !105, line: 22, baseType: !2527)
!2527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !263, line: 28, baseType: !133)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !116, file: !117, line: 836, baseType: !2526, size: 32, offset: 5152)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !116, file: !117, line: 840, baseType: !97, size: 64, offset: 5184)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !116, file: !117, line: 849, baseType: !115, size: 64, offset: 5248)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !116, file: !117, line: 852, baseType: !115, size: 64, offset: 5312)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !116, file: !117, line: 857, baseType: !162, size: 128, offset: 5376)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !116, file: !117, line: 858, baseType: !162, size: 128, offset: 5504)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !116, file: !117, line: 859, baseType: !115, size: 64, offset: 5632)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !116, file: !117, line: 867, baseType: !162, size: 128, offset: 5696)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !116, file: !117, line: 868, baseType: !162, size: 128, offset: 5824)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !116, file: !117, line: 871, baseType: !2094, size: 64, offset: 5952)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !116, file: !117, line: 872, baseType: !2539, size: 512, offset: 6016)
!2539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 512, elements: !2102)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !116, file: !117, line: 873, baseType: !162, size: 128, offset: 6528)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !116, file: !117, line: 874, baseType: !162, size: 128, offset: 6656)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !116, file: !117, line: 876, baseType: !2543, size: 64, offset: 6784)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !116, file: !117, line: 879, baseType: !708, size: 64, offset: 6848)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !116, file: !117, line: 882, baseType: !708, size: 64, offset: 6912)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !116, file: !117, line: 884, baseType: !169, size: 64, offset: 6976)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !116, file: !117, line: 885, baseType: !169, size: 64, offset: 7040)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !116, file: !117, line: 890, baseType: !169, size: 64, offset: 7104)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !116, file: !117, line: 891, baseType: !2550, size: 128, offset: 7168)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !117, line: 242, size: 128, elements: !2551)
!2551 = !{!2552, !2553, !2554}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2550, file: !117, line: 244, baseType: !169, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2550, file: !117, line: 245, baseType: !169, size: 64, offset: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2550, file: !117, line: 246, baseType: !236, offset: 128)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !116, file: !117, line: 900, baseType: !97, size: 64, offset: 7296)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !116, file: !117, line: 901, baseType: !97, size: 64, offset: 7360)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !116, file: !117, line: 904, baseType: !169, size: 64, offset: 7424)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !116, file: !117, line: 907, baseType: !169, size: 64, offset: 7488)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !116, file: !117, line: 910, baseType: !97, size: 64, offset: 7552)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !116, file: !117, line: 911, baseType: !97, size: 64, offset: 7616)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !116, file: !117, line: 914, baseType: !2562, size: 640, offset: 7680)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2563, line: 123, size: 640, elements: !2564)
!2563 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2564 = !{!2565, !2571, !2572}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2562, file: !2563, line: 124, baseType: !2566, size: 576)
!2566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2567, size: 576, elements: !652)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2563, line: 108, size: 192, elements: !2568)
!2568 = !{!2569, !2570}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2567, file: !2563, line: 109, baseType: !169, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2567, file: !2563, line: 110, baseType: !276, size: 128, offset: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2562, file: !2563, line: 125, baseType: !5, size: 32, offset: 576)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2562, file: !2563, line: 126, baseType: !5, size: 32, offset: 608)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !116, file: !117, line: 917, baseType: !2574, size: 192, offset: 8320)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2563, line: 134, size: 192, elements: !2575)
!2575 = !{!2576, !2577}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2574, file: !2563, line: 135, baseType: !374, size: 128, align: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2574, file: !2563, line: 136, baseType: !5, size: 32, offset: 128)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !116, file: !117, line: 923, baseType: !2120, size: 64, offset: 8512)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !116, file: !117, line: 926, baseType: !2120, size: 64, offset: 8576)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !116, file: !117, line: 929, baseType: !2120, size: 64, offset: 8640)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !116, file: !117, line: 933, baseType: !2150, size: 64, offset: 8704)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !116, file: !117, line: 943, baseType: !2583, size: 128, offset: 8768)
!2583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 128, elements: !1331)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !116, file: !117, line: 945, baseType: !2585, size: 64, offset: 8896)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !117, line: 49, flags: DIFlagFwdDecl)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !116, file: !117, line: 956, baseType: !2588, size: 64, offset: 8960)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !117, line: 45, flags: DIFlagFwdDecl)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !116, file: !117, line: 959, baseType: !2591, size: 64, offset: 9024)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !117, line: 959, flags: DIFlagFwdDecl)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !116, file: !117, line: 962, baseType: !2594, size: 64, offset: 9088)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !117, line: 66, flags: DIFlagFwdDecl)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !116, file: !117, line: 966, baseType: !2597, size: 64, offset: 9152)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !117, line: 50, flags: DIFlagFwdDecl)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !116, file: !117, line: 969, baseType: !2600, size: 64, offset: 9216)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2602, line: 82, size: 7296, elements: !2603)
!2602 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2603 = !{!2604, !2605, !2606, !2607, !2608, !2609, !2610, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2639, !2648, !2649, !2651, !2652, !2653, !3366, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3396, !3397, !3404, !3405, !3406, !3407, !3408, !3409}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2601, file: !2602, line: 83, baseType: !125, size: 32)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2601, file: !2602, line: 84, baseType: !129, size: 32, offset: 32)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2601, file: !2602, line: 85, baseType: !133, size: 32, offset: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2601, file: !2602, line: 86, baseType: !162, size: 128, offset: 128)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2601, file: !2602, line: 88, baseType: !1284, size: 128, offset: 256)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2601, file: !2602, line: 91, baseType: !115, size: 64, offset: 384)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2601, file: !2602, line: 94, baseType: !2611, size: 192, offset: 448)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2612, line: 30, size: 192, elements: !2613)
!2612 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2613 = !{!2614, !2615}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2611, file: !2612, line: 31, baseType: !162, size: 128)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2611, file: !2612, line: 32, baseType: !2616, size: 64, offset: 128)
!2616 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2617, line: 25, baseType: !2618)
!2617 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2617, line: 23, size: 64, elements: !2619)
!2619 = !{!2620}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2618, file: !2617, line: 24, baseType: !311, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2601, file: !2602, line: 97, baseType: !642, size: 64, offset: 640)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2601, file: !2602, line: 100, baseType: !133, size: 32, offset: 704)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2601, file: !2602, line: 106, baseType: !133, size: 32, offset: 736)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2601, file: !2602, line: 107, baseType: !115, size: 64, offset: 768)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2601, file: !2602, line: 110, baseType: !133, size: 32, offset: 832)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2601, file: !2602, line: 111, baseType: !5, size: 32, offset: 864)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2601, file: !2602, line: 122, baseType: !5, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2601, file: !2602, line: 123, baseType: !5, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2601, file: !2602, line: 128, baseType: !133, size: 32, offset: 928)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2601, file: !2602, line: 129, baseType: !162, size: 128, offset: 960)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2601, file: !2602, line: 132, baseType: !211, size: 512, offset: 1088)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2601, file: !2602, line: 133, baseType: !219, size: 64, offset: 1600)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2601, file: !2602, line: 140, baseType: !2634, size: 256, offset: 1664)
!2634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2635, size: 256, elements: !2142)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2602, line: 38, size: 128, elements: !2636)
!2636 = !{!2637, !2638}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2635, file: !2602, line: 39, baseType: !169, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2635, file: !2602, line: 40, baseType: !169, size: 64, offset: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2601, file: !2602, line: 146, baseType: !2640, size: 192, offset: 1920)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2602, line: 66, size: 192, elements: !2641)
!2641 = !{!2642}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2640, file: !2602, line: 67, baseType: !2643, size: 192)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2602, line: 47, size: 192, elements: !2644)
!2644 = !{!2645, !2646, !2647}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2643, file: !2602, line: 48, baseType: !732, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2643, file: !2602, line: 49, baseType: !732, size: 64, offset: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2643, file: !2602, line: 50, baseType: !732, size: 64, offset: 128)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2601, file: !2602, line: 150, baseType: !2562, size: 640, offset: 2112)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2601, file: !2602, line: 153, baseType: !2650, size: 256, offset: 2752)
!2650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2094, size: 256, elements: !2102)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2601, file: !2602, line: 159, baseType: !2094, size: 64, offset: 3008)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2601, file: !2602, line: 162, baseType: !133, size: 32, offset: 3072)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2601, file: !2602, line: 164, baseType: !2654, size: 64, offset: 3136)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2656, line: 285, size: 5056, elements: !2657)
!2656 = !DIFile(filename: "./include/linux/tty.h", directory: "/home/lizy2001/genbc/linux")
!2657 = !{!2658, !2659, !2660, !3006, !3265, !3266, !3267, !3276, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2655, file: !2656, line: 286, baseType: !133, size: 32)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2655, file: !2656, line: 287, baseType: !2028, size: 32, offset: 32)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2655, file: !2656, line: 288, baseType: !2661, size: 64, offset: 64)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !58, line: 461, size: 5568, elements: !2663)
!2663 = !{!2664, !2665, !2666, !2669, !2670, !2721, !2794, !2795, !2796, !2797, !2798, !2807, !2912, !2925, !2928, !2929, !2933, !2935, !2936, !2937, !2941, !2947, !2948, !2951, !2955, !2958, !2959, !2960, !2961, !2962, !2994, !2995, !2996, !2999, !3002, !3003, !3004, !3005}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2662, file: !58, line: 462, baseType: !1748, size: 512)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2662, file: !58, line: 463, baseType: !2661, size: 64, offset: 512)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2662, file: !58, line: 465, baseType: !2667, size: 64, offset: 576)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !58, line: 36, flags: DIFlagFwdDecl)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2662, file: !58, line: 467, baseType: !460, size: 64, offset: 640)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2662, file: !58, line: 468, baseType: !2671, size: 64, offset: 704)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2673)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !58, line: 87, size: 384, elements: !2674)
!2674 = !{!2675, !2676, !2677, !2681, !2686, !2690}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2673, file: !58, line: 88, baseType: !460, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2673, file: !58, line: 89, baseType: !1827, size: 64, offset: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2673, file: !58, line: 90, baseType: !2678, size: 64, offset: 128)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!133, !2661, !1782}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2673, file: !58, line: 91, baseType: !2682, size: 64, offset: 192)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!486, !2661, !2685, !1897, !1898}
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2673, file: !58, line: 93, baseType: !2687, size: 64, offset: 256)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{null, !2661}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2673, file: !58, line: 95, baseType: !2691, size: 64, offset: 320)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2693)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !65, line: 278, size: 1472, elements: !2694)
!2694 = !{!2695, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2693, file: !65, line: 279, baseType: !2696, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!133, !2661}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2693, file: !65, line: 280, baseType: !2687, size: 64, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2693, file: !65, line: 281, baseType: !2696, size: 64, offset: 128)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2693, file: !65, line: 282, baseType: !2696, size: 64, offset: 192)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2693, file: !65, line: 283, baseType: !2696, size: 64, offset: 256)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2693, file: !65, line: 284, baseType: !2696, size: 64, offset: 320)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2693, file: !65, line: 285, baseType: !2696, size: 64, offset: 384)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2693, file: !65, line: 286, baseType: !2696, size: 64, offset: 448)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2693, file: !65, line: 287, baseType: !2696, size: 64, offset: 512)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2693, file: !65, line: 288, baseType: !2696, size: 64, offset: 576)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2693, file: !65, line: 289, baseType: !2696, size: 64, offset: 640)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2693, file: !65, line: 290, baseType: !2696, size: 64, offset: 704)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2693, file: !65, line: 291, baseType: !2696, size: 64, offset: 768)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2693, file: !65, line: 292, baseType: !2696, size: 64, offset: 832)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2693, file: !65, line: 293, baseType: !2696, size: 64, offset: 896)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2693, file: !65, line: 294, baseType: !2696, size: 64, offset: 960)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2693, file: !65, line: 295, baseType: !2696, size: 64, offset: 1024)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2693, file: !65, line: 296, baseType: !2696, size: 64, offset: 1088)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2693, file: !65, line: 297, baseType: !2696, size: 64, offset: 1152)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2693, file: !65, line: 298, baseType: !2696, size: 64, offset: 1216)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2693, file: !65, line: 299, baseType: !2696, size: 64, offset: 1280)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2693, file: !65, line: 300, baseType: !2696, size: 64, offset: 1344)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2693, file: !65, line: 301, baseType: !2696, size: 64, offset: 1408)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2662, file: !58, line: 470, baseType: !2722, size: 64, offset: 768)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2724, line: 82, size: 1408, elements: !2725)
!2724 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!2725 = !{!2726, !2727, !2728, !2729, !2730, !2731, !2732, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2789, !2792, !2793}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2723, file: !2724, line: 83, baseType: !460, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2723, file: !2724, line: 84, baseType: !460, size: 64, offset: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !2723, file: !2724, line: 85, baseType: !2661, size: 64, offset: 128)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2723, file: !2724, line: 86, baseType: !1827, size: 64, offset: 192)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2723, file: !2724, line: 87, baseType: !1827, size: 64, offset: 256)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2723, file: !2724, line: 88, baseType: !1827, size: 64, offset: 320)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2723, file: !2724, line: 90, baseType: !2733, size: 64, offset: 384)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!133, !2661, !2736}
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !52, line: 95, size: 1152, elements: !2738)
!2738 = !{!2739, !2740, !2741, !2742, !2743, !2744, !2745, !2749, !2753, !2754, !2755, !2756, !2757, !2765, !2766, !2767, !2768, !2769, !2770}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2737, file: !52, line: 96, baseType: !460, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2737, file: !52, line: 97, baseType: !2722, size: 64, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2737, file: !52, line: 99, baseType: !637, size: 64, offset: 128)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2737, file: !52, line: 100, baseType: !460, size: 64, offset: 192)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2737, file: !52, line: 102, baseType: !491, size: 8, offset: 256)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2737, file: !52, line: 103, baseType: !51, size: 32, offset: 288)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2737, file: !52, line: 105, baseType: !2746, size: 64, offset: 320)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2748)
!2748 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !52, line: 105, flags: DIFlagFwdDecl)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2737, file: !52, line: 106, baseType: !2750, size: 64, offset: 384)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2752)
!2752 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !52, line: 106, flags: DIFlagFwdDecl)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2737, file: !52, line: 108, baseType: !2696, size: 64, offset: 448)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2737, file: !52, line: 109, baseType: !2687, size: 64, offset: 512)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2737, file: !52, line: 110, baseType: !2696, size: 64, offset: 576)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2737, file: !52, line: 111, baseType: !2687, size: 64, offset: 640)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2737, file: !52, line: 112, baseType: !2758, size: 64, offset: 704)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!133, !2661, !2761}
!2761 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !65, line: 52, baseType: !2762)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !65, line: 50, size: 32, elements: !2763)
!2763 = !{!2764}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2762, file: !65, line: 51, baseType: !133, size: 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2737, file: !52, line: 113, baseType: !2696, size: 64, offset: 768)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2737, file: !52, line: 114, baseType: !1827, size: 64, offset: 832)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2737, file: !52, line: 115, baseType: !1827, size: 64, offset: 896)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2737, file: !52, line: 117, baseType: !2691, size: 64, offset: 960)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2737, file: !52, line: 118, baseType: !2687, size: 64, offset: 1024)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2737, file: !52, line: 120, baseType: !2771, size: 64, offset: 1088)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !52, line: 120, flags: DIFlagFwdDecl)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2723, file: !2724, line: 91, baseType: !2678, size: 64, offset: 448)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2723, file: !2724, line: 92, baseType: !2696, size: 64, offset: 512)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2723, file: !2724, line: 93, baseType: !2687, size: 64, offset: 576)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2723, file: !2724, line: 94, baseType: !2696, size: 64, offset: 640)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2723, file: !2724, line: 95, baseType: !2687, size: 64, offset: 704)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2723, file: !2724, line: 97, baseType: !2696, size: 64, offset: 768)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2723, file: !2724, line: 98, baseType: !2696, size: 64, offset: 832)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2723, file: !2724, line: 100, baseType: !2758, size: 64, offset: 896)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2723, file: !2724, line: 101, baseType: !2696, size: 64, offset: 960)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2723, file: !2724, line: 103, baseType: !2696, size: 64, offset: 1024)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2723, file: !2724, line: 105, baseType: !2696, size: 64, offset: 1088)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2723, file: !2724, line: 107, baseType: !2691, size: 64, offset: 1152)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2723, file: !2724, line: 109, baseType: !2786, size: 64, offset: 1216)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2788)
!2788 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2724, line: 109, flags: DIFlagFwdDecl)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2723, file: !2724, line: 111, baseType: !2790, size: 64, offset: 1280)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !2724, line: 111, flags: DIFlagFwdDecl)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !2723, file: !2724, line: 112, baseType: !646, offset: 1344)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2723, file: !2724, line: 114, baseType: !491, size: 8, offset: 1344)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2662, file: !58, line: 471, baseType: !2736, size: 64, offset: 832)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2662, file: !58, line: 473, baseType: !103, size: 64, offset: 896)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2662, file: !58, line: 475, baseType: !103, size: 64, offset: 960)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2662, file: !58, line: 480, baseType: !726, size: 192, offset: 1024)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2662, file: !58, line: 484, baseType: !2799, size: 576, offset: 1216)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !58, line: 361, size: 576, elements: !2800)
!2800 = !{!2801, !2802, !2803, !2804, !2805, !2806}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2799, file: !58, line: 362, baseType: !162, size: 128)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2799, file: !58, line: 363, baseType: !162, size: 128, offset: 128)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !2799, file: !58, line: 364, baseType: !162, size: 128, offset: 256)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !2799, file: !58, line: 365, baseType: !162, size: 128, offset: 384)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !2799, file: !58, line: 366, baseType: !491, size: 8, offset: 512)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2799, file: !58, line: 367, baseType: !57, size: 32, offset: 544)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2662, file: !58, line: 485, baseType: !2808, size: 2304, offset: 1792)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !65, line: 565, size: 2304, elements: !2809)
!2809 = !{!2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2905, !2909}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2808, file: !65, line: 566, baseType: !2761, size: 32)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2808, file: !65, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2808, file: !65, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2808, file: !65, line: 569, baseType: !491, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2808, file: !65, line: 570, baseType: !491, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2808, file: !65, line: 571, baseType: !491, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2808, file: !65, line: 572, baseType: !491, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2808, file: !65, line: 573, baseType: !491, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2808, file: !65, line: 574, baseType: !491, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2808, file: !65, line: 575, baseType: !491, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2808, file: !65, line: 576, baseType: !491, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2808, file: !65, line: 577, baseType: !99, size: 32, offset: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2808, file: !65, line: 578, baseType: !737, offset: 96)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2808, file: !65, line: 580, baseType: !162, size: 128, offset: 128)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2808, file: !65, line: 581, baseType: !2417, size: 192, offset: 256)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2808, file: !65, line: 582, baseType: !2826, size: 64, offset: 448)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2828, line: 43, size: 1472, elements: !2829)
!2828 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!2829 = !{!2830, !2831, !2832, !2833, !2834, !2837, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2827, file: !2828, line: 44, baseType: !460, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2827, file: !2828, line: 45, baseType: !133, size: 32, offset: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2827, file: !2828, line: 46, baseType: !162, size: 128, offset: 128)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2827, file: !2828, line: 47, baseType: !737, offset: 256)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2827, file: !2828, line: 48, baseType: !2835, size: 64, offset: 256)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !65, line: 533, flags: DIFlagFwdDecl)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2827, file: !2828, line: 49, baseType: !2838, size: 320, offset: 320)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2839, line: 11, size: 320, elements: !2840)
!2839 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!2840 = !{!2841, !2842, !2843, !2848}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2838, file: !2839, line: 16, baseType: !110, size: 128)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2838, file: !2839, line: 17, baseType: !97, size: 64, offset: 128)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2838, file: !2839, line: 18, baseType: !2844, size: 64, offset: 192)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{null, !2847}
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2838, file: !2839, line: 19, baseType: !99, size: 32, offset: 256)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2827, file: !2828, line: 50, baseType: !97, size: 64, offset: 640)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2827, file: !2828, line: 51, baseType: !219, size: 64, offset: 704)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2827, file: !2828, line: 52, baseType: !219, size: 64, offset: 768)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2827, file: !2828, line: 53, baseType: !219, size: 64, offset: 832)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2827, file: !2828, line: 54, baseType: !219, size: 64, offset: 896)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2827, file: !2828, line: 55, baseType: !219, size: 64, offset: 960)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2827, file: !2828, line: 56, baseType: !97, size: 64, offset: 1024)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2827, file: !2828, line: 57, baseType: !97, size: 64, offset: 1088)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2827, file: !2828, line: 58, baseType: !97, size: 64, offset: 1152)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2827, file: !2828, line: 59, baseType: !97, size: 64, offset: 1216)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2827, file: !2828, line: 60, baseType: !97, size: 64, offset: 1280)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2827, file: !2828, line: 61, baseType: !2661, size: 64, offset: 1344)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2827, file: !2828, line: 62, baseType: !491, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2827, file: !2828, line: 63, baseType: !491, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2808, file: !65, line: 583, baseType: !491, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2808, file: !65, line: 584, baseType: !491, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2808, file: !65, line: 585, baseType: !491, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2808, file: !65, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2808, file: !65, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2808, file: !65, line: 592, baseType: !211, size: 512, offset: 576)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2808, file: !65, line: 593, baseType: !169, size: 64, offset: 1088)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2808, file: !65, line: 594, baseType: !1442, size: 256, offset: 1152)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2808, file: !65, line: 595, baseType: !1284, size: 128, offset: 1408)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2808, file: !65, line: 596, baseType: !2835, size: 64, offset: 1536)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2808, file: !65, line: 597, baseType: !129, size: 32, offset: 1600)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2808, file: !65, line: 598, baseType: !129, size: 32, offset: 1632)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2808, file: !65, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2808, file: !65, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2808, file: !65, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2808, file: !65, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2808, file: !65, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2808, file: !65, line: 604, baseType: !491, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2808, file: !65, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2808, file: !65, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2808, file: !65, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2808, file: !65, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2808, file: !65, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2808, file: !65, line: 610, baseType: !5, size: 32, offset: 1696)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2808, file: !65, line: 611, baseType: !64, size: 32, offset: 1728)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2808, file: !65, line: 612, baseType: !72, size: 32, offset: 1760)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2808, file: !65, line: 613, baseType: !133, size: 32, offset: 1792)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2808, file: !65, line: 614, baseType: !133, size: 32, offset: 1824)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2808, file: !65, line: 615, baseType: !169, size: 64, offset: 1856)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2808, file: !65, line: 616, baseType: !169, size: 64, offset: 1920)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2808, file: !65, line: 617, baseType: !169, size: 64, offset: 1984)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2808, file: !65, line: 618, baseType: !169, size: 64, offset: 2048)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2808, file: !65, line: 620, baseType: !2896, size: 64, offset: 2112)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !65, line: 536, size: 256, elements: !2898)
!2898 = !{!2899, !2900, !2901, !2902}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2897, file: !65, line: 537, baseType: !737)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2897, file: !65, line: 538, baseType: !5, size: 32)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2897, file: !65, line: 540, baseType: !162, size: 128, offset: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2897, file: !65, line: 543, baseType: !2903, size: 64, offset: 192)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !65, line: 534, flags: DIFlagFwdDecl)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2808, file: !65, line: 621, baseType: !2906, size: 64, offset: 2176)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{null, !2661, !2158}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2808, file: !65, line: 622, baseType: !2910, size: 64, offset: 2240)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !65, line: 622, flags: DIFlagFwdDecl)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2662, file: !58, line: 486, baseType: !2913, size: 64, offset: 4096)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !65, line: 642, size: 1792, elements: !2915)
!2915 = !{!2916, !2917, !2918, !2922, !2923, !2924}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2914, file: !65, line: 643, baseType: !2693, size: 1472)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2914, file: !65, line: 644, baseType: !2696, size: 64, offset: 1472)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2914, file: !65, line: 645, baseType: !2919, size: 64, offset: 1536)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{null, !2661, !491}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2914, file: !65, line: 646, baseType: !2696, size: 64, offset: 1600)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2914, file: !65, line: 647, baseType: !2687, size: 64, offset: 1664)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2914, file: !65, line: 648, baseType: !2687, size: 64, offset: 1728)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !2662, file: !58, line: 493, baseType: !2926, size: 64, offset: 4160)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !58, line: 493, flags: DIFlagFwdDecl)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !2662, file: !58, line: 499, baseType: !162, size: 128, offset: 4224)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2662, file: !58, line: 502, baseType: !2930, size: 64, offset: 4352)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2932)
!2932 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !58, line: 502, flags: DIFlagFwdDecl)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2662, file: !58, line: 504, baseType: !2934, size: 64, offset: 4416)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2662, file: !58, line: 505, baseType: !169, size: 64, offset: 4480)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2662, file: !58, line: 510, baseType: !169, size: 64, offset: 4544)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2662, file: !58, line: 511, baseType: !2938, size: 64, offset: 4608)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2940)
!2940 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !58, line: 511, flags: DIFlagFwdDecl)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2662, file: !58, line: 513, baseType: !2942, size: 64, offset: 4672)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !58, line: 288, size: 128, elements: !2944)
!2944 = !{!2945, !2946}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2943, file: !58, line: 293, baseType: !5, size: 32)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2943, file: !58, line: 294, baseType: !97, size: 64, offset: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2662, file: !58, line: 515, baseType: !162, size: 128, offset: 4736)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2662, file: !58, line: 526, baseType: !2949, offset: 4864)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2950, line: 5, elements: !178)
!2950 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2662, file: !58, line: 528, baseType: !2952, size: 64, offset: 4864)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2954, line: 14, flags: DIFlagFwdDecl)
!2954 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2662, file: !58, line: 529, baseType: !2956, size: 64, offset: 4928)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2724, line: 22, flags: DIFlagFwdDecl)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2662, file: !58, line: 534, baseType: !514, size: 32, offset: 4992)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2662, file: !58, line: 535, baseType: !99, size: 32, offset: 5024)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2662, file: !58, line: 537, baseType: !737, offset: 5056)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2662, file: !58, line: 538, baseType: !162, size: 128, offset: 5056)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2662, file: !58, line: 540, baseType: !2963, size: 64, offset: 5184)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2965, line: 54, size: 960, elements: !2966)
!2965 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2966 = !{!2967, !2968, !2969, !2970, !2971, !2972, !2973, !2977, !2981, !2982, !2983, !2984, !2988, !2992, !2993}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2964, file: !2965, line: 55, baseType: !460, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2964, file: !2965, line: 56, baseType: !637, size: 64, offset: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2964, file: !2965, line: 58, baseType: !1827, size: 64, offset: 128)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2964, file: !2965, line: 59, baseType: !1827, size: 64, offset: 192)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2964, file: !2965, line: 60, baseType: !1754, size: 64, offset: 256)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2964, file: !2965, line: 62, baseType: !2678, size: 64, offset: 320)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2964, file: !2965, line: 63, baseType: !2974, size: 64, offset: 384)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!486, !2661, !2685}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2964, file: !2965, line: 65, baseType: !2978, size: 64, offset: 448)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{null, !2963}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2964, file: !2965, line: 66, baseType: !2687, size: 64, offset: 512)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2964, file: !2965, line: 68, baseType: !2696, size: 64, offset: 576)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2964, file: !2965, line: 70, baseType: !1863, size: 64, offset: 640)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2964, file: !2965, line: 71, baseType: !2985, size: 64, offset: 704)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!1880, !2661}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2964, file: !2965, line: 73, baseType: !2989, size: 64, offset: 768)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{null, !2661, !1897, !1898}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2964, file: !2965, line: 75, baseType: !2691, size: 64, offset: 832)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2964, file: !2965, line: 77, baseType: !2790, size: 64, offset: 896)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2662, file: !58, line: 541, baseType: !1827, size: 64, offset: 5248)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2662, file: !58, line: 543, baseType: !2687, size: 64, offset: 5312)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2662, file: !58, line: 544, baseType: !2997, size: 64, offset: 5376)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !58, line: 45, flags: DIFlagFwdDecl)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2662, file: !58, line: 545, baseType: !3000, size: 64, offset: 5440)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !58, line: 47, flags: DIFlagFwdDecl)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2662, file: !58, line: 547, baseType: !491, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2662, file: !58, line: 548, baseType: !491, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2662, file: !58, line: 549, baseType: !491, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2662, file: !58, line: 550, baseType: !491, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2655, file: !2656, line: 289, baseType: !3007, size: 64, offset: 128)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_driver", file: !3009, line: 302, size: 1472, elements: !3010)
!3009 = !DIFile(filename: "./include/linux/tty_driver.h", directory: "/home/lizy2001/genbc/linux")
!3010 = !{!3011, !3012, !3013, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3042, !3043, !3046, !3047, !3049, !3135, !3138, !3139, !3264}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3008, file: !3009, line: 303, baseType: !133, size: 32)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3008, file: !3009, line: 304, baseType: !2028, size: 32, offset: 32)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "cdevs", scope: !3008, file: !3009, line: 305, baseType: !3014, size: 64, offset: 64)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3008, file: !3009, line: 306, baseType: !637, size: 64, offset: 128)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !3008, file: !3009, line: 307, baseType: !460, size: 64, offset: 192)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3008, file: !3009, line: 308, baseType: !460, size: 64, offset: 256)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "name_base", scope: !3008, file: !3009, line: 309, baseType: !133, size: 32, offset: 320)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !3008, file: !3009, line: 310, baseType: !133, size: 32, offset: 352)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "minor_start", scope: !3008, file: !3009, line: 311, baseType: !133, size: 32, offset: 384)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3008, file: !3009, line: 312, baseType: !5, size: 32, offset: 416)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3008, file: !3009, line: 313, baseType: !2183, size: 16, offset: 448)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !3008, file: !3009, line: 314, baseType: !2183, size: 16, offset: 464)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "init_termios", scope: !3008, file: !3009, line: 315, baseType: !3025, size: 352, offset: 480)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ktermios", file: !3026, line: 32, size: 352, elements: !3027)
!3026 = !DIFile(filename: "./include/uapi/asm-generic/termbits.h", directory: "/home/lizy2001/genbc/linux")
!3027 = !{!3028, !3030, !3031, !3032, !3033, !3035, !3039, !3041}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !3025, file: !3026, line: 33, baseType: !3029, size: 32)
!3029 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !3026, line: 9, baseType: !5)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !3025, file: !3026, line: 34, baseType: !3029, size: 32, offset: 32)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !3025, file: !3026, line: 35, baseType: !3029, size: 32, offset: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !3025, file: !3026, line: 36, baseType: !3029, size: 32, offset: 96)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !3025, file: !3026, line: 37, baseType: !3034, size: 8, offset: 128)
!3034 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !3026, line: 7, baseType: !294)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !3025, file: !3026, line: 38, baseType: !3036, size: 152, offset: 136)
!3036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3034, size: 152, elements: !3037)
!3037 = !{!3038}
!3038 = !DISubrange(count: 19)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !3025, file: !3026, line: 39, baseType: !3040, size: 32, offset: 288)
!3040 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !3026, line: 8, baseType: !5)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !3025, file: !3026, line: 40, baseType: !3040, size: 32, offset: 320)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3008, file: !3009, line: 316, baseType: !97, size: 64, offset: 832)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "proc_entry", scope: !3008, file: !3009, line: 317, baseType: !3044, size: 64, offset: 896)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !3009, line: 317, flags: DIFlagFwdDecl)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !3008, file: !3009, line: 318, baseType: !3007, size: 64, offset: 960)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "ttys", scope: !3008, file: !3009, line: 323, baseType: !3048, size: 64, offset: 1024)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !3008, file: !3009, line: 324, baseType: !3050, size: 64, offset: 1088)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port", file: !2656, line: 230, size: 2432, elements: !3053)
!3053 = !{!3054, !3083, !3084, !3085, !3107, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3130, !3131, !3132, !3133, !3134}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3052, file: !2656, line: 231, baseType: !3055, size: 1024)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_bufhead", file: !2656, line: 85, size: 1024, elements: !3056)
!3056 = !{!3057, !3072, !3073, !3074, !3075, !3076, !3080, !3081, !3082}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3055, file: !2656, line: 86, baseType: !3058, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_buffer", file: !2656, line: 58, size: 256, elements: !3060)
!3060 = !{!3061, !3066, !3067, !3068, !3069, !3070, !3071}
!3061 = !DIDerivedType(tag: DW_TAG_member, scope: !3059, file: !2656, line: 59, baseType: !3062, size: 64)
!3062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3059, file: !2656, line: 59, size: 64, elements: !3063)
!3063 = !{!3064, !3065}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3062, file: !2656, line: 60, baseType: !3058, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3062, file: !2656, line: 61, baseType: !368, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !3059, file: !2656, line: 63, baseType: !133, size: 32, offset: 64)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3059, file: !2656, line: 64, baseType: !133, size: 32, offset: 96)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !3059, file: !2656, line: 65, baseType: !133, size: 32, offset: 128)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3059, file: !2656, line: 66, baseType: !133, size: 32, offset: 160)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3059, file: !2656, line: 67, baseType: !133, size: 32, offset: 192)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3059, file: !2656, line: 69, baseType: !2444, offset: 256)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3055, file: !2656, line: 87, baseType: !1442, size: 256, offset: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3055, file: !2656, line: 88, baseType: !726, size: 192, offset: 320)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !3055, file: !2656, line: 89, baseType: !129, size: 32, offset: 512)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !3055, file: !2656, line: 90, baseType: !3059, size: 256, offset: 576)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3055, file: !2656, line: 91, baseType: !3077, size: 64, offset: 832)
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !369, line: 54, size: 64, elements: !3078)
!3078 = !{!3079}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3077, file: !369, line: 55, baseType: !372, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "mem_used", scope: !3055, file: !2656, line: 92, baseType: !129, size: 32, offset: 896)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "mem_limit", scope: !3055, file: !2656, line: 93, baseType: !133, size: 32, offset: 928)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !3055, file: !2656, line: 94, baseType: !3058, size: 64, offset: 960)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3052, file: !2656, line: 232, baseType: !2654, size: 64, offset: 1024)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "itty", scope: !3052, file: !2656, line: 233, baseType: !2654, size: 64, offset: 1088)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3052, file: !2656, line: 234, baseType: !3086, size: 64, offset: 1152)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3088)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_operations", file: !2656, line: 205, size: 320, elements: !3089)
!3089 = !{!3090, !3094, !3098, !3102, !3106}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_raised", scope: !3088, file: !2656, line: 207, baseType: !3091, size: 64)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!133, !3051}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "dtr_rts", scope: !3088, file: !2656, line: 209, baseType: !3095, size: 64, offset: 64)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{null, !3051, !133}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3088, file: !2656, line: 213, baseType: !3099, size: 64, offset: 128)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{null, !3051}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3088, file: !2656, line: 218, baseType: !3103, size: 64, offset: 192)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!133, !3051, !2654}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "destruct", scope: !3088, file: !2656, line: 220, baseType: !3099, size: 64, offset: 256)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "client_ops", scope: !3052, file: !2656, line: 235, baseType: !3108, size: 64, offset: 1216)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3110)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_client_operations", file: !2656, line: 223, size: 128, elements: !3111)
!3111 = !{!3112, !3116}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !3110, file: !2656, line: 224, baseType: !3113, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!133, !3051, !422, !422, !580}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !3110, file: !2656, line: 225, baseType: !3099, size: 64, offset: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3052, file: !2656, line: 236, baseType: !737, offset: 1280)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "blocked_open", scope: !3052, file: !2656, line: 237, baseType: !133, size: 32, offset: 1280)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3052, file: !2656, line: 238, baseType: !133, size: 32, offset: 1312)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !3052, file: !2656, line: 239, baseType: !1284, size: 128, offset: 1344)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "delta_msr_wait", scope: !3052, file: !2656, line: 240, baseType: !1284, size: 128, offset: 1472)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3052, file: !2656, line: 241, baseType: !97, size: 64, offset: 1600)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !3052, file: !2656, line: 242, baseType: !97, size: 64, offset: 1664)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "console", scope: !3052, file: !2656, line: 243, baseType: !294, size: 1, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "low_latency", scope: !3052, file: !2656, line: 244, baseType: !294, size: 1, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3052, file: !2656, line: 245, baseType: !726, size: 192, offset: 1792)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "buf_mutex", scope: !3052, file: !2656, line: 246, baseType: !726, size: 192, offset: 1984)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_buf", scope: !3052, file: !2656, line: 247, baseType: !3129, size: 64, offset: 2176)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !3052, file: !2656, line: 248, baseType: !5, size: 32, offset: 2240)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !3052, file: !2656, line: 249, baseType: !5, size: 32, offset: 2272)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "drain_delay", scope: !3052, file: !2656, line: 250, baseType: !133, size: 32, offset: 2304)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3052, file: !2656, line: 253, baseType: !2028, size: 32, offset: 2336)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !3052, file: !2656, line: 254, baseType: !103, size: 64, offset: 2368)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !3008, file: !3009, line: 325, baseType: !3136, size: 64, offset: 1152)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "driver_state", scope: !3008, file: !3009, line: 326, baseType: !103, size: 64, offset: 1216)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3008, file: !3009, line: 332, baseType: !3140, size: 64, offset: 1280)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3142)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_operations", file: !3009, line: 254, size: 2176, elements: !3143)
!3143 = !{!3144, !3148, !3152, !3156, !3160, !3164, !3168, !3169, !3173, !3177, !3178, !3182, !3183, !3187, !3191, !3195, !3196, !3197, !3198, !3199, !3200, !3204, !3205, !3206, !3210, !3214, !3215, !3219, !3231, !3246, !3252, !3258, !3259, !3263}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !3142, file: !3009, line: 255, baseType: !3145, size: 64)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!2654, !3007, !361, !133}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !3142, file: !3009, line: 257, baseType: !3149, size: 64, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!133, !3007, !2654}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3142, file: !3009, line: 258, baseType: !3153, size: 64, offset: 128)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{null, !3007, !2654}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3142, file: !3009, line: 259, baseType: !3157, size: 64, offset: 192)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!133, !2654, !361}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3142, file: !3009, line: 260, baseType: !3161, size: 64, offset: 256)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{null, !2654, !361}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3142, file: !3009, line: 261, baseType: !3165, size: 64, offset: 320)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{null, !2654}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3142, file: !3009, line: 262, baseType: !3165, size: 64, offset: 384)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3142, file: !3009, line: 263, baseType: !3170, size: 64, offset: 448)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!133, !2654, !422, !133}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "put_char", scope: !3142, file: !3009, line: 265, baseType: !3174, size: 64, offset: 512)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!133, !2654, !294}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "flush_chars", scope: !3142, file: !3009, line: 266, baseType: !3165, size: 64, offset: 576)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "write_room", scope: !3142, file: !3009, line: 267, baseType: !3179, size: 64, offset: 640)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!133, !2654}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "chars_in_buffer", scope: !3142, file: !3009, line: 268, baseType: !3179, size: 64, offset: 704)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !3142, file: !3009, line: 269, baseType: !3184, size: 64, offset: 768)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!133, !2654, !5, !97}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3142, file: !3009, line: 271, baseType: !3188, size: 64, offset: 832)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!122, !2654, !5, !97}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !3142, file: !3009, line: 273, baseType: !3192, size: 64, offset: 896)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{null, !2654, !3137}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !3142, file: !3009, line: 274, baseType: !3165, size: 64, offset: 960)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !3142, file: !3009, line: 275, baseType: !3165, size: 64, offset: 1024)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3142, file: !3009, line: 276, baseType: !3165, size: 64, offset: 1088)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3142, file: !3009, line: 277, baseType: !3165, size: 64, offset: 1152)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !3142, file: !3009, line: 278, baseType: !3165, size: 64, offset: 1216)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "break_ctl", scope: !3142, file: !3009, line: 279, baseType: !3201, size: 64, offset: 1280)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!133, !2654, !133}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !3142, file: !3009, line: 280, baseType: !3165, size: 64, offset: 1344)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !3142, file: !3009, line: 281, baseType: !3165, size: 64, offset: 1408)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "wait_until_sent", scope: !3142, file: !3009, line: 282, baseType: !3207, size: 64, offset: 1472)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{null, !2654, !133}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "send_xchar", scope: !3142, file: !3009, line: 283, baseType: !3211, size: 64, offset: 1536)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{null, !2654, !462}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmget", scope: !3142, file: !3009, line: 284, baseType: !3179, size: 64, offset: 1600)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmset", scope: !3142, file: !3009, line: 285, baseType: !3216, size: 64, offset: 1664)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!133, !2654, !5, !5}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "resize", scope: !3142, file: !3009, line: 287, baseType: !3220, size: 64, offset: 1728)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!133, !2654, !3223}
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !3225, line: 15, size: 64, elements: !3226)
!3225 = !DIFile(filename: "./include/uapi/asm-generic/termios.h", directory: "/home/lizy2001/genbc/linux")
!3226 = !{!3227, !3228, !3229, !3230}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !3224, file: !3225, line: 16, baseType: !187, size: 16)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !3224, file: !3225, line: 17, baseType: !187, size: 16, offset: 16)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !3224, file: !3225, line: 18, baseType: !187, size: 16, offset: 32)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !3224, file: !3225, line: 19, baseType: !187, size: 16, offset: 48)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "set_termiox", scope: !3142, file: !3009, line: 288, baseType: !3232, size: 64, offset: 1792)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!133, !2654, !3235}
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "termiox", file: !3237, line: 10, size: 128, elements: !3238)
!3237 = !DIFile(filename: "./include/uapi/linux/termios.h", directory: "/home/lizy2001/genbc/linux")
!3238 = !{!3239, !3240, !3241, !3245}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "x_hflag", scope: !3236, file: !3237, line: 12, baseType: !892, size: 16)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "x_cflag", scope: !3236, file: !3237, line: 13, baseType: !892, size: 16, offset: 16)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "x_rflag", scope: !3236, file: !3237, line: 14, baseType: !3242, size: 80, offset: 32)
!3242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !892, size: 80, elements: !3243)
!3243 = !{!3244}
!3244 = !DISubrange(count: 5)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "x_sflag", scope: !3236, file: !3237, line: 15, baseType: !892, size: 16, offset: 112)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "get_icount", scope: !3142, file: !3009, line: 289, baseType: !3247, size: 64, offset: 1856)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!133, !2654, !3250}
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_icounter_struct", file: !3009, line: 251, flags: DIFlagFwdDecl)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "get_serial", scope: !3142, file: !3009, line: 291, baseType: !3253, size: 64, offset: 1920)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!133, !2654, !3256}
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_struct", file: !3009, line: 252, flags: DIFlagFwdDecl)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "set_serial", scope: !3142, file: !3009, line: 292, baseType: !3253, size: 64, offset: 1984)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3142, file: !3009, line: 293, baseType: !3260, size: 64, offset: 2048)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{null, !2654, !714}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !3142, file: !3009, line: 299, baseType: !764, size: 64, offset: 2112)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "tty_drivers", scope: !3008, file: !3009, line: 333, baseType: !162, size: 128, offset: 1344)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2655, file: !2656, line: 290, baseType: !3140, size: 64, offset: 192)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2655, file: !2656, line: 291, baseType: !133, size: 32, offset: 256)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_sem", scope: !2655, file: !2656, line: 294, baseType: !3268, size: 384, offset: 320)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ld_semaphore", file: !3269, line: 133, size: 384, elements: !3270)
!3269 = !DIFile(filename: "./include/linux/tty_ldisc.h", directory: "/home/lizy2001/genbc/linux")
!3270 = !{!3271, !3272, !3273, !3274, !3275}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3268, file: !3269, line: 134, baseType: !730, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !3268, file: !3269, line: 135, baseType: !236, offset: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "wait_readers", scope: !3268, file: !3269, line: 136, baseType: !5, size: 32, offset: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !3268, file: !3269, line: 137, baseType: !162, size: 128, offset: 128)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !3268, file: !3269, line: 138, baseType: !162, size: 128, offset: 256)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc", scope: !2655, file: !2656, line: 295, baseType: !3277, size: 64, offset: 704)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc", file: !3269, line: 215, size: 128, elements: !3279)
!3279 = !{!3280, !3325}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3278, file: !3269, line: 216, baseType: !3281, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc_ops", file: !3269, line: 175, size: 1216, elements: !3283)
!3283 = !{!3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3295, !3299, !3303, !3304, !3305, !3309, !3310, !3314, !3315, !3319, !3323, !3324}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3282, file: !3269, line: 176, baseType: !133, size: 32)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3282, file: !3269, line: 177, baseType: !486, size: 64, offset: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3282, file: !3269, line: 178, baseType: !133, size: 32, offset: 128)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3282, file: !3269, line: 179, baseType: !133, size: 32, offset: 160)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3282, file: !3269, line: 184, baseType: !3179, size: 64, offset: 192)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3282, file: !3269, line: 185, baseType: !3165, size: 64, offset: 256)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !3282, file: !3269, line: 186, baseType: !3165, size: 64, offset: 320)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3282, file: !3269, line: 187, baseType: !3292, size: 64, offset: 384)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!577, !2654, !361, !3129, !580}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3282, file: !3269, line: 189, baseType: !3296, size: 64, offset: 448)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!577, !2654, !361, !422, !580}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !3282, file: !3269, line: 191, baseType: !3300, size: 64, offset: 512)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!133, !2654, !361, !5, !97}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3282, file: !3269, line: 193, baseType: !3300, size: 64, offset: 576)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !3282, file: !3269, line: 195, baseType: !3192, size: 64, offset: 640)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3282, file: !3269, line: 196, baseType: !3306, size: 64, offset: 704)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!1541, !2654, !361, !1543}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !3282, file: !3269, line: 198, baseType: !3179, size: 64, offset: 768)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !3282, file: !3269, line: 203, baseType: !3311, size: 64, offset: 832)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{null, !2654, !422, !486, !133}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !3282, file: !3269, line: 205, baseType: !3165, size: 64, offset: 896)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "dcd_change", scope: !3282, file: !3269, line: 206, baseType: !3316, size: 64, offset: 960)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{null, !2654, !5}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf2", scope: !3282, file: !3269, line: 207, baseType: !3320, size: 64, offset: 1024)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!133, !2654, !422, !486, !133}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3282, file: !3269, line: 210, baseType: !637, size: 64, offset: 1088)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3282, file: !3269, line: 212, baseType: !133, size: 32, offset: 1152)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3278, file: !3269, line: 217, baseType: !2654, size: 64, offset: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_lock", scope: !2655, file: !2656, line: 297, baseType: !726, size: 192, offset: 768)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mutex", scope: !2655, file: !2656, line: 298, baseType: !726, size: 192, offset: 960)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_mutex", scope: !2655, file: !2656, line: 299, baseType: !726, size: 192, offset: 1152)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "termios_rwsem", scope: !2655, file: !2656, line: 300, baseType: !807, size: 256, offset: 1344)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "winsize_mutex", scope: !2655, file: !2656, line: 301, baseType: !726, size: 192, offset: 1600)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_lock", scope: !2655, file: !2656, line: 302, baseType: !737, offset: 1792)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "flow_lock", scope: !2655, file: !2656, line: 303, baseType: !737, offset: 1792)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !2655, file: !2656, line: 305, baseType: !3025, size: 352, offset: 1792)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "termios_locked", scope: !2655, file: !2656, line: 305, baseType: !3025, size: 352, offset: 2144)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "termiox", scope: !2655, file: !2656, line: 306, baseType: !3235, size: 64, offset: 2496)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2655, file: !2656, line: 307, baseType: !3337, size: 512, offset: 2560)
!3337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 512, elements: !1789)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "pgrp", scope: !2655, file: !2656, line: 308, baseType: !2094, size: 64, offset: 3072)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !2655, file: !2656, line: 313, baseType: !2094, size: 64, offset: 3136)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2655, file: !2656, line: 314, baseType: !97, size: 64, offset: 3200)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2655, file: !2656, line: 315, baseType: !133, size: 32, offset: 3264)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !2655, file: !2656, line: 316, baseType: !3224, size: 64, offset: 3296)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !2655, file: !2656, line: 317, baseType: !97, size: 1, offset: 3360, flags: DIFlagBitField, extraData: i64 3360)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "flow_stopped", scope: !2655, file: !2656, line: 318, baseType: !97, size: 1, offset: 3361, flags: DIFlagBitField, extraData: i64 3360)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !2655, file: !2656, line: 319, baseType: !97, size: 62, offset: 3392, flags: DIFlagBitField, extraData: i64 3392)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "hw_stopped", scope: !2655, file: !2656, line: 320, baseType: !133, size: 32, offset: 3456)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_status", scope: !2655, file: !2656, line: 321, baseType: !97, size: 8, offset: 3488, flags: DIFlagBitField, extraData: i64 3488)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !2655, file: !2656, line: 322, baseType: !97, size: 1, offset: 3496, flags: DIFlagBitField, extraData: i64 3488)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "unused_ctrl", scope: !2655, file: !2656, line: 323, baseType: !97, size: 55, offset: 3520, flags: DIFlagBitField, extraData: i64 3520)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "receive_room", scope: !2655, file: !2656, line: 324, baseType: !5, size: 32, offset: 3584)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "flow_change", scope: !2655, file: !2656, line: 325, baseType: !133, size: 32, offset: 3616)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2655, file: !2656, line: 327, baseType: !2654, size: 64, offset: 3648)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2655, file: !2656, line: 328, baseType: !1595, size: 64, offset: 3712)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !2655, file: !2656, line: 329, baseType: !1284, size: 128, offset: 3776)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !2655, file: !2656, line: 330, baseType: !1284, size: 128, offset: 3904)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "hangup_work", scope: !2655, file: !2656, line: 331, baseType: !1442, size: 256, offset: 4032)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "disc_data", scope: !2655, file: !2656, line: 332, baseType: !103, size: 64, offset: 4288)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2655, file: !2656, line: 333, baseType: !103, size: 64, offset: 4352)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !2655, file: !2656, line: 334, baseType: !737, offset: 4416)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "tty_files", scope: !2655, file: !2656, line: 335, baseType: !162, size: 128, offset: 4416)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !2655, file: !2656, line: 339, baseType: !133, size: 32, offset: 4544)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !2655, file: !2656, line: 340, baseType: !3129, size: 64, offset: 4608)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "write_cnt", scope: !2655, file: !2656, line: 341, baseType: !133, size: 32, offset: 4672)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "SAK_work", scope: !2655, file: !2656, line: 343, baseType: !1442, size: 256, offset: 4736)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2655, file: !2656, line: 344, baseType: !3051, size: 64, offset: 4992)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2601, file: !2602, line: 175, baseType: !3367, size: 32, offset: 3200)
!3367 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !266, line: 805, baseType: !3368)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !266, line: 798, size: 32, elements: !3369)
!3369 = !{!3370, !3371}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3368, file: !266, line: 803, baseType: !396, size: 32)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3368, file: !266, line: 804, baseType: !737, offset: 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2601, file: !2602, line: 176, baseType: !169, size: 64, offset: 3264)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2601, file: !2602, line: 176, baseType: !169, size: 64, offset: 3328)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2601, file: !2602, line: 176, baseType: !169, size: 64, offset: 3392)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2601, file: !2602, line: 176, baseType: !169, size: 64, offset: 3456)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2601, file: !2602, line: 177, baseType: !169, size: 64, offset: 3520)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2601, file: !2602, line: 178, baseType: !169, size: 64, offset: 3584)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2601, file: !2602, line: 179, baseType: !2550, size: 128, offset: 3648)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2601, file: !2602, line: 180, baseType: !97, size: 64, offset: 3776)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2601, file: !2602, line: 180, baseType: !97, size: 64, offset: 3840)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2601, file: !2602, line: 180, baseType: !97, size: 64, offset: 3904)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2601, file: !2602, line: 180, baseType: !97, size: 64, offset: 3968)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2601, file: !2602, line: 181, baseType: !97, size: 64, offset: 4032)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2601, file: !2602, line: 181, baseType: !97, size: 64, offset: 4096)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2601, file: !2602, line: 181, baseType: !97, size: 64, offset: 4160)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2601, file: !2602, line: 181, baseType: !97, size: 64, offset: 4224)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2601, file: !2602, line: 182, baseType: !97, size: 64, offset: 4288)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2601, file: !2602, line: 182, baseType: !97, size: 64, offset: 4352)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2601, file: !2602, line: 182, baseType: !97, size: 64, offset: 4416)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2601, file: !2602, line: 182, baseType: !97, size: 64, offset: 4480)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2601, file: !2602, line: 183, baseType: !97, size: 64, offset: 4544)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2601, file: !2602, line: 183, baseType: !97, size: 64, offset: 4608)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2601, file: !2602, line: 184, baseType: !3394, offset: 4672)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3395, line: 12, elements: !178)
!3395 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2601, file: !2602, line: 192, baseType: !171, size: 64, offset: 4672)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2601, file: !2602, line: 203, baseType: !3398, size: 2048, offset: 4736)
!3398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3399, size: 2048, elements: !1331)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3400, line: 43, size: 128, elements: !3401)
!3400 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!3401 = !{!3402, !3403}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3399, file: !3400, line: 44, baseType: !582, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3399, file: !3400, line: 45, baseType: !582, size: 64, offset: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2601, file: !2602, line: 220, baseType: !491, size: 8, offset: 6784)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2601, file: !2602, line: 221, baseType: !2183, size: 16, offset: 6800)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2601, file: !2602, line: 222, baseType: !2183, size: 16, offset: 6816)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2601, file: !2602, line: 224, baseType: !319, size: 64, offset: 6848)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2601, file: !2602, line: 227, baseType: !726, size: 192, offset: 6912)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2601, file: !2602, line: 233, baseType: !726, size: 192, offset: 7104)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !116, file: !117, line: 970, baseType: !3411, size: 64, offset: 9280)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2602, line: 20, size: 16576, elements: !3413)
!3413 = !{!3414, !3415, !3416, !3417}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3412, file: !2602, line: 21, baseType: !737)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3412, file: !2602, line: 22, baseType: !125, size: 32)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3412, file: !2602, line: 23, baseType: !1284, size: 128, offset: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3412, file: !2602, line: 24, baseType: !3418, size: 16384, offset: 192)
!3418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3419, size: 16384, elements: !1789)
!3419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2612, line: 49, size: 256, elements: !3420)
!3420 = !{!3421}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3419, file: !2612, line: 50, baseType: !3422, size: 256)
!3422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2612, line: 35, size: 256, elements: !3423)
!3423 = !{!3424, !3431, !3432, !3438}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3422, file: !2612, line: 37, baseType: !3425, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3426, line: 19, baseType: !3427)
!3426 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3426, line: 18, baseType: !3429)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{null, !133}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3422, file: !2612, line: 38, baseType: !97, size: 64, offset: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3422, file: !2612, line: 44, baseType: !3433, size: 64, offset: 128)
!3433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3426, line: 22, baseType: !3434)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3426, line: 21, baseType: !3436)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{null}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3422, file: !2612, line: 46, baseType: !2616, size: 64, offset: 192)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !116, file: !117, line: 971, baseType: !2616, size: 64, offset: 9344)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !116, file: !117, line: 972, baseType: !2616, size: 64, offset: 9408)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !116, file: !117, line: 974, baseType: !2616, size: 64, offset: 9472)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !116, file: !117, line: 975, baseType: !2611, size: 192, offset: 9536)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !116, file: !117, line: 976, baseType: !97, size: 64, offset: 9728)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !116, file: !117, line: 977, baseType: !580, size: 64, offset: 9792)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !116, file: !117, line: 978, baseType: !5, size: 32, offset: 9856)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !116, file: !117, line: 980, baseType: !377, size: 64, offset: 9920)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !116, file: !117, line: 989, baseType: !3448, size: 128, offset: 9984)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3449, line: 35, size: 128, elements: !3450)
!3449 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!3450 = !{!3451, !3452, !3453}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3448, file: !3449, line: 36, baseType: !133, size: 32)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3448, file: !3449, line: 37, baseType: !129, size: 32, offset: 32)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3448, file: !3449, line: 38, baseType: !3454, size: 64, offset: 64)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3449, line: 23, flags: DIFlagFwdDecl)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !116, file: !117, line: 992, baseType: !169, size: 64, offset: 10112)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !116, file: !117, line: 993, baseType: !169, size: 64, offset: 10176)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !116, file: !117, line: 996, baseType: !737, offset: 10240)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !116, file: !117, line: 999, baseType: !236, offset: 10240)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !116, file: !117, line: 1001, baseType: !3461, size: 64, offset: 10240)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !117, line: 636, size: 64, elements: !3462)
!3462 = !{!3463}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3461, file: !117, line: 637, baseType: !3464, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !116, file: !117, line: 1005, baseType: !279, size: 128, offset: 10304)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !116, file: !117, line: 1007, baseType: !115, size: 64, offset: 10432)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !116, file: !117, line: 1009, baseType: !3468, size: 64, offset: 10496)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !117, line: 1009, flags: DIFlagFwdDecl)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !116, file: !117, line: 1043, baseType: !103, size: 64, offset: 10560)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !116, file: !117, line: 1046, baseType: !3472, size: 64, offset: 10624)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !117, line: 41, flags: DIFlagFwdDecl)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !116, file: !117, line: 1050, baseType: !3475, size: 64, offset: 10688)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !117, line: 42, flags: DIFlagFwdDecl)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !116, file: !117, line: 1054, baseType: !3478, size: 64, offset: 10752)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !117, line: 55, flags: DIFlagFwdDecl)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !116, file: !117, line: 1056, baseType: !1231, size: 64, offset: 10816)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !116, file: !117, line: 1058, baseType: !3482, size: 64, offset: 10880)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3484, line: 99, size: 704, elements: !3485)
!3484 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!3485 = !{!3486, !3487, !3488, !3489, !3490, !3491, !3492, !3511, !3512}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3483, file: !3484, line: 100, baseType: !730, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3483, file: !3484, line: 101, baseType: !129, size: 32, offset: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3483, file: !3484, line: 102, baseType: !129, size: 32, offset: 96)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3483, file: !3484, line: 105, baseType: !737, offset: 128)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3483, file: !3484, line: 107, baseType: !187, size: 16, offset: 128)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !3483, file: !3484, line: 109, baseType: !796, size: 128, offset: 192)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !3483, file: !3484, line: 110, baseType: !3493, size: 64, offset: 320)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !3484, line: 73, size: 448, elements: !3495)
!3495 = !{!3496, !3499, !3500, !3505, !3510}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3494, file: !3484, line: 74, baseType: !3497, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !3484, line: 74, flags: DIFlagFwdDecl)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !3494, file: !3484, line: 75, baseType: !3482, size: 64, offset: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, scope: !3494, file: !3484, line: 83, baseType: !3501, size: 128, offset: 128)
!3501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3494, file: !3484, line: 83, size: 128, elements: !3502)
!3502 = !{!3503, !3504}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !3501, file: !3484, line: 84, baseType: !162, size: 128)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !3501, file: !3484, line: 85, baseType: !967, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, scope: !3494, file: !3484, line: 87, baseType: !3506, size: 128, offset: 256)
!3506 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3494, file: !3484, line: 87, size: 128, elements: !3507)
!3507 = !{!3508, !3509}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !3506, file: !3484, line: 88, baseType: !110, size: 128)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !3506, file: !3484, line: 89, baseType: !374, size: 128, align: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3494, file: !3484, line: 92, baseType: !5, size: 32, offset: 384)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !3483, file: !3484, line: 111, baseType: !642, size: 64, offset: 384)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !3483, file: !3484, line: 113, baseType: !1442, size: 256, offset: 448)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !116, file: !117, line: 1061, baseType: !3514, size: 64, offset: 10944)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !117, line: 43, flags: DIFlagFwdDecl)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !116, file: !117, line: 1064, baseType: !97, size: 64, offset: 11008)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !116, file: !117, line: 1065, baseType: !3518, size: 64, offset: 11072)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2612, line: 14, baseType: !3520)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2612, line: 12, size: 384, elements: !3521)
!3521 = !{!3522}
!3522 = !DIDerivedType(tag: DW_TAG_member, scope: !3520, file: !2612, line: 13, baseType: !3523, size: 384)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3520, file: !2612, line: 13, size: 384, elements: !3524)
!3524 = !{!3525, !3526, !3527, !3528}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3523, file: !2612, line: 13, baseType: !133, size: 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3523, file: !2612, line: 13, baseType: !133, size: 32, offset: 32)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3523, file: !2612, line: 13, baseType: !133, size: 32, offset: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3523, file: !2612, line: 13, baseType: !3529, size: 256, offset: 128)
!3529 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3530, line: 32, size: 256, elements: !3531)
!3530 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!3531 = !{!3532, !3537, !3550, !3556, !3565, !3585, !3590}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3529, file: !3530, line: 37, baseType: !3533, size: 64)
!3533 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3529, file: !3530, line: 34, size: 64, elements: !3534)
!3534 = !{!3535, !3536}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3533, file: !3530, line: 35, baseType: !2527, size: 32)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3533, file: !3530, line: 36, baseType: !438, size: 32, offset: 32)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3529, file: !3530, line: 45, baseType: !3538, size: 192)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3529, file: !3530, line: 40, size: 192, elements: !3539)
!3539 = !{!3540, !3542, !3543, !3549}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3538, file: !3530, line: 41, baseType: !3541, size: 32)
!3541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !263, line: 95, baseType: !133)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3538, file: !3530, line: 42, baseType: !133, size: 32, offset: 32)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3538, file: !3530, line: 43, baseType: !3544, size: 64, offset: 64)
!3544 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3530, line: 11, baseType: !3545)
!3545 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3530, line: 8, size: 64, elements: !3546)
!3546 = !{!3547, !3548}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3545, file: !3530, line: 9, baseType: !133, size: 32)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3545, file: !3530, line: 10, baseType: !103, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3538, file: !3530, line: 44, baseType: !133, size: 32, offset: 128)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3529, file: !3530, line: 52, baseType: !3551, size: 128)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3529, file: !3530, line: 48, size: 128, elements: !3552)
!3552 = !{!3553, !3554, !3555}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3551, file: !3530, line: 49, baseType: !2527, size: 32)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3551, file: !3530, line: 50, baseType: !438, size: 32, offset: 32)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3551, file: !3530, line: 51, baseType: !3544, size: 64, offset: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3529, file: !3530, line: 61, baseType: !3557, size: 256)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3529, file: !3530, line: 55, size: 256, elements: !3558)
!3558 = !{!3559, !3560, !3561, !3562, !3564}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3557, file: !3530, line: 56, baseType: !2527, size: 32)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3557, file: !3530, line: 57, baseType: !438, size: 32, offset: 32)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3557, file: !3530, line: 58, baseType: !133, size: 32, offset: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3557, file: !3530, line: 59, baseType: !3563, size: 64, offset: 128)
!3563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !263, line: 94, baseType: !579)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3557, file: !3530, line: 60, baseType: !3563, size: 64, offset: 192)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3529, file: !3530, line: 95, baseType: !3566, size: 256)
!3566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3529, file: !3530, line: 64, size: 256, elements: !3567)
!3567 = !{!3568, !3569}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3566, file: !3530, line: 65, baseType: !103, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, scope: !3566, file: !3530, line: 77, baseType: !3570, size: 192, offset: 64)
!3570 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3566, file: !3530, line: 77, size: 192, elements: !3571)
!3571 = !{!3572, !3573, !3580}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3570, file: !3530, line: 82, baseType: !2183, size: 16)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3570, file: !3530, line: 88, baseType: !3574, size: 192)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3570, file: !3530, line: 84, size: 192, elements: !3575)
!3575 = !{!3576, !3578, !3579}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3574, file: !3530, line: 85, baseType: !3577, size: 64)
!3577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 64, elements: !257)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3574, file: !3530, line: 86, baseType: !103, size: 64, offset: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3574, file: !3530, line: 87, baseType: !103, size: 64, offset: 128)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3570, file: !3530, line: 93, baseType: !3581, size: 96)
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3570, file: !3530, line: 90, size: 96, elements: !3582)
!3582 = !{!3583, !3584}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3581, file: !3530, line: 91, baseType: !3577, size: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3581, file: !3530, line: 92, baseType: !101, size: 32, offset: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3529, file: !3530, line: 101, baseType: !3586, size: 128)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3529, file: !3530, line: 98, size: 128, elements: !3587)
!3587 = !{!3588, !3589}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3586, file: !3530, line: 99, baseType: !122, size: 64)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3586, file: !3530, line: 100, baseType: !133, size: 32, offset: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3529, file: !3530, line: 108, baseType: !3591, size: 128)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3529, file: !3530, line: 104, size: 128, elements: !3592)
!3592 = !{!3593, !3594, !3595}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3591, file: !3530, line: 105, baseType: !103, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3591, file: !3530, line: 106, baseType: !133, size: 32, offset: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3591, file: !3530, line: 107, baseType: !5, size: 32, offset: 96)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !116, file: !117, line: 1067, baseType: !3394, offset: 11136)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !116, file: !117, line: 1099, baseType: !3598, size: 64, offset: 11136)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !117, line: 56, flags: DIFlagFwdDecl)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !116, file: !117, line: 1103, baseType: !162, size: 128, offset: 11200)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !116, file: !117, line: 1104, baseType: !3602, size: 64, offset: 11328)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !117, line: 46, flags: DIFlagFwdDecl)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !116, file: !117, line: 1105, baseType: !726, size: 192, offset: 11392)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !116, file: !117, line: 1106, baseType: !5, size: 32, offset: 11584)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !116, file: !117, line: 1109, baseType: !3607, size: 128, offset: 11648)
!3607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3608, size: 128, elements: !2142)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !117, line: 51, flags: DIFlagFwdDecl)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !116, file: !117, line: 1110, baseType: !726, size: 192, offset: 11776)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !116, file: !117, line: 1111, baseType: !162, size: 128, offset: 11968)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !116, file: !117, line: 1173, baseType: !3613, size: 64, offset: 12096)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3615, line: 62, size: 256, align: 256, elements: !3616)
!3615 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!3616 = !{!3617, !3618, !3619, !3624}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3614, file: !3615, line: 75, baseType: !101, size: 32)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3614, file: !3615, line: 90, baseType: !101, size: 32, offset: 32)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3614, file: !3615, line: 124, baseType: !3620, size: 64, offset: 64)
!3620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3614, file: !3615, line: 109, size: 64, elements: !3621)
!3621 = !{!3622, !3623}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !3620, file: !3615, line: 110, baseType: !170, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3620, file: !3615, line: 112, baseType: !170, size: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3614, file: !3615, line: 144, baseType: !101, size: 32, offset: 128)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !116, file: !117, line: 1174, baseType: !99, size: 32, offset: 12160)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !116, file: !117, line: 1179, baseType: !97, size: 64, offset: 12224)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !116, file: !117, line: 1182, baseType: !3628, size: 128, offset: 12288)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2374, line: 76, size: 128, elements: !3629)
!3629 = !{!3630, !3635, !3636}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3628, file: !2374, line: 85, baseType: !3631, size: 64)
!3631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3632, line: 7, size: 64, elements: !3633)
!3632 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!3633 = !{!3634}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3631, file: !3632, line: 12, baseType: !308, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3628, file: !2374, line: 88, baseType: !491, size: 8, offset: 64)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3628, file: !2374, line: 95, baseType: !491, size: 8, offset: 72)
!3637 = !DIDerivedType(tag: DW_TAG_member, scope: !116, file: !117, line: 1184, baseType: !3638, size: 128, offset: 12416)
!3638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !116, file: !117, line: 1184, size: 128, elements: !3639)
!3639 = !{!3640, !3641}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3638, file: !117, line: 1185, baseType: !125, size: 32)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3638, file: !117, line: 1186, baseType: !374, size: 128, align: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !116, file: !117, line: 1190, baseType: !1698, size: 64, offset: 12544)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !116, file: !117, line: 1192, baseType: !3644, size: 128, offset: 12608)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2374, line: 64, size: 128, elements: !3645)
!3645 = !{!3646, !3647, !3648}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3644, file: !2374, line: 65, baseType: !779, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3644, file: !2374, line: 67, baseType: !101, size: 32, offset: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3644, file: !2374, line: 68, baseType: !101, size: 32, offset: 96)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !116, file: !117, line: 1206, baseType: !133, size: 32, offset: 12736)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !116, file: !117, line: 1207, baseType: !133, size: 32, offset: 12768)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !116, file: !117, line: 1209, baseType: !97, size: 64, offset: 12800)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !116, file: !117, line: 1219, baseType: !169, size: 64, offset: 12864)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !116, file: !117, line: 1220, baseType: !169, size: 64, offset: 12928)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !116, file: !117, line: 1317, baseType: !133, size: 32, offset: 12992)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !116, file: !117, line: 1319, baseType: !115, size: 64, offset: 13056)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !116, file: !117, line: 1322, baseType: !3657, size: 64, offset: 13120)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !117, line: 1322, flags: DIFlagFwdDecl)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !116, file: !117, line: 1326, baseType: !125, size: 32, offset: 13184)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !116, file: !117, line: 1342, baseType: !103, size: 64, offset: 13248)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !116, file: !117, line: 1343, baseType: !170, size: 64, offset: 13312)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !116, file: !117, line: 1344, baseType: !169, size: 64, offset: 13376)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !116, file: !117, line: 1345, baseType: !170, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !116, file: !117, line: 1346, baseType: !170, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !116, file: !117, line: 1347, baseType: !170, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !116, file: !117, line: 1348, baseType: !374, size: 128, align: 64, offset: 13504)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !116, file: !117, line: 1358, baseType: !3668, size: 34816, offset: 13824)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3669, line: 485, size: 34816, elements: !3670)
!3669 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3670 = !{!3671, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3700, !3701, !3702, !3703, !3704, !3705, !3708, !3709, !3710}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3668, file: !3669, line: 487, baseType: !3672, size: 192)
!3672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3673, size: 192, elements: !652)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3674, line: 16, size: 64, elements: !3675)
!3674 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!3675 = !{!3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3673, file: !3674, line: 17, baseType: !891, size: 16)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3673, file: !3674, line: 18, baseType: !891, size: 16, offset: 16)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3673, file: !3674, line: 19, baseType: !891, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3673, file: !3674, line: 19, baseType: !891, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3673, file: !3674, line: 19, baseType: !891, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3673, file: !3674, line: 19, baseType: !891, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3673, file: !3674, line: 19, baseType: !891, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3673, file: !3674, line: 20, baseType: !891, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3673, file: !3674, line: 20, baseType: !891, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3673, file: !3674, line: 20, baseType: !891, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3673, file: !3674, line: 20, baseType: !891, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3673, file: !3674, line: 20, baseType: !891, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3673, file: !3674, line: 20, baseType: !891, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3668, file: !3669, line: 491, baseType: !97, size: 64, offset: 192)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3668, file: !3669, line: 495, baseType: !187, size: 16, offset: 256)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3668, file: !3669, line: 496, baseType: !187, size: 16, offset: 272)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3668, file: !3669, line: 497, baseType: !187, size: 16, offset: 288)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3668, file: !3669, line: 498, baseType: !187, size: 16, offset: 304)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3668, file: !3669, line: 502, baseType: !97, size: 64, offset: 320)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3668, file: !3669, line: 503, baseType: !97, size: 64, offset: 384)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3668, file: !3669, line: 514, baseType: !3697, size: 256, offset: 448)
!3697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3698, size: 256, elements: !2102)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3669, line: 483, flags: DIFlagFwdDecl)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3668, file: !3669, line: 516, baseType: !97, size: 64, offset: 704)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3668, file: !3669, line: 518, baseType: !97, size: 64, offset: 768)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3668, file: !3669, line: 520, baseType: !97, size: 64, offset: 832)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3668, file: !3669, line: 521, baseType: !97, size: 64, offset: 896)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3668, file: !3669, line: 522, baseType: !97, size: 64, offset: 960)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3668, file: !3669, line: 528, baseType: !3706, size: 64, offset: 1024)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3669, line: 10, flags: DIFlagFwdDecl)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3668, file: !3669, line: 535, baseType: !97, size: 64, offset: 1088)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3668, file: !3669, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3668, file: !3669, line: 540, baseType: !3711, size: 33280, offset: 1536)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3712, line: 317, size: 33280, elements: !3713)
!3712 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!3713 = !{!3714, !3715, !3716}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3711, file: !3712, line: 330, baseType: !5, size: 32)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3711, file: !3712, line: 337, baseType: !97, size: 64, offset: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3711, file: !3712, line: 348, baseType: !3717, size: 32768, offset: 512)
!3717 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3712, line: 304, size: 32768, elements: !3718)
!3718 = !{!3719, !3734, !3771, !3821, !3834}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3717, file: !3712, line: 305, baseType: !3720, size: 896)
!3720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3712, line: 12, size: 896, elements: !3721)
!3721 = !{!3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3733}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3720, file: !3712, line: 13, baseType: !99, size: 32)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3720, file: !3712, line: 14, baseType: !99, size: 32, offset: 32)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3720, file: !3712, line: 15, baseType: !99, size: 32, offset: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3720, file: !3712, line: 16, baseType: !99, size: 32, offset: 96)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3720, file: !3712, line: 17, baseType: !99, size: 32, offset: 128)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3720, file: !3712, line: 18, baseType: !99, size: 32, offset: 160)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3720, file: !3712, line: 19, baseType: !99, size: 32, offset: 192)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3720, file: !3712, line: 22, baseType: !3730, size: 640, offset: 224)
!3730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 640, elements: !3731)
!3731 = !{!3732}
!3732 = !DISubrange(count: 20)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3720, file: !3712, line: 25, baseType: !99, size: 32, offset: 864)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3717, file: !3712, line: 306, baseType: !3735, size: 4096, align: 128)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3712, line: 34, size: 4096, align: 128, elements: !3736)
!3736 = !{!3737, !3738, !3739, !3740, !3741, !3756, !3757, !3758, !3760, !3762, !3766}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3735, file: !3712, line: 35, baseType: !891, size: 16)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3735, file: !3712, line: 36, baseType: !891, size: 16, offset: 16)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3735, file: !3712, line: 37, baseType: !891, size: 16, offset: 32)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3735, file: !3712, line: 38, baseType: !891, size: 16, offset: 48)
!3741 = !DIDerivedType(tag: DW_TAG_member, scope: !3735, file: !3712, line: 39, baseType: !3742, size: 128, offset: 64)
!3742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3735, file: !3712, line: 39, size: 128, elements: !3743)
!3743 = !{!3744, !3749}
!3744 = !DIDerivedType(tag: DW_TAG_member, scope: !3742, file: !3712, line: 40, baseType: !3745, size: 128)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3742, file: !3712, line: 40, size: 128, elements: !3746)
!3746 = !{!3747, !3748}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3745, file: !3712, line: 41, baseType: !169, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3745, file: !3712, line: 42, baseType: !169, size: 64, offset: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, scope: !3742, file: !3712, line: 44, baseType: !3750, size: 128)
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3742, file: !3712, line: 44, size: 128, elements: !3751)
!3751 = !{!3752, !3753, !3754, !3755}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3750, file: !3712, line: 45, baseType: !99, size: 32)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3750, file: !3712, line: 46, baseType: !99, size: 32, offset: 32)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3750, file: !3712, line: 47, baseType: !99, size: 32, offset: 64)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3750, file: !3712, line: 48, baseType: !99, size: 32, offset: 96)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3735, file: !3712, line: 51, baseType: !99, size: 32, offset: 192)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3735, file: !3712, line: 52, baseType: !99, size: 32, offset: 224)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3735, file: !3712, line: 55, baseType: !3759, size: 1024, offset: 256)
!3759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 1024, elements: !1322)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3735, file: !3712, line: 58, baseType: !3761, size: 2048, offset: 1280)
!3761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 2048, elements: !1789)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3735, file: !3712, line: 60, baseType: !3763, size: 384, offset: 3328)
!3763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 384, elements: !3764)
!3764 = !{!3765}
!3765 = !DISubrange(count: 12)
!3766 = !DIDerivedType(tag: DW_TAG_member, scope: !3735, file: !3712, line: 62, baseType: !3767, size: 384, offset: 3712)
!3767 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3735, file: !3712, line: 62, size: 384, elements: !3768)
!3768 = !{!3769, !3770}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3767, file: !3712, line: 63, baseType: !3763, size: 384)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3767, file: !3712, line: 64, baseType: !3763, size: 384)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3717, file: !3712, line: 307, baseType: !3772, size: 1088)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3712, line: 79, size: 1088, elements: !3773)
!3773 = !{!3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3820}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3772, file: !3712, line: 80, baseType: !99, size: 32)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3772, file: !3712, line: 81, baseType: !99, size: 32, offset: 32)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3772, file: !3712, line: 82, baseType: !99, size: 32, offset: 64)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3772, file: !3712, line: 83, baseType: !99, size: 32, offset: 96)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3772, file: !3712, line: 84, baseType: !99, size: 32, offset: 128)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3772, file: !3712, line: 85, baseType: !99, size: 32, offset: 160)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3772, file: !3712, line: 86, baseType: !99, size: 32, offset: 192)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3772, file: !3712, line: 88, baseType: !3730, size: 640, offset: 224)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3772, file: !3712, line: 89, baseType: !292, size: 8, offset: 864)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3772, file: !3712, line: 90, baseType: !292, size: 8, offset: 872)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3772, file: !3712, line: 91, baseType: !292, size: 8, offset: 880)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3772, file: !3712, line: 92, baseType: !292, size: 8, offset: 888)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3772, file: !3712, line: 93, baseType: !292, size: 8, offset: 896)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3772, file: !3712, line: 94, baseType: !292, size: 8, offset: 904)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3772, file: !3712, line: 95, baseType: !3789, size: 64, offset: 960)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3791, line: 11, size: 128, elements: !3792)
!3791 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3792 = !{!3793, !3794}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3790, file: !3791, line: 12, baseType: !122, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3790, file: !3791, line: 13, baseType: !3795, size: 64, offset: 64)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3797, line: 56, size: 1344, elements: !3798)
!3797 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3798 = !{!3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3796, file: !3797, line: 61, baseType: !97, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3796, file: !3797, line: 62, baseType: !97, size: 64, offset: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3796, file: !3797, line: 63, baseType: !97, size: 64, offset: 128)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3796, file: !3797, line: 64, baseType: !97, size: 64, offset: 192)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3796, file: !3797, line: 65, baseType: !97, size: 64, offset: 256)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3796, file: !3797, line: 66, baseType: !97, size: 64, offset: 320)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3796, file: !3797, line: 68, baseType: !97, size: 64, offset: 384)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3796, file: !3797, line: 69, baseType: !97, size: 64, offset: 448)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3796, file: !3797, line: 70, baseType: !97, size: 64, offset: 512)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3796, file: !3797, line: 71, baseType: !97, size: 64, offset: 576)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3796, file: !3797, line: 72, baseType: !97, size: 64, offset: 640)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3796, file: !3797, line: 73, baseType: !97, size: 64, offset: 704)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3796, file: !3797, line: 74, baseType: !97, size: 64, offset: 768)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3796, file: !3797, line: 75, baseType: !97, size: 64, offset: 832)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3796, file: !3797, line: 76, baseType: !97, size: 64, offset: 896)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3796, file: !3797, line: 81, baseType: !97, size: 64, offset: 960)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3796, file: !3797, line: 83, baseType: !97, size: 64, offset: 1024)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3796, file: !3797, line: 84, baseType: !97, size: 64, offset: 1088)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3796, file: !3797, line: 85, baseType: !97, size: 64, offset: 1152)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3796, file: !3797, line: 86, baseType: !97, size: 64, offset: 1216)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3796, file: !3797, line: 87, baseType: !97, size: 64, offset: 1280)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3772, file: !3712, line: 96, baseType: !99, size: 32, offset: 1024)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3717, file: !3712, line: 308, baseType: !3822, size: 4608, align: 512)
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3712, line: 289, size: 4608, align: 512, elements: !3823)
!3823 = !{!3824, !3825, !3832}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3822, file: !3712, line: 290, baseType: !3735, size: 4096, align: 128)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3822, file: !3712, line: 291, baseType: !3826, size: 512, offset: 4096)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3712, line: 268, size: 512, elements: !3827)
!3827 = !{!3828, !3829, !3830}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3826, file: !3712, line: 269, baseType: !169, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3826, file: !3712, line: 270, baseType: !169, size: 64, offset: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3826, file: !3712, line: 271, baseType: !3831, size: 384, offset: 128)
!3831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 384, elements: !2201)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3822, file: !3712, line: 292, baseType: !3833, offset: 4608)
!3833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, elements: !2297)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3717, file: !3712, line: 309, baseType: !3835, size: 32768)
!3835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 32768, elements: !3836)
!3836 = !{!3837}
!3837 = !DISubrange(count: 4096)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !462)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!3844 = !{!"rsp"}
!3845 = !{i32 7, !"Dwarf Version", i32 4}
!3846 = !{i32 2, !"Debug Info Version", i32 3}
!3847 = !{i32 1, !"wchar_size", i32 2}
!3848 = !{i32 1, !"Code Model", i32 2}
!3849 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3850 = distinct !DISubprogram(name: "__tty_check_change", scope: !1, file: !1, line: 31, type: !3202, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !178)
!3851 = !DILocalVariable(name: "pscr_ret__", scope: !3852, file: !3853, line: 15, type: !115)
!3852 = distinct !DILexicalBlock(scope: !3854, file: !3853, line: 15, column: 9)
!3853 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/lizy2001/genbc/linux")
!3854 = distinct !DISubprogram(name: "get_current", scope: !3853, file: !3853, line: 13, type: !3855, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!115}
!3857 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !3858)
!3858 = distinct !DILocation(line: 55, column: 4, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3860, file: !1, line: 53, column: 8)
!3860 = distinct !DILexicalBlock(scope: !3861, file: !1, line: 51, column: 14)
!3861 = distinct !DILexicalBlock(scope: !3862, file: !1, line: 48, column: 7)
!3862 = distinct !DILexicalBlock(scope: !3863, file: !1, line: 47, column: 36)
!3863 = distinct !DILexicalBlock(scope: !3850, file: !1, line: 47, column: 6)
!3864 = !DILocalVariable(name: "__vpp_verify", scope: !3865, file: !3853, line: 15, type: !1880)
!3865 = distinct !DILexicalBlock(scope: !3852, file: !3853, line: 15, column: 9)
!3866 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !3858)
!3867 = !DILocalVariable(name: "pfo_val__", scope: !3868, file: !3853, line: 15, type: !169)
!3868 = distinct !DILexicalBlock(scope: !3852, file: !3853, line: 15, column: 9)
!3869 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !3858)
!3870 = !DILocalVariable(name: "lock", arg: 1, scope: !3871, file: !3872, line: 407, type: !3875)
!3871 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !3872, file: !3872, line: 407, type: !3873, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!3872 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!3873 = !DISubroutineType(types: !3874)
!3874 = !{null, !3875, !97}
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!3876 = !DILocation(line: 407, column: 64, scope: !3871, inlinedAt: !3877)
!3877 = distinct !DILocation(line: 45, column: 2, scope: !3850)
!3878 = !DILocalVariable(name: "flags", arg: 2, scope: !3871, file: !3872, line: 407, type: !97)
!3879 = !DILocation(line: 407, column: 84, scope: !3871, inlinedAt: !3877)
!3880 = !DILocalVariable(name: "lock", arg: 1, scope: !3881, file: !3872, line: 327, type: !3875)
!3881 = distinct !DISubprogram(name: "spinlock_check", scope: !3872, file: !3872, line: 327, type: !3882, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!3884, !3875}
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!3885 = !DILocation(line: 327, column: 67, scope: !3881, inlinedAt: !3886)
!3886 = distinct !DILocation(line: 43, column: 2, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3888, file: !1, line: 43, column: 2)
!3888 = distinct !DILexicalBlock(scope: !3889, file: !1, line: 43, column: 2)
!3889 = distinct !DILexicalBlock(scope: !3890, file: !1, line: 43, column: 2)
!3890 = distinct !DILexicalBlock(scope: !3891, file: !1, line: 43, column: 2)
!3891 = distinct !DILexicalBlock(scope: !3850, file: !1, line: 43, column: 2)
!3892 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !3893)
!3893 = distinct !DILocation(line: 41, column: 19, scope: !3850)
!3894 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !3893)
!3895 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !3893)
!3896 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !3897)
!3897 = distinct !DILocation(line: 37, column: 6, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3850, file: !1, line: 37, column: 6)
!3899 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !3897)
!3900 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !3897)
!3901 = !DILocalVariable(name: "tty", arg: 1, scope: !3850, file: !1, line: 31, type: !2654)
!3902 = !DILocation(line: 31, column: 43, scope: !3850)
!3903 = !DILocalVariable(name: "sig", arg: 2, scope: !3850, file: !1, line: 31, type: !133)
!3904 = !DILocation(line: 31, column: 52, scope: !3850)
!3905 = !DILocalVariable(name: "flags", scope: !3850, file: !1, line: 33, type: !97)
!3906 = !DILocation(line: 33, column: 16, scope: !3850)
!3907 = !DILocalVariable(name: "pgrp", scope: !3850, file: !1, line: 34, type: !2094)
!3908 = !DILocation(line: 34, column: 14, scope: !3850)
!3909 = !DILocalVariable(name: "tty_pgrp", scope: !3850, file: !1, line: 34, type: !2094)
!3910 = !DILocation(line: 34, column: 21, scope: !3850)
!3911 = !DILocalVariable(name: "ret", scope: !3850, file: !1, line: 35, type: !133)
!3912 = !DILocation(line: 35, column: 6, scope: !3850)
!3913 = !{i32 -2146224083}
!3914 = !DILocation(line: 37, column: 15, scope: !3898)
!3915 = !DILocation(line: 37, column: 23, scope: !3898)
!3916 = !DILocation(line: 37, column: 30, scope: !3898)
!3917 = !DILocation(line: 37, column: 27, scope: !3898)
!3918 = !DILocation(line: 37, column: 6, scope: !3850)
!3919 = !DILocation(line: 38, column: 3, scope: !3898)
!3920 = !DILocation(line: 639, column: 2, scope: !3921, inlinedAt: !3923)
!3921 = distinct !DISubprogram(name: "rcu_read_lock", scope: !3922, file: !3922, line: 637, type: !3436, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!3922 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/lizy2001/genbc/linux")
!3923 = distinct !DILocation(line: 40, column: 2, scope: !3850)
!3924 = !DILocation(line: 41, column: 9, scope: !3850)
!3925 = !DILocation(line: 41, column: 7, scope: !3850)
!3926 = !DILocation(line: 43, column: 2, scope: !3850)
!3927 = !DILocation(line: 43, column: 2, scope: !3891)
!3928 = !DILocalVariable(name: "__dummy", scope: !3929, file: !1, line: 43, type: !97)
!3929 = distinct !DILexicalBlock(scope: !3890, file: !1, line: 43, column: 2)
!3930 = !DILocation(line: 43, column: 2, scope: !3929)
!3931 = !DILocalVariable(name: "__dummy2", scope: !3929, file: !1, line: 43, type: !97)
!3932 = !DILocation(line: 43, column: 2, scope: !3890)
!3933 = !DILocation(line: 43, column: 2, scope: !3889)
!3934 = !DILocation(line: 43, column: 2, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3889, file: !1, line: 43, column: 2)
!3936 = !DILocalVariable(name: "__dummy", scope: !3937, file: !1, line: 43, type: !97)
!3937 = distinct !DILexicalBlock(scope: !3938, file: !1, line: 43, column: 2)
!3938 = distinct !DILexicalBlock(scope: !3935, file: !1, line: 43, column: 2)
!3939 = !DILocation(line: 43, column: 2, scope: !3937)
!3940 = !DILocalVariable(name: "__dummy2", scope: !3937, file: !1, line: 43, type: !97)
!3941 = !DILocation(line: 43, column: 2, scope: !3938)
!3942 = !DILocation(line: 43, column: 2, scope: !3888)
!3943 = !{i32 -2143012034}
!3944 = !DILocation(line: 43, column: 2, scope: !3887)
!3945 = !DILocation(line: 329, column: 10, scope: !3881, inlinedAt: !3886)
!3946 = !DILocation(line: 329, column: 16, scope: !3881, inlinedAt: !3886)
!3947 = !DILocation(line: 44, column: 13, scope: !3850)
!3948 = !DILocation(line: 44, column: 18, scope: !3850)
!3949 = !DILocation(line: 44, column: 11, scope: !3850)
!3950 = !DILocation(line: 45, column: 26, scope: !3850)
!3951 = !DILocation(line: 45, column: 31, scope: !3850)
!3952 = !DILocation(line: 45, column: 42, scope: !3850)
!3953 = !DILocalVariable(name: "__dummy", scope: !3954, file: !3872, line: 409, type: !97)
!3954 = distinct !DILexicalBlock(scope: !3955, file: !3872, line: 409, column: 2)
!3955 = distinct !DILexicalBlock(scope: !3871, file: !3872, line: 409, column: 2)
!3956 = !DILocation(line: 409, column: 2, scope: !3954, inlinedAt: !3877)
!3957 = !DILocalVariable(name: "__dummy2", scope: !3954, file: !3872, line: 409, type: !97)
!3958 = !DILocalVariable(name: "__dummy", scope: !3959, file: !3872, line: 409, type: !97)
!3959 = distinct !DILexicalBlock(scope: !3960, file: !3872, line: 409, column: 2)
!3960 = distinct !DILexicalBlock(scope: !3961, file: !3872, line: 409, column: 2)
!3961 = distinct !DILexicalBlock(scope: !3962, file: !3872, line: 409, column: 2)
!3962 = distinct !DILexicalBlock(scope: !3955, file: !3872, line: 409, column: 2)
!3963 = !DILocation(line: 409, column: 2, scope: !3959, inlinedAt: !3877)
!3964 = !DILocalVariable(name: "__dummy2", scope: !3959, file: !3872, line: 409, type: !97)
!3965 = !DILocation(line: 409, column: 2, scope: !3960, inlinedAt: !3877)
!3966 = !DILocation(line: 409, column: 2, scope: !3967, inlinedAt: !3877)
!3967 = distinct !DILexicalBlock(scope: !3962, file: !3872, line: 409, column: 2)
!3968 = !{i32 -2145236015}
!3969 = !DILocation(line: 409, column: 2, scope: !3970, inlinedAt: !3877)
!3970 = distinct !DILexicalBlock(scope: !3967, file: !3872, line: 409, column: 2)
!3971 = !DILocation(line: 47, column: 6, scope: !3863)
!3972 = !DILocation(line: 47, column: 15, scope: !3863)
!3973 = !DILocation(line: 47, column: 18, scope: !3863)
!3974 = !DILocation(line: 47, column: 26, scope: !3863)
!3975 = !DILocation(line: 47, column: 23, scope: !3863)
!3976 = !DILocation(line: 47, column: 6, scope: !3850)
!3977 = !DILocation(line: 48, column: 18, scope: !3861)
!3978 = !DILocation(line: 48, column: 7, scope: !3861)
!3979 = !DILocation(line: 48, column: 7, scope: !3862)
!3980 = !DILocation(line: 49, column: 8, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3982, file: !1, line: 49, column: 8)
!3982 = distinct !DILexicalBlock(scope: !3861, file: !1, line: 48, column: 24)
!3983 = !DILocation(line: 49, column: 12, scope: !3981)
!3984 = !DILocation(line: 49, column: 8, scope: !3982)
!3985 = !DILocation(line: 50, column: 9, scope: !3981)
!3986 = !DILocation(line: 50, column: 5, scope: !3981)
!3987 = !DILocation(line: 51, column: 3, scope: !3982)
!3988 = !DILocation(line: 51, column: 14, scope: !3860)
!3989 = !DILocation(line: 51, column: 14, scope: !3861)
!3990 = !DILocation(line: 52, column: 8, scope: !3860)
!3991 = !DILocation(line: 52, column: 4, scope: !3860)
!3992 = !DILocation(line: 54, column: 14, scope: !3859)
!3993 = !DILocation(line: 54, column: 20, scope: !3859)
!3994 = !DILocation(line: 54, column: 4, scope: !3859)
!3995 = !DILocation(line: 55, column: 4, scope: !3859)
!3996 = !DILocation(line: 56, column: 8, scope: !3859)
!3997 = !DILocation(line: 58, column: 2, scope: !3862)
!3998 = !DILocation(line: 59, column: 2, scope: !3850)
!3999 = !DILocation(line: 61, column: 7, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3850, file: !1, line: 61, column: 6)
!4001 = !DILocation(line: 61, column: 6, scope: !3850)
!4002 = !DILocation(line: 62, column: 3, scope: !4000)
!4003 = !DILocation(line: 64, column: 9, scope: !3850)
!4004 = !DILocation(line: 64, column: 2, scope: !3850)
!4005 = !DILocation(line: 65, column: 1, scope: !3850)
!4006 = distinct !DISubprogram(name: "task_pgrp", scope: !2602, file: !2602, line: 637, type: !4007, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!2094, !115}
!4009 = !DILocalVariable(name: "task", arg: 1, scope: !4006, file: !2602, line: 637, type: !115)
!4010 = !DILocation(line: 637, column: 57, scope: !4006)
!4011 = !DILocation(line: 639, column: 9, scope: !4006)
!4012 = !DILocation(line: 639, column: 15, scope: !4006)
!4013 = !DILocation(line: 639, column: 23, scope: !4006)
!4014 = !DILocation(line: 639, column: 2, scope: !4006)
!4015 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !4016, file: !4016, line: 666, type: !4017, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4016 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!97}
!4019 = !DILocalVariable(name: "f", scope: !4015, file: !4016, line: 668, type: !97)
!4020 = !DILocation(line: 668, column: 16, scope: !4015)
!4021 = !DILocation(line: 670, column: 6, scope: !4015)
!4022 = !DILocation(line: 670, column: 4, scope: !4015)
!4023 = !DILocation(line: 671, column: 2, scope: !4015)
!4024 = !DILocation(line: 672, column: 9, scope: !4015)
!4025 = !DILocation(line: 672, column: 2, scope: !4015)
!4026 = distinct !DISubprogram(name: "is_ignored", scope: !1, file: !1, line: 15, type: !1691, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4027 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !4028)
!4028 = distinct !DILocation(line: 18, column: 3, scope: !4026)
!4029 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !4028)
!4030 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !4028)
!4031 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !4032)
!4032 = distinct !DILocation(line: 17, column: 23, scope: !4026)
!4033 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !4032)
!4034 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !4032)
!4035 = !DILocalVariable(name: "sig", arg: 1, scope: !4026, file: !1, line: 15, type: !133)
!4036 = !DILocation(line: 15, column: 27, scope: !4026)
!4037 = !DILocation(line: 17, column: 32, scope: !4026)
!4038 = !DILocation(line: 17, column: 41, scope: !4026)
!4039 = !DILocation(line: 17, column: 10, scope: !4026)
!4040 = !DILocation(line: 17, column: 46, scope: !4026)
!4041 = !DILocation(line: 18, column: 12, scope: !4026)
!4042 = !DILocation(line: 18, column: 21, scope: !4026)
!4043 = !DILocation(line: 18, column: 28, scope: !4026)
!4044 = !DILocation(line: 18, column: 31, scope: !4026)
!4045 = !DILocation(line: 18, column: 3, scope: !4026)
!4046 = !DILocation(line: 18, column: 35, scope: !4026)
!4047 = !DILocation(line: 18, column: 38, scope: !4026)
!4048 = !DILocation(line: 18, column: 49, scope: !4026)
!4049 = !DILocation(line: 17, column: 2, scope: !4026)
!4050 = distinct !DISubprogram(name: "set_ti_thread_flag", scope: !4051, file: !4051, line: 53, type: !4052, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4051 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!4052 = !DISubroutineType(types: !4053)
!4053 = !{null, !92, !133}
!4054 = !DILocalVariable(name: "ti", arg: 1, scope: !4050, file: !4051, line: 53, type: !92)
!4055 = !DILocation(line: 53, column: 59, scope: !4050)
!4056 = !DILocalVariable(name: "flag", arg: 2, scope: !4050, file: !4051, line: 53, type: !133)
!4057 = !DILocation(line: 53, column: 67, scope: !4050)
!4058 = !DILocation(line: 55, column: 10, scope: !4050)
!4059 = !DILocation(line: 55, column: 34, scope: !4050)
!4060 = !DILocation(line: 55, column: 38, scope: !4050)
!4061 = !DILocation(line: 55, column: 2, scope: !4050)
!4062 = !DILocation(line: 56, column: 1, scope: !4050)
!4063 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !3922, file: !3922, line: 689, type: !3436, scopeLine: 690, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4064 = !DILocation(line: 691, column: 2, scope: !4063)
!4065 = !DILocation(line: 691, column: 2, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4063, file: !3922, line: 691, column: 2)
!4067 = !DILocation(line: 694, column: 2, scope: !4063)
!4068 = !DILocation(line: 695, column: 2, scope: !4063)
!4069 = !DILocation(line: 695, column: 2, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4063, file: !3922, line: 695, column: 2)
!4071 = !DILocation(line: 696, column: 1, scope: !4063)
!4072 = distinct !DISubprogram(name: "tty_check_change", scope: !1, file: !1, line: 67, type: !3180, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4073 = !DILocalVariable(name: "tty", arg: 1, scope: !4072, file: !1, line: 67, type: !2654)
!4074 = !DILocation(line: 67, column: 41, scope: !4072)
!4075 = !DILocation(line: 69, column: 28, scope: !4072)
!4076 = !DILocation(line: 69, column: 9, scope: !4072)
!4077 = !DILocation(line: 69, column: 2, scope: !4072)
!4078 = distinct !DISubprogram(name: "proc_clear_tty", scope: !1, file: !1, line: 73, type: !4079, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{null, !115}
!4081 = !DILocation(line: 407, column: 64, scope: !3871, inlinedAt: !4082)
!4082 = distinct !DILocation(line: 80, column: 2, scope: !4078)
!4083 = !DILocation(line: 407, column: 84, scope: !3871, inlinedAt: !4082)
!4084 = !DILocation(line: 327, column: 67, scope: !3881, inlinedAt: !4085)
!4085 = distinct !DILocation(line: 77, column: 2, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4087, file: !1, line: 77, column: 2)
!4087 = distinct !DILexicalBlock(scope: !4088, file: !1, line: 77, column: 2)
!4088 = distinct !DILexicalBlock(scope: !4089, file: !1, line: 77, column: 2)
!4089 = distinct !DILexicalBlock(scope: !4090, file: !1, line: 77, column: 2)
!4090 = distinct !DILexicalBlock(scope: !4078, file: !1, line: 77, column: 2)
!4091 = !DILocalVariable(name: "p", arg: 1, scope: !4078, file: !1, line: 73, type: !115)
!4092 = !DILocation(line: 73, column: 41, scope: !4078)
!4093 = !DILocalVariable(name: "flags", scope: !4078, file: !1, line: 75, type: !97)
!4094 = !DILocation(line: 75, column: 16, scope: !4078)
!4095 = !DILocalVariable(name: "tty", scope: !4078, file: !1, line: 76, type: !2654)
!4096 = !DILocation(line: 76, column: 21, scope: !4078)
!4097 = !DILocation(line: 77, column: 2, scope: !4078)
!4098 = !DILocation(line: 77, column: 2, scope: !4090)
!4099 = !DILocalVariable(name: "__dummy", scope: !4100, file: !1, line: 77, type: !97)
!4100 = distinct !DILexicalBlock(scope: !4089, file: !1, line: 77, column: 2)
!4101 = !DILocation(line: 77, column: 2, scope: !4100)
!4102 = !DILocalVariable(name: "__dummy2", scope: !4100, file: !1, line: 77, type: !97)
!4103 = !DILocation(line: 77, column: 2, scope: !4089)
!4104 = !DILocation(line: 77, column: 2, scope: !4088)
!4105 = !DILocation(line: 77, column: 2, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4088, file: !1, line: 77, column: 2)
!4107 = !DILocalVariable(name: "__dummy", scope: !4108, file: !1, line: 77, type: !97)
!4108 = distinct !DILexicalBlock(scope: !4109, file: !1, line: 77, column: 2)
!4109 = distinct !DILexicalBlock(scope: !4106, file: !1, line: 77, column: 2)
!4110 = !DILocation(line: 77, column: 2, scope: !4108)
!4111 = !DILocalVariable(name: "__dummy2", scope: !4108, file: !1, line: 77, type: !97)
!4112 = !DILocation(line: 77, column: 2, scope: !4109)
!4113 = !DILocation(line: 77, column: 2, scope: !4087)
!4114 = !{i32 -2143010362}
!4115 = !DILocation(line: 77, column: 2, scope: !4086)
!4116 = !DILocation(line: 329, column: 10, scope: !3881, inlinedAt: !4085)
!4117 = !DILocation(line: 329, column: 16, scope: !3881, inlinedAt: !4085)
!4118 = !DILocation(line: 78, column: 8, scope: !4078)
!4119 = !DILocation(line: 78, column: 11, scope: !4078)
!4120 = !DILocation(line: 78, column: 19, scope: !4078)
!4121 = !DILocation(line: 78, column: 6, scope: !4078)
!4122 = !DILocation(line: 79, column: 2, scope: !4078)
!4123 = !DILocation(line: 79, column: 5, scope: !4078)
!4124 = !DILocation(line: 79, column: 13, scope: !4078)
!4125 = !DILocation(line: 79, column: 17, scope: !4078)
!4126 = !DILocation(line: 80, column: 26, scope: !4078)
!4127 = !DILocation(line: 80, column: 29, scope: !4078)
!4128 = !DILocation(line: 80, column: 38, scope: !4078)
!4129 = !DILocation(line: 80, column: 47, scope: !4078)
!4130 = !DILocation(line: 409, column: 2, scope: !3954, inlinedAt: !4082)
!4131 = !DILocation(line: 409, column: 2, scope: !3959, inlinedAt: !4082)
!4132 = !DILocation(line: 409, column: 2, scope: !3960, inlinedAt: !4082)
!4133 = !DILocation(line: 409, column: 2, scope: !3967, inlinedAt: !4082)
!4134 = !DILocation(line: 409, column: 2, scope: !3970, inlinedAt: !4082)
!4135 = !DILocation(line: 81, column: 15, scope: !4078)
!4136 = !DILocation(line: 81, column: 2, scope: !4078)
!4137 = !DILocation(line: 82, column: 1, scope: !4078)
!4138 = distinct !DISubprogram(name: "tty_open_proc_set_tty", scope: !1, file: !1, line: 128, type: !4139, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{null, !361, !2654}
!4141 = !DILocalVariable(name: "lock", arg: 1, scope: !4142, file: !3872, line: 402, type: !3875)
!4142 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !3872, file: !3872, line: 402, type: !4143, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{null, !3875}
!4145 = !DILocation(line: 402, column: 57, scope: !4142, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 152, column: 2, scope: !4138)
!4147 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !4148)
!4148 = distinct !DILocation(line: 152, column: 19, scope: !4138)
!4149 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !4148)
!4150 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !4148)
!4151 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !4152)
!4152 = distinct !DILocation(line: 133, column: 7, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4138, file: !1, line: 132, column: 6)
!4154 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !4152)
!4155 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !4152)
!4156 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !4157)
!4157 = distinct !DILocation(line: 132, column: 6, scope: !4153)
!4158 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !4157)
!4159 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !4157)
!4160 = !DILocalVariable(name: "lock", arg: 1, scope: !4161, file: !3872, line: 377, type: !3875)
!4161 = distinct !DISubprogram(name: "spin_lock_irq", scope: !3872, file: !3872, line: 377, type: !4143, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4162 = !DILocation(line: 377, column: 55, scope: !4161, inlinedAt: !4163)
!4163 = distinct !DILocation(line: 131, column: 2, scope: !4138)
!4164 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !4165)
!4165 = distinct !DILocation(line: 131, column: 17, scope: !4138)
!4166 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !4165)
!4167 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !4165)
!4168 = !DILocalVariable(name: "filp", arg: 1, scope: !4138, file: !1, line: 128, type: !361)
!4169 = !DILocation(line: 128, column: 41, scope: !4138)
!4170 = !DILocalVariable(name: "tty", arg: 2, scope: !4138, file: !1, line: 128, type: !2654)
!4171 = !DILocation(line: 128, column: 66, scope: !4138)
!4172 = !DILocation(line: 130, column: 2, scope: !4138)
!4173 = !DILocation(line: 130, column: 2, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4138, file: !1, line: 130, column: 2)
!4175 = !{i32 -2143008180}
!4176 = !DILocation(line: 130, column: 2, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4174, file: !1, line: 130, column: 2)
!4178 = !DILocation(line: 131, column: 26, scope: !4138)
!4179 = !DILocation(line: 131, column: 35, scope: !4138)
!4180 = !DILocation(line: 379, column: 2, scope: !4181, inlinedAt: !4163)
!4181 = distinct !DILexicalBlock(scope: !4182, file: !3872, line: 379, column: 2)
!4182 = distinct !DILexicalBlock(scope: !4161, file: !3872, line: 379, column: 2)
!4183 = !DILocation(line: 379, column: 2, scope: !4184, inlinedAt: !4163)
!4184 = distinct !DILexicalBlock(scope: !4182, file: !3872, line: 379, column: 2)
!4185 = !{i32 -2145238807}
!4186 = !DILocation(line: 379, column: 2, scope: !4187, inlinedAt: !4163)
!4187 = distinct !DILexicalBlock(scope: !4184, file: !3872, line: 379, column: 2)
!4188 = !DILocation(line: 132, column: 15, scope: !4153)
!4189 = !DILocation(line: 132, column: 23, scope: !4153)
!4190 = !DILocation(line: 132, column: 6, scope: !4153)
!4191 = !DILocation(line: 132, column: 30, scope: !4153)
!4192 = !DILocation(line: 133, column: 16, scope: !4153)
!4193 = !DILocation(line: 133, column: 24, scope: !4153)
!4194 = !DILocation(line: 133, column: 7, scope: !4153)
!4195 = !DILocation(line: 133, column: 28, scope: !4153)
!4196 = !DILocation(line: 134, column: 6, scope: !4153)
!4197 = !DILocation(line: 134, column: 11, scope: !4153)
!4198 = !DILocation(line: 134, column: 19, scope: !4153)
!4199 = !DILocation(line: 132, column: 6, scope: !4138)
!4200 = !DILocation(line: 149, column: 7, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4202, file: !1, line: 149, column: 7)
!4202 = distinct !DILexicalBlock(scope: !4153, file: !1, line: 134, column: 28)
!4203 = !DILocation(line: 149, column: 13, scope: !4201)
!4204 = !DILocation(line: 149, column: 20, scope: !4201)
!4205 = !DILocation(line: 149, column: 7, scope: !4202)
!4206 = !DILocation(line: 150, column: 19, scope: !4201)
!4207 = !DILocation(line: 150, column: 4, scope: !4201)
!4208 = !DILocation(line: 151, column: 2, scope: !4202)
!4209 = !DILocation(line: 152, column: 28, scope: !4138)
!4210 = !DILocation(line: 152, column: 37, scope: !4138)
!4211 = !DILocation(line: 404, column: 2, scope: !4212, inlinedAt: !4146)
!4212 = distinct !DILexicalBlock(scope: !4213, file: !3872, line: 404, column: 2)
!4213 = distinct !DILexicalBlock(scope: !4142, file: !3872, line: 404, column: 2)
!4214 = !DILocation(line: 404, column: 2, scope: !4215, inlinedAt: !4146)
!4215 = distinct !DILexicalBlock(scope: !4213, file: !3872, line: 404, column: 2)
!4216 = !{i32 -2145237059}
!4217 = !DILocation(line: 404, column: 2, scope: !4218, inlinedAt: !4146)
!4218 = distinct !DILexicalBlock(scope: !4215, file: !3872, line: 404, column: 2)
!4219 = !DILocation(line: 153, column: 2, scope: !4138)
!4220 = !DILocation(line: 153, column: 2, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !4138, file: !1, line: 153, column: 2)
!4222 = !{i32 -2143007820}
!4223 = !DILocation(line: 153, column: 2, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4221, file: !1, line: 153, column: 2)
!4225 = !DILocation(line: 154, column: 1, scope: !4138)
!4226 = distinct !DISubprogram(name: "__proc_set_tty", scope: !1, file: !1, line: 94, type: !3166, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4227 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !4228)
!4228 = distinct !DILocation(line: 114, column: 2, scope: !4226)
!4229 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !4228)
!4230 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !4228)
!4231 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !4232)
!4232 = distinct !DILocation(line: 113, column: 10, scope: !4226)
!4233 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !4232)
!4234 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !4232)
!4235 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !4236)
!4236 = distinct !DILocation(line: 111, column: 16, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4238, file: !1, line: 108, column: 28)
!4238 = distinct !DILexicalBlock(scope: !4226, file: !1, line: 108, column: 6)
!4239 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !4236)
!4240 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !4236)
!4241 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !4242)
!4242 = distinct !DILocation(line: 108, column: 6, scope: !4238)
!4243 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !4242)
!4244 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !4242)
!4245 = !DILocation(line: 407, column: 64, scope: !3871, inlinedAt: !4246)
!4246 = distinct !DILocation(line: 107, column: 2, scope: !4226)
!4247 = !DILocation(line: 407, column: 84, scope: !3871, inlinedAt: !4246)
!4248 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !4249)
!4249 = distinct !DILocation(line: 106, column: 38, scope: !4226)
!4250 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !4249)
!4251 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !4249)
!4252 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !4253)
!4253 = distinct !DILocation(line: 105, column: 32, scope: !4226)
!4254 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !4253)
!4255 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !4253)
!4256 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !4257)
!4257 = distinct !DILocation(line: 115, column: 2, scope: !4226)
!4258 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !4257)
!4259 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !4257)
!4260 = !DILocation(line: 327, column: 67, scope: !3881, inlinedAt: !4261)
!4261 = distinct !DILocation(line: 98, column: 2, scope: !4262)
!4262 = distinct !DILexicalBlock(scope: !4263, file: !1, line: 98, column: 2)
!4263 = distinct !DILexicalBlock(scope: !4264, file: !1, line: 98, column: 2)
!4264 = distinct !DILexicalBlock(scope: !4265, file: !1, line: 98, column: 2)
!4265 = distinct !DILexicalBlock(scope: !4266, file: !1, line: 98, column: 2)
!4266 = distinct !DILexicalBlock(scope: !4226, file: !1, line: 98, column: 2)
!4267 = !DILocalVariable(name: "tty", arg: 1, scope: !4226, file: !1, line: 94, type: !2654)
!4268 = !DILocation(line: 94, column: 47, scope: !4226)
!4269 = !DILocalVariable(name: "flags", scope: !4226, file: !1, line: 96, type: !97)
!4270 = !DILocation(line: 96, column: 16, scope: !4226)
!4271 = !DILocation(line: 98, column: 2, scope: !4226)
!4272 = !DILocation(line: 98, column: 2, scope: !4266)
!4273 = !DILocalVariable(name: "__dummy", scope: !4274, file: !1, line: 98, type: !97)
!4274 = distinct !DILexicalBlock(scope: !4265, file: !1, line: 98, column: 2)
!4275 = !DILocation(line: 98, column: 2, scope: !4274)
!4276 = !DILocalVariable(name: "__dummy2", scope: !4274, file: !1, line: 98, type: !97)
!4277 = !DILocation(line: 98, column: 2, scope: !4265)
!4278 = !DILocation(line: 98, column: 2, scope: !4264)
!4279 = !DILocation(line: 98, column: 2, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4264, file: !1, line: 98, column: 2)
!4281 = !DILocalVariable(name: "__dummy", scope: !4282, file: !1, line: 98, type: !97)
!4282 = distinct !DILexicalBlock(scope: !4283, file: !1, line: 98, column: 2)
!4283 = distinct !DILexicalBlock(scope: !4280, file: !1, line: 98, column: 2)
!4284 = !DILocation(line: 98, column: 2, scope: !4282)
!4285 = !DILocalVariable(name: "__dummy2", scope: !4282, file: !1, line: 98, type: !97)
!4286 = !DILocation(line: 98, column: 2, scope: !4283)
!4287 = !DILocation(line: 98, column: 2, scope: !4263)
!4288 = !{i32 -2143009293}
!4289 = !DILocation(line: 98, column: 2, scope: !4262)
!4290 = !DILocation(line: 329, column: 10, scope: !3881, inlinedAt: !4261)
!4291 = !DILocation(line: 329, column: 16, scope: !3881, inlinedAt: !4261)
!4292 = !DILocation(line: 103, column: 10, scope: !4226)
!4293 = !DILocation(line: 103, column: 15, scope: !4226)
!4294 = !DILocation(line: 103, column: 2, scope: !4226)
!4295 = !DILocation(line: 104, column: 10, scope: !4226)
!4296 = !DILocation(line: 104, column: 15, scope: !4226)
!4297 = !DILocation(line: 104, column: 2, scope: !4226)
!4298 = !DILocation(line: 105, column: 22, scope: !4226)
!4299 = !DILocation(line: 105, column: 14, scope: !4226)
!4300 = !DILocation(line: 105, column: 2, scope: !4226)
!4301 = !DILocation(line: 105, column: 7, scope: !4226)
!4302 = !DILocation(line: 105, column: 12, scope: !4226)
!4303 = !DILocation(line: 106, column: 25, scope: !4226)
!4304 = !DILocation(line: 106, column: 17, scope: !4226)
!4305 = !DILocation(line: 106, column: 2, scope: !4226)
!4306 = !DILocation(line: 106, column: 7, scope: !4226)
!4307 = !DILocation(line: 106, column: 15, scope: !4226)
!4308 = !DILocation(line: 107, column: 26, scope: !4226)
!4309 = !DILocation(line: 107, column: 31, scope: !4226)
!4310 = !DILocation(line: 107, column: 42, scope: !4226)
!4311 = !DILocation(line: 409, column: 2, scope: !3954, inlinedAt: !4246)
!4312 = !DILocation(line: 409, column: 2, scope: !3959, inlinedAt: !4246)
!4313 = !DILocation(line: 409, column: 2, scope: !3960, inlinedAt: !4246)
!4314 = !DILocation(line: 409, column: 2, scope: !3967, inlinedAt: !4246)
!4315 = !DILocation(line: 409, column: 2, scope: !3970, inlinedAt: !4246)
!4316 = !DILocation(line: 108, column: 15, scope: !4238)
!4317 = !DILocation(line: 108, column: 23, scope: !4238)
!4318 = !DILocation(line: 108, column: 6, scope: !4238)
!4319 = !DILocation(line: 108, column: 6, scope: !4226)
!4320 = !DILocation(line: 109, column: 3, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4322, file: !1, line: 109, column: 3)
!4322 = distinct !DILexicalBlock(scope: !4237, file: !1, line: 109, column: 3)
!4323 = !DILocation(line: 109, column: 3, scope: !4322)
!4324 = !DILocation(line: 111, column: 25, scope: !4237)
!4325 = !DILocation(line: 111, column: 33, scope: !4237)
!4326 = !DILocation(line: 111, column: 3, scope: !4237)
!4327 = !DILocation(line: 112, column: 2, scope: !4237)
!4328 = !DILocation(line: 113, column: 19, scope: !4226)
!4329 = !DILocation(line: 113, column: 27, scope: !4226)
!4330 = !DILocation(line: 113, column: 2, scope: !4226)
!4331 = !DILocation(line: 114, column: 38, scope: !4226)
!4332 = !DILocation(line: 114, column: 25, scope: !4226)
!4333 = !DILocation(line: 114, column: 11, scope: !4226)
!4334 = !DILocation(line: 114, column: 19, scope: !4226)
!4335 = !DILocation(line: 114, column: 23, scope: !4226)
!4336 = !DILocation(line: 115, column: 11, scope: !4226)
!4337 = !DILocation(line: 115, column: 19, scope: !4226)
!4338 = !DILocation(line: 115, column: 32, scope: !4226)
!4339 = !DILocation(line: 116, column: 1, scope: !4226)
!4340 = distinct !DISubprogram(name: "get_current_tty", scope: !1, file: !1, line: 156, type: !4341, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!2654}
!4343 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !4344)
!4344 = distinct !DILocation(line: 163, column: 26, scope: !4340)
!4345 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !4344)
!4346 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !4344)
!4347 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !4348)
!4348 = distinct !DILocation(line: 162, column: 21, scope: !4340)
!4349 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !4348)
!4350 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !4348)
!4351 = !DILocation(line: 407, column: 64, scope: !3871, inlinedAt: !4352)
!4352 = distinct !DILocation(line: 163, column: 2, scope: !4340)
!4353 = !DILocation(line: 407, column: 84, scope: !3871, inlinedAt: !4352)
!4354 = !DILocation(line: 327, column: 67, scope: !3881, inlinedAt: !4355)
!4355 = distinct !DILocation(line: 161, column: 2, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4357, file: !1, line: 161, column: 2)
!4357 = distinct !DILexicalBlock(scope: !4358, file: !1, line: 161, column: 2)
!4358 = distinct !DILexicalBlock(scope: !4359, file: !1, line: 161, column: 2)
!4359 = distinct !DILexicalBlock(scope: !4360, file: !1, line: 161, column: 2)
!4360 = distinct !DILexicalBlock(scope: !4340, file: !1, line: 161, column: 2)
!4361 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !4362)
!4362 = distinct !DILocation(line: 161, column: 2, scope: !4356)
!4363 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !4362)
!4364 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !4362)
!4365 = !DILocalVariable(name: "tty", scope: !4340, file: !1, line: 158, type: !2654)
!4366 = !DILocation(line: 158, column: 21, scope: !4340)
!4367 = !DILocalVariable(name: "flags", scope: !4340, file: !1, line: 159, type: !97)
!4368 = !DILocation(line: 159, column: 16, scope: !4340)
!4369 = !DILocation(line: 161, column: 2, scope: !4340)
!4370 = !DILocation(line: 161, column: 2, scope: !4360)
!4371 = !DILocalVariable(name: "__dummy", scope: !4372, file: !1, line: 161, type: !97)
!4372 = distinct !DILexicalBlock(scope: !4359, file: !1, line: 161, column: 2)
!4373 = !DILocation(line: 161, column: 2, scope: !4372)
!4374 = !DILocalVariable(name: "__dummy2", scope: !4372, file: !1, line: 161, type: !97)
!4375 = !DILocation(line: 161, column: 2, scope: !4359)
!4376 = !DILocation(line: 161, column: 2, scope: !4358)
!4377 = !DILocation(line: 161, column: 2, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4358, file: !1, line: 161, column: 2)
!4379 = !DILocalVariable(name: "__dummy", scope: !4380, file: !1, line: 161, type: !97)
!4380 = distinct !DILexicalBlock(scope: !4381, file: !1, line: 161, column: 2)
!4381 = distinct !DILexicalBlock(scope: !4378, file: !1, line: 161, column: 2)
!4382 = !DILocation(line: 161, column: 2, scope: !4380)
!4383 = !DILocalVariable(name: "__dummy2", scope: !4380, file: !1, line: 161, type: !97)
!4384 = !DILocation(line: 161, column: 2, scope: !4381)
!4385 = !DILocation(line: 161, column: 2, scope: !4357)
!4386 = !{i32 -2143006702}
!4387 = !DILocation(line: 161, column: 2, scope: !4356)
!4388 = !DILocation(line: 329, column: 10, scope: !3881, inlinedAt: !4355)
!4389 = !DILocation(line: 329, column: 16, scope: !3881, inlinedAt: !4355)
!4390 = !DILocation(line: 162, column: 30, scope: !4340)
!4391 = !DILocation(line: 162, column: 38, scope: !4340)
!4392 = !DILocation(line: 162, column: 8, scope: !4340)
!4393 = !DILocation(line: 162, column: 6, scope: !4340)
!4394 = !DILocation(line: 163, column: 35, scope: !4340)
!4395 = !DILocation(line: 163, column: 44, scope: !4340)
!4396 = !DILocation(line: 163, column: 53, scope: !4340)
!4397 = !DILocation(line: 409, column: 2, scope: !3954, inlinedAt: !4352)
!4398 = !DILocation(line: 409, column: 2, scope: !3959, inlinedAt: !4352)
!4399 = !DILocation(line: 409, column: 2, scope: !3960, inlinedAt: !4352)
!4400 = !DILocation(line: 409, column: 2, scope: !3967, inlinedAt: !4352)
!4401 = !DILocation(line: 409, column: 2, scope: !3970, inlinedAt: !4352)
!4402 = !DILocation(line: 164, column: 9, scope: !4340)
!4403 = !DILocation(line: 164, column: 2, scope: !4340)
!4404 = distinct !DISubprogram(name: "tty_kref_get", scope: !2656, file: !2656, line: 468, type: !4405, scopeLine: 469, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{!2654, !2654}
!4407 = !DILocalVariable(name: "tty", arg: 1, scope: !4404, file: !2656, line: 468, type: !2654)
!4408 = !DILocation(line: 468, column: 66, scope: !4404)
!4409 = !DILocation(line: 470, column: 6, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4404, file: !2656, line: 470, column: 6)
!4411 = !DILocation(line: 470, column: 6, scope: !4404)
!4412 = !DILocation(line: 471, column: 13, scope: !4410)
!4413 = !DILocation(line: 471, column: 18, scope: !4410)
!4414 = !DILocation(line: 471, column: 3, scope: !4410)
!4415 = !DILocation(line: 472, column: 9, scope: !4404)
!4416 = !DILocation(line: 472, column: 2, scope: !4404)
!4417 = distinct !DISubprogram(name: "session_clear_tty", scope: !1, file: !1, line: 171, type: !4418, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4418 = !DISubroutineType(types: !4419)
!4419 = !{null, !2094}
!4420 = !DILocalVariable(name: "session", arg: 1, scope: !4417, file: !1, line: 171, type: !2094)
!4421 = !DILocation(line: 171, column: 36, scope: !4417)
!4422 = !DILocalVariable(name: "p", scope: !4417, file: !1, line: 173, type: !115)
!4423 = !DILocation(line: 173, column: 22, scope: !4417)
!4424 = !DILocation(line: 174, column: 2, scope: !4417)
!4425 = !DILocation(line: 174, column: 2, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4427, file: !1, line: 174, column: 2)
!4427 = distinct !DILexicalBlock(scope: !4417, file: !1, line: 174, column: 2)
!4428 = !DILocation(line: 174, column: 2, scope: !4427)
!4429 = !DILocalVariable(name: "____ptr", scope: !4430, file: !1, line: 174, type: !109)
!4430 = distinct !DILexicalBlock(scope: !4431, file: !1, line: 174, column: 2)
!4431 = distinct !DILexicalBlock(scope: !4426, file: !1, line: 174, column: 2)
!4432 = !DILocation(line: 174, column: 2, scope: !4430)
!4433 = !DILocalVariable(name: "________p1", scope: !4434, file: !1, line: 174, type: !109)
!4434 = distinct !DILexicalBlock(scope: !4430, file: !1, line: 174, column: 2)
!4435 = !DILocation(line: 174, column: 2, scope: !4434)
!4436 = !DILocation(line: 174, column: 2, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4434, file: !1, line: 174, column: 2)
!4438 = !DILocation(line: 174, column: 2, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4437, file: !1, line: 174, column: 2)
!4440 = !DILocalVariable(name: "__mptr", scope: !4441, file: !1, line: 174, type: !103)
!4441 = distinct !DILexicalBlock(scope: !4430, file: !1, line: 174, column: 2)
!4442 = !DILocation(line: 174, column: 2, scope: !4441)
!4443 = !DILocation(line: 174, column: 2, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4441, file: !1, line: 174, column: 2)
!4445 = !DILocation(line: 174, column: 2, scope: !4431)
!4446 = !DILocation(line: 174, column: 2, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4431, file: !1, line: 174, column: 2)
!4448 = !DILocation(line: 175, column: 18, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !4450, file: !1, line: 174, column: 44)
!4450 = distinct !DILexicalBlock(scope: !4447, file: !1, line: 174, column: 2)
!4451 = !DILocation(line: 175, column: 3, scope: !4449)
!4452 = !DILocation(line: 176, column: 4, scope: !4450)
!4453 = !DILocalVariable(name: "____ptr", scope: !4454, file: !1, line: 174, type: !109)
!4454 = distinct !DILexicalBlock(scope: !4447, file: !1, line: 174, column: 2)
!4455 = !DILocation(line: 174, column: 2, scope: !4454)
!4456 = !DILocalVariable(name: "________p1", scope: !4457, file: !1, line: 174, type: !109)
!4457 = distinct !DILexicalBlock(scope: !4454, file: !1, line: 174, column: 2)
!4458 = !DILocation(line: 174, column: 2, scope: !4457)
!4459 = !DILocation(line: 174, column: 2, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4457, file: !1, line: 174, column: 2)
!4461 = !DILocation(line: 174, column: 2, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4460, file: !1, line: 174, column: 2)
!4463 = !DILocalVariable(name: "__mptr", scope: !4464, file: !1, line: 174, type: !103)
!4464 = distinct !DILexicalBlock(scope: !4454, file: !1, line: 174, column: 2)
!4465 = !DILocation(line: 174, column: 2, scope: !4464)
!4466 = !DILocation(line: 174, column: 2, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4464, file: !1, line: 174, column: 2)
!4468 = distinct !{!4468, !4445, !4469}
!4469 = !DILocation(line: 176, column: 4, scope: !4431)
!4470 = !DILocation(line: 176, column: 4, scope: !4427)
!4471 = !DILocation(line: 177, column: 1, scope: !4417)
!4472 = distinct !DISubprogram(name: "tty_signal_session_leader", scope: !1, file: !1, line: 191, type: !3202, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4473 = !DILocation(line: 402, column: 57, scope: !4142, inlinedAt: !4474)
!4474 = distinct !DILocation(line: 219, column: 4, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4476, file: !1, line: 199, column: 50)
!4476 = distinct !DILexicalBlock(scope: !4477, file: !1, line: 199, column: 3)
!4477 = distinct !DILexicalBlock(scope: !4478, file: !1, line: 199, column: 3)
!4478 = distinct !DILexicalBlock(scope: !4479, file: !1, line: 199, column: 3)
!4479 = distinct !DILexicalBlock(scope: !4480, file: !1, line: 199, column: 3)
!4480 = distinct !DILexicalBlock(scope: !4481, file: !1, line: 199, column: 3)
!4481 = distinct !DILexicalBlock(scope: !4482, file: !1, line: 198, column: 20)
!4482 = distinct !DILexicalBlock(scope: !4472, file: !1, line: 198, column: 6)
!4483 = !DILocalVariable(name: "lock", arg: 1, scope: !4484, file: !3872, line: 392, type: !3875)
!4484 = distinct !DISubprogram(name: "spin_unlock", scope: !3872, file: !3872, line: 392, type: !4143, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4485 = !DILocation(line: 392, column: 53, scope: !4484, inlinedAt: !4486)
!4486 = distinct !DILocation(line: 218, column: 4, scope: !4475)
!4487 = !DILocalVariable(name: "lock", arg: 1, scope: !4488, file: !3872, line: 352, type: !3875)
!4488 = distinct !DISubprogram(name: "spin_lock", scope: !3872, file: !3872, line: 352, type: !4143, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4489 = !DILocation(line: 352, column: 51, scope: !4488, inlinedAt: !4490)
!4490 = distinct !DILocation(line: 214, column: 4, scope: !4475)
!4491 = !DILocation(line: 402, column: 57, scope: !4142, inlinedAt: !4492)
!4492 = distinct !DILocation(line: 208, column: 5, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4494, file: !1, line: 207, column: 28)
!4494 = distinct !DILexicalBlock(scope: !4475, file: !1, line: 207, column: 8)
!4495 = !DILocation(line: 377, column: 55, scope: !4161, inlinedAt: !4496)
!4496 = distinct !DILocation(line: 200, column: 4, scope: !4475)
!4497 = !DILocalVariable(name: "tty", arg: 1, scope: !4472, file: !1, line: 191, type: !2654)
!4498 = !DILocation(line: 191, column: 50, scope: !4472)
!4499 = !DILocalVariable(name: "exit_session", arg: 2, scope: !4472, file: !1, line: 191, type: !133)
!4500 = !DILocation(line: 191, column: 59, scope: !4472)
!4501 = !DILocalVariable(name: "p", scope: !4472, file: !1, line: 193, type: !115)
!4502 = !DILocation(line: 193, column: 22, scope: !4472)
!4503 = !DILocalVariable(name: "refs", scope: !4472, file: !1, line: 194, type: !133)
!4504 = !DILocation(line: 194, column: 6, scope: !4472)
!4505 = !DILocalVariable(name: "tty_pgrp", scope: !4472, file: !1, line: 195, type: !2094)
!4506 = !DILocation(line: 195, column: 14, scope: !4472)
!4507 = !DILocation(line: 197, column: 2, scope: !4472)
!4508 = !DILocation(line: 197, column: 2, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4472, file: !1, line: 197, column: 2)
!4510 = !{i32 -2142989454}
!4511 = !DILocation(line: 197, column: 2, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4509, file: !1, line: 197, column: 2)
!4513 = !DILocation(line: 198, column: 6, scope: !4482)
!4514 = !DILocation(line: 198, column: 11, scope: !4482)
!4515 = !DILocation(line: 198, column: 6, scope: !4472)
!4516 = !DILocation(line: 199, column: 3, scope: !4481)
!4517 = !DILocation(line: 199, column: 3, scope: !4479)
!4518 = !DILocation(line: 199, column: 3, scope: !4480)
!4519 = !DILocalVariable(name: "____ptr", scope: !4520, file: !1, line: 199, type: !109)
!4520 = distinct !DILexicalBlock(scope: !4478, file: !1, line: 199, column: 3)
!4521 = !DILocation(line: 199, column: 3, scope: !4520)
!4522 = !DILocalVariable(name: "________p1", scope: !4523, file: !1, line: 199, type: !109)
!4523 = distinct !DILexicalBlock(scope: !4520, file: !1, line: 199, column: 3)
!4524 = !DILocation(line: 199, column: 3, scope: !4523)
!4525 = !DILocation(line: 199, column: 3, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4523, file: !1, line: 199, column: 3)
!4527 = !DILocation(line: 199, column: 3, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4526, file: !1, line: 199, column: 3)
!4529 = !DILocalVariable(name: "__mptr", scope: !4530, file: !1, line: 199, type: !103)
!4530 = distinct !DILexicalBlock(scope: !4520, file: !1, line: 199, column: 3)
!4531 = !DILocation(line: 199, column: 3, scope: !4530)
!4532 = !DILocation(line: 199, column: 3, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4530, file: !1, line: 199, column: 3)
!4534 = !DILocation(line: 199, column: 3, scope: !4478)
!4535 = !DILocation(line: 199, column: 3, scope: !4477)
!4536 = !DILocation(line: 200, column: 19, scope: !4475)
!4537 = !DILocation(line: 200, column: 22, scope: !4475)
!4538 = !DILocation(line: 200, column: 31, scope: !4475)
!4539 = !DILocation(line: 379, column: 2, scope: !4181, inlinedAt: !4496)
!4540 = !DILocation(line: 379, column: 2, scope: !4184, inlinedAt: !4496)
!4541 = !DILocation(line: 379, column: 2, scope: !4187, inlinedAt: !4496)
!4542 = !DILocation(line: 201, column: 8, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4475, file: !1, line: 201, column: 8)
!4544 = !DILocation(line: 201, column: 11, scope: !4543)
!4545 = !DILocation(line: 201, column: 19, scope: !4543)
!4546 = !DILocation(line: 201, column: 26, scope: !4543)
!4547 = !DILocation(line: 201, column: 23, scope: !4543)
!4548 = !DILocation(line: 201, column: 8, scope: !4475)
!4549 = !DILocation(line: 202, column: 5, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4543, file: !1, line: 201, column: 31)
!4551 = !DILocation(line: 202, column: 8, scope: !4550)
!4552 = !DILocation(line: 202, column: 16, scope: !4550)
!4553 = !DILocation(line: 202, column: 20, scope: !4550)
!4554 = !DILocation(line: 205, column: 9, scope: !4550)
!4555 = !DILocation(line: 206, column: 4, scope: !4550)
!4556 = !DILocation(line: 207, column: 9, scope: !4494)
!4557 = !DILocation(line: 207, column: 12, scope: !4494)
!4558 = !DILocation(line: 207, column: 20, scope: !4494)
!4559 = !DILocation(line: 207, column: 8, scope: !4475)
!4560 = !DILocation(line: 208, column: 22, scope: !4493)
!4561 = !DILocation(line: 208, column: 25, scope: !4493)
!4562 = !DILocation(line: 208, column: 34, scope: !4493)
!4563 = !DILocation(line: 404, column: 2, scope: !4212, inlinedAt: !4492)
!4564 = !DILocation(line: 404, column: 2, scope: !4215, inlinedAt: !4492)
!4565 = !DILocation(line: 404, column: 2, scope: !4218, inlinedAt: !4492)
!4566 = !DILocation(line: 209, column: 5, scope: !4493)
!4567 = !DILocation(line: 211, column: 49, scope: !4475)
!4568 = !DILocation(line: 211, column: 4, scope: !4475)
!4569 = !DILocation(line: 212, column: 50, scope: !4475)
!4570 = !DILocation(line: 212, column: 4, scope: !4475)
!4571 = !DILocation(line: 213, column: 12, scope: !4475)
!4572 = !DILocation(line: 213, column: 15, scope: !4475)
!4573 = !DILocation(line: 213, column: 23, scope: !4475)
!4574 = !DILocation(line: 213, column: 4, scope: !4475)
!4575 = !DILocation(line: 214, column: 15, scope: !4475)
!4576 = !DILocation(line: 214, column: 20, scope: !4475)
!4577 = !DILocation(line: 354, column: 2, scope: !4578, inlinedAt: !4490)
!4578 = distinct !DILexicalBlock(scope: !4488, file: !3872, line: 354, column: 2)
!4579 = !{i32 -2145240702}
!4580 = !DILocation(line: 354, column: 2, scope: !4581, inlinedAt: !4490)
!4581 = distinct !DILexicalBlock(scope: !4578, file: !3872, line: 354, column: 2)
!4582 = !DILocation(line: 215, column: 23, scope: !4475)
!4583 = !DILocation(line: 215, column: 28, scope: !4475)
!4584 = !DILocation(line: 215, column: 15, scope: !4475)
!4585 = !DILocation(line: 215, column: 13, scope: !4475)
!4586 = !DILocation(line: 216, column: 8, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !4475, file: !1, line: 216, column: 8)
!4588 = !DILocation(line: 216, column: 13, scope: !4587)
!4589 = !DILocation(line: 216, column: 8, scope: !4475)
!4590 = !DILocation(line: 217, column: 39, scope: !4587)
!4591 = !DILocation(line: 217, column: 44, scope: !4587)
!4592 = !DILocation(line: 217, column: 31, scope: !4587)
!4593 = !DILocation(line: 217, column: 5, scope: !4587)
!4594 = !DILocation(line: 217, column: 8, scope: !4587)
!4595 = !DILocation(line: 217, column: 16, scope: !4587)
!4596 = !DILocation(line: 217, column: 29, scope: !4587)
!4597 = !DILocation(line: 218, column: 17, scope: !4475)
!4598 = !DILocation(line: 218, column: 22, scope: !4475)
!4599 = !DILocation(line: 394, column: 2, scope: !4600, inlinedAt: !4486)
!4600 = distinct !DILexicalBlock(scope: !4484, file: !3872, line: 394, column: 2)
!4601 = !{i32 -2145238341}
!4602 = !DILocation(line: 394, column: 2, scope: !4603, inlinedAt: !4486)
!4603 = distinct !DILexicalBlock(scope: !4600, file: !3872, line: 394, column: 2)
!4604 = !DILocation(line: 219, column: 21, scope: !4475)
!4605 = !DILocation(line: 219, column: 24, scope: !4475)
!4606 = !DILocation(line: 219, column: 33, scope: !4475)
!4607 = !DILocation(line: 404, column: 2, scope: !4212, inlinedAt: !4474)
!4608 = !DILocation(line: 404, column: 2, scope: !4215, inlinedAt: !4474)
!4609 = !DILocation(line: 404, column: 2, scope: !4218, inlinedAt: !4474)
!4610 = !DILocation(line: 220, column: 5, scope: !4476)
!4611 = !DILocalVariable(name: "____ptr", scope: !4612, file: !1, line: 199, type: !109)
!4612 = distinct !DILexicalBlock(scope: !4477, file: !1, line: 199, column: 3)
!4613 = !DILocation(line: 199, column: 3, scope: !4612)
!4614 = !DILocalVariable(name: "________p1", scope: !4615, file: !1, line: 199, type: !109)
!4615 = distinct !DILexicalBlock(scope: !4612, file: !1, line: 199, column: 3)
!4616 = !DILocation(line: 199, column: 3, scope: !4615)
!4617 = !DILocation(line: 199, column: 3, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4615, file: !1, line: 199, column: 3)
!4619 = !DILocation(line: 199, column: 3, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4618, file: !1, line: 199, column: 3)
!4621 = !DILocalVariable(name: "__mptr", scope: !4622, file: !1, line: 199, type: !103)
!4622 = distinct !DILexicalBlock(scope: !4612, file: !1, line: 199, column: 3)
!4623 = !DILocation(line: 199, column: 3, scope: !4622)
!4624 = !DILocation(line: 199, column: 3, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4622, file: !1, line: 199, column: 3)
!4626 = distinct !{!4626, !4534, !4627}
!4627 = !DILocation(line: 220, column: 5, scope: !4478)
!4628 = !DILocation(line: 220, column: 5, scope: !4480)
!4629 = !DILocation(line: 221, column: 2, scope: !4481)
!4630 = !DILocation(line: 222, column: 2, scope: !4472)
!4631 = !DILocation(line: 222, column: 2, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4472, file: !1, line: 222, column: 2)
!4633 = !{i32 -2142972142}
!4634 = !DILocation(line: 222, column: 2, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4632, file: !1, line: 222, column: 2)
!4636 = !DILocation(line: 224, column: 6, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4472, file: !1, line: 224, column: 6)
!4638 = !DILocation(line: 224, column: 6, scope: !4472)
!4639 = !DILocation(line: 225, column: 7, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4641, file: !1, line: 225, column: 7)
!4641 = distinct !DILexicalBlock(scope: !4637, file: !1, line: 224, column: 16)
!4642 = !DILocation(line: 225, column: 7, scope: !4641)
!4643 = !DILocation(line: 226, column: 14, scope: !4640)
!4644 = !DILocation(line: 226, column: 32, scope: !4640)
!4645 = !DILocation(line: 226, column: 4, scope: !4640)
!4646 = !DILocation(line: 227, column: 11, scope: !4641)
!4647 = !DILocation(line: 227, column: 3, scope: !4641)
!4648 = !DILocation(line: 228, column: 2, scope: !4641)
!4649 = !DILocation(line: 230, column: 9, scope: !4472)
!4650 = !DILocation(line: 230, column: 2, scope: !4472)
!4651 = distinct !DISubprogram(name: "get_pid", scope: !38, file: !38, line: 82, type: !4652, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{!2094, !2094}
!4654 = !DILocalVariable(name: "pid", arg: 1, scope: !4651, file: !38, line: 82, type: !2094)
!4655 = !DILocation(line: 82, column: 47, scope: !4651)
!4656 = !DILocation(line: 84, column: 6, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4651, file: !38, line: 84, column: 6)
!4658 = !DILocation(line: 84, column: 6, scope: !4651)
!4659 = !DILocation(line: 85, column: 17, scope: !4657)
!4660 = !DILocation(line: 85, column: 22, scope: !4657)
!4661 = !DILocation(line: 85, column: 3, scope: !4657)
!4662 = !DILocation(line: 86, column: 9, scope: !4651)
!4663 = !DILocation(line: 86, column: 2, scope: !4651)
!4664 = distinct !DISubprogram(name: "disassociate_ctty", scope: !1, file: !1, line: 257, type: !3429, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4665 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !4666)
!4666 = distinct !DILocation(line: 315, column: 33, scope: !4664)
!4667 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !4666)
!4668 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !4666)
!4669 = !DILocation(line: 407, column: 64, scope: !3871, inlinedAt: !4670)
!4670 = distinct !DILocation(line: 308, column: 3, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4672, file: !1, line: 299, column: 11)
!4672 = distinct !DILexicalBlock(scope: !4664, file: !1, line: 299, column: 6)
!4673 = !DILocation(line: 407, column: 84, scope: !3871, inlinedAt: !4670)
!4674 = !DILocation(line: 327, column: 67, scope: !3881, inlinedAt: !4675)
!4675 = distinct !DILocation(line: 303, column: 3, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4677, file: !1, line: 303, column: 3)
!4677 = distinct !DILexicalBlock(scope: !4678, file: !1, line: 303, column: 3)
!4678 = distinct !DILexicalBlock(scope: !4679, file: !1, line: 303, column: 3)
!4679 = distinct !DILexicalBlock(scope: !4680, file: !1, line: 303, column: 3)
!4680 = distinct !DILexicalBlock(scope: !4671, file: !1, line: 303, column: 3)
!4681 = !DILocation(line: 402, column: 57, scope: !4142, inlinedAt: !4682)
!4682 = distinct !DILocation(line: 297, column: 2, scope: !4664)
!4683 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !4684)
!4684 = distinct !DILocation(line: 297, column: 19, scope: !4664)
!4685 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !4684)
!4686 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !4684)
!4687 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !4688)
!4688 = distinct !DILocation(line: 296, column: 21, scope: !4664)
!4689 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !4688)
!4690 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !4688)
!4691 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !4692)
!4692 = distinct !DILocation(line: 295, column: 2, scope: !4664)
!4693 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !4692)
!4694 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !4692)
!4695 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !4696)
!4696 = distinct !DILocation(line: 294, column: 10, scope: !4664)
!4697 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !4696)
!4698 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !4696)
!4699 = !DILocation(line: 377, column: 55, scope: !4161, inlinedAt: !4700)
!4700 = distinct !DILocation(line: 293, column: 2, scope: !4664)
!4701 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !4702)
!4702 = distinct !DILocation(line: 293, column: 17, scope: !4664)
!4703 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !4702)
!4704 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !4702)
!4705 = !DILocation(line: 402, column: 57, scope: !4142, inlinedAt: !4706)
!4706 = distinct !DILocation(line: 284, column: 3, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4708, file: !1, line: 279, column: 22)
!4708 = distinct !DILexicalBlock(scope: !4709, file: !1, line: 279, column: 13)
!4709 = distinct !DILexicalBlock(scope: !4664, file: !1, line: 265, column: 6)
!4710 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !4711)
!4711 = distinct !DILocation(line: 284, column: 20, scope: !4707)
!4712 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !4711)
!4713 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !4711)
!4714 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !4715)
!4715 = distinct !DILocation(line: 283, column: 3, scope: !4707)
!4716 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !4715)
!4717 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !4715)
!4718 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !4719)
!4719 = distinct !DILocation(line: 282, column: 14, scope: !4707)
!4720 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !4719)
!4721 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !4719)
!4722 = !DILocation(line: 377, column: 55, scope: !4161, inlinedAt: !4723)
!4723 = distinct !DILocation(line: 281, column: 3, scope: !4707)
!4724 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !4725)
!4725 = distinct !DILocation(line: 281, column: 18, scope: !4707)
!4726 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !4725)
!4727 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !4725)
!4728 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !4729)
!4729 = distinct !DILocation(line: 261, column: 7, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4664, file: !1, line: 261, column: 6)
!4731 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !4729)
!4732 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !4729)
!4733 = !DILocalVariable(name: "on_exit", arg: 1, scope: !4664, file: !1, line: 257, type: !133)
!4734 = !DILocation(line: 257, column: 28, scope: !4664)
!4735 = !DILocalVariable(name: "tty", scope: !4664, file: !1, line: 259, type: !2654)
!4736 = !DILocation(line: 259, column: 21, scope: !4664)
!4737 = !DILocation(line: 261, column: 16, scope: !4730)
!4738 = !DILocation(line: 261, column: 24, scope: !4730)
!4739 = !DILocation(line: 261, column: 7, scope: !4730)
!4740 = !DILocation(line: 261, column: 6, scope: !4664)
!4741 = !DILocation(line: 262, column: 3, scope: !4730)
!4742 = !DILocation(line: 264, column: 8, scope: !4664)
!4743 = !DILocation(line: 264, column: 6, scope: !4664)
!4744 = !DILocation(line: 265, column: 6, scope: !4709)
!4745 = !DILocation(line: 265, column: 6, scope: !4664)
!4746 = !DILocation(line: 266, column: 7, scope: !4747)
!4747 = distinct !DILexicalBlock(scope: !4748, file: !1, line: 266, column: 7)
!4748 = distinct !DILexicalBlock(scope: !4709, file: !1, line: 265, column: 11)
!4749 = !DILocation(line: 266, column: 15, scope: !4747)
!4750 = !DILocation(line: 266, column: 18, scope: !4747)
!4751 = !DILocation(line: 266, column: 23, scope: !4747)
!4752 = !DILocation(line: 266, column: 31, scope: !4747)
!4753 = !DILocation(line: 266, column: 36, scope: !4747)
!4754 = !DILocation(line: 266, column: 7, scope: !4748)
!4755 = !DILocation(line: 267, column: 24, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4747, file: !1, line: 266, column: 60)
!4757 = !DILocation(line: 267, column: 4, scope: !4756)
!4758 = !DILocation(line: 268, column: 3, scope: !4756)
!4759 = !DILocalVariable(name: "tty_pgrp", scope: !4760, file: !1, line: 269, type: !2094)
!4760 = distinct !DILexicalBlock(scope: !4747, file: !1, line: 268, column: 10)
!4761 = !DILocation(line: 269, column: 16, scope: !4760)
!4762 = !DILocation(line: 269, column: 40, scope: !4760)
!4763 = !DILocation(line: 269, column: 27, scope: !4760)
!4764 = !DILocation(line: 270, column: 8, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4760, file: !1, line: 270, column: 8)
!4766 = !DILocation(line: 270, column: 8, scope: !4760)
!4767 = !DILocation(line: 271, column: 15, scope: !4768)
!4768 = distinct !DILexicalBlock(scope: !4765, file: !1, line: 270, column: 18)
!4769 = !DILocation(line: 271, column: 33, scope: !4768)
!4770 = !DILocation(line: 271, column: 5, scope: !4768)
!4771 = !DILocation(line: 272, column: 10, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4768, file: !1, line: 272, column: 9)
!4773 = !DILocation(line: 272, column: 9, scope: !4768)
!4774 = !DILocation(line: 273, column: 16, scope: !4772)
!4775 = !DILocation(line: 273, column: 35, scope: !4772)
!4776 = !DILocation(line: 273, column: 6, scope: !4772)
!4777 = !DILocation(line: 274, column: 13, scope: !4768)
!4778 = !DILocation(line: 274, column: 5, scope: !4768)
!4779 = !DILocation(line: 275, column: 4, scope: !4768)
!4780 = !DILocation(line: 277, column: 16, scope: !4748)
!4781 = !DILocation(line: 277, column: 3, scope: !4748)
!4782 = !DILocation(line: 279, column: 2, scope: !4748)
!4783 = !DILocation(line: 279, column: 13, scope: !4708)
!4784 = !DILocation(line: 279, column: 13, scope: !4709)
!4785 = !DILocalVariable(name: "old_pgrp", scope: !4707, file: !1, line: 280, type: !2094)
!4786 = !DILocation(line: 280, column: 15, scope: !4707)
!4787 = !DILocation(line: 281, column: 27, scope: !4707)
!4788 = !DILocation(line: 281, column: 36, scope: !4707)
!4789 = !DILocation(line: 379, column: 2, scope: !4181, inlinedAt: !4723)
!4790 = !DILocation(line: 379, column: 2, scope: !4184, inlinedAt: !4723)
!4791 = !DILocation(line: 379, column: 2, scope: !4187, inlinedAt: !4723)
!4792 = !DILocation(line: 282, column: 23, scope: !4707)
!4793 = !DILocation(line: 282, column: 31, scope: !4707)
!4794 = !DILocation(line: 282, column: 12, scope: !4707)
!4795 = !DILocation(line: 283, column: 12, scope: !4707)
!4796 = !DILocation(line: 283, column: 20, scope: !4707)
!4797 = !DILocation(line: 283, column: 33, scope: !4707)
!4798 = !DILocation(line: 284, column: 29, scope: !4707)
!4799 = !DILocation(line: 284, column: 38, scope: !4707)
!4800 = !DILocation(line: 404, column: 2, scope: !4212, inlinedAt: !4706)
!4801 = !DILocation(line: 404, column: 2, scope: !4215, inlinedAt: !4706)
!4802 = !DILocation(line: 404, column: 2, scope: !4218, inlinedAt: !4706)
!4803 = !DILocation(line: 285, column: 7, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4707, file: !1, line: 285, column: 7)
!4805 = !DILocation(line: 285, column: 7, scope: !4707)
!4806 = !DILocation(line: 286, column: 14, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4804, file: !1, line: 285, column: 17)
!4808 = !DILocation(line: 286, column: 32, scope: !4807)
!4809 = !DILocation(line: 286, column: 4, scope: !4807)
!4810 = !DILocation(line: 287, column: 14, scope: !4807)
!4811 = !DILocation(line: 287, column: 33, scope: !4807)
!4812 = !DILocation(line: 287, column: 4, scope: !4807)
!4813 = !DILocation(line: 288, column: 12, scope: !4807)
!4814 = !DILocation(line: 288, column: 4, scope: !4807)
!4815 = !DILocation(line: 289, column: 3, scope: !4807)
!4816 = !DILocation(line: 290, column: 3, scope: !4707)
!4817 = !DILocation(line: 293, column: 26, scope: !4664)
!4818 = !DILocation(line: 293, column: 35, scope: !4664)
!4819 = !DILocation(line: 379, column: 2, scope: !4181, inlinedAt: !4700)
!4820 = !DILocation(line: 379, column: 2, scope: !4184, inlinedAt: !4700)
!4821 = !DILocation(line: 379, column: 2, scope: !4187, inlinedAt: !4700)
!4822 = !DILocation(line: 294, column: 19, scope: !4664)
!4823 = !DILocation(line: 294, column: 27, scope: !4664)
!4824 = !DILocation(line: 294, column: 2, scope: !4664)
!4825 = !DILocation(line: 295, column: 11, scope: !4664)
!4826 = !DILocation(line: 295, column: 19, scope: !4664)
!4827 = !DILocation(line: 295, column: 32, scope: !4664)
!4828 = !DILocation(line: 296, column: 30, scope: !4664)
!4829 = !DILocation(line: 296, column: 38, scope: !4664)
!4830 = !DILocation(line: 296, column: 8, scope: !4664)
!4831 = !DILocation(line: 296, column: 6, scope: !4664)
!4832 = !DILocation(line: 297, column: 28, scope: !4664)
!4833 = !DILocation(line: 297, column: 37, scope: !4664)
!4834 = !DILocation(line: 404, column: 2, scope: !4212, inlinedAt: !4682)
!4835 = !DILocation(line: 404, column: 2, scope: !4215, inlinedAt: !4682)
!4836 = !DILocation(line: 404, column: 2, scope: !4218, inlinedAt: !4682)
!4837 = !DILocation(line: 299, column: 6, scope: !4672)
!4838 = !DILocation(line: 299, column: 6, scope: !4664)
!4839 = !DILocalVariable(name: "flags", scope: !4671, file: !1, line: 300, type: !97)
!4840 = !DILocation(line: 300, column: 17, scope: !4671)
!4841 = !DILocation(line: 302, column: 12, scope: !4671)
!4842 = !DILocation(line: 302, column: 3, scope: !4671)
!4843 = !DILocation(line: 303, column: 3, scope: !4671)
!4844 = !DILocation(line: 303, column: 3, scope: !4680)
!4845 = !DILocalVariable(name: "__dummy", scope: !4846, file: !1, line: 303, type: !97)
!4846 = distinct !DILexicalBlock(scope: !4679, file: !1, line: 303, column: 3)
!4847 = !DILocation(line: 303, column: 3, scope: !4846)
!4848 = !DILocalVariable(name: "__dummy2", scope: !4846, file: !1, line: 303, type: !97)
!4849 = !DILocation(line: 303, column: 3, scope: !4679)
!4850 = !DILocation(line: 303, column: 3, scope: !4678)
!4851 = !DILocation(line: 303, column: 3, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4678, file: !1, line: 303, column: 3)
!4853 = !DILocalVariable(name: "__dummy", scope: !4854, file: !1, line: 303, type: !97)
!4854 = distinct !DILexicalBlock(scope: !4855, file: !1, line: 303, column: 3)
!4855 = distinct !DILexicalBlock(scope: !4852, file: !1, line: 303, column: 3)
!4856 = !DILocation(line: 303, column: 3, scope: !4854)
!4857 = !DILocalVariable(name: "__dummy2", scope: !4854, file: !1, line: 303, type: !97)
!4858 = !DILocation(line: 303, column: 3, scope: !4855)
!4859 = !DILocation(line: 303, column: 3, scope: !4677)
!4860 = !{i32 -2142970950}
!4861 = !DILocation(line: 303, column: 3, scope: !4676)
!4862 = !DILocation(line: 329, column: 10, scope: !3881, inlinedAt: !4675)
!4863 = !DILocation(line: 329, column: 16, scope: !3881, inlinedAt: !4675)
!4864 = !DILocation(line: 304, column: 11, scope: !4671)
!4865 = !DILocation(line: 304, column: 16, scope: !4671)
!4866 = !DILocation(line: 304, column: 3, scope: !4671)
!4867 = !DILocation(line: 305, column: 11, scope: !4671)
!4868 = !DILocation(line: 305, column: 16, scope: !4671)
!4869 = !DILocation(line: 305, column: 3, scope: !4671)
!4870 = !DILocation(line: 306, column: 3, scope: !4671)
!4871 = !DILocation(line: 306, column: 8, scope: !4671)
!4872 = !DILocation(line: 306, column: 16, scope: !4671)
!4873 = !DILocation(line: 307, column: 3, scope: !4671)
!4874 = !DILocation(line: 307, column: 8, scope: !4671)
!4875 = !DILocation(line: 307, column: 13, scope: !4671)
!4876 = !DILocation(line: 308, column: 27, scope: !4671)
!4877 = !DILocation(line: 308, column: 32, scope: !4671)
!4878 = !DILocation(line: 308, column: 43, scope: !4671)
!4879 = !DILocation(line: 409, column: 2, scope: !3954, inlinedAt: !4670)
!4880 = !DILocation(line: 409, column: 2, scope: !3959, inlinedAt: !4670)
!4881 = !DILocation(line: 409, column: 2, scope: !3960, inlinedAt: !4670)
!4882 = !DILocation(line: 409, column: 2, scope: !3967, inlinedAt: !4670)
!4883 = !DILocation(line: 409, column: 2, scope: !3970, inlinedAt: !4670)
!4884 = !DILocation(line: 309, column: 14, scope: !4671)
!4885 = !DILocation(line: 309, column: 3, scope: !4671)
!4886 = !DILocation(line: 310, column: 16, scope: !4671)
!4887 = !DILocation(line: 310, column: 3, scope: !4671)
!4888 = !DILocation(line: 311, column: 2, scope: !4671)
!4889 = !DILocation(line: 314, column: 2, scope: !4664)
!4890 = !DILocation(line: 314, column: 2, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4664, file: !1, line: 314, column: 2)
!4892 = !{i32 -2142970624}
!4893 = !DILocation(line: 314, column: 2, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4891, file: !1, line: 314, column: 2)
!4895 = !DILocation(line: 315, column: 20, scope: !4664)
!4896 = !DILocation(line: 315, column: 2, scope: !4664)
!4897 = !DILocation(line: 316, column: 2, scope: !4664)
!4898 = !DILocation(line: 316, column: 2, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4664, file: !1, line: 316, column: 2)
!4900 = !{i32 -2142970341}
!4901 = !DILocation(line: 316, column: 2, scope: !4902)
!4902 = distinct !DILexicalBlock(scope: !4899, file: !1, line: 316, column: 2)
!4903 = !DILocation(line: 317, column: 1, scope: !4664)
!4904 = distinct !DISubprogram(name: "tty_get_pgrp", scope: !1, file: !1, line: 401, type: !4905, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4905 = !DISubroutineType(types: !4906)
!4906 = !{!2094, !2654}
!4907 = !DILocation(line: 407, column: 64, scope: !3871, inlinedAt: !4908)
!4908 = distinct !DILocation(line: 408, column: 2, scope: !4904)
!4909 = !DILocation(line: 407, column: 84, scope: !3871, inlinedAt: !4908)
!4910 = !DILocation(line: 327, column: 67, scope: !3881, inlinedAt: !4911)
!4911 = distinct !DILocation(line: 406, column: 2, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4913, file: !1, line: 406, column: 2)
!4913 = distinct !DILexicalBlock(scope: !4914, file: !1, line: 406, column: 2)
!4914 = distinct !DILexicalBlock(scope: !4915, file: !1, line: 406, column: 2)
!4915 = distinct !DILexicalBlock(scope: !4916, file: !1, line: 406, column: 2)
!4916 = distinct !DILexicalBlock(scope: !4904, file: !1, line: 406, column: 2)
!4917 = !DILocalVariable(name: "tty", arg: 1, scope: !4904, file: !1, line: 401, type: !2654)
!4918 = !DILocation(line: 401, column: 45, scope: !4904)
!4919 = !DILocalVariable(name: "flags", scope: !4904, file: !1, line: 403, type: !97)
!4920 = !DILocation(line: 403, column: 16, scope: !4904)
!4921 = !DILocalVariable(name: "pgrp", scope: !4904, file: !1, line: 404, type: !2094)
!4922 = !DILocation(line: 404, column: 14, scope: !4904)
!4923 = !DILocation(line: 406, column: 2, scope: !4904)
!4924 = !DILocation(line: 406, column: 2, scope: !4916)
!4925 = !DILocalVariable(name: "__dummy", scope: !4926, file: !1, line: 406, type: !97)
!4926 = distinct !DILexicalBlock(scope: !4915, file: !1, line: 406, column: 2)
!4927 = !DILocation(line: 406, column: 2, scope: !4926)
!4928 = !DILocalVariable(name: "__dummy2", scope: !4926, file: !1, line: 406, type: !97)
!4929 = !DILocation(line: 406, column: 2, scope: !4915)
!4930 = !DILocation(line: 406, column: 2, scope: !4914)
!4931 = !DILocation(line: 406, column: 2, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !4914, file: !1, line: 406, column: 2)
!4933 = !DILocalVariable(name: "__dummy", scope: !4934, file: !1, line: 406, type: !97)
!4934 = distinct !DILexicalBlock(scope: !4935, file: !1, line: 406, column: 2)
!4935 = distinct !DILexicalBlock(scope: !4932, file: !1, line: 406, column: 2)
!4936 = !DILocation(line: 406, column: 2, scope: !4934)
!4937 = !DILocalVariable(name: "__dummy2", scope: !4934, file: !1, line: 406, type: !97)
!4938 = !DILocation(line: 406, column: 2, scope: !4935)
!4939 = !DILocation(line: 406, column: 2, scope: !4913)
!4940 = !{i32 -2142968694}
!4941 = !DILocation(line: 406, column: 2, scope: !4912)
!4942 = !DILocation(line: 329, column: 10, scope: !3881, inlinedAt: !4911)
!4943 = !DILocation(line: 329, column: 16, scope: !3881, inlinedAt: !4911)
!4944 = !DILocation(line: 407, column: 17, scope: !4904)
!4945 = !DILocation(line: 407, column: 22, scope: !4904)
!4946 = !DILocation(line: 407, column: 9, scope: !4904)
!4947 = !DILocation(line: 407, column: 7, scope: !4904)
!4948 = !DILocation(line: 408, column: 26, scope: !4904)
!4949 = !DILocation(line: 408, column: 31, scope: !4904)
!4950 = !DILocation(line: 408, column: 42, scope: !4904)
!4951 = !DILocation(line: 409, column: 2, scope: !3954, inlinedAt: !4908)
!4952 = !DILocation(line: 409, column: 2, scope: !3959, inlinedAt: !4908)
!4953 = !DILocation(line: 409, column: 2, scope: !3960, inlinedAt: !4908)
!4954 = !DILocation(line: 409, column: 2, scope: !3967, inlinedAt: !4908)
!4955 = !DILocation(line: 409, column: 2, scope: !3970, inlinedAt: !4908)
!4956 = !DILocation(line: 410, column: 9, scope: !4904)
!4957 = !DILocation(line: 410, column: 2, scope: !4904)
!4958 = distinct !DISubprogram(name: "task_session", scope: !2602, file: !2602, line: 642, type: !4007, scopeLine: 643, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4959 = !DILocalVariable(name: "task", arg: 1, scope: !4958, file: !2602, line: 642, type: !115)
!4960 = !DILocation(line: 642, column: 60, scope: !4958)
!4961 = !DILocation(line: 644, column: 9, scope: !4958)
!4962 = !DILocation(line: 644, column: 15, scope: !4958)
!4963 = !DILocation(line: 644, column: 23, scope: !4958)
!4964 = !DILocation(line: 644, column: 2, scope: !4958)
!4965 = distinct !DISubprogram(name: "no_tty", scope: !1, file: !1, line: 323, type: !3436, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4966 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !4967)
!4967 = distinct !DILocation(line: 328, column: 28, scope: !4965)
!4968 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !4967)
!4969 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !4967)
!4970 = !DILocalVariable(name: "tsk", scope: !4965, file: !1, line: 328, type: !115)
!4971 = !DILocation(line: 328, column: 22, scope: !4965)
!4972 = !DILocation(line: 329, column: 2, scope: !4965)
!4973 = !DILocation(line: 330, column: 17, scope: !4965)
!4974 = !DILocation(line: 330, column: 2, scope: !4965)
!4975 = !DILocation(line: 331, column: 1, scope: !4965)
!4976 = distinct !DISubprogram(name: "tty_jobctrl_ioctl", scope: !1, file: !1, line: 552, type: !4977, scopeLine: 554, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4977 = !DISubroutineType(types: !4978)
!4978 = !{!122, !2654, !2654, !361, !5, !97}
!4979 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !4980)
!4980 = distinct !DILocation(line: 559, column: 7, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4982, file: !1, line: 559, column: 7)
!4982 = distinct !DILexicalBlock(scope: !4976, file: !1, line: 557, column: 15)
!4983 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !4980)
!4984 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !4980)
!4985 = !DILocalVariable(name: "tty", arg: 1, scope: !4976, file: !1, line: 552, type: !2654)
!4986 = !DILocation(line: 552, column: 43, scope: !4976)
!4987 = !DILocalVariable(name: "real_tty", arg: 2, scope: !4976, file: !1, line: 552, type: !2654)
!4988 = !DILocation(line: 552, column: 67, scope: !4976)
!4989 = !DILocalVariable(name: "file", arg: 3, scope: !4976, file: !1, line: 553, type: !361)
!4990 = !DILocation(line: 553, column: 23, scope: !4976)
!4991 = !DILocalVariable(name: "cmd", arg: 4, scope: !4976, file: !1, line: 553, type: !5)
!4992 = !DILocation(line: 553, column: 42, scope: !4976)
!4993 = !DILocalVariable(name: "arg", arg: 5, scope: !4976, file: !1, line: 553, type: !97)
!4994 = !DILocation(line: 553, column: 61, scope: !4976)
!4995 = !DILocalVariable(name: "p", scope: !4976, file: !1, line: 555, type: !103)
!4996 = !DILocation(line: 555, column: 15, scope: !4976)
!4997 = !DILocation(line: 555, column: 34, scope: !4976)
!4998 = !DILocation(line: 555, column: 19, scope: !4976)
!4999 = !DILocation(line: 557, column: 10, scope: !4976)
!5000 = !DILocation(line: 557, column: 2, scope: !4976)
!5001 = !DILocation(line: 559, column: 16, scope: !4981)
!5002 = !DILocation(line: 559, column: 24, scope: !4981)
!5003 = !DILocation(line: 559, column: 31, scope: !4981)
!5004 = !DILocation(line: 559, column: 28, scope: !4981)
!5005 = !DILocation(line: 559, column: 7, scope: !4982)
!5006 = !DILocation(line: 560, column: 4, scope: !4981)
!5007 = !DILocation(line: 561, column: 3, scope: !4982)
!5008 = !DILocation(line: 562, column: 3, scope: !4982)
!5009 = !DILocation(line: 564, column: 20, scope: !4982)
!5010 = !DILocation(line: 564, column: 30, scope: !4982)
!5011 = !DILocation(line: 564, column: 36, scope: !4982)
!5012 = !DILocation(line: 564, column: 10, scope: !4982)
!5013 = !DILocation(line: 564, column: 3, scope: !4982)
!5014 = !DILocation(line: 566, column: 20, scope: !4982)
!5015 = !DILocation(line: 566, column: 25, scope: !4982)
!5016 = !DILocation(line: 566, column: 35, scope: !4982)
!5017 = !DILocation(line: 566, column: 10, scope: !4982)
!5018 = !DILocation(line: 566, column: 3, scope: !4982)
!5019 = !DILocation(line: 568, column: 20, scope: !4982)
!5020 = !DILocation(line: 568, column: 25, scope: !4982)
!5021 = !DILocation(line: 568, column: 35, scope: !4982)
!5022 = !DILocation(line: 568, column: 10, scope: !4982)
!5023 = !DILocation(line: 568, column: 3, scope: !4982)
!5024 = !DILocation(line: 570, column: 19, scope: !4982)
!5025 = !DILocation(line: 570, column: 24, scope: !4982)
!5026 = !DILocation(line: 570, column: 34, scope: !4982)
!5027 = !DILocation(line: 570, column: 10, scope: !4982)
!5028 = !DILocation(line: 570, column: 3, scope: !4982)
!5029 = !DILocation(line: 572, column: 2, scope: !4976)
!5030 = !DILocation(line: 573, column: 1, scope: !4976)
!5031 = distinct !DISubprogram(name: "tiocsctty", scope: !1, file: !1, line: 346, type: !5032, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5032 = !DISubroutineType(types: !5033)
!5033 = !{!133, !2654, !361, !133}
!5034 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !5035)
!5035 = distinct !DILocation(line: 360, column: 34, scope: !5036)
!5036 = distinct !DILexicalBlock(scope: !5031, file: !1, line: 360, column: 6)
!5037 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !5035)
!5038 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !5035)
!5039 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !5040)
!5040 = distinct !DILocation(line: 360, column: 7, scope: !5036)
!5041 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !5040)
!5042 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !5040)
!5043 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !5044)
!5044 = distinct !DILocation(line: 353, column: 47, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !5031, file: !1, line: 353, column: 6)
!5046 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !5044)
!5047 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !5044)
!5048 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !5049)
!5049 = distinct !DILocation(line: 353, column: 6, scope: !5045)
!5050 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !5049)
!5051 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !5049)
!5052 = !DILocalVariable(name: "tty", arg: 1, scope: !5031, file: !1, line: 346, type: !2654)
!5053 = !DILocation(line: 346, column: 41, scope: !5031)
!5054 = !DILocalVariable(name: "file", arg: 2, scope: !5031, file: !1, line: 346, type: !361)
!5055 = !DILocation(line: 346, column: 59, scope: !5031)
!5056 = !DILocalVariable(name: "arg", arg: 3, scope: !5031, file: !1, line: 346, type: !133)
!5057 = !DILocation(line: 346, column: 69, scope: !5031)
!5058 = !DILocalVariable(name: "ret", scope: !5031, file: !1, line: 348, type: !133)
!5059 = !DILocation(line: 348, column: 6, scope: !5031)
!5060 = !DILocation(line: 350, column: 11, scope: !5031)
!5061 = !DILocation(line: 350, column: 2, scope: !5031)
!5062 = !DILocation(line: 351, column: 2, scope: !5031)
!5063 = !DILocation(line: 351, column: 2, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5031, file: !1, line: 351, column: 2)
!5065 = !{i32 -2142970063}
!5066 = !DILocation(line: 351, column: 2, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5064, file: !1, line: 351, column: 2)
!5068 = !DILocation(line: 353, column: 15, scope: !5045)
!5069 = !DILocation(line: 353, column: 23, scope: !5045)
!5070 = !DILocation(line: 353, column: 6, scope: !5045)
!5071 = !DILocation(line: 353, column: 30, scope: !5045)
!5072 = !DILocation(line: 353, column: 34, scope: !5045)
!5073 = !DILocation(line: 353, column: 59, scope: !5045)
!5074 = !DILocation(line: 353, column: 64, scope: !5045)
!5075 = !DILocation(line: 353, column: 56, scope: !5045)
!5076 = !DILocation(line: 353, column: 6, scope: !5031)
!5077 = !DILocation(line: 354, column: 3, scope: !5045)
!5078 = !DILocation(line: 360, column: 16, scope: !5036)
!5079 = !DILocation(line: 360, column: 24, scope: !5036)
!5080 = !DILocation(line: 360, column: 7, scope: !5036)
!5081 = !DILocation(line: 360, column: 31, scope: !5036)
!5082 = !DILocation(line: 360, column: 43, scope: !5036)
!5083 = !DILocation(line: 360, column: 51, scope: !5036)
!5084 = !DILocation(line: 360, column: 34, scope: !5036)
!5085 = !DILocation(line: 360, column: 6, scope: !5031)
!5086 = !DILocation(line: 361, column: 7, scope: !5087)
!5087 = distinct !DILexicalBlock(scope: !5036, file: !1, line: 360, column: 56)
!5088 = !DILocation(line: 362, column: 3, scope: !5087)
!5089 = !DILocation(line: 365, column: 6, scope: !5090)
!5090 = distinct !DILexicalBlock(scope: !5031, file: !1, line: 365, column: 6)
!5091 = !DILocation(line: 365, column: 11, scope: !5090)
!5092 = !DILocation(line: 365, column: 6, scope: !5031)
!5093 = !DILocation(line: 370, column: 7, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5095, file: !1, line: 370, column: 7)
!5095 = distinct !DILexicalBlock(scope: !5090, file: !1, line: 365, column: 20)
!5096 = !DILocation(line: 370, column: 11, scope: !5094)
!5097 = !DILocation(line: 370, column: 16, scope: !5094)
!5098 = !DILocation(line: 370, column: 19, scope: !5094)
!5099 = !DILocation(line: 370, column: 7, scope: !5095)
!5100 = !DILocation(line: 374, column: 22, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !5094, file: !1, line: 370, column: 43)
!5102 = !DILocation(line: 374, column: 27, scope: !5101)
!5103 = !DILocation(line: 374, column: 4, scope: !5101)
!5104 = !DILocation(line: 375, column: 3, scope: !5101)
!5105 = !DILocation(line: 376, column: 8, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5094, file: !1, line: 375, column: 10)
!5107 = !DILocation(line: 377, column: 4, scope: !5106)
!5108 = !DILocation(line: 379, column: 2, scope: !5095)
!5109 = !DILocation(line: 382, column: 7, scope: !5110)
!5110 = distinct !DILexicalBlock(scope: !5031, file: !1, line: 382, column: 6)
!5111 = !DILocation(line: 382, column: 13, scope: !5110)
!5112 = !DILocation(line: 382, column: 20, scope: !5110)
!5113 = !DILocation(line: 382, column: 34, scope: !5110)
!5114 = !DILocation(line: 382, column: 39, scope: !5110)
!5115 = !DILocation(line: 382, column: 43, scope: !5110)
!5116 = !DILocation(line: 382, column: 6, scope: !5031)
!5117 = !DILocation(line: 383, column: 7, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5110, file: !1, line: 382, column: 67)
!5119 = !DILocation(line: 384, column: 3, scope: !5118)
!5120 = !DILocation(line: 387, column: 15, scope: !5031)
!5121 = !DILocation(line: 387, column: 2, scope: !5031)
!5122 = !DILabel(scope: !5031, name: "unlock", file: !1, line: 388)
!5123 = !DILocation(line: 388, column: 1, scope: !5031)
!5124 = !DILocation(line: 389, column: 2, scope: !5031)
!5125 = !DILocation(line: 389, column: 2, scope: !5126)
!5126 = distinct !DILexicalBlock(scope: !5031, file: !1, line: 389, column: 2)
!5127 = !{i32 -2142969703}
!5128 = !DILocation(line: 389, column: 2, scope: !5129)
!5129 = distinct !DILexicalBlock(scope: !5126, file: !1, line: 389, column: 2)
!5130 = !DILocation(line: 390, column: 13, scope: !5031)
!5131 = !DILocation(line: 390, column: 2, scope: !5031)
!5132 = !DILocation(line: 391, column: 9, scope: !5031)
!5133 = !DILocation(line: 391, column: 2, scope: !5031)
!5134 = distinct !DISubprogram(name: "tiocgpgrp", scope: !1, file: !1, line: 446, type: !5135, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5135 = !DISubroutineType(types: !5136)
!5136 = !{!133, !2654, !2654, !5137}
!5137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!5138 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !5139)
!5139 = distinct !DILocation(line: 454, column: 25, scope: !5140)
!5140 = distinct !DILexicalBlock(scope: !5134, file: !1, line: 454, column: 6)
!5141 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !5139)
!5142 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !5139)
!5143 = !DILocalVariable(name: "tty", arg: 1, scope: !5134, file: !1, line: 446, type: !2654)
!5144 = !DILocation(line: 446, column: 41, scope: !5134)
!5145 = !DILocalVariable(name: "real_tty", arg: 2, scope: !5134, file: !1, line: 446, type: !2654)
!5146 = !DILocation(line: 446, column: 65, scope: !5134)
!5147 = !DILocalVariable(name: "p", arg: 3, scope: !5134, file: !1, line: 446, type: !5137)
!5148 = !DILocation(line: 446, column: 89, scope: !5134)
!5149 = !DILocalVariable(name: "pid", scope: !5134, file: !1, line: 448, type: !2094)
!5150 = !DILocation(line: 448, column: 14, scope: !5134)
!5151 = !DILocalVariable(name: "ret", scope: !5134, file: !1, line: 449, type: !133)
!5152 = !DILocation(line: 449, column: 6, scope: !5134)
!5153 = !DILocation(line: 454, column: 6, scope: !5140)
!5154 = !DILocation(line: 454, column: 13, scope: !5140)
!5155 = !DILocation(line: 454, column: 10, scope: !5140)
!5156 = !DILocation(line: 454, column: 22, scope: !5140)
!5157 = !DILocation(line: 454, column: 34, scope: !5140)
!5158 = !DILocation(line: 454, column: 42, scope: !5140)
!5159 = !DILocation(line: 454, column: 49, scope: !5140)
!5160 = !DILocation(line: 454, column: 46, scope: !5140)
!5161 = !DILocation(line: 454, column: 6, scope: !5134)
!5162 = !DILocation(line: 455, column: 3, scope: !5140)
!5163 = !DILocation(line: 456, column: 21, scope: !5134)
!5164 = !DILocation(line: 456, column: 8, scope: !5134)
!5165 = !DILocation(line: 456, column: 6, scope: !5134)
!5166 = !DILocation(line: 457, column: 9, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5134, file: !1, line: 457, column: 9)
!5168 = !DILocalVariable(name: "__ret_pu", scope: !5169, file: !1, line: 457, type: !133)
!5169 = distinct !DILexicalBlock(scope: !5167, file: !1, line: 457, column: 9)
!5170 = !DILocation(line: 457, column: 9, scope: !5169)
!5171 = !DILocalVariable(name: "__ptr_pu", scope: !5169, file: !1, line: 457, type: !103)
!5172 = !DILocalVariable(name: "__val_pu", scope: !5169, file: !1, line: 457, type: !2526)
!5173 = !{i32 -2142968118}
!5174 = !DILocation(line: 457, column: 9, scope: !5134)
!5175 = !DILocation(line: 457, column: 6, scope: !5134)
!5176 = !DILocation(line: 458, column: 10, scope: !5134)
!5177 = !DILocation(line: 458, column: 2, scope: !5134)
!5178 = !DILocation(line: 459, column: 9, scope: !5134)
!5179 = !DILocation(line: 459, column: 2, scope: !5134)
!5180 = !DILocation(line: 460, column: 1, scope: !5134)
!5181 = distinct !DISubprogram(name: "tiocspgrp", scope: !1, file: !1, line: 473, type: !5135, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5182 = !DILocation(line: 402, column: 57, scope: !4142, inlinedAt: !5183)
!5183 = distinct !DILocation(line: 510, column: 2, scope: !5181)
!5184 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !5185)
!5185 = distinct !DILocation(line: 502, column: 44, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5181, file: !1, line: 502, column: 6)
!5187 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !5185)
!5188 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !5185)
!5189 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !5190)
!5190 = distinct !DILocation(line: 492, column: 41, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5181, file: !1, line: 490, column: 6)
!5192 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !5190)
!5193 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !5190)
!5194 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !5195)
!5195 = distinct !DILocation(line: 491, column: 7, scope: !5191)
!5196 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !5195)
!5197 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !5195)
!5198 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !5199)
!5199 = distinct !DILocation(line: 490, column: 7, scope: !5191)
!5200 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !5199)
!5201 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !5199)
!5202 = !DILocation(line: 377, column: 55, scope: !4161, inlinedAt: !5203)
!5203 = distinct !DILocation(line: 489, column: 2, scope: !5181)
!5204 = !DILocalVariable(name: "tty", arg: 1, scope: !5181, file: !1, line: 473, type: !2654)
!5205 = !DILocation(line: 473, column: 41, scope: !5181)
!5206 = !DILocalVariable(name: "real_tty", arg: 2, scope: !5181, file: !1, line: 473, type: !2654)
!5207 = !DILocation(line: 473, column: 65, scope: !5181)
!5208 = !DILocalVariable(name: "p", arg: 3, scope: !5181, file: !1, line: 473, type: !5137)
!5209 = !DILocation(line: 473, column: 89, scope: !5181)
!5210 = !DILocalVariable(name: "pgrp", scope: !5181, file: !1, line: 475, type: !2094)
!5211 = !DILocation(line: 475, column: 14, scope: !5181)
!5212 = !DILocalVariable(name: "pgrp_nr", scope: !5181, file: !1, line: 476, type: !2526)
!5213 = !DILocation(line: 476, column: 8, scope: !5181)
!5214 = !DILocalVariable(name: "retval", scope: !5181, file: !1, line: 477, type: !133)
!5215 = !DILocation(line: 477, column: 6, scope: !5181)
!5216 = !DILocation(line: 477, column: 32, scope: !5181)
!5217 = !DILocation(line: 477, column: 15, scope: !5181)
!5218 = !DILocation(line: 479, column: 6, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5181, file: !1, line: 479, column: 6)
!5220 = !DILocation(line: 479, column: 13, scope: !5219)
!5221 = !DILocation(line: 479, column: 6, scope: !5181)
!5222 = !DILocation(line: 480, column: 3, scope: !5219)
!5223 = !DILocation(line: 481, column: 6, scope: !5224)
!5224 = distinct !DILexicalBlock(scope: !5181, file: !1, line: 481, column: 6)
!5225 = !DILocation(line: 481, column: 6, scope: !5181)
!5226 = !DILocation(line: 482, column: 10, scope: !5224)
!5227 = !DILocation(line: 482, column: 3, scope: !5224)
!5228 = !DILocation(line: 484, column: 6, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5230, file: !1, line: 484, column: 6)
!5230 = distinct !DILexicalBlock(scope: !5181, file: !1, line: 484, column: 6)
!5231 = !DILocalVariable(name: "__ret_gu", scope: !5232, file: !1, line: 484, type: !133)
!5232 = distinct !DILexicalBlock(scope: !5229, file: !1, line: 484, column: 6)
!5233 = !DILocation(line: 484, column: 6, scope: !5232)
!5234 = !DILocalVariable(name: "__val_gu", scope: !5232, file: !1, line: 484, type: !5)
!5235 = !{i32 -2142967454}
!5236 = !DILocation(line: 484, column: 6, scope: !5230)
!5237 = !DILocation(line: 484, column: 6, scope: !5181)
!5238 = !DILocation(line: 485, column: 3, scope: !5230)
!5239 = !DILocation(line: 486, column: 6, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5181, file: !1, line: 486, column: 6)
!5241 = !DILocation(line: 486, column: 14, scope: !5240)
!5242 = !DILocation(line: 486, column: 6, scope: !5181)
!5243 = !DILocation(line: 487, column: 3, scope: !5240)
!5244 = !DILocation(line: 489, column: 17, scope: !5181)
!5245 = !DILocation(line: 489, column: 27, scope: !5181)
!5246 = !DILocation(line: 379, column: 2, scope: !4181, inlinedAt: !5203)
!5247 = !DILocation(line: 379, column: 2, scope: !4184, inlinedAt: !5203)
!5248 = !DILocation(line: 379, column: 2, scope: !4187, inlinedAt: !5203)
!5249 = !DILocation(line: 490, column: 16, scope: !5191)
!5250 = !DILocation(line: 490, column: 24, scope: !5191)
!5251 = !DILocation(line: 490, column: 7, scope: !5191)
!5252 = !DILocation(line: 490, column: 28, scope: !5191)
!5253 = !DILocation(line: 491, column: 16, scope: !5191)
!5254 = !DILocation(line: 491, column: 24, scope: !5191)
!5255 = !DILocation(line: 491, column: 31, scope: !5191)
!5256 = !DILocation(line: 491, column: 28, scope: !5191)
!5257 = !DILocation(line: 491, column: 41, scope: !5191)
!5258 = !DILocation(line: 492, column: 7, scope: !5191)
!5259 = !DILocation(line: 492, column: 17, scope: !5191)
!5260 = !DILocation(line: 492, column: 28, scope: !5191)
!5261 = !DILocation(line: 492, column: 25, scope: !5191)
!5262 = !DILocation(line: 490, column: 6, scope: !5181)
!5263 = !DILocation(line: 493, column: 10, scope: !5264)
!5264 = distinct !DILexicalBlock(scope: !5191, file: !1, line: 492, column: 52)
!5265 = !DILocation(line: 494, column: 3, scope: !5264)
!5266 = !DILocation(line: 639, column: 2, scope: !3921, inlinedAt: !5267)
!5267 = distinct !DILocation(line: 496, column: 2, scope: !5181)
!5268 = !DILocation(line: 497, column: 19, scope: !5181)
!5269 = !DILocation(line: 497, column: 9, scope: !5181)
!5270 = !DILocation(line: 497, column: 7, scope: !5181)
!5271 = !DILocation(line: 498, column: 9, scope: !5181)
!5272 = !DILocation(line: 499, column: 7, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5181, file: !1, line: 499, column: 6)
!5274 = !DILocation(line: 499, column: 6, scope: !5181)
!5275 = !DILocation(line: 500, column: 3, scope: !5273)
!5276 = !DILocation(line: 501, column: 9, scope: !5181)
!5277 = !DILocation(line: 502, column: 22, scope: !5186)
!5278 = !DILocation(line: 502, column: 6, scope: !5186)
!5279 = !DILocation(line: 502, column: 31, scope: !5186)
!5280 = !DILocation(line: 502, column: 28, scope: !5186)
!5281 = !DILocation(line: 502, column: 6, scope: !5181)
!5282 = !DILocation(line: 503, column: 3, scope: !5186)
!5283 = !DILocation(line: 504, column: 9, scope: !5181)
!5284 = !DILocation(line: 505, column: 10, scope: !5181)
!5285 = !DILocation(line: 505, column: 20, scope: !5181)
!5286 = !DILocation(line: 505, column: 2, scope: !5181)
!5287 = !DILocation(line: 506, column: 27, scope: !5181)
!5288 = !DILocation(line: 506, column: 19, scope: !5181)
!5289 = !DILocation(line: 506, column: 2, scope: !5181)
!5290 = !DILocation(line: 506, column: 12, scope: !5181)
!5291 = !DILocation(line: 506, column: 17, scope: !5181)
!5292 = !DILabel(scope: !5181, name: "out_unlock", file: !1, line: 507)
!5293 = !DILocation(line: 507, column: 1, scope: !5181)
!5294 = !DILocation(line: 508, column: 2, scope: !5181)
!5295 = !DILabel(scope: !5181, name: "out_unlock_ctrl", file: !1, line: 509)
!5296 = !DILocation(line: 509, column: 1, scope: !5181)
!5297 = !DILocation(line: 510, column: 19, scope: !5181)
!5298 = !DILocation(line: 510, column: 29, scope: !5181)
!5299 = !DILocation(line: 404, column: 2, scope: !4212, inlinedAt: !5183)
!5300 = !DILocation(line: 404, column: 2, scope: !4215, inlinedAt: !5183)
!5301 = !DILocation(line: 404, column: 2, scope: !4218, inlinedAt: !5183)
!5302 = !DILocation(line: 511, column: 9, scope: !5181)
!5303 = !DILocation(line: 511, column: 2, scope: !5181)
!5304 = !DILocation(line: 512, column: 1, scope: !5181)
!5305 = distinct !DISubprogram(name: "tiocgsid", scope: !1, file: !1, line: 523, type: !5135, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5306 = !DILocation(line: 407, column: 64, scope: !3871, inlinedAt: !5307)
!5307 = distinct !DILocation(line: 539, column: 2, scope: !5305)
!5308 = !DILocation(line: 407, column: 84, scope: !3871, inlinedAt: !5307)
!5309 = !DILocation(line: 407, column: 64, scope: !3871, inlinedAt: !5310)
!5310 = distinct !DILocation(line: 544, column: 2, scope: !5305)
!5311 = !DILocation(line: 407, column: 84, scope: !3871, inlinedAt: !5310)
!5312 = !DILocation(line: 327, column: 67, scope: !3881, inlinedAt: !5313)
!5313 = distinct !DILocation(line: 535, column: 2, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5315, file: !1, line: 535, column: 2)
!5315 = distinct !DILexicalBlock(scope: !5316, file: !1, line: 535, column: 2)
!5316 = distinct !DILexicalBlock(scope: !5317, file: !1, line: 535, column: 2)
!5317 = distinct !DILexicalBlock(scope: !5318, file: !1, line: 535, column: 2)
!5318 = distinct !DILexicalBlock(scope: !5305, file: !1, line: 535, column: 2)
!5319 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !5320)
!5320 = distinct !DILocation(line: 532, column: 25, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5305, file: !1, line: 532, column: 6)
!5322 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !5320)
!5323 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !5320)
!5324 = !DILocalVariable(name: "tty", arg: 1, scope: !5305, file: !1, line: 523, type: !2654)
!5325 = !DILocation(line: 523, column: 40, scope: !5305)
!5326 = !DILocalVariable(name: "real_tty", arg: 2, scope: !5305, file: !1, line: 523, type: !2654)
!5327 = !DILocation(line: 523, column: 64, scope: !5305)
!5328 = !DILocalVariable(name: "p", arg: 3, scope: !5305, file: !1, line: 523, type: !5137)
!5329 = !DILocation(line: 523, column: 88, scope: !5305)
!5330 = !DILocalVariable(name: "flags", scope: !5305, file: !1, line: 525, type: !97)
!5331 = !DILocation(line: 525, column: 16, scope: !5305)
!5332 = !DILocalVariable(name: "sid", scope: !5305, file: !1, line: 526, type: !2526)
!5333 = !DILocation(line: 526, column: 8, scope: !5305)
!5334 = !DILocation(line: 532, column: 6, scope: !5321)
!5335 = !DILocation(line: 532, column: 13, scope: !5321)
!5336 = !DILocation(line: 532, column: 10, scope: !5321)
!5337 = !DILocation(line: 532, column: 22, scope: !5321)
!5338 = !DILocation(line: 532, column: 34, scope: !5321)
!5339 = !DILocation(line: 532, column: 42, scope: !5321)
!5340 = !DILocation(line: 532, column: 49, scope: !5321)
!5341 = !DILocation(line: 532, column: 46, scope: !5321)
!5342 = !DILocation(line: 532, column: 6, scope: !5305)
!5343 = !DILocation(line: 533, column: 3, scope: !5321)
!5344 = !DILocation(line: 535, column: 2, scope: !5305)
!5345 = !DILocation(line: 535, column: 2, scope: !5318)
!5346 = !DILocalVariable(name: "__dummy", scope: !5347, file: !1, line: 535, type: !97)
!5347 = distinct !DILexicalBlock(scope: !5317, file: !1, line: 535, column: 2)
!5348 = !DILocation(line: 535, column: 2, scope: !5347)
!5349 = !DILocalVariable(name: "__dummy2", scope: !5347, file: !1, line: 535, type: !97)
!5350 = !DILocation(line: 535, column: 2, scope: !5317)
!5351 = !DILocation(line: 535, column: 2, scope: !5316)
!5352 = !DILocation(line: 535, column: 2, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5316, file: !1, line: 535, column: 2)
!5354 = !DILocalVariable(name: "__dummy", scope: !5355, file: !1, line: 535, type: !97)
!5355 = distinct !DILexicalBlock(scope: !5356, file: !1, line: 535, column: 2)
!5356 = distinct !DILexicalBlock(scope: !5353, file: !1, line: 535, column: 2)
!5357 = !DILocation(line: 535, column: 2, scope: !5355)
!5358 = !DILocalVariable(name: "__dummy2", scope: !5355, file: !1, line: 535, type: !97)
!5359 = !DILocation(line: 535, column: 2, scope: !5356)
!5360 = !DILocation(line: 535, column: 2, scope: !5315)
!5361 = !{i32 -2142965035}
!5362 = !DILocation(line: 535, column: 2, scope: !5314)
!5363 = !DILocation(line: 329, column: 10, scope: !3881, inlinedAt: !5313)
!5364 = !DILocation(line: 329, column: 16, scope: !3881, inlinedAt: !5313)
!5365 = !DILocation(line: 536, column: 7, scope: !5366)
!5366 = distinct !DILexicalBlock(scope: !5305, file: !1, line: 536, column: 6)
!5367 = !DILocation(line: 536, column: 17, scope: !5366)
!5368 = !DILocation(line: 536, column: 6, scope: !5305)
!5369 = !DILocation(line: 537, column: 3, scope: !5366)
!5370 = !DILocation(line: 538, column: 16, scope: !5305)
!5371 = !DILocation(line: 538, column: 26, scope: !5305)
!5372 = !DILocation(line: 538, column: 8, scope: !5305)
!5373 = !DILocation(line: 538, column: 6, scope: !5305)
!5374 = !DILocation(line: 539, column: 26, scope: !5305)
!5375 = !DILocation(line: 539, column: 36, scope: !5305)
!5376 = !DILocation(line: 539, column: 47, scope: !5305)
!5377 = !DILocation(line: 409, column: 2, scope: !3954, inlinedAt: !5307)
!5378 = !DILocation(line: 409, column: 2, scope: !3959, inlinedAt: !5307)
!5379 = !DILocation(line: 409, column: 2, scope: !3960, inlinedAt: !5307)
!5380 = !DILocation(line: 409, column: 2, scope: !3967, inlinedAt: !5307)
!5381 = !DILocation(line: 409, column: 2, scope: !3970, inlinedAt: !5307)
!5382 = !DILocation(line: 541, column: 9, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5305, file: !1, line: 541, column: 9)
!5384 = !DILocalVariable(name: "__ret_pu", scope: !5385, file: !1, line: 541, type: !133)
!5385 = distinct !DILexicalBlock(scope: !5383, file: !1, line: 541, column: 9)
!5386 = !DILocation(line: 541, column: 9, scope: !5385)
!5387 = !DILocalVariable(name: "__ptr_pu", scope: !5385, file: !1, line: 541, type: !103)
!5388 = !DILocalVariable(name: "__val_pu", scope: !5385, file: !1, line: 541, type: !2526)
!5389 = !{i32 -2142964602}
!5390 = !DILocation(line: 541, column: 9, scope: !5305)
!5391 = !DILocation(line: 541, column: 2, scope: !5305)
!5392 = !DILabel(scope: !5305, name: "err", file: !1, line: 543)
!5393 = !DILocation(line: 543, column: 1, scope: !5305)
!5394 = !DILocation(line: 544, column: 26, scope: !5305)
!5395 = !DILocation(line: 544, column: 36, scope: !5305)
!5396 = !DILocation(line: 544, column: 47, scope: !5305)
!5397 = !DILocation(line: 409, column: 2, scope: !3954, inlinedAt: !5310)
!5398 = !DILocation(line: 409, column: 2, scope: !3959, inlinedAt: !5310)
!5399 = !DILocation(line: 409, column: 2, scope: !3960, inlinedAt: !5310)
!5400 = !DILocation(line: 409, column: 2, scope: !3967, inlinedAt: !5310)
!5401 = !DILocation(line: 409, column: 2, scope: !3970, inlinedAt: !5310)
!5402 = !DILocation(line: 545, column: 2, scope: !5305)
!5403 = !DILocation(line: 546, column: 1, scope: !5305)
!5404 = distinct !DISubprogram(name: "__rcu_read_lock", scope: !3922, file: !3922, line: 64, type: !3436, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5405 = !DILocation(line: 66, column: 2, scope: !5404)
!5406 = !{i32 -2145490798}
!5407 = !DILocation(line: 67, column: 1, scope: !5404)
!5408 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !4016, file: !4016, line: 646, type: !4017, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5409 = !DILocalVariable(name: "__ret", scope: !5410, file: !4016, line: 648, type: !97)
!5410 = distinct !DILexicalBlock(scope: !5408, file: !4016, line: 648, column: 9)
!5411 = !DILocation(line: 648, column: 9, scope: !5410)
!5412 = !DILocalVariable(name: "__edi", scope: !5410, file: !4016, line: 648, type: !97)
!5413 = !DILocalVariable(name: "__esi", scope: !5410, file: !4016, line: 648, type: !97)
!5414 = !DILocalVariable(name: "__edx", scope: !5410, file: !4016, line: 648, type: !97)
!5415 = !DILocalVariable(name: "__ecx", scope: !5410, file: !4016, line: 648, type: !97)
!5416 = !DILocalVariable(name: "__eax", scope: !5410, file: !4016, line: 648, type: !97)
!5417 = !DILocation(line: 648, column: 9, scope: !5418)
!5418 = distinct !DILexicalBlock(scope: !5419, file: !4016, line: 648, column: 9)
!5419 = distinct !DILexicalBlock(scope: !5410, file: !4016, line: 648, column: 9)
!5420 = !{i32 -2145790493, i32 -2145788178, i32 -2145787944, i32 -2145787893, i32 -2145787865, i32 -2145787840, i32 -2145788156, i32 -2145788143, i32 -2145787705, i32 -2145787586, i32 -2145788051, i32 -2145788024, i32 -2145787996, i32 -2145787966}
!5421 = !DILocalVariable(name: "__mask", scope: !5422, file: !4016, line: 648, type: !97)
!5422 = distinct !DILexicalBlock(scope: !5418, file: !4016, line: 648, column: 9)
!5423 = !DILocation(line: 648, column: 9, scope: !5422)
!5424 = !DILocation(line: 648, column: 9, scope: !5419)
!5425 = !DILocation(line: 648, column: 2, scope: !5408)
!5426 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !4016, file: !4016, line: 656, type: !3436, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5427 = !DILocalVariable(name: "__edi", scope: !5428, file: !4016, line: 658, type: !97)
!5428 = distinct !DILexicalBlock(scope: !5426, file: !4016, line: 658, column: 2)
!5429 = !DILocation(line: 658, column: 2, scope: !5428)
!5430 = !DILocalVariable(name: "__esi", scope: !5428, file: !4016, line: 658, type: !97)
!5431 = !DILocalVariable(name: "__edx", scope: !5428, file: !4016, line: 658, type: !97)
!5432 = !DILocalVariable(name: "__ecx", scope: !5428, file: !4016, line: 658, type: !97)
!5433 = !DILocalVariable(name: "__eax", scope: !5428, file: !4016, line: 658, type: !97)
!5434 = !{i32 -2145783399, i32 -2145782667, i32 -2145782433, i32 -2145782382, i32 -2145782354, i32 -2145782329, i32 -2145782645, i32 -2145782632, i32 -2145782194, i32 -2145782075, i32 -2145782540, i32 -2145782513, i32 -2145782485, i32 -2145782455}
!5435 = !DILocation(line: 659, column: 1, scope: !5426)
!5436 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !4016, file: !4016, line: 651, type: !5437, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5437 = !DISubroutineType(types: !5438)
!5438 = !{null, !97}
!5439 = !DILocalVariable(name: "f", arg: 1, scope: !5436, file: !4016, line: 651, type: !97)
!5440 = !DILocation(line: 651, column: 65, scope: !5436)
!5441 = !DILocalVariable(name: "__edi", scope: !5442, file: !4016, line: 653, type: !97)
!5442 = distinct !DILexicalBlock(scope: !5436, file: !4016, line: 653, column: 2)
!5443 = !DILocation(line: 653, column: 2, scope: !5442)
!5444 = !DILocalVariable(name: "__esi", scope: !5442, file: !4016, line: 653, type: !97)
!5445 = !DILocalVariable(name: "__edx", scope: !5442, file: !4016, line: 653, type: !97)
!5446 = !DILocalVariable(name: "__ecx", scope: !5442, file: !4016, line: 653, type: !97)
!5447 = !DILocalVariable(name: "__eax", scope: !5442, file: !4016, line: 653, type: !97)
!5448 = !{i32 -2145786026, i32 -2145785276, i32 -2145785042, i32 -2145784991, i32 -2145784963, i32 -2145784938, i32 -2145785254, i32 -2145785241, i32 -2145784803, i32 -2145784684, i32 -2145785149, i32 -2145785122, i32 -2145785094, i32 -2145785064}
!5449 = !DILocation(line: 654, column: 1, scope: !5436)
!5450 = distinct !DISubprogram(name: "sigismember", scope: !969, file: !969, line: 80, type: !5451, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5451 = !DISubroutineType(types: !5452)
!5452 = !{!133, !5453, !133}
!5453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!5454 = !DILocalVariable(name: "set", arg: 1, scope: !5450, file: !969, line: 80, type: !5453)
!5455 = !DILocation(line: 80, column: 41, scope: !5450)
!5456 = !DILocalVariable(name: "_sig", arg: 2, scope: !5450, file: !969, line: 80, type: !133)
!5457 = !DILocation(line: 80, column: 50, scope: !5450)
!5458 = !DILocalVariable(name: "sig", scope: !5450, file: !969, line: 82, type: !97)
!5459 = !DILocation(line: 82, column: 16, scope: !5450)
!5460 = !DILocation(line: 82, column: 22, scope: !5450)
!5461 = !DILocation(line: 82, column: 27, scope: !5450)
!5462 = !DILocation(line: 84, column: 15, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !5450, file: !969, line: 83, column: 6)
!5464 = !DILocation(line: 84, column: 20, scope: !5463)
!5465 = !DILocation(line: 84, column: 30, scope: !5463)
!5466 = !DILocation(line: 84, column: 27, scope: !5463)
!5467 = !DILocation(line: 84, column: 12, scope: !5463)
!5468 = !DILocation(line: 84, column: 10, scope: !5463)
!5469 = !DILocation(line: 84, column: 3, scope: !5463)
!5470 = distinct !DISubprogram(name: "set_bit", scope: !5471, file: !5471, line: 26, type: !5472, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5471 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5472 = !DISubroutineType(types: !5473)
!5473 = !{null, !122, !5474}
!5474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5475, size: 64)
!5475 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !97)
!5476 = !DILocalVariable(name: "nr", arg: 1, scope: !5477, file: !5478, line: 52, type: !122)
!5477 = distinct !DISubprogram(name: "arch_set_bit", scope: !5478, file: !5478, line: 52, type: !5472, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5478 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5479 = !DILocation(line: 52, column: 19, scope: !5477, inlinedAt: !5480)
!5480 = distinct !DILocation(line: 29, column: 2, scope: !5470)
!5481 = !DILocalVariable(name: "addr", arg: 2, scope: !5477, file: !5478, line: 52, type: !5474)
!5482 = !DILocation(line: 52, column: 47, scope: !5477, inlinedAt: !5480)
!5483 = !DILocalVariable(name: "v", arg: 1, scope: !5484, file: !5485, line: 84, type: !5488)
!5484 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5485, file: !5485, line: 84, type: !5486, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5485 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5486 = !DISubroutineType(types: !5487)
!5487 = !{null, !5488, !580}
!5488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5489, size: 64)
!5489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5490)
!5490 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5491 = !DILocation(line: 84, column: 74, scope: !5484, inlinedAt: !5492)
!5492 = distinct !DILocation(line: 28, column: 2, scope: !5470)
!5493 = !DILocalVariable(name: "size", arg: 2, scope: !5484, file: !5485, line: 84, type: !580)
!5494 = !DILocation(line: 84, column: 84, scope: !5484, inlinedAt: !5492)
!5495 = !DILocalVariable(name: "nr", arg: 1, scope: !5470, file: !5471, line: 26, type: !122)
!5496 = !DILocation(line: 26, column: 33, scope: !5470)
!5497 = !DILocalVariable(name: "addr", arg: 2, scope: !5470, file: !5471, line: 26, type: !5474)
!5498 = !DILocation(line: 26, column: 61, scope: !5470)
!5499 = !DILocation(line: 28, column: 26, scope: !5470)
!5500 = !DILocation(line: 28, column: 33, scope: !5470)
!5501 = !DILocation(line: 28, column: 31, scope: !5470)
!5502 = !DILocation(line: 86, column: 20, scope: !5484, inlinedAt: !5492)
!5503 = !DILocation(line: 86, column: 23, scope: !5484, inlinedAt: !5492)
!5504 = !DILocation(line: 86, column: 2, scope: !5484, inlinedAt: !5492)
!5505 = !DILocation(line: 87, column: 2, scope: !5484, inlinedAt: !5492)
!5506 = !DILocation(line: 29, column: 15, scope: !5470)
!5507 = !DILocation(line: 29, column: 19, scope: !5470)
!5508 = !DILocation(line: 54, column: 27, scope: !5509, inlinedAt: !5480)
!5509 = distinct !DILexicalBlock(scope: !5477, file: !5478, line: 54, column: 6)
!5510 = !DILocation(line: 54, column: 6, scope: !5509, inlinedAt: !5480)
!5511 = !DILocation(line: 54, column: 6, scope: !5477, inlinedAt: !5480)
!5512 = !DILocation(line: 56, column: 6, scope: !5513, inlinedAt: !5480)
!5513 = distinct !DILexicalBlock(scope: !5509, file: !5478, line: 54, column: 32)
!5514 = !DILocation(line: 57, column: 12, scope: !5513, inlinedAt: !5480)
!5515 = !DILocation(line: 55, column: 3, scope: !5513, inlinedAt: !5480)
!5516 = !{i32 -2147163164}
!5517 = !DILocation(line: 59, column: 2, scope: !5513, inlinedAt: !5480)
!5518 = !DILocation(line: 61, column: 8, scope: !5519, inlinedAt: !5480)
!5519 = distinct !DILexicalBlock(scope: !5509, file: !5478, line: 59, column: 9)
!5520 = !DILocation(line: 61, column: 32, scope: !5519, inlinedAt: !5480)
!5521 = !DILocation(line: 60, column: 3, scope: !5519, inlinedAt: !5480)
!5522 = !{i32 -2147163032}
!5523 = !DILocation(line: 30, column: 1, scope: !5470)
!5524 = distinct !DISubprogram(name: "kasan_check_write", scope: !5525, file: !5525, line: 38, type: !5526, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5525 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5526 = !DISubroutineType(types: !5527)
!5527 = !{!491, !5488, !5}
!5528 = !DILocalVariable(name: "p", arg: 1, scope: !5524, file: !5525, line: 38, type: !5488)
!5529 = !DILocation(line: 38, column: 59, scope: !5524)
!5530 = !DILocalVariable(name: "size", arg: 2, scope: !5524, file: !5525, line: 38, type: !5)
!5531 = !DILocation(line: 38, column: 75, scope: !5524)
!5532 = !DILocation(line: 40, column: 2, scope: !5524)
!5533 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5534, file: !5534, line: 178, type: !5535, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5534 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5535 = !DISubroutineType(types: !5536)
!5536 = !{null, !5488, !580, !133}
!5537 = !DILocalVariable(name: "ptr", arg: 1, scope: !5533, file: !5534, line: 178, type: !5488)
!5538 = !DILocation(line: 178, column: 60, scope: !5533)
!5539 = !DILocalVariable(name: "size", arg: 2, scope: !5533, file: !5534, line: 178, type: !580)
!5540 = !DILocation(line: 178, column: 72, scope: !5533)
!5541 = !DILocalVariable(name: "type", arg: 3, scope: !5533, file: !5534, line: 179, type: !133)
!5542 = !DILocation(line: 179, column: 15, scope: !5533)
!5543 = !DILocation(line: 179, column: 23, scope: !5533)
!5544 = distinct !DISubprogram(name: "__rcu_read_unlock", scope: !3922, file: !3922, line: 69, type: !3436, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5545 = !DILocation(line: 71, column: 2, scope: !5544)
!5546 = !{i32 -2145490585}
!5547 = !DILocation(line: 72, column: 2, scope: !5544)
!5548 = !DILocation(line: 72, column: 2, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5544, file: !3922, line: 72, column: 2)
!5550 = !DILocation(line: 73, column: 1, scope: !5544)
!5551 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !4016, file: !4016, line: 661, type: !3436, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5552 = !DILocalVariable(name: "__edi", scope: !5553, file: !4016, line: 663, type: !97)
!5553 = distinct !DILexicalBlock(scope: !5551, file: !4016, line: 663, column: 2)
!5554 = !DILocation(line: 663, column: 2, scope: !5553)
!5555 = !DILocalVariable(name: "__esi", scope: !5553, file: !4016, line: 663, type: !97)
!5556 = !DILocalVariable(name: "__edx", scope: !5553, file: !4016, line: 663, type: !97)
!5557 = !DILocalVariable(name: "__ecx", scope: !5553, file: !4016, line: 663, type: !97)
!5558 = !DILocalVariable(name: "__eax", scope: !5553, file: !4016, line: 663, type: !97)
!5559 = !{i32 -2145780815, i32 -2145780085, i32 -2145779851, i32 -2145779800, i32 -2145779772, i32 -2145779747, i32 -2145780063, i32 -2145780050, i32 -2145779612, i32 -2145779493, i32 -2145779958, i32 -2145779931, i32 -2145779903, i32 -2145779873}
!5560 = !DILocation(line: 664, column: 1, scope: !5551)
!5561 = distinct !DISubprogram(name: "kref_get", scope: !2029, file: !2029, line: 43, type: !5562, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5562 = !DISubroutineType(types: !5563)
!5563 = !{null, !5564}
!5564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!5565 = !DILocalVariable(name: "kref", arg: 1, scope: !5561, file: !2029, line: 43, type: !5564)
!5566 = !DILocation(line: 43, column: 42, scope: !5561)
!5567 = !DILocation(line: 45, column: 16, scope: !5561)
!5568 = !DILocation(line: 45, column: 22, scope: !5561)
!5569 = !DILocation(line: 45, column: 2, scope: !5561)
!5570 = !DILocation(line: 46, column: 1, scope: !5561)
!5571 = distinct !DISubprogram(name: "refcount_inc", scope: !84, file: !84, line: 265, type: !5572, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5572 = !DISubroutineType(types: !5573)
!5573 = !{null, !5574}
!5574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!5575 = !DILocalVariable(name: "r", arg: 1, scope: !5571, file: !84, line: 265, type: !5574)
!5576 = !DILocation(line: 265, column: 45, scope: !5571)
!5577 = !DILocation(line: 267, column: 17, scope: !5571)
!5578 = !DILocation(line: 267, column: 2, scope: !5571)
!5579 = !DILocation(line: 268, column: 1, scope: !5571)
!5580 = distinct !DISubprogram(name: "__refcount_inc", scope: !84, file: !84, line: 248, type: !5581, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5581 = !DISubroutineType(types: !5582)
!5582 = !{null, !5574, !708}
!5583 = !DILocalVariable(name: "r", arg: 1, scope: !5580, file: !84, line: 248, type: !5574)
!5584 = !DILocation(line: 248, column: 47, scope: !5580)
!5585 = !DILocalVariable(name: "oldp", arg: 2, scope: !5580, file: !84, line: 248, type: !708)
!5586 = !DILocation(line: 248, column: 55, scope: !5580)
!5587 = !DILocation(line: 250, column: 20, scope: !5580)
!5588 = !DILocation(line: 250, column: 23, scope: !5580)
!5589 = !DILocation(line: 250, column: 2, scope: !5580)
!5590 = !DILocation(line: 251, column: 1, scope: !5580)
!5591 = distinct !DISubprogram(name: "__refcount_add", scope: !84, file: !84, line: 191, type: !5592, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5592 = !DISubroutineType(types: !5593)
!5593 = !{null, !133, !5574, !708}
!5594 = !DILocalVariable(name: "i", arg: 1, scope: !5595, file: !5596, line: 182, type: !133)
!5595 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !5596, file: !5596, line: 182, type: !5597, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5596 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!5597 = !DISubroutineType(types: !5598)
!5598 = !{!133, !133, !5599}
!5599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!5600 = !DILocation(line: 182, column: 54, scope: !5595, inlinedAt: !5601)
!5601 = distinct !DILocation(line: 143, column: 9, scope: !5602, inlinedAt: !5604)
!5602 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !5603, file: !5603, line: 140, type: !5597, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5603 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5604 = distinct !DILocation(line: 193, column: 12, scope: !5591)
!5605 = !DILocalVariable(name: "v", arg: 2, scope: !5595, file: !5596, line: 182, type: !5599)
!5606 = !DILocation(line: 182, column: 67, scope: !5595, inlinedAt: !5601)
!5607 = !DILocalVariable(name: "__ret", scope: !5608, file: !5596, line: 184, type: !133)
!5608 = distinct !DILexicalBlock(scope: !5595, file: !5596, line: 184, column: 9)
!5609 = !DILocation(line: 184, column: 9, scope: !5608, inlinedAt: !5601)
!5610 = !DILocalVariable(name: "v", arg: 1, scope: !5611, file: !5485, line: 99, type: !5488)
!5611 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5485, file: !5485, line: 99, type: !5486, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5612 = !DILocation(line: 99, column: 79, scope: !5611, inlinedAt: !5613)
!5613 = distinct !DILocation(line: 142, column: 2, scope: !5602, inlinedAt: !5604)
!5614 = !DILocalVariable(name: "size", arg: 2, scope: !5611, file: !5485, line: 99, type: !580)
!5615 = !DILocation(line: 99, column: 89, scope: !5611, inlinedAt: !5613)
!5616 = !DILocalVariable(name: "i", arg: 1, scope: !5602, file: !5603, line: 140, type: !133)
!5617 = !DILocation(line: 140, column: 30, scope: !5602, inlinedAt: !5604)
!5618 = !DILocalVariable(name: "v", arg: 2, scope: !5602, file: !5603, line: 140, type: !5599)
!5619 = !DILocation(line: 140, column: 43, scope: !5602, inlinedAt: !5604)
!5620 = !DILocalVariable(name: "i", arg: 1, scope: !5591, file: !84, line: 191, type: !133)
!5621 = !DILocation(line: 191, column: 39, scope: !5591)
!5622 = !DILocalVariable(name: "r", arg: 2, scope: !5591, file: !84, line: 191, type: !5574)
!5623 = !DILocation(line: 191, column: 54, scope: !5591)
!5624 = !DILocalVariable(name: "oldp", arg: 3, scope: !5591, file: !84, line: 191, type: !708)
!5625 = !DILocation(line: 191, column: 62, scope: !5591)
!5626 = !DILocalVariable(name: "old", scope: !5591, file: !84, line: 193, type: !133)
!5627 = !DILocation(line: 193, column: 6, scope: !5591)
!5628 = !DILocation(line: 193, column: 37, scope: !5591)
!5629 = !DILocation(line: 193, column: 41, scope: !5591)
!5630 = !DILocation(line: 193, column: 44, scope: !5591)
!5631 = !DILocation(line: 142, column: 31, scope: !5602, inlinedAt: !5604)
!5632 = !DILocation(line: 101, column: 20, scope: !5611, inlinedAt: !5613)
!5633 = !DILocation(line: 101, column: 23, scope: !5611, inlinedAt: !5613)
!5634 = !DILocation(line: 101, column: 2, scope: !5611, inlinedAt: !5613)
!5635 = !DILocation(line: 102, column: 2, scope: !5611, inlinedAt: !5613)
!5636 = !DILocation(line: 143, column: 39, scope: !5602, inlinedAt: !5604)
!5637 = !DILocation(line: 143, column: 42, scope: !5602, inlinedAt: !5604)
!5638 = !{i32 -2146603821}
!5639 = !DILocation(line: 195, column: 6, scope: !5640)
!5640 = distinct !DILexicalBlock(scope: !5591, file: !84, line: 195, column: 6)
!5641 = !DILocation(line: 195, column: 6, scope: !5591)
!5642 = !DILocation(line: 196, column: 11, scope: !5640)
!5643 = !DILocation(line: 196, column: 4, scope: !5640)
!5644 = !DILocation(line: 196, column: 9, scope: !5640)
!5645 = !DILocation(line: 196, column: 3, scope: !5640)
!5646 = !DILocation(line: 198, column: 6, scope: !5647)
!5647 = distinct !DILexicalBlock(scope: !5591, file: !84, line: 198, column: 6)
!5648 = !DILocation(line: 198, column: 6, scope: !5591)
!5649 = !DILocation(line: 199, column: 26, scope: !5647)
!5650 = !DILocation(line: 199, column: 3, scope: !5647)
!5651 = !DILocation(line: 200, column: 11, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5647, file: !84, line: 200, column: 11)
!5653 = !DILocation(line: 200, column: 11, scope: !5647)
!5654 = !DILocation(line: 201, column: 26, scope: !5652)
!5655 = !DILocation(line: 201, column: 3, scope: !5652)
!5656 = !DILocation(line: 202, column: 1, scope: !5591)
!5657 = distinct !DISubprogram(name: "proc_set_tty", scope: !1, file: !1, line: 118, type: !3166, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5658 = !DILocation(line: 402, column: 57, scope: !4142, inlinedAt: !5659)
!5659 = distinct !DILocation(line: 122, column: 2, scope: !5657)
!5660 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !5661)
!5661 = distinct !DILocation(line: 122, column: 19, scope: !5657)
!5662 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !5661)
!5663 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !5661)
!5664 = !DILocation(line: 377, column: 55, scope: !4161, inlinedAt: !5665)
!5665 = distinct !DILocation(line: 120, column: 2, scope: !5657)
!5666 = !DILocation(line: 15, column: 9, scope: !3852, inlinedAt: !5667)
!5667 = distinct !DILocation(line: 120, column: 17, scope: !5657)
!5668 = !DILocation(line: 15, column: 9, scope: !3865, inlinedAt: !5667)
!5669 = !DILocation(line: 15, column: 9, scope: !3868, inlinedAt: !5667)
!5670 = !DILocalVariable(name: "tty", arg: 1, scope: !5657, file: !1, line: 118, type: !2654)
!5671 = !DILocation(line: 118, column: 45, scope: !5657)
!5672 = !DILocation(line: 120, column: 26, scope: !5657)
!5673 = !DILocation(line: 120, column: 35, scope: !5657)
!5674 = !DILocation(line: 379, column: 2, scope: !4181, inlinedAt: !5665)
!5675 = !DILocation(line: 379, column: 2, scope: !4184, inlinedAt: !5665)
!5676 = !DILocation(line: 379, column: 2, scope: !4187, inlinedAt: !5665)
!5677 = !DILocation(line: 121, column: 17, scope: !5657)
!5678 = !DILocation(line: 121, column: 2, scope: !5657)
!5679 = !DILocation(line: 122, column: 28, scope: !5657)
!5680 = !DILocation(line: 122, column: 37, scope: !5657)
!5681 = !DILocation(line: 404, column: 2, scope: !4212, inlinedAt: !5659)
!5682 = !DILocation(line: 404, column: 2, scope: !4215, inlinedAt: !5659)
!5683 = !DILocation(line: 404, column: 2, scope: !4218, inlinedAt: !5659)
!5684 = !DILocation(line: 123, column: 1, scope: !5657)
!5685 = distinct !DISubprogram(name: "might_fault", scope: !5686, file: !5686, line: 315, type: !3436, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5686 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!5687 = !DILocation(line: 315, column: 40, scope: !5685)
!5688 = distinct !DISubprogram(name: "session_of_pgrp", scope: !1, file: !1, line: 421, type: !4652, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5689 = !DILocalVariable(name: "pgrp", arg: 1, scope: !5688, file: !1, line: 421, type: !2094)
!5690 = !DILocation(line: 421, column: 48, scope: !5688)
!5691 = !DILocalVariable(name: "p", scope: !5688, file: !1, line: 423, type: !115)
!5692 = !DILocation(line: 423, column: 22, scope: !5688)
!5693 = !DILocalVariable(name: "sid", scope: !5688, file: !1, line: 424, type: !2094)
!5694 = !DILocation(line: 424, column: 14, scope: !5688)
!5695 = !DILocation(line: 426, column: 15, scope: !5688)
!5696 = !DILocation(line: 426, column: 6, scope: !5688)
!5697 = !DILocation(line: 426, column: 4, scope: !5688)
!5698 = !DILocation(line: 427, column: 6, scope: !5699)
!5699 = distinct !DILexicalBlock(scope: !5688, file: !1, line: 427, column: 6)
!5700 = !DILocation(line: 427, column: 8, scope: !5699)
!5701 = !DILocation(line: 427, column: 6, scope: !5688)
!5702 = !DILocation(line: 428, column: 16, scope: !5699)
!5703 = !DILocation(line: 428, column: 7, scope: !5699)
!5704 = !DILocation(line: 428, column: 5, scope: !5699)
!5705 = !DILocation(line: 428, column: 3, scope: !5699)
!5706 = !DILocation(line: 429, column: 6, scope: !5707)
!5707 = distinct !DILexicalBlock(scope: !5688, file: !1, line: 429, column: 6)
!5708 = !DILocation(line: 429, column: 8, scope: !5707)
!5709 = !DILocation(line: 429, column: 6, scope: !5688)
!5710 = !DILocation(line: 430, column: 22, scope: !5707)
!5711 = !DILocation(line: 430, column: 9, scope: !5707)
!5712 = !DILocation(line: 430, column: 7, scope: !5707)
!5713 = !DILocation(line: 430, column: 3, scope: !5707)
!5714 = !DILocation(line: 432, column: 9, scope: !5688)
!5715 = !DILocation(line: 432, column: 2, scope: !5688)
