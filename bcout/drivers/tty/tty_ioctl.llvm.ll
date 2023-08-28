; ModuleID = '../bcout/drivers/tty/tty_ioctl.llvm.bc'
source_filename = "drivers/tty/tty_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.48, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.18, [0 x i64] }
%struct.anon.18 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.19, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.19 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.2, %union.anon.55, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.57, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.58, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.59, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.62, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.65, %struct.list_head, %struct.list_head, %union.anon.66 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.63 }
%union.anon.63 = type { %struct.anon.64 }
%struct.anon.64 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.65 = type { %struct.list_head }
%union.anon.66 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
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
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.56, i32 }
%union.anon.56 = type { %struct.kuid_t }
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
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x %struct.inode*], [3 x %struct.mem_dqinfo], [3 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.57 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.58 = type { %struct.callback_head }
%union.anon.59 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i32, i64, i64, %union.anon.5, %union.anon.6 }
%union.anon.5 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.6 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.60 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.60 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.62 = type { %struct.pipe_inode_info* }
%struct.fsnotify_mark_connector = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.55 = type { %struct.atomic_t }
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
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.33 = type { %struct.callback_head }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.25, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.26, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.27, %union.anon.31, %struct.key_restriction* }
%union.anon.25 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.26 = type { i64 }
%union.anon.27 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.28, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.28 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.31 = type { %union.key_payload }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.67, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.67 = type { %struct.kernfs_elem_attr }
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
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.tty_driver = type { i32, %struct.kref, %struct.cdev**, %struct.module*, i8*, i8*, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, %struct.proc_dir_entry*, %struct.tty_driver*, %struct.tty_struct**, %struct.tty_port**, %struct.ktermios**, i8*, %struct.tty_operations*, %struct.list_head }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.proc_dir_entry = type opaque
%struct.tty_operations = type { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, i32 (%struct.tty_driver*, %struct.tty_struct*)*, void (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8)*, void (%struct.tty_struct*)*, {}*, {}*, i32 (%struct.tty_struct*, i32, i64)*, i64 (%struct.tty_struct*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i8)*, {}*, i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, %struct.winsize*)*, i32 (%struct.tty_struct*, %struct.termiox*)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, void (%struct.tty_struct*, %struct.seq_file*)*, i32 (%struct.seq_file*, i8*)* }
%struct.serial_icounter_struct = type opaque
%struct.serial_struct = type opaque
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.tty_ldisc = type { %struct.tty_ldisc_ops*, %struct.tty_struct* }
%struct.tty_ldisc_ops = type { i32, i8*, i32, i32, {}*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)*, {}*, void (%struct.tty_struct*, i8*, i8*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)*, %struct.module*, i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.termiox = type { i16, i16, [5 x i16], i16 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.tty_buffer = type { %union.anon.68, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon.68 = type { %struct.tty_buffer* }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.34, %union.anon.35, i32 }
%struct.request_queue = type opaque
%union.anon.34 = type { %struct.list_head }
%union.anon.35 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.36 }
%struct.anon.36 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.40 }
%struct.anon.40 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rseq = type { i32, i32, %union.anon.47, i32, [12 x i8] }
%union.anon.47 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.48 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.vm_struct = type { %struct.vm_struct*, i8*, i64, i64, %struct.page**, i32, i64, i8* }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x %struct.perf_event*], i64, i64, i64, i64, i64, %struct.io_bitmap*, i64, i8, [47 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.perf_event = type opaque
%struct.io_bitmap = type opaque
%struct.fpu = type { i32, i64, [48 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.49, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.52 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { i64, i64 }
%union.anon.52 = type { [12 x i32] }
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
%struct.p4d_t = type { i64 }
%struct.pv_lazy_ops = type { void ()*, void ()*, void ()* }
%struct.pv_lock_ops = type { void (%struct.qspinlock*, i32)*, %struct.paravirt_callee_save, void (i8*, i8)*, void (i32)*, %struct.paravirt_callee_save }
%struct.qspinlock = type opaque
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.termios = type { i32, i32, i32, i32, i8, [19 x i8] }
%struct.termios2 = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.termio = type { i16, i16, i16, i16, i8, [8 x i8] }

@.str = private unnamed_addr constant [24 x i8] c"drivers/tty/tty_ioctl.c\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@current_task = external dso_local global %struct.task_struct*, section ".data", align 8
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tty_chars_in_buffer(%struct.tty_struct* %tty) #0 !dbg !4173 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca %struct.tty_struct*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4174, metadata !DIExpression()), !dbg !4175
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4176
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 4, !dbg !4178
  %1 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8, !dbg !4178
  %chars_in_buffer = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %1, i32 0, i32 11, !dbg !4179
  %chars_in_buffer1 = bitcast {}** %chars_in_buffer to i32 (%struct.tty_struct*)**, !dbg !4179
  %2 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %chars_in_buffer1, align 8, !dbg !4179
  %tobool = icmp ne i32 (%struct.tty_struct*)* %2, null, !dbg !4176
  br i1 %tobool, label %if.then, label %if.else, !dbg !4180

if.then:                                          ; preds = %entry
  %3 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4181
  %ops2 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %3, i32 0, i32 4, !dbg !4182
  %4 = load %struct.tty_operations*, %struct.tty_operations** %ops2, align 8, !dbg !4182
  %chars_in_buffer3 = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %4, i32 0, i32 11, !dbg !4183
  %chars_in_buffer4 = bitcast {}** %chars_in_buffer3 to i32 (%struct.tty_struct*)**, !dbg !4183
  %5 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %chars_in_buffer4, align 8, !dbg !4183
  %6 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4184
  %call = call i32 %5(%struct.tty_struct* %6) #7, !dbg !4181
  store i32 %call, i32* %retval, align 4, !dbg !4185
  br label %return, !dbg !4185

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4186
  br label %return, !dbg !4186

return:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !4187
  ret i32 %7, !dbg !4187
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tty_write_room(%struct.tty_struct* %tty) #0 !dbg !4188 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca %struct.tty_struct*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4189, metadata !DIExpression()), !dbg !4190
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4191
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 4, !dbg !4193
  %1 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8, !dbg !4193
  %write_room = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %1, i32 0, i32 10, !dbg !4194
  %write_room1 = bitcast {}** %write_room to i32 (%struct.tty_struct*)**, !dbg !4194
  %2 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %write_room1, align 8, !dbg !4194
  %tobool = icmp ne i32 (%struct.tty_struct*)* %2, null, !dbg !4191
  br i1 %tobool, label %if.then, label %if.end, !dbg !4195

if.then:                                          ; preds = %entry
  %3 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4196
  %ops2 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %3, i32 0, i32 4, !dbg !4197
  %4 = load %struct.tty_operations*, %struct.tty_operations** %ops2, align 8, !dbg !4197
  %write_room3 = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %4, i32 0, i32 10, !dbg !4198
  %write_room4 = bitcast {}** %write_room3 to i32 (%struct.tty_struct*)**, !dbg !4198
  %5 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %write_room4, align 8, !dbg !4198
  %6 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4199
  %call = call i32 %5(%struct.tty_struct* %6) #7, !dbg !4196
  store i32 %call, i32* %retval, align 4, !dbg !4200
  br label %return, !dbg !4200

if.end:                                           ; preds = %entry
  store i32 2048, i32* %retval, align 4, !dbg !4201
  br label %return, !dbg !4201

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !4202
  ret i32 %7, !dbg !4202
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @tty_driver_flush_buffer(%struct.tty_struct* %tty) #0 !dbg !4203 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4204, metadata !DIExpression()), !dbg !4205
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4206
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 4, !dbg !4208
  %1 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8, !dbg !4208
  %flush_buffer = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %1, i32 0, i32 21, !dbg !4209
  %2 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %flush_buffer, align 8, !dbg !4209
  %tobool = icmp ne void (%struct.tty_struct*)* %2, null, !dbg !4206
  br i1 %tobool, label %if.then, label %if.end, !dbg !4210

if.then:                                          ; preds = %entry
  %3 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4211
  %ops1 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %3, i32 0, i32 4, !dbg !4212
  %4 = load %struct.tty_operations*, %struct.tty_operations** %ops1, align 8, !dbg !4212
  %flush_buffer2 = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %4, i32 0, i32 21, !dbg !4213
  %5 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %flush_buffer2, align 8, !dbg !4213
  %6 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4214
  call void %5(%struct.tty_struct* %6) #7, !dbg !4211
  br label %if.end, !dbg !4211

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4215
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @tty_throttle(%struct.tty_struct* %tty) #0 !dbg !4216 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4217, metadata !DIExpression()), !dbg !4218
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4219
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 11, !dbg !4220
  call void @down_write(%struct.rw_semaphore* %termios_rwsem) #7, !dbg !4221
  %1 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4222
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %1, i32 0, i32 21, !dbg !4224
  %call = call zeroext i1 @test_and_set_bit(i64 0, i64* %flags) #7, !dbg !4225
  br i1 %call, label %if.end, label %land.lhs.true, !dbg !4226

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4227
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %2, i32 0, i32 4, !dbg !4228
  %3 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8, !dbg !4228
  %throttle = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %3, i32 0, i32 15, !dbg !4229
  %4 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %throttle, align 8, !dbg !4229
  %tobool = icmp ne void (%struct.tty_struct*)* %4, null, !dbg !4227
  br i1 %tobool, label %if.then, label %if.end, !dbg !4230

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4231
  %ops1 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 4, !dbg !4232
  %6 = load %struct.tty_operations*, %struct.tty_operations** %ops1, align 8, !dbg !4232
  %throttle2 = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %6, i32 0, i32 15, !dbg !4233
  %7 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %throttle2, align 8, !dbg !4233
  %8 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4234
  call void %7(%struct.tty_struct* %8) #7, !dbg !4231
  br label %if.end, !dbg !4231

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %9 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4235
  %flow_change = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 30, !dbg !4236
  store i32 0, i32* %flow_change, align 4, !dbg !4237
  %10 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4238
  %termios_rwsem3 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 11, !dbg !4239
  call void @up_write(%struct.rw_semaphore* %termios_rwsem3) #7, !dbg !4240
  ret void, !dbg !4241
}

; Function Attrs: noredzone
declare dso_local void @down_write(%struct.rw_semaphore*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_and_set_bit(i64 %nr, i64* %addr) #0 !dbg !4242 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4248, metadata !DIExpression()), !dbg !4251
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4253, metadata !DIExpression()), !dbg !4254
  %c.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %c.i, metadata !4255, metadata !DIExpression()), !dbg !4257
  %tmp.i = alloca i8, align 1
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4258, metadata !DIExpression()), !dbg !4266
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4268, metadata !DIExpression()), !dbg !4269
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4270, metadata !DIExpression()), !dbg !4271
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4272, metadata !DIExpression()), !dbg !4273
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4274
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4275
  %div = sdiv i64 %1, 64, !dbg !4275
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4276
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4274
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4277
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4278
  %conv.i = trunc i64 %4 to i32, !dbg !4278
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #8, !dbg !4279
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4280
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4280
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #8, !dbg !4280
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4281
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !4282
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !4257
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !4257
  %11 = call i8 asm sideeffect " btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64* %9) #5, !dbg !4257, !srcloc !4283
  store i8 %11, i8* %c.i, align 1, !dbg !4257
  %12 = load i8, i8* %c.i, align 1, !dbg !4257
  %tobool.i = trunc i8 %12 to i1, !dbg !4257
  %frombool.i = zext i1 %tobool.i to i8, !dbg !4257
  store i8 %frombool.i, i8* %tmp.i, align 1, !dbg !4257
  %13 = load i8, i8* %tmp.i, align 1, !dbg !4257
  %tobool1.i = trunc i8 %13 to i1, !dbg !4257
  ret i1 %tobool1.i, !dbg !4284
}

; Function Attrs: noredzone
declare dso_local void @up_write(%struct.rw_semaphore*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @tty_unthrottle(%struct.tty_struct* %tty) #0 !dbg !4285 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4286, metadata !DIExpression()), !dbg !4287
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4288
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 11, !dbg !4289
  call void @down_write(%struct.rw_semaphore* %termios_rwsem) #7, !dbg !4290
  %1 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4291
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %1, i32 0, i32 21, !dbg !4293
  %call = call zeroext i1 @test_and_clear_bit(i64 0, i64* %flags) #7, !dbg !4294
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !4295

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4296
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %2, i32 0, i32 4, !dbg !4297
  %3 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8, !dbg !4297
  %unthrottle = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %3, i32 0, i32 16, !dbg !4298
  %4 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %unthrottle, align 8, !dbg !4298
  %tobool = icmp ne void (%struct.tty_struct*)* %4, null, !dbg !4296
  br i1 %tobool, label %if.then, label %if.end, !dbg !4299

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4300
  %ops1 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 4, !dbg !4301
  %6 = load %struct.tty_operations*, %struct.tty_operations** %ops1, align 8, !dbg !4301
  %unthrottle2 = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %6, i32 0, i32 16, !dbg !4302
  %7 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %unthrottle2, align 8, !dbg !4302
  %8 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4303
  call void %7(%struct.tty_struct* %8) #7, !dbg !4300
  br label %if.end, !dbg !4300

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %9 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4304
  %flow_change = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 30, !dbg !4305
  store i32 0, i32* %flow_change, align 4, !dbg !4306
  %10 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4307
  %termios_rwsem3 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 11, !dbg !4308
  call void @up_write(%struct.rw_semaphore* %termios_rwsem3) #7, !dbg !4309
  ret void, !dbg !4310
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_and_clear_bit(i64 %nr, i64* %addr) #0 !dbg !4311 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4312, metadata !DIExpression()), !dbg !4314
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4316, metadata !DIExpression()), !dbg !4317
  %c.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %c.i, metadata !4318, metadata !DIExpression()), !dbg !4320
  %tmp.i = alloca i8, align 1
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4258, metadata !DIExpression()), !dbg !4321
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4268, metadata !DIExpression()), !dbg !4323
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4324, metadata !DIExpression()), !dbg !4325
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4326, metadata !DIExpression()), !dbg !4327
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4328
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4329
  %div = sdiv i64 %1, 64, !dbg !4329
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4330
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4328
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4331
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4332
  %conv.i = trunc i64 %4 to i32, !dbg !4332
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #8, !dbg !4333
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4334
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4334
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #8, !dbg !4334
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4335
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !4336
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !4320
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !4320
  %11 = call i8 asm sideeffect " btrq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64* %9) #5, !dbg !4320, !srcloc !4337
  store i8 %11, i8* %c.i, align 1, !dbg !4320
  %12 = load i8, i8* %c.i, align 1, !dbg !4320
  %tobool.i = trunc i8 %12 to i1, !dbg !4320
  %frombool.i = zext i1 %tobool.i to i8, !dbg !4320
  store i8 %frombool.i, i8* %tmp.i, align 1, !dbg !4320
  %13 = load i8, i8* %tmp.i, align 1, !dbg !4320
  %tobool1.i = trunc i8 %13 to i1, !dbg !4320
  ret i1 %tobool1.i, !dbg !4338
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tty_throttle_safe(%struct.tty_struct* %tty) #0 !dbg !4339 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  %ret = alloca i32, align 4
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4340, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4342, metadata !DIExpression()), !dbg !4343
  store i32 0, i32* %ret, align 4, !dbg !4343
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4344
  %throttle_mutex = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 10, !dbg !4345
  call void @mutex_lock(%struct.mutex* %throttle_mutex) #7, !dbg !4346
  %1 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4347
  %call = call zeroext i1 @tty_throttled(%struct.tty_struct* %1) #7, !dbg !4349
  br i1 %call, label %if.end6, label %if.then, !dbg !4350

if.then:                                          ; preds = %entry
  %2 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4351
  %flow_change = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %2, i32 0, i32 30, !dbg !4354
  %3 = load i32, i32* %flow_change, align 4, !dbg !4354
  %cmp = icmp ne i32 %3, 1, !dbg !4355
  br i1 %cmp, label %if.then1, label %if.else, !dbg !4356

if.then1:                                         ; preds = %if.then
  store i32 1, i32* %ret, align 4, !dbg !4357
  br label %if.end5, !dbg !4358

if.else:                                          ; preds = %if.then
  %4 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4359
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 21, !dbg !4361
  call void @set_bit(i64 0, i64* %flags) #7, !dbg !4362
  %5 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4363
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 4, !dbg !4365
  %6 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8, !dbg !4365
  %throttle = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %6, i32 0, i32 15, !dbg !4366
  %7 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %throttle, align 8, !dbg !4366
  %tobool = icmp ne void (%struct.tty_struct*)* %7, null, !dbg !4363
  br i1 %tobool, label %if.then2, label %if.end, !dbg !4367

if.then2:                                         ; preds = %if.else
  %8 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4368
  %ops3 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 4, !dbg !4369
  %9 = load %struct.tty_operations*, %struct.tty_operations** %ops3, align 8, !dbg !4369
  %throttle4 = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %9, i32 0, i32 15, !dbg !4370
  %10 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %throttle4, align 8, !dbg !4370
  %11 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4371
  call void %10(%struct.tty_struct* %11) #7, !dbg !4368
  br label %if.end, !dbg !4368

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then1
  br label %if.end6, !dbg !4372

if.end6:                                          ; preds = %if.end5, %entry
  %12 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4373
  %throttle_mutex7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 10, !dbg !4374
  call void @mutex_unlock(%struct.mutex* %throttle_mutex7) #7, !dbg !4375
  %13 = load i32, i32* %ret, align 4, !dbg !4376
  ret i32 %13, !dbg !4377
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @tty_throttled(%struct.tty_struct* %tty) #0 !dbg !4378 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4381, metadata !DIExpression()), !dbg !4382
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4383
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 21, !dbg !4384
  %call = call zeroext i1 @test_bit(i64 0, i64* %flags) #7, !dbg !4385
  ret i1 %call, !dbg !4386
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #0 !dbg !4387 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4390, metadata !DIExpression()), !dbg !4392
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4394, metadata !DIExpression()), !dbg !4395
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4396, metadata !DIExpression()), !dbg !4398
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4400, metadata !DIExpression()), !dbg !4401
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4402, metadata !DIExpression()), !dbg !4403
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4404, metadata !DIExpression()), !dbg !4405
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4406
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4407
  %div = sdiv i64 %1, 64, !dbg !4407
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4408
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4406
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4409
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4410
  %conv.i = trunc i64 %4 to i32, !dbg !4410
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #8, !dbg !4411
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4412
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4412
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #8, !dbg !4412
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4413
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !4414
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !4415
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #5, !dbg !4417
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !4418

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !4419
  %12 = bitcast i64* %11 to i8*, !dbg !4419
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !4419
  %shr.i = ashr i64 %13, 3, !dbg !4419
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !4419
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !4421
  %and.i = and i64 %14, 7, !dbg !4421
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !4421
  %shl.i = shl i32 1, %sh_prom.i, !dbg !4421
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #5, !dbg !4422, !srcloc !4423
  br label %arch_set_bit.exit, !dbg !4424

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !4425
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !4427
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #5, !dbg !4428, !srcloc !4429
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !4430
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tty_unthrottle_safe(%struct.tty_struct* %tty) #0 !dbg !4431 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  %ret = alloca i32, align 4
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4432, metadata !DIExpression()), !dbg !4433
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4434, metadata !DIExpression()), !dbg !4435
  store i32 0, i32* %ret, align 4, !dbg !4435
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4436
  %throttle_mutex = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 10, !dbg !4437
  call void @mutex_lock(%struct.mutex* %throttle_mutex) #7, !dbg !4438
  %1 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4439
  %call = call zeroext i1 @tty_throttled(%struct.tty_struct* %1) #7, !dbg !4441
  br i1 %call, label %if.then, label %if.end6, !dbg !4442

if.then:                                          ; preds = %entry
  %2 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4443
  %flow_change = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %2, i32 0, i32 30, !dbg !4446
  %3 = load i32, i32* %flow_change, align 4, !dbg !4446
  %cmp = icmp ne i32 %3, 2, !dbg !4447
  br i1 %cmp, label %if.then1, label %if.else, !dbg !4448

if.then1:                                         ; preds = %if.then
  store i32 1, i32* %ret, align 4, !dbg !4449
  br label %if.end5, !dbg !4450

if.else:                                          ; preds = %if.then
  %4 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4451
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 21, !dbg !4453
  call void @clear_bit(i64 0, i64* %flags) #7, !dbg !4454
  %5 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4455
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 4, !dbg !4457
  %6 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8, !dbg !4457
  %unthrottle = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %6, i32 0, i32 16, !dbg !4458
  %7 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %unthrottle, align 8, !dbg !4458
  %tobool = icmp ne void (%struct.tty_struct*)* %7, null, !dbg !4455
  br i1 %tobool, label %if.then2, label %if.end, !dbg !4459

if.then2:                                         ; preds = %if.else
  %8 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4460
  %ops3 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 4, !dbg !4461
  %9 = load %struct.tty_operations*, %struct.tty_operations** %ops3, align 8, !dbg !4461
  %unthrottle4 = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %9, i32 0, i32 16, !dbg !4462
  %10 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %unthrottle4, align 8, !dbg !4462
  %11 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4463
  call void %10(%struct.tty_struct* %11) #7, !dbg !4460
  br label %if.end, !dbg !4460

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then1
  br label %if.end6, !dbg !4464

if.end6:                                          ; preds = %if.end5, %entry
  %12 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4465
  %throttle_mutex7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 10, !dbg !4466
  call void @mutex_unlock(%struct.mutex* %throttle_mutex7) #7, !dbg !4467
  %13 = load i32, i32* %ret, align 4, !dbg !4468
  ret i32 %13, !dbg !4469
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_bit(i64 %nr, i64* %addr) #0 !dbg !4470 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4471, metadata !DIExpression()), !dbg !4473
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4475, metadata !DIExpression()), !dbg !4476
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4396, metadata !DIExpression()), !dbg !4477
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4400, metadata !DIExpression()), !dbg !4479
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4480, metadata !DIExpression()), !dbg !4481
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4482, metadata !DIExpression()), !dbg !4483
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4484
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4485
  %div = sdiv i64 %1, 64, !dbg !4485
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4486
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4484
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4487
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4488
  %conv.i = trunc i64 %4 to i32, !dbg !4488
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #8, !dbg !4489
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4490
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4490
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #8, !dbg !4490
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4491
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !4492
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !4493
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #5, !dbg !4495
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !4496

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !4497
  %12 = bitcast i64* %11 to i8*, !dbg !4497
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !4497
  %shr.i = ashr i64 %13, 3, !dbg !4497
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !4497
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !4499
  %and.i = and i64 %14, 7, !dbg !4499
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !4499
  %shl.i = shl i32 1, %sh_prom.i, !dbg !4499
  %neg.i = xor i32 %shl.i, -1, !dbg !4500
  call void asm sideeffect "andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %neg.i, i8* %add.ptr.i) #5, !dbg !4501, !srcloc !4502
  br label %arch_clear_bit.exit, !dbg !4503

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !4504
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !4506
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #5, !dbg !4507, !srcloc !4508
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %if.then.i, %if.else.i
  ret void, !dbg !4509
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @tty_wait_until_sent(%struct.tty_struct* %tty, i64 %timeout) #0 !dbg !4510 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  %timeout.addr = alloca i64, align 8
  %__ret = alloca i64, align 8
  %__cond = alloca i8, align 1
  %tmp = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret15 = alloca i64, align 8
  %__int = alloca i64, align 8
  %__cond17 = alloca i8, align 1
  %tmp27 = alloca i32, align 4
  %tmp42 = alloca i64, align 8
  %tmp44 = alloca i64, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4513, metadata !DIExpression()), !dbg !4514
  store i64 %timeout, i64* %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %timeout.addr, metadata !4515, metadata !DIExpression()), !dbg !4516
  br label %do.body, !dbg !4517

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4518

do.end:                                           ; preds = %do.body
  %0 = load i64, i64* %timeout.addr, align 8, !dbg !4520
  %tobool = icmp ne i64 %0, 0, !dbg !4520
  br i1 %tobool, label %if.end, label %if.then, !dbg !4522

if.then:                                          ; preds = %do.end
  store i64 9223372036854775807, i64* %timeout.addr, align 8, !dbg !4523
  br label %if.end, !dbg !4524

if.end:                                           ; preds = %if.then, %do.end
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !4525, metadata !DIExpression()), !dbg !4527
  %1 = load i64, i64* %timeout.addr, align 8, !dbg !4527
  store i64 %1, i64* %__ret, align 8, !dbg !4527
  br label %do.body1, !dbg !4527

do.body1:                                         ; preds = %if.end
  br label %do.body2, !dbg !4528

do.body2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !4530

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4528

do.end4:                                          ; preds = %do.end3
  call void @llvm.dbg.declare(metadata i8* %__cond, metadata !4532, metadata !DIExpression()), !dbg !4535
  %2 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4535
  %call = call i32 @tty_chars_in_buffer(%struct.tty_struct* %2) #7, !dbg !4535
  %tobool5 = icmp ne i32 %call, 0, !dbg !4535
  %lnot = xor i1 %tobool5, true, !dbg !4535
  %frombool = zext i1 %lnot to i8, !dbg !4535
  store i8 %frombool, i8* %__cond, align 1, !dbg !4535
  %3 = load i8, i8* %__cond, align 1, !dbg !4536
  %tobool6 = trunc i8 %3 to i1, !dbg !4536
  br i1 %tobool6, label %land.lhs.true, label %if.end9, !dbg !4536

land.lhs.true:                                    ; preds = %do.end4
  %4 = load i64, i64* %__ret, align 8, !dbg !4536
  %tobool7 = icmp ne i64 %4, 0, !dbg !4536
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !4535

if.then8:                                         ; preds = %land.lhs.true
  store i64 1, i64* %__ret, align 8, !dbg !4536
  br label %if.end9, !dbg !4536

if.end9:                                          ; preds = %if.then8, %land.lhs.true, %do.end4
  %5 = load i8, i8* %__cond, align 1, !dbg !4535
  %tobool10 = trunc i8 %5 to i1, !dbg !4535
  br i1 %tobool10, label %lor.end, label %lor.rhs, !dbg !4535

lor.rhs:                                          ; preds = %if.end9
  %6 = load i64, i64* %__ret, align 8, !dbg !4535
  %tobool11 = icmp ne i64 %6, 0, !dbg !4535
  %lnot12 = xor i1 %tobool11, true, !dbg !4535
  br label %lor.end, !dbg !4535

lor.end:                                          ; preds = %lor.rhs, %if.end9
  %7 = phi i1 [ true, %if.end9 ], [ %lnot12, %lor.rhs ]
  %lor.ext = zext i1 %7 to i32, !dbg !4535
  store i32 %lor.ext, i32* %tmp, align 4, !dbg !4536
  %8 = load i32, i32* %tmp, align 4, !dbg !4535
  %tobool13 = icmp ne i32 %8, 0, !dbg !4538
  br i1 %tobool13, label %if.end43, label %if.then14, !dbg !4527

if.then14:                                        ; preds = %lor.end
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %__wq_entry, metadata !4539, metadata !DIExpression()), !dbg !4552
  call void @llvm.dbg.declare(metadata i64* %__ret15, metadata !4553, metadata !DIExpression()), !dbg !4552
  %9 = load i64, i64* %timeout.addr, align 8, !dbg !4552
  store i64 %9, i64* %__ret15, align 8, !dbg !4552
  call void @init_wait_entry(%struct.wait_queue_entry* %__wq_entry, i32 0) #7, !dbg !4552
  br label %for.cond, !dbg !4552

for.cond:                                         ; preds = %if.end39, %if.then14
  call void @llvm.dbg.declare(metadata i64* %__int, metadata !4554, metadata !DIExpression()), !dbg !4558
  %10 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4558
  %write_wait = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 33, !dbg !4558
  %call16 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* %write_wait, %struct.wait_queue_entry* %__wq_entry, i32 1) #7, !dbg !4558
  store i64 %call16, i64* %__int, align 8, !dbg !4558
  call void @llvm.dbg.declare(metadata i8* %__cond17, metadata !4559, metadata !DIExpression()), !dbg !4562
  %11 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4562
  %call18 = call i32 @tty_chars_in_buffer(%struct.tty_struct* %11) #7, !dbg !4562
  %tobool19 = icmp ne i32 %call18, 0, !dbg !4562
  %lnot20 = xor i1 %tobool19, true, !dbg !4562
  %frombool21 = zext i1 %lnot20 to i8, !dbg !4562
  store i8 %frombool21, i8* %__cond17, align 1, !dbg !4562
  %12 = load i8, i8* %__cond17, align 1, !dbg !4563
  %tobool22 = trunc i8 %12 to i1, !dbg !4563
  br i1 %tobool22, label %land.lhs.true23, label %if.end26, !dbg !4563

land.lhs.true23:                                  ; preds = %for.cond
  %13 = load i64, i64* %__ret15, align 8, !dbg !4563
  %tobool24 = icmp ne i64 %13, 0, !dbg !4563
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !4562

if.then25:                                        ; preds = %land.lhs.true23
  store i64 1, i64* %__ret15, align 8, !dbg !4563
  br label %if.end26, !dbg !4563

if.end26:                                         ; preds = %if.then25, %land.lhs.true23, %for.cond
  %14 = load i8, i8* %__cond17, align 1, !dbg !4562
  %tobool28 = trunc i8 %14 to i1, !dbg !4562
  br i1 %tobool28, label %lor.end32, label %lor.rhs29, !dbg !4562

lor.rhs29:                                        ; preds = %if.end26
  %15 = load i64, i64* %__ret15, align 8, !dbg !4562
  %tobool30 = icmp ne i64 %15, 0, !dbg !4562
  %lnot31 = xor i1 %tobool30, true, !dbg !4562
  br label %lor.end32, !dbg !4562

lor.end32:                                        ; preds = %lor.rhs29, %if.end26
  %16 = phi i1 [ true, %if.end26 ], [ %lnot31, %lor.rhs29 ]
  %lor.ext33 = zext i1 %16 to i32, !dbg !4562
  store i32 %lor.ext33, i32* %tmp27, align 4, !dbg !4563
  %17 = load i32, i32* %tmp27, align 4, !dbg !4562
  %tobool34 = icmp ne i32 %17, 0, !dbg !4565
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !4558

if.then35:                                        ; preds = %lor.end32
  br label %for.end, !dbg !4565

if.end36:                                         ; preds = %lor.end32
  %18 = load i64, i64* %__int, align 8, !dbg !4566
  %tobool37 = icmp ne i64 %18, 0, !dbg !4566
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !4558

if.then38:                                        ; preds = %if.end36
  %19 = load i64, i64* %__int, align 8, !dbg !4568
  store i64 %19, i64* %__ret15, align 8, !dbg !4568
  br label %__out, !dbg !4568

if.end39:                                         ; preds = %if.end36
  %20 = load i64, i64* %__ret15, align 8, !dbg !4558
  %call40 = call i64 @schedule_timeout(i64 %20) #7, !dbg !4558
  store i64 %call40, i64* %__ret15, align 8, !dbg !4558
  br label %for.cond, !dbg !4570, !llvm.loop !4571

for.end:                                          ; preds = %if.then35
  %21 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4552
  %write_wait41 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %21, i32 0, i32 33, !dbg !4552
  call void @finish_wait(%struct.wait_queue_head* %write_wait41, %struct.wait_queue_entry* %__wq_entry) #7, !dbg !4552
  br label %__out, !dbg !4552

__out:                                            ; preds = %for.end, %if.then38
  call void @llvm.dbg.label(metadata !4573), !dbg !4552
  %22 = load i64, i64* %__ret15, align 8, !dbg !4552
  store i64 %22, i64* %tmp42, align 8, !dbg !4552
  %23 = load i64, i64* %tmp42, align 8, !dbg !4552
  store i64 %23, i64* %__ret, align 8, !dbg !4538
  br label %if.end43, !dbg !4538

if.end43:                                         ; preds = %__out, %lor.end
  %24 = load i64, i64* %__ret, align 8, !dbg !4527
  store i64 %24, i64* %tmp44, align 8, !dbg !4538
  %25 = load i64, i64* %tmp44, align 8, !dbg !4527
  store i64 %25, i64* %timeout.addr, align 8, !dbg !4574
  %26 = load i64, i64* %timeout.addr, align 8, !dbg !4575
  %cmp = icmp sle i64 %26, 0, !dbg !4577
  br i1 %cmp, label %if.then45, label %if.end46, !dbg !4578

if.then45:                                        ; preds = %if.end43
  br label %if.end54, !dbg !4579

if.end46:                                         ; preds = %if.end43
  %27 = load i64, i64* %timeout.addr, align 8, !dbg !4580
  %cmp47 = icmp eq i64 %27, 9223372036854775807, !dbg !4582
  br i1 %cmp47, label %if.then48, label %if.end49, !dbg !4583

if.then48:                                        ; preds = %if.end46
  store i64 0, i64* %timeout.addr, align 8, !dbg !4584
  br label %if.end49, !dbg !4585

if.end49:                                         ; preds = %if.then48, %if.end46
  %28 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4586
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %28, i32 0, i32 4, !dbg !4588
  %29 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8, !dbg !4588
  %wait_until_sent = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %29, i32 0, i32 23, !dbg !4589
  %30 = load void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i32)** %wait_until_sent, align 8, !dbg !4589
  %tobool50 = icmp ne void (%struct.tty_struct*, i32)* %30, null, !dbg !4586
  br i1 %tobool50, label %if.then51, label %if.end54, !dbg !4590

if.then51:                                        ; preds = %if.end49
  %31 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4591
  %ops52 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %31, i32 0, i32 4, !dbg !4592
  %32 = load %struct.tty_operations*, %struct.tty_operations** %ops52, align 8, !dbg !4592
  %wait_until_sent53 = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %32, i32 0, i32 23, !dbg !4593
  %33 = load void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i32)** %wait_until_sent53, align 8, !dbg !4593
  %34 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4594
  %35 = load i64, i64* %timeout.addr, align 8, !dbg !4595
  %conv = trunc i64 %35 to i32, !dbg !4595
  call void %33(%struct.tty_struct* %34, i32 %conv) #7, !dbg !4591
  br label %if.end54, !dbg !4591

if.end54:                                         ; preds = %if.then45, %if.then51, %if.end49
  ret void, !dbg !4596
}

; Function Attrs: noredzone
declare dso_local void @init_wait_entry(%struct.wait_queue_entry*, i32) #2

; Function Attrs: noredzone
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head*, %struct.wait_queue_entry*, i32) #2

; Function Attrs: noredzone
declare dso_local i64 @schedule_timeout(i64) #2

; Function Attrs: noredzone
declare dso_local void @finish_wait(%struct.wait_queue_head*, %struct.wait_queue_entry*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @tty_termios_copy_hw(%struct.ktermios* %new, %struct.ktermios* %old) #0 !dbg !4597 {
entry:
  %new.addr = alloca %struct.ktermios*, align 8
  %old.addr = alloca %struct.ktermios*, align 8
  store %struct.ktermios* %new, %struct.ktermios** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ktermios** %new.addr, metadata !4600, metadata !DIExpression()), !dbg !4601
  store %struct.ktermios* %old, %struct.ktermios** %old.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ktermios** %old.addr, metadata !4602, metadata !DIExpression()), !dbg !4603
  %0 = load %struct.ktermios*, %struct.ktermios** %new.addr, align 8, !dbg !4604
  %c_cflag = getelementptr inbounds %struct.ktermios, %struct.ktermios* %0, i32 0, i32 2, !dbg !4605
  %1 = load i32, i32* %c_cflag, align 4, !dbg !4606
  %and = and i32 %1, 3200, !dbg !4606
  store i32 %and, i32* %c_cflag, align 4, !dbg !4606
  %2 = load %struct.ktermios*, %struct.ktermios** %old.addr, align 8, !dbg !4607
  %c_cflag1 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %2, i32 0, i32 2, !dbg !4608
  %3 = load i32, i32* %c_cflag1, align 4, !dbg !4608
  %and2 = and i32 %3, -3201, !dbg !4609
  %4 = load %struct.ktermios*, %struct.ktermios** %new.addr, align 8, !dbg !4610
  %c_cflag3 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %4, i32 0, i32 2, !dbg !4611
  %5 = load i32, i32* %c_cflag3, align 4, !dbg !4612
  %or = or i32 %5, %and2, !dbg !4612
  store i32 %or, i32* %c_cflag3, align 4, !dbg !4612
  %6 = load %struct.ktermios*, %struct.ktermios** %old.addr, align 8, !dbg !4613
  %c_ispeed = getelementptr inbounds %struct.ktermios, %struct.ktermios* %6, i32 0, i32 6, !dbg !4614
  %7 = load i32, i32* %c_ispeed, align 4, !dbg !4614
  %8 = load %struct.ktermios*, %struct.ktermios** %new.addr, align 8, !dbg !4615
  %c_ispeed4 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %8, i32 0, i32 6, !dbg !4616
  store i32 %7, i32* %c_ispeed4, align 4, !dbg !4617
  %9 = load %struct.ktermios*, %struct.ktermios** %old.addr, align 8, !dbg !4618
  %c_ospeed = getelementptr inbounds %struct.ktermios, %struct.ktermios* %9, i32 0, i32 7, !dbg !4619
  %10 = load i32, i32* %c_ospeed, align 4, !dbg !4619
  %11 = load %struct.ktermios*, %struct.ktermios** %new.addr, align 8, !dbg !4620
  %c_ospeed5 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %11, i32 0, i32 7, !dbg !4621
  store i32 %10, i32* %c_ospeed5, align 4, !dbg !4622
  ret void, !dbg !4623
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tty_termios_hw_change(%struct.ktermios* %a, %struct.ktermios* %b) #0 !dbg !4624 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.ktermios*, align 8
  %b.addr = alloca %struct.ktermios*, align 8
  store %struct.ktermios* %a, %struct.ktermios** %a.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ktermios** %a.addr, metadata !4629, metadata !DIExpression()), !dbg !4630
  store %struct.ktermios* %b, %struct.ktermios** %b.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ktermios** %b.addr, metadata !4631, metadata !DIExpression()), !dbg !4632
  %0 = load %struct.ktermios*, %struct.ktermios** %a.addr, align 8, !dbg !4633
  %c_ispeed = getelementptr inbounds %struct.ktermios, %struct.ktermios* %0, i32 0, i32 6, !dbg !4635
  %1 = load i32, i32* %c_ispeed, align 4, !dbg !4635
  %2 = load %struct.ktermios*, %struct.ktermios** %b.addr, align 8, !dbg !4636
  %c_ispeed1 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %2, i32 0, i32 6, !dbg !4637
  %3 = load i32, i32* %c_ispeed1, align 4, !dbg !4637
  %cmp = icmp ne i32 %1, %3, !dbg !4638
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4639

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.ktermios*, %struct.ktermios** %a.addr, align 8, !dbg !4640
  %c_ospeed = getelementptr inbounds %struct.ktermios, %struct.ktermios* %4, i32 0, i32 7, !dbg !4641
  %5 = load i32, i32* %c_ospeed, align 4, !dbg !4641
  %6 = load %struct.ktermios*, %struct.ktermios** %b.addr, align 8, !dbg !4642
  %c_ospeed2 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %6, i32 0, i32 7, !dbg !4643
  %7 = load i32, i32* %c_ospeed2, align 4, !dbg !4643
  %cmp3 = icmp ne i32 %5, %7, !dbg !4644
  br i1 %cmp3, label %if.then, label %if.end, !dbg !4645

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval, align 4, !dbg !4646
  br label %return, !dbg !4646

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.ktermios*, %struct.ktermios** %a.addr, align 8, !dbg !4647
  %c_cflag = getelementptr inbounds %struct.ktermios, %struct.ktermios* %8, i32 0, i32 2, !dbg !4649
  %9 = load i32, i32* %c_cflag, align 4, !dbg !4649
  %10 = load %struct.ktermios*, %struct.ktermios** %b.addr, align 8, !dbg !4650
  %c_cflag4 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %10, i32 0, i32 2, !dbg !4651
  %11 = load i32, i32* %c_cflag4, align 4, !dbg !4651
  %xor = xor i32 %9, %11, !dbg !4652
  %and = and i32 %xor, -3201, !dbg !4653
  %tobool = icmp ne i32 %and, 0, !dbg !4653
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !4654

if.then5:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !4655
  br label %return, !dbg !4655

if.end6:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4656
  br label %return, !dbg !4656

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !4657
  ret i32 %12, !dbg !4657
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tty_set_termios(%struct.tty_struct* %tty, %struct.ktermios* %new_termios) #0 !dbg !4658 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  %new_termios.addr = alloca %struct.ktermios*, align 8
  %old_termios = alloca %struct.ktermios, align 4
  %ld = alloca %struct.tty_ldisc*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4661, metadata !DIExpression()), !dbg !4662
  store %struct.ktermios* %new_termios, %struct.ktermios** %new_termios.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ktermios** %new_termios.addr, metadata !4663, metadata !DIExpression()), !dbg !4664
  call void @llvm.dbg.declare(metadata %struct.ktermios* %old_termios, metadata !4665, metadata !DIExpression()), !dbg !4666
  call void @llvm.dbg.declare(metadata %struct.tty_ldisc** %ld, metadata !4667, metadata !DIExpression()), !dbg !4668
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4669, metadata !DIExpression()), !dbg !4671
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4671
  %driver = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 3, !dbg !4671
  %1 = load %struct.tty_driver*, %struct.tty_driver** %driver, align 8, !dbg !4671
  %type = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %1, i32 0, i32 10, !dbg !4671
  %2 = load i16, i16* %type, align 8, !dbg !4671
  %conv = sext i16 %2 to i32, !dbg !4671
  %cmp = icmp eq i32 %conv, 4, !dbg !4671
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4671

land.rhs:                                         ; preds = %entry
  %3 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4671
  %driver2 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %3, i32 0, i32 3, !dbg !4671
  %4 = load %struct.tty_driver*, %struct.tty_driver** %driver2, align 8, !dbg !4671
  %subtype = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %4, i32 0, i32 11, !dbg !4671
  %5 = load i16, i16* %subtype, align 2, !dbg !4671
  %conv3 = sext i16 %5 to i32, !dbg !4671
  %cmp4 = icmp eq i32 %conv3, 1, !dbg !4671
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %cmp4, %land.rhs ], !dbg !4672
  %lnot = xor i1 %6, true, !dbg !4671
  %lnot6 = xor i1 %lnot, true, !dbg !4671
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !4671
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4671
  %7 = load i32, i32* %__ret_warn_on, align 4, !dbg !4673
  %tobool = icmp ne i32 %7, 0, !dbg !4673
  %lnot7 = xor i1 %tobool, true, !dbg !4673
  %lnot9 = xor i1 %lnot7, true, !dbg !4673
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !4673
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !4673
  %tobool12 = icmp ne i64 %conv11, 0, !dbg !4673
  br i1 %tobool12, label %if.then, label %if.end, !dbg !4671

if.then:                                          ; preds = %land.end
  br label %do.body, !dbg !4673

do.body:                                          ; preds = %if.then
  br label %do.body13, !dbg !4675

do.body13:                                        ; preds = %do.body
  br label %do.end, !dbg !4677

do.end:                                           ; preds = %do.body13
  br label %do.body14, !dbg !4675

do.body14:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 320, i32 2305, i64 12) #5, !dbg !4679, !srcloc !4681
  br label %do.end15, !dbg !4679

do.end15:                                         ; preds = %do.body14
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 230) #5, !dbg !4682, !srcloc !4684
  br label %do.body16, !dbg !4675

do.body16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !4685

do.end17:                                         ; preds = %do.body16
  br label %do.end18, !dbg !4675

do.end18:                                         ; preds = %do.end17
  br label %if.end, !dbg !4675

if.end:                                           ; preds = %do.end18, %land.end
  %8 = load i32, i32* %__ret_warn_on, align 4, !dbg !4671
  %tobool19 = icmp ne i32 %8, 0, !dbg !4671
  %lnot20 = xor i1 %tobool19, true, !dbg !4671
  %lnot22 = xor i1 %lnot20, true, !dbg !4671
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !4671
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !4671
  store i64 %conv24, i64* %tmp, align 8, !dbg !4673
  %9 = load i64, i64* %tmp, align 8, !dbg !4671
  %10 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4687
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 11, !dbg !4688
  call void @down_write(%struct.rw_semaphore* %termios_rwsem) #7, !dbg !4689
  %11 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4690
  %termios = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 15, !dbg !4691
  %12 = bitcast %struct.ktermios* %old_termios to i8*, !dbg !4691
  %13 = bitcast %struct.ktermios* %termios to i8*, !dbg !4691
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 8 %13, i64 44, i1 false), !dbg !4691
  %14 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4692
  %termios25 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %14, i32 0, i32 15, !dbg !4693
  %15 = load %struct.ktermios*, %struct.ktermios** %new_termios.addr, align 8, !dbg !4694
  %16 = bitcast %struct.ktermios* %termios25 to i8*, !dbg !4695
  %17 = bitcast %struct.ktermios* %15 to i8*, !dbg !4695
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 4 %17, i64 44, i1 false), !dbg !4695
  %18 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4696
  call void @unset_locked_termios(%struct.tty_struct* %18, %struct.ktermios* %old_termios) #7, !dbg !4697
  %19 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4698
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %19, i32 0, i32 4, !dbg !4700
  %20 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8, !dbg !4700
  %set_termios = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %20, i32 0, i32 14, !dbg !4701
  %21 = load void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*, %struct.ktermios*)** %set_termios, align 8, !dbg !4701
  %tobool26 = icmp ne void (%struct.tty_struct*, %struct.ktermios*)* %21, null, !dbg !4698
  br i1 %tobool26, label %if.then27, label %if.else, !dbg !4702

if.then27:                                        ; preds = %if.end
  %22 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4703
  %ops28 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %22, i32 0, i32 4, !dbg !4704
  %23 = load %struct.tty_operations*, %struct.tty_operations** %ops28, align 8, !dbg !4704
  %set_termios29 = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %23, i32 0, i32 14, !dbg !4705
  %24 = load void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*, %struct.ktermios*)** %set_termios29, align 8, !dbg !4705
  %25 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4706
  call void %24(%struct.tty_struct* %25, %struct.ktermios* %old_termios) #7, !dbg !4703
  br label %if.end31, !dbg !4703

if.else:                                          ; preds = %if.end
  %26 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4707
  %termios30 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %26, i32 0, i32 15, !dbg !4708
  call void @tty_termios_copy_hw(%struct.ktermios* %termios30, %struct.ktermios* %old_termios) #7, !dbg !4709
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then27
  %27 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4710
  %call = call %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct* %27) #7, !dbg !4711
  store %struct.tty_ldisc* %call, %struct.tty_ldisc** %ld, align 8, !dbg !4712
  %28 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !4713
  %cmp32 = icmp ne %struct.tty_ldisc* %28, null, !dbg !4715
  br i1 %cmp32, label %if.then34, label %if.end42, !dbg !4716

if.then34:                                        ; preds = %if.end31
  %29 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !4717
  %ops35 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %29, i32 0, i32 0, !dbg !4720
  %30 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops35, align 8, !dbg !4720
  %set_termios36 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %30, i32 0, i32 11, !dbg !4721
  %31 = load void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*, %struct.ktermios*)** %set_termios36, align 8, !dbg !4721
  %tobool37 = icmp ne void (%struct.tty_struct*, %struct.ktermios*)* %31, null, !dbg !4717
  br i1 %tobool37, label %if.then38, label %if.end41, !dbg !4722

if.then38:                                        ; preds = %if.then34
  %32 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !4723
  %ops39 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %32, i32 0, i32 0, !dbg !4724
  %33 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops39, align 8, !dbg !4724
  %set_termios40 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %33, i32 0, i32 11, !dbg !4725
  %34 = load void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*, %struct.ktermios*)** %set_termios40, align 8, !dbg !4725
  %35 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4726
  call void %34(%struct.tty_struct* %35, %struct.ktermios* %old_termios) #7, !dbg !4723
  br label %if.end41, !dbg !4723

if.end41:                                         ; preds = %if.then38, %if.then34
  %36 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !4727
  call void @tty_ldisc_deref(%struct.tty_ldisc* %36) #7, !dbg !4728
  br label %if.end42, !dbg !4729

if.end42:                                         ; preds = %if.end41, %if.end31
  %37 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4730
  %termios_rwsem43 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %37, i32 0, i32 11, !dbg !4731
  call void @up_write(%struct.rw_semaphore* %termios_rwsem43) #7, !dbg !4732
  ret i32 0, !dbg !4733
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @unset_locked_termios(%struct.tty_struct* %tty, %struct.ktermios* %old) #0 !dbg !4734 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  %old.addr = alloca %struct.ktermios*, align 8
  %termios = alloca %struct.ktermios*, align 8
  %locked = alloca %struct.ktermios*, align 8
  %i = alloca i32, align 4
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4735, metadata !DIExpression()), !dbg !4736
  store %struct.ktermios* %old, %struct.ktermios** %old.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ktermios** %old.addr, metadata !4737, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.declare(metadata %struct.ktermios** %termios, metadata !4739, metadata !DIExpression()), !dbg !4740
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4741
  %termios1 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 15, !dbg !4742
  store %struct.ktermios* %termios1, %struct.ktermios** %termios, align 8, !dbg !4740
  call void @llvm.dbg.declare(metadata %struct.ktermios** %locked, metadata !4743, metadata !DIExpression()), !dbg !4744
  %1 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4745
  %termios_locked = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %1, i32 0, i32 16, !dbg !4746
  store %struct.ktermios* %termios_locked, %struct.ktermios** %locked, align 8, !dbg !4744
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4747, metadata !DIExpression()), !dbg !4748
  %2 = load %struct.ktermios*, %struct.ktermios** %termios, align 8, !dbg !4749
  %c_iflag = getelementptr inbounds %struct.ktermios, %struct.ktermios* %2, i32 0, i32 0, !dbg !4749
  %3 = load i32, i32* %c_iflag, align 4, !dbg !4749
  %4 = load %struct.ktermios*, %struct.ktermios** %locked, align 8, !dbg !4749
  %c_iflag2 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %4, i32 0, i32 0, !dbg !4749
  %5 = load i32, i32* %c_iflag2, align 4, !dbg !4749
  %neg = xor i32 %5, -1, !dbg !4749
  %and = and i32 %3, %neg, !dbg !4749
  %6 = load %struct.ktermios*, %struct.ktermios** %old.addr, align 8, !dbg !4749
  %c_iflag3 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %6, i32 0, i32 0, !dbg !4749
  %7 = load i32, i32* %c_iflag3, align 4, !dbg !4749
  %8 = load %struct.ktermios*, %struct.ktermios** %locked, align 8, !dbg !4749
  %c_iflag4 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %8, i32 0, i32 0, !dbg !4749
  %9 = load i32, i32* %c_iflag4, align 4, !dbg !4749
  %and5 = and i32 %7, %9, !dbg !4749
  %or = or i32 %and, %and5, !dbg !4749
  %10 = load %struct.ktermios*, %struct.ktermios** %termios, align 8, !dbg !4749
  %c_iflag6 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %10, i32 0, i32 0, !dbg !4749
  store i32 %or, i32* %c_iflag6, align 4, !dbg !4749
  %11 = load %struct.ktermios*, %struct.ktermios** %termios, align 8, !dbg !4750
  %c_oflag = getelementptr inbounds %struct.ktermios, %struct.ktermios* %11, i32 0, i32 1, !dbg !4750
  %12 = load i32, i32* %c_oflag, align 4, !dbg !4750
  %13 = load %struct.ktermios*, %struct.ktermios** %locked, align 8, !dbg !4750
  %c_oflag7 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %13, i32 0, i32 1, !dbg !4750
  %14 = load i32, i32* %c_oflag7, align 4, !dbg !4750
  %neg8 = xor i32 %14, -1, !dbg !4750
  %and9 = and i32 %12, %neg8, !dbg !4750
  %15 = load %struct.ktermios*, %struct.ktermios** %old.addr, align 8, !dbg !4750
  %c_oflag10 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %15, i32 0, i32 1, !dbg !4750
  %16 = load i32, i32* %c_oflag10, align 4, !dbg !4750
  %17 = load %struct.ktermios*, %struct.ktermios** %locked, align 8, !dbg !4750
  %c_oflag11 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %17, i32 0, i32 1, !dbg !4750
  %18 = load i32, i32* %c_oflag11, align 4, !dbg !4750
  %and12 = and i32 %16, %18, !dbg !4750
  %or13 = or i32 %and9, %and12, !dbg !4750
  %19 = load %struct.ktermios*, %struct.ktermios** %termios, align 8, !dbg !4750
  %c_oflag14 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %19, i32 0, i32 1, !dbg !4750
  store i32 %or13, i32* %c_oflag14, align 4, !dbg !4750
  %20 = load %struct.ktermios*, %struct.ktermios** %termios, align 8, !dbg !4751
  %c_cflag = getelementptr inbounds %struct.ktermios, %struct.ktermios* %20, i32 0, i32 2, !dbg !4751
  %21 = load i32, i32* %c_cflag, align 4, !dbg !4751
  %22 = load %struct.ktermios*, %struct.ktermios** %locked, align 8, !dbg !4751
  %c_cflag15 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %22, i32 0, i32 2, !dbg !4751
  %23 = load i32, i32* %c_cflag15, align 4, !dbg !4751
  %neg16 = xor i32 %23, -1, !dbg !4751
  %and17 = and i32 %21, %neg16, !dbg !4751
  %24 = load %struct.ktermios*, %struct.ktermios** %old.addr, align 8, !dbg !4751
  %c_cflag18 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %24, i32 0, i32 2, !dbg !4751
  %25 = load i32, i32* %c_cflag18, align 4, !dbg !4751
  %26 = load %struct.ktermios*, %struct.ktermios** %locked, align 8, !dbg !4751
  %c_cflag19 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %26, i32 0, i32 2, !dbg !4751
  %27 = load i32, i32* %c_cflag19, align 4, !dbg !4751
  %and20 = and i32 %25, %27, !dbg !4751
  %or21 = or i32 %and17, %and20, !dbg !4751
  %28 = load %struct.ktermios*, %struct.ktermios** %termios, align 8, !dbg !4751
  %c_cflag22 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %28, i32 0, i32 2, !dbg !4751
  store i32 %or21, i32* %c_cflag22, align 4, !dbg !4751
  %29 = load %struct.ktermios*, %struct.ktermios** %termios, align 8, !dbg !4752
  %c_lflag = getelementptr inbounds %struct.ktermios, %struct.ktermios* %29, i32 0, i32 3, !dbg !4752
  %30 = load i32, i32* %c_lflag, align 4, !dbg !4752
  %31 = load %struct.ktermios*, %struct.ktermios** %locked, align 8, !dbg !4752
  %c_lflag23 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %31, i32 0, i32 3, !dbg !4752
  %32 = load i32, i32* %c_lflag23, align 4, !dbg !4752
  %neg24 = xor i32 %32, -1, !dbg !4752
  %and25 = and i32 %30, %neg24, !dbg !4752
  %33 = load %struct.ktermios*, %struct.ktermios** %old.addr, align 8, !dbg !4752
  %c_lflag26 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %33, i32 0, i32 3, !dbg !4752
  %34 = load i32, i32* %c_lflag26, align 4, !dbg !4752
  %35 = load %struct.ktermios*, %struct.ktermios** %locked, align 8, !dbg !4752
  %c_lflag27 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %35, i32 0, i32 3, !dbg !4752
  %36 = load i32, i32* %c_lflag27, align 4, !dbg !4752
  %and28 = and i32 %34, %36, !dbg !4752
  %or29 = or i32 %and25, %and28, !dbg !4752
  %37 = load %struct.ktermios*, %struct.ktermios** %termios, align 8, !dbg !4752
  %c_lflag30 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %37, i32 0, i32 3, !dbg !4752
  store i32 %or29, i32* %c_lflag30, align 4, !dbg !4752
  %38 = load %struct.ktermios*, %struct.ktermios** %locked, align 8, !dbg !4753
  %c_line = getelementptr inbounds %struct.ktermios, %struct.ktermios* %38, i32 0, i32 4, !dbg !4754
  %39 = load i8, i8* %c_line, align 4, !dbg !4754
  %conv = zext i8 %39 to i32, !dbg !4753
  %tobool = icmp ne i32 %conv, 0, !dbg !4753
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4753

cond.true:                                        ; preds = %entry
  %40 = load %struct.ktermios*, %struct.ktermios** %old.addr, align 8, !dbg !4755
  %c_line31 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %40, i32 0, i32 4, !dbg !4756
  %41 = load i8, i8* %c_line31, align 4, !dbg !4756
  %conv32 = zext i8 %41 to i32, !dbg !4755
  br label %cond.end, !dbg !4753

cond.false:                                       ; preds = %entry
  %42 = load %struct.ktermios*, %struct.ktermios** %termios, align 8, !dbg !4757
  %c_line33 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %42, i32 0, i32 4, !dbg !4758
  %43 = load i8, i8* %c_line33, align 4, !dbg !4758
  %conv34 = zext i8 %43 to i32, !dbg !4757
  br label %cond.end, !dbg !4753

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv32, %cond.true ], [ %conv34, %cond.false ], !dbg !4753
  %conv35 = trunc i32 %cond to i8, !dbg !4753
  %44 = load %struct.ktermios*, %struct.ktermios** %termios, align 8, !dbg !4759
  %c_line36 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %44, i32 0, i32 4, !dbg !4760
  store i8 %conv35, i8* %c_line36, align 4, !dbg !4761
  store i32 0, i32* %i, align 4, !dbg !4762
  br label %for.cond, !dbg !4764

for.cond:                                         ; preds = %for.inc, %cond.end
  %45 = load i32, i32* %i, align 4, !dbg !4765
  %cmp = icmp slt i32 %45, 19, !dbg !4767
  br i1 %cmp, label %for.body, label %for.end, !dbg !4768

for.body:                                         ; preds = %for.cond
  %46 = load %struct.ktermios*, %struct.ktermios** %locked, align 8, !dbg !4769
  %c_cc = getelementptr inbounds %struct.ktermios, %struct.ktermios* %46, i32 0, i32 5, !dbg !4770
  %47 = load i32, i32* %i, align 4, !dbg !4771
  %idxprom = sext i32 %47 to i64, !dbg !4769
  %arrayidx = getelementptr [19 x i8], [19 x i8]* %c_cc, i64 0, i64 %idxprom, !dbg !4769
  %48 = load i8, i8* %arrayidx, align 1, !dbg !4769
  %conv38 = zext i8 %48 to i32, !dbg !4769
  %tobool39 = icmp ne i32 %conv38, 0, !dbg !4769
  br i1 %tobool39, label %cond.true40, label %cond.false45, !dbg !4769

cond.true40:                                      ; preds = %for.body
  %49 = load %struct.ktermios*, %struct.ktermios** %old.addr, align 8, !dbg !4772
  %c_cc41 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %49, i32 0, i32 5, !dbg !4773
  %50 = load i32, i32* %i, align 4, !dbg !4774
  %idxprom42 = sext i32 %50 to i64, !dbg !4772
  %arrayidx43 = getelementptr [19 x i8], [19 x i8]* %c_cc41, i64 0, i64 %idxprom42, !dbg !4772
  %51 = load i8, i8* %arrayidx43, align 1, !dbg !4772
  %conv44 = zext i8 %51 to i32, !dbg !4772
  br label %cond.end50, !dbg !4769

cond.false45:                                     ; preds = %for.body
  %52 = load %struct.ktermios*, %struct.ktermios** %termios, align 8, !dbg !4775
  %c_cc46 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %52, i32 0, i32 5, !dbg !4776
  %53 = load i32, i32* %i, align 4, !dbg !4777
  %idxprom47 = sext i32 %53 to i64, !dbg !4775
  %arrayidx48 = getelementptr [19 x i8], [19 x i8]* %c_cc46, i64 0, i64 %idxprom47, !dbg !4775
  %54 = load i8, i8* %arrayidx48, align 1, !dbg !4775
  %conv49 = zext i8 %54 to i32, !dbg !4775
  br label %cond.end50, !dbg !4769

cond.end50:                                       ; preds = %cond.false45, %cond.true40
  %cond51 = phi i32 [ %conv44, %cond.true40 ], [ %conv49, %cond.false45 ], !dbg !4769
  %conv52 = trunc i32 %cond51 to i8, !dbg !4769
  %55 = load %struct.ktermios*, %struct.ktermios** %termios, align 8, !dbg !4778
  %c_cc53 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %55, i32 0, i32 5, !dbg !4779
  %56 = load i32, i32* %i, align 4, !dbg !4780
  %idxprom54 = sext i32 %56 to i64, !dbg !4778
  %arrayidx55 = getelementptr [19 x i8], [19 x i8]* %c_cc53, i64 0, i64 %idxprom54, !dbg !4778
  store i8 %conv52, i8* %arrayidx55, align 1, !dbg !4781
  br label %for.inc, !dbg !4778

for.inc:                                          ; preds = %cond.end50
  %57 = load i32, i32* %i, align 4, !dbg !4782
  %inc = add i32 %57, 1, !dbg !4782
  store i32 %inc, i32* %i, align 4, !dbg !4782
  br label %for.cond, !dbg !4783, !llvm.loop !4784

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4786
}

; Function Attrs: noredzone
declare dso_local %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct*) #2

; Function Attrs: noredzone
declare dso_local void @tty_ldisc_deref(%struct.tty_ldisc*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tty_mode_ioctl(%struct.tty_struct* %tty, %struct.file* %file, i32 %cmd, i64 %arg) #0 !dbg !4787 {
entry:
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !4788, metadata !DIExpression()), !dbg !4793
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !4804, metadata !DIExpression()), !dbg !4805
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !4806, metadata !DIExpression()), !dbg !4807
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !4808, metadata !DIExpression()), !dbg !4809
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !4810, metadata !DIExpression()), !dbg !4813
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !4814, metadata !DIExpression()), !dbg !4815
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !4816, metadata !DIExpression()), !dbg !4817
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !4818, metadata !DIExpression()), !dbg !4819
  %retval = alloca i32, align 4
  %tty.addr = alloca %struct.tty_struct*, align 8
  %file.addr = alloca %struct.file*, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %real_tty = alloca %struct.tty_struct*, align 8
  %p = alloca i8*, align 8
  %ret = alloca i32, align 4
  %kterm = alloca %struct.ktermios, align 4
  %ktermx = alloca %struct.termiox, align 2
  %tmp = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca i8*, align 8
  %__val_pu = alloca i32, align 4
  %tmp82 = alloca i64, align 8
  %tmp86 = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i32, align 4
  %tmp91 = alloca i64, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4820, metadata !DIExpression()), !dbg !4821
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4822, metadata !DIExpression()), !dbg !4823
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !4824, metadata !DIExpression()), !dbg !4825
  store i64 %arg, i64* %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %arg.addr, metadata !4826, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %real_tty, metadata !4828, metadata !DIExpression()), !dbg !4829
  call void @llvm.dbg.declare(metadata i8** %p, metadata !4830, metadata !DIExpression()), !dbg !4831
  %0 = load i64, i64* %arg.addr, align 8, !dbg !4832
  %1 = inttoptr i64 %0 to i8*, !dbg !4833
  store i8* %1, i8** %p, align 8, !dbg !4831
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4834, metadata !DIExpression()), !dbg !4835
  store i32 0, i32* %ret, align 4, !dbg !4835
  call void @llvm.dbg.declare(metadata %struct.ktermios* %kterm, metadata !4836, metadata !DIExpression()), !dbg !4837
  br label %do.body, !dbg !4838

do.body:                                          ; preds = %entry
  %2 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4839
  %cmp = icmp eq %struct.file* %2, null, !dbg !4839
  %lnot = xor i1 %cmp, true, !dbg !4839
  %lnot1 = xor i1 %lnot, true, !dbg !4839
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4839
  %conv = sext i32 %lnot.ext to i64, !dbg !4839
  %tobool = icmp ne i64 %conv, 0, !dbg !4839
  br i1 %tobool, label %if.then, label %if.end, !dbg !4842

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !4839

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !4843

do.body3:                                         ; preds = %do.body2
  br label %do.end, !dbg !4845

do.end:                                           ; preds = %do.body3
  br label %do.body4, !dbg !4843

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 716, i32 0, i64 12) #5, !dbg !4847, !srcloc !4849
  br label %do.end5, !dbg !4847

do.end5:                                          ; preds = %do.body4
  br label %do.body6, !dbg !4843

do.body6:                                         ; preds = %do.end5
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 231) #5, !dbg !4850, !srcloc !4853
  unreachable, !dbg !4854

do.end7:                                          ; No predecessors!
  br label %do.end8, !dbg !4843

do.end8:                                          ; preds = %do.end7
  br label %if.end, !dbg !4843

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.end9, !dbg !4842

do.end9:                                          ; preds = %if.end
  %3 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4855
  %driver = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %3, i32 0, i32 3, !dbg !4857
  %4 = load %struct.tty_driver*, %struct.tty_driver** %driver, align 8, !dbg !4857
  %type = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %4, i32 0, i32 10, !dbg !4858
  %5 = load i16, i16* %type, align 8, !dbg !4858
  %conv10 = sext i16 %5 to i32, !dbg !4855
  %cmp11 = icmp eq i32 %conv10, 4, !dbg !4859
  br i1 %cmp11, label %land.lhs.true, label %if.else, !dbg !4860

land.lhs.true:                                    ; preds = %do.end9
  %6 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4861
  %driver13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 3, !dbg !4862
  %7 = load %struct.tty_driver*, %struct.tty_driver** %driver13, align 8, !dbg !4862
  %subtype = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %7, i32 0, i32 11, !dbg !4863
  %8 = load i16, i16* %subtype, align 2, !dbg !4863
  %conv14 = sext i16 %8 to i32, !dbg !4861
  %cmp15 = icmp eq i32 %conv14, 1, !dbg !4864
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !4865

if.then17:                                        ; preds = %land.lhs.true
  %9 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4866
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 31, !dbg !4867
  %10 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8, !dbg !4867
  store %struct.tty_struct* %10, %struct.tty_struct** %real_tty, align 8, !dbg !4868
  br label %if.end18, !dbg !4869

if.else:                                          ; preds = %land.lhs.true, %do.end9
  %11 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4870
  store %struct.tty_struct* %11, %struct.tty_struct** %real_tty, align 8, !dbg !4871
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then17
  %12 = load i32, i32* %cmd.addr, align 4, !dbg !4872
  switch i32 %12, label %sw.default [
    i32 21508, label %sw.bb
    i32 21507, label %sw.bb19
    i32 21506, label %sw.bb21
    i32 21505, label %sw.bb23
    i32 -2144578518, label %sw.bb28
    i32 1076646957, label %sw.bb33
    i32 1076646956, label %sw.bb35
    i32 1076646955, label %sw.bb37
    i32 21509, label %sw.bb39
    i32 21512, label %sw.bb41
    i32 21511, label %sw.bb43
    i32 21510, label %sw.bb45
    i32 21590, label %sw.bb47
    i32 21591, label %sw.bb52
    i32 21554, label %sw.bb61
    i32 21555, label %sw.bb73
    i32 21557, label %sw.bb75
    i32 21556, label %sw.bb77
    i32 21529, label %sw.bb79
    i32 21530, label %sw.bb85
  ], !dbg !4873

sw.bb:                                            ; preds = %if.end18
  %13 = load %struct.tty_struct*, %struct.tty_struct** %real_tty, align 8, !dbg !4874
  %14 = load i8*, i8** %p, align 8, !dbg !4875
  %call = call i32 @set_termios(%struct.tty_struct* %13, i8* %14, i32 11) #7, !dbg !4876
  store i32 %call, i32* %retval, align 4, !dbg !4877
  br label %return, !dbg !4877

sw.bb19:                                          ; preds = %if.end18
  %15 = load %struct.tty_struct*, %struct.tty_struct** %real_tty, align 8, !dbg !4878
  %16 = load i8*, i8** %p, align 8, !dbg !4879
  %call20 = call i32 @set_termios(%struct.tty_struct* %15, i8* %16, i32 10) #7, !dbg !4880
  store i32 %call20, i32* %retval, align 4, !dbg !4881
  br label %return, !dbg !4881

sw.bb21:                                          ; preds = %if.end18
  %17 = load %struct.tty_struct*, %struct.tty_struct** %real_tty, align 8, !dbg !4882
  %18 = load i8*, i8** %p, align 8, !dbg !4883
  %call22 = call i32 @set_termios(%struct.tty_struct* %17, i8* %18, i32 8) #7, !dbg !4884
  store i32 %call22, i32* %retval, align 4, !dbg !4885
  br label %return, !dbg !4885

sw.bb23:                                          ; preds = %if.end18
  %19 = load %struct.tty_struct*, %struct.tty_struct** %real_tty, align 8, !dbg !4886
  call void @copy_termios(%struct.tty_struct* %19, %struct.ktermios* %kterm) #7, !dbg !4887
  %20 = load i64, i64* %arg.addr, align 8, !dbg !4888
  %21 = inttoptr i64 %20 to %struct.termios*, !dbg !4890
  %call24 = call i32 @kernel_termios_to_user_termios_1(%struct.termios* %21, %struct.ktermios* %kterm) #7, !dbg !4891
  %tobool25 = icmp ne i32 %call24, 0, !dbg !4891
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !4892

if.then26:                                        ; preds = %sw.bb23
  store i32 -14, i32* %ret, align 4, !dbg !4893
  br label %if.end27, !dbg !4894

if.end27:                                         ; preds = %if.then26, %sw.bb23
  %22 = load i32, i32* %ret, align 4, !dbg !4895
  store i32 %22, i32* %retval, align 4, !dbg !4896
  br label %return, !dbg !4896

sw.bb28:                                          ; preds = %if.end18
  %23 = load %struct.tty_struct*, %struct.tty_struct** %real_tty, align 8, !dbg !4897
  call void @copy_termios(%struct.tty_struct* %23, %struct.ktermios* %kterm) #7, !dbg !4898
  %24 = load i64, i64* %arg.addr, align 8, !dbg !4899
  %25 = inttoptr i64 %24 to %struct.termios2*, !dbg !4901
  %call29 = call i32 @kernel_termios_to_user_termios(%struct.termios2* %25, %struct.ktermios* %kterm) #7, !dbg !4902
  %tobool30 = icmp ne i32 %call29, 0, !dbg !4902
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !4903

if.then31:                                        ; preds = %sw.bb28
  store i32 -14, i32* %ret, align 4, !dbg !4904
  br label %if.end32, !dbg !4905

if.end32:                                         ; preds = %if.then31, %sw.bb28
  %26 = load i32, i32* %ret, align 4, !dbg !4906
  store i32 %26, i32* %retval, align 4, !dbg !4907
  br label %return, !dbg !4907

sw.bb33:                                          ; preds = %if.end18
  %27 = load %struct.tty_struct*, %struct.tty_struct** %real_tty, align 8, !dbg !4908
  %28 = load i8*, i8** %p, align 8, !dbg !4909
  %call34 = call i32 @set_termios(%struct.tty_struct* %27, i8* %28, i32 3) #7, !dbg !4910
  store i32 %call34, i32* %retval, align 4, !dbg !4911
  br label %return, !dbg !4911

sw.bb35:                                          ; preds = %if.end18
  %29 = load %struct.tty_struct*, %struct.tty_struct** %real_tty, align 8, !dbg !4912
  %30 = load i8*, i8** %p, align 8, !dbg !4913
  %call36 = call i32 @set_termios(%struct.tty_struct* %29, i8* %30, i32 2) #7, !dbg !4914
  store i32 %call36, i32* %retval, align 4, !dbg !4915
  br label %return, !dbg !4915

sw.bb37:                                          ; preds = %if.end18
  %31 = load %struct.tty_struct*, %struct.tty_struct** %real_tty, align 8, !dbg !4916
  %32 = load i8*, i8** %p, align 8, !dbg !4917
  %call38 = call i32 @set_termios(%struct.tty_struct* %31, i8* %32, i32 0) #7, !dbg !4918
  store i32 %call38, i32* %retval, align 4, !dbg !4919
  br label %return, !dbg !4919

sw.bb39:                                          ; preds = %if.end18
  %33 = load %struct.tty_struct*, %struct.tty_struct** %real_tty, align 8, !dbg !4920
  %34 = load i8*, i8** %p, align 8, !dbg !4921
  %35 = bitcast i8* %34 to %struct.termio*, !dbg !4921
  %call40 = call i32 @get_termio(%struct.tty_struct* %33, %struct.termio* %35) #7, !dbg !4922
  store i32 %call40, i32* %retval, align 4, !dbg !4923
  br label %return, !dbg !4923

sw.bb41:                                          ; preds = %if.end18
  %36 = load %struct.tty_struct*, %struct.tty_struct** %real_tty, align 8, !dbg !4924
  %37 = load i8*, i8** %p, align 8, !dbg !4925
  %call42 = call i32 @set_termios(%struct.tty_struct* %36, i8* %37, i32 7) #7, !dbg !4926
  store i32 %call42, i32* %retval, align 4, !dbg !4927
  br label %return, !dbg !4927

sw.bb43:                                          ; preds = %if.end18
  %38 = load %struct.tty_struct*, %struct.tty_struct** %real_tty, align 8, !dbg !4928
  %39 = load i8*, i8** %p, align 8, !dbg !4929
  %call44 = call i32 @set_termios(%struct.tty_struct* %38, i8* %39, i32 6) #7, !dbg !4930
  store i32 %call44, i32* %retval, align 4, !dbg !4931
  br label %return, !dbg !4931

sw.bb45:                                          ; preds = %if.end18
  %40 = load %struct.tty_struct*, %struct.tty_struct** %real_tty, align 8, !dbg !4932
  %41 = load i8*, i8** %p, align 8, !dbg !4933
  %call46 = call i32 @set_termios(%struct.tty_struct* %40, i8* %41, i32 4) #7, !dbg !4934
  store i32 %call46, i32* %retval, align 4, !dbg !4935
  br label %return, !dbg !4935

sw.bb47:                                          ; preds = %if.end18
  %42 = load %struct.tty_struct*, %struct.tty_struct** %real_tty, align 8, !dbg !4936
  call void @copy_termios_locked(%struct.tty_struct* %42, %struct.ktermios* %kterm) #7, !dbg !4937
  %43 = load i64, i64* %arg.addr, align 8, !dbg !4938
  %44 = inttoptr i64 %43 to %struct.termios*, !dbg !4940
  %call48 = call i32 @kernel_termios_to_user_termios_1(%struct.termios* %44, %struct.ktermios* %kterm) #7, !dbg !4941
  %tobool49 = icmp ne i32 %call48, 0, !dbg !4941
  br i1 %tobool49, label %if.then50, label %if.end51, !dbg !4942

if.then50:                                        ; preds = %sw.bb47
  store i32 -14, i32* %ret, align 4, !dbg !4943
  br label %if.end51, !dbg !4944

if.end51:                                         ; preds = %if.then50, %sw.bb47
  %45 = load i32, i32* %ret, align 4, !dbg !4945
  store i32 %45, i32* %retval, align 4, !dbg !4946
  br label %return, !dbg !4946

sw.bb52:                                          ; preds = %if.end18
  %call53 = call zeroext i1 @capable(i32 21) #7, !dbg !4947
  br i1 %call53, label %if.end55, label %if.then54, !dbg !4949

if.then54:                                        ; preds = %sw.bb52
  store i32 -1, i32* %retval, align 4, !dbg !4950
  br label %return, !dbg !4950

if.end55:                                         ; preds = %sw.bb52
  %46 = load %struct.tty_struct*, %struct.tty_struct** %real_tty, align 8, !dbg !4951
  call void @copy_termios_locked(%struct.tty_struct* %46, %struct.ktermios* %kterm) #7, !dbg !4952
  %47 = load i64, i64* %arg.addr, align 8, !dbg !4953
  %48 = inttoptr i64 %47 to %struct.termios*, !dbg !4955
  %call56 = call i32 @user_termios_to_kernel_termios_1(%struct.ktermios* %kterm, %struct.termios* %48) #7, !dbg !4956
  %tobool57 = icmp ne i32 %call56, 0, !dbg !4956
  br i1 %tobool57, label %if.then58, label %if.end59, !dbg !4957

if.then58:                                        ; preds = %if.end55
  store i32 -14, i32* %retval, align 4, !dbg !4958
  br label %return, !dbg !4958

if.end59:                                         ; preds = %if.end55
  %49 = load %struct.tty_struct*, %struct.tty_struct** %real_tty, align 8, !dbg !4959
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %49, i32 0, i32 11, !dbg !4960
  call void @down_write(%struct.rw_semaphore* %termios_rwsem) #7, !dbg !4961
  %50 = load %struct.tty_struct*, %struct.tty_struct** %real_tty, align 8, !dbg !4962
  %termios_locked = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %50, i32 0, i32 16, !dbg !4963
  %51 = bitcast %struct.ktermios* %termios_locked to i8*, !dbg !4964
  %52 = bitcast %struct.ktermios* %kterm to i8*, !dbg !4964
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 44, i1 false), !dbg !4964
  %53 = load %struct.tty_struct*, %struct.tty_struct** %real_tty, align 8, !dbg !4965
  %termios_rwsem60 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %53, i32 0, i32 11, !dbg !4966
  call void @up_write(%struct.rw_semaphore* %termios_rwsem60) #7, !dbg !4967
  %54 = load i32, i32* %ret, align 4, !dbg !4968
  store i32 %54, i32* %retval, align 4, !dbg !4969
  br label %return, !dbg !4969

sw.bb61:                                          ; preds = %if.end18
  call void @llvm.dbg.declare(metadata %struct.termiox* %ktermx, metadata !4970, metadata !DIExpression()), !dbg !4971
  %55 = load %struct.tty_struct*, %struct.tty_struct** %real_tty, align 8, !dbg !4972
  %termiox = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %55, i32 0, i32 17, !dbg !4974
  %56 = load %struct.termiox*, %struct.termiox** %termiox, align 8, !dbg !4974
  %cmp62 = icmp eq %struct.termiox* %56, null, !dbg !4975
  br i1 %cmp62, label %if.then64, label %if.end65, !dbg !4976

if.then64:                                        ; preds = %sw.bb61
  store i32 -22, i32* %retval, align 4, !dbg !4977
  br label %return, !dbg !4977

if.end65:                                         ; preds = %sw.bb61
  %57 = load %struct.tty_struct*, %struct.tty_struct** %real_tty, align 8, !dbg !4978
  %termios_rwsem66 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %57, i32 0, i32 11, !dbg !4979
  call void @down_read(%struct.rw_semaphore* %termios_rwsem66) #7, !dbg !4980
  %58 = bitcast %struct.termiox* %ktermx to i8*, !dbg !4981
  %59 = load %struct.tty_struct*, %struct.tty_struct** %real_tty, align 8, !dbg !4982
  %termiox67 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %59, i32 0, i32 17, !dbg !4983
  %60 = load %struct.termiox*, %struct.termiox** %termiox67, align 8, !dbg !4983
  %61 = bitcast %struct.termiox* %60 to i8*, !dbg !4981
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %58, i8* align 2 %61, i64 16, i1 false), !dbg !4981
  %62 = load %struct.tty_struct*, %struct.tty_struct** %real_tty, align 8, !dbg !4984
  %termios_rwsem68 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %62, i32 0, i32 11, !dbg !4985
  call void @up_read(%struct.rw_semaphore* %termios_rwsem68) #7, !dbg !4986
  %63 = load i8*, i8** %p, align 8, !dbg !4987
  %64 = bitcast %struct.termiox* %ktermx to i8*, !dbg !4988
  store i8* %63, i8** %to.addr.i, align 8
  store i8* %64, i8** %from.addr.i, align 8
  store i64 16, i64* %n.addr.i, align 8
  %65 = load i8*, i8** %from.addr.i, align 8, !dbg !4989
  %66 = load i64, i64* %n.addr.i, align 8, !dbg !4989
  store i8* %65, i8** %addr.addr.i.i, align 8
  store i64 %66, i64* %bytes.addr.i.i, align 8
  store i8 1, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !4809
  %67 = load i32, i32* %sz.i.i, align 4, !dbg !4990
  %cmp.i.i = icmp sge i32 %67, 0, !dbg !4990
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !4990

land.rhs.i.i:                                     ; preds = %if.end65
  %68 = load i32, i32* %sz.i.i, align 4, !dbg !4990
  %conv.i.i = sext i32 %68 to i64, !dbg !4990
  %69 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4990
  %cmp1.i.i = icmp ult i64 %conv.i.i, %69, !dbg !4990
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %if.end65
  %70 = phi i1 [ false, %if.end65 ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !4992
  %lnot.i.i = xor i1 %70, true, !dbg !4990
  %lnot.ext.i.i = zext i1 %70 to i32, !dbg !4990
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4990
  br i1 %70, label %if.then.i.i, label %if.end10.i.i, !dbg !4993

if.then.i.i:                                      ; preds = %land.end.i.i
  %71 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4994
  %72 = call i1 @llvm.is.constant.i64(i64 %71) #5, !dbg !4997
  br i1 %72, label %if.else.i.i, label %if.then5.i.i, !dbg !4998

if.then5.i.i:                                     ; preds = %if.then.i.i
  %73 = load i32, i32* %sz.i.i, align 4, !dbg !4999
  %74 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5000
  call void @copy_overflow(i32 %73, i64 %74) #8, !dbg !5001
  br label %if.end9.i.i, !dbg !5001

if.else.i.i:                                      ; preds = %if.then.i.i
  %75 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5002
  %tobool6.i.i = trunc i8 %75 to i1, !dbg !5002
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !5004

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #8, !dbg !5005
  br label %if.end.i.i, !dbg !5005

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #8, !dbg !5006
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5007
  br label %check_copy_size.exit.i, !dbg !5007

if.end10.i.i:                                     ; preds = %land.end.i.i
  %76 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4813
  %cmp11.i.i = icmp ugt i64 %76, 2147483647, !dbg !4813
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !4813
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !4813
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !4813
  %77 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5008
  %tobool17.i.i = icmp ne i32 %77, 0, !dbg !5008
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !5008
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !5008
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !5008
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !4813

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #5, !dbg !5010, !srcloc !5013
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #5, !dbg !5014, !srcloc !5016
  br label %if.end31.i.i, !dbg !5017

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %78 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !4813
  %tobool32.i.i = icmp ne i32 %78, 0, !dbg !4813
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !4813
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !4813
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !4813
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !5008
  %79 = load i64, i64* %tmp.i.i, align 8, !dbg !4813
  %tobool38.i.i = icmp ne i64 %79, 0, !dbg !5018
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !5019

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5020
  br label %check_copy_size.exit.i, !dbg !5020

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %80 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !5021
  %81 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5022
  %82 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5023
  %tobool41.i.i = trunc i8 %82 to i1, !dbg !5023
  call void @check_object_size(i8* %80, i64 %81, i1 zeroext %tobool41.i.i) #8, !dbg !5024
  store i1 true, i1* %retval.i.i, align 1, !dbg !5025
  br label %check_copy_size.exit.i, !dbg !5025

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %83 = load i1, i1* %retval.i.i, align 1, !dbg !5026
  %lnot.i = xor i1 %83, true, !dbg !4989
  %lnot.ext.i = zext i1 %83 to i32, !dbg !4989
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !4989
  br i1 %83, label %if.then.i, label %copy_to_user.exit, !dbg !5027

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %84 = load i8*, i8** %to.addr.i, align 8, !dbg !5028
  %85 = load i8*, i8** %from.addr.i, align 8, !dbg !5029
  %86 = load i64, i64* %n.addr.i, align 8, !dbg !5030
  %call2.i = call i64 @_copy_to_user(i8* %84, i8* %85, i64 %86) #8, !dbg !5031
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !5032
  br label %copy_to_user.exit, !dbg !5033

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i
  %87 = load i64, i64* %n.addr.i, align 8, !dbg !5034
  %tobool70 = icmp ne i64 %87, 0, !dbg !5035
  br i1 %tobool70, label %if.then71, label %if.end72, !dbg !5036

if.then71:                                        ; preds = %copy_to_user.exit
  store i32 -14, i32* %ret, align 4, !dbg !5037
  br label %if.end72, !dbg !5038

if.end72:                                         ; preds = %if.then71, %copy_to_user.exit
  %88 = load i32, i32* %ret, align 4, !dbg !5039
  store i32 %88, i32* %retval, align 4, !dbg !5040
  br label %return, !dbg !5040

sw.bb73:                                          ; preds = %if.end18
  %89 = load %struct.tty_struct*, %struct.tty_struct** %real_tty, align 8, !dbg !5041
  %90 = load i8*, i8** %p, align 8, !dbg !5042
  %call74 = call i32 @set_termiox(%struct.tty_struct* %89, i8* %90, i32 0) #7, !dbg !5043
  store i32 %call74, i32* %retval, align 4, !dbg !5044
  br label %return, !dbg !5044

sw.bb75:                                          ; preds = %if.end18
  %91 = load %struct.tty_struct*, %struct.tty_struct** %real_tty, align 8, !dbg !5045
  %92 = load i8*, i8** %p, align 8, !dbg !5046
  %call76 = call i32 @set_termiox(%struct.tty_struct* %91, i8* %92, i32 2) #7, !dbg !5047
  store i32 %call76, i32* %retval, align 4, !dbg !5048
  br label %return, !dbg !5048

sw.bb77:                                          ; preds = %if.end18
  %93 = load %struct.tty_struct*, %struct.tty_struct** %real_tty, align 8, !dbg !5049
  %94 = load i8*, i8** %p, align 8, !dbg !5050
  %call78 = call i32 @set_termiox(%struct.tty_struct* %93, i8* %94, i32 1) #7, !dbg !5051
  store i32 %call78, i32* %retval, align 4, !dbg !5052
  br label %return, !dbg !5052

sw.bb79:                                          ; preds = %if.end18
  %95 = load %struct.tty_struct*, %struct.tty_struct** %real_tty, align 8, !dbg !5053
  call void @copy_termios(%struct.tty_struct* %95, %struct.ktermios* %kterm) #7, !dbg !5054
  call void @might_fault() #7, !dbg !5055
  call void @llvm.dbg.declare(metadata i32* %__ret_pu, metadata !5057, metadata !DIExpression()), !dbg !5059
  call void @llvm.dbg.declare(metadata i8** %__ptr_pu, metadata !5060, metadata !DIExpression()), !dbg !5059
  call void @llvm.dbg.declare(metadata i32* %__val_pu, metadata !5061, metadata !DIExpression()), !dbg !5059
  %96 = load i64, i64* %arg.addr, align 8, !dbg !5059
  %97 = inttoptr i64 %96 to i32*, !dbg !5059
  %98 = bitcast i32* %97 to i8*, !dbg !5059
  store i8* %98, i8** %__ptr_pu, align 8, !dbg !5059
  %c_cflag = getelementptr inbounds %struct.ktermios, %struct.ktermios* %kterm, i32 0, i32 2, !dbg !5059
  %99 = load i32, i32* %c_cflag, align 4, !dbg !5059
  %and = and i32 %99, 2048, !dbg !5059
  %tobool80 = icmp ne i32 %and, 0, !dbg !5059
  %100 = zext i1 %tobool80 to i64, !dbg !5059
  %cond = select i1 %tobool80, i32 1, i32 0, !dbg !5059
  store i32 %cond, i32* %__val_pu, align 4, !dbg !5059
  %101 = call i64 @llvm.read_register.i64(metadata !4167), !dbg !5059
  %102 = load i8*, i8** %__ptr_pu, align 8, !dbg !5059
  %103 = load i32, i32* %__val_pu, align 4, !dbg !5059
  %104 = call { i8*, i64 } asm sideeffect "call __put_user_${4:P}", "={cx},={rsp},0,{rax},i,1,~{ebx},~{dirflag},~{fpsr},~{flags}"(i8* %102, i32 %103, i64 4, i64 %101) #5, !dbg !5059, !srcloc !5062
  %asmresult = extractvalue { i8*, i64 } %104, 0, !dbg !5059
  %asmresult81 = extractvalue { i8*, i64 } %104, 1, !dbg !5059
  %105 = ptrtoint i8* %asmresult to i64, !dbg !5059
  %106 = trunc i64 %105 to i32, !dbg !5059
  store i32 %106, i32* %__ret_pu, align 4, !dbg !5059
  call void @llvm.write_register.i64(metadata !4167, i64 %asmresult81), !dbg !5059
  %107 = load i32, i32* %__ret_pu, align 4, !dbg !5059
  %conv83 = sext i32 %107 to i64, !dbg !5059
  store i64 %conv83, i64* %tmp82, align 8, !dbg !5059
  %108 = load i64, i64* %tmp82, align 8, !dbg !5059
  store i64 %108, i64* %tmp, align 8, !dbg !5055
  %109 = load i64, i64* %tmp, align 8, !dbg !5055
  %conv84 = trunc i64 %109 to i32, !dbg !5063
  store i32 %conv84, i32* %ret, align 4, !dbg !5064
  %110 = load i32, i32* %ret, align 4, !dbg !5065
  store i32 %110, i32* %retval, align 4, !dbg !5066
  br label %return, !dbg !5066

sw.bb85:                                          ; preds = %if.end18
  call void @might_fault() #7, !dbg !5067
  call void @llvm.dbg.declare(metadata i32* %__ret_gu, metadata !5070, metadata !DIExpression()), !dbg !5072
  call void @llvm.dbg.declare(metadata i32* %__val_gu, metadata !5073, metadata !DIExpression()), !dbg !5072
  %111 = call i64 @llvm.read_register.i64(metadata !4167), !dbg !5072
  %112 = load i64, i64* %arg.addr, align 8, !dbg !5072
  %113 = inttoptr i64 %112 to i32*, !dbg !5072
  %114 = call { i32*, i32, i64 } asm sideeffect "call __get_user_${4:P}", "={ax},={rdx},={rsp},0,i,2,~{dirflag},~{fpsr},~{flags}"(i32* %113, i64 4, i64 %111) #5, !dbg !5072, !srcloc !5074
  %asmresult87 = extractvalue { i32*, i32, i64 } %114, 0, !dbg !5072
  %asmresult88 = extractvalue { i32*, i32, i64 } %114, 1, !dbg !5072
  %asmresult89 = extractvalue { i32*, i32, i64 } %114, 2, !dbg !5072
  %115 = ptrtoint i32* %asmresult87 to i64, !dbg !5072
  %116 = trunc i64 %115 to i32, !dbg !5072
  store i32 %116, i32* %__ret_gu, align 4, !dbg !5072
  store i32 %asmresult88, i32* %__val_gu, align 4, !dbg !5072
  call void @llvm.write_register.i64(metadata !4167, i64 %asmresult89), !dbg !5072
  %117 = load i32, i32* %__val_gu, align 4, !dbg !5072
  %conv90 = zext i32 %117 to i64, !dbg !5072
  store i64 %conv90, i64* %arg.addr, align 8, !dbg !5072
  %118 = load i32, i32* %__ret_gu, align 4, !dbg !5072
  %conv92 = sext i32 %118 to i64, !dbg !5072
  store i64 %conv92, i64* %tmp91, align 8, !dbg !5072
  %119 = load i64, i64* %tmp91, align 8, !dbg !5072
  store i64 %119, i64* %tmp86, align 8, !dbg !5067
  %120 = load i64, i64* %tmp86, align 8, !dbg !5067
  %tobool93 = icmp ne i64 %120, 0, !dbg !5075
  br i1 %tobool93, label %if.then94, label %if.end95, !dbg !5076

if.then94:                                        ; preds = %sw.bb85
  store i32 -14, i32* %retval, align 4, !dbg !5077
  br label %return, !dbg !5077

if.end95:                                         ; preds = %sw.bb85
  %121 = load %struct.tty_struct*, %struct.tty_struct** %real_tty, align 8, !dbg !5078
  %122 = load i64, i64* %arg.addr, align 8, !dbg !5079
  %conv96 = trunc i64 %122 to i32, !dbg !5079
  %call97 = call i32 @tty_change_softcar(%struct.tty_struct* %121, i32 %conv96) #7, !dbg !5080
  store i32 %call97, i32* %retval, align 4, !dbg !5081
  br label %return, !dbg !5081

sw.default:                                       ; preds = %if.end18
  store i32 -515, i32* %retval, align 4, !dbg !5082
  br label %return, !dbg !5082

return:                                           ; preds = %sw.default, %if.end95, %if.then94, %sw.bb79, %sw.bb77, %sw.bb75, %sw.bb73, %if.end72, %if.then64, %if.end59, %if.then58, %if.then54, %if.end51, %sw.bb45, %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb37, %sw.bb35, %sw.bb33, %if.end32, %if.end27, %sw.bb21, %sw.bb19, %sw.bb
  %123 = load i32, i32* %retval, align 4, !dbg !5083
  ret i32 %123, !dbg !5083
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @set_termios(%struct.tty_struct* %tty, i8* %arg, i32 %opt) #0 !dbg !5084 {
entry:
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !5087, metadata !DIExpression()), !dbg !5093
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !5098, metadata !DIExpression()), !dbg !5100
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !5101, metadata !DIExpression()), !dbg !5103
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %retval = alloca i32, align 4
  %tty.addr = alloca %struct.tty_struct*, align 8
  %arg.addr = alloca i8*, align 8
  %opt.addr = alloca i32, align 4
  %tmp_termios = alloca %struct.ktermios, align 4
  %ld = alloca %struct.tty_ldisc*, align 8
  %retval1 = alloca i32, align 4
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5104, metadata !DIExpression()), !dbg !5105
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !5106, metadata !DIExpression()), !dbg !5107
  store i32 %opt, i32* %opt.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %opt.addr, metadata !5108, metadata !DIExpression()), !dbg !5109
  call void @llvm.dbg.declare(metadata %struct.ktermios* %tmp_termios, metadata !5110, metadata !DIExpression()), !dbg !5111
  call void @llvm.dbg.declare(metadata %struct.tty_ldisc** %ld, metadata !5112, metadata !DIExpression()), !dbg !5113
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5114, metadata !DIExpression()), !dbg !5115
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5116
  %call = call i32 @tty_check_change(%struct.tty_struct* %0) #7, !dbg !5117
  store i32 %call, i32* %retval1, align 4, !dbg !5115
  %1 = load i32, i32* %retval1, align 4, !dbg !5118
  %tobool = icmp ne i32 %1, 0, !dbg !5118
  br i1 %tobool, label %if.then, label %if.end, !dbg !5120

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %retval1, align 4, !dbg !5121
  store i32 %2, i32* %retval, align 4, !dbg !5122
  br label %return, !dbg !5122

if.end:                                           ; preds = %entry
  %3 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5123
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %3, i32 0, i32 11, !dbg !5124
  call void @down_read(%struct.rw_semaphore* %termios_rwsem) #7, !dbg !5125
  %4 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5126
  %termios = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 15, !dbg !5127
  %5 = bitcast %struct.ktermios* %tmp_termios to i8*, !dbg !5127
  %6 = bitcast %struct.ktermios* %termios to i8*, !dbg !5127
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 8 %6, i64 44, i1 false), !dbg !5127
  %7 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5128
  %termios_rwsem2 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 11, !dbg !5129
  call void @up_read(%struct.rw_semaphore* %termios_rwsem2) #7, !dbg !5130
  %8 = load i32, i32* %opt.addr, align 4, !dbg !5131
  %and = and i32 %8, 4, !dbg !5133
  %tobool3 = icmp ne i32 %and, 0, !dbg !5133
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !5134

if.then4:                                         ; preds = %if.end
  %9 = load i8*, i8** %arg.addr, align 8, !dbg !5135
  %10 = bitcast i8* %9 to %struct.termio*, !dbg !5138
  %call5 = call i32 @user_termio_to_kernel_termios(%struct.ktermios* %tmp_termios, %struct.termio* %10) #7, !dbg !5139
  %tobool6 = icmp ne i32 %call5, 0, !dbg !5139
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5140

if.then7:                                         ; preds = %if.then4
  store i32 -14, i32* %retval, align 4, !dbg !5141
  br label %return, !dbg !5141

if.end8:                                          ; preds = %if.then4
  br label %if.end22, !dbg !5142

if.else:                                          ; preds = %if.end
  %11 = load i32, i32* %opt.addr, align 4, !dbg !5143
  %and9 = and i32 %11, 8, !dbg !5145
  %tobool10 = icmp ne i32 %and9, 0, !dbg !5145
  br i1 %tobool10, label %if.then11, label %if.else16, !dbg !5146

if.then11:                                        ; preds = %if.else
  %12 = load i8*, i8** %arg.addr, align 8, !dbg !5147
  %13 = bitcast i8* %12 to %struct.termios*, !dbg !5150
  %call12 = call i32 @user_termios_to_kernel_termios_1(%struct.ktermios* %tmp_termios, %struct.termios* %13) #7, !dbg !5151
  %tobool13 = icmp ne i32 %call12, 0, !dbg !5151
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !5152

if.then14:                                        ; preds = %if.then11
  store i32 -14, i32* %retval, align 4, !dbg !5153
  br label %return, !dbg !5153

if.end15:                                         ; preds = %if.then11
  br label %if.end21, !dbg !5154

if.else16:                                        ; preds = %if.else
  %14 = load i8*, i8** %arg.addr, align 8, !dbg !5155
  %15 = bitcast i8* %14 to %struct.termios2*, !dbg !5158
  %call17 = call i32 @user_termios_to_kernel_termios(%struct.ktermios* %tmp_termios, %struct.termios2* %15) #7, !dbg !5159
  %tobool18 = icmp ne i32 %call17, 0, !dbg !5159
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !5160

if.then19:                                        ; preds = %if.else16
  store i32 -14, i32* %retval, align 4, !dbg !5161
  br label %return, !dbg !5161

if.end20:                                         ; preds = %if.else16
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end15
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end8
  %call23 = call i32 @tty_termios_input_baud_rate(%struct.ktermios* %tmp_termios) #7, !dbg !5162
  %c_ispeed = getelementptr inbounds %struct.ktermios, %struct.ktermios* %tmp_termios, i32 0, i32 6, !dbg !5163
  store i32 %call23, i32* %c_ispeed, align 4, !dbg !5164
  %call24 = call i32 @tty_termios_baud_rate(%struct.ktermios* %tmp_termios) #7, !dbg !5165
  %c_ospeed = getelementptr inbounds %struct.ktermios, %struct.ktermios* %tmp_termios, i32 0, i32 7, !dbg !5166
  store i32 %call24, i32* %c_ospeed, align 4, !dbg !5167
  %16 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5168
  %call25 = call %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct* %16) #7, !dbg !5169
  store %struct.tty_ldisc* %call25, %struct.tty_ldisc** %ld, align 8, !dbg !5170
  %17 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !5171
  %cmp = icmp ne %struct.tty_ldisc* %17, null, !dbg !5173
  br i1 %cmp, label %if.then26, label %if.end34, !dbg !5174

if.then26:                                        ; preds = %if.end22
  %18 = load i32, i32* %opt.addr, align 4, !dbg !5175
  %and27 = and i32 %18, 1, !dbg !5178
  %tobool28 = icmp ne i32 %and27, 0, !dbg !5178
  br i1 %tobool28, label %land.lhs.true, label %if.end33, !dbg !5179

land.lhs.true:                                    ; preds = %if.then26
  %19 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !5180
  %ops = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %19, i32 0, i32 0, !dbg !5181
  %20 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops, align 8, !dbg !5181
  %flush_buffer = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %20, i32 0, i32 6, !dbg !5182
  %21 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %flush_buffer, align 8, !dbg !5182
  %tobool29 = icmp ne void (%struct.tty_struct*)* %21, null, !dbg !5180
  br i1 %tobool29, label %if.then30, label %if.end33, !dbg !5183

if.then30:                                        ; preds = %land.lhs.true
  %22 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !5184
  %ops31 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %22, i32 0, i32 0, !dbg !5185
  %23 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops31, align 8, !dbg !5185
  %flush_buffer32 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %23, i32 0, i32 6, !dbg !5186
  %24 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %flush_buffer32, align 8, !dbg !5186
  %25 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5187
  call void %24(%struct.tty_struct* %25) #7, !dbg !5184
  br label %if.end33, !dbg !5184

if.end33:                                         ; preds = %if.then30, %land.lhs.true, %if.then26
  %26 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !5188
  call void @tty_ldisc_deref(%struct.tty_ldisc* %26) #7, !dbg !5189
  br label %if.end34, !dbg !5190

if.end34:                                         ; preds = %if.end33, %if.end22
  %27 = load i32, i32* %opt.addr, align 4, !dbg !5191
  %and35 = and i32 %27, 2, !dbg !5192
  %tobool36 = icmp ne i32 %and35, 0, !dbg !5192
  br i1 %tobool36, label %if.then37, label %if.end43, !dbg !5193

if.then37:                                        ; preds = %if.end34
  %28 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5194
  call void @tty_wait_until_sent(%struct.tty_struct* %28, i64 0) #7, !dbg !5195
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !5100
  %29 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !5100
  %30 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #9, !dbg !5103, !srcloc !5196
  store i64 %30, i64* %pfo_val__.i, align 8, !dbg !5103
  %31 = load i64, i64* %pfo_val__.i, align 8, !dbg !5103
  %32 = inttoptr i64 %31 to %struct.task_struct*, !dbg !5103
  store %struct.task_struct* %32, %struct.task_struct** %tmp.i, align 8, !dbg !5103
  %33 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !5103
  store %struct.task_struct* %33, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5093
  %34 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5093
  store %struct.task_struct* %34, %struct.task_struct** %tmp1.i, align 8, !dbg !5093
  %35 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !5093
  %call39 = call i32 @signal_pending(%struct.task_struct* %35) #7, !dbg !5197
  %tobool40 = icmp ne i32 %call39, 0, !dbg !5197
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !5198

if.then41:                                        ; preds = %if.then37
  store i32 -512, i32* %retval, align 4, !dbg !5199
  br label %return, !dbg !5199

if.end42:                                         ; preds = %if.then37
  br label %if.end43, !dbg !5200

if.end43:                                         ; preds = %if.end42, %if.end34
  %36 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5201
  %call44 = call i32 @tty_set_termios(%struct.tty_struct* %36, %struct.ktermios* %tmp_termios) #7, !dbg !5202
  store i32 0, i32* %retval, align 4, !dbg !5203
  br label %return, !dbg !5203

return:                                           ; preds = %if.end43, %if.then41, %if.then19, %if.then14, %if.then7, %if.then
  %37 = load i32, i32* %retval, align 4, !dbg !5204
  ret i32 %37, !dbg !5204
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @copy_termios(%struct.tty_struct* %tty, %struct.ktermios* %kterm) #0 !dbg !5205 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  %kterm.addr = alloca %struct.ktermios*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5206, metadata !DIExpression()), !dbg !5207
  store %struct.ktermios* %kterm, %struct.ktermios** %kterm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ktermios** %kterm.addr, metadata !5208, metadata !DIExpression()), !dbg !5209
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5210
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 11, !dbg !5211
  call void @down_read(%struct.rw_semaphore* %termios_rwsem) #7, !dbg !5212
  %1 = load %struct.ktermios*, %struct.ktermios** %kterm.addr, align 8, !dbg !5213
  %2 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5214
  %termios = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %2, i32 0, i32 15, !dbg !5215
  %3 = bitcast %struct.ktermios* %1 to i8*, !dbg !5215
  %4 = bitcast %struct.ktermios* %termios to i8*, !dbg !5215
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 8 %4, i64 44, i1 false), !dbg !5215
  %5 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5216
  %termios_rwsem1 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 11, !dbg !5217
  call void @up_read(%struct.rw_semaphore* %termios_rwsem1) #7, !dbg !5218
  ret void, !dbg !5219
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kernel_termios_to_user_termios_1(%struct.termios* %u, %struct.ktermios* %k) #0 !dbg !5220 {
entry:
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !4788, metadata !DIExpression()), !dbg !5224
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !4804, metadata !DIExpression()), !dbg !5227
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !4806, metadata !DIExpression()), !dbg !5228
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !4808, metadata !DIExpression()), !dbg !5229
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !4810, metadata !DIExpression()), !dbg !5230
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !4814, metadata !DIExpression()), !dbg !5231
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !4816, metadata !DIExpression()), !dbg !5232
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !4818, metadata !DIExpression()), !dbg !5233
  %u.addr = alloca %struct.termios*, align 8
  %k.addr = alloca %struct.ktermios*, align 8
  store %struct.termios* %u, %struct.termios** %u.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.termios** %u.addr, metadata !5234, metadata !DIExpression()), !dbg !5235
  store %struct.ktermios* %k, %struct.ktermios** %k.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ktermios** %k.addr, metadata !5236, metadata !DIExpression()), !dbg !5237
  %0 = load %struct.termios*, %struct.termios** %u.addr, align 8, !dbg !5238
  %1 = bitcast %struct.termios* %0 to i8*, !dbg !5238
  %2 = load %struct.ktermios*, %struct.ktermios** %k.addr, align 8, !dbg !5239
  %3 = bitcast %struct.ktermios* %2 to i8*, !dbg !5239
  store i8* %1, i8** %to.addr.i, align 8
  store i8* %3, i8** %from.addr.i, align 8
  store i64 36, i64* %n.addr.i, align 8
  %4 = load i8*, i8** %from.addr.i, align 8, !dbg !5240
  %5 = load i64, i64* %n.addr.i, align 8, !dbg !5240
  store i8* %4, i8** %addr.addr.i.i, align 8
  store i64 %5, i64* %bytes.addr.i.i, align 8
  store i8 1, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !5229
  %6 = load i32, i32* %sz.i.i, align 4, !dbg !5241
  %cmp.i.i = icmp sge i32 %6, 0, !dbg !5241
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !5241

land.rhs.i.i:                                     ; preds = %entry
  %7 = load i32, i32* %sz.i.i, align 4, !dbg !5241
  %conv.i.i = sext i32 %7 to i64, !dbg !5241
  %8 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5241
  %cmp1.i.i = icmp ult i64 %conv.i.i, %8, !dbg !5241
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %entry
  %9 = phi i1 [ false, %entry ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !5242
  %lnot.i.i = xor i1 %9, true, !dbg !5241
  %lnot.ext.i.i = zext i1 %9 to i32, !dbg !5241
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5241
  br i1 %9, label %if.then.i.i, label %if.end10.i.i, !dbg !5243

if.then.i.i:                                      ; preds = %land.end.i.i
  %10 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5244
  %11 = call i1 @llvm.is.constant.i64(i64 %10) #5, !dbg !5245
  br i1 %11, label %if.else.i.i, label %if.then5.i.i, !dbg !5246

if.then5.i.i:                                     ; preds = %if.then.i.i
  %12 = load i32, i32* %sz.i.i, align 4, !dbg !5247
  %13 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5248
  call void @copy_overflow(i32 %12, i64 %13) #8, !dbg !5249
  br label %if.end9.i.i, !dbg !5249

if.else.i.i:                                      ; preds = %if.then.i.i
  %14 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5250
  %tobool6.i.i = trunc i8 %14 to i1, !dbg !5250
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !5251

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #8, !dbg !5252
  br label %if.end.i.i, !dbg !5252

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #8, !dbg !5253
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5254
  br label %check_copy_size.exit.i, !dbg !5254

if.end10.i.i:                                     ; preds = %land.end.i.i
  %15 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5230
  %cmp11.i.i = icmp ugt i64 %15, 2147483647, !dbg !5230
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !5230
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !5230
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !5230
  %16 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5255
  %tobool17.i.i = icmp ne i32 %16, 0, !dbg !5255
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !5255
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !5255
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !5255
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !5230

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #5, !dbg !5256, !srcloc !5013
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #5, !dbg !5257, !srcloc !5016
  br label %if.end31.i.i, !dbg !5258

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %17 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5230
  %tobool32.i.i = icmp ne i32 %17, 0, !dbg !5230
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !5230
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !5230
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !5230
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !5255
  %18 = load i64, i64* %tmp.i.i, align 8, !dbg !5230
  %tobool38.i.i = icmp ne i64 %18, 0, !dbg !5259
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !5260

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5261
  br label %check_copy_size.exit.i, !dbg !5261

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %19 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !5262
  %20 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5263
  %21 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5264
  %tobool41.i.i = trunc i8 %21 to i1, !dbg !5264
  call void @check_object_size(i8* %19, i64 %20, i1 zeroext %tobool41.i.i) #8, !dbg !5265
  store i1 true, i1* %retval.i.i, align 1, !dbg !5266
  br label %check_copy_size.exit.i, !dbg !5266

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %22 = load i1, i1* %retval.i.i, align 1, !dbg !5267
  %lnot.i = xor i1 %22, true, !dbg !5240
  %lnot.ext.i = zext i1 %22 to i32, !dbg !5240
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !5240
  br i1 %22, label %if.then.i, label %copy_to_user.exit, !dbg !5268

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %23 = load i8*, i8** %to.addr.i, align 8, !dbg !5269
  %24 = load i8*, i8** %from.addr.i, align 8, !dbg !5270
  %25 = load i64, i64* %n.addr.i, align 8, !dbg !5271
  %call2.i = call i64 @_copy_to_user(i8* %23, i8* %24, i64 %25) #8, !dbg !5272
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !5273
  br label %copy_to_user.exit, !dbg !5274

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i
  %26 = load i64, i64* %n.addr.i, align 8, !dbg !5275
  %conv = trunc i64 %26 to i32, !dbg !5276
  ret i32 %conv, !dbg !5277
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kernel_termios_to_user_termios(%struct.termios2* %u, %struct.ktermios* %k) #0 !dbg !5278 {
entry:
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !4788, metadata !DIExpression()), !dbg !5281
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !4804, metadata !DIExpression()), !dbg !5284
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !4806, metadata !DIExpression()), !dbg !5285
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !4808, metadata !DIExpression()), !dbg !5286
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !4810, metadata !DIExpression()), !dbg !5287
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !4814, metadata !DIExpression()), !dbg !5288
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !4816, metadata !DIExpression()), !dbg !5289
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !4818, metadata !DIExpression()), !dbg !5290
  %u.addr = alloca %struct.termios2*, align 8
  %k.addr = alloca %struct.ktermios*, align 8
  store %struct.termios2* %u, %struct.termios2** %u.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.termios2** %u.addr, metadata !5291, metadata !DIExpression()), !dbg !5292
  store %struct.ktermios* %k, %struct.ktermios** %k.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ktermios** %k.addr, metadata !5293, metadata !DIExpression()), !dbg !5294
  %0 = load %struct.termios2*, %struct.termios2** %u.addr, align 8, !dbg !5295
  %1 = bitcast %struct.termios2* %0 to i8*, !dbg !5295
  %2 = load %struct.ktermios*, %struct.ktermios** %k.addr, align 8, !dbg !5296
  %3 = bitcast %struct.ktermios* %2 to i8*, !dbg !5296
  store i8* %1, i8** %to.addr.i, align 8
  store i8* %3, i8** %from.addr.i, align 8
  store i64 44, i64* %n.addr.i, align 8
  %4 = load i8*, i8** %from.addr.i, align 8, !dbg !5297
  %5 = load i64, i64* %n.addr.i, align 8, !dbg !5297
  store i8* %4, i8** %addr.addr.i.i, align 8
  store i64 %5, i64* %bytes.addr.i.i, align 8
  store i8 1, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !5286
  %6 = load i32, i32* %sz.i.i, align 4, !dbg !5298
  %cmp.i.i = icmp sge i32 %6, 0, !dbg !5298
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !5298

land.rhs.i.i:                                     ; preds = %entry
  %7 = load i32, i32* %sz.i.i, align 4, !dbg !5298
  %conv.i.i = sext i32 %7 to i64, !dbg !5298
  %8 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5298
  %cmp1.i.i = icmp ult i64 %conv.i.i, %8, !dbg !5298
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %entry
  %9 = phi i1 [ false, %entry ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !5299
  %lnot.i.i = xor i1 %9, true, !dbg !5298
  %lnot.ext.i.i = zext i1 %9 to i32, !dbg !5298
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5298
  br i1 %9, label %if.then.i.i, label %if.end10.i.i, !dbg !5300

if.then.i.i:                                      ; preds = %land.end.i.i
  %10 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5301
  %11 = call i1 @llvm.is.constant.i64(i64 %10) #5, !dbg !5302
  br i1 %11, label %if.else.i.i, label %if.then5.i.i, !dbg !5303

if.then5.i.i:                                     ; preds = %if.then.i.i
  %12 = load i32, i32* %sz.i.i, align 4, !dbg !5304
  %13 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5305
  call void @copy_overflow(i32 %12, i64 %13) #8, !dbg !5306
  br label %if.end9.i.i, !dbg !5306

if.else.i.i:                                      ; preds = %if.then.i.i
  %14 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5307
  %tobool6.i.i = trunc i8 %14 to i1, !dbg !5307
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !5308

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #8, !dbg !5309
  br label %if.end.i.i, !dbg !5309

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #8, !dbg !5310
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5311
  br label %check_copy_size.exit.i, !dbg !5311

if.end10.i.i:                                     ; preds = %land.end.i.i
  %15 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5287
  %cmp11.i.i = icmp ugt i64 %15, 2147483647, !dbg !5287
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !5287
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !5287
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !5287
  %16 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5312
  %tobool17.i.i = icmp ne i32 %16, 0, !dbg !5312
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !5312
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !5312
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !5312
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !5287

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #5, !dbg !5313, !srcloc !5013
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #5, !dbg !5314, !srcloc !5016
  br label %if.end31.i.i, !dbg !5315

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %17 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5287
  %tobool32.i.i = icmp ne i32 %17, 0, !dbg !5287
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !5287
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !5287
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !5287
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !5312
  %18 = load i64, i64* %tmp.i.i, align 8, !dbg !5287
  %tobool38.i.i = icmp ne i64 %18, 0, !dbg !5316
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !5317

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5318
  br label %check_copy_size.exit.i, !dbg !5318

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %19 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !5319
  %20 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5320
  %21 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5321
  %tobool41.i.i = trunc i8 %21 to i1, !dbg !5321
  call void @check_object_size(i8* %19, i64 %20, i1 zeroext %tobool41.i.i) #8, !dbg !5322
  store i1 true, i1* %retval.i.i, align 1, !dbg !5323
  br label %check_copy_size.exit.i, !dbg !5323

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %22 = load i1, i1* %retval.i.i, align 1, !dbg !5324
  %lnot.i = xor i1 %22, true, !dbg !5297
  %lnot.ext.i = zext i1 %22 to i32, !dbg !5297
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !5297
  br i1 %22, label %if.then.i, label %copy_to_user.exit, !dbg !5325

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %23 = load i8*, i8** %to.addr.i, align 8, !dbg !5326
  %24 = load i8*, i8** %from.addr.i, align 8, !dbg !5327
  %25 = load i64, i64* %n.addr.i, align 8, !dbg !5328
  %call2.i = call i64 @_copy_to_user(i8* %23, i8* %24, i64 %25) #8, !dbg !5329
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !5330
  br label %copy_to_user.exit, !dbg !5331

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i
  %26 = load i64, i64* %n.addr.i, align 8, !dbg !5332
  %conv = trunc i64 %26 to i32, !dbg !5333
  ret i32 %conv, !dbg !5334
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @get_termio(%struct.tty_struct* %tty, %struct.termio* %termio) #0 !dbg !5335 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca %struct.tty_struct*, align 8
  %termio.addr = alloca %struct.termio*, align 8
  %kterm = alloca %struct.ktermios, align 4
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5338, metadata !DIExpression()), !dbg !5339
  store %struct.termio* %termio, %struct.termio** %termio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.termio** %termio.addr, metadata !5340, metadata !DIExpression()), !dbg !5341
  call void @llvm.dbg.declare(metadata %struct.ktermios* %kterm, metadata !5342, metadata !DIExpression()), !dbg !5343
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5344
  call void @copy_termios(%struct.tty_struct* %0, %struct.ktermios* %kterm) #7, !dbg !5345
  %1 = load %struct.termio*, %struct.termio** %termio.addr, align 8, !dbg !5346
  %call = call i32 @kernel_termios_to_user_termio(%struct.termio* %1, %struct.ktermios* %kterm) #7, !dbg !5348
  %tobool = icmp ne i32 %call, 0, !dbg !5348
  br i1 %tobool, label %if.then, label %if.end, !dbg !5349

if.then:                                          ; preds = %entry
  store i32 -14, i32* %retval, align 4, !dbg !5350
  br label %return, !dbg !5350

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5351
  br label %return, !dbg !5351

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !5352
  ret i32 %2, !dbg !5352
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @copy_termios_locked(%struct.tty_struct* %tty, %struct.ktermios* %kterm) #0 !dbg !5353 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  %kterm.addr = alloca %struct.ktermios*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5354, metadata !DIExpression()), !dbg !5355
  store %struct.ktermios* %kterm, %struct.ktermios** %kterm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ktermios** %kterm.addr, metadata !5356, metadata !DIExpression()), !dbg !5357
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5358
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 11, !dbg !5359
  call void @down_read(%struct.rw_semaphore* %termios_rwsem) #7, !dbg !5360
  %1 = load %struct.ktermios*, %struct.ktermios** %kterm.addr, align 8, !dbg !5361
  %2 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5362
  %termios_locked = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %2, i32 0, i32 16, !dbg !5363
  %3 = bitcast %struct.ktermios* %1 to i8*, !dbg !5363
  %4 = bitcast %struct.ktermios* %termios_locked to i8*, !dbg !5363
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 %4, i64 44, i1 false), !dbg !5363
  %5 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5364
  %termios_rwsem1 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 11, !dbg !5365
  call void @up_read(%struct.rw_semaphore* %termios_rwsem1) #7, !dbg !5366
  ret void, !dbg !5367
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @capable(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @user_termios_to_kernel_termios_1(%struct.ktermios* %k, %struct.termios* %u) #0 !dbg !5368 {
entry:
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !4788, metadata !DIExpression()), !dbg !5371
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !4804, metadata !DIExpression()), !dbg !5376
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !4806, metadata !DIExpression()), !dbg !5377
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !4808, metadata !DIExpression()), !dbg !5378
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !4810, metadata !DIExpression()), !dbg !5379
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !5380, metadata !DIExpression()), !dbg !5381
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !5382, metadata !DIExpression()), !dbg !5383
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !5384, metadata !DIExpression()), !dbg !5385
  %k.addr = alloca %struct.ktermios*, align 8
  %u.addr = alloca %struct.termios*, align 8
  store %struct.ktermios* %k, %struct.ktermios** %k.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ktermios** %k.addr, metadata !5386, metadata !DIExpression()), !dbg !5387
  store %struct.termios* %u, %struct.termios** %u.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.termios** %u.addr, metadata !5388, metadata !DIExpression()), !dbg !5389
  %0 = load %struct.ktermios*, %struct.ktermios** %k.addr, align 8, !dbg !5390
  %1 = bitcast %struct.ktermios* %0 to i8*, !dbg !5390
  %2 = load %struct.termios*, %struct.termios** %u.addr, align 8, !dbg !5391
  %3 = bitcast %struct.termios* %2 to i8*, !dbg !5391
  store i8* %1, i8** %to.addr.i, align 8
  store i8* %3, i8** %from.addr.i, align 8
  store i64 36, i64* %n.addr.i, align 8
  %4 = load i8*, i8** %to.addr.i, align 8, !dbg !5392
  %5 = load i64, i64* %n.addr.i, align 8, !dbg !5392
  store i8* %4, i8** %addr.addr.i.i, align 8
  store i64 %5, i64* %bytes.addr.i.i, align 8
  store i8 0, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !5378
  %6 = load i32, i32* %sz.i.i, align 4, !dbg !5393
  %cmp.i.i = icmp sge i32 %6, 0, !dbg !5393
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !5393

land.rhs.i.i:                                     ; preds = %entry
  %7 = load i32, i32* %sz.i.i, align 4, !dbg !5393
  %conv.i.i = sext i32 %7 to i64, !dbg !5393
  %8 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5393
  %cmp1.i.i = icmp ult i64 %conv.i.i, %8, !dbg !5393
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %entry
  %9 = phi i1 [ false, %entry ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !5394
  %lnot.i.i = xor i1 %9, true, !dbg !5393
  %lnot.ext.i.i = zext i1 %9 to i32, !dbg !5393
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5393
  br i1 %9, label %if.then.i.i, label %if.end10.i.i, !dbg !5395

if.then.i.i:                                      ; preds = %land.end.i.i
  %10 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5396
  %11 = call i1 @llvm.is.constant.i64(i64 %10) #5, !dbg !5397
  br i1 %11, label %if.else.i.i, label %if.then5.i.i, !dbg !5398

if.then5.i.i:                                     ; preds = %if.then.i.i
  %12 = load i32, i32* %sz.i.i, align 4, !dbg !5399
  %13 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5400
  call void @copy_overflow(i32 %12, i64 %13) #8, !dbg !5401
  br label %if.end9.i.i, !dbg !5401

if.else.i.i:                                      ; preds = %if.then.i.i
  %14 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5402
  %tobool6.i.i = trunc i8 %14 to i1, !dbg !5402
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !5403

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #8, !dbg !5404
  br label %if.end.i.i, !dbg !5404

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #8, !dbg !5405
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5406
  br label %check_copy_size.exit.i, !dbg !5406

if.end10.i.i:                                     ; preds = %land.end.i.i
  %15 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5379
  %cmp11.i.i = icmp ugt i64 %15, 2147483647, !dbg !5379
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !5379
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !5379
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !5379
  %16 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5407
  %tobool17.i.i = icmp ne i32 %16, 0, !dbg !5407
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !5407
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !5407
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !5407
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !5379

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #5, !dbg !5408, !srcloc !5013
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #5, !dbg !5409, !srcloc !5016
  br label %if.end31.i.i, !dbg !5410

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %17 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5379
  %tobool32.i.i = icmp ne i32 %17, 0, !dbg !5379
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !5379
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !5379
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !5379
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !5407
  %18 = load i64, i64* %tmp.i.i, align 8, !dbg !5379
  %tobool38.i.i = icmp ne i64 %18, 0, !dbg !5411
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !5412

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5413
  br label %check_copy_size.exit.i, !dbg !5413

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %19 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !5414
  %20 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5415
  %21 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5416
  %tobool41.i.i = trunc i8 %21 to i1, !dbg !5416
  call void @check_object_size(i8* %19, i64 %20, i1 zeroext %tobool41.i.i) #8, !dbg !5417
  store i1 true, i1* %retval.i.i, align 1, !dbg !5418
  br label %check_copy_size.exit.i, !dbg !5418

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %22 = load i1, i1* %retval.i.i, align 1, !dbg !5419
  %lnot.i = xor i1 %22, true, !dbg !5392
  %lnot.ext.i = zext i1 %22 to i32, !dbg !5392
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !5392
  br i1 %22, label %if.then.i, label %copy_from_user.exit, !dbg !5420

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %23 = load i8*, i8** %to.addr.i, align 8, !dbg !5421
  %24 = load i8*, i8** %from.addr.i, align 8, !dbg !5422
  %25 = load i64, i64* %n.addr.i, align 8, !dbg !5423
  %call2.i = call i64 @_copy_from_user(i8* %23, i8* %24, i64 %25) #8, !dbg !5424
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !5425
  br label %copy_from_user.exit, !dbg !5426

copy_from_user.exit:                              ; preds = %check_copy_size.exit.i, %if.then.i
  %26 = load i64, i64* %n.addr.i, align 8, !dbg !5427
  %conv = trunc i64 %26 to i32, !dbg !5428
  ret i32 %conv, !dbg !5429
}

; Function Attrs: noredzone
declare dso_local void @down_read(%struct.rw_semaphore*) #2

; Function Attrs: noredzone
declare dso_local void @up_read(%struct.rw_semaphore*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @set_termiox(%struct.tty_struct* %tty, i8* %arg, i32 %opt) #0 !dbg !5430 {
entry:
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !5087, metadata !DIExpression()), !dbg !5431
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !5098, metadata !DIExpression()), !dbg !5436
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !5101, metadata !DIExpression()), !dbg !5437
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !4788, metadata !DIExpression()), !dbg !5438
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !4804, metadata !DIExpression()), !dbg !5442
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !4806, metadata !DIExpression()), !dbg !5443
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !4808, metadata !DIExpression()), !dbg !5444
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !4810, metadata !DIExpression()), !dbg !5445
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !5380, metadata !DIExpression()), !dbg !5446
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !5382, metadata !DIExpression()), !dbg !5447
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !5384, metadata !DIExpression()), !dbg !5448
  %retval = alloca i32, align 4
  %tty.addr = alloca %struct.tty_struct*, align 8
  %arg.addr = alloca i8*, align 8
  %opt.addr = alloca i32, align 4
  %tnew = alloca %struct.termiox, align 2
  %ld = alloca %struct.tty_ldisc*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5449, metadata !DIExpression()), !dbg !5450
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !5451, metadata !DIExpression()), !dbg !5452
  store i32 %opt, i32* %opt.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %opt.addr, metadata !5453, metadata !DIExpression()), !dbg !5454
  call void @llvm.dbg.declare(metadata %struct.termiox* %tnew, metadata !5455, metadata !DIExpression()), !dbg !5456
  call void @llvm.dbg.declare(metadata %struct.tty_ldisc** %ld, metadata !5457, metadata !DIExpression()), !dbg !5458
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5459
  %termiox = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 17, !dbg !5461
  %1 = load %struct.termiox*, %struct.termiox** %termiox, align 8, !dbg !5461
  %cmp = icmp eq %struct.termiox* %1, null, !dbg !5462
  br i1 %cmp, label %if.then, label %if.end, !dbg !5463

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5464
  br label %return, !dbg !5464

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.termiox* %tnew to i8*, !dbg !5465
  %3 = load i8*, i8** %arg.addr, align 8, !dbg !5466
  store i8* %2, i8** %to.addr.i, align 8
  store i8* %3, i8** %from.addr.i, align 8
  store i64 16, i64* %n.addr.i, align 8
  %4 = load i8*, i8** %to.addr.i, align 8, !dbg !5467
  %5 = load i64, i64* %n.addr.i, align 8, !dbg !5467
  store i8* %4, i8** %addr.addr.i.i, align 8
  store i64 %5, i64* %bytes.addr.i.i, align 8
  store i8 0, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !5444
  %6 = load i32, i32* %sz.i.i, align 4, !dbg !5468
  %cmp.i.i = icmp sge i32 %6, 0, !dbg !5468
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !5468

land.rhs.i.i:                                     ; preds = %if.end
  %7 = load i32, i32* %sz.i.i, align 4, !dbg !5468
  %conv.i.i = sext i32 %7 to i64, !dbg !5468
  %8 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5468
  %cmp1.i.i = icmp ult i64 %conv.i.i, %8, !dbg !5468
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %if.end
  %9 = phi i1 [ false, %if.end ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !5469
  %lnot.i.i = xor i1 %9, true, !dbg !5468
  %lnot.ext.i.i = zext i1 %9 to i32, !dbg !5468
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5468
  br i1 %9, label %if.then.i.i, label %if.end10.i.i, !dbg !5470

if.then.i.i:                                      ; preds = %land.end.i.i
  %10 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5471
  %11 = call i1 @llvm.is.constant.i64(i64 %10) #5, !dbg !5472
  br i1 %11, label %if.else.i.i, label %if.then5.i.i, !dbg !5473

if.then5.i.i:                                     ; preds = %if.then.i.i
  %12 = load i32, i32* %sz.i.i, align 4, !dbg !5474
  %13 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5475
  call void @copy_overflow(i32 %12, i64 %13) #8, !dbg !5476
  br label %if.end9.i.i, !dbg !5476

if.else.i.i:                                      ; preds = %if.then.i.i
  %14 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5477
  %tobool6.i.i = trunc i8 %14 to i1, !dbg !5477
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !5478

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #8, !dbg !5479
  br label %if.end.i.i, !dbg !5479

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #8, !dbg !5480
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5481
  br label %check_copy_size.exit.i, !dbg !5481

if.end10.i.i:                                     ; preds = %land.end.i.i
  %15 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5445
  %cmp11.i.i = icmp ugt i64 %15, 2147483647, !dbg !5445
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !5445
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !5445
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !5445
  %16 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5482
  %tobool17.i.i = icmp ne i32 %16, 0, !dbg !5482
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !5482
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !5482
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !5482
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !5445

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #5, !dbg !5483, !srcloc !5013
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #5, !dbg !5484, !srcloc !5016
  br label %if.end31.i.i, !dbg !5485

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %17 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5445
  %tobool32.i.i = icmp ne i32 %17, 0, !dbg !5445
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !5445
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !5445
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !5445
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !5482
  %18 = load i64, i64* %tmp.i.i, align 8, !dbg !5445
  %tobool38.i.i = icmp ne i64 %18, 0, !dbg !5486
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !5487

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5488
  br label %check_copy_size.exit.i, !dbg !5488

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %19 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !5489
  %20 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5490
  %21 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5491
  %tobool41.i.i = trunc i8 %21 to i1, !dbg !5491
  call void @check_object_size(i8* %19, i64 %20, i1 zeroext %tobool41.i.i) #8, !dbg !5492
  store i1 true, i1* %retval.i.i, align 1, !dbg !5493
  br label %check_copy_size.exit.i, !dbg !5493

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %22 = load i1, i1* %retval.i.i, align 1, !dbg !5494
  %lnot.i = xor i1 %22, true, !dbg !5467
  %lnot.ext.i = zext i1 %22 to i32, !dbg !5467
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !5467
  br i1 %22, label %if.then.i, label %copy_from_user.exit, !dbg !5495

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %23 = load i8*, i8** %to.addr.i, align 8, !dbg !5496
  %24 = load i8*, i8** %from.addr.i, align 8, !dbg !5497
  %25 = load i64, i64* %n.addr.i, align 8, !dbg !5498
  %call2.i = call i64 @_copy_from_user(i8* %23, i8* %24, i64 %25) #8, !dbg !5499
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !5500
  br label %copy_from_user.exit, !dbg !5501

copy_from_user.exit:                              ; preds = %check_copy_size.exit.i, %if.then.i
  %26 = load i64, i64* %n.addr.i, align 8, !dbg !5502
  %tobool = icmp ne i64 %26, 0, !dbg !5503
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !5504

if.then1:                                         ; preds = %copy_from_user.exit
  store i32 -14, i32* %retval, align 4, !dbg !5505
  br label %return, !dbg !5505

if.end2:                                          ; preds = %copy_from_user.exit
  %27 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5506
  %call3 = call %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct* %27) #7, !dbg !5507
  store %struct.tty_ldisc* %call3, %struct.tty_ldisc** %ld, align 8, !dbg !5508
  %28 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !5509
  %cmp4 = icmp ne %struct.tty_ldisc* %28, null, !dbg !5511
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !5512

if.then5:                                         ; preds = %if.end2
  %29 = load i32, i32* %opt.addr, align 4, !dbg !5513
  %and = and i32 %29, 1, !dbg !5516
  %tobool6 = icmp ne i32 %and, 0, !dbg !5516
  br i1 %tobool6, label %land.lhs.true, label %if.end11, !dbg !5517

land.lhs.true:                                    ; preds = %if.then5
  %30 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !5518
  %ops = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %30, i32 0, i32 0, !dbg !5519
  %31 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops, align 8, !dbg !5519
  %flush_buffer = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %31, i32 0, i32 6, !dbg !5520
  %32 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %flush_buffer, align 8, !dbg !5520
  %tobool7 = icmp ne void (%struct.tty_struct*)* %32, null, !dbg !5518
  br i1 %tobool7, label %if.then8, label %if.end11, !dbg !5521

if.then8:                                         ; preds = %land.lhs.true
  %33 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !5522
  %ops9 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %33, i32 0, i32 0, !dbg !5523
  %34 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops9, align 8, !dbg !5523
  %flush_buffer10 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %34, i32 0, i32 6, !dbg !5524
  %35 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %flush_buffer10, align 8, !dbg !5524
  %36 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5525
  call void %35(%struct.tty_struct* %36) #7, !dbg !5522
  br label %if.end11, !dbg !5522

if.end11:                                         ; preds = %if.then8, %land.lhs.true, %if.then5
  %37 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !5526
  call void @tty_ldisc_deref(%struct.tty_ldisc* %37) #7, !dbg !5527
  br label %if.end12, !dbg !5528

if.end12:                                         ; preds = %if.end11, %if.end2
  %38 = load i32, i32* %opt.addr, align 4, !dbg !5529
  %and13 = and i32 %38, 2, !dbg !5530
  %tobool14 = icmp ne i32 %and13, 0, !dbg !5530
  br i1 %tobool14, label %if.then15, label %if.end21, !dbg !5531

if.then15:                                        ; preds = %if.end12
  %39 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5532
  call void @tty_wait_until_sent(%struct.tty_struct* %39, i64 0) #7, !dbg !5533
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !5436
  %40 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !5436
  %41 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #9, !dbg !5437, !srcloc !5196
  store i64 %41, i64* %pfo_val__.i, align 8, !dbg !5437
  %42 = load i64, i64* %pfo_val__.i, align 8, !dbg !5437
  %43 = inttoptr i64 %42 to %struct.task_struct*, !dbg !5437
  store %struct.task_struct* %43, %struct.task_struct** %tmp.i, align 8, !dbg !5437
  %44 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !5437
  store %struct.task_struct* %44, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5431
  %45 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5431
  store %struct.task_struct* %45, %struct.task_struct** %tmp1.i, align 8, !dbg !5431
  %46 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !5431
  %call17 = call i32 @signal_pending(%struct.task_struct* %46) #7, !dbg !5534
  %tobool18 = icmp ne i32 %call17, 0, !dbg !5534
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !5535

if.then19:                                        ; preds = %if.then15
  store i32 -512, i32* %retval, align 4, !dbg !5536
  br label %return, !dbg !5536

if.end20:                                         ; preds = %if.then15
  br label %if.end21, !dbg !5537

if.end21:                                         ; preds = %if.end20, %if.end12
  %47 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5538
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %47, i32 0, i32 11, !dbg !5539
  call void @down_write(%struct.rw_semaphore* %termios_rwsem) #7, !dbg !5540
  %48 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5541
  %ops22 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %48, i32 0, i32 4, !dbg !5543
  %49 = load %struct.tty_operations*, %struct.tty_operations** %ops22, align 8, !dbg !5543
  %set_termiox = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %49, i32 0, i32 28, !dbg !5544
  %50 = load i32 (%struct.tty_struct*, %struct.termiox*)*, i32 (%struct.tty_struct*, %struct.termiox*)** %set_termiox, align 8, !dbg !5544
  %tobool23 = icmp ne i32 (%struct.tty_struct*, %struct.termiox*)* %50, null, !dbg !5541
  br i1 %tobool23, label %if.then24, label %if.end28, !dbg !5545

if.then24:                                        ; preds = %if.end21
  %51 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5546
  %ops25 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %51, i32 0, i32 4, !dbg !5547
  %52 = load %struct.tty_operations*, %struct.tty_operations** %ops25, align 8, !dbg !5547
  %set_termiox26 = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %52, i32 0, i32 28, !dbg !5548
  %53 = load i32 (%struct.tty_struct*, %struct.termiox*)*, i32 (%struct.tty_struct*, %struct.termiox*)** %set_termiox26, align 8, !dbg !5548
  %54 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5549
  %call27 = call i32 %53(%struct.tty_struct* %54, %struct.termiox* %tnew) #7, !dbg !5546
  br label %if.end28, !dbg !5546

if.end28:                                         ; preds = %if.then24, %if.end21
  %55 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5550
  %termios_rwsem29 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %55, i32 0, i32 11, !dbg !5551
  call void @up_write(%struct.rw_semaphore* %termios_rwsem29) #7, !dbg !5552
  store i32 0, i32* %retval, align 4, !dbg !5553
  br label %return, !dbg !5553

return:                                           ; preds = %if.end28, %if.then19, %if.then1, %if.then
  %56 = load i32, i32* %retval, align 4, !dbg !5554
  ret i32 %56, !dbg !5554
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @might_fault() #0 !dbg !5555 {
entry:
  ret void, !dbg !5557
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tty_change_softcar(%struct.tty_struct* %tty, i32 %arg) #0 !dbg !5558 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  %arg.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %bit = alloca i32, align 4
  %old = alloca %struct.ktermios, align 4
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5559, metadata !DIExpression()), !dbg !5560
  store i32 %arg, i32* %arg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %arg.addr, metadata !5561, metadata !DIExpression()), !dbg !5562
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5563, metadata !DIExpression()), !dbg !5564
  store i32 0, i32* %ret, align 4, !dbg !5564
  call void @llvm.dbg.declare(metadata i32* %bit, metadata !5565, metadata !DIExpression()), !dbg !5566
  %0 = load i32, i32* %arg.addr, align 4, !dbg !5567
  %tobool = icmp ne i32 %0, 0, !dbg !5567
  %1 = zext i1 %tobool to i64, !dbg !5567
  %cond = select i1 %tobool, i32 2048, i32 0, !dbg !5567
  store i32 %cond, i32* %bit, align 4, !dbg !5566
  call void @llvm.dbg.declare(metadata %struct.ktermios* %old, metadata !5568, metadata !DIExpression()), !dbg !5569
  %2 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5570
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %2, i32 0, i32 11, !dbg !5571
  call void @down_write(%struct.rw_semaphore* %termios_rwsem) #7, !dbg !5572
  %3 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5573
  %termios = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %3, i32 0, i32 15, !dbg !5574
  %4 = bitcast %struct.ktermios* %old to i8*, !dbg !5574
  %5 = bitcast %struct.ktermios* %termios to i8*, !dbg !5574
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 8 %5, i64 44, i1 false), !dbg !5574
  %6 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5575
  %termios1 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 15, !dbg !5576
  %c_cflag = getelementptr inbounds %struct.ktermios, %struct.ktermios* %termios1, i32 0, i32 2, !dbg !5577
  %7 = load i32, i32* %c_cflag, align 8, !dbg !5578
  %and = and i32 %7, -2049, !dbg !5578
  store i32 %and, i32* %c_cflag, align 8, !dbg !5578
  %8 = load i32, i32* %bit, align 4, !dbg !5579
  %9 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5580
  %termios2 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 15, !dbg !5581
  %c_cflag3 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %termios2, i32 0, i32 2, !dbg !5582
  %10 = load i32, i32* %c_cflag3, align 8, !dbg !5583
  %or = or i32 %10, %8, !dbg !5583
  store i32 %or, i32* %c_cflag3, align 8, !dbg !5583
  %11 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5584
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 4, !dbg !5586
  %12 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8, !dbg !5586
  %set_termios = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %12, i32 0, i32 14, !dbg !5587
  %13 = load void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*, %struct.ktermios*)** %set_termios, align 8, !dbg !5587
  %tobool4 = icmp ne void (%struct.tty_struct*, %struct.ktermios*)* %13, null, !dbg !5584
  br i1 %tobool4, label %if.then, label %if.end, !dbg !5588

if.then:                                          ; preds = %entry
  %14 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5589
  %ops5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %14, i32 0, i32 4, !dbg !5590
  %15 = load %struct.tty_operations*, %struct.tty_operations** %ops5, align 8, !dbg !5590
  %set_termios6 = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %15, i32 0, i32 14, !dbg !5591
  %16 = load void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*, %struct.ktermios*)** %set_termios6, align 8, !dbg !5591
  %17 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5592
  call void %16(%struct.tty_struct* %17, %struct.ktermios* %old) #7, !dbg !5589
  br label %if.end, !dbg !5589

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5593
  %termios7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %18, i32 0, i32 15, !dbg !5593
  %c_cflag8 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %termios7, i32 0, i32 2, !dbg !5593
  %19 = load i32, i32* %c_cflag8, align 8, !dbg !5593
  %and9 = and i32 %19, 2048, !dbg !5593
  %20 = load i32, i32* %bit, align 4, !dbg !5595
  %cmp = icmp ne i32 %and9, %20, !dbg !5596
  br i1 %cmp, label %if.then10, label %if.end11, !dbg !5597

if.then10:                                        ; preds = %if.end
  store i32 -22, i32* %ret, align 4, !dbg !5598
  br label %if.end11, !dbg !5599

if.end11:                                         ; preds = %if.then10, %if.end
  %21 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5600
  %termios_rwsem12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %21, i32 0, i32 11, !dbg !5601
  call void @up_write(%struct.rw_semaphore* %termios_rwsem12) #7, !dbg !5602
  %22 = load i32, i32* %ret, align 4, !dbg !5603
  ret i32 %22, !dbg !5604
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tty_perform_flush(%struct.tty_struct* %tty, i64 %arg) #0 !dbg !5605 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca %struct.tty_struct*, align 8
  %arg.addr = alloca i64, align 8
  %ld = alloca %struct.tty_ldisc*, align 8
  %retval1 = alloca i32, align 4
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5608, metadata !DIExpression()), !dbg !5609
  store i64 %arg, i64* %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %arg.addr, metadata !5610, metadata !DIExpression()), !dbg !5611
  call void @llvm.dbg.declare(metadata %struct.tty_ldisc** %ld, metadata !5612, metadata !DIExpression()), !dbg !5613
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5614, metadata !DIExpression()), !dbg !5615
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5616
  %call = call i32 @tty_check_change(%struct.tty_struct* %0) #7, !dbg !5617
  store i32 %call, i32* %retval1, align 4, !dbg !5615
  %1 = load i32, i32* %retval1, align 4, !dbg !5618
  %tobool = icmp ne i32 %1, 0, !dbg !5618
  br i1 %tobool, label %if.then, label %if.end, !dbg !5620

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %retval1, align 4, !dbg !5621
  store i32 %2, i32* %retval, align 4, !dbg !5622
  br label %return, !dbg !5622

if.end:                                           ; preds = %entry
  %3 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5623
  %call2 = call %struct.tty_ldisc* @tty_ldisc_ref_wait(%struct.tty_struct* %3) #7, !dbg !5624
  store %struct.tty_ldisc* %call2, %struct.tty_ldisc** %ld, align 8, !dbg !5625
  %4 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5626
  %5 = load i64, i64* %arg.addr, align 8, !dbg !5627
  %call3 = call i32 @__tty_perform_flush(%struct.tty_struct* %4, i64 %5) #7, !dbg !5628
  store i32 %call3, i32* %retval1, align 4, !dbg !5629
  %6 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !5630
  %tobool4 = icmp ne %struct.tty_ldisc* %6, null, !dbg !5630
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !5632

if.then5:                                         ; preds = %if.end
  %7 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !5633
  call void @tty_ldisc_deref(%struct.tty_ldisc* %7) #7, !dbg !5634
  br label %if.end6, !dbg !5634

if.end6:                                          ; preds = %if.then5, %if.end
  %8 = load i32, i32* %retval1, align 4, !dbg !5635
  store i32 %8, i32* %retval, align 4, !dbg !5636
  br label %return, !dbg !5636

return:                                           ; preds = %if.end6, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !5637
  ret i32 %9, !dbg !5637
}

; Function Attrs: noredzone
declare dso_local i32 @tty_check_change(%struct.tty_struct*) #2

; Function Attrs: noredzone
declare dso_local %struct.tty_ldisc* @tty_ldisc_ref_wait(%struct.tty_struct*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__tty_perform_flush(%struct.tty_struct* %tty, i64 %arg) #0 !dbg !5638 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca %struct.tty_struct*, align 8
  %arg.addr = alloca i64, align 8
  %ld = alloca %struct.tty_ldisc*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5639, metadata !DIExpression()), !dbg !5640
  store i64 %arg, i64* %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %arg.addr, metadata !5641, metadata !DIExpression()), !dbg !5642
  call void @llvm.dbg.declare(metadata %struct.tty_ldisc** %ld, metadata !5643, metadata !DIExpression()), !dbg !5644
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5645
  %ldisc = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 7, !dbg !5646
  %1 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc, align 8, !dbg !5646
  store %struct.tty_ldisc* %1, %struct.tty_ldisc** %ld, align 8, !dbg !5644
  %2 = load i64, i64* %arg.addr, align 8, !dbg !5647
  switch i64 %2, label %sw.default [
    i64 0, label %sw.bb
    i64 2, label %sw.bb4
    i64 1, label %sw.bb14
  ], !dbg !5648

sw.bb:                                            ; preds = %entry
  %3 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !5649
  %tobool = icmp ne %struct.tty_ldisc* %3, null, !dbg !5649
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5652

land.lhs.true:                                    ; preds = %sw.bb
  %4 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !5653
  %ops = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %4, i32 0, i32 0, !dbg !5654
  %5 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops, align 8, !dbg !5654
  %flush_buffer = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %5, i32 0, i32 6, !dbg !5655
  %6 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %flush_buffer, align 8, !dbg !5655
  %tobool1 = icmp ne void (%struct.tty_struct*)* %6, null, !dbg !5653
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5656

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !5657
  %ops2 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %7, i32 0, i32 0, !dbg !5659
  %8 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops2, align 8, !dbg !5659
  %flush_buffer3 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %8, i32 0, i32 6, !dbg !5660
  %9 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %flush_buffer3, align 8, !dbg !5660
  %10 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5661
  call void %9(%struct.tty_struct* %10) #7, !dbg !5657
  %11 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5662
  call void @tty_unthrottle(%struct.tty_struct* %11) #7, !dbg !5663
  br label %if.end, !dbg !5664

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb
  br label %sw.epilog, !dbg !5665

sw.bb4:                                           ; preds = %entry
  %12 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !5666
  %tobool5 = icmp ne %struct.tty_ldisc* %12, null, !dbg !5666
  br i1 %tobool5, label %land.lhs.true6, label %if.end13, !dbg !5668

land.lhs.true6:                                   ; preds = %sw.bb4
  %13 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !5669
  %ops7 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %13, i32 0, i32 0, !dbg !5670
  %14 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops7, align 8, !dbg !5670
  %flush_buffer8 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %14, i32 0, i32 6, !dbg !5671
  %15 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %flush_buffer8, align 8, !dbg !5671
  %tobool9 = icmp ne void (%struct.tty_struct*)* %15, null, !dbg !5669
  br i1 %tobool9, label %if.then10, label %if.end13, !dbg !5672

if.then10:                                        ; preds = %land.lhs.true6
  %16 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !5673
  %ops11 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %16, i32 0, i32 0, !dbg !5675
  %17 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops11, align 8, !dbg !5675
  %flush_buffer12 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %17, i32 0, i32 6, !dbg !5676
  %18 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %flush_buffer12, align 8, !dbg !5676
  %19 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5677
  call void %18(%struct.tty_struct* %19) #7, !dbg !5673
  %20 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5678
  call void @tty_unthrottle(%struct.tty_struct* %20) #7, !dbg !5679
  br label %if.end13, !dbg !5680

if.end13:                                         ; preds = %if.then10, %land.lhs.true6, %sw.bb4
  br label %sw.bb14, !dbg !5671

sw.bb14:                                          ; preds = %entry, %if.end13
  %21 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5681
  call void @tty_driver_flush_buffer(%struct.tty_struct* %21) #7, !dbg !5682
  br label %sw.epilog, !dbg !5683

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5684
  br label %return, !dbg !5684

sw.epilog:                                        ; preds = %sw.bb14, %if.end
  store i32 0, i32* %retval, align 4, !dbg !5685
  br label %return, !dbg !5685

return:                                           ; preds = %sw.epilog, %sw.default
  %22 = load i32, i32* %retval, align 4, !dbg !5686
  ret i32 %22, !dbg !5686
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @n_tty_ioctl_helper(%struct.tty_struct* %tty, %struct.file* %file, i32 %cmd, i64 %arg) #0 !dbg !5687 {
entry:
  %lock.addr.i57 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i57, metadata !5688, metadata !DIExpression()), !dbg !5693
  %lock.addr.i55 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i55, metadata !5697, metadata !DIExpression()), !dbg !5699
  %lock.addr.i53 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i53, metadata !5688, metadata !DIExpression()), !dbg !5701
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5697, metadata !DIExpression()), !dbg !5703
  %retval = alloca i32, align 4
  %tty.addr = alloca %struct.tty_struct*, align 8
  %file.addr = alloca %struct.file*, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %retval1 = alloca i32, align 4
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5705, metadata !DIExpression()), !dbg !5706
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !5707, metadata !DIExpression()), !dbg !5708
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !5709, metadata !DIExpression()), !dbg !5710
  store i64 %arg, i64* %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %arg.addr, metadata !5711, metadata !DIExpression()), !dbg !5712
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5713, metadata !DIExpression()), !dbg !5714
  %0 = load i32, i32* %cmd.addr, align 4, !dbg !5715
  switch i32 %0, label %sw.default51 [
    i32 21514, label %sw.bb
    i32 21515, label %sw.bb45
  ], !dbg !5716

sw.bb:                                            ; preds = %entry
  %1 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5717
  %call = call i32 @tty_check_change(%struct.tty_struct* %1) #7, !dbg !5718
  store i32 %call, i32* %retval1, align 4, !dbg !5719
  %2 = load i32, i32* %retval1, align 4, !dbg !5720
  %tobool = icmp ne i32 %2, 0, !dbg !5720
  br i1 %tobool, label %if.then, label %if.end, !dbg !5722

if.then:                                          ; preds = %sw.bb
  %3 = load i32, i32* %retval1, align 4, !dbg !5723
  store i32 %3, i32* %retval, align 4, !dbg !5724
  br label %return, !dbg !5724

if.end:                                           ; preds = %sw.bb
  %4 = load i64, i64* %arg.addr, align 8, !dbg !5725
  switch i64 %4, label %sw.default [
    i64 0, label %sw.bb2
    i64 1, label %sw.bb10
    i64 2, label %sw.bb24
    i64 3, label %sw.bb32
  ], !dbg !5726

sw.bb2:                                           ; preds = %if.end
  %5 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5727
  %flow_lock = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 14, !dbg !5728
  store %struct.spinlock* %flow_lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #8, !dbg !5729
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5732, !srcloc !5734
  %6 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5735
  %7 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %6, i32 0, i32 0, !dbg !5735
  %rlock.i = bitcast %union.anon.1* %7 to %struct.raw_spinlock*, !dbg !5735
  %8 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5737
  %flow_stopped = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 24, !dbg !5739
  %bf.load = load i8, i8* %flow_stopped, align 4, !dbg !5739
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !5739
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5739
  %bf.cast = zext i8 %bf.clear to i64, !dbg !5739
  %tobool3 = icmp ne i64 %bf.cast, 0, !dbg !5737
  br i1 %tobool3, label %if.end8, label %if.then4, !dbg !5740

if.then4:                                         ; preds = %sw.bb2
  %9 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5741
  %flow_stopped5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 24, !dbg !5743
  %bf.load6 = load i8, i8* %flow_stopped5, align 4, !dbg !5744
  %bf.clear7 = and i8 %bf.load6, -3, !dbg !5744
  %bf.set = or i8 %bf.clear7, 2, !dbg !5744
  store i8 %bf.set, i8* %flow_stopped5, align 4, !dbg !5744
  %10 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5745
  call void @__stop_tty(%struct.tty_struct* %10) #7, !dbg !5746
  br label %if.end8, !dbg !5747

if.end8:                                          ; preds = %if.then4, %sw.bb2
  %11 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5748
  %flow_lock9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 14, !dbg !5749
  store %struct.spinlock* %flow_lock9, %struct.spinlock** %lock.addr.i53, align 8
  call void @arch_local_irq_enable() #8, !dbg !5750
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5753, !srcloc !5755
  %12 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i53, align 8, !dbg !5756
  %13 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %12, i32 0, i32 0, !dbg !5756
  %rlock.i54 = bitcast %union.anon.1* %13 to %struct.raw_spinlock*, !dbg !5756
  br label %sw.epilog, !dbg !5758

sw.bb10:                                          ; preds = %if.end
  %14 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5759
  %flow_lock11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %14, i32 0, i32 14, !dbg !5760
  store %struct.spinlock* %flow_lock11, %struct.spinlock** %lock.addr.i55, align 8
  call void @arch_local_irq_disable() #8, !dbg !5761
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5762, !srcloc !5734
  %15 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i55, align 8, !dbg !5763
  %16 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %15, i32 0, i32 0, !dbg !5763
  %rlock.i56 = bitcast %union.anon.1* %16 to %struct.raw_spinlock*, !dbg !5763
  %17 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5764
  %flow_stopped12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %17, i32 0, i32 24, !dbg !5766
  %bf.load13 = load i8, i8* %flow_stopped12, align 4, !dbg !5766
  %bf.lshr14 = lshr i8 %bf.load13, 1, !dbg !5766
  %bf.clear15 = and i8 %bf.lshr14, 1, !dbg !5766
  %bf.cast16 = zext i8 %bf.clear15 to i64, !dbg !5766
  %tobool17 = icmp ne i64 %bf.cast16, 0, !dbg !5764
  br i1 %tobool17, label %if.then18, label %if.end22, !dbg !5767

if.then18:                                        ; preds = %sw.bb10
  %18 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5768
  %flow_stopped19 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %18, i32 0, i32 24, !dbg !5770
  %bf.load20 = load i8, i8* %flow_stopped19, align 4, !dbg !5771
  %bf.clear21 = and i8 %bf.load20, -3, !dbg !5771
  store i8 %bf.clear21, i8* %flow_stopped19, align 4, !dbg !5771
  %19 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5772
  call void @__start_tty(%struct.tty_struct* %19) #7, !dbg !5773
  br label %if.end22, !dbg !5774

if.end22:                                         ; preds = %if.then18, %sw.bb10
  %20 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5775
  %flow_lock23 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %20, i32 0, i32 14, !dbg !5776
  store %struct.spinlock* %flow_lock23, %struct.spinlock** %lock.addr.i57, align 8
  call void @arch_local_irq_enable() #8, !dbg !5777
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5778, !srcloc !5755
  %21 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i57, align 8, !dbg !5779
  %22 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %21, i32 0, i32 0, !dbg !5779
  %rlock.i58 = bitcast %union.anon.1* %22 to %struct.raw_spinlock*, !dbg !5779
  br label %sw.epilog, !dbg !5780

sw.bb24:                                          ; preds = %if.end
  %23 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5781
  %termios = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %23, i32 0, i32 15, !dbg !5781
  %c_cc = getelementptr inbounds %struct.ktermios, %struct.ktermios* %termios, i32 0, i32 5, !dbg !5781
  %arrayidx = getelementptr [19 x i8], [19 x i8]* %c_cc, i64 0, i64 9, !dbg !5781
  %24 = load i8, i8* %arrayidx, align 1, !dbg !5781
  %conv = zext i8 %24 to i32, !dbg !5781
  %cmp = icmp ne i32 %conv, 0, !dbg !5783
  br i1 %cmp, label %if.then26, label %if.end31, !dbg !5784

if.then26:                                        ; preds = %sw.bb24
  %25 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5785
  %26 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5786
  %termios27 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %26, i32 0, i32 15, !dbg !5786
  %c_cc28 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %termios27, i32 0, i32 5, !dbg !5786
  %arrayidx29 = getelementptr [19 x i8], [19 x i8]* %c_cc28, i64 0, i64 9, !dbg !5786
  %27 = load i8, i8* %arrayidx29, align 1, !dbg !5786
  %call30 = call i32 @tty_send_xchar(%struct.tty_struct* %25, i8 signext %27) #7, !dbg !5787
  store i32 %call30, i32* %retval1, align 4, !dbg !5788
  br label %if.end31, !dbg !5789

if.end31:                                         ; preds = %if.then26, %sw.bb24
  br label %sw.epilog, !dbg !5790

sw.bb32:                                          ; preds = %if.end
  %28 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5791
  %termios33 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %28, i32 0, i32 15, !dbg !5791
  %c_cc34 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %termios33, i32 0, i32 5, !dbg !5791
  %arrayidx35 = getelementptr [19 x i8], [19 x i8]* %c_cc34, i64 0, i64 8, !dbg !5791
  %29 = load i8, i8* %arrayidx35, align 1, !dbg !5791
  %conv36 = zext i8 %29 to i32, !dbg !5791
  %cmp37 = icmp ne i32 %conv36, 0, !dbg !5793
  br i1 %cmp37, label %if.then39, label %if.end44, !dbg !5794

if.then39:                                        ; preds = %sw.bb32
  %30 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5795
  %31 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5796
  %termios40 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %31, i32 0, i32 15, !dbg !5796
  %c_cc41 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %termios40, i32 0, i32 5, !dbg !5796
  %arrayidx42 = getelementptr [19 x i8], [19 x i8]* %c_cc41, i64 0, i64 8, !dbg !5796
  %32 = load i8, i8* %arrayidx42, align 1, !dbg !5796
  %call43 = call i32 @tty_send_xchar(%struct.tty_struct* %30, i8 signext %32) #7, !dbg !5797
  store i32 %call43, i32* %retval1, align 4, !dbg !5798
  br label %if.end44, !dbg !5799

if.end44:                                         ; preds = %if.then39, %sw.bb32
  br label %sw.epilog, !dbg !5800

sw.default:                                       ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !5801
  br label %return, !dbg !5801

sw.epilog:                                        ; preds = %if.end44, %if.end31, %if.end22, %if.end8
  %33 = load i32, i32* %retval1, align 4, !dbg !5802
  store i32 %33, i32* %retval, align 4, !dbg !5803
  br label %return, !dbg !5803

sw.bb45:                                          ; preds = %entry
  %34 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5804
  %call46 = call i32 @tty_check_change(%struct.tty_struct* %34) #7, !dbg !5805
  store i32 %call46, i32* %retval1, align 4, !dbg !5806
  %35 = load i32, i32* %retval1, align 4, !dbg !5807
  %tobool47 = icmp ne i32 %35, 0, !dbg !5807
  br i1 %tobool47, label %if.then48, label %if.end49, !dbg !5809

if.then48:                                        ; preds = %sw.bb45
  %36 = load i32, i32* %retval1, align 4, !dbg !5810
  store i32 %36, i32* %retval, align 4, !dbg !5811
  br label %return, !dbg !5811

if.end49:                                         ; preds = %sw.bb45
  %37 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5812
  %38 = load i64, i64* %arg.addr, align 8, !dbg !5813
  %call50 = call i32 @__tty_perform_flush(%struct.tty_struct* %37, i64 %38) #7, !dbg !5814
  store i32 %call50, i32* %retval, align 4, !dbg !5815
  br label %return, !dbg !5815

sw.default51:                                     ; preds = %entry
  %39 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5816
  %40 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5817
  %41 = load i32, i32* %cmd.addr, align 4, !dbg !5818
  %42 = load i64, i64* %arg.addr, align 8, !dbg !5819
  %call52 = call i32 @tty_mode_ioctl(%struct.tty_struct* %39, %struct.file* %40, i32 %41, i64 %42) #7, !dbg !5820
  store i32 %call52, i32* %retval, align 4, !dbg !5821
  br label %return, !dbg !5821

return:                                           ; preds = %sw.default51, %if.end49, %if.then48, %sw.epilog, %sw.default, %if.then
  %43 = load i32, i32* %retval, align 4, !dbg !5822
  ret i32 %43, !dbg !5822
}

; Function Attrs: noredzone
declare dso_local void @__stop_tty(%struct.tty_struct*) #2

; Function Attrs: noredzone
declare dso_local void @__start_tty(%struct.tty_struct*) #2

; Function Attrs: noredzone
declare dso_local i32 @tty_send_xchar(%struct.tty_struct*, i8 signext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !5823 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5827, metadata !DIExpression()), !dbg !5828
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5829, metadata !DIExpression()), !dbg !5830
  ret i1 true, !dbg !5831
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5832 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5836, metadata !DIExpression()), !dbg !5837
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5838, metadata !DIExpression()), !dbg !5839
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5840, metadata !DIExpression()), !dbg !5841
  ret void, !dbg !5842
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !5843 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !5849, metadata !DIExpression()), !dbg !5851
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !5853, metadata !DIExpression()), !dbg !5854
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !5855, metadata !DIExpression()), !dbg !5856
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5857, metadata !DIExpression()), !dbg !5859
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5861, metadata !DIExpression()), !dbg !5862
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5863, metadata !DIExpression()), !dbg !5865
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5867, metadata !DIExpression()), !dbg !5868
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5869, metadata !DIExpression()), !dbg !5870
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5871, metadata !DIExpression()), !dbg !5872
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5873
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5874
  %div = sdiv i64 %1, 64, !dbg !5874
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5875
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5873
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5876
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5877
  %conv.i = trunc i64 %4 to i32, !dbg !5877
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #8, !dbg !5878
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5879
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5879
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #8, !dbg !5879
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5880
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !5880
  br i1 %8, label %cond.true, label %cond.false, !dbg !5880

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !5880
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !5880
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !5881
  %and.i = and i64 %11, 63, !dbg !5882
  %shl.i = shl i64 1, %and.i, !dbg !5883
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !5884
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5885
  %shr.i = ashr i64 %13, 6, !dbg !5886
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !5884
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !5884
  %and1.i = and i64 %shl.i, %14, !dbg !5887
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !5888
  %conv = zext i1 %cmp.i to i32, !dbg !5880
  br label %cond.end, !dbg !5880

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !5880
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !5880
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !5889
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !5890
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #5, !dbg !5891, !srcloc !5892
  store i8 %19, i8* %oldbit.i, align 1, !dbg !5891
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !5893
  %tobool.i = trunc i8 %20 to i1, !dbg !5893
  %conv2 = zext i1 %tobool.i to i32, !dbg !5880
  br label %cond.end, !dbg !5880

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5880
  %tobool = icmp ne i32 %cond, 0, !dbg !5880
  ret i1 %tobool, !dbg !5894
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !5895 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5896, metadata !DIExpression()), !dbg !5897
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5898, metadata !DIExpression()), !dbg !5899
  ret i1 true, !dbg !5900
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @user_termio_to_kernel_termios(%struct.ktermios* %termios, %struct.termio* %termio) #0 !dbg !5901 {
entry:
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !4788, metadata !DIExpression()), !dbg !5906
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !4804, metadata !DIExpression()), !dbg !5910
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !4806, metadata !DIExpression()), !dbg !5911
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !4808, metadata !DIExpression()), !dbg !5912
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !4810, metadata !DIExpression()), !dbg !5913
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !5380, metadata !DIExpression()), !dbg !5914
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !5382, metadata !DIExpression()), !dbg !5915
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !5384, metadata !DIExpression()), !dbg !5916
  %retval = alloca i32, align 4
  %termios.addr = alloca %struct.ktermios*, align 8
  %termio.addr = alloca %struct.termio*, align 8
  %tmp = alloca i16, align 2
  %tmp1 = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i16, align 2
  %tmp4 = alloca i64, align 8
  %tmp9 = alloca i64, align 8
  %__ret_gu10 = alloca i32, align 4
  %__val_gu11 = alloca i16, align 2
  %tmp15 = alloca i64, align 8
  %tmp26 = alloca i64, align 8
  %__ret_gu27 = alloca i32, align 4
  %__val_gu28 = alloca i16, align 2
  %tmp32 = alloca i64, align 8
  %tmp43 = alloca i64, align 8
  %__ret_gu44 = alloca i32, align 4
  %__val_gu45 = alloca i16, align 2
  %tmp49 = alloca i64, align 8
  %tmp60 = alloca i64, align 8
  %__ret_gu61 = alloca i32, align 4
  %__val_gu62 = alloca i8, align 1
  %tmp67 = alloca i64, align 8
  store %struct.ktermios* %termios, %struct.ktermios** %termios.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ktermios** %termios.addr, metadata !5917, metadata !DIExpression()), !dbg !5918
  store %struct.termio* %termio, %struct.termio** %termio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.termio** %termio.addr, metadata !5919, metadata !DIExpression()), !dbg !5920
  call void @llvm.dbg.declare(metadata i16* %tmp, metadata !5921, metadata !DIExpression()), !dbg !5922
  call void @might_fault() #7, !dbg !5923
  call void @llvm.dbg.declare(metadata i32* %__ret_gu, metadata !5926, metadata !DIExpression()), !dbg !5928
  call void @llvm.dbg.declare(metadata i16* %__val_gu, metadata !5929, metadata !DIExpression()), !dbg !5928
  %0 = call i64 @llvm.read_register.i64(metadata !4167), !dbg !5928
  %1 = load %struct.termio*, %struct.termio** %termio.addr, align 8, !dbg !5928
  %c_iflag = getelementptr inbounds %struct.termio, %struct.termio* %1, i32 0, i32 0, !dbg !5928
  %2 = call { i16*, i16, i64 } asm sideeffect "call __get_user_${4:P}", "={ax},={rdx},={rsp},0,i,2,~{dirflag},~{fpsr},~{flags}"(i16* %c_iflag, i64 2, i64 %0) #5, !dbg !5928, !srcloc !5930
  %asmresult = extractvalue { i16*, i16, i64 } %2, 0, !dbg !5928
  %asmresult2 = extractvalue { i16*, i16, i64 } %2, 1, !dbg !5928
  %asmresult3 = extractvalue { i16*, i16, i64 } %2, 2, !dbg !5928
  %3 = ptrtoint i16* %asmresult to i64, !dbg !5928
  %4 = trunc i64 %3 to i32, !dbg !5928
  store i32 %4, i32* %__ret_gu, align 4, !dbg !5928
  store i16 %asmresult2, i16* %__val_gu, align 2, !dbg !5928
  call void @llvm.write_register.i64(metadata !4167, i64 %asmresult3), !dbg !5928
  %5 = load i16, i16* %__val_gu, align 2, !dbg !5928
  store i16 %5, i16* %tmp, align 2, !dbg !5928
  %6 = load i32, i32* %__ret_gu, align 4, !dbg !5928
  %conv = sext i32 %6 to i64, !dbg !5928
  store i64 %conv, i64* %tmp4, align 8, !dbg !5928
  %7 = load i64, i64* %tmp4, align 8, !dbg !5928
  store i64 %7, i64* %tmp1, align 8, !dbg !5923
  %8 = load i64, i64* %tmp1, align 8, !dbg !5923
  %cmp = icmp slt i64 %8, 0, !dbg !5931
  br i1 %cmp, label %if.then, label %if.end, !dbg !5932

if.then:                                          ; preds = %entry
  br label %fault, !dbg !5933

if.end:                                           ; preds = %entry
  %9 = load %struct.ktermios*, %struct.ktermios** %termios.addr, align 8, !dbg !5934
  %c_iflag6 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %9, i32 0, i32 0, !dbg !5935
  %10 = load i32, i32* %c_iflag6, align 4, !dbg !5935
  %and = and i32 -65536, %10, !dbg !5936
  %11 = load i16, i16* %tmp, align 2, !dbg !5937
  %conv7 = zext i16 %11 to i32, !dbg !5937
  %or = or i32 %and, %conv7, !dbg !5938
  %12 = load %struct.ktermios*, %struct.ktermios** %termios.addr, align 8, !dbg !5939
  %c_iflag8 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %12, i32 0, i32 0, !dbg !5940
  store i32 %or, i32* %c_iflag8, align 4, !dbg !5941
  call void @might_fault() #7, !dbg !5942
  call void @llvm.dbg.declare(metadata i32* %__ret_gu10, metadata !5945, metadata !DIExpression()), !dbg !5947
  call void @llvm.dbg.declare(metadata i16* %__val_gu11, metadata !5948, metadata !DIExpression()), !dbg !5947
  %13 = call i64 @llvm.read_register.i64(metadata !4167), !dbg !5947
  %14 = load %struct.termio*, %struct.termio** %termio.addr, align 8, !dbg !5947
  %c_oflag = getelementptr inbounds %struct.termio, %struct.termio* %14, i32 0, i32 1, !dbg !5947
  %15 = call { i16*, i16, i64 } asm sideeffect "call __get_user_${4:P}", "={ax},={rdx},={rsp},0,i,2,~{dirflag},~{fpsr},~{flags}"(i16* %c_oflag, i64 2, i64 %13) #5, !dbg !5947, !srcloc !5949
  %asmresult12 = extractvalue { i16*, i16, i64 } %15, 0, !dbg !5947
  %asmresult13 = extractvalue { i16*, i16, i64 } %15, 1, !dbg !5947
  %asmresult14 = extractvalue { i16*, i16, i64 } %15, 2, !dbg !5947
  %16 = ptrtoint i16* %asmresult12 to i64, !dbg !5947
  %17 = trunc i64 %16 to i32, !dbg !5947
  store i32 %17, i32* %__ret_gu10, align 4, !dbg !5947
  store i16 %asmresult13, i16* %__val_gu11, align 2, !dbg !5947
  call void @llvm.write_register.i64(metadata !4167, i64 %asmresult14), !dbg !5947
  %18 = load i16, i16* %__val_gu11, align 2, !dbg !5947
  store i16 %18, i16* %tmp, align 2, !dbg !5947
  %19 = load i32, i32* %__ret_gu10, align 4, !dbg !5947
  %conv16 = sext i32 %19 to i64, !dbg !5947
  store i64 %conv16, i64* %tmp15, align 8, !dbg !5947
  %20 = load i64, i64* %tmp15, align 8, !dbg !5947
  store i64 %20, i64* %tmp9, align 8, !dbg !5942
  %21 = load i64, i64* %tmp9, align 8, !dbg !5942
  %cmp17 = icmp slt i64 %21, 0, !dbg !5950
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !5951

if.then19:                                        ; preds = %if.end
  br label %fault, !dbg !5952

if.end20:                                         ; preds = %if.end
  %22 = load %struct.ktermios*, %struct.ktermios** %termios.addr, align 8, !dbg !5953
  %c_oflag21 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %22, i32 0, i32 1, !dbg !5954
  %23 = load i32, i32* %c_oflag21, align 4, !dbg !5954
  %and22 = and i32 -65536, %23, !dbg !5955
  %24 = load i16, i16* %tmp, align 2, !dbg !5956
  %conv23 = zext i16 %24 to i32, !dbg !5956
  %or24 = or i32 %and22, %conv23, !dbg !5957
  %25 = load %struct.ktermios*, %struct.ktermios** %termios.addr, align 8, !dbg !5958
  %c_oflag25 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %25, i32 0, i32 1, !dbg !5959
  store i32 %or24, i32* %c_oflag25, align 4, !dbg !5960
  call void @might_fault() #7, !dbg !5961
  call void @llvm.dbg.declare(metadata i32* %__ret_gu27, metadata !5964, metadata !DIExpression()), !dbg !5966
  call void @llvm.dbg.declare(metadata i16* %__val_gu28, metadata !5967, metadata !DIExpression()), !dbg !5966
  %26 = call i64 @llvm.read_register.i64(metadata !4167), !dbg !5966
  %27 = load %struct.termio*, %struct.termio** %termio.addr, align 8, !dbg !5966
  %c_cflag = getelementptr inbounds %struct.termio, %struct.termio* %27, i32 0, i32 2, !dbg !5966
  %28 = call { i16*, i16, i64 } asm sideeffect "call __get_user_${4:P}", "={ax},={rdx},={rsp},0,i,2,~{dirflag},~{fpsr},~{flags}"(i16* %c_cflag, i64 2, i64 %26) #5, !dbg !5966, !srcloc !5968
  %asmresult29 = extractvalue { i16*, i16, i64 } %28, 0, !dbg !5966
  %asmresult30 = extractvalue { i16*, i16, i64 } %28, 1, !dbg !5966
  %asmresult31 = extractvalue { i16*, i16, i64 } %28, 2, !dbg !5966
  %29 = ptrtoint i16* %asmresult29 to i64, !dbg !5966
  %30 = trunc i64 %29 to i32, !dbg !5966
  store i32 %30, i32* %__ret_gu27, align 4, !dbg !5966
  store i16 %asmresult30, i16* %__val_gu28, align 2, !dbg !5966
  call void @llvm.write_register.i64(metadata !4167, i64 %asmresult31), !dbg !5966
  %31 = load i16, i16* %__val_gu28, align 2, !dbg !5966
  store i16 %31, i16* %tmp, align 2, !dbg !5966
  %32 = load i32, i32* %__ret_gu27, align 4, !dbg !5966
  %conv33 = sext i32 %32 to i64, !dbg !5966
  store i64 %conv33, i64* %tmp32, align 8, !dbg !5966
  %33 = load i64, i64* %tmp32, align 8, !dbg !5966
  store i64 %33, i64* %tmp26, align 8, !dbg !5961
  %34 = load i64, i64* %tmp26, align 8, !dbg !5961
  %cmp34 = icmp slt i64 %34, 0, !dbg !5969
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !5970

if.then36:                                        ; preds = %if.end20
  br label %fault, !dbg !5971

if.end37:                                         ; preds = %if.end20
  %35 = load %struct.ktermios*, %struct.ktermios** %termios.addr, align 8, !dbg !5972
  %c_cflag38 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %35, i32 0, i32 2, !dbg !5973
  %36 = load i32, i32* %c_cflag38, align 4, !dbg !5973
  %and39 = and i32 -65536, %36, !dbg !5974
  %37 = load i16, i16* %tmp, align 2, !dbg !5975
  %conv40 = zext i16 %37 to i32, !dbg !5975
  %or41 = or i32 %and39, %conv40, !dbg !5976
  %38 = load %struct.ktermios*, %struct.ktermios** %termios.addr, align 8, !dbg !5977
  %c_cflag42 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %38, i32 0, i32 2, !dbg !5978
  store i32 %or41, i32* %c_cflag42, align 4, !dbg !5979
  call void @might_fault() #7, !dbg !5980
  call void @llvm.dbg.declare(metadata i32* %__ret_gu44, metadata !5983, metadata !DIExpression()), !dbg !5985
  call void @llvm.dbg.declare(metadata i16* %__val_gu45, metadata !5986, metadata !DIExpression()), !dbg !5985
  %39 = call i64 @llvm.read_register.i64(metadata !4167), !dbg !5985
  %40 = load %struct.termio*, %struct.termio** %termio.addr, align 8, !dbg !5985
  %c_lflag = getelementptr inbounds %struct.termio, %struct.termio* %40, i32 0, i32 3, !dbg !5985
  %41 = call { i16*, i16, i64 } asm sideeffect "call __get_user_${4:P}", "={ax},={rdx},={rsp},0,i,2,~{dirflag},~{fpsr},~{flags}"(i16* %c_lflag, i64 2, i64 %39) #5, !dbg !5985, !srcloc !5987
  %asmresult46 = extractvalue { i16*, i16, i64 } %41, 0, !dbg !5985
  %asmresult47 = extractvalue { i16*, i16, i64 } %41, 1, !dbg !5985
  %asmresult48 = extractvalue { i16*, i16, i64 } %41, 2, !dbg !5985
  %42 = ptrtoint i16* %asmresult46 to i64, !dbg !5985
  %43 = trunc i64 %42 to i32, !dbg !5985
  store i32 %43, i32* %__ret_gu44, align 4, !dbg !5985
  store i16 %asmresult47, i16* %__val_gu45, align 2, !dbg !5985
  call void @llvm.write_register.i64(metadata !4167, i64 %asmresult48), !dbg !5985
  %44 = load i16, i16* %__val_gu45, align 2, !dbg !5985
  store i16 %44, i16* %tmp, align 2, !dbg !5985
  %45 = load i32, i32* %__ret_gu44, align 4, !dbg !5985
  %conv50 = sext i32 %45 to i64, !dbg !5985
  store i64 %conv50, i64* %tmp49, align 8, !dbg !5985
  %46 = load i64, i64* %tmp49, align 8, !dbg !5985
  store i64 %46, i64* %tmp43, align 8, !dbg !5980
  %47 = load i64, i64* %tmp43, align 8, !dbg !5980
  %cmp51 = icmp slt i64 %47, 0, !dbg !5988
  br i1 %cmp51, label %if.then53, label %if.end54, !dbg !5989

if.then53:                                        ; preds = %if.end37
  br label %fault, !dbg !5990

if.end54:                                         ; preds = %if.end37
  %48 = load %struct.ktermios*, %struct.ktermios** %termios.addr, align 8, !dbg !5991
  %c_lflag55 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %48, i32 0, i32 3, !dbg !5992
  %49 = load i32, i32* %c_lflag55, align 4, !dbg !5992
  %and56 = and i32 -65536, %49, !dbg !5993
  %50 = load i16, i16* %tmp, align 2, !dbg !5994
  %conv57 = zext i16 %50 to i32, !dbg !5994
  %or58 = or i32 %and56, %conv57, !dbg !5995
  %51 = load %struct.ktermios*, %struct.ktermios** %termios.addr, align 8, !dbg !5996
  %c_lflag59 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %51, i32 0, i32 3, !dbg !5997
  store i32 %or58, i32* %c_lflag59, align 4, !dbg !5998
  call void @might_fault() #7, !dbg !5999
  call void @llvm.dbg.declare(metadata i32* %__ret_gu61, metadata !6002, metadata !DIExpression()), !dbg !6004
  call void @llvm.dbg.declare(metadata i8* %__val_gu62, metadata !6005, metadata !DIExpression()), !dbg !6004
  %52 = call i64 @llvm.read_register.i64(metadata !4167), !dbg !6004
  %53 = load %struct.termio*, %struct.termio** %termio.addr, align 8, !dbg !6004
  %c_line = getelementptr inbounds %struct.termio, %struct.termio* %53, i32 0, i32 4, !dbg !6004
  %54 = call { i8*, i8, i64 } asm sideeffect "call __get_user_${4:P}", "={ax},={rdx},={rsp},0,i,2,~{dirflag},~{fpsr},~{flags}"(i8* %c_line, i64 1, i64 %52) #5, !dbg !6004, !srcloc !6006
  %asmresult63 = extractvalue { i8*, i8, i64 } %54, 0, !dbg !6004
  %asmresult64 = extractvalue { i8*, i8, i64 } %54, 1, !dbg !6004
  %asmresult65 = extractvalue { i8*, i8, i64 } %54, 2, !dbg !6004
  %55 = ptrtoint i8* %asmresult63 to i64, !dbg !6004
  %56 = trunc i64 %55 to i32, !dbg !6004
  store i32 %56, i32* %__ret_gu61, align 4, !dbg !6004
  store i8 %asmresult64, i8* %__val_gu62, align 1, !dbg !6004
  call void @llvm.write_register.i64(metadata !4167, i64 %asmresult65), !dbg !6004
  %57 = load i8, i8* %__val_gu62, align 1, !dbg !6004
  %58 = load %struct.ktermios*, %struct.ktermios** %termios.addr, align 8, !dbg !6004
  %c_line66 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %58, i32 0, i32 4, !dbg !6004
  store i8 %57, i8* %c_line66, align 4, !dbg !6004
  %59 = load i32, i32* %__ret_gu61, align 4, !dbg !6004
  %conv68 = sext i32 %59 to i64, !dbg !6004
  store i64 %conv68, i64* %tmp67, align 8, !dbg !6004
  %60 = load i64, i64* %tmp67, align 8, !dbg !6004
  store i64 %60, i64* %tmp60, align 8, !dbg !5999
  %61 = load i64, i64* %tmp60, align 8, !dbg !5999
  %cmp69 = icmp slt i64 %61, 0, !dbg !6007
  br i1 %cmp69, label %if.then71, label %if.end72, !dbg !6008

if.then71:                                        ; preds = %if.end54
  br label %fault, !dbg !6009

if.end72:                                         ; preds = %if.end54
  %62 = load %struct.ktermios*, %struct.ktermios** %termios.addr, align 8, !dbg !6010
  %c_cc = getelementptr inbounds %struct.ktermios, %struct.ktermios* %62, i32 0, i32 5, !dbg !6011
  %arraydecay = getelementptr inbounds [19 x i8], [19 x i8]* %c_cc, i64 0, i64 0, !dbg !6010
  %63 = load %struct.termio*, %struct.termio** %termio.addr, align 8, !dbg !6012
  %c_cc73 = getelementptr inbounds %struct.termio, %struct.termio* %63, i32 0, i32 5, !dbg !6013
  %arraydecay74 = getelementptr inbounds [8 x i8], [8 x i8]* %c_cc73, i64 0, i64 0, !dbg !6012
  store i8* %arraydecay, i8** %to.addr.i, align 8
  store i8* %arraydecay74, i8** %from.addr.i, align 8
  store i64 8, i64* %n.addr.i, align 8
  %64 = load i8*, i8** %to.addr.i, align 8, !dbg !6014
  %65 = load i64, i64* %n.addr.i, align 8, !dbg !6014
  store i8* %64, i8** %addr.addr.i.i, align 8
  store i64 %65, i64* %bytes.addr.i.i, align 8
  store i8 0, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !5912
  %66 = load i32, i32* %sz.i.i, align 4, !dbg !6015
  %cmp.i.i = icmp sge i32 %66, 0, !dbg !6015
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !6015

land.rhs.i.i:                                     ; preds = %if.end72
  %67 = load i32, i32* %sz.i.i, align 4, !dbg !6015
  %conv.i.i = sext i32 %67 to i64, !dbg !6015
  %68 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6015
  %cmp1.i.i = icmp ult i64 %conv.i.i, %68, !dbg !6015
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %if.end72
  %69 = phi i1 [ false, %if.end72 ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !6016
  %lnot.i.i = xor i1 %69, true, !dbg !6015
  %lnot.ext.i.i = zext i1 %69 to i32, !dbg !6015
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6015
  br i1 %69, label %if.then.i.i, label %if.end10.i.i, !dbg !6017

if.then.i.i:                                      ; preds = %land.end.i.i
  %70 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6018
  %71 = call i1 @llvm.is.constant.i64(i64 %70) #5, !dbg !6019
  br i1 %71, label %if.else.i.i, label %if.then5.i.i, !dbg !6020

if.then5.i.i:                                     ; preds = %if.then.i.i
  %72 = load i32, i32* %sz.i.i, align 4, !dbg !6021
  %73 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6022
  call void @copy_overflow(i32 %72, i64 %73) #8, !dbg !6023
  br label %if.end9.i.i, !dbg !6023

if.else.i.i:                                      ; preds = %if.then.i.i
  %74 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !6024
  %tobool6.i.i = trunc i8 %74 to i1, !dbg !6024
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !6025

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #8, !dbg !6026
  br label %if.end.i.i, !dbg !6026

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #8, !dbg !6027
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !6028
  br label %check_copy_size.exit.i, !dbg !6028

if.end10.i.i:                                     ; preds = %land.end.i.i
  %75 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5913
  %cmp11.i.i = icmp ugt i64 %75, 2147483647, !dbg !5913
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !5913
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !5913
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !5913
  %76 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !6029
  %tobool17.i.i = icmp ne i32 %76, 0, !dbg !6029
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !6029
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !6029
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !6029
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !5913

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #5, !dbg !6030, !srcloc !5013
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #5, !dbg !6031, !srcloc !5016
  br label %if.end31.i.i, !dbg !6032

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %77 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5913
  %tobool32.i.i = icmp ne i32 %77, 0, !dbg !5913
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !5913
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !5913
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !5913
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !6029
  %78 = load i64, i64* %tmp.i.i, align 8, !dbg !5913
  %tobool38.i.i = icmp ne i64 %78, 0, !dbg !6033
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !6034

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !6035
  br label %check_copy_size.exit.i, !dbg !6035

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %79 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !6036
  %80 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6037
  %81 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !6038
  %tobool41.i.i = trunc i8 %81 to i1, !dbg !6038
  call void @check_object_size(i8* %79, i64 %80, i1 zeroext %tobool41.i.i) #8, !dbg !6039
  store i1 true, i1* %retval.i.i, align 1, !dbg !6040
  br label %check_copy_size.exit.i, !dbg !6040

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %82 = load i1, i1* %retval.i.i, align 1, !dbg !6041
  %lnot.i = xor i1 %82, true, !dbg !6014
  %lnot.ext.i = zext i1 %82 to i32, !dbg !6014
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !6014
  br i1 %82, label %if.then.i, label %copy_from_user.exit, !dbg !6042

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %83 = load i8*, i8** %to.addr.i, align 8, !dbg !6043
  %84 = load i8*, i8** %from.addr.i, align 8, !dbg !6044
  %85 = load i64, i64* %n.addr.i, align 8, !dbg !6045
  %call2.i = call i64 @_copy_from_user(i8* %83, i8* %84, i64 %85) #8, !dbg !6046
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !6047
  br label %copy_from_user.exit, !dbg !6048

copy_from_user.exit:                              ; preds = %check_copy_size.exit.i, %if.then.i
  %86 = load i64, i64* %n.addr.i, align 8, !dbg !6049
  %cmp75 = icmp ne i64 %86, 0, !dbg !6050
  br i1 %cmp75, label %if.then77, label %if.end78, !dbg !6051

if.then77:                                        ; preds = %copy_from_user.exit
  br label %fault, !dbg !6052

if.end78:                                         ; preds = %copy_from_user.exit
  store i32 0, i32* %retval, align 4, !dbg !6053
  br label %return, !dbg !6053

fault:                                            ; preds = %if.then77, %if.then71, %if.then53, %if.then36, %if.then19, %if.then
  call void @llvm.dbg.label(metadata !6054), !dbg !6055
  store i32 -14, i32* %retval, align 4, !dbg !6056
  br label %return, !dbg !6056

return:                                           ; preds = %fault, %if.end78
  %87 = load i32, i32* %retval, align 4, !dbg !6057
  ret i32 %87, !dbg !6057
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @user_termios_to_kernel_termios(%struct.ktermios* %k, %struct.termios2* %u) #0 !dbg !6058 {
entry:
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !4788, metadata !DIExpression()), !dbg !6061
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !4804, metadata !DIExpression()), !dbg !6064
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !4806, metadata !DIExpression()), !dbg !6065
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !4808, metadata !DIExpression()), !dbg !6066
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !4810, metadata !DIExpression()), !dbg !6067
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !5380, metadata !DIExpression()), !dbg !6068
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !5382, metadata !DIExpression()), !dbg !6069
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !5384, metadata !DIExpression()), !dbg !6070
  %k.addr = alloca %struct.ktermios*, align 8
  %u.addr = alloca %struct.termios2*, align 8
  store %struct.ktermios* %k, %struct.ktermios** %k.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ktermios** %k.addr, metadata !6071, metadata !DIExpression()), !dbg !6072
  store %struct.termios2* %u, %struct.termios2** %u.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.termios2** %u.addr, metadata !6073, metadata !DIExpression()), !dbg !6074
  %0 = load %struct.ktermios*, %struct.ktermios** %k.addr, align 8, !dbg !6075
  %1 = bitcast %struct.ktermios* %0 to i8*, !dbg !6075
  %2 = load %struct.termios2*, %struct.termios2** %u.addr, align 8, !dbg !6076
  %3 = bitcast %struct.termios2* %2 to i8*, !dbg !6076
  store i8* %1, i8** %to.addr.i, align 8
  store i8* %3, i8** %from.addr.i, align 8
  store i64 44, i64* %n.addr.i, align 8
  %4 = load i8*, i8** %to.addr.i, align 8, !dbg !6077
  %5 = load i64, i64* %n.addr.i, align 8, !dbg !6077
  store i8* %4, i8** %addr.addr.i.i, align 8
  store i64 %5, i64* %bytes.addr.i.i, align 8
  store i8 0, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !6066
  %6 = load i32, i32* %sz.i.i, align 4, !dbg !6078
  %cmp.i.i = icmp sge i32 %6, 0, !dbg !6078
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !6078

land.rhs.i.i:                                     ; preds = %entry
  %7 = load i32, i32* %sz.i.i, align 4, !dbg !6078
  %conv.i.i = sext i32 %7 to i64, !dbg !6078
  %8 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6078
  %cmp1.i.i = icmp ult i64 %conv.i.i, %8, !dbg !6078
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %entry
  %9 = phi i1 [ false, %entry ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !6079
  %lnot.i.i = xor i1 %9, true, !dbg !6078
  %lnot.ext.i.i = zext i1 %9 to i32, !dbg !6078
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6078
  br i1 %9, label %if.then.i.i, label %if.end10.i.i, !dbg !6080

if.then.i.i:                                      ; preds = %land.end.i.i
  %10 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6081
  %11 = call i1 @llvm.is.constant.i64(i64 %10) #5, !dbg !6082
  br i1 %11, label %if.else.i.i, label %if.then5.i.i, !dbg !6083

if.then5.i.i:                                     ; preds = %if.then.i.i
  %12 = load i32, i32* %sz.i.i, align 4, !dbg !6084
  %13 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6085
  call void @copy_overflow(i32 %12, i64 %13) #8, !dbg !6086
  br label %if.end9.i.i, !dbg !6086

if.else.i.i:                                      ; preds = %if.then.i.i
  %14 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !6087
  %tobool6.i.i = trunc i8 %14 to i1, !dbg !6087
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !6088

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #8, !dbg !6089
  br label %if.end.i.i, !dbg !6089

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #8, !dbg !6090
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !6091
  br label %check_copy_size.exit.i, !dbg !6091

if.end10.i.i:                                     ; preds = %land.end.i.i
  %15 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6067
  %cmp11.i.i = icmp ugt i64 %15, 2147483647, !dbg !6067
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !6067
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !6067
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !6067
  %16 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !6092
  %tobool17.i.i = icmp ne i32 %16, 0, !dbg !6092
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !6092
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !6092
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !6092
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !6067

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #5, !dbg !6093, !srcloc !5013
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #5, !dbg !6094, !srcloc !5016
  br label %if.end31.i.i, !dbg !6095

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %17 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !6067
  %tobool32.i.i = icmp ne i32 %17, 0, !dbg !6067
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !6067
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !6067
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !6067
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !6092
  %18 = load i64, i64* %tmp.i.i, align 8, !dbg !6067
  %tobool38.i.i = icmp ne i64 %18, 0, !dbg !6096
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !6097

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !6098
  br label %check_copy_size.exit.i, !dbg !6098

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %19 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !6099
  %20 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6100
  %21 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !6101
  %tobool41.i.i = trunc i8 %21 to i1, !dbg !6101
  call void @check_object_size(i8* %19, i64 %20, i1 zeroext %tobool41.i.i) #8, !dbg !6102
  store i1 true, i1* %retval.i.i, align 1, !dbg !6103
  br label %check_copy_size.exit.i, !dbg !6103

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %22 = load i1, i1* %retval.i.i, align 1, !dbg !6104
  %lnot.i = xor i1 %22, true, !dbg !6077
  %lnot.ext.i = zext i1 %22 to i32, !dbg !6077
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !6077
  br i1 %22, label %if.then.i, label %copy_from_user.exit, !dbg !6105

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %23 = load i8*, i8** %to.addr.i, align 8, !dbg !6106
  %24 = load i8*, i8** %from.addr.i, align 8, !dbg !6107
  %25 = load i64, i64* %n.addr.i, align 8, !dbg !6108
  %call2.i = call i64 @_copy_from_user(i8* %23, i8* %24, i64 %25) #8, !dbg !6109
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !6110
  br label %copy_from_user.exit, !dbg !6111

copy_from_user.exit:                              ; preds = %check_copy_size.exit.i, %if.then.i
  %26 = load i64, i64* %n.addr.i, align 8, !dbg !6112
  %conv = trunc i64 %26 to i32, !dbg !6113
  ret i32 %conv, !dbg !6114
}

; Function Attrs: noredzone
declare dso_local i32 @tty_termios_input_baud_rate(%struct.ktermios*) #2

; Function Attrs: noredzone
declare dso_local i32 @tty_termios_baud_rate(%struct.ktermios*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @signal_pending(%struct.task_struct* %p) #0 !dbg !6115 {
entry:
  %p.addr = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %p, %struct.task_struct** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %p.addr, metadata !6118, metadata !DIExpression()), !dbg !6119
  %0 = load %struct.task_struct*, %struct.task_struct** %p.addr, align 8, !dbg !6120
  %call = call i32 @test_tsk_thread_flag(%struct.task_struct* %0, i32 2) #7, !dbg !6120
  %tobool = icmp ne i32 %call, 0, !dbg !6120
  %lnot = xor i1 %tobool, true, !dbg !6120
  %lnot1 = xor i1 %lnot, true, !dbg !6120
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6120
  %conv = sext i32 %lnot.ext to i64, !dbg !6120
  %conv2 = trunc i64 %conv to i32, !dbg !6120
  ret i32 %conv2, !dbg !6121
}

; Function Attrs: noredzone
declare dso_local i64 @_copy_from_user(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @copy_overflow(i32 %size, i64 %count) #0 !dbg !6122 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6125, metadata !DIExpression()), !dbg !6126
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !6127, metadata !DIExpression()), !dbg !6128
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !6129, metadata !DIExpression()), !dbg !6131
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !6131
  %0 = load i32, i32* %__ret_warn_on, align 4, !dbg !6132
  %tobool = icmp ne i32 %0, 0, !dbg !6132
  %lnot = xor i1 %tobool, true, !dbg !6132
  %lnot1 = xor i1 %lnot, true, !dbg !6132
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6132
  %conv = sext i32 %lnot.ext to i64, !dbg !6132
  %tobool2 = icmp ne i64 %conv, 0, !dbg !6132
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6131

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6132

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !6134

do.body3:                                         ; preds = %do.body
  br label %do.end, !dbg !6136

do.end:                                           ; preds = %do.body3
  %1 = load i32, i32* %size.addr, align 4, !dbg !6134
  %2 = load i64, i64* %count.addr, align 8, !dbg !6134
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %1, i64 %2) #7, !dbg !6134
  br label %do.body4, !dbg !6134

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !6138

do.body5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6140

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !6138

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 134, i32 2313, i64 12) #5, !dbg !6142, !srcloc !6144
  br label %do.end8, !dbg !6142

do.end8:                                          ; preds = %do.body7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 38) #5, !dbg !6145, !srcloc !6147
  br label %do.body9, !dbg !6138

do.body9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !6148

do.end10:                                         ; preds = %do.body9
  br label %do.end11, !dbg !6138

do.end11:                                         ; preds = %do.end10
  br label %do.body12, !dbg !6134

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !6150

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !6134

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !6134

if.end:                                           ; preds = %do.end14, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !6131
  %tobool15 = icmp ne i32 %3, 0, !dbg !6131
  %lnot16 = xor i1 %tobool15, true, !dbg !6131
  %lnot18 = xor i1 %lnot16, true, !dbg !6131
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !6131
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !6131
  store i64 %conv20, i64* %tmp, align 8, !dbg !6132
  %4 = load i64, i64* %tmp, align 8, !dbg !6131
  ret void, !dbg !6152
}

; Function Attrs: noredzone
declare dso_local void @__bad_copy_from() #2

; Function Attrs: noredzone
declare dso_local void @__bad_copy_to() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @check_object_size(i8* %ptr, i64 %n, i1 zeroext %to_user) #0 !dbg !6153 {
entry:
  %ptr.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6156, metadata !DIExpression()), !dbg !6157
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6158, metadata !DIExpression()), !dbg !6159
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, i8* %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %to_user.addr, metadata !6160, metadata !DIExpression()), !dbg !6161
  ret void, !dbg !6162
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @test_tsk_thread_flag(%struct.task_struct* %tsk, i32 %flag) #0 !dbg !6163 {
entry:
  %tsk.addr = alloca %struct.task_struct*, align 8
  %flag.addr = alloca i32, align 4
  store %struct.task_struct* %tsk, %struct.task_struct** %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %tsk.addr, metadata !6166, metadata !DIExpression()), !dbg !6167
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !6168, metadata !DIExpression()), !dbg !6169
  %0 = load %struct.task_struct*, %struct.task_struct** %tsk.addr, align 8, !dbg !6170
  %call = call %struct.thread_info* @task_thread_info(%struct.task_struct* %0) #7, !dbg !6171
  %1 = load i32, i32* %flag.addr, align 4, !dbg !6172
  %call1 = call i32 @test_ti_thread_flag(%struct.thread_info* %call, i32 %1) #7, !dbg !6173
  ret i32 %call1, !dbg !6174
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @test_ti_thread_flag(%struct.thread_info* %ti, i32 %flag) #0 !dbg !6175 {
entry:
  %ti.addr = alloca %struct.thread_info*, align 8
  %flag.addr = alloca i32, align 4
  store %struct.thread_info* %ti, %struct.thread_info** %ti.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thread_info** %ti.addr, metadata !6179, metadata !DIExpression()), !dbg !6180
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !6181, metadata !DIExpression()), !dbg !6182
  %0 = load i32, i32* %flag.addr, align 4, !dbg !6183
  %conv = sext i32 %0 to i64, !dbg !6183
  %1 = load %struct.thread_info*, %struct.thread_info** %ti.addr, align 8, !dbg !6184
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %1, i32 0, i32 0, !dbg !6185
  %call = call zeroext i1 @test_bit(i64 %conv, i64* %flags) #7, !dbg !6186
  %conv1 = zext i1 %call to i32, !dbg !6186
  ret i32 %conv1, !dbg !6187
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.thread_info* @task_thread_info(%struct.task_struct* %task) #0 !dbg !6188 {
entry:
  %task.addr = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %task, %struct.task_struct** %task.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %task.addr, metadata !6191, metadata !DIExpression()), !dbg !6192
  %0 = load %struct.task_struct*, %struct.task_struct** %task.addr, align 8, !dbg !6193
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i32 0, i32 0, !dbg !6194
  ret %struct.thread_info* %thread_info, !dbg !6195
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kernel_termios_to_user_termio(%struct.termio* %termio, %struct.ktermios* %termios) #0 !dbg !6196 {
entry:
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !4788, metadata !DIExpression()), !dbg !6199
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !4804, metadata !DIExpression()), !dbg !6203
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !4806, metadata !DIExpression()), !dbg !6204
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !4808, metadata !DIExpression()), !dbg !6205
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !4810, metadata !DIExpression()), !dbg !6206
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !4814, metadata !DIExpression()), !dbg !6207
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !4816, metadata !DIExpression()), !dbg !6208
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !4818, metadata !DIExpression()), !dbg !6209
  %retval = alloca i32, align 4
  %termio.addr = alloca %struct.termio*, align 8
  %termios.addr = alloca %struct.ktermios*, align 8
  %tmp = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca i8*, align 8
  %__val_pu = alloca i16, align 2
  %tmp3 = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  %__ret_pu7 = alloca i32, align 4
  %__ptr_pu8 = alloca i8*, align 8
  %__val_pu9 = alloca i16, align 2
  %tmp14 = alloca i64, align 8
  %tmp19 = alloca i64, align 8
  %__ret_pu20 = alloca i32, align 4
  %__ptr_pu21 = alloca i8*, align 8
  %__val_pu22 = alloca i16, align 2
  %tmp27 = alloca i64, align 8
  %tmp32 = alloca i64, align 8
  %__ret_pu33 = alloca i32, align 4
  %__ptr_pu34 = alloca i8*, align 8
  %__val_pu35 = alloca i16, align 2
  %tmp40 = alloca i64, align 8
  %tmp45 = alloca i64, align 8
  %__ret_pu46 = alloca i32, align 4
  %__ptr_pu47 = alloca i8*, align 8
  %__val_pu48 = alloca i8, align 1
  %tmp52 = alloca i64, align 8
  store %struct.termio* %termio, %struct.termio** %termio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.termio** %termio.addr, metadata !6210, metadata !DIExpression()), !dbg !6211
  store %struct.ktermios* %termios, %struct.ktermios** %termios.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ktermios** %termios.addr, metadata !6212, metadata !DIExpression()), !dbg !6213
  call void @might_fault() #7, !dbg !6214
  call void @llvm.dbg.declare(metadata i32* %__ret_pu, metadata !6216, metadata !DIExpression()), !dbg !6218
  call void @llvm.dbg.declare(metadata i8** %__ptr_pu, metadata !6219, metadata !DIExpression()), !dbg !6218
  call void @llvm.dbg.declare(metadata i16* %__val_pu, metadata !6220, metadata !DIExpression()), !dbg !6218
  %0 = load %struct.termio*, %struct.termio** %termio.addr, align 8, !dbg !6218
  %c_iflag = getelementptr inbounds %struct.termio, %struct.termio* %0, i32 0, i32 0, !dbg !6218
  %1 = bitcast i16* %c_iflag to i8*, !dbg !6218
  store i8* %1, i8** %__ptr_pu, align 8, !dbg !6218
  %2 = load %struct.ktermios*, %struct.ktermios** %termios.addr, align 8, !dbg !6218
  %c_iflag1 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %2, i32 0, i32 0, !dbg !6218
  %3 = load i32, i32* %c_iflag1, align 4, !dbg !6218
  %conv = trunc i32 %3 to i16, !dbg !6218
  store i16 %conv, i16* %__val_pu, align 2, !dbg !6218
  %4 = call i64 @llvm.read_register.i64(metadata !4167), !dbg !6218
  %5 = load i8*, i8** %__ptr_pu, align 8, !dbg !6218
  %6 = load i16, i16* %__val_pu, align 2, !dbg !6218
  %7 = call { i8*, i64 } asm sideeffect "call __put_user_${4:P}", "={cx},={rsp},0,{rax},i,1,~{ebx},~{dirflag},~{fpsr},~{flags}"(i8* %5, i16 %6, i64 2, i64 %4) #5, !dbg !6218, !srcloc !6221
  %asmresult = extractvalue { i8*, i64 } %7, 0, !dbg !6218
  %asmresult2 = extractvalue { i8*, i64 } %7, 1, !dbg !6218
  %8 = ptrtoint i8* %asmresult to i64, !dbg !6218
  %9 = trunc i64 %8 to i32, !dbg !6218
  store i32 %9, i32* %__ret_pu, align 4, !dbg !6218
  call void @llvm.write_register.i64(metadata !4167, i64 %asmresult2), !dbg !6218
  %10 = load i32, i32* %__ret_pu, align 4, !dbg !6218
  %conv4 = sext i32 %10 to i64, !dbg !6218
  store i64 %conv4, i64* %tmp3, align 8, !dbg !6218
  %11 = load i64, i64* %tmp3, align 8, !dbg !6218
  store i64 %11, i64* %tmp, align 8, !dbg !6214
  %12 = load i64, i64* %tmp, align 8, !dbg !6214
  %cmp = icmp slt i64 %12, 0, !dbg !6222
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6223

lor.lhs.false:                                    ; preds = %entry
  call void @might_fault() #7, !dbg !6224
  call void @llvm.dbg.declare(metadata i32* %__ret_pu7, metadata !6226, metadata !DIExpression()), !dbg !6228
  call void @llvm.dbg.declare(metadata i8** %__ptr_pu8, metadata !6229, metadata !DIExpression()), !dbg !6228
  call void @llvm.dbg.declare(metadata i16* %__val_pu9, metadata !6230, metadata !DIExpression()), !dbg !6228
  %13 = load %struct.termio*, %struct.termio** %termio.addr, align 8, !dbg !6228
  %c_oflag = getelementptr inbounds %struct.termio, %struct.termio* %13, i32 0, i32 1, !dbg !6228
  %14 = bitcast i16* %c_oflag to i8*, !dbg !6228
  store i8* %14, i8** %__ptr_pu8, align 8, !dbg !6228
  %15 = load %struct.ktermios*, %struct.ktermios** %termios.addr, align 8, !dbg !6228
  %c_oflag10 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %15, i32 0, i32 1, !dbg !6228
  %16 = load i32, i32* %c_oflag10, align 4, !dbg !6228
  %conv11 = trunc i32 %16 to i16, !dbg !6228
  store i16 %conv11, i16* %__val_pu9, align 2, !dbg !6228
  %17 = call i64 @llvm.read_register.i64(metadata !4167), !dbg !6228
  %18 = load i8*, i8** %__ptr_pu8, align 8, !dbg !6228
  %19 = load i16, i16* %__val_pu9, align 2, !dbg !6228
  %20 = call { i8*, i64 } asm sideeffect "call __put_user_${4:P}", "={cx},={rsp},0,{rax},i,1,~{ebx},~{dirflag},~{fpsr},~{flags}"(i8* %18, i16 %19, i64 2, i64 %17) #5, !dbg !6228, !srcloc !6231
  %asmresult12 = extractvalue { i8*, i64 } %20, 0, !dbg !6228
  %asmresult13 = extractvalue { i8*, i64 } %20, 1, !dbg !6228
  %21 = ptrtoint i8* %asmresult12 to i64, !dbg !6228
  %22 = trunc i64 %21 to i32, !dbg !6228
  store i32 %22, i32* %__ret_pu7, align 4, !dbg !6228
  call void @llvm.write_register.i64(metadata !4167, i64 %asmresult13), !dbg !6228
  %23 = load i32, i32* %__ret_pu7, align 4, !dbg !6228
  %conv15 = sext i32 %23 to i64, !dbg !6228
  store i64 %conv15, i64* %tmp14, align 8, !dbg !6228
  %24 = load i64, i64* %tmp14, align 8, !dbg !6228
  store i64 %24, i64* %tmp6, align 8, !dbg !6224
  %25 = load i64, i64* %tmp6, align 8, !dbg !6224
  %cmp16 = icmp slt i64 %25, 0, !dbg !6232
  br i1 %cmp16, label %if.then, label %lor.lhs.false18, !dbg !6233

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  call void @might_fault() #7, !dbg !6234
  call void @llvm.dbg.declare(metadata i32* %__ret_pu20, metadata !6236, metadata !DIExpression()), !dbg !6238
  call void @llvm.dbg.declare(metadata i8** %__ptr_pu21, metadata !6239, metadata !DIExpression()), !dbg !6238
  call void @llvm.dbg.declare(metadata i16* %__val_pu22, metadata !6240, metadata !DIExpression()), !dbg !6238
  %26 = load %struct.termio*, %struct.termio** %termio.addr, align 8, !dbg !6238
  %c_cflag = getelementptr inbounds %struct.termio, %struct.termio* %26, i32 0, i32 2, !dbg !6238
  %27 = bitcast i16* %c_cflag to i8*, !dbg !6238
  store i8* %27, i8** %__ptr_pu21, align 8, !dbg !6238
  %28 = load %struct.ktermios*, %struct.ktermios** %termios.addr, align 8, !dbg !6238
  %c_cflag23 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %28, i32 0, i32 2, !dbg !6238
  %29 = load i32, i32* %c_cflag23, align 4, !dbg !6238
  %conv24 = trunc i32 %29 to i16, !dbg !6238
  store i16 %conv24, i16* %__val_pu22, align 2, !dbg !6238
  %30 = call i64 @llvm.read_register.i64(metadata !4167), !dbg !6238
  %31 = load i8*, i8** %__ptr_pu21, align 8, !dbg !6238
  %32 = load i16, i16* %__val_pu22, align 2, !dbg !6238
  %33 = call { i8*, i64 } asm sideeffect "call __put_user_${4:P}", "={cx},={rsp},0,{rax},i,1,~{ebx},~{dirflag},~{fpsr},~{flags}"(i8* %31, i16 %32, i64 2, i64 %30) #5, !dbg !6238, !srcloc !6241
  %asmresult25 = extractvalue { i8*, i64 } %33, 0, !dbg !6238
  %asmresult26 = extractvalue { i8*, i64 } %33, 1, !dbg !6238
  %34 = ptrtoint i8* %asmresult25 to i64, !dbg !6238
  %35 = trunc i64 %34 to i32, !dbg !6238
  store i32 %35, i32* %__ret_pu20, align 4, !dbg !6238
  call void @llvm.write_register.i64(metadata !4167, i64 %asmresult26), !dbg !6238
  %36 = load i32, i32* %__ret_pu20, align 4, !dbg !6238
  %conv28 = sext i32 %36 to i64, !dbg !6238
  store i64 %conv28, i64* %tmp27, align 8, !dbg !6238
  %37 = load i64, i64* %tmp27, align 8, !dbg !6238
  store i64 %37, i64* %tmp19, align 8, !dbg !6234
  %38 = load i64, i64* %tmp19, align 8, !dbg !6234
  %cmp29 = icmp slt i64 %38, 0, !dbg !6242
  br i1 %cmp29, label %if.then, label %lor.lhs.false31, !dbg !6243

lor.lhs.false31:                                  ; preds = %lor.lhs.false18
  call void @might_fault() #7, !dbg !6244
  call void @llvm.dbg.declare(metadata i32* %__ret_pu33, metadata !6246, metadata !DIExpression()), !dbg !6248
  call void @llvm.dbg.declare(metadata i8** %__ptr_pu34, metadata !6249, metadata !DIExpression()), !dbg !6248
  call void @llvm.dbg.declare(metadata i16* %__val_pu35, metadata !6250, metadata !DIExpression()), !dbg !6248
  %39 = load %struct.termio*, %struct.termio** %termio.addr, align 8, !dbg !6248
  %c_lflag = getelementptr inbounds %struct.termio, %struct.termio* %39, i32 0, i32 3, !dbg !6248
  %40 = bitcast i16* %c_lflag to i8*, !dbg !6248
  store i8* %40, i8** %__ptr_pu34, align 8, !dbg !6248
  %41 = load %struct.ktermios*, %struct.ktermios** %termios.addr, align 8, !dbg !6248
  %c_lflag36 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %41, i32 0, i32 3, !dbg !6248
  %42 = load i32, i32* %c_lflag36, align 4, !dbg !6248
  %conv37 = trunc i32 %42 to i16, !dbg !6248
  store i16 %conv37, i16* %__val_pu35, align 2, !dbg !6248
  %43 = call i64 @llvm.read_register.i64(metadata !4167), !dbg !6248
  %44 = load i8*, i8** %__ptr_pu34, align 8, !dbg !6248
  %45 = load i16, i16* %__val_pu35, align 2, !dbg !6248
  %46 = call { i8*, i64 } asm sideeffect "call __put_user_${4:P}", "={cx},={rsp},0,{rax},i,1,~{ebx},~{dirflag},~{fpsr},~{flags}"(i8* %44, i16 %45, i64 2, i64 %43) #5, !dbg !6248, !srcloc !6251
  %asmresult38 = extractvalue { i8*, i64 } %46, 0, !dbg !6248
  %asmresult39 = extractvalue { i8*, i64 } %46, 1, !dbg !6248
  %47 = ptrtoint i8* %asmresult38 to i64, !dbg !6248
  %48 = trunc i64 %47 to i32, !dbg !6248
  store i32 %48, i32* %__ret_pu33, align 4, !dbg !6248
  call void @llvm.write_register.i64(metadata !4167, i64 %asmresult39), !dbg !6248
  %49 = load i32, i32* %__ret_pu33, align 4, !dbg !6248
  %conv41 = sext i32 %49 to i64, !dbg !6248
  store i64 %conv41, i64* %tmp40, align 8, !dbg !6248
  %50 = load i64, i64* %tmp40, align 8, !dbg !6248
  store i64 %50, i64* %tmp32, align 8, !dbg !6244
  %51 = load i64, i64* %tmp32, align 8, !dbg !6244
  %cmp42 = icmp slt i64 %51, 0, !dbg !6252
  br i1 %cmp42, label %if.then, label %lor.lhs.false44, !dbg !6253

lor.lhs.false44:                                  ; preds = %lor.lhs.false31
  call void @might_fault() #7, !dbg !6254
  call void @llvm.dbg.declare(metadata i32* %__ret_pu46, metadata !6256, metadata !DIExpression()), !dbg !6258
  call void @llvm.dbg.declare(metadata i8** %__ptr_pu47, metadata !6259, metadata !DIExpression()), !dbg !6258
  call void @llvm.dbg.declare(metadata i8* %__val_pu48, metadata !6260, metadata !DIExpression()), !dbg !6258
  %52 = load %struct.termio*, %struct.termio** %termio.addr, align 8, !dbg !6258
  %c_line = getelementptr inbounds %struct.termio, %struct.termio* %52, i32 0, i32 4, !dbg !6258
  store i8* %c_line, i8** %__ptr_pu47, align 8, !dbg !6258
  %53 = load %struct.ktermios*, %struct.ktermios** %termios.addr, align 8, !dbg !6258
  %c_line49 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %53, i32 0, i32 4, !dbg !6258
  %54 = load i8, i8* %c_line49, align 4, !dbg !6258
  store i8 %54, i8* %__val_pu48, align 1, !dbg !6258
  %55 = call i64 @llvm.read_register.i64(metadata !4167), !dbg !6258
  %56 = load i8*, i8** %__ptr_pu47, align 8, !dbg !6258
  %57 = load i8, i8* %__val_pu48, align 1, !dbg !6258
  %58 = call { i8*, i64 } asm sideeffect "call __put_user_${4:P}", "={cx},={rsp},0,{rax},i,1,~{ebx},~{dirflag},~{fpsr},~{flags}"(i8* %56, i8 %57, i64 1, i64 %55) #5, !dbg !6258, !srcloc !6261
  %asmresult50 = extractvalue { i8*, i64 } %58, 0, !dbg !6258
  %asmresult51 = extractvalue { i8*, i64 } %58, 1, !dbg !6258
  %59 = ptrtoint i8* %asmresult50 to i64, !dbg !6258
  %60 = trunc i64 %59 to i32, !dbg !6258
  store i32 %60, i32* %__ret_pu46, align 4, !dbg !6258
  call void @llvm.write_register.i64(metadata !4167, i64 %asmresult51), !dbg !6258
  %61 = load i32, i32* %__ret_pu46, align 4, !dbg !6258
  %conv53 = sext i32 %61 to i64, !dbg !6258
  store i64 %conv53, i64* %tmp52, align 8, !dbg !6258
  %62 = load i64, i64* %tmp52, align 8, !dbg !6258
  store i64 %62, i64* %tmp45, align 8, !dbg !6254
  %63 = load i64, i64* %tmp45, align 8, !dbg !6254
  %cmp54 = icmp slt i64 %63, 0, !dbg !6262
  br i1 %cmp54, label %if.then, label %lor.lhs.false56, !dbg !6263

lor.lhs.false56:                                  ; preds = %lor.lhs.false44
  %64 = load %struct.termio*, %struct.termio** %termio.addr, align 8, !dbg !6264
  %c_cc = getelementptr inbounds %struct.termio, %struct.termio* %64, i32 0, i32 5, !dbg !6265
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %c_cc, i64 0, i64 0, !dbg !6264
  %65 = load %struct.ktermios*, %struct.ktermios** %termios.addr, align 8, !dbg !6266
  %c_cc57 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %65, i32 0, i32 5, !dbg !6267
  %arraydecay58 = getelementptr inbounds [19 x i8], [19 x i8]* %c_cc57, i64 0, i64 0, !dbg !6266
  store i8* %arraydecay, i8** %to.addr.i, align 8
  store i8* %arraydecay58, i8** %from.addr.i, align 8
  store i64 8, i64* %n.addr.i, align 8
  %66 = load i8*, i8** %from.addr.i, align 8, !dbg !6268
  %67 = load i64, i64* %n.addr.i, align 8, !dbg !6268
  store i8* %66, i8** %addr.addr.i.i, align 8
  store i64 %67, i64* %bytes.addr.i.i, align 8
  store i8 1, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !6205
  %68 = load i32, i32* %sz.i.i, align 4, !dbg !6269
  %cmp.i.i = icmp sge i32 %68, 0, !dbg !6269
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !6269

land.rhs.i.i:                                     ; preds = %lor.lhs.false56
  %69 = load i32, i32* %sz.i.i, align 4, !dbg !6269
  %conv.i.i = sext i32 %69 to i64, !dbg !6269
  %70 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6269
  %cmp1.i.i = icmp ult i64 %conv.i.i, %70, !dbg !6269
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %lor.lhs.false56
  %71 = phi i1 [ false, %lor.lhs.false56 ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !6270
  %lnot.i.i = xor i1 %71, true, !dbg !6269
  %lnot.ext.i.i = zext i1 %71 to i32, !dbg !6269
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6269
  br i1 %71, label %if.then.i.i, label %if.end10.i.i, !dbg !6271

if.then.i.i:                                      ; preds = %land.end.i.i
  %72 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6272
  %73 = call i1 @llvm.is.constant.i64(i64 %72) #5, !dbg !6273
  br i1 %73, label %if.else.i.i, label %if.then5.i.i, !dbg !6274

if.then5.i.i:                                     ; preds = %if.then.i.i
  %74 = load i32, i32* %sz.i.i, align 4, !dbg !6275
  %75 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6276
  call void @copy_overflow(i32 %74, i64 %75) #8, !dbg !6277
  br label %if.end9.i.i, !dbg !6277

if.else.i.i:                                      ; preds = %if.then.i.i
  %76 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !6278
  %tobool6.i.i = trunc i8 %76 to i1, !dbg !6278
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !6279

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #8, !dbg !6280
  br label %if.end.i.i, !dbg !6280

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #8, !dbg !6281
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !6282
  br label %check_copy_size.exit.i, !dbg !6282

if.end10.i.i:                                     ; preds = %land.end.i.i
  %77 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6206
  %cmp11.i.i = icmp ugt i64 %77, 2147483647, !dbg !6206
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !6206
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !6206
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !6206
  %78 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !6283
  %tobool17.i.i = icmp ne i32 %78, 0, !dbg !6283
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !6283
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !6283
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !6283
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !6206

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #5, !dbg !6284, !srcloc !5013
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #5, !dbg !6285, !srcloc !5016
  br label %if.end31.i.i, !dbg !6286

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %79 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !6206
  %tobool32.i.i = icmp ne i32 %79, 0, !dbg !6206
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !6206
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !6206
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !6206
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !6283
  %80 = load i64, i64* %tmp.i.i, align 8, !dbg !6206
  %tobool38.i.i = icmp ne i64 %80, 0, !dbg !6287
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !6288

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !6289
  br label %check_copy_size.exit.i, !dbg !6289

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %81 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !6290
  %82 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6291
  %83 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !6292
  %tobool41.i.i = trunc i8 %83 to i1, !dbg !6292
  call void @check_object_size(i8* %81, i64 %82, i1 zeroext %tobool41.i.i) #8, !dbg !6293
  store i1 true, i1* %retval.i.i, align 1, !dbg !6294
  br label %check_copy_size.exit.i, !dbg !6294

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %84 = load i1, i1* %retval.i.i, align 1, !dbg !6295
  %lnot.i = xor i1 %84, true, !dbg !6268
  %lnot.ext.i = zext i1 %84 to i32, !dbg !6268
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !6268
  br i1 %84, label %if.then.i, label %copy_to_user.exit, !dbg !6296

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %85 = load i8*, i8** %to.addr.i, align 8, !dbg !6297
  %86 = load i8*, i8** %from.addr.i, align 8, !dbg !6298
  %87 = load i64, i64* %n.addr.i, align 8, !dbg !6299
  %call2.i = call i64 @_copy_to_user(i8* %85, i8* %86, i64 %87) #8, !dbg !6300
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !6301
  br label %copy_to_user.exit, !dbg !6302

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i
  %88 = load i64, i64* %n.addr.i, align 8, !dbg !6303
  %cmp59 = icmp ne i64 %88, 0, !dbg !6304
  br i1 %cmp59, label %if.then, label %if.end, !dbg !6305

if.then:                                          ; preds = %copy_to_user.exit, %lor.lhs.false44, %lor.lhs.false31, %lor.lhs.false18, %lor.lhs.false, %entry
  store i32 -14, i32* %retval, align 4, !dbg !6306
  br label %return, !dbg !6306

if.end:                                           ; preds = %copy_to_user.exit
  store i32 0, i32* %retval, align 4, !dbg !6307
  br label %return, !dbg !6307

return:                                           ; preds = %if.end, %if.then
  %89 = load i32, i32* %retval, align 4, !dbg !6308
  ret i32 %89, !dbg !6308
}

; Function Attrs: noredzone
declare dso_local i64 @_copy_to_user(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !6309 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6311, metadata !DIExpression()), !dbg !6313
  %0 = load i64, i64* %__edi, align 8, !dbg !6313
  store i64 %0, i64* %__edi, align 8, !dbg !6313
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6314, metadata !DIExpression()), !dbg !6313
  %1 = load i64, i64* %__esi, align 8, !dbg !6313
  store i64 %1, i64* %__esi, align 8, !dbg !6313
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6315, metadata !DIExpression()), !dbg !6313
  %2 = load i64, i64* %__edx, align 8, !dbg !6313
  store i64 %2, i64* %__edx, align 8, !dbg !6313
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6316, metadata !DIExpression()), !dbg !6313
  %3 = load i64, i64* %__ecx, align 8, !dbg !6313
  store i64 %3, i64* %__ecx, align 8, !dbg !6313
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6317, metadata !DIExpression()), !dbg !6313
  %4 = load i64, i64* %__eax, align 8, !dbg !6313
  store i64 %4, i64* %__eax, align 8, !dbg !6313
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !6313
  %6 = call i64 @llvm.read_register.i64(metadata !4167), !dbg !6313
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #5, !dbg !6313, !srcloc !6318
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6313
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6313
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6313
  call void @llvm.write_register.i64(metadata !4167, i64 %asmresult1), !dbg !6313
  ret void, !dbg !6319
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_enable() #0 !dbg !6320 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6321, metadata !DIExpression()), !dbg !6323
  %0 = load i64, i64* %__edi, align 8, !dbg !6323
  store i64 %0, i64* %__edi, align 8, !dbg !6323
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6324, metadata !DIExpression()), !dbg !6323
  %1 = load i64, i64* %__esi, align 8, !dbg !6323
  store i64 %1, i64* %__esi, align 8, !dbg !6323
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6325, metadata !DIExpression()), !dbg !6323
  %2 = load i64, i64* %__edx, align 8, !dbg !6323
  store i64 %2, i64* %__edx, align 8, !dbg !6323
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6326, metadata !DIExpression()), !dbg !6323
  %3 = load i64, i64* %__ecx, align 8, !dbg !6323
  store i64 %3, i64* %__ecx, align 8, !dbg !6323
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6327, metadata !DIExpression()), !dbg !6323
  %4 = load i64, i64* %__eax, align 8, !dbg !6323
  store i64 %4, i64* %__eax, align 8, !dbg !6323
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), align 8, !dbg !6323
  %6 = call i64 @llvm.read_register.i64(metadata !4167), !dbg !6323
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 39, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), i32 1, i64 %6) #5, !dbg !6323, !srcloc !6328
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6323
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6323
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6323
  call void @llvm.write_register.i64(metadata !4167, i64 %asmresult1), !dbg !6323
  ret void, !dbg !6329
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { noredzone }
attributes #8 = { noredzone nounwind }
attributes #9 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.named.register.rsp = !{!4167}
!llvm.module.flags = !{!4168, !4169, !4170, !4171}
!llvm.ident = !{!4172}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !96, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/tty/tty_ioctl.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !11, !17, !22, !28, !35, !41, !50, !58, !64, !70, !77, !85, !91}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !4, line: 15, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !12, line: 546, baseType: !5, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !18, line: 65, baseType: !5, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !23, line: 16, baseType: !5, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!24 = !{!25, !26, !27}
!25 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!26 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!27 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !29, line: 59, baseType: !5, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!30 = !{!31, !32, !33, !34}
!31 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!32 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!33 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!34 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !36, line: 54, baseType: !5, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!37 = !{!38, !39, !40}
!38 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!39 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!40 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !42, line: 296, baseType: !5, size: 32, elements: !43)
!42 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!43 = !{!44, !45, !46, !47, !48, !49}
!44 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!45 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!46 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!47 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!48 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!49 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !51, line: 9, baseType: !5, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55, !56, !57}
!53 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!56 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!57 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !59, line: 26, baseType: !5, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!60 = !{!61, !62, !63}
!61 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!62 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!63 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !65, line: 44, baseType: !5, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68, !69}
!67 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!69 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !71, line: 343, baseType: !5, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!72 = !{!73, !74, !75, !76}
!73 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!74 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!75 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!76 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !78, line: 524, baseType: !5, size: 32, elements: !79)
!78 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!79 = !{!80, !81, !82, !83, !84}
!80 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!81 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!82 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!83 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!84 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !78, line: 502, baseType: !5, size: 32, elements: !86)
!86 = !{!87, !88, !89, !90}
!87 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!88 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!89 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!90 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !92, line: 10, baseType: !5, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!93 = !{!94, !95}
!94 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!95 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!96 = !{!97, !98, !99, !115, !127, !129, !5, !130, !132, !135, !137, !142, !110, !128, !151, !152, !131}
!97 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "termios", file: !101, line: 12, size: 288, elements: !102)
!101 = !DIFile(filename: "./include/uapi/asm-generic/termbits.h", directory: "/home/lizy2001/genbc/linux")
!102 = !{!103, !105, !106, !107, !108, !111}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !100, file: !101, line: 13, baseType: !104, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !101, line: 9, baseType: !5)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !100, file: !101, line: 14, baseType: !104, size: 32, offset: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !100, file: !101, line: 15, baseType: !104, size: 32, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !100, file: !101, line: 16, baseType: !104, size: 32, offset: 96)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !100, file: !101, line: 17, baseType: !109, size: 8, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !101, line: 7, baseType: !110)
!110 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !100, file: !101, line: 18, baseType: !112, size: 152, offset: 136)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 152, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 19)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "termios2", file: !101, line: 21, size: 352, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124, !126}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !116, file: !101, line: 22, baseType: !104, size: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !116, file: !101, line: 23, baseType: !104, size: 32, offset: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !116, file: !101, line: 24, baseType: !104, size: 32, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !116, file: !101, line: 25, baseType: !104, size: 32, offset: 96)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !116, file: !101, line: 26, baseType: !109, size: 8, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !116, file: !101, line: 27, baseType: !112, size: 152, offset: 136)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !116, file: !101, line: 28, baseType: !125, size: 32, offset: 288)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !101, line: 8, baseType: !5)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !116, file: !101, line: 29, baseType: !125, size: 32, offset: 320)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !134)
!134 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !97)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "termio", file: !139, line: 23, size: 144, elements: !140)
!139 = !DIFile(filename: "./include/uapi/asm-generic/termios.h", directory: "/home/lizy2001/genbc/linux")
!140 = !{!141, !143, !144, !145, !146, !147}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !138, file: !139, line: 24, baseType: !142, size: 16)
!142 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !138, file: !139, line: 25, baseType: !142, size: 16, offset: 16)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !138, file: !139, line: 26, baseType: !142, size: 16, offset: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !138, file: !139, line: 27, baseType: !142, size: 16, offset: 48)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !138, file: !139, line: 28, baseType: !110, size: 8, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !138, file: !139, line: 29, baseType: !148, size: 64, offset: 72)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 64, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 8)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !154, line: 640, size: 48640, elements: !155)
!154 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!155 = !{!156, !166, !167, !168, !179, !180, !181, !182, !183, !184, !185, !186, !190, !224, !235, !342, !343, !344, !355, !356, !358, !359, !2686, !2687, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2764, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2779, !2780, !2781, !2783, !2784, !2785, !2786, !2787, !2788, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2812, !2817, !2818, !2819, !2820, !2821, !2823, !2826, !2829, !2832, !2835, !2838, !3728, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3774, !3775, !3776, !3777, !3778, !3783, !3784, !3785, !3788, !3789, !3792, !3795, !3798, !3799, !3831, !3834, !3835, !3914, !3915, !3918, !3919, !3922, !3923, !3924, !3928, !3929, !3930, !3943, !3944, !3945, !3955, !3960, !3961, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !153, file: !154, line: 646, baseType: !157, size: 128)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !158, line: 56, size: 128, elements: !159)
!158 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!159 = !{!160, !161}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !157, file: !158, line: 57, baseType: !131, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !157, file: !158, line: 58, baseType: !162, size: 32, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !163, line: 21, baseType: !164)
!163 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !165, line: 27, baseType: !5)
!165 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!166 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !153, file: !154, line: 649, baseType: !136, size: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !153, file: !154, line: 657, baseType: !98, size: 64, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !153, file: !154, line: 658, baseType: !169, size: 32, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !170, line: 113, baseType: !171)
!170 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !170, line: 111, size: 32, elements: !172)
!172 = !{!173}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !171, file: !170, line: 112, baseType: !174, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !175, line: 168, baseType: !176)
!175 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !175, line: 166, size: 32, elements: !177)
!177 = !{!178}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !176, file: !175, line: 167, baseType: !128, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !153, file: !154, line: 660, baseType: !5, size: 32, offset: 288)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !153, file: !154, line: 661, baseType: !5, size: 32, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !153, file: !154, line: 684, baseType: !128, size: 32, offset: 352)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !153, file: !154, line: 686, baseType: !128, size: 32, offset: 384)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !153, file: !154, line: 687, baseType: !128, size: 32, offset: 416)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !153, file: !154, line: 688, baseType: !128, size: 32, offset: 448)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !153, file: !154, line: 689, baseType: !5, size: 32, offset: 480)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !153, file: !154, line: 691, baseType: !187, size: 64, offset: 512)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!189 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !154, line: 691, flags: DIFlagFwdDecl)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !153, file: !154, line: 692, baseType: !191, size: 832, offset: 576)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !154, line: 451, size: 832, elements: !192)
!192 = !{!193, !198, !206, !212, !213, !217, !218, !219, !220, !221}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !191, file: !154, line: 453, baseType: !194, size: 128)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !154, line: 325, size: 128, elements: !195)
!195 = !{!196, !197}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !194, file: !154, line: 326, baseType: !131, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !194, file: !154, line: 327, baseType: !162, size: 32, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !191, file: !154, line: 454, baseType: !199, size: 192, align: 64, offset: 128)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !200, line: 24, size: 192, align: 64, elements: !201)
!200 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!201 = !{!202, !203, !205}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !199, file: !200, line: 25, baseType: !131, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !199, file: !200, line: 26, baseType: !204, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !199, file: !200, line: 27, baseType: !204, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !191, file: !154, line: 455, baseType: !207, size: 128, offset: 320)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !175, line: 178, size: 128, elements: !208)
!208 = !{!209, !211}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !207, file: !175, line: 179, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !207, file: !175, line: 179, baseType: !210, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !191, file: !154, line: 456, baseType: !5, size: 32, offset: 448)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !191, file: !154, line: 458, baseType: !214, size: 64, offset: 512)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !163, line: 23, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !165, line: 31, baseType: !216)
!216 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !191, file: !154, line: 459, baseType: !214, size: 64, offset: 576)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !191, file: !154, line: 460, baseType: !214, size: 64, offset: 640)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !191, file: !154, line: 461, baseType: !214, size: 64, offset: 704)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !191, file: !154, line: 463, baseType: !214, size: 64, offset: 768)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !191, file: !154, line: 465, baseType: !222, offset: 832)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !154, line: 415, elements: !223)
!223 = !{}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !153, file: !154, line: 693, baseType: !225, size: 384, offset: 1408)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !154, line: 489, size: 384, elements: !226)
!226 = !{!227, !228, !229, !230, !231, !232, !233}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !225, file: !154, line: 490, baseType: !207, size: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !225, file: !154, line: 491, baseType: !131, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !225, file: !154, line: 492, baseType: !131, size: 64, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !225, file: !154, line: 493, baseType: !5, size: 32, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !225, file: !154, line: 494, baseType: !142, size: 16, offset: 288)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !225, file: !154, line: 495, baseType: !142, size: 16, offset: 304)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !225, file: !154, line: 497, baseType: !234, size: 64, offset: 320)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !153, file: !154, line: 697, baseType: !236, size: 1792, offset: 1792)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !154, line: 507, size: 1792, elements: !237)
!237 = !{!238, !239, !240, !241, !242, !243, !244, !248, !249, !250, !251, !252, !253, !254, !339, !340}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !236, file: !154, line: 508, baseType: !199, size: 192, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !236, file: !154, line: 515, baseType: !214, size: 64, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !236, file: !154, line: 516, baseType: !214, size: 64, offset: 256)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !236, file: !154, line: 517, baseType: !214, size: 64, offset: 320)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !236, file: !154, line: 518, baseType: !214, size: 64, offset: 384)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !236, file: !154, line: 519, baseType: !214, size: 64, offset: 448)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !236, file: !154, line: 526, baseType: !245, size: 64, offset: 512)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !163, line: 22, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !165, line: 30, baseType: !247)
!247 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !236, file: !154, line: 527, baseType: !214, size: 64, offset: 576)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !236, file: !154, line: 528, baseType: !5, size: 32, offset: 640)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !236, file: !154, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !236, file: !154, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !236, file: !154, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !236, file: !154, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !236, file: !154, line: 563, baseType: !255, size: 512, offset: 704)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !18, line: 118, size: 512, elements: !256)
!256 = !{!257, !265, !266, !271, !333, !336, !337, !338}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !255, file: !18, line: 119, baseType: !258, size: 256)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !259, line: 9, size: 256, elements: !260)
!259 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!260 = !{!261, !262}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !258, file: !259, line: 10, baseType: !199, size: 192, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !258, file: !259, line: 11, baseType: !263, size: 64, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !264, line: 29, baseType: !245)
!264 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !255, file: !18, line: 120, baseType: !263, size: 64, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !255, file: !18, line: 121, baseType: !267, size: 64, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!17, !270}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !255, file: !18, line: 122, baseType: !272, size: 64, offset: 384)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !18, line: 159, size: 512, align: 512, elements: !274)
!274 = !{!275, !301, !302, !306, !316, !317, !328, !332}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !273, file: !18, line: 160, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !18, line: 214, size: 4608, align: 512, elements: !278)
!278 = !{!279, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !277, file: !18, line: 215, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !281, line: 29, baseType: !282)
!281 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !281, line: 20, elements: !283)
!283 = !{!284}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !282, file: !281, line: 21, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !286, line: 25, baseType: !287)
!286 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !286, line: 25, elements: !223)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !277, file: !18, line: 216, baseType: !5, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !277, file: !18, line: 217, baseType: !5, size: 32, offset: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !277, file: !18, line: 218, baseType: !5, size: 32, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !277, file: !18, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !277, file: !18, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !277, file: !18, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !277, file: !18, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !277, file: !18, line: 233, baseType: !263, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !277, file: !18, line: 234, baseType: !270, size: 64, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !277, file: !18, line: 235, baseType: !263, size: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !277, file: !18, line: 236, baseType: !270, size: 64, offset: 320)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !277, file: !18, line: 237, baseType: !300, size: 4096, offset: 512)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 4096, elements: !149)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !273, file: !18, line: 161, baseType: !5, size: 32, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !273, file: !18, line: 162, baseType: !303, size: 32, offset: 96)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !175, line: 27, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !305, line: 96, baseType: !128)
!305 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!306 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !273, file: !18, line: 163, baseType: !307, size: 32, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !308, line: 276, baseType: !309)
!308 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !308, line: 276, size: 32, elements: !310)
!310 = !{!311}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !309, file: !308, line: 276, baseType: !312, size: 32)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !308, line: 70, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !308, line: 65, size: 32, elements: !314)
!314 = !{!315}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !313, file: !308, line: 66, baseType: !5, size: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !273, file: !18, line: 164, baseType: !270, size: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !273, file: !18, line: 165, baseType: !318, size: 128, offset: 256)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !259, line: 14, size: 128, elements: !319)
!319 = !{!320}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !318, file: !259, line: 15, baseType: !321, size: 128)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !200, line: 125, size: 128, elements: !322)
!322 = !{!323, !327}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !321, file: !200, line: 126, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !200, line: 31, size: 64, elements: !325)
!325 = !{!326}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !324, file: !200, line: 32, baseType: !204, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !321, file: !200, line: 127, baseType: !204, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !273, file: !18, line: 166, baseType: !329, size: 64, offset: 384)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!263}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !273, file: !18, line: 167, baseType: !263, size: 64, offset: 448)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !255, file: !18, line: 123, baseType: !334, size: 8, offset: 448)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !163, line: 17, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !165, line: 21, baseType: !110)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !255, file: !18, line: 124, baseType: !334, size: 8, offset: 456)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !255, file: !18, line: 125, baseType: !334, size: 8, offset: 464)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !255, file: !18, line: 126, baseType: !334, size: 8, offset: 472)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !236, file: !154, line: 572, baseType: !255, size: 512, offset: 1216)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !236, file: !154, line: 580, baseType: !341, size: 64, offset: 1728)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !153, file: !154, line: 721, baseType: !5, size: 32, offset: 3584)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !153, file: !154, line: 722, baseType: !128, size: 32, offset: 3616)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !153, file: !154, line: 723, baseType: !345, size: 64, offset: 3648)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !348, line: 17, baseType: !349)
!348 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !348, line: 17, size: 64, elements: !350)
!350 = !{!351}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !349, file: !348, line: 17, baseType: !352, size: 64)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 64, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 1)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !153, file: !154, line: 724, baseType: !347, size: 64, offset: 3712)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !153, file: !154, line: 749, baseType: !357, offset: 3776)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !154, line: 290, elements: !223)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !153, file: !154, line: 751, baseType: !207, size: 128, offset: 3776)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !153, file: !154, line: 757, baseType: !360, size: 64, offset: 3904)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !362, line: 388, size: 7296, elements: !363)
!362 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!363 = !{!364, !2682}
!364 = !DIDerivedType(tag: DW_TAG_member, scope: !361, file: !362, line: 389, baseType: !365, size: 7296)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !361, file: !362, line: 389, size: 7296, elements: !366)
!366 = !{!367, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2605, !2611, !2614, !2653, !2654, !2666, !2667, !2670, !2671, !2672, !2675, !2676, !2677, !2680, !2681}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !365, file: !362, line: 390, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !362, line: 305, size: 1472, elements: !370)
!370 = !{!371, !372, !373, !374, !375, !376, !377, !378, !386, !387, !392, !393, !396, !2551, !2552, !2553, !2554, !2555}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !369, file: !362, line: 308, baseType: !131, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !369, file: !362, line: 309, baseType: !131, size: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !369, file: !362, line: 313, baseType: !368, size: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !369, file: !362, line: 313, baseType: !368, size: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !369, file: !362, line: 315, baseType: !199, size: 192, align: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !369, file: !362, line: 323, baseType: !131, size: 64, offset: 448)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !369, file: !362, line: 327, baseType: !360, size: 64, offset: 512)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !369, file: !362, line: 333, baseType: !379, size: 64, offset: 576)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !380, line: 284, baseType: !381)
!380 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !380, line: 284, size: 64, elements: !382)
!382 = !{!383}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !381, file: !380, line: 284, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !385, line: 19, baseType: !131)
!385 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!386 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !369, file: !362, line: 334, baseType: !131, size: 64, offset: 640)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !369, file: !362, line: 343, baseType: !388, size: 256, offset: 704)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !369, file: !362, line: 340, size: 256, elements: !389)
!389 = !{!390, !391}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !388, file: !362, line: 341, baseType: !199, size: 192, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !388, file: !362, line: 342, baseType: !131, size: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !369, file: !362, line: 351, baseType: !207, size: 128, offset: 960)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !369, file: !362, line: 353, baseType: !394, size: 64, offset: 1088)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !362, line: 353, flags: DIFlagFwdDecl)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !369, file: !362, line: 356, baseType: !397, size: 64, offset: 1152)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !12, line: 557, size: 832, elements: !400)
!400 = !{!401, !405, !406, !410, !414, !2525, !2529, !2533, !2537, !2538, !2539, !2543, !2547}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !399, file: !12, line: 558, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !368}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !399, file: !12, line: 559, baseType: !402, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !399, file: !12, line: 560, baseType: !407, size: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{!128, !368, !131}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !399, file: !12, line: 561, baseType: !411, size: 64, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{!128, !368}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !399, file: !12, line: 562, baseType: !415, size: 64, offset: 256)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!418, !419}
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !362, line: 682, baseType: !5)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !12, line: 508, size: 768, elements: !421)
!421 = !{!422, !423, !424, !426, !427, !428, !435, !442, !448, !2519, !2520, !2522, !2524}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !420, file: !12, line: 509, baseType: !368, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !420, file: !12, line: 510, baseType: !5, size: 32, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !420, file: !12, line: 511, baseType: !425, size: 32, offset: 96)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !175, line: 148, baseType: !5)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !420, file: !12, line: 512, baseType: !131, size: 64, offset: 128)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !420, file: !12, line: 513, baseType: !131, size: 64, offset: 192)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !420, file: !12, line: 514, baseType: !429, size: 64, offset: 256)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !380, line: 385, baseType: !431)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !380, line: 385, size: 64, elements: !432)
!432 = !{!433}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !431, file: !380, line: 385, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !385, line: 15, baseType: !131)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !420, file: !12, line: 516, baseType: !436, size: 64, offset: 320)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !380, line: 359, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !380, line: 359, size: 64, elements: !439)
!439 = !{!440}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !438, file: !380, line: 359, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !385, line: 16, baseType: !131)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !420, file: !12, line: 519, baseType: !443, size: 64, offset: 384)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !385, line: 21, baseType: !444)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !385, line: 21, size: 64, elements: !445)
!445 = !{!446}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !444, file: !385, line: 21, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !385, line: 14, baseType: !131)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !420, file: !12, line: 521, baseType: !449, size: 64, offset: 448)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !362, line: 68, size: 512, align: 128, elements: !451)
!451 = !{!452, !453, !2511, !2518}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !450, file: !362, line: 69, baseType: !131, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, scope: !450, file: !362, line: 77, baseType: !454, size: 320, offset: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !450, file: !362, line: 77, size: 320, elements: !455)
!455 = !{!456, !2371, !2376, !2405, !2413, !2419, !2432, !2510}
!456 = !DIDerivedType(tag: DW_TAG_member, scope: !454, file: !362, line: 78, baseType: !457, size: 320)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !454, file: !362, line: 78, size: 320, elements: !458)
!458 = !{!459, !460, !2369, !2370}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !457, file: !362, line: 84, baseType: !207, size: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !457, file: !362, line: 86, baseType: !461, size: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !42, line: 451, size: 1216, align: 64, elements: !463)
!463 = !{!464, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2364, !2365, !2366, !2367, !2368}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !462, file: !42, line: 452, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !42, line: 610, size: 4224, elements: !467)
!467 = !{!468, !470, !471, !479, !486, !487, !1891, !1892, !1893, !1894, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1935, !1943, !1944, !1945, !2258, !2259, !2260, !2261}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !466, file: !42, line: 611, baseType: !469, size: 16)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !175, line: 19, baseType: !142)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !466, file: !42, line: 612, baseType: !142, size: 16, offset: 16)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !466, file: !42, line: 613, baseType: !472, size: 32, offset: 32)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !473, line: 23, baseType: !474)
!473 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !473, line: 21, size: 32, elements: !475)
!475 = !{!476}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !474, file: !473, line: 22, baseType: !477, size: 32)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !175, line: 32, baseType: !478)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !305, line: 49, baseType: !5)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !466, file: !42, line: 614, baseType: !480, size: 32, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !473, line: 28, baseType: !481)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !473, line: 26, size: 32, elements: !482)
!482 = !{!483}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !481, file: !473, line: 27, baseType: !484, size: 32)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !175, line: 33, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !305, line: 50, baseType: !5)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !466, file: !42, line: 615, baseType: !5, size: 32, offset: 96)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !466, file: !42, line: 622, baseType: !488, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !42, line: 1864, size: 1536, align: 512, elements: !491)
!491 = !{!492, !1765, !1778, !1782, !1788, !1792, !1796, !1800, !1804, !1808, !1812, !1813, !1817, !1821, !1841, !1867, !1871, !1877, !1882, !1886, !1887}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !490, file: !42, line: 1865, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!496, !465, !496, !5}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !498, line: 89, size: 1536, elements: !499)
!498 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!499 = !{!500, !501, !506, !514, !515, !530, !531, !535, !554, !627, !1749, !1750, !1751, !1757, !1758, !1759}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !497, file: !498, line: 91, baseType: !5, size: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !497, file: !498, line: 92, baseType: !502, size: 32, offset: 32)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !308, line: 277, baseType: !503)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !308, line: 277, size: 32, elements: !504)
!504 = !{!505}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !503, file: !308, line: 277, baseType: !312, size: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !497, file: !498, line: 93, baseType: !507, size: 128, offset: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !508, line: 38, size: 128, elements: !509)
!508 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!509 = !{!510, !512}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !507, file: !508, line: 39, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !507, file: !508, line: 39, baseType: !513, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !497, file: !498, line: 94, baseType: !496, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !497, file: !498, line: 95, baseType: !516, size: 128, offset: 256)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !498, line: 47, size: 128, elements: !517)
!517 = !{!518, !527}
!518 = !DIDerivedType(tag: DW_TAG_member, scope: !516, file: !498, line: 48, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !516, file: !498, line: 48, size: 64, elements: !520)
!520 = !{!521, !526}
!521 = !DIDerivedType(tag: DW_TAG_member, scope: !519, file: !498, line: 49, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !519, file: !498, line: 49, size: 64, elements: !523)
!523 = !{!524, !525}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !522, file: !498, line: 50, baseType: !162, size: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !522, file: !498, line: 50, baseType: !162, size: 32, offset: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !519, file: !498, line: 52, baseType: !214, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !516, file: !498, line: 54, baseType: !528, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !497, file: !498, line: 96, baseType: !465, size: 64, offset: 384)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !497, file: !498, line: 98, baseType: !532, size: 256, offset: 448)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 256, elements: !533)
!533 = !{!534}
!534 = !DISubrange(count: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !497, file: !498, line: 101, baseType: !536, size: 32, offset: 704)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !537, line: 25, size: 32, elements: !538)
!537 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!538 = !{!539}
!539 = !DIDerivedType(tag: DW_TAG_member, scope: !536, file: !537, line: 26, baseType: !540, size: 32)
!540 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !536, file: !537, line: 26, size: 32, elements: !541)
!541 = !{!542}
!542 = !DIDerivedType(tag: DW_TAG_member, scope: !540, file: !537, line: 30, baseType: !543, size: 32)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !540, file: !537, line: 30, size: 32, elements: !544)
!544 = !{!545, !553}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !543, file: !537, line: 31, baseType: !546)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !281, line: 83, baseType: !547)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !281, line: 71, elements: !548)
!548 = !{!549}
!549 = !DIDerivedType(tag: DW_TAG_member, scope: !547, file: !281, line: 72, baseType: !550)
!550 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !547, file: !281, line: 72, elements: !551)
!551 = !{!552}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !550, file: !281, line: 73, baseType: !282)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !543, file: !537, line: 32, baseType: !128, size: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !497, file: !498, line: 102, baseType: !555, size: 64, offset: 768)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !557)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !498, line: 135, size: 1024, align: 512, elements: !558)
!558 = !{!559, !563, !564, !571, !579, !583, !587, !591, !592, !596, !601, !613, !621}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !557, file: !498, line: 136, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!128, !496, !5}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !557, file: !498, line: 137, baseType: !560, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !557, file: !498, line: 138, baseType: !565, size: 64, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!128, !568, !570}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !497)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !557, file: !498, line: 139, baseType: !572, size: 64, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!128, !568, !5, !575, !577}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !516)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !557, file: !498, line: 141, baseType: !580, size: 64, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!128, !568}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !557, file: !498, line: 142, baseType: !584, size: 64, offset: 320)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!128, !496}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !557, file: !498, line: 143, baseType: !588, size: 64, offset: 384)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{null, !496}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !557, file: !498, line: 144, baseType: !588, size: 64, offset: 448)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !557, file: !498, line: 145, baseType: !593, size: 64, offset: 512)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !496, !465}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !557, file: !498, line: 146, baseType: !597, size: 64, offset: 576)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!600, !496, !600, !128}
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !557, file: !498, line: 147, baseType: !602, size: 64, offset: 640)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!605, !607}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !498, line: 18, flags: DIFlagFwdDecl)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !609, line: 8, size: 128, elements: !610)
!609 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!610 = !{!611, !612}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !608, file: !609, line: 9, baseType: !605, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !608, file: !609, line: 10, baseType: !496, size: 64, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !557, file: !498, line: 148, baseType: !614, size: 64, offset: 704)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!128, !617, !619}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !608)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !175, line: 30, baseType: !620)
!620 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !557, file: !498, line: 149, baseType: !622, size: 64, offset: 768)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!496, !496, !625}
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !497, file: !498, line: 103, baseType: !628, size: 64, offset: 832)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !42, line: 1416, size: 9472, elements: !630)
!630 = !{!631, !632, !635, !636, !637, !640, !691, !1401, !1483, !1566, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1582, !1586, !1587, !1590, !1593, !1596, !1597, !1598, !1639, !1665, !1666, !1667, !1668, !1669, !1670, !1673, !1675, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1705, !1706, !1707, !1708, !1709, !1713, !1714, !1715, !1730, !1731, !1732, !1743, !1744, !1745, !1746, !1747, !1748}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !629, file: !42, line: 1417, baseType: !207, size: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !629, file: !42, line: 1418, baseType: !633, size: 32, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !175, line: 16, baseType: !634)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !175, line: 13, baseType: !162)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !629, file: !42, line: 1419, baseType: !110, size: 8, offset: 160)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !629, file: !42, line: 1420, baseType: !131, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !629, file: !42, line: 1421, baseType: !638, size: 64, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !175, line: 46, baseType: !639)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !305, line: 88, baseType: !247)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !629, file: !42, line: 1422, baseType: !641, size: 64, offset: 320)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !42, line: 2228, size: 576, elements: !643)
!643 = !{!644, !645, !646, !652, !656, !660, !664, !668, !669, !679, !682, !683, !684, !688, !689, !690}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !642, file: !42, line: 2229, baseType: !575, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !642, file: !42, line: 2230, baseType: !128, size: 32, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !642, file: !42, line: 2238, baseType: !647, size: 64, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!128, !650}
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !42, line: 69, flags: DIFlagFwdDecl)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !642, file: !42, line: 2239, baseType: !653, size: 64, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !655)
!655 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !42, line: 70, flags: DIFlagFwdDecl)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !642, file: !42, line: 2240, baseType: !657, size: 64, offset: 256)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!496, !641, !128, !575, !98}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !642, file: !42, line: 2242, baseType: !661, size: 64, offset: 320)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !628}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !642, file: !42, line: 2243, baseType: !665, size: 64, offset: 384)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !667, line: 76, flags: DIFlagFwdDecl)
!667 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!668 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !642, file: !42, line: 2244, baseType: !641, size: 64, offset: 448)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !642, file: !42, line: 2245, baseType: !670, size: 64, offset: 512)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !175, line: 182, size: 64, elements: !671)
!671 = !{!672}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !670, file: !175, line: 183, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !175, line: 186, size: 128, elements: !675)
!675 = !{!676, !677}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !674, file: !175, line: 187, baseType: !673, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !674, file: !175, line: 187, baseType: !678, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !642, file: !42, line: 2247, baseType: !680, offset: 576)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !681, line: 187, elements: !223)
!681 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!682 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !642, file: !42, line: 2248, baseType: !680, offset: 576)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !642, file: !42, line: 2249, baseType: !680, offset: 576)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !642, file: !42, line: 2250, baseType: !685, offset: 576)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, elements: !686)
!686 = !{!687}
!687 = !DISubrange(count: 3)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !642, file: !42, line: 2252, baseType: !680, offset: 576)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !642, file: !42, line: 2253, baseType: !680, offset: 576)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !642, file: !42, line: 2254, baseType: !680, offset: 576)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !629, file: !42, line: 1423, baseType: !692, size: 64, offset: 384)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !694)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !42, line: 1935, size: 1472, elements: !695)
!695 = !{!696, !700, !704, !705, !709, !715, !719, !720, !721, !725, !729, !730, !731, !732, !738, !742, !743, !1378, !1379, !1380, !1381, !1385, !1400}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !694, file: !42, line: 1936, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!465, !628}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !694, file: !42, line: 1937, baseType: !701, size: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{null, !465}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !694, file: !42, line: 1938, baseType: !701, size: 64, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !694, file: !42, line: 1940, baseType: !706, size: 64, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{null, !465, !128}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !694, file: !42, line: 1941, baseType: !710, size: 64, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!128, !465, !713}
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !42, line: 289, flags: DIFlagFwdDecl)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !694, file: !42, line: 1942, baseType: !716, size: 64, offset: 320)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!128, !465}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !694, file: !42, line: 1943, baseType: !701, size: 64, offset: 384)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !694, file: !42, line: 1944, baseType: !661, size: 64, offset: 448)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !694, file: !42, line: 1945, baseType: !722, size: 64, offset: 512)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!128, !628, !128}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !694, file: !42, line: 1946, baseType: !726, size: 64, offset: 576)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!128, !628}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !694, file: !42, line: 1947, baseType: !726, size: 64, offset: 640)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !694, file: !42, line: 1948, baseType: !726, size: 64, offset: 704)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !694, file: !42, line: 1949, baseType: !726, size: 64, offset: 768)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !694, file: !42, line: 1950, baseType: !733, size: 64, offset: 832)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!128, !496, !736}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !42, line: 57, flags: DIFlagFwdDecl)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !694, file: !42, line: 1951, baseType: !739, size: 64, offset: 896)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!128, !628, !127, !600}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !694, file: !42, line: 1952, baseType: !661, size: 64, offset: 960)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !694, file: !42, line: 1954, baseType: !744, size: 64, offset: 1024)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!128, !747, !496}
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !749, line: 16, size: 896, elements: !750)
!749 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!750 = !{!751, !752, !756, !757, !758, !759, !760, !761, !774, !796, !797, !1377}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !748, file: !749, line: 17, baseType: !600, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !748, file: !749, line: 18, baseType: !753, size: 64, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !175, line: 55, baseType: !754)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !305, line: 72, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !305, line: 16, baseType: !131)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !748, file: !749, line: 19, baseType: !753, size: 64, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !748, file: !749, line: 20, baseType: !753, size: 64, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !748, file: !749, line: 21, baseType: !753, size: 64, offset: 256)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !748, file: !749, line: 22, baseType: !638, size: 64, offset: 320)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !748, file: !749, line: 23, baseType: !638, size: 64, offset: 384)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !748, file: !749, line: 24, baseType: !762, size: 192, offset: 448)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !763, line: 53, size: 192, elements: !764)
!763 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!764 = !{!765, !772, !773}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !762, file: !763, line: 54, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !767, line: 13, baseType: !768)
!767 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !175, line: 175, baseType: !769)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !175, line: 173, size: 64, elements: !770)
!770 = !{!771}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !769, file: !175, line: 174, baseType: !245, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !762, file: !763, line: 55, baseType: !546, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !762, file: !763, line: 59, baseType: !207, size: 128, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !748, file: !749, line: 25, baseType: !775, size: 64, offset: 640)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !777)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !749, line: 31, size: 256, elements: !778)
!778 = !{!779, !784, !788, !792}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !777, file: !749, line: 32, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!98, !747, !783}
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !777, file: !749, line: 33, baseType: !785, size: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{null, !747, !98}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !777, file: !749, line: 34, baseType: !789, size: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{!98, !747, !98, !783}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !777, file: !749, line: 35, baseType: !793, size: 64, offset: 192)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!128, !747, !98}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !748, file: !749, line: 26, baseType: !128, size: 32, offset: 704)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !748, file: !749, line: 27, baseType: !798, size: 64, offset: 768)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !800)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !42, line: 916, size: 1856, align: 32, elements: !801)
!801 = !{!802, !820, !821, !822, !1124, !1125, !1126, !1127, !1128, !1130, !1131, !1132, !1162, !1359, !1368, !1369, !1370, !1371, !1372, !1373, !1376}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !800, file: !42, line: 920, baseType: !803, size: 128)
!803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !800, file: !42, line: 917, size: 128, elements: !804)
!804 = !{!805, !811}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !803, file: !42, line: 918, baseType: !806, size: 64)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !807, line: 58, size: 64, elements: !808)
!807 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!808 = !{!809}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !806, file: !807, line: 59, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !803, file: !42, line: 919, baseType: !812, size: 128, align: 64)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !175, line: 216, size: 128, align: 64, elements: !813)
!813 = !{!814, !816}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !812, file: !175, line: 217, baseType: !815, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !812, file: !175, line: 218, baseType: !817, size: 64, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{null, !815}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !800, file: !42, line: 921, baseType: !608, size: 128, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !800, file: !42, line: 922, baseType: !465, size: 64, offset: 256)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !800, file: !42, line: 923, baseType: !823, size: 64, offset: 320)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !825)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !42, line: 1822, size: 2048, elements: !826)
!826 = !{!827, !828, !833, !840, !844, !911, !912, !916, !929, !930, !938, !942, !943, !947, !948, !952, !957, !958, !962, !966, !1081, !1085, !1089, !1093, !1094, !1098, !1102, !1107, !1111, !1115, !1119, !1123}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !825, file: !42, line: 1823, baseType: !665, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !825, file: !42, line: 1824, baseType: !829, size: 64, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!638, !832, !638, !128}
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !825, file: !42, line: 1825, baseType: !834, size: 64, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!837, !832, !600, !753, !783}
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !175, line: 60, baseType: !838)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !305, line: 73, baseType: !839)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !305, line: 15, baseType: !97)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !825, file: !42, line: 1826, baseType: !841, size: 64, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!837, !832, !575, !753, !783}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !825, file: !42, line: 1827, baseType: !845, size: 64, offset: 256)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!837, !848, !870}
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !42, line: 320, size: 384, elements: !850)
!850 = !{!851, !852, !853, !857, !858, !859, !862, !863}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !849, file: !42, line: 321, baseType: !832, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !849, file: !42, line: 326, baseType: !638, size: 64, offset: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !849, file: !42, line: 327, baseType: !854, size: 64, offset: 128)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !848, !97, !97}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !849, file: !42, line: 328, baseType: !98, size: 64, offset: 192)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !849, file: !42, line: 329, baseType: !128, size: 32, offset: 256)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !849, file: !42, line: 330, baseType: !860, size: 16, offset: 288)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !163, line: 19, baseType: !861)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !165, line: 24, baseType: !142)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !849, file: !42, line: 331, baseType: !860, size: 16, offset: 304)
!863 = !DIDerivedType(tag: DW_TAG_member, scope: !849, file: !42, line: 332, baseType: !864, size: 64, offset: 320)
!864 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !849, file: !42, line: 332, size: 64, elements: !865)
!865 = !{!866, !867}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !864, file: !42, line: 333, baseType: !5, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !864, file: !42, line: 334, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !42, line: 334, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !872, line: 29, size: 320, elements: !873)
!872 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!873 = !{!874, !875, !876, !877, !902}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !871, file: !872, line: 35, baseType: !5, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !871, file: !872, line: 36, baseType: !753, size: 64, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !871, file: !872, line: 37, baseType: !753, size: 64, offset: 128)
!877 = !DIDerivedType(tag: DW_TAG_member, scope: !871, file: !872, line: 38, baseType: !878, size: 64, offset: 192)
!878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !871, file: !872, line: 38, size: 64, elements: !879)
!879 = !{!880, !888, !895, !899}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !878, file: !872, line: 39, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !883)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !884, line: 17, size: 128, elements: !885)
!884 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!885 = !{!886, !887}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !883, file: !884, line: 19, baseType: !98, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !883, file: !884, line: 20, baseType: !754, size: 64, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !878, file: !872, line: 40, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !891)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !872, line: 15, size: 128, elements: !892)
!892 = !{!893, !894}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !891, file: !872, line: 16, baseType: !98, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !891, file: !872, line: 17, baseType: !753, size: 64, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !878, file: !872, line: 41, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !898)
!898 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !872, line: 41, flags: DIFlagFwdDecl)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !878, file: !872, line: 42, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !154, line: 53, flags: DIFlagFwdDecl)
!902 = !DIDerivedType(tag: DW_TAG_member, scope: !871, file: !872, line: 44, baseType: !903, size: 64, offset: 256)
!903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !871, file: !872, line: 44, size: 64, elements: !904)
!904 = !{!905, !906}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !903, file: !872, line: 45, baseType: !131, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, scope: !903, file: !872, line: 46, baseType: !907, size: 64)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !903, file: !872, line: 46, size: 64, elements: !908)
!908 = !{!909, !910}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !907, file: !872, line: 47, baseType: !5, size: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "start_head", scope: !907, file: !872, line: 48, baseType: !5, size: 32, offset: 32)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !825, file: !42, line: 1828, baseType: !845, size: 64, offset: 320)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !825, file: !42, line: 1829, baseType: !913, size: 64, offset: 384)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{!128, !848, !619}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !825, file: !42, line: 1830, baseType: !917, size: 64, offset: 448)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{!128, !832, !920}
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !42, line: 1776, size: 128, elements: !922)
!922 = !{!923, !928}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !921, file: !42, line: 1777, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !42, line: 1773, baseType: !925)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DISubroutineType(types: !927)
!927 = !{!128, !920, !575, !128, !638, !214, !5}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !921, file: !42, line: 1778, baseType: !638, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !825, file: !42, line: 1831, baseType: !917, size: 64, offset: 512)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !825, file: !42, line: 1832, baseType: !931, size: 64, offset: 576)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!934, !832, !936}
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !935, line: 52, baseType: !5)
!935 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !42, line: 56, flags: DIFlagFwdDecl)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !825, file: !42, line: 1833, baseType: !939, size: 64, offset: 640)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{!97, !832, !5, !131}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !825, file: !42, line: 1834, baseType: !939, size: 64, offset: 704)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !825, file: !42, line: 1835, baseType: !944, size: 64, offset: 768)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!128, !832, !368}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !825, file: !42, line: 1836, baseType: !131, size: 64, offset: 832)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !825, file: !42, line: 1837, baseType: !949, size: 64, offset: 896)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{!128, !465, !832}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !825, file: !42, line: 1838, baseType: !953, size: 64, offset: 960)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{!128, !832, !956}
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !42, line: 1007, baseType: !98)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !825, file: !42, line: 1839, baseType: !949, size: 64, offset: 1024)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !825, file: !42, line: 1840, baseType: !959, size: 64, offset: 1088)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{!128, !832, !638, !638, !128}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !825, file: !42, line: 1841, baseType: !963, size: 64, offset: 1152)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!128, !128, !832, !128}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !825, file: !42, line: 1842, baseType: !967, size: 64, offset: 1216)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!128, !832, !128, !970}
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !42, line: 1062, size: 1664, elements: !972)
!972 = !{!973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !990, !991, !992, !993, !1010, !1011, !1012, !1025, !1057}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !971, file: !42, line: 1063, baseType: !970, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !971, file: !42, line: 1064, baseType: !207, size: 128, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !971, file: !42, line: 1065, baseType: !674, size: 128, offset: 192)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !971, file: !42, line: 1066, baseType: !207, size: 128, offset: 320)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !971, file: !42, line: 1069, baseType: !207, size: 128, offset: 448)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !971, file: !42, line: 1072, baseType: !956, size: 64, offset: 576)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !971, file: !42, line: 1073, baseType: !5, size: 32, offset: 640)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !971, file: !42, line: 1074, baseType: !110, size: 8, offset: 672)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !971, file: !42, line: 1075, baseType: !5, size: 32, offset: 704)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !971, file: !42, line: 1076, baseType: !128, size: 32, offset: 736)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !971, file: !42, line: 1077, baseType: !984, size: 128, offset: 768)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !985, line: 40, baseType: !986)
!985 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !985, line: 36, size: 128, elements: !987)
!987 = !{!988, !989}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !986, file: !985, line: 37, baseType: !546)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !986, file: !985, line: 38, baseType: !207, size: 128)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !971, file: !42, line: 1078, baseType: !832, size: 64, offset: 896)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !971, file: !42, line: 1079, baseType: !638, size: 64, offset: 960)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !971, file: !42, line: 1080, baseType: !638, size: 64, offset: 1024)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !971, file: !42, line: 1082, baseType: !994, size: 64, offset: 1088)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !42, line: 1314, size: 320, elements: !996)
!996 = !{!997, !1005, !1006, !1007, !1008, !1009}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !995, file: !42, line: 1315, baseType: !998)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !999, line: 20, baseType: !1000)
!999 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !999, line: 11, elements: !1001)
!1001 = !{!1002}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1000, file: !999, line: 12, baseType: !1003)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !286, line: 33, baseType: !1004)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !286, line: 31, elements: !223)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !995, file: !42, line: 1316, baseType: !128, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !995, file: !42, line: 1317, baseType: !128, size: 32, offset: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !995, file: !42, line: 1318, baseType: !994, size: 64, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !995, file: !42, line: 1319, baseType: !832, size: 64, offset: 128)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !995, file: !42, line: 1320, baseType: !812, size: 128, align: 64, offset: 192)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !971, file: !42, line: 1084, baseType: !131, size: 64, offset: 1152)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !971, file: !42, line: 1085, baseType: !131, size: 64, offset: 1216)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !971, file: !42, line: 1087, baseType: !1013, size: 64, offset: 1280)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1015)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !42, line: 1011, size: 128, elements: !1016)
!1016 = !{!1017, !1021}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1015, file: !42, line: 1012, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{null, !970, !970}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1015, file: !42, line: 1013, baseType: !1022, size: 64, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{null, !970}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !971, file: !42, line: 1088, baseType: !1026, size: 64, offset: 1344)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1028)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !42, line: 1016, size: 512, elements: !1029)
!1029 = !{!1030, !1034, !1038, !1039, !1043, !1047, !1051, !1056}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1028, file: !42, line: 1017, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!956, !956}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1028, file: !42, line: 1018, baseType: !1035, size: 64, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{null, !956}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1028, file: !42, line: 1019, baseType: !1022, size: 64, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1028, file: !42, line: 1020, baseType: !1040, size: 64, offset: 192)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!128, !970, !128}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1028, file: !42, line: 1021, baseType: !1044, size: 64, offset: 256)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!619, !970}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1028, file: !42, line: 1022, baseType: !1048, size: 64, offset: 320)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!128, !970, !128, !210}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1028, file: !42, line: 1023, baseType: !1052, size: 64, offset: 384)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{null, !970, !1055}
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1028, file: !42, line: 1024, baseType: !1044, size: 64, offset: 448)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !971, file: !42, line: 1097, baseType: !1058, size: 256, offset: 1408)
!1058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !971, file: !42, line: 1089, size: 256, elements: !1059)
!1059 = !{!1060, !1069, !1075}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1058, file: !42, line: 1090, baseType: !1061, size: 256)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1062, line: 10, size: 256, elements: !1063)
!1062 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!1063 = !{!1064, !1065, !1068}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1061, file: !1062, line: 11, baseType: !162, size: 32)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1061, file: !1062, line: 12, baseType: !1066, size: 64, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1062, line: 5, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1061, file: !1062, line: 13, baseType: !207, size: 128, offset: 128)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1058, file: !42, line: 1091, baseType: !1070, size: 64)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1062, line: 17, size: 64, elements: !1071)
!1071 = !{!1072}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1070, file: !1062, line: 18, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1062, line: 16, flags: DIFlagFwdDecl)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1058, file: !42, line: 1096, baseType: !1076, size: 192)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1058, file: !42, line: 1092, size: 192, elements: !1077)
!1077 = !{!1078, !1079, !1080}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1076, file: !42, line: 1093, baseType: !207, size: 128)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1076, file: !42, line: 1094, baseType: !128, size: 32, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1076, file: !42, line: 1095, baseType: !5, size: 32, offset: 160)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !825, file: !42, line: 1843, baseType: !1082, size: 64, offset: 1280)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!837, !832, !449, !128, !753, !783, !128}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !825, file: !42, line: 1844, baseType: !1086, size: 64, offset: 1344)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!131, !832, !131, !131, !131, !131}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !825, file: !42, line: 1845, baseType: !1090, size: 64, offset: 1408)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!128, !128}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !825, file: !42, line: 1846, baseType: !967, size: 64, offset: 1472)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !825, file: !42, line: 1847, baseType: !1095, size: 64, offset: 1536)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!837, !900, !832, !783, !753, !5}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !825, file: !42, line: 1848, baseType: !1099, size: 64, offset: 1600)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!837, !832, !783, !900, !753, !5}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !825, file: !42, line: 1849, baseType: !1103, size: 64, offset: 1664)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!128, !832, !97, !1106, !1055}
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !825, file: !42, line: 1850, baseType: !1108, size: 64, offset: 1728)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!97, !832, !128, !638, !638}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !825, file: !42, line: 1852, baseType: !1112, size: 64, offset: 1792)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{null, !747, !832}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !825, file: !42, line: 1856, baseType: !1116, size: 64, offset: 1856)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!837, !832, !638, !832, !638, !753, !5}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !825, file: !42, line: 1858, baseType: !1120, size: 64, offset: 1920)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!638, !832, !638, !832, !638, !638, !5}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !825, file: !42, line: 1861, baseType: !959, size: 64, offset: 1984)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !800, file: !42, line: 929, baseType: !546, offset: 384)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !800, file: !42, line: 930, baseType: !41, size: 32, offset: 384)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !800, file: !42, line: 931, baseType: !766, size: 64, offset: 448)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !800, file: !42, line: 932, baseType: !5, size: 32, offset: 512)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !800, file: !42, line: 933, baseType: !1129, size: 32, offset: 544)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !175, line: 150, baseType: !5)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !800, file: !42, line: 934, baseType: !762, size: 192, offset: 576)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !800, file: !42, line: 935, baseType: !638, size: 64, offset: 768)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !800, file: !42, line: 936, baseType: !1133, size: 192, offset: 832)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !42, line: 885, size: 192, elements: !1134)
!1134 = !{!1135, !1136, !1158, !1159, !1160, !1161}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1133, file: !42, line: 886, baseType: !998)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1133, file: !42, line: 887, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !51, line: 59, size: 768, elements: !1139)
!1139 = !{!1140, !1141, !1142, !1143, !1147, !1148, !1149, !1150}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1138, file: !51, line: 61, baseType: !169, size: 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1138, file: !51, line: 62, baseType: !5, size: 32, offset: 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1138, file: !51, line: 63, baseType: !546, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1138, file: !51, line: 65, baseType: !1144, size: 256, offset: 64)
!1144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 256, elements: !1145)
!1145 = !{!1146}
!1146 = !DISubrange(count: 4)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1138, file: !51, line: 66, baseType: !670, size: 64, offset: 320)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1138, file: !51, line: 68, baseType: !984, size: 128, offset: 384)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1138, file: !51, line: 69, baseType: !812, size: 128, align: 64, offset: 512)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1138, file: !51, line: 70, baseType: !1151, size: 128, offset: 640)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1152, size: 128, elements: !353)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !51, line: 54, size: 128, elements: !1153)
!1153 = !{!1154, !1155}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1152, file: !51, line: 55, baseType: !128, size: 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1152, file: !51, line: 56, baseType: !1156, size: 64, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !51, line: 56, flags: DIFlagFwdDecl)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1133, file: !42, line: 888, baseType: !50, size: 32, offset: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1133, file: !42, line: 889, baseType: !472, size: 32, offset: 96)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1133, file: !42, line: 889, baseType: !472, size: 32, offset: 128)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1133, file: !42, line: 890, baseType: !128, size: 32, offset: 160)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !800, file: !42, line: 937, baseType: !1163, size: 64, offset: 1024)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1165)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1166, line: 111, size: 1280, elements: !1167)
!1166 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1167 = !{!1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1187, !1188, !1189, !1190, !1191, !1192, !1312, !1313, !1314, !1315, !1341, !1344, !1354}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1165, file: !1166, line: 112, baseType: !174, size: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1165, file: !1166, line: 120, baseType: !472, size: 32, offset: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1165, file: !1166, line: 121, baseType: !480, size: 32, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1165, file: !1166, line: 122, baseType: !472, size: 32, offset: 96)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1165, file: !1166, line: 123, baseType: !480, size: 32, offset: 128)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1165, file: !1166, line: 124, baseType: !472, size: 32, offset: 160)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1165, file: !1166, line: 125, baseType: !480, size: 32, offset: 192)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1165, file: !1166, line: 126, baseType: !472, size: 32, offset: 224)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1165, file: !1166, line: 127, baseType: !480, size: 32, offset: 256)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1165, file: !1166, line: 128, baseType: !5, size: 32, offset: 288)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1165, file: !1166, line: 129, baseType: !1179, size: 64, offset: 320)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1180, line: 26, baseType: !1181)
!1180 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1180, line: 24, size: 64, elements: !1182)
!1182 = !{!1183}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1181, file: !1180, line: 25, baseType: !1184, size: 64)
!1184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 64, elements: !1185)
!1185 = !{!1186}
!1186 = !DISubrange(count: 2)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1165, file: !1166, line: 130, baseType: !1179, size: 64, offset: 384)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1165, file: !1166, line: 131, baseType: !1179, size: 64, offset: 448)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1165, file: !1166, line: 132, baseType: !1179, size: 64, offset: 512)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1165, file: !1166, line: 133, baseType: !1179, size: 64, offset: 576)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1165, file: !1166, line: 135, baseType: !110, size: 8, offset: 640)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1165, file: !1166, line: 137, baseType: !1193, size: 64, offset: 704)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1195, line: 189, size: 1664, elements: !1196)
!1195 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1196 = !{!1197, !1198, !1203, !1208, !1216, !1219, !1220, !1227, !1228, !1229, !1230, !1233, !1234, !1235, !1237, !1238, !1276, !1297}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1194, file: !1195, line: 190, baseType: !169, size: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1194, file: !1195, line: 191, baseType: !1199, size: 32, offset: 32)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1195, line: 28, baseType: !1200)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !175, line: 98, baseType: !1201)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !163, line: 20, baseType: !1202)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !165, line: 26, baseType: !128)
!1203 = !DIDerivedType(tag: DW_TAG_member, scope: !1194, file: !1195, line: 192, baseType: !1204, size: 192, offset: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1194, file: !1195, line: 192, size: 192, elements: !1205)
!1205 = !{!1206, !1207}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1204, file: !1195, line: 193, baseType: !207, size: 128)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1204, file: !1195, line: 194, baseType: !199, size: 192, align: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1194, file: !1195, line: 199, baseType: !1209, size: 256, offset: 256)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1210, line: 35, size: 256, elements: !1211)
!1210 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1211 = !{!1212, !1213, !1214, !1215}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1209, file: !1210, line: 36, baseType: !766, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1209, file: !1210, line: 42, baseType: !766, size: 64, offset: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1209, file: !1210, line: 46, baseType: !280, offset: 128)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1209, file: !1210, line: 47, baseType: !207, size: 128, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1194, file: !1195, line: 200, baseType: !1217, size: 64, offset: 512)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1195, line: 200, flags: DIFlagFwdDecl)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1194, file: !1195, line: 201, baseType: !98, size: 64, offset: 576)
!1220 = !DIDerivedType(tag: DW_TAG_member, scope: !1194, file: !1195, line: 202, baseType: !1221, size: 64, offset: 640)
!1221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1194, file: !1195, line: 202, size: 64, elements: !1222)
!1222 = !{!1223, !1226}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1221, file: !1195, line: 203, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1225, line: 8, baseType: !246)
!1225 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1221, file: !1195, line: 204, baseType: !1224, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1194, file: !1195, line: 206, baseType: !1224, size: 64, offset: 704)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1194, file: !1195, line: 207, baseType: !472, size: 32, offset: 768)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1194, file: !1195, line: 208, baseType: !480, size: 32, offset: 800)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1194, file: !1195, line: 209, baseType: !1231, size: 32, offset: 832)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1195, line: 31, baseType: !1232)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !175, line: 104, baseType: !162)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1194, file: !1195, line: 210, baseType: !142, size: 16, offset: 864)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1194, file: !1195, line: 211, baseType: !142, size: 16, offset: 880)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1194, file: !1195, line: 215, baseType: !1236, size: 16, offset: 896)
!1236 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1194, file: !1195, line: 222, baseType: !131, size: 64, offset: 960)
!1238 = !DIDerivedType(tag: DW_TAG_member, scope: !1194, file: !1195, line: 239, baseType: !1239, size: 320, offset: 1024)
!1239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1194, file: !1195, line: 239, size: 320, elements: !1240)
!1240 = !{!1241, !1268}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1239, file: !1195, line: 240, baseType: !1242, size: 320)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1195, line: 108, size: 320, elements: !1243)
!1243 = !{!1244, !1245, !1257, !1260, !1267}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1242, file: !1195, line: 110, baseType: !131, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, scope: !1242, file: !1195, line: 111, baseType: !1246, size: 64, offset: 64)
!1246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1242, file: !1195, line: 111, size: 64, elements: !1247)
!1247 = !{!1248, !1256}
!1248 = !DIDerivedType(tag: DW_TAG_member, scope: !1246, file: !1195, line: 112, baseType: !1249, size: 64)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1246, file: !1195, line: 112, size: 64, elements: !1250)
!1250 = !{!1251, !1252}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1249, file: !1195, line: 114, baseType: !860, size: 16)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1249, file: !1195, line: 115, baseType: !1253, size: 48, offset: 16)
!1253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 48, elements: !1254)
!1254 = !{!1255}
!1255 = !DISubrange(count: 6)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1246, file: !1195, line: 121, baseType: !131, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1242, file: !1195, line: 123, baseType: !1258, size: 64, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1195, line: 96, flags: DIFlagFwdDecl)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1242, file: !1195, line: 124, baseType: !1261, size: 64, offset: 192)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1195, line: 102, size: 192, elements: !1263)
!1263 = !{!1264, !1265, !1266}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1262, file: !1195, line: 103, baseType: !812, size: 128, align: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1262, file: !1195, line: 104, baseType: !169, size: 32, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1262, file: !1195, line: 105, baseType: !619, size: 8, offset: 160)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1242, file: !1195, line: 125, baseType: !575, size: 64, offset: 256)
!1268 = !DIDerivedType(tag: DW_TAG_member, scope: !1239, file: !1195, line: 241, baseType: !1269, size: 320)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1239, file: !1195, line: 241, size: 320, elements: !1270)
!1270 = !{!1271, !1272, !1273, !1274, !1275}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1269, file: !1195, line: 242, baseType: !131, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1269, file: !1195, line: 243, baseType: !131, size: 64, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1269, file: !1195, line: 244, baseType: !1258, size: 64, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1269, file: !1195, line: 245, baseType: !1261, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1269, file: !1195, line: 246, baseType: !600, size: 64, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_member, scope: !1194, file: !1195, line: 254, baseType: !1277, size: 256, offset: 1344)
!1277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1194, file: !1195, line: 254, size: 256, elements: !1278)
!1278 = !{!1279, !1285}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1277, file: !1195, line: 255, baseType: !1280, size: 256)
!1280 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1195, line: 128, size: 256, elements: !1281)
!1281 = !{!1282, !1283}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1280, file: !1195, line: 129, baseType: !98, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1280, file: !1195, line: 130, baseType: !1284, size: 256)
!1284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 256, elements: !1145)
!1285 = !DIDerivedType(tag: DW_TAG_member, scope: !1277, file: !1195, line: 256, baseType: !1286, size: 256)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1277, file: !1195, line: 256, size: 256, elements: !1287)
!1287 = !{!1288, !1289}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1286, file: !1195, line: 258, baseType: !207, size: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1286, file: !1195, line: 259, baseType: !1290, size: 128, offset: 128)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1291, line: 22, size: 128, elements: !1292)
!1291 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1292 = !{!1293, !1296}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1290, file: !1291, line: 23, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1291, line: 23, flags: DIFlagFwdDecl)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1290, file: !1291, line: 24, baseType: !131, size: 64, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1194, file: !1195, line: 274, baseType: !1298, size: 64, offset: 1600)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1195, line: 170, size: 192, elements: !1300)
!1300 = !{!1301, !1310, !1311}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1299, file: !1195, line: 171, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1195, line: 165, baseType: !1303)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!128, !1193, !1306, !1308, !1193}
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1259)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1280)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1299, file: !1195, line: 172, baseType: !1193, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1299, file: !1195, line: 173, baseType: !1258, size: 64, offset: 128)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1165, file: !1166, line: 138, baseType: !1193, size: 64, offset: 768)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1165, file: !1166, line: 139, baseType: !1193, size: 64, offset: 832)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1165, file: !1166, line: 140, baseType: !1193, size: 64, offset: 896)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1165, file: !1166, line: 145, baseType: !1316, size: 64, offset: 960)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1318, line: 13, size: 896, elements: !1319)
!1318 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1319 = !{!1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1317, file: !1318, line: 14, baseType: !169, size: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1317, file: !1318, line: 15, baseType: !174, size: 32, offset: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1317, file: !1318, line: 16, baseType: !174, size: 32, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1317, file: !1318, line: 21, baseType: !766, size: 64, offset: 128)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1317, file: !1318, line: 27, baseType: !131, size: 64, offset: 192)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1317, file: !1318, line: 28, baseType: !131, size: 64, offset: 256)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1317, file: !1318, line: 29, baseType: !766, size: 64, offset: 320)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1317, file: !1318, line: 32, baseType: !674, size: 128, offset: 384)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1317, file: !1318, line: 33, baseType: !472, size: 32, offset: 512)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1317, file: !1318, line: 37, baseType: !766, size: 64, offset: 576)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1317, file: !1318, line: 44, baseType: !1331, size: 256, offset: 640)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1332, line: 15, size: 256, elements: !1333)
!1332 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1333 = !{!1334, !1335, !1336, !1337, !1338, !1339, !1340}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1331, file: !1332, line: 16, baseType: !280)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1331, file: !1332, line: 18, baseType: !128, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1331, file: !1332, line: 19, baseType: !128, size: 32, offset: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1331, file: !1332, line: 20, baseType: !128, size: 32, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1331, file: !1332, line: 21, baseType: !128, size: 32, offset: 96)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1331, file: !1332, line: 22, baseType: !131, size: 64, offset: 128)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1331, file: !1332, line: 23, baseType: !131, size: 64, offset: 192)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1165, file: !1166, line: 146, baseType: !1342, size: 64, offset: 1024)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !473, line: 18, flags: DIFlagFwdDecl)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1165, file: !1166, line: 147, baseType: !1345, size: 64, offset: 1088)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1166, line: 25, size: 64, elements: !1347)
!1347 = !{!1348, !1349, !1350}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1346, file: !1166, line: 26, baseType: !174, size: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1346, file: !1166, line: 27, baseType: !128, size: 32, offset: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1346, file: !1166, line: 28, baseType: !1351, offset: 64)
!1351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !480, elements: !1352)
!1352 = !{!1353}
!1353 = !DISubrange(count: 0)
!1354 = !DIDerivedType(tag: DW_TAG_member, scope: !1165, file: !1166, line: 149, baseType: !1355, size: 128, offset: 1152)
!1355 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1165, file: !1166, line: 149, size: 128, elements: !1356)
!1356 = !{!1357, !1358}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1355, file: !1166, line: 150, baseType: !128, size: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1355, file: !1166, line: 151, baseType: !812, size: 128, align: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !800, file: !42, line: 938, baseType: !1360, size: 256, offset: 1088)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !42, line: 896, size: 256, elements: !1361)
!1361 = !{!1362, !1363, !1364, !1365, !1366, !1367}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1360, file: !42, line: 897, baseType: !131, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1360, file: !42, line: 898, baseType: !5, size: 32, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1360, file: !42, line: 899, baseType: !5, size: 32, offset: 96)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1360, file: !42, line: 902, baseType: !5, size: 32, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1360, file: !42, line: 903, baseType: !5, size: 32, offset: 160)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1360, file: !42, line: 904, baseType: !638, size: 64, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !800, file: !42, line: 940, baseType: !214, size: 64, offset: 1344)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !800, file: !42, line: 945, baseType: !98, size: 64, offset: 1408)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !800, file: !42, line: 949, baseType: !207, size: 128, offset: 1472)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !800, file: !42, line: 950, baseType: !207, size: 128, offset: 1600)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !800, file: !42, line: 952, baseType: !461, size: 64, offset: 1728)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !800, file: !42, line: 953, baseType: !1374, size: 32, offset: 1792)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1375, line: 8, baseType: !162)
!1375 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !800, file: !42, line: 954, baseType: !1374, size: 32, offset: 1824)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !748, file: !749, line: 28, baseType: !98, size: 64, offset: 832)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !694, file: !42, line: 1955, baseType: !744, size: 64, offset: 1088)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !694, file: !42, line: 1956, baseType: !744, size: 64, offset: 1152)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !694, file: !42, line: 1957, baseType: !744, size: 64, offset: 1216)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !694, file: !42, line: 1963, baseType: !1382, size: 64, offset: 1280)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!128, !628, !449, !425}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !694, file: !42, line: 1964, baseType: !1386, size: 64, offset: 1344)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!97, !628, !1389}
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1391, line: 12, size: 256, elements: !1392)
!1391 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!1392 = !{!1393, !1394, !1395, !1396, !1397}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1390, file: !1391, line: 13, baseType: !425, size: 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1390, file: !1391, line: 16, baseType: !128, size: 32, offset: 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1390, file: !1391, line: 23, baseType: !131, size: 64, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1390, file: !1391, line: 30, baseType: !131, size: 64, offset: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1390, file: !1391, line: 33, baseType: !1398, size: 64, offset: 192)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !362, line: 27, flags: DIFlagFwdDecl)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !694, file: !42, line: 1966, baseType: !1386, size: 64, offset: 1408)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !629, file: !42, line: 1424, baseType: !1402, size: 64, offset: 448)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1404)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !36, line: 322, size: 704, elements: !1405)
!1405 = !{!1406, !1452, !1456, !1460, !1461, !1462, !1463, !1464, !1469, !1474, !1478}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1404, file: !36, line: 323, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!128, !1410}
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !36, line: 294, size: 1600, elements: !1412)
!1412 = !{!1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1437, !1438, !1439}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1411, file: !36, line: 295, baseType: !674, size: 128)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1411, file: !36, line: 296, baseType: !207, size: 128, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1411, file: !36, line: 297, baseType: !207, size: 128, offset: 256)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1411, file: !36, line: 298, baseType: !207, size: 128, offset: 384)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1411, file: !36, line: 299, baseType: !762, size: 192, offset: 512)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1411, file: !36, line: 300, baseType: !546, offset: 704)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1411, file: !36, line: 301, baseType: !174, size: 32, offset: 704)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1411, file: !36, line: 302, baseType: !628, size: 64, offset: 768)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1411, file: !36, line: 303, baseType: !1422, size: 64, offset: 832)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !36, line: 68, size: 64, elements: !1423)
!1423 = !{!1424, !1436}
!1424 = !DIDerivedType(tag: DW_TAG_member, scope: !1422, file: !36, line: 69, baseType: !1425, size: 32)
!1425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1422, file: !36, line: 69, size: 32, elements: !1426)
!1426 = !{!1427, !1428, !1429}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1425, file: !36, line: 70, baseType: !472, size: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1425, file: !36, line: 71, baseType: !480, size: 32)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1425, file: !36, line: 72, baseType: !1430, size: 32)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1431, line: 24, baseType: !1432)
!1431 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1431, line: 22, size: 32, elements: !1433)
!1433 = !{!1434}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1432, file: !1431, line: 23, baseType: !1435, size: 32)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1431, line: 20, baseType: !478)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1422, file: !36, line: 74, baseType: !35, size: 32, offset: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1411, file: !36, line: 304, baseType: !638, size: 64, offset: 896)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1411, file: !36, line: 305, baseType: !131, size: 64, offset: 960)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1411, file: !36, line: 306, baseType: !1440, size: 576, offset: 1024)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !36, line: 205, size: 576, elements: !1441)
!1441 = !{!1442, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1440, file: !36, line: 206, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !36, line: 66, baseType: !247)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1440, file: !36, line: 207, baseType: !1443, size: 64, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1440, file: !36, line: 208, baseType: !1443, size: 64, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1440, file: !36, line: 209, baseType: !1443, size: 64, offset: 192)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1440, file: !36, line: 210, baseType: !1443, size: 64, offset: 256)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1440, file: !36, line: 211, baseType: !1443, size: 64, offset: 320)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1440, file: !36, line: 212, baseType: !1443, size: 64, offset: 384)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1440, file: !36, line: 213, baseType: !1224, size: 64, offset: 448)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1440, file: !36, line: 214, baseType: !1224, size: 64, offset: 512)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1404, file: !36, line: 324, baseType: !1453, size: 64, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!1410, !628, !128}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1404, file: !36, line: 325, baseType: !1457, size: 64, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{null, !1410}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1404, file: !36, line: 326, baseType: !1407, size: 64, offset: 192)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1404, file: !36, line: 327, baseType: !1407, size: 64, offset: 256)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1404, file: !36, line: 328, baseType: !1407, size: 64, offset: 320)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1404, file: !36, line: 329, baseType: !722, size: 64, offset: 384)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1404, file: !36, line: 332, baseType: !1465, size: 64, offset: 448)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!1468, !465}
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1404, file: !36, line: 333, baseType: !1470, size: 64, offset: 512)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!128, !465, !1473}
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1404, file: !36, line: 335, baseType: !1475, size: 64, offset: 576)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!128, !465, !1468}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1404, file: !36, line: 337, baseType: !1479, size: 64, offset: 640)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!128, !628, !1482}
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !629, file: !42, line: 1425, baseType: !1484, size: 64, offset: 512)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1486)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !36, line: 428, size: 704, elements: !1487)
!1487 = !{!1488, !1492, !1493, !1497, !1498, !1499, !1514, !1537, !1541, !1542, !1565}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1486, file: !36, line: 429, baseType: !1489, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!128, !628, !128, !128, !617}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1486, file: !36, line: 430, baseType: !722, size: 64, offset: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1486, file: !36, line: 431, baseType: !1494, size: 64, offset: 128)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!128, !628, !5}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1486, file: !36, line: 432, baseType: !1494, size: 64, offset: 192)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1486, file: !36, line: 433, baseType: !722, size: 64, offset: 256)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1486, file: !36, line: 434, baseType: !1500, size: 64, offset: 320)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!128, !628, !128, !1503}
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !36, line: 415, size: 256, elements: !1505)
!1505 = !{!1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1504, file: !36, line: 416, baseType: !128, size: 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1504, file: !36, line: 417, baseType: !5, size: 32, offset: 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1504, file: !36, line: 418, baseType: !5, size: 32, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1504, file: !36, line: 420, baseType: !5, size: 32, offset: 96)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1504, file: !36, line: 421, baseType: !5, size: 32, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1504, file: !36, line: 422, baseType: !5, size: 32, offset: 160)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1504, file: !36, line: 423, baseType: !5, size: 32, offset: 192)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1504, file: !36, line: 424, baseType: !5, size: 32, offset: 224)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1486, file: !36, line: 435, baseType: !1515, size: 64, offset: 384)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!128, !628, !1422, !1518}
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !36, line: 343, size: 960, elements: !1520)
!1520 = !{!1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1519, file: !36, line: 344, baseType: !128, size: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1519, file: !36, line: 345, baseType: !214, size: 64, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1519, file: !36, line: 346, baseType: !214, size: 64, offset: 128)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1519, file: !36, line: 347, baseType: !214, size: 64, offset: 192)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1519, file: !36, line: 348, baseType: !214, size: 64, offset: 256)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1519, file: !36, line: 349, baseType: !214, size: 64, offset: 320)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1519, file: !36, line: 350, baseType: !214, size: 64, offset: 384)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1519, file: !36, line: 351, baseType: !245, size: 64, offset: 448)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1519, file: !36, line: 353, baseType: !245, size: 64, offset: 512)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1519, file: !36, line: 354, baseType: !128, size: 32, offset: 576)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1519, file: !36, line: 355, baseType: !128, size: 32, offset: 608)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1519, file: !36, line: 356, baseType: !214, size: 64, offset: 640)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1519, file: !36, line: 357, baseType: !214, size: 64, offset: 704)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1519, file: !36, line: 358, baseType: !214, size: 64, offset: 768)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1519, file: !36, line: 359, baseType: !245, size: 64, offset: 832)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1519, file: !36, line: 360, baseType: !128, size: 32, offset: 896)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1486, file: !36, line: 436, baseType: !1538, size: 64, offset: 448)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!128, !628, !1482, !1518}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1486, file: !36, line: 438, baseType: !1515, size: 64, offset: 512)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1486, file: !36, line: 439, baseType: !1543, size: 64, offset: 576)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!128, !628, !1546}
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !36, line: 409, size: 1408, elements: !1548)
!1548 = !{!1549, !1550}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1547, file: !36, line: 410, baseType: !5, size: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1547, file: !36, line: 411, baseType: !1551, size: 1344, offset: 64)
!1551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1552, size: 1344, elements: !686)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !36, line: 395, size: 448, elements: !1553)
!1553 = !{!1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1564}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1552, file: !36, line: 396, baseType: !5, size: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1552, file: !36, line: 397, baseType: !5, size: 32, offset: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1552, file: !36, line: 399, baseType: !5, size: 32, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1552, file: !36, line: 400, baseType: !5, size: 32, offset: 96)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1552, file: !36, line: 401, baseType: !5, size: 32, offset: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1552, file: !36, line: 402, baseType: !5, size: 32, offset: 160)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1552, file: !36, line: 403, baseType: !5, size: 32, offset: 192)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1552, file: !36, line: 404, baseType: !216, size: 64, offset: 256)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1552, file: !36, line: 405, baseType: !1563, size: 64, offset: 320)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !175, line: 126, baseType: !214)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1552, file: !36, line: 406, baseType: !1563, size: 64, offset: 384)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1486, file: !36, line: 440, baseType: !1494, size: 64, offset: 640)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !629, file: !42, line: 1426, baseType: !1567, size: 64, offset: 576)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1569)
!1569 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !42, line: 49, flags: DIFlagFwdDecl)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !629, file: !42, line: 1427, baseType: !131, size: 64, offset: 640)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !629, file: !42, line: 1428, baseType: !131, size: 64, offset: 704)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !629, file: !42, line: 1429, baseType: !131, size: 64, offset: 768)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !629, file: !42, line: 1430, baseType: !496, size: 64, offset: 832)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !629, file: !42, line: 1431, baseType: !1209, size: 256, offset: 896)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !629, file: !42, line: 1432, baseType: !128, size: 32, offset: 1152)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !629, file: !42, line: 1433, baseType: !174, size: 32, offset: 1184)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !629, file: !42, line: 1437, baseType: !1578, size: 64, offset: 1216)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1581)
!1581 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !42, line: 1437, flags: DIFlagFwdDecl)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !629, file: !42, line: 1449, baseType: !1583, size: 64, offset: 1280)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !508, line: 34, size: 64, elements: !1584)
!1584 = !{!1585}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1583, file: !508, line: 35, baseType: !511, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !629, file: !42, line: 1450, baseType: !207, size: 128, offset: 1344)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !629, file: !42, line: 1451, baseType: !1588, size: 64, offset: 1472)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !42, line: 699, flags: DIFlagFwdDecl)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !629, file: !42, line: 1452, baseType: !1591, size: 64, offset: 1536)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !154, line: 40, flags: DIFlagFwdDecl)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !629, file: !42, line: 1453, baseType: !1594, size: 64, offset: 1600)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !42, line: 1453, flags: DIFlagFwdDecl)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !629, file: !42, line: 1454, baseType: !674, size: 128, offset: 1664)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !629, file: !42, line: 1455, baseType: !5, size: 32, offset: 1792)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !629, file: !42, line: 1456, baseType: !1599, size: 2432, offset: 1856)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !36, line: 518, size: 2432, elements: !1600)
!1600 = !{!1601, !1602, !1603, !1605, !1637}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1599, file: !36, line: 519, baseType: !5, size: 32)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1599, file: !36, line: 520, baseType: !1209, size: 256, offset: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1599, file: !36, line: 521, baseType: !1604, size: 192, offset: 320)
!1604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 192, elements: !686)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1599, file: !36, line: 522, baseType: !1606, size: 1728, offset: 512)
!1606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1607, size: 1728, elements: !686)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !36, line: 222, size: 576, elements: !1608)
!1608 = !{!1609, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1607, file: !36, line: 223, baseType: !1610, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !36, line: 443, size: 256, elements: !1612)
!1612 = !{!1613, !1614, !1627, !1628}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1611, file: !36, line: 444, baseType: !128, size: 32)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1611, file: !36, line: 445, baseType: !1615, size: 64, offset: 64)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1617)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !36, line: 310, size: 512, elements: !1618)
!1618 = !{!1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1617, file: !36, line: 311, baseType: !722, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1617, file: !36, line: 312, baseType: !722, size: 64, offset: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1617, file: !36, line: 313, baseType: !722, size: 64, offset: 128)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1617, file: !36, line: 314, baseType: !722, size: 64, offset: 192)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1617, file: !36, line: 315, baseType: !1407, size: 64, offset: 256)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1617, file: !36, line: 316, baseType: !1407, size: 64, offset: 320)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1617, file: !36, line: 317, baseType: !1407, size: 64, offset: 384)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1617, file: !36, line: 318, baseType: !1479, size: 64, offset: 448)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1611, file: !36, line: 446, baseType: !665, size: 64, offset: 128)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1611, file: !36, line: 447, baseType: !1610, size: 64, offset: 192)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1607, file: !36, line: 224, baseType: !128, size: 32, offset: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1607, file: !36, line: 226, baseType: !207, size: 128, offset: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1607, file: !36, line: 227, baseType: !131, size: 64, offset: 256)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1607, file: !36, line: 228, baseType: !5, size: 32, offset: 320)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1607, file: !36, line: 229, baseType: !5, size: 32, offset: 352)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1607, file: !36, line: 230, baseType: !1443, size: 64, offset: 384)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1607, file: !36, line: 231, baseType: !1443, size: 64, offset: 448)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1607, file: !36, line: 232, baseType: !98, size: 64, offset: 512)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1599, file: !36, line: 523, baseType: !1638, size: 192, offset: 2240)
!1638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1615, size: 192, elements: !686)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !629, file: !42, line: 1458, baseType: !1640, size: 2112, offset: 4288)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !42, line: 1410, size: 2112, elements: !1641)
!1641 = !{!1642, !1643, !1644}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1640, file: !42, line: 1411, baseType: !128, size: 32)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !1640, file: !42, line: 1412, baseType: !984, size: 128, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1640, file: !42, line: 1413, baseType: !1645, size: 1920, offset: 192)
!1645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1646, size: 1920, elements: !686)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1647, line: 12, size: 640, elements: !1648)
!1647 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1648 = !{!1649, !1657, !1658, !1663, !1664}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1646, file: !1647, line: 13, baseType: !1650, size: 320)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1651, line: 17, size: 320, elements: !1652)
!1651 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!1652 = !{!1653, !1654, !1655, !1656}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1650, file: !1651, line: 18, baseType: !128, size: 32)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1650, file: !1651, line: 19, baseType: !128, size: 32, offset: 32)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1650, file: !1651, line: 20, baseType: !984, size: 128, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1650, file: !1651, line: 22, baseType: !812, size: 128, align: 64, offset: 192)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1646, file: !1647, line: 14, baseType: !129, size: 64, offset: 320)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1646, file: !1647, line: 15, baseType: !1659, size: 64, offset: 384)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1660, line: 16, size: 64, elements: !1661)
!1660 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!1661 = !{!1662}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1659, file: !1660, line: 17, baseType: !152, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1646, file: !1647, line: 16, baseType: !984, size: 128, offset: 448)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1646, file: !1647, line: 17, baseType: !174, size: 32, offset: 576)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !629, file: !42, line: 1465, baseType: !98, size: 64, offset: 6400)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !629, file: !42, line: 1468, baseType: !162, size: 32, offset: 6464)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !629, file: !42, line: 1470, baseType: !1224, size: 64, offset: 6528)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !629, file: !42, line: 1471, baseType: !1224, size: 64, offset: 6592)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !629, file: !42, line: 1473, baseType: !164, size: 32, offset: 6656)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !629, file: !42, line: 1474, baseType: !1671, size: 64, offset: 6720)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !42, line: 603, flags: DIFlagFwdDecl)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !629, file: !42, line: 1477, baseType: !1674, size: 256, offset: 6784)
!1674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 256, elements: !533)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !629, file: !42, line: 1478, baseType: !1676, size: 128, offset: 7040)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1677, line: 18, baseType: !1678)
!1677 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1677, line: 16, size: 128, elements: !1679)
!1679 = !{!1680}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1678, file: !1677, line: 17, baseType: !1681, size: 128)
!1681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 128, elements: !1682)
!1682 = !{!1683}
!1683 = !DISubrange(count: 16)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !629, file: !42, line: 1480, baseType: !5, size: 32, offset: 7168)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !629, file: !42, line: 1481, baseType: !1129, size: 32, offset: 7200)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !629, file: !42, line: 1487, baseType: !762, size: 192, offset: 7232)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !629, file: !42, line: 1493, baseType: !575, size: 64, offset: 7424)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !629, file: !42, line: 1495, baseType: !555, size: 64, offset: 7488)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !629, file: !42, line: 1500, baseType: !128, size: 32, offset: 7552)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !629, file: !42, line: 1502, baseType: !1691, size: 448, offset: 7616)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1391, line: 60, size: 448, elements: !1692)
!1692 = !{!1693, !1698, !1699, !1700, !1701, !1702, !1703}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1691, file: !1391, line: 61, baseType: !1694, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!131, !1697, !1389}
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1691, file: !1391, line: 63, baseType: !1694, size: 64, offset: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1691, file: !1391, line: 66, baseType: !97, size: 64, offset: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1691, file: !1391, line: 67, baseType: !128, size: 32, offset: 192)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1691, file: !1391, line: 68, baseType: !5, size: 32, offset: 224)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1691, file: !1391, line: 71, baseType: !207, size: 128, offset: 256)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1691, file: !1391, line: 77, baseType: !1704, size: 64, offset: 384)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !629, file: !42, line: 1505, baseType: !766, size: 64, offset: 8064)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !629, file: !42, line: 1508, baseType: !766, size: 64, offset: 8128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !629, file: !42, line: 1511, baseType: !128, size: 32, offset: 8192)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !629, file: !42, line: 1514, baseType: !1374, size: 32, offset: 8224)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !629, file: !42, line: 1517, baseType: !1710, size: 64, offset: 8256)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1712, line: 18, flags: DIFlagFwdDecl)
!1712 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !629, file: !42, line: 1518, baseType: !670, size: 64, offset: 8320)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !629, file: !42, line: 1525, baseType: !1342, size: 64, offset: 8384)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !629, file: !42, line: 1532, baseType: !1716, size: 64, offset: 8448)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1717, line: 52, size: 64, elements: !1718)
!1717 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!1718 = !{!1719}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1716, file: !1717, line: 53, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1717, line: 40, size: 256, elements: !1722)
!1722 = !{!1723, !1724, !1729}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1721, file: !1717, line: 42, baseType: !546)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1721, file: !1717, line: 44, baseType: !1725, size: 192)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1717, line: 28, size: 192, elements: !1726)
!1726 = !{!1727, !1728}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1725, file: !1717, line: 29, baseType: !207, size: 128)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1725, file: !1717, line: 31, baseType: !97, size: 64, offset: 128)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1721, file: !1717, line: 49, baseType: !97, size: 64, offset: 192)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !629, file: !42, line: 1533, baseType: !1716, size: 64, offset: 8512)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !629, file: !42, line: 1534, baseType: !812, size: 128, align: 64, offset: 8576)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !629, file: !42, line: 1535, baseType: !1733, size: 256, offset: 8704)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1712, line: 102, size: 256, elements: !1734)
!1734 = !{!1735, !1736, !1737}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1733, file: !1712, line: 103, baseType: !766, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1733, file: !1712, line: 104, baseType: !207, size: 128, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1733, file: !1712, line: 105, baseType: !1738, size: 64, offset: 192)
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1712, line: 21, baseType: !1739)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{null, !1742}
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !629, file: !42, line: 1537, baseType: !762, size: 192, offset: 8960)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !629, file: !42, line: 1542, baseType: !128, size: 32, offset: 9152)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !629, file: !42, line: 1545, baseType: !546, offset: 9184)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !629, file: !42, line: 1546, baseType: !207, size: 128, offset: 9216)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !629, file: !42, line: 1548, baseType: !546, offset: 9344)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !629, file: !42, line: 1549, baseType: !207, size: 128, offset: 9344)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !497, file: !498, line: 104, baseType: !131, size: 64, offset: 896)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !497, file: !498, line: 105, baseType: !98, size: 64, offset: 960)
!1751 = !DIDerivedType(tag: DW_TAG_member, scope: !497, file: !498, line: 107, baseType: !1752, size: 128, offset: 1024)
!1752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !497, file: !498, line: 107, size: 128, elements: !1753)
!1753 = !{!1754, !1755}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !1752, file: !498, line: 108, baseType: !207, size: 128)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !1752, file: !498, line: 109, baseType: !1756, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !497, file: !498, line: 111, baseType: !207, size: 128, offset: 1152)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !497, file: !498, line: 112, baseType: !207, size: 128, offset: 1280)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !497, file: !498, line: 120, baseType: !1760, size: 128, offset: 1408)
!1760 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !497, file: !498, line: 116, size: 128, elements: !1761)
!1761 = !{!1762, !1763, !1764}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !1760, file: !498, line: 117, baseType: !674, size: 128)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !1760, file: !498, line: 118, baseType: !507, size: 128)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !1760, file: !498, line: 119, baseType: !812, size: 128, align: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !490, file: !42, line: 1866, baseType: !1766, size: 64, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!575, !496, !465, !1769}
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1771, line: 10, size: 128, elements: !1772)
!1771 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!1772 = !{!1773, !1777}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1770, file: !1771, line: 11, baseType: !1774, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{null, !98}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1770, file: !1771, line: 12, baseType: !98, size: 64, offset: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !490, file: !42, line: 1867, baseType: !1779, size: 64, offset: 128)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!128, !465, !128}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !490, file: !42, line: 1868, baseType: !1783, size: 64, offset: 192)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!1786, !465, !128}
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !42, line: 581, flags: DIFlagFwdDecl)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !490, file: !42, line: 1870, baseType: !1789, size: 64, offset: 256)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!128, !496, !600, !128}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !490, file: !42, line: 1872, baseType: !1793, size: 64, offset: 320)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!128, !465, !496, !469, !619}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !490, file: !42, line: 1873, baseType: !1797, size: 64, offset: 384)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!128, !496, !465, !496}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !490, file: !42, line: 1874, baseType: !1801, size: 64, offset: 448)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!128, !465, !496}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !490, file: !42, line: 1875, baseType: !1805, size: 64, offset: 512)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!128, !465, !496, !575}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !490, file: !42, line: 1876, baseType: !1809, size: 64, offset: 576)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!128, !465, !496, !469}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !490, file: !42, line: 1877, baseType: !1801, size: 64, offset: 640)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !490, file: !42, line: 1878, baseType: !1814, size: 64, offset: 704)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!128, !465, !496, !469, !633}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !490, file: !42, line: 1879, baseType: !1818, size: 64, offset: 768)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!128, !465, !496, !465, !496, !5}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !490, file: !42, line: 1881, baseType: !1822, size: 64, offset: 832)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!128, !496, !1825}
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !42, line: 219, size: 640, elements: !1827)
!1827 = !{!1828, !1829, !1830, !1831, !1832, !1833, !1838, !1839, !1840}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1826, file: !42, line: 220, baseType: !5, size: 32)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1826, file: !42, line: 221, baseType: !469, size: 16, offset: 32)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1826, file: !42, line: 222, baseType: !472, size: 32, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1826, file: !42, line: 223, baseType: !480, size: 32, offset: 96)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1826, file: !42, line: 224, baseType: !638, size: 64, offset: 128)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1826, file: !42, line: 225, baseType: !1834, size: 128, offset: 192)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1225, line: 13, size: 128, elements: !1835)
!1835 = !{!1836, !1837}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1834, file: !1225, line: 14, baseType: !1224, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1834, file: !1225, line: 15, baseType: !97, size: 64, offset: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1826, file: !42, line: 226, baseType: !1834, size: 128, offset: 320)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1826, file: !42, line: 227, baseType: !1834, size: 128, offset: 448)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1826, file: !42, line: 234, baseType: !832, size: 64, offset: 576)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !490, file: !42, line: 1882, baseType: !1842, size: 64, offset: 896)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!128, !617, !1845, !162, !5}
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1847, line: 22, size: 1152, elements: !1848)
!1847 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!1848 = !{!1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1846, file: !1847, line: 23, baseType: !162, size: 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1846, file: !1847, line: 24, baseType: !469, size: 16, offset: 32)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1846, file: !1847, line: 25, baseType: !5, size: 32, offset: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1846, file: !1847, line: 26, baseType: !1232, size: 32, offset: 96)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1846, file: !1847, line: 27, baseType: !214, size: 64, offset: 128)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1846, file: !1847, line: 28, baseType: !214, size: 64, offset: 192)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1846, file: !1847, line: 37, baseType: !214, size: 64, offset: 256)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1846, file: !1847, line: 38, baseType: !633, size: 32, offset: 320)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1846, file: !1847, line: 39, baseType: !633, size: 32, offset: 352)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1846, file: !1847, line: 40, baseType: !472, size: 32, offset: 384)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1846, file: !1847, line: 41, baseType: !480, size: 32, offset: 416)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1846, file: !1847, line: 42, baseType: !638, size: 64, offset: 448)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1846, file: !1847, line: 43, baseType: !1834, size: 128, offset: 512)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1846, file: !1847, line: 44, baseType: !1834, size: 128, offset: 640)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1846, file: !1847, line: 45, baseType: !1834, size: 128, offset: 768)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1846, file: !1847, line: 46, baseType: !1834, size: 128, offset: 896)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1846, file: !1847, line: 47, baseType: !214, size: 64, offset: 1024)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1846, file: !1847, line: 48, baseType: !214, size: 64, offset: 1088)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !490, file: !42, line: 1883, baseType: !1868, size: 64, offset: 960)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!837, !496, !600, !753}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !490, file: !42, line: 1884, baseType: !1872, size: 64, offset: 1024)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!128, !465, !1875, !214, !214}
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !42, line: 50, flags: DIFlagFwdDecl)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !490, file: !42, line: 1886, baseType: !1878, size: 64, offset: 1088)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!128, !465, !1881, !128}
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !490, file: !42, line: 1887, baseType: !1883, size: 64, offset: 1152)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!128, !465, !496, !832, !5, !469}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !490, file: !42, line: 1890, baseType: !1809, size: 64, offset: 1216)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !490, file: !42, line: 1891, baseType: !1888, size: 64, offset: 1280)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!128, !465, !1786, !128}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !466, file: !42, line: 623, baseType: !628, size: 64, offset: 192)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !466, file: !42, line: 624, baseType: !461, size: 64, offset: 256)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !466, file: !42, line: 631, baseType: !131, size: 64, offset: 320)
!1894 = !DIDerivedType(tag: DW_TAG_member, scope: !466, file: !42, line: 639, baseType: !1895, size: 32, offset: 384)
!1895 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !466, file: !42, line: 639, size: 32, elements: !1896)
!1896 = !{!1897, !1899}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !1895, file: !42, line: 640, baseType: !1898, size: 32)
!1898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !1895, file: !42, line: 641, baseType: !5, size: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !466, file: !42, line: 643, baseType: !633, size: 32, offset: 416)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !466, file: !42, line: 644, baseType: !638, size: 64, offset: 448)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !466, file: !42, line: 645, baseType: !1834, size: 128, offset: 512)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !466, file: !42, line: 646, baseType: !1834, size: 128, offset: 640)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !466, file: !42, line: 647, baseType: !1834, size: 128, offset: 768)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !466, file: !42, line: 648, baseType: !546, offset: 896)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !466, file: !42, line: 649, baseType: !142, size: 16, offset: 896)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !466, file: !42, line: 650, baseType: !334, size: 8, offset: 912)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !466, file: !42, line: 651, baseType: !334, size: 8, offset: 920)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !466, file: !42, line: 652, baseType: !1563, size: 64, offset: 960)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !466, file: !42, line: 659, baseType: !131, size: 64, offset: 1024)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !466, file: !42, line: 660, baseType: !1209, size: 256, offset: 1088)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !466, file: !42, line: 662, baseType: !131, size: 64, offset: 1344)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !466, file: !42, line: 663, baseType: !131, size: 64, offset: 1408)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !466, file: !42, line: 665, baseType: !674, size: 128, offset: 1472)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !466, file: !42, line: 666, baseType: !207, size: 128, offset: 1600)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !466, file: !42, line: 675, baseType: !207, size: 128, offset: 1728)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !466, file: !42, line: 676, baseType: !207, size: 128, offset: 1856)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !466, file: !42, line: 677, baseType: !207, size: 128, offset: 1984)
!1919 = !DIDerivedType(tag: DW_TAG_member, scope: !466, file: !42, line: 678, baseType: !1920, size: 128, offset: 2112)
!1920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !466, file: !42, line: 678, size: 128, elements: !1921)
!1921 = !{!1922, !1923}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !1920, file: !42, line: 679, baseType: !670, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !1920, file: !42, line: 680, baseType: !812, size: 128, align: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !466, file: !42, line: 682, baseType: !768, size: 64, offset: 2240)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !466, file: !42, line: 683, baseType: !768, size: 64, offset: 2304)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !466, file: !42, line: 684, baseType: !174, size: 32, offset: 2368)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !466, file: !42, line: 685, baseType: !174, size: 32, offset: 2400)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !466, file: !42, line: 686, baseType: !174, size: 32, offset: 2432)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !466, file: !42, line: 688, baseType: !174, size: 32, offset: 2464)
!1930 = !DIDerivedType(tag: DW_TAG_member, scope: !466, file: !42, line: 690, baseType: !1931, size: 64, offset: 2496)
!1931 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !466, file: !42, line: 690, size: 64, elements: !1932)
!1932 = !{!1933, !1934}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !1931, file: !42, line: 691, baseType: !823, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1931, file: !42, line: 692, baseType: !701, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !466, file: !42, line: 694, baseType: !1936, size: 64, offset: 2560)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !42, line: 1100, size: 384, elements: !1938)
!1938 = !{!1939, !1940, !1941, !1942}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !1937, file: !42, line: 1101, baseType: !546)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !1937, file: !42, line: 1102, baseType: !207, size: 128)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !1937, file: !42, line: 1103, baseType: !207, size: 128, offset: 128)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !1937, file: !42, line: 1104, baseType: !207, size: 128, offset: 256)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !466, file: !42, line: 695, baseType: !462, size: 1216, align: 64, offset: 2624)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !466, file: !42, line: 696, baseType: !207, size: 128, offset: 3840)
!1945 = !DIDerivedType(tag: DW_TAG_member, scope: !466, file: !42, line: 697, baseType: !1946, size: 64, offset: 3968)
!1946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !466, file: !42, line: 697, size: 64, elements: !1947)
!1947 = !{!1948, !1949, !1950, !2256, !2257}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !1946, file: !42, line: 698, baseType: !900, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !1946, file: !42, line: 699, baseType: !1588, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !1946, file: !42, line: 700, baseType: !1951, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !1953, line: 14, size: 832, elements: !1954)
!1953 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!1954 = !{!1955, !2251, !2252, !2253, !2254, !2255}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1952, file: !1953, line: 15, baseType: !1956, size: 512)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1957, line: 64, size: 512, elements: !1958)
!1957 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!1958 = !{!1959, !1960, !1961, !1963, !2005, !2107, !2241, !2246, !2247, !2248, !2249, !2250}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1956, file: !1957, line: 65, baseType: !575, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1956, file: !1957, line: 66, baseType: !207, size: 128, offset: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1956, file: !1957, line: 67, baseType: !1962, size: 64, offset: 192)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1956, file: !1957, line: 68, baseType: !1964, size: 64, offset: 256)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1957, line: 192, size: 704, elements: !1966)
!1966 = !{!1967, !1968, !1969, !1970}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1965, file: !1957, line: 193, baseType: !207, size: 128)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1965, file: !1957, line: 194, baseType: !546, offset: 128)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1965, file: !1957, line: 195, baseType: !1956, size: 512, offset: 128)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1965, file: !1957, line: 196, baseType: !1971, size: 64, offset: 640)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1973)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1957, line: 156, size: 192, elements: !1974)
!1974 = !{!1975, !1980, !1985}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1973, file: !1957, line: 157, baseType: !1976, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1977)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!128, !1964, !1962}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1973, file: !1957, line: 158, baseType: !1981, size: 64, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1982)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!575, !1964, !1962}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1973, file: !1957, line: 159, baseType: !1986, size: 64, offset: 128)
!1986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1987)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!128, !1964, !1962, !1990}
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1957, line: 148, size: 20736, elements: !1992)
!1992 = !{!1993, !1995, !1999, !2000, !2004}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1991, file: !1957, line: 149, baseType: !1994, size: 192)
!1994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !600, size: 192, elements: !686)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1991, file: !1957, line: 150, baseType: !1996, size: 4096, offset: 192)
!1996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !600, size: 4096, elements: !1997)
!1997 = !{!1998}
!1998 = !DISubrange(count: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1991, file: !1957, line: 151, baseType: !128, size: 32, offset: 4288)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1991, file: !1957, line: 152, baseType: !2001, size: 16384, offset: 4320)
!2001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 16384, elements: !2002)
!2002 = !{!2003}
!2003 = !DISubrange(count: 2048)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1991, file: !1957, line: 153, baseType: !128, size: 32, offset: 20704)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1956, file: !1957, line: 69, baseType: !2006, size: 64, offset: 320)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1957, line: 138, size: 448, elements: !2008)
!2008 = !{!2009, !2013, !2032, !2034, !2067, !2097, !2101}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2007, file: !1957, line: 139, baseType: !2010, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{null, !1962}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !2007, file: !1957, line: 140, baseType: !2014, size: 64, offset: 64)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2016)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2017, line: 230, size: 128, elements: !2018)
!2017 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!2018 = !{!2019, !2028}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2016, file: !2017, line: 231, baseType: !2020, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!837, !1962, !2023, !600}
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2017, line: 30, size: 128, elements: !2025)
!2025 = !{!2026, !2027}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2024, file: !2017, line: 31, baseType: !575, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2024, file: !2017, line: 32, baseType: !469, size: 16, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2016, file: !2017, line: 232, baseType: !2029, size: 64, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!837, !1962, !2023, !575, !753}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !2007, file: !1957, line: 141, baseType: !2033, size: 64, offset: 128)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !2007, file: !1957, line: 142, baseType: !2035, size: 64, offset: 192)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2038)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2017, line: 84, size: 320, elements: !2039)
!2039 = !{!2040, !2041, !2045, !2064, !2065}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2038, file: !2017, line: 85, baseType: !575, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2038, file: !2017, line: 86, baseType: !2042, size: 64, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!469, !1962, !2023, !128}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2038, file: !2017, line: 88, baseType: !2046, size: 64, offset: 128)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!469, !1962, !2049, !128}
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2017, line: 168, size: 448, elements: !2051)
!2051 = !{!2052, !2053, !2054, !2055, !2059, !2060}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2050, file: !2017, line: 169, baseType: !2024, size: 128)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2050, file: !2017, line: 170, baseType: !753, size: 64, offset: 128)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2050, file: !2017, line: 171, baseType: !98, size: 64, offset: 192)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2050, file: !2017, line: 172, baseType: !2056, size: 64, offset: 256)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!837, !832, !1962, !2049, !600, !638, !753}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2050, file: !2017, line: 174, baseType: !2056, size: 64, offset: 320)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2050, file: !2017, line: 176, baseType: !2061, size: 64, offset: 384)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!128, !832, !1962, !2049, !368}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2038, file: !2017, line: 90, baseType: !2033, size: 64, offset: 192)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2038, file: !2017, line: 91, baseType: !2066, size: 64, offset: 256)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !2007, file: !1957, line: 143, baseType: !2068, size: 64, offset: 256)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!2071, !1962}
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2073)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !59, line: 39, size: 384, elements: !2074)
!2074 = !{!2075, !2076, !2080, !2084, !2092, !2096}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2073, file: !59, line: 40, baseType: !58, size: 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2073, file: !59, line: 41, baseType: !2077, size: 64, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!619}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2073, file: !59, line: 42, baseType: !2081, size: 64, offset: 128)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{!98}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2073, file: !59, line: 43, baseType: !2085, size: 64, offset: 192)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!2088, !2090}
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !59, line: 19, flags: DIFlagFwdDecl)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2073, file: !59, line: 44, baseType: !2093, size: 64, offset: 256)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!2088}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2073, file: !59, line: 45, baseType: !1774, size: 64, offset: 320)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2007, file: !1957, line: 144, baseType: !2098, size: 64, offset: 320)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!2088, !1962}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2007, file: !1957, line: 145, baseType: !2102, size: 64, offset: 384)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{null, !1962, !2105, !2106}
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1956, file: !1957, line: 70, baseType: !2108, size: 64, offset: 384)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2110, line: 123, size: 1024, elements: !2111)
!2110 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!2111 = !{!2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2234, !2235, !2236, !2237, !2238}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2109, file: !2110, line: 124, baseType: !174, size: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2109, file: !2110, line: 125, baseType: !174, size: 32, offset: 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2109, file: !2110, line: 135, baseType: !2108, size: 64, offset: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2109, file: !2110, line: 136, baseType: !575, size: 64, offset: 128)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2109, file: !2110, line: 138, baseType: !199, size: 192, align: 64, offset: 192)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2109, file: !2110, line: 140, baseType: !2088, size: 64, offset: 384)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2109, file: !2110, line: 141, baseType: !5, size: 32, offset: 448)
!2119 = !DIDerivedType(tag: DW_TAG_member, scope: !2109, file: !2110, line: 142, baseType: !2120, size: 256, offset: 512)
!2120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2109, file: !2110, line: 142, size: 256, elements: !2121)
!2121 = !{!2122, !2174, !2178}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2120, file: !2110, line: 143, baseType: !2123, size: 192)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2110, line: 91, size: 192, elements: !2124)
!2124 = !{!2125, !2126, !2127}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2123, file: !2110, line: 92, baseType: !131, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2123, file: !2110, line: 94, baseType: !324, size: 64, offset: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2123, file: !2110, line: 100, baseType: !2128, size: 64, offset: 128)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2110, line: 180, size: 704, elements: !2130)
!2130 = !{!2131, !2132, !2133, !2146, !2147, !2148, !2172, !2173}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2129, file: !2110, line: 182, baseType: !2108, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2129, file: !2110, line: 183, baseType: !5, size: 32, offset: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !2129, file: !2110, line: 186, baseType: !2134, size: 192, offset: 128)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !2135, line: 19, size: 192, elements: !2136)
!2135 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!2136 = !{!2137, !2144, !2145}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !2134, file: !2135, line: 20, baseType: !2138, size: 128)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2139, line: 292, size: 128, elements: !2140)
!2139 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!2140 = !{!2141, !2142, !2143}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2138, file: !2139, line: 293, baseType: !546)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2138, file: !2139, line: 295, baseType: !425, size: 32)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2138, file: !2139, line: 296, baseType: !98, size: 64, offset: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !2134, file: !2135, line: 21, baseType: !5, size: 32, offset: 128)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !2134, file: !2135, line: 22, baseType: !5, size: 32, offset: 160)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !2129, file: !2110, line: 187, baseType: !162, size: 32, offset: 320)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !2129, file: !2110, line: 188, baseType: !162, size: 32, offset: 352)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !2129, file: !2110, line: 189, baseType: !2149, size: 64, offset: 384)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !2110, line: 168, size: 320, elements: !2151)
!2151 = !{!2152, !2156, !2160, !2164, !2168}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2150, file: !2110, line: 169, baseType: !2153, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!128, !747, !2128}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !2150, file: !2110, line: 171, baseType: !2157, size: 64, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!128, !2108, !575, !469}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !2150, file: !2110, line: 173, baseType: !2161, size: 64, offset: 128)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!128, !2108}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !2150, file: !2110, line: 174, baseType: !2165, size: 64, offset: 192)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!128, !2108, !2108, !575}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2150, file: !2110, line: 176, baseType: !2169, size: 64, offset: 256)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!128, !747, !2108, !2128}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !2129, file: !2110, line: 192, baseType: !207, size: 128, offset: 448)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !2129, file: !2110, line: 194, baseType: !984, size: 128, offset: 576)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2120, file: !2110, line: 144, baseType: !2175, size: 64)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2110, line: 103, size: 64, elements: !2176)
!2176 = !{!2177}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2175, file: !2110, line: 104, baseType: !2108, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2120, file: !2110, line: 145, baseType: !2179, size: 256)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2110, line: 107, size: 256, elements: !2180)
!2180 = !{!2181, !2229, !2232, !2233}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2179, file: !2110, line: 108, baseType: !2182, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2184)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2110, line: 217, size: 768, elements: !2185)
!2185 = !{!2186, !2206, !2210, !2211, !2212, !2213, !2214, !2218, !2219, !2220, !2221, !2225}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2184, file: !2110, line: 222, baseType: !2187, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!128, !2190}
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2110, line: 197, size: 1088, elements: !2192)
!2192 = !{!2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2191, file: !2110, line: 199, baseType: !2108, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2191, file: !2110, line: 200, baseType: !832, size: 64, offset: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2191, file: !2110, line: 201, baseType: !747, size: 64, offset: 128)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2191, file: !2110, line: 202, baseType: !98, size: 64, offset: 192)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2191, file: !2110, line: 205, baseType: !762, size: 192, offset: 256)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2191, file: !2110, line: 206, baseType: !762, size: 192, offset: 448)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2191, file: !2110, line: 207, baseType: !128, size: 32, offset: 640)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2191, file: !2110, line: 208, baseType: !207, size: 128, offset: 704)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2191, file: !2110, line: 209, baseType: !600, size: 64, offset: 832)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2191, file: !2110, line: 211, baseType: !753, size: 64, offset: 896)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2191, file: !2110, line: 212, baseType: !619, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2191, file: !2110, line: 213, baseType: !619, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2191, file: !2110, line: 214, baseType: !397, size: 64, offset: 1024)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2184, file: !2110, line: 223, baseType: !2207, size: 64, offset: 64)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{null, !2190}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2184, file: !2110, line: 236, baseType: !793, size: 64, offset: 128)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2184, file: !2110, line: 238, baseType: !780, size: 64, offset: 192)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2184, file: !2110, line: 239, baseType: !789, size: 64, offset: 256)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2184, file: !2110, line: 240, baseType: !785, size: 64, offset: 320)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2184, file: !2110, line: 242, baseType: !2215, size: 64, offset: 384)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!837, !2190, !600, !753, !638}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2184, file: !2110, line: 252, baseType: !753, size: 64, offset: 448)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2184, file: !2110, line: 259, baseType: !619, size: 8, offset: 512)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2184, file: !2110, line: 260, baseType: !2215, size: 64, offset: 576)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2184, file: !2110, line: 263, baseType: !2222, size: 64, offset: 640)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!934, !2190, !936}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2184, file: !2110, line: 266, baseType: !2226, size: 64, offset: 704)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!128, !2190, !368}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2179, file: !2110, line: 109, baseType: !2230, size: 64, offset: 64)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2110, line: 31, flags: DIFlagFwdDecl)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2179, file: !2110, line: 110, baseType: !638, size: 64, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2179, file: !2110, line: 111, baseType: !2108, size: 64, offset: 192)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2109, file: !2110, line: 148, baseType: !98, size: 64, offset: 768)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2109, file: !2110, line: 154, baseType: !214, size: 64, offset: 832)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2109, file: !2110, line: 156, baseType: !142, size: 16, offset: 896)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2109, file: !2110, line: 157, baseType: !469, size: 16, offset: 912)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2109, file: !2110, line: 158, baseType: !2239, size: 64, offset: 960)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2110, line: 32, flags: DIFlagFwdDecl)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1956, file: !1957, line: 71, baseType: !2242, size: 32, offset: 448)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2243, line: 19, size: 32, elements: !2244)
!2243 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!2244 = !{!2245}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2242, file: !2243, line: 20, baseType: !169, size: 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1956, file: !1957, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1956, file: !1957, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1956, file: !1957, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1956, file: !1957, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1956, file: !1957, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1952, file: !1953, line: 16, baseType: !665, size: 64, offset: 512)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1952, file: !1953, line: 17, baseType: !823, size: 64, offset: 576)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1952, file: !1953, line: 18, baseType: !207, size: 128, offset: 640)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1952, file: !1953, line: 19, baseType: !633, size: 32, offset: 768)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1952, file: !1953, line: 20, baseType: !5, size: 32, offset: 800)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !1946, file: !42, line: 701, baseType: !600, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !1946, file: !42, line: 702, baseType: !5, size: 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !466, file: !42, line: 705, baseType: !164, size: 32, offset: 4032)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !466, file: !42, line: 708, baseType: !164, size: 32, offset: 4064)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !466, file: !42, line: 709, baseType: !1671, size: 64, offset: 4096)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !466, file: !42, line: 720, baseType: !98, size: 64, offset: 4160)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !462, file: !42, line: 453, baseType: !2138, size: 128, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !462, file: !42, line: 454, baseType: !425, size: 32, offset: 192)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !462, file: !42, line: 455, baseType: !174, size: 32, offset: 224)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !462, file: !42, line: 460, baseType: !321, size: 128, offset: 256)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !462, file: !42, line: 461, baseType: !1209, size: 256, offset: 384)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !462, file: !42, line: 462, baseType: !131, size: 64, offset: 640)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !462, file: !42, line: 463, baseType: !131, size: 64, offset: 704)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !462, file: !42, line: 464, baseType: !131, size: 64, offset: 768)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !462, file: !42, line: 465, baseType: !2271, size: 64, offset: 832)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2273)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !42, line: 367, size: 1408, elements: !2274)
!2274 = !{!2275, !2279, !2283, !2287, !2291, !2295, !2301, !2306, !2310, !2315, !2319, !2323, !2327, !2328, !2332, !2338, !2339, !2340, !2344, !2349, !2353, !2360}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2273, file: !42, line: 368, baseType: !2276, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!128, !449, !713}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !2273, file: !42, line: 369, baseType: !2280, size: 64, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!128, !832, !449}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2273, file: !42, line: 372, baseType: !2284, size: 64, offset: 128)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!128, !461, !713}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !2273, file: !42, line: 375, baseType: !2288, size: 64, offset: 192)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!128, !449}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !2273, file: !42, line: 381, baseType: !2292, size: 64, offset: 256)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!128, !832, !461, !210, !5}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2273, file: !42, line: 383, baseType: !2296, size: 64, offset: 320)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{null, !2299}
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !42, line: 290, flags: DIFlagFwdDecl)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2273, file: !42, line: 385, baseType: !2302, size: 64, offset: 384)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!128, !832, !461, !638, !5, !5, !2305, !1055}
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2273, file: !42, line: 388, baseType: !2307, size: 64, offset: 448)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!128, !832, !461, !638, !5, !5, !449, !98}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2273, file: !42, line: 393, baseType: !2311, size: 64, offset: 512)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!2314, !461, !2314}
!2314 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !175, line: 125, baseType: !214)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !2273, file: !42, line: 394, baseType: !2316, size: 64, offset: 576)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{null, !449, !5, !5}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !2273, file: !42, line: 395, baseType: !2320, size: 64, offset: 640)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!128, !449, !425}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !2273, file: !42, line: 396, baseType: !2324, size: 64, offset: 704)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{null, !449}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2273, file: !42, line: 397, baseType: !845, size: 64, offset: 768)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !2273, file: !42, line: 402, baseType: !2329, size: 64, offset: 832)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!128, !461, !449, !449, !3}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !2273, file: !42, line: 404, baseType: !2333, size: 64, offset: 896)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!619, !449, !2336}
!2336 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !2337, line: 305, baseType: !5)
!2337 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !2273, file: !42, line: 405, baseType: !2324, size: 64, offset: 960)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !2273, file: !42, line: 406, baseType: !2288, size: 64, offset: 1024)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2273, file: !42, line: 407, baseType: !2341, size: 64, offset: 1088)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!128, !449, !131, !131}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2273, file: !42, line: 409, baseType: !2345, size: 64, offset: 1152)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{null, !449, !2348, !2348}
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2273, file: !42, line: 410, baseType: !2350, size: 64, offset: 1216)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!128, !461, !449}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2273, file: !42, line: 413, baseType: !2354, size: 64, offset: 1280)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!128, !2357, !832, !2359}
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !42, line: 61, flags: DIFlagFwdDecl)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2273, file: !42, line: 415, baseType: !2361, size: 64, offset: 1344)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{null, !832}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !462, file: !42, line: 466, baseType: !131, size: 64, offset: 896)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !462, file: !42, line: 467, baseType: !1374, size: 32, offset: 960)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !462, file: !42, line: 468, baseType: !546, offset: 992)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !462, file: !42, line: 469, baseType: !207, size: 128, offset: 1024)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !462, file: !42, line: 470, baseType: !98, size: 64, offset: 1152)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !457, file: !362, line: 87, baseType: !131, size: 64, offset: 192)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !457, file: !362, line: 94, baseType: !131, size: 64, offset: 256)
!2371 = !DIDerivedType(tag: DW_TAG_member, scope: !454, file: !362, line: 96, baseType: !2372, size: 64)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !454, file: !362, line: 96, size: 64, elements: !2373)
!2373 = !{!2374}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2372, file: !362, line: 101, baseType: !2375, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !175, line: 143, baseType: !214)
!2376 = !DIDerivedType(tag: DW_TAG_member, scope: !454, file: !362, line: 103, baseType: !2377, size: 320)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !454, file: !362, line: 103, size: 320, elements: !2378)
!2378 = !{!2379, !2389, !2393, !2394}
!2379 = !DIDerivedType(tag: DW_TAG_member, scope: !2377, file: !362, line: 104, baseType: !2380, size: 128)
!2380 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2377, file: !362, line: 104, size: 128, elements: !2381)
!2381 = !{!2382, !2383}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !2380, file: !362, line: 105, baseType: !207, size: 128)
!2383 = !DIDerivedType(tag: DW_TAG_member, scope: !2380, file: !362, line: 106, baseType: !2384, size: 128)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2380, file: !362, line: 106, size: 128, elements: !2385)
!2385 = !{!2386, !2387, !2388}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2384, file: !362, line: 107, baseType: !449, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2384, file: !362, line: 109, baseType: !128, size: 32, offset: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !2384, file: !362, line: 110, baseType: !128, size: 32, offset: 96)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !2377, file: !362, line: 117, baseType: !2390, size: 64, offset: 128)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2392, line: 323, flags: DIFlagFwdDecl)
!2392 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/lizy2001/genbc/linux")
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !2377, file: !362, line: 119, baseType: !98, size: 64, offset: 192)
!2394 = !DIDerivedType(tag: DW_TAG_member, scope: !2377, file: !362, line: 120, baseType: !2395, size: 64, offset: 256)
!2395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2377, file: !362, line: 120, size: 64, elements: !2396)
!2396 = !{!2397, !2398, !2399}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !2395, file: !362, line: 121, baseType: !98, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2395, file: !362, line: 122, baseType: !131, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, scope: !2395, file: !362, line: 123, baseType: !2400, size: 32)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2395, file: !362, line: 123, size: 32, elements: !2401)
!2401 = !{!2402, !2403, !2404}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !2400, file: !362, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !2400, file: !362, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2400, file: !362, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!2405 = !DIDerivedType(tag: DW_TAG_member, scope: !454, file: !362, line: 130, baseType: !2406, size: 192)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !454, file: !362, line: 130, size: 192, elements: !2407)
!2407 = !{!2408, !2409, !2410, !2411, !2412}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2406, file: !362, line: 131, baseType: !131, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !2406, file: !362, line: 134, baseType: !110, size: 8, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !2406, file: !362, line: 135, baseType: !110, size: 8, offset: 72)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !2406, file: !362, line: 136, baseType: !174, size: 32, offset: 96)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !2406, file: !362, line: 137, baseType: !5, size: 32, offset: 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, scope: !454, file: !362, line: 139, baseType: !2414, size: 256)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !454, file: !362, line: 139, size: 256, elements: !2415)
!2415 = !{!2416, !2417, !2418}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !2414, file: !362, line: 140, baseType: !131, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !2414, file: !362, line: 141, baseType: !174, size: 32, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !2414, file: !362, line: 143, baseType: !207, size: 128, offset: 128)
!2419 = !DIDerivedType(tag: DW_TAG_member, scope: !454, file: !362, line: 145, baseType: !2420, size: 256)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !454, file: !362, line: 145, size: 256, elements: !2421)
!2421 = !{!2422, !2423, !2425, !2426, !2431}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !2420, file: !362, line: 146, baseType: !131, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !2420, file: !362, line: 147, baseType: !2424, size: 64, offset: 64)
!2424 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !380, line: 509, baseType: !449)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !2420, file: !362, line: 148, baseType: !131, size: 64, offset: 128)
!2426 = !DIDerivedType(tag: DW_TAG_member, scope: !2420, file: !362, line: 149, baseType: !2427, size: 64, offset: 192)
!2427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2420, file: !362, line: 149, size: 64, elements: !2428)
!2428 = !{!2429, !2430}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !2427, file: !362, line: 150, baseType: !360, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !2427, file: !362, line: 151, baseType: !174, size: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2420, file: !362, line: 156, baseType: !546, offset: 256)
!2432 = !DIDerivedType(tag: DW_TAG_member, scope: !454, file: !362, line: 159, baseType: !2433, size: 128)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !454, file: !362, line: 159, size: 128, elements: !2434)
!2434 = !{!2435, !2509}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2433, file: !362, line: 161, baseType: !2436, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !29, line: 110, size: 1152, elements: !2438)
!2438 = !{!2439, !2449, !2470, !2471, !2482, !2483, !2484, !2496, !2497, !2498}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2437, file: !29, line: 111, baseType: !2440, size: 384)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !29, line: 19, size: 384, elements: !2441)
!2441 = !{!2442, !2444, !2445, !2446, !2447, !2448}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2440, file: !29, line: 20, baseType: !2443, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2440, file: !29, line: 21, baseType: !2443, size: 64, offset: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2440, file: !29, line: 22, baseType: !2443, size: 64, offset: 128)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2440, file: !29, line: 23, baseType: !131, size: 64, offset: 192)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2440, file: !29, line: 24, baseType: !131, size: 64, offset: 256)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2440, file: !29, line: 25, baseType: !131, size: 64, offset: 320)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2437, file: !29, line: 112, baseType: !2450, size: 64, offset: 384)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2452, line: 105, size: 128, elements: !2453)
!2452 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2453 = !{!2454, !2455}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2451, file: !2452, line: 110, baseType: !131, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2451, file: !2452, line: 118, baseType: !2456, size: 64, offset: 64)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2452, line: 95, size: 448, elements: !2458)
!2458 = !{!2459, !2460, !2465, !2466, !2467, !2468, !2469}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2457, file: !2452, line: 96, baseType: !766, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2457, file: !2452, line: 97, baseType: !2461, size: 64, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2452, line: 60, baseType: !2463)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{null, !2450}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2457, file: !2452, line: 98, baseType: !2461, size: 64, offset: 128)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2457, file: !2452, line: 99, baseType: !619, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2457, file: !2452, line: 100, baseType: !619, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2457, file: !2452, line: 101, baseType: !812, size: 128, align: 64, offset: 256)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2457, file: !2452, line: 102, baseType: !2450, size: 64, offset: 384)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2437, file: !29, line: 113, baseType: !2451, size: 128, offset: 448)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2437, file: !29, line: 114, baseType: !2472, size: 192, offset: 576)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2473, line: 26, size: 192, elements: !2474)
!2473 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2474 = !{!2475, !2476}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2472, file: !2473, line: 27, baseType: !5, size: 32)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2472, file: !2473, line: 28, baseType: !2477, size: 128, offset: 64)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2478, line: 43, size: 128, elements: !2479)
!2478 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2479 = !{!2480, !2481}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2477, file: !2478, line: 44, baseType: !280)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2477, file: !2478, line: 45, baseType: !207, size: 128)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2437, file: !29, line: 115, baseType: !28, size: 32, offset: 768)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2437, file: !29, line: 116, baseType: !5, size: 32, offset: 800)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2437, file: !29, line: 117, baseType: !2485, size: 64, offset: 832)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2487)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !29, line: 67, size: 256, elements: !2488)
!2488 = !{!2489, !2490, !2494, !2495}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2487, file: !29, line: 73, baseType: !2324, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2487, file: !29, line: 78, baseType: !2491, size: 64, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{null, !2436}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2487, file: !29, line: 83, baseType: !2491, size: 64, offset: 128)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2487, file: !29, line: 89, baseType: !415, size: 64, offset: 192)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2437, file: !29, line: 118, baseType: !98, size: 64, offset: 896)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2437, file: !29, line: 119, baseType: !128, size: 32, offset: 960)
!2498 = !DIDerivedType(tag: DW_TAG_member, scope: !2437, file: !29, line: 120, baseType: !2499, size: 128, offset: 1024)
!2499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2437, file: !29, line: 120, size: 128, elements: !2500)
!2500 = !{!2501, !2507}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2499, file: !29, line: 121, baseType: !2502, size: 128)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2503, line: 6, size: 128, elements: !2504)
!2503 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2504 = !{!2505, !2506}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2502, file: !2503, line: 7, baseType: !214, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2502, file: !2503, line: 8, baseType: !214, size: 64, offset: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2499, file: !29, line: 122, baseType: !2508)
!2508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2502, elements: !1352)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2433, file: !362, line: 162, baseType: !98, size: 64, offset: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !454, file: !362, line: 176, baseType: !812, size: 128, align: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, scope: !450, file: !362, line: 179, baseType: !2512, size: 32, offset: 384)
!2512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !450, file: !362, line: 179, size: 32, elements: !2513)
!2513 = !{!2514, !2515, !2516, !2517}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2512, file: !362, line: 184, baseType: !174, size: 32)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2512, file: !362, line: 192, baseType: !5, size: 32)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2512, file: !362, line: 194, baseType: !5, size: 32)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2512, file: !362, line: 195, baseType: !128, size: 32)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !450, file: !362, line: 199, baseType: !174, size: 32, offset: 416)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !420, file: !12, line: 522, baseType: !449, size: 64, offset: 512)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !420, file: !12, line: 528, baseType: !2521, size: 64, offset: 576)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !420, file: !12, line: 532, baseType: !2523, size: 64, offset: 640)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !420, file: !12, line: 536, baseType: !2424, size: 64, offset: 704)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !399, file: !12, line: 563, baseType: !2526, size: 64, offset: 320)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!418, !419, !11}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !399, file: !12, line: 565, baseType: !2530, size: 64, offset: 384)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{null, !419, !131, !131}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !399, file: !12, line: 567, baseType: !2534, size: 64, offset: 448)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!131, !368}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !399, file: !12, line: 571, baseType: !415, size: 64, offset: 512)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !399, file: !12, line: 574, baseType: !415, size: 64, offset: 576)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !399, file: !12, line: 579, baseType: !2540, size: 64, offset: 640)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!128, !368, !131, !98, !128, !128}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !399, file: !12, line: 585, baseType: !2544, size: 64, offset: 704)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!575, !368}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !399, file: !12, line: 615, baseType: !2548, size: 64, offset: 768)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!449, !368, !131}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !369, file: !362, line: 359, baseType: !131, size: 64, offset: 1216)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !369, file: !362, line: 361, baseType: !832, size: 64, offset: 1280)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !369, file: !362, line: 362, baseType: !98, size: 64, offset: 1344)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !369, file: !362, line: 365, baseType: !766, size: 64, offset: 1408)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !369, file: !362, line: 373, baseType: !2556, offset: 1472)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !362, line: 296, elements: !223)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !365, file: !362, line: 391, baseType: !324, size: 64, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !365, file: !362, line: 392, baseType: !214, size: 64, offset: 128)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !365, file: !362, line: 394, baseType: !1086, size: 64, offset: 192)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !365, file: !362, line: 398, baseType: !131, size: 64, offset: 256)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !365, file: !362, line: 399, baseType: !131, size: 64, offset: 320)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !365, file: !362, line: 405, baseType: !131, size: 64, offset: 384)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !365, file: !362, line: 406, baseType: !131, size: 64, offset: 448)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !365, file: !362, line: 407, baseType: !2565, size: 64, offset: 512)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !380, line: 286, baseType: !2567)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !380, line: 286, size: 64, elements: !2568)
!2568 = !{!2569}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2567, file: !380, line: 286, baseType: !2570, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !385, line: 18, baseType: !131)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !365, file: !362, line: 416, baseType: !174, size: 32, offset: 576)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !365, file: !362, line: 428, baseType: !174, size: 32, offset: 608)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !365, file: !362, line: 437, baseType: !174, size: 32, offset: 640)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !365, file: !362, line: 447, baseType: !174, size: 32, offset: 672)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !365, file: !362, line: 450, baseType: !766, size: 64, offset: 704)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !365, file: !362, line: 452, baseType: !128, size: 32, offset: 768)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !365, file: !362, line: 454, baseType: !546, offset: 800)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !365, file: !362, line: 457, baseType: !1209, size: 256, offset: 832)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !365, file: !362, line: 459, baseType: !207, size: 128, offset: 1088)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !365, file: !362, line: 466, baseType: !131, size: 64, offset: 1216)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !365, file: !362, line: 467, baseType: !131, size: 64, offset: 1280)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !365, file: !362, line: 469, baseType: !131, size: 64, offset: 1344)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !365, file: !362, line: 470, baseType: !131, size: 64, offset: 1408)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !365, file: !362, line: 471, baseType: !768, size: 64, offset: 1472)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !365, file: !362, line: 472, baseType: !131, size: 64, offset: 1536)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !365, file: !362, line: 473, baseType: !131, size: 64, offset: 1600)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !365, file: !362, line: 474, baseType: !131, size: 64, offset: 1664)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !365, file: !362, line: 475, baseType: !131, size: 64, offset: 1728)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !365, file: !362, line: 477, baseType: !546, offset: 1792)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !365, file: !362, line: 478, baseType: !131, size: 64, offset: 1792)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !365, file: !362, line: 478, baseType: !131, size: 64, offset: 1856)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !365, file: !362, line: 478, baseType: !131, size: 64, offset: 1920)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !365, file: !362, line: 478, baseType: !131, size: 64, offset: 1984)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !365, file: !362, line: 479, baseType: !131, size: 64, offset: 2048)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !365, file: !362, line: 479, baseType: !131, size: 64, offset: 2112)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !365, file: !362, line: 479, baseType: !131, size: 64, offset: 2176)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !365, file: !362, line: 480, baseType: !131, size: 64, offset: 2240)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !365, file: !362, line: 480, baseType: !131, size: 64, offset: 2304)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !365, file: !362, line: 480, baseType: !131, size: 64, offset: 2368)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !365, file: !362, line: 480, baseType: !131, size: 64, offset: 2432)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !365, file: !362, line: 482, baseType: !2602, size: 2816, offset: 2496)
!2602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 2816, elements: !2603)
!2603 = !{!2604}
!2604 = !DISubrange(count: 44)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !365, file: !362, line: 488, baseType: !2606, size: 256, offset: 5312)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2607, line: 60, size: 256, elements: !2608)
!2607 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2608 = !{!2609}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2606, file: !2607, line: 61, baseType: !2610, size: 256)
!2610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !766, size: 256, elements: !1145)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !365, file: !362, line: 490, baseType: !2612, size: 64, offset: 5568)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !362, line: 490, flags: DIFlagFwdDecl)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !365, file: !362, line: 493, baseType: !2615, size: 896, offset: 5632)
!2615 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2616, line: 53, baseType: !2617)
!2616 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2616, line: 13, size: 896, elements: !2618)
!2618 = !{!2619, !2620, !2621, !2622, !2625, !2626, !2627, !2628, !2648, !2649, !2650}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2617, file: !2616, line: 18, baseType: !214, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2617, file: !2616, line: 28, baseType: !768, size: 64, offset: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2617, file: !2616, line: 31, baseType: !1209, size: 256, offset: 128)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2617, file: !2616, line: 32, baseType: !2623, size: 64, offset: 384)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2616, line: 32, flags: DIFlagFwdDecl)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2617, file: !2616, line: 37, baseType: !142, size: 16, offset: 448)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2617, file: !2616, line: 40, baseType: !762, size: 192, offset: 512)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2617, file: !2616, line: 41, baseType: !98, size: 64, offset: 704)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2617, file: !2616, line: 42, baseType: !2629, size: 64, offset: 768)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2631)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2632, line: 13, size: 896, elements: !2633)
!2632 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!2633 = !{!2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2631, file: !2632, line: 14, baseType: !98, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2631, file: !2632, line: 15, baseType: !131, size: 64, offset: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2631, file: !2632, line: 17, baseType: !131, size: 64, offset: 128)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2631, file: !2632, line: 17, baseType: !131, size: 64, offset: 192)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2631, file: !2632, line: 19, baseType: !97, size: 64, offset: 256)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2631, file: !2632, line: 21, baseType: !97, size: 64, offset: 320)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2631, file: !2632, line: 22, baseType: !97, size: 64, offset: 384)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2631, file: !2632, line: 23, baseType: !97, size: 64, offset: 448)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2631, file: !2632, line: 24, baseType: !97, size: 64, offset: 512)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2631, file: !2632, line: 25, baseType: !97, size: 64, offset: 576)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2631, file: !2632, line: 26, baseType: !97, size: 64, offset: 640)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2631, file: !2632, line: 27, baseType: !97, size: 64, offset: 704)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2631, file: !2632, line: 28, baseType: !97, size: 64, offset: 768)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2631, file: !2632, line: 29, baseType: !97, size: 64, offset: 832)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2617, file: !2616, line: 44, baseType: !174, size: 32, offset: 832)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2617, file: !2616, line: 50, baseType: !860, size: 16, offset: 864)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2617, file: !2616, line: 51, baseType: !2651, size: 16, offset: 880)
!2651 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !163, line: 18, baseType: !2652)
!2652 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !165, line: 23, baseType: !1236)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !365, file: !362, line: 495, baseType: !131, size: 64, offset: 6528)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !365, file: !362, line: 497, baseType: !2655, size: 64, offset: 6592)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !362, line: 381, size: 384, elements: !2657)
!2657 = !{!2658, !2659, !2665}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2656, file: !362, line: 382, baseType: !174, size: 32)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2656, file: !362, line: 383, baseType: !2660, size: 128, offset: 64)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !362, line: 376, size: 128, elements: !2661)
!2661 = !{!2662, !2663}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2660, file: !362, line: 377, baseType: !152, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2660, file: !362, line: 378, baseType: !2664, size: 64, offset: 64)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2656, file: !362, line: 384, baseType: !2472, size: 192, offset: 192)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !365, file: !362, line: 500, baseType: !546, offset: 6656)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !365, file: !362, line: 501, baseType: !2668, size: 64, offset: 6656)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !362, line: 387, flags: DIFlagFwdDecl)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !365, file: !362, line: 516, baseType: !1342, size: 64, offset: 6720)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !365, file: !362, line: 519, baseType: !832, size: 64, offset: 6784)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !365, file: !362, line: 521, baseType: !2673, size: 64, offset: 6848)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !362, line: 521, flags: DIFlagFwdDecl)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !365, file: !362, line: 545, baseType: !174, size: 32, offset: 6912)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !365, file: !362, line: 548, baseType: !619, size: 8, offset: 6944)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !365, file: !362, line: 550, baseType: !2678, offset: 6952)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2679, line: 142, elements: !223)
!2679 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !365, file: !362, line: 554, baseType: !1733, size: 256, offset: 6976)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !365, file: !362, line: 557, baseType: !162, size: 32, offset: 7232)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !361, file: !362, line: 565, baseType: !2683, offset: 7296)
!2683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, elements: !2684)
!2684 = !{!2685}
!2685 = !DISubrange(count: -1)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !153, file: !154, line: 758, baseType: !360, size: 64, offset: 3968)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !153, file: !154, line: 761, baseType: !2688, size: 320, offset: 4032)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2607, line: 34, size: 320, elements: !2689)
!2689 = !{!2690, !2691}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2688, file: !2607, line: 35, baseType: !214, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2688, file: !2607, line: 36, baseType: !2692, size: 256, offset: 64)
!2692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 256, elements: !1145)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !153, file: !154, line: 766, baseType: !128, size: 32, offset: 4352)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !153, file: !154, line: 767, baseType: !128, size: 32, offset: 4384)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !153, file: !154, line: 768, baseType: !128, size: 32, offset: 4416)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !153, file: !154, line: 770, baseType: !128, size: 32, offset: 4448)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !153, file: !154, line: 772, baseType: !131, size: 64, offset: 4480)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !153, file: !154, line: 775, baseType: !5, size: 32, offset: 4544)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !153, file: !154, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !153, file: !154, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !153, file: !154, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !153, file: !154, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !153, file: !154, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !153, file: !154, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !153, file: !154, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !153, file: !154, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !153, file: !154, line: 831, baseType: !131, size: 64, offset: 4672)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !153, file: !154, line: 833, baseType: !2709, size: 384, offset: 4736)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !23, line: 25, size: 384, elements: !2710)
!2710 = !{!2711, !2716}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2709, file: !23, line: 26, baseType: !2712, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!97, !2715}
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, scope: !2709, file: !23, line: 27, baseType: !2717, size: 320, offset: 64)
!2717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2709, file: !23, line: 27, size: 320, elements: !2718)
!2718 = !{!2719, !2729, !2754}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2717, file: !23, line: 36, baseType: !2720, size: 320)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2717, file: !23, line: 29, size: 320, elements: !2721)
!2721 = !{!2722, !2724, !2725, !2726, !2727, !2728}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2720, file: !23, line: 30, baseType: !2723, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2720, file: !23, line: 31, baseType: !162, size: 32, offset: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2720, file: !23, line: 32, baseType: !162, size: 32, offset: 96)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2720, file: !23, line: 33, baseType: !162, size: 32, offset: 128)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2720, file: !23, line: 34, baseType: !214, size: 64, offset: 192)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2720, file: !23, line: 35, baseType: !2723, size: 64, offset: 256)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2717, file: !23, line: 46, baseType: !2730, size: 192)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2717, file: !23, line: 38, size: 192, elements: !2731)
!2731 = !{!2732, !2733, !2734, !2753}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2730, file: !23, line: 39, baseType: !303, size: 32)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2730, file: !23, line: 40, baseType: !22, size: 32, offset: 32)
!2734 = !DIDerivedType(tag: DW_TAG_member, scope: !2730, file: !23, line: 41, baseType: !2735, size: 64, offset: 64)
!2735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2730, file: !23, line: 41, size: 64, elements: !2736)
!2736 = !{!2737, !2745}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2735, file: !23, line: 42, baseType: !2738, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2740, line: 7, size: 128, elements: !2741)
!2740 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2741 = !{!2742, !2744}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2739, file: !2740, line: 8, baseType: !2743, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !305, line: 93, baseType: !247)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2739, file: !2740, line: 9, baseType: !247, size: 64, offset: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2735, file: !23, line: 43, baseType: !2746, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2748, line: 7, size: 64, elements: !2749)
!2748 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2749 = !{!2750, !2752}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2747, file: !2748, line: 8, baseType: !2751, size: 32)
!2751 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2748, line: 5, baseType: !1201)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2747, file: !2748, line: 9, baseType: !1201, size: 32, offset: 32)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2730, file: !23, line: 45, baseType: !214, size: 64, offset: 128)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2717, file: !23, line: 54, baseType: !2755, size: 256)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2717, file: !23, line: 48, size: 256, elements: !2756)
!2756 = !{!2757, !2760, !2761, !2762, !2763}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2755, file: !23, line: 49, baseType: !2758, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !23, line: 14, flags: DIFlagFwdDecl)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2755, file: !23, line: 50, baseType: !128, size: 32, offset: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2755, file: !23, line: 51, baseType: !128, size: 32, offset: 96)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2755, file: !23, line: 52, baseType: !131, size: 64, offset: 128)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2755, file: !23, line: 53, baseType: !131, size: 64, offset: 192)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !153, file: !154, line: 835, baseType: !2765, size: 32, offset: 5120)
!2765 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !175, line: 22, baseType: !2766)
!2766 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !305, line: 28, baseType: !128)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !153, file: !154, line: 836, baseType: !2765, size: 32, offset: 5152)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !153, file: !154, line: 840, baseType: !131, size: 64, offset: 5184)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !153, file: !154, line: 849, baseType: !152, size: 64, offset: 5248)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !153, file: !154, line: 852, baseType: !152, size: 64, offset: 5312)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !153, file: !154, line: 857, baseType: !207, size: 128, offset: 5376)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !153, file: !154, line: 858, baseType: !207, size: 128, offset: 5504)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !153, file: !154, line: 859, baseType: !152, size: 64, offset: 5632)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !153, file: !154, line: 867, baseType: !207, size: 128, offset: 5696)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !153, file: !154, line: 868, baseType: !207, size: 128, offset: 5824)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !153, file: !154, line: 871, baseType: !1137, size: 64, offset: 5952)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !153, file: !154, line: 872, baseType: !2778, size: 512, offset: 6016)
!2778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 512, elements: !1145)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !153, file: !154, line: 873, baseType: !207, size: 128, offset: 6528)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !153, file: !154, line: 874, baseType: !207, size: 128, offset: 6656)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !153, file: !154, line: 876, baseType: !2782, size: 64, offset: 6784)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !153, file: !154, line: 879, baseType: !127, size: 64, offset: 6848)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !153, file: !154, line: 882, baseType: !127, size: 64, offset: 6912)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !153, file: !154, line: 884, baseType: !214, size: 64, offset: 6976)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !153, file: !154, line: 885, baseType: !214, size: 64, offset: 7040)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !153, file: !154, line: 890, baseType: !214, size: 64, offset: 7104)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !153, file: !154, line: 891, baseType: !2789, size: 128, offset: 7168)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !154, line: 242, size: 128, elements: !2790)
!2790 = !{!2791, !2792, !2793}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2789, file: !154, line: 244, baseType: !214, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2789, file: !154, line: 245, baseType: !214, size: 64, offset: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2789, file: !154, line: 246, baseType: !280, offset: 128)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !153, file: !154, line: 900, baseType: !131, size: 64, offset: 7296)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !153, file: !154, line: 901, baseType: !131, size: 64, offset: 7360)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !153, file: !154, line: 904, baseType: !214, size: 64, offset: 7424)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !153, file: !154, line: 907, baseType: !214, size: 64, offset: 7488)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !153, file: !154, line: 910, baseType: !131, size: 64, offset: 7552)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !153, file: !154, line: 911, baseType: !131, size: 64, offset: 7616)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !153, file: !154, line: 914, baseType: !2801, size: 640, offset: 7680)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2802, line: 123, size: 640, elements: !2803)
!2802 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2803 = !{!2804, !2810, !2811}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2801, file: !2802, line: 124, baseType: !2805, size: 576)
!2805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2806, size: 576, elements: !686)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2802, line: 108, size: 192, elements: !2807)
!2807 = !{!2808, !2809}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2806, file: !2802, line: 109, baseType: !214, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2806, file: !2802, line: 110, baseType: !318, size: 128, offset: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2801, file: !2802, line: 125, baseType: !5, size: 32, offset: 576)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2801, file: !2802, line: 126, baseType: !5, size: 32, offset: 608)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !153, file: !154, line: 917, baseType: !2813, size: 192, offset: 8320)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2802, line: 134, size: 192, elements: !2814)
!2814 = !{!2815, !2816}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2813, file: !2802, line: 135, baseType: !812, size: 128, align: 64)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2813, file: !2802, line: 136, baseType: !5, size: 32, offset: 128)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !153, file: !154, line: 923, baseType: !1163, size: 64, offset: 8512)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !153, file: !154, line: 926, baseType: !1163, size: 64, offset: 8576)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !153, file: !154, line: 929, baseType: !1163, size: 64, offset: 8640)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !153, file: !154, line: 933, baseType: !1193, size: 64, offset: 8704)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !153, file: !154, line: 943, baseType: !2822, size: 128, offset: 8768)
!2822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 128, elements: !1682)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !153, file: !154, line: 945, baseType: !2824, size: 64, offset: 8896)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !154, line: 49, flags: DIFlagFwdDecl)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !153, file: !154, line: 956, baseType: !2827, size: 64, offset: 8960)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !154, line: 45, flags: DIFlagFwdDecl)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !153, file: !154, line: 959, baseType: !2830, size: 64, offset: 9024)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !154, line: 959, flags: DIFlagFwdDecl)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !153, file: !154, line: 962, baseType: !2833, size: 64, offset: 9088)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !154, line: 66, flags: DIFlagFwdDecl)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !153, file: !154, line: 966, baseType: !2836, size: 64, offset: 9152)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !154, line: 50, flags: DIFlagFwdDecl)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !153, file: !154, line: 969, baseType: !2839, size: 64, offset: 9216)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2841, line: 82, size: 7296, elements: !2842)
!2841 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2842 = !{!2843, !2844, !2845, !2846, !2847, !2848, !2849, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2878, !2887, !2888, !2890, !2891, !2892, !3684, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3714, !3715, !3722, !3723, !3724, !3725, !3726, !3727}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2840, file: !2841, line: 83, baseType: !169, size: 32)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2840, file: !2841, line: 84, baseType: !174, size: 32, offset: 32)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2840, file: !2841, line: 85, baseType: !128, size: 32, offset: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2840, file: !2841, line: 86, baseType: !207, size: 128, offset: 128)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2840, file: !2841, line: 88, baseType: !984, size: 128, offset: 256)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2840, file: !2841, line: 91, baseType: !152, size: 64, offset: 384)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2840, file: !2841, line: 94, baseType: !2850, size: 192, offset: 448)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2851, line: 30, size: 192, elements: !2852)
!2851 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2852 = !{!2853, !2854}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2850, file: !2851, line: 31, baseType: !207, size: 128)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2850, file: !2851, line: 32, baseType: !2855, size: 64, offset: 128)
!2855 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2856, line: 25, baseType: !2857)
!2856 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2856, line: 23, size: 64, elements: !2858)
!2858 = !{!2859}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2857, file: !2856, line: 24, baseType: !352, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2840, file: !2841, line: 97, baseType: !670, size: 64, offset: 640)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2840, file: !2841, line: 100, baseType: !128, size: 32, offset: 704)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2840, file: !2841, line: 106, baseType: !128, size: 32, offset: 736)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2840, file: !2841, line: 107, baseType: !152, size: 64, offset: 768)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2840, file: !2841, line: 110, baseType: !128, size: 32, offset: 832)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2840, file: !2841, line: 111, baseType: !5, size: 32, offset: 864)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2840, file: !2841, line: 122, baseType: !5, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2840, file: !2841, line: 123, baseType: !5, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2840, file: !2841, line: 128, baseType: !128, size: 32, offset: 928)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2840, file: !2841, line: 129, baseType: !207, size: 128, offset: 960)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2840, file: !2841, line: 132, baseType: !255, size: 512, offset: 1088)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2840, file: !2841, line: 133, baseType: !263, size: 64, offset: 1600)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2840, file: !2841, line: 140, baseType: !2873, size: 256, offset: 1664)
!2873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2874, size: 256, elements: !1185)
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2841, line: 38, size: 128, elements: !2875)
!2875 = !{!2876, !2877}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2874, file: !2841, line: 39, baseType: !214, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2874, file: !2841, line: 40, baseType: !214, size: 64, offset: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2840, file: !2841, line: 146, baseType: !2879, size: 192, offset: 1920)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2841, line: 66, size: 192, elements: !2880)
!2880 = !{!2881}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2879, file: !2841, line: 67, baseType: !2882, size: 192)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2841, line: 47, size: 192, elements: !2883)
!2883 = !{!2884, !2885, !2886}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2882, file: !2841, line: 48, baseType: !768, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2882, file: !2841, line: 49, baseType: !768, size: 64, offset: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2882, file: !2841, line: 50, baseType: !768, size: 64, offset: 128)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2840, file: !2841, line: 150, baseType: !2801, size: 640, offset: 2112)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2840, file: !2841, line: 153, baseType: !2889, size: 256, offset: 2752)
!2889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1137, size: 256, elements: !1145)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2840, file: !2841, line: 159, baseType: !1137, size: 64, offset: 3008)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2840, file: !2841, line: 162, baseType: !128, size: 32, offset: 3072)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2840, file: !2841, line: 164, baseType: !2893, size: 64, offset: 3136)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2895, line: 285, size: 5056, elements: !2896)
!2895 = !DIFile(filename: "./include/linux/tty.h", directory: "/home/lizy2001/genbc/linux")
!2896 = !{!2897, !2898, !2899, !3332, !3583, !3584, !3585, !3594, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2894, file: !2895, line: 286, baseType: !128, size: 32)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2894, file: !2895, line: 287, baseType: !2242, size: 32, offset: 32)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2894, file: !2895, line: 288, baseType: !2900, size: 64, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !71, line: 461, size: 5568, elements: !2902)
!2902 = !{!2903, !2904, !2905, !2908, !2909, !2960, !3033, !3034, !3035, !3036, !3037, !3046, !3151, !3164, !3167, !3168, !3172, !3174, !3175, !3176, !3180, !3186, !3187, !3190, !3194, !3284, !3285, !3286, !3287, !3288, !3320, !3321, !3322, !3325, !3328, !3329, !3330, !3331}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2901, file: !71, line: 462, baseType: !1956, size: 512)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2901, file: !71, line: 463, baseType: !2900, size: 64, offset: 512)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2901, file: !71, line: 465, baseType: !2906, size: 64, offset: 576)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !71, line: 36, flags: DIFlagFwdDecl)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2901, file: !71, line: 467, baseType: !575, size: 64, offset: 640)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2901, file: !71, line: 468, baseType: !2910, size: 64, offset: 704)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2912)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !71, line: 87, size: 384, elements: !2913)
!2913 = !{!2914, !2915, !2916, !2920, !2925, !2929}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2912, file: !71, line: 88, baseType: !575, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2912, file: !71, line: 89, baseType: !2035, size: 64, offset: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2912, file: !71, line: 90, baseType: !2917, size: 64, offset: 128)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!128, !2900, !1990}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2912, file: !71, line: 91, baseType: !2921, size: 64, offset: 192)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{!600, !2900, !2924, !2105, !2106}
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2912, file: !71, line: 93, baseType: !2926, size: 64, offset: 256)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{null, !2900}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2912, file: !71, line: 95, baseType: !2930, size: 64, offset: 320)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2932)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !78, line: 278, size: 1472, elements: !2933)
!2933 = !{!2934, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2932, file: !78, line: 279, baseType: !2935, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!128, !2900}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2932, file: !78, line: 280, baseType: !2926, size: 64, offset: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2932, file: !78, line: 281, baseType: !2935, size: 64, offset: 128)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2932, file: !78, line: 282, baseType: !2935, size: 64, offset: 192)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2932, file: !78, line: 283, baseType: !2935, size: 64, offset: 256)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2932, file: !78, line: 284, baseType: !2935, size: 64, offset: 320)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2932, file: !78, line: 285, baseType: !2935, size: 64, offset: 384)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2932, file: !78, line: 286, baseType: !2935, size: 64, offset: 448)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2932, file: !78, line: 287, baseType: !2935, size: 64, offset: 512)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2932, file: !78, line: 288, baseType: !2935, size: 64, offset: 576)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2932, file: !78, line: 289, baseType: !2935, size: 64, offset: 640)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2932, file: !78, line: 290, baseType: !2935, size: 64, offset: 704)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2932, file: !78, line: 291, baseType: !2935, size: 64, offset: 768)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2932, file: !78, line: 292, baseType: !2935, size: 64, offset: 832)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2932, file: !78, line: 293, baseType: !2935, size: 64, offset: 896)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2932, file: !78, line: 294, baseType: !2935, size: 64, offset: 960)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2932, file: !78, line: 295, baseType: !2935, size: 64, offset: 1024)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2932, file: !78, line: 296, baseType: !2935, size: 64, offset: 1088)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2932, file: !78, line: 297, baseType: !2935, size: 64, offset: 1152)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2932, file: !78, line: 298, baseType: !2935, size: 64, offset: 1216)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2932, file: !78, line: 299, baseType: !2935, size: 64, offset: 1280)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2932, file: !78, line: 300, baseType: !2935, size: 64, offset: 1344)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2932, file: !78, line: 301, baseType: !2935, size: 64, offset: 1408)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2901, file: !71, line: 470, baseType: !2961, size: 64, offset: 768)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2963, line: 82, size: 1408, elements: !2964)
!2963 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!2964 = !{!2965, !2966, !2967, !2968, !2969, !2970, !2971, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3028, !3031, !3032}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2962, file: !2963, line: 83, baseType: !575, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2962, file: !2963, line: 84, baseType: !575, size: 64, offset: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !2962, file: !2963, line: 85, baseType: !2900, size: 64, offset: 128)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2962, file: !2963, line: 86, baseType: !2035, size: 64, offset: 192)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2962, file: !2963, line: 87, baseType: !2035, size: 64, offset: 256)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2962, file: !2963, line: 88, baseType: !2035, size: 64, offset: 320)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2962, file: !2963, line: 90, baseType: !2972, size: 64, offset: 384)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!128, !2900, !2975}
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !65, line: 95, size: 1152, elements: !2977)
!2977 = !{!2978, !2979, !2980, !2981, !2982, !2983, !2984, !2988, !2992, !2993, !2994, !2995, !2996, !3004, !3005, !3006, !3007, !3008, !3009}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2976, file: !65, line: 96, baseType: !575, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2976, file: !65, line: 97, baseType: !2961, size: 64, offset: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2976, file: !65, line: 99, baseType: !665, size: 64, offset: 128)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2976, file: !65, line: 100, baseType: !575, size: 64, offset: 192)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2976, file: !65, line: 102, baseType: !619, size: 8, offset: 256)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2976, file: !65, line: 103, baseType: !64, size: 32, offset: 288)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2976, file: !65, line: 105, baseType: !2985, size: 64, offset: 320)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2987)
!2987 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !65, line: 105, flags: DIFlagFwdDecl)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2976, file: !65, line: 106, baseType: !2989, size: 64, offset: 384)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2991)
!2991 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !65, line: 106, flags: DIFlagFwdDecl)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2976, file: !65, line: 108, baseType: !2935, size: 64, offset: 448)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2976, file: !65, line: 109, baseType: !2926, size: 64, offset: 512)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2976, file: !65, line: 110, baseType: !2935, size: 64, offset: 576)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2976, file: !65, line: 111, baseType: !2926, size: 64, offset: 640)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2976, file: !65, line: 112, baseType: !2997, size: 64, offset: 704)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!128, !2900, !3000}
!3000 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !78, line: 52, baseType: !3001)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !78, line: 50, size: 32, elements: !3002)
!3002 = !{!3003}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3001, file: !78, line: 51, baseType: !128, size: 32)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2976, file: !65, line: 113, baseType: !2935, size: 64, offset: 768)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2976, file: !65, line: 114, baseType: !2035, size: 64, offset: 832)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2976, file: !65, line: 115, baseType: !2035, size: 64, offset: 896)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2976, file: !65, line: 117, baseType: !2930, size: 64, offset: 960)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2976, file: !65, line: 118, baseType: !2926, size: 64, offset: 1024)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2976, file: !65, line: 120, baseType: !3010, size: 64, offset: 1088)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !65, line: 120, flags: DIFlagFwdDecl)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2962, file: !2963, line: 91, baseType: !2917, size: 64, offset: 448)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2962, file: !2963, line: 92, baseType: !2935, size: 64, offset: 512)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2962, file: !2963, line: 93, baseType: !2926, size: 64, offset: 576)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2962, file: !2963, line: 94, baseType: !2935, size: 64, offset: 640)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2962, file: !2963, line: 95, baseType: !2926, size: 64, offset: 704)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2962, file: !2963, line: 97, baseType: !2935, size: 64, offset: 768)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2962, file: !2963, line: 98, baseType: !2935, size: 64, offset: 832)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2962, file: !2963, line: 100, baseType: !2997, size: 64, offset: 896)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2962, file: !2963, line: 101, baseType: !2935, size: 64, offset: 960)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2962, file: !2963, line: 103, baseType: !2935, size: 64, offset: 1024)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2962, file: !2963, line: 105, baseType: !2935, size: 64, offset: 1088)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2962, file: !2963, line: 107, baseType: !2930, size: 64, offset: 1152)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2962, file: !2963, line: 109, baseType: !3025, size: 64, offset: 1216)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3027)
!3027 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2963, line: 109, flags: DIFlagFwdDecl)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2962, file: !2963, line: 111, baseType: !3029, size: 64, offset: 1280)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !2963, line: 111, flags: DIFlagFwdDecl)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !2962, file: !2963, line: 112, baseType: !680, offset: 1344)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2962, file: !2963, line: 114, baseType: !619, size: 8, offset: 1344)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2901, file: !71, line: 471, baseType: !2975, size: 64, offset: 832)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2901, file: !71, line: 473, baseType: !98, size: 64, offset: 896)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2901, file: !71, line: 475, baseType: !98, size: 64, offset: 960)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2901, file: !71, line: 480, baseType: !762, size: 192, offset: 1024)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2901, file: !71, line: 484, baseType: !3038, size: 576, offset: 1216)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !71, line: 361, size: 576, elements: !3039)
!3039 = !{!3040, !3041, !3042, !3043, !3044, !3045}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3038, file: !71, line: 362, baseType: !207, size: 128)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3038, file: !71, line: 363, baseType: !207, size: 128, offset: 128)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3038, file: !71, line: 364, baseType: !207, size: 128, offset: 256)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3038, file: !71, line: 365, baseType: !207, size: 128, offset: 384)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3038, file: !71, line: 366, baseType: !619, size: 8, offset: 512)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3038, file: !71, line: 367, baseType: !70, size: 32, offset: 544)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2901, file: !71, line: 485, baseType: !3047, size: 2304, offset: 1792)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !78, line: 565, size: 2304, elements: !3048)
!3048 = !{!3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3144, !3148}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3047, file: !78, line: 566, baseType: !3000, size: 32)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3047, file: !78, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3047, file: !78, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3047, file: !78, line: 569, baseType: !619, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3047, file: !78, line: 570, baseType: !619, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3047, file: !78, line: 571, baseType: !619, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3047, file: !78, line: 572, baseType: !619, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3047, file: !78, line: 573, baseType: !619, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3047, file: !78, line: 574, baseType: !619, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3047, file: !78, line: 575, baseType: !619, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3047, file: !78, line: 576, baseType: !619, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3047, file: !78, line: 577, baseType: !162, size: 32, offset: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3047, file: !78, line: 578, baseType: !546, offset: 96)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3047, file: !78, line: 580, baseType: !207, size: 128, offset: 128)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3047, file: !78, line: 581, baseType: !2472, size: 192, offset: 256)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3047, file: !78, line: 582, baseType: !3065, size: 64, offset: 448)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3067, line: 43, size: 1472, elements: !3068)
!3067 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3068 = !{!3069, !3070, !3071, !3072, !3073, !3076, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3066, file: !3067, line: 44, baseType: !575, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3066, file: !3067, line: 45, baseType: !128, size: 32, offset: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3066, file: !3067, line: 46, baseType: !207, size: 128, offset: 128)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3066, file: !3067, line: 47, baseType: !546, offset: 256)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3066, file: !3067, line: 48, baseType: !3074, size: 64, offset: 256)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !78, line: 533, flags: DIFlagFwdDecl)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3066, file: !3067, line: 49, baseType: !3077, size: 320, offset: 320)
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3078, line: 11, size: 320, elements: !3079)
!3078 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3079 = !{!3080, !3081, !3082, !3087}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3077, file: !3078, line: 16, baseType: !674, size: 128)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3077, file: !3078, line: 17, baseType: !131, size: 64, offset: 128)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3077, file: !3078, line: 18, baseType: !3083, size: 64, offset: 192)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{null, !3086}
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3077, file: !3078, line: 19, baseType: !162, size: 32, offset: 256)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3066, file: !3067, line: 50, baseType: !131, size: 64, offset: 640)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3066, file: !3067, line: 51, baseType: !263, size: 64, offset: 704)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3066, file: !3067, line: 52, baseType: !263, size: 64, offset: 768)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3066, file: !3067, line: 53, baseType: !263, size: 64, offset: 832)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3066, file: !3067, line: 54, baseType: !263, size: 64, offset: 896)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3066, file: !3067, line: 55, baseType: !263, size: 64, offset: 960)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3066, file: !3067, line: 56, baseType: !131, size: 64, offset: 1024)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3066, file: !3067, line: 57, baseType: !131, size: 64, offset: 1088)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3066, file: !3067, line: 58, baseType: !131, size: 64, offset: 1152)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3066, file: !3067, line: 59, baseType: !131, size: 64, offset: 1216)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3066, file: !3067, line: 60, baseType: !131, size: 64, offset: 1280)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3066, file: !3067, line: 61, baseType: !2900, size: 64, offset: 1344)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3066, file: !3067, line: 62, baseType: !619, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3066, file: !3067, line: 63, baseType: !619, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3047, file: !78, line: 583, baseType: !619, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3047, file: !78, line: 584, baseType: !619, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3047, file: !78, line: 585, baseType: !619, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3047, file: !78, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3047, file: !78, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3047, file: !78, line: 592, baseType: !255, size: 512, offset: 576)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3047, file: !78, line: 593, baseType: !214, size: 64, offset: 1088)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3047, file: !78, line: 594, baseType: !1733, size: 256, offset: 1152)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3047, file: !78, line: 595, baseType: !984, size: 128, offset: 1408)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3047, file: !78, line: 596, baseType: !3074, size: 64, offset: 1536)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3047, file: !78, line: 597, baseType: !174, size: 32, offset: 1600)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3047, file: !78, line: 598, baseType: !174, size: 32, offset: 1632)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3047, file: !78, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3047, file: !78, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3047, file: !78, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3047, file: !78, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3047, file: !78, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3047, file: !78, line: 604, baseType: !619, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3047, file: !78, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3047, file: !78, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3047, file: !78, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3047, file: !78, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3047, file: !78, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3047, file: !78, line: 610, baseType: !5, size: 32, offset: 1696)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3047, file: !78, line: 611, baseType: !77, size: 32, offset: 1728)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3047, file: !78, line: 612, baseType: !85, size: 32, offset: 1760)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3047, file: !78, line: 613, baseType: !128, size: 32, offset: 1792)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3047, file: !78, line: 614, baseType: !128, size: 32, offset: 1824)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3047, file: !78, line: 615, baseType: !214, size: 64, offset: 1856)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3047, file: !78, line: 616, baseType: !214, size: 64, offset: 1920)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3047, file: !78, line: 617, baseType: !214, size: 64, offset: 1984)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3047, file: !78, line: 618, baseType: !214, size: 64, offset: 2048)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3047, file: !78, line: 620, baseType: !3135, size: 64, offset: 2112)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !78, line: 536, size: 256, elements: !3137)
!3137 = !{!3138, !3139, !3140, !3141}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3136, file: !78, line: 537, baseType: !546)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3136, file: !78, line: 538, baseType: !5, size: 32)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3136, file: !78, line: 540, baseType: !207, size: 128, offset: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3136, file: !78, line: 543, baseType: !3142, size: 64, offset: 192)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !78, line: 534, flags: DIFlagFwdDecl)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3047, file: !78, line: 621, baseType: !3145, size: 64, offset: 2176)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{null, !2900, !1201}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3047, file: !78, line: 622, baseType: !3149, size: 64, offset: 2240)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !78, line: 622, flags: DIFlagFwdDecl)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2901, file: !71, line: 486, baseType: !3152, size: 64, offset: 4096)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !78, line: 642, size: 1792, elements: !3154)
!3154 = !{!3155, !3156, !3157, !3161, !3162, !3163}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3153, file: !78, line: 643, baseType: !2932, size: 1472)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3153, file: !78, line: 644, baseType: !2935, size: 64, offset: 1472)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3153, file: !78, line: 645, baseType: !3158, size: 64, offset: 1536)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{null, !2900, !619}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3153, file: !78, line: 646, baseType: !2935, size: 64, offset: 1600)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3153, file: !78, line: 647, baseType: !2926, size: 64, offset: 1664)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3153, file: !78, line: 648, baseType: !2926, size: 64, offset: 1728)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !2901, file: !71, line: 493, baseType: !3165, size: 64, offset: 4160)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !71, line: 493, flags: DIFlagFwdDecl)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !2901, file: !71, line: 499, baseType: !207, size: 128, offset: 4224)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2901, file: !71, line: 502, baseType: !3169, size: 64, offset: 4352)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3171)
!3171 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !71, line: 502, flags: DIFlagFwdDecl)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2901, file: !71, line: 504, baseType: !3173, size: 64, offset: 4416)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2901, file: !71, line: 505, baseType: !214, size: 64, offset: 4480)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2901, file: !71, line: 510, baseType: !214, size: 64, offset: 4544)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2901, file: !71, line: 511, baseType: !3177, size: 64, offset: 4608)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3179)
!3179 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !71, line: 511, flags: DIFlagFwdDecl)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2901, file: !71, line: 513, baseType: !3181, size: 64, offset: 4672)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !71, line: 288, size: 128, elements: !3183)
!3183 = !{!3184, !3185}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3182, file: !71, line: 293, baseType: !5, size: 32)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3182, file: !71, line: 294, baseType: !131, size: 64, offset: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2901, file: !71, line: 515, baseType: !207, size: 128, offset: 4736)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2901, file: !71, line: 526, baseType: !3188, offset: 4864)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3189, line: 5, elements: !223)
!3189 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2901, file: !71, line: 528, baseType: !3191, size: 64, offset: 4864)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3193, line: 14, flags: DIFlagFwdDecl)
!3193 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2901, file: !71, line: 529, baseType: !3195, size: 64, offset: 4928)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3197, line: 17, size: 192, elements: !3198)
!3197 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3198 = !{!3199, !3200, !3283}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3196, file: !3197, line: 18, baseType: !3195, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3196, file: !3197, line: 19, baseType: !3201, size: 64, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3203)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3197, line: 110, size: 1152, elements: !3204)
!3204 = !{!3205, !3209, !3213, !3219, !3225, !3229, !3233, !3238, !3242, !3243, !3247, !3251, !3255, !3266, !3267, !3268, !3269, !3279}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3203, file: !3197, line: 111, baseType: !3206, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!3195, !3195}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3203, file: !3197, line: 112, baseType: !3210, size: 64, offset: 64)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{null, !3195}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3203, file: !3197, line: 113, baseType: !3214, size: 64, offset: 128)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!619, !3217}
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3196)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3203, file: !3197, line: 114, baseType: !3220, size: 64, offset: 192)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!2088, !3217, !3223}
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2901)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3203, file: !3197, line: 116, baseType: !3226, size: 64, offset: 256)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!619, !3217, !575}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3203, file: !3197, line: 118, baseType: !3230, size: 64, offset: 320)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!128, !3217, !575, !5, !98, !753}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3203, file: !3197, line: 123, baseType: !3234, size: 64, offset: 384)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!128, !3217, !575, !3237, !753}
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3203, file: !3197, line: 126, baseType: !3239, size: 64, offset: 448)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!575, !3217}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3203, file: !3197, line: 127, baseType: !3239, size: 64, offset: 512)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3203, file: !3197, line: 128, baseType: !3244, size: 64, offset: 576)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!3195, !3217}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3203, file: !3197, line: 130, baseType: !3248, size: 64, offset: 640)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!3195, !3217, !3195}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3203, file: !3197, line: 133, baseType: !3252, size: 64, offset: 704)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!3195, !3217, !575}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3203, file: !3197, line: 135, baseType: !3256, size: 64, offset: 768)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!128, !3217, !575, !575, !5, !5, !3259}
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3197, line: 43, size: 640, elements: !3261)
!3261 = !{!3262, !3263, !3264}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3260, file: !3197, line: 44, baseType: !3195, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3260, file: !3197, line: 45, baseType: !5, size: 32, offset: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3260, file: !3197, line: 46, baseType: !3265, size: 512, offset: 128)
!3265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 512, elements: !149)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3203, file: !3197, line: 140, baseType: !3248, size: 64, offset: 832)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3203, file: !3197, line: 143, baseType: !3244, size: 64, offset: 896)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3203, file: !3197, line: 145, baseType: !3206, size: 64, offset: 960)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3203, file: !3197, line: 146, baseType: !3270, size: 64, offset: 1024)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!128, !3217, !3273}
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3197, line: 29, size: 128, elements: !3275)
!3275 = !{!3276, !3277, !3278}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3274, file: !3197, line: 30, baseType: !5, size: 32)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3274, file: !3197, line: 31, baseType: !5, size: 32, offset: 32)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3274, file: !3197, line: 32, baseType: !3217, size: 64, offset: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3203, file: !3197, line: 148, baseType: !3280, size: 64, offset: 1088)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!128, !3217, !2900}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3196, file: !3197, line: 20, baseType: !2900, size: 64, offset: 128)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2901, file: !71, line: 534, baseType: !633, size: 32, offset: 4992)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2901, file: !71, line: 535, baseType: !162, size: 32, offset: 5024)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2901, file: !71, line: 537, baseType: !546, offset: 5056)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2901, file: !71, line: 538, baseType: !207, size: 128, offset: 5056)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2901, file: !71, line: 540, baseType: !3289, size: 64, offset: 5184)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3291, line: 54, size: 960, elements: !3292)
!3291 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3292 = !{!3293, !3294, !3295, !3296, !3297, !3298, !3299, !3303, !3307, !3308, !3309, !3310, !3314, !3318, !3319}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3290, file: !3291, line: 55, baseType: !575, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3290, file: !3291, line: 56, baseType: !665, size: 64, offset: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3290, file: !3291, line: 58, baseType: !2035, size: 64, offset: 128)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3290, file: !3291, line: 59, baseType: !2035, size: 64, offset: 192)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3290, file: !3291, line: 60, baseType: !1962, size: 64, offset: 256)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3290, file: !3291, line: 62, baseType: !2917, size: 64, offset: 320)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3290, file: !3291, line: 63, baseType: !3300, size: 64, offset: 384)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!600, !2900, !2924}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3290, file: !3291, line: 65, baseType: !3304, size: 64, offset: 448)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{null, !3289}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3290, file: !3291, line: 66, baseType: !2926, size: 64, offset: 512)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3290, file: !3291, line: 68, baseType: !2935, size: 64, offset: 576)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3290, file: !3291, line: 70, baseType: !2071, size: 64, offset: 640)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3290, file: !3291, line: 71, baseType: !3311, size: 64, offset: 704)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!2088, !2900}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3290, file: !3291, line: 73, baseType: !3315, size: 64, offset: 768)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{null, !2900, !2105, !2106}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3290, file: !3291, line: 75, baseType: !2930, size: 64, offset: 832)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3290, file: !3291, line: 77, baseType: !3029, size: 64, offset: 896)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2901, file: !71, line: 541, baseType: !2035, size: 64, offset: 5248)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2901, file: !71, line: 543, baseType: !2926, size: 64, offset: 5312)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2901, file: !71, line: 544, baseType: !3323, size: 64, offset: 5376)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !71, line: 45, flags: DIFlagFwdDecl)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2901, file: !71, line: 545, baseType: !3326, size: 64, offset: 5440)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !71, line: 47, flags: DIFlagFwdDecl)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2901, file: !71, line: 547, baseType: !619, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2901, file: !71, line: 548, baseType: !619, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2901, file: !71, line: 549, baseType: !619, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2901, file: !71, line: 550, baseType: !619, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2894, file: !2895, line: 289, baseType: !3333, size: 64, offset: 128)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_driver", file: !3335, line: 302, size: 1472, elements: !3336)
!3335 = !DIFile(filename: "./include/linux/tty_driver.h", directory: "/home/lizy2001/genbc/linux")
!3336 = !{!3337, !3338, !3339, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3361, !3362, !3365, !3366, !3368, !3454, !3457, !3458, !3582}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3334, file: !3335, line: 303, baseType: !128, size: 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3334, file: !3335, line: 304, baseType: !2242, size: 32, offset: 32)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "cdevs", scope: !3334, file: !3335, line: 305, baseType: !3340, size: 64, offset: 64)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3334, file: !3335, line: 306, baseType: !665, size: 64, offset: 128)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !3334, file: !3335, line: 307, baseType: !575, size: 64, offset: 192)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3334, file: !3335, line: 308, baseType: !575, size: 64, offset: 256)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "name_base", scope: !3334, file: !3335, line: 309, baseType: !128, size: 32, offset: 320)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !3334, file: !3335, line: 310, baseType: !128, size: 32, offset: 352)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "minor_start", scope: !3334, file: !3335, line: 311, baseType: !128, size: 32, offset: 384)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3334, file: !3335, line: 312, baseType: !5, size: 32, offset: 416)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3334, file: !3335, line: 313, baseType: !1236, size: 16, offset: 448)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !3334, file: !3335, line: 314, baseType: !1236, size: 16, offset: 464)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "init_termios", scope: !3334, file: !3335, line: 315, baseType: !3351, size: 352, offset: 480)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ktermios", file: !101, line: 32, size: 352, elements: !3352)
!3352 = !{!3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !3351, file: !101, line: 33, baseType: !104, size: 32)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !3351, file: !101, line: 34, baseType: !104, size: 32, offset: 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !3351, file: !101, line: 35, baseType: !104, size: 32, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !3351, file: !101, line: 36, baseType: !104, size: 32, offset: 96)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !3351, file: !101, line: 37, baseType: !109, size: 8, offset: 128)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !3351, file: !101, line: 38, baseType: !112, size: 152, offset: 136)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !3351, file: !101, line: 39, baseType: !125, size: 32, offset: 288)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !3351, file: !101, line: 40, baseType: !125, size: 32, offset: 320)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3334, file: !3335, line: 316, baseType: !131, size: 64, offset: 832)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "proc_entry", scope: !3334, file: !3335, line: 317, baseType: !3363, size: 64, offset: 896)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !3335, line: 317, flags: DIFlagFwdDecl)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !3334, file: !3335, line: 318, baseType: !3333, size: 64, offset: 960)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "ttys", scope: !3334, file: !3335, line: 323, baseType: !3367, size: 64, offset: 1024)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !3334, file: !3335, line: 324, baseType: !3369, size: 64, offset: 1088)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port", file: !2895, line: 230, size: 2432, elements: !3372)
!3372 = !{!3373, !3402, !3403, !3404, !3426, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3449, !3450, !3451, !3452, !3453}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3371, file: !2895, line: 231, baseType: !3374, size: 1024)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_bufhead", file: !2895, line: 85, size: 1024, elements: !3375)
!3375 = !{!3376, !3391, !3392, !3393, !3394, !3395, !3399, !3400, !3401}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3374, file: !2895, line: 86, baseType: !3377, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_buffer", file: !2895, line: 58, size: 256, elements: !3379)
!3379 = !{!3380, !3385, !3386, !3387, !3388, !3389, !3390}
!3380 = !DIDerivedType(tag: DW_TAG_member, scope: !3378, file: !2895, line: 59, baseType: !3381, size: 64)
!3381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3378, file: !2895, line: 59, size: 64, elements: !3382)
!3382 = !{!3383, !3384}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3381, file: !2895, line: 60, baseType: !3377, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3381, file: !2895, line: 61, baseType: !806, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !3378, file: !2895, line: 63, baseType: !128, size: 32, offset: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3378, file: !2895, line: 64, baseType: !128, size: 32, offset: 96)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !3378, file: !2895, line: 65, baseType: !128, size: 32, offset: 128)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3378, file: !2895, line: 66, baseType: !128, size: 32, offset: 160)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3378, file: !2895, line: 67, baseType: !128, size: 32, offset: 192)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3378, file: !2895, line: 69, baseType: !2683, offset: 256)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3374, file: !2895, line: 87, baseType: !1733, size: 256, offset: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3374, file: !2895, line: 88, baseType: !762, size: 192, offset: 320)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !3374, file: !2895, line: 89, baseType: !174, size: 32, offset: 512)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !3374, file: !2895, line: 90, baseType: !3378, size: 256, offset: 576)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3374, file: !2895, line: 91, baseType: !3396, size: 64, offset: 832)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !807, line: 54, size: 64, elements: !3397)
!3397 = !{!3398}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3396, file: !807, line: 55, baseType: !810, size: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "mem_used", scope: !3374, file: !2895, line: 92, baseType: !174, size: 32, offset: 896)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "mem_limit", scope: !3374, file: !2895, line: 93, baseType: !128, size: 32, offset: 928)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !3374, file: !2895, line: 94, baseType: !3377, size: 64, offset: 960)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3371, file: !2895, line: 232, baseType: !2893, size: 64, offset: 1024)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "itty", scope: !3371, file: !2895, line: 233, baseType: !2893, size: 64, offset: 1088)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3371, file: !2895, line: 234, baseType: !3405, size: 64, offset: 1152)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3407)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_operations", file: !2895, line: 205, size: 320, elements: !3408)
!3408 = !{!3409, !3413, !3417, !3421, !3425}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_raised", scope: !3407, file: !2895, line: 207, baseType: !3410, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!128, !3370}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "dtr_rts", scope: !3407, file: !2895, line: 209, baseType: !3414, size: 64, offset: 64)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{null, !3370, !128}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3407, file: !2895, line: 213, baseType: !3418, size: 64, offset: 128)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{null, !3370}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3407, file: !2895, line: 218, baseType: !3422, size: 64, offset: 192)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!128, !3370, !2893}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "destruct", scope: !3407, file: !2895, line: 220, baseType: !3418, size: 64, offset: 256)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "client_ops", scope: !3371, file: !2895, line: 235, baseType: !3427, size: 64, offset: 1216)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3429)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_client_operations", file: !2895, line: 223, size: 128, elements: !3430)
!3430 = !{!3431, !3435}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !3429, file: !2895, line: 224, baseType: !3432, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!128, !3370, !528, !528, !753}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !3429, file: !2895, line: 225, baseType: !3418, size: 64, offset: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3371, file: !2895, line: 236, baseType: !546, offset: 1280)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "blocked_open", scope: !3371, file: !2895, line: 237, baseType: !128, size: 32, offset: 1280)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3371, file: !2895, line: 238, baseType: !128, size: 32, offset: 1312)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !3371, file: !2895, line: 239, baseType: !984, size: 128, offset: 1344)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "delta_msr_wait", scope: !3371, file: !2895, line: 240, baseType: !984, size: 128, offset: 1472)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3371, file: !2895, line: 241, baseType: !131, size: 64, offset: 1600)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !3371, file: !2895, line: 242, baseType: !131, size: 64, offset: 1664)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "console", scope: !3371, file: !2895, line: 243, baseType: !110, size: 1, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "low_latency", scope: !3371, file: !2895, line: 244, baseType: !110, size: 1, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3371, file: !2895, line: 245, baseType: !762, size: 192, offset: 1792)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "buf_mutex", scope: !3371, file: !2895, line: 246, baseType: !762, size: 192, offset: 1984)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_buf", scope: !3371, file: !2895, line: 247, baseType: !3448, size: 64, offset: 2176)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !3371, file: !2895, line: 248, baseType: !5, size: 32, offset: 2240)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !3371, file: !2895, line: 249, baseType: !5, size: 32, offset: 2272)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "drain_delay", scope: !3371, file: !2895, line: 250, baseType: !128, size: 32, offset: 2304)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3371, file: !2895, line: 253, baseType: !2242, size: 32, offset: 2336)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !3371, file: !2895, line: 254, baseType: !98, size: 64, offset: 2368)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !3334, file: !3335, line: 325, baseType: !3455, size: 64, offset: 1152)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "driver_state", scope: !3334, file: !3335, line: 326, baseType: !98, size: 64, offset: 1216)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3334, file: !3335, line: 332, baseType: !3459, size: 64, offset: 1280)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3461)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_operations", file: !3335, line: 254, size: 2176, elements: !3462)
!3462 = !{!3463, !3467, !3471, !3475, !3479, !3483, !3487, !3488, !3492, !3496, !3497, !3501, !3502, !3506, !3510, !3514, !3515, !3516, !3517, !3518, !3519, !3523, !3524, !3525, !3529, !3533, !3534, !3538, !3549, !3564, !3570, !3576, !3577, !3581}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !3461, file: !3335, line: 255, baseType: !3464, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!2893, !3333, !832, !128}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !3461, file: !3335, line: 257, baseType: !3468, size: 64, offset: 64)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!128, !3333, !2893}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3461, file: !3335, line: 258, baseType: !3472, size: 64, offset: 128)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{null, !3333, !2893}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3461, file: !3335, line: 259, baseType: !3476, size: 64, offset: 192)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!128, !2893, !832}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3461, file: !3335, line: 260, baseType: !3480, size: 64, offset: 256)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{null, !2893, !832}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3461, file: !3335, line: 261, baseType: !3484, size: 64, offset: 320)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{null, !2893}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3461, file: !3335, line: 262, baseType: !3484, size: 64, offset: 384)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3461, file: !3335, line: 263, baseType: !3489, size: 64, offset: 448)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!128, !2893, !528, !128}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "put_char", scope: !3461, file: !3335, line: 265, baseType: !3493, size: 64, offset: 512)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!128, !2893, !110}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "flush_chars", scope: !3461, file: !3335, line: 266, baseType: !3484, size: 64, offset: 576)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "write_room", scope: !3461, file: !3335, line: 267, baseType: !3498, size: 64, offset: 640)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!128, !2893}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "chars_in_buffer", scope: !3461, file: !3335, line: 268, baseType: !3498, size: 64, offset: 704)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !3461, file: !3335, line: 269, baseType: !3503, size: 64, offset: 768)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!128, !2893, !5, !131}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3461, file: !3335, line: 271, baseType: !3507, size: 64, offset: 832)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!97, !2893, !5, !131}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !3461, file: !3335, line: 273, baseType: !3511, size: 64, offset: 896)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{null, !2893, !3456}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !3461, file: !3335, line: 274, baseType: !3484, size: 64, offset: 960)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !3461, file: !3335, line: 275, baseType: !3484, size: 64, offset: 1024)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3461, file: !3335, line: 276, baseType: !3484, size: 64, offset: 1088)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3461, file: !3335, line: 277, baseType: !3484, size: 64, offset: 1152)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !3461, file: !3335, line: 278, baseType: !3484, size: 64, offset: 1216)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "break_ctl", scope: !3461, file: !3335, line: 279, baseType: !3520, size: 64, offset: 1280)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{!128, !2893, !128}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !3461, file: !3335, line: 280, baseType: !3484, size: 64, offset: 1344)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !3461, file: !3335, line: 281, baseType: !3484, size: 64, offset: 1408)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "wait_until_sent", scope: !3461, file: !3335, line: 282, baseType: !3526, size: 64, offset: 1472)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{null, !2893, !128}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "send_xchar", scope: !3461, file: !3335, line: 283, baseType: !3530, size: 64, offset: 1536)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{null, !2893, !134}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmget", scope: !3461, file: !3335, line: 284, baseType: !3498, size: 64, offset: 1600)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmset", scope: !3461, file: !3335, line: 285, baseType: !3535, size: 64, offset: 1664)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DISubroutineType(types: !3537)
!3537 = !{!128, !2893, !5, !5}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "resize", scope: !3461, file: !3335, line: 287, baseType: !3539, size: 64, offset: 1728)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{!128, !2893, !3542}
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !139, line: 15, size: 64, elements: !3544)
!3544 = !{!3545, !3546, !3547, !3548}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !3543, file: !139, line: 16, baseType: !142, size: 16)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !3543, file: !139, line: 17, baseType: !142, size: 16, offset: 16)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !3543, file: !139, line: 18, baseType: !142, size: 16, offset: 32)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !3543, file: !139, line: 19, baseType: !142, size: 16, offset: 48)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "set_termiox", scope: !3461, file: !3335, line: 288, baseType: !3550, size: 64, offset: 1792)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!128, !2893, !3553}
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "termiox", file: !3555, line: 10, size: 128, elements: !3556)
!3555 = !DIFile(filename: "./include/uapi/linux/termios.h", directory: "/home/lizy2001/genbc/linux")
!3556 = !{!3557, !3558, !3559, !3563}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "x_hflag", scope: !3554, file: !3555, line: 12, baseType: !861, size: 16)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "x_cflag", scope: !3554, file: !3555, line: 13, baseType: !861, size: 16, offset: 16)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "x_rflag", scope: !3554, file: !3555, line: 14, baseType: !3560, size: 80, offset: 32)
!3560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !861, size: 80, elements: !3561)
!3561 = !{!3562}
!3562 = !DISubrange(count: 5)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "x_sflag", scope: !3554, file: !3555, line: 15, baseType: !861, size: 16, offset: 112)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "get_icount", scope: !3461, file: !3335, line: 289, baseType: !3565, size: 64, offset: 1856)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!128, !2893, !3568}
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_icounter_struct", file: !3335, line: 251, flags: DIFlagFwdDecl)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "get_serial", scope: !3461, file: !3335, line: 291, baseType: !3571, size: 64, offset: 1920)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!128, !2893, !3574}
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_struct", file: !3335, line: 252, flags: DIFlagFwdDecl)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "set_serial", scope: !3461, file: !3335, line: 292, baseType: !3571, size: 64, offset: 1984)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3461, file: !3335, line: 293, baseType: !3578, size: 64, offset: 2048)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{null, !2893, !747}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !3461, file: !3335, line: 299, baseType: !793, size: 64, offset: 2112)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "tty_drivers", scope: !3334, file: !3335, line: 333, baseType: !207, size: 128, offset: 1344)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2894, file: !2895, line: 290, baseType: !3459, size: 64, offset: 192)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2894, file: !2895, line: 291, baseType: !128, size: 32, offset: 256)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_sem", scope: !2894, file: !2895, line: 294, baseType: !3586, size: 384, offset: 320)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ld_semaphore", file: !3587, line: 133, size: 384, elements: !3588)
!3587 = !DIFile(filename: "./include/linux/tty_ldisc.h", directory: "/home/lizy2001/genbc/linux")
!3588 = !{!3589, !3590, !3591, !3592, !3593}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3586, file: !3587, line: 134, baseType: !766, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !3586, file: !3587, line: 135, baseType: !280, offset: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "wait_readers", scope: !3586, file: !3587, line: 136, baseType: !5, size: 32, offset: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !3586, file: !3587, line: 137, baseType: !207, size: 128, offset: 128)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !3586, file: !3587, line: 138, baseType: !207, size: 128, offset: 256)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc", scope: !2894, file: !2895, line: 295, baseType: !3595, size: 64, offset: 704)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc", file: !3587, line: 215, size: 128, elements: !3597)
!3597 = !{!3598, !3643}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3596, file: !3587, line: 216, baseType: !3599, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc_ops", file: !3587, line: 175, size: 1216, elements: !3601)
!3601 = !{!3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3613, !3617, !3621, !3622, !3623, !3627, !3628, !3632, !3633, !3637, !3641, !3642}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3600, file: !3587, line: 176, baseType: !128, size: 32)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3600, file: !3587, line: 177, baseType: !600, size: 64, offset: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3600, file: !3587, line: 178, baseType: !128, size: 32, offset: 128)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3600, file: !3587, line: 179, baseType: !128, size: 32, offset: 160)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3600, file: !3587, line: 184, baseType: !3498, size: 64, offset: 192)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3600, file: !3587, line: 185, baseType: !3484, size: 64, offset: 256)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !3600, file: !3587, line: 186, baseType: !3484, size: 64, offset: 320)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3600, file: !3587, line: 187, baseType: !3610, size: 64, offset: 384)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{!837, !2893, !832, !3448, !753}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3600, file: !3587, line: 189, baseType: !3614, size: 64, offset: 448)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!837, !2893, !832, !528, !753}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !3600, file: !3587, line: 191, baseType: !3618, size: 64, offset: 512)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{!128, !2893, !832, !5, !131}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3600, file: !3587, line: 193, baseType: !3618, size: 64, offset: 576)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !3600, file: !3587, line: 195, baseType: !3511, size: 64, offset: 640)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3600, file: !3587, line: 196, baseType: !3624, size: 64, offset: 704)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!934, !2893, !832, !936}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !3600, file: !3587, line: 198, baseType: !3498, size: 64, offset: 768)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !3600, file: !3587, line: 203, baseType: !3629, size: 64, offset: 832)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{null, !2893, !528, !600, !128}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !3600, file: !3587, line: 205, baseType: !3484, size: 64, offset: 896)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "dcd_change", scope: !3600, file: !3587, line: 206, baseType: !3634, size: 64, offset: 960)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{null, !2893, !5}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf2", scope: !3600, file: !3587, line: 207, baseType: !3638, size: 64, offset: 1024)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!128, !2893, !528, !600, !128}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3600, file: !3587, line: 210, baseType: !665, size: 64, offset: 1088)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3600, file: !3587, line: 212, baseType: !128, size: 32, offset: 1152)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3596, file: !3587, line: 217, baseType: !2893, size: 64, offset: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_lock", scope: !2894, file: !2895, line: 297, baseType: !762, size: 192, offset: 768)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mutex", scope: !2894, file: !2895, line: 298, baseType: !762, size: 192, offset: 960)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_mutex", scope: !2894, file: !2895, line: 299, baseType: !762, size: 192, offset: 1152)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "termios_rwsem", scope: !2894, file: !2895, line: 300, baseType: !1209, size: 256, offset: 1344)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "winsize_mutex", scope: !2894, file: !2895, line: 301, baseType: !762, size: 192, offset: 1600)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_lock", scope: !2894, file: !2895, line: 302, baseType: !546, offset: 1792)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "flow_lock", scope: !2894, file: !2895, line: 303, baseType: !546, offset: 1792)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !2894, file: !2895, line: 305, baseType: !3351, size: 352, offset: 1792)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "termios_locked", scope: !2894, file: !2895, line: 305, baseType: !3351, size: 352, offset: 2144)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "termiox", scope: !2894, file: !2895, line: 306, baseType: !3553, size: 64, offset: 2496)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2894, file: !2895, line: 307, baseType: !3655, size: 512, offset: 2560)
!3655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 512, elements: !1997)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "pgrp", scope: !2894, file: !2895, line: 308, baseType: !1137, size: 64, offset: 3072)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !2894, file: !2895, line: 313, baseType: !1137, size: 64, offset: 3136)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2894, file: !2895, line: 314, baseType: !131, size: 64, offset: 3200)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2894, file: !2895, line: 315, baseType: !128, size: 32, offset: 3264)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !2894, file: !2895, line: 316, baseType: !3543, size: 64, offset: 3296)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !2894, file: !2895, line: 317, baseType: !131, size: 1, offset: 3360, flags: DIFlagBitField, extraData: i64 3360)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "flow_stopped", scope: !2894, file: !2895, line: 318, baseType: !131, size: 1, offset: 3361, flags: DIFlagBitField, extraData: i64 3360)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !2894, file: !2895, line: 319, baseType: !131, size: 62, offset: 3392, flags: DIFlagBitField, extraData: i64 3392)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "hw_stopped", scope: !2894, file: !2895, line: 320, baseType: !128, size: 32, offset: 3456)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_status", scope: !2894, file: !2895, line: 321, baseType: !131, size: 8, offset: 3488, flags: DIFlagBitField, extraData: i64 3488)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !2894, file: !2895, line: 322, baseType: !131, size: 1, offset: 3496, flags: DIFlagBitField, extraData: i64 3488)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "unused_ctrl", scope: !2894, file: !2895, line: 323, baseType: !131, size: 55, offset: 3520, flags: DIFlagBitField, extraData: i64 3520)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "receive_room", scope: !2894, file: !2895, line: 324, baseType: !5, size: 32, offset: 3584)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "flow_change", scope: !2894, file: !2895, line: 325, baseType: !128, size: 32, offset: 3616)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2894, file: !2895, line: 327, baseType: !2893, size: 64, offset: 3648)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2894, file: !2895, line: 328, baseType: !994, size: 64, offset: 3712)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !2894, file: !2895, line: 329, baseType: !984, size: 128, offset: 3776)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !2894, file: !2895, line: 330, baseType: !984, size: 128, offset: 3904)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "hangup_work", scope: !2894, file: !2895, line: 331, baseType: !1733, size: 256, offset: 4032)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "disc_data", scope: !2894, file: !2895, line: 332, baseType: !98, size: 64, offset: 4288)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2894, file: !2895, line: 333, baseType: !98, size: 64, offset: 4352)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !2894, file: !2895, line: 334, baseType: !546, offset: 4416)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "tty_files", scope: !2894, file: !2895, line: 335, baseType: !207, size: 128, offset: 4416)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !2894, file: !2895, line: 339, baseType: !128, size: 32, offset: 4544)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !2894, file: !2895, line: 340, baseType: !3448, size: 64, offset: 4608)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "write_cnt", scope: !2894, file: !2895, line: 341, baseType: !128, size: 32, offset: 4672)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "SAK_work", scope: !2894, file: !2895, line: 343, baseType: !1733, size: 256, offset: 4736)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2894, file: !2895, line: 344, baseType: !3370, size: 64, offset: 4992)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2840, file: !2841, line: 175, baseType: !3685, size: 32, offset: 3200)
!3685 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !308, line: 805, baseType: !3686)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !308, line: 798, size: 32, elements: !3687)
!3687 = !{!3688, !3689}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3686, file: !308, line: 803, baseType: !502, size: 32)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3686, file: !308, line: 804, baseType: !546, offset: 32)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2840, file: !2841, line: 176, baseType: !214, size: 64, offset: 3264)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2840, file: !2841, line: 176, baseType: !214, size: 64, offset: 3328)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2840, file: !2841, line: 176, baseType: !214, size: 64, offset: 3392)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2840, file: !2841, line: 176, baseType: !214, size: 64, offset: 3456)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2840, file: !2841, line: 177, baseType: !214, size: 64, offset: 3520)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2840, file: !2841, line: 178, baseType: !214, size: 64, offset: 3584)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2840, file: !2841, line: 179, baseType: !2789, size: 128, offset: 3648)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2840, file: !2841, line: 180, baseType: !131, size: 64, offset: 3776)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2840, file: !2841, line: 180, baseType: !131, size: 64, offset: 3840)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2840, file: !2841, line: 180, baseType: !131, size: 64, offset: 3904)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2840, file: !2841, line: 180, baseType: !131, size: 64, offset: 3968)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2840, file: !2841, line: 181, baseType: !131, size: 64, offset: 4032)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2840, file: !2841, line: 181, baseType: !131, size: 64, offset: 4096)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2840, file: !2841, line: 181, baseType: !131, size: 64, offset: 4160)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2840, file: !2841, line: 181, baseType: !131, size: 64, offset: 4224)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2840, file: !2841, line: 182, baseType: !131, size: 64, offset: 4288)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2840, file: !2841, line: 182, baseType: !131, size: 64, offset: 4352)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2840, file: !2841, line: 182, baseType: !131, size: 64, offset: 4416)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2840, file: !2841, line: 182, baseType: !131, size: 64, offset: 4480)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2840, file: !2841, line: 183, baseType: !131, size: 64, offset: 4544)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2840, file: !2841, line: 183, baseType: !131, size: 64, offset: 4608)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2840, file: !2841, line: 184, baseType: !3712, offset: 4672)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3713, line: 12, elements: !223)
!3713 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2840, file: !2841, line: 192, baseType: !216, size: 64, offset: 4672)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2840, file: !2841, line: 203, baseType: !3716, size: 2048, offset: 4736)
!3716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3717, size: 2048, elements: !1682)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3718, line: 43, size: 128, elements: !3719)
!3718 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!3719 = !{!3720, !3721}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3717, file: !3718, line: 44, baseType: !755, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3717, file: !3718, line: 45, baseType: !755, size: 64, offset: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2840, file: !2841, line: 220, baseType: !619, size: 8, offset: 6784)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2840, file: !2841, line: 221, baseType: !1236, size: 16, offset: 6800)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2840, file: !2841, line: 222, baseType: !1236, size: 16, offset: 6816)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2840, file: !2841, line: 224, baseType: !360, size: 64, offset: 6848)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2840, file: !2841, line: 227, baseType: !762, size: 192, offset: 6912)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2840, file: !2841, line: 233, baseType: !762, size: 192, offset: 7104)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !153, file: !154, line: 970, baseType: !3729, size: 64, offset: 9280)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2841, line: 20, size: 16576, elements: !3731)
!3731 = !{!3732, !3733, !3734, !3735}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3730, file: !2841, line: 21, baseType: !546)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3730, file: !2841, line: 22, baseType: !169, size: 32)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3730, file: !2841, line: 23, baseType: !984, size: 128, offset: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3730, file: !2841, line: 24, baseType: !3736, size: 16384, offset: 192)
!3736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3737, size: 16384, elements: !1997)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2851, line: 49, size: 256, elements: !3738)
!3738 = !{!3739}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3737, file: !2851, line: 50, baseType: !3740, size: 256)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2851, line: 35, size: 256, elements: !3741)
!3741 = !{!3742, !3749, !3750, !3756}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3740, file: !2851, line: 37, baseType: !3743, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3744, line: 19, baseType: !3745)
!3744 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3744, line: 18, baseType: !3747)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{null, !128}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3740, file: !2851, line: 38, baseType: !131, size: 64, offset: 64)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3740, file: !2851, line: 44, baseType: !3751, size: 64, offset: 128)
!3751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3744, line: 22, baseType: !3752)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3744, line: 21, baseType: !3754)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{null}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3740, file: !2851, line: 46, baseType: !2855, size: 64, offset: 192)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !153, file: !154, line: 971, baseType: !2855, size: 64, offset: 9344)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !153, file: !154, line: 972, baseType: !2855, size: 64, offset: 9408)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !153, file: !154, line: 974, baseType: !2855, size: 64, offset: 9472)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !153, file: !154, line: 975, baseType: !2850, size: 192, offset: 9536)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !153, file: !154, line: 976, baseType: !131, size: 64, offset: 9728)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !153, file: !154, line: 977, baseType: !753, size: 64, offset: 9792)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !153, file: !154, line: 978, baseType: !5, size: 32, offset: 9856)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !153, file: !154, line: 980, baseType: !815, size: 64, offset: 9920)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !153, file: !154, line: 989, baseType: !3766, size: 128, offset: 9984)
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3767, line: 35, size: 128, elements: !3768)
!3767 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!3768 = !{!3769, !3770, !3771}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3766, file: !3767, line: 36, baseType: !128, size: 32)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3766, file: !3767, line: 37, baseType: !174, size: 32, offset: 32)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3766, file: !3767, line: 38, baseType: !3772, size: 64, offset: 64)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3767, line: 23, flags: DIFlagFwdDecl)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !153, file: !154, line: 992, baseType: !214, size: 64, offset: 10112)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !153, file: !154, line: 993, baseType: !214, size: 64, offset: 10176)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !153, file: !154, line: 996, baseType: !546, offset: 10240)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !153, file: !154, line: 999, baseType: !280, offset: 10240)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !153, file: !154, line: 1001, baseType: !3779, size: 64, offset: 10240)
!3779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !154, line: 636, size: 64, elements: !3780)
!3780 = !{!3781}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3779, file: !154, line: 637, baseType: !3782, size: 64)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !153, file: !154, line: 1005, baseType: !321, size: 128, offset: 10304)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !153, file: !154, line: 1007, baseType: !152, size: 64, offset: 10432)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !153, file: !154, line: 1009, baseType: !3786, size: 64, offset: 10496)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !154, line: 1009, flags: DIFlagFwdDecl)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !153, file: !154, line: 1043, baseType: !98, size: 64, offset: 10560)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !153, file: !154, line: 1046, baseType: !3790, size: 64, offset: 10624)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !154, line: 41, flags: DIFlagFwdDecl)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !153, file: !154, line: 1050, baseType: !3793, size: 64, offset: 10688)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !154, line: 42, flags: DIFlagFwdDecl)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !153, file: !154, line: 1054, baseType: !3796, size: 64, offset: 10752)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !154, line: 55, flags: DIFlagFwdDecl)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !153, file: !154, line: 1056, baseType: !1591, size: 64, offset: 10816)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !153, file: !154, line: 1058, baseType: !3800, size: 64, offset: 10880)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3802, line: 99, size: 704, elements: !3803)
!3802 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!3803 = !{!3804, !3805, !3806, !3807, !3808, !3809, !3810, !3829, !3830}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3801, file: !3802, line: 100, baseType: !766, size: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3801, file: !3802, line: 101, baseType: !174, size: 32, offset: 64)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3801, file: !3802, line: 102, baseType: !174, size: 32, offset: 96)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3801, file: !3802, line: 105, baseType: !546, offset: 128)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3801, file: !3802, line: 107, baseType: !142, size: 16, offset: 128)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !3801, file: !3802, line: 109, baseType: !2138, size: 128, offset: 192)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !3801, file: !3802, line: 110, baseType: !3811, size: 64, offset: 320)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !3802, line: 73, size: 448, elements: !3813)
!3813 = !{!3814, !3817, !3818, !3823, !3828}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3812, file: !3802, line: 74, baseType: !3815, size: 64)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !3802, line: 74, flags: DIFlagFwdDecl)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !3812, file: !3802, line: 75, baseType: !3800, size: 64, offset: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, scope: !3812, file: !3802, line: 83, baseType: !3819, size: 128, offset: 128)
!3819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3812, file: !3802, line: 83, size: 128, elements: !3820)
!3820 = !{!3821, !3822}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !3819, file: !3802, line: 84, baseType: !207, size: 128)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !3819, file: !3802, line: 85, baseType: !2390, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, scope: !3812, file: !3802, line: 87, baseType: !3824, size: 128, offset: 256)
!3824 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3812, file: !3802, line: 87, size: 128, elements: !3825)
!3825 = !{!3826, !3827}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !3824, file: !3802, line: 88, baseType: !674, size: 128)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !3824, file: !3802, line: 89, baseType: !812, size: 128, align: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3812, file: !3802, line: 92, baseType: !5, size: 32, offset: 384)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !3801, file: !3802, line: 111, baseType: !670, size: 64, offset: 384)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !3801, file: !3802, line: 113, baseType: !1733, size: 256, offset: 448)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !153, file: !154, line: 1061, baseType: !3832, size: 64, offset: 10944)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !154, line: 43, flags: DIFlagFwdDecl)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !153, file: !154, line: 1064, baseType: !131, size: 64, offset: 11008)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !153, file: !154, line: 1065, baseType: !3836, size: 64, offset: 11072)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2851, line: 14, baseType: !3838)
!3838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2851, line: 12, size: 384, elements: !3839)
!3839 = !{!3840}
!3840 = !DIDerivedType(tag: DW_TAG_member, scope: !3838, file: !2851, line: 13, baseType: !3841, size: 384)
!3841 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3838, file: !2851, line: 13, size: 384, elements: !3842)
!3842 = !{!3843, !3844, !3845, !3846}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3841, file: !2851, line: 13, baseType: !128, size: 32)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3841, file: !2851, line: 13, baseType: !128, size: 32, offset: 32)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3841, file: !2851, line: 13, baseType: !128, size: 32, offset: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3841, file: !2851, line: 13, baseType: !3847, size: 256, offset: 128)
!3847 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3848, line: 32, size: 256, elements: !3849)
!3848 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!3849 = !{!3850, !3855, !3868, !3874, !3883, !3903, !3908}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3847, file: !3848, line: 37, baseType: !3851, size: 64)
!3851 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3847, file: !3848, line: 34, size: 64, elements: !3852)
!3852 = !{!3853, !3854}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3851, file: !3848, line: 35, baseType: !2766, size: 32)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3851, file: !3848, line: 36, baseType: !478, size: 32, offset: 32)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3847, file: !3848, line: 45, baseType: !3856, size: 192)
!3856 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3847, file: !3848, line: 40, size: 192, elements: !3857)
!3857 = !{!3858, !3860, !3861, !3867}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3856, file: !3848, line: 41, baseType: !3859, size: 32)
!3859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !305, line: 95, baseType: !128)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3856, file: !3848, line: 42, baseType: !128, size: 32, offset: 32)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3856, file: !3848, line: 43, baseType: !3862, size: 64, offset: 64)
!3862 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3848, line: 11, baseType: !3863)
!3863 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3848, line: 8, size: 64, elements: !3864)
!3864 = !{!3865, !3866}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3863, file: !3848, line: 9, baseType: !128, size: 32)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3863, file: !3848, line: 10, baseType: !98, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3856, file: !3848, line: 44, baseType: !128, size: 32, offset: 128)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3847, file: !3848, line: 52, baseType: !3869, size: 128)
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3847, file: !3848, line: 48, size: 128, elements: !3870)
!3870 = !{!3871, !3872, !3873}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3869, file: !3848, line: 49, baseType: !2766, size: 32)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3869, file: !3848, line: 50, baseType: !478, size: 32, offset: 32)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3869, file: !3848, line: 51, baseType: !3862, size: 64, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3847, file: !3848, line: 61, baseType: !3875, size: 256)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3847, file: !3848, line: 55, size: 256, elements: !3876)
!3876 = !{!3877, !3878, !3879, !3880, !3882}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3875, file: !3848, line: 56, baseType: !2766, size: 32)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3875, file: !3848, line: 57, baseType: !478, size: 32, offset: 32)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3875, file: !3848, line: 58, baseType: !128, size: 32, offset: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3875, file: !3848, line: 59, baseType: !3881, size: 64, offset: 128)
!3881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !305, line: 94, baseType: !839)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3875, file: !3848, line: 60, baseType: !3881, size: 64, offset: 192)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3847, file: !3848, line: 95, baseType: !3884, size: 256)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3847, file: !3848, line: 64, size: 256, elements: !3885)
!3885 = !{!3886, !3887}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3884, file: !3848, line: 65, baseType: !98, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, scope: !3884, file: !3848, line: 77, baseType: !3888, size: 192, offset: 64)
!3888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3884, file: !3848, line: 77, size: 192, elements: !3889)
!3889 = !{!3890, !3891, !3898}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3888, file: !3848, line: 82, baseType: !1236, size: 16)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3888, file: !3848, line: 88, baseType: !3892, size: 192)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3888, file: !3848, line: 84, size: 192, elements: !3893)
!3893 = !{!3894, !3896, !3897}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3892, file: !3848, line: 85, baseType: !3895, size: 64)
!3895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 64, elements: !149)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3892, file: !3848, line: 86, baseType: !98, size: 64, offset: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3892, file: !3848, line: 87, baseType: !98, size: 64, offset: 128)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3888, file: !3848, line: 93, baseType: !3899, size: 96)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3888, file: !3848, line: 90, size: 96, elements: !3900)
!3900 = !{!3901, !3902}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3899, file: !3848, line: 91, baseType: !3895, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3899, file: !3848, line: 92, baseType: !164, size: 32, offset: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3847, file: !3848, line: 101, baseType: !3904, size: 128)
!3904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3847, file: !3848, line: 98, size: 128, elements: !3905)
!3905 = !{!3906, !3907}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3904, file: !3848, line: 99, baseType: !97, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3904, file: !3848, line: 100, baseType: !128, size: 32, offset: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3847, file: !3848, line: 108, baseType: !3909, size: 128)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3847, file: !3848, line: 104, size: 128, elements: !3910)
!3910 = !{!3911, !3912, !3913}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3909, file: !3848, line: 105, baseType: !98, size: 64)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3909, file: !3848, line: 106, baseType: !128, size: 32, offset: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3909, file: !3848, line: 107, baseType: !5, size: 32, offset: 96)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !153, file: !154, line: 1067, baseType: !3712, offset: 11136)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !153, file: !154, line: 1099, baseType: !3916, size: 64, offset: 11136)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !154, line: 56, flags: DIFlagFwdDecl)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !153, file: !154, line: 1103, baseType: !207, size: 128, offset: 11200)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !153, file: !154, line: 1104, baseType: !3920, size: 64, offset: 11328)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !154, line: 46, flags: DIFlagFwdDecl)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !153, file: !154, line: 1105, baseType: !762, size: 192, offset: 11392)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !153, file: !154, line: 1106, baseType: !5, size: 32, offset: 11584)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !153, file: !154, line: 1109, baseType: !3925, size: 128, offset: 11648)
!3925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3926, size: 128, elements: !1185)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !154, line: 51, flags: DIFlagFwdDecl)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !153, file: !154, line: 1110, baseType: !762, size: 192, offset: 11776)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !153, file: !154, line: 1111, baseType: !207, size: 128, offset: 11968)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !153, file: !154, line: 1173, baseType: !3931, size: 64, offset: 12096)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3933, line: 62, size: 256, align: 256, elements: !3934)
!3933 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!3934 = !{!3935, !3936, !3937, !3942}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3932, file: !3933, line: 75, baseType: !164, size: 32)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3932, file: !3933, line: 90, baseType: !164, size: 32, offset: 32)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3932, file: !3933, line: 124, baseType: !3938, size: 64, offset: 64)
!3938 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3932, file: !3933, line: 109, size: 64, elements: !3939)
!3939 = !{!3940, !3941}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !3938, file: !3933, line: 110, baseType: !215, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3938, file: !3933, line: 112, baseType: !215, size: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3932, file: !3933, line: 144, baseType: !164, size: 32, offset: 128)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !153, file: !154, line: 1174, baseType: !162, size: 32, offset: 12160)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !153, file: !154, line: 1179, baseType: !131, size: 64, offset: 12224)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !153, file: !154, line: 1182, baseType: !3946, size: 128, offset: 12288)
!3946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2607, line: 76, size: 128, elements: !3947)
!3947 = !{!3948, !3953, !3954}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3946, file: !2607, line: 85, baseType: !3949, size: 64)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3950, line: 7, size: 64, elements: !3951)
!3950 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!3951 = !{!3952}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3949, file: !3950, line: 12, baseType: !349, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3946, file: !2607, line: 88, baseType: !619, size: 8, offset: 64)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3946, file: !2607, line: 95, baseType: !619, size: 8, offset: 72)
!3955 = !DIDerivedType(tag: DW_TAG_member, scope: !153, file: !154, line: 1184, baseType: !3956, size: 128, offset: 12416)
!3956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !153, file: !154, line: 1184, size: 128, elements: !3957)
!3957 = !{!3958, !3959}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3956, file: !154, line: 1185, baseType: !169, size: 32)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3956, file: !154, line: 1186, baseType: !812, size: 128, align: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !153, file: !154, line: 1190, baseType: !900, size: 64, offset: 12544)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !153, file: !154, line: 1192, baseType: !3962, size: 128, offset: 12608)
!3962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2607, line: 64, size: 128, elements: !3963)
!3963 = !{!3964, !3965, !3966}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3962, file: !2607, line: 65, baseType: !449, size: 64)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3962, file: !2607, line: 67, baseType: !164, size: 32, offset: 64)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3962, file: !2607, line: 68, baseType: !164, size: 32, offset: 96)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !153, file: !154, line: 1206, baseType: !128, size: 32, offset: 12736)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !153, file: !154, line: 1207, baseType: !128, size: 32, offset: 12768)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !153, file: !154, line: 1209, baseType: !131, size: 64, offset: 12800)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !153, file: !154, line: 1219, baseType: !214, size: 64, offset: 12864)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !153, file: !154, line: 1220, baseType: !214, size: 64, offset: 12928)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !153, file: !154, line: 1317, baseType: !128, size: 32, offset: 12992)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !153, file: !154, line: 1319, baseType: !152, size: 64, offset: 13056)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !153, file: !154, line: 1322, baseType: !3975, size: 64, offset: 13120)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3977, line: 56, size: 512, elements: !3978)
!3977 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!3978 = !{!3979, !3980, !3981, !3982, !3983, !3984, !3985, !3987}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3976, file: !3977, line: 57, baseType: !3975, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3976, file: !3977, line: 58, baseType: !98, size: 64, offset: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3976, file: !3977, line: 59, baseType: !131, size: 64, offset: 128)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3976, file: !3977, line: 60, baseType: !131, size: 64, offset: 192)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3976, file: !3977, line: 61, baseType: !2305, size: 64, offset: 256)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3976, file: !3977, line: 62, baseType: !5, size: 32, offset: 320)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3976, file: !3977, line: 63, baseType: !3986, size: 64, offset: 384)
!3986 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !175, line: 153, baseType: !214)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3976, file: !3977, line: 64, baseType: !2088, size: 64, offset: 448)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !153, file: !154, line: 1326, baseType: !169, size: 32, offset: 13184)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !153, file: !154, line: 1342, baseType: !98, size: 64, offset: 13248)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !153, file: !154, line: 1343, baseType: !215, size: 64, offset: 13312)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !153, file: !154, line: 1344, baseType: !214, size: 64, offset: 13376)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !153, file: !154, line: 1345, baseType: !215, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !153, file: !154, line: 1346, baseType: !215, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !153, file: !154, line: 1347, baseType: !215, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !153, file: !154, line: 1348, baseType: !812, size: 128, align: 64, offset: 13504)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !153, file: !154, line: 1358, baseType: !3997, size: 34816, offset: 13824)
!3997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3998, line: 485, size: 34816, elements: !3999)
!3998 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3999 = !{!4000, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4029, !4030, !4031, !4032, !4033, !4034, !4037, !4038, !4039}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3997, file: !3998, line: 487, baseType: !4001, size: 192)
!4001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4002, size: 192, elements: !686)
!4002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4003, line: 16, size: 64, elements: !4004)
!4003 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!4004 = !{!4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4002, file: !4003, line: 17, baseType: !860, size: 16)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4002, file: !4003, line: 18, baseType: !860, size: 16, offset: 16)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4002, file: !4003, line: 19, baseType: !860, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4002, file: !4003, line: 19, baseType: !860, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4002, file: !4003, line: 19, baseType: !860, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4002, file: !4003, line: 19, baseType: !860, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4002, file: !4003, line: 19, baseType: !860, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4002, file: !4003, line: 20, baseType: !860, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4002, file: !4003, line: 20, baseType: !860, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4002, file: !4003, line: 20, baseType: !860, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4002, file: !4003, line: 20, baseType: !860, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4002, file: !4003, line: 20, baseType: !860, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4002, file: !4003, line: 20, baseType: !860, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3997, file: !3998, line: 491, baseType: !131, size: 64, offset: 192)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3997, file: !3998, line: 495, baseType: !142, size: 16, offset: 256)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3997, file: !3998, line: 496, baseType: !142, size: 16, offset: 272)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3997, file: !3998, line: 497, baseType: !142, size: 16, offset: 288)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3997, file: !3998, line: 498, baseType: !142, size: 16, offset: 304)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3997, file: !3998, line: 502, baseType: !131, size: 64, offset: 320)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3997, file: !3998, line: 503, baseType: !131, size: 64, offset: 384)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3997, file: !3998, line: 514, baseType: !4026, size: 256, offset: 448)
!4026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4027, size: 256, elements: !1145)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3998, line: 483, flags: DIFlagFwdDecl)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3997, file: !3998, line: 516, baseType: !131, size: 64, offset: 704)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3997, file: !3998, line: 518, baseType: !131, size: 64, offset: 768)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3997, file: !3998, line: 520, baseType: !131, size: 64, offset: 832)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3997, file: !3998, line: 521, baseType: !131, size: 64, offset: 896)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3997, file: !3998, line: 522, baseType: !131, size: 64, offset: 960)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3997, file: !3998, line: 528, baseType: !4035, size: 64, offset: 1024)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3998, line: 10, flags: DIFlagFwdDecl)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3997, file: !3998, line: 535, baseType: !131, size: 64, offset: 1088)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3997, file: !3998, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3997, file: !3998, line: 540, baseType: !4040, size: 33280, offset: 1536)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4041, line: 317, size: 33280, elements: !4042)
!4041 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!4042 = !{!4043, !4044, !4045}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4040, file: !4041, line: 330, baseType: !5, size: 32)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4040, file: !4041, line: 337, baseType: !131, size: 64, offset: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4040, file: !4041, line: 348, baseType: !4046, size: 32768, offset: 512)
!4046 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4041, line: 304, size: 32768, elements: !4047)
!4047 = !{!4048, !4063, !4100, !4150, !4163}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4046, file: !4041, line: 305, baseType: !4049, size: 896)
!4049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4041, line: 12, size: 896, elements: !4050)
!4050 = !{!4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4062}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4049, file: !4041, line: 13, baseType: !162, size: 32)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4049, file: !4041, line: 14, baseType: !162, size: 32, offset: 32)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4049, file: !4041, line: 15, baseType: !162, size: 32, offset: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4049, file: !4041, line: 16, baseType: !162, size: 32, offset: 96)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4049, file: !4041, line: 17, baseType: !162, size: 32, offset: 128)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4049, file: !4041, line: 18, baseType: !162, size: 32, offset: 160)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4049, file: !4041, line: 19, baseType: !162, size: 32, offset: 192)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4049, file: !4041, line: 22, baseType: !4059, size: 640, offset: 224)
!4059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 640, elements: !4060)
!4060 = !{!4061}
!4061 = !DISubrange(count: 20)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4049, file: !4041, line: 25, baseType: !162, size: 32, offset: 864)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4046, file: !4041, line: 306, baseType: !4064, size: 4096, align: 128)
!4064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4041, line: 34, size: 4096, align: 128, elements: !4065)
!4065 = !{!4066, !4067, !4068, !4069, !4070, !4085, !4086, !4087, !4089, !4091, !4095}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4064, file: !4041, line: 35, baseType: !860, size: 16)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4064, file: !4041, line: 36, baseType: !860, size: 16, offset: 16)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4064, file: !4041, line: 37, baseType: !860, size: 16, offset: 32)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4064, file: !4041, line: 38, baseType: !860, size: 16, offset: 48)
!4070 = !DIDerivedType(tag: DW_TAG_member, scope: !4064, file: !4041, line: 39, baseType: !4071, size: 128, offset: 64)
!4071 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4064, file: !4041, line: 39, size: 128, elements: !4072)
!4072 = !{!4073, !4078}
!4073 = !DIDerivedType(tag: DW_TAG_member, scope: !4071, file: !4041, line: 40, baseType: !4074, size: 128)
!4074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4071, file: !4041, line: 40, size: 128, elements: !4075)
!4075 = !{!4076, !4077}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4074, file: !4041, line: 41, baseType: !214, size: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4074, file: !4041, line: 42, baseType: !214, size: 64, offset: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, scope: !4071, file: !4041, line: 44, baseType: !4079, size: 128)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4071, file: !4041, line: 44, size: 128, elements: !4080)
!4080 = !{!4081, !4082, !4083, !4084}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4079, file: !4041, line: 45, baseType: !162, size: 32)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4079, file: !4041, line: 46, baseType: !162, size: 32, offset: 32)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4079, file: !4041, line: 47, baseType: !162, size: 32, offset: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4079, file: !4041, line: 48, baseType: !162, size: 32, offset: 96)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4064, file: !4041, line: 51, baseType: !162, size: 32, offset: 192)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4064, file: !4041, line: 52, baseType: !162, size: 32, offset: 224)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4064, file: !4041, line: 55, baseType: !4088, size: 1024, offset: 256)
!4088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 1024, elements: !533)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4064, file: !4041, line: 58, baseType: !4090, size: 2048, offset: 1280)
!4090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 2048, elements: !1997)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4064, file: !4041, line: 60, baseType: !4092, size: 384, offset: 3328)
!4092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 384, elements: !4093)
!4093 = !{!4094}
!4094 = !DISubrange(count: 12)
!4095 = !DIDerivedType(tag: DW_TAG_member, scope: !4064, file: !4041, line: 62, baseType: !4096, size: 384, offset: 3712)
!4096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4064, file: !4041, line: 62, size: 384, elements: !4097)
!4097 = !{!4098, !4099}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4096, file: !4041, line: 63, baseType: !4092, size: 384)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4096, file: !4041, line: 64, baseType: !4092, size: 384)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4046, file: !4041, line: 307, baseType: !4101, size: 1088)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4041, line: 79, size: 1088, elements: !4102)
!4102 = !{!4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4149}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4101, file: !4041, line: 80, baseType: !162, size: 32)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4101, file: !4041, line: 81, baseType: !162, size: 32, offset: 32)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4101, file: !4041, line: 82, baseType: !162, size: 32, offset: 64)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4101, file: !4041, line: 83, baseType: !162, size: 32, offset: 96)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4101, file: !4041, line: 84, baseType: !162, size: 32, offset: 128)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4101, file: !4041, line: 85, baseType: !162, size: 32, offset: 160)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4101, file: !4041, line: 86, baseType: !162, size: 32, offset: 192)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4101, file: !4041, line: 88, baseType: !4059, size: 640, offset: 224)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4101, file: !4041, line: 89, baseType: !334, size: 8, offset: 864)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4101, file: !4041, line: 90, baseType: !334, size: 8, offset: 872)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4101, file: !4041, line: 91, baseType: !334, size: 8, offset: 880)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4101, file: !4041, line: 92, baseType: !334, size: 8, offset: 888)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4101, file: !4041, line: 93, baseType: !334, size: 8, offset: 896)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4101, file: !4041, line: 94, baseType: !334, size: 8, offset: 904)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4101, file: !4041, line: 95, baseType: !4118, size: 64, offset: 960)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4120, line: 11, size: 128, elements: !4121)
!4120 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!4121 = !{!4122, !4123}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4119, file: !4120, line: 12, baseType: !97, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4119, file: !4120, line: 13, baseType: !4124, size: 64, offset: 64)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4126, line: 56, size: 1344, elements: !4127)
!4126 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!4127 = !{!4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4125, file: !4126, line: 61, baseType: !131, size: 64)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4125, file: !4126, line: 62, baseType: !131, size: 64, offset: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4125, file: !4126, line: 63, baseType: !131, size: 64, offset: 128)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4125, file: !4126, line: 64, baseType: !131, size: 64, offset: 192)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4125, file: !4126, line: 65, baseType: !131, size: 64, offset: 256)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4125, file: !4126, line: 66, baseType: !131, size: 64, offset: 320)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4125, file: !4126, line: 68, baseType: !131, size: 64, offset: 384)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4125, file: !4126, line: 69, baseType: !131, size: 64, offset: 448)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4125, file: !4126, line: 70, baseType: !131, size: 64, offset: 512)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4125, file: !4126, line: 71, baseType: !131, size: 64, offset: 576)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4125, file: !4126, line: 72, baseType: !131, size: 64, offset: 640)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4125, file: !4126, line: 73, baseType: !131, size: 64, offset: 704)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4125, file: !4126, line: 74, baseType: !131, size: 64, offset: 768)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4125, file: !4126, line: 75, baseType: !131, size: 64, offset: 832)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4125, file: !4126, line: 76, baseType: !131, size: 64, offset: 896)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4125, file: !4126, line: 81, baseType: !131, size: 64, offset: 960)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4125, file: !4126, line: 83, baseType: !131, size: 64, offset: 1024)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4125, file: !4126, line: 84, baseType: !131, size: 64, offset: 1088)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4125, file: !4126, line: 85, baseType: !131, size: 64, offset: 1152)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4125, file: !4126, line: 86, baseType: !131, size: 64, offset: 1216)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4125, file: !4126, line: 87, baseType: !131, size: 64, offset: 1280)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4101, file: !4041, line: 96, baseType: !162, size: 32, offset: 1024)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4046, file: !4041, line: 308, baseType: !4151, size: 4608, align: 512)
!4151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4041, line: 289, size: 4608, align: 512, elements: !4152)
!4152 = !{!4153, !4154, !4161}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4151, file: !4041, line: 290, baseType: !4064, size: 4096, align: 128)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4151, file: !4041, line: 291, baseType: !4155, size: 512, offset: 4096)
!4155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4041, line: 268, size: 512, elements: !4156)
!4156 = !{!4157, !4158, !4159}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4155, file: !4041, line: 269, baseType: !214, size: 64)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4155, file: !4041, line: 270, baseType: !214, size: 64, offset: 64)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4155, file: !4041, line: 271, baseType: !4160, size: 384, offset: 128)
!4160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 384, elements: !1254)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4151, file: !4041, line: 292, baseType: !4162, offset: 4608)
!4162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, elements: !1352)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4046, file: !4041, line: 309, baseType: !4164, size: 32768)
!4164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 32768, elements: !4165)
!4165 = !{!4166}
!4166 = !DISubrange(count: 4096)
!4167 = !{!"rsp"}
!4168 = !{i32 7, !"Dwarf Version", i32 4}
!4169 = !{i32 2, !"Debug Info Version", i32 3}
!4170 = !{i32 1, !"wchar_size", i32 2}
!4171 = !{i32 1, !"Code Model", i32 2}
!4172 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4173 = distinct !DISubprogram(name: "tty_chars_in_buffer", scope: !1, file: !1, line: 56, type: !3499, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !223)
!4174 = !DILocalVariable(name: "tty", arg: 1, scope: !4173, file: !1, line: 56, type: !2893)
!4175 = !DILocation(line: 56, column: 44, scope: !4173)
!4176 = !DILocation(line: 58, column: 6, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4173, file: !1, line: 58, column: 6)
!4178 = !DILocation(line: 58, column: 11, scope: !4177)
!4179 = !DILocation(line: 58, column: 16, scope: !4177)
!4180 = !DILocation(line: 58, column: 6, scope: !4173)
!4181 = !DILocation(line: 59, column: 10, scope: !4177)
!4182 = !DILocation(line: 59, column: 15, scope: !4177)
!4183 = !DILocation(line: 59, column: 20, scope: !4177)
!4184 = !DILocation(line: 59, column: 36, scope: !4177)
!4185 = !DILocation(line: 59, column: 3, scope: !4177)
!4186 = !DILocation(line: 61, column: 3, scope: !4177)
!4187 = !DILocation(line: 62, column: 1, scope: !4173)
!4188 = distinct !DISubprogram(name: "tty_write_room", scope: !1, file: !1, line: 76, type: !3499, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !223)
!4189 = !DILocalVariable(name: "tty", arg: 1, scope: !4188, file: !1, line: 76, type: !2893)
!4190 = !DILocation(line: 76, column: 39, scope: !4188)
!4191 = !DILocation(line: 78, column: 6, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4188, file: !1, line: 78, column: 6)
!4193 = !DILocation(line: 78, column: 11, scope: !4192)
!4194 = !DILocation(line: 78, column: 16, scope: !4192)
!4195 = !DILocation(line: 78, column: 6, scope: !4188)
!4196 = !DILocation(line: 79, column: 10, scope: !4192)
!4197 = !DILocation(line: 79, column: 15, scope: !4192)
!4198 = !DILocation(line: 79, column: 20, scope: !4192)
!4199 = !DILocation(line: 79, column: 31, scope: !4192)
!4200 = !DILocation(line: 79, column: 3, scope: !4192)
!4201 = !DILocation(line: 80, column: 2, scope: !4188)
!4202 = !DILocation(line: 81, column: 1, scope: !4188)
!4203 = distinct !DISubprogram(name: "tty_driver_flush_buffer", scope: !1, file: !1, line: 92, type: !3485, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !223)
!4204 = !DILocalVariable(name: "tty", arg: 1, scope: !4203, file: !1, line: 92, type: !2893)
!4205 = !DILocation(line: 92, column: 49, scope: !4203)
!4206 = !DILocation(line: 94, column: 6, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4203, file: !1, line: 94, column: 6)
!4208 = !DILocation(line: 94, column: 11, scope: !4207)
!4209 = !DILocation(line: 94, column: 16, scope: !4207)
!4210 = !DILocation(line: 94, column: 6, scope: !4203)
!4211 = !DILocation(line: 95, column: 3, scope: !4207)
!4212 = !DILocation(line: 95, column: 8, scope: !4207)
!4213 = !DILocation(line: 95, column: 13, scope: !4207)
!4214 = !DILocation(line: 95, column: 26, scope: !4207)
!4215 = !DILocation(line: 96, column: 1, scope: !4203)
!4216 = distinct !DISubprogram(name: "tty_throttle", scope: !1, file: !1, line: 109, type: !3485, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !223)
!4217 = !DILocalVariable(name: "tty", arg: 1, scope: !4216, file: !1, line: 109, type: !2893)
!4218 = !DILocation(line: 109, column: 38, scope: !4216)
!4219 = !DILocation(line: 111, column: 14, scope: !4216)
!4220 = !DILocation(line: 111, column: 19, scope: !4216)
!4221 = !DILocation(line: 111, column: 2, scope: !4216)
!4222 = !DILocation(line: 113, column: 40, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4216, file: !1, line: 113, column: 6)
!4224 = !DILocation(line: 113, column: 45, scope: !4223)
!4225 = !DILocation(line: 113, column: 7, scope: !4223)
!4226 = !DILocation(line: 113, column: 52, scope: !4223)
!4227 = !DILocation(line: 114, column: 6, scope: !4223)
!4228 = !DILocation(line: 114, column: 11, scope: !4223)
!4229 = !DILocation(line: 114, column: 16, scope: !4223)
!4230 = !DILocation(line: 113, column: 6, scope: !4216)
!4231 = !DILocation(line: 115, column: 3, scope: !4223)
!4232 = !DILocation(line: 115, column: 8, scope: !4223)
!4233 = !DILocation(line: 115, column: 13, scope: !4223)
!4234 = !DILocation(line: 115, column: 22, scope: !4223)
!4235 = !DILocation(line: 116, column: 2, scope: !4216)
!4236 = !DILocation(line: 116, column: 7, scope: !4216)
!4237 = !DILocation(line: 116, column: 19, scope: !4216)
!4238 = !DILocation(line: 117, column: 12, scope: !4216)
!4239 = !DILocation(line: 117, column: 17, scope: !4216)
!4240 = !DILocation(line: 117, column: 2, scope: !4216)
!4241 = !DILocation(line: 118, column: 1, scope: !4216)
!4242 = distinct !DISubprogram(name: "test_and_set_bit", scope: !4243, file: !4243, line: 68, type: !4244, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!4243 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!619, !97, !4246}
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !131)
!4248 = !DILocalVariable(name: "nr", arg: 1, scope: !4249, file: !4250, line: 136, type: !97)
!4249 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !4250, file: !4250, line: 136, type: !4244, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!4250 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4251 = !DILocation(line: 136, column: 28, scope: !4249, inlinedAt: !4252)
!4252 = distinct !DILocation(line: 71, column: 9, scope: !4242)
!4253 = !DILocalVariable(name: "addr", arg: 2, scope: !4249, file: !4250, line: 136, type: !4246)
!4254 = !DILocation(line: 136, column: 56, scope: !4249, inlinedAt: !4252)
!4255 = !DILocalVariable(name: "c", scope: !4256, file: !4250, line: 138, type: !619)
!4256 = distinct !DILexicalBlock(scope: !4249, file: !4250, line: 138, column: 9)
!4257 = !DILocation(line: 138, column: 9, scope: !4256, inlinedAt: !4252)
!4258 = !DILocalVariable(name: "v", arg: 1, scope: !4259, file: !4260, line: 99, type: !4263)
!4259 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4260, file: !4260, line: 99, type: !4261, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!4260 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4261 = !DISubroutineType(types: !4262)
!4262 = !{null, !4263, !753}
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4265)
!4265 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4266 = !DILocation(line: 99, column: 79, scope: !4259, inlinedAt: !4267)
!4267 = distinct !DILocation(line: 70, column: 2, scope: !4242)
!4268 = !DILocalVariable(name: "size", arg: 2, scope: !4259, file: !4260, line: 99, type: !753)
!4269 = !DILocation(line: 99, column: 89, scope: !4259, inlinedAt: !4267)
!4270 = !DILocalVariable(name: "nr", arg: 1, scope: !4242, file: !4243, line: 68, type: !97)
!4271 = !DILocation(line: 68, column: 42, scope: !4242)
!4272 = !DILocalVariable(name: "addr", arg: 2, scope: !4242, file: !4243, line: 68, type: !4246)
!4273 = !DILocation(line: 68, column: 70, scope: !4242)
!4274 = !DILocation(line: 70, column: 31, scope: !4242)
!4275 = !DILocation(line: 70, column: 38, scope: !4242)
!4276 = !DILocation(line: 70, column: 36, scope: !4242)
!4277 = !DILocation(line: 101, column: 20, scope: !4259, inlinedAt: !4267)
!4278 = !DILocation(line: 101, column: 23, scope: !4259, inlinedAt: !4267)
!4279 = !DILocation(line: 101, column: 2, scope: !4259, inlinedAt: !4267)
!4280 = !DILocation(line: 102, column: 2, scope: !4259, inlinedAt: !4267)
!4281 = !DILocation(line: 71, column: 31, scope: !4242)
!4282 = !DILocation(line: 71, column: 35, scope: !4242)
!4283 = !{i32 -2147073484, i32 -2147073388}
!4284 = !DILocation(line: 71, column: 2, scope: !4242)
!4285 = distinct !DISubprogram(name: "tty_unthrottle", scope: !1, file: !1, line: 134, type: !3485, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !223)
!4286 = !DILocalVariable(name: "tty", arg: 1, scope: !4285, file: !1, line: 134, type: !2893)
!4287 = !DILocation(line: 134, column: 40, scope: !4285)
!4288 = !DILocation(line: 136, column: 14, scope: !4285)
!4289 = !DILocation(line: 136, column: 19, scope: !4285)
!4290 = !DILocation(line: 136, column: 2, scope: !4285)
!4291 = !DILocation(line: 137, column: 41, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4285, file: !1, line: 137, column: 6)
!4293 = !DILocation(line: 137, column: 46, scope: !4292)
!4294 = !DILocation(line: 137, column: 6, scope: !4292)
!4295 = !DILocation(line: 137, column: 53, scope: !4292)
!4296 = !DILocation(line: 138, column: 6, scope: !4292)
!4297 = !DILocation(line: 138, column: 11, scope: !4292)
!4298 = !DILocation(line: 138, column: 16, scope: !4292)
!4299 = !DILocation(line: 137, column: 6, scope: !4285)
!4300 = !DILocation(line: 139, column: 3, scope: !4292)
!4301 = !DILocation(line: 139, column: 8, scope: !4292)
!4302 = !DILocation(line: 139, column: 13, scope: !4292)
!4303 = !DILocation(line: 139, column: 24, scope: !4292)
!4304 = !DILocation(line: 140, column: 2, scope: !4285)
!4305 = !DILocation(line: 140, column: 7, scope: !4285)
!4306 = !DILocation(line: 140, column: 19, scope: !4285)
!4307 = !DILocation(line: 141, column: 12, scope: !4285)
!4308 = !DILocation(line: 141, column: 17, scope: !4285)
!4309 = !DILocation(line: 141, column: 2, scope: !4285)
!4310 = !DILocation(line: 142, column: 1, scope: !4285)
!4311 = distinct !DISubprogram(name: "test_and_clear_bit", scope: !4243, file: !4243, line: 81, type: !4244, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!4312 = !DILocalVariable(name: "nr", arg: 1, scope: !4313, file: !4250, line: 160, type: !97)
!4313 = distinct !DISubprogram(name: "arch_test_and_clear_bit", scope: !4250, file: !4250, line: 160, type: !4244, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!4314 = !DILocation(line: 160, column: 30, scope: !4313, inlinedAt: !4315)
!4315 = distinct !DILocation(line: 84, column: 9, scope: !4311)
!4316 = !DILocalVariable(name: "addr", arg: 2, scope: !4313, file: !4250, line: 160, type: !4246)
!4317 = !DILocation(line: 160, column: 58, scope: !4313, inlinedAt: !4315)
!4318 = !DILocalVariable(name: "c", scope: !4319, file: !4250, line: 162, type: !619)
!4319 = distinct !DILexicalBlock(scope: !4313, file: !4250, line: 162, column: 9)
!4320 = !DILocation(line: 162, column: 9, scope: !4319, inlinedAt: !4315)
!4321 = !DILocation(line: 99, column: 79, scope: !4259, inlinedAt: !4322)
!4322 = distinct !DILocation(line: 83, column: 2, scope: !4311)
!4323 = !DILocation(line: 99, column: 89, scope: !4259, inlinedAt: !4322)
!4324 = !DILocalVariable(name: "nr", arg: 1, scope: !4311, file: !4243, line: 81, type: !97)
!4325 = !DILocation(line: 81, column: 44, scope: !4311)
!4326 = !DILocalVariable(name: "addr", arg: 2, scope: !4311, file: !4243, line: 81, type: !4246)
!4327 = !DILocation(line: 81, column: 72, scope: !4311)
!4328 = !DILocation(line: 83, column: 31, scope: !4311)
!4329 = !DILocation(line: 83, column: 38, scope: !4311)
!4330 = !DILocation(line: 83, column: 36, scope: !4311)
!4331 = !DILocation(line: 101, column: 20, scope: !4259, inlinedAt: !4322)
!4332 = !DILocation(line: 101, column: 23, scope: !4259, inlinedAt: !4322)
!4333 = !DILocation(line: 101, column: 2, scope: !4259, inlinedAt: !4322)
!4334 = !DILocation(line: 102, column: 2, scope: !4259, inlinedAt: !4322)
!4335 = !DILocation(line: 84, column: 33, scope: !4311)
!4336 = !DILocation(line: 84, column: 37, scope: !4311)
!4337 = !{i32 -2147071572, i32 -2147071476}
!4338 = !DILocation(line: 84, column: 2, scope: !4311)
!4339 = distinct !DISubprogram(name: "tty_throttle_safe", scope: !1, file: !1, line: 157, type: !3499, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !223)
!4340 = !DILocalVariable(name: "tty", arg: 1, scope: !4339, file: !1, line: 157, type: !2893)
!4341 = !DILocation(line: 157, column: 42, scope: !4339)
!4342 = !DILocalVariable(name: "ret", scope: !4339, file: !1, line: 159, type: !128)
!4343 = !DILocation(line: 159, column: 6, scope: !4339)
!4344 = !DILocation(line: 161, column: 14, scope: !4339)
!4345 = !DILocation(line: 161, column: 19, scope: !4339)
!4346 = !DILocation(line: 161, column: 2, scope: !4339)
!4347 = !DILocation(line: 162, column: 21, scope: !4348)
!4348 = distinct !DILexicalBlock(scope: !4339, file: !1, line: 162, column: 6)
!4349 = !DILocation(line: 162, column: 7, scope: !4348)
!4350 = !DILocation(line: 162, column: 6, scope: !4339)
!4351 = !DILocation(line: 163, column: 7, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4353, file: !1, line: 163, column: 7)
!4353 = distinct !DILexicalBlock(scope: !4348, file: !1, line: 162, column: 27)
!4354 = !DILocation(line: 163, column: 12, scope: !4352)
!4355 = !DILocation(line: 163, column: 24, scope: !4352)
!4356 = !DILocation(line: 163, column: 7, scope: !4353)
!4357 = !DILocation(line: 164, column: 8, scope: !4352)
!4358 = !DILocation(line: 164, column: 4, scope: !4352)
!4359 = !DILocation(line: 166, column: 28, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4352, file: !1, line: 165, column: 8)
!4361 = !DILocation(line: 166, column: 33, scope: !4360)
!4362 = !DILocation(line: 166, column: 4, scope: !4360)
!4363 = !DILocation(line: 167, column: 8, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4360, file: !1, line: 167, column: 8)
!4365 = !DILocation(line: 167, column: 13, scope: !4364)
!4366 = !DILocation(line: 167, column: 18, scope: !4364)
!4367 = !DILocation(line: 167, column: 8, scope: !4360)
!4368 = !DILocation(line: 168, column: 5, scope: !4364)
!4369 = !DILocation(line: 168, column: 10, scope: !4364)
!4370 = !DILocation(line: 168, column: 15, scope: !4364)
!4371 = !DILocation(line: 168, column: 24, scope: !4364)
!4372 = !DILocation(line: 170, column: 2, scope: !4353)
!4373 = !DILocation(line: 171, column: 16, scope: !4339)
!4374 = !DILocation(line: 171, column: 21, scope: !4339)
!4375 = !DILocation(line: 171, column: 2, scope: !4339)
!4376 = !DILocation(line: 173, column: 9, scope: !4339)
!4377 = !DILocation(line: 173, column: 2, scope: !4339)
!4378 = distinct !DISubprogram(name: "tty_throttled", scope: !2895, file: !2895, line: 404, type: !4379, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!4379 = !DISubroutineType(types: !4380)
!4380 = !{!619, !2893}
!4381 = !DILocalVariable(name: "tty", arg: 1, scope: !4378, file: !2895, line: 404, type: !2893)
!4382 = !DILocation(line: 404, column: 53, scope: !4378)
!4383 = !DILocation(line: 406, column: 34, scope: !4378)
!4384 = !DILocation(line: 406, column: 39, scope: !4378)
!4385 = !DILocation(line: 406, column: 9, scope: !4378)
!4386 = !DILocation(line: 406, column: 2, scope: !4378)
!4387 = distinct !DISubprogram(name: "set_bit", scope: !4243, file: !4243, line: 26, type: !4388, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!4388 = !DISubroutineType(types: !4389)
!4389 = !{null, !97, !4246}
!4390 = !DILocalVariable(name: "nr", arg: 1, scope: !4391, file: !4250, line: 52, type: !97)
!4391 = distinct !DISubprogram(name: "arch_set_bit", scope: !4250, file: !4250, line: 52, type: !4388, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!4392 = !DILocation(line: 52, column: 19, scope: !4391, inlinedAt: !4393)
!4393 = distinct !DILocation(line: 29, column: 2, scope: !4387)
!4394 = !DILocalVariable(name: "addr", arg: 2, scope: !4391, file: !4250, line: 52, type: !4246)
!4395 = !DILocation(line: 52, column: 47, scope: !4391, inlinedAt: !4393)
!4396 = !DILocalVariable(name: "v", arg: 1, scope: !4397, file: !4260, line: 84, type: !4263)
!4397 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4260, file: !4260, line: 84, type: !4261, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!4398 = !DILocation(line: 84, column: 74, scope: !4397, inlinedAt: !4399)
!4399 = distinct !DILocation(line: 28, column: 2, scope: !4387)
!4400 = !DILocalVariable(name: "size", arg: 2, scope: !4397, file: !4260, line: 84, type: !753)
!4401 = !DILocation(line: 84, column: 84, scope: !4397, inlinedAt: !4399)
!4402 = !DILocalVariable(name: "nr", arg: 1, scope: !4387, file: !4243, line: 26, type: !97)
!4403 = !DILocation(line: 26, column: 33, scope: !4387)
!4404 = !DILocalVariable(name: "addr", arg: 2, scope: !4387, file: !4243, line: 26, type: !4246)
!4405 = !DILocation(line: 26, column: 61, scope: !4387)
!4406 = !DILocation(line: 28, column: 26, scope: !4387)
!4407 = !DILocation(line: 28, column: 33, scope: !4387)
!4408 = !DILocation(line: 28, column: 31, scope: !4387)
!4409 = !DILocation(line: 86, column: 20, scope: !4397, inlinedAt: !4399)
!4410 = !DILocation(line: 86, column: 23, scope: !4397, inlinedAt: !4399)
!4411 = !DILocation(line: 86, column: 2, scope: !4397, inlinedAt: !4399)
!4412 = !DILocation(line: 87, column: 2, scope: !4397, inlinedAt: !4399)
!4413 = !DILocation(line: 29, column: 15, scope: !4387)
!4414 = !DILocation(line: 29, column: 19, scope: !4387)
!4415 = !DILocation(line: 54, column: 27, scope: !4416, inlinedAt: !4393)
!4416 = distinct !DILexicalBlock(scope: !4391, file: !4250, line: 54, column: 6)
!4417 = !DILocation(line: 54, column: 6, scope: !4416, inlinedAt: !4393)
!4418 = !DILocation(line: 54, column: 6, scope: !4391, inlinedAt: !4393)
!4419 = !DILocation(line: 56, column: 6, scope: !4420, inlinedAt: !4393)
!4420 = distinct !DILexicalBlock(scope: !4416, file: !4250, line: 54, column: 32)
!4421 = !DILocation(line: 57, column: 12, scope: !4420, inlinedAt: !4393)
!4422 = !DILocation(line: 55, column: 3, scope: !4420, inlinedAt: !4393)
!4423 = !{i32 -2147077970}
!4424 = !DILocation(line: 59, column: 2, scope: !4420, inlinedAt: !4393)
!4425 = !DILocation(line: 61, column: 8, scope: !4426, inlinedAt: !4393)
!4426 = distinct !DILexicalBlock(scope: !4416, file: !4250, line: 59, column: 9)
!4427 = !DILocation(line: 61, column: 32, scope: !4426, inlinedAt: !4393)
!4428 = !DILocation(line: 60, column: 3, scope: !4426, inlinedAt: !4393)
!4429 = !{i32 -2147077838}
!4430 = !DILocation(line: 30, column: 1, scope: !4387)
!4431 = distinct !DISubprogram(name: "tty_unthrottle_safe", scope: !1, file: !1, line: 188, type: !3499, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !223)
!4432 = !DILocalVariable(name: "tty", arg: 1, scope: !4431, file: !1, line: 188, type: !2893)
!4433 = !DILocation(line: 188, column: 44, scope: !4431)
!4434 = !DILocalVariable(name: "ret", scope: !4431, file: !1, line: 190, type: !128)
!4435 = !DILocation(line: 190, column: 6, scope: !4431)
!4436 = !DILocation(line: 192, column: 14, scope: !4431)
!4437 = !DILocation(line: 192, column: 19, scope: !4431)
!4438 = !DILocation(line: 192, column: 2, scope: !4431)
!4439 = !DILocation(line: 193, column: 20, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4431, file: !1, line: 193, column: 6)
!4441 = !DILocation(line: 193, column: 6, scope: !4440)
!4442 = !DILocation(line: 193, column: 6, scope: !4431)
!4443 = !DILocation(line: 194, column: 7, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4445, file: !1, line: 194, column: 7)
!4445 = distinct !DILexicalBlock(scope: !4440, file: !1, line: 193, column: 26)
!4446 = !DILocation(line: 194, column: 12, scope: !4444)
!4447 = !DILocation(line: 194, column: 24, scope: !4444)
!4448 = !DILocation(line: 194, column: 7, scope: !4445)
!4449 = !DILocation(line: 195, column: 8, scope: !4444)
!4450 = !DILocation(line: 195, column: 4, scope: !4444)
!4451 = !DILocation(line: 197, column: 30, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4444, file: !1, line: 196, column: 8)
!4453 = !DILocation(line: 197, column: 35, scope: !4452)
!4454 = !DILocation(line: 197, column: 4, scope: !4452)
!4455 = !DILocation(line: 198, column: 8, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4452, file: !1, line: 198, column: 8)
!4457 = !DILocation(line: 198, column: 13, scope: !4456)
!4458 = !DILocation(line: 198, column: 18, scope: !4456)
!4459 = !DILocation(line: 198, column: 8, scope: !4452)
!4460 = !DILocation(line: 199, column: 5, scope: !4456)
!4461 = !DILocation(line: 199, column: 10, scope: !4456)
!4462 = !DILocation(line: 199, column: 15, scope: !4456)
!4463 = !DILocation(line: 199, column: 26, scope: !4456)
!4464 = !DILocation(line: 201, column: 2, scope: !4445)
!4465 = !DILocation(line: 202, column: 16, scope: !4431)
!4466 = !DILocation(line: 202, column: 21, scope: !4431)
!4467 = !DILocation(line: 202, column: 2, scope: !4431)
!4468 = !DILocation(line: 204, column: 9, scope: !4431)
!4469 = !DILocation(line: 204, column: 2, scope: !4431)
!4470 = distinct !DISubprogram(name: "clear_bit", scope: !4243, file: !4243, line: 39, type: !4388, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!4471 = !DILocalVariable(name: "nr", arg: 1, scope: !4472, file: !4250, line: 72, type: !97)
!4472 = distinct !DISubprogram(name: "arch_clear_bit", scope: !4250, file: !4250, line: 72, type: !4388, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!4473 = !DILocation(line: 72, column: 21, scope: !4472, inlinedAt: !4474)
!4474 = distinct !DILocation(line: 42, column: 2, scope: !4470)
!4475 = !DILocalVariable(name: "addr", arg: 2, scope: !4472, file: !4250, line: 72, type: !4246)
!4476 = !DILocation(line: 72, column: 49, scope: !4472, inlinedAt: !4474)
!4477 = !DILocation(line: 84, column: 74, scope: !4397, inlinedAt: !4478)
!4478 = distinct !DILocation(line: 41, column: 2, scope: !4470)
!4479 = !DILocation(line: 84, column: 84, scope: !4397, inlinedAt: !4478)
!4480 = !DILocalVariable(name: "nr", arg: 1, scope: !4470, file: !4243, line: 39, type: !97)
!4481 = !DILocation(line: 39, column: 35, scope: !4470)
!4482 = !DILocalVariable(name: "addr", arg: 2, scope: !4470, file: !4243, line: 39, type: !4246)
!4483 = !DILocation(line: 39, column: 63, scope: !4470)
!4484 = !DILocation(line: 41, column: 26, scope: !4470)
!4485 = !DILocation(line: 41, column: 33, scope: !4470)
!4486 = !DILocation(line: 41, column: 31, scope: !4470)
!4487 = !DILocation(line: 86, column: 20, scope: !4397, inlinedAt: !4478)
!4488 = !DILocation(line: 86, column: 23, scope: !4397, inlinedAt: !4478)
!4489 = !DILocation(line: 86, column: 2, scope: !4397, inlinedAt: !4478)
!4490 = !DILocation(line: 87, column: 2, scope: !4397, inlinedAt: !4478)
!4491 = !DILocation(line: 42, column: 17, scope: !4470)
!4492 = !DILocation(line: 42, column: 21, scope: !4470)
!4493 = !DILocation(line: 74, column: 27, scope: !4494, inlinedAt: !4474)
!4494 = distinct !DILexicalBlock(scope: !4472, file: !4250, line: 74, column: 6)
!4495 = !DILocation(line: 74, column: 6, scope: !4494, inlinedAt: !4474)
!4496 = !DILocation(line: 74, column: 6, scope: !4472, inlinedAt: !4474)
!4497 = !DILocation(line: 76, column: 6, scope: !4498, inlinedAt: !4474)
!4498 = distinct !DILexicalBlock(scope: !4494, file: !4250, line: 74, column: 32)
!4499 = !DILocation(line: 77, column: 13, scope: !4498, inlinedAt: !4474)
!4500 = !DILocation(line: 77, column: 12, scope: !4498, inlinedAt: !4474)
!4501 = !DILocation(line: 75, column: 3, scope: !4498, inlinedAt: !4474)
!4502 = !{i32 -2147077016}
!4503 = !DILocation(line: 78, column: 2, scope: !4498, inlinedAt: !4474)
!4504 = !DILocation(line: 80, column: 8, scope: !4505, inlinedAt: !4474)
!4505 = distinct !DILexicalBlock(scope: !4494, file: !4250, line: 78, column: 9)
!4506 = !DILocation(line: 80, column: 32, scope: !4505, inlinedAt: !4474)
!4507 = !DILocation(line: 79, column: 3, scope: !4505, inlinedAt: !4474)
!4508 = !{i32 -2147076884}
!4509 = !DILocation(line: 43, column: 1, scope: !4470)
!4510 = distinct !DISubprogram(name: "tty_wait_until_sent", scope: !1, file: !1, line: 218, type: !4511, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !223)
!4511 = !DISubroutineType(types: !4512)
!4512 = !{null, !2893, !97}
!4513 = !DILocalVariable(name: "tty", arg: 1, scope: !4510, file: !1, line: 218, type: !2893)
!4514 = !DILocation(line: 218, column: 45, scope: !4510)
!4515 = !DILocalVariable(name: "timeout", arg: 2, scope: !4510, file: !1, line: 218, type: !97)
!4516 = !DILocation(line: 218, column: 55, scope: !4510)
!4517 = !DILocation(line: 220, column: 2, scope: !4510)
!4518 = !DILocation(line: 220, column: 2, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4510, file: !1, line: 220, column: 2)
!4520 = !DILocation(line: 222, column: 7, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4510, file: !1, line: 222, column: 6)
!4522 = !DILocation(line: 222, column: 6, scope: !4510)
!4523 = !DILocation(line: 223, column: 11, scope: !4521)
!4524 = !DILocation(line: 223, column: 3, scope: !4521)
!4525 = !DILocalVariable(name: "__ret", scope: !4526, file: !1, line: 225, type: !97)
!4526 = distinct !DILexicalBlock(scope: !4510, file: !1, line: 225, column: 12)
!4527 = !DILocation(line: 225, column: 12, scope: !4526)
!4528 = !DILocation(line: 225, column: 12, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4526, file: !1, line: 225, column: 12)
!4530 = !DILocation(line: 225, column: 12, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4529, file: !1, line: 225, column: 12)
!4532 = !DILocalVariable(name: "__cond", scope: !4533, file: !1, line: 225, type: !619)
!4533 = distinct !DILexicalBlock(scope: !4534, file: !1, line: 225, column: 12)
!4534 = distinct !DILexicalBlock(scope: !4526, file: !1, line: 225, column: 12)
!4535 = !DILocation(line: 225, column: 12, scope: !4533)
!4536 = !DILocation(line: 225, column: 12, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4533, file: !1, line: 225, column: 12)
!4538 = !DILocation(line: 225, column: 12, scope: !4534)
!4539 = !DILocalVariable(name: "__wq_entry", scope: !4540, file: !1, line: 225, type: !4541)
!4540 = distinct !DILexicalBlock(scope: !4534, file: !1, line: 225, column: 12)
!4541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !985, line: 29, size: 320, elements: !4542)
!4542 = !{!4543, !4544, !4545, !4551}
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4541, file: !985, line: 30, baseType: !5, size: 32)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4541, file: !985, line: 31, baseType: !98, size: 64, offset: 64)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4541, file: !985, line: 32, baseType: !4546, size: 64, offset: 128)
!4546 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !985, line: 16, baseType: !4547)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{!128, !4550, !5, !128, !98}
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4541, file: !985, line: 33, baseType: !207, size: 128, offset: 192)
!4552 = !DILocation(line: 225, column: 12, scope: !4540)
!4553 = !DILocalVariable(name: "__ret", scope: !4540, file: !1, line: 225, type: !97)
!4554 = !DILocalVariable(name: "__int", scope: !4555, file: !1, line: 225, type: !97)
!4555 = distinct !DILexicalBlock(scope: !4556, file: !1, line: 225, column: 12)
!4556 = distinct !DILexicalBlock(scope: !4557, file: !1, line: 225, column: 12)
!4557 = distinct !DILexicalBlock(scope: !4540, file: !1, line: 225, column: 12)
!4558 = !DILocation(line: 225, column: 12, scope: !4555)
!4559 = !DILocalVariable(name: "__cond", scope: !4560, file: !1, line: 225, type: !619)
!4560 = distinct !DILexicalBlock(scope: !4561, file: !1, line: 225, column: 12)
!4561 = distinct !DILexicalBlock(scope: !4555, file: !1, line: 225, column: 12)
!4562 = !DILocation(line: 225, column: 12, scope: !4560)
!4563 = !DILocation(line: 225, column: 12, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4560, file: !1, line: 225, column: 12)
!4565 = !DILocation(line: 225, column: 12, scope: !4561)
!4566 = !DILocation(line: 225, column: 12, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4555, file: !1, line: 225, column: 12)
!4568 = !DILocation(line: 225, column: 12, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4567, file: !1, line: 225, column: 12)
!4570 = !DILocation(line: 225, column: 12, scope: !4556)
!4571 = distinct !{!4571, !4572, !4572}
!4572 = !DILocation(line: 225, column: 12, scope: !4557)
!4573 = !DILabel(scope: !4540, name: "__out", file: !1, line: 225)
!4574 = !DILocation(line: 225, column: 10, scope: !4510)
!4575 = !DILocation(line: 227, column: 6, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4510, file: !1, line: 227, column: 6)
!4577 = !DILocation(line: 227, column: 14, scope: !4576)
!4578 = !DILocation(line: 227, column: 6, scope: !4510)
!4579 = !DILocation(line: 228, column: 3, scope: !4576)
!4580 = !DILocation(line: 230, column: 6, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4510, file: !1, line: 230, column: 6)
!4582 = !DILocation(line: 230, column: 14, scope: !4581)
!4583 = !DILocation(line: 230, column: 6, scope: !4510)
!4584 = !DILocation(line: 231, column: 11, scope: !4581)
!4585 = !DILocation(line: 231, column: 3, scope: !4581)
!4586 = !DILocation(line: 233, column: 6, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !4510, file: !1, line: 233, column: 6)
!4588 = !DILocation(line: 233, column: 11, scope: !4587)
!4589 = !DILocation(line: 233, column: 16, scope: !4587)
!4590 = !DILocation(line: 233, column: 6, scope: !4510)
!4591 = !DILocation(line: 234, column: 3, scope: !4587)
!4592 = !DILocation(line: 234, column: 8, scope: !4587)
!4593 = !DILocation(line: 234, column: 13, scope: !4587)
!4594 = !DILocation(line: 234, column: 29, scope: !4587)
!4595 = !DILocation(line: 234, column: 34, scope: !4587)
!4596 = !DILocation(line: 235, column: 1, scope: !4510)
!4597 = distinct !DISubprogram(name: "tty_termios_copy_hw", scope: !1, file: !1, line: 273, type: !4598, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !223)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{null, !3456, !3456}
!4600 = !DILocalVariable(name: "new", arg: 1, scope: !4597, file: !1, line: 273, type: !3456)
!4601 = !DILocation(line: 273, column: 43, scope: !4597)
!4602 = !DILocalVariable(name: "old", arg: 2, scope: !4597, file: !1, line: 273, type: !3456)
!4603 = !DILocation(line: 273, column: 65, scope: !4597)
!4604 = !DILocation(line: 277, column: 2, scope: !4597)
!4605 = !DILocation(line: 277, column: 7, scope: !4597)
!4606 = !DILocation(line: 277, column: 15, scope: !4597)
!4607 = !DILocation(line: 278, column: 18, scope: !4597)
!4608 = !DILocation(line: 278, column: 23, scope: !4597)
!4609 = !DILocation(line: 278, column: 31, scope: !4597)
!4610 = !DILocation(line: 278, column: 2, scope: !4597)
!4611 = !DILocation(line: 278, column: 7, scope: !4597)
!4612 = !DILocation(line: 278, column: 15, scope: !4597)
!4613 = !DILocation(line: 279, column: 18, scope: !4597)
!4614 = !DILocation(line: 279, column: 23, scope: !4597)
!4615 = !DILocation(line: 279, column: 2, scope: !4597)
!4616 = !DILocation(line: 279, column: 7, scope: !4597)
!4617 = !DILocation(line: 279, column: 16, scope: !4597)
!4618 = !DILocation(line: 280, column: 18, scope: !4597)
!4619 = !DILocation(line: 280, column: 23, scope: !4597)
!4620 = !DILocation(line: 280, column: 2, scope: !4597)
!4621 = !DILocation(line: 280, column: 7, scope: !4597)
!4622 = !DILocation(line: 280, column: 16, scope: !4597)
!4623 = !DILocation(line: 281, column: 1, scope: !4597)
!4624 = distinct !DISubprogram(name: "tty_termios_hw_change", scope: !1, file: !1, line: 293, type: !4625, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !223)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{!128, !4627, !4627}
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3351)
!4629 = !DILocalVariable(name: "a", arg: 1, scope: !4624, file: !1, line: 293, type: !4627)
!4630 = !DILocation(line: 293, column: 50, scope: !4624)
!4631 = !DILocalVariable(name: "b", arg: 2, scope: !4624, file: !1, line: 293, type: !4627)
!4632 = !DILocation(line: 293, column: 76, scope: !4624)
!4633 = !DILocation(line: 295, column: 6, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4624, file: !1, line: 295, column: 6)
!4635 = !DILocation(line: 295, column: 9, scope: !4634)
!4636 = !DILocation(line: 295, column: 21, scope: !4634)
!4637 = !DILocation(line: 295, column: 24, scope: !4634)
!4638 = !DILocation(line: 295, column: 18, scope: !4634)
!4639 = !DILocation(line: 295, column: 33, scope: !4634)
!4640 = !DILocation(line: 295, column: 36, scope: !4634)
!4641 = !DILocation(line: 295, column: 39, scope: !4634)
!4642 = !DILocation(line: 295, column: 51, scope: !4634)
!4643 = !DILocation(line: 295, column: 54, scope: !4634)
!4644 = !DILocation(line: 295, column: 48, scope: !4634)
!4645 = !DILocation(line: 295, column: 6, scope: !4624)
!4646 = !DILocation(line: 296, column: 3, scope: !4634)
!4647 = !DILocation(line: 297, column: 7, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4624, file: !1, line: 297, column: 6)
!4649 = !DILocation(line: 297, column: 10, scope: !4648)
!4650 = !DILocation(line: 297, column: 20, scope: !4648)
!4651 = !DILocation(line: 297, column: 23, scope: !4648)
!4652 = !DILocation(line: 297, column: 18, scope: !4648)
!4653 = !DILocation(line: 297, column: 32, scope: !4648)
!4654 = !DILocation(line: 297, column: 6, scope: !4624)
!4655 = !DILocation(line: 298, column: 3, scope: !4648)
!4656 = !DILocation(line: 299, column: 2, scope: !4624)
!4657 = !DILocation(line: 300, column: 1, scope: !4624)
!4658 = distinct !DISubprogram(name: "tty_set_termios", scope: !1, file: !1, line: 314, type: !4659, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !223)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{!128, !2893, !3456}
!4661 = !DILocalVariable(name: "tty", arg: 1, scope: !4658, file: !1, line: 314, type: !2893)
!4662 = !DILocation(line: 314, column: 40, scope: !4658)
!4663 = !DILocalVariable(name: "new_termios", arg: 2, scope: !4658, file: !1, line: 314, type: !3456)
!4664 = !DILocation(line: 314, column: 62, scope: !4658)
!4665 = !DILocalVariable(name: "old_termios", scope: !4658, file: !1, line: 316, type: !3351)
!4666 = !DILocation(line: 316, column: 18, scope: !4658)
!4667 = !DILocalVariable(name: "ld", scope: !4658, file: !1, line: 317, type: !3595)
!4668 = !DILocation(line: 317, column: 20, scope: !4658)
!4669 = !DILocalVariable(name: "__ret_warn_on", scope: !4670, file: !1, line: 319, type: !128)
!4670 = distinct !DILexicalBlock(scope: !4658, file: !1, line: 319, column: 2)
!4671 = !DILocation(line: 319, column: 2, scope: !4670)
!4672 = !DILocation(line: 0, scope: !4670)
!4673 = !DILocation(line: 319, column: 2, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4670, file: !1, line: 319, column: 2)
!4675 = !DILocation(line: 319, column: 2, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4674, file: !1, line: 319, column: 2)
!4677 = !DILocation(line: 319, column: 2, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4676, file: !1, line: 319, column: 2)
!4679 = !DILocation(line: 319, column: 2, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4676, file: !1, line: 319, column: 2)
!4681 = !{i32 -2141984150, i32 -2141984121, i32 -2141984075, i32 -2141984017, i32 -2141983963, i32 -2141983909, i32 -2141983854, i32 -2141983823}
!4682 = !DILocation(line: 319, column: 2, scope: !4683)
!4683 = distinct !DILexicalBlock(scope: !4676, file: !1, line: 319, column: 2)
!4684 = !{i32 -2141983418, i32 -2141983411, i32 -2141983359, i32 -2141983328, i32 -2141983298}
!4685 = !DILocation(line: 319, column: 2, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4676, file: !1, line: 319, column: 2)
!4687 = !DILocation(line: 328, column: 14, scope: !4658)
!4688 = !DILocation(line: 328, column: 19, scope: !4658)
!4689 = !DILocation(line: 328, column: 2, scope: !4658)
!4690 = !DILocation(line: 329, column: 16, scope: !4658)
!4691 = !DILocation(line: 329, column: 21, scope: !4658)
!4692 = !DILocation(line: 330, column: 2, scope: !4658)
!4693 = !DILocation(line: 330, column: 7, scope: !4658)
!4694 = !DILocation(line: 330, column: 18, scope: !4658)
!4695 = !DILocation(line: 330, column: 17, scope: !4658)
!4696 = !DILocation(line: 331, column: 23, scope: !4658)
!4697 = !DILocation(line: 331, column: 2, scope: !4658)
!4698 = !DILocation(line: 333, column: 6, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4658, file: !1, line: 333, column: 6)
!4700 = !DILocation(line: 333, column: 11, scope: !4699)
!4701 = !DILocation(line: 333, column: 16, scope: !4699)
!4702 = !DILocation(line: 333, column: 6, scope: !4658)
!4703 = !DILocation(line: 334, column: 3, scope: !4699)
!4704 = !DILocation(line: 334, column: 8, scope: !4699)
!4705 = !DILocation(line: 334, column: 13, scope: !4699)
!4706 = !DILocation(line: 334, column: 25, scope: !4699)
!4707 = !DILocation(line: 336, column: 24, scope: !4699)
!4708 = !DILocation(line: 336, column: 29, scope: !4699)
!4709 = !DILocation(line: 336, column: 3, scope: !4699)
!4710 = !DILocation(line: 338, column: 21, scope: !4658)
!4711 = !DILocation(line: 338, column: 7, scope: !4658)
!4712 = !DILocation(line: 338, column: 5, scope: !4658)
!4713 = !DILocation(line: 339, column: 6, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4658, file: !1, line: 339, column: 6)
!4715 = !DILocation(line: 339, column: 9, scope: !4714)
!4716 = !DILocation(line: 339, column: 6, scope: !4658)
!4717 = !DILocation(line: 340, column: 7, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4719, file: !1, line: 340, column: 7)
!4719 = distinct !DILexicalBlock(scope: !4714, file: !1, line: 339, column: 18)
!4720 = !DILocation(line: 340, column: 11, scope: !4718)
!4721 = !DILocation(line: 340, column: 16, scope: !4718)
!4722 = !DILocation(line: 340, column: 7, scope: !4719)
!4723 = !DILocation(line: 341, column: 4, scope: !4718)
!4724 = !DILocation(line: 341, column: 8, scope: !4718)
!4725 = !DILocation(line: 341, column: 13, scope: !4718)
!4726 = !DILocation(line: 341, column: 25, scope: !4718)
!4727 = !DILocation(line: 342, column: 19, scope: !4719)
!4728 = !DILocation(line: 342, column: 3, scope: !4719)
!4729 = !DILocation(line: 343, column: 2, scope: !4719)
!4730 = !DILocation(line: 344, column: 12, scope: !4658)
!4731 = !DILocation(line: 344, column: 17, scope: !4658)
!4732 = !DILocation(line: 344, column: 2, scope: !4658)
!4733 = !DILocation(line: 345, column: 2, scope: !4658)
!4734 = distinct !DISubprogram(name: "unset_locked_termios", scope: !1, file: !1, line: 243, type: !3512, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!4735 = !DILocalVariable(name: "tty", arg: 1, scope: !4734, file: !1, line: 243, type: !2893)
!4736 = !DILocation(line: 243, column: 53, scope: !4734)
!4737 = !DILocalVariable(name: "old", arg: 2, scope: !4734, file: !1, line: 243, type: !3456)
!4738 = !DILocation(line: 243, column: 75, scope: !4734)
!4739 = !DILocalVariable(name: "termios", scope: !4734, file: !1, line: 245, type: !3456)
!4740 = !DILocation(line: 245, column: 19, scope: !4734)
!4741 = !DILocation(line: 245, column: 30, scope: !4734)
!4742 = !DILocation(line: 245, column: 35, scope: !4734)
!4743 = !DILocalVariable(name: "locked", scope: !4734, file: !1, line: 246, type: !3456)
!4744 = !DILocation(line: 246, column: 19, scope: !4734)
!4745 = !DILocation(line: 246, column: 30, scope: !4734)
!4746 = !DILocation(line: 246, column: 35, scope: !4734)
!4747 = !DILocalVariable(name: "i", scope: !4734, file: !1, line: 247, type: !128)
!4748 = !DILocation(line: 247, column: 6, scope: !4734)
!4749 = !DILocation(line: 251, column: 2, scope: !4734)
!4750 = !DILocation(line: 252, column: 2, scope: !4734)
!4751 = !DILocation(line: 253, column: 2, scope: !4734)
!4752 = !DILocation(line: 254, column: 2, scope: !4734)
!4753 = !DILocation(line: 255, column: 20, scope: !4734)
!4754 = !DILocation(line: 255, column: 28, scope: !4734)
!4755 = !DILocation(line: 255, column: 37, scope: !4734)
!4756 = !DILocation(line: 255, column: 42, scope: !4734)
!4757 = !DILocation(line: 255, column: 51, scope: !4734)
!4758 = !DILocation(line: 255, column: 60, scope: !4734)
!4759 = !DILocation(line: 255, column: 2, scope: !4734)
!4760 = !DILocation(line: 255, column: 11, scope: !4734)
!4761 = !DILocation(line: 255, column: 18, scope: !4734)
!4762 = !DILocation(line: 256, column: 9, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4734, file: !1, line: 256, column: 2)
!4764 = !DILocation(line: 256, column: 7, scope: !4763)
!4765 = !DILocation(line: 256, column: 14, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4763, file: !1, line: 256, column: 2)
!4767 = !DILocation(line: 256, column: 16, scope: !4766)
!4768 = !DILocation(line: 256, column: 2, scope: !4763)
!4769 = !DILocation(line: 257, column: 22, scope: !4766)
!4770 = !DILocation(line: 257, column: 30, scope: !4766)
!4771 = !DILocation(line: 257, column: 35, scope: !4766)
!4772 = !DILocation(line: 258, column: 4, scope: !4766)
!4773 = !DILocation(line: 258, column: 9, scope: !4766)
!4774 = !DILocation(line: 258, column: 14, scope: !4766)
!4775 = !DILocation(line: 258, column: 19, scope: !4766)
!4776 = !DILocation(line: 258, column: 28, scope: !4766)
!4777 = !DILocation(line: 258, column: 33, scope: !4766)
!4778 = !DILocation(line: 257, column: 3, scope: !4766)
!4779 = !DILocation(line: 257, column: 12, scope: !4766)
!4780 = !DILocation(line: 257, column: 17, scope: !4766)
!4781 = !DILocation(line: 257, column: 20, scope: !4766)
!4782 = !DILocation(line: 256, column: 25, scope: !4766)
!4783 = !DILocation(line: 256, column: 2, scope: !4766)
!4784 = distinct !{!4784, !4768, !4785}
!4785 = !DILocation(line: 258, column: 34, scope: !4763)
!4786 = !DILocation(line: 260, column: 1, scope: !4734)
!4787 = distinct !DISubprogram(name: "tty_mode_ioctl", scope: !1, file: !1, line: 708, type: !3619, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !223)
!4788 = !DILocalVariable(name: "addr", arg: 1, scope: !4789, file: !4790, line: 138, type: !2088)
!4789 = distinct !DISubprogram(name: "check_copy_size", scope: !4790, file: !4790, line: 138, type: !4791, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!4790 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!4791 = !DISubroutineType(types: !4792)
!4792 = !{!619, !2088, !753, !619}
!4793 = !DILocation(line: 138, column: 29, scope: !4789, inlinedAt: !4794)
!4794 = distinct !DILocation(line: 199, column: 6, scope: !4795, inlinedAt: !4800)
!4795 = distinct !DILexicalBlock(scope: !4797, file: !4796, line: 199, column: 6)
!4796 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/lizy2001/genbc/linux")
!4797 = distinct !DISubprogram(name: "copy_to_user", scope: !4796, file: !4796, line: 197, type: !4798, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!4798 = !DISubroutineType(types: !4799)
!4799 = !{!131, !98, !2088, !131}
!4800 = distinct !DILocation(line: 825, column: 7, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4802, file: !1, line: 825, column: 7)
!4802 = distinct !DILexicalBlock(scope: !4803, file: !1, line: 818, column: 15)
!4803 = distinct !DILexicalBlock(scope: !4787, file: !1, line: 724, column: 15)
!4804 = !DILocalVariable(name: "bytes", arg: 2, scope: !4789, file: !4790, line: 138, type: !753)
!4805 = !DILocation(line: 138, column: 42, scope: !4789, inlinedAt: !4794)
!4806 = !DILocalVariable(name: "is_source", arg: 3, scope: !4789, file: !4790, line: 138, type: !619)
!4807 = !DILocation(line: 138, column: 54, scope: !4789, inlinedAt: !4794)
!4808 = !DILocalVariable(name: "sz", scope: !4789, file: !4790, line: 140, type: !128)
!4809 = !DILocation(line: 140, column: 6, scope: !4789, inlinedAt: !4794)
!4810 = !DILocalVariable(name: "__ret_warn_on", scope: !4811, file: !4790, line: 150, type: !128)
!4811 = distinct !DILexicalBlock(scope: !4812, file: !4790, line: 150, column: 6)
!4812 = distinct !DILexicalBlock(scope: !4789, file: !4790, line: 150, column: 6)
!4813 = !DILocation(line: 150, column: 6, scope: !4811, inlinedAt: !4794)
!4814 = !DILocalVariable(name: "to", arg: 1, scope: !4797, file: !4796, line: 197, type: !98)
!4815 = !DILocation(line: 197, column: 27, scope: !4797, inlinedAt: !4800)
!4816 = !DILocalVariable(name: "from", arg: 2, scope: !4797, file: !4796, line: 197, type: !2088)
!4817 = !DILocation(line: 197, column: 43, scope: !4797, inlinedAt: !4800)
!4818 = !DILocalVariable(name: "n", arg: 3, scope: !4797, file: !4796, line: 197, type: !131)
!4819 = !DILocation(line: 197, column: 63, scope: !4797, inlinedAt: !4800)
!4820 = !DILocalVariable(name: "tty", arg: 1, scope: !4787, file: !1, line: 708, type: !2893)
!4821 = !DILocation(line: 708, column: 39, scope: !4787)
!4822 = !DILocalVariable(name: "file", arg: 2, scope: !4787, file: !1, line: 708, type: !832)
!4823 = !DILocation(line: 708, column: 57, scope: !4787)
!4824 = !DILocalVariable(name: "cmd", arg: 3, scope: !4787, file: !1, line: 709, type: !5)
!4825 = !DILocation(line: 709, column: 17, scope: !4787)
!4826 = !DILocalVariable(name: "arg", arg: 4, scope: !4787, file: !1, line: 709, type: !131)
!4827 = !DILocation(line: 709, column: 36, scope: !4787)
!4828 = !DILocalVariable(name: "real_tty", scope: !4787, file: !1, line: 711, type: !2893)
!4829 = !DILocation(line: 711, column: 21, scope: !4787)
!4830 = !DILocalVariable(name: "p", scope: !4787, file: !1, line: 712, type: !98)
!4831 = !DILocation(line: 712, column: 15, scope: !4787)
!4832 = !DILocation(line: 712, column: 34, scope: !4787)
!4833 = !DILocation(line: 712, column: 19, scope: !4787)
!4834 = !DILocalVariable(name: "ret", scope: !4787, file: !1, line: 713, type: !128)
!4835 = !DILocation(line: 713, column: 6, scope: !4787)
!4836 = !DILocalVariable(name: "kterm", scope: !4787, file: !1, line: 714, type: !3351)
!4837 = !DILocation(line: 714, column: 18, scope: !4787)
!4838 = !DILocation(line: 716, column: 2, scope: !4787)
!4839 = !DILocation(line: 716, column: 2, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4841, file: !1, line: 716, column: 2)
!4841 = distinct !DILexicalBlock(scope: !4787, file: !1, line: 716, column: 2)
!4842 = !DILocation(line: 716, column: 2, scope: !4841)
!4843 = !DILocation(line: 716, column: 2, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4840, file: !1, line: 716, column: 2)
!4845 = !DILocation(line: 716, column: 2, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4844, file: !1, line: 716, column: 2)
!4847 = !DILocation(line: 716, column: 2, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4844, file: !1, line: 716, column: 2)
!4849 = !{i32 -2141982596, i32 -2141982567, i32 -2141982521, i32 -2141982463, i32 -2141982409, i32 -2141982355, i32 -2141982300, i32 -2141982269}
!4850 = !DILocation(line: 716, column: 2, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4852, file: !1, line: 716, column: 2)
!4852 = distinct !DILexicalBlock(scope: !4844, file: !1, line: 716, column: 2)
!4853 = !{i32 -2141981823, i32 -2141981816, i32 -2141981762, i32 -2141981731, i32 -2141981701}
!4854 = !DILocation(line: 716, column: 2, scope: !4852)
!4855 = !DILocation(line: 718, column: 6, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4787, file: !1, line: 718, column: 6)
!4857 = !DILocation(line: 718, column: 11, scope: !4856)
!4858 = !DILocation(line: 718, column: 19, scope: !4856)
!4859 = !DILocation(line: 718, column: 24, scope: !4856)
!4860 = !DILocation(line: 718, column: 47, scope: !4856)
!4861 = !DILocation(line: 719, column: 6, scope: !4856)
!4862 = !DILocation(line: 719, column: 11, scope: !4856)
!4863 = !DILocation(line: 719, column: 19, scope: !4856)
!4864 = !DILocation(line: 719, column: 27, scope: !4856)
!4865 = !DILocation(line: 718, column: 6, scope: !4787)
!4866 = !DILocation(line: 720, column: 14, scope: !4856)
!4867 = !DILocation(line: 720, column: 19, scope: !4856)
!4868 = !DILocation(line: 720, column: 12, scope: !4856)
!4869 = !DILocation(line: 720, column: 3, scope: !4856)
!4870 = !DILocation(line: 722, column: 14, scope: !4856)
!4871 = !DILocation(line: 722, column: 12, scope: !4856)
!4872 = !DILocation(line: 724, column: 10, scope: !4787)
!4873 = !DILocation(line: 724, column: 2, scope: !4787)
!4874 = !DILocation(line: 745, column: 22, scope: !4803)
!4875 = !DILocation(line: 745, column: 32, scope: !4803)
!4876 = !DILocation(line: 745, column: 10, scope: !4803)
!4877 = !DILocation(line: 745, column: 3, scope: !4803)
!4878 = !DILocation(line: 747, column: 22, scope: !4803)
!4879 = !DILocation(line: 747, column: 32, scope: !4803)
!4880 = !DILocation(line: 747, column: 10, scope: !4803)
!4881 = !DILocation(line: 747, column: 3, scope: !4803)
!4882 = !DILocation(line: 749, column: 22, scope: !4803)
!4883 = !DILocation(line: 749, column: 32, scope: !4803)
!4884 = !DILocation(line: 749, column: 10, scope: !4803)
!4885 = !DILocation(line: 749, column: 3, scope: !4803)
!4886 = !DILocation(line: 758, column: 16, scope: !4803)
!4887 = !DILocation(line: 758, column: 3, scope: !4803)
!4888 = !DILocation(line: 759, column: 65, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4803, file: !1, line: 759, column: 7)
!4890 = !DILocation(line: 759, column: 40, scope: !4889)
!4891 = !DILocation(line: 759, column: 7, scope: !4889)
!4892 = !DILocation(line: 759, column: 7, scope: !4803)
!4893 = !DILocation(line: 760, column: 8, scope: !4889)
!4894 = !DILocation(line: 760, column: 4, scope: !4889)
!4895 = !DILocation(line: 761, column: 10, scope: !4803)
!4896 = !DILocation(line: 761, column: 3, scope: !4803)
!4897 = !DILocation(line: 763, column: 16, scope: !4803)
!4898 = !DILocation(line: 763, column: 3, scope: !4803)
!4899 = !DILocation(line: 764, column: 64, scope: !4900)
!4900 = distinct !DILexicalBlock(scope: !4803, file: !1, line: 764, column: 7)
!4901 = !DILocation(line: 764, column: 38, scope: !4900)
!4902 = !DILocation(line: 764, column: 7, scope: !4900)
!4903 = !DILocation(line: 764, column: 7, scope: !4803)
!4904 = !DILocation(line: 765, column: 8, scope: !4900)
!4905 = !DILocation(line: 765, column: 4, scope: !4900)
!4906 = !DILocation(line: 766, column: 10, scope: !4803)
!4907 = !DILocation(line: 766, column: 3, scope: !4803)
!4908 = !DILocation(line: 768, column: 22, scope: !4803)
!4909 = !DILocation(line: 768, column: 32, scope: !4803)
!4910 = !DILocation(line: 768, column: 10, scope: !4803)
!4911 = !DILocation(line: 768, column: 3, scope: !4803)
!4912 = !DILocation(line: 770, column: 22, scope: !4803)
!4913 = !DILocation(line: 770, column: 32, scope: !4803)
!4914 = !DILocation(line: 770, column: 10, scope: !4803)
!4915 = !DILocation(line: 770, column: 3, scope: !4803)
!4916 = !DILocation(line: 772, column: 22, scope: !4803)
!4917 = !DILocation(line: 772, column: 32, scope: !4803)
!4918 = !DILocation(line: 772, column: 10, scope: !4803)
!4919 = !DILocation(line: 772, column: 3, scope: !4803)
!4920 = !DILocation(line: 775, column: 21, scope: !4803)
!4921 = !DILocation(line: 775, column: 31, scope: !4803)
!4922 = !DILocation(line: 775, column: 10, scope: !4803)
!4923 = !DILocation(line: 775, column: 3, scope: !4803)
!4924 = !DILocation(line: 777, column: 22, scope: !4803)
!4925 = !DILocation(line: 777, column: 32, scope: !4803)
!4926 = !DILocation(line: 777, column: 10, scope: !4803)
!4927 = !DILocation(line: 777, column: 3, scope: !4803)
!4928 = !DILocation(line: 779, column: 22, scope: !4803)
!4929 = !DILocation(line: 779, column: 32, scope: !4803)
!4930 = !DILocation(line: 779, column: 10, scope: !4803)
!4931 = !DILocation(line: 779, column: 3, scope: !4803)
!4932 = !DILocation(line: 781, column: 22, scope: !4803)
!4933 = !DILocation(line: 781, column: 32, scope: !4803)
!4934 = !DILocation(line: 781, column: 10, scope: !4803)
!4935 = !DILocation(line: 781, column: 3, scope: !4803)
!4936 = !DILocation(line: 801, column: 23, scope: !4803)
!4937 = !DILocation(line: 801, column: 3, scope: !4803)
!4938 = !DILocation(line: 802, column: 65, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4803, file: !1, line: 802, column: 7)
!4940 = !DILocation(line: 802, column: 40, scope: !4939)
!4941 = !DILocation(line: 802, column: 7, scope: !4939)
!4942 = !DILocation(line: 802, column: 7, scope: !4803)
!4943 = !DILocation(line: 803, column: 8, scope: !4939)
!4944 = !DILocation(line: 803, column: 4, scope: !4939)
!4945 = !DILocation(line: 804, column: 10, scope: !4803)
!4946 = !DILocation(line: 804, column: 3, scope: !4803)
!4947 = !DILocation(line: 806, column: 8, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4803, file: !1, line: 806, column: 7)
!4949 = !DILocation(line: 806, column: 7, scope: !4803)
!4950 = !DILocation(line: 807, column: 4, scope: !4948)
!4951 = !DILocation(line: 808, column: 23, scope: !4803)
!4952 = !DILocation(line: 808, column: 3, scope: !4803)
!4953 = !DILocation(line: 810, column: 39, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4803, file: !1, line: 809, column: 7)
!4955 = !DILocation(line: 810, column: 13, scope: !4954)
!4956 = !DILocation(line: 809, column: 7, scope: !4954)
!4957 = !DILocation(line: 809, column: 7, scope: !4803)
!4958 = !DILocation(line: 811, column: 4, scope: !4954)
!4959 = !DILocation(line: 812, column: 15, scope: !4803)
!4960 = !DILocation(line: 812, column: 25, scope: !4803)
!4961 = !DILocation(line: 812, column: 3, scope: !4803)
!4962 = !DILocation(line: 813, column: 3, scope: !4803)
!4963 = !DILocation(line: 813, column: 13, scope: !4803)
!4964 = !DILocation(line: 813, column: 30, scope: !4803)
!4965 = !DILocation(line: 814, column: 13, scope: !4803)
!4966 = !DILocation(line: 814, column: 23, scope: !4803)
!4967 = !DILocation(line: 814, column: 3, scope: !4803)
!4968 = !DILocation(line: 815, column: 10, scope: !4803)
!4969 = !DILocation(line: 815, column: 3, scope: !4803)
!4970 = !DILocalVariable(name: "ktermx", scope: !4802, file: !1, line: 819, type: !3554)
!4971 = !DILocation(line: 819, column: 18, scope: !4802)
!4972 = !DILocation(line: 820, column: 7, scope: !4973)
!4973 = distinct !DILexicalBlock(scope: !4802, file: !1, line: 820, column: 7)
!4974 = !DILocation(line: 820, column: 17, scope: !4973)
!4975 = !DILocation(line: 820, column: 25, scope: !4973)
!4976 = !DILocation(line: 820, column: 7, scope: !4802)
!4977 = !DILocation(line: 821, column: 4, scope: !4973)
!4978 = !DILocation(line: 822, column: 14, scope: !4802)
!4979 = !DILocation(line: 822, column: 24, scope: !4802)
!4980 = !DILocation(line: 822, column: 3, scope: !4802)
!4981 = !DILocation(line: 823, column: 3, scope: !4802)
!4982 = !DILocation(line: 823, column: 19, scope: !4802)
!4983 = !DILocation(line: 823, column: 29, scope: !4802)
!4984 = !DILocation(line: 824, column: 12, scope: !4802)
!4985 = !DILocation(line: 824, column: 22, scope: !4802)
!4986 = !DILocation(line: 824, column: 3, scope: !4802)
!4987 = !DILocation(line: 825, column: 20, scope: !4801)
!4988 = !DILocation(line: 825, column: 23, scope: !4801)
!4989 = !DILocation(line: 199, column: 6, scope: !4795, inlinedAt: !4800)
!4990 = !DILocation(line: 141, column: 6, scope: !4991, inlinedAt: !4794)
!4991 = distinct !DILexicalBlock(scope: !4789, file: !4790, line: 141, column: 6)
!4992 = !DILocation(line: 0, scope: !4991, inlinedAt: !4794)
!4993 = !DILocation(line: 141, column: 6, scope: !4789, inlinedAt: !4794)
!4994 = !DILocation(line: 142, column: 29, scope: !4995, inlinedAt: !4794)
!4995 = distinct !DILexicalBlock(scope: !4996, file: !4790, line: 142, column: 7)
!4996 = distinct !DILexicalBlock(scope: !4991, file: !4790, line: 141, column: 39)
!4997 = !DILocation(line: 142, column: 8, scope: !4995, inlinedAt: !4794)
!4998 = !DILocation(line: 142, column: 7, scope: !4996, inlinedAt: !4794)
!4999 = !DILocation(line: 143, column: 18, scope: !4995, inlinedAt: !4794)
!5000 = !DILocation(line: 143, column: 22, scope: !4995, inlinedAt: !4794)
!5001 = !DILocation(line: 143, column: 4, scope: !4995, inlinedAt: !4794)
!5002 = !DILocation(line: 144, column: 12, scope: !5003, inlinedAt: !4794)
!5003 = distinct !DILexicalBlock(scope: !4995, file: !4790, line: 144, column: 12)
!5004 = !DILocation(line: 144, column: 12, scope: !4995, inlinedAt: !4794)
!5005 = !DILocation(line: 145, column: 4, scope: !5003, inlinedAt: !4794)
!5006 = !DILocation(line: 147, column: 4, scope: !5003, inlinedAt: !4794)
!5007 = !DILocation(line: 148, column: 3, scope: !4996, inlinedAt: !4794)
!5008 = !DILocation(line: 150, column: 6, scope: !5009, inlinedAt: !4794)
!5009 = distinct !DILexicalBlock(scope: !4811, file: !4790, line: 150, column: 6)
!5010 = !DILocation(line: 150, column: 6, scope: !5011, inlinedAt: !4794)
!5011 = distinct !DILexicalBlock(scope: !5012, file: !4790, line: 150, column: 6)
!5012 = distinct !DILexicalBlock(scope: !5009, file: !4790, line: 150, column: 6)
!5013 = !{i32 -2145545303, i32 -2145545274, i32 -2145545228, i32 -2145545170, i32 -2145545116, i32 -2145545062, i32 -2145545007, i32 -2145544976}
!5014 = !DILocation(line: 150, column: 6, scope: !5015, inlinedAt: !4794)
!5015 = distinct !DILexicalBlock(scope: !5012, file: !4790, line: 150, column: 6)
!5016 = !{i32 -2145544556, i32 -2145544549, i32 -2145544497, i32 -2145544466, i32 -2145544436}
!5017 = !DILocation(line: 150, column: 6, scope: !5012, inlinedAt: !4794)
!5018 = !DILocation(line: 150, column: 6, scope: !4812, inlinedAt: !4794)
!5019 = !DILocation(line: 150, column: 6, scope: !4789, inlinedAt: !4794)
!5020 = !DILocation(line: 151, column: 3, scope: !4812, inlinedAt: !4794)
!5021 = !DILocation(line: 152, column: 20, scope: !4789, inlinedAt: !4794)
!5022 = !DILocation(line: 152, column: 26, scope: !4789, inlinedAt: !4794)
!5023 = !DILocation(line: 152, column: 33, scope: !4789, inlinedAt: !4794)
!5024 = !DILocation(line: 152, column: 2, scope: !4789, inlinedAt: !4794)
!5025 = !DILocation(line: 153, column: 2, scope: !4789, inlinedAt: !4794)
!5026 = !DILocation(line: 154, column: 1, scope: !4789, inlinedAt: !4794)
!5027 = !DILocation(line: 199, column: 6, scope: !4797, inlinedAt: !4800)
!5028 = !DILocation(line: 200, column: 21, scope: !4795, inlinedAt: !4800)
!5029 = !DILocation(line: 200, column: 25, scope: !4795, inlinedAt: !4800)
!5030 = !DILocation(line: 200, column: 31, scope: !4795, inlinedAt: !4800)
!5031 = !DILocation(line: 200, column: 7, scope: !4795, inlinedAt: !4800)
!5032 = !DILocation(line: 200, column: 5, scope: !4795, inlinedAt: !4800)
!5033 = !DILocation(line: 200, column: 3, scope: !4795, inlinedAt: !4800)
!5034 = !DILocation(line: 201, column: 9, scope: !4797, inlinedAt: !4800)
!5035 = !DILocation(line: 825, column: 7, scope: !4801)
!5036 = !DILocation(line: 825, column: 7, scope: !4802)
!5037 = !DILocation(line: 826, column: 8, scope: !4801)
!5038 = !DILocation(line: 826, column: 4, scope: !4801)
!5039 = !DILocation(line: 827, column: 10, scope: !4802)
!5040 = !DILocation(line: 827, column: 3, scope: !4802)
!5041 = !DILocation(line: 830, column: 22, scope: !4803)
!5042 = !DILocation(line: 830, column: 32, scope: !4803)
!5043 = !DILocation(line: 830, column: 10, scope: !4803)
!5044 = !DILocation(line: 830, column: 3, scope: !4803)
!5045 = !DILocation(line: 832, column: 22, scope: !4803)
!5046 = !DILocation(line: 832, column: 32, scope: !4803)
!5047 = !DILocation(line: 832, column: 10, scope: !4803)
!5048 = !DILocation(line: 832, column: 3, scope: !4803)
!5049 = !DILocation(line: 834, column: 22, scope: !4803)
!5050 = !DILocation(line: 834, column: 32, scope: !4803)
!5051 = !DILocation(line: 834, column: 10, scope: !4803)
!5052 = !DILocation(line: 834, column: 3, scope: !4803)
!5053 = !DILocation(line: 837, column: 16, scope: !4803)
!5054 = !DILocation(line: 837, column: 3, scope: !4803)
!5055 = !DILocation(line: 838, column: 9, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !4803, file: !1, line: 838, column: 9)
!5057 = !DILocalVariable(name: "__ret_pu", scope: !5058, file: !1, line: 838, type: !128)
!5058 = distinct !DILexicalBlock(scope: !5056, file: !1, line: 838, column: 9)
!5059 = !DILocation(line: 838, column: 9, scope: !5058)
!5060 = !DILocalVariable(name: "__ptr_pu", scope: !5058, file: !1, line: 838, type: !98)
!5061 = !DILocalVariable(name: "__val_pu", scope: !5058, file: !1, line: 838, type: !128)
!5062 = !{i32 -2141977851}
!5063 = !DILocation(line: 838, column: 9, scope: !4803)
!5064 = !DILocation(line: 838, column: 7, scope: !4803)
!5065 = !DILocation(line: 840, column: 10, scope: !4803)
!5066 = !DILocation(line: 840, column: 3, scope: !4803)
!5067 = !DILocation(line: 842, column: 7, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !5069, file: !1, line: 842, column: 7)
!5069 = distinct !DILexicalBlock(scope: !4803, file: !1, line: 842, column: 7)
!5070 = !DILocalVariable(name: "__ret_gu", scope: !5071, file: !1, line: 842, type: !128)
!5071 = distinct !DILexicalBlock(scope: !5068, file: !1, line: 842, column: 7)
!5072 = !DILocation(line: 842, column: 7, scope: !5071)
!5073 = !DILocalVariable(name: "__val_gu", scope: !5071, file: !1, line: 842, type: !5)
!5074 = !{i32 -2141977077}
!5075 = !DILocation(line: 842, column: 7, scope: !5069)
!5076 = !DILocation(line: 842, column: 7, scope: !4803)
!5077 = !DILocation(line: 843, column: 4, scope: !5069)
!5078 = !DILocation(line: 844, column: 29, scope: !4803)
!5079 = !DILocation(line: 844, column: 39, scope: !4803)
!5080 = !DILocation(line: 844, column: 10, scope: !4803)
!5081 = !DILocation(line: 844, column: 3, scope: !4803)
!5082 = !DILocation(line: 846, column: 3, scope: !4803)
!5083 = !DILocation(line: 848, column: 1, scope: !4787)
!5084 = distinct !DISubprogram(name: "set_termios", scope: !1, file: !1, line: 362, type: !5085, scopeLine: 363, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!5085 = !DISubroutineType(types: !5086)
!5086 = !{!128, !2893, !98, !128}
!5087 = !DILocalVariable(name: "pscr_ret__", scope: !5088, file: !5089, line: 15, type: !152)
!5088 = distinct !DILexicalBlock(scope: !5090, file: !5089, line: 15, column: 9)
!5089 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/lizy2001/genbc/linux")
!5090 = distinct !DISubprogram(name: "get_current", scope: !5089, file: !5089, line: 13, type: !5091, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!5091 = !DISubroutineType(types: !5092)
!5092 = !{!152}
!5093 = !DILocation(line: 15, column: 9, scope: !5088, inlinedAt: !5094)
!5094 = distinct !DILocation(line: 410, column: 22, scope: !5095)
!5095 = distinct !DILexicalBlock(scope: !5096, file: !1, line: 410, column: 7)
!5096 = distinct !DILexicalBlock(scope: !5097, file: !1, line: 408, column: 26)
!5097 = distinct !DILexicalBlock(scope: !5084, file: !1, line: 408, column: 6)
!5098 = !DILocalVariable(name: "__vpp_verify", scope: !5099, file: !5089, line: 15, type: !2088)
!5099 = distinct !DILexicalBlock(scope: !5088, file: !5089, line: 15, column: 9)
!5100 = !DILocation(line: 15, column: 9, scope: !5099, inlinedAt: !5094)
!5101 = !DILocalVariable(name: "pfo_val__", scope: !5102, file: !5089, line: 15, type: !214)
!5102 = distinct !DILexicalBlock(scope: !5088, file: !5089, line: 15, column: 9)
!5103 = !DILocation(line: 15, column: 9, scope: !5102, inlinedAt: !5094)
!5104 = !DILocalVariable(name: "tty", arg: 1, scope: !5084, file: !1, line: 362, type: !2893)
!5105 = !DILocation(line: 362, column: 43, scope: !5084)
!5106 = !DILocalVariable(name: "arg", arg: 2, scope: !5084, file: !1, line: 362, type: !98)
!5107 = !DILocation(line: 362, column: 61, scope: !5084)
!5108 = !DILocalVariable(name: "opt", arg: 3, scope: !5084, file: !1, line: 362, type: !128)
!5109 = !DILocation(line: 362, column: 70, scope: !5084)
!5110 = !DILocalVariable(name: "tmp_termios", scope: !5084, file: !1, line: 364, type: !3351)
!5111 = !DILocation(line: 364, column: 18, scope: !5084)
!5112 = !DILocalVariable(name: "ld", scope: !5084, file: !1, line: 365, type: !3595)
!5113 = !DILocation(line: 365, column: 20, scope: !5084)
!5114 = !DILocalVariable(name: "retval", scope: !5084, file: !1, line: 366, type: !128)
!5115 = !DILocation(line: 366, column: 6, scope: !5084)
!5116 = !DILocation(line: 366, column: 32, scope: !5084)
!5117 = !DILocation(line: 366, column: 15, scope: !5084)
!5118 = !DILocation(line: 368, column: 6, scope: !5119)
!5119 = distinct !DILexicalBlock(scope: !5084, file: !1, line: 368, column: 6)
!5120 = !DILocation(line: 368, column: 6, scope: !5084)
!5121 = !DILocation(line: 369, column: 10, scope: !5119)
!5122 = !DILocation(line: 369, column: 3, scope: !5119)
!5123 = !DILocation(line: 371, column: 13, scope: !5084)
!5124 = !DILocation(line: 371, column: 18, scope: !5084)
!5125 = !DILocation(line: 371, column: 2, scope: !5084)
!5126 = !DILocation(line: 372, column: 16, scope: !5084)
!5127 = !DILocation(line: 372, column: 21, scope: !5084)
!5128 = !DILocation(line: 373, column: 11, scope: !5084)
!5129 = !DILocation(line: 373, column: 16, scope: !5084)
!5130 = !DILocation(line: 373, column: 2, scope: !5084)
!5131 = !DILocation(line: 375, column: 6, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5084, file: !1, line: 375, column: 6)
!5133 = !DILocation(line: 375, column: 10, scope: !5132)
!5134 = !DILocation(line: 375, column: 6, scope: !5084)
!5135 = !DILocation(line: 377, column: 31, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !5137, file: !1, line: 376, column: 7)
!5137 = distinct !DILexicalBlock(scope: !5132, file: !1, line: 375, column: 28)
!5138 = !DILocation(line: 377, column: 7, scope: !5136)
!5139 = !DILocation(line: 376, column: 7, scope: !5136)
!5140 = !DILocation(line: 376, column: 7, scope: !5137)
!5141 = !DILocation(line: 378, column: 4, scope: !5136)
!5142 = !DILocation(line: 380, column: 2, scope: !5137)
!5143 = !DILocation(line: 380, column: 13, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5132, file: !1, line: 380, column: 13)
!5145 = !DILocation(line: 380, column: 17, scope: !5144)
!5146 = !DILocation(line: 380, column: 13, scope: !5132)
!5147 = !DILocation(line: 382, column: 32, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5149, file: !1, line: 381, column: 7)
!5149 = distinct !DILexicalBlock(scope: !5144, file: !1, line: 380, column: 32)
!5150 = !DILocation(line: 382, column: 7, scope: !5148)
!5151 = !DILocation(line: 381, column: 7, scope: !5148)
!5152 = !DILocation(line: 381, column: 7, scope: !5149)
!5153 = !DILocation(line: 383, column: 4, scope: !5148)
!5154 = !DILocation(line: 384, column: 2, scope: !5149)
!5155 = !DILocation(line: 386, column: 33, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5157, file: !1, line: 385, column: 7)
!5157 = distinct !DILexicalBlock(scope: !5144, file: !1, line: 384, column: 9)
!5158 = !DILocation(line: 386, column: 7, scope: !5156)
!5159 = !DILocation(line: 385, column: 7, scope: !5156)
!5160 = !DILocation(line: 385, column: 7, scope: !5157)
!5161 = !DILocation(line: 387, column: 4, scope: !5156)
!5162 = !DILocation(line: 397, column: 25, scope: !5084)
!5163 = !DILocation(line: 397, column: 14, scope: !5084)
!5164 = !DILocation(line: 397, column: 23, scope: !5084)
!5165 = !DILocation(line: 398, column: 25, scope: !5084)
!5166 = !DILocation(line: 398, column: 14, scope: !5084)
!5167 = !DILocation(line: 398, column: 23, scope: !5084)
!5168 = !DILocation(line: 400, column: 21, scope: !5084)
!5169 = !DILocation(line: 400, column: 7, scope: !5084)
!5170 = !DILocation(line: 400, column: 5, scope: !5084)
!5171 = !DILocation(line: 402, column: 6, scope: !5172)
!5172 = distinct !DILexicalBlock(scope: !5084, file: !1, line: 402, column: 6)
!5173 = !DILocation(line: 402, column: 9, scope: !5172)
!5174 = !DILocation(line: 402, column: 6, scope: !5084)
!5175 = !DILocation(line: 403, column: 8, scope: !5176)
!5176 = distinct !DILexicalBlock(scope: !5177, file: !1, line: 403, column: 7)
!5177 = distinct !DILexicalBlock(scope: !5172, file: !1, line: 402, column: 18)
!5178 = !DILocation(line: 403, column: 12, scope: !5176)
!5179 = !DILocation(line: 403, column: 29, scope: !5176)
!5180 = !DILocation(line: 403, column: 32, scope: !5176)
!5181 = !DILocation(line: 403, column: 36, scope: !5176)
!5182 = !DILocation(line: 403, column: 41, scope: !5176)
!5183 = !DILocation(line: 403, column: 7, scope: !5177)
!5184 = !DILocation(line: 404, column: 4, scope: !5176)
!5185 = !DILocation(line: 404, column: 8, scope: !5176)
!5186 = !DILocation(line: 404, column: 13, scope: !5176)
!5187 = !DILocation(line: 404, column: 26, scope: !5176)
!5188 = !DILocation(line: 405, column: 19, scope: !5177)
!5189 = !DILocation(line: 405, column: 3, scope: !5177)
!5190 = !DILocation(line: 406, column: 2, scope: !5177)
!5191 = !DILocation(line: 408, column: 6, scope: !5097)
!5192 = !DILocation(line: 408, column: 10, scope: !5097)
!5193 = !DILocation(line: 408, column: 6, scope: !5084)
!5194 = !DILocation(line: 409, column: 23, scope: !5096)
!5195 = !DILocation(line: 409, column: 3, scope: !5096)
!5196 = !{i32 -2146827177}
!5197 = !DILocation(line: 410, column: 7, scope: !5095)
!5198 = !DILocation(line: 410, column: 7, scope: !5096)
!5199 = !DILocation(line: 411, column: 4, scope: !5095)
!5200 = !DILocation(line: 412, column: 2, scope: !5096)
!5201 = !DILocation(line: 414, column: 18, scope: !5084)
!5202 = !DILocation(line: 414, column: 2, scope: !5084)
!5203 = !DILocation(line: 420, column: 2, scope: !5084)
!5204 = !DILocation(line: 421, column: 1, scope: !5084)
!5205 = distinct !DISubprogram(name: "copy_termios", scope: !1, file: !1, line: 423, type: !3512, scopeLine: 424, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!5206 = !DILocalVariable(name: "tty", arg: 1, scope: !5205, file: !1, line: 423, type: !2893)
!5207 = !DILocation(line: 423, column: 45, scope: !5205)
!5208 = !DILocalVariable(name: "kterm", arg: 2, scope: !5205, file: !1, line: 423, type: !3456)
!5209 = !DILocation(line: 423, column: 67, scope: !5205)
!5210 = !DILocation(line: 425, column: 13, scope: !5205)
!5211 = !DILocation(line: 425, column: 18, scope: !5205)
!5212 = !DILocation(line: 425, column: 2, scope: !5205)
!5213 = !DILocation(line: 426, column: 3, scope: !5205)
!5214 = !DILocation(line: 426, column: 11, scope: !5205)
!5215 = !DILocation(line: 426, column: 16, scope: !5205)
!5216 = !DILocation(line: 427, column: 11, scope: !5205)
!5217 = !DILocation(line: 427, column: 16, scope: !5205)
!5218 = !DILocation(line: 427, column: 2, scope: !5205)
!5219 = !DILocation(line: 428, column: 1, scope: !5205)
!5220 = distinct !DISubprogram(name: "kernel_termios_to_user_termios_1", scope: !5221, file: !5221, line: 89, type: !5222, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!5221 = !DIFile(filename: "./include/asm-generic/termios.h", directory: "/home/lizy2001/genbc/linux")
!5222 = !DISubroutineType(types: !5223)
!5223 = !{!128, !99, !3456}
!5224 = !DILocation(line: 138, column: 29, scope: !4789, inlinedAt: !5225)
!5225 = distinct !DILocation(line: 199, column: 6, scope: !4795, inlinedAt: !5226)
!5226 = distinct !DILocation(line: 92, column: 9, scope: !5220)
!5227 = !DILocation(line: 138, column: 42, scope: !4789, inlinedAt: !5225)
!5228 = !DILocation(line: 138, column: 54, scope: !4789, inlinedAt: !5225)
!5229 = !DILocation(line: 140, column: 6, scope: !4789, inlinedAt: !5225)
!5230 = !DILocation(line: 150, column: 6, scope: !4811, inlinedAt: !5225)
!5231 = !DILocation(line: 197, column: 27, scope: !4797, inlinedAt: !5226)
!5232 = !DILocation(line: 197, column: 43, scope: !4797, inlinedAt: !5226)
!5233 = !DILocation(line: 197, column: 63, scope: !4797, inlinedAt: !5226)
!5234 = !DILocalVariable(name: "u", arg: 1, scope: !5220, file: !5221, line: 89, type: !99)
!5235 = !DILocation(line: 89, column: 75, scope: !5220)
!5236 = !DILocalVariable(name: "k", arg: 2, scope: !5220, file: !5221, line: 90, type: !3456)
!5237 = !DILocation(line: 90, column: 27, scope: !5220)
!5238 = !DILocation(line: 92, column: 22, scope: !5220)
!5239 = !DILocation(line: 92, column: 25, scope: !5220)
!5240 = !DILocation(line: 199, column: 6, scope: !4795, inlinedAt: !5226)
!5241 = !DILocation(line: 141, column: 6, scope: !4991, inlinedAt: !5225)
!5242 = !DILocation(line: 0, scope: !4991, inlinedAt: !5225)
!5243 = !DILocation(line: 141, column: 6, scope: !4789, inlinedAt: !5225)
!5244 = !DILocation(line: 142, column: 29, scope: !4995, inlinedAt: !5225)
!5245 = !DILocation(line: 142, column: 8, scope: !4995, inlinedAt: !5225)
!5246 = !DILocation(line: 142, column: 7, scope: !4996, inlinedAt: !5225)
!5247 = !DILocation(line: 143, column: 18, scope: !4995, inlinedAt: !5225)
!5248 = !DILocation(line: 143, column: 22, scope: !4995, inlinedAt: !5225)
!5249 = !DILocation(line: 143, column: 4, scope: !4995, inlinedAt: !5225)
!5250 = !DILocation(line: 144, column: 12, scope: !5003, inlinedAt: !5225)
!5251 = !DILocation(line: 144, column: 12, scope: !4995, inlinedAt: !5225)
!5252 = !DILocation(line: 145, column: 4, scope: !5003, inlinedAt: !5225)
!5253 = !DILocation(line: 147, column: 4, scope: !5003, inlinedAt: !5225)
!5254 = !DILocation(line: 148, column: 3, scope: !4996, inlinedAt: !5225)
!5255 = !DILocation(line: 150, column: 6, scope: !5009, inlinedAt: !5225)
!5256 = !DILocation(line: 150, column: 6, scope: !5011, inlinedAt: !5225)
!5257 = !DILocation(line: 150, column: 6, scope: !5015, inlinedAt: !5225)
!5258 = !DILocation(line: 150, column: 6, scope: !5012, inlinedAt: !5225)
!5259 = !DILocation(line: 150, column: 6, scope: !4812, inlinedAt: !5225)
!5260 = !DILocation(line: 150, column: 6, scope: !4789, inlinedAt: !5225)
!5261 = !DILocation(line: 151, column: 3, scope: !4812, inlinedAt: !5225)
!5262 = !DILocation(line: 152, column: 20, scope: !4789, inlinedAt: !5225)
!5263 = !DILocation(line: 152, column: 26, scope: !4789, inlinedAt: !5225)
!5264 = !DILocation(line: 152, column: 33, scope: !4789, inlinedAt: !5225)
!5265 = !DILocation(line: 152, column: 2, scope: !4789, inlinedAt: !5225)
!5266 = !DILocation(line: 153, column: 2, scope: !4789, inlinedAt: !5225)
!5267 = !DILocation(line: 154, column: 1, scope: !4789, inlinedAt: !5225)
!5268 = !DILocation(line: 199, column: 6, scope: !4797, inlinedAt: !5226)
!5269 = !DILocation(line: 200, column: 21, scope: !4795, inlinedAt: !5226)
!5270 = !DILocation(line: 200, column: 25, scope: !4795, inlinedAt: !5226)
!5271 = !DILocation(line: 200, column: 31, scope: !4795, inlinedAt: !5226)
!5272 = !DILocation(line: 200, column: 7, scope: !4795, inlinedAt: !5226)
!5273 = !DILocation(line: 200, column: 5, scope: !4795, inlinedAt: !5226)
!5274 = !DILocation(line: 200, column: 3, scope: !4795, inlinedAt: !5226)
!5275 = !DILocation(line: 201, column: 9, scope: !4797, inlinedAt: !5226)
!5276 = !DILocation(line: 92, column: 9, scope: !5220)
!5277 = !DILocation(line: 92, column: 2, scope: !5220)
!5278 = distinct !DISubprogram(name: "kernel_termios_to_user_termios", scope: !5221, file: !5221, line: 77, type: !5279, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!5279 = !DISubroutineType(types: !5280)
!5280 = !{!128, !115, !3456}
!5281 = !DILocation(line: 138, column: 29, scope: !4789, inlinedAt: !5282)
!5282 = distinct !DILocation(line: 199, column: 6, scope: !4795, inlinedAt: !5283)
!5283 = distinct !DILocation(line: 80, column: 9, scope: !5278)
!5284 = !DILocation(line: 138, column: 42, scope: !4789, inlinedAt: !5282)
!5285 = !DILocation(line: 138, column: 54, scope: !4789, inlinedAt: !5282)
!5286 = !DILocation(line: 140, column: 6, scope: !4789, inlinedAt: !5282)
!5287 = !DILocation(line: 150, column: 6, scope: !4811, inlinedAt: !5282)
!5288 = !DILocation(line: 197, column: 27, scope: !4797, inlinedAt: !5283)
!5289 = !DILocation(line: 197, column: 43, scope: !4797, inlinedAt: !5283)
!5290 = !DILocation(line: 197, column: 63, scope: !4797, inlinedAt: !5283)
!5291 = !DILocalVariable(name: "u", arg: 1, scope: !5278, file: !5221, line: 77, type: !115)
!5292 = !DILocation(line: 77, column: 74, scope: !5278)
!5293 = !DILocalVariable(name: "k", arg: 2, scope: !5278, file: !5221, line: 78, type: !3456)
!5294 = !DILocation(line: 78, column: 25, scope: !5278)
!5295 = !DILocation(line: 80, column: 22, scope: !5278)
!5296 = !DILocation(line: 80, column: 25, scope: !5278)
!5297 = !DILocation(line: 199, column: 6, scope: !4795, inlinedAt: !5283)
!5298 = !DILocation(line: 141, column: 6, scope: !4991, inlinedAt: !5282)
!5299 = !DILocation(line: 0, scope: !4991, inlinedAt: !5282)
!5300 = !DILocation(line: 141, column: 6, scope: !4789, inlinedAt: !5282)
!5301 = !DILocation(line: 142, column: 29, scope: !4995, inlinedAt: !5282)
!5302 = !DILocation(line: 142, column: 8, scope: !4995, inlinedAt: !5282)
!5303 = !DILocation(line: 142, column: 7, scope: !4996, inlinedAt: !5282)
!5304 = !DILocation(line: 143, column: 18, scope: !4995, inlinedAt: !5282)
!5305 = !DILocation(line: 143, column: 22, scope: !4995, inlinedAt: !5282)
!5306 = !DILocation(line: 143, column: 4, scope: !4995, inlinedAt: !5282)
!5307 = !DILocation(line: 144, column: 12, scope: !5003, inlinedAt: !5282)
!5308 = !DILocation(line: 144, column: 12, scope: !4995, inlinedAt: !5282)
!5309 = !DILocation(line: 145, column: 4, scope: !5003, inlinedAt: !5282)
!5310 = !DILocation(line: 147, column: 4, scope: !5003, inlinedAt: !5282)
!5311 = !DILocation(line: 148, column: 3, scope: !4996, inlinedAt: !5282)
!5312 = !DILocation(line: 150, column: 6, scope: !5009, inlinedAt: !5282)
!5313 = !DILocation(line: 150, column: 6, scope: !5011, inlinedAt: !5282)
!5314 = !DILocation(line: 150, column: 6, scope: !5015, inlinedAt: !5282)
!5315 = !DILocation(line: 150, column: 6, scope: !5012, inlinedAt: !5282)
!5316 = !DILocation(line: 150, column: 6, scope: !4812, inlinedAt: !5282)
!5317 = !DILocation(line: 150, column: 6, scope: !4789, inlinedAt: !5282)
!5318 = !DILocation(line: 151, column: 3, scope: !4812, inlinedAt: !5282)
!5319 = !DILocation(line: 152, column: 20, scope: !4789, inlinedAt: !5282)
!5320 = !DILocation(line: 152, column: 26, scope: !4789, inlinedAt: !5282)
!5321 = !DILocation(line: 152, column: 33, scope: !4789, inlinedAt: !5282)
!5322 = !DILocation(line: 152, column: 2, scope: !4789, inlinedAt: !5282)
!5323 = !DILocation(line: 153, column: 2, scope: !4789, inlinedAt: !5282)
!5324 = !DILocation(line: 154, column: 1, scope: !4789, inlinedAt: !5282)
!5325 = !DILocation(line: 199, column: 6, scope: !4797, inlinedAt: !5283)
!5326 = !DILocation(line: 200, column: 21, scope: !4795, inlinedAt: !5283)
!5327 = !DILocation(line: 200, column: 25, scope: !4795, inlinedAt: !5283)
!5328 = !DILocation(line: 200, column: 31, scope: !4795, inlinedAt: !5283)
!5329 = !DILocation(line: 200, column: 7, scope: !4795, inlinedAt: !5283)
!5330 = !DILocation(line: 200, column: 5, scope: !4795, inlinedAt: !5283)
!5331 = !DILocation(line: 200, column: 3, scope: !4795, inlinedAt: !5283)
!5332 = !DILocation(line: 201, column: 9, scope: !4797, inlinedAt: !5283)
!5333 = !DILocation(line: 80, column: 9, scope: !5278)
!5334 = !DILocation(line: 80, column: 2, scope: !5278)
!5335 = distinct !DISubprogram(name: "get_termio", scope: !1, file: !1, line: 437, type: !5336, scopeLine: 438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!5336 = !DISubroutineType(types: !5337)
!5337 = !{!128, !2893, !137}
!5338 = !DILocalVariable(name: "tty", arg: 1, scope: !5335, file: !1, line: 437, type: !2893)
!5339 = !DILocation(line: 437, column: 42, scope: !5335)
!5340 = !DILocalVariable(name: "termio", arg: 2, scope: !5335, file: !1, line: 437, type: !137)
!5341 = !DILocation(line: 437, column: 69, scope: !5335)
!5342 = !DILocalVariable(name: "kterm", scope: !5335, file: !1, line: 439, type: !3351)
!5343 = !DILocation(line: 439, column: 18, scope: !5335)
!5344 = !DILocation(line: 440, column: 15, scope: !5335)
!5345 = !DILocation(line: 440, column: 2, scope: !5335)
!5346 = !DILocation(line: 441, column: 36, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !5335, file: !1, line: 441, column: 6)
!5348 = !DILocation(line: 441, column: 6, scope: !5347)
!5349 = !DILocation(line: 441, column: 6, scope: !5335)
!5350 = !DILocation(line: 442, column: 3, scope: !5347)
!5351 = !DILocation(line: 443, column: 2, scope: !5335)
!5352 = !DILocation(line: 444, column: 1, scope: !5335)
!5353 = distinct !DISubprogram(name: "copy_termios_locked", scope: !1, file: !1, line: 430, type: !3512, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!5354 = !DILocalVariable(name: "tty", arg: 1, scope: !5353, file: !1, line: 430, type: !2893)
!5355 = !DILocation(line: 430, column: 52, scope: !5353)
!5356 = !DILocalVariable(name: "kterm", arg: 2, scope: !5353, file: !1, line: 430, type: !3456)
!5357 = !DILocation(line: 430, column: 74, scope: !5353)
!5358 = !DILocation(line: 432, column: 13, scope: !5353)
!5359 = !DILocation(line: 432, column: 18, scope: !5353)
!5360 = !DILocation(line: 432, column: 2, scope: !5353)
!5361 = !DILocation(line: 433, column: 3, scope: !5353)
!5362 = !DILocation(line: 433, column: 11, scope: !5353)
!5363 = !DILocation(line: 433, column: 16, scope: !5353)
!5364 = !DILocation(line: 434, column: 11, scope: !5353)
!5365 = !DILocation(line: 434, column: 16, scope: !5353)
!5366 = !DILocation(line: 434, column: 2, scope: !5353)
!5367 = !DILocation(line: 435, column: 1, scope: !5353)
!5368 = distinct !DISubprogram(name: "user_termios_to_kernel_termios_1", scope: !5221, file: !5221, line: 83, type: !5369, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!5369 = !DISubroutineType(types: !5370)
!5370 = !{!128, !3456, !99}
!5371 = !DILocation(line: 138, column: 29, scope: !4789, inlinedAt: !5372)
!5372 = distinct !DILocation(line: 191, column: 6, scope: !5373, inlinedAt: !5375)
!5373 = distinct !DILexicalBlock(scope: !5374, file: !4796, line: 191, column: 6)
!5374 = distinct !DISubprogram(name: "copy_from_user", scope: !4796, file: !4796, line: 189, type: !4798, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!5375 = distinct !DILocation(line: 86, column: 9, scope: !5368)
!5376 = !DILocation(line: 138, column: 42, scope: !4789, inlinedAt: !5372)
!5377 = !DILocation(line: 138, column: 54, scope: !4789, inlinedAt: !5372)
!5378 = !DILocation(line: 140, column: 6, scope: !4789, inlinedAt: !5372)
!5379 = !DILocation(line: 150, column: 6, scope: !4811, inlinedAt: !5372)
!5380 = !DILocalVariable(name: "to", arg: 1, scope: !5374, file: !4796, line: 189, type: !98)
!5381 = !DILocation(line: 189, column: 22, scope: !5374, inlinedAt: !5375)
!5382 = !DILocalVariable(name: "from", arg: 2, scope: !5374, file: !4796, line: 189, type: !2088)
!5383 = !DILocation(line: 189, column: 45, scope: !5374, inlinedAt: !5375)
!5384 = !DILocalVariable(name: "n", arg: 3, scope: !5374, file: !4796, line: 189, type: !131)
!5385 = !DILocation(line: 189, column: 65, scope: !5374, inlinedAt: !5375)
!5386 = !DILocalVariable(name: "k", arg: 1, scope: !5368, file: !5221, line: 83, type: !3456)
!5387 = !DILocation(line: 83, column: 69, scope: !5368)
!5388 = !DILocalVariable(name: "u", arg: 2, scope: !5368, file: !5221, line: 84, type: !99)
!5389 = !DILocation(line: 84, column: 33, scope: !5368)
!5390 = !DILocation(line: 86, column: 24, scope: !5368)
!5391 = !DILocation(line: 86, column: 27, scope: !5368)
!5392 = !DILocation(line: 191, column: 6, scope: !5373, inlinedAt: !5375)
!5393 = !DILocation(line: 141, column: 6, scope: !4991, inlinedAt: !5372)
!5394 = !DILocation(line: 0, scope: !4991, inlinedAt: !5372)
!5395 = !DILocation(line: 141, column: 6, scope: !4789, inlinedAt: !5372)
!5396 = !DILocation(line: 142, column: 29, scope: !4995, inlinedAt: !5372)
!5397 = !DILocation(line: 142, column: 8, scope: !4995, inlinedAt: !5372)
!5398 = !DILocation(line: 142, column: 7, scope: !4996, inlinedAt: !5372)
!5399 = !DILocation(line: 143, column: 18, scope: !4995, inlinedAt: !5372)
!5400 = !DILocation(line: 143, column: 22, scope: !4995, inlinedAt: !5372)
!5401 = !DILocation(line: 143, column: 4, scope: !4995, inlinedAt: !5372)
!5402 = !DILocation(line: 144, column: 12, scope: !5003, inlinedAt: !5372)
!5403 = !DILocation(line: 144, column: 12, scope: !4995, inlinedAt: !5372)
!5404 = !DILocation(line: 145, column: 4, scope: !5003, inlinedAt: !5372)
!5405 = !DILocation(line: 147, column: 4, scope: !5003, inlinedAt: !5372)
!5406 = !DILocation(line: 148, column: 3, scope: !4996, inlinedAt: !5372)
!5407 = !DILocation(line: 150, column: 6, scope: !5009, inlinedAt: !5372)
!5408 = !DILocation(line: 150, column: 6, scope: !5011, inlinedAt: !5372)
!5409 = !DILocation(line: 150, column: 6, scope: !5015, inlinedAt: !5372)
!5410 = !DILocation(line: 150, column: 6, scope: !5012, inlinedAt: !5372)
!5411 = !DILocation(line: 150, column: 6, scope: !4812, inlinedAt: !5372)
!5412 = !DILocation(line: 150, column: 6, scope: !4789, inlinedAt: !5372)
!5413 = !DILocation(line: 151, column: 3, scope: !4812, inlinedAt: !5372)
!5414 = !DILocation(line: 152, column: 20, scope: !4789, inlinedAt: !5372)
!5415 = !DILocation(line: 152, column: 26, scope: !4789, inlinedAt: !5372)
!5416 = !DILocation(line: 152, column: 33, scope: !4789, inlinedAt: !5372)
!5417 = !DILocation(line: 152, column: 2, scope: !4789, inlinedAt: !5372)
!5418 = !DILocation(line: 153, column: 2, scope: !4789, inlinedAt: !5372)
!5419 = !DILocation(line: 154, column: 1, scope: !4789, inlinedAt: !5372)
!5420 = !DILocation(line: 191, column: 6, scope: !5374, inlinedAt: !5375)
!5421 = !DILocation(line: 192, column: 23, scope: !5373, inlinedAt: !5375)
!5422 = !DILocation(line: 192, column: 27, scope: !5373, inlinedAt: !5375)
!5423 = !DILocation(line: 192, column: 33, scope: !5373, inlinedAt: !5375)
!5424 = !DILocation(line: 192, column: 7, scope: !5373, inlinedAt: !5375)
!5425 = !DILocation(line: 192, column: 5, scope: !5373, inlinedAt: !5375)
!5426 = !DILocation(line: 192, column: 3, scope: !5373, inlinedAt: !5375)
!5427 = !DILocation(line: 193, column: 9, scope: !5374, inlinedAt: !5375)
!5428 = !DILocation(line: 86, column: 9, scope: !5368)
!5429 = !DILocation(line: 86, column: 2, scope: !5368)
!5430 = distinct !DISubprogram(name: "set_termiox", scope: !1, file: !1, line: 459, type: !5085, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!5431 = !DILocation(line: 15, column: 9, scope: !5088, inlinedAt: !5432)
!5432 = distinct !DILocation(line: 477, column: 22, scope: !5433)
!5433 = distinct !DILexicalBlock(scope: !5434, file: !1, line: 477, column: 7)
!5434 = distinct !DILexicalBlock(scope: !5435, file: !1, line: 475, column: 26)
!5435 = distinct !DILexicalBlock(scope: !5430, file: !1, line: 475, column: 6)
!5436 = !DILocation(line: 15, column: 9, scope: !5099, inlinedAt: !5432)
!5437 = !DILocation(line: 15, column: 9, scope: !5102, inlinedAt: !5432)
!5438 = !DILocation(line: 138, column: 29, scope: !4789, inlinedAt: !5439)
!5439 = distinct !DILocation(line: 191, column: 6, scope: !5373, inlinedAt: !5440)
!5440 = distinct !DILocation(line: 466, column: 6, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5430, file: !1, line: 466, column: 6)
!5442 = !DILocation(line: 138, column: 42, scope: !4789, inlinedAt: !5439)
!5443 = !DILocation(line: 138, column: 54, scope: !4789, inlinedAt: !5439)
!5444 = !DILocation(line: 140, column: 6, scope: !4789, inlinedAt: !5439)
!5445 = !DILocation(line: 150, column: 6, scope: !4811, inlinedAt: !5439)
!5446 = !DILocation(line: 189, column: 22, scope: !5374, inlinedAt: !5440)
!5447 = !DILocation(line: 189, column: 45, scope: !5374, inlinedAt: !5440)
!5448 = !DILocation(line: 189, column: 65, scope: !5374, inlinedAt: !5440)
!5449 = !DILocalVariable(name: "tty", arg: 1, scope: !5430, file: !1, line: 459, type: !2893)
!5450 = !DILocation(line: 459, column: 43, scope: !5430)
!5451 = !DILocalVariable(name: "arg", arg: 2, scope: !5430, file: !1, line: 459, type: !98)
!5452 = !DILocation(line: 459, column: 61, scope: !5430)
!5453 = !DILocalVariable(name: "opt", arg: 3, scope: !5430, file: !1, line: 459, type: !128)
!5454 = !DILocation(line: 459, column: 70, scope: !5430)
!5455 = !DILocalVariable(name: "tnew", scope: !5430, file: !1, line: 461, type: !3554)
!5456 = !DILocation(line: 461, column: 17, scope: !5430)
!5457 = !DILocalVariable(name: "ld", scope: !5430, file: !1, line: 462, type: !3595)
!5458 = !DILocation(line: 462, column: 20, scope: !5430)
!5459 = !DILocation(line: 464, column: 6, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5430, file: !1, line: 464, column: 6)
!5461 = !DILocation(line: 464, column: 11, scope: !5460)
!5462 = !DILocation(line: 464, column: 19, scope: !5460)
!5463 = !DILocation(line: 464, column: 6, scope: !5430)
!5464 = !DILocation(line: 465, column: 3, scope: !5460)
!5465 = !DILocation(line: 466, column: 21, scope: !5441)
!5466 = !DILocation(line: 466, column: 28, scope: !5441)
!5467 = !DILocation(line: 191, column: 6, scope: !5373, inlinedAt: !5440)
!5468 = !DILocation(line: 141, column: 6, scope: !4991, inlinedAt: !5439)
!5469 = !DILocation(line: 0, scope: !4991, inlinedAt: !5439)
!5470 = !DILocation(line: 141, column: 6, scope: !4789, inlinedAt: !5439)
!5471 = !DILocation(line: 142, column: 29, scope: !4995, inlinedAt: !5439)
!5472 = !DILocation(line: 142, column: 8, scope: !4995, inlinedAt: !5439)
!5473 = !DILocation(line: 142, column: 7, scope: !4996, inlinedAt: !5439)
!5474 = !DILocation(line: 143, column: 18, scope: !4995, inlinedAt: !5439)
!5475 = !DILocation(line: 143, column: 22, scope: !4995, inlinedAt: !5439)
!5476 = !DILocation(line: 143, column: 4, scope: !4995, inlinedAt: !5439)
!5477 = !DILocation(line: 144, column: 12, scope: !5003, inlinedAt: !5439)
!5478 = !DILocation(line: 144, column: 12, scope: !4995, inlinedAt: !5439)
!5479 = !DILocation(line: 145, column: 4, scope: !5003, inlinedAt: !5439)
!5480 = !DILocation(line: 147, column: 4, scope: !5003, inlinedAt: !5439)
!5481 = !DILocation(line: 148, column: 3, scope: !4996, inlinedAt: !5439)
!5482 = !DILocation(line: 150, column: 6, scope: !5009, inlinedAt: !5439)
!5483 = !DILocation(line: 150, column: 6, scope: !5011, inlinedAt: !5439)
!5484 = !DILocation(line: 150, column: 6, scope: !5015, inlinedAt: !5439)
!5485 = !DILocation(line: 150, column: 6, scope: !5012, inlinedAt: !5439)
!5486 = !DILocation(line: 150, column: 6, scope: !4812, inlinedAt: !5439)
!5487 = !DILocation(line: 150, column: 6, scope: !4789, inlinedAt: !5439)
!5488 = !DILocation(line: 151, column: 3, scope: !4812, inlinedAt: !5439)
!5489 = !DILocation(line: 152, column: 20, scope: !4789, inlinedAt: !5439)
!5490 = !DILocation(line: 152, column: 26, scope: !4789, inlinedAt: !5439)
!5491 = !DILocation(line: 152, column: 33, scope: !4789, inlinedAt: !5439)
!5492 = !DILocation(line: 152, column: 2, scope: !4789, inlinedAt: !5439)
!5493 = !DILocation(line: 153, column: 2, scope: !4789, inlinedAt: !5439)
!5494 = !DILocation(line: 154, column: 1, scope: !4789, inlinedAt: !5439)
!5495 = !DILocation(line: 191, column: 6, scope: !5374, inlinedAt: !5440)
!5496 = !DILocation(line: 192, column: 23, scope: !5373, inlinedAt: !5440)
!5497 = !DILocation(line: 192, column: 27, scope: !5373, inlinedAt: !5440)
!5498 = !DILocation(line: 192, column: 33, scope: !5373, inlinedAt: !5440)
!5499 = !DILocation(line: 192, column: 7, scope: !5373, inlinedAt: !5440)
!5500 = !DILocation(line: 192, column: 5, scope: !5373, inlinedAt: !5440)
!5501 = !DILocation(line: 192, column: 3, scope: !5373, inlinedAt: !5440)
!5502 = !DILocation(line: 193, column: 9, scope: !5374, inlinedAt: !5440)
!5503 = !DILocation(line: 466, column: 6, scope: !5441)
!5504 = !DILocation(line: 466, column: 6, scope: !5430)
!5505 = !DILocation(line: 467, column: 3, scope: !5441)
!5506 = !DILocation(line: 469, column: 21, scope: !5430)
!5507 = !DILocation(line: 469, column: 7, scope: !5430)
!5508 = !DILocation(line: 469, column: 5, scope: !5430)
!5509 = !DILocation(line: 470, column: 6, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !5430, file: !1, line: 470, column: 6)
!5511 = !DILocation(line: 470, column: 9, scope: !5510)
!5512 = !DILocation(line: 470, column: 6, scope: !5430)
!5513 = !DILocation(line: 471, column: 8, scope: !5514)
!5514 = distinct !DILexicalBlock(scope: !5515, file: !1, line: 471, column: 7)
!5515 = distinct !DILexicalBlock(scope: !5510, file: !1, line: 470, column: 18)
!5516 = !DILocation(line: 471, column: 12, scope: !5514)
!5517 = !DILocation(line: 471, column: 29, scope: !5514)
!5518 = !DILocation(line: 471, column: 32, scope: !5514)
!5519 = !DILocation(line: 471, column: 36, scope: !5514)
!5520 = !DILocation(line: 471, column: 41, scope: !5514)
!5521 = !DILocation(line: 471, column: 7, scope: !5515)
!5522 = !DILocation(line: 472, column: 4, scope: !5514)
!5523 = !DILocation(line: 472, column: 8, scope: !5514)
!5524 = !DILocation(line: 472, column: 13, scope: !5514)
!5525 = !DILocation(line: 472, column: 26, scope: !5514)
!5526 = !DILocation(line: 473, column: 19, scope: !5515)
!5527 = !DILocation(line: 473, column: 3, scope: !5515)
!5528 = !DILocation(line: 474, column: 2, scope: !5515)
!5529 = !DILocation(line: 475, column: 6, scope: !5435)
!5530 = !DILocation(line: 475, column: 10, scope: !5435)
!5531 = !DILocation(line: 475, column: 6, scope: !5430)
!5532 = !DILocation(line: 476, column: 23, scope: !5434)
!5533 = !DILocation(line: 476, column: 3, scope: !5434)
!5534 = !DILocation(line: 477, column: 7, scope: !5433)
!5535 = !DILocation(line: 477, column: 7, scope: !5434)
!5536 = !DILocation(line: 478, column: 4, scope: !5433)
!5537 = !DILocation(line: 479, column: 2, scope: !5434)
!5538 = !DILocation(line: 481, column: 14, scope: !5430)
!5539 = !DILocation(line: 481, column: 19, scope: !5430)
!5540 = !DILocation(line: 481, column: 2, scope: !5430)
!5541 = !DILocation(line: 482, column: 6, scope: !5542)
!5542 = distinct !DILexicalBlock(scope: !5430, file: !1, line: 482, column: 6)
!5543 = !DILocation(line: 482, column: 11, scope: !5542)
!5544 = !DILocation(line: 482, column: 16, scope: !5542)
!5545 = !DILocation(line: 482, column: 6, scope: !5430)
!5546 = !DILocation(line: 483, column: 3, scope: !5542)
!5547 = !DILocation(line: 483, column: 8, scope: !5542)
!5548 = !DILocation(line: 483, column: 13, scope: !5542)
!5549 = !DILocation(line: 483, column: 25, scope: !5542)
!5550 = !DILocation(line: 484, column: 12, scope: !5430)
!5551 = !DILocation(line: 484, column: 17, scope: !5430)
!5552 = !DILocation(line: 484, column: 2, scope: !5430)
!5553 = !DILocation(line: 485, column: 2, scope: !5430)
!5554 = !DILocation(line: 486, column: 1, scope: !5430)
!5555 = distinct !DISubprogram(name: "might_fault", scope: !5556, file: !5556, line: 315, type: !3754, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!5556 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!5557 = !DILocation(line: 315, column: 40, scope: !5555)
!5558 = distinct !DISubprogram(name: "tty_change_softcar", scope: !1, file: !1, line: 678, type: !3521, scopeLine: 679, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!5559 = !DILocalVariable(name: "tty", arg: 1, scope: !5558, file: !1, line: 678, type: !2893)
!5560 = !DILocation(line: 678, column: 50, scope: !5558)
!5561 = !DILocalVariable(name: "arg", arg: 2, scope: !5558, file: !1, line: 678, type: !128)
!5562 = !DILocation(line: 678, column: 59, scope: !5558)
!5563 = !DILocalVariable(name: "ret", scope: !5558, file: !1, line: 680, type: !128)
!5564 = !DILocation(line: 680, column: 6, scope: !5558)
!5565 = !DILocalVariable(name: "bit", scope: !5558, file: !1, line: 681, type: !128)
!5566 = !DILocation(line: 681, column: 6, scope: !5558)
!5567 = !DILocation(line: 681, column: 12, scope: !5558)
!5568 = !DILocalVariable(name: "old", scope: !5558, file: !1, line: 682, type: !3351)
!5569 = !DILocation(line: 682, column: 18, scope: !5558)
!5570 = !DILocation(line: 684, column: 14, scope: !5558)
!5571 = !DILocation(line: 684, column: 19, scope: !5558)
!5572 = !DILocation(line: 684, column: 2, scope: !5558)
!5573 = !DILocation(line: 685, column: 8, scope: !5558)
!5574 = !DILocation(line: 685, column: 13, scope: !5558)
!5575 = !DILocation(line: 686, column: 2, scope: !5558)
!5576 = !DILocation(line: 686, column: 7, scope: !5558)
!5577 = !DILocation(line: 686, column: 15, scope: !5558)
!5578 = !DILocation(line: 686, column: 23, scope: !5558)
!5579 = !DILocation(line: 687, column: 26, scope: !5558)
!5580 = !DILocation(line: 687, column: 2, scope: !5558)
!5581 = !DILocation(line: 687, column: 7, scope: !5558)
!5582 = !DILocation(line: 687, column: 15, scope: !5558)
!5583 = !DILocation(line: 687, column: 23, scope: !5558)
!5584 = !DILocation(line: 688, column: 6, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5558, file: !1, line: 688, column: 6)
!5586 = !DILocation(line: 688, column: 11, scope: !5585)
!5587 = !DILocation(line: 688, column: 16, scope: !5585)
!5588 = !DILocation(line: 688, column: 6, scope: !5558)
!5589 = !DILocation(line: 689, column: 3, scope: !5585)
!5590 = !DILocation(line: 689, column: 8, scope: !5585)
!5591 = !DILocation(line: 689, column: 13, scope: !5585)
!5592 = !DILocation(line: 689, column: 25, scope: !5585)
!5593 = !DILocation(line: 690, column: 6, scope: !5594)
!5594 = distinct !DILexicalBlock(scope: !5558, file: !1, line: 690, column: 6)
!5595 = !DILocation(line: 690, column: 23, scope: !5594)
!5596 = !DILocation(line: 690, column: 20, scope: !5594)
!5597 = !DILocation(line: 690, column: 6, scope: !5558)
!5598 = !DILocation(line: 691, column: 7, scope: !5594)
!5599 = !DILocation(line: 691, column: 3, scope: !5594)
!5600 = !DILocation(line: 692, column: 12, scope: !5558)
!5601 = !DILocation(line: 692, column: 17, scope: !5558)
!5602 = !DILocation(line: 692, column: 2, scope: !5558)
!5603 = !DILocation(line: 693, column: 9, scope: !5558)
!5604 = !DILocation(line: 693, column: 2, scope: !5558)
!5605 = distinct !DISubprogram(name: "tty_perform_flush", scope: !1, file: !1, line: 879, type: !5606, scopeLine: 880, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !223)
!5606 = !DISubroutineType(types: !5607)
!5607 = !{!128, !2893, !131}
!5608 = !DILocalVariable(name: "tty", arg: 1, scope: !5605, file: !1, line: 879, type: !2893)
!5609 = !DILocation(line: 879, column: 42, scope: !5605)
!5610 = !DILocalVariable(name: "arg", arg: 2, scope: !5605, file: !1, line: 879, type: !131)
!5611 = !DILocation(line: 879, column: 61, scope: !5605)
!5612 = !DILocalVariable(name: "ld", scope: !5605, file: !1, line: 881, type: !3595)
!5613 = !DILocation(line: 881, column: 20, scope: !5605)
!5614 = !DILocalVariable(name: "retval", scope: !5605, file: !1, line: 882, type: !128)
!5615 = !DILocation(line: 882, column: 6, scope: !5605)
!5616 = !DILocation(line: 882, column: 32, scope: !5605)
!5617 = !DILocation(line: 882, column: 15, scope: !5605)
!5618 = !DILocation(line: 883, column: 6, scope: !5619)
!5619 = distinct !DILexicalBlock(scope: !5605, file: !1, line: 883, column: 6)
!5620 = !DILocation(line: 883, column: 6, scope: !5605)
!5621 = !DILocation(line: 884, column: 10, scope: !5619)
!5622 = !DILocation(line: 884, column: 3, scope: !5619)
!5623 = !DILocation(line: 886, column: 26, scope: !5605)
!5624 = !DILocation(line: 886, column: 7, scope: !5605)
!5625 = !DILocation(line: 886, column: 5, scope: !5605)
!5626 = !DILocation(line: 887, column: 31, scope: !5605)
!5627 = !DILocation(line: 887, column: 36, scope: !5605)
!5628 = !DILocation(line: 887, column: 11, scope: !5605)
!5629 = !DILocation(line: 887, column: 9, scope: !5605)
!5630 = !DILocation(line: 888, column: 6, scope: !5631)
!5631 = distinct !DILexicalBlock(scope: !5605, file: !1, line: 888, column: 6)
!5632 = !DILocation(line: 888, column: 6, scope: !5605)
!5633 = !DILocation(line: 889, column: 19, scope: !5631)
!5634 = !DILocation(line: 889, column: 3, scope: !5631)
!5635 = !DILocation(line: 890, column: 9, scope: !5605)
!5636 = !DILocation(line: 890, column: 2, scope: !5605)
!5637 = !DILocation(line: 891, column: 1, scope: !5605)
!5638 = distinct !DISubprogram(name: "__tty_perform_flush", scope: !1, file: !1, line: 853, type: !5606, scopeLine: 854, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!5639 = !DILocalVariable(name: "tty", arg: 1, scope: !5638, file: !1, line: 853, type: !2893)
!5640 = !DILocation(line: 853, column: 51, scope: !5638)
!5641 = !DILocalVariable(name: "arg", arg: 2, scope: !5638, file: !1, line: 853, type: !131)
!5642 = !DILocation(line: 853, column: 70, scope: !5638)
!5643 = !DILocalVariable(name: "ld", scope: !5638, file: !1, line: 855, type: !3595)
!5644 = !DILocation(line: 855, column: 20, scope: !5638)
!5645 = !DILocation(line: 855, column: 25, scope: !5638)
!5646 = !DILocation(line: 855, column: 30, scope: !5638)
!5647 = !DILocation(line: 857, column: 10, scope: !5638)
!5648 = !DILocation(line: 857, column: 2, scope: !5638)
!5649 = !DILocation(line: 859, column: 7, scope: !5650)
!5650 = distinct !DILexicalBlock(scope: !5651, file: !1, line: 859, column: 7)
!5651 = distinct !DILexicalBlock(scope: !5638, file: !1, line: 857, column: 15)
!5652 = !DILocation(line: 859, column: 10, scope: !5650)
!5653 = !DILocation(line: 859, column: 13, scope: !5650)
!5654 = !DILocation(line: 859, column: 17, scope: !5650)
!5655 = !DILocation(line: 859, column: 22, scope: !5650)
!5656 = !DILocation(line: 859, column: 7, scope: !5651)
!5657 = !DILocation(line: 860, column: 4, scope: !5658)
!5658 = distinct !DILexicalBlock(scope: !5650, file: !1, line: 859, column: 36)
!5659 = !DILocation(line: 860, column: 8, scope: !5658)
!5660 = !DILocation(line: 860, column: 13, scope: !5658)
!5661 = !DILocation(line: 860, column: 26, scope: !5658)
!5662 = !DILocation(line: 861, column: 19, scope: !5658)
!5663 = !DILocation(line: 861, column: 4, scope: !5658)
!5664 = !DILocation(line: 862, column: 3, scope: !5658)
!5665 = !DILocation(line: 863, column: 3, scope: !5651)
!5666 = !DILocation(line: 865, column: 7, scope: !5667)
!5667 = distinct !DILexicalBlock(scope: !5651, file: !1, line: 865, column: 7)
!5668 = !DILocation(line: 865, column: 10, scope: !5667)
!5669 = !DILocation(line: 865, column: 13, scope: !5667)
!5670 = !DILocation(line: 865, column: 17, scope: !5667)
!5671 = !DILocation(line: 865, column: 22, scope: !5667)
!5672 = !DILocation(line: 865, column: 7, scope: !5651)
!5673 = !DILocation(line: 866, column: 4, scope: !5674)
!5674 = distinct !DILexicalBlock(scope: !5667, file: !1, line: 865, column: 36)
!5675 = !DILocation(line: 866, column: 8, scope: !5674)
!5676 = !DILocation(line: 866, column: 13, scope: !5674)
!5677 = !DILocation(line: 866, column: 26, scope: !5674)
!5678 = !DILocation(line: 867, column: 19, scope: !5674)
!5679 = !DILocation(line: 867, column: 4, scope: !5674)
!5680 = !DILocation(line: 868, column: 3, scope: !5674)
!5681 = !DILocation(line: 871, column: 27, scope: !5651)
!5682 = !DILocation(line: 871, column: 3, scope: !5651)
!5683 = !DILocation(line: 872, column: 3, scope: !5651)
!5684 = !DILocation(line: 874, column: 3, scope: !5651)
!5685 = !DILocation(line: 876, column: 2, scope: !5638)
!5686 = !DILocation(line: 877, column: 1, scope: !5638)
!5687 = distinct !DISubprogram(name: "n_tty_ioctl_helper", scope: !1, file: !1, line: 894, type: !3619, scopeLine: 896, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !223)
!5688 = !DILocalVariable(name: "lock", arg: 1, scope: !5689, file: !5690, line: 402, type: !2523)
!5689 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !5690, file: !5690, line: 402, type: !5691, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!5690 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!5691 = !DISubroutineType(types: !5692)
!5692 = !{null, !2523}
!5693 = !DILocation(line: 402, column: 57, scope: !5689, inlinedAt: !5694)
!5694 = distinct !DILocation(line: 919, column: 4, scope: !5695)
!5695 = distinct !DILexicalBlock(scope: !5696, file: !1, line: 904, column: 16)
!5696 = distinct !DILexicalBlock(scope: !5687, file: !1, line: 899, column: 15)
!5697 = !DILocalVariable(name: "lock", arg: 1, scope: !5698, file: !5690, line: 377, type: !2523)
!5698 = distinct !DISubprogram(name: "spin_lock_irq", scope: !5690, file: !5690, line: 377, type: !5691, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!5699 = !DILocation(line: 377, column: 55, scope: !5698, inlinedAt: !5700)
!5700 = distinct !DILocation(line: 914, column: 4, scope: !5695)
!5701 = !DILocation(line: 402, column: 57, scope: !5689, inlinedAt: !5702)
!5702 = distinct !DILocation(line: 911, column: 4, scope: !5695)
!5703 = !DILocation(line: 377, column: 55, scope: !5698, inlinedAt: !5704)
!5704 = distinct !DILocation(line: 906, column: 4, scope: !5695)
!5705 = !DILocalVariable(name: "tty", arg: 1, scope: !5687, file: !1, line: 894, type: !2893)
!5706 = !DILocation(line: 894, column: 43, scope: !5687)
!5707 = !DILocalVariable(name: "file", arg: 2, scope: !5687, file: !1, line: 894, type: !832)
!5708 = !DILocation(line: 894, column: 61, scope: !5687)
!5709 = !DILocalVariable(name: "cmd", arg: 3, scope: !5687, file: !1, line: 895, type: !5)
!5710 = !DILocation(line: 895, column: 23, scope: !5687)
!5711 = !DILocalVariable(name: "arg", arg: 4, scope: !5687, file: !1, line: 895, type: !131)
!5712 = !DILocation(line: 895, column: 42, scope: !5687)
!5713 = !DILocalVariable(name: "retval", scope: !5687, file: !1, line: 897, type: !128)
!5714 = !DILocation(line: 897, column: 6, scope: !5687)
!5715 = !DILocation(line: 899, column: 10, scope: !5687)
!5716 = !DILocation(line: 899, column: 2, scope: !5687)
!5717 = !DILocation(line: 901, column: 29, scope: !5696)
!5718 = !DILocation(line: 901, column: 12, scope: !5696)
!5719 = !DILocation(line: 901, column: 10, scope: !5696)
!5720 = !DILocation(line: 902, column: 7, scope: !5721)
!5721 = distinct !DILexicalBlock(scope: !5696, file: !1, line: 902, column: 7)
!5722 = !DILocation(line: 902, column: 7, scope: !5696)
!5723 = !DILocation(line: 903, column: 11, scope: !5721)
!5724 = !DILocation(line: 903, column: 4, scope: !5721)
!5725 = !DILocation(line: 904, column: 11, scope: !5696)
!5726 = !DILocation(line: 904, column: 3, scope: !5696)
!5727 = !DILocation(line: 906, column: 19, scope: !5695)
!5728 = !DILocation(line: 906, column: 24, scope: !5695)
!5729 = !DILocation(line: 379, column: 2, scope: !5730, inlinedAt: !5704)
!5730 = distinct !DILexicalBlock(scope: !5731, file: !5690, line: 379, column: 2)
!5731 = distinct !DILexicalBlock(scope: !5698, file: !5690, line: 379, column: 2)
!5732 = !DILocation(line: 379, column: 2, scope: !5733, inlinedAt: !5704)
!5733 = distinct !DILexicalBlock(scope: !5731, file: !5690, line: 379, column: 2)
!5734 = !{i32 -2145300926}
!5735 = !DILocation(line: 379, column: 2, scope: !5736, inlinedAt: !5704)
!5736 = distinct !DILexicalBlock(scope: !5733, file: !5690, line: 379, column: 2)
!5737 = !DILocation(line: 907, column: 9, scope: !5738)
!5738 = distinct !DILexicalBlock(scope: !5695, file: !1, line: 907, column: 8)
!5739 = !DILocation(line: 907, column: 14, scope: !5738)
!5740 = !DILocation(line: 907, column: 8, scope: !5695)
!5741 = !DILocation(line: 908, column: 5, scope: !5742)
!5742 = distinct !DILexicalBlock(scope: !5738, file: !1, line: 907, column: 28)
!5743 = !DILocation(line: 908, column: 10, scope: !5742)
!5744 = !DILocation(line: 908, column: 23, scope: !5742)
!5745 = !DILocation(line: 909, column: 16, scope: !5742)
!5746 = !DILocation(line: 909, column: 5, scope: !5742)
!5747 = !DILocation(line: 910, column: 4, scope: !5742)
!5748 = !DILocation(line: 911, column: 21, scope: !5695)
!5749 = !DILocation(line: 911, column: 26, scope: !5695)
!5750 = !DILocation(line: 404, column: 2, scope: !5751, inlinedAt: !5702)
!5751 = distinct !DILexicalBlock(scope: !5752, file: !5690, line: 404, column: 2)
!5752 = distinct !DILexicalBlock(scope: !5689, file: !5690, line: 404, column: 2)
!5753 = !DILocation(line: 404, column: 2, scope: !5754, inlinedAt: !5702)
!5754 = distinct !DILexicalBlock(scope: !5752, file: !5690, line: 404, column: 2)
!5755 = !{i32 -2145299178}
!5756 = !DILocation(line: 404, column: 2, scope: !5757, inlinedAt: !5702)
!5757 = distinct !DILexicalBlock(scope: !5754, file: !5690, line: 404, column: 2)
!5758 = !DILocation(line: 912, column: 4, scope: !5695)
!5759 = !DILocation(line: 914, column: 19, scope: !5695)
!5760 = !DILocation(line: 914, column: 24, scope: !5695)
!5761 = !DILocation(line: 379, column: 2, scope: !5730, inlinedAt: !5700)
!5762 = !DILocation(line: 379, column: 2, scope: !5733, inlinedAt: !5700)
!5763 = !DILocation(line: 379, column: 2, scope: !5736, inlinedAt: !5700)
!5764 = !DILocation(line: 915, column: 8, scope: !5765)
!5765 = distinct !DILexicalBlock(scope: !5695, file: !1, line: 915, column: 8)
!5766 = !DILocation(line: 915, column: 13, scope: !5765)
!5767 = !DILocation(line: 915, column: 8, scope: !5695)
!5768 = !DILocation(line: 916, column: 5, scope: !5769)
!5769 = distinct !DILexicalBlock(scope: !5765, file: !1, line: 915, column: 27)
!5770 = !DILocation(line: 916, column: 10, scope: !5769)
!5771 = !DILocation(line: 916, column: 23, scope: !5769)
!5772 = !DILocation(line: 917, column: 17, scope: !5769)
!5773 = !DILocation(line: 917, column: 5, scope: !5769)
!5774 = !DILocation(line: 918, column: 4, scope: !5769)
!5775 = !DILocation(line: 919, column: 21, scope: !5695)
!5776 = !DILocation(line: 919, column: 26, scope: !5695)
!5777 = !DILocation(line: 404, column: 2, scope: !5751, inlinedAt: !5694)
!5778 = !DILocation(line: 404, column: 2, scope: !5754, inlinedAt: !5694)
!5779 = !DILocation(line: 404, column: 2, scope: !5757, inlinedAt: !5694)
!5780 = !DILocation(line: 920, column: 4, scope: !5695)
!5781 = !DILocation(line: 922, column: 8, scope: !5782)
!5782 = distinct !DILexicalBlock(scope: !5695, file: !1, line: 922, column: 8)
!5783 = !DILocation(line: 922, column: 23, scope: !5782)
!5784 = !DILocation(line: 922, column: 8, scope: !5695)
!5785 = !DILocation(line: 923, column: 29, scope: !5782)
!5786 = !DILocation(line: 923, column: 34, scope: !5782)
!5787 = !DILocation(line: 923, column: 14, scope: !5782)
!5788 = !DILocation(line: 923, column: 12, scope: !5782)
!5789 = !DILocation(line: 923, column: 5, scope: !5782)
!5790 = !DILocation(line: 924, column: 4, scope: !5695)
!5791 = !DILocation(line: 926, column: 8, scope: !5792)
!5792 = distinct !DILexicalBlock(scope: !5695, file: !1, line: 926, column: 8)
!5793 = !DILocation(line: 926, column: 24, scope: !5792)
!5794 = !DILocation(line: 926, column: 8, scope: !5695)
!5795 = !DILocation(line: 927, column: 29, scope: !5792)
!5796 = !DILocation(line: 927, column: 34, scope: !5792)
!5797 = !DILocation(line: 927, column: 14, scope: !5792)
!5798 = !DILocation(line: 927, column: 12, scope: !5792)
!5799 = !DILocation(line: 927, column: 5, scope: !5792)
!5800 = !DILocation(line: 928, column: 4, scope: !5695)
!5801 = !DILocation(line: 930, column: 4, scope: !5695)
!5802 = !DILocation(line: 932, column: 10, scope: !5696)
!5803 = !DILocation(line: 932, column: 3, scope: !5696)
!5804 = !DILocation(line: 934, column: 29, scope: !5696)
!5805 = !DILocation(line: 934, column: 12, scope: !5696)
!5806 = !DILocation(line: 934, column: 10, scope: !5696)
!5807 = !DILocation(line: 935, column: 7, scope: !5808)
!5808 = distinct !DILexicalBlock(scope: !5696, file: !1, line: 935, column: 7)
!5809 = !DILocation(line: 935, column: 7, scope: !5696)
!5810 = !DILocation(line: 936, column: 11, scope: !5808)
!5811 = !DILocation(line: 936, column: 4, scope: !5808)
!5812 = !DILocation(line: 937, column: 30, scope: !5696)
!5813 = !DILocation(line: 937, column: 35, scope: !5696)
!5814 = !DILocation(line: 937, column: 10, scope: !5696)
!5815 = !DILocation(line: 937, column: 3, scope: !5696)
!5816 = !DILocation(line: 940, column: 25, scope: !5696)
!5817 = !DILocation(line: 940, column: 30, scope: !5696)
!5818 = !DILocation(line: 940, column: 36, scope: !5696)
!5819 = !DILocation(line: 940, column: 41, scope: !5696)
!5820 = !DILocation(line: 940, column: 10, scope: !5696)
!5821 = !DILocation(line: 940, column: 3, scope: !5696)
!5822 = !DILocation(line: 942, column: 1, scope: !5687)
!5823 = distinct !DISubprogram(name: "kasan_check_write", scope: !5824, file: !5824, line: 38, type: !5825, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!5824 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5825 = !DISubroutineType(types: !5826)
!5826 = !{!619, !4263, !5}
!5827 = !DILocalVariable(name: "p", arg: 1, scope: !5823, file: !5824, line: 38, type: !4263)
!5828 = !DILocation(line: 38, column: 59, scope: !5823)
!5829 = !DILocalVariable(name: "size", arg: 2, scope: !5823, file: !5824, line: 38, type: !5)
!5830 = !DILocation(line: 38, column: 75, scope: !5823)
!5831 = !DILocation(line: 40, column: 2, scope: !5823)
!5832 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5833, file: !5833, line: 178, type: !5834, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!5833 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5834 = !DISubroutineType(types: !5835)
!5835 = !{null, !4263, !753, !128}
!5836 = !DILocalVariable(name: "ptr", arg: 1, scope: !5832, file: !5833, line: 178, type: !4263)
!5837 = !DILocation(line: 178, column: 60, scope: !5832)
!5838 = !DILocalVariable(name: "size", arg: 2, scope: !5832, file: !5833, line: 178, type: !753)
!5839 = !DILocation(line: 178, column: 72, scope: !5832)
!5840 = !DILocalVariable(name: "type", arg: 3, scope: !5832, file: !5833, line: 179, type: !128)
!5841 = !DILocation(line: 179, column: 15, scope: !5832)
!5842 = !DILocation(line: 179, column: 23, scope: !5832)
!5843 = distinct !DISubprogram(name: "test_bit", scope: !5844, file: !5844, line: 132, type: !5845, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!5844 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5845 = !DISubroutineType(types: !5846)
!5846 = !{!619, !97, !5847}
!5847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5848, size: 64)
!5848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4247)
!5849 = !DILocalVariable(name: "nr", arg: 1, scope: !5850, file: !4250, line: 210, type: !97)
!5850 = distinct !DISubprogram(name: "variable_test_bit", scope: !4250, file: !4250, line: 210, type: !5845, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!5851 = !DILocation(line: 210, column: 52, scope: !5850, inlinedAt: !5852)
!5852 = distinct !DILocation(line: 135, column: 9, scope: !5843)
!5853 = !DILocalVariable(name: "addr", arg: 2, scope: !5850, file: !4250, line: 210, type: !5847)
!5854 = !DILocation(line: 210, column: 86, scope: !5850, inlinedAt: !5852)
!5855 = !DILocalVariable(name: "oldbit", scope: !5850, file: !4250, line: 212, type: !619)
!5856 = !DILocation(line: 212, column: 7, scope: !5850, inlinedAt: !5852)
!5857 = !DILocalVariable(name: "nr", arg: 1, scope: !5858, file: !4250, line: 204, type: !97)
!5858 = distinct !DISubprogram(name: "constant_test_bit", scope: !4250, file: !4250, line: 204, type: !5845, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!5859 = !DILocation(line: 204, column: 52, scope: !5858, inlinedAt: !5860)
!5860 = distinct !DILocation(line: 135, column: 9, scope: !5843)
!5861 = !DILocalVariable(name: "addr", arg: 2, scope: !5858, file: !4250, line: 204, type: !5847)
!5862 = !DILocation(line: 204, column: 86, scope: !5858, inlinedAt: !5860)
!5863 = !DILocalVariable(name: "v", arg: 1, scope: !5864, file: !4260, line: 69, type: !4263)
!5864 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4260, file: !4260, line: 69, type: !4261, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!5865 = !DILocation(line: 69, column: 73, scope: !5864, inlinedAt: !5866)
!5866 = distinct !DILocation(line: 134, column: 2, scope: !5843)
!5867 = !DILocalVariable(name: "size", arg: 2, scope: !5864, file: !4260, line: 69, type: !753)
!5868 = !DILocation(line: 69, column: 83, scope: !5864, inlinedAt: !5866)
!5869 = !DILocalVariable(name: "nr", arg: 1, scope: !5843, file: !5844, line: 132, type: !97)
!5870 = !DILocation(line: 132, column: 34, scope: !5843)
!5871 = !DILocalVariable(name: "addr", arg: 2, scope: !5843, file: !5844, line: 132, type: !5847)
!5872 = !DILocation(line: 132, column: 68, scope: !5843)
!5873 = !DILocation(line: 134, column: 25, scope: !5843)
!5874 = !DILocation(line: 134, column: 32, scope: !5843)
!5875 = !DILocation(line: 134, column: 30, scope: !5843)
!5876 = !DILocation(line: 71, column: 19, scope: !5864, inlinedAt: !5866)
!5877 = !DILocation(line: 71, column: 22, scope: !5864, inlinedAt: !5866)
!5878 = !DILocation(line: 71, column: 2, scope: !5864, inlinedAt: !5866)
!5879 = !DILocation(line: 72, column: 2, scope: !5864, inlinedAt: !5866)
!5880 = !DILocation(line: 135, column: 9, scope: !5843)
!5881 = !DILocation(line: 206, column: 19, scope: !5858, inlinedAt: !5860)
!5882 = !DILocation(line: 206, column: 22, scope: !5858, inlinedAt: !5860)
!5883 = !DILocation(line: 206, column: 15, scope: !5858, inlinedAt: !5860)
!5884 = !DILocation(line: 207, column: 4, scope: !5858, inlinedAt: !5860)
!5885 = !DILocation(line: 207, column: 9, scope: !5858, inlinedAt: !5860)
!5886 = !DILocation(line: 207, column: 12, scope: !5858, inlinedAt: !5860)
!5887 = !DILocation(line: 206, column: 44, scope: !5858, inlinedAt: !5860)
!5888 = !DILocation(line: 207, column: 37, scope: !5858, inlinedAt: !5860)
!5889 = !DILocation(line: 217, column: 33, scope: !5850, inlinedAt: !5852)
!5890 = !DILocation(line: 217, column: 46, scope: !5850, inlinedAt: !5852)
!5891 = !DILocation(line: 214, column: 2, scope: !5850, inlinedAt: !5852)
!5892 = !{i32 -2147068722, i32 -2147068662}
!5893 = !DILocation(line: 219, column: 9, scope: !5850, inlinedAt: !5852)
!5894 = !DILocation(line: 135, column: 2, scope: !5843)
!5895 = distinct !DISubprogram(name: "kasan_check_read", scope: !5824, file: !5824, line: 34, type: !5825, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!5896 = !DILocalVariable(name: "p", arg: 1, scope: !5895, file: !5824, line: 34, type: !4263)
!5897 = !DILocation(line: 34, column: 58, scope: !5895)
!5898 = !DILocalVariable(name: "size", arg: 2, scope: !5895, file: !5824, line: 34, type: !5)
!5899 = !DILocation(line: 34, column: 74, scope: !5895)
!5900 = !DILocation(line: 36, column: 2, scope: !5895)
!5901 = distinct !DISubprogram(name: "user_termio_to_kernel_termios", scope: !5221, file: !5221, line: 20, type: !5902, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!5902 = !DISubroutineType(types: !5903)
!5903 = !{!128, !3456, !5904}
!5904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5905, size: 64)
!5905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!5906 = !DILocation(line: 138, column: 29, scope: !4789, inlinedAt: !5907)
!5907 = distinct !DILocation(line: 191, column: 6, scope: !5373, inlinedAt: !5908)
!5908 = distinct !DILocation(line: 44, column: 6, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5901, file: !5221, line: 44, column: 6)
!5910 = !DILocation(line: 138, column: 42, scope: !4789, inlinedAt: !5907)
!5911 = !DILocation(line: 138, column: 54, scope: !4789, inlinedAt: !5907)
!5912 = !DILocation(line: 140, column: 6, scope: !4789, inlinedAt: !5907)
!5913 = !DILocation(line: 150, column: 6, scope: !4811, inlinedAt: !5907)
!5914 = !DILocation(line: 189, column: 22, scope: !5374, inlinedAt: !5908)
!5915 = !DILocation(line: 189, column: 45, scope: !5374, inlinedAt: !5908)
!5916 = !DILocation(line: 189, column: 65, scope: !5374, inlinedAt: !5908)
!5917 = !DILocalVariable(name: "termios", arg: 1, scope: !5901, file: !5221, line: 20, type: !3456)
!5918 = !DILocation(line: 20, column: 66, scope: !5901)
!5919 = !DILocalVariable(name: "termio", arg: 2, scope: !5901, file: !5221, line: 21, type: !5904)
!5920 = !DILocation(line: 21, column: 35, scope: !5901)
!5921 = !DILocalVariable(name: "tmp", scope: !5901, file: !5221, line: 23, type: !142)
!5922 = !DILocation(line: 23, column: 17, scope: !5901)
!5923 = !DILocation(line: 25, column: 6, scope: !5924)
!5924 = distinct !DILexicalBlock(scope: !5925, file: !5221, line: 25, column: 6)
!5925 = distinct !DILexicalBlock(scope: !5901, file: !5221, line: 25, column: 6)
!5926 = !DILocalVariable(name: "__ret_gu", scope: !5927, file: !5221, line: 25, type: !128)
!5927 = distinct !DILexicalBlock(scope: !5924, file: !5221, line: 25, column: 6)
!5928 = !DILocation(line: 25, column: 6, scope: !5927)
!5929 = !DILocalVariable(name: "__val_gu", scope: !5927, file: !5221, line: 25, type: !142)
!5930 = !{i32 -2144587457}
!5931 = !DILocation(line: 25, column: 38, scope: !5925)
!5932 = !DILocation(line: 25, column: 6, scope: !5901)
!5933 = !DILocation(line: 26, column: 3, scope: !5925)
!5934 = !DILocation(line: 27, column: 35, scope: !5901)
!5935 = !DILocation(line: 27, column: 44, scope: !5901)
!5936 = !DILocation(line: 27, column: 33, scope: !5901)
!5937 = !DILocation(line: 27, column: 55, scope: !5901)
!5938 = !DILocation(line: 27, column: 53, scope: !5901)
!5939 = !DILocation(line: 27, column: 2, scope: !5901)
!5940 = !DILocation(line: 27, column: 11, scope: !5901)
!5941 = !DILocation(line: 27, column: 19, scope: !5901)
!5942 = !DILocation(line: 29, column: 6, scope: !5943)
!5943 = distinct !DILexicalBlock(scope: !5944, file: !5221, line: 29, column: 6)
!5944 = distinct !DILexicalBlock(scope: !5901, file: !5221, line: 29, column: 6)
!5945 = !DILocalVariable(name: "__ret_gu", scope: !5946, file: !5221, line: 29, type: !128)
!5946 = distinct !DILexicalBlock(scope: !5943, file: !5221, line: 29, column: 6)
!5947 = !DILocation(line: 29, column: 6, scope: !5946)
!5948 = !DILocalVariable(name: "__val_gu", scope: !5946, file: !5221, line: 29, type: !142)
!5949 = !{i32 -2144585560}
!5950 = !DILocation(line: 29, column: 38, scope: !5944)
!5951 = !DILocation(line: 29, column: 6, scope: !5901)
!5952 = !DILocation(line: 30, column: 3, scope: !5944)
!5953 = !DILocation(line: 31, column: 35, scope: !5901)
!5954 = !DILocation(line: 31, column: 44, scope: !5901)
!5955 = !DILocation(line: 31, column: 33, scope: !5901)
!5956 = !DILocation(line: 31, column: 55, scope: !5901)
!5957 = !DILocation(line: 31, column: 53, scope: !5901)
!5958 = !DILocation(line: 31, column: 2, scope: !5901)
!5959 = !DILocation(line: 31, column: 11, scope: !5901)
!5960 = !DILocation(line: 31, column: 19, scope: !5901)
!5961 = !DILocation(line: 33, column: 6, scope: !5962)
!5962 = distinct !DILexicalBlock(scope: !5963, file: !5221, line: 33, column: 6)
!5963 = distinct !DILexicalBlock(scope: !5901, file: !5221, line: 33, column: 6)
!5964 = !DILocalVariable(name: "__ret_gu", scope: !5965, file: !5221, line: 33, type: !128)
!5965 = distinct !DILexicalBlock(scope: !5962, file: !5221, line: 33, column: 6)
!5966 = !DILocation(line: 33, column: 6, scope: !5965)
!5967 = !DILocalVariable(name: "__val_gu", scope: !5965, file: !5221, line: 33, type: !142)
!5968 = !{i32 -2144583663}
!5969 = !DILocation(line: 33, column: 38, scope: !5963)
!5970 = !DILocation(line: 33, column: 6, scope: !5901)
!5971 = !DILocation(line: 34, column: 3, scope: !5963)
!5972 = !DILocation(line: 35, column: 35, scope: !5901)
!5973 = !DILocation(line: 35, column: 44, scope: !5901)
!5974 = !DILocation(line: 35, column: 33, scope: !5901)
!5975 = !DILocation(line: 35, column: 55, scope: !5901)
!5976 = !DILocation(line: 35, column: 53, scope: !5901)
!5977 = !DILocation(line: 35, column: 2, scope: !5901)
!5978 = !DILocation(line: 35, column: 11, scope: !5901)
!5979 = !DILocation(line: 35, column: 19, scope: !5901)
!5980 = !DILocation(line: 37, column: 6, scope: !5981)
!5981 = distinct !DILexicalBlock(scope: !5982, file: !5221, line: 37, column: 6)
!5982 = distinct !DILexicalBlock(scope: !5901, file: !5221, line: 37, column: 6)
!5983 = !DILocalVariable(name: "__ret_gu", scope: !5984, file: !5221, line: 37, type: !128)
!5984 = distinct !DILexicalBlock(scope: !5981, file: !5221, line: 37, column: 6)
!5985 = !DILocation(line: 37, column: 6, scope: !5984)
!5986 = !DILocalVariable(name: "__val_gu", scope: !5984, file: !5221, line: 37, type: !142)
!5987 = !{i32 -2144581766}
!5988 = !DILocation(line: 37, column: 38, scope: !5982)
!5989 = !DILocation(line: 37, column: 6, scope: !5901)
!5990 = !DILocation(line: 38, column: 3, scope: !5982)
!5991 = !DILocation(line: 39, column: 35, scope: !5901)
!5992 = !DILocation(line: 39, column: 44, scope: !5901)
!5993 = !DILocation(line: 39, column: 33, scope: !5901)
!5994 = !DILocation(line: 39, column: 55, scope: !5901)
!5995 = !DILocation(line: 39, column: 53, scope: !5901)
!5996 = !DILocation(line: 39, column: 2, scope: !5901)
!5997 = !DILocation(line: 39, column: 11, scope: !5901)
!5998 = !DILocation(line: 39, column: 19, scope: !5901)
!5999 = !DILocation(line: 41, column: 6, scope: !6000)
!6000 = distinct !DILexicalBlock(scope: !6001, file: !5221, line: 41, column: 6)
!6001 = distinct !DILexicalBlock(scope: !5901, file: !5221, line: 41, column: 6)
!6002 = !DILocalVariable(name: "__ret_gu", scope: !6003, file: !5221, line: 41, type: !128)
!6003 = distinct !DILexicalBlock(scope: !6000, file: !5221, line: 41, column: 6)
!6004 = !DILocation(line: 41, column: 6, scope: !6003)
!6005 = !DILocalVariable(name: "__val_gu", scope: !6003, file: !5221, line: 41, type: !110)
!6006 = !{i32 -2144579858}
!6007 = !DILocation(line: 41, column: 49, scope: !6001)
!6008 = !DILocation(line: 41, column: 6, scope: !5901)
!6009 = !DILocation(line: 42, column: 3, scope: !6001)
!6010 = !DILocation(line: 44, column: 21, scope: !5909)
!6011 = !DILocation(line: 44, column: 30, scope: !5909)
!6012 = !DILocation(line: 44, column: 36, scope: !5909)
!6013 = !DILocation(line: 44, column: 44, scope: !5909)
!6014 = !DILocation(line: 191, column: 6, scope: !5373, inlinedAt: !5908)
!6015 = !DILocation(line: 141, column: 6, scope: !4991, inlinedAt: !5907)
!6016 = !DILocation(line: 0, scope: !4991, inlinedAt: !5907)
!6017 = !DILocation(line: 141, column: 6, scope: !4789, inlinedAt: !5907)
!6018 = !DILocation(line: 142, column: 29, scope: !4995, inlinedAt: !5907)
!6019 = !DILocation(line: 142, column: 8, scope: !4995, inlinedAt: !5907)
!6020 = !DILocation(line: 142, column: 7, scope: !4996, inlinedAt: !5907)
!6021 = !DILocation(line: 143, column: 18, scope: !4995, inlinedAt: !5907)
!6022 = !DILocation(line: 143, column: 22, scope: !4995, inlinedAt: !5907)
!6023 = !DILocation(line: 143, column: 4, scope: !4995, inlinedAt: !5907)
!6024 = !DILocation(line: 144, column: 12, scope: !5003, inlinedAt: !5907)
!6025 = !DILocation(line: 144, column: 12, scope: !4995, inlinedAt: !5907)
!6026 = !DILocation(line: 145, column: 4, scope: !5003, inlinedAt: !5907)
!6027 = !DILocation(line: 147, column: 4, scope: !5003, inlinedAt: !5907)
!6028 = !DILocation(line: 148, column: 3, scope: !4996, inlinedAt: !5907)
!6029 = !DILocation(line: 150, column: 6, scope: !5009, inlinedAt: !5907)
!6030 = !DILocation(line: 150, column: 6, scope: !5011, inlinedAt: !5907)
!6031 = !DILocation(line: 150, column: 6, scope: !5015, inlinedAt: !5907)
!6032 = !DILocation(line: 150, column: 6, scope: !5012, inlinedAt: !5907)
!6033 = !DILocation(line: 150, column: 6, scope: !4812, inlinedAt: !5907)
!6034 = !DILocation(line: 150, column: 6, scope: !4789, inlinedAt: !5907)
!6035 = !DILocation(line: 151, column: 3, scope: !4812, inlinedAt: !5907)
!6036 = !DILocation(line: 152, column: 20, scope: !4789, inlinedAt: !5907)
!6037 = !DILocation(line: 152, column: 26, scope: !4789, inlinedAt: !5907)
!6038 = !DILocation(line: 152, column: 33, scope: !4789, inlinedAt: !5907)
!6039 = !DILocation(line: 152, column: 2, scope: !4789, inlinedAt: !5907)
!6040 = !DILocation(line: 153, column: 2, scope: !4789, inlinedAt: !5907)
!6041 = !DILocation(line: 154, column: 1, scope: !4789, inlinedAt: !5907)
!6042 = !DILocation(line: 191, column: 6, scope: !5374, inlinedAt: !5908)
!6043 = !DILocation(line: 192, column: 23, scope: !5373, inlinedAt: !5908)
!6044 = !DILocation(line: 192, column: 27, scope: !5373, inlinedAt: !5908)
!6045 = !DILocation(line: 192, column: 33, scope: !5373, inlinedAt: !5908)
!6046 = !DILocation(line: 192, column: 7, scope: !5373, inlinedAt: !5908)
!6047 = !DILocation(line: 192, column: 5, scope: !5373, inlinedAt: !5908)
!6048 = !DILocation(line: 192, column: 3, scope: !5373, inlinedAt: !5908)
!6049 = !DILocation(line: 193, column: 9, scope: !5374, inlinedAt: !5908)
!6050 = !DILocation(line: 44, column: 55, scope: !5909)
!6051 = !DILocation(line: 44, column: 6, scope: !5901)
!6052 = !DILocation(line: 45, column: 3, scope: !5909)
!6053 = !DILocation(line: 47, column: 2, scope: !5901)
!6054 = !DILabel(scope: !5901, name: "fault", file: !5221, line: 49)
!6055 = !DILocation(line: 49, column: 2, scope: !5901)
!6056 = !DILocation(line: 50, column: 2, scope: !5901)
!6057 = !DILocation(line: 51, column: 1, scope: !5901)
!6058 = distinct !DISubprogram(name: "user_termios_to_kernel_termios", scope: !5221, file: !5221, line: 71, type: !6059, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!6059 = !DISubroutineType(types: !6060)
!6060 = !{!128, !3456, !115}
!6061 = !DILocation(line: 138, column: 29, scope: !4789, inlinedAt: !6062)
!6062 = distinct !DILocation(line: 191, column: 6, scope: !5373, inlinedAt: !6063)
!6063 = distinct !DILocation(line: 74, column: 9, scope: !6058)
!6064 = !DILocation(line: 138, column: 42, scope: !4789, inlinedAt: !6062)
!6065 = !DILocation(line: 138, column: 54, scope: !4789, inlinedAt: !6062)
!6066 = !DILocation(line: 140, column: 6, scope: !4789, inlinedAt: !6062)
!6067 = !DILocation(line: 150, column: 6, scope: !4811, inlinedAt: !6062)
!6068 = !DILocation(line: 189, column: 22, scope: !5374, inlinedAt: !6063)
!6069 = !DILocation(line: 189, column: 45, scope: !5374, inlinedAt: !6063)
!6070 = !DILocation(line: 189, column: 65, scope: !5374, inlinedAt: !6063)
!6071 = !DILocalVariable(name: "k", arg: 1, scope: !6058, file: !5221, line: 71, type: !3456)
!6072 = !DILocation(line: 71, column: 67, scope: !6058)
!6073 = !DILocalVariable(name: "u", arg: 2, scope: !6058, file: !5221, line: 72, type: !115)
!6074 = !DILocation(line: 72, column: 32, scope: !6058)
!6075 = !DILocation(line: 74, column: 24, scope: !6058)
!6076 = !DILocation(line: 74, column: 27, scope: !6058)
!6077 = !DILocation(line: 191, column: 6, scope: !5373, inlinedAt: !6063)
!6078 = !DILocation(line: 141, column: 6, scope: !4991, inlinedAt: !6062)
!6079 = !DILocation(line: 0, scope: !4991, inlinedAt: !6062)
!6080 = !DILocation(line: 141, column: 6, scope: !4789, inlinedAt: !6062)
!6081 = !DILocation(line: 142, column: 29, scope: !4995, inlinedAt: !6062)
!6082 = !DILocation(line: 142, column: 8, scope: !4995, inlinedAt: !6062)
!6083 = !DILocation(line: 142, column: 7, scope: !4996, inlinedAt: !6062)
!6084 = !DILocation(line: 143, column: 18, scope: !4995, inlinedAt: !6062)
!6085 = !DILocation(line: 143, column: 22, scope: !4995, inlinedAt: !6062)
!6086 = !DILocation(line: 143, column: 4, scope: !4995, inlinedAt: !6062)
!6087 = !DILocation(line: 144, column: 12, scope: !5003, inlinedAt: !6062)
!6088 = !DILocation(line: 144, column: 12, scope: !4995, inlinedAt: !6062)
!6089 = !DILocation(line: 145, column: 4, scope: !5003, inlinedAt: !6062)
!6090 = !DILocation(line: 147, column: 4, scope: !5003, inlinedAt: !6062)
!6091 = !DILocation(line: 148, column: 3, scope: !4996, inlinedAt: !6062)
!6092 = !DILocation(line: 150, column: 6, scope: !5009, inlinedAt: !6062)
!6093 = !DILocation(line: 150, column: 6, scope: !5011, inlinedAt: !6062)
!6094 = !DILocation(line: 150, column: 6, scope: !5015, inlinedAt: !6062)
!6095 = !DILocation(line: 150, column: 6, scope: !5012, inlinedAt: !6062)
!6096 = !DILocation(line: 150, column: 6, scope: !4812, inlinedAt: !6062)
!6097 = !DILocation(line: 150, column: 6, scope: !4789, inlinedAt: !6062)
!6098 = !DILocation(line: 151, column: 3, scope: !4812, inlinedAt: !6062)
!6099 = !DILocation(line: 152, column: 20, scope: !4789, inlinedAt: !6062)
!6100 = !DILocation(line: 152, column: 26, scope: !4789, inlinedAt: !6062)
!6101 = !DILocation(line: 152, column: 33, scope: !4789, inlinedAt: !6062)
!6102 = !DILocation(line: 152, column: 2, scope: !4789, inlinedAt: !6062)
!6103 = !DILocation(line: 153, column: 2, scope: !4789, inlinedAt: !6062)
!6104 = !DILocation(line: 154, column: 1, scope: !4789, inlinedAt: !6062)
!6105 = !DILocation(line: 191, column: 6, scope: !5374, inlinedAt: !6063)
!6106 = !DILocation(line: 192, column: 23, scope: !5373, inlinedAt: !6063)
!6107 = !DILocation(line: 192, column: 27, scope: !5373, inlinedAt: !6063)
!6108 = !DILocation(line: 192, column: 33, scope: !5373, inlinedAt: !6063)
!6109 = !DILocation(line: 192, column: 7, scope: !5373, inlinedAt: !6063)
!6110 = !DILocation(line: 192, column: 5, scope: !5373, inlinedAt: !6063)
!6111 = !DILocation(line: 192, column: 3, scope: !5373, inlinedAt: !6063)
!6112 = !DILocation(line: 193, column: 9, scope: !5374, inlinedAt: !6063)
!6113 = !DILocation(line: 74, column: 9, scope: !6058)
!6114 = !DILocation(line: 74, column: 2, scope: !6058)
!6115 = distinct !DISubprogram(name: "signal_pending", scope: !2841, file: !2841, line: 356, type: !6116, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!6116 = !DISubroutineType(types: !6117)
!6117 = !{!128, !152}
!6118 = !DILocalVariable(name: "p", arg: 1, scope: !6115, file: !2841, line: 356, type: !152)
!6119 = !DILocation(line: 356, column: 54, scope: !6115)
!6120 = !DILocation(line: 358, column: 9, scope: !6115)
!6121 = !DILocation(line: 358, column: 2, scope: !6115)
!6122 = distinct !DISubprogram(name: "copy_overflow", scope: !4790, file: !4790, line: 132, type: !6123, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!6123 = !DISubroutineType(types: !6124)
!6124 = !{null, !128, !131}
!6125 = !DILocalVariable(name: "size", arg: 1, scope: !6122, file: !4790, line: 132, type: !128)
!6126 = !DILocation(line: 132, column: 38, scope: !6122)
!6127 = !DILocalVariable(name: "count", arg: 2, scope: !6122, file: !4790, line: 132, type: !131)
!6128 = !DILocation(line: 132, column: 58, scope: !6122)
!6129 = !DILocalVariable(name: "__ret_warn_on", scope: !6130, file: !4790, line: 134, type: !128)
!6130 = distinct !DILexicalBlock(scope: !6122, file: !4790, line: 134, column: 2)
!6131 = !DILocation(line: 134, column: 2, scope: !6130)
!6132 = !DILocation(line: 134, column: 2, scope: !6133)
!6133 = distinct !DILexicalBlock(scope: !6130, file: !4790, line: 134, column: 2)
!6134 = !DILocation(line: 134, column: 2, scope: !6135)
!6135 = distinct !DILexicalBlock(scope: !6133, file: !4790, line: 134, column: 2)
!6136 = !DILocation(line: 134, column: 2, scope: !6137)
!6137 = distinct !DILexicalBlock(scope: !6135, file: !4790, line: 134, column: 2)
!6138 = !DILocation(line: 134, column: 2, scope: !6139)
!6139 = distinct !DILexicalBlock(scope: !6135, file: !4790, line: 134, column: 2)
!6140 = !DILocation(line: 134, column: 2, scope: !6141)
!6141 = distinct !DILexicalBlock(scope: !6139, file: !4790, line: 134, column: 2)
!6142 = !DILocation(line: 134, column: 2, scope: !6143)
!6143 = distinct !DILexicalBlock(scope: !6139, file: !4790, line: 134, column: 2)
!6144 = !{i32 -2145547127, i32 -2145547098, i32 -2145547052, i32 -2145546994, i32 -2145546940, i32 -2145546886, i32 -2145546831, i32 -2145546800}
!6145 = !DILocation(line: 134, column: 2, scope: !6146)
!6146 = distinct !DILexicalBlock(scope: !6139, file: !4790, line: 134, column: 2)
!6147 = !{i32 -2145546380, i32 -2145546373, i32 -2145546321, i32 -2145546290, i32 -2145546260}
!6148 = !DILocation(line: 134, column: 2, scope: !6149)
!6149 = distinct !DILexicalBlock(scope: !6139, file: !4790, line: 134, column: 2)
!6150 = !DILocation(line: 134, column: 2, scope: !6151)
!6151 = distinct !DILexicalBlock(scope: !6135, file: !4790, line: 134, column: 2)
!6152 = !DILocation(line: 135, column: 1, scope: !6122)
!6153 = distinct !DISubprogram(name: "check_object_size", scope: !4790, file: !4790, line: 122, type: !6154, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!6154 = !DISubroutineType(types: !6155)
!6155 = !{null, !2088, !131, !619}
!6156 = !DILocalVariable(name: "ptr", arg: 1, scope: !6153, file: !4790, line: 122, type: !2088)
!6157 = !DILocation(line: 122, column: 50, scope: !6153)
!6158 = !DILocalVariable(name: "n", arg: 2, scope: !6153, file: !4790, line: 122, type: !131)
!6159 = !DILocation(line: 122, column: 69, scope: !6153)
!6160 = !DILocalVariable(name: "to_user", arg: 3, scope: !6153, file: !4790, line: 123, type: !619)
!6161 = !DILocation(line: 123, column: 15, scope: !6153)
!6162 = !DILocation(line: 124, column: 3, scope: !6153)
!6163 = distinct !DISubprogram(name: "test_tsk_thread_flag", scope: !154, file: !154, line: 1828, type: !6164, scopeLine: 1829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!6164 = !DISubroutineType(types: !6165)
!6165 = !{!128, !152, !128}
!6166 = !DILocalVariable(name: "tsk", arg: 1, scope: !6163, file: !154, line: 1828, type: !152)
!6167 = !DILocation(line: 1828, column: 60, scope: !6163)
!6168 = !DILocalVariable(name: "flag", arg: 2, scope: !6163, file: !154, line: 1828, type: !128)
!6169 = !DILocation(line: 1828, column: 69, scope: !6163)
!6170 = !DILocation(line: 1830, column: 46, scope: !6163)
!6171 = !DILocation(line: 1830, column: 29, scope: !6163)
!6172 = !DILocation(line: 1830, column: 52, scope: !6163)
!6173 = !DILocation(line: 1830, column: 9, scope: !6163)
!6174 = !DILocation(line: 1830, column: 2, scope: !6163)
!6175 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !4790, file: !4790, line: 82, type: !6176, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!6176 = !DISubroutineType(types: !6177)
!6177 = !{!128, !6178, !128}
!6178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!6179 = !DILocalVariable(name: "ti", arg: 1, scope: !6175, file: !4790, line: 82, type: !6178)
!6180 = !DILocation(line: 82, column: 59, scope: !6175)
!6181 = !DILocalVariable(name: "flag", arg: 2, scope: !6175, file: !4790, line: 82, type: !128)
!6182 = !DILocation(line: 82, column: 67, scope: !6175)
!6183 = !DILocation(line: 84, column: 18, scope: !6175)
!6184 = !DILocation(line: 84, column: 42, scope: !6175)
!6185 = !DILocation(line: 84, column: 46, scope: !6175)
!6186 = !DILocation(line: 84, column: 9, scope: !6175)
!6187 = !DILocation(line: 84, column: 2, scope: !6175)
!6188 = distinct !DISubprogram(name: "task_thread_info", scope: !154, file: !154, line: 1729, type: !6189, scopeLine: 1730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!6189 = !DISubroutineType(types: !6190)
!6190 = !{!6178, !152}
!6191 = !DILocalVariable(name: "task", arg: 1, scope: !6188, file: !154, line: 1729, type: !152)
!6192 = !DILocation(line: 1729, column: 72, scope: !6188)
!6193 = !DILocation(line: 1731, column: 10, scope: !6188)
!6194 = !DILocation(line: 1731, column: 16, scope: !6188)
!6195 = !DILocation(line: 1731, column: 2, scope: !6188)
!6196 = distinct !DISubprogram(name: "kernel_termios_to_user_termio", scope: !5221, file: !5221, line: 56, type: !6197, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!6197 = !DISubroutineType(types: !6198)
!6198 = !{!128, !137, !3456}
!6199 = !DILocation(line: 138, column: 29, scope: !4789, inlinedAt: !6200)
!6200 = distinct !DILocation(line: 199, column: 6, scope: !4795, inlinedAt: !6201)
!6201 = distinct !DILocation(line: 64, column: 6, scope: !6202)
!6202 = distinct !DILexicalBlock(scope: !6196, file: !5221, line: 59, column: 6)
!6203 = !DILocation(line: 138, column: 42, scope: !4789, inlinedAt: !6200)
!6204 = !DILocation(line: 138, column: 54, scope: !4789, inlinedAt: !6200)
!6205 = !DILocation(line: 140, column: 6, scope: !4789, inlinedAt: !6200)
!6206 = !DILocation(line: 150, column: 6, scope: !4811, inlinedAt: !6200)
!6207 = !DILocation(line: 197, column: 27, scope: !4797, inlinedAt: !6201)
!6208 = !DILocation(line: 197, column: 43, scope: !4797, inlinedAt: !6201)
!6209 = !DILocation(line: 197, column: 63, scope: !4797, inlinedAt: !6201)
!6210 = !DILocalVariable(name: "termio", arg: 1, scope: !6196, file: !5221, line: 56, type: !137)
!6211 = !DILocation(line: 56, column: 71, scope: !6196)
!6212 = !DILocalVariable(name: "termios", arg: 2, scope: !6196, file: !5221, line: 57, type: !3456)
!6213 = !DILocation(line: 57, column: 24, scope: !6196)
!6214 = !DILocation(line: 59, column: 6, scope: !6215)
!6215 = distinct !DILexicalBlock(scope: !6202, file: !5221, line: 59, column: 6)
!6216 = !DILocalVariable(name: "__ret_pu", scope: !6217, file: !5221, line: 59, type: !128)
!6217 = distinct !DILexicalBlock(scope: !6215, file: !5221, line: 59, column: 6)
!6218 = !DILocation(line: 59, column: 6, scope: !6217)
!6219 = !DILocalVariable(name: "__ptr_pu", scope: !6217, file: !5221, line: 59, type: !98)
!6220 = !DILocalVariable(name: "__val_pu", scope: !6217, file: !5221, line: 59, type: !142)
!6221 = !{i32 -2144577702}
!6222 = !DILocation(line: 59, column: 51, scope: !6202)
!6223 = !DILocation(line: 59, column: 55, scope: !6202)
!6224 = !DILocation(line: 60, column: 6, scope: !6225)
!6225 = distinct !DILexicalBlock(scope: !6202, file: !5221, line: 60, column: 6)
!6226 = !DILocalVariable(name: "__ret_pu", scope: !6227, file: !5221, line: 60, type: !128)
!6227 = distinct !DILexicalBlock(scope: !6225, file: !5221, line: 60, column: 6)
!6228 = !DILocation(line: 60, column: 6, scope: !6227)
!6229 = !DILocalVariable(name: "__ptr_pu", scope: !6227, file: !5221, line: 60, type: !98)
!6230 = !DILocalVariable(name: "__val_pu", scope: !6227, file: !5221, line: 60, type: !142)
!6231 = !{i32 -2144576872}
!6232 = !DILocation(line: 60, column: 51, scope: !6202)
!6233 = !DILocation(line: 60, column: 55, scope: !6202)
!6234 = !DILocation(line: 61, column: 6, scope: !6235)
!6235 = distinct !DILexicalBlock(scope: !6202, file: !5221, line: 61, column: 6)
!6236 = !DILocalVariable(name: "__ret_pu", scope: !6237, file: !5221, line: 61, type: !128)
!6237 = distinct !DILexicalBlock(scope: !6235, file: !5221, line: 61, column: 6)
!6238 = !DILocation(line: 61, column: 6, scope: !6237)
!6239 = !DILocalVariable(name: "__ptr_pu", scope: !6237, file: !5221, line: 61, type: !98)
!6240 = !DILocalVariable(name: "__val_pu", scope: !6237, file: !5221, line: 61, type: !142)
!6241 = !{i32 -2144576042}
!6242 = !DILocation(line: 61, column: 51, scope: !6202)
!6243 = !DILocation(line: 61, column: 55, scope: !6202)
!6244 = !DILocation(line: 62, column: 6, scope: !6245)
!6245 = distinct !DILexicalBlock(scope: !6202, file: !5221, line: 62, column: 6)
!6246 = !DILocalVariable(name: "__ret_pu", scope: !6247, file: !5221, line: 62, type: !128)
!6247 = distinct !DILexicalBlock(scope: !6245, file: !5221, line: 62, column: 6)
!6248 = !DILocation(line: 62, column: 6, scope: !6247)
!6249 = !DILocalVariable(name: "__ptr_pu", scope: !6247, file: !5221, line: 62, type: !98)
!6250 = !DILocalVariable(name: "__val_pu", scope: !6247, file: !5221, line: 62, type: !142)
!6251 = !{i32 -2144575212}
!6252 = !DILocation(line: 62, column: 51, scope: !6202)
!6253 = !DILocation(line: 62, column: 55, scope: !6202)
!6254 = !DILocation(line: 63, column: 6, scope: !6255)
!6255 = distinct !DILexicalBlock(scope: !6202, file: !5221, line: 63, column: 6)
!6256 = !DILocalVariable(name: "__ret_pu", scope: !6257, file: !5221, line: 63, type: !128)
!6257 = distinct !DILexicalBlock(scope: !6255, file: !5221, line: 63, column: 6)
!6258 = !DILocation(line: 63, column: 6, scope: !6257)
!6259 = !DILocalVariable(name: "__ptr_pu", scope: !6257, file: !5221, line: 63, type: !98)
!6260 = !DILocalVariable(name: "__val_pu", scope: !6257, file: !5221, line: 63, type: !110)
!6261 = !{i32 -2144574384}
!6262 = !DILocation(line: 63, column: 50, scope: !6202)
!6263 = !DILocation(line: 63, column: 54, scope: !6202)
!6264 = !DILocation(line: 64, column: 19, scope: !6202)
!6265 = !DILocation(line: 64, column: 27, scope: !6202)
!6266 = !DILocation(line: 64, column: 33, scope: !6202)
!6267 = !DILocation(line: 64, column: 42, scope: !6202)
!6268 = !DILocation(line: 199, column: 6, scope: !4795, inlinedAt: !6201)
!6269 = !DILocation(line: 141, column: 6, scope: !4991, inlinedAt: !6200)
!6270 = !DILocation(line: 0, scope: !4991, inlinedAt: !6200)
!6271 = !DILocation(line: 141, column: 6, scope: !4789, inlinedAt: !6200)
!6272 = !DILocation(line: 142, column: 29, scope: !4995, inlinedAt: !6200)
!6273 = !DILocation(line: 142, column: 8, scope: !4995, inlinedAt: !6200)
!6274 = !DILocation(line: 142, column: 7, scope: !4996, inlinedAt: !6200)
!6275 = !DILocation(line: 143, column: 18, scope: !4995, inlinedAt: !6200)
!6276 = !DILocation(line: 143, column: 22, scope: !4995, inlinedAt: !6200)
!6277 = !DILocation(line: 143, column: 4, scope: !4995, inlinedAt: !6200)
!6278 = !DILocation(line: 144, column: 12, scope: !5003, inlinedAt: !6200)
!6279 = !DILocation(line: 144, column: 12, scope: !4995, inlinedAt: !6200)
!6280 = !DILocation(line: 145, column: 4, scope: !5003, inlinedAt: !6200)
!6281 = !DILocation(line: 147, column: 4, scope: !5003, inlinedAt: !6200)
!6282 = !DILocation(line: 148, column: 3, scope: !4996, inlinedAt: !6200)
!6283 = !DILocation(line: 150, column: 6, scope: !5009, inlinedAt: !6200)
!6284 = !DILocation(line: 150, column: 6, scope: !5011, inlinedAt: !6200)
!6285 = !DILocation(line: 150, column: 6, scope: !5015, inlinedAt: !6200)
!6286 = !DILocation(line: 150, column: 6, scope: !5012, inlinedAt: !6200)
!6287 = !DILocation(line: 150, column: 6, scope: !4812, inlinedAt: !6200)
!6288 = !DILocation(line: 150, column: 6, scope: !4789, inlinedAt: !6200)
!6289 = !DILocation(line: 151, column: 3, scope: !4812, inlinedAt: !6200)
!6290 = !DILocation(line: 152, column: 20, scope: !4789, inlinedAt: !6200)
!6291 = !DILocation(line: 152, column: 26, scope: !4789, inlinedAt: !6200)
!6292 = !DILocation(line: 152, column: 33, scope: !4789, inlinedAt: !6200)
!6293 = !DILocation(line: 152, column: 2, scope: !4789, inlinedAt: !6200)
!6294 = !DILocation(line: 153, column: 2, scope: !4789, inlinedAt: !6200)
!6295 = !DILocation(line: 154, column: 1, scope: !4789, inlinedAt: !6200)
!6296 = !DILocation(line: 199, column: 6, scope: !4797, inlinedAt: !6201)
!6297 = !DILocation(line: 200, column: 21, scope: !4795, inlinedAt: !6201)
!6298 = !DILocation(line: 200, column: 25, scope: !4795, inlinedAt: !6201)
!6299 = !DILocation(line: 200, column: 31, scope: !4795, inlinedAt: !6201)
!6300 = !DILocation(line: 200, column: 7, scope: !4795, inlinedAt: !6201)
!6301 = !DILocation(line: 200, column: 5, scope: !4795, inlinedAt: !6201)
!6302 = !DILocation(line: 200, column: 3, scope: !4795, inlinedAt: !6201)
!6303 = !DILocation(line: 201, column: 9, scope: !4797, inlinedAt: !6201)
!6304 = !DILocation(line: 64, column: 53, scope: !6202)
!6305 = !DILocation(line: 59, column: 6, scope: !6196)
!6306 = !DILocation(line: 65, column: 3, scope: !6202)
!6307 = !DILocation(line: 67, column: 2, scope: !6196)
!6308 = !DILocation(line: 68, column: 1, scope: !6196)
!6309 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !6310, file: !6310, line: 656, type: !3754, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!6310 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!6311 = !DILocalVariable(name: "__edi", scope: !6312, file: !6310, line: 658, type: !131)
!6312 = distinct !DILexicalBlock(scope: !6309, file: !6310, line: 658, column: 2)
!6313 = !DILocation(line: 658, column: 2, scope: !6312)
!6314 = !DILocalVariable(name: "__esi", scope: !6312, file: !6310, line: 658, type: !131)
!6315 = !DILocalVariable(name: "__edx", scope: !6312, file: !6310, line: 658, type: !131)
!6316 = !DILocalVariable(name: "__ecx", scope: !6312, file: !6310, line: 658, type: !131)
!6317 = !DILocalVariable(name: "__eax", scope: !6312, file: !6310, line: 658, type: !131)
!6318 = !{i32 -2145767883, i32 -2145767151, i32 -2145766917, i32 -2145766866, i32 -2145766838, i32 -2145766813, i32 -2145767129, i32 -2145767116, i32 -2145766678, i32 -2145766559, i32 -2145767024, i32 -2145766997, i32 -2145766969, i32 -2145766939}
!6319 = !DILocation(line: 659, column: 1, scope: !6309)
!6320 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !6310, file: !6310, line: 661, type: !3754, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !223)
!6321 = !DILocalVariable(name: "__edi", scope: !6322, file: !6310, line: 663, type: !131)
!6322 = distinct !DILexicalBlock(scope: !6320, file: !6310, line: 663, column: 2)
!6323 = !DILocation(line: 663, column: 2, scope: !6322)
!6324 = !DILocalVariable(name: "__esi", scope: !6322, file: !6310, line: 663, type: !131)
!6325 = !DILocalVariable(name: "__edx", scope: !6322, file: !6310, line: 663, type: !131)
!6326 = !DILocalVariable(name: "__ecx", scope: !6322, file: !6310, line: 663, type: !131)
!6327 = !DILocalVariable(name: "__eax", scope: !6322, file: !6310, line: 663, type: !131)
!6328 = !{i32 -2145765299, i32 -2145764569, i32 -2145764335, i32 -2145764284, i32 -2145764256, i32 -2145764231, i32 -2145764547, i32 -2145764534, i32 -2145764096, i32 -2145763977, i32 -2145764442, i32 -2145764415, i32 -2145764387, i32 -2145764357}
!6329 = !DILocation(line: 664, column: 1, scope: !6320)
