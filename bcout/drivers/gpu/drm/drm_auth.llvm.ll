; ModuleID = '../bcout/drivers/gpu/drm/drm_auth.llvm.bc'
source_filename = "drivers/gpu/drm/drm_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kmem_cache = type opaque
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
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.2, %union.anon.52, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.54, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.55, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.56, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.59, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.60 }
%union.anon.60 = type { %struct.anon.61 }
%struct.anon.61 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.62 = type { %struct.list_head }
%union.anon.63 = type { %struct.hlist_node }
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
%struct.kqid = type { %union.anon.53, i32 }
%union.anon.53 = type { %struct.kuid_t }
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
%union.anon.54 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.55 = type { %struct.callback_head }
%union.anon.56 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.57 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.57 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.59 = type { %struct.pipe_inode_info* }
%struct.fsnotify_mark_connector = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.52 = type { %struct.atomic_t }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.17 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.kref, %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.kref = type { %struct.refcount_struct }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.ucounts = type opaque
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32 }
%struct.proc_ns_operations = type opaque
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
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type opaque
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type opaque
%struct.net = type opaque
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type opaque
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.46, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.49 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { i64, i64 }
%union.anon.49 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.drm_device = type { %struct.list_head, i32, %struct.kref, %struct.device*, %struct.anon.65, %struct.drm_driver*, i8*, %struct.drm_minor*, %struct.drm_minor*, i8, %struct.drm_master*, i32, i8, %struct.inode*, i8*, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, i32, i8, %struct.drm_vblank_crtc*, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, %struct.drm_agp_head*, %struct.pci_dev*, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, %struct.drm_vma_offset_manager*, %struct.drm_vram_mm*, i32, %struct.drm_fb_helper* }
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
%struct.anon.65 = type { %struct.list_head, i8*, %struct.spinlock }
%struct.drm_driver = type { i32 (%struct.drm_device*, i64)*, i32 (%struct.drm_device*, %struct.drm_file*)*, void (%struct.drm_device*, %struct.drm_file*)*, void (%struct.drm_device*)*, void (%struct.drm_device*)*, void (%struct.drm_device*)*, i32 (i32, i8*)*, void (%struct.drm_device*)*, i32 (%struct.drm_device*)*, void (%struct.drm_device*)*, void (%struct.drm_device*, %struct.drm_file*, i1)*, void (%struct.drm_device*, %struct.drm_file*)*, void (%struct.drm_minor*)*, void (%struct.drm_gem_object*)*, i32 (%struct.drm_gem_object*, %struct.drm_file*)*, void (%struct.drm_gem_object*, %struct.drm_file*)*, %struct.drm_gem_object* (%struct.drm_device*, i64)*, i32 (%struct.drm_device*, %struct.drm_file*, i32, i32, i32*)*, i32 (%struct.drm_device*, %struct.drm_file*, i32, i32*)*, %struct.dma_buf* (%struct.drm_gem_object*, i32)*, %struct.drm_gem_object* (%struct.drm_device*, %struct.dma_buf*)*, i32 (%struct.drm_gem_object*)*, void (%struct.drm_gem_object*)*, %struct.sg_table* (%struct.drm_gem_object*)*, %struct.drm_gem_object* (%struct.drm_device*, %struct.dma_buf_attachment*, %struct.sg_table*)*, i8* (%struct.drm_gem_object*)*, void (%struct.drm_gem_object*, i8*)*, i32 (%struct.drm_gem_object*, %struct.vm_area_struct*)*, i32 (%struct.drm_file*, %struct.drm_device*, %struct.drm_mode_create_dumb*)*, i32 (%struct.drm_file*, %struct.drm_device*, i32, i64*)*, i32 (%struct.drm_file*, %struct.drm_device*, i32)*, %struct.vm_operations_struct*, i32, i32, i32, i8*, i8*, i8*, i32, %struct.drm_ioctl_desc*, i32, %struct.file_operations*, %struct.list_head, i32 (%struct.drm_device*)*, void (%struct.drm_device*, %struct.drm_file*)*, {}*, i32 (%struct.drm_device*)*, i32 (%struct.drm_device*, i32)*, i32 (%struct.drm_device*, i32)*, i32 (%struct.drm_device*, i32)*, void (%struct.drm_device*, i32)*, i32 }
%struct.drm_gem_object = type opaque
%struct.dma_buf = type opaque
%struct.sg_table = type { %struct.scatterlist*, i32, i32 }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.dma_buf_attachment = type opaque
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.drm_ioctl_desc = type { i32, i32, {}*, i8* }
%struct.drm_minor = type { i32, i32, %struct.device*, %struct.drm_device*, %struct.dentry*, %struct.list_head, %struct.mutex }
%struct.drm_master = type { %struct.kref, %struct.drm_device*, i8*, i32, %struct.idr, i8*, %struct.drm_master*, i32, %struct.list_head, %struct.list_head, %struct.idr, %struct.idr }
%struct.drm_vblank_crtc = type { %struct.drm_device*, %struct.wait_queue_head, %struct.timer_list, %struct.seqlock_t, %struct.atomic64_t, i64, %struct.atomic_t, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, i8, %struct.kthread_worker*, %struct.list_head, %struct.wait_queue_head }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.kthread_work* }
%struct.kthread_work = type { %struct.list_head, void (%struct.kthread_work*)*, %struct.kthread_worker*, i32 }
%struct.drm_agp_head = type opaque
%struct.pci_dev = type opaque
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, %struct.drm_modeset_acquire_ctx*, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, %struct.drm_mode_config_funcs*, i64, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, i32, i32, i8, i8, i8, i8, i8, i8, i8, %struct.drm_property*, i32, i32, %struct.drm_atomic_state*, %struct.drm_mode_config_helper_funcs* }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, %struct.ww_acquire_ctx* }
%struct.ww_acquire_ctx = type { %struct.task_struct*, i64, i32, i16, i16 }
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, %struct.drm_modeset_lock*, %struct.list_head, i8, i8 }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { %struct.llist_node* }
%struct.llist_node = type { %struct.llist_node* }
%struct.drm_mode_config_funcs = type { %struct.drm_framebuffer* (%struct.drm_device*, %struct.drm_file*, %struct.drm_mode_fb_cmd2*)*, %struct.drm_format_info* (%struct.drm_mode_fb_cmd2*)*, void (%struct.drm_device*)*, i32 (%struct.drm_device*, %struct.drm_display_mode*)*, i32 (%struct.drm_device*, %struct.drm_atomic_state*)*, i32 (%struct.drm_device*, %struct.drm_atomic_state*, i1)*, %struct.drm_atomic_state* (%struct.drm_device*)*, void (%struct.drm_atomic_state*)*, void (%struct.drm_atomic_state*)* }
%struct.drm_framebuffer = type opaque
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.drm_format_info = type opaque
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.drm_property = type opaque
%struct.drm_atomic_state = type opaque
%struct.drm_mode_config_helper_funcs = type opaque
%struct.drm_vma_offset_manager = type opaque
%struct.drm_vram_mm = type opaque
%struct.drm_fb_helper = type opaque
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, %struct.drm_master*, %struct.pid*, i32, %struct.list_head, %struct.drm_minor*, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, %struct.file*, i8*, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.drm_auth = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Attempt to set lessee %d as master\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Attempt to drop lessee %d as master\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@current_task = external dso_local global %struct.task_struct*, section ".data", align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"drivers/gpu/drm/drm_auth.c\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_getmagic(%struct.drm_device* %dev, i8* %data, %struct.drm_file* %file_priv) #0 !dbg !4516 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  %data.addr = alloca i8*, align 8
  %file_priv.addr = alloca %struct.drm_file*, align 8
  %auth = alloca %struct.drm_auth*, align 8
  %ret = alloca i32, align 4
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !4517, metadata !DIExpression()), !dbg !4518
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4519, metadata !DIExpression()), !dbg !4520
  store %struct.drm_file* %file_priv, %struct.drm_file** %file_priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_file** %file_priv.addr, metadata !4521, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.declare(metadata %struct.drm_auth** %auth, metadata !4523, metadata !DIExpression()), !dbg !4528
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4529
  %1 = bitcast i8* %0 to %struct.drm_auth*, !dbg !4529
  store %struct.drm_auth* %1, %struct.drm_auth** %auth, align 8, !dbg !4528
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4530, metadata !DIExpression()), !dbg !4531
  store i32 0, i32* %ret, align 4, !dbg !4531
  %2 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4532
  %master_mutex = getelementptr inbounds %struct.drm_device, %struct.drm_device* %2, i32 0, i32 16, !dbg !4533
  call void @mutex_lock(%struct.mutex* %master_mutex) #7, !dbg !4534
  %3 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !4535
  %magic = getelementptr inbounds %struct.drm_file, %struct.drm_file* %3, i32 0, i32 10, !dbg !4537
  %4 = load i32, i32* %magic, align 8, !dbg !4537
  %tobool = icmp ne i32 %4, 0, !dbg !4535
  br i1 %tobool, label %if.end3, label %if.then, !dbg !4538

if.then:                                          ; preds = %entry
  %5 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !4539
  %master = getelementptr inbounds %struct.drm_file, %struct.drm_file* %5, i32 0, i32 8, !dbg !4541
  %6 = load %struct.drm_master*, %struct.drm_master** %master, align 8, !dbg !4541
  %magic_map = getelementptr inbounds %struct.drm_master, %struct.drm_master* %6, i32 0, i32 4, !dbg !4542
  %7 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !4543
  %8 = bitcast %struct.drm_file* %7 to i8*, !dbg !4543
  %call = call i32 @idr_alloc(%struct.idr* %magic_map, i8* %8, i32 1, i32 0, i32 3264) #7, !dbg !4544
  store i32 %call, i32* %ret, align 4, !dbg !4545
  %9 = load i32, i32* %ret, align 4, !dbg !4546
  %cmp = icmp sge i32 %9, 0, !dbg !4548
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4549

if.then1:                                         ; preds = %if.then
  %10 = load i32, i32* %ret, align 4, !dbg !4550
  %11 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !4551
  %magic2 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %11, i32 0, i32 10, !dbg !4552
  store i32 %10, i32* %magic2, align 8, !dbg !4553
  br label %if.end, !dbg !4551

if.end:                                           ; preds = %if.then1, %if.then
  br label %if.end3, !dbg !4554

if.end3:                                          ; preds = %if.end, %entry
  %12 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !4555
  %magic4 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %12, i32 0, i32 10, !dbg !4556
  %13 = load i32, i32* %magic4, align 8, !dbg !4556
  %14 = load %struct.drm_auth*, %struct.drm_auth** %auth, align 8, !dbg !4557
  %magic5 = getelementptr inbounds %struct.drm_auth, %struct.drm_auth* %14, i32 0, i32 0, !dbg !4558
  store i32 %13, i32* %magic5, align 4, !dbg !4559
  %15 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4560
  %master_mutex6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 16, !dbg !4561
  call void @mutex_unlock(%struct.mutex* %master_mutex6) #7, !dbg !4562
  %16 = load %struct.drm_auth*, %struct.drm_auth** %auth, align 8, !dbg !4563
  %magic7 = getelementptr inbounds %struct.drm_auth, %struct.drm_auth* %16, i32 0, i32 0, !dbg !4563
  %17 = load i32, i32* %magic7, align 4, !dbg !4563
  call void (i32, i8*, ...) @__drm_dbg(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %17) #7, !dbg !4563
  %18 = load i32, i32* %ret, align 4, !dbg !4564
  %cmp8 = icmp slt i32 %18, 0, !dbg !4565
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !4564

cond.true:                                        ; preds = %if.end3
  %19 = load i32, i32* %ret, align 4, !dbg !4566
  br label %cond.end, !dbg !4564

cond.false:                                       ; preds = %if.end3
  br label %cond.end, !dbg !4564

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ 0, %cond.false ], !dbg !4564
  ret i32 %cond, !dbg !4567
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local i32 @idr_alloc(%struct.idr*, i8*, i32, i32, i32) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local void @__drm_dbg(i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_authmagic(%struct.drm_device* %dev, i8* %data, %struct.drm_file* %file_priv) #0 !dbg !4568 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  %data.addr = alloca i8*, align 8
  %file_priv.addr = alloca %struct.drm_file*, align 8
  %auth = alloca %struct.drm_auth*, align 8
  %file = alloca %struct.drm_file*, align 8
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !4569, metadata !DIExpression()), !dbg !4570
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4571, metadata !DIExpression()), !dbg !4572
  store %struct.drm_file* %file_priv, %struct.drm_file** %file_priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_file** %file_priv.addr, metadata !4573, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.declare(metadata %struct.drm_auth** %auth, metadata !4575, metadata !DIExpression()), !dbg !4576
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4577
  %1 = bitcast i8* %0 to %struct.drm_auth*, !dbg !4577
  store %struct.drm_auth* %1, %struct.drm_auth** %auth, align 8, !dbg !4576
  call void @llvm.dbg.declare(metadata %struct.drm_file** %file, metadata !4578, metadata !DIExpression()), !dbg !4579
  %2 = load %struct.drm_auth*, %struct.drm_auth** %auth, align 8, !dbg !4580
  %magic = getelementptr inbounds %struct.drm_auth, %struct.drm_auth* %2, i32 0, i32 0, !dbg !4580
  %3 = load i32, i32* %magic, align 4, !dbg !4580
  call void (i32, i8*, ...) @__drm_dbg(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %3) #7, !dbg !4580
  %4 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4581
  %master_mutex = getelementptr inbounds %struct.drm_device, %struct.drm_device* %4, i32 0, i32 16, !dbg !4582
  call void @mutex_lock(%struct.mutex* %master_mutex) #7, !dbg !4583
  %5 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !4584
  %master = getelementptr inbounds %struct.drm_file, %struct.drm_file* %5, i32 0, i32 8, !dbg !4585
  %6 = load %struct.drm_master*, %struct.drm_master** %master, align 8, !dbg !4585
  %magic_map = getelementptr inbounds %struct.drm_master, %struct.drm_master* %6, i32 0, i32 4, !dbg !4586
  %7 = load %struct.drm_auth*, %struct.drm_auth** %auth, align 8, !dbg !4587
  %magic1 = getelementptr inbounds %struct.drm_auth, %struct.drm_auth* %7, i32 0, i32 0, !dbg !4588
  %8 = load i32, i32* %magic1, align 4, !dbg !4588
  %conv = zext i32 %8 to i64, !dbg !4587
  %call = call i8* @idr_find(%struct.idr* %magic_map, i64 %conv) #7, !dbg !4589
  %9 = bitcast i8* %call to %struct.drm_file*, !dbg !4589
  store %struct.drm_file* %9, %struct.drm_file** %file, align 8, !dbg !4590
  %10 = load %struct.drm_file*, %struct.drm_file** %file, align 8, !dbg !4591
  %tobool = icmp ne %struct.drm_file* %10, null, !dbg !4591
  br i1 %tobool, label %if.then, label %if.end, !dbg !4593

if.then:                                          ; preds = %entry
  %11 = load %struct.drm_file*, %struct.drm_file** %file, align 8, !dbg !4594
  %authenticated = getelementptr inbounds %struct.drm_file, %struct.drm_file* %11, i32 0, i32 0, !dbg !4596
  store i8 1, i8* %authenticated, align 8, !dbg !4597
  %12 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !4598
  %master2 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %12, i32 0, i32 8, !dbg !4599
  %13 = load %struct.drm_master*, %struct.drm_master** %master2, align 8, !dbg !4599
  %magic_map3 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %13, i32 0, i32 4, !dbg !4600
  %14 = load %struct.drm_auth*, %struct.drm_auth** %auth, align 8, !dbg !4601
  %magic4 = getelementptr inbounds %struct.drm_auth, %struct.drm_auth* %14, i32 0, i32 0, !dbg !4602
  %15 = load i32, i32* %magic4, align 4, !dbg !4602
  %conv5 = zext i32 %15 to i64, !dbg !4601
  %call6 = call i8* @idr_replace(%struct.idr* %magic_map3, i8* null, i64 %conv5) #7, !dbg !4603
  br label %if.end, !dbg !4604

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4605
  %master_mutex7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 16, !dbg !4606
  call void @mutex_unlock(%struct.mutex* %master_mutex7) #7, !dbg !4607
  %17 = load %struct.drm_file*, %struct.drm_file** %file, align 8, !dbg !4608
  %tobool8 = icmp ne %struct.drm_file* %17, null, !dbg !4608
  %18 = zext i1 %tobool8 to i64, !dbg !4608
  %cond = select i1 %tobool8, i32 0, i32 -22, !dbg !4608
  ret i32 %cond, !dbg !4609
}

; Function Attrs: noredzone
declare dso_local i8* @idr_find(%struct.idr*, i64) #2

; Function Attrs: noredzone
declare dso_local i8* @idr_replace(%struct.idr*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.drm_master* @drm_master_create(%struct.drm_device* %dev) #0 !dbg !4610 {
entry:
  %retval = alloca %struct.drm_master*, align 8
  %dev.addr = alloca %struct.drm_device*, align 8
  %master = alloca %struct.drm_master*, align 8
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !4613, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.declare(metadata %struct.drm_master** %master, metadata !4615, metadata !DIExpression()), !dbg !4616
  %call = call i8* @kzalloc(i64 160, i32 3264) #7, !dbg !4617
  %0 = bitcast i8* %call to %struct.drm_master*, !dbg !4617
  store %struct.drm_master* %0, %struct.drm_master** %master, align 8, !dbg !4618
  %1 = load %struct.drm_master*, %struct.drm_master** %master, align 8, !dbg !4619
  %tobool = icmp ne %struct.drm_master* %1, null, !dbg !4619
  br i1 %tobool, label %if.end, label %if.then, !dbg !4621

if.then:                                          ; preds = %entry
  store %struct.drm_master* null, %struct.drm_master** %retval, align 8, !dbg !4622
  br label %return, !dbg !4622

if.end:                                           ; preds = %entry
  %2 = load %struct.drm_master*, %struct.drm_master** %master, align 8, !dbg !4623
  %refcount = getelementptr inbounds %struct.drm_master, %struct.drm_master* %2, i32 0, i32 0, !dbg !4624
  call void @kref_init(%struct.kref* %refcount) #7, !dbg !4625
  %3 = load %struct.drm_master*, %struct.drm_master** %master, align 8, !dbg !4626
  call void @drm_master_legacy_init(%struct.drm_master* %3) #7, !dbg !4627
  %4 = load %struct.drm_master*, %struct.drm_master** %master, align 8, !dbg !4628
  %magic_map = getelementptr inbounds %struct.drm_master, %struct.drm_master* %4, i32 0, i32 4, !dbg !4629
  call void @idr_init(%struct.idr* %magic_map) #7, !dbg !4630
  %5 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4631
  %6 = load %struct.drm_master*, %struct.drm_master** %master, align 8, !dbg !4632
  %dev1 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %6, i32 0, i32 1, !dbg !4633
  store %struct.drm_device* %5, %struct.drm_device** %dev1, align 8, !dbg !4634
  %7 = load %struct.drm_master*, %struct.drm_master** %master, align 8, !dbg !4635
  %lessees = getelementptr inbounds %struct.drm_master, %struct.drm_master* %7, i32 0, i32 9, !dbg !4636
  call void @INIT_LIST_HEAD(%struct.list_head* %lessees) #7, !dbg !4637
  %8 = load %struct.drm_master*, %struct.drm_master** %master, align 8, !dbg !4638
  %lessee_list = getelementptr inbounds %struct.drm_master, %struct.drm_master* %8, i32 0, i32 8, !dbg !4639
  call void @INIT_LIST_HEAD(%struct.list_head* %lessee_list) #7, !dbg !4640
  %9 = load %struct.drm_master*, %struct.drm_master** %master, align 8, !dbg !4641
  %leases = getelementptr inbounds %struct.drm_master, %struct.drm_master* %9, i32 0, i32 10, !dbg !4642
  call void @idr_init(%struct.idr* %leases) #7, !dbg !4643
  %10 = load %struct.drm_master*, %struct.drm_master** %master, align 8, !dbg !4644
  %lessee_idr = getelementptr inbounds %struct.drm_master, %struct.drm_master* %10, i32 0, i32 11, !dbg !4645
  call void @idr_init(%struct.idr* %lessee_idr) #7, !dbg !4646
  %11 = load %struct.drm_master*, %struct.drm_master** %master, align 8, !dbg !4647
  store %struct.drm_master* %11, %struct.drm_master** %retval, align 8, !dbg !4648
  br label %return, !dbg !4648

return:                                           ; preds = %if.end, %if.then
  %12 = load %struct.drm_master*, %struct.drm_master** %retval, align 8, !dbg !4649
  ret %struct.drm_master* %12, !dbg !4649
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4650 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4653, metadata !DIExpression()), !dbg !4657
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4663, metadata !DIExpression()), !dbg !4664
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4665, metadata !DIExpression()), !dbg !4666
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4667, metadata !DIExpression()), !dbg !4668
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4669, metadata !DIExpression()), !dbg !4673
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4675, metadata !DIExpression()), !dbg !4679
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4681, metadata !DIExpression()), !dbg !4685
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4690, metadata !DIExpression()), !dbg !4691
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4692, metadata !DIExpression()), !dbg !4693
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4694, metadata !DIExpression()), !dbg !4695
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4696, metadata !DIExpression()), !dbg !4697
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4698, metadata !DIExpression()), !dbg !4699
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4700, metadata !DIExpression()), !dbg !4701
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4702, metadata !DIExpression()), !dbg !4703
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4704, metadata !DIExpression()), !dbg !4705
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4706, metadata !DIExpression()), !dbg !4707
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4708, metadata !DIExpression()), !dbg !4709
  %0 = load i64, i64* %size.addr, align 8, !dbg !4710
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4711
  %or = or i32 %1, 256, !dbg !4712
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4713
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !4714
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4715

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4716
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4717
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4718

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4719
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4720
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4721
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !4722
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4699
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4723
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4724
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4725
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4726
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4727
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4728
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !4729
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4729
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4729
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4729
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !4729
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4730
  br label %kmalloc.exit, !dbg !4730

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4731
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4732
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4732
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4734

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4735
  br label %kmalloc_index.exit.i, !dbg !4735

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4736
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4738
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4739

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4740
  br label %kmalloc_index.exit.i, !dbg !4740

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4741
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4743
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4744

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4745
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4746
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4747

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4748
  br label %kmalloc_index.exit.i, !dbg !4748

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4749
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4751
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4752

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4753
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4754
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4755

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4756
  br label %kmalloc_index.exit.i, !dbg !4756

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4757
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4759
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4760

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4761
  br label %kmalloc_index.exit.i, !dbg !4761

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4762
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4764
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4765

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4766
  br label %kmalloc_index.exit.i, !dbg !4766

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4767
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4769
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4770

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4771
  br label %kmalloc_index.exit.i, !dbg !4771

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4772
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4774
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4775

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4776
  br label %kmalloc_index.exit.i, !dbg !4776

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4777
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4779
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4780

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4781
  br label %kmalloc_index.exit.i, !dbg !4781

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4782
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4784
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4785

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4786
  br label %kmalloc_index.exit.i, !dbg !4786

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4787
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4789
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4790

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4791
  br label %kmalloc_index.exit.i, !dbg !4791

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4792
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4794
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4795

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4796
  br label %kmalloc_index.exit.i, !dbg !4796

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4797
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4799
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4800

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4801
  br label %kmalloc_index.exit.i, !dbg !4801

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4802
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4804
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4805

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4806
  br label %kmalloc_index.exit.i, !dbg !4806

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4807
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4809
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4810

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4811
  br label %kmalloc_index.exit.i, !dbg !4811

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4812
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4814
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4815

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4816
  br label %kmalloc_index.exit.i, !dbg !4816

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4817
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4819
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4820

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4821
  br label %kmalloc_index.exit.i, !dbg !4821

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4822
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4824
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4825

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4826
  br label %kmalloc_index.exit.i, !dbg !4826

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4827
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4829
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4830

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4831
  br label %kmalloc_index.exit.i, !dbg !4831

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4832
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4834
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4835

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4836
  br label %kmalloc_index.exit.i, !dbg !4836

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4837
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4839
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4840

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4841
  br label %kmalloc_index.exit.i, !dbg !4841

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4842
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4844
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4845

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4846
  br label %kmalloc_index.exit.i, !dbg !4846

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4847
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4849
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4850

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4851
  br label %kmalloc_index.exit.i, !dbg !4851

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4852
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4854
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4855

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4856
  br label %kmalloc_index.exit.i, !dbg !4856

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4857
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4859
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4860

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4861
  br label %kmalloc_index.exit.i, !dbg !4861

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4862
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4864
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4865

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4866
  br label %kmalloc_index.exit.i, !dbg !4866

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4867
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4869
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4870

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4871
  br label %kmalloc_index.exit.i, !dbg !4871

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4872
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4874
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4875

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4876
  br label %kmalloc_index.exit.i, !dbg !4876

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !4877, !srcloc !4880
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #8, !dbg !4881, !srcloc !4884
  unreachable, !dbg !4885

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4886
  store i32 %45, i32* %index.i, align 4, !dbg !4887
  %46 = load i32, i32* %index.i, align 4, !dbg !4888
  %tobool.i = icmp ne i32 %46, 0, !dbg !4888
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4890

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4891
  br label %kmalloc.exit, !dbg !4891

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4892
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4893
  %and.i.i = and i32 %48, 17, !dbg !4893
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4893
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4893
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4893
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4893
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4895

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4896
  br label %kmalloc_type.exit.i, !dbg !4896

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4897
  %and2.i.i = and i32 %49, 1, !dbg !4898
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4897
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4897
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4897
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4899
  br label %kmalloc_type.exit.i, !dbg !4899

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4900
  %idxprom.i = zext i32 %51 to i64, !dbg !4901
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4901
  %52 = load i32, i32* %index.i, align 4, !dbg !4902
  %idxprom6.i = zext i32 %52 to i64, !dbg !4901
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4901
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4901
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4903
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4904
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4905
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4906
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !4907
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4907
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4907
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4907
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !4907
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4668
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4908
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4909
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4910
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4911
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !4912
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4913
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4914
  store i8* %62, i8** %retval.i, align 8, !dbg !4915
  br label %kmalloc.exit, !dbg !4915

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4916
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4917
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !4918
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4918
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4918
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4918
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !4918
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4919
  br label %kmalloc.exit, !dbg !4919

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4920
  ret i8* %65, !dbg !4921
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kref_init(%struct.kref* %kref) #0 !dbg !4922 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !4926, metadata !DIExpression()), !dbg !4927
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !4928
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !4929
  call void @refcount_set(%struct.refcount_struct* %refcount, i32 1) #7, !dbg !4930
  ret void, !dbg !4931
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @drm_master_legacy_init(%struct.drm_master* %master) #0 !dbg !4932 {
entry:
  %master.addr = alloca %struct.drm_master*, align 8
  store %struct.drm_master* %master, %struct.drm_master** %master.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_master** %master.addr, metadata !4936, metadata !DIExpression()), !dbg !4937
  ret void, !dbg !4938
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @idr_init(%struct.idr* %idr) #0 !dbg !4939 {
entry:
  %idr.addr = alloca %struct.idr*, align 8
  store %struct.idr* %idr, %struct.idr** %idr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.idr** %idr.addr, metadata !4943, metadata !DIExpression()), !dbg !4944
  %0 = load %struct.idr*, %struct.idr** %idr.addr, align 8, !dbg !4945
  call void @idr_init_base(%struct.idr* %0, i32 0) #7, !dbg !4946
  ret void, !dbg !4947
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !4948 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !4952, metadata !DIExpression()), !dbg !4953
  br label %do.body, !dbg !4954

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4955

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4957

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4955

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4959
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4959
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4959
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !4959
  br label %do.end3, !dbg !4959

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4955

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4961
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4962
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !4963
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !4964
  ret void, !dbg !4965
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_setmaster_ioctl(%struct.drm_device* %dev, i8* %data, %struct.drm_file* %file_priv) #0 !dbg !4966 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  %data.addr = alloca i8*, align 8
  %file_priv.addr = alloca %struct.drm_file*, align 8
  %ret = alloca i32, align 4
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !4967, metadata !DIExpression()), !dbg !4968
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4969, metadata !DIExpression()), !dbg !4970
  store %struct.drm_file* %file_priv, %struct.drm_file** %file_priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_file** %file_priv.addr, metadata !4971, metadata !DIExpression()), !dbg !4972
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4973, metadata !DIExpression()), !dbg !4974
  %0 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4975
  %master_mutex = getelementptr inbounds %struct.drm_device, %struct.drm_device* %0, i32 0, i32 16, !dbg !4976
  call void @mutex_lock(%struct.mutex* %master_mutex) #7, !dbg !4977
  %1 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4978
  %2 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !4979
  %call = call i32 @drm_master_check_perm(%struct.drm_device* %1, %struct.drm_file* %2) #7, !dbg !4980
  store i32 %call, i32* %ret, align 4, !dbg !4981
  %3 = load i32, i32* %ret, align 4, !dbg !4982
  %tobool = icmp ne i32 %3, 0, !dbg !4982
  br i1 %tobool, label %if.then, label %if.end, !dbg !4984

if.then:                                          ; preds = %entry
  br label %out_unlock, !dbg !4985

if.end:                                           ; preds = %entry
  %4 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !4986
  %call1 = call zeroext i1 @drm_is_current_master(%struct.drm_file* %4) #7, !dbg !4988
  br i1 %call1, label %if.then2, label %if.end3, !dbg !4989

if.then2:                                         ; preds = %if.end
  br label %out_unlock, !dbg !4990

if.end3:                                          ; preds = %if.end
  %5 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4991
  %master = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 10, !dbg !4993
  %6 = load %struct.drm_master*, %struct.drm_master** %master, align 8, !dbg !4993
  %tobool4 = icmp ne %struct.drm_master* %6, null, !dbg !4991
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !4994

if.then5:                                         ; preds = %if.end3
  store i32 -16, i32* %ret, align 4, !dbg !4995
  br label %out_unlock, !dbg !4997

if.end6:                                          ; preds = %if.end3
  %7 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !4998
  %master7 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %7, i32 0, i32 8, !dbg !5000
  %8 = load %struct.drm_master*, %struct.drm_master** %master7, align 8, !dbg !5000
  %tobool8 = icmp ne %struct.drm_master* %8, null, !dbg !4998
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !5001

if.then9:                                         ; preds = %if.end6
  store i32 -22, i32* %ret, align 4, !dbg !5002
  br label %out_unlock, !dbg !5004

if.end10:                                         ; preds = %if.end6
  %9 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !5005
  %is_master = getelementptr inbounds %struct.drm_file, %struct.drm_file* %9, i32 0, i32 7, !dbg !5007
  %10 = load i8, i8* %is_master, align 1, !dbg !5007
  %tobool11 = trunc i8 %10 to i1, !dbg !5007
  br i1 %tobool11, label %if.end14, label %if.then12, !dbg !5008

if.then12:                                        ; preds = %if.end10
  %11 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5009
  %12 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !5011
  %call13 = call i32 @drm_new_set_master(%struct.drm_device* %11, %struct.drm_file* %12) #7, !dbg !5012
  store i32 %call13, i32* %ret, align 4, !dbg !5013
  br label %out_unlock, !dbg !5014

if.end14:                                         ; preds = %if.end10
  %13 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !5015
  %master15 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %13, i32 0, i32 8, !dbg !5017
  %14 = load %struct.drm_master*, %struct.drm_master** %master15, align 8, !dbg !5017
  %lessor = getelementptr inbounds %struct.drm_master, %struct.drm_master* %14, i32 0, i32 6, !dbg !5018
  %15 = load %struct.drm_master*, %struct.drm_master** %lessor, align 8, !dbg !5018
  %cmp = icmp ne %struct.drm_master* %15, null, !dbg !5019
  br i1 %cmp, label %if.then16, label %if.end18, !dbg !5020

if.then16:                                        ; preds = %if.end14
  %16 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !5021
  %master17 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %16, i32 0, i32 8, !dbg !5021
  %17 = load %struct.drm_master*, %struct.drm_master** %master17, align 8, !dbg !5021
  %lessee_id = getelementptr inbounds %struct.drm_master, %struct.drm_master* %17, i32 0, i32 7, !dbg !5021
  %18 = load i32, i32* %lessee_id, align 8, !dbg !5021
  call void (i32, i8*, ...) @__drm_dbg(i32 128, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %18) #7, !dbg !5021
  store i32 -22, i32* %ret, align 4, !dbg !5023
  br label %out_unlock, !dbg !5024

if.end18:                                         ; preds = %if.end14
  %19 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5025
  %20 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !5026
  call void @drm_set_master(%struct.drm_device* %19, %struct.drm_file* %20, i1 zeroext false) #7, !dbg !5027
  br label %out_unlock, !dbg !5027

out_unlock:                                       ; preds = %if.end18, %if.then16, %if.then12, %if.then9, %if.then5, %if.then2, %if.then
  call void @llvm.dbg.label(metadata !5028), !dbg !5029
  %21 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5030
  %master_mutex19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 16, !dbg !5031
  call void @mutex_unlock(%struct.mutex* %master_mutex19) #7, !dbg !5032
  %22 = load i32, i32* %ret, align 4, !dbg !5033
  ret i32 %22, !dbg !5034
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @drm_master_check_perm(%struct.drm_device* %dev, %struct.drm_file* %file_priv) #0 !dbg !5035 {
entry:
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !5036, metadata !DIExpression()), !dbg !5042
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !5045, metadata !DIExpression()), !dbg !5047
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !5048, metadata !DIExpression()), !dbg !5050
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.drm_device*, align 8
  %file_priv.addr = alloca %struct.drm_file*, align 8
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !5051, metadata !DIExpression()), !dbg !5052
  store %struct.drm_file* %file_priv, %struct.drm_file** %file_priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_file** %file_priv.addr, metadata !5053, metadata !DIExpression()), !dbg !5054
  %0 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !5055
  %pid = getelementptr inbounds %struct.drm_file, %struct.drm_file* %0, i32 0, i32 9, !dbg !5056
  %1 = load %struct.pid*, %struct.pid** %pid, align 8, !dbg !5056
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !5047
  %2 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !5047
  %3 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #11, !dbg !5050, !srcloc !5057
  store i64 %3, i64* %pfo_val__.i, align 8, !dbg !5050
  %4 = load i64, i64* %pfo_val__.i, align 8, !dbg !5050
  %5 = inttoptr i64 %4 to %struct.task_struct*, !dbg !5050
  store %struct.task_struct* %5, %struct.task_struct** %tmp.i, align 8, !dbg !5050
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !5050
  store %struct.task_struct* %6, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5042
  %7 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5042
  store %struct.task_struct* %7, %struct.task_struct** %tmp1.i, align 8, !dbg !5042
  %8 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !5042
  %call1 = call %struct.pid* @task_pid(%struct.task_struct* %8) #7, !dbg !5058
  %cmp = icmp eq %struct.pid* %1, %call1, !dbg !5059
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5060

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !5061
  %was_master = getelementptr inbounds %struct.drm_file, %struct.drm_file* %9, i32 0, i32 6, !dbg !5062
  %10 = load i8, i8* %was_master, align 2, !dbg !5062
  %tobool = trunc i8 %10 to i1, !dbg !5062
  br i1 %tobool, label %if.then, label %if.end, !dbg !5063

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !5064
  br label %return, !dbg !5064

if.end:                                           ; preds = %land.lhs.true, %entry
  %call2 = call zeroext i1 @capable(i32 21) #7, !dbg !5065
  br i1 %call2, label %if.end4, label %if.then3, !dbg !5067

if.then3:                                         ; preds = %if.end
  store i32 -13, i32* %retval, align 4, !dbg !5068
  br label %return, !dbg !5068

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5069
  br label %return, !dbg !5069

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !5070
  ret i32 %11, !dbg !5070
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @drm_is_current_master(%struct.drm_file* %fpriv) #0 !dbg !5071 {
entry:
  %fpriv.addr = alloca %struct.drm_file*, align 8
  store %struct.drm_file* %fpriv, %struct.drm_file** %fpriv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_file** %fpriv.addr, metadata !5074, metadata !DIExpression()), !dbg !5075
  %0 = load %struct.drm_file*, %struct.drm_file** %fpriv.addr, align 8, !dbg !5076
  %is_master = getelementptr inbounds %struct.drm_file, %struct.drm_file* %0, i32 0, i32 7, !dbg !5077
  %1 = load i8, i8* %is_master, align 1, !dbg !5077
  %tobool = trunc i8 %1 to i1, !dbg !5077
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5078

land.rhs:                                         ; preds = %entry
  %2 = load %struct.drm_file*, %struct.drm_file** %fpriv.addr, align 8, !dbg !5079
  %master = getelementptr inbounds %struct.drm_file, %struct.drm_file* %2, i32 0, i32 8, !dbg !5080
  %3 = load %struct.drm_master*, %struct.drm_master** %master, align 8, !dbg !5080
  %call = call %struct.drm_master* @drm_lease_owner(%struct.drm_master* %3) #7, !dbg !5081
  %4 = load %struct.drm_file*, %struct.drm_file** %fpriv.addr, align 8, !dbg !5082
  %minor = getelementptr inbounds %struct.drm_file, %struct.drm_file* %4, i32 0, i32 12, !dbg !5083
  %5 = load %struct.drm_minor*, %struct.drm_minor** %minor, align 8, !dbg !5083
  %dev = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %5, i32 0, i32 3, !dbg !5084
  %6 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5084
  %master1 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 10, !dbg !5085
  %7 = load %struct.drm_master*, %struct.drm_master** %master1, align 8, !dbg !5085
  %cmp = icmp eq %struct.drm_master* %call, %7, !dbg !5086
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !5087
  ret i1 %8, !dbg !5088
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @drm_new_set_master(%struct.drm_device* %dev, %struct.drm_file* %fpriv) #0 !dbg !5089 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.drm_device*, align 8
  %fpriv.addr = alloca %struct.drm_file*, align 8
  %old_master = alloca %struct.drm_master*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !5090, metadata !DIExpression()), !dbg !5091
  store %struct.drm_file* %fpriv, %struct.drm_file** %fpriv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_file** %fpriv.addr, metadata !5092, metadata !DIExpression()), !dbg !5093
  call void @llvm.dbg.declare(metadata %struct.drm_master** %old_master, metadata !5094, metadata !DIExpression()), !dbg !5095
  br label %do.body, !dbg !5096

do.body:                                          ; preds = %entry
  %0 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5097
  %master_mutex = getelementptr inbounds %struct.drm_device, %struct.drm_device* %0, i32 0, i32 16, !dbg !5097
  br label %do.end, !dbg !5097

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5099, metadata !DIExpression()), !dbg !5101
  %1 = load %struct.drm_file*, %struct.drm_file** %fpriv.addr, align 8, !dbg !5101
  %is_master = getelementptr inbounds %struct.drm_file, %struct.drm_file* %1, i32 0, i32 7, !dbg !5101
  %2 = load i8, i8* %is_master, align 1, !dbg !5101
  %tobool = trunc i8 %2 to i1, !dbg !5101
  %lnot = xor i1 %tobool, true, !dbg !5101
  %lnot1 = xor i1 %lnot, true, !dbg !5101
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5101
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5101
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !5102
  %tobool2 = icmp ne i32 %3, 0, !dbg !5102
  %lnot3 = xor i1 %tobool2, true, !dbg !5102
  %lnot5 = xor i1 %lnot3, true, !dbg !5102
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !5102
  %conv = sext i32 %lnot.ext6 to i64, !dbg !5102
  %tobool7 = icmp ne i64 %conv, 0, !dbg !5102
  br i1 %tobool7, label %if.then, label %if.end, !dbg !5101

if.then:                                          ; preds = %do.end
  br label %do.body8, !dbg !5102

do.body8:                                         ; preds = %if.then
  br label %do.body9, !dbg !5104

do.body9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !5106

do.end10:                                         ; preds = %do.body9
  br label %do.body11, !dbg !5104

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 141, i32 2305, i64 12) #8, !dbg !5108, !srcloc !5110
  br label %do.end12, !dbg !5108

do.end12:                                         ; preds = %do.body11
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 237) #8, !dbg !5111, !srcloc !5113
  br label %do.body13, !dbg !5104

do.body13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !5114

do.end14:                                         ; preds = %do.body13
  br label %do.end15, !dbg !5104

do.end15:                                         ; preds = %do.end14
  br label %if.end, !dbg !5104

if.end:                                           ; preds = %do.end15, %do.end
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !5101
  %tobool16 = icmp ne i32 %4, 0, !dbg !5101
  %lnot17 = xor i1 %tobool16, true, !dbg !5101
  %lnot19 = xor i1 %lnot17, true, !dbg !5101
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !5101
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !5101
  store i64 %conv21, i64* %tmp, align 8, !dbg !5102
  %5 = load i64, i64* %tmp, align 8, !dbg !5101
  %6 = load %struct.drm_file*, %struct.drm_file** %fpriv.addr, align 8, !dbg !5116
  %master = getelementptr inbounds %struct.drm_file, %struct.drm_file* %6, i32 0, i32 8, !dbg !5117
  %7 = load %struct.drm_master*, %struct.drm_master** %master, align 8, !dbg !5117
  store %struct.drm_master* %7, %struct.drm_master** %old_master, align 8, !dbg !5118
  %8 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5119
  %call = call %struct.drm_master* @drm_master_create(%struct.drm_device* %8) #7, !dbg !5120
  %9 = load %struct.drm_file*, %struct.drm_file** %fpriv.addr, align 8, !dbg !5121
  %master22 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %9, i32 0, i32 8, !dbg !5122
  store %struct.drm_master* %call, %struct.drm_master** %master22, align 8, !dbg !5123
  %10 = load %struct.drm_file*, %struct.drm_file** %fpriv.addr, align 8, !dbg !5124
  %master23 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %10, i32 0, i32 8, !dbg !5126
  %11 = load %struct.drm_master*, %struct.drm_master** %master23, align 8, !dbg !5126
  %tobool24 = icmp ne %struct.drm_master* %11, null, !dbg !5124
  br i1 %tobool24, label %if.end27, label %if.then25, !dbg !5127

if.then25:                                        ; preds = %if.end
  %12 = load %struct.drm_master*, %struct.drm_master** %old_master, align 8, !dbg !5128
  %13 = load %struct.drm_file*, %struct.drm_file** %fpriv.addr, align 8, !dbg !5130
  %master26 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %13, i32 0, i32 8, !dbg !5131
  store %struct.drm_master* %12, %struct.drm_master** %master26, align 8, !dbg !5132
  store i32 -12, i32* %retval, align 4, !dbg !5133
  br label %return, !dbg !5133

if.end27:                                         ; preds = %if.end
  %14 = load %struct.drm_file*, %struct.drm_file** %fpriv.addr, align 8, !dbg !5134
  %is_master28 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %14, i32 0, i32 7, !dbg !5135
  store i8 1, i8* %is_master28, align 1, !dbg !5136
  %15 = load %struct.drm_file*, %struct.drm_file** %fpriv.addr, align 8, !dbg !5137
  %authenticated = getelementptr inbounds %struct.drm_file, %struct.drm_file* %15, i32 0, i32 0, !dbg !5138
  store i8 1, i8* %authenticated, align 8, !dbg !5139
  %16 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5140
  %17 = load %struct.drm_file*, %struct.drm_file** %fpriv.addr, align 8, !dbg !5141
  call void @drm_set_master(%struct.drm_device* %16, %struct.drm_file* %17, i1 zeroext true) #7, !dbg !5142
  %18 = load %struct.drm_master*, %struct.drm_master** %old_master, align 8, !dbg !5143
  %tobool29 = icmp ne %struct.drm_master* %18, null, !dbg !5143
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !5145

if.then30:                                        ; preds = %if.end27
  call void @drm_master_put(%struct.drm_master** %old_master) #7, !dbg !5146
  br label %if.end31, !dbg !5146

if.end31:                                         ; preds = %if.then30, %if.end27
  store i32 0, i32* %retval, align 4, !dbg !5147
  br label %return, !dbg !5147

return:                                           ; preds = %if.end31, %if.then25
  %19 = load i32, i32* %retval, align 4, !dbg !5148
  ret i32 %19, !dbg !5148
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @drm_set_master(%struct.drm_device* %dev, %struct.drm_file* %fpriv, i1 zeroext %new_master) #0 !dbg !5149 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  %fpriv.addr = alloca %struct.drm_file*, align 8
  %new_master.addr = alloca i8, align 1
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !5150, metadata !DIExpression()), !dbg !5151
  store %struct.drm_file* %fpriv, %struct.drm_file** %fpriv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_file** %fpriv.addr, metadata !5152, metadata !DIExpression()), !dbg !5153
  %frombool = zext i1 %new_master to i8
  store i8 %frombool, i8* %new_master.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %new_master.addr, metadata !5154, metadata !DIExpression()), !dbg !5155
  %0 = load %struct.drm_file*, %struct.drm_file** %fpriv.addr, align 8, !dbg !5156
  %master = getelementptr inbounds %struct.drm_file, %struct.drm_file* %0, i32 0, i32 8, !dbg !5157
  %1 = load %struct.drm_master*, %struct.drm_master** %master, align 8, !dbg !5157
  %call = call %struct.drm_master* @drm_master_get(%struct.drm_master* %1) #7, !dbg !5158
  %2 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5159
  %master1 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %2, i32 0, i32 10, !dbg !5160
  store %struct.drm_master* %call, %struct.drm_master** %master1, align 8, !dbg !5161
  %3 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5162
  %driver = getelementptr inbounds %struct.drm_device, %struct.drm_device* %3, i32 0, i32 5, !dbg !5164
  %4 = load %struct.drm_driver*, %struct.drm_driver** %driver, align 8, !dbg !5164
  %master_set = getelementptr inbounds %struct.drm_driver, %struct.drm_driver* %4, i32 0, i32 10, !dbg !5165
  %5 = load void (%struct.drm_device*, %struct.drm_file*, i1)*, void (%struct.drm_device*, %struct.drm_file*, i1)** %master_set, align 8, !dbg !5165
  %tobool = icmp ne void (%struct.drm_device*, %struct.drm_file*, i1)* %5, null, !dbg !5162
  br i1 %tobool, label %if.then, label %if.end, !dbg !5166

if.then:                                          ; preds = %entry
  %6 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5167
  %driver2 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 5, !dbg !5168
  %7 = load %struct.drm_driver*, %struct.drm_driver** %driver2, align 8, !dbg !5168
  %master_set3 = getelementptr inbounds %struct.drm_driver, %struct.drm_driver* %7, i32 0, i32 10, !dbg !5169
  %8 = load void (%struct.drm_device*, %struct.drm_file*, i1)*, void (%struct.drm_device*, %struct.drm_file*, i1)** %master_set3, align 8, !dbg !5169
  %9 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5170
  %10 = load %struct.drm_file*, %struct.drm_file** %fpriv.addr, align 8, !dbg !5171
  %11 = load i8, i8* %new_master.addr, align 1, !dbg !5172
  %tobool4 = trunc i8 %11 to i1, !dbg !5172
  call void %8(%struct.drm_device* %9, %struct.drm_file* %10, i1 zeroext %tobool4) #7, !dbg !5167
  br label %if.end, !dbg !5167

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.drm_file*, %struct.drm_file** %fpriv.addr, align 8, !dbg !5173
  %was_master = getelementptr inbounds %struct.drm_file, %struct.drm_file* %12, i32 0, i32 6, !dbg !5174
  store i8 1, i8* %was_master, align 2, !dbg !5175
  ret void, !dbg !5176
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_dropmaster_ioctl(%struct.drm_device* %dev, i8* %data, %struct.drm_file* %file_priv) #0 !dbg !5177 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  %data.addr = alloca i8*, align 8
  %file_priv.addr = alloca %struct.drm_file*, align 8
  %ret = alloca i32, align 4
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !5178, metadata !DIExpression()), !dbg !5179
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5180, metadata !DIExpression()), !dbg !5181
  store %struct.drm_file* %file_priv, %struct.drm_file** %file_priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_file** %file_priv.addr, metadata !5182, metadata !DIExpression()), !dbg !5183
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5184, metadata !DIExpression()), !dbg !5185
  %0 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5186
  %master_mutex = getelementptr inbounds %struct.drm_device, %struct.drm_device* %0, i32 0, i32 16, !dbg !5187
  call void @mutex_lock(%struct.mutex* %master_mutex) #7, !dbg !5188
  %1 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5189
  %2 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !5190
  %call = call i32 @drm_master_check_perm(%struct.drm_device* %1, %struct.drm_file* %2) #7, !dbg !5191
  store i32 %call, i32* %ret, align 4, !dbg !5192
  %3 = load i32, i32* %ret, align 4, !dbg !5193
  %tobool = icmp ne i32 %3, 0, !dbg !5193
  br i1 %tobool, label %if.then, label %if.end, !dbg !5195

if.then:                                          ; preds = %entry
  br label %out_unlock, !dbg !5196

if.end:                                           ; preds = %entry
  %4 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !5197
  %call1 = call zeroext i1 @drm_is_current_master(%struct.drm_file* %4) #7, !dbg !5199
  br i1 %call1, label %if.end3, label %if.then2, !dbg !5200

if.then2:                                         ; preds = %if.end
  store i32 -22, i32* %ret, align 4, !dbg !5201
  br label %out_unlock, !dbg !5203

if.end3:                                          ; preds = %if.end
  %5 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5204
  %master = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 10, !dbg !5206
  %6 = load %struct.drm_master*, %struct.drm_master** %master, align 8, !dbg !5206
  %tobool4 = icmp ne %struct.drm_master* %6, null, !dbg !5204
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !5207

if.then5:                                         ; preds = %if.end3
  store i32 -22, i32* %ret, align 4, !dbg !5208
  br label %out_unlock, !dbg !5210

if.end6:                                          ; preds = %if.end3
  %7 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !5211
  %master7 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %7, i32 0, i32 8, !dbg !5213
  %8 = load %struct.drm_master*, %struct.drm_master** %master7, align 8, !dbg !5213
  %lessor = getelementptr inbounds %struct.drm_master, %struct.drm_master* %8, i32 0, i32 6, !dbg !5214
  %9 = load %struct.drm_master*, %struct.drm_master** %lessor, align 8, !dbg !5214
  %cmp = icmp ne %struct.drm_master* %9, null, !dbg !5215
  br i1 %cmp, label %if.then8, label %if.end10, !dbg !5216

if.then8:                                         ; preds = %if.end6
  %10 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !5217
  %master9 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %10, i32 0, i32 8, !dbg !5217
  %11 = load %struct.drm_master*, %struct.drm_master** %master9, align 8, !dbg !5217
  %lessee_id = getelementptr inbounds %struct.drm_master, %struct.drm_master* %11, i32 0, i32 7, !dbg !5217
  %12 = load i32, i32* %lessee_id, align 8, !dbg !5217
  call void (i32, i8*, ...) @__drm_dbg(i32 128, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %12) #7, !dbg !5217
  store i32 -22, i32* %ret, align 4, !dbg !5219
  br label %out_unlock, !dbg !5220

if.end10:                                         ; preds = %if.end6
  %13 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5221
  %14 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !5222
  call void @drm_drop_master(%struct.drm_device* %13, %struct.drm_file* %14) #7, !dbg !5223
  br label %out_unlock, !dbg !5223

out_unlock:                                       ; preds = %if.end10, %if.then8, %if.then5, %if.then2, %if.then
  call void @llvm.dbg.label(metadata !5224), !dbg !5225
  %15 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5226
  %master_mutex11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 16, !dbg !5227
  call void @mutex_unlock(%struct.mutex* %master_mutex11) #7, !dbg !5228
  %16 = load i32, i32* %ret, align 4, !dbg !5229
  ret i32 %16, !dbg !5230
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @drm_drop_master(%struct.drm_device* %dev, %struct.drm_file* %fpriv) #0 !dbg !5231 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  %fpriv.addr = alloca %struct.drm_file*, align 8
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !5232, metadata !DIExpression()), !dbg !5233
  store %struct.drm_file* %fpriv, %struct.drm_file** %fpriv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_file** %fpriv.addr, metadata !5234, metadata !DIExpression()), !dbg !5235
  %0 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5236
  %driver = getelementptr inbounds %struct.drm_device, %struct.drm_device* %0, i32 0, i32 5, !dbg !5238
  %1 = load %struct.drm_driver*, %struct.drm_driver** %driver, align 8, !dbg !5238
  %master_drop = getelementptr inbounds %struct.drm_driver, %struct.drm_driver* %1, i32 0, i32 11, !dbg !5239
  %2 = load void (%struct.drm_device*, %struct.drm_file*)*, void (%struct.drm_device*, %struct.drm_file*)** %master_drop, align 8, !dbg !5239
  %tobool = icmp ne void (%struct.drm_device*, %struct.drm_file*)* %2, null, !dbg !5236
  br i1 %tobool, label %if.then, label %if.end, !dbg !5240

if.then:                                          ; preds = %entry
  %3 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5241
  %driver1 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %3, i32 0, i32 5, !dbg !5242
  %4 = load %struct.drm_driver*, %struct.drm_driver** %driver1, align 8, !dbg !5242
  %master_drop2 = getelementptr inbounds %struct.drm_driver, %struct.drm_driver* %4, i32 0, i32 11, !dbg !5243
  %5 = load void (%struct.drm_device*, %struct.drm_file*)*, void (%struct.drm_device*, %struct.drm_file*)** %master_drop2, align 8, !dbg !5243
  %6 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5244
  %7 = load %struct.drm_file*, %struct.drm_file** %fpriv.addr, align 8, !dbg !5245
  call void %5(%struct.drm_device* %6, %struct.drm_file* %7) #7, !dbg !5241
  br label %if.end, !dbg !5241

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5246
  %master = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 10, !dbg !5247
  call void @drm_master_put(%struct.drm_master** %master) #7, !dbg !5248
  ret void, !dbg !5249
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_master_open(%struct.drm_file* %file_priv) #0 !dbg !5250 {
entry:
  %file_priv.addr = alloca %struct.drm_file*, align 8
  %dev = alloca %struct.drm_device*, align 8
  %ret = alloca i32, align 4
  store %struct.drm_file* %file_priv, %struct.drm_file** %file_priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_file** %file_priv.addr, metadata !5253, metadata !DIExpression()), !dbg !5254
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev, metadata !5255, metadata !DIExpression()), !dbg !5256
  %0 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !5257
  %minor = getelementptr inbounds %struct.drm_file, %struct.drm_file* %0, i32 0, i32 12, !dbg !5258
  %1 = load %struct.drm_minor*, %struct.drm_minor** %minor, align 8, !dbg !5258
  %dev1 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %1, i32 0, i32 3, !dbg !5259
  %2 = load %struct.drm_device*, %struct.drm_device** %dev1, align 8, !dbg !5259
  store %struct.drm_device* %2, %struct.drm_device** %dev, align 8, !dbg !5256
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5260, metadata !DIExpression()), !dbg !5261
  store i32 0, i32* %ret, align 4, !dbg !5261
  %3 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5262
  %master_mutex = getelementptr inbounds %struct.drm_device, %struct.drm_device* %3, i32 0, i32 16, !dbg !5263
  call void @mutex_lock(%struct.mutex* %master_mutex) #7, !dbg !5264
  %4 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5265
  %master = getelementptr inbounds %struct.drm_device, %struct.drm_device* %4, i32 0, i32 10, !dbg !5267
  %5 = load %struct.drm_master*, %struct.drm_master** %master, align 8, !dbg !5267
  %tobool = icmp ne %struct.drm_master* %5, null, !dbg !5265
  br i1 %tobool, label %if.else, label %if.then, !dbg !5268

if.then:                                          ; preds = %entry
  %6 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5269
  %7 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !5270
  %call = call i32 @drm_new_set_master(%struct.drm_device* %6, %struct.drm_file* %7) #7, !dbg !5271
  store i32 %call, i32* %ret, align 4, !dbg !5272
  br label %if.end, !dbg !5273

if.else:                                          ; preds = %entry
  %8 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5274
  %master2 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 10, !dbg !5275
  %9 = load %struct.drm_master*, %struct.drm_master** %master2, align 8, !dbg !5275
  %call3 = call %struct.drm_master* @drm_master_get(%struct.drm_master* %9) #7, !dbg !5276
  %10 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !5277
  %master4 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %10, i32 0, i32 8, !dbg !5278
  store %struct.drm_master* %call3, %struct.drm_master** %master4, align 8, !dbg !5279
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5280
  %master_mutex5 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 16, !dbg !5281
  call void @mutex_unlock(%struct.mutex* %master_mutex5) #7, !dbg !5282
  %12 = load i32, i32* %ret, align 4, !dbg !5283
  ret i32 %12, !dbg !5284
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.drm_master* @drm_master_get(%struct.drm_master* %master) #0 !dbg !5285 {
entry:
  %master.addr = alloca %struct.drm_master*, align 8
  store %struct.drm_master* %master, %struct.drm_master** %master.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_master** %master.addr, metadata !5288, metadata !DIExpression()), !dbg !5289
  %0 = load %struct.drm_master*, %struct.drm_master** %master.addr, align 8, !dbg !5290
  %refcount = getelementptr inbounds %struct.drm_master, %struct.drm_master* %0, i32 0, i32 0, !dbg !5291
  call void @kref_get(%struct.kref* %refcount) #7, !dbg !5292
  %1 = load %struct.drm_master*, %struct.drm_master** %master.addr, align 8, !dbg !5293
  ret %struct.drm_master* %1, !dbg !5294
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_master_release(%struct.drm_file* %file_priv) #0 !dbg !5295 {
entry:
  %file_priv.addr = alloca %struct.drm_file*, align 8
  %dev = alloca %struct.drm_device*, align 8
  %master = alloca %struct.drm_master*, align 8
  store %struct.drm_file* %file_priv, %struct.drm_file** %file_priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_file** %file_priv.addr, metadata !5298, metadata !DIExpression()), !dbg !5299
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev, metadata !5300, metadata !DIExpression()), !dbg !5301
  %0 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !5302
  %minor = getelementptr inbounds %struct.drm_file, %struct.drm_file* %0, i32 0, i32 12, !dbg !5303
  %1 = load %struct.drm_minor*, %struct.drm_minor** %minor, align 8, !dbg !5303
  %dev1 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %1, i32 0, i32 3, !dbg !5304
  %2 = load %struct.drm_device*, %struct.drm_device** %dev1, align 8, !dbg !5304
  store %struct.drm_device* %2, %struct.drm_device** %dev, align 8, !dbg !5301
  call void @llvm.dbg.declare(metadata %struct.drm_master** %master, metadata !5305, metadata !DIExpression()), !dbg !5306
  %3 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !5307
  %master2 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %3, i32 0, i32 8, !dbg !5308
  %4 = load %struct.drm_master*, %struct.drm_master** %master2, align 8, !dbg !5308
  store %struct.drm_master* %4, %struct.drm_master** %master, align 8, !dbg !5306
  %5 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5309
  %master_mutex = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 16, !dbg !5310
  call void @mutex_lock(%struct.mutex* %master_mutex) #7, !dbg !5311
  %6 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !5312
  %magic = getelementptr inbounds %struct.drm_file, %struct.drm_file* %6, i32 0, i32 10, !dbg !5314
  %7 = load i32, i32* %magic, align 8, !dbg !5314
  %tobool = icmp ne i32 %7, 0, !dbg !5312
  br i1 %tobool, label %if.then, label %if.end, !dbg !5315

if.then:                                          ; preds = %entry
  %8 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !5316
  %master3 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %8, i32 0, i32 8, !dbg !5317
  %9 = load %struct.drm_master*, %struct.drm_master** %master3, align 8, !dbg !5317
  %magic_map = getelementptr inbounds %struct.drm_master, %struct.drm_master* %9, i32 0, i32 4, !dbg !5318
  %10 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !5319
  %magic4 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %10, i32 0, i32 10, !dbg !5320
  %11 = load i32, i32* %magic4, align 8, !dbg !5320
  %conv = zext i32 %11 to i64, !dbg !5319
  %call = call i8* @idr_remove(%struct.idr* %magic_map, i64 %conv) #7, !dbg !5321
  br label %if.end, !dbg !5321

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !5322
  %call5 = call zeroext i1 @drm_is_current_master(%struct.drm_file* %12) #7, !dbg !5324
  br i1 %call5, label %if.end7, label %if.then6, !dbg !5325

if.then6:                                         ; preds = %if.end
  br label %out, !dbg !5326

if.end7:                                          ; preds = %if.end
  %13 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5327
  %14 = load %struct.drm_master*, %struct.drm_master** %master, align 8, !dbg !5328
  call void @drm_legacy_lock_master_cleanup(%struct.drm_device* %13, %struct.drm_master* %14) #7, !dbg !5329
  %15 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5330
  %master8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 10, !dbg !5332
  %16 = load %struct.drm_master*, %struct.drm_master** %master8, align 8, !dbg !5332
  %17 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !5333
  %master9 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %17, i32 0, i32 8, !dbg !5334
  %18 = load %struct.drm_master*, %struct.drm_master** %master9, align 8, !dbg !5334
  %cmp = icmp eq %struct.drm_master* %16, %18, !dbg !5335
  br i1 %cmp, label %if.then11, label %if.end12, !dbg !5336

if.then11:                                        ; preds = %if.end7
  %19 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5337
  %20 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !5338
  call void @drm_drop_master(%struct.drm_device* %19, %struct.drm_file* %20) #7, !dbg !5339
  br label %if.end12, !dbg !5339

if.end12:                                         ; preds = %if.then11, %if.end7
  br label %out, !dbg !5334

out:                                              ; preds = %if.end12, %if.then6
  call void @llvm.dbg.label(metadata !5340), !dbg !5341
  %21 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5342
  %call13 = call zeroext i1 @drm_core_check_feature(%struct.drm_device* %21, i32 2) #7, !dbg !5344
  br i1 %call13, label %land.lhs.true, label %if.end18, !dbg !5345

land.lhs.true:                                    ; preds = %out
  %22 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !5346
  %is_master = getelementptr inbounds %struct.drm_file, %struct.drm_file* %22, i32 0, i32 7, !dbg !5347
  %23 = load i8, i8* %is_master, align 1, !dbg !5347
  %tobool15 = trunc i8 %23 to i1, !dbg !5347
  br i1 %tobool15, label %if.then17, label %if.end18, !dbg !5348

if.then17:                                        ; preds = %land.lhs.true
  %24 = load %struct.drm_master*, %struct.drm_master** %master, align 8, !dbg !5349
  call void @drm_lease_revoke(%struct.drm_master* %24) #7, !dbg !5351
  br label %if.end18, !dbg !5352

if.end18:                                         ; preds = %if.then17, %land.lhs.true, %out
  %25 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !5353
  %master19 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %25, i32 0, i32 8, !dbg !5355
  %26 = load %struct.drm_master*, %struct.drm_master** %master19, align 8, !dbg !5355
  %tobool20 = icmp ne %struct.drm_master* %26, null, !dbg !5353
  br i1 %tobool20, label %if.then21, label %if.end23, !dbg !5356

if.then21:                                        ; preds = %if.end18
  %27 = load %struct.drm_file*, %struct.drm_file** %file_priv.addr, align 8, !dbg !5357
  %master22 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %27, i32 0, i32 8, !dbg !5358
  call void @drm_master_put(%struct.drm_master** %master22) #7, !dbg !5359
  br label %if.end23, !dbg !5359

if.end23:                                         ; preds = %if.then21, %if.end18
  %28 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5360
  %master_mutex24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 16, !dbg !5361
  call void @mutex_unlock(%struct.mutex* %master_mutex24) #7, !dbg !5362
  ret void, !dbg !5363
}

; Function Attrs: noredzone
declare dso_local i8* @idr_remove(%struct.idr*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @drm_legacy_lock_master_cleanup(%struct.drm_device* %dev, %struct.drm_master* %master) #0 !dbg !5364 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  %master.addr = alloca %struct.drm_master*, align 8
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !5367, metadata !DIExpression()), !dbg !5368
  store %struct.drm_master* %master, %struct.drm_master** %master.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_master** %master.addr, metadata !5369, metadata !DIExpression()), !dbg !5370
  ret void, !dbg !5371
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @drm_core_check_feature(%struct.drm_device* %dev, i32 %feature) #0 !dbg !5372 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  %feature.addr = alloca i32, align 4
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !5377, metadata !DIExpression()), !dbg !5378
  store i32 %feature, i32* %feature.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %feature.addr, metadata !5379, metadata !DIExpression()), !dbg !5380
  %0 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5381
  %1 = load i32, i32* %feature.addr, align 4, !dbg !5382
  %call = call zeroext i1 @drm_core_check_all_features(%struct.drm_device* %0, i32 %1) #7, !dbg !5383
  ret i1 %call, !dbg !5384
}

; Function Attrs: noredzone
declare dso_local void @drm_lease_revoke(%struct.drm_master*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_master_put(%struct.drm_master** %master) #0 !dbg !5385 {
entry:
  %master.addr = alloca %struct.drm_master**, align 8
  store %struct.drm_master** %master, %struct.drm_master*** %master.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_master*** %master.addr, metadata !5389, metadata !DIExpression()), !dbg !5390
  %0 = load %struct.drm_master**, %struct.drm_master*** %master.addr, align 8, !dbg !5391
  %1 = load %struct.drm_master*, %struct.drm_master** %0, align 8, !dbg !5392
  %refcount = getelementptr inbounds %struct.drm_master, %struct.drm_master* %1, i32 0, i32 0, !dbg !5393
  %call = call i32 @kref_put(%struct.kref* %refcount, void (%struct.kref*)* @drm_master_destroy) #7, !dbg !5394
  %2 = load %struct.drm_master**, %struct.drm_master*** %master.addr, align 8, !dbg !5395
  store %struct.drm_master* null, %struct.drm_master** %2, align 8, !dbg !5396
  ret void, !dbg !5397
}

; Function Attrs: noredzone
declare dso_local %struct.drm_master* @drm_lease_owner(%struct.drm_master*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kref_get(%struct.kref* %kref) #0 !dbg !5398 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !5399, metadata !DIExpression()), !dbg !5400
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5401
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !5402
  call void @refcount_inc(%struct.refcount_struct* %refcount) #7, !dbg !5403
  ret void, !dbg !5404
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kref_put(%struct.kref* %kref, void (%struct.kref*)* %release) #0 !dbg !5405 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca %struct.kref*, align 8
  %release.addr = alloca void (%struct.kref*)*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !5409, metadata !DIExpression()), !dbg !5410
  store void (%struct.kref*)* %release, void (%struct.kref*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.kref*)** %release.addr, metadata !5411, metadata !DIExpression()), !dbg !5412
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5413
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !5415
  %call = call zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %refcount) #7, !dbg !5416
  br i1 %call, label %if.then, label %if.end, !dbg !5417

if.then:                                          ; preds = %entry
  %1 = load void (%struct.kref*)*, void (%struct.kref*)** %release.addr, align 8, !dbg !5418
  %2 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5420
  call void %1(%struct.kref* %2) #7, !dbg !5418
  store i32 1, i32* %retval, align 4, !dbg !5421
  br label %return, !dbg !5421

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5422
  br label %return, !dbg !5422

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !5423
  ret i32 %3, !dbg !5423
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @drm_master_destroy(%struct.kref* %kref) #0 !dbg !5424 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  %master = alloca %struct.drm_master*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_master*, align 8
  %dev = alloca %struct.drm_device*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !5425, metadata !DIExpression()), !dbg !5426
  call void @llvm.dbg.declare(metadata %struct.drm_master** %master, metadata !5427, metadata !DIExpression()), !dbg !5428
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5429, metadata !DIExpression()), !dbg !5431
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5431
  %1 = bitcast %struct.kref* %0 to i8*, !dbg !5431
  store i8* %1, i8** %__mptr, align 8, !dbg !5431
  br label %do.body, !dbg !5431

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5432

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5431
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5431
  %3 = bitcast i8* %add.ptr to %struct.drm_master*, !dbg !5431
  store %struct.drm_master* %3, %struct.drm_master** %tmp, align 8, !dbg !5432
  %4 = load %struct.drm_master*, %struct.drm_master** %tmp, align 8, !dbg !5431
  store %struct.drm_master* %4, %struct.drm_master** %master, align 8, !dbg !5428
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev, metadata !5434, metadata !DIExpression()), !dbg !5435
  %5 = load %struct.drm_master*, %struct.drm_master** %master, align 8, !dbg !5436
  %dev1 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %5, i32 0, i32 1, !dbg !5437
  %6 = load %struct.drm_device*, %struct.drm_device** %dev1, align 8, !dbg !5437
  store %struct.drm_device* %6, %struct.drm_device** %dev, align 8, !dbg !5435
  %7 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5438
  %call = call zeroext i1 @drm_core_check_feature(%struct.drm_device* %7, i32 2) #7, !dbg !5440
  br i1 %call, label %if.then, label %if.end, !dbg !5441

if.then:                                          ; preds = %do.end
  %8 = load %struct.drm_master*, %struct.drm_master** %master, align 8, !dbg !5442
  call void @drm_lease_destroy(%struct.drm_master* %8) #7, !dbg !5443
  br label %if.end, !dbg !5443

if.end:                                           ; preds = %if.then, %do.end
  %9 = load %struct.drm_device*, %struct.drm_device** %dev, align 8, !dbg !5444
  %10 = load %struct.drm_master*, %struct.drm_master** %master, align 8, !dbg !5445
  call void @drm_legacy_master_rmmaps(%struct.drm_device* %9, %struct.drm_master* %10) #7, !dbg !5446
  %11 = load %struct.drm_master*, %struct.drm_master** %master, align 8, !dbg !5447
  %magic_map = getelementptr inbounds %struct.drm_master, %struct.drm_master* %11, i32 0, i32 4, !dbg !5448
  call void @idr_destroy(%struct.idr* %magic_map) #7, !dbg !5449
  %12 = load %struct.drm_master*, %struct.drm_master** %master, align 8, !dbg !5450
  %leases = getelementptr inbounds %struct.drm_master, %struct.drm_master* %12, i32 0, i32 10, !dbg !5451
  call void @idr_destroy(%struct.idr* %leases) #7, !dbg !5452
  %13 = load %struct.drm_master*, %struct.drm_master** %master, align 8, !dbg !5453
  %lessee_idr = getelementptr inbounds %struct.drm_master, %struct.drm_master* %13, i32 0, i32 11, !dbg !5454
  call void @idr_destroy(%struct.idr* %lessee_idr) #7, !dbg !5455
  %14 = load %struct.drm_master*, %struct.drm_master** %master, align 8, !dbg !5456
  %unique = getelementptr inbounds %struct.drm_master, %struct.drm_master* %14, i32 0, i32 2, !dbg !5457
  %15 = load i8*, i8** %unique, align 8, !dbg !5457
  call void @kfree(i8* %15) #7, !dbg !5458
  %16 = load %struct.drm_master*, %struct.drm_master** %master, align 8, !dbg !5459
  %17 = bitcast %struct.drm_master* %16 to i8*, !dbg !5459
  call void @kfree(i8* %17) #7, !dbg !5460
  ret void, !dbg !5461
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @drm_master_internal_acquire(%struct.drm_device* %dev) #0 !dbg !5462 {
entry:
  %retval = alloca i1, align 1
  %dev.addr = alloca %struct.drm_device*, align 8
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !5465, metadata !DIExpression()), !dbg !5466
  %0 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5467
  %master_mutex = getelementptr inbounds %struct.drm_device, %struct.drm_device* %0, i32 0, i32 16, !dbg !5468
  call void @mutex_lock(%struct.mutex* %master_mutex) #7, !dbg !5469
  %1 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5470
  %master = getelementptr inbounds %struct.drm_device, %struct.drm_device* %1, i32 0, i32 10, !dbg !5472
  %2 = load %struct.drm_master*, %struct.drm_master** %master, align 8, !dbg !5472
  %tobool = icmp ne %struct.drm_master* %2, null, !dbg !5470
  br i1 %tobool, label %if.then, label %if.end, !dbg !5473

if.then:                                          ; preds = %entry
  %3 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5474
  %master_mutex1 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %3, i32 0, i32 16, !dbg !5476
  call void @mutex_unlock(%struct.mutex* %master_mutex1) #7, !dbg !5477
  store i1 false, i1* %retval, align 1, !dbg !5478
  br label %return, !dbg !5478

if.end:                                           ; preds = %entry
  store i1 true, i1* %retval, align 1, !dbg !5479
  br label %return, !dbg !5479

return:                                           ; preds = %if.end, %if.then
  %4 = load i1, i1* %retval, align 1, !dbg !5480
  ret i1 %4, !dbg !5480
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_master_internal_release(%struct.drm_device* %dev) #0 !dbg !5481 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !5482, metadata !DIExpression()), !dbg !5483
  %0 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5484
  %master_mutex = getelementptr inbounds %struct.drm_device, %struct.drm_device* %0, i32 0, i32 16, !dbg !5485
  call void @mutex_unlock(%struct.mutex* %master_mutex) #7, !dbg !5486
  ret void, !dbg !5487
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !5488 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5492, metadata !DIExpression()), !dbg !5497
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5499, metadata !DIExpression()), !dbg !5500
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5501, metadata !DIExpression()), !dbg !5502
  %0 = load i64, i64* %size.addr, align 8, !dbg !5503
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5505
  br i1 %1, label %if.then, label %if.end447, !dbg !5506

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5507
  %tobool = icmp ne i64 %2, 0, !dbg !5507
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5510

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5511
  br label %return, !dbg !5511

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5512
  %cmp = icmp ult i64 %3, 4096, !dbg !5514
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5515

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5516
  br label %return, !dbg !5516

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub = sub i64 %4, 1, !dbg !5517
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5517
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5517

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub4 = sub i64 %6, 1, !dbg !5517
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5517
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5517

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub6 = sub i64 %8, 1, !dbg !5517
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5517
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5517

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5517

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub9 = sub i64 %9, 1, !dbg !5517
  %and = and i64 %sub9, -9223372036854775808, !dbg !5517
  %tobool10 = icmp ne i64 %and, 0, !dbg !5517
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5517

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5517

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub13 = sub i64 %10, 1, !dbg !5517
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5517
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5517
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5517

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5517

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub18 = sub i64 %11, 1, !dbg !5517
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5517
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5517
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5517

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5517

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub23 = sub i64 %12, 1, !dbg !5517
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5517
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5517
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5517

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5517

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub28 = sub i64 %13, 1, !dbg !5517
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5517
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5517
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5517

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5517

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub33 = sub i64 %14, 1, !dbg !5517
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5517
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5517
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5517

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5517

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub38 = sub i64 %15, 1, !dbg !5517
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5517
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5517
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5517

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5517

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub43 = sub i64 %16, 1, !dbg !5517
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5517
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5517
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5517

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5517

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub48 = sub i64 %17, 1, !dbg !5517
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5517
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5517
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5517

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5517

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub53 = sub i64 %18, 1, !dbg !5517
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5517
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5517
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5517

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5517

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub58 = sub i64 %19, 1, !dbg !5517
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5517
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5517
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5517

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5517

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub63 = sub i64 %20, 1, !dbg !5517
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5517
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5517
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5517

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5517

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub68 = sub i64 %21, 1, !dbg !5517
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5517
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5517
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5517

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5517

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub73 = sub i64 %22, 1, !dbg !5517
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5517
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5517
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5517

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5517

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub78 = sub i64 %23, 1, !dbg !5517
  %and79 = and i64 %sub78, 562949953421312, !dbg !5517
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5517
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5517

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5517

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub83 = sub i64 %24, 1, !dbg !5517
  %and84 = and i64 %sub83, 281474976710656, !dbg !5517
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5517
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5517

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5517

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub88 = sub i64 %25, 1, !dbg !5517
  %and89 = and i64 %sub88, 140737488355328, !dbg !5517
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5517
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5517

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5517

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub93 = sub i64 %26, 1, !dbg !5517
  %and94 = and i64 %sub93, 70368744177664, !dbg !5517
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5517
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5517

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5517

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub98 = sub i64 %27, 1, !dbg !5517
  %and99 = and i64 %sub98, 35184372088832, !dbg !5517
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5517
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5517

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5517

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub103 = sub i64 %28, 1, !dbg !5517
  %and104 = and i64 %sub103, 17592186044416, !dbg !5517
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5517
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5517

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5517

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub108 = sub i64 %29, 1, !dbg !5517
  %and109 = and i64 %sub108, 8796093022208, !dbg !5517
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5517
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5517

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5517

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub113 = sub i64 %30, 1, !dbg !5517
  %and114 = and i64 %sub113, 4398046511104, !dbg !5517
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5517
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5517

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5517

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub118 = sub i64 %31, 1, !dbg !5517
  %and119 = and i64 %sub118, 2199023255552, !dbg !5517
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5517
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5517

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5517

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub123 = sub i64 %32, 1, !dbg !5517
  %and124 = and i64 %sub123, 1099511627776, !dbg !5517
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5517
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5517

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5517

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub128 = sub i64 %33, 1, !dbg !5517
  %and129 = and i64 %sub128, 549755813888, !dbg !5517
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5517
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5517

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5517

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub133 = sub i64 %34, 1, !dbg !5517
  %and134 = and i64 %sub133, 274877906944, !dbg !5517
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5517
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5517

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5517

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub138 = sub i64 %35, 1, !dbg !5517
  %and139 = and i64 %sub138, 137438953472, !dbg !5517
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5517
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5517

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5517

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub143 = sub i64 %36, 1, !dbg !5517
  %and144 = and i64 %sub143, 68719476736, !dbg !5517
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5517
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5517

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5517

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub148 = sub i64 %37, 1, !dbg !5517
  %and149 = and i64 %sub148, 34359738368, !dbg !5517
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5517
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5517

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5517

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub153 = sub i64 %38, 1, !dbg !5517
  %and154 = and i64 %sub153, 17179869184, !dbg !5517
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5517
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5517

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5517

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub158 = sub i64 %39, 1, !dbg !5517
  %and159 = and i64 %sub158, 8589934592, !dbg !5517
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5517
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5517

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5517

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub163 = sub i64 %40, 1, !dbg !5517
  %and164 = and i64 %sub163, 4294967296, !dbg !5517
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5517
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5517

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5517

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub168 = sub i64 %41, 1, !dbg !5517
  %and169 = and i64 %sub168, 2147483648, !dbg !5517
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5517
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5517

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5517

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub173 = sub i64 %42, 1, !dbg !5517
  %and174 = and i64 %sub173, 1073741824, !dbg !5517
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5517
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5517

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5517

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub178 = sub i64 %43, 1, !dbg !5517
  %and179 = and i64 %sub178, 536870912, !dbg !5517
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5517
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5517

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5517

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub183 = sub i64 %44, 1, !dbg !5517
  %and184 = and i64 %sub183, 268435456, !dbg !5517
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5517
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5517

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5517

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub188 = sub i64 %45, 1, !dbg !5517
  %and189 = and i64 %sub188, 134217728, !dbg !5517
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5517
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5517

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5517

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub193 = sub i64 %46, 1, !dbg !5517
  %and194 = and i64 %sub193, 67108864, !dbg !5517
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5517
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5517

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5517

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub198 = sub i64 %47, 1, !dbg !5517
  %and199 = and i64 %sub198, 33554432, !dbg !5517
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5517
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5517

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5517

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub203 = sub i64 %48, 1, !dbg !5517
  %and204 = and i64 %sub203, 16777216, !dbg !5517
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5517
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5517

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5517

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub208 = sub i64 %49, 1, !dbg !5517
  %and209 = and i64 %sub208, 8388608, !dbg !5517
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5517
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5517

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5517

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub213 = sub i64 %50, 1, !dbg !5517
  %and214 = and i64 %sub213, 4194304, !dbg !5517
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5517
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5517

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5517

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub218 = sub i64 %51, 1, !dbg !5517
  %and219 = and i64 %sub218, 2097152, !dbg !5517
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5517
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5517

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5517

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub223 = sub i64 %52, 1, !dbg !5517
  %and224 = and i64 %sub223, 1048576, !dbg !5517
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5517
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5517

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5517

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub228 = sub i64 %53, 1, !dbg !5517
  %and229 = and i64 %sub228, 524288, !dbg !5517
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5517
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5517

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5517

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub233 = sub i64 %54, 1, !dbg !5517
  %and234 = and i64 %sub233, 262144, !dbg !5517
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5517
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5517

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5517

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub238 = sub i64 %55, 1, !dbg !5517
  %and239 = and i64 %sub238, 131072, !dbg !5517
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5517
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5517

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5517

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub243 = sub i64 %56, 1, !dbg !5517
  %and244 = and i64 %sub243, 65536, !dbg !5517
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5517
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5517

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5517

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub248 = sub i64 %57, 1, !dbg !5517
  %and249 = and i64 %sub248, 32768, !dbg !5517
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5517
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5517

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5517

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub253 = sub i64 %58, 1, !dbg !5517
  %and254 = and i64 %sub253, 16384, !dbg !5517
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5517
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5517

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5517

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub258 = sub i64 %59, 1, !dbg !5517
  %and259 = and i64 %sub258, 8192, !dbg !5517
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5517
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5517

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5517

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub263 = sub i64 %60, 1, !dbg !5517
  %and264 = and i64 %sub263, 4096, !dbg !5517
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5517
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5517

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5517

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub268 = sub i64 %61, 1, !dbg !5517
  %and269 = and i64 %sub268, 2048, !dbg !5517
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5517
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5517

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5517

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub273 = sub i64 %62, 1, !dbg !5517
  %and274 = and i64 %sub273, 1024, !dbg !5517
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5517
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5517

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5517

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub278 = sub i64 %63, 1, !dbg !5517
  %and279 = and i64 %sub278, 512, !dbg !5517
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5517
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5517

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5517

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub283 = sub i64 %64, 1, !dbg !5517
  %and284 = and i64 %sub283, 256, !dbg !5517
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5517
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5517

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5517

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub288 = sub i64 %65, 1, !dbg !5517
  %and289 = and i64 %sub288, 128, !dbg !5517
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5517
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5517

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5517

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub293 = sub i64 %66, 1, !dbg !5517
  %and294 = and i64 %sub293, 64, !dbg !5517
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5517
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5517

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5517

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub298 = sub i64 %67, 1, !dbg !5517
  %and299 = and i64 %sub298, 32, !dbg !5517
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5517
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5517

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5517

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub303 = sub i64 %68, 1, !dbg !5517
  %and304 = and i64 %sub303, 16, !dbg !5517
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5517
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5517

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5517

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub308 = sub i64 %69, 1, !dbg !5517
  %and309 = and i64 %sub308, 8, !dbg !5517
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5517
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5517

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5517

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub313 = sub i64 %70, 1, !dbg !5517
  %and314 = and i64 %sub313, 4, !dbg !5517
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5517
  %71 = zext i1 %tobool315 to i64, !dbg !5517
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5517
  br label %cond.end, !dbg !5517

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5517
  br label %cond.end317, !dbg !5517

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5517
  br label %cond.end319, !dbg !5517

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5517
  br label %cond.end321, !dbg !5517

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5517
  br label %cond.end323, !dbg !5517

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5517
  br label %cond.end325, !dbg !5517

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5517
  br label %cond.end327, !dbg !5517

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5517
  br label %cond.end329, !dbg !5517

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5517
  br label %cond.end331, !dbg !5517

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5517
  br label %cond.end333, !dbg !5517

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5517
  br label %cond.end335, !dbg !5517

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5517
  br label %cond.end337, !dbg !5517

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5517
  br label %cond.end339, !dbg !5517

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5517
  br label %cond.end341, !dbg !5517

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5517
  br label %cond.end343, !dbg !5517

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5517
  br label %cond.end345, !dbg !5517

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5517
  br label %cond.end347, !dbg !5517

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5517
  br label %cond.end349, !dbg !5517

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5517
  br label %cond.end351, !dbg !5517

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5517
  br label %cond.end353, !dbg !5517

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5517
  br label %cond.end355, !dbg !5517

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5517
  br label %cond.end357, !dbg !5517

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5517
  br label %cond.end359, !dbg !5517

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5517
  br label %cond.end361, !dbg !5517

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5517
  br label %cond.end363, !dbg !5517

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5517
  br label %cond.end365, !dbg !5517

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5517
  br label %cond.end367, !dbg !5517

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5517
  br label %cond.end369, !dbg !5517

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5517
  br label %cond.end371, !dbg !5517

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5517
  br label %cond.end373, !dbg !5517

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5517
  br label %cond.end375, !dbg !5517

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5517
  br label %cond.end377, !dbg !5517

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5517
  br label %cond.end379, !dbg !5517

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5517
  br label %cond.end381, !dbg !5517

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5517
  br label %cond.end383, !dbg !5517

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5517
  br label %cond.end385, !dbg !5517

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5517
  br label %cond.end387, !dbg !5517

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5517
  br label %cond.end389, !dbg !5517

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5517
  br label %cond.end391, !dbg !5517

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5517
  br label %cond.end393, !dbg !5517

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5517
  br label %cond.end395, !dbg !5517

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5517
  br label %cond.end397, !dbg !5517

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5517
  br label %cond.end399, !dbg !5517

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5517
  br label %cond.end401, !dbg !5517

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5517
  br label %cond.end403, !dbg !5517

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5517
  br label %cond.end405, !dbg !5517

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5517
  br label %cond.end407, !dbg !5517

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5517
  br label %cond.end409, !dbg !5517

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5517
  br label %cond.end411, !dbg !5517

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5517
  br label %cond.end413, !dbg !5517

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5517
  br label %cond.end415, !dbg !5517

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5517
  br label %cond.end417, !dbg !5517

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5517
  br label %cond.end419, !dbg !5517

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5517
  br label %cond.end421, !dbg !5517

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5517
  br label %cond.end423, !dbg !5517

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5517
  br label %cond.end425, !dbg !5517

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5517
  br label %cond.end427, !dbg !5517

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5517
  br label %cond.end429, !dbg !5517

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5517
  br label %cond.end431, !dbg !5517

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5517
  br label %cond.end433, !dbg !5517

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5517
  br label %cond.end435, !dbg !5517

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5517
  br label %cond.end437, !dbg !5517

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5517
  br label %cond.end440, !dbg !5517

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5517

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5517
  br label %cond.end444, !dbg !5517

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5517
  %sub443 = sub i64 %72, 1, !dbg !5517
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !5517
  br label %cond.end444, !dbg !5517

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5517
  %sub446 = sub i32 %cond445, 12, !dbg !5518
  %add = add i32 %sub446, 1, !dbg !5519
  store i32 %add, i32* %retval, align 4, !dbg !5520
  br label %return, !dbg !5520

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5521
  %dec = add i64 %73, -1, !dbg !5521
  store i64 %dec, i64* %size.addr, align 8, !dbg !5521
  %74 = load i64, i64* %size.addr, align 8, !dbg !5522
  %shr = lshr i64 %74, 12, !dbg !5522
  store i64 %shr, i64* %size.addr, align 8, !dbg !5522
  %75 = load i64, i64* %size.addr, align 8, !dbg !5523
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5500
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5524
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5525
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !5524, !srcloc !5526
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5524
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5527
  %add.i = add i32 %79, 1, !dbg !5528
  store i32 %add.i, i32* %retval, align 4, !dbg !5529
  br label %return, !dbg !5529

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5530
  ret i32 %80, !dbg !5530
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !5531 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5492, metadata !DIExpression()), !dbg !5535
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5499, metadata !DIExpression()), !dbg !5537
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5538, metadata !DIExpression()), !dbg !5539
  %0 = load i64, i64* %n.addr, align 8, !dbg !5540
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5537
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5541
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5542
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !5541, !srcloc !5526
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5541
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5543
  %add.i = add i32 %4, 1, !dbg !5544
  %sub = sub i32 %add.i, 1, !dbg !5545
  ret i32 %sub, !dbg !5546
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5547 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5551, metadata !DIExpression()), !dbg !5552
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5553, metadata !DIExpression()), !dbg !5554
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5555, metadata !DIExpression()), !dbg !5556
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5557, metadata !DIExpression()), !dbg !5558
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5559
  ret i8* %0, !dbg !5560
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_set(%struct.refcount_struct* %r, i32 %n) #0 !dbg !5561 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5565, metadata !DIExpression()), !dbg !5571
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5576, metadata !DIExpression()), !dbg !5577
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5578, metadata !DIExpression()), !dbg !5586
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5588, metadata !DIExpression()), !dbg !5589
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5590, metadata !DIExpression()), !dbg !5591
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5592, metadata !DIExpression()), !dbg !5593
  %r.addr = alloca %struct.refcount_struct*, align 8
  %n.addr = alloca i32, align 4
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5594, metadata !DIExpression()), !dbg !5595
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !5596, metadata !DIExpression()), !dbg !5597
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5598
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %0, i32 0, i32 0, !dbg !5599
  %1 = load i32, i32* %n.addr, align 4, !dbg !5600
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  store i32 %1, i32* %i.addr.i, align 4
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5601
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5601
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5602
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5603
  %conv.i.i = trunc i64 %5 to i32, !dbg !5603
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #10, !dbg !5604
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5605
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5605
  call void @kcsan_check_access(i8* %6, i64 %7, i32 5) #10, !dbg !5605
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5606
  %9 = load i32, i32* %i.addr.i, align 4, !dbg !5607
  store %struct.atomic_t* %8, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %9, i32* %i.addr.i.i, align 4
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5608
  %11 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5608
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %11, i32 0, i32 0, !dbg !5608
  store volatile i32 %10, i32* %counter.i.i, align 4, !dbg !5608
  ret void, !dbg !5610
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !5611 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5615, metadata !DIExpression()), !dbg !5616
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5617, metadata !DIExpression()), !dbg !5618
  ret i1 true, !dbg !5619
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5620 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5624, metadata !DIExpression()), !dbg !5625
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5626, metadata !DIExpression()), !dbg !5627
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5628, metadata !DIExpression()), !dbg !5629
  ret void, !dbg !5630
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @idr_init_base(%struct.idr* %idr, i32 %base) #0 !dbg !5631 {
entry:
  %idr.addr = alloca %struct.idr*, align 8
  %base.addr = alloca i32, align 4
  store %struct.idr* %idr, %struct.idr** %idr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.idr** %idr.addr, metadata !5634, metadata !DIExpression()), !dbg !5635
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !5636, metadata !DIExpression()), !dbg !5637
  %0 = load %struct.idr*, %struct.idr** %idr.addr, align 8, !dbg !5638
  %idr_rt = getelementptr inbounds %struct.idr, %struct.idr* %0, i32 0, i32 0, !dbg !5638
  call void @xa_init_flags(%struct.xarray* %idr_rt, i32 8388612) #7, !dbg !5638
  %1 = load i32, i32* %base.addr, align 4, !dbg !5639
  %2 = load %struct.idr*, %struct.idr** %idr.addr, align 8, !dbg !5640
  %idr_base = getelementptr inbounds %struct.idr, %struct.idr* %2, i32 0, i32 1, !dbg !5641
  store i32 %1, i32* %idr_base, align 8, !dbg !5642
  %3 = load %struct.idr*, %struct.idr** %idr.addr, align 8, !dbg !5643
  %idr_next = getelementptr inbounds %struct.idr, %struct.idr* %3, i32 0, i32 2, !dbg !5644
  store i32 0, i32* %idr_next, align 4, !dbg !5645
  ret void, !dbg !5646
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xa_init_flags(%struct.xarray* %xa, i32 %flags) #0 !dbg !5647 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5651, metadata !DIExpression()), !dbg !5657
  %xa.addr = alloca %struct.xarray*, align 8
  %flags.addr = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 1
  store %struct.xarray* %xa, %struct.xarray** %xa.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xarray** %xa.addr, metadata !5660, metadata !DIExpression()), !dbg !5661
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5662, metadata !DIExpression()), !dbg !5663
  br label %do.body, !dbg !5664

do.body:                                          ; preds = %entry
  %0 = load %struct.xarray*, %struct.xarray** %xa.addr, align 8, !dbg !5665
  %xa_lock = getelementptr inbounds %struct.xarray, %struct.xarray* %0, i32 0, i32 0, !dbg !5665
  store %struct.spinlock* %xa_lock, %struct.spinlock** %lock.addr.i, align 8
  %1 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5666
  %2 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %1, i32 0, i32 0, !dbg !5667
  %rlock.i = bitcast %union.anon.1* %2 to %struct.raw_spinlock*, !dbg !5667
  %3 = load %struct.xarray*, %struct.xarray** %xa.addr, align 8, !dbg !5665
  %xa_lock1 = getelementptr inbounds %struct.xarray, %struct.xarray* %3, i32 0, i32 0, !dbg !5665
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !5665
  %rlock = bitcast %union.anon.1* %4 to %struct.raw_spinlock*, !dbg !5665
  %5 = bitcast %struct.spinlock* %xa_lock1 to i8*, !dbg !5665
  %6 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !5665
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 1 %6, i64 0, i1 false), !dbg !5665
  br label %do.end, !dbg !5665

do.end:                                           ; preds = %do.body
  %7 = load i32, i32* %flags.addr, align 4, !dbg !5668
  %8 = load %struct.xarray*, %struct.xarray** %xa.addr, align 8, !dbg !5669
  %xa_flags = getelementptr inbounds %struct.xarray, %struct.xarray* %8, i32 0, i32 1, !dbg !5670
  store i32 %7, i32* %xa_flags, align 8, !dbg !5671
  %9 = load %struct.xarray*, %struct.xarray** %xa.addr, align 8, !dbg !5672
  %xa_head = getelementptr inbounds %struct.xarray, %struct.xarray* %9, i32 0, i32 2, !dbg !5673
  store i8* null, i8** %xa_head, align 8, !dbg !5674
  ret void, !dbg !5675
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pid* @task_pid(%struct.task_struct* %task) #0 !dbg !5676 {
entry:
  %task.addr = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %task, %struct.task_struct** %task.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %task.addr, metadata !5679, metadata !DIExpression()), !dbg !5680
  %0 = load %struct.task_struct*, %struct.task_struct** %task.addr, align 8, !dbg !5681
  %thread_pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i32 0, i32 45, !dbg !5682
  %1 = load %struct.pid*, %struct.pid** %thread_pid, align 8, !dbg !5682
  ret %struct.pid* %1, !dbg !5683
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @capable(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @drm_core_check_all_features(%struct.drm_device* %dev, i32 %features) #0 !dbg !5684 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  %features.addr = alloca i32, align 4
  %supported = alloca i32, align 4
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !5687, metadata !DIExpression()), !dbg !5688
  store i32 %features, i32* %features.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %features.addr, metadata !5689, metadata !DIExpression()), !dbg !5690
  call void @llvm.dbg.declare(metadata i32* %supported, metadata !5691, metadata !DIExpression()), !dbg !5692
  %0 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5693
  %driver = getelementptr inbounds %struct.drm_device, %struct.drm_device* %0, i32 0, i32 5, !dbg !5694
  %1 = load %struct.drm_driver*, %struct.drm_driver** %driver, align 8, !dbg !5694
  %driver_features = getelementptr inbounds %struct.drm_driver, %struct.drm_driver* %1, i32 0, i32 38, !dbg !5695
  %2 = load i32, i32* %driver_features, align 8, !dbg !5695
  %3 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !5696
  %driver_features1 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %3, i32 0, i32 11, !dbg !5697
  %4 = load i32, i32* %driver_features1, align 8, !dbg !5697
  %and = and i32 %2, %4, !dbg !5698
  store i32 %and, i32* %supported, align 4, !dbg !5692
  %5 = load i32, i32* %features.addr, align 4, !dbg !5699
  %tobool = icmp ne i32 %5, 0, !dbg !5699
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5700

land.rhs:                                         ; preds = %entry
  %6 = load i32, i32* %supported, align 4, !dbg !5701
  %7 = load i32, i32* %features.addr, align 4, !dbg !5702
  %and2 = and i32 %6, %7, !dbg !5703
  %8 = load i32, i32* %features.addr, align 4, !dbg !5704
  %cmp = icmp eq i32 %and2, %8, !dbg !5705
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %9 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !5706
  ret i1 %9, !dbg !5707
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_inc(%struct.refcount_struct* %r) #0 !dbg !5708 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5711, metadata !DIExpression()), !dbg !5712
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5713
  call void @__refcount_inc(%struct.refcount_struct* %0, i32* null) #7, !dbg !5714
  ret void, !dbg !5715
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_inc(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5716 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5719, metadata !DIExpression()), !dbg !5720
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5721, metadata !DIExpression()), !dbg !5722
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5723
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !5724
  call void @__refcount_add(i32 1, %struct.refcount_struct* %0, i32* %1) #7, !dbg !5725
  ret void, !dbg !5726
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_add(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5727 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5730, metadata !DIExpression()), !dbg !5734
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5738, metadata !DIExpression()), !dbg !5739
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !5740, metadata !DIExpression()), !dbg !5742
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5743, metadata !DIExpression()), !dbg !5745
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5747, metadata !DIExpression()), !dbg !5748
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5749, metadata !DIExpression()), !dbg !5750
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5751, metadata !DIExpression()), !dbg !5752
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5753, metadata !DIExpression()), !dbg !5754
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5755, metadata !DIExpression()), !dbg !5756
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5757, metadata !DIExpression()), !dbg !5758
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5759, metadata !DIExpression()), !dbg !5760
  %0 = load i32, i32* %i.addr, align 4, !dbg !5761
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5762
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !5763
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5764
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5764
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5765
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5766
  %conv.i.i = trunc i64 %5 to i32, !dbg !5766
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #10, !dbg !5767
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5768
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5768
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #10, !dbg !5768
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !5769
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5770
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5742
  store i32 %10, i32* %__ret.i.i, align 4, !dbg !5742
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !5742
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5742
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !5742
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #8, !dbg !5742, !srcloc !5771
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !5742
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !5742
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !5742
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !5742
  store i32 %15, i32* %old, align 4, !dbg !5760
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !5772
  %tobool = icmp ne i32* %16, null, !dbg !5772
  br i1 %tobool, label %if.then, label %if.end, !dbg !5774

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !5775
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !5776
  store i32 %17, i32* %18, align 4, !dbg !5777
  br label %if.end, !dbg !5778

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !5779
  %tobool1 = icmp ne i32 %19, 0, !dbg !5779
  %lnot = xor i1 %tobool1, true, !dbg !5779
  %lnot2 = xor i1 %lnot, true, !dbg !5779
  %lnot3 = xor i1 %lnot2, true, !dbg !5779
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5779
  %conv = sext i32 %lnot.ext to i64, !dbg !5779
  %tobool4 = icmp ne i64 %conv, 0, !dbg !5779
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5781

if.then5:                                         ; preds = %if.end
  %20 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5782
  call void @refcount_warn_saturate(%struct.refcount_struct* %20, i32 2) #7, !dbg !5783
  br label %if.end17, !dbg !5783

if.else:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !5784
  %cmp = icmp slt i32 %21, 0, !dbg !5784
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5784

lor.rhs:                                          ; preds = %if.else
  %22 = load i32, i32* %old, align 4, !dbg !5784
  %23 = load i32, i32* %i.addr, align 4, !dbg !5784
  %add = add i32 %22, %23, !dbg !5784
  %cmp7 = icmp slt i32 %add, 0, !dbg !5784
  br label %lor.end, !dbg !5784

lor.end:                                          ; preds = %lor.rhs, %if.else
  %24 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %24, true, !dbg !5784
  %lnot11 = xor i1 %lnot9, true, !dbg !5784
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5784
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !5784
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !5784
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5786

if.then15:                                        ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5787
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 1) #7, !dbg !5788
  br label %if.end16, !dbg !5788

if.end16:                                         ; preds = %if.then15, %lor.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then5
  ret void, !dbg !5789
}

; Function Attrs: noredzone
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %r) #0 !dbg !5790 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5793, metadata !DIExpression()), !dbg !5794
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5795
  %call = call zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %0, i32* null) #7, !dbg !5796
  ret i1 %call, !dbg !5797
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5798 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5801, metadata !DIExpression()), !dbg !5802
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5803, metadata !DIExpression()), !dbg !5804
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5805
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !5806
  %call = call zeroext i1 @__refcount_sub_and_test(i32 1, %struct.refcount_struct* %0, i32* %1) #7, !dbg !5807
  ret i1 %call, !dbg !5808
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5809 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5812, metadata !DIExpression()), !dbg !5814
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5818, metadata !DIExpression()), !dbg !5819
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !5820, metadata !DIExpression()), !dbg !5822
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5743, metadata !DIExpression()), !dbg !5823
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5747, metadata !DIExpression()), !dbg !5825
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5826, metadata !DIExpression()), !dbg !5827
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5828, metadata !DIExpression()), !dbg !5829
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5830, metadata !DIExpression()), !dbg !5831
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5832, metadata !DIExpression()), !dbg !5833
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5834, metadata !DIExpression()), !dbg !5835
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5836, metadata !DIExpression()), !dbg !5837
  %0 = load i32, i32* %i.addr, align 4, !dbg !5838
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5839
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !5840
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5841
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5841
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5842
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5843
  %conv.i.i = trunc i64 %5 to i32, !dbg !5843
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #10, !dbg !5844
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5845
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5845
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #10, !dbg !5845
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !5846
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5847
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5822
  %sub.i.i = sub i32 0, %10, !dbg !5822
  store i32 %sub.i.i, i32* %__ret.i.i, align 4, !dbg !5822
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !5822
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5822
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !5822
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #8, !dbg !5822, !srcloc !5848
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !5822
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !5822
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !5822
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !5822
  store i32 %15, i32* %old, align 4, !dbg !5837
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !5849
  %tobool = icmp ne i32* %16, null, !dbg !5849
  br i1 %tobool, label %if.then, label %if.end, !dbg !5851

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !5852
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !5853
  store i32 %17, i32* %18, align 4, !dbg !5854
  br label %if.end, !dbg !5855

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !5856
  %20 = load i32, i32* %i.addr, align 4, !dbg !5858
  %cmp = icmp eq i32 %19, %20, !dbg !5859
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5860

if.then1:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !5861, !srcloc !5863
  store i1 true, i1* %retval, align 1, !dbg !5864
  br label %return, !dbg !5864

if.end2:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !5865
  %cmp3 = icmp slt i32 %21, 0, !dbg !5865
  br i1 %cmp3, label %lor.end, label %lor.rhs, !dbg !5865

lor.rhs:                                          ; preds = %if.end2
  %22 = load i32, i32* %old, align 4, !dbg !5865
  %23 = load i32, i32* %i.addr, align 4, !dbg !5865
  %sub = sub i32 %22, %23, !dbg !5865
  %cmp4 = icmp slt i32 %sub, 0, !dbg !5865
  br label %lor.end, !dbg !5865

lor.end:                                          ; preds = %lor.rhs, %if.end2
  %24 = phi i1 [ true, %if.end2 ], [ %cmp4, %lor.rhs ]
  %lnot = xor i1 %24, true, !dbg !5865
  %lnot5 = xor i1 %lnot, true, !dbg !5865
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5865
  %conv = sext i32 %lnot.ext to i64, !dbg !5865
  %tobool6 = icmp ne i64 %conv, 0, !dbg !5865
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5867

if.then7:                                         ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5868
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 3) #7, !dbg !5869
  br label %if.end8, !dbg !5869

if.end8:                                          ; preds = %if.then7, %lor.end
  store i1 false, i1* %retval, align 1, !dbg !5870
  br label %return, !dbg !5870

return:                                           ; preds = %if.end8, %if.then1
  %26 = load i1, i1* %retval, align 1, !dbg !5871
  ret i1 %26, !dbg !5871
}

; Function Attrs: noredzone
declare dso_local void @drm_lease_destroy(%struct.drm_master*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @drm_legacy_master_rmmaps(%struct.drm_device* %dev, %struct.drm_master* %master) #0 !dbg !5872 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  %master.addr = alloca %struct.drm_master*, align 8
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !5873, metadata !DIExpression()), !dbg !5874
  store %struct.drm_master* %master, %struct.drm_master** %master.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_master** %master.addr, metadata !5875, metadata !DIExpression()), !dbg !5876
  ret void, !dbg !5877
}

; Function Attrs: noredzone
declare dso_local void @idr_destroy(%struct.idr*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { nounwind willreturn }
attributes #5 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind willreturn }
attributes #7 = { noredzone }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind readnone }
attributes #10 = { noredzone nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4511, !4512, !4513, !4514}
!llvm.ident = !{!4515}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !214, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/gpu/drm/drm_auth.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !11, !17, !22, !28, !35, !41, !50, !58, !64, !70, !77, !85, !91, !97, !105, !149, !158, !165, !178, !183, !199, !206}
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
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !92, line: 11, baseType: !5, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!93 = !{!94, !95, !96}
!94 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!95 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!96 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_ioctl_flags", file: !98, line: 79, baseType: !5, size: 32, elements: !99)
!98 = !DIFile(filename: "./include/drm/drm_ioctl.h", directory: "/home/lizy2001/genbc/linux")
!99 = !{!100, !101, !102, !103, !104}
!100 = !DIEnumerator(name: "DRM_AUTH", value: 1, isUnsigned: true)
!101 = !DIEnumerator(name: "DRM_MASTER", value: 2, isUnsigned: true)
!102 = !DIEnumerator(name: "DRM_ROOT_ONLY", value: 4, isUnsigned: true)
!103 = !DIEnumerator(name: "DRM_UNLOCKED", value: 16, isUnsigned: true)
!104 = !DIEnumerator(name: "DRM_RENDER_ALLOW", value: 32, isUnsigned: true)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_status", file: !106, line: 91, baseType: !107, size: 32, elements: !108)
!106 = !DIFile(filename: "./include/drm/drm_modes.h", directory: "/home/lizy2001/genbc/linux")
!107 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!108 = !{!109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148}
!109 = !DIEnumerator(name: "MODE_OK", value: 0)
!110 = !DIEnumerator(name: "MODE_HSYNC", value: 1)
!111 = !DIEnumerator(name: "MODE_VSYNC", value: 2)
!112 = !DIEnumerator(name: "MODE_H_ILLEGAL", value: 3)
!113 = !DIEnumerator(name: "MODE_V_ILLEGAL", value: 4)
!114 = !DIEnumerator(name: "MODE_BAD_WIDTH", value: 5)
!115 = !DIEnumerator(name: "MODE_NOMODE", value: 6)
!116 = !DIEnumerator(name: "MODE_NO_INTERLACE", value: 7)
!117 = !DIEnumerator(name: "MODE_NO_DBLESCAN", value: 8)
!118 = !DIEnumerator(name: "MODE_NO_VSCAN", value: 9)
!119 = !DIEnumerator(name: "MODE_MEM", value: 10)
!120 = !DIEnumerator(name: "MODE_VIRTUAL_X", value: 11)
!121 = !DIEnumerator(name: "MODE_VIRTUAL_Y", value: 12)
!122 = !DIEnumerator(name: "MODE_MEM_VIRT", value: 13)
!123 = !DIEnumerator(name: "MODE_NOCLOCK", value: 14)
!124 = !DIEnumerator(name: "MODE_CLOCK_HIGH", value: 15)
!125 = !DIEnumerator(name: "MODE_CLOCK_LOW", value: 16)
!126 = !DIEnumerator(name: "MODE_CLOCK_RANGE", value: 17)
!127 = !DIEnumerator(name: "MODE_BAD_HVALUE", value: 18)
!128 = !DIEnumerator(name: "MODE_BAD_VVALUE", value: 19)
!129 = !DIEnumerator(name: "MODE_BAD_VSCAN", value: 20)
!130 = !DIEnumerator(name: "MODE_HSYNC_NARROW", value: 21)
!131 = !DIEnumerator(name: "MODE_HSYNC_WIDE", value: 22)
!132 = !DIEnumerator(name: "MODE_HBLANK_NARROW", value: 23)
!133 = !DIEnumerator(name: "MODE_HBLANK_WIDE", value: 24)
!134 = !DIEnumerator(name: "MODE_VSYNC_NARROW", value: 25)
!135 = !DIEnumerator(name: "MODE_VSYNC_WIDE", value: 26)
!136 = !DIEnumerator(name: "MODE_VBLANK_NARROW", value: 27)
!137 = !DIEnumerator(name: "MODE_VBLANK_WIDE", value: 28)
!138 = !DIEnumerator(name: "MODE_PANEL", value: 29)
!139 = !DIEnumerator(name: "MODE_INTERLACE_WIDTH", value: 30)
!140 = !DIEnumerator(name: "MODE_ONE_WIDTH", value: 31)
!141 = !DIEnumerator(name: "MODE_ONE_HEIGHT", value: 32)
!142 = !DIEnumerator(name: "MODE_ONE_SIZE", value: 33)
!143 = !DIEnumerator(name: "MODE_NO_REDUCED", value: 34)
!144 = !DIEnumerator(name: "MODE_NO_STEREO", value: 35)
!145 = !DIEnumerator(name: "MODE_NO_420", value: 36)
!146 = !DIEnumerator(name: "MODE_STALE", value: -3)
!147 = !DIEnumerator(name: "MODE_BAD", value: -2)
!148 = !DIEnumerator(name: "MODE_ERROR", value: -1)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_picture_aspect", file: !150, line: 96, baseType: !5, size: 32, elements: !151)
!150 = !DIFile(filename: "./include/linux/hdmi.h", directory: "/home/lizy2001/genbc/linux")
!151 = !{!152, !153, !154, !155, !156, !157}
!152 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_NONE", value: 0, isUnsigned: true)
!153 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_4_3", value: 1, isUnsigned: true)
!154 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_16_9", value: 2, isUnsigned: true)
!155 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_64_27", value: 3, isUnsigned: true)
!156 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_256_135", value: 4, isUnsigned: true)
!157 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_RESERVED", value: 5, isUnsigned: true)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "switch_power_state", file: !159, line: 33, baseType: !5, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/drm/drm_device.h", directory: "/home/lizy2001/genbc/linux")
!160 = !{!161, !162, !163, !164}
!161 = !DIEnumerator(name: "DRM_SWITCH_POWER_ON", value: 0, isUnsigned: true)
!162 = !DIEnumerator(name: "DRM_SWITCH_POWER_OFF", value: 1, isUnsigned: true)
!163 = !DIEnumerator(name: "DRM_SWITCH_POWER_CHANGING", value: 2, isUnsigned: true)
!164 = !DIEnumerator(name: "DRM_SWITCH_POWER_DYNAMIC_OFF", value: 3, isUnsigned: true)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_debug_category", file: !166, line: 277, baseType: !5, size: 32, elements: !167)
!166 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/lizy2001/genbc/linux")
!167 = !{!168, !169, !170, !171, !172, !173, !174, !175, !176, !177}
!168 = !DIEnumerator(name: "DRM_UT_CORE", value: 1, isUnsigned: true)
!169 = !DIEnumerator(name: "DRM_UT_DRIVER", value: 2, isUnsigned: true)
!170 = !DIEnumerator(name: "DRM_UT_KMS", value: 4, isUnsigned: true)
!171 = !DIEnumerator(name: "DRM_UT_PRIME", value: 8, isUnsigned: true)
!172 = !DIEnumerator(name: "DRM_UT_ATOMIC", value: 16, isUnsigned: true)
!173 = !DIEnumerator(name: "DRM_UT_VBL", value: 32, isUnsigned: true)
!174 = !DIEnumerator(name: "DRM_UT_STATE", value: 64, isUnsigned: true)
!175 = !DIEnumerator(name: "DRM_UT_LEASE", value: 128, isUnsigned: true)
!176 = !DIEnumerator(name: "DRM_UT_DP", value: 256, isUnsigned: true)
!177 = !DIEnumerator(name: "DRM_UT_DRMRES", value: 512, isUnsigned: true)
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !179, line: 10, baseType: !5, size: 32, elements: !180)
!179 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!180 = !{!181, !182}
!181 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!182 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_driver_feature", file: !184, line: 50, baseType: !5, size: 32, elements: !185)
!184 = !DIFile(filename: "./include/drm/drm_drv.h", directory: "/home/lizy2001/genbc/linux")
!185 = !{!186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198}
!186 = !DIEnumerator(name: "DRIVER_GEM", value: 1, isUnsigned: true)
!187 = !DIEnumerator(name: "DRIVER_MODESET", value: 2, isUnsigned: true)
!188 = !DIEnumerator(name: "DRIVER_RENDER", value: 8, isUnsigned: true)
!189 = !DIEnumerator(name: "DRIVER_ATOMIC", value: 16, isUnsigned: true)
!190 = !DIEnumerator(name: "DRIVER_SYNCOBJ", value: 32, isUnsigned: true)
!191 = !DIEnumerator(name: "DRIVER_SYNCOBJ_TIMELINE", value: 64, isUnsigned: true)
!192 = !DIEnumerator(name: "DRIVER_USE_AGP", value: 33554432, isUnsigned: true)
!193 = !DIEnumerator(name: "DRIVER_LEGACY", value: 67108864, isUnsigned: true)
!194 = !DIEnumerator(name: "DRIVER_PCI_DMA", value: 134217728, isUnsigned: true)
!195 = !DIEnumerator(name: "DRIVER_SG", value: 268435456, isUnsigned: true)
!196 = !DIEnumerator(name: "DRIVER_HAVE_DMA", value: 536870912, isUnsigned: true)
!197 = !DIEnumerator(name: "DRIVER_HAVE_IRQ", value: 1073741824, isUnsigned: true)
!198 = !DIEnumerator(name: "DRIVER_KMS_LEGACY_CONTEXT", value: 2147483648, isUnsigned: true)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !200, line: 305, baseType: !5, size: 32, elements: !201)
!200 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!201 = !{!202, !203, !204, !205}
!202 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!203 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!204 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!205 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !207, line: 119, baseType: !5, size: 32, elements: !208)
!207 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!208 = !{!209, !210, !211, !212, !213}
!209 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0, isUnsigned: true)
!210 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1, isUnsigned: true)
!211 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2, isUnsigned: true)
!212 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3, isUnsigned: true)
!213 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4, isUnsigned: true)
!214 = !{!215, !217, !218, !220, !227, !228, !237, !3196}
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !216, line: 148, baseType: !5)
!216 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !107)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !216, line: 178, size: 128, elements: !224)
!224 = !{!225, !226}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !223, file: !216, line: 179, baseType: !222, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !223, file: !216, line: 179, baseType: !222, size: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !230, line: 640, size: 48640, elements: !231)
!230 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!231 = !{!232, !243, !246, !247, !256, !257, !258, !259, !260, !261, !262, !263, !267, !296, !308, !418, !419, !420, !431, !432, !434, !435, !2472, !2473, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2555, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2570, !2571, !2572, !2574, !2575, !2576, !2577, !2578, !2579, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2603, !2608, !2609, !2610, !2611, !2612, !2614, !2617, !2620, !2623, !2626, !2652, !2753, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2801, !2802, !2803, !2804, !2805, !2810, !2811, !2812, !2815, !2816, !2819, !2822, !2825, !2826, !2858, !2861, !2862, !2941, !2942, !2945, !2946, !2949, !2950, !2951, !2955, !2956, !2957, !2970, !2971, !2972, !2982, !2987, !2988, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !229, file: !230, line: 646, baseType: !233, size: 128)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !234, line: 56, size: 128, elements: !235)
!234 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!235 = !{!236, !238}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !233, file: !234, line: 57, baseType: !237, size: 64)
!237 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !233, file: !234, line: 58, baseType: !239, size: 32, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !240, line: 21, baseType: !241)
!240 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !242, line: 27, baseType: !5)
!242 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!243 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !229, file: !230, line: 649, baseType: !244, size: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !245)
!245 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !229, file: !230, line: 657, baseType: !217, size: 64, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !229, file: !230, line: 658, baseType: !248, size: 32, offset: 256)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !207, line: 113, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !207, line: 111, size: 32, elements: !250)
!250 = !{!251}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !249, file: !207, line: 112, baseType: !252, size: 32)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !216, line: 168, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !216, line: 166, size: 32, elements: !254)
!254 = !{!255}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !253, file: !216, line: 167, baseType: !107, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !229, file: !230, line: 660, baseType: !5, size: 32, offset: 288)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !229, file: !230, line: 661, baseType: !5, size: 32, offset: 320)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !229, file: !230, line: 684, baseType: !107, size: 32, offset: 352)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !229, file: !230, line: 686, baseType: !107, size: 32, offset: 384)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !229, file: !230, line: 687, baseType: !107, size: 32, offset: 416)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !229, file: !230, line: 688, baseType: !107, size: 32, offset: 448)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !229, file: !230, line: 689, baseType: !5, size: 32, offset: 480)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !229, file: !230, line: 691, baseType: !264, size: 64, offset: 512)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!266 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !230, line: 691, flags: DIFlagFwdDecl)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !229, file: !230, line: 692, baseType: !268, size: 832, offset: 576)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !230, line: 451, size: 832, elements: !269)
!269 = !{!270, !275, !283, !284, !285, !289, !290, !291, !292, !293}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !268, file: !230, line: 453, baseType: !271, size: 128)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !230, line: 325, size: 128, elements: !272)
!272 = !{!273, !274}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !271, file: !230, line: 326, baseType: !237, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !271, file: !230, line: 327, baseType: !239, size: 32, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !268, file: !230, line: 454, baseType: !276, size: 192, align: 64, offset: 128)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !277, line: 24, size: 192, align: 64, elements: !278)
!277 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!278 = !{!279, !280, !282}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !276, file: !277, line: 25, baseType: !237, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !276, file: !277, line: 26, baseType: !281, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !276, file: !277, line: 27, baseType: !281, size: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !268, file: !230, line: 455, baseType: !223, size: 128, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !268, file: !230, line: 456, baseType: !5, size: 32, offset: 448)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !268, file: !230, line: 458, baseType: !286, size: 64, offset: 512)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !240, line: 23, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !242, line: 31, baseType: !288)
!288 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !268, file: !230, line: 459, baseType: !286, size: 64, offset: 576)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !268, file: !230, line: 460, baseType: !286, size: 64, offset: 640)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !268, file: !230, line: 461, baseType: !286, size: 64, offset: 704)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !268, file: !230, line: 463, baseType: !286, size: 64, offset: 768)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !268, file: !230, line: 465, baseType: !294, offset: 832)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !230, line: 415, elements: !295)
!295 = !{}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !229, file: !230, line: 693, baseType: !297, size: 384, offset: 1408)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !230, line: 489, size: 384, elements: !298)
!298 = !{!299, !300, !301, !302, !303, !305, !306}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !297, file: !230, line: 490, baseType: !223, size: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !297, file: !230, line: 491, baseType: !237, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !297, file: !230, line: 492, baseType: !237, size: 64, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !297, file: !230, line: 493, baseType: !5, size: 32, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !297, file: !230, line: 494, baseType: !304, size: 16, offset: 288)
!304 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !297, file: !230, line: 495, baseType: !304, size: 16, offset: 304)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !297, file: !230, line: 497, baseType: !307, size: 64, offset: 320)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !229, file: !230, line: 697, baseType: !309, size: 1792, offset: 1792)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !230, line: 507, size: 1792, elements: !310)
!310 = !{!311, !312, !313, !314, !315, !316, !317, !321, !322, !323, !324, !325, !326, !327, !415, !416}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !309, file: !230, line: 508, baseType: !276, size: 192, align: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !309, file: !230, line: 515, baseType: !286, size: 64, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !309, file: !230, line: 516, baseType: !286, size: 64, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !309, file: !230, line: 517, baseType: !286, size: 64, offset: 320)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !309, file: !230, line: 518, baseType: !286, size: 64, offset: 384)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !309, file: !230, line: 519, baseType: !286, size: 64, offset: 448)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !309, file: !230, line: 526, baseType: !318, size: 64, offset: 512)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !240, line: 22, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !242, line: 30, baseType: !320)
!320 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !309, file: !230, line: 527, baseType: !286, size: 64, offset: 576)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !309, file: !230, line: 528, baseType: !5, size: 32, offset: 640)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !309, file: !230, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !309, file: !230, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !309, file: !230, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !309, file: !230, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !309, file: !230, line: 563, baseType: !328, size: 512, offset: 704)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !18, line: 118, size: 512, elements: !329)
!329 = !{!330, !338, !339, !344, !408, !412, !413, !414}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !328, file: !18, line: 119, baseType: !331, size: 256)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !332, line: 9, size: 256, elements: !333)
!332 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!333 = !{!334, !335}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !331, file: !332, line: 10, baseType: !276, size: 192, align: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !331, file: !332, line: 11, baseType: !336, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !337, line: 29, baseType: !318)
!337 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !328, file: !18, line: 120, baseType: !336, size: 64, offset: 256)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !328, file: !18, line: 121, baseType: !340, size: 64, offset: 320)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!17, !343}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !328, file: !18, line: 122, baseType: !345, size: 64, offset: 384)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !18, line: 159, size: 512, align: 512, elements: !347)
!347 = !{!348, !376, !377, !381, !391, !392, !403, !407}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !346, file: !18, line: 160, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !18, line: 214, size: 4608, align: 512, elements: !351)
!351 = !{!352, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !350, file: !18, line: 215, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !354, line: 29, baseType: !355)
!354 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !354, line: 20, elements: !356)
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !355, file: !354, line: 21, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !359, line: 25, baseType: !360)
!359 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !359, line: 25, elements: !295)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !350, file: !18, line: 216, baseType: !5, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !350, file: !18, line: 217, baseType: !5, size: 32, offset: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !350, file: !18, line: 218, baseType: !5, size: 32, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !350, file: !18, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !350, file: !18, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !350, file: !18, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !350, file: !18, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !350, file: !18, line: 233, baseType: !336, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !350, file: !18, line: 234, baseType: !343, size: 64, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !350, file: !18, line: 235, baseType: !336, size: 64, offset: 256)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !350, file: !18, line: 236, baseType: !343, size: 64, offset: 320)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !350, file: !18, line: 237, baseType: !373, size: 4096, offset: 512)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 4096, elements: !374)
!374 = !{!375}
!375 = !DISubrange(count: 8)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !346, file: !18, line: 161, baseType: !5, size: 32, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !346, file: !18, line: 162, baseType: !378, size: 32, offset: 96)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !216, line: 27, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !380, line: 96, baseType: !107)
!380 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!381 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !346, file: !18, line: 163, baseType: !382, size: 32, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !383, line: 276, baseType: !384)
!383 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !383, line: 276, size: 32, elements: !385)
!385 = !{!386}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !384, file: !383, line: 276, baseType: !387, size: 32)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !383, line: 70, baseType: !388)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !383, line: 65, size: 32, elements: !389)
!389 = !{!390}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !388, file: !383, line: 66, baseType: !5, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !346, file: !18, line: 164, baseType: !343, size: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !346, file: !18, line: 165, baseType: !393, size: 128, offset: 256)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !332, line: 14, size: 128, elements: !394)
!394 = !{!395}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !393, file: !332, line: 15, baseType: !396, size: 128)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !277, line: 125, size: 128, elements: !397)
!397 = !{!398, !402}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !396, file: !277, line: 126, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !277, line: 31, size: 64, elements: !400)
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !399, file: !277, line: 32, baseType: !281, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !396, file: !277, line: 127, baseType: !281, size: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !346, file: !18, line: 166, baseType: !404, size: 64, offset: 384)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!336}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !346, file: !18, line: 167, baseType: !336, size: 64, offset: 448)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !328, file: !18, line: 123, baseType: !409, size: 8, offset: 448)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !240, line: 17, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !242, line: 21, baseType: !411)
!411 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !328, file: !18, line: 124, baseType: !409, size: 8, offset: 456)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !328, file: !18, line: 125, baseType: !409, size: 8, offset: 464)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !328, file: !18, line: 126, baseType: !409, size: 8, offset: 472)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !309, file: !230, line: 572, baseType: !328, size: 512, offset: 1216)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !309, file: !230, line: 580, baseType: !417, size: 64, offset: 1728)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !229, file: !230, line: 721, baseType: !5, size: 32, offset: 3584)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !229, file: !230, line: 722, baseType: !107, size: 32, offset: 3616)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !229, file: !230, line: 723, baseType: !421, size: 64, offset: 3648)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !424, line: 17, baseType: !425)
!424 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !424, line: 17, size: 64, elements: !426)
!426 = !{!427}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !425, file: !424, line: 17, baseType: !428, size: 64)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 64, elements: !429)
!429 = !{!430}
!430 = !DISubrange(count: 1)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !229, file: !230, line: 724, baseType: !423, size: 64, offset: 3712)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !229, file: !230, line: 749, baseType: !433, offset: 3776)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !230, line: 290, elements: !295)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !229, file: !230, line: 751, baseType: !223, size: 128, offset: 3776)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !229, file: !230, line: 757, baseType: !436, size: 64, offset: 3904)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !438, line: 388, size: 7296, elements: !439)
!438 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!439 = !{!440, !2468}
!440 = !DIDerivedType(tag: DW_TAG_member, scope: !437, file: !438, line: 389, baseType: !441, size: 7296)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !437, file: !438, line: 389, size: 7296, elements: !442)
!442 = !{!443, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2391, !2397, !2400, !2439, !2440, !2452, !2453, !2456, !2457, !2458, !2461, !2462, !2463, !2466, !2467}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !441, file: !438, line: 390, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !438, line: 305, size: 1472, elements: !446)
!446 = !{!447, !448, !449, !450, !451, !452, !453, !454, !462, !463, !468, !469, !472, !2337, !2338, !2339, !2340, !2341}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !445, file: !438, line: 308, baseType: !237, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !445, file: !438, line: 309, baseType: !237, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !445, file: !438, line: 313, baseType: !444, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !445, file: !438, line: 313, baseType: !444, size: 64, offset: 192)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !445, file: !438, line: 315, baseType: !276, size: 192, align: 64, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !445, file: !438, line: 323, baseType: !237, size: 64, offset: 448)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !445, file: !438, line: 327, baseType: !436, size: 64, offset: 512)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !445, file: !438, line: 333, baseType: !455, size: 64, offset: 576)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !456, line: 284, baseType: !457)
!456 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !456, line: 284, size: 64, elements: !458)
!458 = !{!459}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !457, file: !456, line: 284, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !461, line: 19, baseType: !237)
!461 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!462 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !445, file: !438, line: 334, baseType: !237, size: 64, offset: 640)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !445, file: !438, line: 343, baseType: !464, size: 256, offset: 704)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !445, file: !438, line: 340, size: 256, elements: !465)
!465 = !{!466, !467}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !464, file: !438, line: 341, baseType: !276, size: 192, align: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !464, file: !438, line: 342, baseType: !237, size: 64, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !445, file: !438, line: 351, baseType: !223, size: 128, offset: 960)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !445, file: !438, line: 353, baseType: !470, size: 64, offset: 1088)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !438, line: 353, flags: DIFlagFwdDecl)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !445, file: !438, line: 356, baseType: !473, size: 64, offset: 1152)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !475)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !12, line: 557, size: 832, elements: !476)
!476 = !{!477, !481, !482, !486, !490, !2311, !2315, !2319, !2323, !2324, !2325, !2329, !2333}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !475, file: !12, line: 558, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !444}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !475, file: !12, line: 559, baseType: !478, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !475, file: !12, line: 560, baseType: !483, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!107, !444, !237}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !475, file: !12, line: 561, baseType: !487, size: 64, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!107, !444}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !475, file: !12, line: 562, baseType: !491, size: 64, offset: 256)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!494, !495}
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !438, line: 682, baseType: !5)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !12, line: 508, size: 768, elements: !497)
!497 = !{!498, !499, !500, !501, !502, !503, !510, !517, !523, !2305, !2306, !2308, !2310}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !496, file: !12, line: 509, baseType: !444, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !496, file: !12, line: 510, baseType: !5, size: 32, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !496, file: !12, line: 511, baseType: !215, size: 32, offset: 96)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !496, file: !12, line: 512, baseType: !237, size: 64, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !496, file: !12, line: 513, baseType: !237, size: 64, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !496, file: !12, line: 514, baseType: !504, size: 64, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !456, line: 385, baseType: !506)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !456, line: 385, size: 64, elements: !507)
!507 = !{!508}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !506, file: !456, line: 385, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !461, line: 15, baseType: !237)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !496, file: !12, line: 516, baseType: !511, size: 64, offset: 320)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !456, line: 359, baseType: !513)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !456, line: 359, size: 64, elements: !514)
!514 = !{!515}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !513, file: !456, line: 359, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !461, line: 16, baseType: !237)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !496, file: !12, line: 519, baseType: !518, size: 64, offset: 384)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !461, line: 21, baseType: !519)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !461, line: 21, size: 64, elements: !520)
!520 = !{!521}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !519, file: !461, line: 21, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !461, line: 14, baseType: !237)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !496, file: !12, line: 521, baseType: !524, size: 64, offset: 448)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !438, line: 68, size: 512, align: 128, elements: !526)
!526 = !{!527, !528, !2297, !2304}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !525, file: !438, line: 69, baseType: !237, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, scope: !525, file: !438, line: 77, baseType: !529, size: 320, offset: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !525, file: !438, line: 77, size: 320, elements: !530)
!530 = !{!531, !2160, !2165, !2191, !2199, !2205, !2218, !2296}
!531 = !DIDerivedType(tag: DW_TAG_member, scope: !529, file: !438, line: 78, baseType: !532, size: 320)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !529, file: !438, line: 78, size: 320, elements: !533)
!533 = !{!534, !535, !2158, !2159}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !532, file: !438, line: 84, baseType: !223, size: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !532, file: !438, line: 86, baseType: !536, size: 64, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !42, line: 451, size: 1216, align: 64, elements: !538)
!538 = !{!539, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2153, !2154, !2155, !2156, !2157}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !537, file: !42, line: 452, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !42, line: 610, size: 4224, elements: !542)
!542 = !{!543, !545, !546, !554, !561, !562, !1983, !1984, !1985, !1986, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2027, !2035, !2036, !2037, !2047, !2048, !2049, !2050}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !541, file: !42, line: 611, baseType: !544, size: 16)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !216, line: 19, baseType: !304)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !541, file: !42, line: 612, baseType: !304, size: 16, offset: 16)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !541, file: !42, line: 613, baseType: !547, size: 32, offset: 32)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !548, line: 23, baseType: !549)
!548 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !548, line: 21, size: 32, elements: !550)
!550 = !{!551}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !549, file: !548, line: 22, baseType: !552, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !216, line: 32, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !380, line: 49, baseType: !5)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !541, file: !42, line: 614, baseType: !555, size: 32, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !548, line: 28, baseType: !556)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !548, line: 26, size: 32, elements: !557)
!557 = !{!558}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !556, file: !548, line: 27, baseType: !559, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !216, line: 33, baseType: !560)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !380, line: 50, baseType: !5)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !541, file: !42, line: 615, baseType: !5, size: 32, offset: 96)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !541, file: !42, line: 622, baseType: !563, size: 64, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !565)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !42, line: 1864, size: 1536, align: 512, elements: !566)
!566 = !{!567, !1857, !1870, !1874, !1880, !1884, !1888, !1892, !1896, !1900, !1904, !1905, !1909, !1913, !1933, !1959, !1963, !1969, !1974, !1978, !1979}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !565, file: !42, line: 1865, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!571, !540, !571, !5}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !573, line: 89, size: 1536, elements: !574)
!573 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!574 = !{!575, !576, !581, !589, !590, !605, !606, !610, !629, !703, !1842, !1843, !1844, !1849, !1850, !1851}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !572, file: !573, line: 91, baseType: !5, size: 32)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !572, file: !573, line: 92, baseType: !577, size: 32, offset: 32)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !383, line: 277, baseType: !578)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !383, line: 277, size: 32, elements: !579)
!579 = !{!580}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !578, file: !383, line: 277, baseType: !387, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !572, file: !573, line: 93, baseType: !582, size: 128, offset: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !583, line: 38, size: 128, elements: !584)
!583 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!584 = !{!585, !587}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !582, file: !583, line: 39, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !582, file: !583, line: 39, baseType: !588, size: 64, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !572, file: !573, line: 94, baseType: !571, size: 64, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !572, file: !573, line: 95, baseType: !591, size: 128, offset: 256)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !573, line: 47, size: 128, elements: !592)
!592 = !{!593, !602}
!593 = !DIDerivedType(tag: DW_TAG_member, scope: !591, file: !573, line: 48, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !591, file: !573, line: 48, size: 64, elements: !595)
!595 = !{!596, !601}
!596 = !DIDerivedType(tag: DW_TAG_member, scope: !594, file: !573, line: 49, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !594, file: !573, line: 49, size: 64, elements: !598)
!598 = !{!599, !600}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !597, file: !573, line: 50, baseType: !239, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !597, file: !573, line: 50, baseType: !239, size: 32, offset: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !594, file: !573, line: 52, baseType: !286, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !591, file: !573, line: 54, baseType: !603, size: 64, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !411)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !572, file: !573, line: 96, baseType: !540, size: 64, offset: 384)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !572, file: !573, line: 98, baseType: !607, size: 256, offset: 448)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 256, elements: !608)
!608 = !{!609}
!609 = !DISubrange(count: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !572, file: !573, line: 101, baseType: !611, size: 32, offset: 704)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !612, line: 25, size: 32, elements: !613)
!612 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!613 = !{!614}
!614 = !DIDerivedType(tag: DW_TAG_member, scope: !611, file: !612, line: 26, baseType: !615, size: 32)
!615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !611, file: !612, line: 26, size: 32, elements: !616)
!616 = !{!617}
!617 = !DIDerivedType(tag: DW_TAG_member, scope: !615, file: !612, line: 30, baseType: !618, size: 32)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !615, file: !612, line: 30, size: 32, elements: !619)
!619 = !{!620, !628}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !618, file: !612, line: 31, baseType: !621)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !354, line: 83, baseType: !622)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !354, line: 71, elements: !623)
!623 = !{!624}
!624 = !DIDerivedType(tag: DW_TAG_member, scope: !622, file: !354, line: 72, baseType: !625)
!625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !622, file: !354, line: 72, elements: !626)
!626 = !{!627}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !625, file: !354, line: 73, baseType: !355)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !618, file: !612, line: 32, baseType: !107, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !572, file: !573, line: 102, baseType: !630, size: 64, offset: 768)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !573, line: 135, size: 1024, align: 512, elements: !633)
!633 = !{!634, !638, !639, !646, !655, !659, !663, !667, !668, !672, !677, !689, !697}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !632, file: !573, line: 136, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!107, !571, !5}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !632, file: !573, line: 137, baseType: !635, size: 64, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !632, file: !573, line: 138, baseType: !640, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!107, !643, !645}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !572)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !632, file: !573, line: 139, baseType: !647, size: 64, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!107, !643, !5, !650, !653}
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !652)
!652 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !591)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !632, file: !573, line: 141, baseType: !656, size: 64, offset: 256)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!107, !643}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !632, file: !573, line: 142, baseType: !660, size: 64, offset: 320)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!107, !571}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !632, file: !573, line: 143, baseType: !664, size: 64, offset: 384)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{null, !571}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !632, file: !573, line: 144, baseType: !664, size: 64, offset: 448)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !632, file: !573, line: 145, baseType: !669, size: 64, offset: 512)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !571, !540}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !632, file: !573, line: 146, baseType: !673, size: 64, offset: 576)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!676, !571, !676, !107}
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !632, file: !573, line: 147, baseType: !678, size: 64, offset: 640)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!681, !683}
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !573, line: 18, flags: DIFlagFwdDecl)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !685, line: 8, size: 128, elements: !686)
!685 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!686 = !{!687, !688}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !684, file: !685, line: 9, baseType: !681, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !684, file: !685, line: 10, baseType: !571, size: 64, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !632, file: !573, line: 148, baseType: !690, size: 64, offset: 704)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!107, !693, !695}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !684)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !216, line: 30, baseType: !696)
!696 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !632, file: !573, line: 149, baseType: !698, size: 64, offset: 768)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!571, !571, !701}
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !541)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !572, file: !573, line: 103, baseType: !704, size: 64, offset: 832)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !42, line: 1416, size: 9472, elements: !706)
!706 = !{!707, !708, !711, !712, !713, !716, !767, !1493, !1575, !1658, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1674, !1678, !1679, !1682, !1685, !1688, !1689, !1690, !1731, !1758, !1759, !1760, !1761, !1762, !1763, !1766, !1768, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1798, !1799, !1800, !1801, !1802, !1806, !1807, !1808, !1823, !1824, !1825, !1836, !1837, !1838, !1839, !1840, !1841}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !705, file: !42, line: 1417, baseType: !223, size: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !705, file: !42, line: 1418, baseType: !709, size: 32, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !216, line: 16, baseType: !710)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !216, line: 13, baseType: !239)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !705, file: !42, line: 1419, baseType: !411, size: 8, offset: 160)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !705, file: !42, line: 1420, baseType: !237, size: 64, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !705, file: !42, line: 1421, baseType: !714, size: 64, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !216, line: 46, baseType: !715)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !380, line: 88, baseType: !320)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !705, file: !42, line: 1422, baseType: !717, size: 64, offset: 320)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !42, line: 2228, size: 576, elements: !719)
!719 = !{!720, !721, !722, !728, !732, !736, !740, !744, !745, !755, !758, !759, !760, !764, !765, !766}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !718, file: !42, line: 2229, baseType: !650, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !718, file: !42, line: 2230, baseType: !107, size: 32, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !718, file: !42, line: 2238, baseType: !723, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!107, !726}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !42, line: 69, flags: DIFlagFwdDecl)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !718, file: !42, line: 2239, baseType: !729, size: 64, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !731)
!731 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !42, line: 70, flags: DIFlagFwdDecl)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !718, file: !42, line: 2240, baseType: !733, size: 64, offset: 256)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!571, !717, !107, !650, !217}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !718, file: !42, line: 2242, baseType: !737, size: 64, offset: 320)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{null, !704}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !718, file: !42, line: 2243, baseType: !741, size: 64, offset: 384)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !743, line: 76, flags: DIFlagFwdDecl)
!743 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!744 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !718, file: !42, line: 2244, baseType: !717, size: 64, offset: 448)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !718, file: !42, line: 2245, baseType: !746, size: 64, offset: 512)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !216, line: 182, size: 64, elements: !747)
!747 = !{!748}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !746, file: !216, line: 183, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !216, line: 186, size: 128, elements: !751)
!751 = !{!752, !753}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !750, file: !216, line: 187, baseType: !749, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !750, file: !216, line: 187, baseType: !754, size: 64, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !718, file: !42, line: 2247, baseType: !756, offset: 576)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !757, line: 187, elements: !295)
!757 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!758 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !718, file: !42, line: 2248, baseType: !756, offset: 576)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !718, file: !42, line: 2249, baseType: !756, offset: 576)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !718, file: !42, line: 2250, baseType: !761, offset: 576)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !756, elements: !762)
!762 = !{!763}
!763 = !DISubrange(count: 3)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !718, file: !42, line: 2252, baseType: !756, offset: 576)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !718, file: !42, line: 2253, baseType: !756, offset: 576)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !718, file: !42, line: 2254, baseType: !756, offset: 576)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !705, file: !42, line: 1423, baseType: !768, size: 64, offset: 384)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !770)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !42, line: 1935, size: 1472, elements: !771)
!771 = !{!772, !776, !780, !781, !785, !791, !795, !796, !797, !801, !805, !806, !807, !808, !814, !819, !820, !1470, !1471, !1472, !1473, !1477, !1492}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !770, file: !42, line: 1936, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!540, !704}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !770, file: !42, line: 1937, baseType: !777, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{null, !540}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !770, file: !42, line: 1938, baseType: !777, size: 64, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !770, file: !42, line: 1940, baseType: !782, size: 64, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{null, !540, !107}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !770, file: !42, line: 1941, baseType: !786, size: 64, offset: 256)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!107, !540, !789}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !12, line: 40, flags: DIFlagFwdDecl)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !770, file: !42, line: 1942, baseType: !792, size: 64, offset: 320)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!107, !540}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !770, file: !42, line: 1943, baseType: !777, size: 64, offset: 384)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !770, file: !42, line: 1944, baseType: !737, size: 64, offset: 448)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !770, file: !42, line: 1945, baseType: !798, size: 64, offset: 512)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!107, !704, !107}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !770, file: !42, line: 1946, baseType: !802, size: 64, offset: 576)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!107, !704}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !770, file: !42, line: 1947, baseType: !802, size: 64, offset: 640)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !770, file: !42, line: 1948, baseType: !802, size: 64, offset: 704)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !770, file: !42, line: 1949, baseType: !802, size: 64, offset: 768)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !770, file: !42, line: 1950, baseType: !809, size: 64, offset: 832)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!107, !571, !812}
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !42, line: 57, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !770, file: !42, line: 1951, baseType: !815, size: 64, offset: 896)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{!107, !704, !818, !676}
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !770, file: !42, line: 1952, baseType: !737, size: 64, offset: 960)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !770, file: !42, line: 1954, baseType: !821, size: 64, offset: 1024)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!107, !824, !571}
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !826, line: 16, size: 896, elements: !827)
!826 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!827 = !{!828, !829, !833, !834, !835, !836, !837, !838, !851, !873, !874, !1469}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !825, file: !826, line: 17, baseType: !676, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !825, file: !826, line: 18, baseType: !830, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !216, line: 55, baseType: !831)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !380, line: 72, baseType: !832)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !380, line: 16, baseType: !237)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !825, file: !826, line: 19, baseType: !830, size: 64, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !825, file: !826, line: 20, baseType: !830, size: 64, offset: 192)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !825, file: !826, line: 21, baseType: !830, size: 64, offset: 256)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !825, file: !826, line: 22, baseType: !714, size: 64, offset: 320)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !825, file: !826, line: 23, baseType: !714, size: 64, offset: 384)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !825, file: !826, line: 24, baseType: !839, size: 192, offset: 448)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !840, line: 53, size: 192, elements: !841)
!840 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!841 = !{!842, !849, !850}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !839, file: !840, line: 54, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !844, line: 13, baseType: !845)
!844 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !216, line: 175, baseType: !846)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !216, line: 173, size: 64, elements: !847)
!847 = !{!848}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !846, file: !216, line: 174, baseType: !318, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !839, file: !840, line: 55, baseType: !621, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !839, file: !840, line: 59, baseType: !223, size: 128, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !825, file: !826, line: 25, baseType: !852, size: 64, offset: 640)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !854)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !826, line: 31, size: 256, elements: !855)
!855 = !{!856, !861, !865, !869}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !854, file: !826, line: 32, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!217, !824, !860}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !854, file: !826, line: 33, baseType: !862, size: 64, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{null, !824, !217}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !854, file: !826, line: 34, baseType: !866, size: 64, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!217, !824, !217, !860}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !854, file: !826, line: 35, baseType: !870, size: 64, offset: 192)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!107, !824, !217}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !825, file: !826, line: 26, baseType: !107, size: 32, offset: 704)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !825, file: !826, line: 27, baseType: !875, size: 64, offset: 768)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !877)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !42, line: 916, size: 1856, align: 32, elements: !878)
!878 = !{!879, !897, !898, !899, !1173, !1174, !1175, !1176, !1177, !1179, !1180, !1181, !1256, !1451, !1460, !1461, !1462, !1463, !1464, !1465, !1468}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !877, file: !42, line: 920, baseType: !880, size: 128)
!880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !877, file: !42, line: 917, size: 128, elements: !881)
!881 = !{!882, !888}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !880, file: !42, line: 918, baseType: !883, size: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !884, line: 58, size: 64, elements: !885)
!884 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!885 = !{!886}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !883, file: !884, line: 59, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !880, file: !42, line: 919, baseType: !889, size: 128, align: 64)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !216, line: 216, size: 128, align: 64, elements: !890)
!890 = !{!891, !893}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !889, file: !216, line: 217, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !889, file: !216, line: 218, baseType: !894, size: 64, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{null, !892}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !877, file: !42, line: 921, baseType: !684, size: 128, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !877, file: !42, line: 922, baseType: !540, size: 64, offset: 256)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !877, file: !42, line: 923, baseType: !900, size: 64, offset: 320)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !902)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !42, line: 1822, size: 2048, elements: !903)
!903 = !{!904, !905, !910, !917, !921, !949, !950, !954, !967, !968, !991, !995, !996, !1000, !1001, !1005, !1010, !1011, !1015, !1019, !1128, !1132, !1136, !1140, !1141, !1147, !1151, !1156, !1160, !1164, !1168, !1172}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !902, file: !42, line: 1823, baseType: !741, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !902, file: !42, line: 1824, baseType: !906, size: 64, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DISubroutineType(types: !908)
!908 = !{!714, !909, !714, !107}
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !902, file: !42, line: 1825, baseType: !911, size: 64, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{!914, !909, !676, !830, !860}
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !216, line: 60, baseType: !915)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !380, line: 73, baseType: !916)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !380, line: 15, baseType: !245)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !902, file: !42, line: 1826, baseType: !918, size: 64, offset: 192)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{!914, !909, !650, !830, !860}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !902, file: !42, line: 1827, baseType: !922, size: 64, offset: 256)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{!914, !925, !947}
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !42, line: 320, size: 384, elements: !927)
!927 = !{!928, !929, !930, !934, !935, !936, !939, !940}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !926, file: !42, line: 321, baseType: !909, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !926, file: !42, line: 326, baseType: !714, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !926, file: !42, line: 327, baseType: !931, size: 64, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{null, !925, !245, !245}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !926, file: !42, line: 328, baseType: !217, size: 64, offset: 192)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !926, file: !42, line: 329, baseType: !107, size: 32, offset: 256)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !926, file: !42, line: 330, baseType: !937, size: 16, offset: 288)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !240, line: 19, baseType: !938)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !242, line: 24, baseType: !304)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !926, file: !42, line: 331, baseType: !937, size: 16, offset: 304)
!940 = !DIDerivedType(tag: DW_TAG_member, scope: !926, file: !42, line: 332, baseType: !941, size: 64, offset: 320)
!941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !926, file: !42, line: 332, size: 64, elements: !942)
!942 = !{!943, !944}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !941, file: !42, line: 333, baseType: !5, size: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !941, file: !42, line: 334, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !42, line: 334, flags: DIFlagFwdDecl)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !42, line: 64, flags: DIFlagFwdDecl)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !902, file: !42, line: 1828, baseType: !922, size: 64, offset: 320)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !902, file: !42, line: 1829, baseType: !951, size: 64, offset: 384)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{!107, !925, !695}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !902, file: !42, line: 1830, baseType: !955, size: 64, offset: 448)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{!107, !909, !958}
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !42, line: 1776, size: 128, elements: !960)
!960 = !{!961, !966}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !959, file: !42, line: 1777, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !42, line: 1773, baseType: !963)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!107, !958, !650, !107, !714, !286, !5}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !959, file: !42, line: 1778, baseType: !714, size: 64, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !902, file: !42, line: 1831, baseType: !955, size: 64, offset: 512)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !902, file: !42, line: 1832, baseType: !969, size: 64, offset: 576)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!972, !909, !974}
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !973, line: 52, baseType: !5)
!973 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !976, line: 43, size: 128, elements: !977)
!976 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!977 = !{!978, !990}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !975, file: !976, line: 44, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !976, line: 37, baseType: !980)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{null, !909, !983, !974}
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !985, line: 40, baseType: !986)
!985 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !985, line: 36, size: 128, elements: !987)
!987 = !{!988, !989}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !986, file: !985, line: 37, baseType: !621)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !986, file: !985, line: 38, baseType: !223, size: 128)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !975, file: !976, line: 45, baseType: !972, size: 32, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !902, file: !42, line: 1833, baseType: !992, size: 64, offset: 640)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{!245, !909, !5, !237}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !902, file: !42, line: 1834, baseType: !992, size: 64, offset: 704)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !902, file: !42, line: 1835, baseType: !997, size: 64, offset: 768)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DISubroutineType(types: !999)
!999 = !{!107, !909, !444}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !902, file: !42, line: 1836, baseType: !237, size: 64, offset: 832)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !902, file: !42, line: 1837, baseType: !1002, size: 64, offset: 896)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!107, !540, !909}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !902, file: !42, line: 1838, baseType: !1006, size: 64, offset: 960)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!107, !909, !1009}
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !42, line: 1007, baseType: !217)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !902, file: !42, line: 1839, baseType: !1002, size: 64, offset: 1024)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !902, file: !42, line: 1840, baseType: !1012, size: 64, offset: 1088)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!107, !909, !714, !714, !107}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !902, file: !42, line: 1841, baseType: !1016, size: 64, offset: 1152)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!107, !107, !909, !107}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !902, file: !42, line: 1842, baseType: !1020, size: 64, offset: 1216)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!107, !909, !107, !1023}
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !42, line: 1062, size: 1664, elements: !1025)
!1025 = !{!1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1057, !1058, !1059, !1072, !1104}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1024, file: !42, line: 1063, baseType: !1023, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1024, file: !42, line: 1064, baseType: !223, size: 128, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1024, file: !42, line: 1065, baseType: !750, size: 128, offset: 192)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1024, file: !42, line: 1066, baseType: !223, size: 128, offset: 320)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1024, file: !42, line: 1069, baseType: !223, size: 128, offset: 448)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1024, file: !42, line: 1072, baseType: !1009, size: 64, offset: 576)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1024, file: !42, line: 1073, baseType: !5, size: 32, offset: 640)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1024, file: !42, line: 1074, baseType: !411, size: 8, offset: 672)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1024, file: !42, line: 1075, baseType: !5, size: 32, offset: 704)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1024, file: !42, line: 1076, baseType: !107, size: 32, offset: 736)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1024, file: !42, line: 1077, baseType: !984, size: 128, offset: 768)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1024, file: !42, line: 1078, baseType: !909, size: 64, offset: 896)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1024, file: !42, line: 1079, baseType: !714, size: 64, offset: 960)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1024, file: !42, line: 1080, baseType: !714, size: 64, offset: 1024)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1024, file: !42, line: 1082, baseType: !1041, size: 64, offset: 1088)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !42, line: 1314, size: 320, elements: !1043)
!1043 = !{!1044, !1052, !1053, !1054, !1055, !1056}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1042, file: !42, line: 1315, baseType: !1045)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1046, line: 20, baseType: !1047)
!1046 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1046, line: 11, elements: !1048)
!1048 = !{!1049}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1047, file: !1046, line: 12, baseType: !1050)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !359, line: 33, baseType: !1051)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !359, line: 31, elements: !295)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1042, file: !42, line: 1316, baseType: !107, size: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1042, file: !42, line: 1317, baseType: !107, size: 32, offset: 32)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1042, file: !42, line: 1318, baseType: !1041, size: 64, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1042, file: !42, line: 1319, baseType: !909, size: 64, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1042, file: !42, line: 1320, baseType: !889, size: 128, align: 64, offset: 192)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1024, file: !42, line: 1084, baseType: !237, size: 64, offset: 1152)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1024, file: !42, line: 1085, baseType: !237, size: 64, offset: 1216)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1024, file: !42, line: 1087, baseType: !1060, size: 64, offset: 1280)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1062)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !42, line: 1011, size: 128, elements: !1063)
!1063 = !{!1064, !1068}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1062, file: !42, line: 1012, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{null, !1023, !1023}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1062, file: !42, line: 1013, baseType: !1069, size: 64, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{null, !1023}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1024, file: !42, line: 1088, baseType: !1073, size: 64, offset: 1344)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1075)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !42, line: 1016, size: 512, elements: !1076)
!1076 = !{!1077, !1081, !1085, !1086, !1090, !1094, !1098, !1103}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1075, file: !42, line: 1017, baseType: !1078, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!1009, !1009}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1075, file: !42, line: 1018, baseType: !1082, size: 64, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{null, !1009}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1075, file: !42, line: 1019, baseType: !1069, size: 64, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1075, file: !42, line: 1020, baseType: !1087, size: 64, offset: 192)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!107, !1023, !107}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1075, file: !42, line: 1021, baseType: !1091, size: 64, offset: 256)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!695, !1023}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1075, file: !42, line: 1022, baseType: !1095, size: 64, offset: 320)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!107, !1023, !107, !222}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1075, file: !42, line: 1023, baseType: !1099, size: 64, offset: 384)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{null, !1023, !1102}
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1075, file: !42, line: 1024, baseType: !1091, size: 64, offset: 448)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1024, file: !42, line: 1097, baseType: !1105, size: 256, offset: 1408)
!1105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1024, file: !42, line: 1089, size: 256, elements: !1106)
!1106 = !{!1107, !1116, !1122}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1105, file: !42, line: 1090, baseType: !1108, size: 256)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1109, line: 10, size: 256, elements: !1110)
!1109 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!1110 = !{!1111, !1112, !1115}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1108, file: !1109, line: 11, baseType: !239, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1108, file: !1109, line: 12, baseType: !1113, size: 64, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1109, line: 5, flags: DIFlagFwdDecl)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1108, file: !1109, line: 13, baseType: !223, size: 128, offset: 128)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1105, file: !42, line: 1091, baseType: !1117, size: 64)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1109, line: 17, size: 64, elements: !1118)
!1118 = !{!1119}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1117, file: !1109, line: 18, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1109, line: 16, flags: DIFlagFwdDecl)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1105, file: !42, line: 1096, baseType: !1123, size: 192)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1105, file: !42, line: 1092, size: 192, elements: !1124)
!1124 = !{!1125, !1126, !1127}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1123, file: !42, line: 1093, baseType: !223, size: 128)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1123, file: !42, line: 1094, baseType: !107, size: 32, offset: 128)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1123, file: !42, line: 1095, baseType: !5, size: 32, offset: 160)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !902, file: !42, line: 1843, baseType: !1129, size: 64, offset: 1280)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!914, !909, !524, !107, !830, !860, !107}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !902, file: !42, line: 1844, baseType: !1133, size: 64, offset: 1344)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!237, !909, !237, !237, !237, !237}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !902, file: !42, line: 1845, baseType: !1137, size: 64, offset: 1408)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!107, !107}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !902, file: !42, line: 1846, baseType: !1020, size: 64, offset: 1472)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !902, file: !42, line: 1847, baseType: !1142, size: 64, offset: 1536)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!914, !1145, !909, !860, !830, !5}
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !230, line: 53, flags: DIFlagFwdDecl)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !902, file: !42, line: 1848, baseType: !1148, size: 64, offset: 1600)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!914, !909, !860, !1145, !830, !5}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !902, file: !42, line: 1849, baseType: !1152, size: 64, offset: 1664)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!107, !909, !245, !1155, !1102}
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !902, file: !42, line: 1850, baseType: !1157, size: 64, offset: 1728)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!245, !909, !107, !714, !714}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !902, file: !42, line: 1852, baseType: !1161, size: 64, offset: 1792)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{null, !824, !909}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !902, file: !42, line: 1856, baseType: !1165, size: 64, offset: 1856)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!914, !909, !714, !909, !714, !830, !5}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !902, file: !42, line: 1858, baseType: !1169, size: 64, offset: 1920)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!714, !909, !714, !909, !714, !714, !5}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !902, file: !42, line: 1861, baseType: !1012, size: 64, offset: 1984)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !877, file: !42, line: 929, baseType: !621, offset: 384)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !877, file: !42, line: 930, baseType: !41, size: 32, offset: 384)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !877, file: !42, line: 931, baseType: !843, size: 64, offset: 448)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !877, file: !42, line: 932, baseType: !5, size: 32, offset: 512)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !877, file: !42, line: 933, baseType: !1178, size: 32, offset: 544)
!1178 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !216, line: 150, baseType: !5)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !877, file: !42, line: 934, baseType: !839, size: 192, offset: 576)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !877, file: !42, line: 935, baseType: !714, size: 64, offset: 768)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !877, file: !42, line: 936, baseType: !1182, size: 192, offset: 832)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !42, line: 885, size: 192, elements: !1183)
!1183 = !{!1184, !1185, !1252, !1253, !1254, !1255}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1182, file: !42, line: 886, baseType: !1045)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1182, file: !42, line: 887, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !51, line: 59, size: 768, elements: !1188)
!1188 = !{!1189, !1190, !1191, !1192, !1196, !1197, !1198, !1199}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1187, file: !51, line: 61, baseType: !248, size: 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1187, file: !51, line: 62, baseType: !5, size: 32, offset: 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1187, file: !51, line: 63, baseType: !621, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1187, file: !51, line: 65, baseType: !1193, size: 256, offset: 64)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !746, size: 256, elements: !1194)
!1194 = !{!1195}
!1195 = !DISubrange(count: 4)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1187, file: !51, line: 66, baseType: !746, size: 64, offset: 320)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1187, file: !51, line: 68, baseType: !984, size: 128, offset: 384)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1187, file: !51, line: 69, baseType: !889, size: 128, align: 64, offset: 512)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1187, file: !51, line: 70, baseType: !1200, size: 128, offset: 640)
!1200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1201, size: 128, elements: !429)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !51, line: 54, size: 128, elements: !1202)
!1202 = !{!1203, !1204}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1201, file: !51, line: 55, baseType: !107, size: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1201, file: !51, line: 56, baseType: !1205, size: 64, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1207, line: 20, size: 1088, elements: !1208)
!1207 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/lizy2001/genbc/linux")
!1208 = !{!1209, !1214, !1227, !1228, !1229, !1230, !1233, !1234, !1235, !1238, !1241, !1242}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1206, file: !1207, line: 21, baseType: !1210, size: 32)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1211, line: 19, size: 32, elements: !1212)
!1211 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1212 = !{!1213}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1210, file: !1211, line: 20, baseType: !248, size: 32)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1206, file: !1207, line: 22, baseType: !1215, size: 192, offset: 64)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1216, line: 19, size: 192, elements: !1217)
!1216 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1217 = !{!1218, !1225, !1226}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1215, file: !1216, line: 20, baseType: !1219, size: 128)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1220, line: 292, size: 128, elements: !1221)
!1220 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1221 = !{!1222, !1223, !1224}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1219, file: !1220, line: 293, baseType: !621)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1219, file: !1220, line: 295, baseType: !215, size: 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1219, file: !1220, line: 296, baseType: !217, size: 64, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1215, file: !1216, line: 21, baseType: !5, size: 32, offset: 128)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1215, file: !1216, line: 22, baseType: !5, size: 32, offset: 160)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1206, file: !1207, line: 23, baseType: !889, size: 128, align: 64, offset: 256)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1206, file: !1207, line: 24, baseType: !5, size: 32, offset: 384)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1206, file: !1207, line: 25, baseType: !228, size: 64, offset: 448)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1206, file: !1207, line: 26, baseType: !1231, size: 64, offset: 512)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !438, line: 117, flags: DIFlagFwdDecl)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1206, file: !1207, line: 27, baseType: !5, size: 32, offset: 576)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1206, file: !1207, line: 28, baseType: !1205, size: 64, offset: 640)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1206, file: !1207, line: 32, baseType: !1236, size: 64, offset: 704)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !438, line: 516, flags: DIFlagFwdDecl)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1206, file: !1207, line: 33, baseType: !1239, size: 64, offset: 768)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1207, line: 33, flags: DIFlagFwdDecl)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1206, file: !1207, line: 34, baseType: !107, size: 32, offset: 832)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1206, file: !1207, line: 35, baseType: !1243, size: 192, offset: 896)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1244, line: 7, size: 192, elements: !1245)
!1244 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/lizy2001/genbc/linux")
!1245 = !{!1246, !1247, !1251}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1243, file: !1244, line: 8, baseType: !843, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1243, file: !1244, line: 9, baseType: !1248, size: 64, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1250)
!1250 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1244, line: 5, flags: DIFlagFwdDecl)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1243, file: !1244, line: 10, baseType: !5, size: 32, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1182, file: !42, line: 888, baseType: !50, size: 32, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1182, file: !42, line: 889, baseType: !547, size: 32, offset: 96)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1182, file: !42, line: 889, baseType: !547, size: 32, offset: 128)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1182, file: !42, line: 890, baseType: !107, size: 32, offset: 160)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !877, file: !42, line: 937, baseType: !1257, size: 64, offset: 1024)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1259)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1260, line: 111, size: 1280, elements: !1261)
!1260 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1261 = !{!1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1281, !1282, !1283, !1284, !1285, !1286, !1406, !1407, !1408, !1409, !1435, !1436, !1446}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1259, file: !1260, line: 112, baseType: !252, size: 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1259, file: !1260, line: 120, baseType: !547, size: 32, offset: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1259, file: !1260, line: 121, baseType: !555, size: 32, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1259, file: !1260, line: 122, baseType: !547, size: 32, offset: 96)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1259, file: !1260, line: 123, baseType: !555, size: 32, offset: 128)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1259, file: !1260, line: 124, baseType: !547, size: 32, offset: 160)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1259, file: !1260, line: 125, baseType: !555, size: 32, offset: 192)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1259, file: !1260, line: 126, baseType: !547, size: 32, offset: 224)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1259, file: !1260, line: 127, baseType: !555, size: 32, offset: 256)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1259, file: !1260, line: 128, baseType: !5, size: 32, offset: 288)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1259, file: !1260, line: 129, baseType: !1273, size: 64, offset: 320)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1274, line: 26, baseType: !1275)
!1274 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1274, line: 24, size: 64, elements: !1276)
!1276 = !{!1277}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1275, file: !1274, line: 25, baseType: !1278, size: 64)
!1278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 64, elements: !1279)
!1279 = !{!1280}
!1280 = !DISubrange(count: 2)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1259, file: !1260, line: 130, baseType: !1273, size: 64, offset: 384)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1259, file: !1260, line: 131, baseType: !1273, size: 64, offset: 448)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1259, file: !1260, line: 132, baseType: !1273, size: 64, offset: 512)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1259, file: !1260, line: 133, baseType: !1273, size: 64, offset: 576)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1259, file: !1260, line: 135, baseType: !411, size: 8, offset: 640)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1259, file: !1260, line: 137, baseType: !1287, size: 64, offset: 704)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1289, line: 189, size: 1664, elements: !1290)
!1289 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1290 = !{!1291, !1292, !1297, !1302, !1310, !1313, !1314, !1321, !1322, !1323, !1324, !1327, !1328, !1329, !1331, !1332, !1370, !1391}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1288, file: !1289, line: 190, baseType: !248, size: 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1288, file: !1289, line: 191, baseType: !1293, size: 32, offset: 32)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1289, line: 28, baseType: !1294)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !216, line: 98, baseType: !1295)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !240, line: 20, baseType: !1296)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !242, line: 26, baseType: !107)
!1297 = !DIDerivedType(tag: DW_TAG_member, scope: !1288, file: !1289, line: 192, baseType: !1298, size: 192, offset: 64)
!1298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1288, file: !1289, line: 192, size: 192, elements: !1299)
!1299 = !{!1300, !1301}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1298, file: !1289, line: 193, baseType: !223, size: 128)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1298, file: !1289, line: 194, baseType: !276, size: 192, align: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1288, file: !1289, line: 199, baseType: !1303, size: 256, offset: 256)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1304, line: 35, size: 256, elements: !1305)
!1304 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1305 = !{!1306, !1307, !1308, !1309}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1303, file: !1304, line: 36, baseType: !843, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1303, file: !1304, line: 42, baseType: !843, size: 64, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1303, file: !1304, line: 46, baseType: !353, offset: 128)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1303, file: !1304, line: 47, baseType: !223, size: 128, offset: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1288, file: !1289, line: 200, baseType: !1311, size: 64, offset: 512)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1289, line: 200, flags: DIFlagFwdDecl)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1288, file: !1289, line: 201, baseType: !217, size: 64, offset: 576)
!1314 = !DIDerivedType(tag: DW_TAG_member, scope: !1288, file: !1289, line: 202, baseType: !1315, size: 64, offset: 640)
!1315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1288, file: !1289, line: 202, size: 64, elements: !1316)
!1316 = !{!1317, !1320}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1315, file: !1289, line: 203, baseType: !1318, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1319, line: 8, baseType: !319)
!1319 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1315, file: !1289, line: 204, baseType: !1318, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1288, file: !1289, line: 206, baseType: !1318, size: 64, offset: 704)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1288, file: !1289, line: 207, baseType: !547, size: 32, offset: 768)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1288, file: !1289, line: 208, baseType: !555, size: 32, offset: 800)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1288, file: !1289, line: 209, baseType: !1325, size: 32, offset: 832)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1289, line: 31, baseType: !1326)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !216, line: 104, baseType: !239)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1288, file: !1289, line: 210, baseType: !304, size: 16, offset: 864)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1288, file: !1289, line: 211, baseType: !304, size: 16, offset: 880)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1288, file: !1289, line: 215, baseType: !1330, size: 16, offset: 896)
!1330 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1288, file: !1289, line: 222, baseType: !237, size: 64, offset: 960)
!1332 = !DIDerivedType(tag: DW_TAG_member, scope: !1288, file: !1289, line: 239, baseType: !1333, size: 320, offset: 1024)
!1333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1288, file: !1289, line: 239, size: 320, elements: !1334)
!1334 = !{!1335, !1362}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1333, file: !1289, line: 240, baseType: !1336, size: 320)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1289, line: 108, size: 320, elements: !1337)
!1337 = !{!1338, !1339, !1351, !1354, !1361}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1336, file: !1289, line: 110, baseType: !237, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, scope: !1336, file: !1289, line: 111, baseType: !1340, size: 64, offset: 64)
!1340 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1336, file: !1289, line: 111, size: 64, elements: !1341)
!1341 = !{!1342, !1350}
!1342 = !DIDerivedType(tag: DW_TAG_member, scope: !1340, file: !1289, line: 112, baseType: !1343, size: 64)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1340, file: !1289, line: 112, size: 64, elements: !1344)
!1344 = !{!1345, !1346}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1343, file: !1289, line: 114, baseType: !937, size: 16)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1343, file: !1289, line: 115, baseType: !1347, size: 48, offset: 16)
!1347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !652, size: 48, elements: !1348)
!1348 = !{!1349}
!1349 = !DISubrange(count: 6)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1340, file: !1289, line: 121, baseType: !237, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1336, file: !1289, line: 123, baseType: !1352, size: 64, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1289, line: 96, flags: DIFlagFwdDecl)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1336, file: !1289, line: 124, baseType: !1355, size: 64, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1289, line: 102, size: 192, elements: !1357)
!1357 = !{!1358, !1359, !1360}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1356, file: !1289, line: 103, baseType: !889, size: 128, align: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1356, file: !1289, line: 104, baseType: !248, size: 32, offset: 128)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1356, file: !1289, line: 105, baseType: !695, size: 8, offset: 160)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1336, file: !1289, line: 125, baseType: !650, size: 64, offset: 256)
!1362 = !DIDerivedType(tag: DW_TAG_member, scope: !1333, file: !1289, line: 241, baseType: !1363, size: 320)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1333, file: !1289, line: 241, size: 320, elements: !1364)
!1364 = !{!1365, !1366, !1367, !1368, !1369}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1363, file: !1289, line: 242, baseType: !237, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1363, file: !1289, line: 243, baseType: !237, size: 64, offset: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1363, file: !1289, line: 244, baseType: !1352, size: 64, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1363, file: !1289, line: 245, baseType: !1355, size: 64, offset: 192)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1363, file: !1289, line: 246, baseType: !676, size: 64, offset: 256)
!1370 = !DIDerivedType(tag: DW_TAG_member, scope: !1288, file: !1289, line: 254, baseType: !1371, size: 256, offset: 1344)
!1371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1288, file: !1289, line: 254, size: 256, elements: !1372)
!1372 = !{!1373, !1379}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1371, file: !1289, line: 255, baseType: !1374, size: 256)
!1374 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1289, line: 128, size: 256, elements: !1375)
!1375 = !{!1376, !1377}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1374, file: !1289, line: 129, baseType: !217, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1374, file: !1289, line: 130, baseType: !1378, size: 256)
!1378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 256, elements: !1194)
!1379 = !DIDerivedType(tag: DW_TAG_member, scope: !1371, file: !1289, line: 256, baseType: !1380, size: 256)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1371, file: !1289, line: 256, size: 256, elements: !1381)
!1381 = !{!1382, !1383}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1380, file: !1289, line: 258, baseType: !223, size: 128)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1380, file: !1289, line: 259, baseType: !1384, size: 128, offset: 128)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1385, line: 22, size: 128, elements: !1386)
!1385 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1386 = !{!1387, !1390}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1384, file: !1385, line: 23, baseType: !1388, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1385, line: 23, flags: DIFlagFwdDecl)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1384, file: !1385, line: 24, baseType: !237, size: 64, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1288, file: !1289, line: 274, baseType: !1392, size: 64, offset: 1600)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1289, line: 170, size: 192, elements: !1394)
!1394 = !{!1395, !1404, !1405}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1393, file: !1289, line: 171, baseType: !1396, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1289, line: 165, baseType: !1397)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!107, !1287, !1400, !1402, !1287}
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1353)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1374)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1393, file: !1289, line: 172, baseType: !1287, size: 64, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1393, file: !1289, line: 173, baseType: !1352, size: 64, offset: 128)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1259, file: !1260, line: 138, baseType: !1287, size: 64, offset: 768)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1259, file: !1260, line: 139, baseType: !1287, size: 64, offset: 832)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1259, file: !1260, line: 140, baseType: !1287, size: 64, offset: 896)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1259, file: !1260, line: 145, baseType: !1410, size: 64, offset: 960)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1412, line: 13, size: 896, elements: !1413)
!1412 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1413 = !{!1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1411, file: !1412, line: 14, baseType: !248, size: 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1411, file: !1412, line: 15, baseType: !252, size: 32, offset: 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1411, file: !1412, line: 16, baseType: !252, size: 32, offset: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1411, file: !1412, line: 21, baseType: !843, size: 64, offset: 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1411, file: !1412, line: 27, baseType: !237, size: 64, offset: 192)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1411, file: !1412, line: 28, baseType: !237, size: 64, offset: 256)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1411, file: !1412, line: 29, baseType: !843, size: 64, offset: 320)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1411, file: !1412, line: 32, baseType: !750, size: 128, offset: 384)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1411, file: !1412, line: 33, baseType: !547, size: 32, offset: 512)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1411, file: !1412, line: 37, baseType: !843, size: 64, offset: 576)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1411, file: !1412, line: 44, baseType: !1425, size: 256, offset: 640)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1426, line: 15, size: 256, elements: !1427)
!1426 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1427 = !{!1428, !1429, !1430, !1431, !1432, !1433, !1434}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1425, file: !1426, line: 16, baseType: !353)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1425, file: !1426, line: 18, baseType: !107, size: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1425, file: !1426, line: 19, baseType: !107, size: 32, offset: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1425, file: !1426, line: 20, baseType: !107, size: 32, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1425, file: !1426, line: 21, baseType: !107, size: 32, offset: 96)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1425, file: !1426, line: 22, baseType: !237, size: 64, offset: 128)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1425, file: !1426, line: 23, baseType: !237, size: 64, offset: 192)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1259, file: !1260, line: 146, baseType: !1236, size: 64, offset: 1024)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1259, file: !1260, line: 147, baseType: !1437, size: 64, offset: 1088)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1260, line: 25, size: 64, elements: !1439)
!1439 = !{!1440, !1441, !1442}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1438, file: !1260, line: 26, baseType: !252, size: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1438, file: !1260, line: 27, baseType: !107, size: 32, offset: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1438, file: !1260, line: 28, baseType: !1443, offset: 64)
!1443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !555, elements: !1444)
!1444 = !{!1445}
!1445 = !DISubrange(count: 0)
!1446 = !DIDerivedType(tag: DW_TAG_member, scope: !1259, file: !1260, line: 149, baseType: !1447, size: 128, offset: 1152)
!1447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1259, file: !1260, line: 149, size: 128, elements: !1448)
!1448 = !{!1449, !1450}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1447, file: !1260, line: 150, baseType: !107, size: 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1447, file: !1260, line: 151, baseType: !889, size: 128, align: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !877, file: !42, line: 938, baseType: !1452, size: 256, offset: 1088)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !42, line: 896, size: 256, elements: !1453)
!1453 = !{!1454, !1455, !1456, !1457, !1458, !1459}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1452, file: !42, line: 897, baseType: !237, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1452, file: !42, line: 898, baseType: !5, size: 32, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1452, file: !42, line: 899, baseType: !5, size: 32, offset: 96)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1452, file: !42, line: 902, baseType: !5, size: 32, offset: 128)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1452, file: !42, line: 903, baseType: !5, size: 32, offset: 160)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1452, file: !42, line: 904, baseType: !714, size: 64, offset: 192)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !877, file: !42, line: 940, baseType: !286, size: 64, offset: 1344)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !877, file: !42, line: 945, baseType: !217, size: 64, offset: 1408)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !877, file: !42, line: 949, baseType: !223, size: 128, offset: 1472)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !877, file: !42, line: 950, baseType: !223, size: 128, offset: 1600)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !877, file: !42, line: 952, baseType: !536, size: 64, offset: 1728)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !877, file: !42, line: 953, baseType: !1466, size: 32, offset: 1792)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1467, line: 8, baseType: !239)
!1467 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !877, file: !42, line: 954, baseType: !1466, size: 32, offset: 1824)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !825, file: !826, line: 28, baseType: !217, size: 64, offset: 832)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !770, file: !42, line: 1955, baseType: !821, size: 64, offset: 1088)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !770, file: !42, line: 1956, baseType: !821, size: 64, offset: 1152)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !770, file: !42, line: 1957, baseType: !821, size: 64, offset: 1216)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !770, file: !42, line: 1963, baseType: !1474, size: 64, offset: 1280)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!107, !704, !524, !215}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !770, file: !42, line: 1964, baseType: !1478, size: 64, offset: 1344)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!245, !704, !1481}
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1483, line: 12, size: 256, elements: !1484)
!1483 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!1484 = !{!1485, !1486, !1487, !1488, !1489}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1482, file: !1483, line: 13, baseType: !215, size: 32)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1482, file: !1483, line: 16, baseType: !107, size: 32, offset: 32)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1482, file: !1483, line: 23, baseType: !237, size: 64, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1482, file: !1483, line: 30, baseType: !237, size: 64, offset: 128)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1482, file: !1483, line: 33, baseType: !1490, size: 64, offset: 192)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !438, line: 27, flags: DIFlagFwdDecl)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !770, file: !42, line: 1966, baseType: !1478, size: 64, offset: 1408)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !705, file: !42, line: 1424, baseType: !1494, size: 64, offset: 448)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1496)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !36, line: 322, size: 704, elements: !1497)
!1497 = !{!1498, !1544, !1548, !1552, !1553, !1554, !1555, !1556, !1561, !1566, !1570}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1496, file: !36, line: 323, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!107, !1502}
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !36, line: 294, size: 1600, elements: !1504)
!1504 = !{!1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1529, !1530, !1531}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1503, file: !36, line: 295, baseType: !750, size: 128)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1503, file: !36, line: 296, baseType: !223, size: 128, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1503, file: !36, line: 297, baseType: !223, size: 128, offset: 256)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1503, file: !36, line: 298, baseType: !223, size: 128, offset: 384)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1503, file: !36, line: 299, baseType: !839, size: 192, offset: 512)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1503, file: !36, line: 300, baseType: !621, offset: 704)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1503, file: !36, line: 301, baseType: !252, size: 32, offset: 704)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1503, file: !36, line: 302, baseType: !704, size: 64, offset: 768)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1503, file: !36, line: 303, baseType: !1514, size: 64, offset: 832)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !36, line: 68, size: 64, elements: !1515)
!1515 = !{!1516, !1528}
!1516 = !DIDerivedType(tag: DW_TAG_member, scope: !1514, file: !36, line: 69, baseType: !1517, size: 32)
!1517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1514, file: !36, line: 69, size: 32, elements: !1518)
!1518 = !{!1519, !1520, !1521}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1517, file: !36, line: 70, baseType: !547, size: 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1517, file: !36, line: 71, baseType: !555, size: 32)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1517, file: !36, line: 72, baseType: !1522, size: 32)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1523, line: 24, baseType: !1524)
!1523 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1523, line: 22, size: 32, elements: !1525)
!1525 = !{!1526}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1524, file: !1523, line: 23, baseType: !1527, size: 32)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1523, line: 20, baseType: !553)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1514, file: !36, line: 74, baseType: !35, size: 32, offset: 32)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1503, file: !36, line: 304, baseType: !714, size: 64, offset: 896)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1503, file: !36, line: 305, baseType: !237, size: 64, offset: 960)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1503, file: !36, line: 306, baseType: !1532, size: 576, offset: 1024)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !36, line: 205, size: 576, elements: !1533)
!1533 = !{!1534, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1532, file: !36, line: 206, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !36, line: 66, baseType: !320)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1532, file: !36, line: 207, baseType: !1535, size: 64, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1532, file: !36, line: 208, baseType: !1535, size: 64, offset: 128)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1532, file: !36, line: 209, baseType: !1535, size: 64, offset: 192)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1532, file: !36, line: 210, baseType: !1535, size: 64, offset: 256)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1532, file: !36, line: 211, baseType: !1535, size: 64, offset: 320)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1532, file: !36, line: 212, baseType: !1535, size: 64, offset: 384)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1532, file: !36, line: 213, baseType: !1318, size: 64, offset: 448)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1532, file: !36, line: 214, baseType: !1318, size: 64, offset: 512)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1496, file: !36, line: 324, baseType: !1545, size: 64, offset: 64)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!1502, !704, !107}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1496, file: !36, line: 325, baseType: !1549, size: 64, offset: 128)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{null, !1502}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1496, file: !36, line: 326, baseType: !1499, size: 64, offset: 192)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1496, file: !36, line: 327, baseType: !1499, size: 64, offset: 256)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1496, file: !36, line: 328, baseType: !1499, size: 64, offset: 320)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1496, file: !36, line: 329, baseType: !798, size: 64, offset: 384)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1496, file: !36, line: 332, baseType: !1557, size: 64, offset: 448)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!1560, !540}
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1496, file: !36, line: 333, baseType: !1562, size: 64, offset: 512)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!107, !540, !1565}
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1496, file: !36, line: 335, baseType: !1567, size: 64, offset: 576)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!107, !540, !1560}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1496, file: !36, line: 337, baseType: !1571, size: 64, offset: 640)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!107, !704, !1574}
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !705, file: !42, line: 1425, baseType: !1576, size: 64, offset: 512)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1578)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !36, line: 428, size: 704, elements: !1579)
!1579 = !{!1580, !1584, !1585, !1589, !1590, !1591, !1606, !1629, !1633, !1634, !1657}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1578, file: !36, line: 429, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!107, !704, !107, !107, !693}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1578, file: !36, line: 430, baseType: !798, size: 64, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1578, file: !36, line: 431, baseType: !1586, size: 64, offset: 128)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!107, !704, !5}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1578, file: !36, line: 432, baseType: !1586, size: 64, offset: 192)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1578, file: !36, line: 433, baseType: !798, size: 64, offset: 256)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1578, file: !36, line: 434, baseType: !1592, size: 64, offset: 320)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!107, !704, !107, !1595}
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !36, line: 415, size: 256, elements: !1597)
!1597 = !{!1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1596, file: !36, line: 416, baseType: !107, size: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1596, file: !36, line: 417, baseType: !5, size: 32, offset: 32)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1596, file: !36, line: 418, baseType: !5, size: 32, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1596, file: !36, line: 420, baseType: !5, size: 32, offset: 96)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1596, file: !36, line: 421, baseType: !5, size: 32, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1596, file: !36, line: 422, baseType: !5, size: 32, offset: 160)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1596, file: !36, line: 423, baseType: !5, size: 32, offset: 192)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1596, file: !36, line: 424, baseType: !5, size: 32, offset: 224)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1578, file: !36, line: 435, baseType: !1607, size: 64, offset: 384)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!107, !704, !1514, !1610}
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !36, line: 343, size: 960, elements: !1612)
!1612 = !{!1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1611, file: !36, line: 344, baseType: !107, size: 32)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1611, file: !36, line: 345, baseType: !286, size: 64, offset: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1611, file: !36, line: 346, baseType: !286, size: 64, offset: 128)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1611, file: !36, line: 347, baseType: !286, size: 64, offset: 192)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1611, file: !36, line: 348, baseType: !286, size: 64, offset: 256)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1611, file: !36, line: 349, baseType: !286, size: 64, offset: 320)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1611, file: !36, line: 350, baseType: !286, size: 64, offset: 384)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1611, file: !36, line: 351, baseType: !318, size: 64, offset: 448)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1611, file: !36, line: 353, baseType: !318, size: 64, offset: 512)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1611, file: !36, line: 354, baseType: !107, size: 32, offset: 576)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1611, file: !36, line: 355, baseType: !107, size: 32, offset: 608)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1611, file: !36, line: 356, baseType: !286, size: 64, offset: 640)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1611, file: !36, line: 357, baseType: !286, size: 64, offset: 704)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1611, file: !36, line: 358, baseType: !286, size: 64, offset: 768)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1611, file: !36, line: 359, baseType: !318, size: 64, offset: 832)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1611, file: !36, line: 360, baseType: !107, size: 32, offset: 896)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1578, file: !36, line: 436, baseType: !1630, size: 64, offset: 448)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!107, !704, !1574, !1610}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1578, file: !36, line: 438, baseType: !1607, size: 64, offset: 512)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1578, file: !36, line: 439, baseType: !1635, size: 64, offset: 576)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!107, !704, !1638}
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !36, line: 409, size: 1408, elements: !1640)
!1640 = !{!1641, !1642}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1639, file: !36, line: 410, baseType: !5, size: 32)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1639, file: !36, line: 411, baseType: !1643, size: 1344, offset: 64)
!1643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1644, size: 1344, elements: !762)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !36, line: 395, size: 448, elements: !1645)
!1645 = !{!1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1656}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1644, file: !36, line: 396, baseType: !5, size: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1644, file: !36, line: 397, baseType: !5, size: 32, offset: 32)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1644, file: !36, line: 399, baseType: !5, size: 32, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1644, file: !36, line: 400, baseType: !5, size: 32, offset: 96)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1644, file: !36, line: 401, baseType: !5, size: 32, offset: 128)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1644, file: !36, line: 402, baseType: !5, size: 32, offset: 160)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1644, file: !36, line: 403, baseType: !5, size: 32, offset: 192)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1644, file: !36, line: 404, baseType: !288, size: 64, offset: 256)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1644, file: !36, line: 405, baseType: !1655, size: 64, offset: 320)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !216, line: 126, baseType: !286)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1644, file: !36, line: 406, baseType: !1655, size: 64, offset: 384)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1578, file: !36, line: 440, baseType: !1586, size: 64, offset: 640)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !705, file: !42, line: 1426, baseType: !1659, size: 64, offset: 576)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1661)
!1661 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !42, line: 49, flags: DIFlagFwdDecl)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !705, file: !42, line: 1427, baseType: !237, size: 64, offset: 640)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !705, file: !42, line: 1428, baseType: !237, size: 64, offset: 704)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !705, file: !42, line: 1429, baseType: !237, size: 64, offset: 768)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !705, file: !42, line: 1430, baseType: !571, size: 64, offset: 832)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !705, file: !42, line: 1431, baseType: !1303, size: 256, offset: 896)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !705, file: !42, line: 1432, baseType: !107, size: 32, offset: 1152)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !705, file: !42, line: 1433, baseType: !252, size: 32, offset: 1184)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !705, file: !42, line: 1437, baseType: !1670, size: 64, offset: 1216)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1673)
!1673 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !42, line: 1437, flags: DIFlagFwdDecl)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !705, file: !42, line: 1449, baseType: !1675, size: 64, offset: 1280)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !583, line: 34, size: 64, elements: !1676)
!1676 = !{!1677}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1675, file: !583, line: 35, baseType: !586, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !705, file: !42, line: 1450, baseType: !223, size: 128, offset: 1344)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !705, file: !42, line: 1451, baseType: !1680, size: 64, offset: 1472)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !42, line: 699, flags: DIFlagFwdDecl)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !705, file: !42, line: 1452, baseType: !1683, size: 64, offset: 1536)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !230, line: 40, flags: DIFlagFwdDecl)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !705, file: !42, line: 1453, baseType: !1686, size: 64, offset: 1600)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !42, line: 1453, flags: DIFlagFwdDecl)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !705, file: !42, line: 1454, baseType: !750, size: 128, offset: 1664)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !705, file: !42, line: 1455, baseType: !5, size: 32, offset: 1792)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !705, file: !42, line: 1456, baseType: !1691, size: 2432, offset: 1856)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !36, line: 518, size: 2432, elements: !1692)
!1692 = !{!1693, !1694, !1695, !1697, !1729}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1691, file: !36, line: 519, baseType: !5, size: 32)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1691, file: !36, line: 520, baseType: !1303, size: 256, offset: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1691, file: !36, line: 521, baseType: !1696, size: 192, offset: 320)
!1696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 192, elements: !762)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1691, file: !36, line: 522, baseType: !1698, size: 1728, offset: 512)
!1698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1699, size: 1728, elements: !762)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !36, line: 222, size: 576, elements: !1700)
!1700 = !{!1701, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1699, file: !36, line: 223, baseType: !1702, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !36, line: 443, size: 256, elements: !1704)
!1704 = !{!1705, !1706, !1719, !1720}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1703, file: !36, line: 444, baseType: !107, size: 32)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1703, file: !36, line: 445, baseType: !1707, size: 64, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1709)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !36, line: 310, size: 512, elements: !1710)
!1710 = !{!1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1709, file: !36, line: 311, baseType: !798, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1709, file: !36, line: 312, baseType: !798, size: 64, offset: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1709, file: !36, line: 313, baseType: !798, size: 64, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1709, file: !36, line: 314, baseType: !798, size: 64, offset: 192)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1709, file: !36, line: 315, baseType: !1499, size: 64, offset: 256)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1709, file: !36, line: 316, baseType: !1499, size: 64, offset: 320)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1709, file: !36, line: 317, baseType: !1499, size: 64, offset: 384)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1709, file: !36, line: 318, baseType: !1571, size: 64, offset: 448)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1703, file: !36, line: 446, baseType: !741, size: 64, offset: 128)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1703, file: !36, line: 447, baseType: !1702, size: 64, offset: 192)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1699, file: !36, line: 224, baseType: !107, size: 32, offset: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1699, file: !36, line: 226, baseType: !223, size: 128, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1699, file: !36, line: 227, baseType: !237, size: 64, offset: 256)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1699, file: !36, line: 228, baseType: !5, size: 32, offset: 320)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1699, file: !36, line: 229, baseType: !5, size: 32, offset: 352)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1699, file: !36, line: 230, baseType: !1535, size: 64, offset: 384)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1699, file: !36, line: 231, baseType: !1535, size: 64, offset: 448)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1699, file: !36, line: 232, baseType: !217, size: 64, offset: 512)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1691, file: !36, line: 523, baseType: !1730, size: 192, offset: 2240)
!1730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1707, size: 192, elements: !762)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !705, file: !42, line: 1458, baseType: !1732, size: 2112, offset: 4288)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !42, line: 1410, size: 2112, elements: !1733)
!1733 = !{!1734, !1735, !1736}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1732, file: !42, line: 1411, baseType: !107, size: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !1732, file: !42, line: 1412, baseType: !984, size: 128, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1732, file: !42, line: 1413, baseType: !1737, size: 1920, offset: 192)
!1737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1738, size: 1920, elements: !762)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1739, line: 12, size: 640, elements: !1740)
!1739 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1740 = !{!1741, !1749, !1751, !1756, !1757}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1738, file: !1739, line: 13, baseType: !1742, size: 320)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1743, line: 17, size: 320, elements: !1744)
!1743 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!1744 = !{!1745, !1746, !1747, !1748}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1742, file: !1743, line: 18, baseType: !107, size: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1742, file: !1743, line: 19, baseType: !107, size: 32, offset: 32)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1742, file: !1743, line: 20, baseType: !984, size: 128, offset: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1742, file: !1743, line: 22, baseType: !889, size: 128, align: 64, offset: 192)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1738, file: !1739, line: 14, baseType: !1750, size: 64, offset: 320)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1738, file: !1739, line: 15, baseType: !1752, size: 64, offset: 384)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1753, line: 16, size: 64, elements: !1754)
!1753 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!1754 = !{!1755}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1752, file: !1753, line: 17, baseType: !228, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1738, file: !1739, line: 16, baseType: !984, size: 128, offset: 448)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1738, file: !1739, line: 17, baseType: !252, size: 32, offset: 576)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !705, file: !42, line: 1465, baseType: !217, size: 64, offset: 6400)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !705, file: !42, line: 1468, baseType: !239, size: 32, offset: 6464)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !705, file: !42, line: 1470, baseType: !1318, size: 64, offset: 6528)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !705, file: !42, line: 1471, baseType: !1318, size: 64, offset: 6592)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !705, file: !42, line: 1473, baseType: !241, size: 32, offset: 6656)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !705, file: !42, line: 1474, baseType: !1764, size: 64, offset: 6720)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !42, line: 603, flags: DIFlagFwdDecl)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !705, file: !42, line: 1477, baseType: !1767, size: 256, offset: 6784)
!1767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !652, size: 256, elements: !608)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !705, file: !42, line: 1478, baseType: !1769, size: 128, offset: 7040)
!1769 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1770, line: 18, baseType: !1771)
!1770 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1770, line: 16, size: 128, elements: !1772)
!1772 = !{!1773}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1771, file: !1770, line: 17, baseType: !1774, size: 128)
!1774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 128, elements: !1775)
!1775 = !{!1776}
!1776 = !DISubrange(count: 16)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !705, file: !42, line: 1480, baseType: !5, size: 32, offset: 7168)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !705, file: !42, line: 1481, baseType: !1178, size: 32, offset: 7200)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !705, file: !42, line: 1487, baseType: !839, size: 192, offset: 7232)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !705, file: !42, line: 1493, baseType: !650, size: 64, offset: 7424)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !705, file: !42, line: 1495, baseType: !630, size: 64, offset: 7488)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !705, file: !42, line: 1500, baseType: !107, size: 32, offset: 7552)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !705, file: !42, line: 1502, baseType: !1784, size: 448, offset: 7616)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1483, line: 60, size: 448, elements: !1785)
!1785 = !{!1786, !1791, !1792, !1793, !1794, !1795, !1796}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1784, file: !1483, line: 61, baseType: !1787, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!237, !1790, !1481}
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1784, file: !1483, line: 63, baseType: !1787, size: 64, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1784, file: !1483, line: 66, baseType: !245, size: 64, offset: 128)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1784, file: !1483, line: 67, baseType: !107, size: 32, offset: 192)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1784, file: !1483, line: 68, baseType: !5, size: 32, offset: 224)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1784, file: !1483, line: 71, baseType: !223, size: 128, offset: 256)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1784, file: !1483, line: 77, baseType: !1797, size: 64, offset: 384)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !705, file: !42, line: 1505, baseType: !843, size: 64, offset: 8064)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !705, file: !42, line: 1508, baseType: !843, size: 64, offset: 8128)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !705, file: !42, line: 1511, baseType: !107, size: 32, offset: 8192)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !705, file: !42, line: 1514, baseType: !1466, size: 32, offset: 8224)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !705, file: !42, line: 1517, baseType: !1803, size: 64, offset: 8256)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1805, line: 18, flags: DIFlagFwdDecl)
!1805 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !705, file: !42, line: 1518, baseType: !746, size: 64, offset: 8320)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !705, file: !42, line: 1525, baseType: !1236, size: 64, offset: 8384)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !705, file: !42, line: 1532, baseType: !1809, size: 64, offset: 8448)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1810, line: 52, size: 64, elements: !1811)
!1810 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!1811 = !{!1812}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1809, file: !1810, line: 53, baseType: !1813, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1810, line: 40, size: 256, elements: !1815)
!1815 = !{!1816, !1817, !1822}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1814, file: !1810, line: 42, baseType: !621)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1814, file: !1810, line: 44, baseType: !1818, size: 192)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1810, line: 28, size: 192, elements: !1819)
!1819 = !{!1820, !1821}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1818, file: !1810, line: 29, baseType: !223, size: 128)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1818, file: !1810, line: 31, baseType: !245, size: 64, offset: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1814, file: !1810, line: 49, baseType: !245, size: 64, offset: 192)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !705, file: !42, line: 1533, baseType: !1809, size: 64, offset: 8512)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !705, file: !42, line: 1534, baseType: !889, size: 128, align: 64, offset: 8576)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !705, file: !42, line: 1535, baseType: !1826, size: 256, offset: 8704)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1805, line: 102, size: 256, elements: !1827)
!1827 = !{!1828, !1829, !1830}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1826, file: !1805, line: 103, baseType: !843, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1826, file: !1805, line: 104, baseType: !223, size: 128, offset: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1826, file: !1805, line: 105, baseType: !1831, size: 64, offset: 192)
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1805, line: 21, baseType: !1832)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{null, !1835}
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !705, file: !42, line: 1537, baseType: !839, size: 192, offset: 8960)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !705, file: !42, line: 1542, baseType: !107, size: 32, offset: 9152)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !705, file: !42, line: 1545, baseType: !621, offset: 9184)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !705, file: !42, line: 1546, baseType: !223, size: 128, offset: 9216)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !705, file: !42, line: 1548, baseType: !621, offset: 9344)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !705, file: !42, line: 1549, baseType: !223, size: 128, offset: 9344)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !572, file: !573, line: 104, baseType: !237, size: 64, offset: 896)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !572, file: !573, line: 105, baseType: !217, size: 64, offset: 960)
!1844 = !DIDerivedType(tag: DW_TAG_member, scope: !572, file: !573, line: 107, baseType: !1845, size: 128, offset: 1024)
!1845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !572, file: !573, line: 107, size: 128, elements: !1846)
!1846 = !{!1847, !1848}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !1845, file: !573, line: 108, baseType: !223, size: 128)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !1845, file: !573, line: 109, baseType: !983, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !572, file: !573, line: 111, baseType: !223, size: 128, offset: 1152)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !572, file: !573, line: 112, baseType: !223, size: 128, offset: 1280)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !572, file: !573, line: 120, baseType: !1852, size: 128, offset: 1408)
!1852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !572, file: !573, line: 116, size: 128, elements: !1853)
!1853 = !{!1854, !1855, !1856}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !1852, file: !573, line: 117, baseType: !750, size: 128)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !1852, file: !573, line: 118, baseType: !582, size: 128)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !1852, file: !573, line: 119, baseType: !889, size: 128, align: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !565, file: !42, line: 1866, baseType: !1858, size: 64, offset: 64)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!650, !571, !540, !1861}
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1863, line: 10, size: 128, elements: !1864)
!1863 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!1864 = !{!1865, !1869}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1862, file: !1863, line: 11, baseType: !1866, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{null, !217}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1862, file: !1863, line: 12, baseType: !217, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !565, file: !42, line: 1867, baseType: !1871, size: 64, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!107, !540, !107}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !565, file: !42, line: 1868, baseType: !1875, size: 64, offset: 192)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!1878, !540, !107}
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !42, line: 581, flags: DIFlagFwdDecl)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !565, file: !42, line: 1870, baseType: !1881, size: 64, offset: 256)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!107, !571, !676, !107}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !565, file: !42, line: 1872, baseType: !1885, size: 64, offset: 320)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!107, !540, !571, !544, !695}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !565, file: !42, line: 1873, baseType: !1889, size: 64, offset: 384)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!107, !571, !540, !571}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !565, file: !42, line: 1874, baseType: !1893, size: 64, offset: 448)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!107, !540, !571}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !565, file: !42, line: 1875, baseType: !1897, size: 64, offset: 512)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!107, !540, !571, !650}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !565, file: !42, line: 1876, baseType: !1901, size: 64, offset: 576)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!107, !540, !571, !544}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !565, file: !42, line: 1877, baseType: !1893, size: 64, offset: 640)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !565, file: !42, line: 1878, baseType: !1906, size: 64, offset: 704)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!107, !540, !571, !544, !709}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !565, file: !42, line: 1879, baseType: !1910, size: 64, offset: 768)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!107, !540, !571, !540, !571, !5}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !565, file: !42, line: 1881, baseType: !1914, size: 64, offset: 832)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!107, !571, !1917}
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !42, line: 219, size: 640, elements: !1919)
!1919 = !{!1920, !1921, !1922, !1923, !1924, !1925, !1930, !1931, !1932}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1918, file: !42, line: 220, baseType: !5, size: 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1918, file: !42, line: 221, baseType: !544, size: 16, offset: 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1918, file: !42, line: 222, baseType: !547, size: 32, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1918, file: !42, line: 223, baseType: !555, size: 32, offset: 96)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1918, file: !42, line: 224, baseType: !714, size: 64, offset: 128)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1918, file: !42, line: 225, baseType: !1926, size: 128, offset: 192)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1319, line: 13, size: 128, elements: !1927)
!1927 = !{!1928, !1929}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1926, file: !1319, line: 14, baseType: !1318, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1926, file: !1319, line: 15, baseType: !245, size: 64, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1918, file: !42, line: 226, baseType: !1926, size: 128, offset: 320)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1918, file: !42, line: 227, baseType: !1926, size: 128, offset: 448)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1918, file: !42, line: 234, baseType: !909, size: 64, offset: 576)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !565, file: !42, line: 1882, baseType: !1934, size: 64, offset: 896)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!107, !693, !1937, !239, !5}
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1939, line: 22, size: 1152, elements: !1940)
!1939 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!1940 = !{!1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1938, file: !1939, line: 23, baseType: !239, size: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1938, file: !1939, line: 24, baseType: !544, size: 16, offset: 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1938, file: !1939, line: 25, baseType: !5, size: 32, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1938, file: !1939, line: 26, baseType: !1326, size: 32, offset: 96)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1938, file: !1939, line: 27, baseType: !286, size: 64, offset: 128)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1938, file: !1939, line: 28, baseType: !286, size: 64, offset: 192)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1938, file: !1939, line: 37, baseType: !286, size: 64, offset: 256)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1938, file: !1939, line: 38, baseType: !709, size: 32, offset: 320)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1938, file: !1939, line: 39, baseType: !709, size: 32, offset: 352)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1938, file: !1939, line: 40, baseType: !547, size: 32, offset: 384)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1938, file: !1939, line: 41, baseType: !555, size: 32, offset: 416)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1938, file: !1939, line: 42, baseType: !714, size: 64, offset: 448)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1938, file: !1939, line: 43, baseType: !1926, size: 128, offset: 512)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1938, file: !1939, line: 44, baseType: !1926, size: 128, offset: 640)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1938, file: !1939, line: 45, baseType: !1926, size: 128, offset: 768)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1938, file: !1939, line: 46, baseType: !1926, size: 128, offset: 896)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1938, file: !1939, line: 47, baseType: !286, size: 64, offset: 1024)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1938, file: !1939, line: 48, baseType: !286, size: 64, offset: 1088)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !565, file: !42, line: 1883, baseType: !1960, size: 64, offset: 960)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!914, !571, !676, !830}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !565, file: !42, line: 1884, baseType: !1964, size: 64, offset: 1024)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!107, !540, !1967, !286, !286}
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !42, line: 50, flags: DIFlagFwdDecl)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !565, file: !42, line: 1886, baseType: !1970, size: 64, offset: 1088)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!107, !540, !1973, !107}
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !565, file: !42, line: 1887, baseType: !1975, size: 64, offset: 1152)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!107, !540, !571, !909, !5, !544}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !565, file: !42, line: 1890, baseType: !1901, size: 64, offset: 1216)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !565, file: !42, line: 1891, baseType: !1980, size: 64, offset: 1280)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!107, !540, !1878, !107}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !541, file: !42, line: 623, baseType: !704, size: 64, offset: 192)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !541, file: !42, line: 624, baseType: !536, size: 64, offset: 256)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !541, file: !42, line: 631, baseType: !237, size: 64, offset: 320)
!1986 = !DIDerivedType(tag: DW_TAG_member, scope: !541, file: !42, line: 639, baseType: !1987, size: 32, offset: 384)
!1987 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !541, file: !42, line: 639, size: 32, elements: !1988)
!1988 = !{!1989, !1991}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !1987, file: !42, line: 640, baseType: !1990, size: 32)
!1990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !1987, file: !42, line: 641, baseType: !5, size: 32)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !541, file: !42, line: 643, baseType: !709, size: 32, offset: 416)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !541, file: !42, line: 644, baseType: !714, size: 64, offset: 448)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !541, file: !42, line: 645, baseType: !1926, size: 128, offset: 512)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !541, file: !42, line: 646, baseType: !1926, size: 128, offset: 640)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !541, file: !42, line: 647, baseType: !1926, size: 128, offset: 768)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !541, file: !42, line: 648, baseType: !621, offset: 896)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !541, file: !42, line: 649, baseType: !304, size: 16, offset: 896)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !541, file: !42, line: 650, baseType: !409, size: 8, offset: 912)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !541, file: !42, line: 651, baseType: !409, size: 8, offset: 920)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !541, file: !42, line: 652, baseType: !1655, size: 64, offset: 960)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !541, file: !42, line: 659, baseType: !237, size: 64, offset: 1024)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !541, file: !42, line: 660, baseType: !1303, size: 256, offset: 1088)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !541, file: !42, line: 662, baseType: !237, size: 64, offset: 1344)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !541, file: !42, line: 663, baseType: !237, size: 64, offset: 1408)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !541, file: !42, line: 665, baseType: !750, size: 128, offset: 1472)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !541, file: !42, line: 666, baseType: !223, size: 128, offset: 1600)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !541, file: !42, line: 675, baseType: !223, size: 128, offset: 1728)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !541, file: !42, line: 676, baseType: !223, size: 128, offset: 1856)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !541, file: !42, line: 677, baseType: !223, size: 128, offset: 1984)
!2011 = !DIDerivedType(tag: DW_TAG_member, scope: !541, file: !42, line: 678, baseType: !2012, size: 128, offset: 2112)
!2012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !541, file: !42, line: 678, size: 128, elements: !2013)
!2013 = !{!2014, !2015}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2012, file: !42, line: 679, baseType: !746, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2012, file: !42, line: 680, baseType: !889, size: 128, align: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !541, file: !42, line: 682, baseType: !845, size: 64, offset: 2240)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !541, file: !42, line: 683, baseType: !845, size: 64, offset: 2304)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !541, file: !42, line: 684, baseType: !252, size: 32, offset: 2368)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !541, file: !42, line: 685, baseType: !252, size: 32, offset: 2400)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !541, file: !42, line: 686, baseType: !252, size: 32, offset: 2432)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !541, file: !42, line: 688, baseType: !252, size: 32, offset: 2464)
!2022 = !DIDerivedType(tag: DW_TAG_member, scope: !541, file: !42, line: 690, baseType: !2023, size: 64, offset: 2496)
!2023 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !541, file: !42, line: 690, size: 64, elements: !2024)
!2024 = !{!2025, !2026}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2023, file: !42, line: 691, baseType: !900, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2023, file: !42, line: 692, baseType: !777, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !541, file: !42, line: 694, baseType: !2028, size: 64, offset: 2560)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !42, line: 1100, size: 384, elements: !2030)
!2030 = !{!2031, !2032, !2033, !2034}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2029, file: !42, line: 1101, baseType: !621)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2029, file: !42, line: 1102, baseType: !223, size: 128)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2029, file: !42, line: 1103, baseType: !223, size: 128, offset: 128)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2029, file: !42, line: 1104, baseType: !223, size: 128, offset: 256)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !541, file: !42, line: 695, baseType: !537, size: 1216, align: 64, offset: 2624)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !541, file: !42, line: 696, baseType: !223, size: 128, offset: 3840)
!2037 = !DIDerivedType(tag: DW_TAG_member, scope: !541, file: !42, line: 697, baseType: !2038, size: 64, offset: 3968)
!2038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !541, file: !42, line: 697, size: 64, elements: !2039)
!2039 = !{!2040, !2041, !2042, !2045, !2046}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2038, file: !42, line: 698, baseType: !1145, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2038, file: !42, line: 699, baseType: !1680, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2038, file: !42, line: 700, baseType: !2043, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !42, line: 700, flags: DIFlagFwdDecl)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2038, file: !42, line: 701, baseType: !676, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2038, file: !42, line: 702, baseType: !5, size: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !541, file: !42, line: 705, baseType: !241, size: 32, offset: 4032)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !541, file: !42, line: 708, baseType: !241, size: 32, offset: 4064)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !541, file: !42, line: 709, baseType: !1764, size: 64, offset: 4096)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !541, file: !42, line: 720, baseType: !217, size: 64, offset: 4160)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !537, file: !42, line: 453, baseType: !1219, size: 128, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !537, file: !42, line: 454, baseType: !215, size: 32, offset: 192)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !537, file: !42, line: 455, baseType: !252, size: 32, offset: 224)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !537, file: !42, line: 460, baseType: !396, size: 128, offset: 256)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !537, file: !42, line: 461, baseType: !1303, size: 256, offset: 384)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !537, file: !42, line: 462, baseType: !237, size: 64, offset: 640)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !537, file: !42, line: 463, baseType: !237, size: 64, offset: 704)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !537, file: !42, line: 464, baseType: !237, size: 64, offset: 768)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !537, file: !42, line: 465, baseType: !2060, size: 64, offset: 832)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2062)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !42, line: 367, size: 1408, elements: !2063)
!2063 = !{!2064, !2068, !2072, !2076, !2080, !2084, !2090, !2095, !2099, !2104, !2108, !2112, !2116, !2117, !2121, !2127, !2128, !2129, !2133, !2138, !2142, !2149}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2062, file: !42, line: 368, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!107, !524, !789}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !2062, file: !42, line: 369, baseType: !2069, size: 64, offset: 64)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!107, !909, !524}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2062, file: !42, line: 372, baseType: !2073, size: 64, offset: 128)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!107, !536, !789}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !2062, file: !42, line: 375, baseType: !2077, size: 64, offset: 192)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!107, !524}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !2062, file: !42, line: 381, baseType: !2081, size: 64, offset: 256)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{!107, !909, !536, !222, !5}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2062, file: !42, line: 383, baseType: !2085, size: 64, offset: 320)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{null, !2088}
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !42, line: 290, flags: DIFlagFwdDecl)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2062, file: !42, line: 385, baseType: !2091, size: 64, offset: 384)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!107, !909, !536, !714, !5, !5, !2094, !1102}
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2062, file: !42, line: 388, baseType: !2096, size: 64, offset: 448)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!107, !909, !536, !714, !5, !5, !524, !217}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2062, file: !42, line: 393, baseType: !2100, size: 64, offset: 512)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!2103, !536, !2103}
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !216, line: 125, baseType: !286)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !2062, file: !42, line: 394, baseType: !2105, size: 64, offset: 576)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{null, !524, !5, !5}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !2062, file: !42, line: 395, baseType: !2109, size: 64, offset: 640)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!107, !524, !215}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !2062, file: !42, line: 396, baseType: !2113, size: 64, offset: 704)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{null, !524}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2062, file: !42, line: 397, baseType: !922, size: 64, offset: 768)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !2062, file: !42, line: 402, baseType: !2118, size: 64, offset: 832)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!107, !536, !524, !524, !3}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !2062, file: !42, line: 404, baseType: !2122, size: 64, offset: 896)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!695, !524, !2125}
!2125 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !2126, line: 305, baseType: !5)
!2126 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !2062, file: !42, line: 405, baseType: !2113, size: 64, offset: 960)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !2062, file: !42, line: 406, baseType: !2077, size: 64, offset: 1024)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2062, file: !42, line: 407, baseType: !2130, size: 64, offset: 1088)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!107, !524, !237, !237}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2062, file: !42, line: 409, baseType: !2134, size: 64, offset: 1152)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{null, !524, !2137, !2137}
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2062, file: !42, line: 410, baseType: !2139, size: 64, offset: 1216)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!107, !536, !524}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2062, file: !42, line: 413, baseType: !2143, size: 64, offset: 1280)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!107, !2146, !909, !2148}
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !42, line: 61, flags: DIFlagFwdDecl)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2062, file: !42, line: 415, baseType: !2150, size: 64, offset: 1344)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{null, !909}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !537, file: !42, line: 466, baseType: !237, size: 64, offset: 896)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !537, file: !42, line: 467, baseType: !1466, size: 32, offset: 960)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !537, file: !42, line: 468, baseType: !621, offset: 992)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !537, file: !42, line: 469, baseType: !223, size: 128, offset: 1024)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !537, file: !42, line: 470, baseType: !217, size: 64, offset: 1152)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !532, file: !438, line: 87, baseType: !237, size: 64, offset: 192)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !532, file: !438, line: 94, baseType: !237, size: 64, offset: 256)
!2160 = !DIDerivedType(tag: DW_TAG_member, scope: !529, file: !438, line: 96, baseType: !2161, size: 64)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !529, file: !438, line: 96, size: 64, elements: !2162)
!2162 = !{!2163}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2161, file: !438, line: 101, baseType: !2164, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !216, line: 143, baseType: !286)
!2165 = !DIDerivedType(tag: DW_TAG_member, scope: !529, file: !438, line: 103, baseType: !2166, size: 320)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !529, file: !438, line: 103, size: 320, elements: !2167)
!2167 = !{!2168, !2178, !2179, !2180}
!2168 = !DIDerivedType(tag: DW_TAG_member, scope: !2166, file: !438, line: 104, baseType: !2169, size: 128)
!2169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2166, file: !438, line: 104, size: 128, elements: !2170)
!2170 = !{!2171, !2172}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !2169, file: !438, line: 105, baseType: !223, size: 128)
!2172 = !DIDerivedType(tag: DW_TAG_member, scope: !2169, file: !438, line: 106, baseType: !2173, size: 128)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2169, file: !438, line: 106, size: 128, elements: !2174)
!2174 = !{!2175, !2176, !2177}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2173, file: !438, line: 107, baseType: !524, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2173, file: !438, line: 109, baseType: !107, size: 32, offset: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !2173, file: !438, line: 110, baseType: !107, size: 32, offset: 96)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !2166, file: !438, line: 117, baseType: !1231, size: 64, offset: 128)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !2166, file: !438, line: 119, baseType: !217, size: 64, offset: 192)
!2180 = !DIDerivedType(tag: DW_TAG_member, scope: !2166, file: !438, line: 120, baseType: !2181, size: 64, offset: 256)
!2181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2166, file: !438, line: 120, size: 64, elements: !2182)
!2182 = !{!2183, !2184, !2185}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !2181, file: !438, line: 121, baseType: !217, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2181, file: !438, line: 122, baseType: !237, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, scope: !2181, file: !438, line: 123, baseType: !2186, size: 32)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2181, file: !438, line: 123, size: 32, elements: !2187)
!2187 = !{!2188, !2189, !2190}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !2186, file: !438, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !2186, file: !438, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2186, file: !438, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!2191 = !DIDerivedType(tag: DW_TAG_member, scope: !529, file: !438, line: 130, baseType: !2192, size: 192)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !529, file: !438, line: 130, size: 192, elements: !2193)
!2193 = !{!2194, !2195, !2196, !2197, !2198}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2192, file: !438, line: 131, baseType: !237, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !2192, file: !438, line: 134, baseType: !411, size: 8, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !2192, file: !438, line: 135, baseType: !411, size: 8, offset: 72)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !2192, file: !438, line: 136, baseType: !252, size: 32, offset: 96)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !2192, file: !438, line: 137, baseType: !5, size: 32, offset: 128)
!2199 = !DIDerivedType(tag: DW_TAG_member, scope: !529, file: !438, line: 139, baseType: !2200, size: 256)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !529, file: !438, line: 139, size: 256, elements: !2201)
!2201 = !{!2202, !2203, !2204}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !2200, file: !438, line: 140, baseType: !237, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !2200, file: !438, line: 141, baseType: !252, size: 32, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !2200, file: !438, line: 143, baseType: !223, size: 128, offset: 128)
!2205 = !DIDerivedType(tag: DW_TAG_member, scope: !529, file: !438, line: 145, baseType: !2206, size: 256)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !529, file: !438, line: 145, size: 256, elements: !2207)
!2207 = !{!2208, !2209, !2211, !2212, !2217}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !2206, file: !438, line: 146, baseType: !237, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !2206, file: !438, line: 147, baseType: !2210, size: 64, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !456, line: 509, baseType: !524)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !2206, file: !438, line: 148, baseType: !237, size: 64, offset: 128)
!2212 = !DIDerivedType(tag: DW_TAG_member, scope: !2206, file: !438, line: 149, baseType: !2213, size: 64, offset: 192)
!2213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2206, file: !438, line: 149, size: 64, elements: !2214)
!2214 = !{!2215, !2216}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !2213, file: !438, line: 150, baseType: !436, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !2213, file: !438, line: 151, baseType: !252, size: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2206, file: !438, line: 156, baseType: !621, offset: 256)
!2218 = !DIDerivedType(tag: DW_TAG_member, scope: !529, file: !438, line: 159, baseType: !2219, size: 128)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !529, file: !438, line: 159, size: 128, elements: !2220)
!2220 = !{!2221, !2295}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2219, file: !438, line: 161, baseType: !2222, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !29, line: 110, size: 1152, elements: !2224)
!2224 = !{!2225, !2235, !2256, !2257, !2268, !2269, !2270, !2282, !2283, !2284}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2223, file: !29, line: 111, baseType: !2226, size: 384)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !29, line: 19, size: 384, elements: !2227)
!2227 = !{!2228, !2230, !2231, !2232, !2233, !2234}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2226, file: !29, line: 20, baseType: !2229, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2226, file: !29, line: 21, baseType: !2229, size: 64, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2226, file: !29, line: 22, baseType: !2229, size: 64, offset: 128)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2226, file: !29, line: 23, baseType: !237, size: 64, offset: 192)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2226, file: !29, line: 24, baseType: !237, size: 64, offset: 256)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2226, file: !29, line: 25, baseType: !237, size: 64, offset: 320)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2223, file: !29, line: 112, baseType: !2236, size: 64, offset: 384)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2238, line: 105, size: 128, elements: !2239)
!2238 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2239 = !{!2240, !2241}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2237, file: !2238, line: 110, baseType: !237, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2237, file: !2238, line: 118, baseType: !2242, size: 64, offset: 64)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2238, line: 95, size: 448, elements: !2244)
!2244 = !{!2245, !2246, !2251, !2252, !2253, !2254, !2255}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2243, file: !2238, line: 96, baseType: !843, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2243, file: !2238, line: 97, baseType: !2247, size: 64, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2238, line: 60, baseType: !2249)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{null, !2236}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2243, file: !2238, line: 98, baseType: !2247, size: 64, offset: 128)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2243, file: !2238, line: 99, baseType: !695, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2243, file: !2238, line: 100, baseType: !695, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2243, file: !2238, line: 101, baseType: !889, size: 128, align: 64, offset: 256)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2243, file: !2238, line: 102, baseType: !2236, size: 64, offset: 384)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2223, file: !29, line: 113, baseType: !2237, size: 128, offset: 448)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2223, file: !29, line: 114, baseType: !2258, size: 192, offset: 576)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2259, line: 26, size: 192, elements: !2260)
!2259 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2260 = !{!2261, !2262}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2258, file: !2259, line: 27, baseType: !5, size: 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2258, file: !2259, line: 28, baseType: !2263, size: 128, offset: 64)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2264, line: 43, size: 128, elements: !2265)
!2264 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2265 = !{!2266, !2267}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2263, file: !2264, line: 44, baseType: !353)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2263, file: !2264, line: 45, baseType: !223, size: 128)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2223, file: !29, line: 115, baseType: !28, size: 32, offset: 768)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2223, file: !29, line: 116, baseType: !5, size: 32, offset: 800)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2223, file: !29, line: 117, baseType: !2271, size: 64, offset: 832)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2273)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !29, line: 67, size: 256, elements: !2274)
!2274 = !{!2275, !2276, !2280, !2281}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2273, file: !29, line: 73, baseType: !2113, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2273, file: !29, line: 78, baseType: !2277, size: 64, offset: 64)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{null, !2222}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2273, file: !29, line: 83, baseType: !2277, size: 64, offset: 128)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2273, file: !29, line: 89, baseType: !491, size: 64, offset: 192)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2223, file: !29, line: 118, baseType: !217, size: 64, offset: 896)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2223, file: !29, line: 119, baseType: !107, size: 32, offset: 960)
!2284 = !DIDerivedType(tag: DW_TAG_member, scope: !2223, file: !29, line: 120, baseType: !2285, size: 128, offset: 1024)
!2285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2223, file: !29, line: 120, size: 128, elements: !2286)
!2286 = !{!2287, !2293}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2285, file: !29, line: 121, baseType: !2288, size: 128)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2289, line: 6, size: 128, elements: !2290)
!2289 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2290 = !{!2291, !2292}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2288, file: !2289, line: 7, baseType: !286, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2288, file: !2289, line: 8, baseType: !286, size: 64, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2285, file: !29, line: 122, baseType: !2294)
!2294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2288, elements: !1444)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2219, file: !438, line: 162, baseType: !217, size: 64, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !529, file: !438, line: 176, baseType: !889, size: 128, align: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, scope: !525, file: !438, line: 179, baseType: !2298, size: 32, offset: 384)
!2298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !525, file: !438, line: 179, size: 32, elements: !2299)
!2299 = !{!2300, !2301, !2302, !2303}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2298, file: !438, line: 184, baseType: !252, size: 32)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2298, file: !438, line: 192, baseType: !5, size: 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2298, file: !438, line: 194, baseType: !5, size: 32)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2298, file: !438, line: 195, baseType: !107, size: 32)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !525, file: !438, line: 199, baseType: !252, size: 32, offset: 416)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !496, file: !12, line: 522, baseType: !524, size: 64, offset: 512)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !496, file: !12, line: 528, baseType: !2307, size: 64, offset: 576)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !496, file: !12, line: 532, baseType: !2309, size: 64, offset: 640)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !496, file: !12, line: 536, baseType: !2210, size: 64, offset: 704)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !475, file: !12, line: 563, baseType: !2312, size: 64, offset: 320)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!494, !495, !11}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !475, file: !12, line: 565, baseType: !2316, size: 64, offset: 384)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{null, !495, !237, !237}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !475, file: !12, line: 567, baseType: !2320, size: 64, offset: 448)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!237, !444}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !475, file: !12, line: 571, baseType: !491, size: 64, offset: 512)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !475, file: !12, line: 574, baseType: !491, size: 64, offset: 576)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !475, file: !12, line: 579, baseType: !2326, size: 64, offset: 640)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!107, !444, !237, !217, !107, !107}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !475, file: !12, line: 585, baseType: !2330, size: 64, offset: 704)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!650, !444}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !475, file: !12, line: 615, baseType: !2334, size: 64, offset: 768)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!524, !444, !237}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !445, file: !438, line: 359, baseType: !237, size: 64, offset: 1216)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !445, file: !438, line: 361, baseType: !909, size: 64, offset: 1280)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !445, file: !438, line: 362, baseType: !217, size: 64, offset: 1344)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !445, file: !438, line: 365, baseType: !843, size: 64, offset: 1408)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !445, file: !438, line: 373, baseType: !2342, offset: 1472)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !438, line: 296, elements: !295)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !441, file: !438, line: 391, baseType: !399, size: 64, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !441, file: !438, line: 392, baseType: !286, size: 64, offset: 128)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !441, file: !438, line: 394, baseType: !1133, size: 64, offset: 192)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !441, file: !438, line: 398, baseType: !237, size: 64, offset: 256)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !441, file: !438, line: 399, baseType: !237, size: 64, offset: 320)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !441, file: !438, line: 405, baseType: !237, size: 64, offset: 384)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !441, file: !438, line: 406, baseType: !237, size: 64, offset: 448)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !441, file: !438, line: 407, baseType: !2351, size: 64, offset: 512)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !456, line: 286, baseType: !2353)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !456, line: 286, size: 64, elements: !2354)
!2354 = !{!2355}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2353, file: !456, line: 286, baseType: !2356, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !461, line: 18, baseType: !237)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !441, file: !438, line: 416, baseType: !252, size: 32, offset: 576)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !441, file: !438, line: 428, baseType: !252, size: 32, offset: 608)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !441, file: !438, line: 437, baseType: !252, size: 32, offset: 640)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !441, file: !438, line: 447, baseType: !252, size: 32, offset: 672)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !441, file: !438, line: 450, baseType: !843, size: 64, offset: 704)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !441, file: !438, line: 452, baseType: !107, size: 32, offset: 768)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !441, file: !438, line: 454, baseType: !621, offset: 800)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !441, file: !438, line: 457, baseType: !1303, size: 256, offset: 832)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !441, file: !438, line: 459, baseType: !223, size: 128, offset: 1088)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !441, file: !438, line: 466, baseType: !237, size: 64, offset: 1216)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !441, file: !438, line: 467, baseType: !237, size: 64, offset: 1280)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !441, file: !438, line: 469, baseType: !237, size: 64, offset: 1344)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !441, file: !438, line: 470, baseType: !237, size: 64, offset: 1408)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !441, file: !438, line: 471, baseType: !845, size: 64, offset: 1472)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !441, file: !438, line: 472, baseType: !237, size: 64, offset: 1536)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !441, file: !438, line: 473, baseType: !237, size: 64, offset: 1600)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !441, file: !438, line: 474, baseType: !237, size: 64, offset: 1664)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !441, file: !438, line: 475, baseType: !237, size: 64, offset: 1728)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !441, file: !438, line: 477, baseType: !621, offset: 1792)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !441, file: !438, line: 478, baseType: !237, size: 64, offset: 1792)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !441, file: !438, line: 478, baseType: !237, size: 64, offset: 1856)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !441, file: !438, line: 478, baseType: !237, size: 64, offset: 1920)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !441, file: !438, line: 478, baseType: !237, size: 64, offset: 1984)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !441, file: !438, line: 479, baseType: !237, size: 64, offset: 2048)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !441, file: !438, line: 479, baseType: !237, size: 64, offset: 2112)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !441, file: !438, line: 479, baseType: !237, size: 64, offset: 2176)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !441, file: !438, line: 480, baseType: !237, size: 64, offset: 2240)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !441, file: !438, line: 480, baseType: !237, size: 64, offset: 2304)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !441, file: !438, line: 480, baseType: !237, size: 64, offset: 2368)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !441, file: !438, line: 480, baseType: !237, size: 64, offset: 2432)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !441, file: !438, line: 482, baseType: !2388, size: 2816, offset: 2496)
!2388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 2816, elements: !2389)
!2389 = !{!2390}
!2390 = !DISubrange(count: 44)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !441, file: !438, line: 488, baseType: !2392, size: 256, offset: 5312)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2393, line: 60, size: 256, elements: !2394)
!2393 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2394 = !{!2395}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2392, file: !2393, line: 61, baseType: !2396, size: 256)
!2396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !843, size: 256, elements: !1194)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !441, file: !438, line: 490, baseType: !2398, size: 64, offset: 5568)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !438, line: 490, flags: DIFlagFwdDecl)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !441, file: !438, line: 493, baseType: !2401, size: 896, offset: 5632)
!2401 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2402, line: 53, baseType: !2403)
!2402 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2402, line: 13, size: 896, elements: !2404)
!2404 = !{!2405, !2406, !2407, !2408, !2411, !2412, !2413, !2414, !2434, !2435, !2436}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2403, file: !2402, line: 18, baseType: !286, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2403, file: !2402, line: 28, baseType: !845, size: 64, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2403, file: !2402, line: 31, baseType: !1303, size: 256, offset: 128)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2403, file: !2402, line: 32, baseType: !2409, size: 64, offset: 384)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2402, line: 32, flags: DIFlagFwdDecl)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2403, file: !2402, line: 37, baseType: !304, size: 16, offset: 448)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2403, file: !2402, line: 40, baseType: !839, size: 192, offset: 512)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2403, file: !2402, line: 41, baseType: !217, size: 64, offset: 704)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2403, file: !2402, line: 42, baseType: !2415, size: 64, offset: 768)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2417)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2418, line: 13, size: 896, elements: !2419)
!2418 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!2419 = !{!2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2417, file: !2418, line: 14, baseType: !217, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2417, file: !2418, line: 15, baseType: !237, size: 64, offset: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2417, file: !2418, line: 17, baseType: !237, size: 64, offset: 128)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2417, file: !2418, line: 17, baseType: !237, size: 64, offset: 192)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2417, file: !2418, line: 19, baseType: !245, size: 64, offset: 256)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2417, file: !2418, line: 21, baseType: !245, size: 64, offset: 320)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2417, file: !2418, line: 22, baseType: !245, size: 64, offset: 384)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2417, file: !2418, line: 23, baseType: !245, size: 64, offset: 448)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2417, file: !2418, line: 24, baseType: !245, size: 64, offset: 512)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2417, file: !2418, line: 25, baseType: !245, size: 64, offset: 576)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2417, file: !2418, line: 26, baseType: !245, size: 64, offset: 640)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2417, file: !2418, line: 27, baseType: !245, size: 64, offset: 704)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2417, file: !2418, line: 28, baseType: !245, size: 64, offset: 768)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2417, file: !2418, line: 29, baseType: !245, size: 64, offset: 832)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2403, file: !2402, line: 44, baseType: !252, size: 32, offset: 832)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2403, file: !2402, line: 50, baseType: !937, size: 16, offset: 864)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2403, file: !2402, line: 51, baseType: !2437, size: 16, offset: 880)
!2437 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !240, line: 18, baseType: !2438)
!2438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !242, line: 23, baseType: !1330)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !441, file: !438, line: 495, baseType: !237, size: 64, offset: 6528)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !441, file: !438, line: 497, baseType: !2441, size: 64, offset: 6592)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !438, line: 381, size: 384, elements: !2443)
!2443 = !{!2444, !2445, !2451}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2442, file: !438, line: 382, baseType: !252, size: 32)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2442, file: !438, line: 383, baseType: !2446, size: 128, offset: 64)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !438, line: 376, size: 128, elements: !2447)
!2447 = !{!2448, !2449}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2446, file: !438, line: 377, baseType: !228, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2446, file: !438, line: 378, baseType: !2450, size: 64, offset: 64)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2442, file: !438, line: 384, baseType: !2258, size: 192, offset: 192)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !441, file: !438, line: 500, baseType: !621, offset: 6656)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !441, file: !438, line: 501, baseType: !2454, size: 64, offset: 6656)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !438, line: 387, flags: DIFlagFwdDecl)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !441, file: !438, line: 516, baseType: !1236, size: 64, offset: 6720)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !441, file: !438, line: 519, baseType: !909, size: 64, offset: 6784)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !441, file: !438, line: 521, baseType: !2459, size: 64, offset: 6848)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !438, line: 521, flags: DIFlagFwdDecl)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !441, file: !438, line: 545, baseType: !252, size: 32, offset: 6912)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !441, file: !438, line: 548, baseType: !695, size: 8, offset: 6944)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !441, file: !438, line: 550, baseType: !2464, offset: 6952)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2465, line: 142, elements: !295)
!2465 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !441, file: !438, line: 554, baseType: !1826, size: 256, offset: 6976)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !441, file: !438, line: 557, baseType: !239, size: 32, offset: 7232)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !437, file: !438, line: 565, baseType: !2469, offset: 7296)
!2469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, elements: !2470)
!2470 = !{!2471}
!2471 = !DISubrange(count: -1)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !229, file: !230, line: 758, baseType: !436, size: 64, offset: 3968)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !229, file: !230, line: 761, baseType: !2474, size: 320, offset: 4032)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2393, line: 34, size: 320, elements: !2475)
!2475 = !{!2476, !2477}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2474, file: !2393, line: 35, baseType: !286, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2474, file: !2393, line: 36, baseType: !2478, size: 256, offset: 64)
!2478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 256, elements: !1194)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !229, file: !230, line: 766, baseType: !107, size: 32, offset: 4352)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !229, file: !230, line: 767, baseType: !107, size: 32, offset: 4384)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !229, file: !230, line: 768, baseType: !107, size: 32, offset: 4416)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !229, file: !230, line: 770, baseType: !107, size: 32, offset: 4448)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !229, file: !230, line: 772, baseType: !237, size: 64, offset: 4480)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !229, file: !230, line: 775, baseType: !5, size: 32, offset: 4544)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !229, file: !230, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !229, file: !230, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !229, file: !230, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !229, file: !230, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !229, file: !230, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !229, file: !230, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !229, file: !230, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !229, file: !230, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !229, file: !230, line: 831, baseType: !237, size: 64, offset: 4672)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !229, file: !230, line: 833, baseType: !2495, size: 384, offset: 4736)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !23, line: 25, size: 384, elements: !2496)
!2496 = !{!2497, !2502}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2495, file: !23, line: 26, baseType: !2498, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!245, !2501}
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, scope: !2495, file: !23, line: 27, baseType: !2503, size: 320, offset: 64)
!2503 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2495, file: !23, line: 27, size: 320, elements: !2504)
!2504 = !{!2505, !2515, !2540}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2503, file: !23, line: 36, baseType: !2506, size: 320)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2503, file: !23, line: 29, size: 320, elements: !2507)
!2507 = !{!2508, !2510, !2511, !2512, !2513, !2514}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2506, file: !23, line: 30, baseType: !2509, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2506, file: !23, line: 31, baseType: !239, size: 32, offset: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2506, file: !23, line: 32, baseType: !239, size: 32, offset: 96)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2506, file: !23, line: 33, baseType: !239, size: 32, offset: 128)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2506, file: !23, line: 34, baseType: !286, size: 64, offset: 192)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2506, file: !23, line: 35, baseType: !2509, size: 64, offset: 256)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2503, file: !23, line: 46, baseType: !2516, size: 192)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2503, file: !23, line: 38, size: 192, elements: !2517)
!2517 = !{!2518, !2519, !2520, !2539}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2516, file: !23, line: 39, baseType: !378, size: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2516, file: !23, line: 40, baseType: !22, size: 32, offset: 32)
!2520 = !DIDerivedType(tag: DW_TAG_member, scope: !2516, file: !23, line: 41, baseType: !2521, size: 64, offset: 64)
!2521 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2516, file: !23, line: 41, size: 64, elements: !2522)
!2522 = !{!2523, !2531}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2521, file: !23, line: 42, baseType: !2524, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2526, line: 7, size: 128, elements: !2527)
!2526 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2527 = !{!2528, !2530}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2525, file: !2526, line: 8, baseType: !2529, size: 64)
!2529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !380, line: 93, baseType: !320)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2525, file: !2526, line: 9, baseType: !320, size: 64, offset: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2521, file: !23, line: 43, baseType: !2532, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2534, line: 7, size: 64, elements: !2535)
!2534 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2535 = !{!2536, !2538}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2533, file: !2534, line: 8, baseType: !2537, size: 32)
!2537 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2534, line: 5, baseType: !1295)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2533, file: !2534, line: 9, baseType: !1295, size: 32, offset: 32)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2516, file: !23, line: 45, baseType: !286, size: 64, offset: 128)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2503, file: !23, line: 54, baseType: !2541, size: 256)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2503, file: !23, line: 48, size: 256, elements: !2542)
!2542 = !{!2543, !2551, !2552, !2553, !2554}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2541, file: !23, line: 49, baseType: !2544, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2546, line: 36, size: 64, elements: !2547)
!2546 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!2547 = !{!2548, !2549, !2550}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2545, file: !2546, line: 37, baseType: !107, size: 32)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2545, file: !2546, line: 38, baseType: !1330, size: 16, offset: 32)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2545, file: !2546, line: 39, baseType: !1330, size: 16, offset: 48)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2541, file: !23, line: 50, baseType: !107, size: 32, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2541, file: !23, line: 51, baseType: !107, size: 32, offset: 96)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2541, file: !23, line: 52, baseType: !237, size: 64, offset: 128)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2541, file: !23, line: 53, baseType: !237, size: 64, offset: 192)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !229, file: !230, line: 835, baseType: !2556, size: 32, offset: 5120)
!2556 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !216, line: 22, baseType: !2557)
!2557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !380, line: 28, baseType: !107)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !229, file: !230, line: 836, baseType: !2556, size: 32, offset: 5152)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !229, file: !230, line: 840, baseType: !237, size: 64, offset: 5184)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !229, file: !230, line: 849, baseType: !228, size: 64, offset: 5248)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !229, file: !230, line: 852, baseType: !228, size: 64, offset: 5312)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !229, file: !230, line: 857, baseType: !223, size: 128, offset: 5376)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !229, file: !230, line: 858, baseType: !223, size: 128, offset: 5504)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !229, file: !230, line: 859, baseType: !228, size: 64, offset: 5632)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !229, file: !230, line: 867, baseType: !223, size: 128, offset: 5696)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !229, file: !230, line: 868, baseType: !223, size: 128, offset: 5824)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !229, file: !230, line: 871, baseType: !1186, size: 64, offset: 5952)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !229, file: !230, line: 872, baseType: !2569, size: 512, offset: 6016)
!2569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !750, size: 512, elements: !1194)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !229, file: !230, line: 873, baseType: !223, size: 128, offset: 6528)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !229, file: !230, line: 874, baseType: !223, size: 128, offset: 6656)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !229, file: !230, line: 876, baseType: !2573, size: 64, offset: 6784)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !229, file: !230, line: 879, baseType: !818, size: 64, offset: 6848)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !229, file: !230, line: 882, baseType: !818, size: 64, offset: 6912)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !229, file: !230, line: 884, baseType: !286, size: 64, offset: 6976)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !229, file: !230, line: 885, baseType: !286, size: 64, offset: 7040)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !229, file: !230, line: 890, baseType: !286, size: 64, offset: 7104)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !229, file: !230, line: 891, baseType: !2580, size: 128, offset: 7168)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !230, line: 242, size: 128, elements: !2581)
!2581 = !{!2582, !2583, !2584}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2580, file: !230, line: 244, baseType: !286, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2580, file: !230, line: 245, baseType: !286, size: 64, offset: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2580, file: !230, line: 246, baseType: !353, offset: 128)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !229, file: !230, line: 900, baseType: !237, size: 64, offset: 7296)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !229, file: !230, line: 901, baseType: !237, size: 64, offset: 7360)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !229, file: !230, line: 904, baseType: !286, size: 64, offset: 7424)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !229, file: !230, line: 907, baseType: !286, size: 64, offset: 7488)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !229, file: !230, line: 910, baseType: !237, size: 64, offset: 7552)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !229, file: !230, line: 911, baseType: !237, size: 64, offset: 7616)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !229, file: !230, line: 914, baseType: !2592, size: 640, offset: 7680)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2593, line: 123, size: 640, elements: !2594)
!2593 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2594 = !{!2595, !2601, !2602}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2592, file: !2593, line: 124, baseType: !2596, size: 576)
!2596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2597, size: 576, elements: !762)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2593, line: 108, size: 192, elements: !2598)
!2598 = !{!2599, !2600}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2597, file: !2593, line: 109, baseType: !286, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2597, file: !2593, line: 110, baseType: !393, size: 128, offset: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2592, file: !2593, line: 125, baseType: !5, size: 32, offset: 576)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2592, file: !2593, line: 126, baseType: !5, size: 32, offset: 608)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !229, file: !230, line: 917, baseType: !2604, size: 192, offset: 8320)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2593, line: 134, size: 192, elements: !2605)
!2605 = !{!2606, !2607}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2604, file: !2593, line: 135, baseType: !889, size: 128, align: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2604, file: !2593, line: 136, baseType: !5, size: 32, offset: 128)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !229, file: !230, line: 923, baseType: !1257, size: 64, offset: 8512)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !229, file: !230, line: 926, baseType: !1257, size: 64, offset: 8576)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !229, file: !230, line: 929, baseType: !1257, size: 64, offset: 8640)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !229, file: !230, line: 933, baseType: !1287, size: 64, offset: 8704)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !229, file: !230, line: 943, baseType: !2613, size: 128, offset: 8768)
!2613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !652, size: 128, elements: !1775)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !229, file: !230, line: 945, baseType: !2615, size: 64, offset: 8896)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !230, line: 49, flags: DIFlagFwdDecl)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !229, file: !230, line: 956, baseType: !2618, size: 64, offset: 8960)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !230, line: 45, flags: DIFlagFwdDecl)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !229, file: !230, line: 959, baseType: !2621, size: 64, offset: 9024)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !230, line: 959, flags: DIFlagFwdDecl)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !229, file: !230, line: 962, baseType: !2624, size: 64, offset: 9088)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !230, line: 66, flags: DIFlagFwdDecl)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !229, file: !230, line: 966, baseType: !2627, size: 64, offset: 9152)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2629, line: 31, size: 576, elements: !2630)
!2629 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/lizy2001/genbc/linux")
!2630 = !{!2631, !2632, !2635, !2638, !2641, !2642, !2645, !2648, !2649}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2628, file: !2629, line: 32, baseType: !252, size: 32)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2628, file: !2629, line: 33, baseType: !2633, size: 64, offset: 64)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2629, line: 9, flags: DIFlagFwdDecl)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2628, file: !2629, line: 34, baseType: !2636, size: 64, offset: 128)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2629, line: 10, flags: DIFlagFwdDecl)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2628, file: !2629, line: 35, baseType: !2639, size: 64, offset: 192)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2629, line: 8, flags: DIFlagFwdDecl)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2628, file: !2629, line: 36, baseType: !1205, size: 64, offset: 256)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2628, file: !2629, line: 37, baseType: !2643, size: 64, offset: 320)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1289, line: 34, flags: DIFlagFwdDecl)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2628, file: !2629, line: 38, baseType: !2646, size: 64, offset: 384)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2629, line: 38, flags: DIFlagFwdDecl)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2628, file: !2629, line: 39, baseType: !2646, size: 64, offset: 448)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2628, file: !2629, line: 40, baseType: !2650, size: 64, offset: 512)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2629, line: 12, flags: DIFlagFwdDecl)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !229, file: !230, line: 969, baseType: !2653, size: 64, offset: 9216)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2655, line: 82, size: 7296, elements: !2656)
!2655 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2656 = !{!2657, !2658, !2659, !2660, !2661, !2662, !2663, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2692, !2701, !2702, !2704, !2705, !2706, !2709, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2739, !2740, !2747, !2748, !2749, !2750, !2751, !2752}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2654, file: !2655, line: 83, baseType: !248, size: 32)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2654, file: !2655, line: 84, baseType: !252, size: 32, offset: 32)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2654, file: !2655, line: 85, baseType: !107, size: 32, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2654, file: !2655, line: 86, baseType: !223, size: 128, offset: 128)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2654, file: !2655, line: 88, baseType: !984, size: 128, offset: 256)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2654, file: !2655, line: 91, baseType: !228, size: 64, offset: 384)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2654, file: !2655, line: 94, baseType: !2664, size: 192, offset: 448)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2665, line: 30, size: 192, elements: !2666)
!2665 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2666 = !{!2667, !2668}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2664, file: !2665, line: 31, baseType: !223, size: 128)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2664, file: !2665, line: 32, baseType: !2669, size: 64, offset: 128)
!2669 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2670, line: 25, baseType: !2671)
!2670 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2670, line: 23, size: 64, elements: !2672)
!2672 = !{!2673}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2671, file: !2670, line: 24, baseType: !428, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2654, file: !2655, line: 97, baseType: !746, size: 64, offset: 640)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2654, file: !2655, line: 100, baseType: !107, size: 32, offset: 704)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2654, file: !2655, line: 106, baseType: !107, size: 32, offset: 736)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2654, file: !2655, line: 107, baseType: !228, size: 64, offset: 768)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2654, file: !2655, line: 110, baseType: !107, size: 32, offset: 832)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2654, file: !2655, line: 111, baseType: !5, size: 32, offset: 864)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2654, file: !2655, line: 122, baseType: !5, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2654, file: !2655, line: 123, baseType: !5, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2654, file: !2655, line: 128, baseType: !107, size: 32, offset: 928)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2654, file: !2655, line: 129, baseType: !223, size: 128, offset: 960)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2654, file: !2655, line: 132, baseType: !328, size: 512, offset: 1088)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2654, file: !2655, line: 133, baseType: !336, size: 64, offset: 1600)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2654, file: !2655, line: 140, baseType: !2687, size: 256, offset: 1664)
!2687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2688, size: 256, elements: !1279)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2655, line: 38, size: 128, elements: !2689)
!2689 = !{!2690, !2691}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2688, file: !2655, line: 39, baseType: !286, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2688, file: !2655, line: 40, baseType: !286, size: 64, offset: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2654, file: !2655, line: 146, baseType: !2693, size: 192, offset: 1920)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2655, line: 66, size: 192, elements: !2694)
!2694 = !{!2695}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2693, file: !2655, line: 67, baseType: !2696, size: 192)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2655, line: 47, size: 192, elements: !2697)
!2697 = !{!2698, !2699, !2700}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2696, file: !2655, line: 48, baseType: !845, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2696, file: !2655, line: 49, baseType: !845, size: 64, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2696, file: !2655, line: 50, baseType: !845, size: 64, offset: 128)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2654, file: !2655, line: 150, baseType: !2592, size: 640, offset: 2112)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2654, file: !2655, line: 153, baseType: !2703, size: 256, offset: 2752)
!2703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1186, size: 256, elements: !1194)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2654, file: !2655, line: 159, baseType: !1186, size: 64, offset: 3008)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2654, file: !2655, line: 162, baseType: !107, size: 32, offset: 3072)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2654, file: !2655, line: 164, baseType: !2707, size: 64, offset: 3136)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2655, line: 164, flags: DIFlagFwdDecl)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2654, file: !2655, line: 175, baseType: !2710, size: 32, offset: 3200)
!2710 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !383, line: 805, baseType: !2711)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !383, line: 798, size: 32, elements: !2712)
!2712 = !{!2713, !2714}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2711, file: !383, line: 803, baseType: !577, size: 32)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2711, file: !383, line: 804, baseType: !621, offset: 32)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2654, file: !2655, line: 176, baseType: !286, size: 64, offset: 3264)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2654, file: !2655, line: 176, baseType: !286, size: 64, offset: 3328)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2654, file: !2655, line: 176, baseType: !286, size: 64, offset: 3392)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2654, file: !2655, line: 176, baseType: !286, size: 64, offset: 3456)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2654, file: !2655, line: 177, baseType: !286, size: 64, offset: 3520)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2654, file: !2655, line: 178, baseType: !286, size: 64, offset: 3584)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2654, file: !2655, line: 179, baseType: !2580, size: 128, offset: 3648)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2654, file: !2655, line: 180, baseType: !237, size: 64, offset: 3776)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2654, file: !2655, line: 180, baseType: !237, size: 64, offset: 3840)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2654, file: !2655, line: 180, baseType: !237, size: 64, offset: 3904)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2654, file: !2655, line: 180, baseType: !237, size: 64, offset: 3968)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2654, file: !2655, line: 181, baseType: !237, size: 64, offset: 4032)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2654, file: !2655, line: 181, baseType: !237, size: 64, offset: 4096)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2654, file: !2655, line: 181, baseType: !237, size: 64, offset: 4160)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2654, file: !2655, line: 181, baseType: !237, size: 64, offset: 4224)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2654, file: !2655, line: 182, baseType: !237, size: 64, offset: 4288)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2654, file: !2655, line: 182, baseType: !237, size: 64, offset: 4352)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2654, file: !2655, line: 182, baseType: !237, size: 64, offset: 4416)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2654, file: !2655, line: 182, baseType: !237, size: 64, offset: 4480)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2654, file: !2655, line: 183, baseType: !237, size: 64, offset: 4544)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2654, file: !2655, line: 183, baseType: !237, size: 64, offset: 4608)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2654, file: !2655, line: 184, baseType: !2737, offset: 4672)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2738, line: 12, elements: !295)
!2738 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2654, file: !2655, line: 192, baseType: !288, size: 64, offset: 4672)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2654, file: !2655, line: 203, baseType: !2741, size: 2048, offset: 4736)
!2741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2742, size: 2048, elements: !1775)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2743, line: 43, size: 128, elements: !2744)
!2743 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2744 = !{!2745, !2746}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2742, file: !2743, line: 44, baseType: !832, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2742, file: !2743, line: 45, baseType: !832, size: 64, offset: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2654, file: !2655, line: 220, baseType: !695, size: 8, offset: 6784)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2654, file: !2655, line: 221, baseType: !1330, size: 16, offset: 6800)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2654, file: !2655, line: 222, baseType: !1330, size: 16, offset: 6816)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2654, file: !2655, line: 224, baseType: !436, size: 64, offset: 6848)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2654, file: !2655, line: 227, baseType: !839, size: 192, offset: 6912)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2654, file: !2655, line: 233, baseType: !839, size: 192, offset: 7104)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !229, file: !230, line: 970, baseType: !2754, size: 64, offset: 9280)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2655, line: 20, size: 16576, elements: !2756)
!2756 = !{!2757, !2758, !2759, !2760}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2755, file: !2655, line: 21, baseType: !621)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2755, file: !2655, line: 22, baseType: !248, size: 32)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2755, file: !2655, line: 23, baseType: !984, size: 128, offset: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2755, file: !2655, line: 24, baseType: !2761, size: 16384, offset: 192)
!2761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2762, size: 16384, elements: !2782)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2665, line: 49, size: 256, elements: !2763)
!2763 = !{!2764}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2762, file: !2665, line: 50, baseType: !2765, size: 256)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2665, line: 35, size: 256, elements: !2766)
!2766 = !{!2767, !2774, !2775, !2781}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2765, file: !2665, line: 37, baseType: !2768, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2769, line: 19, baseType: !2770)
!2769 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2769, line: 18, baseType: !2772)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{null, !107}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2765, file: !2665, line: 38, baseType: !237, size: 64, offset: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2765, file: !2665, line: 44, baseType: !2776, size: 64, offset: 128)
!2776 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2769, line: 22, baseType: !2777)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2769, line: 21, baseType: !2779)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{null}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2765, file: !2665, line: 46, baseType: !2669, size: 64, offset: 192)
!2782 = !{!2783}
!2783 = !DISubrange(count: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !229, file: !230, line: 971, baseType: !2669, size: 64, offset: 9344)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !229, file: !230, line: 972, baseType: !2669, size: 64, offset: 9408)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !229, file: !230, line: 974, baseType: !2669, size: 64, offset: 9472)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !229, file: !230, line: 975, baseType: !2664, size: 192, offset: 9536)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !229, file: !230, line: 976, baseType: !237, size: 64, offset: 9728)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !229, file: !230, line: 977, baseType: !830, size: 64, offset: 9792)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !229, file: !230, line: 978, baseType: !5, size: 32, offset: 9856)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !229, file: !230, line: 980, baseType: !892, size: 64, offset: 9920)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !229, file: !230, line: 989, baseType: !2793, size: 128, offset: 9984)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2794, line: 35, size: 128, elements: !2795)
!2794 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2795 = !{!2796, !2797, !2798}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2793, file: !2794, line: 36, baseType: !107, size: 32)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2793, file: !2794, line: 37, baseType: !252, size: 32, offset: 32)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2793, file: !2794, line: 38, baseType: !2799, size: 64, offset: 64)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2794, line: 23, flags: DIFlagFwdDecl)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !229, file: !230, line: 992, baseType: !286, size: 64, offset: 10112)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !229, file: !230, line: 993, baseType: !286, size: 64, offset: 10176)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !229, file: !230, line: 996, baseType: !621, offset: 10240)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !229, file: !230, line: 999, baseType: !353, offset: 10240)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !229, file: !230, line: 1001, baseType: !2806, size: 64, offset: 10240)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !230, line: 636, size: 64, elements: !2807)
!2807 = !{!2808}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2806, file: !230, line: 637, baseType: !2809, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !229, file: !230, line: 1005, baseType: !396, size: 128, offset: 10304)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !229, file: !230, line: 1007, baseType: !228, size: 64, offset: 10432)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !229, file: !230, line: 1009, baseType: !2813, size: 64, offset: 10496)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !230, line: 1009, flags: DIFlagFwdDecl)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !229, file: !230, line: 1043, baseType: !217, size: 64, offset: 10560)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !229, file: !230, line: 1046, baseType: !2817, size: 64, offset: 10624)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !230, line: 41, flags: DIFlagFwdDecl)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !229, file: !230, line: 1050, baseType: !2820, size: 64, offset: 10688)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !230, line: 42, flags: DIFlagFwdDecl)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !229, file: !230, line: 1054, baseType: !2823, size: 64, offset: 10752)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !230, line: 55, flags: DIFlagFwdDecl)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !229, file: !230, line: 1056, baseType: !1683, size: 64, offset: 10816)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !229, file: !230, line: 1058, baseType: !2827, size: 64, offset: 10880)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2829, line: 99, size: 704, elements: !2830)
!2829 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2830 = !{!2831, !2832, !2833, !2834, !2835, !2836, !2837, !2856, !2857}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2828, file: !2829, line: 100, baseType: !843, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2828, file: !2829, line: 101, baseType: !252, size: 32, offset: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2828, file: !2829, line: 102, baseType: !252, size: 32, offset: 96)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2828, file: !2829, line: 105, baseType: !621, offset: 128)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2828, file: !2829, line: 107, baseType: !304, size: 16, offset: 128)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2828, file: !2829, line: 109, baseType: !1219, size: 128, offset: 192)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2828, file: !2829, line: 110, baseType: !2838, size: 64, offset: 320)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2829, line: 73, size: 448, elements: !2840)
!2840 = !{!2841, !2844, !2845, !2850, !2855}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2839, file: !2829, line: 74, baseType: !2842, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2829, line: 74, flags: DIFlagFwdDecl)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2839, file: !2829, line: 75, baseType: !2827, size: 64, offset: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, scope: !2839, file: !2829, line: 83, baseType: !2846, size: 128, offset: 128)
!2846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2839, file: !2829, line: 83, size: 128, elements: !2847)
!2847 = !{!2848, !2849}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2846, file: !2829, line: 84, baseType: !223, size: 128)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2846, file: !2829, line: 85, baseType: !1231, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, scope: !2839, file: !2829, line: 87, baseType: !2851, size: 128, offset: 256)
!2851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2839, file: !2829, line: 87, size: 128, elements: !2852)
!2852 = !{!2853, !2854}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2851, file: !2829, line: 88, baseType: !750, size: 128)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2851, file: !2829, line: 89, baseType: !889, size: 128, align: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2839, file: !2829, line: 92, baseType: !5, size: 32, offset: 384)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2828, file: !2829, line: 111, baseType: !746, size: 64, offset: 384)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2828, file: !2829, line: 113, baseType: !1826, size: 256, offset: 448)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !229, file: !230, line: 1061, baseType: !2859, size: 64, offset: 10944)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !230, line: 43, flags: DIFlagFwdDecl)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !229, file: !230, line: 1064, baseType: !237, size: 64, offset: 11008)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !229, file: !230, line: 1065, baseType: !2863, size: 64, offset: 11072)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2665, line: 14, baseType: !2865)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2665, line: 12, size: 384, elements: !2866)
!2866 = !{!2867}
!2867 = !DIDerivedType(tag: DW_TAG_member, scope: !2865, file: !2665, line: 13, baseType: !2868, size: 384)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2865, file: !2665, line: 13, size: 384, elements: !2869)
!2869 = !{!2870, !2871, !2872, !2873}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2868, file: !2665, line: 13, baseType: !107, size: 32)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2868, file: !2665, line: 13, baseType: !107, size: 32, offset: 32)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2868, file: !2665, line: 13, baseType: !107, size: 32, offset: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2868, file: !2665, line: 13, baseType: !2874, size: 256, offset: 128)
!2874 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2875, line: 32, size: 256, elements: !2876)
!2875 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2876 = !{!2877, !2882, !2895, !2901, !2910, !2930, !2935}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2874, file: !2875, line: 37, baseType: !2878, size: 64)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2874, file: !2875, line: 34, size: 64, elements: !2879)
!2879 = !{!2880, !2881}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2878, file: !2875, line: 35, baseType: !2557, size: 32)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2878, file: !2875, line: 36, baseType: !553, size: 32, offset: 32)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2874, file: !2875, line: 45, baseType: !2883, size: 192)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2874, file: !2875, line: 40, size: 192, elements: !2884)
!2884 = !{!2885, !2887, !2888, !2894}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2883, file: !2875, line: 41, baseType: !2886, size: 32)
!2886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !380, line: 95, baseType: !107)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2883, file: !2875, line: 42, baseType: !107, size: 32, offset: 32)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2883, file: !2875, line: 43, baseType: !2889, size: 64, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2875, line: 11, baseType: !2890)
!2890 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2875, line: 8, size: 64, elements: !2891)
!2891 = !{!2892, !2893}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2890, file: !2875, line: 9, baseType: !107, size: 32)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2890, file: !2875, line: 10, baseType: !217, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2883, file: !2875, line: 44, baseType: !107, size: 32, offset: 128)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2874, file: !2875, line: 52, baseType: !2896, size: 128)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2874, file: !2875, line: 48, size: 128, elements: !2897)
!2897 = !{!2898, !2899, !2900}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2896, file: !2875, line: 49, baseType: !2557, size: 32)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2896, file: !2875, line: 50, baseType: !553, size: 32, offset: 32)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2896, file: !2875, line: 51, baseType: !2889, size: 64, offset: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2874, file: !2875, line: 61, baseType: !2902, size: 256)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2874, file: !2875, line: 55, size: 256, elements: !2903)
!2903 = !{!2904, !2905, !2906, !2907, !2909}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2902, file: !2875, line: 56, baseType: !2557, size: 32)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2902, file: !2875, line: 57, baseType: !553, size: 32, offset: 32)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2902, file: !2875, line: 58, baseType: !107, size: 32, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2902, file: !2875, line: 59, baseType: !2908, size: 64, offset: 128)
!2908 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !380, line: 94, baseType: !916)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2902, file: !2875, line: 60, baseType: !2908, size: 64, offset: 192)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2874, file: !2875, line: 95, baseType: !2911, size: 256)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2874, file: !2875, line: 64, size: 256, elements: !2912)
!2912 = !{!2913, !2914}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2911, file: !2875, line: 65, baseType: !217, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, scope: !2911, file: !2875, line: 77, baseType: !2915, size: 192, offset: 64)
!2915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2911, file: !2875, line: 77, size: 192, elements: !2916)
!2916 = !{!2917, !2918, !2925}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2915, file: !2875, line: 82, baseType: !1330, size: 16)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2915, file: !2875, line: 88, baseType: !2919, size: 192)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2915, file: !2875, line: 84, size: 192, elements: !2920)
!2920 = !{!2921, !2923, !2924}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2919, file: !2875, line: 85, baseType: !2922, size: 64)
!2922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !652, size: 64, elements: !374)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2919, file: !2875, line: 86, baseType: !217, size: 64, offset: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2919, file: !2875, line: 87, baseType: !217, size: 64, offset: 128)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2915, file: !2875, line: 93, baseType: !2926, size: 96)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2915, file: !2875, line: 90, size: 96, elements: !2927)
!2927 = !{!2928, !2929}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2926, file: !2875, line: 91, baseType: !2922, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2926, file: !2875, line: 92, baseType: !241, size: 32, offset: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2874, file: !2875, line: 101, baseType: !2931, size: 128)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2874, file: !2875, line: 98, size: 128, elements: !2932)
!2932 = !{!2933, !2934}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2931, file: !2875, line: 99, baseType: !245, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2931, file: !2875, line: 100, baseType: !107, size: 32, offset: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2874, file: !2875, line: 108, baseType: !2936, size: 128)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2874, file: !2875, line: 104, size: 128, elements: !2937)
!2937 = !{!2938, !2939, !2940}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2936, file: !2875, line: 105, baseType: !217, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2936, file: !2875, line: 106, baseType: !107, size: 32, offset: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2936, file: !2875, line: 107, baseType: !5, size: 32, offset: 96)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !229, file: !230, line: 1067, baseType: !2737, offset: 11136)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !229, file: !230, line: 1099, baseType: !2943, size: 64, offset: 11136)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !230, line: 56, flags: DIFlagFwdDecl)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !229, file: !230, line: 1103, baseType: !223, size: 128, offset: 11200)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !229, file: !230, line: 1104, baseType: !2947, size: 64, offset: 11328)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !230, line: 46, flags: DIFlagFwdDecl)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !229, file: !230, line: 1105, baseType: !839, size: 192, offset: 11392)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !229, file: !230, line: 1106, baseType: !5, size: 32, offset: 11584)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !229, file: !230, line: 1109, baseType: !2952, size: 128, offset: 11648)
!2952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2953, size: 128, elements: !1279)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !230, line: 51, flags: DIFlagFwdDecl)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !229, file: !230, line: 1110, baseType: !839, size: 192, offset: 11776)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !229, file: !230, line: 1111, baseType: !223, size: 128, offset: 11968)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !229, file: !230, line: 1173, baseType: !2958, size: 64, offset: 12096)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2960, line: 62, size: 256, align: 256, elements: !2961)
!2960 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2961 = !{!2962, !2963, !2964, !2969}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2959, file: !2960, line: 75, baseType: !241, size: 32)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2959, file: !2960, line: 90, baseType: !241, size: 32, offset: 32)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2959, file: !2960, line: 124, baseType: !2965, size: 64, offset: 64)
!2965 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2959, file: !2960, line: 109, size: 64, elements: !2966)
!2966 = !{!2967, !2968}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2965, file: !2960, line: 110, baseType: !287, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2965, file: !2960, line: 112, baseType: !287, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2959, file: !2960, line: 144, baseType: !241, size: 32, offset: 128)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !229, file: !230, line: 1174, baseType: !239, size: 32, offset: 12160)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !229, file: !230, line: 1179, baseType: !237, size: 64, offset: 12224)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !229, file: !230, line: 1182, baseType: !2973, size: 128, offset: 12288)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2393, line: 76, size: 128, elements: !2974)
!2974 = !{!2975, !2980, !2981}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2973, file: !2393, line: 85, baseType: !2976, size: 64)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2977, line: 7, size: 64, elements: !2978)
!2977 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2978 = !{!2979}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2976, file: !2977, line: 12, baseType: !425, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2973, file: !2393, line: 88, baseType: !695, size: 8, offset: 64)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2973, file: !2393, line: 95, baseType: !695, size: 8, offset: 72)
!2982 = !DIDerivedType(tag: DW_TAG_member, scope: !229, file: !230, line: 1184, baseType: !2983, size: 128, offset: 12416)
!2983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !229, file: !230, line: 1184, size: 128, elements: !2984)
!2984 = !{!2985, !2986}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2983, file: !230, line: 1185, baseType: !248, size: 32)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2983, file: !230, line: 1186, baseType: !889, size: 128, align: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !229, file: !230, line: 1190, baseType: !1145, size: 64, offset: 12544)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !229, file: !230, line: 1192, baseType: !2989, size: 128, offset: 12608)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2393, line: 64, size: 128, elements: !2990)
!2990 = !{!2991, !2992, !2993}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2989, file: !2393, line: 65, baseType: !524, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2989, file: !2393, line: 67, baseType: !241, size: 32, offset: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2989, file: !2393, line: 68, baseType: !241, size: 32, offset: 96)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !229, file: !230, line: 1206, baseType: !107, size: 32, offset: 12736)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !229, file: !230, line: 1207, baseType: !107, size: 32, offset: 12768)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !229, file: !230, line: 1209, baseType: !237, size: 64, offset: 12800)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !229, file: !230, line: 1219, baseType: !286, size: 64, offset: 12864)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !229, file: !230, line: 1220, baseType: !286, size: 64, offset: 12928)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !229, file: !230, line: 1317, baseType: !107, size: 32, offset: 12992)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !229, file: !230, line: 1319, baseType: !228, size: 64, offset: 13056)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !229, file: !230, line: 1322, baseType: !3002, size: 64, offset: 13120)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3004, line: 56, size: 512, elements: !3005)
!3004 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!3005 = !{!3006, !3007, !3008, !3009, !3010, !3011, !3012, !3014}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3003, file: !3004, line: 57, baseType: !3002, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3003, file: !3004, line: 58, baseType: !217, size: 64, offset: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3003, file: !3004, line: 59, baseType: !237, size: 64, offset: 128)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3003, file: !3004, line: 60, baseType: !237, size: 64, offset: 192)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3003, file: !3004, line: 61, baseType: !2094, size: 64, offset: 256)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3003, file: !3004, line: 62, baseType: !5, size: 32, offset: 320)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3003, file: !3004, line: 63, baseType: !3013, size: 64, offset: 384)
!3013 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !216, line: 153, baseType: !286)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3003, file: !3004, line: 64, baseType: !3015, size: 64, offset: 448)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !229, file: !230, line: 1326, baseType: !248, size: 32, offset: 13184)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !229, file: !230, line: 1342, baseType: !217, size: 64, offset: 13248)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !229, file: !230, line: 1343, baseType: !287, size: 64, offset: 13312)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !229, file: !230, line: 1344, baseType: !286, size: 64, offset: 13376)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !229, file: !230, line: 1345, baseType: !287, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !229, file: !230, line: 1346, baseType: !287, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !229, file: !230, line: 1347, baseType: !287, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !229, file: !230, line: 1348, baseType: !889, size: 128, align: 64, offset: 13504)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !229, file: !230, line: 1358, baseType: !3026, size: 34816, offset: 13824)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3027, line: 485, size: 34816, elements: !3028)
!3027 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3028 = !{!3029, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3058, !3059, !3060, !3061, !3062, !3063, !3066, !3067, !3068}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3026, file: !3027, line: 487, baseType: !3030, size: 192)
!3030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3031, size: 192, elements: !762)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3032, line: 16, size: 64, elements: !3033)
!3032 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!3033 = !{!3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3031, file: !3032, line: 17, baseType: !937, size: 16)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3031, file: !3032, line: 18, baseType: !937, size: 16, offset: 16)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3031, file: !3032, line: 19, baseType: !937, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3031, file: !3032, line: 19, baseType: !937, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3031, file: !3032, line: 19, baseType: !937, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3031, file: !3032, line: 19, baseType: !937, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3031, file: !3032, line: 19, baseType: !937, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3031, file: !3032, line: 20, baseType: !937, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3031, file: !3032, line: 20, baseType: !937, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3031, file: !3032, line: 20, baseType: !937, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3031, file: !3032, line: 20, baseType: !937, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3031, file: !3032, line: 20, baseType: !937, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3031, file: !3032, line: 20, baseType: !937, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3026, file: !3027, line: 491, baseType: !237, size: 64, offset: 192)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3026, file: !3027, line: 495, baseType: !304, size: 16, offset: 256)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3026, file: !3027, line: 496, baseType: !304, size: 16, offset: 272)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3026, file: !3027, line: 497, baseType: !304, size: 16, offset: 288)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3026, file: !3027, line: 498, baseType: !304, size: 16, offset: 304)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3026, file: !3027, line: 502, baseType: !237, size: 64, offset: 320)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3026, file: !3027, line: 503, baseType: !237, size: 64, offset: 384)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3026, file: !3027, line: 514, baseType: !3055, size: 256, offset: 448)
!3055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3056, size: 256, elements: !1194)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3027, line: 483, flags: DIFlagFwdDecl)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3026, file: !3027, line: 516, baseType: !237, size: 64, offset: 704)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3026, file: !3027, line: 518, baseType: !237, size: 64, offset: 768)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3026, file: !3027, line: 520, baseType: !237, size: 64, offset: 832)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3026, file: !3027, line: 521, baseType: !237, size: 64, offset: 896)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3026, file: !3027, line: 522, baseType: !237, size: 64, offset: 960)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3026, file: !3027, line: 528, baseType: !3064, size: 64, offset: 1024)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3027, line: 10, flags: DIFlagFwdDecl)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3026, file: !3027, line: 535, baseType: !237, size: 64, offset: 1088)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3026, file: !3027, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3026, file: !3027, line: 540, baseType: !3069, size: 33280, offset: 1536)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3070, line: 317, size: 33280, elements: !3071)
!3070 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!3071 = !{!3072, !3073, !3074}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3069, file: !3070, line: 330, baseType: !5, size: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3069, file: !3070, line: 337, baseType: !237, size: 64, offset: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3069, file: !3070, line: 348, baseType: !3075, size: 32768, offset: 512)
!3075 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3070, line: 304, size: 32768, elements: !3076)
!3076 = !{!3077, !3092, !3129, !3179, !3192}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3075, file: !3070, line: 305, baseType: !3078, size: 896)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3070, line: 12, size: 896, elements: !3079)
!3079 = !{!3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3091}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3078, file: !3070, line: 13, baseType: !239, size: 32)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3078, file: !3070, line: 14, baseType: !239, size: 32, offset: 32)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3078, file: !3070, line: 15, baseType: !239, size: 32, offset: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3078, file: !3070, line: 16, baseType: !239, size: 32, offset: 96)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3078, file: !3070, line: 17, baseType: !239, size: 32, offset: 128)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3078, file: !3070, line: 18, baseType: !239, size: 32, offset: 160)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3078, file: !3070, line: 19, baseType: !239, size: 32, offset: 192)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3078, file: !3070, line: 22, baseType: !3088, size: 640, offset: 224)
!3088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 640, elements: !3089)
!3089 = !{!3090}
!3090 = !DISubrange(count: 20)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3078, file: !3070, line: 25, baseType: !239, size: 32, offset: 864)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3075, file: !3070, line: 306, baseType: !3093, size: 4096, align: 128)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3070, line: 34, size: 4096, align: 128, elements: !3094)
!3094 = !{!3095, !3096, !3097, !3098, !3099, !3114, !3115, !3116, !3118, !3120, !3124}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3093, file: !3070, line: 35, baseType: !937, size: 16)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3093, file: !3070, line: 36, baseType: !937, size: 16, offset: 16)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3093, file: !3070, line: 37, baseType: !937, size: 16, offset: 32)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3093, file: !3070, line: 38, baseType: !937, size: 16, offset: 48)
!3099 = !DIDerivedType(tag: DW_TAG_member, scope: !3093, file: !3070, line: 39, baseType: !3100, size: 128, offset: 64)
!3100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3093, file: !3070, line: 39, size: 128, elements: !3101)
!3101 = !{!3102, !3107}
!3102 = !DIDerivedType(tag: DW_TAG_member, scope: !3100, file: !3070, line: 40, baseType: !3103, size: 128)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3100, file: !3070, line: 40, size: 128, elements: !3104)
!3104 = !{!3105, !3106}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3103, file: !3070, line: 41, baseType: !286, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3103, file: !3070, line: 42, baseType: !286, size: 64, offset: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, scope: !3100, file: !3070, line: 44, baseType: !3108, size: 128)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3100, file: !3070, line: 44, size: 128, elements: !3109)
!3109 = !{!3110, !3111, !3112, !3113}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3108, file: !3070, line: 45, baseType: !239, size: 32)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3108, file: !3070, line: 46, baseType: !239, size: 32, offset: 32)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3108, file: !3070, line: 47, baseType: !239, size: 32, offset: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3108, file: !3070, line: 48, baseType: !239, size: 32, offset: 96)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3093, file: !3070, line: 51, baseType: !239, size: 32, offset: 192)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3093, file: !3070, line: 52, baseType: !239, size: 32, offset: 224)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3093, file: !3070, line: 55, baseType: !3117, size: 1024, offset: 256)
!3117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 1024, elements: !608)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3093, file: !3070, line: 58, baseType: !3119, size: 2048, offset: 1280)
!3119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 2048, elements: !2782)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3093, file: !3070, line: 60, baseType: !3121, size: 384, offset: 3328)
!3121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 384, elements: !3122)
!3122 = !{!3123}
!3123 = !DISubrange(count: 12)
!3124 = !DIDerivedType(tag: DW_TAG_member, scope: !3093, file: !3070, line: 62, baseType: !3125, size: 384, offset: 3712)
!3125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3093, file: !3070, line: 62, size: 384, elements: !3126)
!3126 = !{!3127, !3128}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3125, file: !3070, line: 63, baseType: !3121, size: 384)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3125, file: !3070, line: 64, baseType: !3121, size: 384)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3075, file: !3070, line: 307, baseType: !3130, size: 1088)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3070, line: 79, size: 1088, elements: !3131)
!3131 = !{!3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3178}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3130, file: !3070, line: 80, baseType: !239, size: 32)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3130, file: !3070, line: 81, baseType: !239, size: 32, offset: 32)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3130, file: !3070, line: 82, baseType: !239, size: 32, offset: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3130, file: !3070, line: 83, baseType: !239, size: 32, offset: 96)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3130, file: !3070, line: 84, baseType: !239, size: 32, offset: 128)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3130, file: !3070, line: 85, baseType: !239, size: 32, offset: 160)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3130, file: !3070, line: 86, baseType: !239, size: 32, offset: 192)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3130, file: !3070, line: 88, baseType: !3088, size: 640, offset: 224)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3130, file: !3070, line: 89, baseType: !409, size: 8, offset: 864)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3130, file: !3070, line: 90, baseType: !409, size: 8, offset: 872)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3130, file: !3070, line: 91, baseType: !409, size: 8, offset: 880)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3130, file: !3070, line: 92, baseType: !409, size: 8, offset: 888)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3130, file: !3070, line: 93, baseType: !409, size: 8, offset: 896)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3130, file: !3070, line: 94, baseType: !409, size: 8, offset: 904)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3130, file: !3070, line: 95, baseType: !3147, size: 64, offset: 960)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3149, line: 11, size: 128, elements: !3150)
!3149 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3150 = !{!3151, !3152}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3148, file: !3149, line: 12, baseType: !245, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3148, file: !3149, line: 13, baseType: !3153, size: 64, offset: 64)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3155, line: 56, size: 1344, elements: !3156)
!3155 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3156 = !{!3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3154, file: !3155, line: 61, baseType: !237, size: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3154, file: !3155, line: 62, baseType: !237, size: 64, offset: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3154, file: !3155, line: 63, baseType: !237, size: 64, offset: 128)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3154, file: !3155, line: 64, baseType: !237, size: 64, offset: 192)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3154, file: !3155, line: 65, baseType: !237, size: 64, offset: 256)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3154, file: !3155, line: 66, baseType: !237, size: 64, offset: 320)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3154, file: !3155, line: 68, baseType: !237, size: 64, offset: 384)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3154, file: !3155, line: 69, baseType: !237, size: 64, offset: 448)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3154, file: !3155, line: 70, baseType: !237, size: 64, offset: 512)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3154, file: !3155, line: 71, baseType: !237, size: 64, offset: 576)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3154, file: !3155, line: 72, baseType: !237, size: 64, offset: 640)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3154, file: !3155, line: 73, baseType: !237, size: 64, offset: 704)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3154, file: !3155, line: 74, baseType: !237, size: 64, offset: 768)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3154, file: !3155, line: 75, baseType: !237, size: 64, offset: 832)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3154, file: !3155, line: 76, baseType: !237, size: 64, offset: 896)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3154, file: !3155, line: 81, baseType: !237, size: 64, offset: 960)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3154, file: !3155, line: 83, baseType: !237, size: 64, offset: 1024)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3154, file: !3155, line: 84, baseType: !237, size: 64, offset: 1088)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3154, file: !3155, line: 85, baseType: !237, size: 64, offset: 1152)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3154, file: !3155, line: 86, baseType: !237, size: 64, offset: 1216)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3154, file: !3155, line: 87, baseType: !237, size: 64, offset: 1280)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3130, file: !3070, line: 96, baseType: !239, size: 32, offset: 1024)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3075, file: !3070, line: 308, baseType: !3180, size: 4608, align: 512)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3070, line: 289, size: 4608, align: 512, elements: !3181)
!3181 = !{!3182, !3183, !3190}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3180, file: !3070, line: 290, baseType: !3093, size: 4096, align: 128)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3180, file: !3070, line: 291, baseType: !3184, size: 512, offset: 4096)
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3070, line: 268, size: 512, elements: !3185)
!3185 = !{!3186, !3187, !3188}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3184, file: !3070, line: 269, baseType: !286, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3184, file: !3070, line: 270, baseType: !286, size: 64, offset: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3184, file: !3070, line: 271, baseType: !3189, size: 384, offset: 128)
!3189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 384, elements: !1348)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3180, file: !3070, line: 292, baseType: !3191, offset: 4608)
!3191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, elements: !1444)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3075, file: !3070, line: 309, baseType: !3193, size: 32768)
!3193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 32768, elements: !3194)
!3194 = !{!3195}
!3195 = !DISubrange(count: 4096)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_master", file: !3198, line: 71, size: 1280, elements: !3199)
!3198 = !DIFile(filename: "./include/drm/drm_auth.h", directory: "/home/lizy2001/genbc/linux")
!3199 = !{!3200, !3201, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3197, file: !3198, line: 72, baseType: !1210, size: 32)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3197, file: !3198, line: 73, baseType: !3202, size: 64, offset: 64)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !159, line: 53, size: 11840, elements: !3204)
!3204 = !{!3205, !3206, !3207, !3208, !3917, !3923, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4265, !4266, !4267, !4268, !4269, !4270, !4273, !4276, !4277, !4489, !4490, !4491, !4494, !4497, !4498}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_dev_list", scope: !3203, file: !159, line: 59, baseType: !223, size: 128)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "if_version", scope: !3203, file: !159, line: 62, baseType: !107, size: 32, offset: 128)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3203, file: !159, line: 65, baseType: !1210, size: 32, offset: 160)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3203, file: !159, line: 68, baseType: !3209, size: 64, offset: 192)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !71, line: 461, size: 5568, elements: !3211)
!3211 = !{!3212, !3488, !3489, !3492, !3493, !3544, !3617, !3618, !3619, !3620, !3621, !3630, !3735, !3748, !3752, !3753, !3757, !3759, !3760, !3761, !3765, !3771, !3772, !3775, !3779, !3869, !3870, !3871, !3872, !3873, !3905, !3906, !3907, !3910, !3913, !3914, !3915, !3916}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3210, file: !71, line: 462, baseType: !3213, size: 512)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !3214, line: 64, size: 512, elements: !3215)
!3214 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!3215 = !{!3216, !3217, !3218, !3220, !3260, !3360, !3482, !3483, !3484, !3485, !3486, !3487}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3213, file: !3214, line: 65, baseType: !650, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3213, file: !3214, line: 66, baseType: !223, size: 128, offset: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3213, file: !3214, line: 67, baseType: !3219, size: 64, offset: 192)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !3213, file: !3214, line: 68, baseType: !3221, size: 64, offset: 256)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !3214, line: 192, size: 704, elements: !3223)
!3223 = !{!3224, !3225, !3226, !3227}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3222, file: !3214, line: 193, baseType: !223, size: 128)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3222, file: !3214, line: 194, baseType: !621, offset: 128)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3222, file: !3214, line: 195, baseType: !3213, size: 512, offset: 128)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !3222, file: !3214, line: 196, baseType: !3228, size: 64, offset: 640)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3230)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !3214, line: 156, size: 192, elements: !3231)
!3231 = !{!3232, !3237, !3242}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3230, file: !3214, line: 157, baseType: !3233, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3234)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!107, !3221, !3219}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3230, file: !3214, line: 158, baseType: !3238, size: 64, offset: 64)
!3238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3239)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!650, !3221, !3219}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3230, file: !3214, line: 159, baseType: !3243, size: 64, offset: 128)
!3243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3244)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!107, !3221, !3219, !3247}
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !3214, line: 148, size: 20736, elements: !3249)
!3249 = !{!3250, !3252, !3254, !3255, !3259}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !3248, file: !3214, line: 149, baseType: !3251, size: 192)
!3251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !676, size: 192, elements: !762)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !3248, file: !3214, line: 150, baseType: !3253, size: 4096, offset: 192)
!3253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !676, size: 4096, elements: !2782)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !3248, file: !3214, line: 151, baseType: !107, size: 32, offset: 4288)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3248, file: !3214, line: 152, baseType: !3256, size: 16384, offset: 4320)
!3256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !652, size: 16384, elements: !3257)
!3257 = !{!3258}
!3258 = !DISubrange(count: 2048)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !3248, file: !3214, line: 153, baseType: !107, size: 32, offset: 20704)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !3213, file: !3214, line: 69, baseType: !3261, size: 64, offset: 320)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !3214, line: 138, size: 448, elements: !3263)
!3263 = !{!3264, !3268, !3287, !3289, !3322, !3350, !3354}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3262, file: !3214, line: 139, baseType: !3265, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{null, !3219}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !3262, file: !3214, line: 140, baseType: !3269, size: 64, offset: 64)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3271)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !3272, line: 230, size: 128, elements: !3273)
!3272 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!3273 = !{!3274, !3283}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3271, file: !3272, line: 231, baseType: !3275, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!914, !3219, !3278, !676}
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !3272, line: 30, size: 128, elements: !3280)
!3280 = !{!3281, !3282}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3279, file: !3272, line: 31, baseType: !650, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3279, file: !3272, line: 32, baseType: !544, size: 16, offset: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3271, file: !3272, line: 232, baseType: !3284, size: 64, offset: 64)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!914, !3219, !3278, !650, !830}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !3262, file: !3214, line: 141, baseType: !3288, size: 64, offset: 128)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !3262, file: !3214, line: 142, baseType: !3290, size: 64, offset: 192)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3293)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !3272, line: 84, size: 320, elements: !3294)
!3294 = !{!3295, !3296, !3300, !3319, !3320}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3293, file: !3272, line: 85, baseType: !650, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !3293, file: !3272, line: 86, baseType: !3297, size: 64, offset: 64)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!544, !3219, !3278, !107}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !3293, file: !3272, line: 88, baseType: !3301, size: 64, offset: 128)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!544, !3219, !3304, !107}
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !3272, line: 168, size: 448, elements: !3306)
!3306 = !{!3307, !3308, !3309, !3310, !3314, !3315}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3305, file: !3272, line: 169, baseType: !3279, size: 128)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3305, file: !3272, line: 170, baseType: !830, size: 64, offset: 128)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3305, file: !3272, line: 171, baseType: !217, size: 64, offset: 192)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3305, file: !3272, line: 172, baseType: !3311, size: 64, offset: 256)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!914, !909, !3219, !3304, !676, !714, !830}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3305, file: !3272, line: 174, baseType: !3311, size: 64, offset: 320)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3305, file: !3272, line: 176, baseType: !3316, size: 64, offset: 384)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!107, !909, !3219, !3304, !444}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !3293, file: !3272, line: 90, baseType: !3288, size: 64, offset: 192)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !3293, file: !3272, line: 91, baseType: !3321, size: 64, offset: 256)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !3262, file: !3214, line: 143, baseType: !3323, size: 64, offset: 256)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!3326, !3219}
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3328)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !59, line: 39, size: 384, elements: !3329)
!3329 = !{!3330, !3331, !3335, !3339, !3345, !3349}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3328, file: !59, line: 40, baseType: !58, size: 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3328, file: !59, line: 41, baseType: !3332, size: 64, offset: 64)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!695}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3328, file: !59, line: 42, baseType: !3336, size: 64, offset: 128)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!217}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3328, file: !59, line: 43, baseType: !3340, size: 64, offset: 192)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!3015, !3343}
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !59, line: 19, flags: DIFlagFwdDecl)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3328, file: !59, line: 44, baseType: !3346, size: 64, offset: 256)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!3015}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3328, file: !59, line: 45, baseType: !1866, size: 64, offset: 320)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3262, file: !3214, line: 144, baseType: !3351, size: 64, offset: 320)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!3015, !3219}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3262, file: !3214, line: 145, baseType: !3355, size: 64, offset: 384)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{null, !3219, !3358, !3359}
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !3213, file: !3214, line: 70, baseType: !3361, size: 64, offset: 384)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3363, line: 123, size: 1024, elements: !3364)
!3363 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!3364 = !{!3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3475, !3476, !3477, !3478, !3479}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3362, file: !3363, line: 124, baseType: !252, size: 32)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3362, file: !3363, line: 125, baseType: !252, size: 32, offset: 32)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3362, file: !3363, line: 135, baseType: !3361, size: 64, offset: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3362, file: !3363, line: 136, baseType: !650, size: 64, offset: 128)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3362, file: !3363, line: 138, baseType: !276, size: 192, align: 64, offset: 192)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3362, file: !3363, line: 140, baseType: !3015, size: 64, offset: 384)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3362, file: !3363, line: 141, baseType: !5, size: 32, offset: 448)
!3372 = !DIDerivedType(tag: DW_TAG_member, scope: !3362, file: !3363, line: 142, baseType: !3373, size: 256, offset: 512)
!3373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3362, file: !3363, line: 142, size: 256, elements: !3374)
!3374 = !{!3375, !3415, !3419}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3373, file: !3363, line: 143, baseType: !3376, size: 192)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3363, line: 91, size: 192, elements: !3377)
!3377 = !{!3378, !3379, !3380}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3376, file: !3363, line: 92, baseType: !237, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3376, file: !3363, line: 94, baseType: !399, size: 64, offset: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3376, file: !3363, line: 100, baseType: !3381, size: 64, offset: 128)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3363, line: 180, size: 704, elements: !3383)
!3383 = !{!3384, !3385, !3386, !3387, !3388, !3389, !3413, !3414}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3382, file: !3363, line: 182, baseType: !3361, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3382, file: !3363, line: 183, baseType: !5, size: 32, offset: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3382, file: !3363, line: 186, baseType: !1215, size: 192, offset: 128)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3382, file: !3363, line: 187, baseType: !239, size: 32, offset: 320)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3382, file: !3363, line: 188, baseType: !239, size: 32, offset: 352)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3382, file: !3363, line: 189, baseType: !3390, size: 64, offset: 384)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !3363, line: 168, size: 320, elements: !3392)
!3392 = !{!3393, !3397, !3401, !3405, !3409}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3391, file: !3363, line: 169, baseType: !3394, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!107, !824, !3381}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3391, file: !3363, line: 171, baseType: !3398, size: 64, offset: 64)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!107, !3361, !650, !544}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3391, file: !3363, line: 173, baseType: !3402, size: 64, offset: 128)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!107, !3361}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3391, file: !3363, line: 174, baseType: !3406, size: 64, offset: 192)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!107, !3361, !3361, !650}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3391, file: !3363, line: 176, baseType: !3410, size: 64, offset: 256)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!107, !824, !3361, !3381}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3382, file: !3363, line: 192, baseType: !223, size: 128, offset: 448)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3382, file: !3363, line: 194, baseType: !984, size: 128, offset: 576)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3373, file: !3363, line: 144, baseType: !3416, size: 64)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3363, line: 103, size: 64, elements: !3417)
!3417 = !{!3418}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3416, file: !3363, line: 104, baseType: !3361, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3373, file: !3363, line: 145, baseType: !3420, size: 256)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3363, line: 107, size: 256, elements: !3421)
!3421 = !{!3422, !3470, !3473, !3474}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3420, file: !3363, line: 108, baseType: !3423, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3425)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3363, line: 217, size: 768, elements: !3426)
!3426 = !{!3427, !3447, !3451, !3452, !3453, !3454, !3455, !3459, !3460, !3461, !3462, !3466}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3425, file: !3363, line: 222, baseType: !3428, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!107, !3431}
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3363, line: 197, size: 1088, elements: !3433)
!3433 = !{!3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3432, file: !3363, line: 199, baseType: !3361, size: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3432, file: !3363, line: 200, baseType: !909, size: 64, offset: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3432, file: !3363, line: 201, baseType: !824, size: 64, offset: 128)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3432, file: !3363, line: 202, baseType: !217, size: 64, offset: 192)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3432, file: !3363, line: 205, baseType: !839, size: 192, offset: 256)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3432, file: !3363, line: 206, baseType: !839, size: 192, offset: 448)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3432, file: !3363, line: 207, baseType: !107, size: 32, offset: 640)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3432, file: !3363, line: 208, baseType: !223, size: 128, offset: 704)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3432, file: !3363, line: 209, baseType: !676, size: 64, offset: 832)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3432, file: !3363, line: 211, baseType: !830, size: 64, offset: 896)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3432, file: !3363, line: 212, baseType: !695, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3432, file: !3363, line: 213, baseType: !695, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3432, file: !3363, line: 214, baseType: !473, size: 64, offset: 1024)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3425, file: !3363, line: 223, baseType: !3448, size: 64, offset: 64)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{null, !3431}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3425, file: !3363, line: 236, baseType: !870, size: 64, offset: 128)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3425, file: !3363, line: 238, baseType: !857, size: 64, offset: 192)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3425, file: !3363, line: 239, baseType: !866, size: 64, offset: 256)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3425, file: !3363, line: 240, baseType: !862, size: 64, offset: 320)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3425, file: !3363, line: 242, baseType: !3456, size: 64, offset: 384)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!914, !3431, !676, !830, !714}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3425, file: !3363, line: 252, baseType: !830, size: 64, offset: 448)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3425, file: !3363, line: 259, baseType: !695, size: 8, offset: 512)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3425, file: !3363, line: 260, baseType: !3456, size: 64, offset: 576)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3425, file: !3363, line: 263, baseType: !3463, size: 64, offset: 640)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!972, !3431, !974}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3425, file: !3363, line: 266, baseType: !3467, size: 64, offset: 704)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!107, !3431, !444}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3420, file: !3363, line: 109, baseType: !3471, size: 64, offset: 64)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3363, line: 31, flags: DIFlagFwdDecl)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3420, file: !3363, line: 110, baseType: !714, size: 64, offset: 128)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3420, file: !3363, line: 111, baseType: !3361, size: 64, offset: 192)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3362, file: !3363, line: 148, baseType: !217, size: 64, offset: 768)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3362, file: !3363, line: 154, baseType: !286, size: 64, offset: 832)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3362, file: !3363, line: 156, baseType: !304, size: 16, offset: 896)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3362, file: !3363, line: 157, baseType: !544, size: 16, offset: 912)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3362, file: !3363, line: 158, baseType: !3480, size: 64, offset: 960)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3363, line: 32, flags: DIFlagFwdDecl)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3213, file: !3214, line: 71, baseType: !1210, size: 32, offset: 448)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !3213, file: !3214, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !3213, file: !3214, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !3213, file: !3214, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !3213, file: !3214, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !3213, file: !3214, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3210, file: !71, line: 463, baseType: !3209, size: 64, offset: 512)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3210, file: !71, line: 465, baseType: !3490, size: 64, offset: 576)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !71, line: 36, flags: DIFlagFwdDecl)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3210, file: !71, line: 467, baseType: !650, size: 64, offset: 640)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3210, file: !71, line: 468, baseType: !3494, size: 64, offset: 704)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3496)
!3496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !71, line: 87, size: 384, elements: !3497)
!3497 = !{!3498, !3499, !3500, !3504, !3509, !3513}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3496, file: !71, line: 88, baseType: !650, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3496, file: !71, line: 89, baseType: !3290, size: 64, offset: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3496, file: !71, line: 90, baseType: !3501, size: 64, offset: 128)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!107, !3209, !3247}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3496, file: !71, line: 91, baseType: !3505, size: 64, offset: 192)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!676, !3209, !3508, !3358, !3359}
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3496, file: !71, line: 93, baseType: !3510, size: 64, offset: 256)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{null, !3209}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3496, file: !71, line: 95, baseType: !3514, size: 64, offset: 320)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3516)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !78, line: 278, size: 1472, elements: !3517)
!3517 = !{!3518, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3516, file: !78, line: 279, baseType: !3519, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!107, !3209}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3516, file: !78, line: 280, baseType: !3510, size: 64, offset: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3516, file: !78, line: 281, baseType: !3519, size: 64, offset: 128)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3516, file: !78, line: 282, baseType: !3519, size: 64, offset: 192)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3516, file: !78, line: 283, baseType: !3519, size: 64, offset: 256)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3516, file: !78, line: 284, baseType: !3519, size: 64, offset: 320)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3516, file: !78, line: 285, baseType: !3519, size: 64, offset: 384)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3516, file: !78, line: 286, baseType: !3519, size: 64, offset: 448)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3516, file: !78, line: 287, baseType: !3519, size: 64, offset: 512)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3516, file: !78, line: 288, baseType: !3519, size: 64, offset: 576)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3516, file: !78, line: 289, baseType: !3519, size: 64, offset: 640)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3516, file: !78, line: 290, baseType: !3519, size: 64, offset: 704)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3516, file: !78, line: 291, baseType: !3519, size: 64, offset: 768)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3516, file: !78, line: 292, baseType: !3519, size: 64, offset: 832)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3516, file: !78, line: 293, baseType: !3519, size: 64, offset: 896)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3516, file: !78, line: 294, baseType: !3519, size: 64, offset: 960)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3516, file: !78, line: 295, baseType: !3519, size: 64, offset: 1024)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3516, file: !78, line: 296, baseType: !3519, size: 64, offset: 1088)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3516, file: !78, line: 297, baseType: !3519, size: 64, offset: 1152)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3516, file: !78, line: 298, baseType: !3519, size: 64, offset: 1216)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3516, file: !78, line: 299, baseType: !3519, size: 64, offset: 1280)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3516, file: !78, line: 300, baseType: !3519, size: 64, offset: 1344)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3516, file: !78, line: 301, baseType: !3519, size: 64, offset: 1408)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3210, file: !71, line: 470, baseType: !3545, size: 64, offset: 768)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3547, line: 82, size: 1408, elements: !3548)
!3547 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3548 = !{!3549, !3550, !3551, !3552, !3553, !3554, !3555, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3612, !3615, !3616}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3546, file: !3547, line: 83, baseType: !650, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3546, file: !3547, line: 84, baseType: !650, size: 64, offset: 64)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3546, file: !3547, line: 85, baseType: !3209, size: 64, offset: 128)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3546, file: !3547, line: 86, baseType: !3290, size: 64, offset: 192)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3546, file: !3547, line: 87, baseType: !3290, size: 64, offset: 256)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3546, file: !3547, line: 88, baseType: !3290, size: 64, offset: 320)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3546, file: !3547, line: 90, baseType: !3556, size: 64, offset: 384)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!107, !3209, !3559}
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !65, line: 95, size: 1152, elements: !3561)
!3561 = !{!3562, !3563, !3564, !3565, !3566, !3567, !3568, !3572, !3576, !3577, !3578, !3579, !3580, !3588, !3589, !3590, !3591, !3592, !3593}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3560, file: !65, line: 96, baseType: !650, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3560, file: !65, line: 97, baseType: !3545, size: 64, offset: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3560, file: !65, line: 99, baseType: !741, size: 64, offset: 128)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3560, file: !65, line: 100, baseType: !650, size: 64, offset: 192)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3560, file: !65, line: 102, baseType: !695, size: 8, offset: 256)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3560, file: !65, line: 103, baseType: !64, size: 32, offset: 288)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3560, file: !65, line: 105, baseType: !3569, size: 64, offset: 320)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3571)
!3571 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !65, line: 105, flags: DIFlagFwdDecl)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3560, file: !65, line: 106, baseType: !3573, size: 64, offset: 384)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3575)
!3575 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !65, line: 106, flags: DIFlagFwdDecl)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3560, file: !65, line: 108, baseType: !3519, size: 64, offset: 448)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3560, file: !65, line: 109, baseType: !3510, size: 64, offset: 512)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3560, file: !65, line: 110, baseType: !3519, size: 64, offset: 576)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3560, file: !65, line: 111, baseType: !3510, size: 64, offset: 640)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3560, file: !65, line: 112, baseType: !3581, size: 64, offset: 704)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!107, !3209, !3584}
!3584 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !78, line: 52, baseType: !3585)
!3585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !78, line: 50, size: 32, elements: !3586)
!3586 = !{!3587}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3585, file: !78, line: 51, baseType: !107, size: 32)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3560, file: !65, line: 113, baseType: !3519, size: 64, offset: 768)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3560, file: !65, line: 114, baseType: !3290, size: 64, offset: 832)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3560, file: !65, line: 115, baseType: !3290, size: 64, offset: 896)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3560, file: !65, line: 117, baseType: !3514, size: 64, offset: 960)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3560, file: !65, line: 118, baseType: !3510, size: 64, offset: 1024)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3560, file: !65, line: 120, baseType: !3594, size: 64, offset: 1088)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !65, line: 120, flags: DIFlagFwdDecl)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3546, file: !3547, line: 91, baseType: !3501, size: 64, offset: 448)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3546, file: !3547, line: 92, baseType: !3519, size: 64, offset: 512)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3546, file: !3547, line: 93, baseType: !3510, size: 64, offset: 576)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3546, file: !3547, line: 94, baseType: !3519, size: 64, offset: 640)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3546, file: !3547, line: 95, baseType: !3510, size: 64, offset: 704)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3546, file: !3547, line: 97, baseType: !3519, size: 64, offset: 768)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3546, file: !3547, line: 98, baseType: !3519, size: 64, offset: 832)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3546, file: !3547, line: 100, baseType: !3581, size: 64, offset: 896)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3546, file: !3547, line: 101, baseType: !3519, size: 64, offset: 960)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3546, file: !3547, line: 103, baseType: !3519, size: 64, offset: 1024)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3546, file: !3547, line: 105, baseType: !3519, size: 64, offset: 1088)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3546, file: !3547, line: 107, baseType: !3514, size: 64, offset: 1152)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3546, file: !3547, line: 109, baseType: !3609, size: 64, offset: 1216)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3611)
!3611 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3547, line: 109, flags: DIFlagFwdDecl)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3546, file: !3547, line: 111, baseType: !3613, size: 64, offset: 1280)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3547, line: 111, flags: DIFlagFwdDecl)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3546, file: !3547, line: 112, baseType: !756, offset: 1344)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3546, file: !3547, line: 114, baseType: !695, size: 8, offset: 1344)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3210, file: !71, line: 471, baseType: !3559, size: 64, offset: 832)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3210, file: !71, line: 473, baseType: !217, size: 64, offset: 896)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3210, file: !71, line: 475, baseType: !217, size: 64, offset: 960)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3210, file: !71, line: 480, baseType: !839, size: 192, offset: 1024)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3210, file: !71, line: 484, baseType: !3622, size: 576, offset: 1216)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !71, line: 361, size: 576, elements: !3623)
!3623 = !{!3624, !3625, !3626, !3627, !3628, !3629}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3622, file: !71, line: 362, baseType: !223, size: 128)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3622, file: !71, line: 363, baseType: !223, size: 128, offset: 128)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3622, file: !71, line: 364, baseType: !223, size: 128, offset: 256)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3622, file: !71, line: 365, baseType: !223, size: 128, offset: 384)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3622, file: !71, line: 366, baseType: !695, size: 8, offset: 512)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3622, file: !71, line: 367, baseType: !70, size: 32, offset: 544)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3210, file: !71, line: 485, baseType: !3631, size: 2304, offset: 1792)
!3631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !78, line: 565, size: 2304, elements: !3632)
!3632 = !{!3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3728, !3732}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3631, file: !78, line: 566, baseType: !3584, size: 32)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3631, file: !78, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3631, file: !78, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3631, file: !78, line: 569, baseType: !695, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3631, file: !78, line: 570, baseType: !695, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3631, file: !78, line: 571, baseType: !695, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3631, file: !78, line: 572, baseType: !695, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3631, file: !78, line: 573, baseType: !695, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3631, file: !78, line: 574, baseType: !695, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3631, file: !78, line: 575, baseType: !695, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3631, file: !78, line: 576, baseType: !695, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3631, file: !78, line: 577, baseType: !239, size: 32, offset: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3631, file: !78, line: 578, baseType: !621, offset: 96)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3631, file: !78, line: 580, baseType: !223, size: 128, offset: 128)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3631, file: !78, line: 581, baseType: !2258, size: 192, offset: 256)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3631, file: !78, line: 582, baseType: !3649, size: 64, offset: 448)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3651, line: 43, size: 1472, elements: !3652)
!3651 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3652 = !{!3653, !3654, !3655, !3656, !3657, !3660, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3650, file: !3651, line: 44, baseType: !650, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3650, file: !3651, line: 45, baseType: !107, size: 32, offset: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3650, file: !3651, line: 46, baseType: !223, size: 128, offset: 128)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3650, file: !3651, line: 47, baseType: !621, offset: 256)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3650, file: !3651, line: 48, baseType: !3658, size: 64, offset: 256)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !78, line: 533, flags: DIFlagFwdDecl)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3650, file: !3651, line: 49, baseType: !3661, size: 320, offset: 320)
!3661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3662, line: 11, size: 320, elements: !3663)
!3662 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3663 = !{!3664, !3665, !3666, !3671}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3661, file: !3662, line: 16, baseType: !750, size: 128)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3661, file: !3662, line: 17, baseType: !237, size: 64, offset: 128)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3661, file: !3662, line: 18, baseType: !3667, size: 64, offset: 192)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{null, !3670}
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3661, file: !3662, line: 19, baseType: !239, size: 32, offset: 256)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3650, file: !3651, line: 50, baseType: !237, size: 64, offset: 640)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3650, file: !3651, line: 51, baseType: !336, size: 64, offset: 704)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3650, file: !3651, line: 52, baseType: !336, size: 64, offset: 768)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3650, file: !3651, line: 53, baseType: !336, size: 64, offset: 832)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3650, file: !3651, line: 54, baseType: !336, size: 64, offset: 896)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3650, file: !3651, line: 55, baseType: !336, size: 64, offset: 960)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3650, file: !3651, line: 56, baseType: !237, size: 64, offset: 1024)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3650, file: !3651, line: 57, baseType: !237, size: 64, offset: 1088)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3650, file: !3651, line: 58, baseType: !237, size: 64, offset: 1152)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3650, file: !3651, line: 59, baseType: !237, size: 64, offset: 1216)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3650, file: !3651, line: 60, baseType: !237, size: 64, offset: 1280)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3650, file: !3651, line: 61, baseType: !3209, size: 64, offset: 1344)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3650, file: !3651, line: 62, baseType: !695, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3650, file: !3651, line: 63, baseType: !695, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3631, file: !78, line: 583, baseType: !695, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3631, file: !78, line: 584, baseType: !695, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3631, file: !78, line: 585, baseType: !695, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3631, file: !78, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3631, file: !78, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3631, file: !78, line: 592, baseType: !328, size: 512, offset: 576)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3631, file: !78, line: 593, baseType: !286, size: 64, offset: 1088)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3631, file: !78, line: 594, baseType: !1826, size: 256, offset: 1152)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3631, file: !78, line: 595, baseType: !984, size: 128, offset: 1408)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3631, file: !78, line: 596, baseType: !3658, size: 64, offset: 1536)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3631, file: !78, line: 597, baseType: !252, size: 32, offset: 1600)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3631, file: !78, line: 598, baseType: !252, size: 32, offset: 1632)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3631, file: !78, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3631, file: !78, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3631, file: !78, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3631, file: !78, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3631, file: !78, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3631, file: !78, line: 604, baseType: !695, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3631, file: !78, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3631, file: !78, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3631, file: !78, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3631, file: !78, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3631, file: !78, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3631, file: !78, line: 610, baseType: !5, size: 32, offset: 1696)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3631, file: !78, line: 611, baseType: !77, size: 32, offset: 1728)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3631, file: !78, line: 612, baseType: !85, size: 32, offset: 1760)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3631, file: !78, line: 613, baseType: !107, size: 32, offset: 1792)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3631, file: !78, line: 614, baseType: !107, size: 32, offset: 1824)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3631, file: !78, line: 615, baseType: !286, size: 64, offset: 1856)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3631, file: !78, line: 616, baseType: !286, size: 64, offset: 1920)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3631, file: !78, line: 617, baseType: !286, size: 64, offset: 1984)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3631, file: !78, line: 618, baseType: !286, size: 64, offset: 2048)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3631, file: !78, line: 620, baseType: !3719, size: 64, offset: 2112)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !78, line: 536, size: 256, elements: !3721)
!3721 = !{!3722, !3723, !3724, !3725}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3720, file: !78, line: 537, baseType: !621)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3720, file: !78, line: 538, baseType: !5, size: 32)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3720, file: !78, line: 540, baseType: !223, size: 128, offset: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3720, file: !78, line: 543, baseType: !3726, size: 64, offset: 192)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !78, line: 534, flags: DIFlagFwdDecl)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3631, file: !78, line: 621, baseType: !3729, size: 64, offset: 2176)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{null, !3209, !1295}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3631, file: !78, line: 622, baseType: !3733, size: 64, offset: 2240)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !78, line: 622, flags: DIFlagFwdDecl)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3210, file: !71, line: 486, baseType: !3736, size: 64, offset: 4096)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !78, line: 642, size: 1792, elements: !3738)
!3738 = !{!3739, !3740, !3741, !3745, !3746, !3747}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3737, file: !78, line: 643, baseType: !3516, size: 1472)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3737, file: !78, line: 644, baseType: !3519, size: 64, offset: 1472)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3737, file: !78, line: 645, baseType: !3742, size: 64, offset: 1536)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{null, !3209, !695}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3737, file: !78, line: 646, baseType: !3519, size: 64, offset: 1600)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3737, file: !78, line: 647, baseType: !3510, size: 64, offset: 1664)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3737, file: !78, line: 648, baseType: !3510, size: 64, offset: 1728)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3210, file: !71, line: 493, baseType: !3749, size: 64, offset: 4160)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3751, line: 13, flags: DIFlagFwdDecl)
!3751 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/lizy2001/genbc/linux")
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3210, file: !71, line: 499, baseType: !223, size: 128, offset: 4224)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3210, file: !71, line: 502, baseType: !3754, size: 64, offset: 4352)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3756)
!3756 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !71, line: 502, flags: DIFlagFwdDecl)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3210, file: !71, line: 504, baseType: !3758, size: 64, offset: 4416)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3210, file: !71, line: 505, baseType: !286, size: 64, offset: 4480)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3210, file: !71, line: 510, baseType: !286, size: 64, offset: 4544)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3210, file: !71, line: 511, baseType: !3762, size: 64, offset: 4608)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3764)
!3764 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !71, line: 511, flags: DIFlagFwdDecl)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3210, file: !71, line: 513, baseType: !3766, size: 64, offset: 4672)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !71, line: 288, size: 128, elements: !3768)
!3768 = !{!3769, !3770}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3767, file: !71, line: 293, baseType: !5, size: 32)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3767, file: !71, line: 294, baseType: !237, size: 64, offset: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3210, file: !71, line: 515, baseType: !223, size: 128, offset: 4736)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3210, file: !71, line: 526, baseType: !3773, offset: 4864)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3774, line: 5, elements: !295)
!3774 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3210, file: !71, line: 528, baseType: !3776, size: 64, offset: 4864)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3778, line: 14, flags: DIFlagFwdDecl)
!3778 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3210, file: !71, line: 529, baseType: !3780, size: 64, offset: 4928)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3782, line: 17, size: 192, elements: !3783)
!3782 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3783 = !{!3784, !3785, !3868}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3781, file: !3782, line: 18, baseType: !3780, size: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3781, file: !3782, line: 19, baseType: !3786, size: 64, offset: 64)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3788)
!3788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3782, line: 110, size: 1152, elements: !3789)
!3789 = !{!3790, !3794, !3798, !3804, !3810, !3814, !3818, !3823, !3827, !3828, !3832, !3836, !3840, !3851, !3852, !3853, !3854, !3864}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3788, file: !3782, line: 111, baseType: !3791, size: 64)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!3780, !3780}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3788, file: !3782, line: 112, baseType: !3795, size: 64, offset: 64)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{null, !3780}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3788, file: !3782, line: 113, baseType: !3799, size: 64, offset: 128)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!695, !3802}
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3781)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3788, file: !3782, line: 114, baseType: !3805, size: 64, offset: 192)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!3015, !3802, !3808}
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3210)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3788, file: !3782, line: 116, baseType: !3811, size: 64, offset: 256)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!695, !3802, !650}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3788, file: !3782, line: 118, baseType: !3815, size: 64, offset: 320)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!107, !3802, !650, !5, !217, !830}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3788, file: !3782, line: 123, baseType: !3819, size: 64, offset: 384)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!107, !3802, !650, !3822, !830}
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3788, file: !3782, line: 126, baseType: !3824, size: 64, offset: 448)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!650, !3802}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3788, file: !3782, line: 127, baseType: !3824, size: 64, offset: 512)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3788, file: !3782, line: 128, baseType: !3829, size: 64, offset: 576)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!3780, !3802}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3788, file: !3782, line: 130, baseType: !3833, size: 64, offset: 640)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!3780, !3802, !3780}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3788, file: !3782, line: 133, baseType: !3837, size: 64, offset: 704)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!3780, !3802, !650}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3788, file: !3782, line: 135, baseType: !3841, size: 64, offset: 768)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!107, !3802, !650, !650, !5, !5, !3844}
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3782, line: 43, size: 640, elements: !3846)
!3846 = !{!3847, !3848, !3849}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3845, file: !3782, line: 44, baseType: !3780, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3845, file: !3782, line: 45, baseType: !5, size: 32, offset: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3845, file: !3782, line: 46, baseType: !3850, size: 512, offset: 128)
!3850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 512, elements: !374)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3788, file: !3782, line: 140, baseType: !3833, size: 64, offset: 832)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3788, file: !3782, line: 143, baseType: !3829, size: 64, offset: 896)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3788, file: !3782, line: 145, baseType: !3791, size: 64, offset: 960)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3788, file: !3782, line: 146, baseType: !3855, size: 64, offset: 1024)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!107, !3802, !3858}
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3782, line: 29, size: 128, elements: !3860)
!3860 = !{!3861, !3862, !3863}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3859, file: !3782, line: 30, baseType: !5, size: 32)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3859, file: !3782, line: 31, baseType: !5, size: 32, offset: 32)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3859, file: !3782, line: 32, baseType: !3802, size: 64, offset: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3788, file: !3782, line: 148, baseType: !3865, size: 64, offset: 1088)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!107, !3802, !3209}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3781, file: !3782, line: 20, baseType: !3209, size: 64, offset: 128)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3210, file: !71, line: 534, baseType: !709, size: 32, offset: 4992)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3210, file: !71, line: 535, baseType: !239, size: 32, offset: 5024)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3210, file: !71, line: 537, baseType: !621, offset: 5056)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3210, file: !71, line: 538, baseType: !223, size: 128, offset: 5056)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3210, file: !71, line: 540, baseType: !3874, size: 64, offset: 5184)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3876, line: 54, size: 960, elements: !3877)
!3876 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3877 = !{!3878, !3879, !3880, !3881, !3882, !3883, !3884, !3888, !3892, !3893, !3894, !3895, !3899, !3903, !3904}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3875, file: !3876, line: 55, baseType: !650, size: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3875, file: !3876, line: 56, baseType: !741, size: 64, offset: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3875, file: !3876, line: 58, baseType: !3290, size: 64, offset: 128)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3875, file: !3876, line: 59, baseType: !3290, size: 64, offset: 192)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3875, file: !3876, line: 60, baseType: !3219, size: 64, offset: 256)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3875, file: !3876, line: 62, baseType: !3501, size: 64, offset: 320)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3875, file: !3876, line: 63, baseType: !3885, size: 64, offset: 384)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!676, !3209, !3508}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3875, file: !3876, line: 65, baseType: !3889, size: 64, offset: 448)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{null, !3874}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3875, file: !3876, line: 66, baseType: !3510, size: 64, offset: 512)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3875, file: !3876, line: 68, baseType: !3519, size: 64, offset: 576)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3875, file: !3876, line: 70, baseType: !3326, size: 64, offset: 640)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3875, file: !3876, line: 71, baseType: !3896, size: 64, offset: 704)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!3015, !3209}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3875, file: !3876, line: 73, baseType: !3900, size: 64, offset: 768)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{null, !3209, !3358, !3359}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3875, file: !3876, line: 75, baseType: !3514, size: 64, offset: 832)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3875, file: !3876, line: 77, baseType: !3613, size: 64, offset: 896)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3210, file: !71, line: 541, baseType: !3290, size: 64, offset: 5248)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3210, file: !71, line: 543, baseType: !3510, size: 64, offset: 5312)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3210, file: !71, line: 544, baseType: !3908, size: 64, offset: 5376)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !71, line: 45, flags: DIFlagFwdDecl)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3210, file: !71, line: 545, baseType: !3911, size: 64, offset: 5440)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !71, line: 47, flags: DIFlagFwdDecl)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3210, file: !71, line: 547, baseType: !695, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3210, file: !71, line: 548, baseType: !695, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3210, file: !71, line: 549, baseType: !695, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3210, file: !71, line: 550, baseType: !695, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !3203, file: !159, line: 83, baseType: !3918, size: 192, offset: 256)
!3918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3203, file: !159, line: 76, size: 192, elements: !3919)
!3919 = !{!3920, !3921, !3922}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !3918, file: !159, line: 78, baseType: !223, size: 128)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "final_kfree", scope: !3918, file: !159, line: 80, baseType: !217, size: 64, offset: 128)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3918, file: !159, line: 82, baseType: !621, offset: 192)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3203, file: !159, line: 86, baseType: !3924, size: 64, offset: 448)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_driver", file: !184, line: 162, size: 3328, elements: !3926)
!3926 = !{!3927, !3931, !3985, !3989, !3993, !3994, !3995, !4000, !4001, !4005, !4006, !4010, !4011, !4015, !4021, !4025, !4029, !4033, !4037, !4042, !4048, !4052, !4056, !4057, !4076, !4082, !4086, !4090, !4094, !4109, !4115, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4140, !4141, !4142, !4143, !4144, !4145, !4147, !4148, !4152, !4156, !4160, !4164}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3925, file: !184, line: 179, baseType: !3928, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!107, !3202, !237}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3925, file: !184, line: 199, baseType: !3932, size: 64, offset: 64)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!107, !3202, !3935}
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !3937, line: 159, size: 2368, elements: !3938)
!3937 = !DIFile(filename: "./include/drm/drm_file.h", directory: "/home/lizy2001/genbc/linux")
!3938 = !{!3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3952, !3953, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !3936, file: !3937, line: 169, baseType: !695, size: 8)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "stereo_allowed", scope: !3936, file: !3937, line: 176, baseType: !695, size: 8, offset: 8)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "universal_planes", scope: !3936, file: !3937, line: 184, baseType: !695, size: 8, offset: 16)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "atomic", scope: !3936, file: !3937, line: 187, baseType: !695, size: 8, offset: 24)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_allowed", scope: !3936, file: !3937, line: 195, baseType: !695, size: 8, offset: 32)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_connectors", scope: !3936, file: !3937, line: 202, baseType: !695, size: 8, offset: 40)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "was_master", scope: !3936, file: !3937, line: 213, baseType: !695, size: 8, offset: 48)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "is_master", scope: !3936, file: !3937, line: 224, baseType: !695, size: 8, offset: 56)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !3936, file: !3937, line: 236, baseType: !3196, size: 64, offset: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3936, file: !3937, line: 239, baseType: !1186, size: 64, offset: 128)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3936, file: !3937, line: 242, baseType: !3950, size: 32, offset: 192)
!3950 = !DIDerivedType(tag: DW_TAG_typedef, name: "drm_magic_t", file: !3951, line: 86, baseType: !5)
!3951 = !DIFile(filename: "./include/uapi/drm/drm.h", directory: "/home/lizy2001/genbc/linux")
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "lhead", scope: !3936, file: !3937, line: 250, baseType: !223, size: 128, offset: 256)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3936, file: !3937, line: 253, baseType: !3954, size: 64, offset: 384)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_minor", file: !3937, line: 70, size: 576, elements: !3956)
!3956 = !{!3957, !3958, !3959, !3960, !3961, !3962, !3963}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3955, file: !3937, line: 72, baseType: !107, size: 32)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3955, file: !3937, line: 73, baseType: !107, size: 32, offset: 32)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "kdev", scope: !3955, file: !3937, line: 74, baseType: !3209, size: 64, offset: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3955, file: !3937, line: 75, baseType: !3202, size: 64, offset: 128)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_root", scope: !3955, file: !3937, line: 77, baseType: !571, size: 64, offset: 192)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !3955, file: !3937, line: 79, baseType: !223, size: 128, offset: 256)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_lock", scope: !3955, file: !3937, line: 80, baseType: !839, size: 192, offset: 384)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !3936, file: !3937, line: 261, baseType: !1215, size: 192, offset: 448)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "table_lock", scope: !3936, file: !3937, line: 264, baseType: !621, offset: 640)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "syncobj_idr", scope: !3936, file: !3937, line: 267, baseType: !1215, size: 192, offset: 640)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "syncobj_table_lock", scope: !3936, file: !3937, line: 269, baseType: !621, offset: 832)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "filp", scope: !3936, file: !3937, line: 272, baseType: !909, size: 64, offset: 832)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !3936, file: !3937, line: 280, baseType: !217, size: 64, offset: 896)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "fbs", scope: !3936, file: !3937, line: 291, baseType: !223, size: 128, offset: 960)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "fbs_lock", scope: !3936, file: !3937, line: 294, baseType: !839, size: 192, offset: 1088)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "blobs", scope: !3936, file: !3937, line: 304, baseType: !223, size: 128, offset: 1280)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "event_wait", scope: !3936, file: !3937, line: 307, baseType: !984, size: 128, offset: 1408)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "pending_event_list", scope: !3936, file: !3937, line: 318, baseType: !223, size: 128, offset: 1536)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3936, file: !3937, line: 328, baseType: !223, size: 128, offset: 1664)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "event_space", scope: !3936, file: !3937, line: 337, baseType: !107, size: 32, offset: 1792)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "event_read_lock", scope: !3936, file: !3937, line: 340, baseType: !839, size: 192, offset: 1856)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "prime", scope: !3936, file: !3937, line: 347, baseType: !3979, size: 320, offset: 2048)
!3979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_prime_file_private", file: !3980, line: 45, size: 320, elements: !3981)
!3980 = !DIFile(filename: "./include/drm/drm_prime.h", directory: "/home/lizy2001/genbc/linux")
!3981 = !{!3982, !3983, !3984}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3979, file: !3980, line: 47, baseType: !839, size: 192)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "dmabufs", scope: !3979, file: !3980, line: 48, baseType: !399, size: 64, offset: 192)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !3979, file: !3980, line: 49, baseType: !399, size: 64, offset: 256)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "postclose", scope: !3925, file: !184, line: 213, baseType: !3986, size: 64, offset: 128)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{null, !3202, !3935}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "lastclose", scope: !3925, file: !184, line: 241, baseType: !3990, size: 64, offset: 192)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{null, !3202}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "unload", scope: !3925, file: !184, line: 258, baseType: !3990, size: 64, offset: 256)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3925, file: !184, line: 270, baseType: !3990, size: 64, offset: 320)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "irq_handler", scope: !3925, file: !184, line: 278, baseType: !3996, size: 64, offset: 384)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!3999, !107, !217}
!3999 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !92, line: 17, baseType: !91)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "irq_preinstall", scope: !3925, file: !184, line: 288, baseType: !3990, size: 64, offset: 448)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "irq_postinstall", scope: !3925, file: !184, line: 297, baseType: !4002, size: 64, offset: 512)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!107, !3202}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "irq_uninstall", scope: !3925, file: !184, line: 306, baseType: !3990, size: 64, offset: 576)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "master_set", scope: !3925, file: !184, line: 313, baseType: !4007, size: 64, offset: 640)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{null, !3202, !3935, !695}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "master_drop", scope: !3925, file: !184, line: 320, baseType: !3986, size: 64, offset: 704)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_init", scope: !3925, file: !184, line: 327, baseType: !4012, size: 64, offset: 768)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{null, !3954}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "gem_free_object_unlocked", scope: !3925, file: !184, line: 335, baseType: !4016, size: 64, offset: 832)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{null, !4019}
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object", file: !184, line: 36, flags: DIFlagFwdDecl)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "gem_open_object", scope: !3925, file: !184, line: 344, baseType: !4022, size: 64, offset: 896)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{!107, !4019, !3935}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "gem_close_object", scope: !3925, file: !184, line: 353, baseType: !4026, size: 64, offset: 960)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{null, !4019, !3935}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "gem_create_object", scope: !3925, file: !184, line: 361, baseType: !4030, size: 64, offset: 1024)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!4019, !3202, !830}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "prime_handle_to_fd", scope: !3925, file: !184, line: 372, baseType: !4034, size: 64, offset: 1088)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!107, !3202, !3935, !1326, !1326, !818}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "prime_fd_to_handle", scope: !3925, file: !184, line: 383, baseType: !4038, size: 64, offset: 1152)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!107, !3202, !3935, !107, !4041}
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_export", scope: !3925, file: !184, line: 391, baseType: !4043, size: 64, offset: 1216)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!4046, !4019, !107}
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf", file: !184, line: 391, flags: DIFlagFwdDecl)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_import", scope: !3925, file: !184, line: 400, baseType: !4049, size: 64, offset: 1280)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!4019, !3202, !4046}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_pin", scope: !3925, file: !184, line: 408, baseType: !4053, size: 64, offset: 1344)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!107, !4019}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_unpin", scope: !3925, file: !184, line: 415, baseType: !4016, size: 64, offset: 1408)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_get_sg_table", scope: !3925, file: !184, line: 423, baseType: !4058, size: 64, offset: 1472)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!4061, !4019}
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !4063, line: 42, size: 128, elements: !4064)
!4063 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/lizy2001/genbc/linux")
!4064 = !{!4065, !4074, !4075}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !4062, file: !4063, line: 43, baseType: !4066, size: 64)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !4063, line: 11, size: 256, elements: !4068)
!4068 = !{!4069, !4070, !4071, !4072, !4073}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4067, file: !4063, line: 12, baseType: !237, size: 64)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4067, file: !4063, line: 13, baseType: !5, size: 32, offset: 64)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4067, file: !4063, line: 14, baseType: !5, size: 32, offset: 96)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4067, file: !4063, line: 15, baseType: !2164, size: 64, offset: 128)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4067, file: !4063, line: 17, baseType: !5, size: 32, offset: 192)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !4062, file: !4063, line: 44, baseType: !5, size: 32, offset: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "orig_nents", scope: !4062, file: !4063, line: 45, baseType: !5, size: 32, offset: 96)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_import_sg_table", scope: !3925, file: !184, line: 431, baseType: !4077, size: 64, offset: 1536)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!4019, !3202, !4080, !4061}
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_attachment", file: !184, line: 39, flags: DIFlagFwdDecl)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_vmap", scope: !3925, file: !184, line: 441, baseType: !4083, size: 64, offset: 1600)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!217, !4019}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_vunmap", scope: !3925, file: !184, line: 449, baseType: !4087, size: 64, offset: 1664)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{null, !4019, !217}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_mmap", scope: !3925, file: !184, line: 460, baseType: !4091, size: 64, offset: 1728)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!107, !4019, !444}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "dumb_create", scope: !3925, file: !184, line: 484, baseType: !4095, size: 64, offset: 1792)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!107, !3935, !3202, !4098}
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_create_dumb", file: !4100, line: 805, size: 256, elements: !4101)
!4100 = !DIFile(filename: "./include/uapi/drm/drm_mode.h", directory: "/home/lizy2001/genbc/linux")
!4101 = !{!4102, !4103, !4104, !4105, !4106, !4107, !4108}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4099, file: !4100, line: 806, baseType: !241, size: 32)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4099, file: !4100, line: 807, baseType: !241, size: 32, offset: 32)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !4099, file: !4100, line: 808, baseType: !241, size: 32, offset: 64)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4099, file: !4100, line: 809, baseType: !241, size: 32, offset: 96)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !4099, file: !4100, line: 811, baseType: !241, size: 32, offset: 128)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "pitch", scope: !4099, file: !4100, line: 812, baseType: !241, size: 32, offset: 160)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4099, file: !4100, line: 813, baseType: !287, size: 64, offset: 192)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "dumb_map_offset", scope: !3925, file: !184, line: 502, baseType: !4110, size: 64, offset: 1856)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!107, !3935, !3202, !1326, !4113}
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !216, line: 107, baseType: !286)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "dumb_destroy", scope: !3925, file: !184, line: 521, baseType: !4116, size: 64, offset: 1920)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!107, !3935, !3202, !1326}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "gem_vm_ops", scope: !3925, file: !184, line: 531, baseType: !473, size: 64, offset: 1984)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !3925, file: !184, line: 534, baseType: !107, size: 32, offset: 2048)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3925, file: !184, line: 536, baseType: !107, size: 32, offset: 2080)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "patchlevel", scope: !3925, file: !184, line: 538, baseType: !107, size: 32, offset: 2112)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3925, file: !184, line: 540, baseType: !676, size: 64, offset: 2176)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3925, file: !184, line: 542, baseType: !676, size: 64, offset: 2240)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !3925, file: !184, line: 544, baseType: !676, size: 64, offset: 2304)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !3925, file: !184, line: 552, baseType: !239, size: 32, offset: 2368)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "ioctls", scope: !3925, file: !184, line: 562, baseType: !4128, size: 64, offset: 2432)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4130)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_ioctl_desc", file: !98, line: 144, size: 192, elements: !4131)
!4131 = !{!4132, !4133, !4134, !4139}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !4130, file: !98, line: 145, baseType: !5, size: 32)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4130, file: !98, line: 146, baseType: !97, size: 32, offset: 32)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4130, file: !98, line: 147, baseType: !4135, size: 64, offset: 64)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_typedef, name: "drm_ioctl_t", file: !98, line: 54, baseType: !4137)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!107, !3202, !217, !3935}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4130, file: !98, line: 148, baseType: !650, size: 64, offset: 128)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "num_ioctls", scope: !3925, file: !184, line: 564, baseType: !107, size: 32, offset: 2496)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !3925, file: !184, line: 573, baseType: !900, size: 64, offset: 2560)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_dev_list", scope: !3925, file: !184, line: 579, baseType: !223, size: 128, offset: 2624)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "firstopen", scope: !3925, file: !184, line: 580, baseType: !4002, size: 64, offset: 2752)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "preclose", scope: !3925, file: !184, line: 581, baseType: !3986, size: 64, offset: 2816)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ioctl", scope: !3925, file: !184, line: 582, baseType: !4146, size: 64, offset: 2880)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "dma_quiescent", scope: !3925, file: !184, line: 583, baseType: !4002, size: 64, offset: 2944)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "context_dtor", scope: !3925, file: !184, line: 584, baseType: !4149, size: 64, offset: 3008)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!107, !3202, !107}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_counter", scope: !3925, file: !184, line: 585, baseType: !4153, size: 64, offset: 3072)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DISubroutineType(types: !4155)
!4155 = !{!239, !3202, !5}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "enable_vblank", scope: !3925, file: !184, line: 586, baseType: !4157, size: 64, offset: 3136)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{!107, !3202, !5}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "disable_vblank", scope: !3925, file: !184, line: 587, baseType: !4161, size: 64, offset: 3200)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{null, !3202, !5}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "dev_priv_size", scope: !3925, file: !184, line: 588, baseType: !107, size: 32, offset: 3264)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private", scope: !3203, file: !159, line: 98, baseType: !217, size: 64, offset: 512)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !3203, file: !159, line: 101, baseType: !3954, size: 64, offset: 576)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !3203, file: !159, line: 104, baseType: !3954, size: 64, offset: 640)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !3203, file: !159, line: 111, baseType: !695, size: 8, offset: 704)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !3203, file: !159, line: 119, baseType: !3196, size: 64, offset: 768)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !3203, file: !159, line: 129, baseType: !239, size: 32, offset: 832)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "unplugged", scope: !3203, file: !159, line: 137, baseType: !695, size: 8, offset: 864)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "anon_inode", scope: !3203, file: !159, line: 140, baseType: !540, size: 64, offset: 896)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !3203, file: !159, line: 143, baseType: !676, size: 64, offset: 960)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "struct_mutex", scope: !3203, file: !159, line: 153, baseType: !839, size: 192, offset: 1024)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "master_mutex", scope: !3203, file: !159, line: 160, baseType: !839, size: 192, offset: 1216)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !3203, file: !159, line: 168, baseType: !252, size: 32, offset: 1408)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_mutex", scope: !3203, file: !159, line: 171, baseType: !839, size: 192, offset: 1472)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !3203, file: !159, line: 177, baseType: !223, size: 128, offset: 1664)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_internal", scope: !3203, file: !159, line: 185, baseType: !223, size: 128, offset: 1792)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist_mutex", scope: !3203, file: !159, line: 192, baseType: !839, size: 192, offset: 1920)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist", scope: !3203, file: !159, line: 199, baseType: !223, size: 128, offset: 2112)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enabled", scope: !3203, file: !159, line: 208, baseType: !695, size: 8, offset: 2240)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3203, file: !159, line: 213, baseType: !107, size: 32, offset: 2272)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_disable_immediate", scope: !3203, file: !159, line: 228, baseType: !695, size: 8, offset: 2304)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "vblank", scope: !3203, file: !159, line: 238, baseType: !4186, size: 64, offset: 2368)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vblank_crtc", file: !4188, line: 91, size: 2304, elements: !4189)
!4188 = !DIFile(filename: "./include/drm/drm_vblank.h", directory: "/home/lizy2001/genbc/linux")
!4189 = !{!4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4240, !4241, !4263, !4264}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4187, file: !4188, line: 95, baseType: !3202, size: 64)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !4187, file: !4188, line: 99, baseType: !984, size: 128, offset: 64)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "disable_timer", scope: !4187, file: !4188, line: 106, baseType: !3661, size: 320, offset: 192)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "seqlock", scope: !4187, file: !4188, line: 111, baseType: !2710, size: 32, offset: 512)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4187, file: !4188, line: 127, baseType: !845, size: 64, offset: 576)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4187, file: !4188, line: 131, baseType: !336, size: 64, offset: 640)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4187, file: !4188, line: 138, baseType: !252, size: 32, offset: 704)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !4187, file: !4188, line: 142, baseType: !239, size: 32, offset: 736)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !4187, file: !4188, line: 162, baseType: !239, size: 32, offset: 768)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "inmodeset", scope: !4187, file: !4188, line: 171, baseType: !5, size: 32, offset: 800)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !4187, file: !4188, line: 176, baseType: !5, size: 32, offset: 832)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "framedur_ns", scope: !4187, file: !4188, line: 182, baseType: !107, size: 32, offset: 864)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "linedur_ns", scope: !4187, file: !4188, line: 188, baseType: !107, size: 32, offset: 896)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "hwmode", scope: !4187, file: !4188, line: 199, baseType: !4204, size: 960, offset: 960)
!4204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_mode", file: !106, line: 224, size: 960, elements: !4205)
!4205 = !{!4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !4204, file: !106, line: 230, baseType: !107, size: 32)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "hdisplay", scope: !4204, file: !106, line: 231, baseType: !937, size: 16, offset: 32)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_start", scope: !4204, file: !106, line: 232, baseType: !937, size: 16, offset: 48)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_end", scope: !4204, file: !106, line: 233, baseType: !937, size: 16, offset: 64)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "htotal", scope: !4204, file: !106, line: 234, baseType: !937, size: 16, offset: 80)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "hskew", scope: !4204, file: !106, line: 235, baseType: !937, size: 16, offset: 96)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "vdisplay", scope: !4204, file: !106, line: 236, baseType: !937, size: 16, offset: 112)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_start", scope: !4204, file: !106, line: 237, baseType: !937, size: 16, offset: 128)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_end", scope: !4204, file: !106, line: 238, baseType: !937, size: 16, offset: 144)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "vtotal", scope: !4204, file: !106, line: 239, baseType: !937, size: 16, offset: 160)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "vscan", scope: !4204, file: !106, line: 240, baseType: !937, size: 16, offset: 176)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4204, file: !106, line: 275, baseType: !239, size: 32, offset: 192)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_clock", scope: !4204, file: !106, line: 292, baseType: !107, size: 32, offset: 224)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hdisplay", scope: !4204, file: !106, line: 293, baseType: !937, size: 16, offset: 256)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_start", scope: !4204, file: !106, line: 294, baseType: !937, size: 16, offset: 272)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_end", scope: !4204, file: !106, line: 295, baseType: !937, size: 16, offset: 288)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_start", scope: !4204, file: !106, line: 296, baseType: !937, size: 16, offset: 304)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_end", scope: !4204, file: !106, line: 297, baseType: !937, size: 16, offset: 320)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_htotal", scope: !4204, file: !106, line: 298, baseType: !937, size: 16, offset: 336)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hskew", scope: !4204, file: !106, line: 299, baseType: !937, size: 16, offset: 352)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vdisplay", scope: !4204, file: !106, line: 300, baseType: !937, size: 16, offset: 368)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_start", scope: !4204, file: !106, line: 301, baseType: !937, size: 16, offset: 384)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_end", scope: !4204, file: !106, line: 302, baseType: !937, size: 16, offset: 400)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_start", scope: !4204, file: !106, line: 303, baseType: !937, size: 16, offset: 416)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_end", scope: !4204, file: !106, line: 304, baseType: !937, size: 16, offset: 432)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vtotal", scope: !4204, file: !106, line: 305, baseType: !937, size: 16, offset: 448)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !4204, file: !106, line: 313, baseType: !937, size: 16, offset: 464)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !4204, file: !106, line: 321, baseType: !937, size: 16, offset: 480)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4204, file: !106, line: 350, baseType: !409, size: 8, offset: 496)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "expose_to_userspace", scope: !4204, file: !106, line: 361, baseType: !695, size: 8, offset: 504)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4204, file: !106, line: 368, baseType: !223, size: 128, offset: 512)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4204, file: !106, line: 375, baseType: !1767, size: 256, offset: 640)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4204, file: !106, line: 383, baseType: !105, size: 32, offset: 896)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !4204, file: !106, line: 390, baseType: !149, size: 32, offset: 928)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4187, file: !4188, line: 207, baseType: !695, size: 8, offset: 1920)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !4187, file: !4188, line: 212, baseType: !4242, size: 64, offset: 1984)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_worker", file: !4244, line: 89, size: 448, elements: !4245)
!4244 = !DIFile(filename: "./include/linux/kthread.h", directory: "/home/lizy2001/genbc/linux")
!4245 = !{!4246, !4247, !4248, !4249, !4250, !4251}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4243, file: !4244, line: 90, baseType: !5, size: 32)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4243, file: !4244, line: 91, baseType: !353, offset: 32)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !4243, file: !4244, line: 92, baseType: !223, size: 128, offset: 64)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_work_list", scope: !4243, file: !4244, line: 93, baseType: !223, size: 128, offset: 192)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4243, file: !4244, line: 94, baseType: !228, size: 64, offset: 320)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "current_work", scope: !4243, file: !4244, line: 95, baseType: !4252, size: 64, offset: 384)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_work", file: !4244, line: 98, size: 320, elements: !4254)
!4254 = !{!4255, !4256, !4261, !4262}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4253, file: !4244, line: 99, baseType: !223, size: 128)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4253, file: !4244, line: 100, baseType: !4257, size: 64, offset: 128)
!4257 = !DIDerivedType(tag: DW_TAG_typedef, name: "kthread_work_func_t", file: !4244, line: 82, baseType: !4258)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{null, !4252}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !4253, file: !4244, line: 101, baseType: !4242, size: 64, offset: 192)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "canceling", scope: !4253, file: !4244, line: 103, baseType: !107, size: 32, offset: 256)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !4187, file: !4188, line: 218, baseType: !223, size: 128, offset: 2048)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "work_wait_queue", scope: !4187, file: !4188, line: 225, baseType: !984, size: 128, offset: 2176)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_time_lock", scope: !3203, file: !159, line: 245, baseType: !621, offset: 2432)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "vbl_lock", scope: !3203, file: !159, line: 250, baseType: !621, offset: 2432)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !3203, file: !159, line: 273, baseType: !239, size: 32, offset: 2432)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_event_list", scope: !3203, file: !159, line: 276, baseType: !223, size: 128, offset: 2496)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !3203, file: !159, line: 284, baseType: !621, offset: 2624)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "agp", scope: !3203, file: !159, line: 287, baseType: !4271, size: 64, offset: 2624)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_agp_head", file: !159, line: 287, flags: DIFlagFwdDecl)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "pdev", scope: !3203, file: !159, line: 290, baseType: !4274, size: 64, offset: 2688)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !159, line: 25, flags: DIFlagFwdDecl)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtcs", scope: !3203, file: !159, line: 297, baseType: !5, size: 32, offset: 2752)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "mode_config", scope: !3203, file: !159, line: 300, baseType: !4278, size: 8384, offset: 2816)
!4278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config", file: !4279, line: 358, size: 8384, elements: !4280)
!4279 = !DIFile(filename: "./include/drm/drm_mode_config.h", directory: "/home/lizy2001/genbc/linux")
!4280 = !{!4281, !4282, !4301, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4323, !4324, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4400, !4402, !4403, !4404, !4405, !4412, !4413, !4414, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4278, file: !4279, line: 369, baseType: !839, size: 192)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "connection_mutex", scope: !4278, file: !4279, line: 379, baseType: !4283, size: 384, offset: 192)
!4283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_lock", file: !4284, line: 76, size: 384, elements: !4285)
!4284 = !DIFile(filename: "./include/drm/drm_modeset_lock.h", directory: "/home/lizy2001/genbc/linux")
!4285 = !{!4286, !4300}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4283, file: !4284, line: 80, baseType: !4287, size: 256)
!4287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !840, line: 71, size: 256, elements: !4288)
!4288 = !{!4289, !4290}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4287, file: !840, line: 72, baseType: !839, size: 192)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4287, file: !840, line: 73, baseType: !4291, size: 64, offset: 192)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !4293, line: 31, size: 192, elements: !4294)
!4293 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/lizy2001/genbc/linux")
!4294 = !{!4295, !4296, !4297, !4298, !4299}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4292, file: !4293, line: 32, baseType: !228, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !4292, file: !4293, line: 33, baseType: !237, size: 64, offset: 64)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !4292, file: !4293, line: 34, baseType: !5, size: 32, offset: 128)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !4292, file: !4293, line: 35, baseType: !304, size: 16, offset: 160)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !4292, file: !4293, line: 36, baseType: !304, size: 16, offset: 176)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4283, file: !4284, line: 86, baseType: !223, size: 128, offset: 256)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !4278, file: !4279, line: 389, baseType: !4302, size: 64, offset: 576)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_acquire_ctx", file: !4284, line: 43, size: 448, elements: !4304)
!4304 = !{!4305, !4306, !4308, !4309, !4310}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !4303, file: !4284, line: 45, baseType: !4292, size: 192)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !4303, file: !4284, line: 52, baseType: !4307, size: 64, offset: 192)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !4303, file: !4284, line: 57, baseType: !223, size: 128, offset: 256)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_only", scope: !4303, file: !4284, line: 62, baseType: !695, size: 8, offset: 384)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !4303, file: !4284, line: 65, baseType: !695, size: 8, offset: 392)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "idr_mutex", scope: !4278, file: !4279, line: 397, baseType: !839, size: 192, offset: 640)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !4278, file: !4279, line: 405, baseType: !1215, size: 192, offset: 832)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "tile_idr", scope: !4278, file: !4279, line: 413, baseType: !1215, size: 192, offset: 1024)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "fb_lock", scope: !4278, file: !4279, line: 416, baseType: !839, size: 192, offset: 1216)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "num_fb", scope: !4278, file: !4279, line: 418, baseType: !107, size: 32, offset: 1408)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "fb_list", scope: !4278, file: !4279, line: 420, baseType: !223, size: 128, offset: 1472)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list_lock", scope: !4278, file: !4279, line: 426, baseType: !621, offset: 1600)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !4278, file: !4279, line: 431, baseType: !107, size: 32, offset: 1600)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "connector_ida", scope: !4278, file: !4279, line: 435, baseType: !4320, size: 128, offset: 1664)
!4320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1216, line: 244, size: 128, elements: !4321)
!4321 = !{!4322}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4320, file: !1216, line: 245, baseType: !1219, size: 128)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list", scope: !4278, file: !4279, line: 443, baseType: !223, size: 128, offset: 1792)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_list", scope: !4278, file: !4279, line: 453, baseType: !4325, size: 64, offset: 1920)
!4325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !884, line: 54, size: 64, elements: !4326)
!4326 = !{!4327}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4325, file: !884, line: 55, baseType: !887, size: 64)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_work", scope: !4278, file: !4279, line: 457, baseType: !1826, size: 256, offset: 1984)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "num_encoder", scope: !4278, file: !4279, line: 465, baseType: !107, size: 32, offset: 2240)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_list", scope: !4278, file: !4279, line: 473, baseType: !223, size: 128, offset: 2304)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "num_total_plane", scope: !4278, file: !4279, line: 482, baseType: !107, size: 32, offset: 2432)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "plane_list", scope: !4278, file: !4279, line: 489, baseType: !223, size: 128, offset: 2496)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtc", scope: !4278, file: !4279, line: 497, baseType: !107, size: 32, offset: 2624)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_list", scope: !4278, file: !4279, line: 504, baseType: !223, size: 128, offset: 2688)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "property_list", scope: !4278, file: !4279, line: 513, baseType: !223, size: 128, offset: 2816)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "privobj_list", scope: !4278, file: !4279, line: 522, baseType: !223, size: 128, offset: 2944)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !4278, file: !4279, line: 524, baseType: !107, size: 32, offset: 3072)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !4278, file: !4279, line: 524, baseType: !107, size: 32, offset: 3104)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !4278, file: !4279, line: 525, baseType: !107, size: 32, offset: 3136)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !4278, file: !4279, line: 525, baseType: !107, size: 32, offset: 3168)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4278, file: !4279, line: 526, baseType: !4342, size: 64, offset: 3200)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4344)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_funcs", file: !4279, line: 47, size: 576, elements: !4345)
!4345 = !{!4346, !4367, !4374, !4375, !4381, !4387, !4391, !4395, !4399}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "fb_create", scope: !4344, file: !4279, line: 77, baseType: !4347, size: 64)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{!4350, !3202, !3935, !4352}
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer", file: !4279, line: 77, flags: DIFlagFwdDecl)
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4354)
!4354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_fb_cmd2", file: !4100, line: 494, size: 832, elements: !4355)
!4355 = !{!4356, !4357, !4358, !4359, !4360, !4361, !4363, !4364, !4365}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "fb_id", scope: !4354, file: !4100, line: 495, baseType: !241, size: 32)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4354, file: !4100, line: 496, baseType: !241, size: 32, offset: 32)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4354, file: !4100, line: 497, baseType: !241, size: 32, offset: 64)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !4354, file: !4100, line: 498, baseType: !241, size: 32, offset: 96)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4354, file: !4100, line: 499, baseType: !241, size: 32, offset: 128)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !4354, file: !4100, line: 525, baseType: !4362, size: 128, offset: 160)
!4362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 128, elements: !1194)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !4354, file: !4100, line: 526, baseType: !4362, size: 128, offset: 288)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !4354, file: !4100, line: 527, baseType: !4362, size: 128, offset: 416)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !4354, file: !4100, line: 528, baseType: !4366, size: 256, offset: 576)
!4366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 256, elements: !1194)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "get_format_info", scope: !4344, file: !4279, line: 92, baseType: !4368, size: 64, offset: 64)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = !DISubroutineType(types: !4370)
!4370 = !{!4371, !4352}
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4373)
!4373 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_format_info", file: !4279, line: 38, flags: DIFlagFwdDecl)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_changed", scope: !4344, file: !4279, line: 109, baseType: !3990, size: 64, offset: 128)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !4344, file: !4279, line: 119, baseType: !4376, size: 64, offset: 192)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{!105, !3202, !4379}
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4204)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !4344, file: !4279, line: 196, baseType: !4382, size: 64, offset: 256)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{!107, !3202, !4385}
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_atomic_state", file: !4279, line: 36, flags: DIFlagFwdDecl)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !4344, file: !4279, line: 278, baseType: !4388, size: 64, offset: 320)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{!107, !3202, !4385, !695}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_alloc", scope: !4344, file: !4279, line: 297, baseType: !4392, size: 64, offset: 384)
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = !DISubroutineType(types: !4394)
!4394 = !{!4385, !3202}
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_clear", scope: !4344, file: !4279, line: 318, baseType: !4396, size: 64, offset: 448)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = !DISubroutineType(types: !4398)
!4398 = !{null, !4385}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_free", scope: !4344, file: !4279, line: 333, baseType: !4396, size: 64, offset: 512)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "fb_base", scope: !4278, file: !4279, line: 527, baseType: !4401, size: 64, offset: 3264)
!4401 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !216, line: 158, baseType: !3013)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "poll_enabled", scope: !4278, file: !4279, line: 530, baseType: !695, size: 8, offset: 3328)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "poll_running", scope: !4278, file: !4279, line: 531, baseType: !695, size: 8, offset: 3336)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_event", scope: !4278, file: !4279, line: 532, baseType: !695, size: 8, offset: 3344)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_work", scope: !4278, file: !4279, line: 533, baseType: !4406, size: 704, offset: 3392)
!4406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1805, line: 115, size: 704, elements: !4407)
!4407 = !{!4408, !4409, !4410, !4411}
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4406, file: !1805, line: 116, baseType: !1826, size: 256)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4406, file: !1805, line: 117, baseType: !3661, size: 320, offset: 256)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4406, file: !1805, line: 120, baseType: !1803, size: 64, offset: 576)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4406, file: !1805, line: 121, baseType: !107, size: 32, offset: 640)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "blob_lock", scope: !4278, file: !4279, line: 541, baseType: !839, size: 192, offset: 4096)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "property_blob_list", scope: !4278, file: !4279, line: 549, baseType: !223, size: 128, offset: 4288)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "edid_property", scope: !4278, file: !4279, line: 557, baseType: !4415, size: 64, offset: 4416)
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4416, size: 64)
!4416 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property", file: !4279, line: 557, flags: DIFlagFwdDecl)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "dpms_property", scope: !4278, file: !4279, line: 562, baseType: !4415, size: 64, offset: 4480)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "path_property", scope: !4278, file: !4279, line: 567, baseType: !4415, size: 64, offset: 4544)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "tile_property", scope: !4278, file: !4279, line: 573, baseType: !4415, size: 64, offset: 4608)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "link_status_property", scope: !4278, file: !4279, line: 578, baseType: !4415, size: 64, offset: 4672)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "plane_type_property", scope: !4278, file: !4279, line: 583, baseType: !4415, size: 64, offset: 4736)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_x", scope: !4278, file: !4279, line: 588, baseType: !4415, size: 64, offset: 4800)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_y", scope: !4278, file: !4279, line: 593, baseType: !4415, size: 64, offset: 4864)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_w", scope: !4278, file: !4279, line: 598, baseType: !4415, size: 64, offset: 4928)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_h", scope: !4278, file: !4279, line: 603, baseType: !4415, size: 64, offset: 4992)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_x", scope: !4278, file: !4279, line: 608, baseType: !4415, size: 64, offset: 5056)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_y", scope: !4278, file: !4279, line: 613, baseType: !4415, size: 64, offset: 5120)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_w", scope: !4278, file: !4279, line: 618, baseType: !4415, size: 64, offset: 5184)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_h", scope: !4278, file: !4279, line: 623, baseType: !4415, size: 64, offset: 5248)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_id", scope: !4278, file: !4279, line: 628, baseType: !4415, size: 64, offset: 5312)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "prop_in_fence_fd", scope: !4278, file: !4279, line: 633, baseType: !4415, size: 64, offset: 5376)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "prop_out_fence_ptr", scope: !4278, file: !4279, line: 639, baseType: !4415, size: 64, offset: 5440)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_id", scope: !4278, file: !4279, line: 644, baseType: !4415, size: 64, offset: 5504)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_damage_clips", scope: !4278, file: !4279, line: 653, baseType: !4415, size: 64, offset: 5568)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "prop_active", scope: !4278, file: !4279, line: 659, baseType: !4415, size: 64, offset: 5632)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "prop_mode_id", scope: !4278, file: !4279, line: 665, baseType: !4415, size: 64, offset: 5696)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "prop_vrr_enabled", scope: !4278, file: !4279, line: 670, baseType: !4415, size: 64, offset: 5760)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_subconnector_property", scope: !4278, file: !4279, line: 676, baseType: !4415, size: 64, offset: 5824)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_select_subconnector_property", scope: !4278, file: !4279, line: 681, baseType: !4415, size: 64, offset: 5888)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "dp_subconnector_property", scope: !4278, file: !4279, line: 687, baseType: !4415, size: 64, offset: 5952)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "tv_subconnector_property", scope: !4278, file: !4279, line: 693, baseType: !4415, size: 64, offset: 6016)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "tv_select_subconnector_property", scope: !4278, file: !4279, line: 698, baseType: !4415, size: 64, offset: 6080)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_property", scope: !4278, file: !4279, line: 703, baseType: !4415, size: 64, offset: 6144)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "tv_left_margin_property", scope: !4278, file: !4279, line: 708, baseType: !4415, size: 64, offset: 6208)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "tv_right_margin_property", scope: !4278, file: !4279, line: 713, baseType: !4415, size: 64, offset: 6272)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "tv_top_margin_property", scope: !4278, file: !4279, line: 718, baseType: !4415, size: 64, offset: 6336)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "tv_bottom_margin_property", scope: !4278, file: !4279, line: 723, baseType: !4415, size: 64, offset: 6400)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "tv_brightness_property", scope: !4278, file: !4279, line: 728, baseType: !4415, size: 64, offset: 6464)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "tv_contrast_property", scope: !4278, file: !4279, line: 733, baseType: !4415, size: 64, offset: 6528)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "tv_flicker_reduction_property", scope: !4278, file: !4279, line: 738, baseType: !4415, size: 64, offset: 6592)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "tv_overscan_property", scope: !4278, file: !4279, line: 743, baseType: !4415, size: 64, offset: 6656)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "tv_saturation_property", scope: !4278, file: !4279, line: 748, baseType: !4415, size: 64, offset: 6720)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "tv_hue_property", scope: !4278, file: !4279, line: 752, baseType: !4415, size: 64, offset: 6784)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !4278, file: !4279, line: 758, baseType: !4415, size: 64, offset: 6848)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_property", scope: !4278, file: !4279, line: 763, baseType: !4415, size: 64, offset: 6912)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_property", scope: !4278, file: !4279, line: 768, baseType: !4415, size: 64, offset: 6976)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_property", scope: !4278, file: !4279, line: 773, baseType: !4415, size: 64, offset: 7040)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_size_property", scope: !4278, file: !4279, line: 778, baseType: !4415, size: 64, offset: 7104)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "ctm_property", scope: !4278, file: !4279, line: 784, baseType: !4415, size: 64, offset: 7168)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_property", scope: !4278, file: !4279, line: 790, baseType: !4415, size: 64, offset: 7232)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_size_property", scope: !4278, file: !4279, line: 795, baseType: !4415, size: 64, offset: 7296)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_x_property", scope: !4278, file: !4279, line: 801, baseType: !4415, size: 64, offset: 7360)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_y_property", scope: !4278, file: !4279, line: 806, baseType: !4415, size: 64, offset: 7424)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop_property", scope: !4278, file: !4279, line: 813, baseType: !4415, size: 64, offset: 7488)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation_property", scope: !4278, file: !4279, line: 820, baseType: !4415, size: 64, offset: 7552)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_fb_id_property", scope: !4278, file: !4279, line: 827, baseType: !4415, size: 64, offset: 7616)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_pixel_formats_property", scope: !4278, file: !4279, line: 835, baseType: !4415, size: 64, offset: 7680)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_out_fence_ptr_property", scope: !4278, file: !4279, line: 843, baseType: !4415, size: 64, offset: 7744)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata_property", scope: !4278, file: !4279, line: 850, baseType: !4415, size: 64, offset: 7808)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection_property", scope: !4278, file: !4279, line: 856, baseType: !4415, size: 64, offset: 7872)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type_property", scope: !4278, file: !4279, line: 862, baseType: !4415, size: 64, offset: 7936)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_depth", scope: !4278, file: !4279, line: 865, baseType: !1326, size: 32, offset: 8000)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow", scope: !4278, file: !4279, line: 865, baseType: !1326, size: 32, offset: 8032)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow_fbdev", scope: !4278, file: !4279, line: 872, baseType: !695, size: 8, offset: 8064)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "fbdev_use_iomem", scope: !4278, file: !4279, line: 884, baseType: !695, size: 8, offset: 8072)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_xbgr_30bpp", scope: !4278, file: !4279, line: 892, baseType: !695, size: 8, offset: 8080)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_host_byte_order", scope: !4278, file: !4279, line: 906, baseType: !695, size: 8, offset: 8088)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "async_page_flip", scope: !4278, file: !4279, line: 912, baseType: !695, size: 8, offset: 8096)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "allow_fb_modifiers", scope: !4278, file: !4279, line: 919, baseType: !695, size: 8, offset: 8104)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "normalize_zpos", scope: !4278, file: !4279, line: 927, baseType: !695, size: 8, offset: 8112)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers_property", scope: !4278, file: !4279, line: 933, baseType: !4415, size: 64, offset: 8128)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_width", scope: !4278, file: !4279, line: 936, baseType: !1326, size: 32, offset: 8192)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_height", scope: !4278, file: !4279, line: 936, baseType: !1326, size: 32, offset: 8224)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_state", scope: !4278, file: !4279, line: 945, baseType: !4385, size: 64, offset: 8256)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4278, file: !4279, line: 947, baseType: !4486, size: 64, offset: 8320)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4488)
!4488 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_helper_funcs", file: !4279, line: 947, flags: DIFlagFwdDecl)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_lock", scope: !3203, file: !159, line: 303, baseType: !839, size: 192, offset: 11200)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_idr", scope: !3203, file: !159, line: 306, baseType: !1215, size: 192, offset: 11392)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "vma_offset_manager", scope: !3203, file: !159, line: 309, baseType: !4492, size: 64, offset: 11584)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !159, line: 19, flags: DIFlagFwdDecl)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "vram_mm", scope: !3203, file: !159, line: 312, baseType: !4495, size: 64, offset: 11648)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vram_mm", file: !159, line: 20, flags: DIFlagFwdDecl)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "switch_power_state", scope: !3203, file: !159, line: 322, baseType: !158, size: 32, offset: 11712)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "fb_helper", scope: !3203, file: !159, line: 330, baseType: !4499, size: 64, offset: 11776)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_fb_helper", file: !159, line: 21, flags: DIFlagFwdDecl)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !3197, file: !3198, line: 78, baseType: !676, size: 64, offset: 128)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "unique_len", scope: !3197, file: !3198, line: 83, baseType: !107, size: 32, offset: 192)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "magic_map", scope: !3197, file: !3198, line: 88, baseType: !1215, size: 192, offset: 256)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !3197, file: !3198, line: 89, baseType: !217, size: 64, offset: 448)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "lessor", scope: !3197, file: !3198, line: 97, baseType: !3196, size: 64, offset: 512)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_id", scope: !3197, file: !3198, line: 98, baseType: !107, size: 32, offset: 576)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_list", scope: !3197, file: !3198, line: 99, baseType: !223, size: 128, offset: 640)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "lessees", scope: !3197, file: !3198, line: 100, baseType: !223, size: 128, offset: 768)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "leases", scope: !3197, file: !3198, line: 101, baseType: !1215, size: 192, offset: 896)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_idr", scope: !3197, file: !3198, line: 102, baseType: !1215, size: 192, offset: 1088)
!4511 = !{i32 7, !"Dwarf Version", i32 4}
!4512 = !{i32 2, !"Debug Info Version", i32 3}
!4513 = !{i32 1, !"wchar_size", i32 2}
!4514 = !{i32 1, !"Code Model", i32 2}
!4515 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4516 = distinct !DISubprogram(name: "drm_getmagic", scope: !1, file: !1, line: 64, type: !4137, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !295)
!4517 = !DILocalVariable(name: "dev", arg: 1, scope: !4516, file: !1, line: 64, type: !3202)
!4518 = !DILocation(line: 64, column: 37, scope: !4516)
!4519 = !DILocalVariable(name: "data", arg: 2, scope: !4516, file: !1, line: 64, type: !217)
!4520 = !DILocation(line: 64, column: 48, scope: !4516)
!4521 = !DILocalVariable(name: "file_priv", arg: 3, scope: !4516, file: !1, line: 64, type: !3935)
!4522 = !DILocation(line: 64, column: 71, scope: !4516)
!4523 = !DILocalVariable(name: "auth", scope: !4516, file: !1, line: 66, type: !4524)
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_auth", file: !3951, line: 462, size: 32, elements: !4526)
!4526 = !{!4527}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4525, file: !3951, line: 463, baseType: !3950, size: 32)
!4528 = !DILocation(line: 66, column: 19, scope: !4516)
!4529 = !DILocation(line: 66, column: 26, scope: !4516)
!4530 = !DILocalVariable(name: "ret", scope: !4516, file: !1, line: 67, type: !107)
!4531 = !DILocation(line: 67, column: 6, scope: !4516)
!4532 = !DILocation(line: 69, column: 14, scope: !4516)
!4533 = !DILocation(line: 69, column: 19, scope: !4516)
!4534 = !DILocation(line: 69, column: 2, scope: !4516)
!4535 = !DILocation(line: 70, column: 7, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4516, file: !1, line: 70, column: 6)
!4537 = !DILocation(line: 70, column: 18, scope: !4536)
!4538 = !DILocation(line: 70, column: 6, scope: !4516)
!4539 = !DILocation(line: 71, column: 20, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4536, file: !1, line: 70, column: 25)
!4541 = !DILocation(line: 71, column: 31, scope: !4540)
!4542 = !DILocation(line: 71, column: 39, scope: !4540)
!4543 = !DILocation(line: 71, column: 50, scope: !4540)
!4544 = !DILocation(line: 71, column: 9, scope: !4540)
!4545 = !DILocation(line: 71, column: 7, scope: !4540)
!4546 = !DILocation(line: 73, column: 7, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4540, file: !1, line: 73, column: 7)
!4548 = !DILocation(line: 73, column: 11, scope: !4547)
!4549 = !DILocation(line: 73, column: 7, scope: !4540)
!4550 = !DILocation(line: 74, column: 23, scope: !4547)
!4551 = !DILocation(line: 74, column: 4, scope: !4547)
!4552 = !DILocation(line: 74, column: 15, scope: !4547)
!4553 = !DILocation(line: 74, column: 21, scope: !4547)
!4554 = !DILocation(line: 75, column: 2, scope: !4540)
!4555 = !DILocation(line: 76, column: 16, scope: !4516)
!4556 = !DILocation(line: 76, column: 27, scope: !4516)
!4557 = !DILocation(line: 76, column: 2, scope: !4516)
!4558 = !DILocation(line: 76, column: 8, scope: !4516)
!4559 = !DILocation(line: 76, column: 14, scope: !4516)
!4560 = !DILocation(line: 77, column: 16, scope: !4516)
!4561 = !DILocation(line: 77, column: 21, scope: !4516)
!4562 = !DILocation(line: 77, column: 2, scope: !4516)
!4563 = !DILocation(line: 79, column: 2, scope: !4516)
!4564 = !DILocation(line: 81, column: 9, scope: !4516)
!4565 = !DILocation(line: 81, column: 13, scope: !4516)
!4566 = !DILocation(line: 81, column: 19, scope: !4516)
!4567 = !DILocation(line: 81, column: 2, scope: !4516)
!4568 = distinct !DISubprogram(name: "drm_authmagic", scope: !1, file: !1, line: 84, type: !4137, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !295)
!4569 = !DILocalVariable(name: "dev", arg: 1, scope: !4568, file: !1, line: 84, type: !3202)
!4570 = !DILocation(line: 84, column: 38, scope: !4568)
!4571 = !DILocalVariable(name: "data", arg: 2, scope: !4568, file: !1, line: 84, type: !217)
!4572 = !DILocation(line: 84, column: 49, scope: !4568)
!4573 = !DILocalVariable(name: "file_priv", arg: 3, scope: !4568, file: !1, line: 85, type: !3935)
!4574 = !DILocation(line: 85, column: 22, scope: !4568)
!4575 = !DILocalVariable(name: "auth", scope: !4568, file: !1, line: 87, type: !4524)
!4576 = !DILocation(line: 87, column: 19, scope: !4568)
!4577 = !DILocation(line: 87, column: 26, scope: !4568)
!4578 = !DILocalVariable(name: "file", scope: !4568, file: !1, line: 88, type: !3935)
!4579 = !DILocation(line: 88, column: 19, scope: !4568)
!4580 = !DILocation(line: 90, column: 2, scope: !4568)
!4581 = !DILocation(line: 92, column: 14, scope: !4568)
!4582 = !DILocation(line: 92, column: 19, scope: !4568)
!4583 = !DILocation(line: 92, column: 2, scope: !4568)
!4584 = !DILocation(line: 93, column: 19, scope: !4568)
!4585 = !DILocation(line: 93, column: 30, scope: !4568)
!4586 = !DILocation(line: 93, column: 38, scope: !4568)
!4587 = !DILocation(line: 93, column: 49, scope: !4568)
!4588 = !DILocation(line: 93, column: 55, scope: !4568)
!4589 = !DILocation(line: 93, column: 9, scope: !4568)
!4590 = !DILocation(line: 93, column: 7, scope: !4568)
!4591 = !DILocation(line: 94, column: 6, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4568, file: !1, line: 94, column: 6)
!4593 = !DILocation(line: 94, column: 6, scope: !4568)
!4594 = !DILocation(line: 95, column: 3, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4592, file: !1, line: 94, column: 12)
!4596 = !DILocation(line: 95, column: 9, scope: !4595)
!4597 = !DILocation(line: 95, column: 23, scope: !4595)
!4598 = !DILocation(line: 96, column: 16, scope: !4595)
!4599 = !DILocation(line: 96, column: 27, scope: !4595)
!4600 = !DILocation(line: 96, column: 35, scope: !4595)
!4601 = !DILocation(line: 96, column: 52, scope: !4595)
!4602 = !DILocation(line: 96, column: 58, scope: !4595)
!4603 = !DILocation(line: 96, column: 3, scope: !4595)
!4604 = !DILocation(line: 97, column: 2, scope: !4595)
!4605 = !DILocation(line: 98, column: 16, scope: !4568)
!4606 = !DILocation(line: 98, column: 21, scope: !4568)
!4607 = !DILocation(line: 98, column: 2, scope: !4568)
!4608 = !DILocation(line: 100, column: 9, scope: !4568)
!4609 = !DILocation(line: 100, column: 2, scope: !4568)
!4610 = distinct !DISubprogram(name: "drm_master_create", scope: !1, file: !1, line: 103, type: !4611, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !295)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!3196, !3202}
!4613 = !DILocalVariable(name: "dev", arg: 1, scope: !4610, file: !1, line: 103, type: !3202)
!4614 = !DILocation(line: 103, column: 57, scope: !4610)
!4615 = !DILocalVariable(name: "master", scope: !4610, file: !1, line: 105, type: !3196)
!4616 = !DILocation(line: 105, column: 21, scope: !4610)
!4617 = !DILocation(line: 107, column: 11, scope: !4610)
!4618 = !DILocation(line: 107, column: 9, scope: !4610)
!4619 = !DILocation(line: 108, column: 7, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4610, file: !1, line: 108, column: 6)
!4621 = !DILocation(line: 108, column: 6, scope: !4610)
!4622 = !DILocation(line: 109, column: 3, scope: !4620)
!4623 = !DILocation(line: 111, column: 13, scope: !4610)
!4624 = !DILocation(line: 111, column: 21, scope: !4610)
!4625 = !DILocation(line: 111, column: 2, scope: !4610)
!4626 = !DILocation(line: 112, column: 25, scope: !4610)
!4627 = !DILocation(line: 112, column: 2, scope: !4610)
!4628 = !DILocation(line: 113, column: 12, scope: !4610)
!4629 = !DILocation(line: 113, column: 20, scope: !4610)
!4630 = !DILocation(line: 113, column: 2, scope: !4610)
!4631 = !DILocation(line: 114, column: 16, scope: !4610)
!4632 = !DILocation(line: 114, column: 2, scope: !4610)
!4633 = !DILocation(line: 114, column: 10, scope: !4610)
!4634 = !DILocation(line: 114, column: 14, scope: !4610)
!4635 = !DILocation(line: 117, column: 18, scope: !4610)
!4636 = !DILocation(line: 117, column: 26, scope: !4610)
!4637 = !DILocation(line: 117, column: 2, scope: !4610)
!4638 = !DILocation(line: 118, column: 18, scope: !4610)
!4639 = !DILocation(line: 118, column: 26, scope: !4610)
!4640 = !DILocation(line: 118, column: 2, scope: !4610)
!4641 = !DILocation(line: 119, column: 12, scope: !4610)
!4642 = !DILocation(line: 119, column: 20, scope: !4610)
!4643 = !DILocation(line: 119, column: 2, scope: !4610)
!4644 = !DILocation(line: 120, column: 12, scope: !4610)
!4645 = !DILocation(line: 120, column: 20, scope: !4610)
!4646 = !DILocation(line: 120, column: 2, scope: !4610)
!4647 = !DILocation(line: 122, column: 9, scope: !4610)
!4648 = !DILocation(line: 122, column: 2, scope: !4610)
!4649 = !DILocation(line: 123, column: 1, scope: !4610)
!4650 = distinct !DISubprogram(name: "kzalloc", scope: !200, file: !200, line: 662, type: !4651, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!4651 = !DISubroutineType(types: !4652)
!4652 = !{!217, !830, !215}
!4653 = !DILocalVariable(name: "s", arg: 1, scope: !4654, file: !200, line: 445, type: !1231)
!4654 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !200, file: !200, line: 445, type: !4655, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{!217, !1231, !215, !830}
!4657 = !DILocation(line: 445, column: 72, scope: !4654, inlinedAt: !4658)
!4658 = distinct !DILocation(line: 552, column: 10, scope: !4659, inlinedAt: !4662)
!4659 = distinct !DILexicalBlock(scope: !4660, file: !200, line: 540, column: 34)
!4660 = distinct !DILexicalBlock(scope: !4661, file: !200, line: 540, column: 6)
!4661 = distinct !DISubprogram(name: "kmalloc", scope: !200, file: !200, line: 538, type: !4651, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!4662 = distinct !DILocation(line: 664, column: 9, scope: !4650)
!4663 = !DILocalVariable(name: "flags", arg: 2, scope: !4654, file: !200, line: 446, type: !215)
!4664 = !DILocation(line: 446, column: 9, scope: !4654, inlinedAt: !4658)
!4665 = !DILocalVariable(name: "size", arg: 3, scope: !4654, file: !200, line: 446, type: !830)
!4666 = !DILocation(line: 446, column: 23, scope: !4654, inlinedAt: !4658)
!4667 = !DILocalVariable(name: "ret", scope: !4654, file: !200, line: 448, type: !217)
!4668 = !DILocation(line: 448, column: 8, scope: !4654, inlinedAt: !4658)
!4669 = !DILocalVariable(name: "flags", arg: 1, scope: !4670, file: !200, line: 318, type: !215)
!4670 = distinct !DISubprogram(name: "kmalloc_type", scope: !200, file: !200, line: 318, type: !4671, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!199, !215}
!4673 = !DILocation(line: 318, column: 67, scope: !4670, inlinedAt: !4674)
!4674 = distinct !DILocation(line: 553, column: 20, scope: !4659, inlinedAt: !4662)
!4675 = !DILocalVariable(name: "size", arg: 1, scope: !4676, file: !200, line: 346, type: !830)
!4676 = distinct !DISubprogram(name: "kmalloc_index", scope: !200, file: !200, line: 346, type: !4677, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!4677 = !DISubroutineType(types: !4678)
!4678 = !{!5, !830}
!4679 = !DILocation(line: 346, column: 58, scope: !4676, inlinedAt: !4680)
!4680 = distinct !DILocation(line: 547, column: 11, scope: !4659, inlinedAt: !4662)
!4681 = !DILocalVariable(name: "size", arg: 1, scope: !4682, file: !200, line: 472, type: !830)
!4682 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !200, file: !200, line: 472, type: !4683, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!4683 = !DISubroutineType(types: !4684)
!4684 = !{!217, !830, !215, !5}
!4685 = !DILocation(line: 472, column: 28, scope: !4682, inlinedAt: !4686)
!4686 = distinct !DILocation(line: 481, column: 9, scope: !4687, inlinedAt: !4688)
!4687 = distinct !DISubprogram(name: "kmalloc_large", scope: !200, file: !200, line: 478, type: !4651, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!4688 = distinct !DILocation(line: 545, column: 11, scope: !4689, inlinedAt: !4662)
!4689 = distinct !DILexicalBlock(scope: !4659, file: !200, line: 544, column: 7)
!4690 = !DILocalVariable(name: "flags", arg: 2, scope: !4682, file: !200, line: 472, type: !215)
!4691 = !DILocation(line: 472, column: 40, scope: !4682, inlinedAt: !4686)
!4692 = !DILocalVariable(name: "order", arg: 3, scope: !4682, file: !200, line: 472, type: !5)
!4693 = !DILocation(line: 472, column: 60, scope: !4682, inlinedAt: !4686)
!4694 = !DILocalVariable(name: "size", arg: 1, scope: !4687, file: !200, line: 478, type: !830)
!4695 = !DILocation(line: 478, column: 51, scope: !4687, inlinedAt: !4688)
!4696 = !DILocalVariable(name: "flags", arg: 2, scope: !4687, file: !200, line: 478, type: !215)
!4697 = !DILocation(line: 478, column: 63, scope: !4687, inlinedAt: !4688)
!4698 = !DILocalVariable(name: "order", scope: !4687, file: !200, line: 480, type: !5)
!4699 = !DILocation(line: 480, column: 15, scope: !4687, inlinedAt: !4688)
!4700 = !DILocalVariable(name: "size", arg: 1, scope: !4661, file: !200, line: 538, type: !830)
!4701 = !DILocation(line: 538, column: 45, scope: !4661, inlinedAt: !4662)
!4702 = !DILocalVariable(name: "flags", arg: 2, scope: !4661, file: !200, line: 538, type: !215)
!4703 = !DILocation(line: 538, column: 57, scope: !4661, inlinedAt: !4662)
!4704 = !DILocalVariable(name: "index", scope: !4659, file: !200, line: 542, type: !5)
!4705 = !DILocation(line: 542, column: 16, scope: !4659, inlinedAt: !4662)
!4706 = !DILocalVariable(name: "size", arg: 1, scope: !4650, file: !200, line: 662, type: !830)
!4707 = !DILocation(line: 662, column: 36, scope: !4650)
!4708 = !DILocalVariable(name: "flags", arg: 2, scope: !4650, file: !200, line: 662, type: !215)
!4709 = !DILocation(line: 662, column: 48, scope: !4650)
!4710 = !DILocation(line: 664, column: 17, scope: !4650)
!4711 = !DILocation(line: 664, column: 23, scope: !4650)
!4712 = !DILocation(line: 664, column: 29, scope: !4650)
!4713 = !DILocation(line: 540, column: 27, scope: !4660, inlinedAt: !4662)
!4714 = !DILocation(line: 540, column: 6, scope: !4660, inlinedAt: !4662)
!4715 = !DILocation(line: 540, column: 6, scope: !4661, inlinedAt: !4662)
!4716 = !DILocation(line: 544, column: 7, scope: !4689, inlinedAt: !4662)
!4717 = !DILocation(line: 544, column: 12, scope: !4689, inlinedAt: !4662)
!4718 = !DILocation(line: 544, column: 7, scope: !4659, inlinedAt: !4662)
!4719 = !DILocation(line: 545, column: 25, scope: !4689, inlinedAt: !4662)
!4720 = !DILocation(line: 545, column: 31, scope: !4689, inlinedAt: !4662)
!4721 = !DILocation(line: 480, column: 33, scope: !4687, inlinedAt: !4688)
!4722 = !DILocation(line: 480, column: 23, scope: !4687, inlinedAt: !4688)
!4723 = !DILocation(line: 481, column: 29, scope: !4687, inlinedAt: !4688)
!4724 = !DILocation(line: 481, column: 35, scope: !4687, inlinedAt: !4688)
!4725 = !DILocation(line: 481, column: 42, scope: !4687, inlinedAt: !4688)
!4726 = !DILocation(line: 474, column: 23, scope: !4682, inlinedAt: !4686)
!4727 = !DILocation(line: 474, column: 29, scope: !4682, inlinedAt: !4686)
!4728 = !DILocation(line: 474, column: 36, scope: !4682, inlinedAt: !4686)
!4729 = !DILocation(line: 474, column: 9, scope: !4682, inlinedAt: !4686)
!4730 = !DILocation(line: 545, column: 4, scope: !4689, inlinedAt: !4662)
!4731 = !DILocation(line: 547, column: 25, scope: !4659, inlinedAt: !4662)
!4732 = !DILocation(line: 348, column: 7, scope: !4733, inlinedAt: !4680)
!4733 = distinct !DILexicalBlock(scope: !4676, file: !200, line: 348, column: 6)
!4734 = !DILocation(line: 348, column: 6, scope: !4676, inlinedAt: !4680)
!4735 = !DILocation(line: 349, column: 3, scope: !4733, inlinedAt: !4680)
!4736 = !DILocation(line: 351, column: 6, scope: !4737, inlinedAt: !4680)
!4737 = distinct !DILexicalBlock(scope: !4676, file: !200, line: 351, column: 6)
!4738 = !DILocation(line: 351, column: 11, scope: !4737, inlinedAt: !4680)
!4739 = !DILocation(line: 351, column: 6, scope: !4676, inlinedAt: !4680)
!4740 = !DILocation(line: 352, column: 3, scope: !4737, inlinedAt: !4680)
!4741 = !DILocation(line: 354, column: 32, scope: !4742, inlinedAt: !4680)
!4742 = distinct !DILexicalBlock(scope: !4676, file: !200, line: 354, column: 6)
!4743 = !DILocation(line: 354, column: 37, scope: !4742, inlinedAt: !4680)
!4744 = !DILocation(line: 354, column: 42, scope: !4742, inlinedAt: !4680)
!4745 = !DILocation(line: 354, column: 45, scope: !4742, inlinedAt: !4680)
!4746 = !DILocation(line: 354, column: 50, scope: !4742, inlinedAt: !4680)
!4747 = !DILocation(line: 354, column: 6, scope: !4676, inlinedAt: !4680)
!4748 = !DILocation(line: 355, column: 3, scope: !4742, inlinedAt: !4680)
!4749 = !DILocation(line: 356, column: 32, scope: !4750, inlinedAt: !4680)
!4750 = distinct !DILexicalBlock(scope: !4676, file: !200, line: 356, column: 6)
!4751 = !DILocation(line: 356, column: 37, scope: !4750, inlinedAt: !4680)
!4752 = !DILocation(line: 356, column: 43, scope: !4750, inlinedAt: !4680)
!4753 = !DILocation(line: 356, column: 46, scope: !4750, inlinedAt: !4680)
!4754 = !DILocation(line: 356, column: 51, scope: !4750, inlinedAt: !4680)
!4755 = !DILocation(line: 356, column: 6, scope: !4676, inlinedAt: !4680)
!4756 = !DILocation(line: 357, column: 3, scope: !4750, inlinedAt: !4680)
!4757 = !DILocation(line: 358, column: 6, scope: !4758, inlinedAt: !4680)
!4758 = distinct !DILexicalBlock(scope: !4676, file: !200, line: 358, column: 6)
!4759 = !DILocation(line: 358, column: 11, scope: !4758, inlinedAt: !4680)
!4760 = !DILocation(line: 358, column: 6, scope: !4676, inlinedAt: !4680)
!4761 = !DILocation(line: 358, column: 26, scope: !4758, inlinedAt: !4680)
!4762 = !DILocation(line: 359, column: 6, scope: !4763, inlinedAt: !4680)
!4763 = distinct !DILexicalBlock(scope: !4676, file: !200, line: 359, column: 6)
!4764 = !DILocation(line: 359, column: 11, scope: !4763, inlinedAt: !4680)
!4765 = !DILocation(line: 359, column: 6, scope: !4676, inlinedAt: !4680)
!4766 = !DILocation(line: 359, column: 26, scope: !4763, inlinedAt: !4680)
!4767 = !DILocation(line: 360, column: 6, scope: !4768, inlinedAt: !4680)
!4768 = distinct !DILexicalBlock(scope: !4676, file: !200, line: 360, column: 6)
!4769 = !DILocation(line: 360, column: 11, scope: !4768, inlinedAt: !4680)
!4770 = !DILocation(line: 360, column: 6, scope: !4676, inlinedAt: !4680)
!4771 = !DILocation(line: 360, column: 26, scope: !4768, inlinedAt: !4680)
!4772 = !DILocation(line: 361, column: 6, scope: !4773, inlinedAt: !4680)
!4773 = distinct !DILexicalBlock(scope: !4676, file: !200, line: 361, column: 6)
!4774 = !DILocation(line: 361, column: 11, scope: !4773, inlinedAt: !4680)
!4775 = !DILocation(line: 361, column: 6, scope: !4676, inlinedAt: !4680)
!4776 = !DILocation(line: 361, column: 26, scope: !4773, inlinedAt: !4680)
!4777 = !DILocation(line: 362, column: 6, scope: !4778, inlinedAt: !4680)
!4778 = distinct !DILexicalBlock(scope: !4676, file: !200, line: 362, column: 6)
!4779 = !DILocation(line: 362, column: 11, scope: !4778, inlinedAt: !4680)
!4780 = !DILocation(line: 362, column: 6, scope: !4676, inlinedAt: !4680)
!4781 = !DILocation(line: 362, column: 26, scope: !4778, inlinedAt: !4680)
!4782 = !DILocation(line: 363, column: 6, scope: !4783, inlinedAt: !4680)
!4783 = distinct !DILexicalBlock(scope: !4676, file: !200, line: 363, column: 6)
!4784 = !DILocation(line: 363, column: 11, scope: !4783, inlinedAt: !4680)
!4785 = !DILocation(line: 363, column: 6, scope: !4676, inlinedAt: !4680)
!4786 = !DILocation(line: 363, column: 26, scope: !4783, inlinedAt: !4680)
!4787 = !DILocation(line: 364, column: 6, scope: !4788, inlinedAt: !4680)
!4788 = distinct !DILexicalBlock(scope: !4676, file: !200, line: 364, column: 6)
!4789 = !DILocation(line: 364, column: 11, scope: !4788, inlinedAt: !4680)
!4790 = !DILocation(line: 364, column: 6, scope: !4676, inlinedAt: !4680)
!4791 = !DILocation(line: 364, column: 26, scope: !4788, inlinedAt: !4680)
!4792 = !DILocation(line: 365, column: 6, scope: !4793, inlinedAt: !4680)
!4793 = distinct !DILexicalBlock(scope: !4676, file: !200, line: 365, column: 6)
!4794 = !DILocation(line: 365, column: 11, scope: !4793, inlinedAt: !4680)
!4795 = !DILocation(line: 365, column: 6, scope: !4676, inlinedAt: !4680)
!4796 = !DILocation(line: 365, column: 26, scope: !4793, inlinedAt: !4680)
!4797 = !DILocation(line: 366, column: 6, scope: !4798, inlinedAt: !4680)
!4798 = distinct !DILexicalBlock(scope: !4676, file: !200, line: 366, column: 6)
!4799 = !DILocation(line: 366, column: 11, scope: !4798, inlinedAt: !4680)
!4800 = !DILocation(line: 366, column: 6, scope: !4676, inlinedAt: !4680)
!4801 = !DILocation(line: 366, column: 26, scope: !4798, inlinedAt: !4680)
!4802 = !DILocation(line: 367, column: 6, scope: !4803, inlinedAt: !4680)
!4803 = distinct !DILexicalBlock(scope: !4676, file: !200, line: 367, column: 6)
!4804 = !DILocation(line: 367, column: 11, scope: !4803, inlinedAt: !4680)
!4805 = !DILocation(line: 367, column: 6, scope: !4676, inlinedAt: !4680)
!4806 = !DILocation(line: 367, column: 26, scope: !4803, inlinedAt: !4680)
!4807 = !DILocation(line: 368, column: 6, scope: !4808, inlinedAt: !4680)
!4808 = distinct !DILexicalBlock(scope: !4676, file: !200, line: 368, column: 6)
!4809 = !DILocation(line: 368, column: 11, scope: !4808, inlinedAt: !4680)
!4810 = !DILocation(line: 368, column: 6, scope: !4676, inlinedAt: !4680)
!4811 = !DILocation(line: 368, column: 26, scope: !4808, inlinedAt: !4680)
!4812 = !DILocation(line: 369, column: 6, scope: !4813, inlinedAt: !4680)
!4813 = distinct !DILexicalBlock(scope: !4676, file: !200, line: 369, column: 6)
!4814 = !DILocation(line: 369, column: 11, scope: !4813, inlinedAt: !4680)
!4815 = !DILocation(line: 369, column: 6, scope: !4676, inlinedAt: !4680)
!4816 = !DILocation(line: 369, column: 26, scope: !4813, inlinedAt: !4680)
!4817 = !DILocation(line: 370, column: 6, scope: !4818, inlinedAt: !4680)
!4818 = distinct !DILexicalBlock(scope: !4676, file: !200, line: 370, column: 6)
!4819 = !DILocation(line: 370, column: 11, scope: !4818, inlinedAt: !4680)
!4820 = !DILocation(line: 370, column: 6, scope: !4676, inlinedAt: !4680)
!4821 = !DILocation(line: 370, column: 26, scope: !4818, inlinedAt: !4680)
!4822 = !DILocation(line: 371, column: 6, scope: !4823, inlinedAt: !4680)
!4823 = distinct !DILexicalBlock(scope: !4676, file: !200, line: 371, column: 6)
!4824 = !DILocation(line: 371, column: 11, scope: !4823, inlinedAt: !4680)
!4825 = !DILocation(line: 371, column: 6, scope: !4676, inlinedAt: !4680)
!4826 = !DILocation(line: 371, column: 26, scope: !4823, inlinedAt: !4680)
!4827 = !DILocation(line: 372, column: 6, scope: !4828, inlinedAt: !4680)
!4828 = distinct !DILexicalBlock(scope: !4676, file: !200, line: 372, column: 6)
!4829 = !DILocation(line: 372, column: 11, scope: !4828, inlinedAt: !4680)
!4830 = !DILocation(line: 372, column: 6, scope: !4676, inlinedAt: !4680)
!4831 = !DILocation(line: 372, column: 26, scope: !4828, inlinedAt: !4680)
!4832 = !DILocation(line: 373, column: 6, scope: !4833, inlinedAt: !4680)
!4833 = distinct !DILexicalBlock(scope: !4676, file: !200, line: 373, column: 6)
!4834 = !DILocation(line: 373, column: 11, scope: !4833, inlinedAt: !4680)
!4835 = !DILocation(line: 373, column: 6, scope: !4676, inlinedAt: !4680)
!4836 = !DILocation(line: 373, column: 26, scope: !4833, inlinedAt: !4680)
!4837 = !DILocation(line: 374, column: 6, scope: !4838, inlinedAt: !4680)
!4838 = distinct !DILexicalBlock(scope: !4676, file: !200, line: 374, column: 6)
!4839 = !DILocation(line: 374, column: 11, scope: !4838, inlinedAt: !4680)
!4840 = !DILocation(line: 374, column: 6, scope: !4676, inlinedAt: !4680)
!4841 = !DILocation(line: 374, column: 26, scope: !4838, inlinedAt: !4680)
!4842 = !DILocation(line: 375, column: 6, scope: !4843, inlinedAt: !4680)
!4843 = distinct !DILexicalBlock(scope: !4676, file: !200, line: 375, column: 6)
!4844 = !DILocation(line: 375, column: 11, scope: !4843, inlinedAt: !4680)
!4845 = !DILocation(line: 375, column: 6, scope: !4676, inlinedAt: !4680)
!4846 = !DILocation(line: 375, column: 27, scope: !4843, inlinedAt: !4680)
!4847 = !DILocation(line: 376, column: 6, scope: !4848, inlinedAt: !4680)
!4848 = distinct !DILexicalBlock(scope: !4676, file: !200, line: 376, column: 6)
!4849 = !DILocation(line: 376, column: 11, scope: !4848, inlinedAt: !4680)
!4850 = !DILocation(line: 376, column: 6, scope: !4676, inlinedAt: !4680)
!4851 = !DILocation(line: 376, column: 32, scope: !4848, inlinedAt: !4680)
!4852 = !DILocation(line: 377, column: 6, scope: !4853, inlinedAt: !4680)
!4853 = distinct !DILexicalBlock(scope: !4676, file: !200, line: 377, column: 6)
!4854 = !DILocation(line: 377, column: 11, scope: !4853, inlinedAt: !4680)
!4855 = !DILocation(line: 377, column: 6, scope: !4676, inlinedAt: !4680)
!4856 = !DILocation(line: 377, column: 32, scope: !4853, inlinedAt: !4680)
!4857 = !DILocation(line: 378, column: 6, scope: !4858, inlinedAt: !4680)
!4858 = distinct !DILexicalBlock(scope: !4676, file: !200, line: 378, column: 6)
!4859 = !DILocation(line: 378, column: 11, scope: !4858, inlinedAt: !4680)
!4860 = !DILocation(line: 378, column: 6, scope: !4676, inlinedAt: !4680)
!4861 = !DILocation(line: 378, column: 32, scope: !4858, inlinedAt: !4680)
!4862 = !DILocation(line: 379, column: 6, scope: !4863, inlinedAt: !4680)
!4863 = distinct !DILexicalBlock(scope: !4676, file: !200, line: 379, column: 6)
!4864 = !DILocation(line: 379, column: 11, scope: !4863, inlinedAt: !4680)
!4865 = !DILocation(line: 379, column: 6, scope: !4676, inlinedAt: !4680)
!4866 = !DILocation(line: 379, column: 33, scope: !4863, inlinedAt: !4680)
!4867 = !DILocation(line: 380, column: 6, scope: !4868, inlinedAt: !4680)
!4868 = distinct !DILexicalBlock(scope: !4676, file: !200, line: 380, column: 6)
!4869 = !DILocation(line: 380, column: 11, scope: !4868, inlinedAt: !4680)
!4870 = !DILocation(line: 380, column: 6, scope: !4676, inlinedAt: !4680)
!4871 = !DILocation(line: 380, column: 33, scope: !4868, inlinedAt: !4680)
!4872 = !DILocation(line: 381, column: 6, scope: !4873, inlinedAt: !4680)
!4873 = distinct !DILexicalBlock(scope: !4676, file: !200, line: 381, column: 6)
!4874 = !DILocation(line: 381, column: 11, scope: !4873, inlinedAt: !4680)
!4875 = !DILocation(line: 381, column: 6, scope: !4676, inlinedAt: !4680)
!4876 = !DILocation(line: 381, column: 33, scope: !4873, inlinedAt: !4680)
!4877 = !DILocation(line: 382, column: 2, scope: !4878, inlinedAt: !4680)
!4878 = distinct !DILexicalBlock(scope: !4879, file: !200, line: 382, column: 2)
!4879 = distinct !DILexicalBlock(scope: !4676, file: !200, line: 382, column: 2)
!4880 = !{i32 -2144643368, i32 -2144643339, i32 -2144643293, i32 -2144643235, i32 -2144643181, i32 -2144643127, i32 -2144643072, i32 -2144643041}
!4881 = !DILocation(line: 382, column: 2, scope: !4882, inlinedAt: !4680)
!4882 = distinct !DILexicalBlock(scope: !4883, file: !200, line: 382, column: 2)
!4883 = distinct !DILexicalBlock(scope: !4879, file: !200, line: 382, column: 2)
!4884 = !{i32 -2144642598, i32 -2144642591, i32 -2144642537, i32 -2144642506, i32 -2144642476}
!4885 = !DILocation(line: 382, column: 2, scope: !4883, inlinedAt: !4680)
!4886 = !DILocation(line: 386, column: 1, scope: !4676, inlinedAt: !4680)
!4887 = !DILocation(line: 547, column: 9, scope: !4659, inlinedAt: !4662)
!4888 = !DILocation(line: 549, column: 8, scope: !4889, inlinedAt: !4662)
!4889 = distinct !DILexicalBlock(scope: !4659, file: !200, line: 549, column: 7)
!4890 = !DILocation(line: 549, column: 7, scope: !4659, inlinedAt: !4662)
!4891 = !DILocation(line: 550, column: 4, scope: !4889, inlinedAt: !4662)
!4892 = !DILocation(line: 553, column: 33, scope: !4659, inlinedAt: !4662)
!4893 = !DILocation(line: 325, column: 6, scope: !4894, inlinedAt: !4674)
!4894 = distinct !DILexicalBlock(scope: !4670, file: !200, line: 325, column: 6)
!4895 = !DILocation(line: 325, column: 6, scope: !4670, inlinedAt: !4674)
!4896 = !DILocation(line: 326, column: 3, scope: !4894, inlinedAt: !4674)
!4897 = !DILocation(line: 332, column: 9, scope: !4670, inlinedAt: !4674)
!4898 = !DILocation(line: 332, column: 15, scope: !4670, inlinedAt: !4674)
!4899 = !DILocation(line: 332, column: 2, scope: !4670, inlinedAt: !4674)
!4900 = !DILocation(line: 336, column: 1, scope: !4670, inlinedAt: !4674)
!4901 = !DILocation(line: 553, column: 5, scope: !4659, inlinedAt: !4662)
!4902 = !DILocation(line: 553, column: 41, scope: !4659, inlinedAt: !4662)
!4903 = !DILocation(line: 554, column: 5, scope: !4659, inlinedAt: !4662)
!4904 = !DILocation(line: 554, column: 12, scope: !4659, inlinedAt: !4662)
!4905 = !DILocation(line: 448, column: 31, scope: !4654, inlinedAt: !4658)
!4906 = !DILocation(line: 448, column: 34, scope: !4654, inlinedAt: !4658)
!4907 = !DILocation(line: 448, column: 14, scope: !4654, inlinedAt: !4658)
!4908 = !DILocation(line: 450, column: 22, scope: !4654, inlinedAt: !4658)
!4909 = !DILocation(line: 450, column: 25, scope: !4654, inlinedAt: !4658)
!4910 = !DILocation(line: 450, column: 30, scope: !4654, inlinedAt: !4658)
!4911 = !DILocation(line: 450, column: 36, scope: !4654, inlinedAt: !4658)
!4912 = !DILocation(line: 450, column: 8, scope: !4654, inlinedAt: !4658)
!4913 = !DILocation(line: 450, column: 6, scope: !4654, inlinedAt: !4658)
!4914 = !DILocation(line: 451, column: 9, scope: !4654, inlinedAt: !4658)
!4915 = !DILocation(line: 552, column: 3, scope: !4659, inlinedAt: !4662)
!4916 = !DILocation(line: 557, column: 19, scope: !4661, inlinedAt: !4662)
!4917 = !DILocation(line: 557, column: 25, scope: !4661, inlinedAt: !4662)
!4918 = !DILocation(line: 557, column: 9, scope: !4661, inlinedAt: !4662)
!4919 = !DILocation(line: 557, column: 2, scope: !4661, inlinedAt: !4662)
!4920 = !DILocation(line: 558, column: 1, scope: !4661, inlinedAt: !4662)
!4921 = !DILocation(line: 664, column: 2, scope: !4650)
!4922 = distinct !DISubprogram(name: "kref_init", scope: !1211, file: !1211, line: 29, type: !4923, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!4923 = !DISubroutineType(types: !4924)
!4924 = !{null, !4925}
!4925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!4926 = !DILocalVariable(name: "kref", arg: 1, scope: !4922, file: !1211, line: 29, type: !4925)
!4927 = !DILocation(line: 29, column: 43, scope: !4922)
!4928 = !DILocation(line: 31, column: 16, scope: !4922)
!4929 = !DILocation(line: 31, column: 22, scope: !4922)
!4930 = !DILocation(line: 31, column: 2, scope: !4922)
!4931 = !DILocation(line: 32, column: 1, scope: !4922)
!4932 = distinct !DISubprogram(name: "drm_master_legacy_init", scope: !4933, file: !4933, line: 211, type: !4934, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!4933 = !DIFile(filename: "drivers/gpu/drm/drm_legacy.h", directory: "/home/lizy2001/genbc/linux")
!4934 = !DISubroutineType(types: !4935)
!4935 = !{null, !3196}
!4936 = !DILocalVariable(name: "master", arg: 1, scope: !4932, file: !4933, line: 211, type: !3196)
!4937 = !DILocation(line: 211, column: 62, scope: !4932)
!4938 = !DILocation(line: 211, column: 71, scope: !4932)
!4939 = distinct !DISubprogram(name: "idr_init", scope: !1216, file: !1216, line: 149, type: !4940, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!4940 = !DISubroutineType(types: !4941)
!4941 = !{null, !4942}
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!4943 = !DILocalVariable(name: "idr", arg: 1, scope: !4939, file: !1216, line: 149, type: !4942)
!4944 = !DILocation(line: 149, column: 41, scope: !4939)
!4945 = !DILocation(line: 151, column: 16, scope: !4939)
!4946 = !DILocation(line: 151, column: 2, scope: !4939)
!4947 = !DILocation(line: 152, column: 1, scope: !4939)
!4948 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4949, file: !4949, line: 33, type: !4950, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!4949 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4950 = !DISubroutineType(types: !4951)
!4951 = !{null, !222}
!4952 = !DILocalVariable(name: "list", arg: 1, scope: !4948, file: !4949, line: 33, type: !222)
!4953 = !DILocation(line: 33, column: 53, scope: !4948)
!4954 = !DILocation(line: 35, column: 2, scope: !4948)
!4955 = !DILocation(line: 35, column: 2, scope: !4956)
!4956 = distinct !DILexicalBlock(scope: !4948, file: !4949, line: 35, column: 2)
!4957 = !DILocation(line: 35, column: 2, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4956, file: !4949, line: 35, column: 2)
!4959 = !DILocation(line: 35, column: 2, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4956, file: !4949, line: 35, column: 2)
!4961 = !DILocation(line: 36, column: 15, scope: !4948)
!4962 = !DILocation(line: 36, column: 2, scope: !4948)
!4963 = !DILocation(line: 36, column: 8, scope: !4948)
!4964 = !DILocation(line: 36, column: 13, scope: !4948)
!4965 = !DILocation(line: 37, column: 1, scope: !4948)
!4966 = distinct !DISubprogram(name: "drm_setmaster_ioctl", scope: !1, file: !1, line: 215, type: !4137, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !295)
!4967 = !DILocalVariable(name: "dev", arg: 1, scope: !4966, file: !1, line: 215, type: !3202)
!4968 = !DILocation(line: 215, column: 44, scope: !4966)
!4969 = !DILocalVariable(name: "data", arg: 2, scope: !4966, file: !1, line: 215, type: !217)
!4970 = !DILocation(line: 215, column: 55, scope: !4966)
!4971 = !DILocalVariable(name: "file_priv", arg: 3, scope: !4966, file: !1, line: 216, type: !3935)
!4972 = !DILocation(line: 216, column: 21, scope: !4966)
!4973 = !DILocalVariable(name: "ret", scope: !4966, file: !1, line: 218, type: !107)
!4974 = !DILocation(line: 218, column: 6, scope: !4966)
!4975 = !DILocation(line: 220, column: 14, scope: !4966)
!4976 = !DILocation(line: 220, column: 19, scope: !4966)
!4977 = !DILocation(line: 220, column: 2, scope: !4966)
!4978 = !DILocation(line: 222, column: 30, scope: !4966)
!4979 = !DILocation(line: 222, column: 35, scope: !4966)
!4980 = !DILocation(line: 222, column: 8, scope: !4966)
!4981 = !DILocation(line: 222, column: 6, scope: !4966)
!4982 = !DILocation(line: 223, column: 6, scope: !4983)
!4983 = distinct !DILexicalBlock(scope: !4966, file: !1, line: 223, column: 6)
!4984 = !DILocation(line: 223, column: 6, scope: !4966)
!4985 = !DILocation(line: 224, column: 3, scope: !4983)
!4986 = !DILocation(line: 226, column: 28, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4966, file: !1, line: 226, column: 6)
!4988 = !DILocation(line: 226, column: 6, scope: !4987)
!4989 = !DILocation(line: 226, column: 6, scope: !4966)
!4990 = !DILocation(line: 227, column: 3, scope: !4987)
!4991 = !DILocation(line: 229, column: 6, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4966, file: !1, line: 229, column: 6)
!4993 = !DILocation(line: 229, column: 11, scope: !4992)
!4994 = !DILocation(line: 229, column: 6, scope: !4966)
!4995 = !DILocation(line: 230, column: 7, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4992, file: !1, line: 229, column: 19)
!4997 = !DILocation(line: 231, column: 3, scope: !4996)
!4998 = !DILocation(line: 234, column: 7, scope: !4999)
!4999 = distinct !DILexicalBlock(scope: !4966, file: !1, line: 234, column: 6)
!5000 = !DILocation(line: 234, column: 18, scope: !4999)
!5001 = !DILocation(line: 234, column: 6, scope: !4966)
!5002 = !DILocation(line: 235, column: 7, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !4999, file: !1, line: 234, column: 26)
!5004 = !DILocation(line: 236, column: 3, scope: !5003)
!5005 = !DILocation(line: 239, column: 7, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !4966, file: !1, line: 239, column: 6)
!5007 = !DILocation(line: 239, column: 18, scope: !5006)
!5008 = !DILocation(line: 239, column: 6, scope: !4966)
!5009 = !DILocation(line: 240, column: 28, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !5006, file: !1, line: 239, column: 29)
!5011 = !DILocation(line: 240, column: 33, scope: !5010)
!5012 = !DILocation(line: 240, column: 9, scope: !5010)
!5013 = !DILocation(line: 240, column: 7, scope: !5010)
!5014 = !DILocation(line: 241, column: 3, scope: !5010)
!5015 = !DILocation(line: 244, column: 6, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !4966, file: !1, line: 244, column: 6)
!5017 = !DILocation(line: 244, column: 17, scope: !5016)
!5018 = !DILocation(line: 244, column: 25, scope: !5016)
!5019 = !DILocation(line: 244, column: 32, scope: !5016)
!5020 = !DILocation(line: 244, column: 6, scope: !4966)
!5021 = !DILocation(line: 245, column: 3, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !5016, file: !1, line: 244, column: 41)
!5023 = !DILocation(line: 246, column: 7, scope: !5022)
!5024 = !DILocation(line: 247, column: 3, scope: !5022)
!5025 = !DILocation(line: 250, column: 17, scope: !4966)
!5026 = !DILocation(line: 250, column: 22, scope: !4966)
!5027 = !DILocation(line: 250, column: 2, scope: !4966)
!5028 = !DILabel(scope: !4966, name: "out_unlock", file: !1, line: 251)
!5029 = !DILocation(line: 251, column: 1, scope: !4966)
!5030 = !DILocation(line: 252, column: 16, scope: !4966)
!5031 = !DILocation(line: 252, column: 21, scope: !4966)
!5032 = !DILocation(line: 252, column: 2, scope: !4966)
!5033 = !DILocation(line: 253, column: 9, scope: !4966)
!5034 = !DILocation(line: 253, column: 2, scope: !4966)
!5035 = distinct !DISubprogram(name: "drm_master_check_perm", scope: !1, file: !1, line: 204, type: !3933, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5036 = !DILocalVariable(name: "pscr_ret__", scope: !5037, file: !5038, line: 15, type: !228)
!5037 = distinct !DILexicalBlock(scope: !5039, file: !5038, line: 15, column: 9)
!5038 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/lizy2001/genbc/linux")
!5039 = distinct !DISubprogram(name: "get_current", scope: !5038, file: !5038, line: 13, type: !5040, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5040 = !DISubroutineType(types: !5041)
!5041 = !{!228}
!5042 = !DILocation(line: 15, column: 9, scope: !5037, inlinedAt: !5043)
!5043 = distinct !DILocation(line: 206, column: 33, scope: !5044)
!5044 = distinct !DILexicalBlock(scope: !5035, file: !1, line: 206, column: 6)
!5045 = !DILocalVariable(name: "__vpp_verify", scope: !5046, file: !5038, line: 15, type: !3015)
!5046 = distinct !DILexicalBlock(scope: !5037, file: !5038, line: 15, column: 9)
!5047 = !DILocation(line: 15, column: 9, scope: !5046, inlinedAt: !5043)
!5048 = !DILocalVariable(name: "pfo_val__", scope: !5049, file: !5038, line: 15, type: !286)
!5049 = distinct !DILexicalBlock(scope: !5037, file: !5038, line: 15, column: 9)
!5050 = !DILocation(line: 15, column: 9, scope: !5049, inlinedAt: !5043)
!5051 = !DILocalVariable(name: "dev", arg: 1, scope: !5035, file: !1, line: 204, type: !3202)
!5052 = !DILocation(line: 204, column: 42, scope: !5035)
!5053 = !DILocalVariable(name: "file_priv", arg: 2, scope: !5035, file: !1, line: 204, type: !3935)
!5054 = !DILocation(line: 204, column: 64, scope: !5035)
!5055 = !DILocation(line: 206, column: 6, scope: !5044)
!5056 = !DILocation(line: 206, column: 17, scope: !5044)
!5057 = !{i32 -2146688296}
!5058 = !DILocation(line: 206, column: 24, scope: !5044)
!5059 = !DILocation(line: 206, column: 21, scope: !5044)
!5060 = !DILocation(line: 206, column: 42, scope: !5044)
!5061 = !DILocation(line: 206, column: 45, scope: !5044)
!5062 = !DILocation(line: 206, column: 56, scope: !5044)
!5063 = !DILocation(line: 206, column: 6, scope: !5035)
!5064 = !DILocation(line: 207, column: 3, scope: !5044)
!5065 = !DILocation(line: 209, column: 7, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !5035, file: !1, line: 209, column: 6)
!5067 = !DILocation(line: 209, column: 6, scope: !5035)
!5068 = !DILocation(line: 210, column: 3, scope: !5066)
!5069 = !DILocation(line: 212, column: 2, scope: !5035)
!5070 = !DILocation(line: 213, column: 1, scope: !5035)
!5071 = distinct !DISubprogram(name: "drm_is_current_master", scope: !1, file: !1, line: 354, type: !5072, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5072 = !DISubroutineType(types: !5073)
!5073 = !{!695, !3935}
!5074 = !DILocalVariable(name: "fpriv", arg: 1, scope: !5071, file: !1, line: 354, type: !3935)
!5075 = !DILocation(line: 354, column: 45, scope: !5071)
!5076 = !DILocation(line: 356, column: 9, scope: !5071)
!5077 = !DILocation(line: 356, column: 16, scope: !5071)
!5078 = !DILocation(line: 356, column: 26, scope: !5071)
!5079 = !DILocation(line: 356, column: 45, scope: !5071)
!5080 = !DILocation(line: 356, column: 52, scope: !5071)
!5081 = !DILocation(line: 356, column: 29, scope: !5071)
!5082 = !DILocation(line: 356, column: 63, scope: !5071)
!5083 = !DILocation(line: 356, column: 70, scope: !5071)
!5084 = !DILocation(line: 356, column: 77, scope: !5071)
!5085 = !DILocation(line: 356, column: 82, scope: !5071)
!5086 = !DILocation(line: 356, column: 60, scope: !5071)
!5087 = !DILocation(line: 0, scope: !5071)
!5088 = !DILocation(line: 356, column: 2, scope: !5071)
!5089 = distinct !DISubprogram(name: "drm_new_set_master", scope: !1, file: !1, line: 135, type: !3933, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5090 = !DILocalVariable(name: "dev", arg: 1, scope: !5089, file: !1, line: 135, type: !3202)
!5091 = !DILocation(line: 135, column: 50, scope: !5089)
!5092 = !DILocalVariable(name: "fpriv", arg: 2, scope: !5089, file: !1, line: 135, type: !3935)
!5093 = !DILocation(line: 135, column: 72, scope: !5089)
!5094 = !DILocalVariable(name: "old_master", scope: !5089, file: !1, line: 137, type: !3196)
!5095 = !DILocation(line: 137, column: 21, scope: !5089)
!5096 = !DILocation(line: 139, column: 2, scope: !5089)
!5097 = !DILocation(line: 139, column: 2, scope: !5098)
!5098 = distinct !DILexicalBlock(scope: !5089, file: !1, line: 139, column: 2)
!5099 = !DILocalVariable(name: "__ret_warn_on", scope: !5100, file: !1, line: 141, type: !107)
!5100 = distinct !DILexicalBlock(scope: !5089, file: !1, line: 141, column: 2)
!5101 = !DILocation(line: 141, column: 2, scope: !5100)
!5102 = !DILocation(line: 141, column: 2, scope: !5103)
!5103 = distinct !DILexicalBlock(scope: !5100, file: !1, line: 141, column: 2)
!5104 = !DILocation(line: 141, column: 2, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5103, file: !1, line: 141, column: 2)
!5106 = !DILocation(line: 141, column: 2, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5105, file: !1, line: 141, column: 2)
!5108 = !DILocation(line: 141, column: 2, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5105, file: !1, line: 141, column: 2)
!5110 = !{i32 -2141551358, i32 -2141551329, i32 -2141551283, i32 -2141551225, i32 -2141551171, i32 -2141551117, i32 -2141551062, i32 -2141551031}
!5111 = !DILocation(line: 141, column: 2, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5105, file: !1, line: 141, column: 2)
!5113 = !{i32 -2141550623, i32 -2141550616, i32 -2141550564, i32 -2141550533, i32 -2141550503}
!5114 = !DILocation(line: 141, column: 2, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5105, file: !1, line: 141, column: 2)
!5116 = !DILocation(line: 142, column: 15, scope: !5089)
!5117 = !DILocation(line: 142, column: 22, scope: !5089)
!5118 = !DILocation(line: 142, column: 13, scope: !5089)
!5119 = !DILocation(line: 143, column: 36, scope: !5089)
!5120 = !DILocation(line: 143, column: 18, scope: !5089)
!5121 = !DILocation(line: 143, column: 2, scope: !5089)
!5122 = !DILocation(line: 143, column: 9, scope: !5089)
!5123 = !DILocation(line: 143, column: 16, scope: !5089)
!5124 = !DILocation(line: 144, column: 7, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5089, file: !1, line: 144, column: 6)
!5126 = !DILocation(line: 144, column: 14, scope: !5125)
!5127 = !DILocation(line: 144, column: 6, scope: !5089)
!5128 = !DILocation(line: 145, column: 19, scope: !5129)
!5129 = distinct !DILexicalBlock(scope: !5125, file: !1, line: 144, column: 22)
!5130 = !DILocation(line: 145, column: 3, scope: !5129)
!5131 = !DILocation(line: 145, column: 10, scope: !5129)
!5132 = !DILocation(line: 145, column: 17, scope: !5129)
!5133 = !DILocation(line: 146, column: 3, scope: !5129)
!5134 = !DILocation(line: 149, column: 2, scope: !5089)
!5135 = !DILocation(line: 149, column: 9, scope: !5089)
!5136 = !DILocation(line: 149, column: 19, scope: !5089)
!5137 = !DILocation(line: 150, column: 2, scope: !5089)
!5138 = !DILocation(line: 150, column: 9, scope: !5089)
!5139 = !DILocation(line: 150, column: 23, scope: !5089)
!5140 = !DILocation(line: 152, column: 17, scope: !5089)
!5141 = !DILocation(line: 152, column: 22, scope: !5089)
!5142 = !DILocation(line: 152, column: 2, scope: !5089)
!5143 = !DILocation(line: 154, column: 6, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5089, file: !1, line: 154, column: 6)
!5145 = !DILocation(line: 154, column: 6, scope: !5089)
!5146 = !DILocation(line: 155, column: 3, scope: !5144)
!5147 = !DILocation(line: 157, column: 2, scope: !5089)
!5148 = !DILocation(line: 158, column: 1, scope: !5089)
!5149 = distinct !DISubprogram(name: "drm_set_master", scope: !1, file: !1, line: 125, type: !4008, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5150 = !DILocalVariable(name: "dev", arg: 1, scope: !5149, file: !1, line: 125, type: !3202)
!5151 = !DILocation(line: 125, column: 47, scope: !5149)
!5152 = !DILocalVariable(name: "fpriv", arg: 2, scope: !5149, file: !1, line: 125, type: !3935)
!5153 = !DILocation(line: 125, column: 69, scope: !5149)
!5154 = !DILocalVariable(name: "new_master", arg: 3, scope: !5149, file: !1, line: 126, type: !695)
!5155 = !DILocation(line: 126, column: 12, scope: !5149)
!5156 = !DILocation(line: 128, column: 31, scope: !5149)
!5157 = !DILocation(line: 128, column: 38, scope: !5149)
!5158 = !DILocation(line: 128, column: 16, scope: !5149)
!5159 = !DILocation(line: 128, column: 2, scope: !5149)
!5160 = !DILocation(line: 128, column: 7, scope: !5149)
!5161 = !DILocation(line: 128, column: 14, scope: !5149)
!5162 = !DILocation(line: 129, column: 6, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5149, file: !1, line: 129, column: 6)
!5164 = !DILocation(line: 129, column: 11, scope: !5163)
!5165 = !DILocation(line: 129, column: 19, scope: !5163)
!5166 = !DILocation(line: 129, column: 6, scope: !5149)
!5167 = !DILocation(line: 130, column: 3, scope: !5163)
!5168 = !DILocation(line: 130, column: 8, scope: !5163)
!5169 = !DILocation(line: 130, column: 16, scope: !5163)
!5170 = !DILocation(line: 130, column: 27, scope: !5163)
!5171 = !DILocation(line: 130, column: 32, scope: !5163)
!5172 = !DILocation(line: 130, column: 39, scope: !5163)
!5173 = !DILocation(line: 132, column: 2, scope: !5149)
!5174 = !DILocation(line: 132, column: 9, scope: !5149)
!5175 = !DILocation(line: 132, column: 20, scope: !5149)
!5176 = !DILocation(line: 133, column: 1, scope: !5149)
!5177 = distinct !DISubprogram(name: "drm_dropmaster_ioctl", scope: !1, file: !1, line: 264, type: !4137, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5178 = !DILocalVariable(name: "dev", arg: 1, scope: !5177, file: !1, line: 264, type: !3202)
!5179 = !DILocation(line: 264, column: 45, scope: !5177)
!5180 = !DILocalVariable(name: "data", arg: 2, scope: !5177, file: !1, line: 264, type: !217)
!5181 = !DILocation(line: 264, column: 56, scope: !5177)
!5182 = !DILocalVariable(name: "file_priv", arg: 3, scope: !5177, file: !1, line: 265, type: !3935)
!5183 = !DILocation(line: 265, column: 22, scope: !5177)
!5184 = !DILocalVariable(name: "ret", scope: !5177, file: !1, line: 267, type: !107)
!5185 = !DILocation(line: 267, column: 6, scope: !5177)
!5186 = !DILocation(line: 269, column: 14, scope: !5177)
!5187 = !DILocation(line: 269, column: 19, scope: !5177)
!5188 = !DILocation(line: 269, column: 2, scope: !5177)
!5189 = !DILocation(line: 271, column: 30, scope: !5177)
!5190 = !DILocation(line: 271, column: 35, scope: !5177)
!5191 = !DILocation(line: 271, column: 8, scope: !5177)
!5192 = !DILocation(line: 271, column: 6, scope: !5177)
!5193 = !DILocation(line: 272, column: 6, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5177, file: !1, line: 272, column: 6)
!5195 = !DILocation(line: 272, column: 6, scope: !5177)
!5196 = !DILocation(line: 273, column: 3, scope: !5194)
!5197 = !DILocation(line: 275, column: 29, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5177, file: !1, line: 275, column: 6)
!5199 = !DILocation(line: 275, column: 7, scope: !5198)
!5200 = !DILocation(line: 275, column: 6, scope: !5177)
!5201 = !DILocation(line: 276, column: 7, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !5198, file: !1, line: 275, column: 41)
!5203 = !DILocation(line: 277, column: 3, scope: !5202)
!5204 = !DILocation(line: 280, column: 7, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5177, file: !1, line: 280, column: 6)
!5206 = !DILocation(line: 280, column: 12, scope: !5205)
!5207 = !DILocation(line: 280, column: 6, scope: !5177)
!5208 = !DILocation(line: 281, column: 7, scope: !5209)
!5209 = distinct !DILexicalBlock(scope: !5205, file: !1, line: 280, column: 20)
!5210 = !DILocation(line: 282, column: 3, scope: !5209)
!5211 = !DILocation(line: 285, column: 6, scope: !5212)
!5212 = distinct !DILexicalBlock(scope: !5177, file: !1, line: 285, column: 6)
!5213 = !DILocation(line: 285, column: 17, scope: !5212)
!5214 = !DILocation(line: 285, column: 25, scope: !5212)
!5215 = !DILocation(line: 285, column: 32, scope: !5212)
!5216 = !DILocation(line: 285, column: 6, scope: !5177)
!5217 = !DILocation(line: 286, column: 3, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5212, file: !1, line: 285, column: 41)
!5219 = !DILocation(line: 287, column: 7, scope: !5218)
!5220 = !DILocation(line: 288, column: 3, scope: !5218)
!5221 = !DILocation(line: 291, column: 18, scope: !5177)
!5222 = !DILocation(line: 291, column: 23, scope: !5177)
!5223 = !DILocation(line: 291, column: 2, scope: !5177)
!5224 = !DILabel(scope: !5177, name: "out_unlock", file: !1, line: 292)
!5225 = !DILocation(line: 292, column: 1, scope: !5177)
!5226 = !DILocation(line: 293, column: 16, scope: !5177)
!5227 = !DILocation(line: 293, column: 21, scope: !5177)
!5228 = !DILocation(line: 293, column: 2, scope: !5177)
!5229 = !DILocation(line: 294, column: 9, scope: !5177)
!5230 = !DILocation(line: 294, column: 2, scope: !5177)
!5231 = distinct !DISubprogram(name: "drm_drop_master", scope: !1, file: !1, line: 256, type: !3987, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5232 = !DILocalVariable(name: "dev", arg: 1, scope: !5231, file: !1, line: 256, type: !3202)
!5233 = !DILocation(line: 256, column: 48, scope: !5231)
!5234 = !DILocalVariable(name: "fpriv", arg: 2, scope: !5231, file: !1, line: 257, type: !3935)
!5235 = !DILocation(line: 257, column: 25, scope: !5231)
!5236 = !DILocation(line: 259, column: 6, scope: !5237)
!5237 = distinct !DILexicalBlock(scope: !5231, file: !1, line: 259, column: 6)
!5238 = !DILocation(line: 259, column: 11, scope: !5237)
!5239 = !DILocation(line: 259, column: 19, scope: !5237)
!5240 = !DILocation(line: 259, column: 6, scope: !5231)
!5241 = !DILocation(line: 260, column: 3, scope: !5237)
!5242 = !DILocation(line: 260, column: 8, scope: !5237)
!5243 = !DILocation(line: 260, column: 16, scope: !5237)
!5244 = !DILocation(line: 260, column: 28, scope: !5237)
!5245 = !DILocation(line: 260, column: 33, scope: !5237)
!5246 = !DILocation(line: 261, column: 18, scope: !5231)
!5247 = !DILocation(line: 261, column: 23, scope: !5231)
!5248 = !DILocation(line: 261, column: 2, scope: !5231)
!5249 = !DILocation(line: 262, column: 1, scope: !5231)
!5250 = distinct !DISubprogram(name: "drm_master_open", scope: !1, file: !1, line: 297, type: !5251, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5251 = !DISubroutineType(types: !5252)
!5252 = !{!107, !3935}
!5253 = !DILocalVariable(name: "file_priv", arg: 1, scope: !5250, file: !1, line: 297, type: !3935)
!5254 = !DILocation(line: 297, column: 38, scope: !5250)
!5255 = !DILocalVariable(name: "dev", scope: !5250, file: !1, line: 299, type: !3202)
!5256 = !DILocation(line: 299, column: 21, scope: !5250)
!5257 = !DILocation(line: 299, column: 27, scope: !5250)
!5258 = !DILocation(line: 299, column: 38, scope: !5250)
!5259 = !DILocation(line: 299, column: 45, scope: !5250)
!5260 = !DILocalVariable(name: "ret", scope: !5250, file: !1, line: 300, type: !107)
!5261 = !DILocation(line: 300, column: 6, scope: !5250)
!5262 = !DILocation(line: 304, column: 14, scope: !5250)
!5263 = !DILocation(line: 304, column: 19, scope: !5250)
!5264 = !DILocation(line: 304, column: 2, scope: !5250)
!5265 = !DILocation(line: 305, column: 7, scope: !5266)
!5266 = distinct !DILexicalBlock(scope: !5250, file: !1, line: 305, column: 6)
!5267 = !DILocation(line: 305, column: 12, scope: !5266)
!5268 = !DILocation(line: 305, column: 6, scope: !5250)
!5269 = !DILocation(line: 306, column: 28, scope: !5266)
!5270 = !DILocation(line: 306, column: 33, scope: !5266)
!5271 = !DILocation(line: 306, column: 9, scope: !5266)
!5272 = !DILocation(line: 306, column: 7, scope: !5266)
!5273 = !DILocation(line: 306, column: 3, scope: !5266)
!5274 = !DILocation(line: 308, column: 38, scope: !5266)
!5275 = !DILocation(line: 308, column: 43, scope: !5266)
!5276 = !DILocation(line: 308, column: 23, scope: !5266)
!5277 = !DILocation(line: 308, column: 3, scope: !5266)
!5278 = !DILocation(line: 308, column: 14, scope: !5266)
!5279 = !DILocation(line: 308, column: 21, scope: !5266)
!5280 = !DILocation(line: 309, column: 16, scope: !5250)
!5281 = !DILocation(line: 309, column: 21, scope: !5250)
!5282 = !DILocation(line: 309, column: 2, scope: !5250)
!5283 = !DILocation(line: 311, column: 9, scope: !5250)
!5284 = !DILocation(line: 311, column: 2, scope: !5250)
!5285 = distinct !DISubprogram(name: "drm_master_get", scope: !1, file: !1, line: 366, type: !5286, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5286 = !DISubroutineType(types: !5287)
!5287 = !{!3196, !3196}
!5288 = !DILocalVariable(name: "master", arg: 1, scope: !5285, file: !1, line: 366, type: !3196)
!5289 = !DILocation(line: 366, column: 54, scope: !5285)
!5290 = !DILocation(line: 368, column: 12, scope: !5285)
!5291 = !DILocation(line: 368, column: 20, scope: !5285)
!5292 = !DILocation(line: 368, column: 2, scope: !5285)
!5293 = !DILocation(line: 369, column: 9, scope: !5285)
!5294 = !DILocation(line: 369, column: 2, scope: !5285)
!5295 = distinct !DISubprogram(name: "drm_master_release", scope: !1, file: !1, line: 314, type: !5296, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5296 = !DISubroutineType(types: !5297)
!5297 = !{null, !3935}
!5298 = !DILocalVariable(name: "file_priv", arg: 1, scope: !5295, file: !1, line: 314, type: !3935)
!5299 = !DILocation(line: 314, column: 42, scope: !5295)
!5300 = !DILocalVariable(name: "dev", scope: !5295, file: !1, line: 316, type: !3202)
!5301 = !DILocation(line: 316, column: 21, scope: !5295)
!5302 = !DILocation(line: 316, column: 27, scope: !5295)
!5303 = !DILocation(line: 316, column: 38, scope: !5295)
!5304 = !DILocation(line: 316, column: 45, scope: !5295)
!5305 = !DILocalVariable(name: "master", scope: !5295, file: !1, line: 317, type: !3196)
!5306 = !DILocation(line: 317, column: 21, scope: !5295)
!5307 = !DILocation(line: 317, column: 30, scope: !5295)
!5308 = !DILocation(line: 317, column: 41, scope: !5295)
!5309 = !DILocation(line: 319, column: 14, scope: !5295)
!5310 = !DILocation(line: 319, column: 19, scope: !5295)
!5311 = !DILocation(line: 319, column: 2, scope: !5295)
!5312 = !DILocation(line: 320, column: 6, scope: !5313)
!5313 = distinct !DILexicalBlock(scope: !5295, file: !1, line: 320, column: 6)
!5314 = !DILocation(line: 320, column: 17, scope: !5313)
!5315 = !DILocation(line: 320, column: 6, scope: !5295)
!5316 = !DILocation(line: 321, column: 15, scope: !5313)
!5317 = !DILocation(line: 321, column: 26, scope: !5313)
!5318 = !DILocation(line: 321, column: 34, scope: !5313)
!5319 = !DILocation(line: 321, column: 45, scope: !5313)
!5320 = !DILocation(line: 321, column: 56, scope: !5313)
!5321 = !DILocation(line: 321, column: 3, scope: !5313)
!5322 = !DILocation(line: 323, column: 29, scope: !5323)
!5323 = distinct !DILexicalBlock(scope: !5295, file: !1, line: 323, column: 6)
!5324 = !DILocation(line: 323, column: 7, scope: !5323)
!5325 = !DILocation(line: 323, column: 6, scope: !5295)
!5326 = !DILocation(line: 324, column: 3, scope: !5323)
!5327 = !DILocation(line: 326, column: 33, scope: !5295)
!5328 = !DILocation(line: 326, column: 38, scope: !5295)
!5329 = !DILocation(line: 326, column: 2, scope: !5295)
!5330 = !DILocation(line: 328, column: 6, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5295, file: !1, line: 328, column: 6)
!5332 = !DILocation(line: 328, column: 11, scope: !5331)
!5333 = !DILocation(line: 328, column: 21, scope: !5331)
!5334 = !DILocation(line: 328, column: 32, scope: !5331)
!5335 = !DILocation(line: 328, column: 18, scope: !5331)
!5336 = !DILocation(line: 328, column: 6, scope: !5295)
!5337 = !DILocation(line: 329, column: 19, scope: !5331)
!5338 = !DILocation(line: 329, column: 24, scope: !5331)
!5339 = !DILocation(line: 329, column: 3, scope: !5331)
!5340 = !DILabel(scope: !5295, name: "out", file: !1, line: 330)
!5341 = !DILocation(line: 330, column: 1, scope: !5295)
!5342 = !DILocation(line: 331, column: 29, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5295, file: !1, line: 331, column: 6)
!5344 = !DILocation(line: 331, column: 6, scope: !5343)
!5345 = !DILocation(line: 331, column: 50, scope: !5343)
!5346 = !DILocation(line: 331, column: 53, scope: !5343)
!5347 = !DILocation(line: 331, column: 64, scope: !5343)
!5348 = !DILocation(line: 331, column: 6, scope: !5295)
!5349 = !DILocation(line: 335, column: 20, scope: !5350)
!5350 = distinct !DILexicalBlock(scope: !5343, file: !1, line: 331, column: 75)
!5351 = !DILocation(line: 335, column: 3, scope: !5350)
!5352 = !DILocation(line: 336, column: 2, scope: !5350)
!5353 = !DILocation(line: 339, column: 6, scope: !5354)
!5354 = distinct !DILexicalBlock(scope: !5295, file: !1, line: 339, column: 6)
!5355 = !DILocation(line: 339, column: 17, scope: !5354)
!5356 = !DILocation(line: 339, column: 6, scope: !5295)
!5357 = !DILocation(line: 340, column: 19, scope: !5354)
!5358 = !DILocation(line: 340, column: 30, scope: !5354)
!5359 = !DILocation(line: 340, column: 3, scope: !5354)
!5360 = !DILocation(line: 341, column: 16, scope: !5295)
!5361 = !DILocation(line: 341, column: 21, scope: !5295)
!5362 = !DILocation(line: 341, column: 2, scope: !5295)
!5363 = !DILocation(line: 342, column: 1, scope: !5295)
!5364 = distinct !DISubprogram(name: "drm_legacy_lock_master_cleanup", scope: !4933, file: !4933, line: 205, type: !5365, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5365 = !DISubroutineType(types: !5366)
!5366 = !{null, !3202, !3196}
!5367 = !DILocalVariable(name: "dev", arg: 1, scope: !5364, file: !4933, line: 205, type: !3202)
!5368 = !DILocation(line: 205, column: 70, scope: !5364)
!5369 = !DILocalVariable(name: "master", arg: 2, scope: !5364, file: !4933, line: 205, type: !3196)
!5370 = !DILocation(line: 205, column: 94, scope: !5364)
!5371 = !DILocation(line: 205, column: 103, scope: !5364)
!5372 = distinct !DISubprogram(name: "drm_core_check_feature", scope: !184, file: !184, line: 690, type: !5373, scopeLine: 692, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5373 = !DISubroutineType(types: !5374)
!5374 = !{!695, !5375, !183}
!5375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5376, size: 64)
!5376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3203)
!5377 = !DILocalVariable(name: "dev", arg: 1, scope: !5372, file: !184, line: 690, type: !5375)
!5378 = !DILocation(line: 690, column: 68, scope: !5372)
!5379 = !DILocalVariable(name: "feature", arg: 2, scope: !5372, file: !184, line: 691, type: !183)
!5380 = !DILocation(line: 691, column: 32, scope: !5372)
!5381 = !DILocation(line: 693, column: 37, scope: !5372)
!5382 = !DILocation(line: 693, column: 42, scope: !5372)
!5383 = !DILocation(line: 693, column: 9, scope: !5372)
!5384 = !DILocation(line: 693, column: 2, scope: !5372)
!5385 = distinct !DISubprogram(name: "drm_master_put", scope: !1, file: !1, line: 397, type: !5386, scopeLine: 398, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5386 = !DISubroutineType(types: !5387)
!5387 = !{null, !5388}
!5388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!5389 = !DILocalVariable(name: "master", arg: 1, scope: !5385, file: !1, line: 397, type: !5388)
!5390 = !DILocation(line: 397, column: 41, scope: !5385)
!5391 = !DILocation(line: 399, column: 14, scope: !5385)
!5392 = !DILocation(line: 399, column: 13, scope: !5385)
!5393 = !DILocation(line: 399, column: 23, scope: !5385)
!5394 = !DILocation(line: 399, column: 2, scope: !5385)
!5395 = !DILocation(line: 400, column: 3, scope: !5385)
!5396 = !DILocation(line: 400, column: 10, scope: !5385)
!5397 = !DILocation(line: 401, column: 1, scope: !5385)
!5398 = distinct !DISubprogram(name: "kref_get", scope: !1211, file: !1211, line: 43, type: !4923, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5399 = !DILocalVariable(name: "kref", arg: 1, scope: !5398, file: !1211, line: 43, type: !4925)
!5400 = !DILocation(line: 43, column: 42, scope: !5398)
!5401 = !DILocation(line: 45, column: 16, scope: !5398)
!5402 = !DILocation(line: 45, column: 22, scope: !5398)
!5403 = !DILocation(line: 45, column: 2, scope: !5398)
!5404 = !DILocation(line: 46, column: 1, scope: !5398)
!5405 = distinct !DISubprogram(name: "kref_put", scope: !1211, file: !1211, line: 62, type: !5406, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5406 = !DISubroutineType(types: !5407)
!5407 = !{!107, !4925, !5408}
!5408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4923, size: 64)
!5409 = !DILocalVariable(name: "kref", arg: 1, scope: !5405, file: !1211, line: 62, type: !4925)
!5410 = !DILocation(line: 62, column: 41, scope: !5405)
!5411 = !DILocalVariable(name: "release", arg: 2, scope: !5405, file: !1211, line: 62, type: !5408)
!5412 = !DILocation(line: 62, column: 54, scope: !5405)
!5413 = !DILocation(line: 64, column: 29, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5405, file: !1211, line: 64, column: 6)
!5415 = !DILocation(line: 64, column: 35, scope: !5414)
!5416 = !DILocation(line: 64, column: 6, scope: !5414)
!5417 = !DILocation(line: 64, column: 6, scope: !5405)
!5418 = !DILocation(line: 65, column: 3, scope: !5419)
!5419 = distinct !DILexicalBlock(scope: !5414, file: !1211, line: 64, column: 46)
!5420 = !DILocation(line: 65, column: 11, scope: !5419)
!5421 = !DILocation(line: 66, column: 3, scope: !5419)
!5422 = !DILocation(line: 68, column: 2, scope: !5405)
!5423 = !DILocation(line: 69, column: 1, scope: !5405)
!5424 = distinct !DISubprogram(name: "drm_master_destroy", scope: !1, file: !1, line: 373, type: !4923, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5425 = !DILocalVariable(name: "kref", arg: 1, scope: !5424, file: !1, line: 373, type: !4925)
!5426 = !DILocation(line: 373, column: 45, scope: !5424)
!5427 = !DILocalVariable(name: "master", scope: !5424, file: !1, line: 375, type: !3196)
!5428 = !DILocation(line: 375, column: 21, scope: !5424)
!5429 = !DILocalVariable(name: "__mptr", scope: !5430, file: !1, line: 375, type: !217)
!5430 = distinct !DILexicalBlock(scope: !5424, file: !1, line: 375, column: 30)
!5431 = !DILocation(line: 375, column: 30, scope: !5430)
!5432 = !DILocation(line: 375, column: 30, scope: !5433)
!5433 = distinct !DILexicalBlock(scope: !5430, file: !1, line: 375, column: 30)
!5434 = !DILocalVariable(name: "dev", scope: !5424, file: !1, line: 376, type: !3202)
!5435 = !DILocation(line: 376, column: 21, scope: !5424)
!5436 = !DILocation(line: 376, column: 27, scope: !5424)
!5437 = !DILocation(line: 376, column: 35, scope: !5424)
!5438 = !DILocation(line: 378, column: 29, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5424, file: !1, line: 378, column: 6)
!5440 = !DILocation(line: 378, column: 6, scope: !5439)
!5441 = !DILocation(line: 378, column: 6, scope: !5424)
!5442 = !DILocation(line: 379, column: 21, scope: !5439)
!5443 = !DILocation(line: 379, column: 3, scope: !5439)
!5444 = !DILocation(line: 381, column: 27, scope: !5424)
!5445 = !DILocation(line: 381, column: 32, scope: !5424)
!5446 = !DILocation(line: 381, column: 2, scope: !5424)
!5447 = !DILocation(line: 383, column: 15, scope: !5424)
!5448 = !DILocation(line: 383, column: 23, scope: !5424)
!5449 = !DILocation(line: 383, column: 2, scope: !5424)
!5450 = !DILocation(line: 384, column: 15, scope: !5424)
!5451 = !DILocation(line: 384, column: 23, scope: !5424)
!5452 = !DILocation(line: 384, column: 2, scope: !5424)
!5453 = !DILocation(line: 385, column: 15, scope: !5424)
!5454 = !DILocation(line: 385, column: 23, scope: !5424)
!5455 = !DILocation(line: 385, column: 2, scope: !5424)
!5456 = !DILocation(line: 387, column: 8, scope: !5424)
!5457 = !DILocation(line: 387, column: 16, scope: !5424)
!5458 = !DILocation(line: 387, column: 2, scope: !5424)
!5459 = !DILocation(line: 388, column: 8, scope: !5424)
!5460 = !DILocation(line: 388, column: 2, scope: !5424)
!5461 = !DILocation(line: 389, column: 1, scope: !5424)
!5462 = distinct !DISubprogram(name: "drm_master_internal_acquire", scope: !1, file: !1, line: 405, type: !5463, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5463 = !DISubroutineType(types: !5464)
!5464 = !{!695, !3202}
!5465 = !DILocalVariable(name: "dev", arg: 1, scope: !5462, file: !1, line: 405, type: !3202)
!5466 = !DILocation(line: 405, column: 53, scope: !5462)
!5467 = !DILocation(line: 407, column: 14, scope: !5462)
!5468 = !DILocation(line: 407, column: 19, scope: !5462)
!5469 = !DILocation(line: 407, column: 2, scope: !5462)
!5470 = !DILocation(line: 408, column: 6, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !5462, file: !1, line: 408, column: 6)
!5472 = !DILocation(line: 408, column: 11, scope: !5471)
!5473 = !DILocation(line: 408, column: 6, scope: !5462)
!5474 = !DILocation(line: 409, column: 17, scope: !5475)
!5475 = distinct !DILexicalBlock(scope: !5471, file: !1, line: 408, column: 19)
!5476 = !DILocation(line: 409, column: 22, scope: !5475)
!5477 = !DILocation(line: 409, column: 3, scope: !5475)
!5478 = !DILocation(line: 410, column: 3, scope: !5475)
!5479 = !DILocation(line: 413, column: 2, scope: !5462)
!5480 = !DILocation(line: 414, column: 1, scope: !5462)
!5481 = distinct !DISubprogram(name: "drm_master_internal_release", scope: !1, file: !1, line: 418, type: !3991, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5482 = !DILocalVariable(name: "dev", arg: 1, scope: !5481, file: !1, line: 418, type: !3202)
!5483 = !DILocation(line: 418, column: 53, scope: !5481)
!5484 = !DILocation(line: 420, column: 16, scope: !5481)
!5485 = !DILocation(line: 420, column: 21, scope: !5481)
!5486 = !DILocation(line: 420, column: 2, scope: !5481)
!5487 = !DILocation(line: 421, column: 1, scope: !5481)
!5488 = distinct !DISubprogram(name: "get_order", scope: !5489, file: !5489, line: 29, type: !5490, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5489 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5490 = !DISubroutineType(types: !5491)
!5491 = !{!107, !237}
!5492 = !DILocalVariable(name: "x", arg: 1, scope: !5493, file: !5494, line: 366, type: !287)
!5493 = distinct !DISubprogram(name: "fls64", scope: !5494, file: !5494, line: 366, type: !5495, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5494 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5495 = !DISubroutineType(types: !5496)
!5496 = !{!107, !287}
!5497 = !DILocation(line: 366, column: 40, scope: !5493, inlinedAt: !5498)
!5498 = distinct !DILocation(line: 46, column: 9, scope: !5488)
!5499 = !DILocalVariable(name: "bitpos", scope: !5493, file: !5494, line: 368, type: !107)
!5500 = !DILocation(line: 368, column: 6, scope: !5493, inlinedAt: !5498)
!5501 = !DILocalVariable(name: "size", arg: 1, scope: !5488, file: !5489, line: 29, type: !237)
!5502 = !DILocation(line: 29, column: 63, scope: !5488)
!5503 = !DILocation(line: 31, column: 27, scope: !5504)
!5504 = distinct !DILexicalBlock(scope: !5488, file: !5489, line: 31, column: 6)
!5505 = !DILocation(line: 31, column: 6, scope: !5504)
!5506 = !DILocation(line: 31, column: 6, scope: !5488)
!5507 = !DILocation(line: 32, column: 8, scope: !5508)
!5508 = distinct !DILexicalBlock(scope: !5509, file: !5489, line: 32, column: 7)
!5509 = distinct !DILexicalBlock(scope: !5504, file: !5489, line: 31, column: 34)
!5510 = !DILocation(line: 32, column: 7, scope: !5509)
!5511 = !DILocation(line: 33, column: 4, scope: !5508)
!5512 = !DILocation(line: 35, column: 7, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5509, file: !5489, line: 35, column: 7)
!5514 = !DILocation(line: 35, column: 12, scope: !5513)
!5515 = !DILocation(line: 35, column: 7, scope: !5509)
!5516 = !DILocation(line: 36, column: 4, scope: !5513)
!5517 = !DILocation(line: 38, column: 10, scope: !5509)
!5518 = !DILocation(line: 38, column: 28, scope: !5509)
!5519 = !DILocation(line: 38, column: 41, scope: !5509)
!5520 = !DILocation(line: 38, column: 3, scope: !5509)
!5521 = !DILocation(line: 41, column: 6, scope: !5488)
!5522 = !DILocation(line: 42, column: 7, scope: !5488)
!5523 = !DILocation(line: 46, column: 15, scope: !5488)
!5524 = !DILocation(line: 374, column: 2, scope: !5493, inlinedAt: !5498)
!5525 = !DILocation(line: 376, column: 14, scope: !5493, inlinedAt: !5498)
!5526 = !{i32 311944}
!5527 = !DILocation(line: 377, column: 9, scope: !5493, inlinedAt: !5498)
!5528 = !DILocation(line: 377, column: 16, scope: !5493, inlinedAt: !5498)
!5529 = !DILocation(line: 46, column: 2, scope: !5488)
!5530 = !DILocation(line: 48, column: 1, scope: !5488)
!5531 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5532, file: !5532, line: 30, type: !5533, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5532 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5533 = !DISubroutineType(types: !5534)
!5534 = !{!107, !286}
!5535 = !DILocation(line: 366, column: 40, scope: !5493, inlinedAt: !5536)
!5536 = distinct !DILocation(line: 32, column: 9, scope: !5531)
!5537 = !DILocation(line: 368, column: 6, scope: !5493, inlinedAt: !5536)
!5538 = !DILocalVariable(name: "n", arg: 1, scope: !5531, file: !5532, line: 30, type: !286)
!5539 = !DILocation(line: 30, column: 21, scope: !5531)
!5540 = !DILocation(line: 32, column: 15, scope: !5531)
!5541 = !DILocation(line: 374, column: 2, scope: !5493, inlinedAt: !5536)
!5542 = !DILocation(line: 376, column: 14, scope: !5493, inlinedAt: !5536)
!5543 = !DILocation(line: 377, column: 9, scope: !5493, inlinedAt: !5536)
!5544 = !DILocation(line: 377, column: 16, scope: !5493, inlinedAt: !5536)
!5545 = !DILocation(line: 32, column: 18, scope: !5531)
!5546 = !DILocation(line: 32, column: 2, scope: !5531)
!5547 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5548, file: !5548, line: 137, type: !5549, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5548 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5549 = !DISubroutineType(types: !5550)
!5550 = !{!217, !1231, !3015, !830, !215}
!5551 = !DILocalVariable(name: "s", arg: 1, scope: !5547, file: !5548, line: 137, type: !1231)
!5552 = !DILocation(line: 137, column: 54, scope: !5547)
!5553 = !DILocalVariable(name: "object", arg: 2, scope: !5547, file: !5548, line: 137, type: !3015)
!5554 = !DILocation(line: 137, column: 69, scope: !5547)
!5555 = !DILocalVariable(name: "size", arg: 3, scope: !5547, file: !5548, line: 138, type: !830)
!5556 = !DILocation(line: 138, column: 12, scope: !5547)
!5557 = !DILocalVariable(name: "flags", arg: 4, scope: !5547, file: !5548, line: 138, type: !215)
!5558 = !DILocation(line: 138, column: 24, scope: !5547)
!5559 = !DILocation(line: 140, column: 17, scope: !5547)
!5560 = !DILocation(line: 140, column: 2, scope: !5547)
!5561 = distinct !DISubprogram(name: "refcount_set", scope: !207, file: !207, line: 134, type: !5562, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5562 = !DISubroutineType(types: !5563)
!5563 = !{null, !5564, !107}
!5564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!5565 = !DILocalVariable(name: "v", arg: 1, scope: !5566, file: !5567, line: 39, type: !5570)
!5566 = distinct !DISubprogram(name: "arch_atomic_set", scope: !5567, file: !5567, line: 39, type: !5568, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5567 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!5568 = !DISubroutineType(types: !5569)
!5569 = !{null, !5570, !107}
!5570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!5571 = !DILocation(line: 39, column: 55, scope: !5566, inlinedAt: !5572)
!5572 = distinct !DILocation(line: 46, column: 2, scope: !5573, inlinedAt: !5575)
!5573 = distinct !DISubprogram(name: "atomic_set", scope: !5574, file: !5574, line: 43, type: !5568, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5574 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5575 = distinct !DILocation(line: 136, column: 2, scope: !5561)
!5576 = !DILocalVariable(name: "i", arg: 2, scope: !5566, file: !5567, line: 39, type: !107)
!5577 = !DILocation(line: 39, column: 62, scope: !5566, inlinedAt: !5572)
!5578 = !DILocalVariable(name: "v", arg: 1, scope: !5579, file: !5580, line: 84, type: !5583)
!5579 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5580, file: !5580, line: 84, type: !5581, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5580 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5581 = !DISubroutineType(types: !5582)
!5582 = !{null, !5583, !830}
!5583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5584, size: 64)
!5584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5585)
!5585 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5586 = !DILocation(line: 84, column: 74, scope: !5579, inlinedAt: !5587)
!5587 = distinct !DILocation(line: 45, column: 2, scope: !5573, inlinedAt: !5575)
!5588 = !DILocalVariable(name: "size", arg: 2, scope: !5579, file: !5580, line: 84, type: !830)
!5589 = !DILocation(line: 84, column: 84, scope: !5579, inlinedAt: !5587)
!5590 = !DILocalVariable(name: "v", arg: 1, scope: !5573, file: !5574, line: 43, type: !5570)
!5591 = !DILocation(line: 43, column: 22, scope: !5573, inlinedAt: !5575)
!5592 = !DILocalVariable(name: "i", arg: 2, scope: !5573, file: !5574, line: 43, type: !107)
!5593 = !DILocation(line: 43, column: 29, scope: !5573, inlinedAt: !5575)
!5594 = !DILocalVariable(name: "r", arg: 1, scope: !5561, file: !207, line: 134, type: !5564)
!5595 = !DILocation(line: 134, column: 45, scope: !5561)
!5596 = !DILocalVariable(name: "n", arg: 2, scope: !5561, file: !207, line: 134, type: !107)
!5597 = !DILocation(line: 134, column: 52, scope: !5561)
!5598 = !DILocation(line: 136, column: 14, scope: !5561)
!5599 = !DILocation(line: 136, column: 17, scope: !5561)
!5600 = !DILocation(line: 136, column: 23, scope: !5561)
!5601 = !DILocation(line: 45, column: 26, scope: !5573, inlinedAt: !5575)
!5602 = !DILocation(line: 86, column: 20, scope: !5579, inlinedAt: !5587)
!5603 = !DILocation(line: 86, column: 23, scope: !5579, inlinedAt: !5587)
!5604 = !DILocation(line: 86, column: 2, scope: !5579, inlinedAt: !5587)
!5605 = !DILocation(line: 87, column: 2, scope: !5579, inlinedAt: !5587)
!5606 = !DILocation(line: 46, column: 18, scope: !5573, inlinedAt: !5575)
!5607 = !DILocation(line: 46, column: 21, scope: !5573, inlinedAt: !5575)
!5608 = !DILocation(line: 41, column: 2, scope: !5609, inlinedAt: !5572)
!5609 = distinct !DILexicalBlock(scope: !5566, file: !5567, line: 41, column: 2)
!5610 = !DILocation(line: 137, column: 1, scope: !5561)
!5611 = distinct !DISubprogram(name: "kasan_check_write", scope: !5612, file: !5612, line: 38, type: !5613, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5612 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5613 = !DISubroutineType(types: !5614)
!5614 = !{!695, !5583, !5}
!5615 = !DILocalVariable(name: "p", arg: 1, scope: !5611, file: !5612, line: 38, type: !5583)
!5616 = !DILocation(line: 38, column: 59, scope: !5611)
!5617 = !DILocalVariable(name: "size", arg: 2, scope: !5611, file: !5612, line: 38, type: !5)
!5618 = !DILocation(line: 38, column: 75, scope: !5611)
!5619 = !DILocation(line: 40, column: 2, scope: !5611)
!5620 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5621, file: !5621, line: 178, type: !5622, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5621 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5622 = !DISubroutineType(types: !5623)
!5623 = !{null, !5583, !830, !107}
!5624 = !DILocalVariable(name: "ptr", arg: 1, scope: !5620, file: !5621, line: 178, type: !5583)
!5625 = !DILocation(line: 178, column: 60, scope: !5620)
!5626 = !DILocalVariable(name: "size", arg: 2, scope: !5620, file: !5621, line: 178, type: !830)
!5627 = !DILocation(line: 178, column: 72, scope: !5620)
!5628 = !DILocalVariable(name: "type", arg: 3, scope: !5620, file: !5621, line: 179, type: !107)
!5629 = !DILocation(line: 179, column: 15, scope: !5620)
!5630 = !DILocation(line: 179, column: 23, scope: !5620)
!5631 = distinct !DISubprogram(name: "idr_init_base", scope: !1216, file: !1216, line: 135, type: !5632, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5632 = !DISubroutineType(types: !5633)
!5633 = !{null, !4942, !107}
!5634 = !DILocalVariable(name: "idr", arg: 1, scope: !5631, file: !1216, line: 135, type: !4942)
!5635 = !DILocation(line: 135, column: 46, scope: !5631)
!5636 = !DILocalVariable(name: "base", arg: 2, scope: !5631, file: !1216, line: 135, type: !107)
!5637 = !DILocation(line: 135, column: 55, scope: !5631)
!5638 = !DILocation(line: 137, column: 2, scope: !5631)
!5639 = !DILocation(line: 138, column: 18, scope: !5631)
!5640 = !DILocation(line: 138, column: 2, scope: !5631)
!5641 = !DILocation(line: 138, column: 7, scope: !5631)
!5642 = !DILocation(line: 138, column: 16, scope: !5631)
!5643 = !DILocation(line: 139, column: 2, scope: !5631)
!5644 = !DILocation(line: 139, column: 7, scope: !5631)
!5645 = !DILocation(line: 139, column: 16, scope: !5631)
!5646 = !DILocation(line: 140, column: 1, scope: !5631)
!5647 = distinct !DISubprogram(name: "xa_init_flags", scope: !1220, file: !1220, line: 374, type: !5648, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5648 = !DISubroutineType(types: !5649)
!5649 = !{null, !5650, !215}
!5650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!5651 = !DILocalVariable(name: "lock", arg: 1, scope: !5652, file: !5653, line: 327, type: !2309)
!5652 = distinct !DISubprogram(name: "spinlock_check", scope: !5653, file: !5653, line: 327, type: !5654, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5653 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!5654 = !DISubroutineType(types: !5655)
!5655 = !{!5656, !2309}
!5656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!5657 = !DILocation(line: 327, column: 67, scope: !5652, inlinedAt: !5658)
!5658 = distinct !DILocation(line: 376, column: 2, scope: !5659)
!5659 = distinct !DILexicalBlock(scope: !5647, file: !1220, line: 376, column: 2)
!5660 = !DILocalVariable(name: "xa", arg: 1, scope: !5647, file: !1220, line: 374, type: !5650)
!5661 = !DILocation(line: 374, column: 49, scope: !5647)
!5662 = !DILocalVariable(name: "flags", arg: 2, scope: !5647, file: !1220, line: 374, type: !215)
!5663 = !DILocation(line: 374, column: 59, scope: !5647)
!5664 = !DILocation(line: 376, column: 2, scope: !5647)
!5665 = !DILocation(line: 376, column: 2, scope: !5659)
!5666 = !DILocation(line: 329, column: 10, scope: !5652, inlinedAt: !5658)
!5667 = !DILocation(line: 329, column: 16, scope: !5652, inlinedAt: !5658)
!5668 = !DILocation(line: 377, column: 17, scope: !5647)
!5669 = !DILocation(line: 377, column: 2, scope: !5647)
!5670 = !DILocation(line: 377, column: 6, scope: !5647)
!5671 = !DILocation(line: 377, column: 15, scope: !5647)
!5672 = !DILocation(line: 378, column: 2, scope: !5647)
!5673 = !DILocation(line: 378, column: 6, scope: !5647)
!5674 = !DILocation(line: 378, column: 14, scope: !5647)
!5675 = !DILocation(line: 379, column: 1, scope: !5647)
!5676 = distinct !DISubprogram(name: "task_pid", scope: !230, file: !230, line: 1368, type: !5677, scopeLine: 1369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5677 = !DISubroutineType(types: !5678)
!5678 = !{!1186, !228}
!5679 = !DILocalVariable(name: "task", arg: 1, scope: !5676, file: !230, line: 1368, type: !228)
!5680 = !DILocation(line: 1368, column: 56, scope: !5676)
!5681 = !DILocation(line: 1370, column: 9, scope: !5676)
!5682 = !DILocation(line: 1370, column: 15, scope: !5676)
!5683 = !DILocation(line: 1370, column: 2, scope: !5676)
!5684 = distinct !DISubprogram(name: "drm_core_check_all_features", scope: !184, file: !184, line: 672, type: !5685, scopeLine: 674, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5685 = !DISubroutineType(types: !5686)
!5686 = !{!695, !5375, !239}
!5687 = !DILocalVariable(name: "dev", arg: 1, scope: !5684, file: !184, line: 672, type: !5375)
!5688 = !DILocation(line: 672, column: 73, scope: !5684)
!5689 = !DILocalVariable(name: "features", arg: 2, scope: !5684, file: !184, line: 673, type: !239)
!5690 = !DILocation(line: 673, column: 17, scope: !5684)
!5691 = !DILocalVariable(name: "supported", scope: !5684, file: !184, line: 675, type: !239)
!5692 = !DILocation(line: 675, column: 6, scope: !5684)
!5693 = !DILocation(line: 675, column: 18, scope: !5684)
!5694 = !DILocation(line: 675, column: 23, scope: !5684)
!5695 = !DILocation(line: 675, column: 31, scope: !5684)
!5696 = !DILocation(line: 675, column: 49, scope: !5684)
!5697 = !DILocation(line: 675, column: 54, scope: !5684)
!5698 = !DILocation(line: 675, column: 47, scope: !5684)
!5699 = !DILocation(line: 677, column: 9, scope: !5684)
!5700 = !DILocation(line: 677, column: 18, scope: !5684)
!5701 = !DILocation(line: 677, column: 22, scope: !5684)
!5702 = !DILocation(line: 677, column: 34, scope: !5684)
!5703 = !DILocation(line: 677, column: 32, scope: !5684)
!5704 = !DILocation(line: 677, column: 47, scope: !5684)
!5705 = !DILocation(line: 677, column: 44, scope: !5684)
!5706 = !DILocation(line: 0, scope: !5684)
!5707 = !DILocation(line: 677, column: 2, scope: !5684)
!5708 = distinct !DISubprogram(name: "refcount_inc", scope: !207, file: !207, line: 265, type: !5709, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5709 = !DISubroutineType(types: !5710)
!5710 = !{null, !5564}
!5711 = !DILocalVariable(name: "r", arg: 1, scope: !5708, file: !207, line: 265, type: !5564)
!5712 = !DILocation(line: 265, column: 45, scope: !5708)
!5713 = !DILocation(line: 267, column: 17, scope: !5708)
!5714 = !DILocation(line: 267, column: 2, scope: !5708)
!5715 = !DILocation(line: 268, column: 1, scope: !5708)
!5716 = distinct !DISubprogram(name: "__refcount_inc", scope: !207, file: !207, line: 248, type: !5717, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5717 = !DISubroutineType(types: !5718)
!5718 = !{null, !5564, !818}
!5719 = !DILocalVariable(name: "r", arg: 1, scope: !5716, file: !207, line: 248, type: !5564)
!5720 = !DILocation(line: 248, column: 47, scope: !5716)
!5721 = !DILocalVariable(name: "oldp", arg: 2, scope: !5716, file: !207, line: 248, type: !818)
!5722 = !DILocation(line: 248, column: 55, scope: !5716)
!5723 = !DILocation(line: 250, column: 20, scope: !5716)
!5724 = !DILocation(line: 250, column: 23, scope: !5716)
!5725 = !DILocation(line: 250, column: 2, scope: !5716)
!5726 = !DILocation(line: 251, column: 1, scope: !5716)
!5727 = distinct !DISubprogram(name: "__refcount_add", scope: !207, file: !207, line: 191, type: !5728, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5728 = !DISubroutineType(types: !5729)
!5729 = !{null, !107, !5564, !818}
!5730 = !DILocalVariable(name: "i", arg: 1, scope: !5731, file: !5567, line: 182, type: !107)
!5731 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !5567, file: !5567, line: 182, type: !5732, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5732 = !DISubroutineType(types: !5733)
!5733 = !{!107, !107, !5570}
!5734 = !DILocation(line: 182, column: 54, scope: !5731, inlinedAt: !5735)
!5735 = distinct !DILocation(line: 143, column: 9, scope: !5736, inlinedAt: !5737)
!5736 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !5574, file: !5574, line: 140, type: !5732, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5737 = distinct !DILocation(line: 193, column: 12, scope: !5727)
!5738 = !DILocalVariable(name: "v", arg: 2, scope: !5731, file: !5567, line: 182, type: !5570)
!5739 = !DILocation(line: 182, column: 67, scope: !5731, inlinedAt: !5735)
!5740 = !DILocalVariable(name: "__ret", scope: !5741, file: !5567, line: 184, type: !107)
!5741 = distinct !DILexicalBlock(scope: !5731, file: !5567, line: 184, column: 9)
!5742 = !DILocation(line: 184, column: 9, scope: !5741, inlinedAt: !5735)
!5743 = !DILocalVariable(name: "v", arg: 1, scope: !5744, file: !5580, line: 99, type: !5583)
!5744 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5580, file: !5580, line: 99, type: !5581, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5745 = !DILocation(line: 99, column: 79, scope: !5744, inlinedAt: !5746)
!5746 = distinct !DILocation(line: 142, column: 2, scope: !5736, inlinedAt: !5737)
!5747 = !DILocalVariable(name: "size", arg: 2, scope: !5744, file: !5580, line: 99, type: !830)
!5748 = !DILocation(line: 99, column: 89, scope: !5744, inlinedAt: !5746)
!5749 = !DILocalVariable(name: "i", arg: 1, scope: !5736, file: !5574, line: 140, type: !107)
!5750 = !DILocation(line: 140, column: 30, scope: !5736, inlinedAt: !5737)
!5751 = !DILocalVariable(name: "v", arg: 2, scope: !5736, file: !5574, line: 140, type: !5570)
!5752 = !DILocation(line: 140, column: 43, scope: !5736, inlinedAt: !5737)
!5753 = !DILocalVariable(name: "i", arg: 1, scope: !5727, file: !207, line: 191, type: !107)
!5754 = !DILocation(line: 191, column: 39, scope: !5727)
!5755 = !DILocalVariable(name: "r", arg: 2, scope: !5727, file: !207, line: 191, type: !5564)
!5756 = !DILocation(line: 191, column: 54, scope: !5727)
!5757 = !DILocalVariable(name: "oldp", arg: 3, scope: !5727, file: !207, line: 191, type: !818)
!5758 = !DILocation(line: 191, column: 62, scope: !5727)
!5759 = !DILocalVariable(name: "old", scope: !5727, file: !207, line: 193, type: !107)
!5760 = !DILocation(line: 193, column: 6, scope: !5727)
!5761 = !DILocation(line: 193, column: 37, scope: !5727)
!5762 = !DILocation(line: 193, column: 41, scope: !5727)
!5763 = !DILocation(line: 193, column: 44, scope: !5727)
!5764 = !DILocation(line: 142, column: 31, scope: !5736, inlinedAt: !5737)
!5765 = !DILocation(line: 101, column: 20, scope: !5744, inlinedAt: !5746)
!5766 = !DILocation(line: 101, column: 23, scope: !5744, inlinedAt: !5746)
!5767 = !DILocation(line: 101, column: 2, scope: !5744, inlinedAt: !5746)
!5768 = !DILocation(line: 102, column: 2, scope: !5744, inlinedAt: !5746)
!5769 = !DILocation(line: 143, column: 39, scope: !5736, inlinedAt: !5737)
!5770 = !DILocation(line: 143, column: 42, scope: !5736, inlinedAt: !5737)
!5771 = !{i32 -2146444753}
!5772 = !DILocation(line: 195, column: 6, scope: !5773)
!5773 = distinct !DILexicalBlock(scope: !5727, file: !207, line: 195, column: 6)
!5774 = !DILocation(line: 195, column: 6, scope: !5727)
!5775 = !DILocation(line: 196, column: 11, scope: !5773)
!5776 = !DILocation(line: 196, column: 4, scope: !5773)
!5777 = !DILocation(line: 196, column: 9, scope: !5773)
!5778 = !DILocation(line: 196, column: 3, scope: !5773)
!5779 = !DILocation(line: 198, column: 6, scope: !5780)
!5780 = distinct !DILexicalBlock(scope: !5727, file: !207, line: 198, column: 6)
!5781 = !DILocation(line: 198, column: 6, scope: !5727)
!5782 = !DILocation(line: 199, column: 26, scope: !5780)
!5783 = !DILocation(line: 199, column: 3, scope: !5780)
!5784 = !DILocation(line: 200, column: 11, scope: !5785)
!5785 = distinct !DILexicalBlock(scope: !5780, file: !207, line: 200, column: 11)
!5786 = !DILocation(line: 200, column: 11, scope: !5780)
!5787 = !DILocation(line: 201, column: 26, scope: !5785)
!5788 = !DILocation(line: 201, column: 3, scope: !5785)
!5789 = !DILocation(line: 202, column: 1, scope: !5727)
!5790 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !207, file: !207, line: 331, type: !5791, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5791 = !DISubroutineType(types: !5792)
!5792 = !{!695, !5564}
!5793 = !DILocalVariable(name: "r", arg: 1, scope: !5790, file: !207, line: 331, type: !5564)
!5794 = !DILocation(line: 331, column: 67, scope: !5790)
!5795 = !DILocation(line: 333, column: 33, scope: !5790)
!5796 = !DILocation(line: 333, column: 9, scope: !5790)
!5797 = !DILocation(line: 333, column: 2, scope: !5790)
!5798 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !207, file: !207, line: 313, type: !5799, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5799 = !DISubroutineType(types: !5800)
!5800 = !{!695, !5564, !818}
!5801 = !DILocalVariable(name: "r", arg: 1, scope: !5798, file: !207, line: 313, type: !5564)
!5802 = !DILocation(line: 313, column: 69, scope: !5798)
!5803 = !DILocalVariable(name: "oldp", arg: 2, scope: !5798, file: !207, line: 313, type: !818)
!5804 = !DILocation(line: 313, column: 77, scope: !5798)
!5805 = !DILocation(line: 315, column: 36, scope: !5798)
!5806 = !DILocation(line: 315, column: 39, scope: !5798)
!5807 = !DILocation(line: 315, column: 9, scope: !5798)
!5808 = !DILocation(line: 315, column: 2, scope: !5798)
!5809 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !207, file: !207, line: 270, type: !5810, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5810 = !DISubroutineType(types: !5811)
!5811 = !{!695, !107, !5564, !818}
!5812 = !DILocalVariable(name: "i", arg: 1, scope: !5813, file: !5567, line: 188, type: !107)
!5813 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !5567, file: !5567, line: 188, type: !5732, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5814 = !DILocation(line: 188, column: 54, scope: !5813, inlinedAt: !5815)
!5815 = distinct !DILocation(line: 221, column: 9, scope: !5816, inlinedAt: !5817)
!5816 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !5574, file: !5574, line: 218, type: !5732, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5817 = distinct !DILocation(line: 272, column: 12, scope: !5809)
!5818 = !DILocalVariable(name: "v", arg: 2, scope: !5813, file: !5567, line: 188, type: !5570)
!5819 = !DILocation(line: 188, column: 67, scope: !5813, inlinedAt: !5815)
!5820 = !DILocalVariable(name: "__ret", scope: !5821, file: !5567, line: 190, type: !107)
!5821 = distinct !DILexicalBlock(scope: !5813, file: !5567, line: 190, column: 9)
!5822 = !DILocation(line: 190, column: 9, scope: !5821, inlinedAt: !5815)
!5823 = !DILocation(line: 99, column: 79, scope: !5744, inlinedAt: !5824)
!5824 = distinct !DILocation(line: 220, column: 2, scope: !5816, inlinedAt: !5817)
!5825 = !DILocation(line: 99, column: 89, scope: !5744, inlinedAt: !5824)
!5826 = !DILocalVariable(name: "i", arg: 1, scope: !5816, file: !5574, line: 218, type: !107)
!5827 = !DILocation(line: 218, column: 30, scope: !5816, inlinedAt: !5817)
!5828 = !DILocalVariable(name: "v", arg: 2, scope: !5816, file: !5574, line: 218, type: !5570)
!5829 = !DILocation(line: 218, column: 43, scope: !5816, inlinedAt: !5817)
!5830 = !DILocalVariable(name: "i", arg: 1, scope: !5809, file: !207, line: 270, type: !107)
!5831 = !DILocation(line: 270, column: 61, scope: !5809)
!5832 = !DILocalVariable(name: "r", arg: 2, scope: !5809, file: !207, line: 270, type: !5564)
!5833 = !DILocation(line: 270, column: 76, scope: !5809)
!5834 = !DILocalVariable(name: "oldp", arg: 3, scope: !5809, file: !207, line: 270, type: !818)
!5835 = !DILocation(line: 270, column: 84, scope: !5809)
!5836 = !DILocalVariable(name: "old", scope: !5809, file: !207, line: 272, type: !107)
!5837 = !DILocation(line: 272, column: 6, scope: !5809)
!5838 = !DILocation(line: 272, column: 37, scope: !5809)
!5839 = !DILocation(line: 272, column: 41, scope: !5809)
!5840 = !DILocation(line: 272, column: 44, scope: !5809)
!5841 = !DILocation(line: 220, column: 31, scope: !5816, inlinedAt: !5817)
!5842 = !DILocation(line: 101, column: 20, scope: !5744, inlinedAt: !5824)
!5843 = !DILocation(line: 101, column: 23, scope: !5744, inlinedAt: !5824)
!5844 = !DILocation(line: 101, column: 2, scope: !5744, inlinedAt: !5824)
!5845 = !DILocation(line: 102, column: 2, scope: !5744, inlinedAt: !5824)
!5846 = !DILocation(line: 221, column: 39, scope: !5816, inlinedAt: !5817)
!5847 = !DILocation(line: 221, column: 42, scope: !5816, inlinedAt: !5817)
!5848 = !{i32 -2146443401}
!5849 = !DILocation(line: 274, column: 6, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5809, file: !207, line: 274, column: 6)
!5851 = !DILocation(line: 274, column: 6, scope: !5809)
!5852 = !DILocation(line: 275, column: 11, scope: !5850)
!5853 = !DILocation(line: 275, column: 4, scope: !5850)
!5854 = !DILocation(line: 275, column: 9, scope: !5850)
!5855 = !DILocation(line: 275, column: 3, scope: !5850)
!5856 = !DILocation(line: 277, column: 6, scope: !5857)
!5857 = distinct !DILexicalBlock(scope: !5809, file: !207, line: 277, column: 6)
!5858 = !DILocation(line: 277, column: 13, scope: !5857)
!5859 = !DILocation(line: 277, column: 10, scope: !5857)
!5860 = !DILocation(line: 277, column: 6, scope: !5809)
!5861 = !DILocation(line: 278, column: 3, scope: !5862)
!5862 = distinct !DILexicalBlock(scope: !5857, file: !207, line: 277, column: 16)
!5863 = !{i32 -2144483762}
!5864 = !DILocation(line: 279, column: 3, scope: !5862)
!5865 = !DILocation(line: 282, column: 6, scope: !5866)
!5866 = distinct !DILexicalBlock(scope: !5809, file: !207, line: 282, column: 6)
!5867 = !DILocation(line: 282, column: 6, scope: !5809)
!5868 = !DILocation(line: 283, column: 26, scope: !5866)
!5869 = !DILocation(line: 283, column: 3, scope: !5866)
!5870 = !DILocation(line: 285, column: 2, scope: !5809)
!5871 = !DILocation(line: 286, column: 1, scope: !5809)
!5872 = distinct !DISubprogram(name: "drm_legacy_master_rmmaps", scope: !4933, file: !4933, line: 125, type: !5365, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !295)
!5873 = !DILocalVariable(name: "dev", arg: 1, scope: !5872, file: !4933, line: 125, type: !3202)
!5874 = !DILocation(line: 125, column: 64, scope: !5872)
!5875 = !DILocalVariable(name: "master", arg: 2, scope: !5872, file: !4933, line: 126, type: !3196)
!5876 = !DILocation(line: 126, column: 29, scope: !5872)
!5877 = !DILocation(line: 126, column: 38, scope: !5872)
