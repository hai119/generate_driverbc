; ModuleID = '../bcout/drivers/dma-buf/dma-resv.llvm.bc'
source_filename = "drivers/dma-buf/dma-resv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.ww_class = type { %struct.atomic64_t, %struct.lock_class_key, %struct.lock_class_key, i8*, i8*, i32 }
%struct.atomic64_t = type { i64 }
%struct.lock_class_key = type {}
%struct.kmem_cache = type opaque
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, %struct.dma_fence*, %struct.dma_resv_list* }
%struct.ww_mutex = type { %struct.mutex, %struct.ww_acquire_ctx* }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.ww_acquire_ctx = type { %struct.task_struct*, i64, i32, i16, i16 }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.55, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.0, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.0 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.1, %union.anon.35, %struct.atomic_t, [8 x i8] }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.9, %struct.list_head, %struct.list_head, %union.anon.10 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.4, i8* }
%union.anon.4 = type { i64 }
%struct.lockref = type { %union.anon.6 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.9 = type { %struct.list_head }
%union.anon.10 = type { %struct.hlist_node }
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
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.8, i32 }
%union.anon.8 = type { %struct.kuid_t }
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
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.62 = type { %struct.callback_head }
%union.anon.63 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.11 }
%union.anon.11 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.12 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.12 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.64 = type { %struct.pipe_inode_info* }
%struct.fsnotify_mark_connector = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.35 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
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
%struct.file = type { %union.anon.3, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.3 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.36 }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.22 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.22 = type { %struct.callback_head }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.14, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.15, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.16, %union.anon.20, %struct.key_restriction* }
%union.anon.14 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.15 = type { i64 }
%union.anon.16 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.17, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.17 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.20 = type { %union.key_payload }
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
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.41, %union.anon.42, i32 }
%struct.request_queue = type opaque
%union.anon.41 = type { %struct.list_head }
%union.anon.42 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.43 }
%struct.anon.43 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.47 }
%struct.anon.47 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.54, i32, [12 x i8] }
%union.anon.54 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.55 = type { %struct.callback_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.56, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.59 }
%union.anon.56 = type { %struct.anon.57 }
%struct.anon.57 = type { i64, i64 }
%union.anon.59 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.dma_fence = type { %struct.spinlock*, %struct.dma_fence_ops*, %union.anon.60, i64, i64, i64, %struct.kref, i32 }
%struct.dma_fence_ops = type { i8, i8* (%struct.dma_fence*)*, i8* (%struct.dma_fence*)*, i1 (%struct.dma_fence*)*, i1 (%struct.dma_fence*)*, i64 (%struct.dma_fence*, i1, i64)*, void (%struct.dma_fence*)*, void (%struct.dma_fence*, i8*, i32)*, void (%struct.dma_fence*, i8*, i32)* }
%union.anon.60 = type { %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.dma_resv_list = type { %struct.callback_head, i32, i32, [0 x %struct.dma_fence*] }

@.str = private unnamed_addr constant [29 x i8] c"reservation_ww_class_acquire\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"reservation_ww_class_mutex\00", align 1
@reservation_ww_class = dso_local global %struct.ww_class { %struct.atomic64_t zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), i32 1 }, align 8, !dbg !0
@.str.2 = private unnamed_addr constant [27 x i8] c"drivers/dma-buf/dma-resv.c\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dma_resv_init(%struct.dma_resv* %obj) #0 !dbg !251 {
entry:
  %obj.addr = alloca %struct.dma_resv*, align 8
  %____s = alloca %struct.seqcount_ww_mutex*, align 8
  store %struct.dma_resv* %obj, %struct.dma_resv** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_resv** %obj.addr, metadata !3046, metadata !DIExpression()), !dbg !3047
  %0 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !3048
  %lock = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %0, i32 0, i32 0, !dbg !3049
  call void @ww_mutex_init(%struct.ww_mutex* %lock, %struct.ww_class* @reservation_ww_class) #6, !dbg !3050
  br label %do.body, !dbg !3051

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.seqcount_ww_mutex** %____s, metadata !3052, metadata !DIExpression()), !dbg !3055
  %1 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !3055
  %seq = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %1, i32 0, i32 1, !dbg !3055
  store %struct.seqcount_ww_mutex* %seq, %struct.seqcount_ww_mutex** %____s, align 8, !dbg !3055
  %2 = load %struct.seqcount_ww_mutex*, %struct.seqcount_ww_mutex** %____s, align 8, !dbg !3055
  %seqcount = getelementptr inbounds %struct.seqcount_ww_mutex, %struct.seqcount_ww_mutex* %2, i32 0, i32 0, !dbg !3055
  call void @__seqcount_init(%struct.seqcount* %seqcount, i8* null, %struct.lock_class_key* null) #6, !dbg !3055
  br label %do.end, !dbg !3055

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !3056

do.body1:                                         ; preds = %do.end
  br label %do.body2, !dbg !3057

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !3059

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !3061

do.end4:                                          ; preds = %do.body3
  br label %do.body5, !dbg !3059

do.body5:                                         ; preds = %do.end4
  %3 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !3063
  %fence = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %3, i32 0, i32 3, !dbg !3063
  store volatile %struct.dma_resv_list* null, %struct.dma_resv_list** %fence, align 8, !dbg !3063
  br label %do.end6, !dbg !3063

do.end6:                                          ; preds = %do.body5
  br label %do.end7, !dbg !3059

do.end7:                                          ; preds = %do.end6
  br label %do.end8, !dbg !3057

do.end8:                                          ; preds = %do.end7
  br label %do.body9, !dbg !3065

do.body9:                                         ; preds = %do.end8
  br label %do.body10, !dbg !3066

do.body10:                                        ; preds = %do.body9
  br label %do.body11, !dbg !3068

do.body11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !3070

do.end12:                                         ; preds = %do.body11
  br label %do.body13, !dbg !3068

do.body13:                                        ; preds = %do.end12
  %4 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !3072
  %fence_excl = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %4, i32 0, i32 2, !dbg !3072
  store volatile %struct.dma_fence* null, %struct.dma_fence** %fence_excl, align 8, !dbg !3072
  br label %do.end14, !dbg !3072

do.end14:                                         ; preds = %do.body13
  br label %do.end15, !dbg !3068

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !3066

do.end16:                                         ; preds = %do.end15
  ret void, !dbg !3074
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ww_mutex_init(%struct.ww_mutex* %lock, %struct.ww_class* %ww_class) #0 !dbg !3075 {
entry:
  %lock.addr = alloca %struct.ww_mutex*, align 8
  %ww_class.addr = alloca %struct.ww_class*, align 8
  store %struct.ww_mutex* %lock, %struct.ww_mutex** %lock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ww_mutex** %lock.addr, metadata !3080, metadata !DIExpression()), !dbg !3081
  store %struct.ww_class* %ww_class, %struct.ww_class** %ww_class.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ww_class** %ww_class.addr, metadata !3082, metadata !DIExpression()), !dbg !3083
  %0 = load %struct.ww_mutex*, %struct.ww_mutex** %lock.addr, align 8, !dbg !3084
  %base = getelementptr inbounds %struct.ww_mutex, %struct.ww_mutex* %0, i32 0, i32 0, !dbg !3085
  %1 = load %struct.ww_class*, %struct.ww_class** %ww_class.addr, align 8, !dbg !3086
  %mutex_name = getelementptr inbounds %struct.ww_class, %struct.ww_class* %1, i32 0, i32 4, !dbg !3087
  %2 = load i8*, i8** %mutex_name, align 8, !dbg !3087
  %3 = load %struct.ww_class*, %struct.ww_class** %ww_class.addr, align 8, !dbg !3088
  %mutex_key = getelementptr inbounds %struct.ww_class, %struct.ww_class* %3, i32 0, i32 2, !dbg !3089
  call void @__mutex_init(%struct.mutex* %base, i8* %2, %struct.lock_class_key* %mutex_key) #6, !dbg !3090
  %4 = load %struct.ww_mutex*, %struct.ww_mutex** %lock.addr, align 8, !dbg !3091
  %ctx = getelementptr inbounds %struct.ww_mutex, %struct.ww_mutex* %4, i32 0, i32 1, !dbg !3092
  store %struct.ww_acquire_ctx* null, %struct.ww_acquire_ctx** %ctx, align 8, !dbg !3093
  ret void, !dbg !3094
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__seqcount_init(%struct.seqcount* %s, i8* %name, %struct.lock_class_key* %key) #0 !dbg !3095 {
entry:
  %s.addr = alloca %struct.seqcount*, align 8
  %name.addr = alloca i8*, align 8
  %key.addr = alloca %struct.lock_class_key*, align 8
  store %struct.seqcount* %s, %struct.seqcount** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.seqcount** %s.addr, metadata !3100, metadata !DIExpression()), !dbg !3101
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !3102, metadata !DIExpression()), !dbg !3103
  store %struct.lock_class_key* %key, %struct.lock_class_key** %key.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lock_class_key** %key.addr, metadata !3104, metadata !DIExpression()), !dbg !3105
  br label %do.body, !dbg !3106

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %name.addr, align 8, !dbg !3107
  %1 = load %struct.lock_class_key*, %struct.lock_class_key** %key.addr, align 8, !dbg !3107
  br label %do.end, !dbg !3107

do.end:                                           ; preds = %do.body
  %2 = load %struct.seqcount*, %struct.seqcount** %s.addr, align 8, !dbg !3109
  %sequence = getelementptr inbounds %struct.seqcount, %struct.seqcount* %2, i32 0, i32 0, !dbg !3110
  store i32 0, i32* %sequence, align 4, !dbg !3111
  ret void, !dbg !3112
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dma_resv_fini(%struct.dma_resv* %obj) #0 !dbg !3113 {
entry:
  %obj.addr = alloca %struct.dma_resv*, align 8
  %fobj = alloca %struct.dma_resv_list*, align 8
  %excl = alloca %struct.dma_fence*, align 8
  %tmp = alloca %struct.dma_fence*, align 8
  %tmp3 = alloca %struct.dma_resv_list*, align 8
  store %struct.dma_resv* %obj, %struct.dma_resv** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_resv** %obj.addr, metadata !3114, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.declare(metadata %struct.dma_resv_list** %fobj, metadata !3116, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %excl, metadata !3118, metadata !DIExpression()), !dbg !3119
  br label %do.body, !dbg !3120

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3122

do.end:                                           ; preds = %do.body
  %0 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !3120
  %fence_excl = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %0, i32 0, i32 2, !dbg !3120
  %1 = load %struct.dma_fence*, %struct.dma_fence** %fence_excl, align 8, !dbg !3120
  store %struct.dma_fence* %1, %struct.dma_fence** %tmp, align 8, !dbg !3122
  %2 = load %struct.dma_fence*, %struct.dma_fence** %tmp, align 8, !dbg !3120
  store %struct.dma_fence* %2, %struct.dma_fence** %excl, align 8, !dbg !3124
  %3 = load %struct.dma_fence*, %struct.dma_fence** %excl, align 8, !dbg !3125
  %tobool = icmp ne %struct.dma_fence* %3, null, !dbg !3125
  br i1 %tobool, label %if.then, label %if.end, !dbg !3127

if.then:                                          ; preds = %do.end
  %4 = load %struct.dma_fence*, %struct.dma_fence** %excl, align 8, !dbg !3128
  call void @dma_fence_put(%struct.dma_fence* %4) #6, !dbg !3129
  br label %if.end, !dbg !3129

if.end:                                           ; preds = %if.then, %do.end
  br label %do.body1, !dbg !3130

do.body1:                                         ; preds = %if.end
  br label %do.end2, !dbg !3132

do.end2:                                          ; preds = %do.body1
  %5 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !3130
  %fence = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %5, i32 0, i32 3, !dbg !3130
  %6 = load %struct.dma_resv_list*, %struct.dma_resv_list** %fence, align 8, !dbg !3130
  store %struct.dma_resv_list* %6, %struct.dma_resv_list** %tmp3, align 8, !dbg !3132
  %7 = load %struct.dma_resv_list*, %struct.dma_resv_list** %tmp3, align 8, !dbg !3130
  store %struct.dma_resv_list* %7, %struct.dma_resv_list** %fobj, align 8, !dbg !3134
  %8 = load %struct.dma_resv_list*, %struct.dma_resv_list** %fobj, align 8, !dbg !3135
  call void @dma_resv_list_free(%struct.dma_resv_list* %8) #6, !dbg !3136
  %9 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !3137
  %lock = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %9, i32 0, i32 0, !dbg !3138
  call void @ww_mutex_destroy(%struct.ww_mutex* %lock) #6, !dbg !3139
  ret void, !dbg !3140
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dma_fence_put(%struct.dma_fence* %fence) #0 !dbg !3141 {
entry:
  %fence.addr = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !3142, metadata !DIExpression()), !dbg !3143
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !3144
  %tobool = icmp ne %struct.dma_fence* %0, null, !dbg !3144
  br i1 %tobool, label %if.then, label %if.end, !dbg !3146

if.then:                                          ; preds = %entry
  %1 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !3147
  %refcount = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %1, i32 0, i32 6, !dbg !3148
  %call = call i32 @kref_put(%struct.kref* %refcount, void (%struct.kref*)* @dma_fence_release) #6, !dbg !3149
  br label %if.end, !dbg !3149

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3150
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dma_resv_list_free(%struct.dma_resv_list* %list) #0 !dbg !3151 {
entry:
  %list.addr = alloca %struct.dma_resv_list*, align 8
  %i = alloca i32, align 4
  %tmp = alloca %struct.dma_fence*, align 8
  %___p = alloca %struct.dma_resv_list*, align 8
  store %struct.dma_resv_list* %list, %struct.dma_resv_list** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_resv_list** %list.addr, metadata !3154, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3156, metadata !DIExpression()), !dbg !3157
  %0 = load %struct.dma_resv_list*, %struct.dma_resv_list** %list.addr, align 8, !dbg !3158
  %tobool = icmp ne %struct.dma_resv_list* %0, null, !dbg !3158
  br i1 %tobool, label %if.end, label %if.then, !dbg !3160

if.then:                                          ; preds = %entry
  br label %do.end9, !dbg !3161

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !3162
  br label %for.cond, !dbg !3164

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4, !dbg !3165
  %2 = load %struct.dma_resv_list*, %struct.dma_resv_list** %list.addr, align 8, !dbg !3167
  %shared_count = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %2, i32 0, i32 1, !dbg !3168
  %3 = load i32, i32* %shared_count, align 8, !dbg !3168
  %cmp = icmp ult i32 %1, %3, !dbg !3169
  br i1 %cmp, label %for.body, label %for.end, !dbg !3170

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !3171

do.body:                                          ; preds = %for.body
  br label %do.end, !dbg !3173

do.end:                                           ; preds = %do.body
  %4 = load %struct.dma_resv_list*, %struct.dma_resv_list** %list.addr, align 8, !dbg !3171
  %shared = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %4, i32 0, i32 3, !dbg !3171
  %5 = load i32, i32* %i, align 4, !dbg !3171
  %idxprom = zext i32 %5 to i64, !dbg !3171
  %arrayidx = getelementptr [0 x %struct.dma_fence*], [0 x %struct.dma_fence*]* %shared, i64 0, i64 %idxprom, !dbg !3171
  %6 = load %struct.dma_fence*, %struct.dma_fence** %arrayidx, align 8, !dbg !3171
  store %struct.dma_fence* %6, %struct.dma_fence** %tmp, align 8, !dbg !3173
  %7 = load %struct.dma_fence*, %struct.dma_fence** %tmp, align 8, !dbg !3171
  call void @dma_fence_put(%struct.dma_fence* %7) #6, !dbg !3175
  br label %for.inc, !dbg !3175

for.inc:                                          ; preds = %do.end
  %8 = load i32, i32* %i, align 4, !dbg !3176
  %inc = add i32 %8, 1, !dbg !3176
  store i32 %inc, i32* %i, align 4, !dbg !3176
  br label %for.cond, !dbg !3177, !llvm.loop !3178

for.end:                                          ; preds = %for.cond
  br label %do.body1, !dbg !3180

do.body1:                                         ; preds = %for.end
  call void @llvm.dbg.declare(metadata %struct.dma_resv_list** %___p, metadata !3181, metadata !DIExpression()), !dbg !3183
  %9 = load %struct.dma_resv_list*, %struct.dma_resv_list** %list.addr, align 8, !dbg !3183
  store %struct.dma_resv_list* %9, %struct.dma_resv_list** %___p, align 8, !dbg !3183
  %10 = load %struct.dma_resv_list*, %struct.dma_resv_list** %___p, align 8, !dbg !3184
  %tobool2 = icmp ne %struct.dma_resv_list* %10, null, !dbg !3184
  br i1 %tobool2, label %if.then3, label %if.end8, !dbg !3183

if.then3:                                         ; preds = %do.body1
  br label %do.body4, !dbg !3184

do.body4:                                         ; preds = %if.then3
  br label %do.body5, !dbg !3186

do.body5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !3188

do.end6:                                          ; preds = %do.body5
  %11 = load %struct.dma_resv_list*, %struct.dma_resv_list** %___p, align 8, !dbg !3186
  %rcu = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %11, i32 0, i32 0, !dbg !3186
  call void @kvfree_call_rcu(%struct.callback_head* %rcu, void (%struct.callback_head*)* null) #6, !dbg !3186
  br label %do.end7, !dbg !3186

do.end7:                                          ; preds = %do.end6
  br label %if.end8, !dbg !3186

if.end8:                                          ; preds = %do.end7, %do.body1
  br label %do.end9, !dbg !3183

do.end9:                                          ; preds = %if.then, %if.end8
  ret void, !dbg !3190
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ww_mutex_destroy(%struct.ww_mutex* %lock) #0 !dbg !3191 {
entry:
  %lock.addr = alloca %struct.ww_mutex*, align 8
  store %struct.ww_mutex* %lock, %struct.ww_mutex** %lock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ww_mutex** %lock.addr, metadata !3194, metadata !DIExpression()), !dbg !3195
  %0 = load %struct.ww_mutex*, %struct.ww_mutex** %lock.addr, align 8, !dbg !3196
  %base = getelementptr inbounds %struct.ww_mutex, %struct.ww_mutex* %0, i32 0, i32 0, !dbg !3197
  call void @mutex_destroy(%struct.mutex* %base) #6, !dbg !3198
  ret void, !dbg !3199
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dma_resv_reserve_shared(%struct.dma_resv* %obj, i32 %num_fences) #0 !dbg !3200 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct.dma_resv*, align 8
  %num_fences.addr = alloca i32, align 4
  %old = alloca %struct.dma_resv_list*, align 8
  %new = alloca %struct.dma_resv_list*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %max = alloca i32, align 4
  %__UNIQUE_ID___x229 = alloca i32, align 4
  %__UNIQUE_ID___y230 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %fence = alloca %struct.dma_fence*, align 8
  %tmp23 = alloca %struct.dma_fence*, align 8
  %_r_a_p__v = alloca i64, align 8
  %fence83 = alloca %struct.dma_fence*, align 8
  %tmp86 = alloca %struct.dma_fence*, align 8
  %___p = alloca %struct.dma_resv_list*, align 8
  store %struct.dma_resv* %obj, %struct.dma_resv** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_resv** %obj.addr, metadata !3203, metadata !DIExpression()), !dbg !3204
  store i32 %num_fences, i32* %num_fences.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_fences.addr, metadata !3205, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.declare(metadata %struct.dma_resv_list** %old, metadata !3207, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.declare(metadata %struct.dma_resv_list** %new, metadata !3209, metadata !DIExpression()), !dbg !3210
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3211, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.declare(metadata i32* %j, metadata !3213, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.declare(metadata i32* %k, metadata !3215, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.declare(metadata i32* %max, metadata !3217, metadata !DIExpression()), !dbg !3218
  br label %do.body, !dbg !3219

do.body:                                          ; preds = %entry
  %0 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !3220
  %lock = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %0, i32 0, i32 0, !dbg !3220
  %base = getelementptr inbounds %struct.ww_mutex, %struct.ww_mutex* %lock, i32 0, i32 0, !dbg !3220
  br label %do.end, !dbg !3220

do.end:                                           ; preds = %do.body
  %1 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !3222
  %call = call %struct.dma_resv_list* @dma_resv_get_list(%struct.dma_resv* %1) #6, !dbg !3223
  store %struct.dma_resv_list* %call, %struct.dma_resv_list** %old, align 8, !dbg !3224
  %2 = load %struct.dma_resv_list*, %struct.dma_resv_list** %old, align 8, !dbg !3225
  %tobool = icmp ne %struct.dma_resv_list* %2, null, !dbg !3225
  br i1 %tobool, label %land.lhs.true, label %if.else8, !dbg !3227

land.lhs.true:                                    ; preds = %do.end
  %3 = load %struct.dma_resv_list*, %struct.dma_resv_list** %old, align 8, !dbg !3228
  %shared_max = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %3, i32 0, i32 2, !dbg !3229
  %4 = load i32, i32* %shared_max, align 4, !dbg !3229
  %tobool1 = icmp ne i32 %4, 0, !dbg !3228
  br i1 %tobool1, label %if.then, label %if.else8, !dbg !3230

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.dma_resv_list*, %struct.dma_resv_list** %old, align 8, !dbg !3231
  %shared_count = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %5, i32 0, i32 1, !dbg !3234
  %6 = load i32, i32* %shared_count, align 8, !dbg !3234
  %7 = load i32, i32* %num_fences.addr, align 4, !dbg !3235
  %add = add i32 %6, %7, !dbg !3236
  %8 = load %struct.dma_resv_list*, %struct.dma_resv_list** %old, align 8, !dbg !3237
  %shared_max2 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %8, i32 0, i32 2, !dbg !3238
  %9 = load i32, i32* %shared_max2, align 4, !dbg !3238
  %cmp = icmp ule i32 %add, %9, !dbg !3239
  br i1 %cmp, label %if.then3, label %if.else, !dbg !3240

if.then3:                                         ; preds = %if.then
  store i32 0, i32* %retval, align 4, !dbg !3241
  br label %return, !dbg !3241

if.else:                                          ; preds = %if.then
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x229, metadata !3242, metadata !DIExpression()), !dbg !3244
  %10 = load %struct.dma_resv_list*, %struct.dma_resv_list** %old, align 8, !dbg !3244
  %shared_count4 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %10, i32 0, i32 1, !dbg !3244
  %11 = load i32, i32* %shared_count4, align 8, !dbg !3244
  %12 = load i32, i32* %num_fences.addr, align 4, !dbg !3244
  %add5 = add i32 %11, %12, !dbg !3244
  store i32 %add5, i32* %__UNIQUE_ID___x229, align 4, !dbg !3244
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y230, metadata !3245, metadata !DIExpression()), !dbg !3244
  %13 = load %struct.dma_resv_list*, %struct.dma_resv_list** %old, align 8, !dbg !3244
  %shared_max6 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %13, i32 0, i32 2, !dbg !3244
  %14 = load i32, i32* %shared_max6, align 4, !dbg !3244
  %mul = mul i32 %14, 2, !dbg !3244
  store i32 %mul, i32* %__UNIQUE_ID___y230, align 4, !dbg !3244
  %15 = load i32, i32* %__UNIQUE_ID___x229, align 4, !dbg !3244
  %16 = load i32, i32* %__UNIQUE_ID___y230, align 4, !dbg !3244
  %cmp7 = icmp ugt i32 %15, %16, !dbg !3244
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !3244

cond.true:                                        ; preds = %if.else
  %17 = load i32, i32* %__UNIQUE_ID___x229, align 4, !dbg !3244
  br label %cond.end, !dbg !3244

cond.false:                                       ; preds = %if.else
  %18 = load i32, i32* %__UNIQUE_ID___y230, align 4, !dbg !3244
  br label %cond.end, !dbg !3244

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ %18, %cond.false ], !dbg !3244
  store i32 %cond, i32* %tmp, align 4, !dbg !3244
  %19 = load i32, i32* %tmp, align 4, !dbg !3244
  store i32 %19, i32* %max, align 4, !dbg !3246
  br label %if.end

if.end:                                           ; preds = %cond.end
  br label %if.end9, !dbg !3247

if.else8:                                         ; preds = %land.lhs.true, %do.end
  store i32 4, i32* %max, align 4, !dbg !3248
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %if.end
  %20 = load i32, i32* %max, align 4, !dbg !3250
  %call10 = call %struct.dma_resv_list* @dma_resv_list_alloc(i32 %20) #6, !dbg !3251
  store %struct.dma_resv_list* %call10, %struct.dma_resv_list** %new, align 8, !dbg !3252
  %21 = load %struct.dma_resv_list*, %struct.dma_resv_list** %new, align 8, !dbg !3253
  %tobool11 = icmp ne %struct.dma_resv_list* %21, null, !dbg !3253
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !3255

if.then12:                                        ; preds = %if.end9
  store i32 -12, i32* %retval, align 4, !dbg !3256
  br label %return, !dbg !3256

if.end13:                                         ; preds = %if.end9
  store i32 0, i32* %i, align 4, !dbg !3257
  store i32 0, i32* %j, align 4, !dbg !3259
  %22 = load i32, i32* %max, align 4, !dbg !3260
  store i32 %22, i32* %k, align 4, !dbg !3261
  br label %for.cond, !dbg !3262

for.cond:                                         ; preds = %for.inc, %if.end13
  %23 = load i32, i32* %i, align 4, !dbg !3263
  %24 = load %struct.dma_resv_list*, %struct.dma_resv_list** %old, align 8, !dbg !3265
  %tobool14 = icmp ne %struct.dma_resv_list* %24, null, !dbg !3265
  br i1 %tobool14, label %cond.true15, label %cond.false17, !dbg !3265

cond.true15:                                      ; preds = %for.cond
  %25 = load %struct.dma_resv_list*, %struct.dma_resv_list** %old, align 8, !dbg !3266
  %shared_count16 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %25, i32 0, i32 1, !dbg !3267
  %26 = load i32, i32* %shared_count16, align 8, !dbg !3267
  br label %cond.end18, !dbg !3265

cond.false17:                                     ; preds = %for.cond
  br label %cond.end18, !dbg !3265

cond.end18:                                       ; preds = %cond.false17, %cond.true15
  %cond19 = phi i32 [ %26, %cond.true15 ], [ 0, %cond.false17 ], !dbg !3265
  %cmp20 = icmp ult i32 %23, %cond19, !dbg !3268
  br i1 %cmp20, label %for.body, label %for.end, !dbg !3269

for.body:                                         ; preds = %cond.end18
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence, metadata !3270, metadata !DIExpression()), !dbg !3272
  br label %do.body21, !dbg !3273

do.body21:                                        ; preds = %for.body
  br label %do.end22, !dbg !3275

do.end22:                                         ; preds = %do.body21
  %27 = load %struct.dma_resv_list*, %struct.dma_resv_list** %old, align 8, !dbg !3273
  %shared = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %27, i32 0, i32 3, !dbg !3273
  %28 = load i32, i32* %i, align 4, !dbg !3273
  %idxprom = zext i32 %28 to i64, !dbg !3273
  %arrayidx = getelementptr [0 x %struct.dma_fence*], [0 x %struct.dma_fence*]* %shared, i64 0, i64 %idxprom, !dbg !3273
  %29 = load %struct.dma_fence*, %struct.dma_fence** %arrayidx, align 8, !dbg !3273
  store %struct.dma_fence* %29, %struct.dma_fence** %tmp23, align 8, !dbg !3275
  %30 = load %struct.dma_fence*, %struct.dma_fence** %tmp23, align 8, !dbg !3273
  store %struct.dma_fence* %30, %struct.dma_fence** %fence, align 8, !dbg !3277
  %31 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !3278
  %call24 = call zeroext i1 @dma_fence_is_signaled(%struct.dma_fence* %31) #6, !dbg !3280
  br i1 %call24, label %if.then25, label %if.else37, !dbg !3281

if.then25:                                        ; preds = %do.end22
  br label %do.body26, !dbg !3282

do.body26:                                        ; preds = %if.then25
  br label %do.body27, !dbg !3283

do.body27:                                        ; preds = %do.body26
  br label %do.body28, !dbg !3285

do.body28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !3287

do.end29:                                         ; preds = %do.body28
  br label %do.body30, !dbg !3285

do.body30:                                        ; preds = %do.end29
  %32 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !3289
  %33 = load %struct.dma_resv_list*, %struct.dma_resv_list** %new, align 8, !dbg !3289
  %shared31 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %33, i32 0, i32 3, !dbg !3289
  %34 = load i32, i32* %k, align 4, !dbg !3289
  %dec = add i32 %34, -1, !dbg !3289
  store i32 %dec, i32* %k, align 4, !dbg !3289
  %idxprom32 = zext i32 %dec to i64, !dbg !3289
  %arrayidx33 = getelementptr [0 x %struct.dma_fence*], [0 x %struct.dma_fence*]* %shared31, i64 0, i64 %idxprom32, !dbg !3289
  store volatile %struct.dma_fence* %32, %struct.dma_fence** %arrayidx33, align 8, !dbg !3289
  br label %do.end34, !dbg !3289

do.end34:                                         ; preds = %do.body30
  br label %do.end35, !dbg !3285

do.end35:                                         ; preds = %do.end34
  br label %do.end36, !dbg !3283

do.end36:                                         ; preds = %do.end35
  br label %if.end49, !dbg !3283

if.else37:                                        ; preds = %do.end22
  br label %do.body38, !dbg !3291

do.body38:                                        ; preds = %if.else37
  br label %do.body39, !dbg !3292

do.body39:                                        ; preds = %do.body38
  br label %do.body40, !dbg !3294

do.body40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !3296

do.end41:                                         ; preds = %do.body40
  br label %do.body42, !dbg !3294

do.body42:                                        ; preds = %do.end41
  %35 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !3298
  %36 = load %struct.dma_resv_list*, %struct.dma_resv_list** %new, align 8, !dbg !3298
  %shared43 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %36, i32 0, i32 3, !dbg !3298
  %37 = load i32, i32* %j, align 4, !dbg !3298
  %inc = add i32 %37, 1, !dbg !3298
  store i32 %inc, i32* %j, align 4, !dbg !3298
  %idxprom44 = zext i32 %37 to i64, !dbg !3298
  %arrayidx45 = getelementptr [0 x %struct.dma_fence*], [0 x %struct.dma_fence*]* %shared43, i64 0, i64 %idxprom44, !dbg !3298
  store volatile %struct.dma_fence* %35, %struct.dma_fence** %arrayidx45, align 8, !dbg !3298
  br label %do.end46, !dbg !3298

do.end46:                                         ; preds = %do.body42
  br label %do.end47, !dbg !3294

do.end47:                                         ; preds = %do.end46
  br label %do.end48, !dbg !3292

do.end48:                                         ; preds = %do.end47
  br label %if.end49

if.end49:                                         ; preds = %do.end48, %do.end36
  br label %for.inc, !dbg !3300

for.inc:                                          ; preds = %if.end49
  %38 = load i32, i32* %i, align 4, !dbg !3301
  %inc50 = add i32 %38, 1, !dbg !3301
  store i32 %inc50, i32* %i, align 4, !dbg !3301
  br label %for.cond, !dbg !3302, !llvm.loop !3303

for.end:                                          ; preds = %cond.end18
  %39 = load i32, i32* %j, align 4, !dbg !3305
  %40 = load %struct.dma_resv_list*, %struct.dma_resv_list** %new, align 8, !dbg !3306
  %shared_count51 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %40, i32 0, i32 1, !dbg !3307
  store i32 %39, i32* %shared_count51, align 8, !dbg !3308
  br label %do.body52, !dbg !3309

do.body52:                                        ; preds = %for.end
  call void @llvm.dbg.declare(metadata i64* %_r_a_p__v, metadata !3310, metadata !DIExpression()), !dbg !3312
  %41 = load %struct.dma_resv_list*, %struct.dma_resv_list** %new, align 8, !dbg !3312
  %42 = ptrtoint %struct.dma_resv_list* %41 to i64, !dbg !3312
  store i64 %42, i64* %_r_a_p__v, align 8, !dbg !3312
  br i1 false, label %land.lhs.true53, label %if.else63, !dbg !3313

land.lhs.true53:                                  ; preds = %do.body52
  %43 = load i64, i64* %_r_a_p__v, align 8, !dbg !3313
  %cmp54 = icmp eq i64 %43, 0, !dbg !3313
  br i1 %cmp54, label %if.then55, label %if.else63, !dbg !3312

if.then55:                                        ; preds = %land.lhs.true53
  br label %do.body56, !dbg !3313

do.body56:                                        ; preds = %if.then55
  br label %do.body57, !dbg !3315

do.body57:                                        ; preds = %do.body56
  br label %do.end58, !dbg !3317

do.end58:                                         ; preds = %do.body57
  br label %do.body59, !dbg !3315

do.body59:                                        ; preds = %do.end58
  %44 = load i64, i64* %_r_a_p__v, align 8, !dbg !3319
  %45 = inttoptr i64 %44 to %struct.dma_resv_list*, !dbg !3319
  %46 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !3319
  %fence60 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %46, i32 0, i32 3, !dbg !3319
  store volatile %struct.dma_resv_list* %45, %struct.dma_resv_list** %fence60, align 8, !dbg !3319
  br label %do.end61, !dbg !3319

do.end61:                                         ; preds = %do.body59
  br label %do.end62, !dbg !3315

do.end62:                                         ; preds = %do.end61
  br label %if.end75, !dbg !3315

if.else63:                                        ; preds = %land.lhs.true53, %do.body52
  br label %do.body64, !dbg !3313

do.body64:                                        ; preds = %if.else63
  br label %do.body65, !dbg !3321

do.body65:                                        ; preds = %do.body64
  br label %do.end66, !dbg !3323

do.end66:                                         ; preds = %do.body65
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !3321, !srcloc !3325
  br label %do.body67, !dbg !3321

do.body67:                                        ; preds = %do.end66
  br label %do.body68, !dbg !3326

do.body68:                                        ; preds = %do.body67
  br label %do.end69, !dbg !3328

do.end69:                                         ; preds = %do.body68
  br label %do.body70, !dbg !3326

do.body70:                                        ; preds = %do.end69
  %47 = load i64, i64* %_r_a_p__v, align 8, !dbg !3330
  %48 = inttoptr i64 %47 to %struct.dma_resv_list*, !dbg !3330
  %49 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !3330
  %fence71 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %49, i32 0, i32 3, !dbg !3330
  store volatile %struct.dma_resv_list* %48, %struct.dma_resv_list** %fence71, align 8, !dbg !3330
  br label %do.end72, !dbg !3330

do.end72:                                         ; preds = %do.body70
  br label %do.end73, !dbg !3326

do.end73:                                         ; preds = %do.end72
  br label %do.end74, !dbg !3321

do.end74:                                         ; preds = %do.end73
  br label %if.end75

if.end75:                                         ; preds = %do.end74, %do.end62
  br label %do.end76, !dbg !3312

do.end76:                                         ; preds = %if.end75
  %50 = load %struct.dma_resv_list*, %struct.dma_resv_list** %old, align 8, !dbg !3332
  %tobool77 = icmp ne %struct.dma_resv_list* %50, null, !dbg !3332
  br i1 %tobool77, label %if.end79, label %if.then78, !dbg !3334

if.then78:                                        ; preds = %do.end76
  store i32 0, i32* %retval, align 4, !dbg !3335
  br label %return, !dbg !3335

if.end79:                                         ; preds = %do.end76
  %51 = load i32, i32* %k, align 4, !dbg !3336
  store i32 %51, i32* %i, align 4, !dbg !3338
  br label %for.cond80, !dbg !3339

for.cond80:                                       ; preds = %for.inc90, %if.end79
  %52 = load i32, i32* %i, align 4, !dbg !3340
  %53 = load i32, i32* %max, align 4, !dbg !3342
  %cmp81 = icmp ult i32 %52, %53, !dbg !3343
  br i1 %cmp81, label %for.body82, label %for.end92, !dbg !3344

for.body82:                                       ; preds = %for.cond80
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence83, metadata !3345, metadata !DIExpression()), !dbg !3347
  br label %do.body84, !dbg !3348

do.body84:                                        ; preds = %for.body82
  br label %do.end85, !dbg !3350

do.end85:                                         ; preds = %do.body84
  %54 = load %struct.dma_resv_list*, %struct.dma_resv_list** %new, align 8, !dbg !3348
  %shared87 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %54, i32 0, i32 3, !dbg !3348
  %55 = load i32, i32* %i, align 4, !dbg !3348
  %idxprom88 = zext i32 %55 to i64, !dbg !3348
  %arrayidx89 = getelementptr [0 x %struct.dma_fence*], [0 x %struct.dma_fence*]* %shared87, i64 0, i64 %idxprom88, !dbg !3348
  %56 = load %struct.dma_fence*, %struct.dma_fence** %arrayidx89, align 8, !dbg !3348
  store %struct.dma_fence* %56, %struct.dma_fence** %tmp86, align 8, !dbg !3350
  %57 = load %struct.dma_fence*, %struct.dma_fence** %tmp86, align 8, !dbg !3348
  store %struct.dma_fence* %57, %struct.dma_fence** %fence83, align 8, !dbg !3352
  %58 = load %struct.dma_fence*, %struct.dma_fence** %fence83, align 8, !dbg !3353
  call void @dma_fence_put(%struct.dma_fence* %58) #6, !dbg !3354
  br label %for.inc90, !dbg !3355

for.inc90:                                        ; preds = %do.end85
  %59 = load i32, i32* %i, align 4, !dbg !3356
  %inc91 = add i32 %59, 1, !dbg !3356
  store i32 %inc91, i32* %i, align 4, !dbg !3356
  br label %for.cond80, !dbg !3357, !llvm.loop !3358

for.end92:                                        ; preds = %for.cond80
  br label %do.body93, !dbg !3360

do.body93:                                        ; preds = %for.end92
  call void @llvm.dbg.declare(metadata %struct.dma_resv_list** %___p, metadata !3361, metadata !DIExpression()), !dbg !3363
  %60 = load %struct.dma_resv_list*, %struct.dma_resv_list** %old, align 8, !dbg !3363
  store %struct.dma_resv_list* %60, %struct.dma_resv_list** %___p, align 8, !dbg !3363
  %61 = load %struct.dma_resv_list*, %struct.dma_resv_list** %___p, align 8, !dbg !3364
  %tobool94 = icmp ne %struct.dma_resv_list* %61, null, !dbg !3364
  br i1 %tobool94, label %if.then95, label %if.end100, !dbg !3363

if.then95:                                        ; preds = %do.body93
  br label %do.body96, !dbg !3364

do.body96:                                        ; preds = %if.then95
  br label %do.body97, !dbg !3366

do.body97:                                        ; preds = %do.body96
  br label %do.end98, !dbg !3368

do.end98:                                         ; preds = %do.body97
  %62 = load %struct.dma_resv_list*, %struct.dma_resv_list** %___p, align 8, !dbg !3366
  %rcu = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %62, i32 0, i32 0, !dbg !3366
  call void @kvfree_call_rcu(%struct.callback_head* %rcu, void (%struct.callback_head*)* null) #6, !dbg !3366
  br label %do.end99, !dbg !3366

do.end99:                                         ; preds = %do.end98
  br label %if.end100, !dbg !3366

if.end100:                                        ; preds = %do.end99, %do.body93
  br label %do.end101, !dbg !3363

do.end101:                                        ; preds = %if.end100
  store i32 0, i32* %retval, align 4, !dbg !3370
  br label %return, !dbg !3370

return:                                           ; preds = %do.end101, %if.then78, %if.then12, %if.then3
  %63 = load i32, i32* %retval, align 4, !dbg !3371
  ret i32 %63, !dbg !3371
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.dma_resv_list* @dma_resv_get_list(%struct.dma_resv* %obj) #0 !dbg !3372 {
entry:
  %obj.addr = alloca %struct.dma_resv*, align 8
  %tmp = alloca %struct.dma_resv_list*, align 8
  store %struct.dma_resv* %obj, %struct.dma_resv** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_resv** %obj.addr, metadata !3375, metadata !DIExpression()), !dbg !3376
  br label %do.body, !dbg !3377

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3379

do.end:                                           ; preds = %do.body
  %0 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !3377
  %fence = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %0, i32 0, i32 3, !dbg !3377
  %1 = load %struct.dma_resv_list*, %struct.dma_resv_list** %fence, align 8, !dbg !3377
  store %struct.dma_resv_list* %1, %struct.dma_resv_list** %tmp, align 8, !dbg !3379
  %2 = load %struct.dma_resv_list*, %struct.dma_resv_list** %tmp, align 8, !dbg !3377
  ret %struct.dma_resv_list* %2, !dbg !3381
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.dma_resv_list* @dma_resv_list_alloc(i32 %shared_max) #0 !dbg !3382 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3385, metadata !DIExpression()), !dbg !3389
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3397, metadata !DIExpression()), !dbg !3398
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3399, metadata !DIExpression()), !dbg !3400
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3401, metadata !DIExpression()), !dbg !3402
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3403, metadata !DIExpression()), !dbg !3407
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3409, metadata !DIExpression()), !dbg !3413
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3415, metadata !DIExpression()), !dbg !3419
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3424, metadata !DIExpression()), !dbg !3425
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3426, metadata !DIExpression()), !dbg !3427
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3428, metadata !DIExpression()), !dbg !3429
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3430, metadata !DIExpression()), !dbg !3431
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3432, metadata !DIExpression()), !dbg !3433
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3434, metadata !DIExpression()), !dbg !3435
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3436, metadata !DIExpression()), !dbg !3437
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3438, metadata !DIExpression()), !dbg !3439
  %retval = alloca %struct.dma_resv_list*, align 8
  %shared_max.addr = alloca i32, align 4
  %list = alloca %struct.dma_resv_list*, align 8
  store i32 %shared_max, i32* %shared_max.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %shared_max.addr, metadata !3440, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.declare(metadata %struct.dma_resv_list** %list, metadata !3442, metadata !DIExpression()), !dbg !3443
  %0 = load i32, i32* %shared_max.addr, align 4, !dbg !3444
  %conv = zext i32 %0 to i64, !dbg !3444
  %1 = mul i64 %conv, 8, !dbg !3444
  %2 = add i64 24, %1, !dbg !3444
  store i64 %2, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %3 = load i64, i64* %size.addr.i, align 8, !dbg !3445
  %4 = call i1 @llvm.is.constant.i64(i64 %3) #7, !dbg !3446
  br i1 %4, label %if.then.i, label %if.end9.i, !dbg !3447

if.then.i:                                        ; preds = %entry
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !3448
  %cmp.i = icmp ugt i64 %5, 8192, !dbg !3449
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3450

if.then1.i:                                       ; preds = %if.then.i
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !3451
  %7 = load i32, i32* %flags.addr.i, align 4, !dbg !3452
  store i64 %6, i64* %size.addr.i.i, align 8
  store i32 %7, i32* %flags.addr.i.i, align 4
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !3453
  %call.i.i = call i32 @get_order(i64 %8) #8, !dbg !3454
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3433
  %9 = load i64, i64* %size.addr.i.i, align 8, !dbg !3455
  %10 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3456
  %11 = load i32, i32* %order.i.i, align 4, !dbg !3457
  store i64 %9, i64* %size.addr.i.i.i, align 8
  store i32 %10, i32* %flags.addr.i.i.i, align 4
  store i32 %11, i32* %order.addr.i.i.i, align 4
  %12 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3458
  %13 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3459
  %14 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3460
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %12, i32 %13, i32 %14) #9, !dbg !3461
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3461
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3461
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3461
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !3461
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3462
  br label %kmalloc.exit, !dbg !3462

if.end.i:                                         ; preds = %if.then.i
  %15 = load i64, i64* %size.addr.i, align 8, !dbg !3463
  store i64 %15, i64* %size.addr.i11.i, align 8
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3464
  %tobool.i.i = icmp ne i64 %16, 0, !dbg !3464
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3466

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3467
  br label %kmalloc_index.exit.i, !dbg !3467

if.end.i.i:                                       ; preds = %if.end.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3468
  %cmp.i.i = icmp ule i64 %17, 8, !dbg !3470
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3471

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3472
  br label %kmalloc_index.exit.i, !dbg !3472

if.end2.i.i:                                      ; preds = %if.end.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3473
  %cmp3.i.i = icmp ugt i64 %18, 64, !dbg !3475
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3476

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3477
  %cmp4.i.i = icmp ule i64 %19, 96, !dbg !3478
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3479

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3480
  br label %kmalloc_index.exit.i, !dbg !3480

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3481
  %cmp7.i.i = icmp ugt i64 %20, 128, !dbg !3483
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3484

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3485
  %cmp9.i.i = icmp ule i64 %21, 192, !dbg !3486
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3487

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3488
  br label %kmalloc_index.exit.i, !dbg !3488

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3489
  %cmp12.i.i = icmp ule i64 %22, 8, !dbg !3491
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3492

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3493
  br label %kmalloc_index.exit.i, !dbg !3493

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3494
  %cmp15.i.i = icmp ule i64 %23, 16, !dbg !3496
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3497

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3498
  br label %kmalloc_index.exit.i, !dbg !3498

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3499
  %cmp18.i.i = icmp ule i64 %24, 32, !dbg !3501
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3502

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3503
  br label %kmalloc_index.exit.i, !dbg !3503

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3504
  %cmp21.i.i = icmp ule i64 %25, 64, !dbg !3506
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3507

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3508
  br label %kmalloc_index.exit.i, !dbg !3508

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3509
  %cmp24.i.i = icmp ule i64 %26, 128, !dbg !3511
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3512

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3513
  br label %kmalloc_index.exit.i, !dbg !3513

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3514
  %cmp27.i.i = icmp ule i64 %27, 256, !dbg !3516
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3517

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3518
  br label %kmalloc_index.exit.i, !dbg !3518

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3519
  %cmp30.i.i = icmp ule i64 %28, 512, !dbg !3521
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3522

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3523
  br label %kmalloc_index.exit.i, !dbg !3523

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3524
  %cmp33.i.i = icmp ule i64 %29, 1024, !dbg !3526
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3527

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3528
  br label %kmalloc_index.exit.i, !dbg !3528

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3529
  %cmp36.i.i = icmp ule i64 %30, 2048, !dbg !3531
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3532

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3533
  br label %kmalloc_index.exit.i, !dbg !3533

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3534
  %cmp39.i.i = icmp ule i64 %31, 4096, !dbg !3536
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3537

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3538
  br label %kmalloc_index.exit.i, !dbg !3538

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3539
  %cmp42.i.i = icmp ule i64 %32, 8192, !dbg !3541
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3542

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3543
  br label %kmalloc_index.exit.i, !dbg !3543

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3544
  %cmp45.i.i = icmp ule i64 %33, 16384, !dbg !3546
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3547

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3548
  br label %kmalloc_index.exit.i, !dbg !3548

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3549
  %cmp48.i.i = icmp ule i64 %34, 32768, !dbg !3551
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3552

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3553
  br label %kmalloc_index.exit.i, !dbg !3553

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3554
  %cmp51.i.i = icmp ule i64 %35, 65536, !dbg !3556
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3557

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3558
  br label %kmalloc_index.exit.i, !dbg !3558

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3559
  %cmp54.i.i = icmp ule i64 %36, 131072, !dbg !3561
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3562

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3563
  br label %kmalloc_index.exit.i, !dbg !3563

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3564
  %cmp57.i.i = icmp ule i64 %37, 262144, !dbg !3566
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3567

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3568
  br label %kmalloc_index.exit.i, !dbg !3568

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3569
  %cmp60.i.i = icmp ule i64 %38, 524288, !dbg !3571
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3572

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3573
  br label %kmalloc_index.exit.i, !dbg !3573

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3574
  %cmp63.i.i = icmp ule i64 %39, 1048576, !dbg !3576
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3577

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3578
  br label %kmalloc_index.exit.i, !dbg !3578

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3579
  %cmp66.i.i = icmp ule i64 %40, 2097152, !dbg !3581
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3582

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3583
  br label %kmalloc_index.exit.i, !dbg !3583

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3584
  %cmp69.i.i = icmp ule i64 %41, 4194304, !dbg !3586
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3587

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3588
  br label %kmalloc_index.exit.i, !dbg !3588

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3589
  %cmp72.i.i = icmp ule i64 %42, 8388608, !dbg !3591
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3592

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3593
  br label %kmalloc_index.exit.i, !dbg !3593

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3594
  %cmp75.i.i = icmp ule i64 %43, 16777216, !dbg !3596
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3597

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3598
  br label %kmalloc_index.exit.i, !dbg !3598

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3599
  %cmp78.i.i = icmp ule i64 %44, 33554432, !dbg !3601
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3602

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3603
  br label %kmalloc_index.exit.i, !dbg !3603

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3604
  %cmp81.i.i = icmp ule i64 %45, 67108864, !dbg !3606
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3607

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3608
  br label %kmalloc_index.exit.i, !dbg !3608

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !3609, !srcloc !3612
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 148) #7, !dbg !3613, !srcloc !3616
  unreachable, !dbg !3617

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %46 = load i32, i32* %retval.i.i, align 4, !dbg !3618
  store i32 %46, i32* %index.i, align 4, !dbg !3619
  %47 = load i32, i32* %index.i, align 4, !dbg !3620
  %tobool.i = icmp ne i32 %47, 0, !dbg !3620
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3622

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3623
  br label %kmalloc.exit, !dbg !3623

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %48 = load i32, i32* %flags.addr.i, align 4, !dbg !3624
  store i32 %48, i32* %flags.addr.i13.i, align 4
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3625
  %and.i.i = and i32 %49, 17, !dbg !3625
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3625
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3625
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3625
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3625
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3627

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3628
  br label %kmalloc_type.exit.i, !dbg !3628

if.end.i16.i:                                     ; preds = %if.end4.i
  %50 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3629
  %and2.i.i = and i32 %50, 1, !dbg !3630
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3629
  %51 = zext i1 %tobool3.i.i to i64, !dbg !3629
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3629
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3631
  br label %kmalloc_type.exit.i, !dbg !3631

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %52 = load i32, i32* %retval.i12.i, align 4, !dbg !3632
  %idxprom.i = zext i32 %52 to i64, !dbg !3633
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3633
  %53 = load i32, i32* %index.i, align 4, !dbg !3634
  %idxprom6.i = zext i32 %53 to i64, !dbg !3633
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3633
  %54 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3633
  %55 = load i32, i32* %flags.addr.i, align 4, !dbg !3635
  %56 = load i64, i64* %size.addr.i, align 8, !dbg !3636
  store %struct.kmem_cache* %54, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %55, i32* %flags.addr.i17.i, align 4
  store i64 %56, i64* %size.addr.i18.i, align 8
  %57 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3637
  %58 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3638
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %57, i32 %58) #9, !dbg !3639
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3639
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3639
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3639
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !3639
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3402
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3640
  %60 = load i8*, i8** %ret.i.i, align 8, !dbg !3641
  %61 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3642
  %62 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3643
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %59, i8* %60, i64 %61, i32 %62) #9, !dbg !3644
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3645
  %63 = load i8*, i8** %ret.i.i, align 8, !dbg !3646
  store i8* %63, i8** %retval.i, align 8, !dbg !3647
  br label %kmalloc.exit, !dbg !3647

if.end9.i:                                        ; preds = %entry
  %64 = load i64, i64* %size.addr.i, align 8, !dbg !3648
  %65 = load i32, i32* %flags.addr.i, align 4, !dbg !3649
  %call10.i = call noalias i8* @__kmalloc(i64 %64, i32 %65) #9, !dbg !3650
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3650
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3650
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3650
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !3650
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3651
  br label %kmalloc.exit, !dbg !3651

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %66 = load i8*, i8** %retval.i, align 8, !dbg !3652
  %67 = bitcast i8* %66 to %struct.dma_resv_list*, !dbg !3653
  store %struct.dma_resv_list* %67, %struct.dma_resv_list** %list, align 8, !dbg !3654
  %68 = load %struct.dma_resv_list*, %struct.dma_resv_list** %list, align 8, !dbg !3655
  %tobool = icmp ne %struct.dma_resv_list* %68, null, !dbg !3655
  br i1 %tobool, label %if.end, label %if.then, !dbg !3657

if.then:                                          ; preds = %kmalloc.exit
  store %struct.dma_resv_list* null, %struct.dma_resv_list** %retval, align 8, !dbg !3658
  br label %return, !dbg !3658

if.end:                                           ; preds = %kmalloc.exit
  %69 = load %struct.dma_resv_list*, %struct.dma_resv_list** %list, align 8, !dbg !3659
  %70 = bitcast %struct.dma_resv_list* %69 to i8*, !dbg !3659
  %call1 = call i64 @ksize(i8* %70) #6, !dbg !3660
  %sub = sub i64 %call1, 24, !dbg !3661
  %div = udiv i64 %sub, 8, !dbg !3662
  %conv2 = trunc i64 %div to i32, !dbg !3663
  %71 = load %struct.dma_resv_list*, %struct.dma_resv_list** %list, align 8, !dbg !3664
  %shared_max3 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %71, i32 0, i32 2, !dbg !3665
  store i32 %conv2, i32* %shared_max3, align 4, !dbg !3666
  %72 = load %struct.dma_resv_list*, %struct.dma_resv_list** %list, align 8, !dbg !3667
  store %struct.dma_resv_list* %72, %struct.dma_resv_list** %retval, align 8, !dbg !3668
  br label %return, !dbg !3668

return:                                           ; preds = %if.end, %if.then
  %73 = load %struct.dma_resv_list*, %struct.dma_resv_list** %retval, align 8, !dbg !3669
  ret %struct.dma_resv_list* %73, !dbg !3669
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @dma_fence_is_signaled(%struct.dma_fence* %fence) #0 !dbg !3670 {
entry:
  %retval = alloca i1, align 1
  %fence.addr = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !3671, metadata !DIExpression()), !dbg !3672
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !3673
  %flags = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %0, i32 0, i32 5, !dbg !3675
  %call = call zeroext i1 @test_bit(i64 0, i64* %flags) #6, !dbg !3676
  br i1 %call, label %if.then, label %if.end, !dbg !3677

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1, !dbg !3678
  br label %return, !dbg !3678

if.end:                                           ; preds = %entry
  %1 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !3679
  %ops = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %1, i32 0, i32 1, !dbg !3681
  %2 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops, align 8, !dbg !3681
  %signaled = getelementptr inbounds %struct.dma_fence_ops, %struct.dma_fence_ops* %2, i32 0, i32 4, !dbg !3682
  %3 = load i1 (%struct.dma_fence*)*, i1 (%struct.dma_fence*)** %signaled, align 8, !dbg !3682
  %tobool = icmp ne i1 (%struct.dma_fence*)* %3, null, !dbg !3679
  br i1 %tobool, label %land.lhs.true, label %if.end6, !dbg !3683

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !3684
  %ops1 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %4, i32 0, i32 1, !dbg !3685
  %5 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops1, align 8, !dbg !3685
  %signaled2 = getelementptr inbounds %struct.dma_fence_ops, %struct.dma_fence_ops* %5, i32 0, i32 4, !dbg !3686
  %6 = load i1 (%struct.dma_fence*)*, i1 (%struct.dma_fence*)** %signaled2, align 8, !dbg !3686
  %7 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !3687
  %call3 = call zeroext i1 %6(%struct.dma_fence* %7) #6, !dbg !3684
  br i1 %call3, label %if.then4, label %if.end6, !dbg !3688

if.then4:                                         ; preds = %land.lhs.true
  %8 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !3689
  %call5 = call i32 @dma_fence_signal(%struct.dma_fence* %8) #6, !dbg !3691
  store i1 true, i1* %retval, align 1, !dbg !3692
  br label %return, !dbg !3692

if.end6:                                          ; preds = %land.lhs.true, %if.end
  store i1 false, i1* %retval, align 1, !dbg !3693
  br label %return, !dbg !3693

return:                                           ; preds = %if.end6, %if.then4, %if.then
  %9 = load i1, i1* %retval, align 1, !dbg !3694
  ret i1 %9, !dbg !3694
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kvfree_call_rcu(%struct.callback_head* %head, void (%struct.callback_head*)* %func) #0 !dbg !3695 {
entry:
  %head.addr = alloca %struct.callback_head*, align 8
  %func.addr = alloca void (%struct.callback_head*)*, align 8
  store %struct.callback_head* %head, %struct.callback_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.callback_head** %head.addr, metadata !3699, metadata !DIExpression()), !dbg !3700
  store void (%struct.callback_head*)* %func, void (%struct.callback_head*)** %func.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.callback_head*)** %func.addr, metadata !3701, metadata !DIExpression()), !dbg !3702
  %0 = load %struct.callback_head*, %struct.callback_head** %head.addr, align 8, !dbg !3703
  %tobool = icmp ne %struct.callback_head* %0, null, !dbg !3703
  br i1 %tobool, label %if.then, label %if.end, !dbg !3705

if.then:                                          ; preds = %entry
  %1 = load %struct.callback_head*, %struct.callback_head** %head.addr, align 8, !dbg !3706
  %2 = load void (%struct.callback_head*)*, void (%struct.callback_head*)** %func.addr, align 8, !dbg !3708
  call void @call_rcu(%struct.callback_head* %1, void (%struct.callback_head*)* %2) #6, !dbg !3709
  br label %return, !dbg !3710

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !3711

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !3712

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !3714

do.end:                                           ; preds = %do.body1
  br label %do.end2, !dbg !3712

do.end2:                                          ; preds = %do.end
  call void @synchronize_rcu() #6, !dbg !3716
  %3 = load void (%struct.callback_head*)*, void (%struct.callback_head*)** %func.addr, align 8, !dbg !3717
  %4 = bitcast void (%struct.callback_head*)* %3 to i8*, !dbg !3718
  call void @kvfree(i8* %4) #6, !dbg !3719
  br label %return, !dbg !3720

return:                                           ; preds = %do.end2, %if.then
  ret void, !dbg !3720
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dma_resv_add_shared_fence(%struct.dma_resv* %obj, %struct.dma_fence* %fence) #0 !dbg !3721 {
entry:
  %s.addr.i62 = alloca %struct.seqcount_ww_mutex*, align 8
  call void @llvm.dbg.declare(metadata %struct.seqcount_ww_mutex** %s.addr.i62, metadata !3724, metadata !DIExpression()), !dbg !3728
  %s.addr.i61 = alloca %struct.seqcount_ww_mutex*, align 8
  call void @llvm.dbg.declare(metadata %struct.seqcount_ww_mutex** %s.addr.i61, metadata !3731, metadata !DIExpression()), !dbg !3737
  %s.addr.i60 = alloca %struct.seqcount_ww_mutex*, align 8
  call void @llvm.dbg.declare(metadata %struct.seqcount_ww_mutex** %s.addr.i60, metadata !3724, metadata !DIExpression()), !dbg !3740
  %s.addr.i59 = alloca %struct.seqcount_ww_mutex*, align 8
  call void @llvm.dbg.declare(metadata %struct.seqcount_ww_mutex** %s.addr.i59, metadata !3731, metadata !DIExpression()), !dbg !3743
  %s.addr.i = alloca %struct.seqcount_ww_mutex*, align 8
  call void @llvm.dbg.declare(metadata %struct.seqcount_ww_mutex** %s.addr.i, metadata !3746, metadata !DIExpression()), !dbg !3750
  %obj.addr = alloca %struct.dma_resv*, align 8
  %fence.addr = alloca %struct.dma_fence*, align 8
  %fobj = alloca %struct.dma_resv_list*, align 8
  %old = alloca %struct.dma_fence*, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %tmp = alloca %struct.dma_fence*, align 8
  store %struct.dma_resv* %obj, %struct.dma_resv** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_resv** %obj.addr, metadata !3752, metadata !DIExpression()), !dbg !3753
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !3754, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.declare(metadata %struct.dma_resv_list** %fobj, metadata !3756, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %old, metadata !3758, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3760, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.declare(metadata i32* %count, metadata !3762, metadata !DIExpression()), !dbg !3763
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !3764
  %call = call %struct.dma_fence* @dma_fence_get(%struct.dma_fence* %0) #6, !dbg !3765
  br label %do.body, !dbg !3766

do.body:                                          ; preds = %entry
  %1 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !3767
  %lock = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %1, i32 0, i32 0, !dbg !3767
  %base = getelementptr inbounds %struct.ww_mutex, %struct.ww_mutex* %lock, i32 0, i32 0, !dbg !3767
  br label %do.end, !dbg !3767

do.end:                                           ; preds = %do.body
  %2 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !3769
  %call1 = call %struct.dma_resv_list* @dma_resv_get_list(%struct.dma_resv* %2) #6, !dbg !3770
  store %struct.dma_resv_list* %call1, %struct.dma_resv_list** %fobj, align 8, !dbg !3771
  %3 = load %struct.dma_resv_list*, %struct.dma_resv_list** %fobj, align 8, !dbg !3772
  %shared_count = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %3, i32 0, i32 1, !dbg !3773
  %4 = load i32, i32* %shared_count, align 8, !dbg !3773
  store i32 %4, i32* %count, align 4, !dbg !3774
  br label %do.body2, !dbg !3775

do.body2:                                         ; preds = %do.end
  %5 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !3776
  %seq = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %5, i32 0, i32 1, !dbg !3776
  %6 = bitcast %struct.seqcount_ww_mutex* %seq to i8*, !dbg !3776
  %7 = bitcast i8* %6 to %struct.seqcount_ww_mutex*, !dbg !3776
  store %struct.seqcount_ww_mutex* %7, %struct.seqcount_ww_mutex** %s.addr.i, align 8
  %8 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !3777
  %seq3 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %8, i32 0, i32 1, !dbg !3777
  %9 = bitcast %struct.seqcount_ww_mutex* %seq3 to i8*, !dbg !3777
  %10 = bitcast i8* %9 to %struct.seqcount_ww_mutex*, !dbg !3777
  store %struct.seqcount_ww_mutex* %10, %struct.seqcount_ww_mutex** %s.addr.i59, align 8
  br i1 true, label %if.then, label %if.end, !dbg !3776

if.then:                                          ; preds = %do.body2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !3777, !srcloc !3778
  br label %if.end, !dbg !3777

if.end:                                           ; preds = %if.then, %do.body2
  %11 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !3776
  %seq5 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %11, i32 0, i32 1, !dbg !3776
  %12 = bitcast %struct.seqcount_ww_mutex* %seq5 to i8*, !dbg !3776
  %13 = bitcast i8* %12 to %struct.seqcount_ww_mutex*, !dbg !3776
  store %struct.seqcount_ww_mutex* %13, %struct.seqcount_ww_mutex** %s.addr.i60, align 8
  %14 = load %struct.seqcount_ww_mutex*, %struct.seqcount_ww_mutex** %s.addr.i60, align 8, !dbg !3740
  %seqcount.i = getelementptr inbounds %struct.seqcount_ww_mutex, %struct.seqcount_ww_mutex* %14, i32 0, i32 0, !dbg !3740
  call void @write_seqcount_t_begin(%struct.seqcount* %seqcount.i) #6, !dbg !3776
  br label %do.end7, !dbg !3776

do.end7:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !3779
  br label %for.cond, !dbg !3781

for.cond:                                         ; preds = %for.inc, %do.end7
  %15 = load i32, i32* %i, align 4, !dbg !3782
  %16 = load i32, i32* %count, align 4, !dbg !3784
  %cmp = icmp ult i32 %15, %16, !dbg !3785
  br i1 %cmp, label %for.body, label %for.end, !dbg !3786

for.body:                                         ; preds = %for.cond
  br label %do.body8, !dbg !3787

do.body8:                                         ; preds = %for.body
  br label %do.end9, !dbg !3790

do.end9:                                          ; preds = %do.body8
  %17 = load %struct.dma_resv_list*, %struct.dma_resv_list** %fobj, align 8, !dbg !3787
  %shared = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %17, i32 0, i32 3, !dbg !3787
  %18 = load i32, i32* %i, align 4, !dbg !3787
  %idxprom = zext i32 %18 to i64, !dbg !3787
  %arrayidx = getelementptr [0 x %struct.dma_fence*], [0 x %struct.dma_fence*]* %shared, i64 0, i64 %idxprom, !dbg !3787
  %19 = load %struct.dma_fence*, %struct.dma_fence** %arrayidx, align 8, !dbg !3787
  store %struct.dma_fence* %19, %struct.dma_fence** %tmp, align 8, !dbg !3790
  %20 = load %struct.dma_fence*, %struct.dma_fence** %tmp, align 8, !dbg !3787
  store %struct.dma_fence* %20, %struct.dma_fence** %old, align 8, !dbg !3792
  %21 = load %struct.dma_fence*, %struct.dma_fence** %old, align 8, !dbg !3793
  %context = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %21, i32 0, i32 3, !dbg !3795
  %22 = load i64, i64* %context, align 8, !dbg !3795
  %23 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !3796
  %context10 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %23, i32 0, i32 3, !dbg !3797
  %24 = load i64, i64* %context10, align 8, !dbg !3797
  %cmp11 = icmp eq i64 %22, %24, !dbg !3798
  br i1 %cmp11, label %if.then13, label %lor.lhs.false, !dbg !3799

lor.lhs.false:                                    ; preds = %do.end9
  %25 = load %struct.dma_fence*, %struct.dma_fence** %old, align 8, !dbg !3800
  %call12 = call zeroext i1 @dma_fence_is_signaled(%struct.dma_fence* %25) #6, !dbg !3801
  br i1 %call12, label %if.then13, label %if.end14, !dbg !3802

if.then13:                                        ; preds = %lor.lhs.false, %do.end9
  br label %replace, !dbg !3803

if.end14:                                         ; preds = %lor.lhs.false
  br label %for.inc, !dbg !3804

for.inc:                                          ; preds = %if.end14
  %26 = load i32, i32* %i, align 4, !dbg !3805
  %inc = add i32 %26, 1, !dbg !3805
  store i32 %inc, i32* %i, align 4, !dbg !3805
  br label %for.cond, !dbg !3806, !llvm.loop !3807

for.end:                                          ; preds = %for.cond
  br label %do.body15, !dbg !3809

do.body15:                                        ; preds = %for.end
  %27 = load %struct.dma_resv_list*, %struct.dma_resv_list** %fobj, align 8, !dbg !3810
  %shared_count16 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %27, i32 0, i32 1, !dbg !3810
  %28 = load i32, i32* %shared_count16, align 8, !dbg !3810
  %29 = load %struct.dma_resv_list*, %struct.dma_resv_list** %fobj, align 8, !dbg !3810
  %shared_max = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %29, i32 0, i32 2, !dbg !3810
  %30 = load i32, i32* %shared_max, align 4, !dbg !3810
  %cmp17 = icmp uge i32 %28, %30, !dbg !3810
  %lnot = xor i1 %cmp17, true, !dbg !3810
  %lnot18 = xor i1 %lnot, true, !dbg !3810
  %lnot.ext = zext i1 %lnot18 to i32, !dbg !3810
  %conv = sext i32 %lnot.ext to i64, !dbg !3810
  %tobool = icmp ne i64 %conv, 0, !dbg !3810
  br i1 %tobool, label %if.then19, label %if.end28, !dbg !3813

if.then19:                                        ; preds = %do.body15
  br label %do.body20, !dbg !3810

do.body20:                                        ; preds = %if.then19
  br label %do.body21, !dbg !3814

do.body21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !3816

do.end22:                                         ; preds = %do.body21
  br label %do.body23, !dbg !3814

do.body23:                                        ; preds = %do.end22
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 287, i32 0, i64 12) #7, !dbg !3818, !srcloc !3820
  br label %do.end24, !dbg !3818

do.end24:                                         ; preds = %do.body23
  br label %do.body25, !dbg !3814

do.body25:                                        ; preds = %do.end24
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 237) #7, !dbg !3821, !srcloc !3824
  unreachable, !dbg !3825

do.end26:                                         ; No predecessors!
  br label %do.end27, !dbg !3814

do.end27:                                         ; preds = %do.end26
  br label %if.end28, !dbg !3814

if.end28:                                         ; preds = %do.end27, %do.body15
  br label %do.end29, !dbg !3813

do.end29:                                         ; preds = %if.end28
  store %struct.dma_fence* null, %struct.dma_fence** %old, align 8, !dbg !3826
  %31 = load i32, i32* %count, align 4, !dbg !3827
  %inc30 = add i32 %31, 1, !dbg !3827
  store i32 %inc30, i32* %count, align 4, !dbg !3827
  br label %replace, !dbg !3828

replace:                                          ; preds = %do.end29, %if.then13
  call void @llvm.dbg.label(metadata !3829), !dbg !3830
  br label %do.body31, !dbg !3831

do.body31:                                        ; preds = %replace
  br label %do.body32, !dbg !3832

do.body32:                                        ; preds = %do.body31
  br label %do.body33, !dbg !3834

do.body33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !3836

do.end34:                                         ; preds = %do.body33
  br label %do.body35, !dbg !3834

do.body35:                                        ; preds = %do.end34
  %32 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !3838
  %33 = load %struct.dma_resv_list*, %struct.dma_resv_list** %fobj, align 8, !dbg !3838
  %shared36 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %33, i32 0, i32 3, !dbg !3838
  %34 = load i32, i32* %i, align 4, !dbg !3838
  %idxprom37 = zext i32 %34 to i64, !dbg !3838
  %arrayidx38 = getelementptr [0 x %struct.dma_fence*], [0 x %struct.dma_fence*]* %shared36, i64 0, i64 %idxprom37, !dbg !3838
  store volatile %struct.dma_fence* %32, %struct.dma_fence** %arrayidx38, align 8, !dbg !3838
  br label %do.end39, !dbg !3838

do.end39:                                         ; preds = %do.body35
  br label %do.end40, !dbg !3834

do.end40:                                         ; preds = %do.end39
  br label %do.end41, !dbg !3832

do.end41:                                         ; preds = %do.end40
  br label %do.body42, !dbg !3840

do.body42:                                        ; preds = %do.end41
  br label %do.body43, !dbg !3841

do.body43:                                        ; preds = %do.body42
  br label %do.body44, !dbg !3843

do.body44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !3845

do.end45:                                         ; preds = %do.body44
  br label %do.body46, !dbg !3843

do.body46:                                        ; preds = %do.end45
  %35 = load i32, i32* %count, align 4, !dbg !3847
  %36 = load %struct.dma_resv_list*, %struct.dma_resv_list** %fobj, align 8, !dbg !3847
  %shared_count47 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %36, i32 0, i32 1, !dbg !3847
  store volatile i32 %35, i32* %shared_count47, align 8, !dbg !3847
  br label %do.end48, !dbg !3847

do.end48:                                         ; preds = %do.body46
  br label %do.end49, !dbg !3843

do.end49:                                         ; preds = %do.end48
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !3841, !srcloc !3849
  br label %do.end50, !dbg !3841

do.end50:                                         ; preds = %do.end49
  br label %do.body51, !dbg !3850

do.body51:                                        ; preds = %do.end50
  %37 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !3851
  %seq52 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %37, i32 0, i32 1, !dbg !3851
  %38 = bitcast %struct.seqcount_ww_mutex* %seq52 to i8*, !dbg !3851
  %39 = bitcast i8* %38 to %struct.seqcount_ww_mutex*, !dbg !3851
  store %struct.seqcount_ww_mutex* %39, %struct.seqcount_ww_mutex** %s.addr.i62, align 8
  %40 = load %struct.seqcount_ww_mutex*, %struct.seqcount_ww_mutex** %s.addr.i62, align 8, !dbg !3728
  %seqcount.i63 = getelementptr inbounds %struct.seqcount_ww_mutex, %struct.seqcount_ww_mutex* %40, i32 0, i32 0, !dbg !3728
  call void @write_seqcount_t_end(%struct.seqcount* %seqcount.i63) #6, !dbg !3851
  %41 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !3852
  %seq54 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %41, i32 0, i32 1, !dbg !3852
  %42 = bitcast %struct.seqcount_ww_mutex* %seq54 to i8*, !dbg !3852
  %43 = bitcast i8* %42 to %struct.seqcount_ww_mutex*, !dbg !3852
  store %struct.seqcount_ww_mutex* %43, %struct.seqcount_ww_mutex** %s.addr.i61, align 8
  br i1 true, label %if.then56, label %if.end57, !dbg !3851

if.then56:                                        ; preds = %do.body51
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !3852, !srcloc !3853
  br label %if.end57, !dbg !3852

if.end57:                                         ; preds = %if.then56, %do.body51
  br label %do.end58, !dbg !3851

do.end58:                                         ; preds = %if.end57
  %44 = load %struct.dma_fence*, %struct.dma_fence** %old, align 8, !dbg !3854
  call void @dma_fence_put(%struct.dma_fence* %44) #6, !dbg !3855
  ret void, !dbg !3856
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.dma_fence* @dma_fence_get(%struct.dma_fence* %fence) #0 !dbg !3857 {
entry:
  %fence.addr = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !3860, metadata !DIExpression()), !dbg !3861
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !3862
  %tobool = icmp ne %struct.dma_fence* %0, null, !dbg !3862
  br i1 %tobool, label %if.then, label %if.end, !dbg !3864

if.then:                                          ; preds = %entry
  %1 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !3865
  %refcount = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %1, i32 0, i32 6, !dbg !3866
  call void @kref_get(%struct.kref* %refcount) #6, !dbg !3867
  br label %if.end, !dbg !3867

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !3868
  ret %struct.dma_fence* %2, !dbg !3869
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @write_seqcount_t_begin(%struct.seqcount* %s) #0 !dbg !3870 {
entry:
  %s.addr = alloca %struct.seqcount*, align 8
  store %struct.seqcount* %s, %struct.seqcount** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.seqcount** %s.addr, metadata !3873, metadata !DIExpression()), !dbg !3874
  %0 = load %struct.seqcount*, %struct.seqcount** %s.addr, align 8, !dbg !3875
  call void @write_seqcount_t_begin_nested(%struct.seqcount* %0, i32 0) #6, !dbg !3876
  ret void, !dbg !3877
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @write_seqcount_t_end(%struct.seqcount* %s) #0 !dbg !3878 {
entry:
  %s.addr = alloca %struct.seqcount*, align 8
  store %struct.seqcount* %s, %struct.seqcount** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.seqcount** %s.addr, metadata !3879, metadata !DIExpression()), !dbg !3880
  br label %do.body, !dbg !3881

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3882

do.end:                                           ; preds = %do.body
  %0 = load %struct.seqcount*, %struct.seqcount** %s.addr, align 8, !dbg !3884
  call void @raw_write_seqcount_t_end(%struct.seqcount* %0) #6, !dbg !3885
  ret void, !dbg !3886
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dma_resv_add_excl_fence(%struct.dma_resv* %obj, %struct.dma_fence* %fence) #0 !dbg !3887 {
entry:
  %s.addr.i41 = alloca %struct.seqcount_ww_mutex*, align 8
  call void @llvm.dbg.declare(metadata %struct.seqcount_ww_mutex** %s.addr.i41, metadata !3731, metadata !DIExpression()), !dbg !3888
  %s.addr.i39 = alloca %struct.seqcount_ww_mutex*, align 8
  call void @llvm.dbg.declare(metadata %struct.seqcount_ww_mutex** %s.addr.i39, metadata !3724, metadata !DIExpression()), !dbg !3892
  %s.addr.i38 = alloca %struct.seqcount_ww_mutex*, align 8
  call void @llvm.dbg.declare(metadata %struct.seqcount_ww_mutex** %s.addr.i38, metadata !3724, metadata !DIExpression()), !dbg !3894
  %s.addr.i37 = alloca %struct.seqcount_ww_mutex*, align 8
  call void @llvm.dbg.declare(metadata %struct.seqcount_ww_mutex** %s.addr.i37, metadata !3731, metadata !DIExpression()), !dbg !3897
  %s.addr.i = alloca %struct.seqcount_ww_mutex*, align 8
  call void @llvm.dbg.declare(metadata %struct.seqcount_ww_mutex** %s.addr.i, metadata !3746, metadata !DIExpression()), !dbg !3900
  %obj.addr = alloca %struct.dma_resv*, align 8
  %fence.addr = alloca %struct.dma_fence*, align 8
  %old_fence = alloca %struct.dma_fence*, align 8
  %old = alloca %struct.dma_resv_list*, align 8
  %i = alloca i32, align 4
  %tmp = alloca %struct.dma_fence*, align 8
  store %struct.dma_resv* %obj, %struct.dma_resv** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_resv** %obj.addr, metadata !3902, metadata !DIExpression()), !dbg !3903
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !3904, metadata !DIExpression()), !dbg !3905
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %old_fence, metadata !3906, metadata !DIExpression()), !dbg !3907
  %0 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !3908
  %call = call %struct.dma_fence* @dma_resv_get_excl(%struct.dma_resv* %0) #6, !dbg !3909
  store %struct.dma_fence* %call, %struct.dma_fence** %old_fence, align 8, !dbg !3907
  call void @llvm.dbg.declare(metadata %struct.dma_resv_list** %old, metadata !3910, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3912, metadata !DIExpression()), !dbg !3913
  store i32 0, i32* %i, align 4, !dbg !3913
  br label %do.body, !dbg !3914

do.body:                                          ; preds = %entry
  %1 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !3915
  %lock = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %1, i32 0, i32 0, !dbg !3915
  %base = getelementptr inbounds %struct.ww_mutex, %struct.ww_mutex* %lock, i32 0, i32 0, !dbg !3915
  br label %do.end, !dbg !3915

do.end:                                           ; preds = %do.body
  %2 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !3917
  %call1 = call %struct.dma_resv_list* @dma_resv_get_list(%struct.dma_resv* %2) #6, !dbg !3918
  store %struct.dma_resv_list* %call1, %struct.dma_resv_list** %old, align 8, !dbg !3919
  %3 = load %struct.dma_resv_list*, %struct.dma_resv_list** %old, align 8, !dbg !3920
  %tobool = icmp ne %struct.dma_resv_list* %3, null, !dbg !3920
  br i1 %tobool, label %if.then, label %if.end, !dbg !3922

if.then:                                          ; preds = %do.end
  %4 = load %struct.dma_resv_list*, %struct.dma_resv_list** %old, align 8, !dbg !3923
  %shared_count = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %4, i32 0, i32 1, !dbg !3924
  %5 = load i32, i32* %shared_count, align 8, !dbg !3924
  store i32 %5, i32* %i, align 4, !dbg !3925
  br label %if.end, !dbg !3926

if.end:                                           ; preds = %if.then, %do.end
  %6 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !3927
  %tobool2 = icmp ne %struct.dma_fence* %6, null, !dbg !3927
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !3929

if.then3:                                         ; preds = %if.end
  %7 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !3930
  %call4 = call %struct.dma_fence* @dma_fence_get(%struct.dma_fence* %7) #6, !dbg !3931
  br label %if.end5, !dbg !3931

if.end5:                                          ; preds = %if.then3, %if.end
  br label %do.body6, !dbg !3932

do.body6:                                         ; preds = %if.end5
  %8 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !3933
  %seq = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %8, i32 0, i32 1, !dbg !3933
  %9 = bitcast %struct.seqcount_ww_mutex* %seq to i8*, !dbg !3933
  %10 = bitcast i8* %9 to %struct.seqcount_ww_mutex*, !dbg !3933
  store %struct.seqcount_ww_mutex* %10, %struct.seqcount_ww_mutex** %s.addr.i, align 8
  %11 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !3934
  %seq7 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %11, i32 0, i32 1, !dbg !3934
  %12 = bitcast %struct.seqcount_ww_mutex* %seq7 to i8*, !dbg !3934
  %13 = bitcast i8* %12 to %struct.seqcount_ww_mutex*, !dbg !3934
  store %struct.seqcount_ww_mutex* %13, %struct.seqcount_ww_mutex** %s.addr.i37, align 8
  br i1 true, label %if.then9, label %if.end10, !dbg !3933

if.then9:                                         ; preds = %do.body6
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !3934, !srcloc !3935
  br label %if.end10, !dbg !3934

if.end10:                                         ; preds = %if.then9, %do.body6
  %14 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !3933
  %seq11 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %14, i32 0, i32 1, !dbg !3933
  %15 = bitcast %struct.seqcount_ww_mutex* %seq11 to i8*, !dbg !3933
  %16 = bitcast i8* %15 to %struct.seqcount_ww_mutex*, !dbg !3933
  store %struct.seqcount_ww_mutex* %16, %struct.seqcount_ww_mutex** %s.addr.i38, align 8
  %17 = load %struct.seqcount_ww_mutex*, %struct.seqcount_ww_mutex** %s.addr.i38, align 8, !dbg !3894
  %seqcount.i = getelementptr inbounds %struct.seqcount_ww_mutex, %struct.seqcount_ww_mutex* %17, i32 0, i32 0, !dbg !3894
  call void @write_seqcount_t_begin(%struct.seqcount* %seqcount.i) #6, !dbg !3933
  br label %do.end13, !dbg !3933

do.end13:                                         ; preds = %if.end10
  br label %do.body14, !dbg !3936

do.body14:                                        ; preds = %do.end13
  br label %do.body15, !dbg !3937

do.body15:                                        ; preds = %do.body14
  br label %do.body16, !dbg !3939

do.body16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !3941

do.end17:                                         ; preds = %do.body16
  br label %do.body18, !dbg !3939

do.body18:                                        ; preds = %do.end17
  %18 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !3943
  %19 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !3943
  %fence_excl = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %19, i32 0, i32 2, !dbg !3943
  store volatile %struct.dma_fence* %18, %struct.dma_fence** %fence_excl, align 8, !dbg !3943
  br label %do.end19, !dbg !3943

do.end19:                                         ; preds = %do.body18
  br label %do.end20, !dbg !3939

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !3937

do.end21:                                         ; preds = %do.end20
  %20 = load %struct.dma_resv_list*, %struct.dma_resv_list** %old, align 8, !dbg !3945
  %tobool22 = icmp ne %struct.dma_resv_list* %20, null, !dbg !3945
  br i1 %tobool22, label %if.then23, label %if.end25, !dbg !3947

if.then23:                                        ; preds = %do.end21
  %21 = load %struct.dma_resv_list*, %struct.dma_resv_list** %old, align 8, !dbg !3948
  %shared_count24 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %21, i32 0, i32 1, !dbg !3949
  store i32 0, i32* %shared_count24, align 8, !dbg !3950
  br label %if.end25, !dbg !3948

if.end25:                                         ; preds = %if.then23, %do.end21
  br label %do.body26, !dbg !3951

do.body26:                                        ; preds = %if.end25
  %22 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !3952
  %seq27 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %22, i32 0, i32 1, !dbg !3952
  %23 = bitcast %struct.seqcount_ww_mutex* %seq27 to i8*, !dbg !3952
  %24 = bitcast i8* %23 to %struct.seqcount_ww_mutex*, !dbg !3952
  store %struct.seqcount_ww_mutex* %24, %struct.seqcount_ww_mutex** %s.addr.i39, align 8
  %25 = load %struct.seqcount_ww_mutex*, %struct.seqcount_ww_mutex** %s.addr.i39, align 8, !dbg !3892
  %seqcount.i40 = getelementptr inbounds %struct.seqcount_ww_mutex, %struct.seqcount_ww_mutex* %25, i32 0, i32 0, !dbg !3892
  call void @write_seqcount_t_end(%struct.seqcount* %seqcount.i40) #6, !dbg !3952
  %26 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !3953
  %seq29 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %26, i32 0, i32 1, !dbg !3953
  %27 = bitcast %struct.seqcount_ww_mutex* %seq29 to i8*, !dbg !3953
  %28 = bitcast i8* %27 to %struct.seqcount_ww_mutex*, !dbg !3953
  store %struct.seqcount_ww_mutex* %28, %struct.seqcount_ww_mutex** %s.addr.i41, align 8
  br i1 true, label %if.then31, label %if.end32, !dbg !3952

if.then31:                                        ; preds = %do.body26
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !3953, !srcloc !3954
  br label %if.end32, !dbg !3953

if.end32:                                         ; preds = %if.then31, %do.body26
  br label %do.end33, !dbg !3952

do.end33:                                         ; preds = %if.end32
  br label %while.cond, !dbg !3955

while.cond:                                       ; preds = %do.end36, %do.end33
  %29 = load i32, i32* %i, align 4, !dbg !3956
  %dec = add i32 %29, -1, !dbg !3956
  store i32 %dec, i32* %i, align 4, !dbg !3956
  %tobool34 = icmp ne i32 %29, 0, !dbg !3955
  br i1 %tobool34, label %while.body, label %while.end, !dbg !3955

while.body:                                       ; preds = %while.cond
  br label %do.body35, !dbg !3957

do.body35:                                        ; preds = %while.body
  br label %do.end36, !dbg !3959

do.end36:                                         ; preds = %do.body35
  %30 = load %struct.dma_resv_list*, %struct.dma_resv_list** %old, align 8, !dbg !3957
  %shared = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %30, i32 0, i32 3, !dbg !3957
  %31 = load i32, i32* %i, align 4, !dbg !3957
  %idxprom = zext i32 %31 to i64, !dbg !3957
  %arrayidx = getelementptr [0 x %struct.dma_fence*], [0 x %struct.dma_fence*]* %shared, i64 0, i64 %idxprom, !dbg !3957
  %32 = load %struct.dma_fence*, %struct.dma_fence** %arrayidx, align 8, !dbg !3957
  store %struct.dma_fence* %32, %struct.dma_fence** %tmp, align 8, !dbg !3959
  %33 = load %struct.dma_fence*, %struct.dma_fence** %tmp, align 8, !dbg !3957
  call void @dma_fence_put(%struct.dma_fence* %33) #6, !dbg !3961
  br label %while.cond, !dbg !3955, !llvm.loop !3962

while.end:                                        ; preds = %while.cond
  %34 = load %struct.dma_fence*, %struct.dma_fence** %old_fence, align 8, !dbg !3964
  call void @dma_fence_put(%struct.dma_fence* %34) #6, !dbg !3965
  ret void, !dbg !3966
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.dma_fence* @dma_resv_get_excl(%struct.dma_resv* %obj) #0 !dbg !3967 {
entry:
  %obj.addr = alloca %struct.dma_resv*, align 8
  %tmp = alloca %struct.dma_fence*, align 8
  store %struct.dma_resv* %obj, %struct.dma_resv** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_resv** %obj.addr, metadata !3970, metadata !DIExpression()), !dbg !3971
  br label %do.body, !dbg !3972

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3974

do.end:                                           ; preds = %do.body
  %0 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !3972
  %fence_excl = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %0, i32 0, i32 2, !dbg !3972
  %1 = load %struct.dma_fence*, %struct.dma_fence** %fence_excl, align 8, !dbg !3972
  store %struct.dma_fence* %1, %struct.dma_fence** %tmp, align 8, !dbg !3974
  %2 = load %struct.dma_fence*, %struct.dma_fence** %tmp, align 8, !dbg !3972
  ret %struct.dma_fence* %2, !dbg !3976
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dma_resv_copy_fences(%struct.dma_resv* %dst, %struct.dma_resv* %src) #0 !dbg !3977 {
entry:
  %s.addr.i124 = alloca %struct.seqcount_ww_mutex*, align 8
  call void @llvm.dbg.declare(metadata %struct.seqcount_ww_mutex** %s.addr.i124, metadata !3731, metadata !DIExpression()), !dbg !3980
  %s.addr.i122 = alloca %struct.seqcount_ww_mutex*, align 8
  call void @llvm.dbg.declare(metadata %struct.seqcount_ww_mutex** %s.addr.i122, metadata !3724, metadata !DIExpression()), !dbg !3984
  %s.addr.i121 = alloca %struct.seqcount_ww_mutex*, align 8
  call void @llvm.dbg.declare(metadata %struct.seqcount_ww_mutex** %s.addr.i121, metadata !3724, metadata !DIExpression()), !dbg !3986
  %s.addr.i120 = alloca %struct.seqcount_ww_mutex*, align 8
  call void @llvm.dbg.declare(metadata %struct.seqcount_ww_mutex** %s.addr.i120, metadata !3731, metadata !DIExpression()), !dbg !3989
  %s.addr.i = alloca %struct.seqcount_ww_mutex*, align 8
  call void @llvm.dbg.declare(metadata %struct.seqcount_ww_mutex** %s.addr.i, metadata !3746, metadata !DIExpression()), !dbg !3992
  %retval = alloca i32, align 4
  %dst.addr = alloca %struct.dma_resv*, align 8
  %src.addr = alloca %struct.dma_resv*, align 8
  %src_list = alloca %struct.dma_resv_list*, align 8
  %dst_list = alloca %struct.dma_resv_list*, align 8
  %old = alloca %struct.dma_fence*, align 8
  %new = alloca %struct.dma_fence*, align 8
  %i = alloca i32, align 4
  %________p1 = alloca %struct.dma_resv_list*, align 8
  %tmp = alloca %struct.dma_resv_list*, align 8
  %tmp5 = alloca %struct.dma_resv_list*, align 8
  %shared_count = alloca i32, align 4
  %________p19 = alloca %struct.dma_resv_list*, align 8
  %tmp12 = alloca %struct.dma_resv_list*, align 8
  %tmp16 = alloca %struct.dma_resv_list*, align 8
  %fence24 = alloca %struct.dma_fence*, align 8
  %________p125 = alloca %struct.dma_fence*, align 8
  %tmp28 = alloca %struct.dma_fence*, align 8
  %tmp31 = alloca %struct.dma_fence*, align 8
  %________p138 = alloca %struct.dma_resv_list*, align 8
  %tmp41 = alloca %struct.dma_resv_list*, align 8
  %tmp45 = alloca %struct.dma_resv_list*, align 8
  %_r_a_p__v = alloca i64, align 8
  store %struct.dma_resv* %dst, %struct.dma_resv** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_resv** %dst.addr, metadata !3994, metadata !DIExpression()), !dbg !3995
  store %struct.dma_resv* %src, %struct.dma_resv** %src.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_resv** %src.addr, metadata !3996, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.declare(metadata %struct.dma_resv_list** %src_list, metadata !3998, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.declare(metadata %struct.dma_resv_list** %dst_list, metadata !4000, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %old, metadata !4002, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %new, metadata !4004, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4006, metadata !DIExpression()), !dbg !4007
  br label %do.body, !dbg !4008

do.body:                                          ; preds = %entry
  %0 = load %struct.dma_resv*, %struct.dma_resv** %dst.addr, align 8, !dbg !4009
  %lock = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %0, i32 0, i32 0, !dbg !4009
  %base = getelementptr inbounds %struct.ww_mutex, %struct.ww_mutex* %lock, i32 0, i32 0, !dbg !4009
  br label %do.end, !dbg !4009

do.end:                                           ; preds = %do.body
  call void @__rcu_read_lock() #9, !dbg !4011
  call void @llvm.dbg.declare(metadata %struct.dma_resv_list** %________p1, metadata !4015, metadata !DIExpression()), !dbg !4017
  br label %do.body1, !dbg !4018

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4020

do.end2:                                          ; preds = %do.body1
  %1 = load %struct.dma_resv*, %struct.dma_resv** %src.addr, align 8, !dbg !4018
  %fence = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %1, i32 0, i32 3, !dbg !4018
  %2 = load volatile %struct.dma_resv_list*, %struct.dma_resv_list** %fence, align 8, !dbg !4018
  store %struct.dma_resv_list* %2, %struct.dma_resv_list** %tmp, align 8, !dbg !4020
  %3 = load %struct.dma_resv_list*, %struct.dma_resv_list** %tmp, align 8, !dbg !4018
  store %struct.dma_resv_list* %3, %struct.dma_resv_list** %________p1, align 8, !dbg !4017
  br label %do.body3, !dbg !4017

do.body3:                                         ; preds = %do.end2
  br label %do.end4, !dbg !4022

do.end4:                                          ; preds = %do.body3
  %4 = load %struct.dma_resv_list*, %struct.dma_resv_list** %________p1, align 8, !dbg !4017
  store %struct.dma_resv_list* %4, %struct.dma_resv_list** %tmp5, align 8, !dbg !4022
  %5 = load %struct.dma_resv_list*, %struct.dma_resv_list** %tmp5, align 8, !dbg !4017
  store %struct.dma_resv_list* %5, %struct.dma_resv_list** %src_list, align 8, !dbg !4024
  br label %retry, !dbg !4025

retry:                                            ; preds = %do.end44, %if.then19, %do.end4
  call void @llvm.dbg.label(metadata !4026), !dbg !4027
  %6 = load %struct.dma_resv_list*, %struct.dma_resv_list** %src_list, align 8, !dbg !4028
  %tobool = icmp ne %struct.dma_resv_list* %6, null, !dbg !4028
  br i1 %tobool, label %if.then, label %if.else81, !dbg !4030

if.then:                                          ; preds = %retry
  call void @llvm.dbg.declare(metadata i32* %shared_count, metadata !4031, metadata !DIExpression()), !dbg !4033
  %7 = load %struct.dma_resv_list*, %struct.dma_resv_list** %src_list, align 8, !dbg !4034
  %shared_count6 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %7, i32 0, i32 1, !dbg !4035
  %8 = load i32, i32* %shared_count6, align 8, !dbg !4035
  store i32 %8, i32* %shared_count, align 4, !dbg !4033
  call void @rcu_read_unlock() #6, !dbg !4036
  %9 = load i32, i32* %shared_count, align 4, !dbg !4037
  %call = call %struct.dma_resv_list* @dma_resv_list_alloc(i32 %9) #6, !dbg !4038
  store %struct.dma_resv_list* %call, %struct.dma_resv_list** %dst_list, align 8, !dbg !4039
  %10 = load %struct.dma_resv_list*, %struct.dma_resv_list** %dst_list, align 8, !dbg !4040
  %tobool7 = icmp ne %struct.dma_resv_list* %10, null, !dbg !4040
  br i1 %tobool7, label %if.end, label %if.then8, !dbg !4042

if.then8:                                         ; preds = %if.then
  store i32 -12, i32* %retval, align 4, !dbg !4043
  br label %return, !dbg !4043

if.end:                                           ; preds = %if.then
  call void @__rcu_read_lock() #9, !dbg !4044
  call void @llvm.dbg.declare(metadata %struct.dma_resv_list** %________p19, metadata !4046, metadata !DIExpression()), !dbg !4048
  br label %do.body10, !dbg !4049

do.body10:                                        ; preds = %if.end
  br label %do.end11, !dbg !4051

do.end11:                                         ; preds = %do.body10
  %11 = load %struct.dma_resv*, %struct.dma_resv** %src.addr, align 8, !dbg !4049
  %fence13 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %11, i32 0, i32 3, !dbg !4049
  %12 = load volatile %struct.dma_resv_list*, %struct.dma_resv_list** %fence13, align 8, !dbg !4049
  store %struct.dma_resv_list* %12, %struct.dma_resv_list** %tmp12, align 8, !dbg !4051
  %13 = load %struct.dma_resv_list*, %struct.dma_resv_list** %tmp12, align 8, !dbg !4049
  store %struct.dma_resv_list* %13, %struct.dma_resv_list** %________p19, align 8, !dbg !4048
  br label %do.body14, !dbg !4048

do.body14:                                        ; preds = %do.end11
  br label %do.end15, !dbg !4053

do.end15:                                         ; preds = %do.body14
  %14 = load %struct.dma_resv_list*, %struct.dma_resv_list** %________p19, align 8, !dbg !4048
  store %struct.dma_resv_list* %14, %struct.dma_resv_list** %tmp16, align 8, !dbg !4053
  %15 = load %struct.dma_resv_list*, %struct.dma_resv_list** %tmp16, align 8, !dbg !4048
  store %struct.dma_resv_list* %15, %struct.dma_resv_list** %src_list, align 8, !dbg !4055
  %16 = load %struct.dma_resv_list*, %struct.dma_resv_list** %src_list, align 8, !dbg !4056
  %tobool17 = icmp ne %struct.dma_resv_list* %16, null, !dbg !4056
  br i1 %tobool17, label %lor.lhs.false, label %if.then19, !dbg !4058

lor.lhs.false:                                    ; preds = %do.end15
  %17 = load %struct.dma_resv_list*, %struct.dma_resv_list** %src_list, align 8, !dbg !4059
  %shared_count18 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %17, i32 0, i32 1, !dbg !4060
  %18 = load i32, i32* %shared_count18, align 8, !dbg !4060
  %19 = load i32, i32* %shared_count, align 4, !dbg !4061
  %cmp = icmp ugt i32 %18, %19, !dbg !4062
  br i1 %cmp, label %if.then19, label %if.end20, !dbg !4063

if.then19:                                        ; preds = %lor.lhs.false, %do.end15
  %20 = load %struct.dma_resv_list*, %struct.dma_resv_list** %dst_list, align 8, !dbg !4064
  %21 = bitcast %struct.dma_resv_list* %20 to i8*, !dbg !4064
  call void @kfree(i8* %21) #6, !dbg !4066
  br label %retry, !dbg !4067

if.end20:                                         ; preds = %lor.lhs.false
  %22 = load %struct.dma_resv_list*, %struct.dma_resv_list** %dst_list, align 8, !dbg !4068
  %shared_count21 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %22, i32 0, i32 1, !dbg !4069
  store i32 0, i32* %shared_count21, align 8, !dbg !4070
  store i32 0, i32* %i, align 4, !dbg !4071
  br label %for.cond, !dbg !4073

for.cond:                                         ; preds = %for.inc, %if.end20
  %23 = load i32, i32* %i, align 4, !dbg !4074
  %24 = load %struct.dma_resv_list*, %struct.dma_resv_list** %src_list, align 8, !dbg !4076
  %shared_count22 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %24, i32 0, i32 1, !dbg !4077
  %25 = load i32, i32* %shared_count22, align 8, !dbg !4077
  %cmp23 = icmp ult i32 %23, %25, !dbg !4078
  br i1 %cmp23, label %for.body, label %for.end, !dbg !4079

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence24, metadata !4080, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %________p125, metadata !4083, metadata !DIExpression()), !dbg !4085
  br label %do.body26, !dbg !4086

do.body26:                                        ; preds = %for.body
  br label %do.end27, !dbg !4088

do.end27:                                         ; preds = %do.body26
  %26 = load %struct.dma_resv_list*, %struct.dma_resv_list** %src_list, align 8, !dbg !4086
  %shared = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %26, i32 0, i32 3, !dbg !4086
  %27 = load i32, i32* %i, align 4, !dbg !4086
  %idxprom = zext i32 %27 to i64, !dbg !4086
  %arrayidx = getelementptr [0 x %struct.dma_fence*], [0 x %struct.dma_fence*]* %shared, i64 0, i64 %idxprom, !dbg !4086
  %28 = load volatile %struct.dma_fence*, %struct.dma_fence** %arrayidx, align 8, !dbg !4086
  store %struct.dma_fence* %28, %struct.dma_fence** %tmp28, align 8, !dbg !4088
  %29 = load %struct.dma_fence*, %struct.dma_fence** %tmp28, align 8, !dbg !4086
  store %struct.dma_fence* %29, %struct.dma_fence** %________p125, align 8, !dbg !4085
  br label %do.body29, !dbg !4085

do.body29:                                        ; preds = %do.end27
  br label %do.end30, !dbg !4090

do.end30:                                         ; preds = %do.body29
  %30 = load %struct.dma_fence*, %struct.dma_fence** %________p125, align 8, !dbg !4085
  store %struct.dma_fence* %30, %struct.dma_fence** %tmp31, align 8, !dbg !4090
  %31 = load %struct.dma_fence*, %struct.dma_fence** %tmp31, align 8, !dbg !4085
  store %struct.dma_fence* %31, %struct.dma_fence** %fence24, align 8, !dbg !4092
  %32 = load %struct.dma_fence*, %struct.dma_fence** %fence24, align 8, !dbg !4093
  %flags = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %32, i32 0, i32 5, !dbg !4095
  %call32 = call zeroext i1 @test_bit(i64 0, i64* %flags) #6, !dbg !4096
  br i1 %call32, label %if.then33, label %if.end34, !dbg !4097

if.then33:                                        ; preds = %do.end30
  br label %for.inc, !dbg !4098

if.end34:                                         ; preds = %do.end30
  %33 = load %struct.dma_fence*, %struct.dma_fence** %fence24, align 8, !dbg !4099
  %call35 = call %struct.dma_fence* @dma_fence_get_rcu(%struct.dma_fence* %33) #6, !dbg !4101
  %tobool36 = icmp ne %struct.dma_fence* %call35, null, !dbg !4101
  br i1 %tobool36, label %if.end46, label %if.then37, !dbg !4102

if.then37:                                        ; preds = %if.end34
  %34 = load %struct.dma_resv_list*, %struct.dma_resv_list** %dst_list, align 8, !dbg !4103
  call void @dma_resv_list_free(%struct.dma_resv_list* %34) #6, !dbg !4105
  call void @llvm.dbg.declare(metadata %struct.dma_resv_list** %________p138, metadata !4106, metadata !DIExpression()), !dbg !4108
  br label %do.body39, !dbg !4109

do.body39:                                        ; preds = %if.then37
  br label %do.end40, !dbg !4111

do.end40:                                         ; preds = %do.body39
  %35 = load %struct.dma_resv*, %struct.dma_resv** %src.addr, align 8, !dbg !4109
  %fence42 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %35, i32 0, i32 3, !dbg !4109
  %36 = load volatile %struct.dma_resv_list*, %struct.dma_resv_list** %fence42, align 8, !dbg !4109
  store %struct.dma_resv_list* %36, %struct.dma_resv_list** %tmp41, align 8, !dbg !4111
  %37 = load %struct.dma_resv_list*, %struct.dma_resv_list** %tmp41, align 8, !dbg !4109
  store %struct.dma_resv_list* %37, %struct.dma_resv_list** %________p138, align 8, !dbg !4108
  br label %do.body43, !dbg !4108

do.body43:                                        ; preds = %do.end40
  br label %do.end44, !dbg !4113

do.end44:                                         ; preds = %do.body43
  %38 = load %struct.dma_resv_list*, %struct.dma_resv_list** %________p138, align 8, !dbg !4108
  store %struct.dma_resv_list* %38, %struct.dma_resv_list** %tmp45, align 8, !dbg !4113
  %39 = load %struct.dma_resv_list*, %struct.dma_resv_list** %tmp45, align 8, !dbg !4108
  store %struct.dma_resv_list* %39, %struct.dma_resv_list** %src_list, align 8, !dbg !4115
  br label %retry, !dbg !4116

if.end46:                                         ; preds = %if.end34
  %40 = load %struct.dma_fence*, %struct.dma_fence** %fence24, align 8, !dbg !4117
  %call47 = call zeroext i1 @dma_fence_is_signaled(%struct.dma_fence* %40) #6, !dbg !4119
  br i1 %call47, label %if.then48, label %if.end49, !dbg !4120

if.then48:                                        ; preds = %if.end46
  %41 = load %struct.dma_fence*, %struct.dma_fence** %fence24, align 8, !dbg !4121
  call void @dma_fence_put(%struct.dma_fence* %41) #6, !dbg !4123
  br label %for.inc, !dbg !4124

if.end49:                                         ; preds = %if.end46
  br label %do.body50, !dbg !4125

do.body50:                                        ; preds = %if.end49
  call void @llvm.dbg.declare(metadata i64* %_r_a_p__v, metadata !4126, metadata !DIExpression()), !dbg !4128
  %42 = load %struct.dma_fence*, %struct.dma_fence** %fence24, align 8, !dbg !4128
  %43 = ptrtoint %struct.dma_fence* %42 to i64, !dbg !4128
  store i64 %43, i64* %_r_a_p__v, align 8, !dbg !4128
  br i1 false, label %land.lhs.true, label %if.else, !dbg !4129

land.lhs.true:                                    ; preds = %do.body50
  %44 = load i64, i64* %_r_a_p__v, align 8, !dbg !4129
  %cmp51 = icmp eq i64 %44, 0, !dbg !4129
  br i1 %cmp51, label %if.then52, label %if.else, !dbg !4128

if.then52:                                        ; preds = %land.lhs.true
  br label %do.body53, !dbg !4129

do.body53:                                        ; preds = %if.then52
  br label %do.body54, !dbg !4131

do.body54:                                        ; preds = %do.body53
  br label %do.end55, !dbg !4133

do.end55:                                         ; preds = %do.body54
  br label %do.body56, !dbg !4131

do.body56:                                        ; preds = %do.end55
  %45 = load i64, i64* %_r_a_p__v, align 8, !dbg !4135
  %46 = inttoptr i64 %45 to %struct.dma_fence*, !dbg !4135
  %47 = load %struct.dma_resv_list*, %struct.dma_resv_list** %dst_list, align 8, !dbg !4135
  %shared57 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %47, i32 0, i32 3, !dbg !4135
  %48 = load %struct.dma_resv_list*, %struct.dma_resv_list** %dst_list, align 8, !dbg !4135
  %shared_count58 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %48, i32 0, i32 1, !dbg !4135
  %49 = load i32, i32* %shared_count58, align 8, !dbg !4135
  %inc = add i32 %49, 1, !dbg !4135
  store i32 %inc, i32* %shared_count58, align 8, !dbg !4135
  %idxprom59 = zext i32 %49 to i64, !dbg !4135
  %arrayidx60 = getelementptr [0 x %struct.dma_fence*], [0 x %struct.dma_fence*]* %shared57, i64 0, i64 %idxprom59, !dbg !4135
  store volatile %struct.dma_fence* %46, %struct.dma_fence** %arrayidx60, align 8, !dbg !4135
  br label %do.end61, !dbg !4135

do.end61:                                         ; preds = %do.body56
  br label %do.end62, !dbg !4131

do.end62:                                         ; preds = %do.end61
  br label %if.end78, !dbg !4131

if.else:                                          ; preds = %land.lhs.true, %do.body50
  br label %do.body63, !dbg !4129

do.body63:                                        ; preds = %if.else
  br label %do.body64, !dbg !4137

do.body64:                                        ; preds = %do.body63
  br label %do.end65, !dbg !4139

do.end65:                                         ; preds = %do.body64
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4137, !srcloc !4141
  br label %do.body66, !dbg !4137

do.body66:                                        ; preds = %do.end65
  br label %do.body67, !dbg !4142

do.body67:                                        ; preds = %do.body66
  br label %do.end68, !dbg !4144

do.end68:                                         ; preds = %do.body67
  br label %do.body69, !dbg !4142

do.body69:                                        ; preds = %do.end68
  %50 = load i64, i64* %_r_a_p__v, align 8, !dbg !4146
  %51 = inttoptr i64 %50 to %struct.dma_fence*, !dbg !4146
  %52 = load %struct.dma_resv_list*, %struct.dma_resv_list** %dst_list, align 8, !dbg !4146
  %shared70 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %52, i32 0, i32 3, !dbg !4146
  %53 = load %struct.dma_resv_list*, %struct.dma_resv_list** %dst_list, align 8, !dbg !4146
  %shared_count71 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %53, i32 0, i32 1, !dbg !4146
  %54 = load i32, i32* %shared_count71, align 8, !dbg !4146
  %inc72 = add i32 %54, 1, !dbg !4146
  store i32 %inc72, i32* %shared_count71, align 8, !dbg !4146
  %idxprom73 = zext i32 %54 to i64, !dbg !4146
  %arrayidx74 = getelementptr [0 x %struct.dma_fence*], [0 x %struct.dma_fence*]* %shared70, i64 0, i64 %idxprom73, !dbg !4146
  store volatile %struct.dma_fence* %51, %struct.dma_fence** %arrayidx74, align 8, !dbg !4146
  br label %do.end75, !dbg !4146

do.end75:                                         ; preds = %do.body69
  br label %do.end76, !dbg !4142

do.end76:                                         ; preds = %do.end75
  br label %do.end77, !dbg !4137

do.end77:                                         ; preds = %do.end76
  br label %if.end78

if.end78:                                         ; preds = %do.end77, %do.end62
  br label %do.end79, !dbg !4128

do.end79:                                         ; preds = %if.end78
  br label %for.inc, !dbg !4148

for.inc:                                          ; preds = %do.end79, %if.then48, %if.then33
  %55 = load i32, i32* %i, align 4, !dbg !4149
  %inc80 = add i32 %55, 1, !dbg !4149
  store i32 %inc80, i32* %i, align 4, !dbg !4149
  br label %for.cond, !dbg !4150, !llvm.loop !4151

for.end:                                          ; preds = %for.cond
  br label %if.end82, !dbg !4153

if.else81:                                        ; preds = %retry
  store %struct.dma_resv_list* null, %struct.dma_resv_list** %dst_list, align 8, !dbg !4154
  br label %if.end82

if.end82:                                         ; preds = %if.else81, %for.end
  %56 = load %struct.dma_resv*, %struct.dma_resv** %src.addr, align 8, !dbg !4156
  %fence_excl = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %56, i32 0, i32 2, !dbg !4157
  %call83 = call %struct.dma_fence* @dma_fence_get_rcu_safe(%struct.dma_fence** %fence_excl) #6, !dbg !4158
  store %struct.dma_fence* %call83, %struct.dma_fence** %new, align 8, !dbg !4159
  call void @rcu_read_unlock() #6, !dbg !4160
  %57 = load %struct.dma_resv*, %struct.dma_resv** %dst.addr, align 8, !dbg !4161
  %call84 = call %struct.dma_resv_list* @dma_resv_get_list(%struct.dma_resv* %57) #6, !dbg !4162
  store %struct.dma_resv_list* %call84, %struct.dma_resv_list** %src_list, align 8, !dbg !4163
  %58 = load %struct.dma_resv*, %struct.dma_resv** %dst.addr, align 8, !dbg !4164
  %call85 = call %struct.dma_fence* @dma_resv_get_excl(%struct.dma_resv* %58) #6, !dbg !4165
  store %struct.dma_fence* %call85, %struct.dma_fence** %old, align 8, !dbg !4166
  br label %do.body86, !dbg !4167

do.body86:                                        ; preds = %if.end82
  %59 = load %struct.dma_resv*, %struct.dma_resv** %dst.addr, align 8, !dbg !4168
  %seq = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %59, i32 0, i32 1, !dbg !4168
  %60 = bitcast %struct.seqcount_ww_mutex* %seq to i8*, !dbg !4168
  %61 = bitcast i8* %60 to %struct.seqcount_ww_mutex*, !dbg !4168
  store %struct.seqcount_ww_mutex* %61, %struct.seqcount_ww_mutex** %s.addr.i, align 8
  %62 = load %struct.dma_resv*, %struct.dma_resv** %dst.addr, align 8, !dbg !4169
  %seq87 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %62, i32 0, i32 1, !dbg !4169
  %63 = bitcast %struct.seqcount_ww_mutex* %seq87 to i8*, !dbg !4169
  %64 = bitcast i8* %63 to %struct.seqcount_ww_mutex*, !dbg !4169
  store %struct.seqcount_ww_mutex* %64, %struct.seqcount_ww_mutex** %s.addr.i120, align 8
  br i1 true, label %if.then89, label %if.end90, !dbg !4168

if.then89:                                        ; preds = %do.body86
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4169, !srcloc !4170
  br label %if.end90, !dbg !4169

if.end90:                                         ; preds = %if.then89, %do.body86
  %65 = load %struct.dma_resv*, %struct.dma_resv** %dst.addr, align 8, !dbg !4168
  %seq91 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %65, i32 0, i32 1, !dbg !4168
  %66 = bitcast %struct.seqcount_ww_mutex* %seq91 to i8*, !dbg !4168
  %67 = bitcast i8* %66 to %struct.seqcount_ww_mutex*, !dbg !4168
  store %struct.seqcount_ww_mutex* %67, %struct.seqcount_ww_mutex** %s.addr.i121, align 8
  %68 = load %struct.seqcount_ww_mutex*, %struct.seqcount_ww_mutex** %s.addr.i121, align 8, !dbg !3986
  %seqcount.i = getelementptr inbounds %struct.seqcount_ww_mutex, %struct.seqcount_ww_mutex* %68, i32 0, i32 0, !dbg !3986
  call void @write_seqcount_t_begin(%struct.seqcount* %seqcount.i) #6, !dbg !4168
  br label %do.end93, !dbg !4168

do.end93:                                         ; preds = %if.end90
  br label %do.body94, !dbg !4171

do.body94:                                        ; preds = %do.end93
  br label %do.body95, !dbg !4172

do.body95:                                        ; preds = %do.body94
  br label %do.body96, !dbg !4174

do.body96:                                        ; preds = %do.body95
  br label %do.end97, !dbg !4176

do.end97:                                         ; preds = %do.body96
  br label %do.body98, !dbg !4174

do.body98:                                        ; preds = %do.end97
  %69 = load %struct.dma_fence*, %struct.dma_fence** %new, align 8, !dbg !4178
  %70 = load %struct.dma_resv*, %struct.dma_resv** %dst.addr, align 8, !dbg !4178
  %fence_excl99 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %70, i32 0, i32 2, !dbg !4178
  store volatile %struct.dma_fence* %69, %struct.dma_fence** %fence_excl99, align 8, !dbg !4178
  br label %do.end100, !dbg !4178

do.end100:                                        ; preds = %do.body98
  br label %do.end101, !dbg !4174

do.end101:                                        ; preds = %do.end100
  br label %do.end102, !dbg !4172

do.end102:                                        ; preds = %do.end101
  br label %do.body103, !dbg !4180

do.body103:                                       ; preds = %do.end102
  br label %do.body104, !dbg !4181

do.body104:                                       ; preds = %do.body103
  br label %do.body105, !dbg !4183

do.body105:                                       ; preds = %do.body104
  br label %do.end106, !dbg !4185

do.end106:                                        ; preds = %do.body105
  br label %do.body107, !dbg !4183

do.body107:                                       ; preds = %do.end106
  %71 = load %struct.dma_resv_list*, %struct.dma_resv_list** %dst_list, align 8, !dbg !4187
  %72 = load %struct.dma_resv*, %struct.dma_resv** %dst.addr, align 8, !dbg !4187
  %fence108 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %72, i32 0, i32 3, !dbg !4187
  store volatile %struct.dma_resv_list* %71, %struct.dma_resv_list** %fence108, align 8, !dbg !4187
  br label %do.end109, !dbg !4187

do.end109:                                        ; preds = %do.body107
  br label %do.end110, !dbg !4183

do.end110:                                        ; preds = %do.end109
  br label %do.end111, !dbg !4181

do.end111:                                        ; preds = %do.end110
  br label %do.body112, !dbg !4189

do.body112:                                       ; preds = %do.end111
  %73 = load %struct.dma_resv*, %struct.dma_resv** %dst.addr, align 8, !dbg !4190
  %seq113 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %73, i32 0, i32 1, !dbg !4190
  %74 = bitcast %struct.seqcount_ww_mutex* %seq113 to i8*, !dbg !4190
  %75 = bitcast i8* %74 to %struct.seqcount_ww_mutex*, !dbg !4190
  store %struct.seqcount_ww_mutex* %75, %struct.seqcount_ww_mutex** %s.addr.i122, align 8
  %76 = load %struct.seqcount_ww_mutex*, %struct.seqcount_ww_mutex** %s.addr.i122, align 8, !dbg !3984
  %seqcount.i123 = getelementptr inbounds %struct.seqcount_ww_mutex, %struct.seqcount_ww_mutex* %76, i32 0, i32 0, !dbg !3984
  call void @write_seqcount_t_end(%struct.seqcount* %seqcount.i123) #6, !dbg !4190
  %77 = load %struct.dma_resv*, %struct.dma_resv** %dst.addr, align 8, !dbg !4191
  %seq115 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %77, i32 0, i32 1, !dbg !4191
  %78 = bitcast %struct.seqcount_ww_mutex* %seq115 to i8*, !dbg !4191
  %79 = bitcast i8* %78 to %struct.seqcount_ww_mutex*, !dbg !4191
  store %struct.seqcount_ww_mutex* %79, %struct.seqcount_ww_mutex** %s.addr.i124, align 8
  br i1 true, label %if.then117, label %if.end118, !dbg !4190

if.then117:                                       ; preds = %do.body112
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4191, !srcloc !4192
  br label %if.end118, !dbg !4191

if.end118:                                        ; preds = %if.then117, %do.body112
  br label %do.end119, !dbg !4190

do.end119:                                        ; preds = %if.end118
  %80 = load %struct.dma_resv_list*, %struct.dma_resv_list** %src_list, align 8, !dbg !4193
  call void @dma_resv_list_free(%struct.dma_resv_list* %80) #6, !dbg !4194
  %81 = load %struct.dma_fence*, %struct.dma_fence** %old, align 8, !dbg !4195
  call void @dma_fence_put(%struct.dma_fence* %81) #6, !dbg !4196
  store i32 0, i32* %retval, align 4, !dbg !4197
  br label %return, !dbg !4197

return:                                           ; preds = %do.end119, %if.then8
  %82 = load i32, i32* %retval, align 4, !dbg !4198
  ret i32 %82, !dbg !4198
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @rcu_read_unlock() #0 !dbg !4199 {
entry:
  br label %do.body, !dbg !4200

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4201

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #6, !dbg !4203
  br label %do.body1, !dbg !4204

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4205

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !4207
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !4208 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !4215, metadata !DIExpression()), !dbg !4218
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !4220, metadata !DIExpression()), !dbg !4221
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !4222, metadata !DIExpression()), !dbg !4223
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4224, metadata !DIExpression()), !dbg !4226
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4228, metadata !DIExpression()), !dbg !4229
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4230, metadata !DIExpression()), !dbg !4238
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4240, metadata !DIExpression()), !dbg !4241
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4242, metadata !DIExpression()), !dbg !4243
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4244, metadata !DIExpression()), !dbg !4245
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4246
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4247
  %div = sdiv i64 %1, 64, !dbg !4247
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4248
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4246
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4249
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4250
  %conv.i = trunc i64 %4 to i32, !dbg !4250
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #9, !dbg !4251
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4252
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4252
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #9, !dbg !4252
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4253
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !4253
  br i1 %8, label %cond.true, label %cond.false, !dbg !4253

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !4253
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !4253
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !4254
  %and.i = and i64 %11, 63, !dbg !4255
  %shl.i = shl i64 1, %and.i, !dbg !4256
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !4257
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !4258
  %shr.i = ashr i64 %13, 6, !dbg !4259
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !4257
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !4257
  %and1.i = and i64 %shl.i, %14, !dbg !4260
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !4261
  %conv = zext i1 %cmp.i to i32, !dbg !4253
  br label %cond.end, !dbg !4253

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !4253
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !4253
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !4262
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !4263
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #7, !dbg !4264, !srcloc !4265
  store i8 %19, i8* %oldbit.i, align 1, !dbg !4264
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !4266
  %tobool.i = trunc i8 %20 to i1, !dbg !4266
  %conv2 = zext i1 %tobool.i to i32, !dbg !4253
  br label %cond.end, !dbg !4253

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !4253
  %tobool = icmp ne i32 %cond, 0, !dbg !4253
  ret i1 %tobool, !dbg !4267
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.dma_fence* @dma_fence_get_rcu(%struct.dma_fence* %fence) #0 !dbg !4268 {
entry:
  %retval = alloca %struct.dma_fence*, align 8
  %fence.addr = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !4269, metadata !DIExpression()), !dbg !4270
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !4271
  %refcount = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %0, i32 0, i32 6, !dbg !4273
  %call = call i32 @kref_get_unless_zero(%struct.kref* %refcount) #6, !dbg !4274
  %tobool = icmp ne i32 %call, 0, !dbg !4274
  br i1 %tobool, label %if.then, label %if.else, !dbg !4275

if.then:                                          ; preds = %entry
  %1 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !4276
  store %struct.dma_fence* %1, %struct.dma_fence** %retval, align 8, !dbg !4277
  br label %return, !dbg !4277

if.else:                                          ; preds = %entry
  store %struct.dma_fence* null, %struct.dma_fence** %retval, align 8, !dbg !4278
  br label %return, !dbg !4278

return:                                           ; preds = %if.else, %if.then
  %2 = load %struct.dma_fence*, %struct.dma_fence** %retval, align 8, !dbg !4279
  ret %struct.dma_fence* %2, !dbg !4279
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.dma_fence* @dma_fence_get_rcu_safe(%struct.dma_fence** %fencep) #0 !dbg !4280 {
entry:
  %retval = alloca %struct.dma_fence*, align 8
  %fencep.addr = alloca %struct.dma_fence**, align 8
  %fence = alloca %struct.dma_fence*, align 8
  %________p1 = alloca %struct.dma_fence*, align 8
  %tmp = alloca %struct.dma_fence*, align 8
  %tmp4 = alloca %struct.dma_fence*, align 8
  %_________p1 = alloca %struct.dma_fence*, align 8
  %tmp10 = alloca %struct.dma_fence*, align 8
  %tmp11 = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence** %fencep, %struct.dma_fence*** %fencep.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence*** %fencep.addr, metadata !4284, metadata !DIExpression()), !dbg !4285
  br label %do.body, !dbg !4286

do.body:                                          ; preds = %do.cond, %entry
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence, metadata !4287, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %________p1, metadata !4290, metadata !DIExpression()), !dbg !4292
  br label %do.body1, !dbg !4293

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4295

do.end:                                           ; preds = %do.body1
  %0 = load %struct.dma_fence**, %struct.dma_fence*** %fencep.addr, align 8, !dbg !4293
  %1 = load volatile %struct.dma_fence*, %struct.dma_fence** %0, align 8, !dbg !4293
  store %struct.dma_fence* %1, %struct.dma_fence** %tmp, align 8, !dbg !4295
  %2 = load %struct.dma_fence*, %struct.dma_fence** %tmp, align 8, !dbg !4293
  store %struct.dma_fence* %2, %struct.dma_fence** %________p1, align 8, !dbg !4292
  br label %do.body2, !dbg !4292

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !4297

do.end3:                                          ; preds = %do.body2
  %3 = load %struct.dma_fence*, %struct.dma_fence** %________p1, align 8, !dbg !4292
  store %struct.dma_fence* %3, %struct.dma_fence** %tmp4, align 8, !dbg !4297
  %4 = load %struct.dma_fence*, %struct.dma_fence** %tmp4, align 8, !dbg !4292
  store %struct.dma_fence* %4, %struct.dma_fence** %fence, align 8, !dbg !4299
  %5 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !4300
  %tobool = icmp ne %struct.dma_fence* %5, null, !dbg !4300
  br i1 %tobool, label %if.end, label %if.then, !dbg !4302

if.then:                                          ; preds = %do.end3
  store %struct.dma_fence* null, %struct.dma_fence** %retval, align 8, !dbg !4303
  br label %do.end14, !dbg !4303

if.end:                                           ; preds = %do.end3
  %6 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !4304
  %call = call %struct.dma_fence* @dma_fence_get_rcu(%struct.dma_fence* %6) #6, !dbg !4306
  %tobool5 = icmp ne %struct.dma_fence* %call, null, !dbg !4306
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !4307

if.then6:                                         ; preds = %if.end
  br label %do.cond, !dbg !4308

if.end7:                                          ; preds = %if.end
  %7 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !4309
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %_________p1, metadata !4311, metadata !DIExpression()), !dbg !4313
  br label %do.body8, !dbg !4314

do.body8:                                         ; preds = %if.end7
  br label %do.end9, !dbg !4316

do.end9:                                          ; preds = %do.body8
  %8 = load %struct.dma_fence**, %struct.dma_fence*** %fencep.addr, align 8, !dbg !4314
  %9 = load volatile %struct.dma_fence*, %struct.dma_fence** %8, align 8, !dbg !4314
  store %struct.dma_fence* %9, %struct.dma_fence** %tmp10, align 8, !dbg !4316
  %10 = load %struct.dma_fence*, %struct.dma_fence** %tmp10, align 8, !dbg !4314
  store %struct.dma_fence* %10, %struct.dma_fence** %_________p1, align 8, !dbg !4313
  %11 = load %struct.dma_fence*, %struct.dma_fence** %_________p1, align 8, !dbg !4313
  store %struct.dma_fence* %11, %struct.dma_fence** %tmp11, align 8, !dbg !4313
  %12 = load %struct.dma_fence*, %struct.dma_fence** %tmp11, align 8, !dbg !4313
  %cmp = icmp eq %struct.dma_fence* %7, %12, !dbg !4318
  br i1 %cmp, label %if.then12, label %if.end13, !dbg !4319

if.then12:                                        ; preds = %do.end9
  %13 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !4320
  store %struct.dma_fence* %13, %struct.dma_fence** %retval, align 8, !dbg !4321
  br label %do.end14, !dbg !4321

if.end13:                                         ; preds = %do.end9
  %14 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !4322
  call void @dma_fence_put(%struct.dma_fence* %14) #6, !dbg !4323
  br label %do.cond, !dbg !4324

do.cond:                                          ; preds = %if.end13, %if.then6
  br i1 true, label %do.body, label %do.end14, !dbg !4324, !llvm.loop !4325

do.end14:                                         ; preds = %if.then, %if.then12, %do.cond
  %15 = load %struct.dma_fence*, %struct.dma_fence** %retval, align 8, !dbg !4327
  ret %struct.dma_fence* %15, !dbg !4327
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dma_resv_get_fences_rcu(%struct.dma_resv* %obj, %struct.dma_fence** %pfence_excl, i32* %pshared_count, %struct.dma_fence*** %pshared) #0 !dbg !4328 {
entry:
  %s.addr.i89 = alloca %struct.seqcount_ww_mutex*, align 8
  call void @llvm.dbg.declare(metadata %struct.seqcount_ww_mutex** %s.addr.i89, metadata !3724, metadata !DIExpression()), !dbg !4332
  %s.addr.i = alloca %struct.seqcount_ww_mutex*, align 8
  call void @llvm.dbg.declare(metadata %struct.seqcount_ww_mutex** %s.addr.i, metadata !4336, metadata !DIExpression()), !dbg !4340
  %seq.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %seq.i, metadata !4345, metadata !DIExpression()), !dbg !4340
  %tmp.i = alloca i32, align 4
  %obj.addr = alloca %struct.dma_resv*, align 8
  %pfence_excl.addr = alloca %struct.dma_fence**, align 8
  %pshared_count.addr = alloca i32*, align 8
  %pshared.addr = alloca %struct.dma_fence***, align 8
  %shared = alloca %struct.dma_fence**, align 8
  %fence_excl = alloca %struct.dma_fence*, align 8
  %shared_count = alloca i32, align 4
  %ret = alloca i32, align 4
  %fobj = alloca %struct.dma_resv_list*, align 8
  %i = alloca i32, align 4
  %seq = alloca i32, align 4
  %sz = alloca i64, align 8
  %tmp = alloca i32, align 4
  %seq1 = alloca i32, align 4
  %seq2 = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  %________p1 = alloca %struct.dma_fence*, align 8
  %tmp7 = alloca %struct.dma_fence*, align 8
  %tmp11 = alloca %struct.dma_fence*, align 8
  %________p115 = alloca %struct.dma_resv_list*, align 8
  %tmp18 = alloca %struct.dma_resv_list*, align 8
  %tmp21 = alloca %struct.dma_resv_list*, align 8
  %nshared = alloca %struct.dma_fence**, align 8
  %________p144 = alloca %struct.dma_fence*, align 8
  %tmp47 = alloca %struct.dma_fence*, align 8
  %tmp51 = alloca %struct.dma_fence*, align 8
  store %struct.dma_resv* %obj, %struct.dma_resv** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_resv** %obj.addr, metadata !4346, metadata !DIExpression()), !dbg !4347
  store %struct.dma_fence** %pfence_excl, %struct.dma_fence*** %pfence_excl.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence*** %pfence_excl.addr, metadata !4348, metadata !DIExpression()), !dbg !4349
  store i32* %pshared_count, i32** %pshared_count.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %pshared_count.addr, metadata !4350, metadata !DIExpression()), !dbg !4351
  store %struct.dma_fence*** %pshared, %struct.dma_fence**** %pshared.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence**** %pshared.addr, metadata !4352, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.declare(metadata %struct.dma_fence*** %shared, metadata !4354, metadata !DIExpression()), !dbg !4355
  store %struct.dma_fence** null, %struct.dma_fence*** %shared, align 8, !dbg !4355
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence_excl, metadata !4356, metadata !DIExpression()), !dbg !4357
  call void @llvm.dbg.declare(metadata i32* %shared_count, metadata !4358, metadata !DIExpression()), !dbg !4359
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4360, metadata !DIExpression()), !dbg !4361
  store i32 1, i32* %ret, align 4, !dbg !4361
  br label %do.body, !dbg !4362

do.body:                                          ; preds = %do.cond, %entry
  call void @llvm.dbg.declare(metadata %struct.dma_resv_list** %fobj, metadata !4363, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4365, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.declare(metadata i32* %seq, metadata !4367, metadata !DIExpression()), !dbg !4368
  call void @llvm.dbg.declare(metadata i64* %sz, metadata !4369, metadata !DIExpression()), !dbg !4370
  store i64 0, i64* %sz, align 8, !dbg !4370
  store i32 0, i32* %i, align 4, !dbg !4371
  store i32 0, i32* %shared_count, align 4, !dbg !4372
  call void @__rcu_read_lock() #9, !dbg !4373
  call void @llvm.dbg.declare(metadata i32* %seq1, metadata !4375, metadata !DIExpression()), !dbg !4376
  call void @llvm.dbg.declare(metadata i32* %seq2, metadata !4377, metadata !DIExpression()), !dbg !4378
  br label %while.cond, !dbg !4378

while.cond:                                       ; preds = %while.body, %do.body
  %0 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !4378
  %seq3 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %0, i32 0, i32 1, !dbg !4378
  %1 = bitcast %struct.seqcount_ww_mutex* %seq3 to i8*, !dbg !4378
  %2 = bitcast i8* %1 to %struct.seqcount_ww_mutex*, !dbg !4378
  store %struct.seqcount_ww_mutex* %2, %struct.seqcount_ww_mutex** %s.addr.i, align 8
  %3 = load %struct.seqcount_ww_mutex*, %struct.seqcount_ww_mutex** %s.addr.i, align 8, !dbg !4379
  %seqcount.i = getelementptr inbounds %struct.seqcount_ww_mutex, %struct.seqcount_ww_mutex* %3, i32 0, i32 0, !dbg !4379
  %sequence.i = getelementptr inbounds %struct.seqcount, %struct.seqcount* %seqcount.i, i32 0, i32 0, !dbg !4379
  %4 = load volatile i32, i32* %sequence.i, align 4, !dbg !4379
  store i32 %4, i32* %tmp.i, align 4, !dbg !4381
  %5 = load i32, i32* %tmp.i, align 4, !dbg !4379
  store i32 %5, i32* %seq.i, align 4, !dbg !4340
  %6 = load i32, i32* %seq.i, align 4, !dbg !4383
  store i32 %6, i32* %seq2, align 4, !dbg !4378
  %and = and i32 %6, 1, !dbg !4378
  %tobool = icmp ne i32 %and, 0, !dbg !4378
  br i1 %tobool, label %while.body, label %while.end, !dbg !4378

while.body:                                       ; preds = %while.cond
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4385, !srcloc !4391
  br label %while.cond, !dbg !4378, !llvm.loop !4392

while.end:                                        ; preds = %while.cond
  call void @kcsan_atomic_next(i32 1000) #6, !dbg !4378
  %7 = load i32, i32* %seq2, align 4, !dbg !4378
  store i32 %7, i32* %tmp4, align 4, !dbg !4378
  %8 = load i32, i32* %tmp4, align 4, !dbg !4378
  store i32 %8, i32* %seq1, align 4, !dbg !4376
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4376, !srcloc !4393
  %9 = load i32, i32* %seq1, align 4, !dbg !4376
  store i32 %9, i32* %tmp5, align 4, !dbg !4376
  %10 = load i32, i32* %tmp5, align 4, !dbg !4376
  store i32 %10, i32* %tmp, align 4, !dbg !4394
  %11 = load i32, i32* %tmp, align 4, !dbg !4395
  store i32 %11, i32* %seq, align 4, !dbg !4396
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %________p1, metadata !4397, metadata !DIExpression()), !dbg !4399
  br label %do.body6, !dbg !4400

do.body6:                                         ; preds = %while.end
  br label %do.end, !dbg !4402

do.end:                                           ; preds = %do.body6
  %12 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !4400
  %fence_excl8 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %12, i32 0, i32 2, !dbg !4400
  %13 = load volatile %struct.dma_fence*, %struct.dma_fence** %fence_excl8, align 8, !dbg !4400
  store %struct.dma_fence* %13, %struct.dma_fence** %tmp7, align 8, !dbg !4402
  %14 = load %struct.dma_fence*, %struct.dma_fence** %tmp7, align 8, !dbg !4400
  store %struct.dma_fence* %14, %struct.dma_fence** %________p1, align 8, !dbg !4399
  br label %do.body9, !dbg !4399

do.body9:                                         ; preds = %do.end
  br label %do.end10, !dbg !4404

do.end10:                                         ; preds = %do.body9
  %15 = load %struct.dma_fence*, %struct.dma_fence** %________p1, align 8, !dbg !4399
  store %struct.dma_fence* %15, %struct.dma_fence** %tmp11, align 8, !dbg !4404
  %16 = load %struct.dma_fence*, %struct.dma_fence** %tmp11, align 8, !dbg !4399
  store %struct.dma_fence* %16, %struct.dma_fence** %fence_excl, align 8, !dbg !4406
  %17 = load %struct.dma_fence*, %struct.dma_fence** %fence_excl, align 8, !dbg !4407
  %tobool12 = icmp ne %struct.dma_fence* %17, null, !dbg !4407
  br i1 %tobool12, label %land.lhs.true, label %if.end, !dbg !4409

land.lhs.true:                                    ; preds = %do.end10
  %18 = load %struct.dma_fence*, %struct.dma_fence** %fence_excl, align 8, !dbg !4410
  %call13 = call %struct.dma_fence* @dma_fence_get_rcu(%struct.dma_fence* %18) #6, !dbg !4411
  %tobool14 = icmp ne %struct.dma_fence* %call13, null, !dbg !4411
  br i1 %tobool14, label %if.end, label %if.then, !dbg !4412

if.then:                                          ; preds = %land.lhs.true
  br label %unlock, !dbg !4413

if.end:                                           ; preds = %land.lhs.true, %do.end10
  call void @llvm.dbg.declare(metadata %struct.dma_resv_list** %________p115, metadata !4414, metadata !DIExpression()), !dbg !4416
  br label %do.body16, !dbg !4417

do.body16:                                        ; preds = %if.end
  br label %do.end17, !dbg !4419

do.end17:                                         ; preds = %do.body16
  %19 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !4417
  %fence = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %19, i32 0, i32 3, !dbg !4417
  %20 = load volatile %struct.dma_resv_list*, %struct.dma_resv_list** %fence, align 8, !dbg !4417
  store %struct.dma_resv_list* %20, %struct.dma_resv_list** %tmp18, align 8, !dbg !4419
  %21 = load %struct.dma_resv_list*, %struct.dma_resv_list** %tmp18, align 8, !dbg !4417
  store %struct.dma_resv_list* %21, %struct.dma_resv_list** %________p115, align 8, !dbg !4416
  br label %do.body19, !dbg !4416

do.body19:                                        ; preds = %do.end17
  br label %do.end20, !dbg !4421

do.end20:                                         ; preds = %do.body19
  %22 = load %struct.dma_resv_list*, %struct.dma_resv_list** %________p115, align 8, !dbg !4416
  store %struct.dma_resv_list* %22, %struct.dma_resv_list** %tmp21, align 8, !dbg !4421
  %23 = load %struct.dma_resv_list*, %struct.dma_resv_list** %tmp21, align 8, !dbg !4416
  store %struct.dma_resv_list* %23, %struct.dma_resv_list** %fobj, align 8, !dbg !4423
  %24 = load %struct.dma_resv_list*, %struct.dma_resv_list** %fobj, align 8, !dbg !4424
  %tobool22 = icmp ne %struct.dma_resv_list* %24, null, !dbg !4424
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !4426

if.then23:                                        ; preds = %do.end20
  %25 = load %struct.dma_resv_list*, %struct.dma_resv_list** %fobj, align 8, !dbg !4427
  %shared_max = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %25, i32 0, i32 2, !dbg !4428
  %26 = load i32, i32* %shared_max, align 4, !dbg !4428
  %conv = zext i32 %26 to i64, !dbg !4427
  %mul = mul i64 8, %conv, !dbg !4429
  %27 = load i64, i64* %sz, align 8, !dbg !4430
  %add = add i64 %27, %mul, !dbg !4430
  store i64 %add, i64* %sz, align 8, !dbg !4430
  br label %if.end24, !dbg !4431

if.end24:                                         ; preds = %if.then23, %do.end20
  %28 = load %struct.dma_fence**, %struct.dma_fence*** %pfence_excl.addr, align 8, !dbg !4432
  %tobool25 = icmp ne %struct.dma_fence** %28, null, !dbg !4432
  br i1 %tobool25, label %if.end30, label %land.lhs.true26, !dbg !4434

land.lhs.true26:                                  ; preds = %if.end24
  %29 = load %struct.dma_fence*, %struct.dma_fence** %fence_excl, align 8, !dbg !4435
  %tobool27 = icmp ne %struct.dma_fence* %29, null, !dbg !4435
  br i1 %tobool27, label %if.then28, label %if.end30, !dbg !4436

if.then28:                                        ; preds = %land.lhs.true26
  %30 = load i64, i64* %sz, align 8, !dbg !4437
  %add29 = add i64 %30, 8, !dbg !4437
  store i64 %add29, i64* %sz, align 8, !dbg !4437
  br label %if.end30, !dbg !4438

if.end30:                                         ; preds = %if.then28, %land.lhs.true26, %if.end24
  %31 = load i64, i64* %sz, align 8, !dbg !4439
  %tobool31 = icmp ne i64 %31, 0, !dbg !4439
  br i1 %tobool31, label %if.then32, label %if.end60, !dbg !4441

if.then32:                                        ; preds = %if.end30
  call void @llvm.dbg.declare(metadata %struct.dma_fence*** %nshared, metadata !4442, metadata !DIExpression()), !dbg !4444
  %32 = load %struct.dma_fence**, %struct.dma_fence*** %shared, align 8, !dbg !4445
  %33 = bitcast %struct.dma_fence** %32 to i8*, !dbg !4445
  %34 = load i64, i64* %sz, align 8, !dbg !4446
  %call33 = call i8* @krealloc(i8* %33, i64 %34, i32 10240) #6, !dbg !4447
  %35 = bitcast i8* %call33 to %struct.dma_fence**, !dbg !4447
  store %struct.dma_fence** %35, %struct.dma_fence*** %nshared, align 8, !dbg !4448
  %36 = load %struct.dma_fence**, %struct.dma_fence*** %nshared, align 8, !dbg !4449
  %tobool34 = icmp ne %struct.dma_fence** %36, null, !dbg !4449
  br i1 %tobool34, label %if.end40, label %if.then35, !dbg !4451

if.then35:                                        ; preds = %if.then32
  call void @rcu_read_unlock() #6, !dbg !4452
  %37 = load %struct.dma_fence*, %struct.dma_fence** %fence_excl, align 8, !dbg !4454
  call void @dma_fence_put(%struct.dma_fence* %37) #6, !dbg !4455
  store %struct.dma_fence* null, %struct.dma_fence** %fence_excl, align 8, !dbg !4456
  %38 = load %struct.dma_fence**, %struct.dma_fence*** %shared, align 8, !dbg !4457
  %39 = bitcast %struct.dma_fence** %38 to i8*, !dbg !4457
  %40 = load i64, i64* %sz, align 8, !dbg !4458
  %call36 = call i8* @krealloc(i8* %39, i64 %40, i32 3264) #6, !dbg !4459
  %41 = bitcast i8* %call36 to %struct.dma_fence**, !dbg !4459
  store %struct.dma_fence** %41, %struct.dma_fence*** %nshared, align 8, !dbg !4460
  %42 = load %struct.dma_fence**, %struct.dma_fence*** %nshared, align 8, !dbg !4461
  %tobool37 = icmp ne %struct.dma_fence** %42, null, !dbg !4461
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !4463

if.then38:                                        ; preds = %if.then35
  %43 = load %struct.dma_fence**, %struct.dma_fence*** %nshared, align 8, !dbg !4464
  store %struct.dma_fence** %43, %struct.dma_fence*** %shared, align 8, !dbg !4466
  br label %do.cond, !dbg !4467

if.end39:                                         ; preds = %if.then35
  store i32 -12, i32* %ret, align 4, !dbg !4468
  br label %do.end76, !dbg !4469

if.end40:                                         ; preds = %if.then32
  %44 = load %struct.dma_fence**, %struct.dma_fence*** %nshared, align 8, !dbg !4470
  store %struct.dma_fence** %44, %struct.dma_fence*** %shared, align 8, !dbg !4471
  %45 = load %struct.dma_resv_list*, %struct.dma_resv_list** %fobj, align 8, !dbg !4472
  %tobool41 = icmp ne %struct.dma_resv_list* %45, null, !dbg !4472
  br i1 %tobool41, label %cond.true, label %cond.false, !dbg !4472

cond.true:                                        ; preds = %if.end40
  %46 = load %struct.dma_resv_list*, %struct.dma_resv_list** %fobj, align 8, !dbg !4473
  %shared_count42 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %46, i32 0, i32 1, !dbg !4474
  %47 = load i32, i32* %shared_count42, align 8, !dbg !4474
  br label %cond.end, !dbg !4472

cond.false:                                       ; preds = %if.end40
  br label %cond.end, !dbg !4472

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %47, %cond.true ], [ 0, %cond.false ], !dbg !4472
  store i32 %cond, i32* %shared_count, align 4, !dbg !4475
  store i32 0, i32* %i, align 4, !dbg !4476
  br label %for.cond, !dbg !4478

for.cond:                                         ; preds = %for.inc, %cond.end
  %48 = load i32, i32* %i, align 4, !dbg !4479
  %49 = load i32, i32* %shared_count, align 4, !dbg !4481
  %cmp = icmp ult i32 %48, %49, !dbg !4482
  br i1 %cmp, label %for.body, label %for.end, !dbg !4483

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %________p144, metadata !4484, metadata !DIExpression()), !dbg !4487
  br label %do.body45, !dbg !4488

do.body45:                                        ; preds = %for.body
  br label %do.end46, !dbg !4490

do.end46:                                         ; preds = %do.body45
  %50 = load %struct.dma_resv_list*, %struct.dma_resv_list** %fobj, align 8, !dbg !4488
  %shared48 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %50, i32 0, i32 3, !dbg !4488
  %51 = load i32, i32* %i, align 4, !dbg !4488
  %idxprom = zext i32 %51 to i64, !dbg !4488
  %arrayidx = getelementptr [0 x %struct.dma_fence*], [0 x %struct.dma_fence*]* %shared48, i64 0, i64 %idxprom, !dbg !4488
  %52 = load volatile %struct.dma_fence*, %struct.dma_fence** %arrayidx, align 8, !dbg !4488
  store %struct.dma_fence* %52, %struct.dma_fence** %tmp47, align 8, !dbg !4490
  %53 = load %struct.dma_fence*, %struct.dma_fence** %tmp47, align 8, !dbg !4488
  store %struct.dma_fence* %53, %struct.dma_fence** %________p144, align 8, !dbg !4487
  br label %do.body49, !dbg !4487

do.body49:                                        ; preds = %do.end46
  br label %do.end50, !dbg !4492

do.end50:                                         ; preds = %do.body49
  %54 = load %struct.dma_fence*, %struct.dma_fence** %________p144, align 8, !dbg !4487
  store %struct.dma_fence* %54, %struct.dma_fence** %tmp51, align 8, !dbg !4492
  %55 = load %struct.dma_fence*, %struct.dma_fence** %tmp51, align 8, !dbg !4487
  %56 = load %struct.dma_fence**, %struct.dma_fence*** %shared, align 8, !dbg !4494
  %57 = load i32, i32* %i, align 4, !dbg !4495
  %idxprom52 = zext i32 %57 to i64, !dbg !4494
  %arrayidx53 = getelementptr %struct.dma_fence*, %struct.dma_fence** %56, i64 %idxprom52, !dbg !4494
  store %struct.dma_fence* %55, %struct.dma_fence** %arrayidx53, align 8, !dbg !4496
  %58 = load %struct.dma_fence**, %struct.dma_fence*** %shared, align 8, !dbg !4497
  %59 = load i32, i32* %i, align 4, !dbg !4499
  %idxprom54 = zext i32 %59 to i64, !dbg !4497
  %arrayidx55 = getelementptr %struct.dma_fence*, %struct.dma_fence** %58, i64 %idxprom54, !dbg !4497
  %60 = load %struct.dma_fence*, %struct.dma_fence** %arrayidx55, align 8, !dbg !4497
  %call56 = call %struct.dma_fence* @dma_fence_get_rcu(%struct.dma_fence* %60) #6, !dbg !4500
  %tobool57 = icmp ne %struct.dma_fence* %call56, null, !dbg !4500
  br i1 %tobool57, label %if.end59, label %if.then58, !dbg !4501

if.then58:                                        ; preds = %do.end50
  br label %for.end, !dbg !4502

if.end59:                                         ; preds = %do.end50
  br label %for.inc, !dbg !4503

for.inc:                                          ; preds = %if.end59
  %61 = load i32, i32* %i, align 4, !dbg !4504
  %inc = add i32 %61, 1, !dbg !4504
  store i32 %inc, i32* %i, align 4, !dbg !4504
  br label %for.cond, !dbg !4505, !llvm.loop !4506

for.end:                                          ; preds = %if.then58, %for.cond
  br label %if.end60, !dbg !4508

if.end60:                                         ; preds = %for.end, %if.end30
  %62 = load i32, i32* %i, align 4, !dbg !4509
  %63 = load i32, i32* %shared_count, align 4, !dbg !4510
  %cmp61 = icmp ne i32 %62, %63, !dbg !4511
  br i1 %cmp61, label %if.then67, label %lor.lhs.false, !dbg !4512

lor.lhs.false:                                    ; preds = %if.end60
  %64 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !4513
  %seq63 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %64, i32 0, i32 1, !dbg !4513
  %65 = bitcast %struct.seqcount_ww_mutex* %seq63 to i8*, !dbg !4513
  %66 = bitcast i8* %65 to %struct.seqcount_ww_mutex*, !dbg !4513
  store %struct.seqcount_ww_mutex* %66, %struct.seqcount_ww_mutex** %s.addr.i89, align 8
  %67 = load %struct.seqcount_ww_mutex*, %struct.seqcount_ww_mutex** %s.addr.i89, align 8, !dbg !4332
  %seqcount.i90 = getelementptr inbounds %struct.seqcount_ww_mutex, %struct.seqcount_ww_mutex* %67, i32 0, i32 0, !dbg !4332
  %68 = load i32, i32* %seq, align 4, !dbg !4513
  %call65 = call i32 @read_seqcount_t_retry(%struct.seqcount* %seqcount.i90, i32 %68) #6, !dbg !4513
  %tobool66 = icmp ne i32 %call65, 0, !dbg !4513
  br i1 %tobool66, label %if.then67, label %if.end74, !dbg !4514

if.then67:                                        ; preds = %lor.lhs.false, %if.end60
  br label %while.cond68, !dbg !4515

while.cond68:                                     ; preds = %while.body70, %if.then67
  %69 = load i32, i32* %i, align 4, !dbg !4517
  %dec = add i32 %69, -1, !dbg !4517
  store i32 %dec, i32* %i, align 4, !dbg !4517
  %tobool69 = icmp ne i32 %69, 0, !dbg !4515
  br i1 %tobool69, label %while.body70, label %while.end73, !dbg !4515

while.body70:                                     ; preds = %while.cond68
  %70 = load %struct.dma_fence**, %struct.dma_fence*** %shared, align 8, !dbg !4518
  %71 = load i32, i32* %i, align 4, !dbg !4519
  %idxprom71 = zext i32 %71 to i64, !dbg !4518
  %arrayidx72 = getelementptr %struct.dma_fence*, %struct.dma_fence** %70, i64 %idxprom71, !dbg !4518
  %72 = load %struct.dma_fence*, %struct.dma_fence** %arrayidx72, align 8, !dbg !4518
  call void @dma_fence_put(%struct.dma_fence* %72) #6, !dbg !4520
  br label %while.cond68, !dbg !4515, !llvm.loop !4521

while.end73:                                      ; preds = %while.cond68
  %73 = load %struct.dma_fence*, %struct.dma_fence** %fence_excl, align 8, !dbg !4523
  call void @dma_fence_put(%struct.dma_fence* %73) #6, !dbg !4524
  br label %unlock, !dbg !4525

if.end74:                                         ; preds = %lor.lhs.false
  store i32 0, i32* %ret, align 4, !dbg !4526
  br label %unlock, !dbg !4527

unlock:                                           ; preds = %if.end74, %while.end73, %if.then
  call void @llvm.dbg.label(metadata !4528), !dbg !4529
  call void @rcu_read_unlock() #6, !dbg !4530
  br label %do.cond, !dbg !4531

do.cond:                                          ; preds = %unlock, %if.then38
  %74 = load i32, i32* %ret, align 4, !dbg !4532
  %tobool75 = icmp ne i32 %74, 0, !dbg !4531
  br i1 %tobool75, label %do.body, label %do.end76, !dbg !4531, !llvm.loop !4533

do.end76:                                         ; preds = %do.cond, %if.end39
  %75 = load %struct.dma_fence**, %struct.dma_fence*** %pfence_excl.addr, align 8, !dbg !4535
  %tobool77 = icmp ne %struct.dma_fence** %75, null, !dbg !4535
  br i1 %tobool77, label %if.then78, label %if.else, !dbg !4537

if.then78:                                        ; preds = %do.end76
  %76 = load %struct.dma_fence*, %struct.dma_fence** %fence_excl, align 8, !dbg !4538
  %77 = load %struct.dma_fence**, %struct.dma_fence*** %pfence_excl.addr, align 8, !dbg !4539
  store %struct.dma_fence* %76, %struct.dma_fence** %77, align 8, !dbg !4540
  br label %if.end85, !dbg !4541

if.else:                                          ; preds = %do.end76
  %78 = load %struct.dma_fence*, %struct.dma_fence** %fence_excl, align 8, !dbg !4542
  %tobool79 = icmp ne %struct.dma_fence* %78, null, !dbg !4542
  br i1 %tobool79, label %if.then80, label %if.end84, !dbg !4544

if.then80:                                        ; preds = %if.else
  %79 = load %struct.dma_fence*, %struct.dma_fence** %fence_excl, align 8, !dbg !4545
  %80 = load %struct.dma_fence**, %struct.dma_fence*** %shared, align 8, !dbg !4546
  %81 = load i32, i32* %shared_count, align 4, !dbg !4547
  %inc81 = add i32 %81, 1, !dbg !4547
  store i32 %inc81, i32* %shared_count, align 4, !dbg !4547
  %idxprom82 = zext i32 %81 to i64, !dbg !4546
  %arrayidx83 = getelementptr %struct.dma_fence*, %struct.dma_fence** %80, i64 %idxprom82, !dbg !4546
  store %struct.dma_fence* %79, %struct.dma_fence** %arrayidx83, align 8, !dbg !4548
  br label %if.end84, !dbg !4546

if.end84:                                         ; preds = %if.then80, %if.else
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.then78
  %82 = load i32, i32* %shared_count, align 4, !dbg !4549
  %tobool86 = icmp ne i32 %82, 0, !dbg !4549
  br i1 %tobool86, label %if.end88, label %if.then87, !dbg !4551

if.then87:                                        ; preds = %if.end85
  %83 = load %struct.dma_fence**, %struct.dma_fence*** %shared, align 8, !dbg !4552
  %84 = bitcast %struct.dma_fence** %83 to i8*, !dbg !4552
  call void @kfree(i8* %84) #6, !dbg !4554
  store %struct.dma_fence** null, %struct.dma_fence*** %shared, align 8, !dbg !4555
  br label %if.end88, !dbg !4556

if.end88:                                         ; preds = %if.then87, %if.end85
  %85 = load i32, i32* %shared_count, align 4, !dbg !4557
  %86 = load i32*, i32** %pshared_count.addr, align 8, !dbg !4558
  store i32 %85, i32* %86, align 4, !dbg !4559
  %87 = load %struct.dma_fence**, %struct.dma_fence*** %shared, align 8, !dbg !4560
  %88 = load %struct.dma_fence***, %struct.dma_fence**** %pshared.addr, align 8, !dbg !4561
  store %struct.dma_fence** %87, %struct.dma_fence*** %88, align 8, !dbg !4562
  %89 = load i32, i32* %ret, align 4, !dbg !4563
  ret i32 %89, !dbg !4564
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_atomic_next(i32 %n) #0 !dbg !4565 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !4567, metadata !DIExpression()), !dbg !4568
  ret void, !dbg !4569
}

; Function Attrs: noredzone
declare dso_local i8* @krealloc(i8*, i64, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @read_seqcount_t_retry(%struct.seqcount* %s, i32 %start) #0 !dbg !4570 {
entry:
  %s.addr = alloca %struct.seqcount*, align 8
  %start.addr = alloca i32, align 4
  store %struct.seqcount* %s, %struct.seqcount** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.seqcount** %s.addr, metadata !4575, metadata !DIExpression()), !dbg !4576
  store i32 %start, i32* %start.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %start.addr, metadata !4577, metadata !DIExpression()), !dbg !4578
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4579, !srcloc !4580
  %0 = load %struct.seqcount*, %struct.seqcount** %s.addr, align 8, !dbg !4581
  %1 = load i32, i32* %start.addr, align 4, !dbg !4582
  %call = call i32 @__read_seqcount_t_retry(%struct.seqcount* %0, i32 %1) #6, !dbg !4583
  ret i32 %call, !dbg !4584
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @dma_resv_wait_timeout_rcu(%struct.dma_resv* %obj, i1 zeroext %wait_all, i1 zeroext %intr, i64 %timeout) #0 !dbg !4585 {
entry:
  %s.addr.i73 = alloca %struct.seqcount_ww_mutex*, align 8
  call void @llvm.dbg.declare(metadata %struct.seqcount_ww_mutex** %s.addr.i73, metadata !3724, metadata !DIExpression()), !dbg !4588
  %s.addr.i = alloca %struct.seqcount_ww_mutex*, align 8
  call void @llvm.dbg.declare(metadata %struct.seqcount_ww_mutex** %s.addr.i, metadata !4336, metadata !DIExpression()), !dbg !4593
  %seq.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %seq.i, metadata !4345, metadata !DIExpression()), !dbg !4593
  %tmp.i = alloca i32, align 4
  %obj.addr = alloca %struct.dma_resv*, align 8
  %wait_all.addr = alloca i8, align 1
  %intr.addr = alloca i8, align 1
  %timeout.addr = alloca i64, align 8
  %fence = alloca %struct.dma_fence*, align 8
  %seq = alloca i32, align 4
  %shared_count = alloca i32, align 4
  %ret = alloca i64, align 8
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %seq2 = alloca i32, align 4
  %seq3 = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %________p1 = alloca %struct.dma_fence*, align 8
  %tmp8 = alloca %struct.dma_fence*, align 8
  %tmp11 = alloca %struct.dma_fence*, align 8
  %fobj = alloca %struct.dma_resv_list*, align 8
  %________p123 = alloca %struct.dma_resv_list*, align 8
  %tmp26 = alloca %struct.dma_resv_list*, align 8
  %tmp30 = alloca %struct.dma_resv_list*, align 8
  %lfence = alloca %struct.dma_fence*, align 8
  %________p136 = alloca %struct.dma_fence*, align 8
  %tmp39 = alloca %struct.dma_fence*, align 8
  %tmp42 = alloca %struct.dma_fence*, align 8
  store %struct.dma_resv* %obj, %struct.dma_resv** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_resv** %obj.addr, metadata !4598, metadata !DIExpression()), !dbg !4599
  %frombool = zext i1 %wait_all to i8
  store i8 %frombool, i8* %wait_all.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %wait_all.addr, metadata !4600, metadata !DIExpression()), !dbg !4601
  %frombool1 = zext i1 %intr to i8
  store i8 %frombool1, i8* %intr.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %intr.addr, metadata !4602, metadata !DIExpression()), !dbg !4603
  store i64 %timeout, i64* %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %timeout.addr, metadata !4604, metadata !DIExpression()), !dbg !4605
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence, metadata !4606, metadata !DIExpression()), !dbg !4607
  call void @llvm.dbg.declare(metadata i32* %seq, metadata !4608, metadata !DIExpression()), !dbg !4609
  call void @llvm.dbg.declare(metadata i32* %shared_count, metadata !4610, metadata !DIExpression()), !dbg !4611
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !4612, metadata !DIExpression()), !dbg !4613
  %0 = load i64, i64* %timeout.addr, align 8, !dbg !4614
  %tobool = icmp ne i64 %0, 0, !dbg !4614
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4614

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* %timeout.addr, align 8, !dbg !4615
  br label %cond.end, !dbg !4614

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4614

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %1, %cond.true ], [ 1, %cond.false ], !dbg !4614
  store i64 %cond, i64* %ret, align 8, !dbg !4613
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4616, metadata !DIExpression()), !dbg !4617
  br label %retry, !dbg !4618

retry:                                            ; preds = %unlock_retry, %if.then70, %if.then61, %cond.end
  call void @llvm.dbg.label(metadata !4619), !dbg !4620
  store i32 0, i32* %shared_count, align 4, !dbg !4621
  call void @llvm.dbg.declare(metadata i32* %seq2, metadata !4622, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.declare(metadata i32* %seq3, metadata !4624, metadata !DIExpression()), !dbg !4625
  br label %while.cond, !dbg !4625

while.cond:                                       ; preds = %while.body, %retry
  %2 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !4625
  %seq4 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %2, i32 0, i32 1, !dbg !4625
  %3 = bitcast %struct.seqcount_ww_mutex* %seq4 to i8*, !dbg !4625
  %4 = bitcast i8* %3 to %struct.seqcount_ww_mutex*, !dbg !4625
  store %struct.seqcount_ww_mutex* %4, %struct.seqcount_ww_mutex** %s.addr.i, align 8
  %5 = load %struct.seqcount_ww_mutex*, %struct.seqcount_ww_mutex** %s.addr.i, align 8, !dbg !4626
  %seqcount.i = getelementptr inbounds %struct.seqcount_ww_mutex, %struct.seqcount_ww_mutex* %5, i32 0, i32 0, !dbg !4626
  %sequence.i = getelementptr inbounds %struct.seqcount, %struct.seqcount* %seqcount.i, i32 0, i32 0, !dbg !4626
  %6 = load volatile i32, i32* %sequence.i, align 4, !dbg !4626
  store i32 %6, i32* %tmp.i, align 4, !dbg !4627
  %7 = load i32, i32* %tmp.i, align 4, !dbg !4626
  store i32 %7, i32* %seq.i, align 4, !dbg !4593
  %8 = load i32, i32* %seq.i, align 4, !dbg !4628
  store i32 %8, i32* %seq3, align 4, !dbg !4625
  %and = and i32 %8, 1, !dbg !4625
  %tobool5 = icmp ne i32 %and, 0, !dbg !4625
  br i1 %tobool5, label %while.body, label %while.end, !dbg !4625

while.body:                                       ; preds = %while.cond
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4629, !srcloc !4391
  br label %while.cond, !dbg !4625, !llvm.loop !4632

while.end:                                        ; preds = %while.cond
  call void @kcsan_atomic_next(i32 1000) #6, !dbg !4625
  %9 = load i32, i32* %seq3, align 4, !dbg !4625
  store i32 %9, i32* %tmp6, align 4, !dbg !4625
  %10 = load i32, i32* %tmp6, align 4, !dbg !4625
  store i32 %10, i32* %seq2, align 4, !dbg !4623
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4623, !srcloc !4633
  %11 = load i32, i32* %seq2, align 4, !dbg !4623
  store i32 %11, i32* %tmp7, align 4, !dbg !4623
  %12 = load i32, i32* %tmp7, align 4, !dbg !4623
  store i32 %12, i32* %tmp, align 4, !dbg !4634
  %13 = load i32, i32* %tmp, align 4, !dbg !4635
  store i32 %13, i32* %seq, align 4, !dbg !4636
  call void @__rcu_read_lock() #9, !dbg !4637
  store i32 -1, i32* %i, align 4, !dbg !4639
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %________p1, metadata !4640, metadata !DIExpression()), !dbg !4642
  br label %do.body, !dbg !4643

do.body:                                          ; preds = %while.end
  br label %do.end, !dbg !4645

do.end:                                           ; preds = %do.body
  %14 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !4643
  %fence_excl = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %14, i32 0, i32 2, !dbg !4643
  %15 = load volatile %struct.dma_fence*, %struct.dma_fence** %fence_excl, align 8, !dbg !4643
  store %struct.dma_fence* %15, %struct.dma_fence** %tmp8, align 8, !dbg !4645
  %16 = load %struct.dma_fence*, %struct.dma_fence** %tmp8, align 8, !dbg !4643
  store %struct.dma_fence* %16, %struct.dma_fence** %________p1, align 8, !dbg !4642
  br label %do.body9, !dbg !4642

do.body9:                                         ; preds = %do.end
  br label %do.end10, !dbg !4647

do.end10:                                         ; preds = %do.body9
  %17 = load %struct.dma_fence*, %struct.dma_fence** %________p1, align 8, !dbg !4642
  store %struct.dma_fence* %17, %struct.dma_fence** %tmp11, align 8, !dbg !4647
  %18 = load %struct.dma_fence*, %struct.dma_fence** %tmp11, align 8, !dbg !4642
  store %struct.dma_fence* %18, %struct.dma_fence** %fence, align 8, !dbg !4649
  %19 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !4650
  %tobool12 = icmp ne %struct.dma_fence* %19, null, !dbg !4650
  br i1 %tobool12, label %land.lhs.true, label %if.else, !dbg !4652

land.lhs.true:                                    ; preds = %do.end10
  %20 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !4653
  %flags = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %20, i32 0, i32 5, !dbg !4654
  %call13 = call zeroext i1 @test_bit(i64 0, i64* %flags) #6, !dbg !4655
  br i1 %call13, label %if.else, label %if.then, !dbg !4656

if.then:                                          ; preds = %land.lhs.true
  %21 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !4657
  %call14 = call %struct.dma_fence* @dma_fence_get_rcu(%struct.dma_fence* %21) #6, !dbg !4660
  %tobool15 = icmp ne %struct.dma_fence* %call14, null, !dbg !4660
  br i1 %tobool15, label %if.end, label %if.then16, !dbg !4661

if.then16:                                        ; preds = %if.then
  br label %unlock_retry, !dbg !4662

if.end:                                           ; preds = %if.then
  %22 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !4663
  %call17 = call zeroext i1 @dma_fence_is_signaled(%struct.dma_fence* %22) #6, !dbg !4665
  br i1 %call17, label %if.then18, label %if.end19, !dbg !4666

if.then18:                                        ; preds = %if.end
  %23 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !4667
  call void @dma_fence_put(%struct.dma_fence* %23) #6, !dbg !4669
  store %struct.dma_fence* null, %struct.dma_fence** %fence, align 8, !dbg !4670
  br label %if.end19, !dbg !4671

if.end19:                                         ; preds = %if.then18, %if.end
  br label %if.end20, !dbg !4672

if.else:                                          ; preds = %land.lhs.true, %do.end10
  store %struct.dma_fence* null, %struct.dma_fence** %fence, align 8, !dbg !4673
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.end19
  %24 = load i8, i8* %wait_all.addr, align 1, !dbg !4675
  %tobool21 = trunc i8 %24 to i1, !dbg !4675
  br i1 %tobool21, label %if.then22, label %if.end54, !dbg !4677

if.then22:                                        ; preds = %if.end20
  call void @llvm.dbg.declare(metadata %struct.dma_resv_list** %fobj, metadata !4678, metadata !DIExpression()), !dbg !4680
  call void @llvm.dbg.declare(metadata %struct.dma_resv_list** %________p123, metadata !4681, metadata !DIExpression()), !dbg !4683
  br label %do.body24, !dbg !4684

do.body24:                                        ; preds = %if.then22
  br label %do.end25, !dbg !4686

do.end25:                                         ; preds = %do.body24
  %25 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !4684
  %fence27 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %25, i32 0, i32 3, !dbg !4684
  %26 = load volatile %struct.dma_resv_list*, %struct.dma_resv_list** %fence27, align 8, !dbg !4684
  store %struct.dma_resv_list* %26, %struct.dma_resv_list** %tmp26, align 8, !dbg !4686
  %27 = load %struct.dma_resv_list*, %struct.dma_resv_list** %tmp26, align 8, !dbg !4684
  store %struct.dma_resv_list* %27, %struct.dma_resv_list** %________p123, align 8, !dbg !4683
  br label %do.body28, !dbg !4683

do.body28:                                        ; preds = %do.end25
  br label %do.end29, !dbg !4688

do.end29:                                         ; preds = %do.body28
  %28 = load %struct.dma_resv_list*, %struct.dma_resv_list** %________p123, align 8, !dbg !4683
  store %struct.dma_resv_list* %28, %struct.dma_resv_list** %tmp30, align 8, !dbg !4688
  %29 = load %struct.dma_resv_list*, %struct.dma_resv_list** %tmp30, align 8, !dbg !4683
  store %struct.dma_resv_list* %29, %struct.dma_resv_list** %fobj, align 8, !dbg !4680
  %30 = load %struct.dma_resv_list*, %struct.dma_resv_list** %fobj, align 8, !dbg !4690
  %tobool31 = icmp ne %struct.dma_resv_list* %30, null, !dbg !4690
  br i1 %tobool31, label %if.then32, label %if.end34, !dbg !4692

if.then32:                                        ; preds = %do.end29
  %31 = load %struct.dma_resv_list*, %struct.dma_resv_list** %fobj, align 8, !dbg !4693
  %shared_count33 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %31, i32 0, i32 1, !dbg !4694
  %32 = load i32, i32* %shared_count33, align 8, !dbg !4694
  store i32 %32, i32* %shared_count, align 4, !dbg !4695
  br label %if.end34, !dbg !4696

if.end34:                                         ; preds = %if.then32, %do.end29
  store i32 0, i32* %i, align 4, !dbg !4697
  br label %for.cond, !dbg !4699

for.cond:                                         ; preds = %for.inc, %if.end34
  %33 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !4700
  %tobool35 = icmp ne %struct.dma_fence* %33, null, !dbg !4700
  br i1 %tobool35, label %land.end, label %land.rhs, !dbg !4702

land.rhs:                                         ; preds = %for.cond
  %34 = load i32, i32* %i, align 4, !dbg !4703
  %35 = load i32, i32* %shared_count, align 4, !dbg !4704
  %cmp = icmp ult i32 %34, %35, !dbg !4705
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %36 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ], !dbg !4706
  br i1 %36, label %for.body, label %for.end, !dbg !4707

for.body:                                         ; preds = %land.end
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %lfence, metadata !4708, metadata !DIExpression()), !dbg !4710
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %________p136, metadata !4711, metadata !DIExpression()), !dbg !4713
  br label %do.body37, !dbg !4714

do.body37:                                        ; preds = %for.body
  br label %do.end38, !dbg !4716

do.end38:                                         ; preds = %do.body37
  %37 = load %struct.dma_resv_list*, %struct.dma_resv_list** %fobj, align 8, !dbg !4714
  %shared = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %37, i32 0, i32 3, !dbg !4714
  %38 = load i32, i32* %i, align 4, !dbg !4714
  %idxprom = sext i32 %38 to i64, !dbg !4714
  %arrayidx = getelementptr [0 x %struct.dma_fence*], [0 x %struct.dma_fence*]* %shared, i64 0, i64 %idxprom, !dbg !4714
  %39 = load volatile %struct.dma_fence*, %struct.dma_fence** %arrayidx, align 8, !dbg !4714
  store %struct.dma_fence* %39, %struct.dma_fence** %tmp39, align 8, !dbg !4716
  %40 = load %struct.dma_fence*, %struct.dma_fence** %tmp39, align 8, !dbg !4714
  store %struct.dma_fence* %40, %struct.dma_fence** %________p136, align 8, !dbg !4713
  br label %do.body40, !dbg !4713

do.body40:                                        ; preds = %do.end38
  br label %do.end41, !dbg !4718

do.end41:                                         ; preds = %do.body40
  %41 = load %struct.dma_fence*, %struct.dma_fence** %________p136, align 8, !dbg !4713
  store %struct.dma_fence* %41, %struct.dma_fence** %tmp42, align 8, !dbg !4718
  %42 = load %struct.dma_fence*, %struct.dma_fence** %tmp42, align 8, !dbg !4713
  store %struct.dma_fence* %42, %struct.dma_fence** %lfence, align 8, !dbg !4710
  %43 = load %struct.dma_fence*, %struct.dma_fence** %lfence, align 8, !dbg !4720
  %flags43 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %43, i32 0, i32 5, !dbg !4722
  %call44 = call zeroext i1 @test_bit(i64 0, i64* %flags43) #6, !dbg !4723
  br i1 %call44, label %if.then45, label %if.end46, !dbg !4724

if.then45:                                        ; preds = %do.end41
  br label %for.inc, !dbg !4725

if.end46:                                         ; preds = %do.end41
  %44 = load %struct.dma_fence*, %struct.dma_fence** %lfence, align 8, !dbg !4726
  %call47 = call %struct.dma_fence* @dma_fence_get_rcu(%struct.dma_fence* %44) #6, !dbg !4728
  %tobool48 = icmp ne %struct.dma_fence* %call47, null, !dbg !4728
  br i1 %tobool48, label %if.end50, label %if.then49, !dbg !4729

if.then49:                                        ; preds = %if.end46
  br label %unlock_retry, !dbg !4730

if.end50:                                         ; preds = %if.end46
  %45 = load %struct.dma_fence*, %struct.dma_fence** %lfence, align 8, !dbg !4731
  %call51 = call zeroext i1 @dma_fence_is_signaled(%struct.dma_fence* %45) #6, !dbg !4733
  br i1 %call51, label %if.then52, label %if.end53, !dbg !4734

if.then52:                                        ; preds = %if.end50
  %46 = load %struct.dma_fence*, %struct.dma_fence** %lfence, align 8, !dbg !4735
  call void @dma_fence_put(%struct.dma_fence* %46) #6, !dbg !4737
  br label %for.inc, !dbg !4738

if.end53:                                         ; preds = %if.end50
  %47 = load %struct.dma_fence*, %struct.dma_fence** %lfence, align 8, !dbg !4739
  store %struct.dma_fence* %47, %struct.dma_fence** %fence, align 8, !dbg !4740
  br label %for.end, !dbg !4741

for.inc:                                          ; preds = %if.then52, %if.then45
  %48 = load i32, i32* %i, align 4, !dbg !4742
  %inc = add i32 %48, 1, !dbg !4742
  store i32 %inc, i32* %i, align 4, !dbg !4742
  br label %for.cond, !dbg !4743, !llvm.loop !4744

for.end:                                          ; preds = %if.end53, %land.end
  br label %if.end54, !dbg !4746

if.end54:                                         ; preds = %for.end, %if.end20
  call void @rcu_read_unlock() #6, !dbg !4747
  %49 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !4748
  %tobool55 = icmp ne %struct.dma_fence* %49, null, !dbg !4748
  br i1 %tobool55, label %if.then56, label %if.end72, !dbg !4749

if.then56:                                        ; preds = %if.end54
  %50 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !4750
  %seq57 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %50, i32 0, i32 1, !dbg !4750
  %51 = bitcast %struct.seqcount_ww_mutex* %seq57 to i8*, !dbg !4750
  %52 = bitcast i8* %51 to %struct.seqcount_ww_mutex*, !dbg !4750
  store %struct.seqcount_ww_mutex* %52, %struct.seqcount_ww_mutex** %s.addr.i73, align 8
  %53 = load %struct.seqcount_ww_mutex*, %struct.seqcount_ww_mutex** %s.addr.i73, align 8, !dbg !4588
  %seqcount.i74 = getelementptr inbounds %struct.seqcount_ww_mutex, %struct.seqcount_ww_mutex* %53, i32 0, i32 0, !dbg !4588
  %54 = load i32, i32* %seq, align 4, !dbg !4750
  %call59 = call i32 @read_seqcount_t_retry(%struct.seqcount* %seqcount.i74, i32 %54) #6, !dbg !4750
  %tobool60 = icmp ne i32 %call59, 0, !dbg !4750
  br i1 %tobool60, label %if.then61, label %if.end62, !dbg !4751

if.then61:                                        ; preds = %if.then56
  %55 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !4752
  call void @dma_fence_put(%struct.dma_fence* %55) #6, !dbg !4754
  br label %retry, !dbg !4755

if.end62:                                         ; preds = %if.then56
  %56 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !4756
  %57 = load i8, i8* %intr.addr, align 1, !dbg !4757
  %tobool63 = trunc i8 %57 to i1, !dbg !4757
  %58 = load i64, i64* %ret, align 8, !dbg !4758
  %call64 = call i64 @dma_fence_wait_timeout(%struct.dma_fence* %56, i1 zeroext %tobool63, i64 %58) #6, !dbg !4759
  store i64 %call64, i64* %ret, align 8, !dbg !4760
  %59 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !4761
  call void @dma_fence_put(%struct.dma_fence* %59) #6, !dbg !4762
  %60 = load i64, i64* %ret, align 8, !dbg !4763
  %cmp65 = icmp sgt i64 %60, 0, !dbg !4765
  br i1 %cmp65, label %land.lhs.true66, label %if.end71, !dbg !4766

land.lhs.true66:                                  ; preds = %if.end62
  %61 = load i8, i8* %wait_all.addr, align 1, !dbg !4767
  %tobool67 = trunc i8 %61 to i1, !dbg !4767
  br i1 %tobool67, label %land.lhs.true68, label %if.end71, !dbg !4768

land.lhs.true68:                                  ; preds = %land.lhs.true66
  %62 = load i32, i32* %i, align 4, !dbg !4769
  %add = add i32 %62, 1, !dbg !4770
  %63 = load i32, i32* %shared_count, align 4, !dbg !4771
  %cmp69 = icmp ult i32 %add, %63, !dbg !4772
  br i1 %cmp69, label %if.then70, label %if.end71, !dbg !4773

if.then70:                                        ; preds = %land.lhs.true68
  br label %retry, !dbg !4774

if.end71:                                         ; preds = %land.lhs.true68, %land.lhs.true66, %if.end62
  br label %if.end72, !dbg !4775

if.end72:                                         ; preds = %if.end71, %if.end54
  %64 = load i64, i64* %ret, align 8, !dbg !4776
  ret i64 %64, !dbg !4777

unlock_retry:                                     ; preds = %if.then49, %if.then16
  call void @llvm.dbg.label(metadata !4778), !dbg !4779
  call void @rcu_read_unlock() #6, !dbg !4780
  br label %retry, !dbg !4781
}

; Function Attrs: noredzone
declare dso_local i64 @dma_fence_wait_timeout(%struct.dma_fence*, i1 zeroext, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @dma_resv_test_signaled_rcu(%struct.dma_resv* %obj, i1 zeroext %test_all) #0 !dbg !4782 {
entry:
  %s.addr.i63 = alloca %struct.seqcount_ww_mutex*, align 8
  call void @llvm.dbg.declare(metadata %struct.seqcount_ww_mutex** %s.addr.i63, metadata !3724, metadata !DIExpression()), !dbg !4785
  %s.addr.i61 = alloca %struct.seqcount_ww_mutex*, align 8
  call void @llvm.dbg.declare(metadata %struct.seqcount_ww_mutex** %s.addr.i61, metadata !3724, metadata !DIExpression()), !dbg !4792
  %s.addr.i = alloca %struct.seqcount_ww_mutex*, align 8
  call void @llvm.dbg.declare(metadata %struct.seqcount_ww_mutex** %s.addr.i, metadata !4336, metadata !DIExpression()), !dbg !4797
  %seq.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %seq.i, metadata !4345, metadata !DIExpression()), !dbg !4797
  %tmp.i = alloca i32, align 4
  %obj.addr = alloca %struct.dma_resv*, align 8
  %test_all.addr = alloca i8, align 1
  %seq = alloca i32, align 4
  %shared_count = alloca i32, align 4
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %seq1 = alloca i32, align 4
  %seq2 = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  %i = alloca i32, align 4
  %fobj = alloca %struct.dma_resv_list*, align 8
  %________p1 = alloca %struct.dma_resv_list*, align 8
  %tmp7 = alloca %struct.dma_resv_list*, align 8
  %tmp10 = alloca %struct.dma_resv_list*, align 8
  %fence14 = alloca %struct.dma_fence*, align 8
  %________p115 = alloca %struct.dma_fence*, align 8
  %tmp18 = alloca %struct.dma_fence*, align 8
  %tmp21 = alloca %struct.dma_fence*, align 8
  %fence_excl = alloca %struct.dma_fence*, align 8
  %________p138 = alloca %struct.dma_fence*, align 8
  %tmp41 = alloca %struct.dma_fence*, align 8
  %tmp45 = alloca %struct.dma_fence*, align 8
  store %struct.dma_resv* %obj, %struct.dma_resv** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_resv** %obj.addr, metadata !4802, metadata !DIExpression()), !dbg !4803
  %frombool = zext i1 %test_all to i8
  store i8 %frombool, i8* %test_all.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %test_all.addr, metadata !4804, metadata !DIExpression()), !dbg !4805
  call void @llvm.dbg.declare(metadata i32* %seq, metadata !4806, metadata !DIExpression()), !dbg !4807
  call void @llvm.dbg.declare(metadata i32* %shared_count, metadata !4808, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4810, metadata !DIExpression()), !dbg !4811
  call void @__rcu_read_lock() #9, !dbg !4812
  br label %retry, !dbg !4814

retry:                                            ; preds = %if.then56, %if.then50, %if.then33, %if.then24, %entry
  call void @llvm.dbg.label(metadata !4815), !dbg !4816
  store i32 1, i32* %ret, align 4, !dbg !4817
  store i32 0, i32* %shared_count, align 4, !dbg !4818
  call void @llvm.dbg.declare(metadata i32* %seq1, metadata !4819, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.declare(metadata i32* %seq2, metadata !4821, metadata !DIExpression()), !dbg !4822
  br label %while.cond, !dbg !4822

while.cond:                                       ; preds = %while.body, %retry
  %0 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !4822
  %seq3 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %0, i32 0, i32 1, !dbg !4822
  %1 = bitcast %struct.seqcount_ww_mutex* %seq3 to i8*, !dbg !4822
  %2 = bitcast i8* %1 to %struct.seqcount_ww_mutex*, !dbg !4822
  store %struct.seqcount_ww_mutex* %2, %struct.seqcount_ww_mutex** %s.addr.i, align 8
  %3 = load %struct.seqcount_ww_mutex*, %struct.seqcount_ww_mutex** %s.addr.i, align 8, !dbg !4823
  %seqcount.i = getelementptr inbounds %struct.seqcount_ww_mutex, %struct.seqcount_ww_mutex* %3, i32 0, i32 0, !dbg !4823
  %sequence.i = getelementptr inbounds %struct.seqcount, %struct.seqcount* %seqcount.i, i32 0, i32 0, !dbg !4823
  %4 = load volatile i32, i32* %sequence.i, align 4, !dbg !4823
  store i32 %4, i32* %tmp.i, align 4, !dbg !4824
  %5 = load i32, i32* %tmp.i, align 4, !dbg !4823
  store i32 %5, i32* %seq.i, align 4, !dbg !4797
  %6 = load i32, i32* %seq.i, align 4, !dbg !4825
  store i32 %6, i32* %seq2, align 4, !dbg !4822
  %and = and i32 %6, 1, !dbg !4822
  %tobool = icmp ne i32 %and, 0, !dbg !4822
  br i1 %tobool, label %while.body, label %while.end, !dbg !4822

while.body:                                       ; preds = %while.cond
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4826, !srcloc !4391
  br label %while.cond, !dbg !4822, !llvm.loop !4829

while.end:                                        ; preds = %while.cond
  call void @kcsan_atomic_next(i32 1000) #6, !dbg !4822
  %7 = load i32, i32* %seq2, align 4, !dbg !4822
  store i32 %7, i32* %tmp4, align 4, !dbg !4822
  %8 = load i32, i32* %tmp4, align 4, !dbg !4822
  store i32 %8, i32* %seq1, align 4, !dbg !4820
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4820, !srcloc !4830
  %9 = load i32, i32* %seq1, align 4, !dbg !4820
  store i32 %9, i32* %tmp5, align 4, !dbg !4820
  %10 = load i32, i32* %tmp5, align 4, !dbg !4820
  store i32 %10, i32* %tmp, align 4, !dbg !4831
  %11 = load i32, i32* %tmp, align 4, !dbg !4832
  store i32 %11, i32* %seq, align 4, !dbg !4833
  %12 = load i8, i8* %test_all.addr, align 1, !dbg !4834
  %tobool6 = trunc i8 %12 to i1, !dbg !4834
  br i1 %tobool6, label %if.then, label %if.end35, !dbg !4835

if.then:                                          ; preds = %while.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4836, metadata !DIExpression()), !dbg !4837
  call void @llvm.dbg.declare(metadata %struct.dma_resv_list** %fobj, metadata !4838, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.declare(metadata %struct.dma_resv_list** %________p1, metadata !4840, metadata !DIExpression()), !dbg !4842
  br label %do.body, !dbg !4843

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !4845

do.end:                                           ; preds = %do.body
  %13 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !4843
  %fence = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %13, i32 0, i32 3, !dbg !4843
  %14 = load volatile %struct.dma_resv_list*, %struct.dma_resv_list** %fence, align 8, !dbg !4843
  store %struct.dma_resv_list* %14, %struct.dma_resv_list** %tmp7, align 8, !dbg !4845
  %15 = load %struct.dma_resv_list*, %struct.dma_resv_list** %tmp7, align 8, !dbg !4843
  store %struct.dma_resv_list* %15, %struct.dma_resv_list** %________p1, align 8, !dbg !4842
  br label %do.body8, !dbg !4842

do.body8:                                         ; preds = %do.end
  br label %do.end9, !dbg !4847

do.end9:                                          ; preds = %do.body8
  %16 = load %struct.dma_resv_list*, %struct.dma_resv_list** %________p1, align 8, !dbg !4842
  store %struct.dma_resv_list* %16, %struct.dma_resv_list** %tmp10, align 8, !dbg !4847
  %17 = load %struct.dma_resv_list*, %struct.dma_resv_list** %tmp10, align 8, !dbg !4842
  store %struct.dma_resv_list* %17, %struct.dma_resv_list** %fobj, align 8, !dbg !4839
  %18 = load %struct.dma_resv_list*, %struct.dma_resv_list** %fobj, align 8, !dbg !4849
  %tobool11 = icmp ne %struct.dma_resv_list* %18, null, !dbg !4849
  br i1 %tobool11, label %if.then12, label %if.end, !dbg !4851

if.then12:                                        ; preds = %do.end9
  %19 = load %struct.dma_resv_list*, %struct.dma_resv_list** %fobj, align 8, !dbg !4852
  %shared_count13 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %19, i32 0, i32 1, !dbg !4853
  %20 = load i32, i32* %shared_count13, align 8, !dbg !4853
  store i32 %20, i32* %shared_count, align 4, !dbg !4854
  br label %if.end, !dbg !4855

if.end:                                           ; preds = %if.then12, %do.end9
  store i32 0, i32* %i, align 4, !dbg !4856
  br label %for.cond, !dbg !4858

for.cond:                                         ; preds = %for.inc, %if.end
  %21 = load i32, i32* %i, align 4, !dbg !4859
  %22 = load i32, i32* %shared_count, align 4, !dbg !4861
  %cmp = icmp ult i32 %21, %22, !dbg !4862
  br i1 %cmp, label %for.body, label %for.end, !dbg !4863

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence14, metadata !4864, metadata !DIExpression()), !dbg !4866
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %________p115, metadata !4867, metadata !DIExpression()), !dbg !4869
  br label %do.body16, !dbg !4870

do.body16:                                        ; preds = %for.body
  br label %do.end17, !dbg !4872

do.end17:                                         ; preds = %do.body16
  %23 = load %struct.dma_resv_list*, %struct.dma_resv_list** %fobj, align 8, !dbg !4870
  %shared = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %23, i32 0, i32 3, !dbg !4870
  %24 = load i32, i32* %i, align 4, !dbg !4870
  %idxprom = zext i32 %24 to i64, !dbg !4870
  %arrayidx = getelementptr [0 x %struct.dma_fence*], [0 x %struct.dma_fence*]* %shared, i64 0, i64 %idxprom, !dbg !4870
  %25 = load volatile %struct.dma_fence*, %struct.dma_fence** %arrayidx, align 8, !dbg !4870
  store %struct.dma_fence* %25, %struct.dma_fence** %tmp18, align 8, !dbg !4872
  %26 = load %struct.dma_fence*, %struct.dma_fence** %tmp18, align 8, !dbg !4870
  store %struct.dma_fence* %26, %struct.dma_fence** %________p115, align 8, !dbg !4869
  br label %do.body19, !dbg !4869

do.body19:                                        ; preds = %do.end17
  br label %do.end20, !dbg !4874

do.end20:                                         ; preds = %do.body19
  %27 = load %struct.dma_fence*, %struct.dma_fence** %________p115, align 8, !dbg !4869
  store %struct.dma_fence* %27, %struct.dma_fence** %tmp21, align 8, !dbg !4874
  %28 = load %struct.dma_fence*, %struct.dma_fence** %tmp21, align 8, !dbg !4869
  store %struct.dma_fence* %28, %struct.dma_fence** %fence14, align 8, !dbg !4866
  %29 = load %struct.dma_fence*, %struct.dma_fence** %fence14, align 8, !dbg !4876
  %call22 = call i32 @dma_resv_test_signaled_single(%struct.dma_fence* %29) #6, !dbg !4877
  store i32 %call22, i32* %ret, align 4, !dbg !4878
  %30 = load i32, i32* %ret, align 4, !dbg !4879
  %cmp23 = icmp slt i32 %30, 0, !dbg !4881
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !4882

if.then24:                                        ; preds = %do.end20
  br label %retry, !dbg !4883

if.else:                                          ; preds = %do.end20
  %31 = load i32, i32* %ret, align 4, !dbg !4884
  %tobool25 = icmp ne i32 %31, 0, !dbg !4884
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !4886

if.then26:                                        ; preds = %if.else
  br label %for.end, !dbg !4887

if.end27:                                         ; preds = %if.else
  br label %if.end28

if.end28:                                         ; preds = %if.end27
  br label %for.inc, !dbg !4888

for.inc:                                          ; preds = %if.end28
  %32 = load i32, i32* %i, align 4, !dbg !4889
  %inc = add i32 %32, 1, !dbg !4889
  store i32 %inc, i32* %i, align 4, !dbg !4889
  br label %for.cond, !dbg !4890, !llvm.loop !4891

for.end:                                          ; preds = %if.then26, %for.cond
  %33 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !4893
  %seq29 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %33, i32 0, i32 1, !dbg !4893
  %34 = bitcast %struct.seqcount_ww_mutex* %seq29 to i8*, !dbg !4893
  %35 = bitcast i8* %34 to %struct.seqcount_ww_mutex*, !dbg !4893
  store %struct.seqcount_ww_mutex* %35, %struct.seqcount_ww_mutex** %s.addr.i61, align 8
  %36 = load %struct.seqcount_ww_mutex*, %struct.seqcount_ww_mutex** %s.addr.i61, align 8, !dbg !4792
  %seqcount.i62 = getelementptr inbounds %struct.seqcount_ww_mutex, %struct.seqcount_ww_mutex* %36, i32 0, i32 0, !dbg !4792
  %37 = load i32, i32* %seq, align 4, !dbg !4893
  %call31 = call i32 @read_seqcount_t_retry(%struct.seqcount* %seqcount.i62, i32 %37) #6, !dbg !4893
  %tobool32 = icmp ne i32 %call31, 0, !dbg !4893
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !4894

if.then33:                                        ; preds = %for.end
  br label %retry, !dbg !4895

if.end34:                                         ; preds = %for.end
  br label %if.end35, !dbg !4896

if.end35:                                         ; preds = %if.end34, %while.end
  %38 = load i32, i32* %shared_count, align 4, !dbg !4897
  %tobool36 = icmp ne i32 %38, 0, !dbg !4897
  br i1 %tobool36, label %if.end59, label %if.then37, !dbg !4898

if.then37:                                        ; preds = %if.end35
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence_excl, metadata !4899, metadata !DIExpression()), !dbg !4900
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %________p138, metadata !4901, metadata !DIExpression()), !dbg !4903
  br label %do.body39, !dbg !4904

do.body39:                                        ; preds = %if.then37
  br label %do.end40, !dbg !4906

do.end40:                                         ; preds = %do.body39
  %39 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !4904
  %fence_excl42 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %39, i32 0, i32 2, !dbg !4904
  %40 = load volatile %struct.dma_fence*, %struct.dma_fence** %fence_excl42, align 8, !dbg !4904
  store %struct.dma_fence* %40, %struct.dma_fence** %tmp41, align 8, !dbg !4906
  %41 = load %struct.dma_fence*, %struct.dma_fence** %tmp41, align 8, !dbg !4904
  store %struct.dma_fence* %41, %struct.dma_fence** %________p138, align 8, !dbg !4903
  br label %do.body43, !dbg !4903

do.body43:                                        ; preds = %do.end40
  br label %do.end44, !dbg !4908

do.end44:                                         ; preds = %do.body43
  %42 = load %struct.dma_fence*, %struct.dma_fence** %________p138, align 8, !dbg !4903
  store %struct.dma_fence* %42, %struct.dma_fence** %tmp45, align 8, !dbg !4908
  %43 = load %struct.dma_fence*, %struct.dma_fence** %tmp45, align 8, !dbg !4903
  store %struct.dma_fence* %43, %struct.dma_fence** %fence_excl, align 8, !dbg !4900
  %44 = load %struct.dma_fence*, %struct.dma_fence** %fence_excl, align 8, !dbg !4910
  %tobool46 = icmp ne %struct.dma_fence* %44, null, !dbg !4910
  br i1 %tobool46, label %if.then47, label %if.end58, !dbg !4911

if.then47:                                        ; preds = %do.end44
  %45 = load %struct.dma_fence*, %struct.dma_fence** %fence_excl, align 8, !dbg !4912
  %call48 = call i32 @dma_resv_test_signaled_single(%struct.dma_fence* %45) #6, !dbg !4913
  store i32 %call48, i32* %ret, align 4, !dbg !4914
  %46 = load i32, i32* %ret, align 4, !dbg !4915
  %cmp49 = icmp slt i32 %46, 0, !dbg !4917
  br i1 %cmp49, label %if.then50, label %if.end51, !dbg !4918

if.then50:                                        ; preds = %if.then47
  br label %retry, !dbg !4919

if.end51:                                         ; preds = %if.then47
  %47 = load %struct.dma_resv*, %struct.dma_resv** %obj.addr, align 8, !dbg !4920
  %seq52 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %47, i32 0, i32 1, !dbg !4920
  %48 = bitcast %struct.seqcount_ww_mutex* %seq52 to i8*, !dbg !4920
  %49 = bitcast i8* %48 to %struct.seqcount_ww_mutex*, !dbg !4920
  store %struct.seqcount_ww_mutex* %49, %struct.seqcount_ww_mutex** %s.addr.i63, align 8
  %50 = load %struct.seqcount_ww_mutex*, %struct.seqcount_ww_mutex** %s.addr.i63, align 8, !dbg !4785
  %seqcount.i64 = getelementptr inbounds %struct.seqcount_ww_mutex, %struct.seqcount_ww_mutex* %50, i32 0, i32 0, !dbg !4785
  %51 = load i32, i32* %seq, align 4, !dbg !4920
  %call54 = call i32 @read_seqcount_t_retry(%struct.seqcount* %seqcount.i64, i32 %51) #6, !dbg !4920
  %tobool55 = icmp ne i32 %call54, 0, !dbg !4920
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !4921

if.then56:                                        ; preds = %if.end51
  br label %retry, !dbg !4922

if.end57:                                         ; preds = %if.end51
  br label %if.end58, !dbg !4923

if.end58:                                         ; preds = %if.end57, %do.end44
  br label %if.end59, !dbg !4924

if.end59:                                         ; preds = %if.end58, %if.end35
  call void @rcu_read_unlock() #6, !dbg !4925
  %52 = load i32, i32* %ret, align 4, !dbg !4926
  %tobool60 = icmp ne i32 %52, 0, !dbg !4926
  ret i1 %tobool60, !dbg !4927
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dma_resv_test_signaled_single(%struct.dma_fence* %passed_fence) #0 !dbg !4928 {
entry:
  %retval = alloca i32, align 4
  %passed_fence.addr = alloca %struct.dma_fence*, align 8
  %fence = alloca %struct.dma_fence*, align 8
  %lfence = alloca %struct.dma_fence*, align 8
  %ret = alloca i32, align 4
  store %struct.dma_fence* %passed_fence, %struct.dma_fence** %passed_fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %passed_fence.addr, metadata !4931, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence, metadata !4933, metadata !DIExpression()), !dbg !4934
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %lfence, metadata !4935, metadata !DIExpression()), !dbg !4936
  %0 = load %struct.dma_fence*, %struct.dma_fence** %passed_fence.addr, align 8, !dbg !4937
  store %struct.dma_fence* %0, %struct.dma_fence** %lfence, align 8, !dbg !4936
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4938, metadata !DIExpression()), !dbg !4939
  store i32 1, i32* %ret, align 4, !dbg !4939
  %1 = load %struct.dma_fence*, %struct.dma_fence** %lfence, align 8, !dbg !4940
  %flags = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %1, i32 0, i32 5, !dbg !4942
  %call = call zeroext i1 @test_bit(i64 0, i64* %flags) #6, !dbg !4943
  br i1 %call, label %if.end5, label %if.then, !dbg !4944

if.then:                                          ; preds = %entry
  %2 = load %struct.dma_fence*, %struct.dma_fence** %lfence, align 8, !dbg !4945
  %call1 = call %struct.dma_fence* @dma_fence_get_rcu(%struct.dma_fence* %2) #6, !dbg !4947
  store %struct.dma_fence* %call1, %struct.dma_fence** %fence, align 8, !dbg !4948
  %3 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !4949
  %tobool = icmp ne %struct.dma_fence* %3, null, !dbg !4949
  br i1 %tobool, label %if.end, label %if.then2, !dbg !4951

if.then2:                                         ; preds = %if.then
  store i32 -1, i32* %retval, align 4, !dbg !4952
  br label %return, !dbg !4952

if.end:                                           ; preds = %if.then
  %4 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !4953
  %call3 = call zeroext i1 @dma_fence_is_signaled(%struct.dma_fence* %4) #6, !dbg !4954
  %lnot = xor i1 %call3, true, !dbg !4955
  %lnot4 = xor i1 %lnot, true, !dbg !4956
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !4956
  store i32 %lnot.ext, i32* %ret, align 4, !dbg !4957
  %5 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !4958
  call void @dma_fence_put(%struct.dma_fence* %5) #6, !dbg !4959
  br label %if.end5, !dbg !4960

if.end5:                                          ; preds = %if.end, %entry
  %6 = load i32, i32* %ret, align 4, !dbg !4961
  store i32 %6, i32* %retval, align 4, !dbg !4962
  br label %return, !dbg !4962

return:                                           ; preds = %if.end5, %if.then2
  %7 = load i32, i32* %retval, align 4, !dbg !4963
  ret i32 %7, !dbg !4963
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kref_put(%struct.kref* %kref, void (%struct.kref*)* %release) #0 !dbg !4964 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca %struct.kref*, align 8
  %release.addr = alloca void (%struct.kref*)*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !4971, metadata !DIExpression()), !dbg !4972
  store void (%struct.kref*)* %release, void (%struct.kref*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.kref*)** %release.addr, metadata !4973, metadata !DIExpression()), !dbg !4974
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !4975
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !4977
  %call = call zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %refcount) #6, !dbg !4978
  br i1 %call, label %if.then, label %if.end, !dbg !4979

if.then:                                          ; preds = %entry
  %1 = load void (%struct.kref*)*, void (%struct.kref*)** %release.addr, align 8, !dbg !4980
  %2 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !4982
  call void %1(%struct.kref* %2) #6, !dbg !4980
  store i32 1, i32* %retval, align 4, !dbg !4983
  br label %return, !dbg !4983

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4984
  br label %return, !dbg !4984

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !4985
  ret i32 %3, !dbg !4985
}

; Function Attrs: noredzone
declare dso_local void @dma_fence_release(%struct.kref*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %r) #0 !dbg !4986 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !4990, metadata !DIExpression()), !dbg !4991
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !4992
  %call = call zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %0, i32* null) #6, !dbg !4993
  ret i1 %call, !dbg !4994
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !4995 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !4998, metadata !DIExpression()), !dbg !4999
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5000, metadata !DIExpression()), !dbg !5001
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5002
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !5003
  %call = call zeroext i1 @__refcount_sub_and_test(i32 1, %struct.refcount_struct* %0, i32* %1) #6, !dbg !5004
  ret i1 %call, !dbg !5005
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5006 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5009, metadata !DIExpression()), !dbg !5015
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5020, metadata !DIExpression()), !dbg !5021
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !5022, metadata !DIExpression()), !dbg !5024
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5025, metadata !DIExpression()), !dbg !5027
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5029, metadata !DIExpression()), !dbg !5030
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5031, metadata !DIExpression()), !dbg !5032
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5033, metadata !DIExpression()), !dbg !5034
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5035, metadata !DIExpression()), !dbg !5036
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5037, metadata !DIExpression()), !dbg !5038
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5039, metadata !DIExpression()), !dbg !5040
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5041, metadata !DIExpression()), !dbg !5042
  %0 = load i32, i32* %i.addr, align 4, !dbg !5043
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5044
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !5045
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5046
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5046
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5047
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5048
  %conv.i.i = trunc i64 %5 to i32, !dbg !5048
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #9, !dbg !5049
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5050
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5050
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #9, !dbg !5050
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !5051
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5052
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5024
  %sub.i.i = sub i32 0, %10, !dbg !5024
  store i32 %sub.i.i, i32* %__ret.i.i, align 4, !dbg !5024
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !5024
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5024
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !5024
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #7, !dbg !5024, !srcloc !5053
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !5024
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !5024
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !5024
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !5024
  store i32 %15, i32* %old, align 4, !dbg !5042
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !5054
  %tobool = icmp ne i32* %16, null, !dbg !5054
  br i1 %tobool, label %if.then, label %if.end, !dbg !5056

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !5057
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !5058
  store i32 %17, i32* %18, align 4, !dbg !5059
  br label %if.end, !dbg !5060

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !5061
  %20 = load i32, i32* %i.addr, align 4, !dbg !5063
  %cmp = icmp eq i32 %19, %20, !dbg !5064
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5065

if.then1:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5066, !srcloc !5068
  store i1 true, i1* %retval, align 1, !dbg !5069
  br label %return, !dbg !5069

if.end2:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !5070
  %cmp3 = icmp slt i32 %21, 0, !dbg !5070
  br i1 %cmp3, label %lor.end, label %lor.rhs, !dbg !5070

lor.rhs:                                          ; preds = %if.end2
  %22 = load i32, i32* %old, align 4, !dbg !5070
  %23 = load i32, i32* %i.addr, align 4, !dbg !5070
  %sub = sub i32 %22, %23, !dbg !5070
  %cmp4 = icmp slt i32 %sub, 0, !dbg !5070
  br label %lor.end, !dbg !5070

lor.end:                                          ; preds = %lor.rhs, %if.end2
  %24 = phi i1 [ true, %if.end2 ], [ %cmp4, %lor.rhs ]
  %lnot = xor i1 %24, true, !dbg !5070
  %lnot5 = xor i1 %lnot, true, !dbg !5070
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5070
  %conv = sext i32 %lnot.ext to i64, !dbg !5070
  %tobool6 = icmp ne i64 %conv, 0, !dbg !5070
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5072

if.then7:                                         ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5073
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 3) #6, !dbg !5074
  br label %if.end8, !dbg !5074

if.end8:                                          ; preds = %if.then7, %lor.end
  store i1 false, i1* %retval, align 1, !dbg !5075
  br label %return, !dbg !5075

return:                                           ; preds = %if.end8, %if.then1
  %26 = load i1, i1* %retval, align 1, !dbg !5076
  ret i1 %26, !dbg !5076
}

; Function Attrs: noredzone
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !5077 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5081, metadata !DIExpression()), !dbg !5082
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5083, metadata !DIExpression()), !dbg !5084
  ret i1 true, !dbg !5085
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5086 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5089, metadata !DIExpression()), !dbg !5090
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5091, metadata !DIExpression()), !dbg !5092
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5093, metadata !DIExpression()), !dbg !5094
  ret void, !dbg !5095
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mutex_destroy(%struct.mutex* %lock) #0 !dbg !5096 {
entry:
  %lock.addr = alloca %struct.mutex*, align 8
  store %struct.mutex* %lock, %struct.mutex** %lock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mutex** %lock.addr, metadata !5100, metadata !DIExpression()), !dbg !5101
  ret void, !dbg !5102
}

; Function Attrs: noredzone
declare dso_local i64 @ksize(i8*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !5103 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5107, metadata !DIExpression()), !dbg !5111
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5113, metadata !DIExpression()), !dbg !5114
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5115, metadata !DIExpression()), !dbg !5116
  %0 = load i64, i64* %size.addr, align 8, !dbg !5117
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5119
  br i1 %1, label %if.then, label %if.end447, !dbg !5120

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5121
  %tobool = icmp ne i64 %2, 0, !dbg !5121
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5124

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5125
  br label %return, !dbg !5125

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5126
  %cmp = icmp ult i64 %3, 4096, !dbg !5128
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5129

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5130
  br label %return, !dbg !5130

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub = sub i64 %4, 1, !dbg !5131
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5131
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5131

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub4 = sub i64 %6, 1, !dbg !5131
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5131
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5131

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub6 = sub i64 %8, 1, !dbg !5131
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5131
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5131

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5131

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub9 = sub i64 %9, 1, !dbg !5131
  %and = and i64 %sub9, -9223372036854775808, !dbg !5131
  %tobool10 = icmp ne i64 %and, 0, !dbg !5131
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5131

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5131

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub13 = sub i64 %10, 1, !dbg !5131
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5131
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5131
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5131

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5131

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub18 = sub i64 %11, 1, !dbg !5131
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5131
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5131
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5131

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5131

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub23 = sub i64 %12, 1, !dbg !5131
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5131
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5131
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5131

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5131

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub28 = sub i64 %13, 1, !dbg !5131
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5131
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5131
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5131

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5131

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub33 = sub i64 %14, 1, !dbg !5131
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5131
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5131
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5131

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5131

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub38 = sub i64 %15, 1, !dbg !5131
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5131
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5131
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5131

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5131

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub43 = sub i64 %16, 1, !dbg !5131
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5131
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5131
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5131

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5131

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub48 = sub i64 %17, 1, !dbg !5131
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5131
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5131
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5131

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5131

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub53 = sub i64 %18, 1, !dbg !5131
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5131
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5131
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5131

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5131

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub58 = sub i64 %19, 1, !dbg !5131
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5131
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5131
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5131

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5131

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub63 = sub i64 %20, 1, !dbg !5131
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5131
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5131
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5131

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5131

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub68 = sub i64 %21, 1, !dbg !5131
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5131
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5131
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5131

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5131

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub73 = sub i64 %22, 1, !dbg !5131
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5131
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5131
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5131

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5131

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub78 = sub i64 %23, 1, !dbg !5131
  %and79 = and i64 %sub78, 562949953421312, !dbg !5131
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5131
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5131

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5131

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub83 = sub i64 %24, 1, !dbg !5131
  %and84 = and i64 %sub83, 281474976710656, !dbg !5131
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5131
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5131

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5131

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub88 = sub i64 %25, 1, !dbg !5131
  %and89 = and i64 %sub88, 140737488355328, !dbg !5131
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5131
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5131

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5131

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub93 = sub i64 %26, 1, !dbg !5131
  %and94 = and i64 %sub93, 70368744177664, !dbg !5131
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5131
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5131

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5131

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub98 = sub i64 %27, 1, !dbg !5131
  %and99 = and i64 %sub98, 35184372088832, !dbg !5131
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5131
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5131

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5131

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub103 = sub i64 %28, 1, !dbg !5131
  %and104 = and i64 %sub103, 17592186044416, !dbg !5131
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5131
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5131

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5131

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub108 = sub i64 %29, 1, !dbg !5131
  %and109 = and i64 %sub108, 8796093022208, !dbg !5131
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5131
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5131

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5131

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub113 = sub i64 %30, 1, !dbg !5131
  %and114 = and i64 %sub113, 4398046511104, !dbg !5131
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5131
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5131

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5131

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub118 = sub i64 %31, 1, !dbg !5131
  %and119 = and i64 %sub118, 2199023255552, !dbg !5131
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5131
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5131

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5131

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub123 = sub i64 %32, 1, !dbg !5131
  %and124 = and i64 %sub123, 1099511627776, !dbg !5131
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5131
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5131

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5131

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub128 = sub i64 %33, 1, !dbg !5131
  %and129 = and i64 %sub128, 549755813888, !dbg !5131
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5131
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5131

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5131

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub133 = sub i64 %34, 1, !dbg !5131
  %and134 = and i64 %sub133, 274877906944, !dbg !5131
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5131
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5131

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5131

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub138 = sub i64 %35, 1, !dbg !5131
  %and139 = and i64 %sub138, 137438953472, !dbg !5131
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5131
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5131

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5131

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub143 = sub i64 %36, 1, !dbg !5131
  %and144 = and i64 %sub143, 68719476736, !dbg !5131
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5131
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5131

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5131

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub148 = sub i64 %37, 1, !dbg !5131
  %and149 = and i64 %sub148, 34359738368, !dbg !5131
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5131
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5131

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5131

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub153 = sub i64 %38, 1, !dbg !5131
  %and154 = and i64 %sub153, 17179869184, !dbg !5131
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5131
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5131

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5131

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub158 = sub i64 %39, 1, !dbg !5131
  %and159 = and i64 %sub158, 8589934592, !dbg !5131
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5131
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5131

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5131

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub163 = sub i64 %40, 1, !dbg !5131
  %and164 = and i64 %sub163, 4294967296, !dbg !5131
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5131
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5131

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5131

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub168 = sub i64 %41, 1, !dbg !5131
  %and169 = and i64 %sub168, 2147483648, !dbg !5131
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5131
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5131

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5131

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub173 = sub i64 %42, 1, !dbg !5131
  %and174 = and i64 %sub173, 1073741824, !dbg !5131
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5131
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5131

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5131

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub178 = sub i64 %43, 1, !dbg !5131
  %and179 = and i64 %sub178, 536870912, !dbg !5131
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5131
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5131

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5131

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub183 = sub i64 %44, 1, !dbg !5131
  %and184 = and i64 %sub183, 268435456, !dbg !5131
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5131
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5131

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5131

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub188 = sub i64 %45, 1, !dbg !5131
  %and189 = and i64 %sub188, 134217728, !dbg !5131
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5131
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5131

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5131

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub193 = sub i64 %46, 1, !dbg !5131
  %and194 = and i64 %sub193, 67108864, !dbg !5131
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5131
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5131

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5131

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub198 = sub i64 %47, 1, !dbg !5131
  %and199 = and i64 %sub198, 33554432, !dbg !5131
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5131
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5131

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5131

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub203 = sub i64 %48, 1, !dbg !5131
  %and204 = and i64 %sub203, 16777216, !dbg !5131
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5131
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5131

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5131

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub208 = sub i64 %49, 1, !dbg !5131
  %and209 = and i64 %sub208, 8388608, !dbg !5131
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5131
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5131

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5131

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub213 = sub i64 %50, 1, !dbg !5131
  %and214 = and i64 %sub213, 4194304, !dbg !5131
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5131
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5131

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5131

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub218 = sub i64 %51, 1, !dbg !5131
  %and219 = and i64 %sub218, 2097152, !dbg !5131
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5131
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5131

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5131

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub223 = sub i64 %52, 1, !dbg !5131
  %and224 = and i64 %sub223, 1048576, !dbg !5131
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5131
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5131

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5131

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub228 = sub i64 %53, 1, !dbg !5131
  %and229 = and i64 %sub228, 524288, !dbg !5131
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5131
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5131

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5131

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub233 = sub i64 %54, 1, !dbg !5131
  %and234 = and i64 %sub233, 262144, !dbg !5131
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5131
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5131

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5131

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub238 = sub i64 %55, 1, !dbg !5131
  %and239 = and i64 %sub238, 131072, !dbg !5131
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5131
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5131

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5131

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub243 = sub i64 %56, 1, !dbg !5131
  %and244 = and i64 %sub243, 65536, !dbg !5131
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5131
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5131

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5131

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub248 = sub i64 %57, 1, !dbg !5131
  %and249 = and i64 %sub248, 32768, !dbg !5131
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5131
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5131

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5131

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub253 = sub i64 %58, 1, !dbg !5131
  %and254 = and i64 %sub253, 16384, !dbg !5131
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5131
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5131

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5131

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub258 = sub i64 %59, 1, !dbg !5131
  %and259 = and i64 %sub258, 8192, !dbg !5131
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5131
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5131

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5131

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub263 = sub i64 %60, 1, !dbg !5131
  %and264 = and i64 %sub263, 4096, !dbg !5131
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5131
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5131

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5131

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub268 = sub i64 %61, 1, !dbg !5131
  %and269 = and i64 %sub268, 2048, !dbg !5131
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5131
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5131

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5131

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub273 = sub i64 %62, 1, !dbg !5131
  %and274 = and i64 %sub273, 1024, !dbg !5131
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5131
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5131

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5131

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub278 = sub i64 %63, 1, !dbg !5131
  %and279 = and i64 %sub278, 512, !dbg !5131
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5131
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5131

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5131

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub283 = sub i64 %64, 1, !dbg !5131
  %and284 = and i64 %sub283, 256, !dbg !5131
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5131
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5131

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5131

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub288 = sub i64 %65, 1, !dbg !5131
  %and289 = and i64 %sub288, 128, !dbg !5131
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5131
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5131

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5131

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub293 = sub i64 %66, 1, !dbg !5131
  %and294 = and i64 %sub293, 64, !dbg !5131
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5131
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5131

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5131

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub298 = sub i64 %67, 1, !dbg !5131
  %and299 = and i64 %sub298, 32, !dbg !5131
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5131
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5131

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5131

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub303 = sub i64 %68, 1, !dbg !5131
  %and304 = and i64 %sub303, 16, !dbg !5131
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5131
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5131

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5131

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub308 = sub i64 %69, 1, !dbg !5131
  %and309 = and i64 %sub308, 8, !dbg !5131
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5131
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5131

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5131

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub313 = sub i64 %70, 1, !dbg !5131
  %and314 = and i64 %sub313, 4, !dbg !5131
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5131
  %71 = zext i1 %tobool315 to i64, !dbg !5131
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5131
  br label %cond.end, !dbg !5131

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5131
  br label %cond.end317, !dbg !5131

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5131
  br label %cond.end319, !dbg !5131

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5131
  br label %cond.end321, !dbg !5131

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5131
  br label %cond.end323, !dbg !5131

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5131
  br label %cond.end325, !dbg !5131

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5131
  br label %cond.end327, !dbg !5131

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5131
  br label %cond.end329, !dbg !5131

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5131
  br label %cond.end331, !dbg !5131

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5131
  br label %cond.end333, !dbg !5131

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5131
  br label %cond.end335, !dbg !5131

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5131
  br label %cond.end337, !dbg !5131

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5131
  br label %cond.end339, !dbg !5131

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5131
  br label %cond.end341, !dbg !5131

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5131
  br label %cond.end343, !dbg !5131

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5131
  br label %cond.end345, !dbg !5131

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5131
  br label %cond.end347, !dbg !5131

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5131
  br label %cond.end349, !dbg !5131

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5131
  br label %cond.end351, !dbg !5131

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5131
  br label %cond.end353, !dbg !5131

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5131
  br label %cond.end355, !dbg !5131

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5131
  br label %cond.end357, !dbg !5131

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5131
  br label %cond.end359, !dbg !5131

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5131
  br label %cond.end361, !dbg !5131

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5131
  br label %cond.end363, !dbg !5131

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5131
  br label %cond.end365, !dbg !5131

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5131
  br label %cond.end367, !dbg !5131

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5131
  br label %cond.end369, !dbg !5131

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5131
  br label %cond.end371, !dbg !5131

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5131
  br label %cond.end373, !dbg !5131

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5131
  br label %cond.end375, !dbg !5131

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5131
  br label %cond.end377, !dbg !5131

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5131
  br label %cond.end379, !dbg !5131

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5131
  br label %cond.end381, !dbg !5131

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5131
  br label %cond.end383, !dbg !5131

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5131
  br label %cond.end385, !dbg !5131

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5131
  br label %cond.end387, !dbg !5131

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5131
  br label %cond.end389, !dbg !5131

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5131
  br label %cond.end391, !dbg !5131

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5131
  br label %cond.end393, !dbg !5131

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5131
  br label %cond.end395, !dbg !5131

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5131
  br label %cond.end397, !dbg !5131

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5131
  br label %cond.end399, !dbg !5131

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5131
  br label %cond.end401, !dbg !5131

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5131
  br label %cond.end403, !dbg !5131

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5131
  br label %cond.end405, !dbg !5131

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5131
  br label %cond.end407, !dbg !5131

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5131
  br label %cond.end409, !dbg !5131

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5131
  br label %cond.end411, !dbg !5131

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5131
  br label %cond.end413, !dbg !5131

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5131
  br label %cond.end415, !dbg !5131

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5131
  br label %cond.end417, !dbg !5131

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5131
  br label %cond.end419, !dbg !5131

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5131
  br label %cond.end421, !dbg !5131

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5131
  br label %cond.end423, !dbg !5131

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5131
  br label %cond.end425, !dbg !5131

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5131
  br label %cond.end427, !dbg !5131

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5131
  br label %cond.end429, !dbg !5131

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5131
  br label %cond.end431, !dbg !5131

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5131
  br label %cond.end433, !dbg !5131

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5131
  br label %cond.end435, !dbg !5131

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5131
  br label %cond.end437, !dbg !5131

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5131
  br label %cond.end440, !dbg !5131

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5131

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5131
  br label %cond.end444, !dbg !5131

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5131
  %sub443 = sub i64 %72, 1, !dbg !5131
  %call = call i32 @__ilog2_u64(i64 %sub443) #8, !dbg !5131
  br label %cond.end444, !dbg !5131

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5131
  %sub446 = sub i32 %cond445, 12, !dbg !5132
  %add = add i32 %sub446, 1, !dbg !5133
  store i32 %add, i32* %retval, align 4, !dbg !5134
  br label %return, !dbg !5134

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5135
  %dec = add i64 %73, -1, !dbg !5135
  store i64 %dec, i64* %size.addr, align 8, !dbg !5135
  %74 = load i64, i64* %size.addr, align 8, !dbg !5136
  %shr = lshr i64 %74, 12, !dbg !5136
  store i64 %shr, i64* %size.addr, align 8, !dbg !5136
  %75 = load i64, i64* %size.addr, align 8, !dbg !5137
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5114
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5138
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5139
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #10, !dbg !5138, !srcloc !5140
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5138
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5141
  %add.i = add i32 %79, 1, !dbg !5142
  store i32 %add.i, i32* %retval, align 4, !dbg !5143
  br label %return, !dbg !5143

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5144
  ret i32 %80, !dbg !5144
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !5145 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5107, metadata !DIExpression()), !dbg !5149
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5113, metadata !DIExpression()), !dbg !5151
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5152, metadata !DIExpression()), !dbg !5153
  %0 = load i64, i64* %n.addr, align 8, !dbg !5154
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5151
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5155
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5156
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #10, !dbg !5155, !srcloc !5140
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5155
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5157
  %add.i = add i32 %4, 1, !dbg !5158
  %sub = sub i32 %add.i, 1, !dbg !5159
  ret i32 %sub, !dbg !5160
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5161 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5167, metadata !DIExpression()), !dbg !5168
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5169, metadata !DIExpression()), !dbg !5170
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5171, metadata !DIExpression()), !dbg !5172
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5173, metadata !DIExpression()), !dbg !5174
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5175
  ret i8* %0, !dbg !5176
}

; Function Attrs: noredzone
declare dso_local i32 @dma_fence_signal(%struct.dma_fence*) #2

; Function Attrs: noredzone
declare dso_local void @call_rcu(%struct.callback_head*, void (%struct.callback_head*)*) #2

; Function Attrs: noredzone
declare dso_local void @synchronize_rcu() #2

; Function Attrs: noredzone
declare dso_local void @kvfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kref_get(%struct.kref* %kref) #0 !dbg !5177 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !5178, metadata !DIExpression()), !dbg !5179
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5180
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !5181
  call void @refcount_inc(%struct.refcount_struct* %refcount) #6, !dbg !5182
  ret void, !dbg !5183
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_inc(%struct.refcount_struct* %r) #0 !dbg !5184 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5187, metadata !DIExpression()), !dbg !5188
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5189
  call void @__refcount_inc(%struct.refcount_struct* %0, i32* null) #6, !dbg !5190
  ret void, !dbg !5191
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_inc(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5192 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5195, metadata !DIExpression()), !dbg !5196
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5197, metadata !DIExpression()), !dbg !5198
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5199
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !5200
  call void @__refcount_add(i32 1, %struct.refcount_struct* %0, i32* %1) #6, !dbg !5201
  ret void, !dbg !5202
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_add(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5203 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5206, metadata !DIExpression()), !dbg !5208
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5212, metadata !DIExpression()), !dbg !5213
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !5214, metadata !DIExpression()), !dbg !5216
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5025, metadata !DIExpression()), !dbg !5217
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5029, metadata !DIExpression()), !dbg !5219
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5220, metadata !DIExpression()), !dbg !5221
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5222, metadata !DIExpression()), !dbg !5223
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5224, metadata !DIExpression()), !dbg !5225
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5226, metadata !DIExpression()), !dbg !5227
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5228, metadata !DIExpression()), !dbg !5229
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5230, metadata !DIExpression()), !dbg !5231
  %0 = load i32, i32* %i.addr, align 4, !dbg !5232
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5233
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !5234
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5235
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5235
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5236
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5237
  %conv.i.i = trunc i64 %5 to i32, !dbg !5237
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #9, !dbg !5238
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5239
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5239
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #9, !dbg !5239
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !5240
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5241
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5216
  store i32 %10, i32* %__ret.i.i, align 4, !dbg !5216
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !5216
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5216
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !5216
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #7, !dbg !5216, !srcloc !5242
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !5216
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !5216
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !5216
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !5216
  store i32 %15, i32* %old, align 4, !dbg !5231
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !5243
  %tobool = icmp ne i32* %16, null, !dbg !5243
  br i1 %tobool, label %if.then, label %if.end, !dbg !5245

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !5246
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !5247
  store i32 %17, i32* %18, align 4, !dbg !5248
  br label %if.end, !dbg !5249

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !5250
  %tobool1 = icmp ne i32 %19, 0, !dbg !5250
  %lnot = xor i1 %tobool1, true, !dbg !5250
  %lnot2 = xor i1 %lnot, true, !dbg !5250
  %lnot3 = xor i1 %lnot2, true, !dbg !5250
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5250
  %conv = sext i32 %lnot.ext to i64, !dbg !5250
  %tobool4 = icmp ne i64 %conv, 0, !dbg !5250
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5252

if.then5:                                         ; preds = %if.end
  %20 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5253
  call void @refcount_warn_saturate(%struct.refcount_struct* %20, i32 2) #6, !dbg !5254
  br label %if.end17, !dbg !5254

if.else:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !5255
  %cmp = icmp slt i32 %21, 0, !dbg !5255
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5255

lor.rhs:                                          ; preds = %if.else
  %22 = load i32, i32* %old, align 4, !dbg !5255
  %23 = load i32, i32* %i.addr, align 4, !dbg !5255
  %add = add i32 %22, %23, !dbg !5255
  %cmp7 = icmp slt i32 %add, 0, !dbg !5255
  br label %lor.end, !dbg !5255

lor.end:                                          ; preds = %lor.rhs, %if.else
  %24 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %24, true, !dbg !5255
  %lnot11 = xor i1 %lnot9, true, !dbg !5255
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5255
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !5255
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !5255
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5257

if.then15:                                        ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5258
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 1) #6, !dbg !5259
  br label %if.end16, !dbg !5259

if.end16:                                         ; preds = %if.then15, %lor.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then5
  ret void, !dbg !5260
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @write_seqcount_t_begin_nested(%struct.seqcount* %s, i32 %subclass) #0 !dbg !5261 {
entry:
  %s.addr = alloca %struct.seqcount*, align 8
  %subclass.addr = alloca i32, align 4
  store %struct.seqcount* %s, %struct.seqcount** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.seqcount** %s.addr, metadata !5264, metadata !DIExpression()), !dbg !5265
  store i32 %subclass, i32* %subclass.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %subclass.addr, metadata !5266, metadata !DIExpression()), !dbg !5267
  %0 = load %struct.seqcount*, %struct.seqcount** %s.addr, align 8, !dbg !5268
  call void @raw_write_seqcount_t_begin(%struct.seqcount* %0) #6, !dbg !5269
  br label %do.body, !dbg !5270

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5271

do.end:                                           ; preds = %do.body
  ret void, !dbg !5273
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @raw_write_seqcount_t_begin(%struct.seqcount* %s) #0 !dbg !5274 {
entry:
  %s.addr = alloca %struct.seqcount*, align 8
  store %struct.seqcount* %s, %struct.seqcount** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.seqcount** %s.addr, metadata !5275, metadata !DIExpression()), !dbg !5276
  call void @kcsan_nestable_atomic_begin() #6, !dbg !5277
  %0 = load %struct.seqcount*, %struct.seqcount** %s.addr, align 8, !dbg !5278
  %sequence = getelementptr inbounds %struct.seqcount, %struct.seqcount* %0, i32 0, i32 0, !dbg !5279
  %1 = load i32, i32* %sequence, align 4, !dbg !5280
  %inc = add i32 %1, 1, !dbg !5280
  store i32 %inc, i32* %sequence, align 4, !dbg !5280
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5281, !srcloc !5282
  ret void, !dbg !5283
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_nestable_atomic_begin() #0 !dbg !5284 {
entry:
  ret void, !dbg !5285
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @raw_write_seqcount_t_end(%struct.seqcount* %s) #0 !dbg !5286 {
entry:
  %s.addr = alloca %struct.seqcount*, align 8
  store %struct.seqcount* %s, %struct.seqcount** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.seqcount** %s.addr, metadata !5287, metadata !DIExpression()), !dbg !5288
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5289, !srcloc !5290
  %0 = load %struct.seqcount*, %struct.seqcount** %s.addr, align 8, !dbg !5291
  %sequence = getelementptr inbounds %struct.seqcount, %struct.seqcount* %0, i32 0, i32 0, !dbg !5292
  %1 = load i32, i32* %sequence, align 4, !dbg !5293
  %inc = add i32 %1, 1, !dbg !5293
  store i32 %inc, i32* %sequence, align 4, !dbg !5293
  call void @kcsan_nestable_atomic_end() #6, !dbg !5294
  ret void, !dbg !5295
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_nestable_atomic_end() #0 !dbg !5296 {
entry:
  ret void, !dbg !5297
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__rcu_read_lock() #0 !dbg !5298 {
entry:
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5299, !srcloc !5300
  ret void, !dbg !5301
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__rcu_read_unlock() #0 !dbg !5302 {
entry:
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5303, !srcloc !5304
  br label %do.body, !dbg !5305

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5306

do.end:                                           ; preds = %do.body
  ret void, !dbg !5308
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !5309 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5310, metadata !DIExpression()), !dbg !5311
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5312, metadata !DIExpression()), !dbg !5313
  ret i1 true, !dbg !5314
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kref_get_unless_zero(%struct.kref* %kref) #0 !dbg !5315 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !5318, metadata !DIExpression()), !dbg !5319
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5320
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !5321
  %call = call zeroext i1 @refcount_inc_not_zero(%struct.refcount_struct* %refcount) #6, !dbg !5322
  %conv = zext i1 %call to i32, !dbg !5322
  ret i32 %conv, !dbg !5323
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @refcount_inc_not_zero(%struct.refcount_struct* %r) #0 !dbg !5324 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5325, metadata !DIExpression()), !dbg !5326
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5327
  %call = call zeroext i1 @__refcount_inc_not_zero(%struct.refcount_struct* %0, i32* null) #6, !dbg !5328
  ret i1 %call, !dbg !5329
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_inc_not_zero(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5330 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5331, metadata !DIExpression()), !dbg !5332
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5333, metadata !DIExpression()), !dbg !5334
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5335
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !5336
  %call = call zeroext i1 @__refcount_add_not_zero(i32 1, %struct.refcount_struct* %0, i32* %1) #6, !dbg !5337
  ret i1 %call, !dbg !5338
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_add_not_zero(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5339 {
entry:
  %v.addr.i5.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i5.i, metadata !5340, metadata !DIExpression()), !dbg !5344
  %old.addr.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %old.addr.i.i, metadata !5348, metadata !DIExpression()), !dbg !5349
  %new.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %new.addr.i.i, metadata !5350, metadata !DIExpression()), !dbg !5351
  %success.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %success.i.i, metadata !5352, metadata !DIExpression()), !dbg !5354
  %_old.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %_old.i.i, metadata !5355, metadata !DIExpression()), !dbg !5354
  %__old.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__old.i.i, metadata !5356, metadata !DIExpression()), !dbg !5354
  %__new.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__new.i.i, metadata !5357, metadata !DIExpression()), !dbg !5354
  %__ptr.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %__ptr.i.i, metadata !5358, metadata !DIExpression()), !dbg !5354
  %tmp.i.i = alloca i64, align 8
  %v.addr.i1.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i1.i, metadata !5025, metadata !DIExpression()), !dbg !5359
  %size.addr.i2.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i2.i, metadata !5029, metadata !DIExpression()), !dbg !5361
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5025, metadata !DIExpression()), !dbg !5362
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5029, metadata !DIExpression()), !dbg !5364
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5365, metadata !DIExpression()), !dbg !5366
  %old.addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %old.addr.i, metadata !5367, metadata !DIExpression()), !dbg !5368
  %new.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %new.addr.i, metadata !5369, metadata !DIExpression()), !dbg !5370
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5371, metadata !DIExpression()), !dbg !5372
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5373, metadata !DIExpression()), !dbg !5374
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5375, metadata !DIExpression()), !dbg !5376
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5377, metadata !DIExpression()), !dbg !5378
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5379
  %call = call i32 @refcount_read(%struct.refcount_struct* %0) #6, !dbg !5380
  store i32 %call, i32* %old, align 4, !dbg !5378
  br label %do.body, !dbg !5381

do.body:                                          ; preds = %atomic_try_cmpxchg_relaxed.exit, %entry
  %1 = load i32, i32* %old, align 4, !dbg !5382
  %tobool = icmp ne i32 %1, 0, !dbg !5382
  br i1 %tobool, label %if.end, label %if.then, !dbg !5385

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !5386

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !5387

do.cond:                                          ; preds = %if.end
  %2 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5388
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %2, i32 0, i32 0, !dbg !5389
  %3 = load i32, i32* %old, align 4, !dbg !5390
  %4 = load i32, i32* %i.addr, align 4, !dbg !5391
  %add = add i32 %3, %4, !dbg !5392
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  store i32* %old, i32** %old.addr.i, align 8
  store i32 %add, i32* %new.addr.i, align 4
  %5 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5393
  %6 = bitcast %struct.atomic_t* %5 to i8*, !dbg !5393
  store i8* %6, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %7 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5394
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5395
  %conv.i.i = trunc i64 %8 to i32, !dbg !5395
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %7, i32 %conv.i.i) #9, !dbg !5396
  %9 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5397
  %10 = load i64, i64* %size.addr.i.i, align 8, !dbg !5397
  call void @kcsan_check_access(i8* %9, i64 %10, i32 7) #9, !dbg !5397
  %11 = load i32*, i32** %old.addr.i, align 8, !dbg !5398
  %12 = bitcast i32* %11 to i8*, !dbg !5398
  store i8* %12, i8** %v.addr.i1.i, align 8
  store i64 4, i64* %size.addr.i2.i, align 8
  %13 = load i8*, i8** %v.addr.i1.i, align 8, !dbg !5399
  %14 = load i64, i64* %size.addr.i2.i, align 8, !dbg !5400
  %conv.i3.i = trunc i64 %14 to i32, !dbg !5400
  %call.i4.i = call zeroext i1 @kasan_check_write(i8* %13, i32 %conv.i3.i) #9, !dbg !5401
  %15 = load i8*, i8** %v.addr.i1.i, align 8, !dbg !5402
  %16 = load i64, i64* %size.addr.i2.i, align 8, !dbg !5402
  call void @kcsan_check_access(i8* %15, i64 %16, i32 7) #9, !dbg !5402
  %17 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5403
  %18 = load i32*, i32** %old.addr.i, align 8, !dbg !5404
  %19 = load i32, i32* %new.addr.i, align 4, !dbg !5405
  store %struct.atomic_t* %17, %struct.atomic_t** %v.addr.i5.i, align 8
  store i32* %18, i32** %old.addr.i.i, align 8
  store i32 %19, i32* %new.addr.i.i, align 4
  %20 = load i32*, i32** %old.addr.i.i, align 8, !dbg !5354
  store i32* %20, i32** %_old.i.i, align 8, !dbg !5354
  %21 = load i32*, i32** %_old.i.i, align 8, !dbg !5354
  %22 = load i32, i32* %21, align 4, !dbg !5354
  store i32 %22, i32* %__old.i.i, align 4, !dbg !5354
  %23 = load i32, i32* %new.addr.i.i, align 4, !dbg !5354
  store i32 %23, i32* %__new.i.i, align 4, !dbg !5354
  %24 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i5.i, align 8, !dbg !5354
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %24, i32 0, i32 0, !dbg !5354
  store i32* %counter.i.i, i32** %__ptr.i.i, align 8, !dbg !5354
  %25 = load i32*, i32** %__ptr.i.i, align 8, !dbg !5354
  %26 = load i32, i32* %__old.i.i, align 4, !dbg !5354
  %27 = load i32, i32* %__new.i.i, align 4, !dbg !5354
  %28 = call { i8, i32 } asm sideeffect "cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %25, i32 %27, i32* %25, i32 %26) #7, !dbg !5354, !srcloc !5406
  %asmresult.i.i = extractvalue { i8, i32 } %28, 0, !dbg !5354
  %asmresult1.i.i = extractvalue { i8, i32 } %28, 1, !dbg !5354
  store i8 %asmresult.i.i, i8* %success.i.i, align 1, !dbg !5354
  store i32 %asmresult1.i.i, i32* %__old.i.i, align 4, !dbg !5354
  %29 = load i8, i8* %success.i.i, align 1, !dbg !5407
  %tobool.i.i = trunc i8 %29 to i1, !dbg !5407
  %lnot.i.i = xor i1 %tobool.i.i, true, !dbg !5407
  %lnot3.i.i = xor i1 %tobool.i.i, true, !dbg !5407
  %lnot.ext.i.i = zext i1 %lnot3.i.i to i32, !dbg !5407
  %conv.i6.i = sext i32 %lnot.ext.i.i to i64, !dbg !5407
  br i1 %lnot3.i.i, label %if.then.i.i, label %atomic_try_cmpxchg_relaxed.exit, !dbg !5354

if.then.i.i:                                      ; preds = %do.cond
  %30 = load i32, i32* %__old.i.i, align 4, !dbg !5407
  %31 = load i32*, i32** %_old.i.i, align 8, !dbg !5407
  store i32 %30, i32* %31, align 4, !dbg !5407
  br label %atomic_try_cmpxchg_relaxed.exit, !dbg !5407

atomic_try_cmpxchg_relaxed.exit:                  ; preds = %do.cond, %if.then.i.i
  %32 = load i8, i8* %success.i.i, align 1, !dbg !5354
  %tobool5.i.i = trunc i8 %32 to i1, !dbg !5354
  %lnot6.i.i = xor i1 %tobool5.i.i, true, !dbg !5354
  %lnot.ext9.i.i = zext i1 %tobool5.i.i to i32, !dbg !5354
  %conv10.i.i = sext i32 %lnot.ext9.i.i to i64, !dbg !5354
  store i64 %conv10.i.i, i64* %tmp.i.i, align 8, !dbg !5407
  %33 = load i64, i64* %tmp.i.i, align 8, !dbg !5354
  %tobool11.i.i = icmp ne i64 %33, 0, !dbg !5409
  %lnot = xor i1 %tobool11.i.i, true, !dbg !5410
  br i1 %lnot, label %do.body, label %do.end, !dbg !5387, !llvm.loop !5411

do.end:                                           ; preds = %atomic_try_cmpxchg_relaxed.exit, %if.then
  %34 = load i32*, i32** %oldp.addr, align 8, !dbg !5413
  %tobool2 = icmp ne i32* %34, null, !dbg !5413
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5415

if.then3:                                         ; preds = %do.end
  %35 = load i32, i32* %old, align 4, !dbg !5416
  %36 = load i32*, i32** %oldp.addr, align 8, !dbg !5417
  store i32 %35, i32* %36, align 4, !dbg !5418
  br label %if.end4, !dbg !5419

if.end4:                                          ; preds = %if.then3, %do.end
  %37 = load i32, i32* %old, align 4, !dbg !5420
  %cmp = icmp slt i32 %37, 0, !dbg !5420
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5420

lor.rhs:                                          ; preds = %if.end4
  %38 = load i32, i32* %old, align 4, !dbg !5420
  %39 = load i32, i32* %i.addr, align 4, !dbg !5420
  %add5 = add i32 %38, %39, !dbg !5420
  %cmp6 = icmp slt i32 %add5, 0, !dbg !5420
  br label %lor.end, !dbg !5420

lor.end:                                          ; preds = %lor.rhs, %if.end4
  %40 = phi i1 [ true, %if.end4 ], [ %cmp6, %lor.rhs ]
  %lnot7 = xor i1 %40, true, !dbg !5420
  %lnot8 = xor i1 %lnot7, true, !dbg !5420
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !5420
  %conv = sext i32 %lnot.ext to i64, !dbg !5420
  %tobool9 = icmp ne i64 %conv, 0, !dbg !5420
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5422

if.then10:                                        ; preds = %lor.end
  %41 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5423
  call void @refcount_warn_saturate(%struct.refcount_struct* %41, i32 0) #6, !dbg !5424
  br label %if.end11, !dbg !5424

if.end11:                                         ; preds = %if.then10, %lor.end
  %42 = load i32, i32* %old, align 4, !dbg !5425
  %tobool12 = icmp ne i32 %42, 0, !dbg !5425
  ret i1 %tobool12, !dbg !5426
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @refcount_read(%struct.refcount_struct* %r) #0 !dbg !5427 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5432, metadata !DIExpression()), !dbg !5438
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !4230, metadata !DIExpression()), !dbg !5442
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4240, metadata !DIExpression()), !dbg !5444
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5445, metadata !DIExpression()), !dbg !5446
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5447, metadata !DIExpression()), !dbg !5448
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5449
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %0, i32 0, i32 0, !dbg !5450
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5451
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !5451
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5452
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !5453
  %conv.i.i = trunc i64 %4 to i32, !dbg !5453
  %call.i.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i.i) #9, !dbg !5454
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5455
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !5455
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #9, !dbg !5455
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5456
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5457
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %8, i32 0, i32 0, !dbg !5457
  %9 = load volatile i32, i32* %counter.i.i, align 4, !dbg !5457
  ret i32 %9, !dbg !5458
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__read_seqcount_t_retry(%struct.seqcount* %s, i32 %start) #0 !dbg !5459 {
entry:
  %s.addr = alloca %struct.seqcount*, align 8
  %start.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.seqcount* %s, %struct.seqcount** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.seqcount** %s.addr, metadata !5460, metadata !DIExpression()), !dbg !5461
  store i32 %start, i32* %start.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %start.addr, metadata !5462, metadata !DIExpression()), !dbg !5463
  call void @kcsan_atomic_next(i32 0) #6, !dbg !5464
  br label %do.body, !dbg !5465

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5467

do.end:                                           ; preds = %do.body
  %0 = load %struct.seqcount*, %struct.seqcount** %s.addr, align 8, !dbg !5465
  %sequence = getelementptr inbounds %struct.seqcount, %struct.seqcount* %0, i32 0, i32 0, !dbg !5465
  %1 = load volatile i32, i32* %sequence, align 4, !dbg !5465
  store i32 %1, i32* %tmp, align 4, !dbg !5467
  %2 = load i32, i32* %tmp, align 4, !dbg !5465
  %3 = load i32, i32* %start.addr, align 4, !dbg !5469
  %cmp = icmp ne i32 %2, %3, !dbg !5469
  %lnot = xor i1 %cmp, true, !dbg !5469
  %lnot1 = xor i1 %lnot, true, !dbg !5469
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5469
  %conv = sext i32 %lnot.ext to i64, !dbg !5469
  %conv2 = trunc i64 %conv to i32, !dbg !5469
  ret i32 %conv2, !dbg !5470
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { nounwind willreturn }
attributes #5 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone }
attributes #7 = { nounwind }
attributes #8 = { noredzone nounwind readnone }
attributes #9 = { noredzone nounwind }
attributes #10 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!246, !247, !248, !249}
!llvm.ident = !{!250}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "reservation_ww_class", scope: !2, file: !3, line: 52, type: !229, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !87, globals: !228, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/dma-buf/dma-resv.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !26, !34, !41, !48, !54, !60, !67, !72, !80}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !12, line: 54, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !18, line: 296, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !21, !22, !23, !24, !25}
!20 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!22 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!23 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!24 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!25 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !27, line: 9, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!28 = !{!29, !30, !31, !32, !33}
!29 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!30 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!31 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!32 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!33 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !35, line: 15, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!36 = !{!37, !38, !39, !40}
!37 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!38 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!39 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!40 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !42, line: 59, baseType: !7, size: 32, elements: !43)
!42 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!43 = !{!44, !45, !46, !47}
!44 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!45 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!46 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!47 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !49, line: 546, baseType: !7, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!50 = !{!51, !52, !53}
!51 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!52 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!53 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !55, line: 16, baseType: !7, size: 32, elements: !56)
!55 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!56 = !{!57, !58, !59}
!57 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!58 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!59 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_fence_flag_bits", file: !61, line: 98, baseType: !7, size: 32, elements: !62)
!61 = !DIFile(filename: "./include/linux/dma-fence.h", directory: "/home/lizy2001/genbc/linux")
!62 = !{!63, !64, !65, !66}
!63 = !DIEnumerator(name: "DMA_FENCE_FLAG_SIGNALED_BIT", value: 0, isUnsigned: true)
!64 = !DIEnumerator(name: "DMA_FENCE_FLAG_TIMESTAMP_BIT", value: 1, isUnsigned: true)
!65 = !DIEnumerator(name: "DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT", value: 2, isUnsigned: true)
!66 = !DIEnumerator(name: "DMA_FENCE_FLAG_USER_BITS", value: 3, isUnsigned: true)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !68, line: 10, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!69 = !{!70, !71}
!70 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!71 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !73, line: 119, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!74 = !{!75, !76, !77, !78, !79}
!75 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0, isUnsigned: true)
!76 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1, isUnsigned: true)
!77 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2, isUnsigned: true)
!78 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3, isUnsigned: true)
!79 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4, isUnsigned: true)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !81, line: 305, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!86 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!87 = !{!88, !89, !209, !113, !91, !211, !212, !213, !215, !217, !219, !220, !221, !224, !225}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv_list", file: !93, line: 57, size: 192, elements: !94)
!93 = !DIFile(filename: "./include/linux/dma-resv.h", directory: "/home/lizy2001/genbc/linux")
!94 = !{!95, !105, !110, !111}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !92, file: !93, line: 58, baseType: !96, size: 128, align: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !97, line: 216, size: 128, align: 64, elements: !98)
!97 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!98 = !{!99, !101}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !96, file: !97, line: 217, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !96, file: !97, line: 218, baseType: !102, size: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !100}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "shared_count", scope: !92, file: !93, line: 59, baseType: !106, size: 32, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !107, line: 21, baseType: !108)
!107 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !109, line: 27, baseType: !7)
!109 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!110 = !DIDerivedType(tag: DW_TAG_member, name: "shared_max", scope: !92, file: !93, line: 59, baseType: !106, size: 32, offset: 160)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !92, file: !93, line: 60, baseType: !112, offset: 192)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, elements: !207)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !61, line: 65, size: 512, elements: !115)
!115 = !{!116, !133, !170, !186, !190, !191, !193, !206}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !114, file: !61, line: 66, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !119, line: 83, baseType: !120)
!119 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !119, line: 71, elements: !121)
!121 = !{!122}
!122 = !DIDerivedType(tag: DW_TAG_member, scope: !120, file: !119, line: 72, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !120, file: !119, line: 72, elements: !124)
!124 = !{!125}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !123, file: !119, line: 73, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !119, line: 20, elements: !127)
!127 = !{!128}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !126, file: !119, line: 21, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !130, line: 25, baseType: !131)
!130 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !130, line: 25, elements: !132)
!132 = !{}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !114, file: !61, line: 67, baseType: !134, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_ops", file: !61, line: 125, size: 576, elements: !137)
!137 = !{!138, !141, !148, !149, !153, !154, !159, !163, !169}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "use_64bit_seqno", scope: !136, file: !61, line: 132, baseType: !139, size: 8)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !97, line: 30, baseType: !140)
!140 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "get_driver_name", scope: !136, file: !61, line: 143, baseType: !142, size: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!145, !113}
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!147 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeline_name", scope: !136, file: !61, line: 155, baseType: !142, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "enable_signaling", scope: !136, file: !61, line: 192, baseType: !150, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!139, !113}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "signaled", scope: !136, file: !61, line: 209, baseType: !150, size: 64, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !136, file: !61, line: 231, baseType: !155, size: 64, offset: 320)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!158, !113, !139, !158}
!158 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !136, file: !61, line: 242, baseType: !160, size: 64, offset: 384)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !113}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "fence_value_str", scope: !136, file: !61, line: 252, baseType: !164, size: 64, offset: 448)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !113, !167, !168}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!168 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_value_str", scope: !136, file: !61, line: 262, baseType: !164, size: 64, offset: 512)
!170 = !DIDerivedType(tag: DW_TAG_member, scope: !114, file: !61, line: 84, baseType: !171, size: 128, offset: 128)
!171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !114, file: !61, line: 84, size: 128, elements: !172)
!172 = !{!173, !179, !185}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !171, file: !61, line: 85, baseType: !174, size: 128)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !97, line: 178, size: 128, elements: !175)
!175 = !{!176, !178}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !174, file: !97, line: 179, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !174, file: !97, line: 179, baseType: !177, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !171, file: !61, line: 87, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !181, line: 29, baseType: !182)
!181 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !107, line: 22, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !109, line: 30, baseType: !184)
!184 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !171, file: !61, line: 89, baseType: !96, size: 128, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !114, file: !61, line: 91, baseType: !187, size: 64, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !107, line: 23, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !109, line: 31, baseType: !189)
!189 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !114, file: !61, line: 92, baseType: !187, size: 64, offset: 320)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !114, file: !61, line: 93, baseType: !192, size: 64, offset: 384)
!192 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !114, file: !61, line: 94, baseType: !194, size: 32, offset: 448)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !195, line: 19, size: 32, elements: !196)
!195 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!196 = !{!197}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !194, file: !195, line: 20, baseType: !198, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !73, line: 113, baseType: !199)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !73, line: 111, size: 32, elements: !200)
!200 = !{!201}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !199, file: !73, line: 112, baseType: !202, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !97, line: 168, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !97, line: 166, size: 32, elements: !204)
!204 = !{!205}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !203, file: !97, line: 167, baseType: !168, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !114, file: !61, line: 95, baseType: !168, size: 32, offset: 480)
!207 = !{!208}
!208 = !DISubrange(count: -1)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !113)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !97, line: 37, baseType: !192)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "rcu_callback_t", file: !97, line: 222, baseType: !102)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !106)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !97, line: 148, baseType: !7)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !168)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!228 = !{!0}
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_class", file: !230, line: 22, size: 256, elements: !231)
!230 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/lizy2001/genbc/linux")
!231 = !{!232, !239, !242, !243, !244, !245}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !229, file: !230, line: 23, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !234, line: 13, baseType: !235)
!234 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !97, line: 175, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !97, line: 173, size: 64, elements: !237)
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !236, file: !97, line: 174, baseType: !182, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_key", scope: !229, file: !230, line: 24, baseType: !240, offset: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !241, line: 187, elements: !132)
!241 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!242 = !DIDerivedType(tag: DW_TAG_member, name: "mutex_key", scope: !229, file: !230, line: 25, baseType: !240, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_name", scope: !229, file: !230, line: 26, baseType: !145, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "mutex_name", scope: !229, file: !230, line: 27, baseType: !145, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !229, file: !230, line: 28, baseType: !7, size: 32, offset: 192)
!246 = !{i32 7, !"Dwarf Version", i32 4}
!247 = !{i32 2, !"Debug Info Version", i32 3}
!248 = !{i32 1, !"wchar_size", i32 2}
!249 = !{i32 1, !"Code Model", i32 2}
!250 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!251 = distinct !DISubprogram(name: "dma_resv_init", scope: !3, file: !3, line: 142, type: !252, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !132)
!252 = !DISubroutineType(types: !253)
!253 = !{null, !254}
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv", file: !93, line: 70, size: 448, elements: !256)
!256 = !{!257, !3039, !3044, !3045}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !255, file: !93, line: 71, baseType: !258, size: 256)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !259, line: 71, size: 256, elements: !260)
!259 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!260 = !{!261, !267}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !258, file: !259, line: 72, baseType: !262, size: 192)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !259, line: 53, size: 192, elements: !263)
!263 = !{!264, !265, !266}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !262, file: !259, line: 54, baseType: !233, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !262, file: !259, line: 55, baseType: !118, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !262, file: !259, line: 59, baseType: !174, size: 128, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !258, file: !259, line: 73, baseType: !268, size: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !230, line: 31, size: 192, elements: !270)
!270 = !{!271, !3035, !3036, !3037, !3038}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !269, file: !230, line: 32, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !274, line: 640, size: 48640, elements: !275)
!274 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!275 = !{!276, !282, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !297, !322, !334, !432, !433, !434, !445, !446, !448, !449, !2352, !2353, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2430, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2445, !2446, !2447, !2449, !2450, !2451, !2452, !2453, !2454, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2478, !2483, !2484, !2485, !2486, !2487, !2489, !2492, !2495, !2498, !2501, !2504, !2605, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2653, !2654, !2655, !2656, !2657, !2662, !2663, !2664, !2667, !2668, !2671, !2674, !2677, !2678, !2710, !2713, !2714, !2793, !2794, !2797, !2798, !2801, !2802, !2803, !2807, !2808, !2809, !2822, !2823, !2824, !2834, !2839, !2840, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !273, file: !274, line: 646, baseType: !277, size: 128)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !278, line: 56, size: 128, elements: !279)
!278 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!279 = !{!280, !281}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !277, file: !278, line: 57, baseType: !192, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !277, file: !278, line: 58, baseType: !106, size: 32, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !273, file: !274, line: 649, baseType: !283, size: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !158)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !273, file: !274, line: 657, baseType: !88, size: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !273, file: !274, line: 658, baseType: !198, size: 32, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !273, file: !274, line: 660, baseType: !7, size: 32, offset: 288)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !273, file: !274, line: 661, baseType: !7, size: 32, offset: 320)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !273, file: !274, line: 684, baseType: !168, size: 32, offset: 352)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !273, file: !274, line: 686, baseType: !168, size: 32, offset: 384)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !273, file: !274, line: 687, baseType: !168, size: 32, offset: 416)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !273, file: !274, line: 688, baseType: !168, size: 32, offset: 448)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !273, file: !274, line: 689, baseType: !7, size: 32, offset: 480)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !273, file: !274, line: 691, baseType: !294, size: 64, offset: 512)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !296)
!296 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !274, line: 691, flags: DIFlagFwdDecl)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !273, file: !274, line: 692, baseType: !298, size: 832, offset: 576)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !274, line: 451, size: 832, elements: !299)
!299 = !{!300, !305, !313, !314, !315, !316, !317, !318, !319, !320}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !298, file: !274, line: 453, baseType: !301, size: 128)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !274, line: 325, size: 128, elements: !302)
!302 = !{!303, !304}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !301, file: !274, line: 326, baseType: !192, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !301, file: !274, line: 327, baseType: !106, size: 32, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !298, file: !274, line: 454, baseType: !306, size: 192, align: 64, offset: 128)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !307, line: 24, size: 192, align: 64, elements: !308)
!307 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!308 = !{!309, !310, !312}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !306, file: !307, line: 25, baseType: !192, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !306, file: !307, line: 26, baseType: !311, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !306, file: !307, line: 27, baseType: !311, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !298, file: !274, line: 455, baseType: !174, size: 128, offset: 320)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !298, file: !274, line: 456, baseType: !7, size: 32, offset: 448)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !298, file: !274, line: 458, baseType: !187, size: 64, offset: 512)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !298, file: !274, line: 459, baseType: !187, size: 64, offset: 576)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !298, file: !274, line: 460, baseType: !187, size: 64, offset: 640)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !298, file: !274, line: 461, baseType: !187, size: 64, offset: 704)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !298, file: !274, line: 463, baseType: !187, size: 64, offset: 768)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !298, file: !274, line: 465, baseType: !321, offset: 832)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !274, line: 415, elements: !132)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !273, file: !274, line: 693, baseType: !323, size: 384, offset: 1408)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !274, line: 489, size: 384, elements: !324)
!324 = !{!325, !326, !327, !328, !329, !331, !332}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !323, file: !274, line: 490, baseType: !174, size: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !323, file: !274, line: 491, baseType: !192, size: 64, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !323, file: !274, line: 492, baseType: !192, size: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !323, file: !274, line: 493, baseType: !7, size: 32, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !323, file: !274, line: 494, baseType: !330, size: 16, offset: 288)
!330 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !323, file: !274, line: 495, baseType: !330, size: 16, offset: 304)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !323, file: !274, line: 497, baseType: !333, size: 64, offset: 320)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !273, file: !274, line: 697, baseType: !335, size: 1792, offset: 1792)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !274, line: 507, size: 1792, elements: !336)
!336 = !{!337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !429, !430}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !335, file: !274, line: 508, baseType: !306, size: 192, align: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !335, file: !274, line: 515, baseType: !187, size: 64, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !335, file: !274, line: 516, baseType: !187, size: 64, offset: 256)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !335, file: !274, line: 517, baseType: !187, size: 64, offset: 320)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !335, file: !274, line: 518, baseType: !187, size: 64, offset: 384)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !335, file: !274, line: 519, baseType: !187, size: 64, offset: 448)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !335, file: !274, line: 526, baseType: !182, size: 64, offset: 512)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !335, file: !274, line: 527, baseType: !187, size: 64, offset: 576)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !335, file: !274, line: 528, baseType: !7, size: 32, offset: 640)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !335, file: !274, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !335, file: !274, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !335, file: !274, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !335, file: !274, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !335, file: !274, line: 563, baseType: !351, size: 512, offset: 704)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !352)
!352 = !{!353, !359, !360, !365, !422, !426, !427, !428}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !351, file: !6, line: 119, baseType: !354, size: 256)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !355, line: 9, size: 256, elements: !356)
!355 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!356 = !{!357, !358}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !354, file: !355, line: 10, baseType: !306, size: 192, align: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !354, file: !355, line: 11, baseType: !180, size: 64, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !351, file: !6, line: 120, baseType: !180, size: 64, offset: 256)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !351, file: !6, line: 121, baseType: !361, size: 64, offset: 320)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!5, !364}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !351, file: !6, line: 122, baseType: !366, size: 64, offset: 384)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !368)
!368 = !{!369, !390, !391, !395, !405, !406, !417, !421}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !367, file: !6, line: 160, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !372)
!372 = !{!373, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !371, file: !6, line: 215, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !119, line: 29, baseType: !126)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !371, file: !6, line: 216, baseType: !7, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !371, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !371, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !371, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !371, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !371, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !371, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !371, file: !6, line: 233, baseType: !180, size: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !371, file: !6, line: 234, baseType: !364, size: 64, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !371, file: !6, line: 235, baseType: !180, size: 64, offset: 256)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !371, file: !6, line: 236, baseType: !364, size: 64, offset: 320)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !371, file: !6, line: 237, baseType: !387, size: 4096, offset: 512)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 4096, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 8)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !367, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !367, file: !6, line: 162, baseType: !392, size: 32, offset: 96)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !97, line: 27, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !394, line: 96, baseType: !168)
!394 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!395 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !367, file: !6, line: 163, baseType: !396, size: 32, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !397, line: 276, baseType: !398)
!397 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !397, line: 276, size: 32, elements: !399)
!399 = !{!400}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !398, file: !397, line: 276, baseType: !401, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !397, line: 70, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !397, line: 65, size: 32, elements: !403)
!403 = !{!404}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !402, file: !397, line: 66, baseType: !7, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !367, file: !6, line: 164, baseType: !364, size: 64, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !367, file: !6, line: 165, baseType: !407, size: 128, offset: 256)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !355, line: 14, size: 128, elements: !408)
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !407, file: !355, line: 15, baseType: !410, size: 128)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !307, line: 125, size: 128, elements: !411)
!411 = !{!412, !416}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !410, file: !307, line: 126, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !307, line: 31, size: 64, elements: !414)
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !413, file: !307, line: 32, baseType: !311, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !410, file: !307, line: 127, baseType: !311, size: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !367, file: !6, line: 166, baseType: !418, size: 64, offset: 384)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{!180}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !367, file: !6, line: 167, baseType: !180, size: 64, offset: 448)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !351, file: !6, line: 123, baseType: !423, size: 8, offset: 448)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !107, line: 17, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !109, line: 21, baseType: !425)
!425 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !351, file: !6, line: 124, baseType: !423, size: 8, offset: 456)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !351, file: !6, line: 125, baseType: !423, size: 8, offset: 464)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !351, file: !6, line: 126, baseType: !423, size: 8, offset: 472)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !335, file: !274, line: 572, baseType: !351, size: 512, offset: 1216)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !335, file: !274, line: 580, baseType: !431, size: 64, offset: 1728)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !273, file: !274, line: 721, baseType: !7, size: 32, offset: 3584)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !273, file: !274, line: 722, baseType: !168, size: 32, offset: 3616)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !273, file: !274, line: 723, baseType: !435, size: 64, offset: 3648)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !437)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !438, line: 17, baseType: !439)
!438 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !438, line: 17, size: 64, elements: !440)
!440 = !{!441}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !439, file: !438, line: 17, baseType: !442, size: 64)
!442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 64, elements: !443)
!443 = !{!444}
!444 = !DISubrange(count: 1)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !273, file: !274, line: 724, baseType: !437, size: 64, offset: 3712)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !273, file: !274, line: 749, baseType: !447, offset: 3776)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !274, line: 290, elements: !132)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !273, file: !274, line: 751, baseType: !174, size: 128, offset: 3776)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !273, file: !274, line: 757, baseType: !450, size: 64, offset: 3904)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !452, line: 388, size: 7296, elements: !453)
!452 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!453 = !{!454, !2350}
!454 = !DIDerivedType(tag: DW_TAG_member, scope: !451, file: !452, line: 389, baseType: !455, size: 7296)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !452, line: 389, size: 7296, elements: !456)
!456 = !{!457, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2289, !2295, !2298, !2321, !2322, !2334, !2335, !2338, !2339, !2340, !2343, !2344, !2345, !2348, !2349}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !455, file: !452, line: 390, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !452, line: 305, size: 1472, elements: !460)
!460 = !{!461, !462, !463, !464, !465, !466, !467, !468, !476, !477, !482, !483, !486, !2235, !2236, !2237, !2238, !2239}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !459, file: !452, line: 308, baseType: !192, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !459, file: !452, line: 309, baseType: !192, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !459, file: !452, line: 313, baseType: !458, size: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !459, file: !452, line: 313, baseType: !458, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !459, file: !452, line: 315, baseType: !306, size: 192, align: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !459, file: !452, line: 323, baseType: !192, size: 64, offset: 448)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !459, file: !452, line: 327, baseType: !450, size: 64, offset: 512)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !459, file: !452, line: 333, baseType: !469, size: 64, offset: 576)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !470, line: 284, baseType: !471)
!470 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !470, line: 284, size: 64, elements: !472)
!472 = !{!473}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !471, file: !470, line: 284, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !475, line: 19, baseType: !192)
!475 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!476 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !459, file: !452, line: 334, baseType: !192, size: 64, offset: 640)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !459, file: !452, line: 343, baseType: !478, size: 256, offset: 704)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !459, file: !452, line: 340, size: 256, elements: !479)
!479 = !{!480, !481}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !478, file: !452, line: 341, baseType: !306, size: 192, align: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !478, file: !452, line: 342, baseType: !192, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !459, file: !452, line: 351, baseType: !174, size: 128, offset: 960)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !459, file: !452, line: 353, baseType: !484, size: 64, offset: 1088)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !452, line: 353, flags: DIFlagFwdDecl)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !459, file: !452, line: 356, baseType: !487, size: 64, offset: 1152)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !489)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !49, line: 557, size: 832, elements: !490)
!490 = !{!491, !495, !496, !500, !504, !2209, !2213, !2217, !2221, !2222, !2223, !2227, !2231}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !489, file: !49, line: 558, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{null, !458}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !489, file: !49, line: 559, baseType: !492, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !489, file: !49, line: 560, baseType: !497, size: 64, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!168, !458, !192}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !489, file: !49, line: 561, baseType: !501, size: 64, offset: 192)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!168, !458}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !489, file: !49, line: 562, baseType: !505, size: 64, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!508, !509}
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !452, line: 682, baseType: !7)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !49, line: 508, size: 768, elements: !511)
!511 = !{!512, !513, !514, !515, !516, !517, !524, !531, !537, !2204, !2205, !2207, !2208}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !510, file: !49, line: 509, baseType: !458, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !510, file: !49, line: 510, baseType: !7, size: 32, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !510, file: !49, line: 511, baseType: !219, size: 32, offset: 96)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !510, file: !49, line: 512, baseType: !192, size: 64, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !510, file: !49, line: 513, baseType: !192, size: 64, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !510, file: !49, line: 514, baseType: !518, size: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !470, line: 385, baseType: !520)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !470, line: 385, size: 64, elements: !521)
!521 = !{!522}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !520, file: !470, line: 385, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !475, line: 15, baseType: !192)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !510, file: !49, line: 516, baseType: !525, size: 64, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !470, line: 359, baseType: !527)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !470, line: 359, size: 64, elements: !528)
!528 = !{!529}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !527, file: !470, line: 359, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !475, line: 16, baseType: !192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !510, file: !49, line: 519, baseType: !532, size: 64, offset: 384)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !475, line: 21, baseType: !533)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !475, line: 21, size: 64, elements: !534)
!534 = !{!535}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !533, file: !475, line: 21, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !475, line: 14, baseType: !192)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !510, file: !49, line: 521, baseType: !538, size: 64, offset: 448)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !452, line: 68, size: 512, align: 128, elements: !540)
!540 = !{!541, !542, !2196, !2203}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !539, file: !452, line: 69, baseType: !192, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, scope: !539, file: !452, line: 77, baseType: !543, size: 320, offset: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !539, file: !452, line: 77, size: 320, elements: !544)
!544 = !{!545, !2057, !2062, !2090, !2098, !2104, !2117, !2195}
!545 = !DIDerivedType(tag: DW_TAG_member, scope: !543, file: !452, line: 78, baseType: !546, size: 320)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !543, file: !452, line: 78, size: 320, elements: !547)
!547 = !{!548, !549, !2055, !2056}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !546, file: !452, line: 84, baseType: !174, size: 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !546, file: !452, line: 86, baseType: !550, size: 64, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !18, line: 451, size: 1216, align: 64, elements: !552)
!552 = !{!553, !1942, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !2050, !2051, !2052, !2053, !2054}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !551, file: !18, line: 452, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !18, line: 610, size: 4224, elements: !556)
!556 = !{!557, !559, !560, !568, !575, !576, !1874, !1875, !1876, !1877, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1918, !1926, !1927, !1928, !1938, !1939, !1940, !1941}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !555, file: !18, line: 611, baseType: !558, size: 16)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !97, line: 19, baseType: !330)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !555, file: !18, line: 612, baseType: !330, size: 16, offset: 16)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !555, file: !18, line: 613, baseType: !561, size: 32, offset: 32)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !562, line: 23, baseType: !563)
!562 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !562, line: 21, size: 32, elements: !564)
!564 = !{!565}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !563, file: !562, line: 22, baseType: !566, size: 32)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !97, line: 32, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !394, line: 49, baseType: !7)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !555, file: !18, line: 614, baseType: !569, size: 32, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !562, line: 28, baseType: !570)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !562, line: 26, size: 32, elements: !571)
!571 = !{!572}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !570, file: !562, line: 27, baseType: !573, size: 32)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !97, line: 33, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !394, line: 50, baseType: !7)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !555, file: !18, line: 615, baseType: !7, size: 32, offset: 96)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !555, file: !18, line: 622, baseType: !577, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !579)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !18, line: 1864, size: 1536, align: 512, elements: !580)
!580 = !{!581, !1232, !1245, !1249, !1255, !1259, !1263, !1267, !1271, !1275, !1279, !1280, !1284, !1288, !1824, !1850, !1854, !1860, !1865, !1869, !1870}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !579, file: !18, line: 1865, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!585, !554, !585, !7}
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !587, line: 89, size: 1536, elements: !588)
!587 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!588 = !{!589, !590, !595, !603, !604, !619, !620, !624, !636, !704, !1216, !1217, !1218, !1224, !1225, !1226}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !586, file: !587, line: 91, baseType: !7, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !586, file: !587, line: 92, baseType: !591, size: 32, offset: 32)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !397, line: 277, baseType: !592)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !397, line: 277, size: 32, elements: !593)
!593 = !{!594}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !592, file: !397, line: 277, baseType: !401, size: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !586, file: !587, line: 93, baseType: !596, size: 128, offset: 64)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !597, line: 38, size: 128, elements: !598)
!597 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!598 = !{!599, !601}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !596, file: !597, line: 39, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !596, file: !597, line: 39, baseType: !602, size: 64, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !586, file: !587, line: 94, baseType: !585, size: 64, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !586, file: !587, line: 95, baseType: !605, size: 128, offset: 256)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !587, line: 47, size: 128, elements: !606)
!606 = !{!607, !616}
!607 = !DIDerivedType(tag: DW_TAG_member, scope: !605, file: !587, line: 48, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !605, file: !587, line: 48, size: 64, elements: !609)
!609 = !{!610, !615}
!610 = !DIDerivedType(tag: DW_TAG_member, scope: !608, file: !587, line: 49, baseType: !611, size: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !608, file: !587, line: 49, size: 64, elements: !612)
!612 = !{!613, !614}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !611, file: !587, line: 50, baseType: !106, size: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !611, file: !587, line: 50, baseType: !106, size: 32, offset: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !608, file: !587, line: 52, baseType: !187, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !605, file: !587, line: 54, baseType: !617, size: 64, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !586, file: !587, line: 96, baseType: !554, size: 64, offset: 384)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !586, file: !587, line: 98, baseType: !621, size: 256, offset: 448)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 256, elements: !622)
!622 = !{!623}
!623 = !DISubrange(count: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !586, file: !587, line: 101, baseType: !625, size: 32, offset: 704)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !626, line: 25, size: 32, elements: !627)
!626 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!627 = !{!628}
!628 = !DIDerivedType(tag: DW_TAG_member, scope: !625, file: !626, line: 26, baseType: !629, size: 32)
!629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !625, file: !626, line: 26, size: 32, elements: !630)
!630 = !{!631}
!631 = !DIDerivedType(tag: DW_TAG_member, scope: !629, file: !626, line: 30, baseType: !632, size: 32)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !629, file: !626, line: 30, size: 32, elements: !633)
!633 = !{!634, !635}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !632, file: !626, line: 31, baseType: !118)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !632, file: !626, line: 32, baseType: !168, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !586, file: !587, line: 102, baseType: !637, size: 64, offset: 768)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !639)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !587, line: 135, size: 1024, align: 512, elements: !640)
!640 = !{!641, !645, !646, !653, !659, !663, !667, !671, !672, !676, !680, !692, !698}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !639, file: !587, line: 136, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!168, !585, !7}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !639, file: !587, line: 137, baseType: !642, size: 64, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !639, file: !587, line: 138, baseType: !647, size: 64, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!168, !650, !652}
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !586)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !639, file: !587, line: 139, baseType: !654, size: 64, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!168, !650, !7, !145, !657}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !605)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !639, file: !587, line: 141, baseType: !660, size: 64, offset: 256)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!168, !650}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !639, file: !587, line: 142, baseType: !664, size: 64, offset: 320)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!168, !585}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !639, file: !587, line: 143, baseType: !668, size: 64, offset: 384)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{null, !585}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !639, file: !587, line: 144, baseType: !668, size: 64, offset: 448)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !639, file: !587, line: 145, baseType: !673, size: 64, offset: 512)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !585, !554}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !639, file: !587, line: 146, baseType: !677, size: 64, offset: 576)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!167, !585, !167, !168}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !639, file: !587, line: 147, baseType: !681, size: 64, offset: 640)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{!684, !686}
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !587, line: 18, flags: DIFlagFwdDecl)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !688, line: 8, size: 128, elements: !689)
!688 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!689 = !{!690, !691}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !687, file: !688, line: 9, baseType: !684, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !687, file: !688, line: 10, baseType: !585, size: 64, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !639, file: !587, line: 148, baseType: !693, size: 64, offset: 704)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!168, !696, !139}
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !687)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !639, file: !587, line: 149, baseType: !699, size: 64, offset: 768)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!585, !585, !702}
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !555)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !586, file: !587, line: 103, baseType: !705, size: 64, offset: 832)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !18, line: 1416, size: 9472, elements: !707)
!707 = !{!708, !709, !712, !713, !714, !717, !766, !847, !931, !1014, !1018, !1019, !1020, !1021, !1022, !1030, !1031, !1032, !1037, !1041, !1042, !1045, !1048, !1051, !1052, !1053, !1094, !1127, !1128, !1129, !1130, !1131, !1132, !1135, !1137, !1146, !1147, !1149, !1150, !1151, !1152, !1153, !1168, !1169, !1170, !1171, !1174, !1178, !1179, !1182, !1197, !1198, !1199, !1210, !1211, !1212, !1213, !1214, !1215}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !706, file: !18, line: 1417, baseType: !174, size: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !706, file: !18, line: 1418, baseType: !710, size: 32, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !97, line: 16, baseType: !711)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !97, line: 13, baseType: !106)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !706, file: !18, line: 1419, baseType: !425, size: 8, offset: 160)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !706, file: !18, line: 1420, baseType: !192, size: 64, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !706, file: !18, line: 1421, baseType: !715, size: 64, offset: 256)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !97, line: 46, baseType: !716)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !394, line: 88, baseType: !184)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !706, file: !18, line: 1422, baseType: !718, size: 64, offset: 320)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !18, line: 2228, size: 576, elements: !720)
!720 = !{!721, !722, !723, !729, !733, !737, !741, !745, !746, !756, !757, !758, !759, !763, !764, !765}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !719, file: !18, line: 2229, baseType: !145, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !719, file: !18, line: 2230, baseType: !168, size: 32, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !719, file: !18, line: 2238, baseType: !724, size: 64, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!168, !727}
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !18, line: 69, flags: DIFlagFwdDecl)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !719, file: !18, line: 2239, baseType: !730, size: 64, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !732)
!732 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !18, line: 70, flags: DIFlagFwdDecl)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !719, file: !18, line: 2240, baseType: !734, size: 64, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!585, !718, !168, !145, !88}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !719, file: !18, line: 2242, baseType: !738, size: 64, offset: 320)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{null, !705}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !719, file: !18, line: 2243, baseType: !742, size: 64, offset: 384)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !744, line: 76, flags: DIFlagFwdDecl)
!744 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!745 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !719, file: !18, line: 2244, baseType: !718, size: 64, offset: 448)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !719, file: !18, line: 2245, baseType: !747, size: 64, offset: 512)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !97, line: 182, size: 64, elements: !748)
!748 = !{!749}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !747, file: !97, line: 183, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !97, line: 186, size: 128, elements: !752)
!752 = !{!753, !754}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !751, file: !97, line: 187, baseType: !750, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !751, file: !97, line: 187, baseType: !755, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !719, file: !18, line: 2247, baseType: !240, offset: 576)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !719, file: !18, line: 2248, baseType: !240, offset: 576)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !719, file: !18, line: 2249, baseType: !240, offset: 576)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !719, file: !18, line: 2250, baseType: !760, offset: 576)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, elements: !761)
!761 = !{!762}
!762 = !DISubrange(count: 3)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !719, file: !18, line: 2252, baseType: !240, offset: 576)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !719, file: !18, line: 2253, baseType: !240, offset: 576)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !719, file: !18, line: 2254, baseType: !240, offset: 576)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !706, file: !18, line: 1423, baseType: !767, size: 64, offset: 384)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !769)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !18, line: 1935, size: 1472, elements: !770)
!770 = !{!771, !775, !779, !780, !784, !790, !794, !795, !796, !800, !804, !805, !806, !807, !813, !817, !818, !824, !825, !826, !827, !831, !846}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !769, file: !18, line: 1936, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!554, !705}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !769, file: !18, line: 1937, baseType: !776, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{null, !554}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !769, file: !18, line: 1938, baseType: !776, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !769, file: !18, line: 1940, baseType: !781, size: 64, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{null, !554, !168}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !769, file: !18, line: 1941, baseType: !785, size: 64, offset: 256)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{!168, !554, !788}
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !49, line: 40, flags: DIFlagFwdDecl)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !769, file: !18, line: 1942, baseType: !791, size: 64, offset: 320)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!168, !554}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !769, file: !18, line: 1943, baseType: !776, size: 64, offset: 384)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !769, file: !18, line: 1944, baseType: !738, size: 64, offset: 448)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !769, file: !18, line: 1945, baseType: !797, size: 64, offset: 512)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!168, !705, !168}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !769, file: !18, line: 1946, baseType: !801, size: 64, offset: 576)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!168, !705}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !769, file: !18, line: 1947, baseType: !801, size: 64, offset: 640)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !769, file: !18, line: 1948, baseType: !801, size: 64, offset: 704)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !769, file: !18, line: 1949, baseType: !801, size: 64, offset: 768)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !769, file: !18, line: 1950, baseType: !808, size: 64, offset: 832)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!168, !585, !811}
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !18, line: 57, flags: DIFlagFwdDecl)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !769, file: !18, line: 1951, baseType: !814, size: 64, offset: 896)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!168, !705, !224, !167}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !769, file: !18, line: 1952, baseType: !738, size: 64, offset: 960)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !769, file: !18, line: 1954, baseType: !819, size: 64, offset: 1024)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!168, !822, !585}
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !470, line: 539, flags: DIFlagFwdDecl)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !769, file: !18, line: 1955, baseType: !819, size: 64, offset: 1088)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !769, file: !18, line: 1956, baseType: !819, size: 64, offset: 1152)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !769, file: !18, line: 1957, baseType: !819, size: 64, offset: 1216)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !769, file: !18, line: 1963, baseType: !828, size: 64, offset: 1280)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!168, !705, !538, !219}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !769, file: !18, line: 1964, baseType: !832, size: 64, offset: 1344)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!158, !705, !835}
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !837, line: 12, size: 256, elements: !838)
!837 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!838 = !{!839, !840, !841, !842, !843}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !836, file: !837, line: 13, baseType: !219, size: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !836, file: !837, line: 16, baseType: !168, size: 32, offset: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !836, file: !837, line: 23, baseType: !192, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !836, file: !837, line: 30, baseType: !192, size: 64, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !836, file: !837, line: 33, baseType: !844, size: 64, offset: 192)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !452, line: 27, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !769, file: !18, line: 1966, baseType: !832, size: 64, offset: 1408)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !706, file: !18, line: 1424, baseType: !848, size: 64, offset: 448)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !850)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !12, line: 322, size: 704, elements: !851)
!851 = !{!852, !900, !904, !908, !909, !910, !911, !912, !917, !922, !926}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !850, file: !12, line: 323, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!168, !856}
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !12, line: 294, size: 1600, elements: !858)
!858 = !{!859, !860, !861, !862, !863, !864, !865, !866, !867, !883, !884, !885}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !857, file: !12, line: 295, baseType: !751, size: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !857, file: !12, line: 296, baseType: !174, size: 128, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !857, file: !12, line: 297, baseType: !174, size: 128, offset: 256)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !857, file: !12, line: 298, baseType: !174, size: 128, offset: 384)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !857, file: !12, line: 299, baseType: !262, size: 192, offset: 512)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !857, file: !12, line: 300, baseType: !118, offset: 704)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !857, file: !12, line: 301, baseType: !202, size: 32, offset: 704)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !857, file: !12, line: 302, baseType: !705, size: 64, offset: 768)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !857, file: !12, line: 303, baseType: !868, size: 64, offset: 832)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !12, line: 68, size: 64, elements: !869)
!869 = !{!870, !882}
!870 = !DIDerivedType(tag: DW_TAG_member, scope: !868, file: !12, line: 69, baseType: !871, size: 32)
!871 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !868, file: !12, line: 69, size: 32, elements: !872)
!872 = !{!873, !874, !875}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !871, file: !12, line: 70, baseType: !561, size: 32)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !871, file: !12, line: 71, baseType: !569, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !871, file: !12, line: 72, baseType: !876, size: 32)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !877, line: 24, baseType: !878)
!877 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !877, line: 22, size: 32, elements: !879)
!879 = !{!880}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !878, file: !877, line: 23, baseType: !881, size: 32)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !877, line: 20, baseType: !567)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !868, file: !12, line: 74, baseType: !11, size: 32, offset: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !857, file: !12, line: 304, baseType: !715, size: 64, offset: 896)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !857, file: !12, line: 305, baseType: !192, size: 64, offset: 960)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !857, file: !12, line: 306, baseType: !886, size: 576, offset: 1024)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !12, line: 205, size: 576, elements: !887)
!887 = !{!888, !890, !891, !892, !893, !894, !895, !896, !899}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !886, file: !12, line: 206, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !12, line: 66, baseType: !184)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !886, file: !12, line: 207, baseType: !889, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !886, file: !12, line: 208, baseType: !889, size: 64, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !886, file: !12, line: 209, baseType: !889, size: 64, offset: 192)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !886, file: !12, line: 210, baseType: !889, size: 64, offset: 256)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !886, file: !12, line: 211, baseType: !889, size: 64, offset: 320)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !886, file: !12, line: 212, baseType: !889, size: 64, offset: 384)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !886, file: !12, line: 213, baseType: !897, size: 64, offset: 448)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !898, line: 8, baseType: !183)
!898 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!899 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !886, file: !12, line: 214, baseType: !897, size: 64, offset: 512)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !850, file: !12, line: 324, baseType: !901, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{!856, !705, !168}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !850, file: !12, line: 325, baseType: !905, size: 64, offset: 128)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{null, !856}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !850, file: !12, line: 326, baseType: !853, size: 64, offset: 192)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !850, file: !12, line: 327, baseType: !853, size: 64, offset: 256)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !850, file: !12, line: 328, baseType: !853, size: 64, offset: 320)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !850, file: !12, line: 329, baseType: !797, size: 64, offset: 384)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !850, file: !12, line: 332, baseType: !913, size: 64, offset: 448)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{!916, !554}
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !850, file: !12, line: 333, baseType: !918, size: 64, offset: 512)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{!168, !554, !921}
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !850, file: !12, line: 335, baseType: !923, size: 64, offset: 576)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!168, !554, !916}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !850, file: !12, line: 337, baseType: !927, size: 64, offset: 640)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!168, !705, !930}
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !706, file: !18, line: 1425, baseType: !932, size: 64, offset: 512)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !934)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !12, line: 428, size: 704, elements: !935)
!935 = !{!936, !940, !941, !945, !946, !947, !962, !985, !989, !990, !1013}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !934, file: !12, line: 429, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{!168, !705, !168, !168, !696}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !934, file: !12, line: 430, baseType: !797, size: 64, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !934, file: !12, line: 431, baseType: !942, size: 64, offset: 128)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!168, !705, !7}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !934, file: !12, line: 432, baseType: !942, size: 64, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !934, file: !12, line: 433, baseType: !797, size: 64, offset: 256)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !934, file: !12, line: 434, baseType: !948, size: 64, offset: 320)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!168, !705, !168, !951}
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !12, line: 415, size: 256, elements: !953)
!953 = !{!954, !955, !956, !957, !958, !959, !960, !961}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !952, file: !12, line: 416, baseType: !168, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !952, file: !12, line: 417, baseType: !7, size: 32, offset: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !952, file: !12, line: 418, baseType: !7, size: 32, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !952, file: !12, line: 420, baseType: !7, size: 32, offset: 96)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !952, file: !12, line: 421, baseType: !7, size: 32, offset: 128)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !952, file: !12, line: 422, baseType: !7, size: 32, offset: 160)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !952, file: !12, line: 423, baseType: !7, size: 32, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !952, file: !12, line: 424, baseType: !7, size: 32, offset: 224)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !934, file: !12, line: 435, baseType: !963, size: 64, offset: 384)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!168, !705, !868, !966}
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !12, line: 343, size: 960, elements: !968)
!968 = !{!969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !967, file: !12, line: 344, baseType: !168, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !967, file: !12, line: 345, baseType: !187, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !967, file: !12, line: 346, baseType: !187, size: 64, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !967, file: !12, line: 347, baseType: !187, size: 64, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !967, file: !12, line: 348, baseType: !187, size: 64, offset: 256)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !967, file: !12, line: 349, baseType: !187, size: 64, offset: 320)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !967, file: !12, line: 350, baseType: !187, size: 64, offset: 384)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !967, file: !12, line: 351, baseType: !182, size: 64, offset: 448)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !967, file: !12, line: 353, baseType: !182, size: 64, offset: 512)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !967, file: !12, line: 354, baseType: !168, size: 32, offset: 576)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !967, file: !12, line: 355, baseType: !168, size: 32, offset: 608)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !967, file: !12, line: 356, baseType: !187, size: 64, offset: 640)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !967, file: !12, line: 357, baseType: !187, size: 64, offset: 704)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !967, file: !12, line: 358, baseType: !187, size: 64, offset: 768)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !967, file: !12, line: 359, baseType: !182, size: 64, offset: 832)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !967, file: !12, line: 360, baseType: !168, size: 32, offset: 896)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !934, file: !12, line: 436, baseType: !986, size: 64, offset: 448)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!168, !705, !930, !966}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !934, file: !12, line: 438, baseType: !963, size: 64, offset: 512)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !934, file: !12, line: 439, baseType: !991, size: 64, offset: 576)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{!168, !705, !994}
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !12, line: 409, size: 1408, elements: !996)
!996 = !{!997, !998}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !995, file: !12, line: 410, baseType: !7, size: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !995, file: !12, line: 411, baseType: !999, size: 1344, offset: 64)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1000, size: 1344, elements: !761)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !12, line: 395, size: 448, elements: !1001)
!1001 = !{!1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1012}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1000, file: !12, line: 396, baseType: !7, size: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1000, file: !12, line: 397, baseType: !7, size: 32, offset: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1000, file: !12, line: 399, baseType: !7, size: 32, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1000, file: !12, line: 400, baseType: !7, size: 32, offset: 96)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1000, file: !12, line: 401, baseType: !7, size: 32, offset: 128)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1000, file: !12, line: 402, baseType: !7, size: 32, offset: 160)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1000, file: !12, line: 403, baseType: !7, size: 32, offset: 192)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1000, file: !12, line: 404, baseType: !189, size: 64, offset: 256)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1000, file: !12, line: 405, baseType: !1011, size: 64, offset: 320)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !97, line: 126, baseType: !187)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1000, file: !12, line: 406, baseType: !1011, size: 64, offset: 384)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !934, file: !12, line: 440, baseType: !942, size: 64, offset: 640)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !706, file: !18, line: 1426, baseType: !1015, size: 64, offset: 576)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1017)
!1017 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !18, line: 49, flags: DIFlagFwdDecl)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !706, file: !18, line: 1427, baseType: !192, size: 64, offset: 640)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !706, file: !18, line: 1428, baseType: !192, size: 64, offset: 704)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !706, file: !18, line: 1429, baseType: !192, size: 64, offset: 768)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !706, file: !18, line: 1430, baseType: !585, size: 64, offset: 832)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !706, file: !18, line: 1431, baseType: !1023, size: 256, offset: 896)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1024, line: 35, size: 256, elements: !1025)
!1024 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1025 = !{!1026, !1027, !1028, !1029}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1023, file: !1024, line: 36, baseType: !233, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1023, file: !1024, line: 42, baseType: !233, size: 64, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1023, file: !1024, line: 46, baseType: !374, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1023, file: !1024, line: 47, baseType: !174, size: 128, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !706, file: !18, line: 1432, baseType: !168, size: 32, offset: 1152)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !706, file: !18, line: 1433, baseType: !202, size: 32, offset: 1184)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !706, file: !18, line: 1437, baseType: !1033, size: 64, offset: 1216)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1036)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !18, line: 1437, flags: DIFlagFwdDecl)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !706, file: !18, line: 1449, baseType: !1038, size: 64, offset: 1280)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !597, line: 34, size: 64, elements: !1039)
!1039 = !{!1040}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1038, file: !597, line: 35, baseType: !600, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !706, file: !18, line: 1450, baseType: !174, size: 128, offset: 1344)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !706, file: !18, line: 1451, baseType: !1043, size: 64, offset: 1472)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !18, line: 699, flags: DIFlagFwdDecl)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !706, file: !18, line: 1452, baseType: !1046, size: 64, offset: 1536)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !274, line: 40, flags: DIFlagFwdDecl)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !706, file: !18, line: 1453, baseType: !1049, size: 64, offset: 1600)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !18, line: 1453, flags: DIFlagFwdDecl)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !706, file: !18, line: 1454, baseType: !751, size: 128, offset: 1664)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !706, file: !18, line: 1455, baseType: !7, size: 32, offset: 1792)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !706, file: !18, line: 1456, baseType: !1054, size: 2432, offset: 1856)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !12, line: 518, size: 2432, elements: !1055)
!1055 = !{!1056, !1057, !1058, !1060, !1092}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1054, file: !12, line: 519, baseType: !7, size: 32)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1054, file: !12, line: 520, baseType: !1023, size: 256, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1054, file: !12, line: 521, baseType: !1059, size: 192, offset: 320)
!1059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !554, size: 192, elements: !761)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1054, file: !12, line: 522, baseType: !1061, size: 1728, offset: 512)
!1061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1062, size: 1728, elements: !761)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !12, line: 222, size: 576, elements: !1063)
!1063 = !{!1064, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1062, file: !12, line: 223, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !12, line: 443, size: 256, elements: !1067)
!1067 = !{!1068, !1069, !1082, !1083}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1066, file: !12, line: 444, baseType: !168, size: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1066, file: !12, line: 445, baseType: !1070, size: 64, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1072)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !12, line: 310, size: 512, elements: !1073)
!1073 = !{!1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1072, file: !12, line: 311, baseType: !797, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1072, file: !12, line: 312, baseType: !797, size: 64, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1072, file: !12, line: 313, baseType: !797, size: 64, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1072, file: !12, line: 314, baseType: !797, size: 64, offset: 192)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1072, file: !12, line: 315, baseType: !853, size: 64, offset: 256)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1072, file: !12, line: 316, baseType: !853, size: 64, offset: 320)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1072, file: !12, line: 317, baseType: !853, size: 64, offset: 384)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1072, file: !12, line: 318, baseType: !927, size: 64, offset: 448)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1066, file: !12, line: 446, baseType: !742, size: 64, offset: 128)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1066, file: !12, line: 447, baseType: !1065, size: 64, offset: 192)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1062, file: !12, line: 224, baseType: !168, size: 32, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1062, file: !12, line: 226, baseType: !174, size: 128, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1062, file: !12, line: 227, baseType: !192, size: 64, offset: 256)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1062, file: !12, line: 228, baseType: !7, size: 32, offset: 320)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1062, file: !12, line: 229, baseType: !7, size: 32, offset: 352)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1062, file: !12, line: 230, baseType: !889, size: 64, offset: 384)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1062, file: !12, line: 231, baseType: !889, size: 64, offset: 448)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1062, file: !12, line: 232, baseType: !88, size: 64, offset: 512)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1054, file: !12, line: 523, baseType: !1093, size: 192, offset: 2240)
!1093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1070, size: 192, elements: !761)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !706, file: !18, line: 1458, baseType: !1095, size: 2112, offset: 4288)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !18, line: 1410, size: 2112, elements: !1096)
!1096 = !{!1097, !1098, !1105}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1095, file: !18, line: 1411, baseType: !168, size: 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !1095, file: !18, line: 1412, baseType: !1099, size: 128, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1100, line: 40, baseType: !1101)
!1100 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1100, line: 36, size: 128, elements: !1102)
!1102 = !{!1103, !1104}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1101, file: !1100, line: 37, baseType: !118)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1101, file: !1100, line: 38, baseType: !174, size: 128)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1095, file: !18, line: 1413, baseType: !1106, size: 1920, offset: 192)
!1106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1107, size: 1920, elements: !761)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1108, line: 12, size: 640, elements: !1109)
!1108 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1109 = !{!1110, !1118, !1120, !1125, !1126}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1107, file: !1108, line: 13, baseType: !1111, size: 320)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1112, line: 17, size: 320, elements: !1113)
!1112 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!1113 = !{!1114, !1115, !1116, !1117}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1111, file: !1112, line: 18, baseType: !168, size: 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1111, file: !1112, line: 19, baseType: !168, size: 32, offset: 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1111, file: !1112, line: 20, baseType: !1099, size: 128, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1111, file: !1112, line: 22, baseType: !96, size: 128, align: 64, offset: 192)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1107, file: !1108, line: 14, baseType: !1119, size: 64, offset: 320)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1107, file: !1108, line: 15, baseType: !1121, size: 64, offset: 384)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1122, line: 16, size: 64, elements: !1123)
!1122 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!1123 = !{!1124}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1121, file: !1122, line: 17, baseType: !272, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1107, file: !1108, line: 16, baseType: !1099, size: 128, offset: 448)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1107, file: !1108, line: 17, baseType: !202, size: 32, offset: 576)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !706, file: !18, line: 1465, baseType: !88, size: 64, offset: 6400)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !706, file: !18, line: 1468, baseType: !106, size: 32, offset: 6464)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !706, file: !18, line: 1470, baseType: !897, size: 64, offset: 6528)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !706, file: !18, line: 1471, baseType: !897, size: 64, offset: 6592)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !706, file: !18, line: 1473, baseType: !108, size: 32, offset: 6656)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !706, file: !18, line: 1474, baseType: !1133, size: 64, offset: 6720)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !18, line: 603, flags: DIFlagFwdDecl)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !706, file: !18, line: 1477, baseType: !1136, size: 256, offset: 6784)
!1136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 256, elements: !622)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !706, file: !18, line: 1478, baseType: !1138, size: 128, offset: 7040)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1139, line: 18, baseType: !1140)
!1139 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1139, line: 16, size: 128, elements: !1141)
!1141 = !{!1142}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1140, file: !1139, line: 17, baseType: !1143, size: 128)
!1143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 128, elements: !1144)
!1144 = !{!1145}
!1145 = !DISubrange(count: 16)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !706, file: !18, line: 1480, baseType: !7, size: 32, offset: 7168)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !706, file: !18, line: 1481, baseType: !1148, size: 32, offset: 7200)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !97, line: 150, baseType: !7)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !706, file: !18, line: 1487, baseType: !262, size: 192, offset: 7232)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !706, file: !18, line: 1493, baseType: !145, size: 64, offset: 7424)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !706, file: !18, line: 1495, baseType: !637, size: 64, offset: 7488)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !706, file: !18, line: 1500, baseType: !168, size: 32, offset: 7552)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !706, file: !18, line: 1502, baseType: !1154, size: 448, offset: 7616)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !837, line: 60, size: 448, elements: !1155)
!1155 = !{!1156, !1161, !1162, !1163, !1164, !1165, !1166}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1154, file: !837, line: 61, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!192, !1160, !835}
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1154, file: !837, line: 63, baseType: !1157, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1154, file: !837, line: 66, baseType: !158, size: 64, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1154, file: !837, line: 67, baseType: !168, size: 32, offset: 192)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1154, file: !837, line: 68, baseType: !7, size: 32, offset: 224)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1154, file: !837, line: 71, baseType: !174, size: 128, offset: 256)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1154, file: !837, line: 77, baseType: !1167, size: 64, offset: 384)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !706, file: !18, line: 1505, baseType: !233, size: 64, offset: 8064)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !706, file: !18, line: 1508, baseType: !233, size: 64, offset: 8128)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !706, file: !18, line: 1511, baseType: !168, size: 32, offset: 8192)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !706, file: !18, line: 1514, baseType: !1172, size: 32, offset: 8224)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1173, line: 8, baseType: !106)
!1173 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !706, file: !18, line: 1517, baseType: !1175, size: 64, offset: 8256)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1177, line: 18, flags: DIFlagFwdDecl)
!1177 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !706, file: !18, line: 1518, baseType: !747, size: 64, offset: 8320)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !706, file: !18, line: 1525, baseType: !1180, size: 64, offset: 8384)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !562, line: 18, flags: DIFlagFwdDecl)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !706, file: !18, line: 1532, baseType: !1183, size: 64, offset: 8448)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1184, line: 52, size: 64, elements: !1185)
!1184 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!1185 = !{!1186}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1183, file: !1184, line: 53, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1184, line: 40, size: 256, elements: !1189)
!1189 = !{!1190, !1191, !1196}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1188, file: !1184, line: 42, baseType: !118)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1188, file: !1184, line: 44, baseType: !1192, size: 192)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1184, line: 28, size: 192, elements: !1193)
!1193 = !{!1194, !1195}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1192, file: !1184, line: 29, baseType: !174, size: 128)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1192, file: !1184, line: 31, baseType: !158, size: 64, offset: 128)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1188, file: !1184, line: 49, baseType: !158, size: 64, offset: 192)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !706, file: !18, line: 1533, baseType: !1183, size: 64, offset: 8512)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !706, file: !18, line: 1534, baseType: !96, size: 128, align: 64, offset: 8576)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !706, file: !18, line: 1535, baseType: !1200, size: 256, offset: 8704)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1177, line: 102, size: 256, elements: !1201)
!1201 = !{!1202, !1203, !1204}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1200, file: !1177, line: 103, baseType: !233, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1200, file: !1177, line: 104, baseType: !174, size: 128, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1200, file: !1177, line: 105, baseType: !1205, size: 64, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1177, line: 21, baseType: !1206)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{null, !1209}
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !706, file: !18, line: 1537, baseType: !262, size: 192, offset: 8960)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !706, file: !18, line: 1542, baseType: !168, size: 32, offset: 9152)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !706, file: !18, line: 1545, baseType: !118, offset: 9184)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !706, file: !18, line: 1546, baseType: !174, size: 128, offset: 9216)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !706, file: !18, line: 1548, baseType: !118, offset: 9344)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !706, file: !18, line: 1549, baseType: !174, size: 128, offset: 9344)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !586, file: !587, line: 104, baseType: !192, size: 64, offset: 896)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !586, file: !587, line: 105, baseType: !88, size: 64, offset: 960)
!1218 = !DIDerivedType(tag: DW_TAG_member, scope: !586, file: !587, line: 107, baseType: !1219, size: 128, offset: 1024)
!1219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !586, file: !587, line: 107, size: 128, elements: !1220)
!1220 = !{!1221, !1222}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !1219, file: !587, line: 108, baseType: !174, size: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !1219, file: !587, line: 109, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !586, file: !587, line: 111, baseType: !174, size: 128, offset: 1152)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !586, file: !587, line: 112, baseType: !174, size: 128, offset: 1280)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !586, file: !587, line: 120, baseType: !1227, size: 128, offset: 1408)
!1227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !586, file: !587, line: 116, size: 128, elements: !1228)
!1228 = !{!1229, !1230, !1231}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !1227, file: !587, line: 117, baseType: !751, size: 128)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !1227, file: !587, line: 118, baseType: !596, size: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !1227, file: !587, line: 119, baseType: !96, size: 128, align: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !579, file: !18, line: 1866, baseType: !1233, size: 64, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!145, !585, !554, !1236}
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1238, line: 10, size: 128, elements: !1239)
!1238 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!1239 = !{!1240, !1244}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1237, file: !1238, line: 11, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{null, !88}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1237, file: !1238, line: 12, baseType: !88, size: 64, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !579, file: !18, line: 1867, baseType: !1246, size: 64, offset: 128)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!168, !554, !168}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !579, file: !18, line: 1868, baseType: !1250, size: 64, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!1253, !554, !168}
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !18, line: 581, flags: DIFlagFwdDecl)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !579, file: !18, line: 1870, baseType: !1256, size: 64, offset: 256)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!168, !585, !167, !168}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !579, file: !18, line: 1872, baseType: !1260, size: 64, offset: 320)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!168, !554, !585, !558, !139}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !579, file: !18, line: 1873, baseType: !1264, size: 64, offset: 384)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!168, !585, !554, !585}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !579, file: !18, line: 1874, baseType: !1268, size: 64, offset: 448)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!168, !554, !585}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !579, file: !18, line: 1875, baseType: !1272, size: 64, offset: 512)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!168, !554, !585, !145}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !579, file: !18, line: 1876, baseType: !1276, size: 64, offset: 576)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!168, !554, !585, !558}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !579, file: !18, line: 1877, baseType: !1268, size: 64, offset: 640)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !579, file: !18, line: 1878, baseType: !1281, size: 64, offset: 704)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!168, !554, !585, !558, !710}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !579, file: !18, line: 1879, baseType: !1285, size: 64, offset: 768)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!168, !554, !585, !554, !585, !7}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !579, file: !18, line: 1881, baseType: !1289, size: 64, offset: 832)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!168, !585, !1292}
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !18, line: 219, size: 640, elements: !1294)
!1294 = !{!1295, !1296, !1297, !1298, !1299, !1300, !1305, !1306, !1307}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1293, file: !18, line: 220, baseType: !7, size: 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1293, file: !18, line: 221, baseType: !558, size: 16, offset: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1293, file: !18, line: 222, baseType: !561, size: 32, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1293, file: !18, line: 223, baseType: !569, size: 32, offset: 96)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1293, file: !18, line: 224, baseType: !715, size: 64, offset: 128)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1293, file: !18, line: 225, baseType: !1301, size: 128, offset: 192)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !898, line: 13, size: 128, elements: !1302)
!1302 = !{!1303, !1304}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1301, file: !898, line: 14, baseType: !897, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1301, file: !898, line: 15, baseType: !158, size: 64, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1293, file: !18, line: 226, baseType: !1301, size: 128, offset: 320)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1293, file: !18, line: 227, baseType: !1301, size: 128, offset: 448)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1293, file: !18, line: 234, baseType: !1308, size: 64, offset: 576)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !18, line: 916, size: 1856, align: 32, elements: !1310)
!1310 = !{!1311, !1321, !1322, !1323, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1622, !1808, !1817, !1818, !1819, !1820, !1821, !1822, !1823}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !1309, file: !18, line: 920, baseType: !1312, size: 128)
!1312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1309, file: !18, line: 917, size: 128, elements: !1313)
!1313 = !{!1314, !1320}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !1312, file: !18, line: 918, baseType: !1315, size: 64)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1316, line: 58, size: 64, elements: !1317)
!1316 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!1317 = !{!1318}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1315, file: !1316, line: 59, baseType: !1319, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !1312, file: !18, line: 919, baseType: !96, size: 128, align: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1309, file: !18, line: 921, baseType: !687, size: 128, offset: 128)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1309, file: !18, line: 922, baseType: !554, size: 64, offset: 256)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1309, file: !18, line: 923, baseType: !1324, size: 64, offset: 320)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1326)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !18, line: 1822, size: 2048, elements: !1327)
!1327 = !{!1328, !1329, !1333, !1344, !1348, !1376, !1377, !1381, !1394, !1395, !1403, !1407, !1408, !1412, !1413, !1417, !1422, !1423, !1427, !1431, !1540, !1544, !1548, !1552, !1553, !1559, !1563, !1568, !1572, !1576, !1580, !1584}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1326, file: !18, line: 1823, baseType: !742, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1326, file: !18, line: 1824, baseType: !1330, size: 64, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!715, !1308, !715, !168}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1326, file: !18, line: 1825, baseType: !1334, size: 64, offset: 128)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!1337, !1308, !167, !1340, !1343}
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !97, line: 60, baseType: !1338)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !394, line: 73, baseType: !1339)
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !394, line: 15, baseType: !158)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !97, line: 55, baseType: !1341)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !394, line: 72, baseType: !1342)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !394, line: 16, baseType: !192)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1326, file: !18, line: 1826, baseType: !1345, size: 64, offset: 192)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!1337, !1308, !145, !1340, !1343}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1326, file: !18, line: 1827, baseType: !1349, size: 64, offset: 256)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!1337, !1352, !1374}
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !18, line: 320, size: 384, elements: !1354)
!1354 = !{!1355, !1356, !1357, !1361, !1362, !1363, !1366, !1367}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1353, file: !18, line: 321, baseType: !1308, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1353, file: !18, line: 326, baseType: !715, size: 64, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1353, file: !18, line: 327, baseType: !1358, size: 64, offset: 128)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{null, !1352, !158, !158}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1353, file: !18, line: 328, baseType: !88, size: 64, offset: 192)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1353, file: !18, line: 329, baseType: !168, size: 32, offset: 256)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1353, file: !18, line: 330, baseType: !1364, size: 16, offset: 288)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !107, line: 19, baseType: !1365)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !109, line: 24, baseType: !330)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1353, file: !18, line: 331, baseType: !1364, size: 16, offset: 304)
!1367 = !DIDerivedType(tag: DW_TAG_member, scope: !1353, file: !18, line: 332, baseType: !1368, size: 64, offset: 320)
!1368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1353, file: !18, line: 332, size: 64, elements: !1369)
!1369 = !{!1370, !1371}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1368, file: !18, line: 333, baseType: !7, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1368, file: !18, line: 334, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !18, line: 334, flags: DIFlagFwdDecl)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !18, line: 64, flags: DIFlagFwdDecl)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1326, file: !18, line: 1828, baseType: !1349, size: 64, offset: 320)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1326, file: !18, line: 1829, baseType: !1378, size: 64, offset: 384)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!168, !1352, !139}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1326, file: !18, line: 1830, baseType: !1382, size: 64, offset: 448)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!168, !1308, !1385}
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !18, line: 1776, size: 128, elements: !1387)
!1387 = !{!1388, !1393}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1386, file: !18, line: 1777, baseType: !1389, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !18, line: 1773, baseType: !1390)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!168, !1385, !145, !168, !715, !187, !7}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1386, file: !18, line: 1778, baseType: !715, size: 64, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1326, file: !18, line: 1831, baseType: !1382, size: 64, offset: 512)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1326, file: !18, line: 1832, baseType: !1396, size: 64, offset: 576)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!1399, !1308, !1401}
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1400, line: 52, baseType: !7)
!1400 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !18, line: 56, flags: DIFlagFwdDecl)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1326, file: !18, line: 1833, baseType: !1404, size: 64, offset: 640)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!158, !1308, !7, !192}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1326, file: !18, line: 1834, baseType: !1404, size: 64, offset: 704)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1326, file: !18, line: 1835, baseType: !1409, size: 64, offset: 768)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!168, !1308, !458}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1326, file: !18, line: 1836, baseType: !192, size: 64, offset: 832)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1326, file: !18, line: 1837, baseType: !1414, size: 64, offset: 896)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!168, !554, !1308}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1326, file: !18, line: 1838, baseType: !1418, size: 64, offset: 960)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!168, !1308, !1421}
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !18, line: 1007, baseType: !88)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1326, file: !18, line: 1839, baseType: !1414, size: 64, offset: 1024)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1326, file: !18, line: 1840, baseType: !1424, size: 64, offset: 1088)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!168, !1308, !715, !715, !168}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1326, file: !18, line: 1841, baseType: !1428, size: 64, offset: 1152)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!168, !168, !1308, !168}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1326, file: !18, line: 1842, baseType: !1432, size: 64, offset: 1216)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!168, !1308, !168, !1435}
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !18, line: 1062, size: 1664, elements: !1437)
!1437 = !{!1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1469, !1470, !1471, !1484, !1516}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1436, file: !18, line: 1063, baseType: !1435, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1436, file: !18, line: 1064, baseType: !174, size: 128, offset: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1436, file: !18, line: 1065, baseType: !751, size: 128, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1436, file: !18, line: 1066, baseType: !174, size: 128, offset: 320)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1436, file: !18, line: 1069, baseType: !174, size: 128, offset: 448)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1436, file: !18, line: 1072, baseType: !1421, size: 64, offset: 576)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1436, file: !18, line: 1073, baseType: !7, size: 32, offset: 640)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1436, file: !18, line: 1074, baseType: !425, size: 8, offset: 672)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1436, file: !18, line: 1075, baseType: !7, size: 32, offset: 704)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1436, file: !18, line: 1076, baseType: !168, size: 32, offset: 736)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1436, file: !18, line: 1077, baseType: !1099, size: 128, offset: 768)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1436, file: !18, line: 1078, baseType: !1308, size: 64, offset: 896)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1436, file: !18, line: 1079, baseType: !715, size: 64, offset: 960)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1436, file: !18, line: 1080, baseType: !715, size: 64, offset: 1024)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1436, file: !18, line: 1082, baseType: !1453, size: 64, offset: 1088)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !18, line: 1314, size: 320, elements: !1455)
!1455 = !{!1456, !1464, !1465, !1466, !1467, !1468}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1454, file: !18, line: 1315, baseType: !1457)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1458, line: 20, baseType: !1459)
!1458 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1458, line: 11, elements: !1460)
!1460 = !{!1461}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1459, file: !1458, line: 12, baseType: !1462)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !130, line: 33, baseType: !1463)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !130, line: 31, elements: !132)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1454, file: !18, line: 1316, baseType: !168, size: 32)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1454, file: !18, line: 1317, baseType: !168, size: 32, offset: 32)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1454, file: !18, line: 1318, baseType: !1453, size: 64, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1454, file: !18, line: 1319, baseType: !1308, size: 64, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1454, file: !18, line: 1320, baseType: !96, size: 128, align: 64, offset: 192)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1436, file: !18, line: 1084, baseType: !192, size: 64, offset: 1152)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1436, file: !18, line: 1085, baseType: !192, size: 64, offset: 1216)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1436, file: !18, line: 1087, baseType: !1472, size: 64, offset: 1280)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1474)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !18, line: 1011, size: 128, elements: !1475)
!1475 = !{!1476, !1480}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1474, file: !18, line: 1012, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{null, !1435, !1435}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1474, file: !18, line: 1013, baseType: !1481, size: 64, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{null, !1435}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1436, file: !18, line: 1088, baseType: !1485, size: 64, offset: 1344)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1487)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !18, line: 1016, size: 512, elements: !1488)
!1488 = !{!1489, !1493, !1497, !1498, !1502, !1506, !1510, !1515}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1487, file: !18, line: 1017, baseType: !1490, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!1421, !1421}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1487, file: !18, line: 1018, baseType: !1494, size: 64, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{null, !1421}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1487, file: !18, line: 1019, baseType: !1481, size: 64, offset: 128)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1487, file: !18, line: 1020, baseType: !1499, size: 64, offset: 192)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!168, !1435, !168}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1487, file: !18, line: 1021, baseType: !1503, size: 64, offset: 256)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!139, !1435}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1487, file: !18, line: 1022, baseType: !1507, size: 64, offset: 320)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!168, !1435, !168, !177}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1487, file: !18, line: 1023, baseType: !1511, size: 64, offset: 384)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{null, !1435, !1514}
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1487, file: !18, line: 1024, baseType: !1503, size: 64, offset: 448)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1436, file: !18, line: 1097, baseType: !1517, size: 256, offset: 1408)
!1517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1436, file: !18, line: 1089, size: 256, elements: !1518)
!1518 = !{!1519, !1528, !1534}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1517, file: !18, line: 1090, baseType: !1520, size: 256)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1521, line: 10, size: 256, elements: !1522)
!1521 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!1522 = !{!1523, !1524, !1527}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1520, file: !1521, line: 11, baseType: !106, size: 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1520, file: !1521, line: 12, baseType: !1525, size: 64, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1521, line: 5, flags: DIFlagFwdDecl)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1520, file: !1521, line: 13, baseType: !174, size: 128, offset: 128)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1517, file: !18, line: 1091, baseType: !1529, size: 64)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1521, line: 17, size: 64, elements: !1530)
!1530 = !{!1531}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1529, file: !1521, line: 18, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1521, line: 16, flags: DIFlagFwdDecl)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1517, file: !18, line: 1096, baseType: !1535, size: 192)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1517, file: !18, line: 1092, size: 192, elements: !1536)
!1536 = !{!1537, !1538, !1539}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1535, file: !18, line: 1093, baseType: !174, size: 128)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1535, file: !18, line: 1094, baseType: !168, size: 32, offset: 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1535, file: !18, line: 1095, baseType: !7, size: 32, offset: 160)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1326, file: !18, line: 1843, baseType: !1541, size: 64, offset: 1280)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!1337, !1308, !538, !168, !1340, !1343, !168}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1326, file: !18, line: 1844, baseType: !1545, size: 64, offset: 1344)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!192, !1308, !192, !192, !192, !192}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1326, file: !18, line: 1845, baseType: !1549, size: 64, offset: 1408)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!168, !168}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1326, file: !18, line: 1846, baseType: !1432, size: 64, offset: 1472)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1326, file: !18, line: 1847, baseType: !1554, size: 64, offset: 1536)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!1337, !1557, !1308, !1343, !1340, !7}
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !274, line: 53, flags: DIFlagFwdDecl)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1326, file: !18, line: 1848, baseType: !1560, size: 64, offset: 1600)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!1337, !1308, !1343, !1557, !1340, !7}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1326, file: !18, line: 1849, baseType: !1564, size: 64, offset: 1664)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!168, !1308, !158, !1567, !1514}
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1326, file: !18, line: 1850, baseType: !1569, size: 64, offset: 1728)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!158, !1308, !168, !715, !715}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1326, file: !18, line: 1852, baseType: !1573, size: 64, offset: 1792)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{null, !822, !1308}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1326, file: !18, line: 1856, baseType: !1577, size: 64, offset: 1856)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!1337, !1308, !715, !1308, !715, !1340, !7}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1326, file: !18, line: 1858, baseType: !1581, size: 64, offset: 1920)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!715, !1308, !715, !1308, !715, !715, !7}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1326, file: !18, line: 1861, baseType: !1424, size: 64, offset: 1984)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1309, file: !18, line: 929, baseType: !118, offset: 384)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !1309, file: !18, line: 930, baseType: !17, size: 32, offset: 384)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1309, file: !18, line: 931, baseType: !233, size: 64, offset: 448)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1309, file: !18, line: 932, baseType: !7, size: 32, offset: 512)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1309, file: !18, line: 933, baseType: !1148, size: 32, offset: 544)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1309, file: !18, line: 934, baseType: !262, size: 192, offset: 576)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1309, file: !18, line: 935, baseType: !715, size: 64, offset: 768)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1309, file: !18, line: 936, baseType: !1593, size: 192, offset: 832)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !18, line: 885, size: 192, elements: !1594)
!1594 = !{!1595, !1596, !1618, !1619, !1620, !1621}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1593, file: !18, line: 886, baseType: !1457)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1593, file: !18, line: 887, baseType: !1597, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !27, line: 59, size: 768, elements: !1599)
!1599 = !{!1600, !1601, !1602, !1603, !1607, !1608, !1609, !1610}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1598, file: !27, line: 61, baseType: !198, size: 32)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1598, file: !27, line: 62, baseType: !7, size: 32, offset: 32)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1598, file: !27, line: 63, baseType: !118, offset: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1598, file: !27, line: 65, baseType: !1604, size: 256, offset: 64)
!1604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !747, size: 256, elements: !1605)
!1605 = !{!1606}
!1606 = !DISubrange(count: 4)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1598, file: !27, line: 66, baseType: !747, size: 64, offset: 320)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1598, file: !27, line: 68, baseType: !1099, size: 128, offset: 384)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1598, file: !27, line: 69, baseType: !96, size: 128, align: 64, offset: 512)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1598, file: !27, line: 70, baseType: !1611, size: 128, offset: 640)
!1611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1612, size: 128, elements: !443)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !27, line: 54, size: 128, elements: !1613)
!1613 = !{!1614, !1615}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1612, file: !27, line: 55, baseType: !168, size: 32)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1612, file: !27, line: 56, baseType: !1616, size: 64, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !27, line: 56, flags: DIFlagFwdDecl)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1593, file: !18, line: 888, baseType: !26, size: 32, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1593, file: !18, line: 889, baseType: !561, size: 32, offset: 96)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1593, file: !18, line: 889, baseType: !561, size: 32, offset: 128)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1593, file: !18, line: 890, baseType: !168, size: 32, offset: 160)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1309, file: !18, line: 937, baseType: !1623, size: 64, offset: 1024)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1625)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1626, line: 111, size: 1280, elements: !1627)
!1626 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1627 = !{!1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1647, !1648, !1649, !1650, !1651, !1652, !1763, !1764, !1765, !1766, !1792, !1793, !1803}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1625, file: !1626, line: 112, baseType: !202, size: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1625, file: !1626, line: 120, baseType: !561, size: 32, offset: 32)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1625, file: !1626, line: 121, baseType: !569, size: 32, offset: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1625, file: !1626, line: 122, baseType: !561, size: 32, offset: 96)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1625, file: !1626, line: 123, baseType: !569, size: 32, offset: 128)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1625, file: !1626, line: 124, baseType: !561, size: 32, offset: 160)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1625, file: !1626, line: 125, baseType: !569, size: 32, offset: 192)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1625, file: !1626, line: 126, baseType: !561, size: 32, offset: 224)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1625, file: !1626, line: 127, baseType: !569, size: 32, offset: 256)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1625, file: !1626, line: 128, baseType: !7, size: 32, offset: 288)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1625, file: !1626, line: 129, baseType: !1639, size: 64, offset: 320)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1640, line: 26, baseType: !1641)
!1640 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1640, line: 24, size: 64, elements: !1642)
!1642 = !{!1643}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1641, file: !1640, line: 25, baseType: !1644, size: 64)
!1644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, elements: !1645)
!1645 = !{!1646}
!1646 = !DISubrange(count: 2)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1625, file: !1626, line: 130, baseType: !1639, size: 64, offset: 384)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1625, file: !1626, line: 131, baseType: !1639, size: 64, offset: 448)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1625, file: !1626, line: 132, baseType: !1639, size: 64, offset: 512)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1625, file: !1626, line: 133, baseType: !1639, size: 64, offset: 576)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1625, file: !1626, line: 135, baseType: !425, size: 8, offset: 640)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1625, file: !1626, line: 137, baseType: !1653, size: 64, offset: 704)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1655, line: 189, size: 1664, elements: !1656)
!1655 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1656 = !{!1657, !1658, !1663, !1668, !1669, !1672, !1673, !1678, !1679, !1680, !1681, !1684, !1685, !1686, !1688, !1689, !1727, !1748}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1654, file: !1655, line: 190, baseType: !198, size: 32)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1654, file: !1655, line: 191, baseType: !1659, size: 32, offset: 32)
!1659 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1655, line: 28, baseType: !1660)
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !97, line: 98, baseType: !1661)
!1661 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !107, line: 20, baseType: !1662)
!1662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !109, line: 26, baseType: !168)
!1663 = !DIDerivedType(tag: DW_TAG_member, scope: !1654, file: !1655, line: 192, baseType: !1664, size: 192, offset: 64)
!1664 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1654, file: !1655, line: 192, size: 192, elements: !1665)
!1665 = !{!1666, !1667}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1664, file: !1655, line: 193, baseType: !174, size: 128)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1664, file: !1655, line: 194, baseType: !306, size: 192, align: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1654, file: !1655, line: 199, baseType: !1023, size: 256, offset: 256)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1654, file: !1655, line: 200, baseType: !1670, size: 64, offset: 512)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1655, line: 200, flags: DIFlagFwdDecl)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1654, file: !1655, line: 201, baseType: !88, size: 64, offset: 576)
!1673 = !DIDerivedType(tag: DW_TAG_member, scope: !1654, file: !1655, line: 202, baseType: !1674, size: 64, offset: 640)
!1674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1654, file: !1655, line: 202, size: 64, elements: !1675)
!1675 = !{!1676, !1677}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1674, file: !1655, line: 203, baseType: !897, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1674, file: !1655, line: 204, baseType: !897, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1654, file: !1655, line: 206, baseType: !897, size: 64, offset: 704)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1654, file: !1655, line: 207, baseType: !561, size: 32, offset: 768)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1654, file: !1655, line: 208, baseType: !569, size: 32, offset: 800)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1654, file: !1655, line: 209, baseType: !1682, size: 32, offset: 832)
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1655, line: 31, baseType: !1683)
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !97, line: 104, baseType: !106)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1654, file: !1655, line: 210, baseType: !330, size: 16, offset: 864)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1654, file: !1655, line: 211, baseType: !330, size: 16, offset: 880)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1654, file: !1655, line: 215, baseType: !1687, size: 16, offset: 896)
!1687 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1654, file: !1655, line: 222, baseType: !192, size: 64, offset: 960)
!1689 = !DIDerivedType(tag: DW_TAG_member, scope: !1654, file: !1655, line: 239, baseType: !1690, size: 320, offset: 1024)
!1690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1654, file: !1655, line: 239, size: 320, elements: !1691)
!1691 = !{!1692, !1719}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1690, file: !1655, line: 240, baseType: !1693, size: 320)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1655, line: 108, size: 320, elements: !1694)
!1694 = !{!1695, !1696, !1708, !1711, !1718}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1693, file: !1655, line: 110, baseType: !192, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, scope: !1693, file: !1655, line: 111, baseType: !1697, size: 64, offset: 64)
!1697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1693, file: !1655, line: 111, size: 64, elements: !1698)
!1698 = !{!1699, !1707}
!1699 = !DIDerivedType(tag: DW_TAG_member, scope: !1697, file: !1655, line: 112, baseType: !1700, size: 64)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1697, file: !1655, line: 112, size: 64, elements: !1701)
!1701 = !{!1702, !1703}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1700, file: !1655, line: 114, baseType: !1364, size: 16)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1700, file: !1655, line: 115, baseType: !1704, size: 48, offset: 16)
!1704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 48, elements: !1705)
!1705 = !{!1706}
!1706 = !DISubrange(count: 6)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1697, file: !1655, line: 121, baseType: !192, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1693, file: !1655, line: 123, baseType: !1709, size: 64, offset: 128)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1655, line: 96, flags: DIFlagFwdDecl)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1693, file: !1655, line: 124, baseType: !1712, size: 64, offset: 192)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1655, line: 102, size: 192, elements: !1714)
!1714 = !{!1715, !1716, !1717}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1713, file: !1655, line: 103, baseType: !96, size: 128, align: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1713, file: !1655, line: 104, baseType: !198, size: 32, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1713, file: !1655, line: 105, baseType: !139, size: 8, offset: 160)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1693, file: !1655, line: 125, baseType: !145, size: 64, offset: 256)
!1719 = !DIDerivedType(tag: DW_TAG_member, scope: !1690, file: !1655, line: 241, baseType: !1720, size: 320)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1690, file: !1655, line: 241, size: 320, elements: !1721)
!1721 = !{!1722, !1723, !1724, !1725, !1726}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1720, file: !1655, line: 242, baseType: !192, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1720, file: !1655, line: 243, baseType: !192, size: 64, offset: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1720, file: !1655, line: 244, baseType: !1709, size: 64, offset: 128)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1720, file: !1655, line: 245, baseType: !1712, size: 64, offset: 192)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1720, file: !1655, line: 246, baseType: !167, size: 64, offset: 256)
!1727 = !DIDerivedType(tag: DW_TAG_member, scope: !1654, file: !1655, line: 254, baseType: !1728, size: 256, offset: 1344)
!1728 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1654, file: !1655, line: 254, size: 256, elements: !1729)
!1729 = !{!1730, !1736}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1728, file: !1655, line: 255, baseType: !1731, size: 256)
!1731 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1655, line: 128, size: 256, elements: !1732)
!1732 = !{!1733, !1734}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1731, file: !1655, line: 129, baseType: !88, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1731, file: !1655, line: 130, baseType: !1735, size: 256)
!1735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 256, elements: !1605)
!1736 = !DIDerivedType(tag: DW_TAG_member, scope: !1728, file: !1655, line: 256, baseType: !1737, size: 256)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1728, file: !1655, line: 256, size: 256, elements: !1738)
!1738 = !{!1739, !1740}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1737, file: !1655, line: 258, baseType: !174, size: 128)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1737, file: !1655, line: 259, baseType: !1741, size: 128, offset: 128)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1742, line: 22, size: 128, elements: !1743)
!1742 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1743 = !{!1744, !1747}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1741, file: !1742, line: 23, baseType: !1745, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1742, line: 23, flags: DIFlagFwdDecl)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1741, file: !1742, line: 24, baseType: !192, size: 64, offset: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1654, file: !1655, line: 274, baseType: !1749, size: 64, offset: 1600)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1655, line: 170, size: 192, elements: !1751)
!1751 = !{!1752, !1761, !1762}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1750, file: !1655, line: 171, baseType: !1753, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1655, line: 165, baseType: !1754)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!168, !1653, !1757, !1759, !1653}
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1710)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1731)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1750, file: !1655, line: 172, baseType: !1653, size: 64, offset: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1750, file: !1655, line: 173, baseType: !1709, size: 64, offset: 128)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1625, file: !1626, line: 138, baseType: !1653, size: 64, offset: 768)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1625, file: !1626, line: 139, baseType: !1653, size: 64, offset: 832)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1625, file: !1626, line: 140, baseType: !1653, size: 64, offset: 896)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1625, file: !1626, line: 145, baseType: !1767, size: 64, offset: 960)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1769, line: 13, size: 896, elements: !1770)
!1769 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1770 = !{!1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1768, file: !1769, line: 14, baseType: !198, size: 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1768, file: !1769, line: 15, baseType: !202, size: 32, offset: 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1768, file: !1769, line: 16, baseType: !202, size: 32, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1768, file: !1769, line: 21, baseType: !233, size: 64, offset: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1768, file: !1769, line: 27, baseType: !192, size: 64, offset: 192)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1768, file: !1769, line: 28, baseType: !192, size: 64, offset: 256)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1768, file: !1769, line: 29, baseType: !233, size: 64, offset: 320)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1768, file: !1769, line: 32, baseType: !751, size: 128, offset: 384)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1768, file: !1769, line: 33, baseType: !561, size: 32, offset: 512)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1768, file: !1769, line: 37, baseType: !233, size: 64, offset: 576)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1768, file: !1769, line: 44, baseType: !1782, size: 256, offset: 640)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1783, line: 15, size: 256, elements: !1784)
!1783 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1784 = !{!1785, !1786, !1787, !1788, !1789, !1790, !1791}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1782, file: !1783, line: 16, baseType: !374)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1782, file: !1783, line: 18, baseType: !168, size: 32)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1782, file: !1783, line: 19, baseType: !168, size: 32, offset: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1782, file: !1783, line: 20, baseType: !168, size: 32, offset: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1782, file: !1783, line: 21, baseType: !168, size: 32, offset: 96)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1782, file: !1783, line: 22, baseType: !192, size: 64, offset: 128)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1782, file: !1783, line: 23, baseType: !192, size: 64, offset: 192)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1625, file: !1626, line: 146, baseType: !1180, size: 64, offset: 1024)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1625, file: !1626, line: 147, baseType: !1794, size: 64, offset: 1088)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1626, line: 25, size: 64, elements: !1796)
!1796 = !{!1797, !1798, !1799}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1795, file: !1626, line: 26, baseType: !202, size: 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1795, file: !1626, line: 27, baseType: !168, size: 32, offset: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1795, file: !1626, line: 28, baseType: !1800, offset: 64)
!1800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, elements: !1801)
!1801 = !{!1802}
!1802 = !DISubrange(count: 0)
!1803 = !DIDerivedType(tag: DW_TAG_member, scope: !1625, file: !1626, line: 149, baseType: !1804, size: 128, offset: 1152)
!1804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1625, file: !1626, line: 149, size: 128, elements: !1805)
!1805 = !{!1806, !1807}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1804, file: !1626, line: 150, baseType: !168, size: 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1804, file: !1626, line: 151, baseType: !96, size: 128, align: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1309, file: !18, line: 938, baseType: !1809, size: 256, offset: 1088)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !18, line: 896, size: 256, elements: !1810)
!1810 = !{!1811, !1812, !1813, !1814, !1815, !1816}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1809, file: !18, line: 897, baseType: !192, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1809, file: !18, line: 898, baseType: !7, size: 32, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1809, file: !18, line: 899, baseType: !7, size: 32, offset: 96)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1809, file: !18, line: 902, baseType: !7, size: 32, offset: 128)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1809, file: !18, line: 903, baseType: !7, size: 32, offset: 160)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1809, file: !18, line: 904, baseType: !715, size: 64, offset: 192)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1309, file: !18, line: 940, baseType: !187, size: 64, offset: 1344)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1309, file: !18, line: 945, baseType: !88, size: 64, offset: 1408)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !1309, file: !18, line: 949, baseType: !174, size: 128, offset: 1472)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !1309, file: !18, line: 950, baseType: !174, size: 128, offset: 1600)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1309, file: !18, line: 952, baseType: !550, size: 64, offset: 1728)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1309, file: !18, line: 953, baseType: !1172, size: 32, offset: 1792)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1309, file: !18, line: 954, baseType: !1172, size: 32, offset: 1824)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !579, file: !18, line: 1882, baseType: !1825, size: 64, offset: 896)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!168, !696, !1828, !106, !7}
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1830, line: 22, size: 1152, elements: !1831)
!1830 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!1831 = !{!1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1829, file: !1830, line: 23, baseType: !106, size: 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1829, file: !1830, line: 24, baseType: !558, size: 16, offset: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1829, file: !1830, line: 25, baseType: !7, size: 32, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1829, file: !1830, line: 26, baseType: !1683, size: 32, offset: 96)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1829, file: !1830, line: 27, baseType: !187, size: 64, offset: 128)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1829, file: !1830, line: 28, baseType: !187, size: 64, offset: 192)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1829, file: !1830, line: 37, baseType: !187, size: 64, offset: 256)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1829, file: !1830, line: 38, baseType: !710, size: 32, offset: 320)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1829, file: !1830, line: 39, baseType: !710, size: 32, offset: 352)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1829, file: !1830, line: 40, baseType: !561, size: 32, offset: 384)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1829, file: !1830, line: 41, baseType: !569, size: 32, offset: 416)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1829, file: !1830, line: 42, baseType: !715, size: 64, offset: 448)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1829, file: !1830, line: 43, baseType: !1301, size: 128, offset: 512)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1829, file: !1830, line: 44, baseType: !1301, size: 128, offset: 640)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1829, file: !1830, line: 45, baseType: !1301, size: 128, offset: 768)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1829, file: !1830, line: 46, baseType: !1301, size: 128, offset: 896)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1829, file: !1830, line: 47, baseType: !187, size: 64, offset: 1024)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1829, file: !1830, line: 48, baseType: !187, size: 64, offset: 1088)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !579, file: !18, line: 1883, baseType: !1851, size: 64, offset: 960)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!1337, !585, !167, !1340}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !579, file: !18, line: 1884, baseType: !1855, size: 64, offset: 1024)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!168, !554, !1858, !187, !187}
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !18, line: 50, flags: DIFlagFwdDecl)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !579, file: !18, line: 1886, baseType: !1861, size: 64, offset: 1088)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!168, !554, !1864, !168}
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !579, file: !18, line: 1887, baseType: !1866, size: 64, offset: 1152)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!168, !554, !585, !1308, !7, !558}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !579, file: !18, line: 1890, baseType: !1276, size: 64, offset: 1216)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !579, file: !18, line: 1891, baseType: !1871, size: 64, offset: 1280)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!168, !554, !1253, !168}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !555, file: !18, line: 623, baseType: !705, size: 64, offset: 192)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !555, file: !18, line: 624, baseType: !550, size: 64, offset: 256)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !555, file: !18, line: 631, baseType: !192, size: 64, offset: 320)
!1877 = !DIDerivedType(tag: DW_TAG_member, scope: !555, file: !18, line: 639, baseType: !1878, size: 32, offset: 384)
!1878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !555, file: !18, line: 639, size: 32, elements: !1879)
!1879 = !{!1880, !1882}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !1878, file: !18, line: 640, baseType: !1881, size: 32)
!1881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !1878, file: !18, line: 641, baseType: !7, size: 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !555, file: !18, line: 643, baseType: !710, size: 32, offset: 416)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !555, file: !18, line: 644, baseType: !715, size: 64, offset: 448)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !555, file: !18, line: 645, baseType: !1301, size: 128, offset: 512)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !555, file: !18, line: 646, baseType: !1301, size: 128, offset: 640)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !555, file: !18, line: 647, baseType: !1301, size: 128, offset: 768)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !555, file: !18, line: 648, baseType: !118, offset: 896)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !555, file: !18, line: 649, baseType: !330, size: 16, offset: 896)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !555, file: !18, line: 650, baseType: !423, size: 8, offset: 912)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !555, file: !18, line: 651, baseType: !423, size: 8, offset: 920)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !555, file: !18, line: 652, baseType: !1011, size: 64, offset: 960)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !555, file: !18, line: 659, baseType: !192, size: 64, offset: 1024)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !555, file: !18, line: 660, baseType: !1023, size: 256, offset: 1088)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !555, file: !18, line: 662, baseType: !192, size: 64, offset: 1344)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !555, file: !18, line: 663, baseType: !192, size: 64, offset: 1408)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !555, file: !18, line: 665, baseType: !751, size: 128, offset: 1472)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !555, file: !18, line: 666, baseType: !174, size: 128, offset: 1600)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !555, file: !18, line: 675, baseType: !174, size: 128, offset: 1728)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !555, file: !18, line: 676, baseType: !174, size: 128, offset: 1856)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !555, file: !18, line: 677, baseType: !174, size: 128, offset: 1984)
!1902 = !DIDerivedType(tag: DW_TAG_member, scope: !555, file: !18, line: 678, baseType: !1903, size: 128, offset: 2112)
!1903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !555, file: !18, line: 678, size: 128, elements: !1904)
!1904 = !{!1905, !1906}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !1903, file: !18, line: 679, baseType: !747, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !1903, file: !18, line: 680, baseType: !96, size: 128, align: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !555, file: !18, line: 682, baseType: !235, size: 64, offset: 2240)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !555, file: !18, line: 683, baseType: !235, size: 64, offset: 2304)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !555, file: !18, line: 684, baseType: !202, size: 32, offset: 2368)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !555, file: !18, line: 685, baseType: !202, size: 32, offset: 2400)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !555, file: !18, line: 686, baseType: !202, size: 32, offset: 2432)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !555, file: !18, line: 688, baseType: !202, size: 32, offset: 2464)
!1913 = !DIDerivedType(tag: DW_TAG_member, scope: !555, file: !18, line: 690, baseType: !1914, size: 64, offset: 2496)
!1914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !555, file: !18, line: 690, size: 64, elements: !1915)
!1915 = !{!1916, !1917}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !1914, file: !18, line: 691, baseType: !1324, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1914, file: !18, line: 692, baseType: !776, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !555, file: !18, line: 694, baseType: !1919, size: 64, offset: 2560)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !18, line: 1100, size: 384, elements: !1921)
!1921 = !{!1922, !1923, !1924, !1925}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !1920, file: !18, line: 1101, baseType: !118)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !1920, file: !18, line: 1102, baseType: !174, size: 128)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !1920, file: !18, line: 1103, baseType: !174, size: 128, offset: 128)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !1920, file: !18, line: 1104, baseType: !174, size: 128, offset: 256)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !555, file: !18, line: 695, baseType: !551, size: 1216, align: 64, offset: 2624)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !555, file: !18, line: 696, baseType: !174, size: 128, offset: 3840)
!1928 = !DIDerivedType(tag: DW_TAG_member, scope: !555, file: !18, line: 697, baseType: !1929, size: 64, offset: 3968)
!1929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !555, file: !18, line: 697, size: 64, elements: !1930)
!1930 = !{!1931, !1932, !1933, !1936, !1937}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !1929, file: !18, line: 698, baseType: !1557, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !1929, file: !18, line: 699, baseType: !1043, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !1929, file: !18, line: 700, baseType: !1934, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !18, line: 700, flags: DIFlagFwdDecl)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !1929, file: !18, line: 701, baseType: !167, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !1929, file: !18, line: 702, baseType: !7, size: 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !555, file: !18, line: 705, baseType: !108, size: 32, offset: 4032)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !555, file: !18, line: 708, baseType: !108, size: 32, offset: 4064)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !555, file: !18, line: 709, baseType: !1133, size: 64, offset: 4096)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !555, file: !18, line: 720, baseType: !88, size: 64, offset: 4160)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !551, file: !18, line: 453, baseType: !1943, size: 128, offset: 64)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1944, line: 292, size: 128, elements: !1945)
!1944 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1945 = !{!1946, !1947, !1948}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1943, file: !1944, line: 293, baseType: !118)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1943, file: !1944, line: 295, baseType: !219, size: 32)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1943, file: !1944, line: 296, baseType: !88, size: 64, offset: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !551, file: !18, line: 454, baseType: !219, size: 32, offset: 192)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !551, file: !18, line: 455, baseType: !202, size: 32, offset: 224)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !551, file: !18, line: 460, baseType: !410, size: 128, offset: 256)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !551, file: !18, line: 461, baseType: !1023, size: 256, offset: 384)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !551, file: !18, line: 462, baseType: !192, size: 64, offset: 640)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !551, file: !18, line: 463, baseType: !192, size: 64, offset: 704)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !551, file: !18, line: 464, baseType: !192, size: 64, offset: 768)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !551, file: !18, line: 465, baseType: !1957, size: 64, offset: 832)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1959)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !18, line: 367, size: 1408, elements: !1960)
!1960 = !{!1961, !1965, !1969, !1973, !1977, !1981, !1987, !1992, !1996, !2001, !2005, !2009, !2013, !2014, !2018, !2024, !2025, !2026, !2030, !2035, !2039, !2046}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1959, file: !18, line: 368, baseType: !1962, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!168, !538, !788}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1959, file: !18, line: 369, baseType: !1966, size: 64, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!168, !1308, !538}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1959, file: !18, line: 372, baseType: !1970, size: 64, offset: 128)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!168, !550, !788}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1959, file: !18, line: 375, baseType: !1974, size: 64, offset: 192)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!168, !538}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1959, file: !18, line: 381, baseType: !1978, size: 64, offset: 256)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!168, !1308, !550, !177, !7}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1959, file: !18, line: 383, baseType: !1982, size: 64, offset: 320)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{null, !1985}
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !18, line: 290, flags: DIFlagFwdDecl)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1959, file: !18, line: 385, baseType: !1988, size: 64, offset: 384)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!168, !1308, !550, !715, !7, !7, !1991, !1514}
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1959, file: !18, line: 388, baseType: !1993, size: 64, offset: 448)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!168, !1308, !550, !715, !7, !7, !538, !88}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1959, file: !18, line: 393, baseType: !1997, size: 64, offset: 512)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!2000, !550, !2000}
!2000 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !97, line: 125, baseType: !187)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1959, file: !18, line: 394, baseType: !2002, size: 64, offset: 576)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{null, !538, !7, !7}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1959, file: !18, line: 395, baseType: !2006, size: 64, offset: 640)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!168, !538, !219}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1959, file: !18, line: 396, baseType: !2010, size: 64, offset: 704)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{null, !538}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1959, file: !18, line: 397, baseType: !1349, size: 64, offset: 768)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1959, file: !18, line: 402, baseType: !2015, size: 64, offset: 832)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!168, !550, !538, !538, !34}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1959, file: !18, line: 404, baseType: !2019, size: 64, offset: 896)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!139, !538, !2022}
!2022 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !2023, line: 305, baseType: !7)
!2023 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1959, file: !18, line: 405, baseType: !2010, size: 64, offset: 960)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1959, file: !18, line: 406, baseType: !1974, size: 64, offset: 1024)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1959, file: !18, line: 407, baseType: !2027, size: 64, offset: 1088)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!168, !538, !192, !192}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1959, file: !18, line: 409, baseType: !2031, size: 64, offset: 1152)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{null, !538, !2034, !2034}
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1959, file: !18, line: 410, baseType: !2036, size: 64, offset: 1216)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!168, !550, !538}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1959, file: !18, line: 413, baseType: !2040, size: 64, offset: 1280)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!168, !2043, !1308, !2045}
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !18, line: 61, flags: DIFlagFwdDecl)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1959, file: !18, line: 415, baseType: !2047, size: 64, offset: 1344)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{null, !1308}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !551, file: !18, line: 466, baseType: !192, size: 64, offset: 896)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !551, file: !18, line: 467, baseType: !1172, size: 32, offset: 960)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !551, file: !18, line: 468, baseType: !118, offset: 992)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !551, file: !18, line: 469, baseType: !174, size: 128, offset: 1024)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !551, file: !18, line: 470, baseType: !88, size: 64, offset: 1152)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !546, file: !452, line: 87, baseType: !192, size: 64, offset: 192)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !546, file: !452, line: 94, baseType: !192, size: 64, offset: 256)
!2057 = !DIDerivedType(tag: DW_TAG_member, scope: !543, file: !452, line: 96, baseType: !2058, size: 64)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !543, file: !452, line: 96, size: 64, elements: !2059)
!2059 = !{!2060}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2058, file: !452, line: 101, baseType: !2061, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !97, line: 143, baseType: !187)
!2062 = !DIDerivedType(tag: DW_TAG_member, scope: !543, file: !452, line: 103, baseType: !2063, size: 320)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !543, file: !452, line: 103, size: 320, elements: !2064)
!2064 = !{!2065, !2075, !2078, !2079}
!2065 = !DIDerivedType(tag: DW_TAG_member, scope: !2063, file: !452, line: 104, baseType: !2066, size: 128)
!2066 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2063, file: !452, line: 104, size: 128, elements: !2067)
!2067 = !{!2068, !2069}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !2066, file: !452, line: 105, baseType: !174, size: 128)
!2069 = !DIDerivedType(tag: DW_TAG_member, scope: !2066, file: !452, line: 106, baseType: !2070, size: 128)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2066, file: !452, line: 106, size: 128, elements: !2071)
!2071 = !{!2072, !2073, !2074}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2070, file: !452, line: 107, baseType: !538, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2070, file: !452, line: 109, baseType: !168, size: 32, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !2070, file: !452, line: 110, baseType: !168, size: 32, offset: 96)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !2063, file: !452, line: 117, baseType: !2076, size: 64, offset: 128)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !452, line: 117, flags: DIFlagFwdDecl)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !2063, file: !452, line: 119, baseType: !88, size: 64, offset: 192)
!2079 = !DIDerivedType(tag: DW_TAG_member, scope: !2063, file: !452, line: 120, baseType: !2080, size: 64, offset: 256)
!2080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2063, file: !452, line: 120, size: 64, elements: !2081)
!2081 = !{!2082, !2083, !2084}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !2080, file: !452, line: 121, baseType: !88, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2080, file: !452, line: 122, baseType: !192, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, scope: !2080, file: !452, line: 123, baseType: !2085, size: 32)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2080, file: !452, line: 123, size: 32, elements: !2086)
!2086 = !{!2087, !2088, !2089}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !2085, file: !452, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !2085, file: !452, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2085, file: !452, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!2090 = !DIDerivedType(tag: DW_TAG_member, scope: !543, file: !452, line: 130, baseType: !2091, size: 192)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !543, file: !452, line: 130, size: 192, elements: !2092)
!2092 = !{!2093, !2094, !2095, !2096, !2097}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2091, file: !452, line: 131, baseType: !192, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !2091, file: !452, line: 134, baseType: !425, size: 8, offset: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !2091, file: !452, line: 135, baseType: !425, size: 8, offset: 72)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !2091, file: !452, line: 136, baseType: !202, size: 32, offset: 96)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !2091, file: !452, line: 137, baseType: !7, size: 32, offset: 128)
!2098 = !DIDerivedType(tag: DW_TAG_member, scope: !543, file: !452, line: 139, baseType: !2099, size: 256)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !543, file: !452, line: 139, size: 256, elements: !2100)
!2100 = !{!2101, !2102, !2103}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !2099, file: !452, line: 140, baseType: !192, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !2099, file: !452, line: 141, baseType: !202, size: 32, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !2099, file: !452, line: 143, baseType: !174, size: 128, offset: 128)
!2104 = !DIDerivedType(tag: DW_TAG_member, scope: !543, file: !452, line: 145, baseType: !2105, size: 256)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !543, file: !452, line: 145, size: 256, elements: !2106)
!2106 = !{!2107, !2108, !2110, !2111, !2116}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !2105, file: !452, line: 146, baseType: !192, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !2105, file: !452, line: 147, baseType: !2109, size: 64, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !470, line: 509, baseType: !538)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !2105, file: !452, line: 148, baseType: !192, size: 64, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_member, scope: !2105, file: !452, line: 149, baseType: !2112, size: 64, offset: 192)
!2112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2105, file: !452, line: 149, size: 64, elements: !2113)
!2113 = !{!2114, !2115}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !2112, file: !452, line: 150, baseType: !450, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !2112, file: !452, line: 151, baseType: !202, size: 32)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2105, file: !452, line: 156, baseType: !118, offset: 256)
!2117 = !DIDerivedType(tag: DW_TAG_member, scope: !543, file: !452, line: 159, baseType: !2118, size: 128)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !543, file: !452, line: 159, size: 128, elements: !2119)
!2119 = !{!2120, !2194}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2118, file: !452, line: 161, baseType: !2121, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !42, line: 110, size: 1152, elements: !2123)
!2123 = !{!2124, !2134, !2155, !2156, !2167, !2168, !2169, !2181, !2182, !2183}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2122, file: !42, line: 111, baseType: !2125, size: 384)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !42, line: 19, size: 384, elements: !2126)
!2126 = !{!2127, !2129, !2130, !2131, !2132, !2133}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2125, file: !42, line: 20, baseType: !2128, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2125, file: !42, line: 21, baseType: !2128, size: 64, offset: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2125, file: !42, line: 22, baseType: !2128, size: 64, offset: 128)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2125, file: !42, line: 23, baseType: !192, size: 64, offset: 192)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2125, file: !42, line: 24, baseType: !192, size: 64, offset: 256)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2125, file: !42, line: 25, baseType: !192, size: 64, offset: 320)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2122, file: !42, line: 112, baseType: !2135, size: 64, offset: 384)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2137, line: 105, size: 128, elements: !2138)
!2137 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2138 = !{!2139, !2140}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2136, file: !2137, line: 110, baseType: !192, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2136, file: !2137, line: 118, baseType: !2141, size: 64, offset: 64)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2137, line: 95, size: 448, elements: !2143)
!2143 = !{!2144, !2145, !2150, !2151, !2152, !2153, !2154}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2142, file: !2137, line: 96, baseType: !233, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2142, file: !2137, line: 97, baseType: !2146, size: 64, offset: 64)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2137, line: 60, baseType: !2148)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{null, !2135}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2142, file: !2137, line: 98, baseType: !2146, size: 64, offset: 128)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2142, file: !2137, line: 99, baseType: !139, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2142, file: !2137, line: 100, baseType: !139, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2142, file: !2137, line: 101, baseType: !96, size: 128, align: 64, offset: 256)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2142, file: !2137, line: 102, baseType: !2135, size: 64, offset: 384)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2122, file: !42, line: 113, baseType: !2136, size: 128, offset: 448)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2122, file: !42, line: 114, baseType: !2157, size: 192, offset: 576)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2158, line: 26, size: 192, elements: !2159)
!2158 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2159 = !{!2160, !2161}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2157, file: !2158, line: 27, baseType: !7, size: 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2157, file: !2158, line: 28, baseType: !2162, size: 128, offset: 64)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2163, line: 43, size: 128, elements: !2164)
!2163 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2164 = !{!2165, !2166}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2162, file: !2163, line: 44, baseType: !374)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2162, file: !2163, line: 45, baseType: !174, size: 128)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2122, file: !42, line: 115, baseType: !41, size: 32, offset: 768)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2122, file: !42, line: 116, baseType: !7, size: 32, offset: 800)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2122, file: !42, line: 117, baseType: !2170, size: 64, offset: 832)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2172)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !42, line: 67, size: 256, elements: !2173)
!2173 = !{!2174, !2175, !2179, !2180}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2172, file: !42, line: 73, baseType: !2010, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2172, file: !42, line: 78, baseType: !2176, size: 64, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{null, !2121}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2172, file: !42, line: 83, baseType: !2176, size: 64, offset: 128)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2172, file: !42, line: 89, baseType: !505, size: 64, offset: 192)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2122, file: !42, line: 118, baseType: !88, size: 64, offset: 896)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2122, file: !42, line: 119, baseType: !168, size: 32, offset: 960)
!2183 = !DIDerivedType(tag: DW_TAG_member, scope: !2122, file: !42, line: 120, baseType: !2184, size: 128, offset: 1024)
!2184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2122, file: !42, line: 120, size: 128, elements: !2185)
!2185 = !{!2186, !2192}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2184, file: !42, line: 121, baseType: !2187, size: 128)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2188, line: 6, size: 128, elements: !2189)
!2188 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2189 = !{!2190, !2191}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2187, file: !2188, line: 7, baseType: !187, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2187, file: !2188, line: 8, baseType: !187, size: 64, offset: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2184, file: !42, line: 122, baseType: !2193)
!2193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2187, elements: !1801)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2118, file: !452, line: 162, baseType: !88, size: 64, offset: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !543, file: !452, line: 176, baseType: !96, size: 128, align: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, scope: !539, file: !452, line: 179, baseType: !2197, size: 32, offset: 384)
!2197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !539, file: !452, line: 179, size: 32, elements: !2198)
!2198 = !{!2199, !2200, !2201, !2202}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2197, file: !452, line: 184, baseType: !202, size: 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2197, file: !452, line: 192, baseType: !7, size: 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2197, file: !452, line: 194, baseType: !7, size: 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2197, file: !452, line: 195, baseType: !168, size: 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !539, file: !452, line: 199, baseType: !202, size: 32, offset: 416)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !510, file: !49, line: 522, baseType: !538, size: 64, offset: 512)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !510, file: !49, line: 528, baseType: !2206, size: 64, offset: 576)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !510, file: !49, line: 532, baseType: !117, size: 64, offset: 640)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !510, file: !49, line: 536, baseType: !2109, size: 64, offset: 704)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !489, file: !49, line: 563, baseType: !2210, size: 64, offset: 320)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!508, !509, !48}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !489, file: !49, line: 565, baseType: !2214, size: 64, offset: 384)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{null, !509, !192, !192}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !489, file: !49, line: 567, baseType: !2218, size: 64, offset: 448)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!192, !458}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !489, file: !49, line: 571, baseType: !505, size: 64, offset: 512)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !489, file: !49, line: 574, baseType: !505, size: 64, offset: 576)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !489, file: !49, line: 579, baseType: !2224, size: 64, offset: 640)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!168, !458, !192, !88, !168, !168}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !489, file: !49, line: 585, baseType: !2228, size: 64, offset: 704)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!145, !458}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !489, file: !49, line: 615, baseType: !2232, size: 64, offset: 768)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!538, !458, !192}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !459, file: !452, line: 359, baseType: !192, size: 64, offset: 1216)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !459, file: !452, line: 361, baseType: !1308, size: 64, offset: 1280)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !459, file: !452, line: 362, baseType: !88, size: 64, offset: 1344)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !459, file: !452, line: 365, baseType: !233, size: 64, offset: 1408)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !459, file: !452, line: 373, baseType: !2240, offset: 1472)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !452, line: 296, elements: !132)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !455, file: !452, line: 391, baseType: !413, size: 64, offset: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !455, file: !452, line: 392, baseType: !187, size: 64, offset: 128)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !455, file: !452, line: 394, baseType: !1545, size: 64, offset: 192)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !455, file: !452, line: 398, baseType: !192, size: 64, offset: 256)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !455, file: !452, line: 399, baseType: !192, size: 64, offset: 320)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !455, file: !452, line: 405, baseType: !192, size: 64, offset: 384)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !455, file: !452, line: 406, baseType: !192, size: 64, offset: 448)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !455, file: !452, line: 407, baseType: !2249, size: 64, offset: 512)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !470, line: 286, baseType: !2251)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !470, line: 286, size: 64, elements: !2252)
!2252 = !{!2253}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2251, file: !470, line: 286, baseType: !2254, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !475, line: 18, baseType: !192)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !455, file: !452, line: 416, baseType: !202, size: 32, offset: 576)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !455, file: !452, line: 428, baseType: !202, size: 32, offset: 608)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !455, file: !452, line: 437, baseType: !202, size: 32, offset: 640)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !455, file: !452, line: 447, baseType: !202, size: 32, offset: 672)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !455, file: !452, line: 450, baseType: !233, size: 64, offset: 704)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !455, file: !452, line: 452, baseType: !168, size: 32, offset: 768)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !455, file: !452, line: 454, baseType: !118, offset: 800)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !455, file: !452, line: 457, baseType: !1023, size: 256, offset: 832)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !455, file: !452, line: 459, baseType: !174, size: 128, offset: 1088)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !455, file: !452, line: 466, baseType: !192, size: 64, offset: 1216)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !455, file: !452, line: 467, baseType: !192, size: 64, offset: 1280)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !455, file: !452, line: 469, baseType: !192, size: 64, offset: 1344)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !455, file: !452, line: 470, baseType: !192, size: 64, offset: 1408)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !455, file: !452, line: 471, baseType: !235, size: 64, offset: 1472)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !455, file: !452, line: 472, baseType: !192, size: 64, offset: 1536)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !455, file: !452, line: 473, baseType: !192, size: 64, offset: 1600)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !455, file: !452, line: 474, baseType: !192, size: 64, offset: 1664)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !455, file: !452, line: 475, baseType: !192, size: 64, offset: 1728)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !455, file: !452, line: 477, baseType: !118, offset: 1792)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !455, file: !452, line: 478, baseType: !192, size: 64, offset: 1792)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !455, file: !452, line: 478, baseType: !192, size: 64, offset: 1856)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !455, file: !452, line: 478, baseType: !192, size: 64, offset: 1920)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !455, file: !452, line: 478, baseType: !192, size: 64, offset: 1984)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !455, file: !452, line: 479, baseType: !192, size: 64, offset: 2048)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !455, file: !452, line: 479, baseType: !192, size: 64, offset: 2112)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !455, file: !452, line: 479, baseType: !192, size: 64, offset: 2176)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !455, file: !452, line: 480, baseType: !192, size: 64, offset: 2240)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !455, file: !452, line: 480, baseType: !192, size: 64, offset: 2304)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !455, file: !452, line: 480, baseType: !192, size: 64, offset: 2368)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !455, file: !452, line: 480, baseType: !192, size: 64, offset: 2432)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !455, file: !452, line: 482, baseType: !2286, size: 2816, offset: 2496)
!2286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 2816, elements: !2287)
!2287 = !{!2288}
!2288 = !DISubrange(count: 44)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !455, file: !452, line: 488, baseType: !2290, size: 256, offset: 5312)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2291, line: 60, size: 256, elements: !2292)
!2291 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2292 = !{!2293}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2290, file: !2291, line: 61, baseType: !2294, size: 256)
!2294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 256, elements: !1605)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !455, file: !452, line: 490, baseType: !2296, size: 64, offset: 5568)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !452, line: 490, flags: DIFlagFwdDecl)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !455, file: !452, line: 493, baseType: !2299, size: 896, offset: 5632)
!2299 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2300, line: 53, baseType: !2301)
!2300 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2300, line: 13, size: 896, elements: !2302)
!2302 = !{!2303, !2304, !2305, !2306, !2309, !2310, !2311, !2312, !2316, !2317, !2318}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2301, file: !2300, line: 18, baseType: !187, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2301, file: !2300, line: 28, baseType: !235, size: 64, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2301, file: !2300, line: 31, baseType: !1023, size: 256, offset: 128)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2301, file: !2300, line: 32, baseType: !2307, size: 64, offset: 384)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2300, line: 32, flags: DIFlagFwdDecl)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2301, file: !2300, line: 37, baseType: !330, size: 16, offset: 448)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2301, file: !2300, line: 40, baseType: !262, size: 192, offset: 512)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2301, file: !2300, line: 41, baseType: !88, size: 64, offset: 704)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2301, file: !2300, line: 42, baseType: !2313, size: 64, offset: 768)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2315)
!2315 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2300, line: 42, flags: DIFlagFwdDecl)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2301, file: !2300, line: 44, baseType: !202, size: 32, offset: 832)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2301, file: !2300, line: 50, baseType: !1364, size: 16, offset: 864)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2301, file: !2300, line: 51, baseType: !2319, size: 16, offset: 880)
!2319 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !107, line: 18, baseType: !2320)
!2320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !109, line: 23, baseType: !1687)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !455, file: !452, line: 495, baseType: !192, size: 64, offset: 6528)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !455, file: !452, line: 497, baseType: !2323, size: 64, offset: 6592)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !452, line: 381, size: 384, elements: !2325)
!2325 = !{!2326, !2327, !2333}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2324, file: !452, line: 382, baseType: !202, size: 32)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2324, file: !452, line: 383, baseType: !2328, size: 128, offset: 64)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !452, line: 376, size: 128, elements: !2329)
!2329 = !{!2330, !2331}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2328, file: !452, line: 377, baseType: !272, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2328, file: !452, line: 378, baseType: !2332, size: 64, offset: 64)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2324, file: !452, line: 384, baseType: !2157, size: 192, offset: 192)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !455, file: !452, line: 500, baseType: !118, offset: 6656)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !455, file: !452, line: 501, baseType: !2336, size: 64, offset: 6656)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !452, line: 387, flags: DIFlagFwdDecl)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !455, file: !452, line: 516, baseType: !1180, size: 64, offset: 6720)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !455, file: !452, line: 519, baseType: !1308, size: 64, offset: 6784)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !455, file: !452, line: 521, baseType: !2341, size: 64, offset: 6848)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !452, line: 521, flags: DIFlagFwdDecl)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !455, file: !452, line: 545, baseType: !202, size: 32, offset: 6912)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !455, file: !452, line: 548, baseType: !139, size: 8, offset: 6944)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !455, file: !452, line: 550, baseType: !2346, offset: 6952)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2347, line: 142, elements: !132)
!2347 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !455, file: !452, line: 554, baseType: !1200, size: 256, offset: 6976)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !455, file: !452, line: 557, baseType: !106, size: 32, offset: 7232)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !451, file: !452, line: 565, baseType: !2351, offset: 7296)
!2351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, elements: !207)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !273, file: !274, line: 758, baseType: !450, size: 64, offset: 3968)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !273, file: !274, line: 761, baseType: !2354, size: 320, offset: 4032)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2291, line: 34, size: 320, elements: !2355)
!2355 = !{!2356, !2357}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2354, file: !2291, line: 35, baseType: !187, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2354, file: !2291, line: 36, baseType: !2358, size: 256, offset: 64)
!2358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 256, elements: !1605)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !273, file: !274, line: 766, baseType: !168, size: 32, offset: 4352)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !273, file: !274, line: 767, baseType: !168, size: 32, offset: 4384)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !273, file: !274, line: 768, baseType: !168, size: 32, offset: 4416)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !273, file: !274, line: 770, baseType: !168, size: 32, offset: 4448)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !273, file: !274, line: 772, baseType: !192, size: 64, offset: 4480)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !273, file: !274, line: 775, baseType: !7, size: 32, offset: 4544)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !273, file: !274, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !273, file: !274, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !273, file: !274, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !273, file: !274, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !273, file: !274, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !273, file: !274, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !273, file: !274, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !273, file: !274, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !273, file: !274, line: 831, baseType: !192, size: 64, offset: 4672)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !273, file: !274, line: 833, baseType: !2375, size: 384, offset: 4736)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !55, line: 25, size: 384, elements: !2376)
!2376 = !{!2377, !2382}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2375, file: !55, line: 26, baseType: !2378, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!158, !2381}
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, scope: !2375, file: !55, line: 27, baseType: !2383, size: 320, offset: 64)
!2383 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2375, file: !55, line: 27, size: 320, elements: !2384)
!2384 = !{!2385, !2395, !2420}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2383, file: !55, line: 36, baseType: !2386, size: 320)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2383, file: !55, line: 29, size: 320, elements: !2387)
!2387 = !{!2388, !2390, !2391, !2392, !2393, !2394}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2386, file: !55, line: 30, baseType: !2389, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2386, file: !55, line: 31, baseType: !106, size: 32, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2386, file: !55, line: 32, baseType: !106, size: 32, offset: 96)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2386, file: !55, line: 33, baseType: !106, size: 32, offset: 128)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2386, file: !55, line: 34, baseType: !187, size: 64, offset: 192)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2386, file: !55, line: 35, baseType: !2389, size: 64, offset: 256)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2383, file: !55, line: 46, baseType: !2396, size: 192)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2383, file: !55, line: 38, size: 192, elements: !2397)
!2397 = !{!2398, !2399, !2400, !2419}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2396, file: !55, line: 39, baseType: !392, size: 32)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2396, file: !55, line: 40, baseType: !54, size: 32, offset: 32)
!2400 = !DIDerivedType(tag: DW_TAG_member, scope: !2396, file: !55, line: 41, baseType: !2401, size: 64, offset: 64)
!2401 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2396, file: !55, line: 41, size: 64, elements: !2402)
!2402 = !{!2403, !2411}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2401, file: !55, line: 42, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2406, line: 7, size: 128, elements: !2407)
!2406 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2407 = !{!2408, !2410}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2405, file: !2406, line: 8, baseType: !2409, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !394, line: 93, baseType: !184)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2405, file: !2406, line: 9, baseType: !184, size: 64, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2401, file: !55, line: 43, baseType: !2412, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2414, line: 7, size: 64, elements: !2415)
!2414 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2415 = !{!2416, !2418}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2413, file: !2414, line: 8, baseType: !2417, size: 32)
!2417 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2414, line: 5, baseType: !1661)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2413, file: !2414, line: 9, baseType: !1661, size: 32, offset: 32)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2396, file: !55, line: 45, baseType: !187, size: 64, offset: 128)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2383, file: !55, line: 54, baseType: !2421, size: 256)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2383, file: !55, line: 48, size: 256, elements: !2422)
!2422 = !{!2423, !2426, !2427, !2428, !2429}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2421, file: !55, line: 49, baseType: !2424, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !55, line: 14, flags: DIFlagFwdDecl)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2421, file: !55, line: 50, baseType: !168, size: 32, offset: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2421, file: !55, line: 51, baseType: !168, size: 32, offset: 96)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2421, file: !55, line: 52, baseType: !192, size: 64, offset: 128)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2421, file: !55, line: 53, baseType: !192, size: 64, offset: 192)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !273, file: !274, line: 835, baseType: !2431, size: 32, offset: 5120)
!2431 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !97, line: 22, baseType: !2432)
!2432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !394, line: 28, baseType: !168)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !273, file: !274, line: 836, baseType: !2431, size: 32, offset: 5152)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !273, file: !274, line: 840, baseType: !192, size: 64, offset: 5184)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !273, file: !274, line: 849, baseType: !272, size: 64, offset: 5248)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !273, file: !274, line: 852, baseType: !272, size: 64, offset: 5312)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !273, file: !274, line: 857, baseType: !174, size: 128, offset: 5376)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !273, file: !274, line: 858, baseType: !174, size: 128, offset: 5504)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !273, file: !274, line: 859, baseType: !272, size: 64, offset: 5632)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !273, file: !274, line: 867, baseType: !174, size: 128, offset: 5696)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !273, file: !274, line: 868, baseType: !174, size: 128, offset: 5824)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !273, file: !274, line: 871, baseType: !1597, size: 64, offset: 5952)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !273, file: !274, line: 872, baseType: !2444, size: 512, offset: 6016)
!2444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !751, size: 512, elements: !1605)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !273, file: !274, line: 873, baseType: !174, size: 128, offset: 6528)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !273, file: !274, line: 874, baseType: !174, size: 128, offset: 6656)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !273, file: !274, line: 876, baseType: !2448, size: 64, offset: 6784)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !273, file: !274, line: 879, baseType: !224, size: 64, offset: 6848)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !273, file: !274, line: 882, baseType: !224, size: 64, offset: 6912)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !273, file: !274, line: 884, baseType: !187, size: 64, offset: 6976)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !273, file: !274, line: 885, baseType: !187, size: 64, offset: 7040)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !273, file: !274, line: 890, baseType: !187, size: 64, offset: 7104)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !273, file: !274, line: 891, baseType: !2455, size: 128, offset: 7168)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !274, line: 242, size: 128, elements: !2456)
!2456 = !{!2457, !2458, !2459}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2455, file: !274, line: 244, baseType: !187, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2455, file: !274, line: 245, baseType: !187, size: 64, offset: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2455, file: !274, line: 246, baseType: !374, offset: 128)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !273, file: !274, line: 900, baseType: !192, size: 64, offset: 7296)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !273, file: !274, line: 901, baseType: !192, size: 64, offset: 7360)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !273, file: !274, line: 904, baseType: !187, size: 64, offset: 7424)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !273, file: !274, line: 907, baseType: !187, size: 64, offset: 7488)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !273, file: !274, line: 910, baseType: !192, size: 64, offset: 7552)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !273, file: !274, line: 911, baseType: !192, size: 64, offset: 7616)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !273, file: !274, line: 914, baseType: !2467, size: 640, offset: 7680)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2468, line: 123, size: 640, elements: !2469)
!2468 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2469 = !{!2470, !2476, !2477}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2467, file: !2468, line: 124, baseType: !2471, size: 576)
!2471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2472, size: 576, elements: !761)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2468, line: 108, size: 192, elements: !2473)
!2473 = !{!2474, !2475}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2472, file: !2468, line: 109, baseType: !187, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2472, file: !2468, line: 110, baseType: !407, size: 128, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2467, file: !2468, line: 125, baseType: !7, size: 32, offset: 576)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2467, file: !2468, line: 126, baseType: !7, size: 32, offset: 608)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !273, file: !274, line: 917, baseType: !2479, size: 192, offset: 8320)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2468, line: 134, size: 192, elements: !2480)
!2480 = !{!2481, !2482}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2479, file: !2468, line: 135, baseType: !96, size: 128, align: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2479, file: !2468, line: 136, baseType: !7, size: 32, offset: 128)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !273, file: !274, line: 923, baseType: !1623, size: 64, offset: 8512)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !273, file: !274, line: 926, baseType: !1623, size: 64, offset: 8576)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !273, file: !274, line: 929, baseType: !1623, size: 64, offset: 8640)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !273, file: !274, line: 933, baseType: !1653, size: 64, offset: 8704)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !273, file: !274, line: 943, baseType: !2488, size: 128, offset: 8768)
!2488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 128, elements: !1144)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !273, file: !274, line: 945, baseType: !2490, size: 64, offset: 8896)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !274, line: 49, flags: DIFlagFwdDecl)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !273, file: !274, line: 956, baseType: !2493, size: 64, offset: 8960)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !274, line: 45, flags: DIFlagFwdDecl)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !273, file: !274, line: 959, baseType: !2496, size: 64, offset: 9024)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !274, line: 959, flags: DIFlagFwdDecl)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !273, file: !274, line: 962, baseType: !2499, size: 64, offset: 9088)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !274, line: 66, flags: DIFlagFwdDecl)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !273, file: !274, line: 966, baseType: !2502, size: 64, offset: 9152)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !274, line: 50, flags: DIFlagFwdDecl)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !273, file: !274, line: 969, baseType: !2505, size: 64, offset: 9216)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2507, line: 82, size: 7296, elements: !2508)
!2507 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2508 = !{!2509, !2510, !2511, !2512, !2513, !2514, !2515, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2544, !2553, !2554, !2556, !2557, !2558, !2561, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2591, !2592, !2599, !2600, !2601, !2602, !2603, !2604}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2506, file: !2507, line: 83, baseType: !198, size: 32)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2506, file: !2507, line: 84, baseType: !202, size: 32, offset: 32)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2506, file: !2507, line: 85, baseType: !168, size: 32, offset: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2506, file: !2507, line: 86, baseType: !174, size: 128, offset: 128)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2506, file: !2507, line: 88, baseType: !1099, size: 128, offset: 256)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2506, file: !2507, line: 91, baseType: !272, size: 64, offset: 384)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2506, file: !2507, line: 94, baseType: !2516, size: 192, offset: 448)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2517, line: 30, size: 192, elements: !2518)
!2517 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2518 = !{!2519, !2520}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2516, file: !2517, line: 31, baseType: !174, size: 128)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2516, file: !2517, line: 32, baseType: !2521, size: 64, offset: 128)
!2521 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2522, line: 25, baseType: !2523)
!2522 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2522, line: 23, size: 64, elements: !2524)
!2524 = !{!2525}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2523, file: !2522, line: 24, baseType: !442, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2506, file: !2507, line: 97, baseType: !747, size: 64, offset: 640)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2506, file: !2507, line: 100, baseType: !168, size: 32, offset: 704)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2506, file: !2507, line: 106, baseType: !168, size: 32, offset: 736)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2506, file: !2507, line: 107, baseType: !272, size: 64, offset: 768)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2506, file: !2507, line: 110, baseType: !168, size: 32, offset: 832)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2506, file: !2507, line: 111, baseType: !7, size: 32, offset: 864)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2506, file: !2507, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2506, file: !2507, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2506, file: !2507, line: 128, baseType: !168, size: 32, offset: 928)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2506, file: !2507, line: 129, baseType: !174, size: 128, offset: 960)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2506, file: !2507, line: 132, baseType: !351, size: 512, offset: 1088)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2506, file: !2507, line: 133, baseType: !180, size: 64, offset: 1600)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2506, file: !2507, line: 140, baseType: !2539, size: 256, offset: 1664)
!2539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2540, size: 256, elements: !1645)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2507, line: 38, size: 128, elements: !2541)
!2541 = !{!2542, !2543}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2540, file: !2507, line: 39, baseType: !187, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2540, file: !2507, line: 40, baseType: !187, size: 64, offset: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2506, file: !2507, line: 146, baseType: !2545, size: 192, offset: 1920)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2507, line: 66, size: 192, elements: !2546)
!2546 = !{!2547}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2545, file: !2507, line: 67, baseType: !2548, size: 192)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2507, line: 47, size: 192, elements: !2549)
!2549 = !{!2550, !2551, !2552}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2548, file: !2507, line: 48, baseType: !235, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2548, file: !2507, line: 49, baseType: !235, size: 64, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2548, file: !2507, line: 50, baseType: !235, size: 64, offset: 128)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2506, file: !2507, line: 150, baseType: !2467, size: 640, offset: 2112)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2506, file: !2507, line: 153, baseType: !2555, size: 256, offset: 2752)
!2555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1597, size: 256, elements: !1605)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2506, file: !2507, line: 159, baseType: !1597, size: 64, offset: 3008)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2506, file: !2507, line: 162, baseType: !168, size: 32, offset: 3072)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2506, file: !2507, line: 164, baseType: !2559, size: 64, offset: 3136)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2507, line: 164, flags: DIFlagFwdDecl)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2506, file: !2507, line: 175, baseType: !2562, size: 32, offset: 3200)
!2562 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !397, line: 805, baseType: !2563)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !397, line: 798, size: 32, elements: !2564)
!2564 = !{!2565, !2566}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2563, file: !397, line: 803, baseType: !591, size: 32)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2563, file: !397, line: 804, baseType: !118, offset: 32)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2506, file: !2507, line: 176, baseType: !187, size: 64, offset: 3264)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2506, file: !2507, line: 176, baseType: !187, size: 64, offset: 3328)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2506, file: !2507, line: 176, baseType: !187, size: 64, offset: 3392)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2506, file: !2507, line: 176, baseType: !187, size: 64, offset: 3456)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2506, file: !2507, line: 177, baseType: !187, size: 64, offset: 3520)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2506, file: !2507, line: 178, baseType: !187, size: 64, offset: 3584)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2506, file: !2507, line: 179, baseType: !2455, size: 128, offset: 3648)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2506, file: !2507, line: 180, baseType: !192, size: 64, offset: 3776)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2506, file: !2507, line: 180, baseType: !192, size: 64, offset: 3840)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2506, file: !2507, line: 180, baseType: !192, size: 64, offset: 3904)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2506, file: !2507, line: 180, baseType: !192, size: 64, offset: 3968)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2506, file: !2507, line: 181, baseType: !192, size: 64, offset: 4032)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2506, file: !2507, line: 181, baseType: !192, size: 64, offset: 4096)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2506, file: !2507, line: 181, baseType: !192, size: 64, offset: 4160)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2506, file: !2507, line: 181, baseType: !192, size: 64, offset: 4224)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2506, file: !2507, line: 182, baseType: !192, size: 64, offset: 4288)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2506, file: !2507, line: 182, baseType: !192, size: 64, offset: 4352)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2506, file: !2507, line: 182, baseType: !192, size: 64, offset: 4416)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2506, file: !2507, line: 182, baseType: !192, size: 64, offset: 4480)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2506, file: !2507, line: 183, baseType: !192, size: 64, offset: 4544)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2506, file: !2507, line: 183, baseType: !192, size: 64, offset: 4608)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2506, file: !2507, line: 184, baseType: !2589, offset: 4672)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2590, line: 12, elements: !132)
!2590 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2506, file: !2507, line: 192, baseType: !189, size: 64, offset: 4672)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2506, file: !2507, line: 203, baseType: !2593, size: 2048, offset: 4736)
!2593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2594, size: 2048, elements: !1144)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2595, line: 43, size: 128, elements: !2596)
!2595 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2596 = !{!2597, !2598}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2594, file: !2595, line: 44, baseType: !1342, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2594, file: !2595, line: 45, baseType: !1342, size: 64, offset: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2506, file: !2507, line: 220, baseType: !139, size: 8, offset: 6784)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2506, file: !2507, line: 221, baseType: !1687, size: 16, offset: 6800)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2506, file: !2507, line: 222, baseType: !1687, size: 16, offset: 6816)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2506, file: !2507, line: 224, baseType: !450, size: 64, offset: 6848)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2506, file: !2507, line: 227, baseType: !262, size: 192, offset: 6912)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2506, file: !2507, line: 233, baseType: !262, size: 192, offset: 7104)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !273, file: !274, line: 970, baseType: !2606, size: 64, offset: 9280)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2507, line: 20, size: 16576, elements: !2608)
!2608 = !{!2609, !2610, !2611, !2612}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2607, file: !2507, line: 21, baseType: !118)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2607, file: !2507, line: 22, baseType: !198, size: 32)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2607, file: !2507, line: 23, baseType: !1099, size: 128, offset: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2607, file: !2507, line: 24, baseType: !2613, size: 16384, offset: 192)
!2613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2614, size: 16384, elements: !2634)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2517, line: 49, size: 256, elements: !2615)
!2615 = !{!2616}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2614, file: !2517, line: 50, baseType: !2617, size: 256)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2517, line: 35, size: 256, elements: !2618)
!2618 = !{!2619, !2626, !2627, !2633}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2617, file: !2517, line: 37, baseType: !2620, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2621, line: 19, baseType: !2622)
!2621 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2621, line: 18, baseType: !2624)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{null, !168}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2617, file: !2517, line: 38, baseType: !192, size: 64, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2617, file: !2517, line: 44, baseType: !2628, size: 64, offset: 128)
!2628 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2621, line: 22, baseType: !2629)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2621, line: 21, baseType: !2631)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{null}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2617, file: !2517, line: 46, baseType: !2521, size: 64, offset: 192)
!2634 = !{!2635}
!2635 = !DISubrange(count: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !273, file: !274, line: 971, baseType: !2521, size: 64, offset: 9344)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !273, file: !274, line: 972, baseType: !2521, size: 64, offset: 9408)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !273, file: !274, line: 974, baseType: !2521, size: 64, offset: 9472)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !273, file: !274, line: 975, baseType: !2516, size: 192, offset: 9536)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !273, file: !274, line: 976, baseType: !192, size: 64, offset: 9728)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !273, file: !274, line: 977, baseType: !1340, size: 64, offset: 9792)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !273, file: !274, line: 978, baseType: !7, size: 32, offset: 9856)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !273, file: !274, line: 980, baseType: !100, size: 64, offset: 9920)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !273, file: !274, line: 989, baseType: !2645, size: 128, offset: 9984)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2646, line: 35, size: 128, elements: !2647)
!2646 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2647 = !{!2648, !2649, !2650}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2645, file: !2646, line: 36, baseType: !168, size: 32)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2645, file: !2646, line: 37, baseType: !202, size: 32, offset: 32)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2645, file: !2646, line: 38, baseType: !2651, size: 64, offset: 64)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2646, line: 23, flags: DIFlagFwdDecl)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !273, file: !274, line: 992, baseType: !187, size: 64, offset: 10112)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !273, file: !274, line: 993, baseType: !187, size: 64, offset: 10176)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !273, file: !274, line: 996, baseType: !118, offset: 10240)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !273, file: !274, line: 999, baseType: !374, offset: 10240)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !273, file: !274, line: 1001, baseType: !2658, size: 64, offset: 10240)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !274, line: 636, size: 64, elements: !2659)
!2659 = !{!2660}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2658, file: !274, line: 637, baseType: !2661, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !273, file: !274, line: 1005, baseType: !410, size: 128, offset: 10304)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !273, file: !274, line: 1007, baseType: !272, size: 64, offset: 10432)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !273, file: !274, line: 1009, baseType: !2665, size: 64, offset: 10496)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !274, line: 1009, flags: DIFlagFwdDecl)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !273, file: !274, line: 1043, baseType: !88, size: 64, offset: 10560)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !273, file: !274, line: 1046, baseType: !2669, size: 64, offset: 10624)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !274, line: 41, flags: DIFlagFwdDecl)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !273, file: !274, line: 1050, baseType: !2672, size: 64, offset: 10688)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !274, line: 42, flags: DIFlagFwdDecl)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !273, file: !274, line: 1054, baseType: !2675, size: 64, offset: 10752)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !274, line: 55, flags: DIFlagFwdDecl)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !273, file: !274, line: 1056, baseType: !1046, size: 64, offset: 10816)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !273, file: !274, line: 1058, baseType: !2679, size: 64, offset: 10880)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2681, line: 99, size: 704, elements: !2682)
!2681 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2682 = !{!2683, !2684, !2685, !2686, !2687, !2688, !2689, !2708, !2709}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2680, file: !2681, line: 100, baseType: !233, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2680, file: !2681, line: 101, baseType: !202, size: 32, offset: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2680, file: !2681, line: 102, baseType: !202, size: 32, offset: 96)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2680, file: !2681, line: 105, baseType: !118, offset: 128)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2680, file: !2681, line: 107, baseType: !330, size: 16, offset: 128)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2680, file: !2681, line: 109, baseType: !1943, size: 128, offset: 192)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2680, file: !2681, line: 110, baseType: !2690, size: 64, offset: 320)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2681, line: 73, size: 448, elements: !2692)
!2692 = !{!2693, !2696, !2697, !2702, !2707}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2691, file: !2681, line: 74, baseType: !2694, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2681, line: 74, flags: DIFlagFwdDecl)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2691, file: !2681, line: 75, baseType: !2679, size: 64, offset: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, scope: !2691, file: !2681, line: 83, baseType: !2698, size: 128, offset: 128)
!2698 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2691, file: !2681, line: 83, size: 128, elements: !2699)
!2699 = !{!2700, !2701}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2698, file: !2681, line: 84, baseType: !174, size: 128)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2698, file: !2681, line: 85, baseType: !2076, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, scope: !2691, file: !2681, line: 87, baseType: !2703, size: 128, offset: 256)
!2703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2691, file: !2681, line: 87, size: 128, elements: !2704)
!2704 = !{!2705, !2706}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2703, file: !2681, line: 88, baseType: !751, size: 128)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2703, file: !2681, line: 89, baseType: !96, size: 128, align: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2691, file: !2681, line: 92, baseType: !7, size: 32, offset: 384)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2680, file: !2681, line: 111, baseType: !747, size: 64, offset: 384)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2680, file: !2681, line: 113, baseType: !1200, size: 256, offset: 448)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !273, file: !274, line: 1061, baseType: !2711, size: 64, offset: 10944)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !274, line: 43, flags: DIFlagFwdDecl)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !273, file: !274, line: 1064, baseType: !192, size: 64, offset: 11008)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !273, file: !274, line: 1065, baseType: !2715, size: 64, offset: 11072)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2517, line: 14, baseType: !2717)
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2517, line: 12, size: 384, elements: !2718)
!2718 = !{!2719}
!2719 = !DIDerivedType(tag: DW_TAG_member, scope: !2717, file: !2517, line: 13, baseType: !2720, size: 384)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2717, file: !2517, line: 13, size: 384, elements: !2721)
!2721 = !{!2722, !2723, !2724, !2725}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2720, file: !2517, line: 13, baseType: !168, size: 32)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2720, file: !2517, line: 13, baseType: !168, size: 32, offset: 32)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2720, file: !2517, line: 13, baseType: !168, size: 32, offset: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2720, file: !2517, line: 13, baseType: !2726, size: 256, offset: 128)
!2726 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2727, line: 32, size: 256, elements: !2728)
!2727 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2728 = !{!2729, !2734, !2747, !2753, !2762, !2782, !2787}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2726, file: !2727, line: 37, baseType: !2730, size: 64)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2726, file: !2727, line: 34, size: 64, elements: !2731)
!2731 = !{!2732, !2733}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2730, file: !2727, line: 35, baseType: !2432, size: 32)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2730, file: !2727, line: 36, baseType: !567, size: 32, offset: 32)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2726, file: !2727, line: 45, baseType: !2735, size: 192)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2726, file: !2727, line: 40, size: 192, elements: !2736)
!2736 = !{!2737, !2739, !2740, !2746}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2735, file: !2727, line: 41, baseType: !2738, size: 32)
!2738 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !394, line: 95, baseType: !168)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2735, file: !2727, line: 42, baseType: !168, size: 32, offset: 32)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2735, file: !2727, line: 43, baseType: !2741, size: 64, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2727, line: 11, baseType: !2742)
!2742 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2727, line: 8, size: 64, elements: !2743)
!2743 = !{!2744, !2745}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2742, file: !2727, line: 9, baseType: !168, size: 32)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2742, file: !2727, line: 10, baseType: !88, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2735, file: !2727, line: 44, baseType: !168, size: 32, offset: 128)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2726, file: !2727, line: 52, baseType: !2748, size: 128)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2726, file: !2727, line: 48, size: 128, elements: !2749)
!2749 = !{!2750, !2751, !2752}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2748, file: !2727, line: 49, baseType: !2432, size: 32)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2748, file: !2727, line: 50, baseType: !567, size: 32, offset: 32)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2748, file: !2727, line: 51, baseType: !2741, size: 64, offset: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2726, file: !2727, line: 61, baseType: !2754, size: 256)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2726, file: !2727, line: 55, size: 256, elements: !2755)
!2755 = !{!2756, !2757, !2758, !2759, !2761}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2754, file: !2727, line: 56, baseType: !2432, size: 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2754, file: !2727, line: 57, baseType: !567, size: 32, offset: 32)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2754, file: !2727, line: 58, baseType: !168, size: 32, offset: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2754, file: !2727, line: 59, baseType: !2760, size: 64, offset: 128)
!2760 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !394, line: 94, baseType: !1339)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2754, file: !2727, line: 60, baseType: !2760, size: 64, offset: 192)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2726, file: !2727, line: 95, baseType: !2763, size: 256)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2726, file: !2727, line: 64, size: 256, elements: !2764)
!2764 = !{!2765, !2766}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2763, file: !2727, line: 65, baseType: !88, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, scope: !2763, file: !2727, line: 77, baseType: !2767, size: 192, offset: 64)
!2767 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2763, file: !2727, line: 77, size: 192, elements: !2768)
!2768 = !{!2769, !2770, !2777}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2767, file: !2727, line: 82, baseType: !1687, size: 16)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2767, file: !2727, line: 88, baseType: !2771, size: 192)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2767, file: !2727, line: 84, size: 192, elements: !2772)
!2772 = !{!2773, !2775, !2776}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2771, file: !2727, line: 85, baseType: !2774, size: 64)
!2774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 64, elements: !388)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2771, file: !2727, line: 86, baseType: !88, size: 64, offset: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2771, file: !2727, line: 87, baseType: !88, size: 64, offset: 128)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2767, file: !2727, line: 93, baseType: !2778, size: 96)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2767, file: !2727, line: 90, size: 96, elements: !2779)
!2779 = !{!2780, !2781}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2778, file: !2727, line: 91, baseType: !2774, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2778, file: !2727, line: 92, baseType: !108, size: 32, offset: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2726, file: !2727, line: 101, baseType: !2783, size: 128)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2726, file: !2727, line: 98, size: 128, elements: !2784)
!2784 = !{!2785, !2786}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2783, file: !2727, line: 99, baseType: !158, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2783, file: !2727, line: 100, baseType: !168, size: 32, offset: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2726, file: !2727, line: 108, baseType: !2788, size: 128)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2726, file: !2727, line: 104, size: 128, elements: !2789)
!2789 = !{!2790, !2791, !2792}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2788, file: !2727, line: 105, baseType: !88, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2788, file: !2727, line: 106, baseType: !168, size: 32, offset: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2788, file: !2727, line: 107, baseType: !7, size: 32, offset: 96)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !273, file: !274, line: 1067, baseType: !2589, offset: 11136)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !273, file: !274, line: 1099, baseType: !2795, size: 64, offset: 11136)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !274, line: 56, flags: DIFlagFwdDecl)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !273, file: !274, line: 1103, baseType: !174, size: 128, offset: 11200)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !273, file: !274, line: 1104, baseType: !2799, size: 64, offset: 11328)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !274, line: 46, flags: DIFlagFwdDecl)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !273, file: !274, line: 1105, baseType: !262, size: 192, offset: 11392)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !273, file: !274, line: 1106, baseType: !7, size: 32, offset: 11584)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !273, file: !274, line: 1109, baseType: !2804, size: 128, offset: 11648)
!2804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2805, size: 128, elements: !1645)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !274, line: 51, flags: DIFlagFwdDecl)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !273, file: !274, line: 1110, baseType: !262, size: 192, offset: 11776)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !273, file: !274, line: 1111, baseType: !174, size: 128, offset: 11968)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !273, file: !274, line: 1173, baseType: !2810, size: 64, offset: 12096)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2812, line: 62, size: 256, align: 256, elements: !2813)
!2812 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2813 = !{!2814, !2815, !2816, !2821}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2811, file: !2812, line: 75, baseType: !108, size: 32)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2811, file: !2812, line: 90, baseType: !108, size: 32, offset: 32)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2811, file: !2812, line: 124, baseType: !2817, size: 64, offset: 64)
!2817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2811, file: !2812, line: 109, size: 64, elements: !2818)
!2818 = !{!2819, !2820}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2817, file: !2812, line: 110, baseType: !188, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2817, file: !2812, line: 112, baseType: !188, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2811, file: !2812, line: 144, baseType: !108, size: 32, offset: 128)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !273, file: !274, line: 1174, baseType: !106, size: 32, offset: 12160)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !273, file: !274, line: 1179, baseType: !192, size: 64, offset: 12224)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !273, file: !274, line: 1182, baseType: !2825, size: 128, offset: 12288)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2291, line: 76, size: 128, elements: !2826)
!2826 = !{!2827, !2832, !2833}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2825, file: !2291, line: 85, baseType: !2828, size: 64)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2829, line: 7, size: 64, elements: !2830)
!2829 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2830 = !{!2831}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2828, file: !2829, line: 12, baseType: !439, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2825, file: !2291, line: 88, baseType: !139, size: 8, offset: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2825, file: !2291, line: 95, baseType: !139, size: 8, offset: 72)
!2834 = !DIDerivedType(tag: DW_TAG_member, scope: !273, file: !274, line: 1184, baseType: !2835, size: 128, offset: 12416)
!2835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !273, file: !274, line: 1184, size: 128, elements: !2836)
!2836 = !{!2837, !2838}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2835, file: !274, line: 1185, baseType: !198, size: 32)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2835, file: !274, line: 1186, baseType: !96, size: 128, align: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !273, file: !274, line: 1190, baseType: !1557, size: 64, offset: 12544)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !273, file: !274, line: 1192, baseType: !2841, size: 128, offset: 12608)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2291, line: 64, size: 128, elements: !2842)
!2842 = !{!2843, !2844, !2845}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2841, file: !2291, line: 65, baseType: !538, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2841, file: !2291, line: 67, baseType: !108, size: 32, offset: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2841, file: !2291, line: 68, baseType: !108, size: 32, offset: 96)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !273, file: !274, line: 1206, baseType: !168, size: 32, offset: 12736)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !273, file: !274, line: 1207, baseType: !168, size: 32, offset: 12768)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !273, file: !274, line: 1209, baseType: !192, size: 64, offset: 12800)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !273, file: !274, line: 1219, baseType: !187, size: 64, offset: 12864)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !273, file: !274, line: 1220, baseType: !187, size: 64, offset: 12928)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !273, file: !274, line: 1317, baseType: !168, size: 32, offset: 12992)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !273, file: !274, line: 1319, baseType: !272, size: 64, offset: 13056)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !273, file: !274, line: 1322, baseType: !2854, size: 64, offset: 13120)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !274, line: 1322, flags: DIFlagFwdDecl)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !273, file: !274, line: 1326, baseType: !198, size: 32, offset: 13184)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !273, file: !274, line: 1342, baseType: !88, size: 64, offset: 13248)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !273, file: !274, line: 1343, baseType: !188, size: 64, offset: 13312)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !273, file: !274, line: 1344, baseType: !187, size: 64, offset: 13376)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !273, file: !274, line: 1345, baseType: !188, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !273, file: !274, line: 1346, baseType: !188, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !273, file: !274, line: 1347, baseType: !188, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !273, file: !274, line: 1348, baseType: !96, size: 128, align: 64, offset: 13504)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !273, file: !274, line: 1358, baseType: !2865, size: 34816, offset: 13824)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2866, line: 485, size: 34816, elements: !2867)
!2866 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2867 = !{!2868, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2897, !2898, !2899, !2900, !2901, !2902, !2905, !2906, !2907}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2865, file: !2866, line: 487, baseType: !2869, size: 192)
!2869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2870, size: 192, elements: !761)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2871, line: 16, size: 64, elements: !2872)
!2871 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2872 = !{!2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2870, file: !2871, line: 17, baseType: !1364, size: 16)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2870, file: !2871, line: 18, baseType: !1364, size: 16, offset: 16)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2870, file: !2871, line: 19, baseType: !1364, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2870, file: !2871, line: 19, baseType: !1364, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2870, file: !2871, line: 19, baseType: !1364, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2870, file: !2871, line: 19, baseType: !1364, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2870, file: !2871, line: 19, baseType: !1364, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2870, file: !2871, line: 20, baseType: !1364, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2870, file: !2871, line: 20, baseType: !1364, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2870, file: !2871, line: 20, baseType: !1364, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2870, file: !2871, line: 20, baseType: !1364, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2870, file: !2871, line: 20, baseType: !1364, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2870, file: !2871, line: 20, baseType: !1364, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2865, file: !2866, line: 491, baseType: !192, size: 64, offset: 192)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2865, file: !2866, line: 495, baseType: !330, size: 16, offset: 256)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2865, file: !2866, line: 496, baseType: !330, size: 16, offset: 272)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2865, file: !2866, line: 497, baseType: !330, size: 16, offset: 288)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2865, file: !2866, line: 498, baseType: !330, size: 16, offset: 304)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2865, file: !2866, line: 502, baseType: !192, size: 64, offset: 320)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2865, file: !2866, line: 503, baseType: !192, size: 64, offset: 384)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2865, file: !2866, line: 514, baseType: !2894, size: 256, offset: 448)
!2894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2895, size: 256, elements: !1605)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2866, line: 483, flags: DIFlagFwdDecl)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2865, file: !2866, line: 516, baseType: !192, size: 64, offset: 704)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2865, file: !2866, line: 518, baseType: !192, size: 64, offset: 768)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2865, file: !2866, line: 520, baseType: !192, size: 64, offset: 832)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2865, file: !2866, line: 521, baseType: !192, size: 64, offset: 896)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2865, file: !2866, line: 522, baseType: !192, size: 64, offset: 960)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2865, file: !2866, line: 528, baseType: !2903, size: 64, offset: 1024)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2866, line: 10, flags: DIFlagFwdDecl)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2865, file: !2866, line: 535, baseType: !192, size: 64, offset: 1088)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2865, file: !2866, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2865, file: !2866, line: 540, baseType: !2908, size: 33280, offset: 1536)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2909, line: 317, size: 33280, elements: !2910)
!2909 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2910 = !{!2911, !2912, !2913}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2908, file: !2909, line: 330, baseType: !7, size: 32)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2908, file: !2909, line: 337, baseType: !192, size: 64, offset: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2908, file: !2909, line: 348, baseType: !2914, size: 32768, offset: 512)
!2914 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2909, line: 304, size: 32768, elements: !2915)
!2915 = !{!2916, !2931, !2968, !3018, !3031}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2914, file: !2909, line: 305, baseType: !2917, size: 896)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2909, line: 12, size: 896, elements: !2918)
!2918 = !{!2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2930}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2917, file: !2909, line: 13, baseType: !106, size: 32)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2917, file: !2909, line: 14, baseType: !106, size: 32, offset: 32)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2917, file: !2909, line: 15, baseType: !106, size: 32, offset: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2917, file: !2909, line: 16, baseType: !106, size: 32, offset: 96)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2917, file: !2909, line: 17, baseType: !106, size: 32, offset: 128)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2917, file: !2909, line: 18, baseType: !106, size: 32, offset: 160)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2917, file: !2909, line: 19, baseType: !106, size: 32, offset: 192)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2917, file: !2909, line: 22, baseType: !2927, size: 640, offset: 224)
!2927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 640, elements: !2928)
!2928 = !{!2929}
!2929 = !DISubrange(count: 20)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2917, file: !2909, line: 25, baseType: !106, size: 32, offset: 864)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2914, file: !2909, line: 306, baseType: !2932, size: 4096, align: 128)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2909, line: 34, size: 4096, align: 128, elements: !2933)
!2933 = !{!2934, !2935, !2936, !2937, !2938, !2953, !2954, !2955, !2957, !2959, !2963}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2932, file: !2909, line: 35, baseType: !1364, size: 16)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2932, file: !2909, line: 36, baseType: !1364, size: 16, offset: 16)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2932, file: !2909, line: 37, baseType: !1364, size: 16, offset: 32)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2932, file: !2909, line: 38, baseType: !1364, size: 16, offset: 48)
!2938 = !DIDerivedType(tag: DW_TAG_member, scope: !2932, file: !2909, line: 39, baseType: !2939, size: 128, offset: 64)
!2939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2932, file: !2909, line: 39, size: 128, elements: !2940)
!2940 = !{!2941, !2946}
!2941 = !DIDerivedType(tag: DW_TAG_member, scope: !2939, file: !2909, line: 40, baseType: !2942, size: 128)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2939, file: !2909, line: 40, size: 128, elements: !2943)
!2943 = !{!2944, !2945}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2942, file: !2909, line: 41, baseType: !187, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2942, file: !2909, line: 42, baseType: !187, size: 64, offset: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, scope: !2939, file: !2909, line: 44, baseType: !2947, size: 128)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2939, file: !2909, line: 44, size: 128, elements: !2948)
!2948 = !{!2949, !2950, !2951, !2952}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2947, file: !2909, line: 45, baseType: !106, size: 32)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2947, file: !2909, line: 46, baseType: !106, size: 32, offset: 32)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2947, file: !2909, line: 47, baseType: !106, size: 32, offset: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2947, file: !2909, line: 48, baseType: !106, size: 32, offset: 96)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2932, file: !2909, line: 51, baseType: !106, size: 32, offset: 192)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2932, file: !2909, line: 52, baseType: !106, size: 32, offset: 224)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2932, file: !2909, line: 55, baseType: !2956, size: 1024, offset: 256)
!2956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 1024, elements: !622)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2932, file: !2909, line: 58, baseType: !2958, size: 2048, offset: 1280)
!2958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 2048, elements: !2634)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2932, file: !2909, line: 60, baseType: !2960, size: 384, offset: 3328)
!2960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 384, elements: !2961)
!2961 = !{!2962}
!2962 = !DISubrange(count: 12)
!2963 = !DIDerivedType(tag: DW_TAG_member, scope: !2932, file: !2909, line: 62, baseType: !2964, size: 384, offset: 3712)
!2964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2932, file: !2909, line: 62, size: 384, elements: !2965)
!2965 = !{!2966, !2967}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2964, file: !2909, line: 63, baseType: !2960, size: 384)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2964, file: !2909, line: 64, baseType: !2960, size: 384)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2914, file: !2909, line: 307, baseType: !2969, size: 1088)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2909, line: 79, size: 1088, elements: !2970)
!2970 = !{!2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !3017}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2969, file: !2909, line: 80, baseType: !106, size: 32)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2969, file: !2909, line: 81, baseType: !106, size: 32, offset: 32)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2969, file: !2909, line: 82, baseType: !106, size: 32, offset: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2969, file: !2909, line: 83, baseType: !106, size: 32, offset: 96)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2969, file: !2909, line: 84, baseType: !106, size: 32, offset: 128)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2969, file: !2909, line: 85, baseType: !106, size: 32, offset: 160)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2969, file: !2909, line: 86, baseType: !106, size: 32, offset: 192)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2969, file: !2909, line: 88, baseType: !2927, size: 640, offset: 224)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2969, file: !2909, line: 89, baseType: !423, size: 8, offset: 864)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2969, file: !2909, line: 90, baseType: !423, size: 8, offset: 872)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2969, file: !2909, line: 91, baseType: !423, size: 8, offset: 880)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2969, file: !2909, line: 92, baseType: !423, size: 8, offset: 888)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2969, file: !2909, line: 93, baseType: !423, size: 8, offset: 896)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2969, file: !2909, line: 94, baseType: !423, size: 8, offset: 904)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2969, file: !2909, line: 95, baseType: !2986, size: 64, offset: 960)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2988, line: 11, size: 128, elements: !2989)
!2988 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2989 = !{!2990, !2991}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2987, file: !2988, line: 12, baseType: !158, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2987, file: !2988, line: 13, baseType: !2992, size: 64, offset: 64)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2994, line: 56, size: 1344, elements: !2995)
!2994 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2995 = !{!2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2993, file: !2994, line: 61, baseType: !192, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2993, file: !2994, line: 62, baseType: !192, size: 64, offset: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2993, file: !2994, line: 63, baseType: !192, size: 64, offset: 128)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2993, file: !2994, line: 64, baseType: !192, size: 64, offset: 192)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2993, file: !2994, line: 65, baseType: !192, size: 64, offset: 256)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2993, file: !2994, line: 66, baseType: !192, size: 64, offset: 320)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2993, file: !2994, line: 68, baseType: !192, size: 64, offset: 384)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2993, file: !2994, line: 69, baseType: !192, size: 64, offset: 448)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2993, file: !2994, line: 70, baseType: !192, size: 64, offset: 512)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2993, file: !2994, line: 71, baseType: !192, size: 64, offset: 576)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2993, file: !2994, line: 72, baseType: !192, size: 64, offset: 640)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2993, file: !2994, line: 73, baseType: !192, size: 64, offset: 704)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2993, file: !2994, line: 74, baseType: !192, size: 64, offset: 768)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2993, file: !2994, line: 75, baseType: !192, size: 64, offset: 832)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2993, file: !2994, line: 76, baseType: !192, size: 64, offset: 896)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2993, file: !2994, line: 81, baseType: !192, size: 64, offset: 960)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2993, file: !2994, line: 83, baseType: !192, size: 64, offset: 1024)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2993, file: !2994, line: 84, baseType: !192, size: 64, offset: 1088)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2993, file: !2994, line: 85, baseType: !192, size: 64, offset: 1152)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2993, file: !2994, line: 86, baseType: !192, size: 64, offset: 1216)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2993, file: !2994, line: 87, baseType: !192, size: 64, offset: 1280)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2969, file: !2909, line: 96, baseType: !106, size: 32, offset: 1024)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2914, file: !2909, line: 308, baseType: !3019, size: 4608, align: 512)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2909, line: 289, size: 4608, align: 512, elements: !3020)
!3020 = !{!3021, !3022, !3029}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3019, file: !2909, line: 290, baseType: !2932, size: 4096, align: 128)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3019, file: !2909, line: 291, baseType: !3023, size: 512, offset: 4096)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2909, line: 268, size: 512, elements: !3024)
!3024 = !{!3025, !3026, !3027}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3023, file: !2909, line: 269, baseType: !187, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3023, file: !2909, line: 270, baseType: !187, size: 64, offset: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3023, file: !2909, line: 271, baseType: !3028, size: 384, offset: 128)
!3028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 384, elements: !1705)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3019, file: !2909, line: 292, baseType: !3030, offset: 4608)
!3030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, elements: !1801)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2914, file: !2909, line: 309, baseType: !3032, size: 32768)
!3032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 32768, elements: !3033)
!3033 = !{!3034}
!3034 = !DISubrange(count: 4096)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !269, file: !230, line: 33, baseType: !192, size: 64, offset: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !269, file: !230, line: 34, baseType: !7, size: 32, offset: 128)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !269, file: !230, line: 35, baseType: !330, size: 16, offset: 160)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !269, file: !230, line: 36, baseType: !330, size: 16, offset: 176)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !255, file: !93, line: 72, baseType: !3040, size: 32, offset: 256)
!3040 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_ww_mutex_t", file: !397, line: 280, baseType: !3041)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_ww_mutex", file: !397, line: 280, size: 32, elements: !3042)
!3042 = !{!3043}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3041, file: !397, line: 280, baseType: !401, size: 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "fence_excl", scope: !255, file: !93, line: 74, baseType: !113, size: 64, offset: 320)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !255, file: !93, line: 75, baseType: !91, size: 64, offset: 384)
!3046 = !DILocalVariable(name: "obj", arg: 1, scope: !251, file: !3, line: 142, type: !254)
!3047 = !DILocation(line: 142, column: 37, scope: !251)
!3048 = !DILocation(line: 144, column: 17, scope: !251)
!3049 = !DILocation(line: 144, column: 22, scope: !251)
!3050 = !DILocation(line: 144, column: 2, scope: !251)
!3051 = !DILocation(line: 145, column: 2, scope: !251)
!3052 = !DILocalVariable(name: "____s", scope: !3053, file: !3, line: 145, type: !3054)
!3053 = distinct !DILexicalBlock(scope: !251, file: !3, line: 145, column: 2)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3055 = !DILocation(line: 145, column: 2, scope: !3053)
!3056 = !DILocation(line: 147, column: 2, scope: !251)
!3057 = !DILocation(line: 147, column: 2, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !251, file: !3, line: 147, column: 2)
!3059 = !DILocation(line: 147, column: 2, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3058, file: !3, line: 147, column: 2)
!3061 = !DILocation(line: 147, column: 2, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3060, file: !3, line: 147, column: 2)
!3063 = !DILocation(line: 147, column: 2, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3060, file: !3, line: 147, column: 2)
!3065 = !DILocation(line: 148, column: 2, scope: !251)
!3066 = !DILocation(line: 148, column: 2, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !251, file: !3, line: 148, column: 2)
!3068 = !DILocation(line: 148, column: 2, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 148, column: 2)
!3070 = !DILocation(line: 148, column: 2, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3069, file: !3, line: 148, column: 2)
!3072 = !DILocation(line: 148, column: 2, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3069, file: !3, line: 148, column: 2)
!3074 = !DILocation(line: 149, column: 1, scope: !251)
!3075 = distinct !DISubprogram(name: "ww_mutex_init", scope: !230, file: !230, line: 87, type: !3076, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{null, !3078, !3079}
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!3080 = !DILocalVariable(name: "lock", arg: 1, scope: !3075, file: !230, line: 87, type: !3078)
!3081 = !DILocation(line: 87, column: 51, scope: !3075)
!3082 = !DILocalVariable(name: "ww_class", arg: 2, scope: !3075, file: !230, line: 88, type: !3079)
!3083 = !DILocation(line: 88, column: 23, scope: !3075)
!3084 = !DILocation(line: 90, column: 16, scope: !3075)
!3085 = !DILocation(line: 90, column: 22, scope: !3075)
!3086 = !DILocation(line: 90, column: 28, scope: !3075)
!3087 = !DILocation(line: 90, column: 38, scope: !3075)
!3088 = !DILocation(line: 90, column: 51, scope: !3075)
!3089 = !DILocation(line: 90, column: 61, scope: !3075)
!3090 = !DILocation(line: 90, column: 2, scope: !3075)
!3091 = !DILocation(line: 91, column: 2, scope: !3075)
!3092 = !DILocation(line: 91, column: 8, scope: !3075)
!3093 = !DILocation(line: 91, column: 12, scope: !3075)
!3094 = !DILocation(line: 95, column: 1, scope: !3075)
!3095 = distinct !DISubprogram(name: "__seqcount_init", scope: !397, file: !397, line: 72, type: !3096, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{null, !3098, !145, !3099}
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!3100 = !DILocalVariable(name: "s", arg: 1, scope: !3095, file: !397, line: 72, type: !3098)
!3101 = !DILocation(line: 72, column: 48, scope: !3095)
!3102 = !DILocalVariable(name: "name", arg: 2, scope: !3095, file: !397, line: 72, type: !145)
!3103 = !DILocation(line: 72, column: 63, scope: !3095)
!3104 = !DILocalVariable(name: "key", arg: 3, scope: !3095, file: !397, line: 73, type: !3099)
!3105 = !DILocation(line: 73, column: 31, scope: !3095)
!3106 = !DILocation(line: 78, column: 2, scope: !3095)
!3107 = !DILocation(line: 78, column: 2, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3095, file: !397, line: 78, column: 2)
!3109 = !DILocation(line: 79, column: 2, scope: !3095)
!3110 = !DILocation(line: 79, column: 5, scope: !3095)
!3111 = !DILocation(line: 79, column: 14, scope: !3095)
!3112 = !DILocation(line: 80, column: 1, scope: !3095)
!3113 = distinct !DISubprogram(name: "dma_resv_fini", scope: !3, file: !3, line: 156, type: !252, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3114 = !DILocalVariable(name: "obj", arg: 1, scope: !3113, file: !3, line: 156, type: !254)
!3115 = !DILocation(line: 156, column: 37, scope: !3113)
!3116 = !DILocalVariable(name: "fobj", scope: !3113, file: !3, line: 158, type: !91)
!3117 = !DILocation(line: 158, column: 24, scope: !3113)
!3118 = !DILocalVariable(name: "excl", scope: !3113, file: !3, line: 159, type: !113)
!3119 = !DILocation(line: 159, column: 20, scope: !3113)
!3120 = !DILocation(line: 165, column: 9, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3113, file: !3, line: 165, column: 9)
!3122 = !DILocation(line: 165, column: 9, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3121, file: !3, line: 165, column: 9)
!3124 = !DILocation(line: 165, column: 7, scope: !3113)
!3125 = !DILocation(line: 166, column: 6, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3113, file: !3, line: 166, column: 6)
!3127 = !DILocation(line: 166, column: 6, scope: !3113)
!3128 = !DILocation(line: 167, column: 17, scope: !3126)
!3129 = !DILocation(line: 167, column: 3, scope: !3126)
!3130 = !DILocation(line: 169, column: 9, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3113, file: !3, line: 169, column: 9)
!3132 = !DILocation(line: 169, column: 9, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3131, file: !3, line: 169, column: 9)
!3134 = !DILocation(line: 169, column: 7, scope: !3113)
!3135 = !DILocation(line: 170, column: 21, scope: !3113)
!3136 = !DILocation(line: 170, column: 2, scope: !3113)
!3137 = !DILocation(line: 171, column: 20, scope: !3113)
!3138 = !DILocation(line: 171, column: 25, scope: !3113)
!3139 = !DILocation(line: 171, column: 2, scope: !3113)
!3140 = !DILocation(line: 172, column: 1, scope: !3113)
!3141 = distinct !DISubprogram(name: "dma_fence_put", scope: !61, file: !61, line: 276, type: !161, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3142 = !DILocalVariable(name: "fence", arg: 1, scope: !3141, file: !61, line: 276, type: !113)
!3143 = !DILocation(line: 276, column: 52, scope: !3141)
!3144 = !DILocation(line: 278, column: 6, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3141, file: !61, line: 278, column: 6)
!3146 = !DILocation(line: 278, column: 6, scope: !3141)
!3147 = !DILocation(line: 279, column: 13, scope: !3145)
!3148 = !DILocation(line: 279, column: 20, scope: !3145)
!3149 = !DILocation(line: 279, column: 3, scope: !3145)
!3150 = !DILocation(line: 280, column: 1, scope: !3141)
!3151 = distinct !DISubprogram(name: "dma_resv_list_free", scope: !3, file: !3, line: 82, type: !3152, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{null, !91}
!3154 = !DILocalVariable(name: "list", arg: 1, scope: !3151, file: !3, line: 82, type: !91)
!3155 = !DILocation(line: 82, column: 54, scope: !3151)
!3156 = !DILocalVariable(name: "i", scope: !3151, file: !3, line: 84, type: !7)
!3157 = !DILocation(line: 84, column: 15, scope: !3151)
!3158 = !DILocation(line: 86, column: 7, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3151, file: !3, line: 86, column: 6)
!3160 = !DILocation(line: 86, column: 6, scope: !3151)
!3161 = !DILocation(line: 87, column: 3, scope: !3159)
!3162 = !DILocation(line: 89, column: 9, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3151, file: !3, line: 89, column: 2)
!3164 = !DILocation(line: 89, column: 7, scope: !3163)
!3165 = !DILocation(line: 89, column: 14, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3163, file: !3, line: 89, column: 2)
!3167 = !DILocation(line: 89, column: 18, scope: !3166)
!3168 = !DILocation(line: 89, column: 24, scope: !3166)
!3169 = !DILocation(line: 89, column: 16, scope: !3166)
!3170 = !DILocation(line: 89, column: 2, scope: !3163)
!3171 = !DILocation(line: 90, column: 17, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3166, file: !3, line: 90, column: 17)
!3173 = !DILocation(line: 90, column: 17, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3172, file: !3, line: 90, column: 17)
!3175 = !DILocation(line: 90, column: 3, scope: !3166)
!3176 = !DILocation(line: 89, column: 38, scope: !3166)
!3177 = !DILocation(line: 89, column: 2, scope: !3166)
!3178 = distinct !{!3178, !3170, !3179}
!3179 = !DILocation(line: 90, column: 65, scope: !3163)
!3180 = !DILocation(line: 92, column: 2, scope: !3151)
!3181 = !DILocalVariable(name: "___p", scope: !3182, file: !3, line: 92, type: !91)
!3182 = distinct !DILexicalBlock(scope: !3151, file: !3, line: 92, column: 2)
!3183 = !DILocation(line: 92, column: 2, scope: !3182)
!3184 = !DILocation(line: 92, column: 2, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 92, column: 2)
!3186 = !DILocation(line: 92, column: 2, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3185, file: !3, line: 92, column: 2)
!3188 = !DILocation(line: 92, column: 2, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3187, file: !3, line: 92, column: 2)
!3190 = !DILocation(line: 93, column: 1, scope: !3151)
!3191 = distinct !DISubprogram(name: "ww_mutex_destroy", scope: !230, file: !230, line: 348, type: !3192, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{null, !3078}
!3194 = !DILocalVariable(name: "lock", arg: 1, scope: !3191, file: !230, line: 348, type: !3078)
!3195 = !DILocation(line: 348, column: 54, scope: !3191)
!3196 = !DILocation(line: 350, column: 17, scope: !3191)
!3197 = !DILocation(line: 350, column: 23, scope: !3191)
!3198 = !DILocation(line: 350, column: 2, scope: !3191)
!3199 = !DILocation(line: 351, column: 1, scope: !3191)
!3200 = distinct !DISubprogram(name: "dma_resv_reserve_shared", scope: !3, file: !3, line: 187, type: !3201, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!168, !254, !7}
!3203 = !DILocalVariable(name: "obj", arg: 1, scope: !3200, file: !3, line: 187, type: !254)
!3204 = !DILocation(line: 187, column: 46, scope: !3200)
!3205 = !DILocalVariable(name: "num_fences", arg: 2, scope: !3200, file: !3, line: 187, type: !7)
!3206 = !DILocation(line: 187, column: 64, scope: !3200)
!3207 = !DILocalVariable(name: "old", scope: !3200, file: !3, line: 189, type: !91)
!3208 = !DILocation(line: 189, column: 24, scope: !3200)
!3209 = !DILocalVariable(name: "new", scope: !3200, file: !3, line: 189, type: !91)
!3210 = !DILocation(line: 189, column: 30, scope: !3200)
!3211 = !DILocalVariable(name: "i", scope: !3200, file: !3, line: 190, type: !7)
!3212 = !DILocation(line: 190, column: 15, scope: !3200)
!3213 = !DILocalVariable(name: "j", scope: !3200, file: !3, line: 190, type: !7)
!3214 = !DILocation(line: 190, column: 18, scope: !3200)
!3215 = !DILocalVariable(name: "k", scope: !3200, file: !3, line: 190, type: !7)
!3216 = !DILocation(line: 190, column: 21, scope: !3200)
!3217 = !DILocalVariable(name: "max", scope: !3200, file: !3, line: 190, type: !7)
!3218 = !DILocation(line: 190, column: 24, scope: !3200)
!3219 = !DILocation(line: 192, column: 2, scope: !3200)
!3220 = !DILocation(line: 192, column: 2, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3200, file: !3, line: 192, column: 2)
!3222 = !DILocation(line: 194, column: 26, scope: !3200)
!3223 = !DILocation(line: 194, column: 8, scope: !3200)
!3224 = !DILocation(line: 194, column: 6, scope: !3200)
!3225 = !DILocation(line: 196, column: 6, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3200, file: !3, line: 196, column: 6)
!3227 = !DILocation(line: 196, column: 10, scope: !3226)
!3228 = !DILocation(line: 196, column: 13, scope: !3226)
!3229 = !DILocation(line: 196, column: 18, scope: !3226)
!3230 = !DILocation(line: 196, column: 6, scope: !3200)
!3231 = !DILocation(line: 197, column: 8, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !3, line: 197, column: 7)
!3233 = distinct !DILexicalBlock(scope: !3226, file: !3, line: 196, column: 30)
!3234 = !DILocation(line: 197, column: 13, scope: !3232)
!3235 = !DILocation(line: 197, column: 28, scope: !3232)
!3236 = !DILocation(line: 197, column: 26, scope: !3232)
!3237 = !DILocation(line: 197, column: 43, scope: !3232)
!3238 = !DILocation(line: 197, column: 48, scope: !3232)
!3239 = !DILocation(line: 197, column: 40, scope: !3232)
!3240 = !DILocation(line: 197, column: 7, scope: !3233)
!3241 = !DILocation(line: 198, column: 4, scope: !3232)
!3242 = !DILocalVariable(name: "__UNIQUE_ID___x229", scope: !3243, file: !3, line: 200, type: !7)
!3243 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 200, column: 10)
!3244 = !DILocation(line: 200, column: 10, scope: !3243)
!3245 = !DILocalVariable(name: "__UNIQUE_ID___y230", scope: !3243, file: !3, line: 200, type: !7)
!3246 = !DILocation(line: 200, column: 8, scope: !3232)
!3247 = !DILocation(line: 202, column: 2, scope: !3233)
!3248 = !DILocation(line: 203, column: 7, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3226, file: !3, line: 202, column: 9)
!3250 = !DILocation(line: 206, column: 28, scope: !3200)
!3251 = !DILocation(line: 206, column: 8, scope: !3200)
!3252 = !DILocation(line: 206, column: 6, scope: !3200)
!3253 = !DILocation(line: 207, column: 7, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3200, file: !3, line: 207, column: 6)
!3255 = !DILocation(line: 207, column: 6, scope: !3200)
!3256 = !DILocation(line: 208, column: 3, scope: !3254)
!3257 = !DILocation(line: 216, column: 9, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3200, file: !3, line: 216, column: 2)
!3259 = !DILocation(line: 216, column: 16, scope: !3258)
!3260 = !DILocation(line: 216, column: 25, scope: !3258)
!3261 = !DILocation(line: 216, column: 23, scope: !3258)
!3262 = !DILocation(line: 216, column: 7, scope: !3258)
!3263 = !DILocation(line: 216, column: 30, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 216, column: 2)
!3265 = !DILocation(line: 216, column: 35, scope: !3264)
!3266 = !DILocation(line: 216, column: 41, scope: !3264)
!3267 = !DILocation(line: 216, column: 46, scope: !3264)
!3268 = !DILocation(line: 216, column: 32, scope: !3264)
!3269 = !DILocation(line: 216, column: 2, scope: !3258)
!3270 = !DILocalVariable(name: "fence", scope: !3271, file: !3, line: 217, type: !113)
!3271 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 216, column: 70)
!3272 = !DILocation(line: 217, column: 21, scope: !3271)
!3273 = !DILocation(line: 219, column: 11, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3271, file: !3, line: 219, column: 11)
!3275 = !DILocation(line: 219, column: 11, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3274, file: !3, line: 219, column: 11)
!3277 = !DILocation(line: 219, column: 9, scope: !3271)
!3278 = !DILocation(line: 221, column: 29, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3271, file: !3, line: 221, column: 7)
!3280 = !DILocation(line: 221, column: 7, scope: !3279)
!3281 = !DILocation(line: 221, column: 7, scope: !3271)
!3282 = !DILocation(line: 222, column: 4, scope: !3279)
!3283 = !DILocation(line: 222, column: 4, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3279, file: !3, line: 222, column: 4)
!3285 = !DILocation(line: 222, column: 4, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3284, file: !3, line: 222, column: 4)
!3287 = !DILocation(line: 222, column: 4, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3286, file: !3, line: 222, column: 4)
!3289 = !DILocation(line: 222, column: 4, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3286, file: !3, line: 222, column: 4)
!3291 = !DILocation(line: 224, column: 4, scope: !3279)
!3292 = !DILocation(line: 224, column: 4, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3279, file: !3, line: 224, column: 4)
!3294 = !DILocation(line: 224, column: 4, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3293, file: !3, line: 224, column: 4)
!3296 = !DILocation(line: 224, column: 4, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3295, file: !3, line: 224, column: 4)
!3298 = !DILocation(line: 224, column: 4, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3295, file: !3, line: 224, column: 4)
!3300 = !DILocation(line: 225, column: 2, scope: !3271)
!3301 = !DILocation(line: 216, column: 65, scope: !3264)
!3302 = !DILocation(line: 216, column: 2, scope: !3264)
!3303 = distinct !{!3303, !3269, !3304}
!3304 = !DILocation(line: 225, column: 2, scope: !3258)
!3305 = !DILocation(line: 226, column: 22, scope: !3200)
!3306 = !DILocation(line: 226, column: 2, scope: !3200)
!3307 = !DILocation(line: 226, column: 7, scope: !3200)
!3308 = !DILocation(line: 226, column: 20, scope: !3200)
!3309 = !DILocation(line: 236, column: 2, scope: !3200)
!3310 = !DILocalVariable(name: "_r_a_p__v", scope: !3311, file: !3, line: 236, type: !211)
!3311 = distinct !DILexicalBlock(scope: !3200, file: !3, line: 236, column: 2)
!3312 = !DILocation(line: 236, column: 2, scope: !3311)
!3313 = !DILocation(line: 236, column: 2, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3311, file: !3, line: 236, column: 2)
!3315 = !DILocation(line: 236, column: 2, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3314, file: !3, line: 236, column: 2)
!3317 = !DILocation(line: 236, column: 2, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3316, file: !3, line: 236, column: 2)
!3319 = !DILocation(line: 236, column: 2, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3316, file: !3, line: 236, column: 2)
!3321 = !DILocation(line: 236, column: 2, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3314, file: !3, line: 236, column: 2)
!3323 = !DILocation(line: 236, column: 2, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 236, column: 2)
!3325 = !{i32 -2142517444}
!3326 = !DILocation(line: 236, column: 2, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 236, column: 2)
!3328 = !DILocation(line: 236, column: 2, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3327, file: !3, line: 236, column: 2)
!3330 = !DILocation(line: 236, column: 2, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3327, file: !3, line: 236, column: 2)
!3332 = !DILocation(line: 238, column: 7, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3200, file: !3, line: 238, column: 6)
!3334 = !DILocation(line: 238, column: 6, scope: !3200)
!3335 = !DILocation(line: 239, column: 3, scope: !3333)
!3336 = !DILocation(line: 242, column: 11, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3200, file: !3, line: 242, column: 2)
!3338 = !DILocation(line: 242, column: 9, scope: !3337)
!3339 = !DILocation(line: 242, column: 7, scope: !3337)
!3340 = !DILocation(line: 242, column: 14, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3337, file: !3, line: 242, column: 2)
!3342 = !DILocation(line: 242, column: 18, scope: !3341)
!3343 = !DILocation(line: 242, column: 16, scope: !3341)
!3344 = !DILocation(line: 242, column: 2, scope: !3337)
!3345 = !DILocalVariable(name: "fence", scope: !3346, file: !3, line: 243, type: !113)
!3346 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 242, column: 28)
!3347 = !DILocation(line: 243, column: 21, scope: !3346)
!3348 = !DILocation(line: 245, column: 11, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3346, file: !3, line: 245, column: 11)
!3350 = !DILocation(line: 245, column: 11, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3349, file: !3, line: 245, column: 11)
!3352 = !DILocation(line: 245, column: 9, scope: !3346)
!3353 = !DILocation(line: 247, column: 17, scope: !3346)
!3354 = !DILocation(line: 247, column: 3, scope: !3346)
!3355 = !DILocation(line: 248, column: 2, scope: !3346)
!3356 = !DILocation(line: 242, column: 23, scope: !3341)
!3357 = !DILocation(line: 242, column: 2, scope: !3341)
!3358 = distinct !{!3358, !3344, !3359}
!3359 = !DILocation(line: 248, column: 2, scope: !3337)
!3360 = !DILocation(line: 249, column: 2, scope: !3200)
!3361 = !DILocalVariable(name: "___p", scope: !3362, file: !3, line: 249, type: !91)
!3362 = distinct !DILexicalBlock(scope: !3200, file: !3, line: 249, column: 2)
!3363 = !DILocation(line: 249, column: 2, scope: !3362)
!3364 = !DILocation(line: 249, column: 2, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3362, file: !3, line: 249, column: 2)
!3366 = !DILocation(line: 249, column: 2, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3365, file: !3, line: 249, column: 2)
!3368 = !DILocation(line: 249, column: 2, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3367, file: !3, line: 249, column: 2)
!3370 = !DILocation(line: 251, column: 2, scope: !3200)
!3371 = !DILocation(line: 252, column: 1, scope: !3200)
!3372 = distinct !DISubprogram(name: "dma_resv_get_list", scope: !93, file: !93, line: 89, type: !3373, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!91, !254}
!3375 = !DILocalVariable(name: "obj", arg: 1, scope: !3372, file: !93, line: 89, type: !254)
!3376 = !DILocation(line: 89, column: 72, scope: !3372)
!3377 = !DILocation(line: 91, column: 9, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3372, file: !93, line: 91, column: 9)
!3379 = !DILocation(line: 91, column: 9, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3378, file: !93, line: 91, column: 9)
!3381 = !DILocation(line: 91, column: 2, scope: !3372)
!3382 = distinct !DISubprogram(name: "dma_resv_list_alloc", scope: !3, file: !3, line: 62, type: !3383, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!91, !7}
!3385 = !DILocalVariable(name: "s", arg: 1, scope: !3386, file: !81, line: 445, type: !2076)
!3386 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !81, file: !81, line: 445, type: !3387, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!88, !2076, !219, !1340}
!3389 = !DILocation(line: 445, column: 72, scope: !3386, inlinedAt: !3390)
!3390 = distinct !DILocation(line: 552, column: 10, scope: !3391, inlinedAt: !3396)
!3391 = distinct !DILexicalBlock(scope: !3392, file: !81, line: 540, column: 34)
!3392 = distinct !DILexicalBlock(scope: !3393, file: !81, line: 540, column: 6)
!3393 = distinct !DISubprogram(name: "kmalloc", scope: !81, file: !81, line: 538, type: !3394, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!88, !1340, !219}
!3396 = distinct !DILocation(line: 66, column: 9, scope: !3382)
!3397 = !DILocalVariable(name: "flags", arg: 2, scope: !3386, file: !81, line: 446, type: !219)
!3398 = !DILocation(line: 446, column: 9, scope: !3386, inlinedAt: !3390)
!3399 = !DILocalVariable(name: "size", arg: 3, scope: !3386, file: !81, line: 446, type: !1340)
!3400 = !DILocation(line: 446, column: 23, scope: !3386, inlinedAt: !3390)
!3401 = !DILocalVariable(name: "ret", scope: !3386, file: !81, line: 448, type: !88)
!3402 = !DILocation(line: 448, column: 8, scope: !3386, inlinedAt: !3390)
!3403 = !DILocalVariable(name: "flags", arg: 1, scope: !3404, file: !81, line: 318, type: !219)
!3404 = distinct !DISubprogram(name: "kmalloc_type", scope: !81, file: !81, line: 318, type: !3405, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!80, !219}
!3407 = !DILocation(line: 318, column: 67, scope: !3404, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 553, column: 20, scope: !3391, inlinedAt: !3396)
!3409 = !DILocalVariable(name: "size", arg: 1, scope: !3410, file: !81, line: 346, type: !1340)
!3410 = distinct !DISubprogram(name: "kmalloc_index", scope: !81, file: !81, line: 346, type: !3411, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!7, !1340}
!3413 = !DILocation(line: 346, column: 58, scope: !3410, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 547, column: 11, scope: !3391, inlinedAt: !3396)
!3415 = !DILocalVariable(name: "size", arg: 1, scope: !3416, file: !81, line: 472, type: !1340)
!3416 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !81, file: !81, line: 472, type: !3417, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!88, !1340, !219, !7}
!3419 = !DILocation(line: 472, column: 28, scope: !3416, inlinedAt: !3420)
!3420 = distinct !DILocation(line: 481, column: 9, scope: !3421, inlinedAt: !3422)
!3421 = distinct !DISubprogram(name: "kmalloc_large", scope: !81, file: !81, line: 478, type: !3394, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3422 = distinct !DILocation(line: 545, column: 11, scope: !3423, inlinedAt: !3396)
!3423 = distinct !DILexicalBlock(scope: !3391, file: !81, line: 544, column: 7)
!3424 = !DILocalVariable(name: "flags", arg: 2, scope: !3416, file: !81, line: 472, type: !219)
!3425 = !DILocation(line: 472, column: 40, scope: !3416, inlinedAt: !3420)
!3426 = !DILocalVariable(name: "order", arg: 3, scope: !3416, file: !81, line: 472, type: !7)
!3427 = !DILocation(line: 472, column: 60, scope: !3416, inlinedAt: !3420)
!3428 = !DILocalVariable(name: "size", arg: 1, scope: !3421, file: !81, line: 478, type: !1340)
!3429 = !DILocation(line: 478, column: 51, scope: !3421, inlinedAt: !3422)
!3430 = !DILocalVariable(name: "flags", arg: 2, scope: !3421, file: !81, line: 478, type: !219)
!3431 = !DILocation(line: 478, column: 63, scope: !3421, inlinedAt: !3422)
!3432 = !DILocalVariable(name: "order", scope: !3421, file: !81, line: 480, type: !7)
!3433 = !DILocation(line: 480, column: 15, scope: !3421, inlinedAt: !3422)
!3434 = !DILocalVariable(name: "size", arg: 1, scope: !3393, file: !81, line: 538, type: !1340)
!3435 = !DILocation(line: 538, column: 45, scope: !3393, inlinedAt: !3396)
!3436 = !DILocalVariable(name: "flags", arg: 2, scope: !3393, file: !81, line: 538, type: !219)
!3437 = !DILocation(line: 538, column: 57, scope: !3393, inlinedAt: !3396)
!3438 = !DILocalVariable(name: "index", scope: !3391, file: !81, line: 542, type: !7)
!3439 = !DILocation(line: 542, column: 16, scope: !3391, inlinedAt: !3396)
!3440 = !DILocalVariable(name: "shared_max", arg: 1, scope: !3382, file: !3, line: 62, type: !7)
!3441 = !DILocation(line: 62, column: 63, scope: !3382)
!3442 = !DILocalVariable(name: "list", scope: !3382, file: !3, line: 64, type: !91)
!3443 = !DILocation(line: 64, column: 24, scope: !3382)
!3444 = !DILocation(line: 66, column: 17, scope: !3382)
!3445 = !DILocation(line: 540, column: 27, scope: !3392, inlinedAt: !3396)
!3446 = !DILocation(line: 540, column: 6, scope: !3392, inlinedAt: !3396)
!3447 = !DILocation(line: 540, column: 6, scope: !3393, inlinedAt: !3396)
!3448 = !DILocation(line: 544, column: 7, scope: !3423, inlinedAt: !3396)
!3449 = !DILocation(line: 544, column: 12, scope: !3423, inlinedAt: !3396)
!3450 = !DILocation(line: 544, column: 7, scope: !3391, inlinedAt: !3396)
!3451 = !DILocation(line: 545, column: 25, scope: !3423, inlinedAt: !3396)
!3452 = !DILocation(line: 545, column: 31, scope: !3423, inlinedAt: !3396)
!3453 = !DILocation(line: 480, column: 33, scope: !3421, inlinedAt: !3422)
!3454 = !DILocation(line: 480, column: 23, scope: !3421, inlinedAt: !3422)
!3455 = !DILocation(line: 481, column: 29, scope: !3421, inlinedAt: !3422)
!3456 = !DILocation(line: 481, column: 35, scope: !3421, inlinedAt: !3422)
!3457 = !DILocation(line: 481, column: 42, scope: !3421, inlinedAt: !3422)
!3458 = !DILocation(line: 474, column: 23, scope: !3416, inlinedAt: !3420)
!3459 = !DILocation(line: 474, column: 29, scope: !3416, inlinedAt: !3420)
!3460 = !DILocation(line: 474, column: 36, scope: !3416, inlinedAt: !3420)
!3461 = !DILocation(line: 474, column: 9, scope: !3416, inlinedAt: !3420)
!3462 = !DILocation(line: 545, column: 4, scope: !3423, inlinedAt: !3396)
!3463 = !DILocation(line: 547, column: 25, scope: !3391, inlinedAt: !3396)
!3464 = !DILocation(line: 348, column: 7, scope: !3465, inlinedAt: !3414)
!3465 = distinct !DILexicalBlock(scope: !3410, file: !81, line: 348, column: 6)
!3466 = !DILocation(line: 348, column: 6, scope: !3410, inlinedAt: !3414)
!3467 = !DILocation(line: 349, column: 3, scope: !3465, inlinedAt: !3414)
!3468 = !DILocation(line: 351, column: 6, scope: !3469, inlinedAt: !3414)
!3469 = distinct !DILexicalBlock(scope: !3410, file: !81, line: 351, column: 6)
!3470 = !DILocation(line: 351, column: 11, scope: !3469, inlinedAt: !3414)
!3471 = !DILocation(line: 351, column: 6, scope: !3410, inlinedAt: !3414)
!3472 = !DILocation(line: 352, column: 3, scope: !3469, inlinedAt: !3414)
!3473 = !DILocation(line: 354, column: 32, scope: !3474, inlinedAt: !3414)
!3474 = distinct !DILexicalBlock(scope: !3410, file: !81, line: 354, column: 6)
!3475 = !DILocation(line: 354, column: 37, scope: !3474, inlinedAt: !3414)
!3476 = !DILocation(line: 354, column: 42, scope: !3474, inlinedAt: !3414)
!3477 = !DILocation(line: 354, column: 45, scope: !3474, inlinedAt: !3414)
!3478 = !DILocation(line: 354, column: 50, scope: !3474, inlinedAt: !3414)
!3479 = !DILocation(line: 354, column: 6, scope: !3410, inlinedAt: !3414)
!3480 = !DILocation(line: 355, column: 3, scope: !3474, inlinedAt: !3414)
!3481 = !DILocation(line: 356, column: 32, scope: !3482, inlinedAt: !3414)
!3482 = distinct !DILexicalBlock(scope: !3410, file: !81, line: 356, column: 6)
!3483 = !DILocation(line: 356, column: 37, scope: !3482, inlinedAt: !3414)
!3484 = !DILocation(line: 356, column: 43, scope: !3482, inlinedAt: !3414)
!3485 = !DILocation(line: 356, column: 46, scope: !3482, inlinedAt: !3414)
!3486 = !DILocation(line: 356, column: 51, scope: !3482, inlinedAt: !3414)
!3487 = !DILocation(line: 356, column: 6, scope: !3410, inlinedAt: !3414)
!3488 = !DILocation(line: 357, column: 3, scope: !3482, inlinedAt: !3414)
!3489 = !DILocation(line: 358, column: 6, scope: !3490, inlinedAt: !3414)
!3490 = distinct !DILexicalBlock(scope: !3410, file: !81, line: 358, column: 6)
!3491 = !DILocation(line: 358, column: 11, scope: !3490, inlinedAt: !3414)
!3492 = !DILocation(line: 358, column: 6, scope: !3410, inlinedAt: !3414)
!3493 = !DILocation(line: 358, column: 26, scope: !3490, inlinedAt: !3414)
!3494 = !DILocation(line: 359, column: 6, scope: !3495, inlinedAt: !3414)
!3495 = distinct !DILexicalBlock(scope: !3410, file: !81, line: 359, column: 6)
!3496 = !DILocation(line: 359, column: 11, scope: !3495, inlinedAt: !3414)
!3497 = !DILocation(line: 359, column: 6, scope: !3410, inlinedAt: !3414)
!3498 = !DILocation(line: 359, column: 26, scope: !3495, inlinedAt: !3414)
!3499 = !DILocation(line: 360, column: 6, scope: !3500, inlinedAt: !3414)
!3500 = distinct !DILexicalBlock(scope: !3410, file: !81, line: 360, column: 6)
!3501 = !DILocation(line: 360, column: 11, scope: !3500, inlinedAt: !3414)
!3502 = !DILocation(line: 360, column: 6, scope: !3410, inlinedAt: !3414)
!3503 = !DILocation(line: 360, column: 26, scope: !3500, inlinedAt: !3414)
!3504 = !DILocation(line: 361, column: 6, scope: !3505, inlinedAt: !3414)
!3505 = distinct !DILexicalBlock(scope: !3410, file: !81, line: 361, column: 6)
!3506 = !DILocation(line: 361, column: 11, scope: !3505, inlinedAt: !3414)
!3507 = !DILocation(line: 361, column: 6, scope: !3410, inlinedAt: !3414)
!3508 = !DILocation(line: 361, column: 26, scope: !3505, inlinedAt: !3414)
!3509 = !DILocation(line: 362, column: 6, scope: !3510, inlinedAt: !3414)
!3510 = distinct !DILexicalBlock(scope: !3410, file: !81, line: 362, column: 6)
!3511 = !DILocation(line: 362, column: 11, scope: !3510, inlinedAt: !3414)
!3512 = !DILocation(line: 362, column: 6, scope: !3410, inlinedAt: !3414)
!3513 = !DILocation(line: 362, column: 26, scope: !3510, inlinedAt: !3414)
!3514 = !DILocation(line: 363, column: 6, scope: !3515, inlinedAt: !3414)
!3515 = distinct !DILexicalBlock(scope: !3410, file: !81, line: 363, column: 6)
!3516 = !DILocation(line: 363, column: 11, scope: !3515, inlinedAt: !3414)
!3517 = !DILocation(line: 363, column: 6, scope: !3410, inlinedAt: !3414)
!3518 = !DILocation(line: 363, column: 26, scope: !3515, inlinedAt: !3414)
!3519 = !DILocation(line: 364, column: 6, scope: !3520, inlinedAt: !3414)
!3520 = distinct !DILexicalBlock(scope: !3410, file: !81, line: 364, column: 6)
!3521 = !DILocation(line: 364, column: 11, scope: !3520, inlinedAt: !3414)
!3522 = !DILocation(line: 364, column: 6, scope: !3410, inlinedAt: !3414)
!3523 = !DILocation(line: 364, column: 26, scope: !3520, inlinedAt: !3414)
!3524 = !DILocation(line: 365, column: 6, scope: !3525, inlinedAt: !3414)
!3525 = distinct !DILexicalBlock(scope: !3410, file: !81, line: 365, column: 6)
!3526 = !DILocation(line: 365, column: 11, scope: !3525, inlinedAt: !3414)
!3527 = !DILocation(line: 365, column: 6, scope: !3410, inlinedAt: !3414)
!3528 = !DILocation(line: 365, column: 26, scope: !3525, inlinedAt: !3414)
!3529 = !DILocation(line: 366, column: 6, scope: !3530, inlinedAt: !3414)
!3530 = distinct !DILexicalBlock(scope: !3410, file: !81, line: 366, column: 6)
!3531 = !DILocation(line: 366, column: 11, scope: !3530, inlinedAt: !3414)
!3532 = !DILocation(line: 366, column: 6, scope: !3410, inlinedAt: !3414)
!3533 = !DILocation(line: 366, column: 26, scope: !3530, inlinedAt: !3414)
!3534 = !DILocation(line: 367, column: 6, scope: !3535, inlinedAt: !3414)
!3535 = distinct !DILexicalBlock(scope: !3410, file: !81, line: 367, column: 6)
!3536 = !DILocation(line: 367, column: 11, scope: !3535, inlinedAt: !3414)
!3537 = !DILocation(line: 367, column: 6, scope: !3410, inlinedAt: !3414)
!3538 = !DILocation(line: 367, column: 26, scope: !3535, inlinedAt: !3414)
!3539 = !DILocation(line: 368, column: 6, scope: !3540, inlinedAt: !3414)
!3540 = distinct !DILexicalBlock(scope: !3410, file: !81, line: 368, column: 6)
!3541 = !DILocation(line: 368, column: 11, scope: !3540, inlinedAt: !3414)
!3542 = !DILocation(line: 368, column: 6, scope: !3410, inlinedAt: !3414)
!3543 = !DILocation(line: 368, column: 26, scope: !3540, inlinedAt: !3414)
!3544 = !DILocation(line: 369, column: 6, scope: !3545, inlinedAt: !3414)
!3545 = distinct !DILexicalBlock(scope: !3410, file: !81, line: 369, column: 6)
!3546 = !DILocation(line: 369, column: 11, scope: !3545, inlinedAt: !3414)
!3547 = !DILocation(line: 369, column: 6, scope: !3410, inlinedAt: !3414)
!3548 = !DILocation(line: 369, column: 26, scope: !3545, inlinedAt: !3414)
!3549 = !DILocation(line: 370, column: 6, scope: !3550, inlinedAt: !3414)
!3550 = distinct !DILexicalBlock(scope: !3410, file: !81, line: 370, column: 6)
!3551 = !DILocation(line: 370, column: 11, scope: !3550, inlinedAt: !3414)
!3552 = !DILocation(line: 370, column: 6, scope: !3410, inlinedAt: !3414)
!3553 = !DILocation(line: 370, column: 26, scope: !3550, inlinedAt: !3414)
!3554 = !DILocation(line: 371, column: 6, scope: !3555, inlinedAt: !3414)
!3555 = distinct !DILexicalBlock(scope: !3410, file: !81, line: 371, column: 6)
!3556 = !DILocation(line: 371, column: 11, scope: !3555, inlinedAt: !3414)
!3557 = !DILocation(line: 371, column: 6, scope: !3410, inlinedAt: !3414)
!3558 = !DILocation(line: 371, column: 26, scope: !3555, inlinedAt: !3414)
!3559 = !DILocation(line: 372, column: 6, scope: !3560, inlinedAt: !3414)
!3560 = distinct !DILexicalBlock(scope: !3410, file: !81, line: 372, column: 6)
!3561 = !DILocation(line: 372, column: 11, scope: !3560, inlinedAt: !3414)
!3562 = !DILocation(line: 372, column: 6, scope: !3410, inlinedAt: !3414)
!3563 = !DILocation(line: 372, column: 26, scope: !3560, inlinedAt: !3414)
!3564 = !DILocation(line: 373, column: 6, scope: !3565, inlinedAt: !3414)
!3565 = distinct !DILexicalBlock(scope: !3410, file: !81, line: 373, column: 6)
!3566 = !DILocation(line: 373, column: 11, scope: !3565, inlinedAt: !3414)
!3567 = !DILocation(line: 373, column: 6, scope: !3410, inlinedAt: !3414)
!3568 = !DILocation(line: 373, column: 26, scope: !3565, inlinedAt: !3414)
!3569 = !DILocation(line: 374, column: 6, scope: !3570, inlinedAt: !3414)
!3570 = distinct !DILexicalBlock(scope: !3410, file: !81, line: 374, column: 6)
!3571 = !DILocation(line: 374, column: 11, scope: !3570, inlinedAt: !3414)
!3572 = !DILocation(line: 374, column: 6, scope: !3410, inlinedAt: !3414)
!3573 = !DILocation(line: 374, column: 26, scope: !3570, inlinedAt: !3414)
!3574 = !DILocation(line: 375, column: 6, scope: !3575, inlinedAt: !3414)
!3575 = distinct !DILexicalBlock(scope: !3410, file: !81, line: 375, column: 6)
!3576 = !DILocation(line: 375, column: 11, scope: !3575, inlinedAt: !3414)
!3577 = !DILocation(line: 375, column: 6, scope: !3410, inlinedAt: !3414)
!3578 = !DILocation(line: 375, column: 27, scope: !3575, inlinedAt: !3414)
!3579 = !DILocation(line: 376, column: 6, scope: !3580, inlinedAt: !3414)
!3580 = distinct !DILexicalBlock(scope: !3410, file: !81, line: 376, column: 6)
!3581 = !DILocation(line: 376, column: 11, scope: !3580, inlinedAt: !3414)
!3582 = !DILocation(line: 376, column: 6, scope: !3410, inlinedAt: !3414)
!3583 = !DILocation(line: 376, column: 32, scope: !3580, inlinedAt: !3414)
!3584 = !DILocation(line: 377, column: 6, scope: !3585, inlinedAt: !3414)
!3585 = distinct !DILexicalBlock(scope: !3410, file: !81, line: 377, column: 6)
!3586 = !DILocation(line: 377, column: 11, scope: !3585, inlinedAt: !3414)
!3587 = !DILocation(line: 377, column: 6, scope: !3410, inlinedAt: !3414)
!3588 = !DILocation(line: 377, column: 32, scope: !3585, inlinedAt: !3414)
!3589 = !DILocation(line: 378, column: 6, scope: !3590, inlinedAt: !3414)
!3590 = distinct !DILexicalBlock(scope: !3410, file: !81, line: 378, column: 6)
!3591 = !DILocation(line: 378, column: 11, scope: !3590, inlinedAt: !3414)
!3592 = !DILocation(line: 378, column: 6, scope: !3410, inlinedAt: !3414)
!3593 = !DILocation(line: 378, column: 32, scope: !3590, inlinedAt: !3414)
!3594 = !DILocation(line: 379, column: 6, scope: !3595, inlinedAt: !3414)
!3595 = distinct !DILexicalBlock(scope: !3410, file: !81, line: 379, column: 6)
!3596 = !DILocation(line: 379, column: 11, scope: !3595, inlinedAt: !3414)
!3597 = !DILocation(line: 379, column: 6, scope: !3410, inlinedAt: !3414)
!3598 = !DILocation(line: 379, column: 33, scope: !3595, inlinedAt: !3414)
!3599 = !DILocation(line: 380, column: 6, scope: !3600, inlinedAt: !3414)
!3600 = distinct !DILexicalBlock(scope: !3410, file: !81, line: 380, column: 6)
!3601 = !DILocation(line: 380, column: 11, scope: !3600, inlinedAt: !3414)
!3602 = !DILocation(line: 380, column: 6, scope: !3410, inlinedAt: !3414)
!3603 = !DILocation(line: 380, column: 33, scope: !3600, inlinedAt: !3414)
!3604 = !DILocation(line: 381, column: 6, scope: !3605, inlinedAt: !3414)
!3605 = distinct !DILexicalBlock(scope: !3410, file: !81, line: 381, column: 6)
!3606 = !DILocation(line: 381, column: 11, scope: !3605, inlinedAt: !3414)
!3607 = !DILocation(line: 381, column: 6, scope: !3410, inlinedAt: !3414)
!3608 = !DILocation(line: 381, column: 33, scope: !3605, inlinedAt: !3414)
!3609 = !DILocation(line: 382, column: 2, scope: !3610, inlinedAt: !3414)
!3610 = distinct !DILexicalBlock(scope: !3611, file: !81, line: 382, column: 2)
!3611 = distinct !DILexicalBlock(scope: !3410, file: !81, line: 382, column: 2)
!3612 = !{i32 -2144079135, i32 -2144079106, i32 -2144079060, i32 -2144079002, i32 -2144078948, i32 -2144078894, i32 -2144078839, i32 -2144078808}
!3613 = !DILocation(line: 382, column: 2, scope: !3614, inlinedAt: !3414)
!3614 = distinct !DILexicalBlock(scope: !3615, file: !81, line: 382, column: 2)
!3615 = distinct !DILexicalBlock(scope: !3611, file: !81, line: 382, column: 2)
!3616 = !{i32 -2144078365, i32 -2144078358, i32 -2144078304, i32 -2144078273, i32 -2144078243}
!3617 = !DILocation(line: 382, column: 2, scope: !3615, inlinedAt: !3414)
!3618 = !DILocation(line: 386, column: 1, scope: !3410, inlinedAt: !3414)
!3619 = !DILocation(line: 547, column: 9, scope: !3391, inlinedAt: !3396)
!3620 = !DILocation(line: 549, column: 8, scope: !3621, inlinedAt: !3396)
!3621 = distinct !DILexicalBlock(scope: !3391, file: !81, line: 549, column: 7)
!3622 = !DILocation(line: 549, column: 7, scope: !3391, inlinedAt: !3396)
!3623 = !DILocation(line: 550, column: 4, scope: !3621, inlinedAt: !3396)
!3624 = !DILocation(line: 553, column: 33, scope: !3391, inlinedAt: !3396)
!3625 = !DILocation(line: 325, column: 6, scope: !3626, inlinedAt: !3408)
!3626 = distinct !DILexicalBlock(scope: !3404, file: !81, line: 325, column: 6)
!3627 = !DILocation(line: 325, column: 6, scope: !3404, inlinedAt: !3408)
!3628 = !DILocation(line: 326, column: 3, scope: !3626, inlinedAt: !3408)
!3629 = !DILocation(line: 332, column: 9, scope: !3404, inlinedAt: !3408)
!3630 = !DILocation(line: 332, column: 15, scope: !3404, inlinedAt: !3408)
!3631 = !DILocation(line: 332, column: 2, scope: !3404, inlinedAt: !3408)
!3632 = !DILocation(line: 336, column: 1, scope: !3404, inlinedAt: !3408)
!3633 = !DILocation(line: 553, column: 5, scope: !3391, inlinedAt: !3396)
!3634 = !DILocation(line: 553, column: 41, scope: !3391, inlinedAt: !3396)
!3635 = !DILocation(line: 554, column: 5, scope: !3391, inlinedAt: !3396)
!3636 = !DILocation(line: 554, column: 12, scope: !3391, inlinedAt: !3396)
!3637 = !DILocation(line: 448, column: 31, scope: !3386, inlinedAt: !3390)
!3638 = !DILocation(line: 448, column: 34, scope: !3386, inlinedAt: !3390)
!3639 = !DILocation(line: 448, column: 14, scope: !3386, inlinedAt: !3390)
!3640 = !DILocation(line: 450, column: 22, scope: !3386, inlinedAt: !3390)
!3641 = !DILocation(line: 450, column: 25, scope: !3386, inlinedAt: !3390)
!3642 = !DILocation(line: 450, column: 30, scope: !3386, inlinedAt: !3390)
!3643 = !DILocation(line: 450, column: 36, scope: !3386, inlinedAt: !3390)
!3644 = !DILocation(line: 450, column: 8, scope: !3386, inlinedAt: !3390)
!3645 = !DILocation(line: 450, column: 6, scope: !3386, inlinedAt: !3390)
!3646 = !DILocation(line: 451, column: 9, scope: !3386, inlinedAt: !3390)
!3647 = !DILocation(line: 552, column: 3, scope: !3391, inlinedAt: !3396)
!3648 = !DILocation(line: 557, column: 19, scope: !3393, inlinedAt: !3396)
!3649 = !DILocation(line: 557, column: 25, scope: !3393, inlinedAt: !3396)
!3650 = !DILocation(line: 557, column: 9, scope: !3393, inlinedAt: !3396)
!3651 = !DILocation(line: 557, column: 2, scope: !3393, inlinedAt: !3396)
!3652 = !DILocation(line: 558, column: 1, scope: !3393, inlinedAt: !3396)
!3653 = !DILocation(line: 66, column: 9, scope: !3382)
!3654 = !DILocation(line: 66, column: 7, scope: !3382)
!3655 = !DILocation(line: 67, column: 7, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3382, file: !3, line: 67, column: 6)
!3657 = !DILocation(line: 67, column: 6, scope: !3382)
!3658 = !DILocation(line: 68, column: 3, scope: !3656)
!3659 = !DILocation(line: 70, column: 28, scope: !3382)
!3660 = !DILocation(line: 70, column: 22, scope: !3382)
!3661 = !DILocation(line: 70, column: 34, scope: !3382)
!3662 = !DILocation(line: 70, column: 69, scope: !3382)
!3663 = !DILocation(line: 70, column: 21, scope: !3382)
!3664 = !DILocation(line: 70, column: 2, scope: !3382)
!3665 = !DILocation(line: 70, column: 8, scope: !3382)
!3666 = !DILocation(line: 70, column: 19, scope: !3382)
!3667 = !DILocation(line: 73, column: 9, scope: !3382)
!3668 = !DILocation(line: 73, column: 2, scope: !3382)
!3669 = !DILocation(line: 74, column: 1, scope: !3382)
!3670 = distinct !DISubprogram(name: "dma_fence_is_signaled", scope: !61, file: !61, line: 429, type: !151, scopeLine: 430, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3671 = !DILocalVariable(name: "fence", arg: 1, scope: !3670, file: !61, line: 429, type: !113)
!3672 = !DILocation(line: 429, column: 41, scope: !3670)
!3673 = !DILocation(line: 431, column: 45, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3670, file: !61, line: 431, column: 6)
!3675 = !DILocation(line: 431, column: 52, scope: !3674)
!3676 = !DILocation(line: 431, column: 6, scope: !3674)
!3677 = !DILocation(line: 431, column: 6, scope: !3670)
!3678 = !DILocation(line: 432, column: 3, scope: !3674)
!3679 = !DILocation(line: 434, column: 6, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3670, file: !61, line: 434, column: 6)
!3681 = !DILocation(line: 434, column: 13, scope: !3680)
!3682 = !DILocation(line: 434, column: 18, scope: !3680)
!3683 = !DILocation(line: 434, column: 27, scope: !3680)
!3684 = !DILocation(line: 434, column: 30, scope: !3680)
!3685 = !DILocation(line: 434, column: 37, scope: !3680)
!3686 = !DILocation(line: 434, column: 42, scope: !3680)
!3687 = !DILocation(line: 434, column: 51, scope: !3680)
!3688 = !DILocation(line: 434, column: 6, scope: !3670)
!3689 = !DILocation(line: 435, column: 20, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3680, file: !61, line: 434, column: 59)
!3691 = !DILocation(line: 435, column: 3, scope: !3690)
!3692 = !DILocation(line: 436, column: 3, scope: !3690)
!3693 = !DILocation(line: 439, column: 2, scope: !3670)
!3694 = !DILocation(line: 440, column: 1, scope: !3670)
!3695 = distinct !DISubprogram(name: "kvfree_call_rcu", scope: !3696, file: !3696, line: 45, type: !3697, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3696 = !DIFile(filename: "./include/linux/rcutiny.h", directory: "/home/lizy2001/genbc/linux")
!3697 = !DISubroutineType(types: !3698)
!3698 = !{null, !100, !212}
!3699 = !DILocalVariable(name: "head", arg: 1, scope: !3695, file: !3696, line: 45, type: !100)
!3700 = !DILocation(line: 45, column: 53, scope: !3695)
!3701 = !DILocalVariable(name: "func", arg: 2, scope: !3695, file: !3696, line: 45, type: !212)
!3702 = !DILocation(line: 45, column: 74, scope: !3695)
!3703 = !DILocation(line: 47, column: 6, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3695, file: !3696, line: 47, column: 6)
!3705 = !DILocation(line: 47, column: 6, scope: !3695)
!3706 = !DILocation(line: 48, column: 12, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3704, file: !3696, line: 47, column: 12)
!3708 = !DILocation(line: 48, column: 18, scope: !3707)
!3709 = !DILocation(line: 48, column: 3, scope: !3707)
!3710 = !DILocation(line: 49, column: 3, scope: !3707)
!3711 = !DILocation(line: 53, column: 2, scope: !3695)
!3712 = !DILocation(line: 53, column: 2, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3695, file: !3696, line: 53, column: 2)
!3714 = !DILocation(line: 53, column: 2, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3713, file: !3696, line: 53, column: 2)
!3716 = !DILocation(line: 54, column: 2, scope: !3695)
!3717 = !DILocation(line: 55, column: 18, scope: !3695)
!3718 = !DILocation(line: 55, column: 9, scope: !3695)
!3719 = !DILocation(line: 55, column: 2, scope: !3695)
!3720 = !DILocation(line: 56, column: 1, scope: !3695)
!3721 = distinct !DISubprogram(name: "dma_resv_add_shared_fence", scope: !3, file: !3, line: 263, type: !3722, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{null, !254, !113}
!3724 = !DILocalVariable(name: "s", arg: 1, scope: !3725, file: !397, line: 280, type: !3054)
!3725 = distinct !DISubprogram(name: "__seqprop_ww_mutex_ptr", scope: !397, file: !397, line: 280, type: !3726, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!3098, !3054}
!3728 = !DILocation(line: 280, column: 1, scope: !3725, inlinedAt: !3729)
!3729 = distinct !DILocation(line: 296, column: 2, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3721, file: !3, line: 296, column: 2)
!3731 = !DILocalVariable(name: "s", arg: 1, scope: !3732, file: !397, line: 280, type: !3735)
!3732 = distinct !DISubprogram(name: "__seqprop_ww_mutex_preemptible", scope: !397, file: !397, line: 280, type: !3733, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!139, !3735}
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3040)
!3737 = !DILocation(line: 280, column: 1, scope: !3732, inlinedAt: !3738)
!3738 = distinct !DILocation(line: 296, column: 2, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3730, file: !3, line: 296, column: 2)
!3740 = !DILocation(line: 280, column: 1, scope: !3725, inlinedAt: !3741)
!3741 = distinct !DILocation(line: 276, column: 2, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3721, file: !3, line: 276, column: 2)
!3743 = !DILocation(line: 280, column: 1, scope: !3732, inlinedAt: !3744)
!3744 = distinct !DILocation(line: 276, column: 2, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3742, file: !3, line: 276, column: 2)
!3746 = !DILocalVariable(name: "s", arg: 1, scope: !3747, file: !397, line: 280, type: !3735)
!3747 = distinct !DISubprogram(name: "__seqprop_ww_mutex_assert", scope: !397, file: !397, line: 280, type: !3748, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{null, !3735}
!3750 = !DILocation(line: 280, column: 1, scope: !3747, inlinedAt: !3751)
!3751 = distinct !DILocation(line: 276, column: 2, scope: !3742)
!3752 = !DILocalVariable(name: "obj", arg: 1, scope: !3721, file: !3, line: 263, type: !254)
!3753 = !DILocation(line: 263, column: 49, scope: !3721)
!3754 = !DILocalVariable(name: "fence", arg: 2, scope: !3721, file: !3, line: 263, type: !113)
!3755 = !DILocation(line: 263, column: 72, scope: !3721)
!3756 = !DILocalVariable(name: "fobj", scope: !3721, file: !3, line: 265, type: !91)
!3757 = !DILocation(line: 265, column: 24, scope: !3721)
!3758 = !DILocalVariable(name: "old", scope: !3721, file: !3, line: 266, type: !113)
!3759 = !DILocation(line: 266, column: 20, scope: !3721)
!3760 = !DILocalVariable(name: "i", scope: !3721, file: !3, line: 267, type: !7)
!3761 = !DILocation(line: 267, column: 15, scope: !3721)
!3762 = !DILocalVariable(name: "count", scope: !3721, file: !3, line: 267, type: !7)
!3763 = !DILocation(line: 267, column: 18, scope: !3721)
!3764 = !DILocation(line: 269, column: 16, scope: !3721)
!3765 = !DILocation(line: 269, column: 2, scope: !3721)
!3766 = !DILocation(line: 271, column: 2, scope: !3721)
!3767 = !DILocation(line: 271, column: 2, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3721, file: !3, line: 271, column: 2)
!3769 = !DILocation(line: 273, column: 27, scope: !3721)
!3770 = !DILocation(line: 273, column: 9, scope: !3721)
!3771 = !DILocation(line: 273, column: 7, scope: !3721)
!3772 = !DILocation(line: 274, column: 10, scope: !3721)
!3773 = !DILocation(line: 274, column: 16, scope: !3721)
!3774 = !DILocation(line: 274, column: 8, scope: !3721)
!3775 = !DILocation(line: 276, column: 2, scope: !3721)
!3776 = !DILocation(line: 276, column: 2, scope: !3742)
!3777 = !DILocation(line: 276, column: 2, scope: !3745)
!3778 = !{i32 -2142511132}
!3779 = !DILocation(line: 278, column: 9, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3721, file: !3, line: 278, column: 2)
!3781 = !DILocation(line: 278, column: 7, scope: !3780)
!3782 = !DILocation(line: 278, column: 14, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3780, file: !3, line: 278, column: 2)
!3784 = !DILocation(line: 278, column: 18, scope: !3783)
!3785 = !DILocation(line: 278, column: 16, scope: !3783)
!3786 = !DILocation(line: 278, column: 2, scope: !3780)
!3787 = !DILocation(line: 280, column: 9, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3789, file: !3, line: 280, column: 9)
!3789 = distinct !DILexicalBlock(scope: !3783, file: !3, line: 278, column: 30)
!3790 = !DILocation(line: 280, column: 9, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3788, file: !3, line: 280, column: 9)
!3792 = !DILocation(line: 280, column: 7, scope: !3789)
!3793 = !DILocation(line: 282, column: 7, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3789, file: !3, line: 282, column: 7)
!3795 = !DILocation(line: 282, column: 12, scope: !3794)
!3796 = !DILocation(line: 282, column: 23, scope: !3794)
!3797 = !DILocation(line: 282, column: 30, scope: !3794)
!3798 = !DILocation(line: 282, column: 20, scope: !3794)
!3799 = !DILocation(line: 282, column: 38, scope: !3794)
!3800 = !DILocation(line: 283, column: 29, scope: !3794)
!3801 = !DILocation(line: 283, column: 7, scope: !3794)
!3802 = !DILocation(line: 282, column: 7, scope: !3789)
!3803 = !DILocation(line: 284, column: 4, scope: !3794)
!3804 = !DILocation(line: 285, column: 2, scope: !3789)
!3805 = !DILocation(line: 278, column: 25, scope: !3783)
!3806 = !DILocation(line: 278, column: 2, scope: !3783)
!3807 = distinct !{!3807, !3786, !3808}
!3808 = !DILocation(line: 285, column: 2, scope: !3780)
!3809 = !DILocation(line: 287, column: 2, scope: !3721)
!3810 = !DILocation(line: 287, column: 2, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3812, file: !3, line: 287, column: 2)
!3812 = distinct !DILexicalBlock(scope: !3721, file: !3, line: 287, column: 2)
!3813 = !DILocation(line: 287, column: 2, scope: !3812)
!3814 = !DILocation(line: 287, column: 2, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3811, file: !3, line: 287, column: 2)
!3816 = !DILocation(line: 287, column: 2, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3815, file: !3, line: 287, column: 2)
!3818 = !DILocation(line: 287, column: 2, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3815, file: !3, line: 287, column: 2)
!3820 = !{i32 -2142509240, i32 -2142509211, i32 -2142509165, i32 -2142509107, i32 -2142509053, i32 -2142508999, i32 -2142508944, i32 -2142508913}
!3821 = !DILocation(line: 287, column: 2, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3823, file: !3, line: 287, column: 2)
!3823 = distinct !DILexicalBlock(scope: !3815, file: !3, line: 287, column: 2)
!3824 = !{i32 -2142508464, i32 -2142508457, i32 -2142508403, i32 -2142508372, i32 -2142508342}
!3825 = !DILocation(line: 287, column: 2, scope: !3823)
!3826 = !DILocation(line: 288, column: 6, scope: !3721)
!3827 = !DILocation(line: 289, column: 7, scope: !3721)
!3828 = !DILocation(line: 289, column: 2, scope: !3721)
!3829 = !DILabel(scope: !3721, name: "replace", file: !3, line: 291)
!3830 = !DILocation(line: 291, column: 1, scope: !3721)
!3831 = !DILocation(line: 292, column: 2, scope: !3721)
!3832 = !DILocation(line: 292, column: 2, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3721, file: !3, line: 292, column: 2)
!3834 = !DILocation(line: 292, column: 2, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3833, file: !3, line: 292, column: 2)
!3836 = !DILocation(line: 292, column: 2, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3835, file: !3, line: 292, column: 2)
!3838 = !DILocation(line: 292, column: 2, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3835, file: !3, line: 292, column: 2)
!3840 = !DILocation(line: 294, column: 2, scope: !3721)
!3841 = !DILocation(line: 294, column: 2, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3721, file: !3, line: 294, column: 2)
!3843 = !DILocation(line: 294, column: 2, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3842, file: !3, line: 294, column: 2)
!3845 = !DILocation(line: 294, column: 2, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3844, file: !3, line: 294, column: 2)
!3847 = !DILocation(line: 294, column: 2, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3844, file: !3, line: 294, column: 2)
!3849 = !{i32 -2142501158}
!3850 = !DILocation(line: 296, column: 2, scope: !3721)
!3851 = !DILocation(line: 296, column: 2, scope: !3730)
!3852 = !DILocation(line: 296, column: 2, scope: !3739)
!3853 = !{i32 -2142498508}
!3854 = !DILocation(line: 297, column: 16, scope: !3721)
!3855 = !DILocation(line: 297, column: 2, scope: !3721)
!3856 = !DILocation(line: 298, column: 1, scope: !3721)
!3857 = distinct !DISubprogram(name: "dma_fence_get", scope: !61, file: !61, line: 288, type: !3858, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!113, !113}
!3860 = !DILocalVariable(name: "fence", arg: 1, scope: !3857, file: !61, line: 288, type: !113)
!3861 = !DILocation(line: 288, column: 65, scope: !3857)
!3862 = !DILocation(line: 290, column: 6, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3857, file: !61, line: 290, column: 6)
!3864 = !DILocation(line: 290, column: 6, scope: !3857)
!3865 = !DILocation(line: 291, column: 13, scope: !3863)
!3866 = !DILocation(line: 291, column: 20, scope: !3863)
!3867 = !DILocation(line: 291, column: 3, scope: !3863)
!3868 = !DILocation(line: 292, column: 9, scope: !3857)
!3869 = !DILocation(line: 292, column: 2, scope: !3857)
!3870 = distinct !DISubprogram(name: "write_seqcount_t_begin", scope: !397, file: !397, line: 539, type: !3871, scopeLine: 540, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{null, !3098}
!3873 = !DILocalVariable(name: "s", arg: 1, scope: !3870, file: !397, line: 539, type: !3098)
!3874 = !DILocation(line: 539, column: 55, scope: !3870)
!3875 = !DILocation(line: 541, column: 32, scope: !3870)
!3876 = !DILocation(line: 541, column: 2, scope: !3870)
!3877 = !DILocation(line: 542, column: 1, scope: !3870)
!3878 = distinct !DISubprogram(name: "write_seqcount_t_end", scope: !397, file: !397, line: 558, type: !3871, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3879 = !DILocalVariable(name: "s", arg: 1, scope: !3878, file: !397, line: 558, type: !3098)
!3880 = !DILocation(line: 558, column: 53, scope: !3878)
!3881 = !DILocation(line: 560, column: 2, scope: !3878)
!3882 = !DILocation(line: 560, column: 2, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3878, file: !397, line: 560, column: 2)
!3884 = !DILocation(line: 561, column: 27, scope: !3878)
!3885 = !DILocation(line: 561, column: 2, scope: !3878)
!3886 = !DILocation(line: 562, column: 1, scope: !3878)
!3887 = distinct !DISubprogram(name: "dma_resv_add_excl_fence", scope: !3, file: !3, line: 308, type: !3722, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3888 = !DILocation(line: 280, column: 1, scope: !3732, inlinedAt: !3889)
!3889 = distinct !DILocation(line: 328, column: 2, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3891, file: !3, line: 328, column: 2)
!3891 = distinct !DILexicalBlock(scope: !3887, file: !3, line: 328, column: 2)
!3892 = !DILocation(line: 280, column: 1, scope: !3725, inlinedAt: !3893)
!3893 = distinct !DILocation(line: 328, column: 2, scope: !3891)
!3894 = !DILocation(line: 280, column: 1, scope: !3725, inlinedAt: !3895)
!3895 = distinct !DILocation(line: 323, column: 2, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3887, file: !3, line: 323, column: 2)
!3897 = !DILocation(line: 280, column: 1, scope: !3732, inlinedAt: !3898)
!3898 = distinct !DILocation(line: 323, column: 2, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3896, file: !3, line: 323, column: 2)
!3900 = !DILocation(line: 280, column: 1, scope: !3747, inlinedAt: !3901)
!3901 = distinct !DILocation(line: 323, column: 2, scope: !3896)
!3902 = !DILocalVariable(name: "obj", arg: 1, scope: !3887, file: !3, line: 308, type: !254)
!3903 = !DILocation(line: 308, column: 47, scope: !3887)
!3904 = !DILocalVariable(name: "fence", arg: 2, scope: !3887, file: !3, line: 308, type: !113)
!3905 = !DILocation(line: 308, column: 70, scope: !3887)
!3906 = !DILocalVariable(name: "old_fence", scope: !3887, file: !3, line: 310, type: !113)
!3907 = !DILocation(line: 310, column: 20, scope: !3887)
!3908 = !DILocation(line: 310, column: 50, scope: !3887)
!3909 = !DILocation(line: 310, column: 32, scope: !3887)
!3910 = !DILocalVariable(name: "old", scope: !3887, file: !3, line: 311, type: !91)
!3911 = !DILocation(line: 311, column: 24, scope: !3887)
!3912 = !DILocalVariable(name: "i", scope: !3887, file: !3, line: 312, type: !106)
!3913 = !DILocation(line: 312, column: 6, scope: !3887)
!3914 = !DILocation(line: 314, column: 2, scope: !3887)
!3915 = !DILocation(line: 314, column: 2, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3887, file: !3, line: 314, column: 2)
!3917 = !DILocation(line: 316, column: 26, scope: !3887)
!3918 = !DILocation(line: 316, column: 8, scope: !3887)
!3919 = !DILocation(line: 316, column: 6, scope: !3887)
!3920 = !DILocation(line: 317, column: 6, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3887, file: !3, line: 317, column: 6)
!3922 = !DILocation(line: 317, column: 6, scope: !3887)
!3923 = !DILocation(line: 318, column: 7, scope: !3921)
!3924 = !DILocation(line: 318, column: 12, scope: !3921)
!3925 = !DILocation(line: 318, column: 5, scope: !3921)
!3926 = !DILocation(line: 318, column: 3, scope: !3921)
!3927 = !DILocation(line: 320, column: 6, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3887, file: !3, line: 320, column: 6)
!3929 = !DILocation(line: 320, column: 6, scope: !3887)
!3930 = !DILocation(line: 321, column: 17, scope: !3928)
!3931 = !DILocation(line: 321, column: 3, scope: !3928)
!3932 = !DILocation(line: 323, column: 2, scope: !3887)
!3933 = !DILocation(line: 323, column: 2, scope: !3896)
!3934 = !DILocation(line: 323, column: 2, scope: !3899)
!3935 = !{i32 -2142495541}
!3936 = !DILocation(line: 325, column: 2, scope: !3887)
!3937 = !DILocation(line: 325, column: 2, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3887, file: !3, line: 325, column: 2)
!3939 = !DILocation(line: 325, column: 2, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3938, file: !3, line: 325, column: 2)
!3941 = !DILocation(line: 325, column: 2, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3940, file: !3, line: 325, column: 2)
!3943 = !DILocation(line: 325, column: 2, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3940, file: !3, line: 325, column: 2)
!3945 = !DILocation(line: 326, column: 6, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3887, file: !3, line: 326, column: 6)
!3947 = !DILocation(line: 326, column: 6, scope: !3887)
!3948 = !DILocation(line: 327, column: 3, scope: !3946)
!3949 = !DILocation(line: 327, column: 8, scope: !3946)
!3950 = !DILocation(line: 327, column: 21, scope: !3946)
!3951 = !DILocation(line: 328, column: 2, scope: !3887)
!3952 = !DILocation(line: 328, column: 2, scope: !3891)
!3953 = !DILocation(line: 328, column: 2, scope: !3890)
!3954 = !{i32 -2142490164}
!3955 = !DILocation(line: 331, column: 2, scope: !3887)
!3956 = !DILocation(line: 331, column: 10, scope: !3887)
!3957 = !DILocation(line: 332, column: 17, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3887, file: !3, line: 332, column: 17)
!3959 = !DILocation(line: 332, column: 17, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3958, file: !3, line: 332, column: 17)
!3961 = !DILocation(line: 332, column: 3, scope: !3887)
!3962 = distinct !{!3962, !3955, !3963}
!3963 = !DILocation(line: 333, column: 26, scope: !3887)
!3964 = !DILocation(line: 335, column: 16, scope: !3887)
!3965 = !DILocation(line: 335, column: 2, scope: !3887)
!3966 = !DILocation(line: 336, column: 1, scope: !3887)
!3967 = distinct !DISubprogram(name: "dma_resv_get_excl", scope: !93, file: !93, line: 242, type: !3968, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!113, !254}
!3970 = !DILocalVariable(name: "obj", arg: 1, scope: !3967, file: !93, line: 242, type: !254)
!3971 = !DILocation(line: 242, column: 36, scope: !3967)
!3972 = !DILocation(line: 244, column: 9, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3967, file: !93, line: 244, column: 9)
!3974 = !DILocation(line: 244, column: 9, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3973, file: !93, line: 244, column: 9)
!3976 = !DILocation(line: 244, column: 2, scope: !3967)
!3977 = distinct !DISubprogram(name: "dma_resv_copy_fences", scope: !3, file: !3, line: 346, type: !3978, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!168, !254, !254}
!3980 = !DILocation(line: 280, column: 1, scope: !3732, inlinedAt: !3981)
!3981 = distinct !DILocation(line: 410, column: 2, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 410, column: 2)
!3983 = distinct !DILexicalBlock(scope: !3977, file: !3, line: 410, column: 2)
!3984 = !DILocation(line: 280, column: 1, scope: !3725, inlinedAt: !3985)
!3985 = distinct !DILocation(line: 410, column: 2, scope: !3983)
!3986 = !DILocation(line: 280, column: 1, scope: !3725, inlinedAt: !3987)
!3987 = distinct !DILocation(line: 406, column: 2, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3977, file: !3, line: 406, column: 2)
!3989 = !DILocation(line: 280, column: 1, scope: !3732, inlinedAt: !3990)
!3990 = distinct !DILocation(line: 406, column: 2, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 406, column: 2)
!3992 = !DILocation(line: 280, column: 1, scope: !3747, inlinedAt: !3993)
!3993 = distinct !DILocation(line: 406, column: 2, scope: !3988)
!3994 = !DILocalVariable(name: "dst", arg: 1, scope: !3977, file: !3, line: 346, type: !254)
!3995 = !DILocation(line: 346, column: 43, scope: !3977)
!3996 = !DILocalVariable(name: "src", arg: 2, scope: !3977, file: !3, line: 346, type: !254)
!3997 = !DILocation(line: 346, column: 65, scope: !3977)
!3998 = !DILocalVariable(name: "src_list", scope: !3977, file: !3, line: 348, type: !91)
!3999 = !DILocation(line: 348, column: 24, scope: !3977)
!4000 = !DILocalVariable(name: "dst_list", scope: !3977, file: !3, line: 348, type: !91)
!4001 = !DILocation(line: 348, column: 35, scope: !3977)
!4002 = !DILocalVariable(name: "old", scope: !3977, file: !3, line: 349, type: !113)
!4003 = !DILocation(line: 349, column: 20, scope: !3977)
!4004 = !DILocalVariable(name: "new", scope: !3977, file: !3, line: 349, type: !113)
!4005 = !DILocation(line: 349, column: 26, scope: !3977)
!4006 = !DILocalVariable(name: "i", scope: !3977, file: !3, line: 350, type: !7)
!4007 = !DILocation(line: 350, column: 11, scope: !3977)
!4008 = !DILocation(line: 352, column: 2, scope: !3977)
!4009 = !DILocation(line: 352, column: 2, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !3977, file: !3, line: 352, column: 2)
!4011 = !DILocation(line: 639, column: 2, scope: !4012, inlinedAt: !4014)
!4012 = distinct !DISubprogram(name: "rcu_read_lock", scope: !4013, file: !4013, line: 637, type: !2631, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!4013 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/lizy2001/genbc/linux")
!4014 = distinct !DILocation(line: 354, column: 2, scope: !3977)
!4015 = !DILocalVariable(name: "________p1", scope: !4016, file: !3, line: 355, type: !91)
!4016 = distinct !DILexicalBlock(scope: !3977, file: !3, line: 355, column: 13)
!4017 = !DILocation(line: 355, column: 13, scope: !4016)
!4018 = !DILocation(line: 355, column: 13, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !4016, file: !3, line: 355, column: 13)
!4020 = !DILocation(line: 355, column: 13, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4019, file: !3, line: 355, column: 13)
!4022 = !DILocation(line: 355, column: 13, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !4016, file: !3, line: 355, column: 13)
!4024 = !DILocation(line: 355, column: 11, scope: !3977)
!4025 = !DILocation(line: 355, column: 2, scope: !3977)
!4026 = !DILabel(scope: !3977, name: "retry", file: !3, line: 357)
!4027 = !DILocation(line: 357, column: 1, scope: !3977)
!4028 = !DILocation(line: 358, column: 6, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !3977, file: !3, line: 358, column: 6)
!4030 = !DILocation(line: 358, column: 6, scope: !3977)
!4031 = !DILocalVariable(name: "shared_count", scope: !4032, file: !3, line: 359, type: !7)
!4032 = distinct !DILexicalBlock(scope: !4029, file: !3, line: 358, column: 16)
!4033 = !DILocation(line: 359, column: 12, scope: !4032)
!4034 = !DILocation(line: 359, column: 27, scope: !4032)
!4035 = !DILocation(line: 359, column: 37, scope: !4032)
!4036 = !DILocation(line: 361, column: 3, scope: !4032)
!4037 = !DILocation(line: 363, column: 34, scope: !4032)
!4038 = !DILocation(line: 363, column: 14, scope: !4032)
!4039 = !DILocation(line: 363, column: 12, scope: !4032)
!4040 = !DILocation(line: 364, column: 8, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4032, file: !3, line: 364, column: 7)
!4042 = !DILocation(line: 364, column: 7, scope: !4032)
!4043 = !DILocation(line: 365, column: 4, scope: !4041)
!4044 = !DILocation(line: 639, column: 2, scope: !4012, inlinedAt: !4045)
!4045 = distinct !DILocation(line: 367, column: 3, scope: !4032)
!4046 = !DILocalVariable(name: "________p1", scope: !4047, file: !3, line: 368, type: !91)
!4047 = distinct !DILexicalBlock(scope: !4032, file: !3, line: 368, column: 14)
!4048 = !DILocation(line: 368, column: 14, scope: !4047)
!4049 = !DILocation(line: 368, column: 14, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4047, file: !3, line: 368, column: 14)
!4051 = !DILocation(line: 368, column: 14, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4050, file: !3, line: 368, column: 14)
!4053 = !DILocation(line: 368, column: 14, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4047, file: !3, line: 368, column: 14)
!4055 = !DILocation(line: 368, column: 12, scope: !4032)
!4056 = !DILocation(line: 369, column: 8, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !4032, file: !3, line: 369, column: 7)
!4058 = !DILocation(line: 369, column: 17, scope: !4057)
!4059 = !DILocation(line: 369, column: 20, scope: !4057)
!4060 = !DILocation(line: 369, column: 30, scope: !4057)
!4061 = !DILocation(line: 369, column: 45, scope: !4057)
!4062 = !DILocation(line: 369, column: 43, scope: !4057)
!4063 = !DILocation(line: 369, column: 7, scope: !4032)
!4064 = !DILocation(line: 370, column: 10, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !4057, file: !3, line: 369, column: 59)
!4066 = !DILocation(line: 370, column: 4, scope: !4065)
!4067 = !DILocation(line: 371, column: 4, scope: !4065)
!4068 = !DILocation(line: 374, column: 3, scope: !4032)
!4069 = !DILocation(line: 374, column: 13, scope: !4032)
!4070 = !DILocation(line: 374, column: 26, scope: !4032)
!4071 = !DILocation(line: 375, column: 10, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !4032, file: !3, line: 375, column: 3)
!4073 = !DILocation(line: 375, column: 8, scope: !4072)
!4074 = !DILocation(line: 375, column: 15, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4072, file: !3, line: 375, column: 3)
!4076 = !DILocation(line: 375, column: 19, scope: !4075)
!4077 = !DILocation(line: 375, column: 29, scope: !4075)
!4078 = !DILocation(line: 375, column: 17, scope: !4075)
!4079 = !DILocation(line: 375, column: 3, scope: !4072)
!4080 = !DILocalVariable(name: "fence", scope: !4081, file: !3, line: 376, type: !113)
!4081 = distinct !DILexicalBlock(scope: !4075, file: !3, line: 375, column: 48)
!4082 = !DILocation(line: 376, column: 22, scope: !4081)
!4083 = !DILocalVariable(name: "________p1", scope: !4084, file: !3, line: 378, type: !113)
!4084 = distinct !DILexicalBlock(scope: !4081, file: !3, line: 378, column: 12)
!4085 = !DILocation(line: 378, column: 12, scope: !4084)
!4086 = !DILocation(line: 378, column: 12, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4084, file: !3, line: 378, column: 12)
!4088 = !DILocation(line: 378, column: 12, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4087, file: !3, line: 378, column: 12)
!4090 = !DILocation(line: 378, column: 12, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4084, file: !3, line: 378, column: 12)
!4092 = !DILocation(line: 378, column: 10, scope: !4081)
!4093 = !DILocation(line: 380, column: 11, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4081, file: !3, line: 379, column: 8)
!4095 = !DILocation(line: 380, column: 18, scope: !4094)
!4096 = !DILocation(line: 379, column: 8, scope: !4094)
!4097 = !DILocation(line: 379, column: 8, scope: !4081)
!4098 = !DILocation(line: 381, column: 5, scope: !4094)
!4099 = !DILocation(line: 383, column: 27, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4081, file: !3, line: 383, column: 8)
!4101 = !DILocation(line: 383, column: 9, scope: !4100)
!4102 = !DILocation(line: 383, column: 8, scope: !4081)
!4103 = !DILocation(line: 384, column: 24, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4100, file: !3, line: 383, column: 35)
!4105 = !DILocation(line: 384, column: 5, scope: !4104)
!4106 = !DILocalVariable(name: "________p1", scope: !4107, file: !3, line: 385, type: !91)
!4107 = distinct !DILexicalBlock(scope: !4104, file: !3, line: 385, column: 16)
!4108 = !DILocation(line: 385, column: 16, scope: !4107)
!4109 = !DILocation(line: 385, column: 16, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4107, file: !3, line: 385, column: 16)
!4111 = !DILocation(line: 385, column: 16, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4110, file: !3, line: 385, column: 16)
!4113 = !DILocation(line: 385, column: 16, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4107, file: !3, line: 385, column: 16)
!4115 = !DILocation(line: 385, column: 14, scope: !4104)
!4116 = !DILocation(line: 386, column: 5, scope: !4104)
!4117 = !DILocation(line: 389, column: 30, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4081, file: !3, line: 389, column: 8)
!4119 = !DILocation(line: 389, column: 8, scope: !4118)
!4120 = !DILocation(line: 389, column: 8, scope: !4081)
!4121 = !DILocation(line: 390, column: 19, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4118, file: !3, line: 389, column: 38)
!4123 = !DILocation(line: 390, column: 5, scope: !4122)
!4124 = !DILocation(line: 391, column: 5, scope: !4122)
!4125 = !DILocation(line: 394, column: 4, scope: !4081)
!4126 = !DILocalVariable(name: "_r_a_p__v", scope: !4127, file: !3, line: 394, type: !211)
!4127 = distinct !DILexicalBlock(scope: !4081, file: !3, line: 394, column: 4)
!4128 = !DILocation(line: 394, column: 4, scope: !4127)
!4129 = !DILocation(line: 394, column: 4, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4127, file: !3, line: 394, column: 4)
!4131 = !DILocation(line: 394, column: 4, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4130, file: !3, line: 394, column: 4)
!4133 = !DILocation(line: 394, column: 4, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4132, file: !3, line: 394, column: 4)
!4135 = !DILocation(line: 394, column: 4, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4132, file: !3, line: 394, column: 4)
!4137 = !DILocation(line: 394, column: 4, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4130, file: !3, line: 394, column: 4)
!4139 = !DILocation(line: 394, column: 4, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4138, file: !3, line: 394, column: 4)
!4141 = !{i32 -2142474547}
!4142 = !DILocation(line: 394, column: 4, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4138, file: !3, line: 394, column: 4)
!4144 = !DILocation(line: 394, column: 4, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4143, file: !3, line: 394, column: 4)
!4146 = !DILocation(line: 394, column: 4, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4143, file: !3, line: 394, column: 4)
!4148 = !DILocation(line: 395, column: 3, scope: !4081)
!4149 = !DILocation(line: 375, column: 43, scope: !4075)
!4150 = !DILocation(line: 375, column: 3, scope: !4075)
!4151 = distinct !{!4151, !4079, !4152}
!4152 = !DILocation(line: 395, column: 3, scope: !4072)
!4153 = !DILocation(line: 396, column: 2, scope: !4032)
!4154 = !DILocation(line: 397, column: 12, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4029, file: !3, line: 396, column: 9)
!4156 = !DILocation(line: 400, column: 32, scope: !3977)
!4157 = !DILocation(line: 400, column: 37, scope: !3977)
!4158 = !DILocation(line: 400, column: 8, scope: !3977)
!4159 = !DILocation(line: 400, column: 6, scope: !3977)
!4160 = !DILocation(line: 401, column: 2, scope: !3977)
!4161 = !DILocation(line: 403, column: 31, scope: !3977)
!4162 = !DILocation(line: 403, column: 13, scope: !3977)
!4163 = !DILocation(line: 403, column: 11, scope: !3977)
!4164 = !DILocation(line: 404, column: 26, scope: !3977)
!4165 = !DILocation(line: 404, column: 8, scope: !3977)
!4166 = !DILocation(line: 404, column: 6, scope: !3977)
!4167 = !DILocation(line: 406, column: 2, scope: !3977)
!4168 = !DILocation(line: 406, column: 2, scope: !3988)
!4169 = !DILocation(line: 406, column: 2, scope: !3991)
!4170 = !{i32 -2142465445}
!4171 = !DILocation(line: 408, column: 2, scope: !3977)
!4172 = !DILocation(line: 408, column: 2, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !3977, file: !3, line: 408, column: 2)
!4174 = !DILocation(line: 408, column: 2, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4173, file: !3, line: 408, column: 2)
!4176 = !DILocation(line: 408, column: 2, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4175, file: !3, line: 408, column: 2)
!4178 = !DILocation(line: 408, column: 2, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4175, file: !3, line: 408, column: 2)
!4180 = !DILocation(line: 409, column: 2, scope: !3977)
!4181 = !DILocation(line: 409, column: 2, scope: !4182)
!4182 = distinct !DILexicalBlock(scope: !3977, file: !3, line: 409, column: 2)
!4183 = !DILocation(line: 409, column: 2, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 409, column: 2)
!4185 = !DILocation(line: 409, column: 2, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4184, file: !3, line: 409, column: 2)
!4187 = !DILocation(line: 409, column: 2, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4184, file: !3, line: 409, column: 2)
!4189 = !DILocation(line: 410, column: 2, scope: !3977)
!4190 = !DILocation(line: 410, column: 2, scope: !3983)
!4191 = !DILocation(line: 410, column: 2, scope: !3982)
!4192 = !{i32 -2142458586}
!4193 = !DILocation(line: 412, column: 21, scope: !3977)
!4194 = !DILocation(line: 412, column: 2, scope: !3977)
!4195 = !DILocation(line: 413, column: 16, scope: !3977)
!4196 = !DILocation(line: 413, column: 2, scope: !3977)
!4197 = !DILocation(line: 415, column: 2, scope: !3977)
!4198 = !DILocation(line: 416, column: 1, scope: !3977)
!4199 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !4013, file: !4013, line: 689, type: !2631, scopeLine: 690, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!4200 = !DILocation(line: 691, column: 2, scope: !4199)
!4201 = !DILocation(line: 691, column: 2, scope: !4202)
!4202 = distinct !DILexicalBlock(scope: !4199, file: !4013, line: 691, column: 2)
!4203 = !DILocation(line: 694, column: 2, scope: !4199)
!4204 = !DILocation(line: 695, column: 2, scope: !4199)
!4205 = !DILocation(line: 695, column: 2, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4199, file: !4013, line: 695, column: 2)
!4207 = !DILocation(line: 696, column: 1, scope: !4199)
!4208 = distinct !DISubprogram(name: "test_bit", scope: !4209, file: !4209, line: 132, type: !4210, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!4209 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!139, !158, !4212}
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4214)
!4214 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !192)
!4215 = !DILocalVariable(name: "nr", arg: 1, scope: !4216, file: !4217, line: 210, type: !158)
!4216 = distinct !DISubprogram(name: "variable_test_bit", scope: !4217, file: !4217, line: 210, type: !4210, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!4217 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4218 = !DILocation(line: 210, column: 52, scope: !4216, inlinedAt: !4219)
!4219 = distinct !DILocation(line: 135, column: 9, scope: !4208)
!4220 = !DILocalVariable(name: "addr", arg: 2, scope: !4216, file: !4217, line: 210, type: !4212)
!4221 = !DILocation(line: 210, column: 86, scope: !4216, inlinedAt: !4219)
!4222 = !DILocalVariable(name: "oldbit", scope: !4216, file: !4217, line: 212, type: !139)
!4223 = !DILocation(line: 212, column: 7, scope: !4216, inlinedAt: !4219)
!4224 = !DILocalVariable(name: "nr", arg: 1, scope: !4225, file: !4217, line: 204, type: !158)
!4225 = distinct !DISubprogram(name: "constant_test_bit", scope: !4217, file: !4217, line: 204, type: !4210, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!4226 = !DILocation(line: 204, column: 52, scope: !4225, inlinedAt: !4227)
!4227 = distinct !DILocation(line: 135, column: 9, scope: !4208)
!4228 = !DILocalVariable(name: "addr", arg: 2, scope: !4225, file: !4217, line: 204, type: !4212)
!4229 = !DILocation(line: 204, column: 86, scope: !4225, inlinedAt: !4227)
!4230 = !DILocalVariable(name: "v", arg: 1, scope: !4231, file: !4232, line: 69, type: !4235)
!4231 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4232, file: !4232, line: 69, type: !4233, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!4232 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4233 = !DISubroutineType(types: !4234)
!4234 = !{null, !4235, !1340}
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4237)
!4237 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4238 = !DILocation(line: 69, column: 73, scope: !4231, inlinedAt: !4239)
!4239 = distinct !DILocation(line: 134, column: 2, scope: !4208)
!4240 = !DILocalVariable(name: "size", arg: 2, scope: !4231, file: !4232, line: 69, type: !1340)
!4241 = !DILocation(line: 69, column: 83, scope: !4231, inlinedAt: !4239)
!4242 = !DILocalVariable(name: "nr", arg: 1, scope: !4208, file: !4209, line: 132, type: !158)
!4243 = !DILocation(line: 132, column: 34, scope: !4208)
!4244 = !DILocalVariable(name: "addr", arg: 2, scope: !4208, file: !4209, line: 132, type: !4212)
!4245 = !DILocation(line: 132, column: 68, scope: !4208)
!4246 = !DILocation(line: 134, column: 25, scope: !4208)
!4247 = !DILocation(line: 134, column: 32, scope: !4208)
!4248 = !DILocation(line: 134, column: 30, scope: !4208)
!4249 = !DILocation(line: 71, column: 19, scope: !4231, inlinedAt: !4239)
!4250 = !DILocation(line: 71, column: 22, scope: !4231, inlinedAt: !4239)
!4251 = !DILocation(line: 71, column: 2, scope: !4231, inlinedAt: !4239)
!4252 = !DILocation(line: 72, column: 2, scope: !4231, inlinedAt: !4239)
!4253 = !DILocation(line: 135, column: 9, scope: !4208)
!4254 = !DILocation(line: 206, column: 19, scope: !4225, inlinedAt: !4227)
!4255 = !DILocation(line: 206, column: 22, scope: !4225, inlinedAt: !4227)
!4256 = !DILocation(line: 206, column: 15, scope: !4225, inlinedAt: !4227)
!4257 = !DILocation(line: 207, column: 4, scope: !4225, inlinedAt: !4227)
!4258 = !DILocation(line: 207, column: 9, scope: !4225, inlinedAt: !4227)
!4259 = !DILocation(line: 207, column: 12, scope: !4225, inlinedAt: !4227)
!4260 = !DILocation(line: 206, column: 44, scope: !4225, inlinedAt: !4227)
!4261 = !DILocation(line: 207, column: 37, scope: !4225, inlinedAt: !4227)
!4262 = !DILocation(line: 217, column: 33, scope: !4216, inlinedAt: !4219)
!4263 = !DILocation(line: 217, column: 46, scope: !4216, inlinedAt: !4219)
!4264 = !DILocation(line: 214, column: 2, scope: !4216, inlinedAt: !4219)
!4265 = !{i32 -2147140626, i32 -2147140566}
!4266 = !DILocation(line: 219, column: 9, scope: !4216, inlinedAt: !4219)
!4267 = !DILocation(line: 135, column: 2, scope: !4208)
!4268 = distinct !DISubprogram(name: "dma_fence_get_rcu", scope: !61, file: !61, line: 302, type: !3858, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!4269 = !DILocalVariable(name: "fence", arg: 1, scope: !4268, file: !61, line: 302, type: !113)
!4270 = !DILocation(line: 302, column: 69, scope: !4268)
!4271 = !DILocation(line: 304, column: 28, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4268, file: !61, line: 304, column: 6)
!4273 = !DILocation(line: 304, column: 35, scope: !4272)
!4274 = !DILocation(line: 304, column: 6, scope: !4272)
!4275 = !DILocation(line: 304, column: 6, scope: !4268)
!4276 = !DILocation(line: 305, column: 10, scope: !4272)
!4277 = !DILocation(line: 305, column: 3, scope: !4272)
!4278 = !DILocation(line: 307, column: 3, scope: !4272)
!4279 = !DILocation(line: 308, column: 1, scope: !4268)
!4280 = distinct !DISubprogram(name: "dma_fence_get_rcu_safe", scope: !61, file: !61, line: 327, type: !4281, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{!113, !4283}
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!4284 = !DILocalVariable(name: "fencep", arg: 1, scope: !4280, file: !61, line: 327, type: !4283)
!4285 = !DILocation(line: 327, column: 49, scope: !4280)
!4286 = !DILocation(line: 329, column: 2, scope: !4280)
!4287 = !DILocalVariable(name: "fence", scope: !4288, file: !61, line: 330, type: !113)
!4288 = distinct !DILexicalBlock(scope: !4280, file: !61, line: 329, column: 5)
!4289 = !DILocation(line: 330, column: 21, scope: !4288)
!4290 = !DILocalVariable(name: "________p1", scope: !4291, file: !61, line: 332, type: !113)
!4291 = distinct !DILexicalBlock(scope: !4288, file: !61, line: 332, column: 11)
!4292 = !DILocation(line: 332, column: 11, scope: !4291)
!4293 = !DILocation(line: 332, column: 11, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4291, file: !61, line: 332, column: 11)
!4295 = !DILocation(line: 332, column: 11, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4294, file: !61, line: 332, column: 11)
!4297 = !DILocation(line: 332, column: 11, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4291, file: !61, line: 332, column: 11)
!4299 = !DILocation(line: 332, column: 9, scope: !4288)
!4300 = !DILocation(line: 333, column: 8, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !4288, file: !61, line: 333, column: 7)
!4302 = !DILocation(line: 333, column: 7, scope: !4288)
!4303 = !DILocation(line: 334, column: 4, scope: !4301)
!4304 = !DILocation(line: 336, column: 26, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4288, file: !61, line: 336, column: 7)
!4306 = !DILocation(line: 336, column: 8, scope: !4305)
!4307 = !DILocation(line: 336, column: 7, scope: !4288)
!4308 = !DILocation(line: 337, column: 4, scope: !4305)
!4309 = !DILocation(line: 353, column: 7, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4288, file: !61, line: 353, column: 7)
!4311 = !DILocalVariable(name: "_________p1", scope: !4312, file: !61, line: 353, type: !113)
!4312 = distinct !DILexicalBlock(scope: !4310, file: !61, line: 353, column: 16)
!4313 = !DILocation(line: 353, column: 16, scope: !4312)
!4314 = !DILocation(line: 353, column: 16, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4312, file: !61, line: 353, column: 16)
!4316 = !DILocation(line: 353, column: 16, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4315, file: !61, line: 353, column: 16)
!4318 = !DILocation(line: 353, column: 13, scope: !4310)
!4319 = !DILocation(line: 353, column: 7, scope: !4288)
!4320 = !DILocation(line: 354, column: 11, scope: !4310)
!4321 = !DILocation(line: 354, column: 4, scope: !4310)
!4322 = !DILocation(line: 356, column: 17, scope: !4288)
!4323 = !DILocation(line: 356, column: 3, scope: !4288)
!4324 = !DILocation(line: 357, column: 2, scope: !4288)
!4325 = distinct !{!4325, !4286, !4326}
!4326 = !DILocation(line: 357, column: 12, scope: !4280)
!4327 = !DILocation(line: 358, column: 1, scope: !4280)
!4328 = distinct !DISubprogram(name: "dma_resv_get_fences_rcu", scope: !3, file: !3, line: 432, type: !4329, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !132)
!4329 = !DISubroutineType(types: !4330)
!4330 = !{!168, !254, !4283, !1119, !4331}
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4332 = !DILocation(line: 280, column: 1, scope: !3725, inlinedAt: !4333)
!4333 = distinct !DILocation(line: 492, column: 28, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4335, file: !3, line: 492, column: 7)
!4335 = distinct !DILexicalBlock(scope: !4328, file: !3, line: 442, column: 5)
!4336 = !DILocalVariable(name: "s", arg: 1, scope: !4337, file: !397, line: 280, type: !3735)
!4337 = distinct !DISubprogram(name: "__seqprop_ww_mutex_sequence", scope: !397, file: !397, line: 280, type: !4338, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!4338 = !DISubroutineType(types: !4339)
!4339 = !{!7, !3735}
!4340 = !DILocation(line: 280, column: 1, scope: !4337, inlinedAt: !4341)
!4341 = distinct !DILocation(line: 450, column: 9, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4343, file: !3, line: 450, column: 9)
!4343 = distinct !DILexicalBlock(scope: !4344, file: !3, line: 450, column: 9)
!4344 = distinct !DILexicalBlock(scope: !4335, file: !3, line: 450, column: 9)
!4345 = !DILocalVariable(name: "seq", scope: !4337, file: !397, line: 280, type: !7)
!4346 = !DILocalVariable(name: "obj", arg: 1, scope: !4328, file: !3, line: 432, type: !254)
!4347 = !DILocation(line: 432, column: 46, scope: !4328)
!4348 = !DILocalVariable(name: "pfence_excl", arg: 2, scope: !4328, file: !3, line: 433, type: !4283)
!4349 = !DILocation(line: 433, column: 27, scope: !4328)
!4350 = !DILocalVariable(name: "pshared_count", arg: 3, scope: !4328, file: !3, line: 434, type: !1119)
!4351 = !DILocation(line: 434, column: 18, scope: !4328)
!4352 = !DILocalVariable(name: "pshared", arg: 4, scope: !4328, file: !3, line: 435, type: !4331)
!4353 = !DILocation(line: 435, column: 28, scope: !4328)
!4354 = !DILocalVariable(name: "shared", scope: !4328, file: !3, line: 437, type: !4283)
!4355 = !DILocation(line: 437, column: 21, scope: !4328)
!4356 = !DILocalVariable(name: "fence_excl", scope: !4328, file: !3, line: 438, type: !113)
!4357 = !DILocation(line: 438, column: 20, scope: !4328)
!4358 = !DILocalVariable(name: "shared_count", scope: !4328, file: !3, line: 439, type: !7)
!4359 = !DILocation(line: 439, column: 15, scope: !4328)
!4360 = !DILocalVariable(name: "ret", scope: !4328, file: !3, line: 440, type: !168)
!4361 = !DILocation(line: 440, column: 6, scope: !4328)
!4362 = !DILocation(line: 442, column: 2, scope: !4328)
!4363 = !DILocalVariable(name: "fobj", scope: !4335, file: !3, line: 443, type: !91)
!4364 = !DILocation(line: 443, column: 25, scope: !4335)
!4365 = !DILocalVariable(name: "i", scope: !4335, file: !3, line: 444, type: !7)
!4366 = !DILocation(line: 444, column: 16, scope: !4335)
!4367 = !DILocalVariable(name: "seq", scope: !4335, file: !3, line: 444, type: !7)
!4368 = !DILocation(line: 444, column: 19, scope: !4335)
!4369 = !DILocalVariable(name: "sz", scope: !4335, file: !3, line: 445, type: !1340)
!4370 = !DILocation(line: 445, column: 10, scope: !4335)
!4371 = !DILocation(line: 447, column: 20, scope: !4335)
!4372 = !DILocation(line: 447, column: 16, scope: !4335)
!4373 = !DILocation(line: 639, column: 2, scope: !4012, inlinedAt: !4374)
!4374 = distinct !DILocation(line: 449, column: 3, scope: !4335)
!4375 = !DILocalVariable(name: "seq", scope: !4343, file: !3, line: 450, type: !7)
!4376 = !DILocation(line: 450, column: 9, scope: !4343)
!4377 = !DILocalVariable(name: "seq", scope: !4342, file: !3, line: 450, type: !7)
!4378 = !DILocation(line: 450, column: 9, scope: !4342)
!4379 = !DILocation(line: 280, column: 1, scope: !4380, inlinedAt: !4341)
!4380 = distinct !DILexicalBlock(scope: !4337, file: !397, line: 280, column: 1)
!4381 = !DILocation(line: 280, column: 1, scope: !4382, inlinedAt: !4341)
!4382 = distinct !DILexicalBlock(scope: !4380, file: !397, line: 280, column: 1)
!4383 = !DILocation(line: 280, column: 1, scope: !4384, inlinedAt: !4341)
!4384 = distinct !DILexicalBlock(scope: !4337, file: !397, line: 280, column: 1)
!4385 = !DILocation(line: 13, column: 2, scope: !4386, inlinedAt: !4388)
!4386 = distinct !DISubprogram(name: "rep_nop", scope: !4387, file: !4387, line: 11, type: !2631, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!4387 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/lizy2001/genbc/linux")
!4388 = distinct !DILocation(line: 18, column: 2, scope: !4389, inlinedAt: !4390)
!4389 = distinct !DISubprogram(name: "cpu_relax", scope: !4387, file: !4387, line: 16, type: !2631, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!4390 = distinct !DILocation(line: 450, column: 9, scope: !4342)
!4391 = !{i32 1764291}
!4392 = distinct !{!4392, !4378, !4378}
!4393 = !{i32 -2142456734}
!4394 = !DILocation(line: 450, column: 9, scope: !4335)
!4395 = !DILocation(line: 450, column: 9, scope: !4344)
!4396 = !DILocation(line: 450, column: 7, scope: !4335)
!4397 = !DILocalVariable(name: "________p1", scope: !4398, file: !3, line: 452, type: !113)
!4398 = distinct !DILexicalBlock(scope: !4335, file: !3, line: 452, column: 16)
!4399 = !DILocation(line: 452, column: 16, scope: !4398)
!4400 = !DILocation(line: 452, column: 16, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4398, file: !3, line: 452, column: 16)
!4402 = !DILocation(line: 452, column: 16, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4401, file: !3, line: 452, column: 16)
!4404 = !DILocation(line: 452, column: 16, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4398, file: !3, line: 452, column: 16)
!4406 = !DILocation(line: 452, column: 14, scope: !4335)
!4407 = !DILocation(line: 453, column: 7, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4335, file: !3, line: 453, column: 7)
!4409 = !DILocation(line: 453, column: 18, scope: !4408)
!4410 = !DILocation(line: 453, column: 40, scope: !4408)
!4411 = !DILocation(line: 453, column: 22, scope: !4408)
!4412 = !DILocation(line: 453, column: 7, scope: !4335)
!4413 = !DILocation(line: 454, column: 4, scope: !4408)
!4414 = !DILocalVariable(name: "________p1", scope: !4415, file: !3, line: 456, type: !91)
!4415 = distinct !DILexicalBlock(scope: !4335, file: !3, line: 456, column: 10)
!4416 = !DILocation(line: 456, column: 10, scope: !4415)
!4417 = !DILocation(line: 456, column: 10, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4415, file: !3, line: 456, column: 10)
!4419 = !DILocation(line: 456, column: 10, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4418, file: !3, line: 456, column: 10)
!4421 = !DILocation(line: 456, column: 10, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4415, file: !3, line: 456, column: 10)
!4423 = !DILocation(line: 456, column: 8, scope: !4335)
!4424 = !DILocation(line: 457, column: 7, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4335, file: !3, line: 457, column: 7)
!4426 = !DILocation(line: 457, column: 7, scope: !4335)
!4427 = !DILocation(line: 458, column: 28, scope: !4425)
!4428 = !DILocation(line: 458, column: 34, scope: !4425)
!4429 = !DILocation(line: 458, column: 26, scope: !4425)
!4430 = !DILocation(line: 458, column: 7, scope: !4425)
!4431 = !DILocation(line: 458, column: 4, scope: !4425)
!4432 = !DILocation(line: 460, column: 8, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4335, file: !3, line: 460, column: 7)
!4434 = !DILocation(line: 460, column: 20, scope: !4433)
!4435 = !DILocation(line: 460, column: 23, scope: !4433)
!4436 = !DILocation(line: 460, column: 7, scope: !4335)
!4437 = !DILocation(line: 461, column: 7, scope: !4433)
!4438 = !DILocation(line: 461, column: 4, scope: !4433)
!4439 = !DILocation(line: 463, column: 7, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4335, file: !3, line: 463, column: 7)
!4441 = !DILocation(line: 463, column: 7, scope: !4335)
!4442 = !DILocalVariable(name: "nshared", scope: !4443, file: !3, line: 464, type: !4283)
!4443 = distinct !DILexicalBlock(scope: !4440, file: !3, line: 463, column: 11)
!4444 = !DILocation(line: 464, column: 23, scope: !4443)
!4445 = !DILocation(line: 466, column: 23, scope: !4443)
!4446 = !DILocation(line: 466, column: 31, scope: !4443)
!4447 = !DILocation(line: 466, column: 14, scope: !4443)
!4448 = !DILocation(line: 466, column: 12, scope: !4443)
!4449 = !DILocation(line: 468, column: 9, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4443, file: !3, line: 468, column: 8)
!4451 = !DILocation(line: 468, column: 8, scope: !4443)
!4452 = !DILocation(line: 469, column: 5, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4450, file: !3, line: 468, column: 18)
!4454 = !DILocation(line: 471, column: 19, scope: !4453)
!4455 = !DILocation(line: 471, column: 5, scope: !4453)
!4456 = !DILocation(line: 472, column: 16, scope: !4453)
!4457 = !DILocation(line: 474, column: 24, scope: !4453)
!4458 = !DILocation(line: 474, column: 32, scope: !4453)
!4459 = !DILocation(line: 474, column: 15, scope: !4453)
!4460 = !DILocation(line: 474, column: 13, scope: !4453)
!4461 = !DILocation(line: 475, column: 9, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4453, file: !3, line: 475, column: 9)
!4463 = !DILocation(line: 475, column: 9, scope: !4453)
!4464 = !DILocation(line: 476, column: 15, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4462, file: !3, line: 475, column: 18)
!4466 = !DILocation(line: 476, column: 13, scope: !4465)
!4467 = !DILocation(line: 477, column: 6, scope: !4465)
!4468 = !DILocation(line: 480, column: 9, scope: !4453)
!4469 = !DILocation(line: 481, column: 5, scope: !4453)
!4470 = !DILocation(line: 483, column: 13, scope: !4443)
!4471 = !DILocation(line: 483, column: 11, scope: !4443)
!4472 = !DILocation(line: 484, column: 19, scope: !4443)
!4473 = !DILocation(line: 484, column: 26, scope: !4443)
!4474 = !DILocation(line: 484, column: 32, scope: !4443)
!4475 = !DILocation(line: 484, column: 17, scope: !4443)
!4476 = !DILocation(line: 485, column: 11, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4443, file: !3, line: 485, column: 4)
!4478 = !DILocation(line: 485, column: 9, scope: !4477)
!4479 = !DILocation(line: 485, column: 16, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4477, file: !3, line: 485, column: 4)
!4481 = !DILocation(line: 485, column: 20, scope: !4480)
!4482 = !DILocation(line: 485, column: 18, scope: !4480)
!4483 = !DILocation(line: 485, column: 4, scope: !4477)
!4484 = !DILocalVariable(name: "________p1", scope: !4485, file: !3, line: 486, type: !113)
!4485 = distinct !DILexicalBlock(scope: !4486, file: !3, line: 486, column: 17)
!4486 = distinct !DILexicalBlock(scope: !4480, file: !3, line: 485, column: 39)
!4487 = !DILocation(line: 486, column: 17, scope: !4485)
!4488 = !DILocation(line: 486, column: 17, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4485, file: !3, line: 486, column: 17)
!4490 = !DILocation(line: 486, column: 17, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4489, file: !3, line: 486, column: 17)
!4492 = !DILocation(line: 486, column: 17, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4485, file: !3, line: 486, column: 17)
!4494 = !DILocation(line: 486, column: 5, scope: !4486)
!4495 = !DILocation(line: 486, column: 12, scope: !4486)
!4496 = !DILocation(line: 486, column: 15, scope: !4486)
!4497 = !DILocation(line: 487, column: 28, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4486, file: !3, line: 487, column: 9)
!4499 = !DILocation(line: 487, column: 35, scope: !4498)
!4500 = !DILocation(line: 487, column: 10, scope: !4498)
!4501 = !DILocation(line: 487, column: 9, scope: !4486)
!4502 = !DILocation(line: 488, column: 6, scope: !4498)
!4503 = !DILocation(line: 489, column: 4, scope: !4486)
!4504 = !DILocation(line: 485, column: 34, scope: !4480)
!4505 = !DILocation(line: 485, column: 4, scope: !4480)
!4506 = distinct !{!4506, !4483, !4507}
!4507 = !DILocation(line: 489, column: 4, scope: !4477)
!4508 = !DILocation(line: 490, column: 3, scope: !4443)
!4509 = !DILocation(line: 492, column: 7, scope: !4334)
!4510 = !DILocation(line: 492, column: 12, scope: !4334)
!4511 = !DILocation(line: 492, column: 9, scope: !4334)
!4512 = !DILocation(line: 492, column: 25, scope: !4334)
!4513 = !DILocation(line: 492, column: 28, scope: !4334)
!4514 = !DILocation(line: 492, column: 7, scope: !4335)
!4515 = !DILocation(line: 493, column: 4, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4334, file: !3, line: 492, column: 65)
!4517 = !DILocation(line: 493, column: 12, scope: !4516)
!4518 = !DILocation(line: 494, column: 19, scope: !4516)
!4519 = !DILocation(line: 494, column: 26, scope: !4516)
!4520 = !DILocation(line: 494, column: 5, scope: !4516)
!4521 = distinct !{!4521, !4515, !4522}
!4522 = !DILocation(line: 494, column: 28, scope: !4516)
!4523 = !DILocation(line: 495, column: 18, scope: !4516)
!4524 = !DILocation(line: 495, column: 4, scope: !4516)
!4525 = !DILocation(line: 496, column: 4, scope: !4516)
!4526 = !DILocation(line: 499, column: 7, scope: !4335)
!4527 = !DILocation(line: 499, column: 3, scope: !4335)
!4528 = !DILabel(scope: !4335, name: "unlock", file: !3, line: 500)
!4529 = !DILocation(line: 500, column: 1, scope: !4335)
!4530 = !DILocation(line: 501, column: 3, scope: !4335)
!4531 = !DILocation(line: 502, column: 2, scope: !4335)
!4532 = !DILocation(line: 502, column: 11, scope: !4328)
!4533 = distinct !{!4533, !4362, !4534}
!4534 = !DILocation(line: 502, column: 14, scope: !4328)
!4535 = !DILocation(line: 504, column: 6, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4328, file: !3, line: 504, column: 6)
!4537 = !DILocation(line: 504, column: 6, scope: !4328)
!4538 = !DILocation(line: 505, column: 18, scope: !4536)
!4539 = !DILocation(line: 505, column: 4, scope: !4536)
!4540 = !DILocation(line: 505, column: 16, scope: !4536)
!4541 = !DILocation(line: 505, column: 3, scope: !4536)
!4542 = !DILocation(line: 506, column: 11, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 506, column: 11)
!4544 = !DILocation(line: 506, column: 11, scope: !4536)
!4545 = !DILocation(line: 507, column: 28, scope: !4543)
!4546 = !DILocation(line: 507, column: 3, scope: !4543)
!4547 = !DILocation(line: 507, column: 22, scope: !4543)
!4548 = !DILocation(line: 507, column: 26, scope: !4543)
!4549 = !DILocation(line: 509, column: 7, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4328, file: !3, line: 509, column: 6)
!4551 = !DILocation(line: 509, column: 6, scope: !4328)
!4552 = !DILocation(line: 510, column: 9, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4550, file: !3, line: 509, column: 21)
!4554 = !DILocation(line: 510, column: 3, scope: !4553)
!4555 = !DILocation(line: 511, column: 10, scope: !4553)
!4556 = !DILocation(line: 512, column: 2, scope: !4553)
!4557 = !DILocation(line: 514, column: 19, scope: !4328)
!4558 = !DILocation(line: 514, column: 3, scope: !4328)
!4559 = !DILocation(line: 514, column: 17, scope: !4328)
!4560 = !DILocation(line: 515, column: 13, scope: !4328)
!4561 = !DILocation(line: 515, column: 3, scope: !4328)
!4562 = !DILocation(line: 515, column: 11, scope: !4328)
!4563 = !DILocation(line: 516, column: 9, scope: !4328)
!4564 = !DILocation(line: 516, column: 2, scope: !4328)
!4565 = distinct !DISubprogram(name: "kcsan_atomic_next", scope: !4566, file: !4566, line: 152, type: !2624, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!4566 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4567 = !DILocalVariable(name: "n", arg: 1, scope: !4565, file: !4566, line: 152, type: !168)
!4568 = !DILocation(line: 152, column: 42, scope: !4565)
!4569 = !DILocation(line: 152, column: 48, scope: !4565)
!4570 = distinct !DISubprogram(name: "read_seqcount_t_retry", scope: !397, file: !397, line: 450, type: !4571, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!168, !4573, !7}
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!4575 = !DILocalVariable(name: "s", arg: 1, scope: !4570, file: !397, line: 450, type: !4573)
!4576 = !DILocation(line: 450, column: 59, scope: !4570)
!4577 = !DILocalVariable(name: "start", arg: 2, scope: !4570, file: !397, line: 450, type: !7)
!4578 = !DILocation(line: 450, column: 71, scope: !4570)
!4579 = !DILocation(line: 452, column: 2, scope: !4570)
!4580 = !{i32 -2144945066}
!4581 = !DILocation(line: 453, column: 33, scope: !4570)
!4582 = !DILocation(line: 453, column: 36, scope: !4570)
!4583 = !DILocation(line: 453, column: 9, scope: !4570)
!4584 = !DILocation(line: 453, column: 2, scope: !4570)
!4585 = distinct !DISubprogram(name: "dma_resv_wait_timeout_rcu", scope: !3, file: !3, line: 532, type: !4586, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !132)
!4586 = !DISubroutineType(types: !4587)
!4587 = !{!158, !254, !139, !139, !192}
!4588 = !DILocation(line: 280, column: 1, scope: !3725, inlinedAt: !4589)
!4589 = distinct !DILocation(line: 589, column: 7, scope: !4590)
!4590 = distinct !DILexicalBlock(scope: !4591, file: !3, line: 589, column: 7)
!4591 = distinct !DILexicalBlock(scope: !4592, file: !3, line: 588, column: 13)
!4592 = distinct !DILexicalBlock(scope: !4585, file: !3, line: 588, column: 6)
!4593 = !DILocation(line: 280, column: 1, scope: !4337, inlinedAt: !4594)
!4594 = distinct !DILocation(line: 543, column: 8, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4596, file: !3, line: 543, column: 8)
!4596 = distinct !DILexicalBlock(scope: !4597, file: !3, line: 543, column: 8)
!4597 = distinct !DILexicalBlock(scope: !4585, file: !3, line: 543, column: 8)
!4598 = !DILocalVariable(name: "obj", arg: 1, scope: !4585, file: !3, line: 532, type: !254)
!4599 = !DILocation(line: 532, column: 49, scope: !4585)
!4600 = !DILocalVariable(name: "wait_all", arg: 2, scope: !4585, file: !3, line: 533, type: !139)
!4601 = !DILocation(line: 533, column: 16, scope: !4585)
!4602 = !DILocalVariable(name: "intr", arg: 3, scope: !4585, file: !3, line: 533, type: !139)
!4603 = !DILocation(line: 533, column: 31, scope: !4585)
!4604 = !DILocalVariable(name: "timeout", arg: 4, scope: !4585, file: !3, line: 534, type: !192)
!4605 = !DILocation(line: 534, column: 25, scope: !4585)
!4606 = !DILocalVariable(name: "fence", scope: !4585, file: !3, line: 536, type: !113)
!4607 = !DILocation(line: 536, column: 20, scope: !4585)
!4608 = !DILocalVariable(name: "seq", scope: !4585, file: !3, line: 537, type: !7)
!4609 = !DILocation(line: 537, column: 11, scope: !4585)
!4610 = !DILocalVariable(name: "shared_count", scope: !4585, file: !3, line: 537, type: !7)
!4611 = !DILocation(line: 537, column: 16, scope: !4585)
!4612 = !DILocalVariable(name: "ret", scope: !4585, file: !3, line: 538, type: !158)
!4613 = !DILocation(line: 538, column: 7, scope: !4585)
!4614 = !DILocation(line: 538, column: 13, scope: !4585)
!4615 = !DILocation(line: 538, column: 23, scope: !4585)
!4616 = !DILocalVariable(name: "i", scope: !4585, file: !3, line: 539, type: !168)
!4617 = !DILocation(line: 539, column: 6, scope: !4585)
!4618 = !DILocation(line: 539, column: 2, scope: !4585)
!4619 = !DILabel(scope: !4585, name: "retry", file: !3, line: 541)
!4620 = !DILocation(line: 541, column: 1, scope: !4585)
!4621 = !DILocation(line: 542, column: 15, scope: !4585)
!4622 = !DILocalVariable(name: "seq", scope: !4596, file: !3, line: 543, type: !7)
!4623 = !DILocation(line: 543, column: 8, scope: !4596)
!4624 = !DILocalVariable(name: "seq", scope: !4595, file: !3, line: 543, type: !7)
!4625 = !DILocation(line: 543, column: 8, scope: !4595)
!4626 = !DILocation(line: 280, column: 1, scope: !4380, inlinedAt: !4594)
!4627 = !DILocation(line: 280, column: 1, scope: !4382, inlinedAt: !4594)
!4628 = !DILocation(line: 280, column: 1, scope: !4384, inlinedAt: !4594)
!4629 = !DILocation(line: 13, column: 2, scope: !4386, inlinedAt: !4630)
!4630 = distinct !DILocation(line: 18, column: 2, scope: !4389, inlinedAt: !4631)
!4631 = distinct !DILocation(line: 543, column: 8, scope: !4595)
!4632 = distinct !{!4632, !4625, !4625}
!4633 = !{i32 -2142441380}
!4634 = !DILocation(line: 543, column: 8, scope: !4585)
!4635 = !DILocation(line: 543, column: 8, scope: !4597)
!4636 = !DILocation(line: 543, column: 6, scope: !4585)
!4637 = !DILocation(line: 639, column: 2, scope: !4012, inlinedAt: !4638)
!4638 = distinct !DILocation(line: 544, column: 2, scope: !4585)
!4639 = !DILocation(line: 545, column: 4, scope: !4585)
!4640 = !DILocalVariable(name: "________p1", scope: !4641, file: !3, line: 547, type: !113)
!4641 = distinct !DILexicalBlock(scope: !4585, file: !3, line: 547, column: 10)
!4642 = !DILocation(line: 547, column: 10, scope: !4641)
!4643 = !DILocation(line: 547, column: 10, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4641, file: !3, line: 547, column: 10)
!4645 = !DILocation(line: 547, column: 10, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4644, file: !3, line: 547, column: 10)
!4647 = !DILocation(line: 547, column: 10, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4641, file: !3, line: 547, column: 10)
!4649 = !DILocation(line: 547, column: 8, scope: !4585)
!4650 = !DILocation(line: 548, column: 6, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !4585, file: !3, line: 548, column: 6)
!4652 = !DILocation(line: 548, column: 12, scope: !4651)
!4653 = !DILocation(line: 548, column: 55, scope: !4651)
!4654 = !DILocation(line: 548, column: 62, scope: !4651)
!4655 = !DILocation(line: 548, column: 16, scope: !4651)
!4656 = !DILocation(line: 548, column: 6, scope: !4585)
!4657 = !DILocation(line: 549, column: 26, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4659, file: !3, line: 549, column: 7)
!4659 = distinct !DILexicalBlock(scope: !4651, file: !3, line: 548, column: 70)
!4660 = !DILocation(line: 549, column: 8, scope: !4658)
!4661 = !DILocation(line: 549, column: 7, scope: !4659)
!4662 = !DILocation(line: 550, column: 4, scope: !4658)
!4663 = !DILocation(line: 552, column: 29, scope: !4664)
!4664 = distinct !DILexicalBlock(scope: !4659, file: !3, line: 552, column: 7)
!4665 = !DILocation(line: 552, column: 7, scope: !4664)
!4666 = !DILocation(line: 552, column: 7, scope: !4659)
!4667 = !DILocation(line: 553, column: 18, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 552, column: 37)
!4669 = !DILocation(line: 553, column: 4, scope: !4668)
!4670 = !DILocation(line: 554, column: 10, scope: !4668)
!4671 = !DILocation(line: 555, column: 3, scope: !4668)
!4672 = !DILocation(line: 557, column: 2, scope: !4659)
!4673 = !DILocation(line: 558, column: 9, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4651, file: !3, line: 557, column: 9)
!4675 = !DILocation(line: 561, column: 6, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4585, file: !3, line: 561, column: 6)
!4677 = !DILocation(line: 561, column: 6, scope: !4585)
!4678 = !DILocalVariable(name: "fobj", scope: !4679, file: !3, line: 562, type: !91)
!4679 = distinct !DILexicalBlock(scope: !4676, file: !3, line: 561, column: 16)
!4680 = !DILocation(line: 562, column: 25, scope: !4679)
!4681 = !DILocalVariable(name: "________p1", scope: !4682, file: !3, line: 562, type: !91)
!4682 = distinct !DILexicalBlock(scope: !4679, file: !3, line: 562, column: 32)
!4683 = !DILocation(line: 562, column: 32, scope: !4682)
!4684 = !DILocation(line: 562, column: 32, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4682, file: !3, line: 562, column: 32)
!4686 = !DILocation(line: 562, column: 32, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4685, file: !3, line: 562, column: 32)
!4688 = !DILocation(line: 562, column: 32, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4682, file: !3, line: 562, column: 32)
!4690 = !DILocation(line: 564, column: 7, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4679, file: !3, line: 564, column: 7)
!4692 = !DILocation(line: 564, column: 7, scope: !4679)
!4693 = !DILocation(line: 565, column: 19, scope: !4691)
!4694 = !DILocation(line: 565, column: 25, scope: !4691)
!4695 = !DILocation(line: 565, column: 17, scope: !4691)
!4696 = !DILocation(line: 565, column: 4, scope: !4691)
!4697 = !DILocation(line: 567, column: 10, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4679, file: !3, line: 567, column: 3)
!4699 = !DILocation(line: 567, column: 8, scope: !4698)
!4700 = !DILocation(line: 567, column: 16, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4698, file: !3, line: 567, column: 3)
!4702 = !DILocation(line: 567, column: 22, scope: !4701)
!4703 = !DILocation(line: 567, column: 25, scope: !4701)
!4704 = !DILocation(line: 567, column: 29, scope: !4701)
!4705 = !DILocation(line: 567, column: 27, scope: !4701)
!4706 = !DILocation(line: 0, scope: !4701)
!4707 = !DILocation(line: 567, column: 3, scope: !4698)
!4708 = !DILocalVariable(name: "lfence", scope: !4709, file: !3, line: 568, type: !113)
!4709 = distinct !DILexicalBlock(scope: !4701, file: !3, line: 567, column: 48)
!4710 = !DILocation(line: 568, column: 22, scope: !4709)
!4711 = !DILocalVariable(name: "________p1", scope: !4712, file: !3, line: 568, type: !113)
!4712 = distinct !DILexicalBlock(scope: !4709, file: !3, line: 568, column: 31)
!4713 = !DILocation(line: 568, column: 31, scope: !4712)
!4714 = !DILocation(line: 568, column: 31, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4712, file: !3, line: 568, column: 31)
!4716 = !DILocation(line: 568, column: 31, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 568, column: 31)
!4718 = !DILocation(line: 568, column: 31, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4712, file: !3, line: 568, column: 31)
!4720 = !DILocation(line: 571, column: 11, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4709, file: !3, line: 570, column: 8)
!4722 = !DILocation(line: 571, column: 19, scope: !4721)
!4723 = !DILocation(line: 570, column: 8, scope: !4721)
!4724 = !DILocation(line: 570, column: 8, scope: !4709)
!4725 = !DILocation(line: 572, column: 5, scope: !4721)
!4726 = !DILocation(line: 574, column: 27, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4709, file: !3, line: 574, column: 8)
!4728 = !DILocation(line: 574, column: 9, scope: !4727)
!4729 = !DILocation(line: 574, column: 8, scope: !4709)
!4730 = !DILocation(line: 575, column: 5, scope: !4727)
!4731 = !DILocation(line: 577, column: 30, scope: !4732)
!4732 = distinct !DILexicalBlock(scope: !4709, file: !3, line: 577, column: 8)
!4733 = !DILocation(line: 577, column: 8, scope: !4732)
!4734 = !DILocation(line: 577, column: 8, scope: !4709)
!4735 = !DILocation(line: 578, column: 19, scope: !4736)
!4736 = distinct !DILexicalBlock(scope: !4732, file: !3, line: 577, column: 39)
!4737 = !DILocation(line: 578, column: 5, scope: !4736)
!4738 = !DILocation(line: 579, column: 5, scope: !4736)
!4739 = !DILocation(line: 582, column: 12, scope: !4709)
!4740 = !DILocation(line: 582, column: 10, scope: !4709)
!4741 = !DILocation(line: 583, column: 4, scope: !4709)
!4742 = !DILocation(line: 567, column: 43, scope: !4701)
!4743 = !DILocation(line: 567, column: 3, scope: !4701)
!4744 = distinct !{!4744, !4707, !4745}
!4745 = !DILocation(line: 584, column: 3, scope: !4698)
!4746 = !DILocation(line: 585, column: 2, scope: !4679)
!4747 = !DILocation(line: 587, column: 2, scope: !4585)
!4748 = !DILocation(line: 588, column: 6, scope: !4592)
!4749 = !DILocation(line: 588, column: 6, scope: !4585)
!4750 = !DILocation(line: 589, column: 7, scope: !4590)
!4751 = !DILocation(line: 589, column: 7, scope: !4591)
!4752 = !DILocation(line: 590, column: 18, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4590, file: !3, line: 589, column: 44)
!4754 = !DILocation(line: 590, column: 4, scope: !4753)
!4755 = !DILocation(line: 591, column: 4, scope: !4753)
!4756 = !DILocation(line: 594, column: 32, scope: !4591)
!4757 = !DILocation(line: 594, column: 39, scope: !4591)
!4758 = !DILocation(line: 594, column: 45, scope: !4591)
!4759 = !DILocation(line: 594, column: 9, scope: !4591)
!4760 = !DILocation(line: 594, column: 7, scope: !4591)
!4761 = !DILocation(line: 595, column: 17, scope: !4591)
!4762 = !DILocation(line: 595, column: 3, scope: !4591)
!4763 = !DILocation(line: 596, column: 7, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4591, file: !3, line: 596, column: 7)
!4765 = !DILocation(line: 596, column: 11, scope: !4764)
!4766 = !DILocation(line: 596, column: 15, scope: !4764)
!4767 = !DILocation(line: 596, column: 18, scope: !4764)
!4768 = !DILocation(line: 596, column: 27, scope: !4764)
!4769 = !DILocation(line: 596, column: 31, scope: !4764)
!4770 = !DILocation(line: 596, column: 33, scope: !4764)
!4771 = !DILocation(line: 596, column: 39, scope: !4764)
!4772 = !DILocation(line: 596, column: 37, scope: !4764)
!4773 = !DILocation(line: 596, column: 7, scope: !4591)
!4774 = !DILocation(line: 597, column: 4, scope: !4764)
!4775 = !DILocation(line: 598, column: 2, scope: !4591)
!4776 = !DILocation(line: 599, column: 9, scope: !4585)
!4777 = !DILocation(line: 599, column: 2, scope: !4585)
!4778 = !DILabel(scope: !4585, name: "unlock_retry", file: !3, line: 601)
!4779 = !DILocation(line: 601, column: 1, scope: !4585)
!4780 = !DILocation(line: 602, column: 2, scope: !4585)
!4781 = !DILocation(line: 603, column: 2, scope: !4585)
!4782 = distinct !DISubprogram(name: "dma_resv_test_signaled_rcu", scope: !3, file: !3, line: 634, type: !4783, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !132)
!4783 = !DISubroutineType(types: !4784)
!4784 = !{!139, !254, !139}
!4785 = !DILocation(line: 280, column: 1, scope: !3725, inlinedAt: !4786)
!4786 = distinct !DILocation(line: 675, column: 8, scope: !4787)
!4787 = distinct !DILexicalBlock(scope: !4788, file: !3, line: 675, column: 8)
!4788 = distinct !DILexicalBlock(scope: !4789, file: !3, line: 670, column: 19)
!4789 = distinct !DILexicalBlock(scope: !4790, file: !3, line: 670, column: 7)
!4790 = distinct !DILexicalBlock(scope: !4791, file: !3, line: 667, column: 21)
!4791 = distinct !DILexicalBlock(scope: !4782, file: !3, line: 667, column: 6)
!4792 = !DILocation(line: 280, column: 1, scope: !3725, inlinedAt: !4793)
!4793 = distinct !DILocation(line: 663, column: 7, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4795, file: !3, line: 663, column: 7)
!4795 = distinct !DILexicalBlock(scope: !4796, file: !3, line: 645, column: 16)
!4796 = distinct !DILexicalBlock(scope: !4782, file: !3, line: 645, column: 6)
!4797 = !DILocation(line: 280, column: 1, scope: !4337, inlinedAt: !4798)
!4798 = distinct !DILocation(line: 643, column: 8, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4800, file: !3, line: 643, column: 8)
!4800 = distinct !DILexicalBlock(scope: !4801, file: !3, line: 643, column: 8)
!4801 = distinct !DILexicalBlock(scope: !4782, file: !3, line: 643, column: 8)
!4802 = !DILocalVariable(name: "obj", arg: 1, scope: !4782, file: !3, line: 634, type: !254)
!4803 = !DILocation(line: 634, column: 50, scope: !4782)
!4804 = !DILocalVariable(name: "test_all", arg: 2, scope: !4782, file: !3, line: 634, type: !139)
!4805 = !DILocation(line: 634, column: 60, scope: !4782)
!4806 = !DILocalVariable(name: "seq", scope: !4782, file: !3, line: 636, type: !7)
!4807 = !DILocation(line: 636, column: 11, scope: !4782)
!4808 = !DILocalVariable(name: "shared_count", scope: !4782, file: !3, line: 636, type: !7)
!4809 = !DILocation(line: 636, column: 16, scope: !4782)
!4810 = !DILocalVariable(name: "ret", scope: !4782, file: !3, line: 637, type: !168)
!4811 = !DILocation(line: 637, column: 6, scope: !4782)
!4812 = !DILocation(line: 639, column: 2, scope: !4012, inlinedAt: !4813)
!4813 = distinct !DILocation(line: 639, column: 2, scope: !4782)
!4814 = !DILocation(line: 639, column: 2, scope: !4782)
!4815 = !DILabel(scope: !4782, name: "retry", file: !3, line: 640)
!4816 = !DILocation(line: 640, column: 1, scope: !4782)
!4817 = !DILocation(line: 641, column: 6, scope: !4782)
!4818 = !DILocation(line: 642, column: 15, scope: !4782)
!4819 = !DILocalVariable(name: "seq", scope: !4800, file: !3, line: 643, type: !7)
!4820 = !DILocation(line: 643, column: 8, scope: !4800)
!4821 = !DILocalVariable(name: "seq", scope: !4799, file: !3, line: 643, type: !7)
!4822 = !DILocation(line: 643, column: 8, scope: !4799)
!4823 = !DILocation(line: 280, column: 1, scope: !4380, inlinedAt: !4798)
!4824 = !DILocation(line: 280, column: 1, scope: !4382, inlinedAt: !4798)
!4825 = !DILocation(line: 280, column: 1, scope: !4384, inlinedAt: !4798)
!4826 = !DILocation(line: 13, column: 2, scope: !4386, inlinedAt: !4827)
!4827 = distinct !DILocation(line: 18, column: 2, scope: !4389, inlinedAt: !4828)
!4828 = distinct !DILocation(line: 643, column: 8, scope: !4799)
!4829 = distinct !{!4829, !4822, !4822}
!4830 = !{i32 -2142430210}
!4831 = !DILocation(line: 643, column: 8, scope: !4782)
!4832 = !DILocation(line: 643, column: 8, scope: !4801)
!4833 = !DILocation(line: 643, column: 6, scope: !4782)
!4834 = !DILocation(line: 645, column: 6, scope: !4796)
!4835 = !DILocation(line: 645, column: 6, scope: !4782)
!4836 = !DILocalVariable(name: "i", scope: !4795, file: !3, line: 646, type: !7)
!4837 = !DILocation(line: 646, column: 12, scope: !4795)
!4838 = !DILocalVariable(name: "fobj", scope: !4795, file: !3, line: 648, type: !91)
!4839 = !DILocation(line: 648, column: 25, scope: !4795)
!4840 = !DILocalVariable(name: "________p1", scope: !4841, file: !3, line: 648, type: !91)
!4841 = distinct !DILexicalBlock(scope: !4795, file: !3, line: 648, column: 32)
!4842 = !DILocation(line: 648, column: 32, scope: !4841)
!4843 = !DILocation(line: 648, column: 32, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4841, file: !3, line: 648, column: 32)
!4845 = !DILocation(line: 648, column: 32, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4844, file: !3, line: 648, column: 32)
!4847 = !DILocation(line: 648, column: 32, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4841, file: !3, line: 648, column: 32)
!4849 = !DILocation(line: 650, column: 7, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4795, file: !3, line: 650, column: 7)
!4851 = !DILocation(line: 650, column: 7, scope: !4795)
!4852 = !DILocation(line: 651, column: 19, scope: !4850)
!4853 = !DILocation(line: 651, column: 25, scope: !4850)
!4854 = !DILocation(line: 651, column: 17, scope: !4850)
!4855 = !DILocation(line: 651, column: 4, scope: !4850)
!4856 = !DILocation(line: 653, column: 10, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4795, file: !3, line: 653, column: 3)
!4858 = !DILocation(line: 653, column: 8, scope: !4857)
!4859 = !DILocation(line: 653, column: 15, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4857, file: !3, line: 653, column: 3)
!4861 = !DILocation(line: 653, column: 19, scope: !4860)
!4862 = !DILocation(line: 653, column: 17, scope: !4860)
!4863 = !DILocation(line: 653, column: 3, scope: !4857)
!4864 = !DILocalVariable(name: "fence", scope: !4865, file: !3, line: 654, type: !113)
!4865 = distinct !DILexicalBlock(scope: !4860, file: !3, line: 653, column: 38)
!4866 = !DILocation(line: 654, column: 22, scope: !4865)
!4867 = !DILocalVariable(name: "________p1", scope: !4868, file: !3, line: 654, type: !113)
!4868 = distinct !DILexicalBlock(scope: !4865, file: !3, line: 654, column: 30)
!4869 = !DILocation(line: 654, column: 30, scope: !4868)
!4870 = !DILocation(line: 654, column: 30, scope: !4871)
!4871 = distinct !DILexicalBlock(scope: !4868, file: !3, line: 654, column: 30)
!4872 = !DILocation(line: 654, column: 30, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4871, file: !3, line: 654, column: 30)
!4874 = !DILocation(line: 654, column: 30, scope: !4875)
!4875 = distinct !DILexicalBlock(scope: !4868, file: !3, line: 654, column: 30)
!4876 = !DILocation(line: 656, column: 40, scope: !4865)
!4877 = !DILocation(line: 656, column: 10, scope: !4865)
!4878 = !DILocation(line: 656, column: 8, scope: !4865)
!4879 = !DILocation(line: 657, column: 8, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4865, file: !3, line: 657, column: 8)
!4881 = !DILocation(line: 657, column: 12, scope: !4880)
!4882 = !DILocation(line: 657, column: 8, scope: !4865)
!4883 = !DILocation(line: 658, column: 5, scope: !4880)
!4884 = !DILocation(line: 659, column: 14, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4880, file: !3, line: 659, column: 13)
!4886 = !DILocation(line: 659, column: 13, scope: !4880)
!4887 = !DILocation(line: 660, column: 5, scope: !4885)
!4888 = !DILocation(line: 661, column: 3, scope: !4865)
!4889 = !DILocation(line: 653, column: 33, scope: !4860)
!4890 = !DILocation(line: 653, column: 3, scope: !4860)
!4891 = distinct !{!4891, !4863, !4892}
!4892 = !DILocation(line: 661, column: 3, scope: !4857)
!4893 = !DILocation(line: 663, column: 7, scope: !4794)
!4894 = !DILocation(line: 663, column: 7, scope: !4795)
!4895 = !DILocation(line: 664, column: 4, scope: !4794)
!4896 = !DILocation(line: 665, column: 2, scope: !4795)
!4897 = !DILocation(line: 667, column: 7, scope: !4791)
!4898 = !DILocation(line: 667, column: 6, scope: !4782)
!4899 = !DILocalVariable(name: "fence_excl", scope: !4790, file: !3, line: 668, type: !113)
!4900 = !DILocation(line: 668, column: 21, scope: !4790)
!4901 = !DILocalVariable(name: "________p1", scope: !4902, file: !3, line: 668, type: !113)
!4902 = distinct !DILexicalBlock(scope: !4790, file: !3, line: 668, column: 34)
!4903 = !DILocation(line: 668, column: 34, scope: !4902)
!4904 = !DILocation(line: 668, column: 34, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4902, file: !3, line: 668, column: 34)
!4906 = !DILocation(line: 668, column: 34, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4905, file: !3, line: 668, column: 34)
!4908 = !DILocation(line: 668, column: 34, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4902, file: !3, line: 668, column: 34)
!4910 = !DILocation(line: 670, column: 7, scope: !4789)
!4911 = !DILocation(line: 670, column: 7, scope: !4790)
!4912 = !DILocation(line: 671, column: 40, scope: !4788)
!4913 = !DILocation(line: 671, column: 10, scope: !4788)
!4914 = !DILocation(line: 671, column: 8, scope: !4788)
!4915 = !DILocation(line: 672, column: 8, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4788, file: !3, line: 672, column: 8)
!4917 = !DILocation(line: 672, column: 12, scope: !4916)
!4918 = !DILocation(line: 672, column: 8, scope: !4788)
!4919 = !DILocation(line: 673, column: 5, scope: !4916)
!4920 = !DILocation(line: 675, column: 8, scope: !4787)
!4921 = !DILocation(line: 675, column: 8, scope: !4788)
!4922 = !DILocation(line: 676, column: 5, scope: !4787)
!4923 = !DILocation(line: 677, column: 3, scope: !4788)
!4924 = !DILocation(line: 678, column: 2, scope: !4790)
!4925 = !DILocation(line: 680, column: 2, scope: !4782)
!4926 = !DILocation(line: 681, column: 9, scope: !4782)
!4927 = !DILocation(line: 681, column: 2, scope: !4782)
!4928 = distinct !DISubprogram(name: "dma_resv_test_signaled_single", scope: !3, file: !3, line: 608, type: !4929, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!4929 = !DISubroutineType(types: !4930)
!4930 = !{!168, !113}
!4931 = !DILocalVariable(name: "passed_fence", arg: 1, scope: !4928, file: !3, line: 608, type: !113)
!4932 = !DILocation(line: 608, column: 67, scope: !4928)
!4933 = !DILocalVariable(name: "fence", scope: !4928, file: !3, line: 610, type: !113)
!4934 = !DILocation(line: 610, column: 20, scope: !4928)
!4935 = !DILocalVariable(name: "lfence", scope: !4928, file: !3, line: 610, type: !113)
!4936 = !DILocation(line: 610, column: 28, scope: !4928)
!4937 = !DILocation(line: 610, column: 37, scope: !4928)
!4938 = !DILocalVariable(name: "ret", scope: !4928, file: !3, line: 611, type: !168)
!4939 = !DILocation(line: 611, column: 6, scope: !4928)
!4940 = !DILocation(line: 613, column: 46, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4928, file: !3, line: 613, column: 6)
!4942 = !DILocation(line: 613, column: 54, scope: !4941)
!4943 = !DILocation(line: 613, column: 7, scope: !4941)
!4944 = !DILocation(line: 613, column: 6, scope: !4928)
!4945 = !DILocation(line: 614, column: 29, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4941, file: !3, line: 613, column: 62)
!4947 = !DILocation(line: 614, column: 11, scope: !4946)
!4948 = !DILocation(line: 614, column: 9, scope: !4946)
!4949 = !DILocation(line: 615, column: 8, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4946, file: !3, line: 615, column: 7)
!4951 = !DILocation(line: 615, column: 7, scope: !4946)
!4952 = !DILocation(line: 616, column: 4, scope: !4950)
!4953 = !DILocation(line: 618, column: 33, scope: !4946)
!4954 = !DILocation(line: 618, column: 11, scope: !4946)
!4955 = !DILocation(line: 618, column: 10, scope: !4946)
!4956 = !DILocation(line: 618, column: 9, scope: !4946)
!4957 = !DILocation(line: 618, column: 7, scope: !4946)
!4958 = !DILocation(line: 619, column: 17, scope: !4946)
!4959 = !DILocation(line: 619, column: 3, scope: !4946)
!4960 = !DILocation(line: 620, column: 2, scope: !4946)
!4961 = !DILocation(line: 621, column: 9, scope: !4928)
!4962 = !DILocation(line: 621, column: 2, scope: !4928)
!4963 = !DILocation(line: 622, column: 1, scope: !4928)
!4964 = distinct !DISubprogram(name: "kref_put", scope: !195, file: !195, line: 62, type: !4965, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!4965 = !DISubroutineType(types: !4966)
!4966 = !{!168, !4967, !4968}
!4967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!4968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4969, size: 64)
!4969 = !DISubroutineType(types: !4970)
!4970 = !{null, !4967}
!4971 = !DILocalVariable(name: "kref", arg: 1, scope: !4964, file: !195, line: 62, type: !4967)
!4972 = !DILocation(line: 62, column: 41, scope: !4964)
!4973 = !DILocalVariable(name: "release", arg: 2, scope: !4964, file: !195, line: 62, type: !4968)
!4974 = !DILocation(line: 62, column: 54, scope: !4964)
!4975 = !DILocation(line: 64, column: 29, scope: !4976)
!4976 = distinct !DILexicalBlock(scope: !4964, file: !195, line: 64, column: 6)
!4977 = !DILocation(line: 64, column: 35, scope: !4976)
!4978 = !DILocation(line: 64, column: 6, scope: !4976)
!4979 = !DILocation(line: 64, column: 6, scope: !4964)
!4980 = !DILocation(line: 65, column: 3, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4976, file: !195, line: 64, column: 46)
!4982 = !DILocation(line: 65, column: 11, scope: !4981)
!4983 = !DILocation(line: 66, column: 3, scope: !4981)
!4984 = !DILocation(line: 68, column: 2, scope: !4964)
!4985 = !DILocation(line: 69, column: 1, scope: !4964)
!4986 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !73, file: !73, line: 331, type: !4987, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!4987 = !DISubroutineType(types: !4988)
!4988 = !{!139, !4989}
!4989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!4990 = !DILocalVariable(name: "r", arg: 1, scope: !4986, file: !73, line: 331, type: !4989)
!4991 = !DILocation(line: 331, column: 67, scope: !4986)
!4992 = !DILocation(line: 333, column: 33, scope: !4986)
!4993 = !DILocation(line: 333, column: 9, scope: !4986)
!4994 = !DILocation(line: 333, column: 2, scope: !4986)
!4995 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !73, file: !73, line: 313, type: !4996, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!4996 = !DISubroutineType(types: !4997)
!4997 = !{!139, !4989, !224}
!4998 = !DILocalVariable(name: "r", arg: 1, scope: !4995, file: !73, line: 313, type: !4989)
!4999 = !DILocation(line: 313, column: 69, scope: !4995)
!5000 = !DILocalVariable(name: "oldp", arg: 2, scope: !4995, file: !73, line: 313, type: !224)
!5001 = !DILocation(line: 313, column: 77, scope: !4995)
!5002 = !DILocation(line: 315, column: 36, scope: !4995)
!5003 = !DILocation(line: 315, column: 39, scope: !4995)
!5004 = !DILocation(line: 315, column: 9, scope: !4995)
!5005 = !DILocation(line: 315, column: 2, scope: !4995)
!5006 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !73, file: !73, line: 270, type: !5007, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5007 = !DISubroutineType(types: !5008)
!5008 = !{!139, !168, !4989, !224}
!5009 = !DILocalVariable(name: "i", arg: 1, scope: !5010, file: !5011, line: 188, type: !168)
!5010 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !5011, file: !5011, line: 188, type: !5012, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5011 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!5012 = !DISubroutineType(types: !5013)
!5013 = !{!168, !168, !5014}
!5014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!5015 = !DILocation(line: 188, column: 54, scope: !5010, inlinedAt: !5016)
!5016 = distinct !DILocation(line: 221, column: 9, scope: !5017, inlinedAt: !5019)
!5017 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !5018, file: !5018, line: 218, type: !5012, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5018 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5019 = distinct !DILocation(line: 272, column: 12, scope: !5006)
!5020 = !DILocalVariable(name: "v", arg: 2, scope: !5010, file: !5011, line: 188, type: !5014)
!5021 = !DILocation(line: 188, column: 67, scope: !5010, inlinedAt: !5016)
!5022 = !DILocalVariable(name: "__ret", scope: !5023, file: !5011, line: 190, type: !168)
!5023 = distinct !DILexicalBlock(scope: !5010, file: !5011, line: 190, column: 9)
!5024 = !DILocation(line: 190, column: 9, scope: !5023, inlinedAt: !5016)
!5025 = !DILocalVariable(name: "v", arg: 1, scope: !5026, file: !4232, line: 99, type: !4235)
!5026 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4232, file: !4232, line: 99, type: !4233, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5027 = !DILocation(line: 99, column: 79, scope: !5026, inlinedAt: !5028)
!5028 = distinct !DILocation(line: 220, column: 2, scope: !5017, inlinedAt: !5019)
!5029 = !DILocalVariable(name: "size", arg: 2, scope: !5026, file: !4232, line: 99, type: !1340)
!5030 = !DILocation(line: 99, column: 89, scope: !5026, inlinedAt: !5028)
!5031 = !DILocalVariable(name: "i", arg: 1, scope: !5017, file: !5018, line: 218, type: !168)
!5032 = !DILocation(line: 218, column: 30, scope: !5017, inlinedAt: !5019)
!5033 = !DILocalVariable(name: "v", arg: 2, scope: !5017, file: !5018, line: 218, type: !5014)
!5034 = !DILocation(line: 218, column: 43, scope: !5017, inlinedAt: !5019)
!5035 = !DILocalVariable(name: "i", arg: 1, scope: !5006, file: !73, line: 270, type: !168)
!5036 = !DILocation(line: 270, column: 61, scope: !5006)
!5037 = !DILocalVariable(name: "r", arg: 2, scope: !5006, file: !73, line: 270, type: !4989)
!5038 = !DILocation(line: 270, column: 76, scope: !5006)
!5039 = !DILocalVariable(name: "oldp", arg: 3, scope: !5006, file: !73, line: 270, type: !224)
!5040 = !DILocation(line: 270, column: 84, scope: !5006)
!5041 = !DILocalVariable(name: "old", scope: !5006, file: !73, line: 272, type: !168)
!5042 = !DILocation(line: 272, column: 6, scope: !5006)
!5043 = !DILocation(line: 272, column: 37, scope: !5006)
!5044 = !DILocation(line: 272, column: 41, scope: !5006)
!5045 = !DILocation(line: 272, column: 44, scope: !5006)
!5046 = !DILocation(line: 220, column: 31, scope: !5017, inlinedAt: !5019)
!5047 = !DILocation(line: 101, column: 20, scope: !5026, inlinedAt: !5028)
!5048 = !DILocation(line: 101, column: 23, scope: !5026, inlinedAt: !5028)
!5049 = !DILocation(line: 101, column: 2, scope: !5026, inlinedAt: !5028)
!5050 = !DILocation(line: 102, column: 2, scope: !5026, inlinedAt: !5028)
!5051 = !DILocation(line: 221, column: 39, scope: !5017, inlinedAt: !5019)
!5052 = !DILocation(line: 221, column: 42, scope: !5017, inlinedAt: !5019)
!5053 = !{i32 -2146665471}
!5054 = !DILocation(line: 274, column: 6, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !5006, file: !73, line: 274, column: 6)
!5056 = !DILocation(line: 274, column: 6, scope: !5006)
!5057 = !DILocation(line: 275, column: 11, scope: !5055)
!5058 = !DILocation(line: 275, column: 4, scope: !5055)
!5059 = !DILocation(line: 275, column: 9, scope: !5055)
!5060 = !DILocation(line: 275, column: 3, scope: !5055)
!5061 = !DILocation(line: 277, column: 6, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5006, file: !73, line: 277, column: 6)
!5063 = !DILocation(line: 277, column: 13, scope: !5062)
!5064 = !DILocation(line: 277, column: 10, scope: !5062)
!5065 = !DILocation(line: 277, column: 6, scope: !5006)
!5066 = !DILocation(line: 278, column: 3, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5062, file: !73, line: 277, column: 16)
!5068 = !{i32 -2145489902}
!5069 = !DILocation(line: 279, column: 3, scope: !5067)
!5070 = !DILocation(line: 282, column: 6, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5006, file: !73, line: 282, column: 6)
!5072 = !DILocation(line: 282, column: 6, scope: !5006)
!5073 = !DILocation(line: 283, column: 26, scope: !5071)
!5074 = !DILocation(line: 283, column: 3, scope: !5071)
!5075 = !DILocation(line: 285, column: 2, scope: !5006)
!5076 = !DILocation(line: 286, column: 1, scope: !5006)
!5077 = distinct !DISubprogram(name: "kasan_check_write", scope: !5078, file: !5078, line: 38, type: !5079, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5078 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5079 = !DISubroutineType(types: !5080)
!5080 = !{!139, !4235, !7}
!5081 = !DILocalVariable(name: "p", arg: 1, scope: !5077, file: !5078, line: 38, type: !4235)
!5082 = !DILocation(line: 38, column: 59, scope: !5077)
!5083 = !DILocalVariable(name: "size", arg: 2, scope: !5077, file: !5078, line: 38, type: !7)
!5084 = !DILocation(line: 38, column: 75, scope: !5077)
!5085 = !DILocation(line: 40, column: 2, scope: !5077)
!5086 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4566, file: !4566, line: 178, type: !5087, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5087 = !DISubroutineType(types: !5088)
!5088 = !{null, !4235, !1340, !168}
!5089 = !DILocalVariable(name: "ptr", arg: 1, scope: !5086, file: !4566, line: 178, type: !4235)
!5090 = !DILocation(line: 178, column: 60, scope: !5086)
!5091 = !DILocalVariable(name: "size", arg: 2, scope: !5086, file: !4566, line: 178, type: !1340)
!5092 = !DILocation(line: 178, column: 72, scope: !5086)
!5093 = !DILocalVariable(name: "type", arg: 3, scope: !5086, file: !4566, line: 179, type: !168)
!5094 = !DILocation(line: 179, column: 15, scope: !5086)
!5095 = !DILocation(line: 179, column: 23, scope: !5086)
!5096 = distinct !DISubprogram(name: "mutex_destroy", scope: !259, file: !259, line: 103, type: !5097, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5097 = !DISubroutineType(types: !5098)
!5098 = !{null, !5099}
!5099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!5100 = !DILocalVariable(name: "lock", arg: 1, scope: !5096, file: !259, line: 103, type: !5099)
!5101 = !DILocation(line: 103, column: 48, scope: !5096)
!5102 = !DILocation(line: 103, column: 55, scope: !5096)
!5103 = distinct !DISubprogram(name: "get_order", scope: !5104, file: !5104, line: 29, type: !5105, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5104 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5105 = !DISubroutineType(types: !5106)
!5106 = !{!168, !192}
!5107 = !DILocalVariable(name: "x", arg: 1, scope: !5108, file: !4217, line: 366, type: !188)
!5108 = distinct !DISubprogram(name: "fls64", scope: !4217, file: !4217, line: 366, type: !5109, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5109 = !DISubroutineType(types: !5110)
!5110 = !{!168, !188}
!5111 = !DILocation(line: 366, column: 40, scope: !5108, inlinedAt: !5112)
!5112 = distinct !DILocation(line: 46, column: 9, scope: !5103)
!5113 = !DILocalVariable(name: "bitpos", scope: !5108, file: !4217, line: 368, type: !168)
!5114 = !DILocation(line: 368, column: 6, scope: !5108, inlinedAt: !5112)
!5115 = !DILocalVariable(name: "size", arg: 1, scope: !5103, file: !5104, line: 29, type: !192)
!5116 = !DILocation(line: 29, column: 63, scope: !5103)
!5117 = !DILocation(line: 31, column: 27, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5103, file: !5104, line: 31, column: 6)
!5119 = !DILocation(line: 31, column: 6, scope: !5118)
!5120 = !DILocation(line: 31, column: 6, scope: !5103)
!5121 = !DILocation(line: 32, column: 8, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5123, file: !5104, line: 32, column: 7)
!5123 = distinct !DILexicalBlock(scope: !5118, file: !5104, line: 31, column: 34)
!5124 = !DILocation(line: 32, column: 7, scope: !5123)
!5125 = !DILocation(line: 33, column: 4, scope: !5122)
!5126 = !DILocation(line: 35, column: 7, scope: !5127)
!5127 = distinct !DILexicalBlock(scope: !5123, file: !5104, line: 35, column: 7)
!5128 = !DILocation(line: 35, column: 12, scope: !5127)
!5129 = !DILocation(line: 35, column: 7, scope: !5123)
!5130 = !DILocation(line: 36, column: 4, scope: !5127)
!5131 = !DILocation(line: 38, column: 10, scope: !5123)
!5132 = !DILocation(line: 38, column: 28, scope: !5123)
!5133 = !DILocation(line: 38, column: 41, scope: !5123)
!5134 = !DILocation(line: 38, column: 3, scope: !5123)
!5135 = !DILocation(line: 41, column: 6, scope: !5103)
!5136 = !DILocation(line: 42, column: 7, scope: !5103)
!5137 = !DILocation(line: 46, column: 15, scope: !5103)
!5138 = !DILocation(line: 374, column: 2, scope: !5108, inlinedAt: !5112)
!5139 = !DILocation(line: 376, column: 14, scope: !5108, inlinedAt: !5112)
!5140 = !{i32 302347}
!5141 = !DILocation(line: 377, column: 9, scope: !5108, inlinedAt: !5112)
!5142 = !DILocation(line: 377, column: 16, scope: !5108, inlinedAt: !5112)
!5143 = !DILocation(line: 46, column: 2, scope: !5103)
!5144 = !DILocation(line: 48, column: 1, scope: !5103)
!5145 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5146, file: !5146, line: 30, type: !5147, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5146 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5147 = !DISubroutineType(types: !5148)
!5148 = !{!168, !187}
!5149 = !DILocation(line: 366, column: 40, scope: !5108, inlinedAt: !5150)
!5150 = distinct !DILocation(line: 32, column: 9, scope: !5145)
!5151 = !DILocation(line: 368, column: 6, scope: !5108, inlinedAt: !5150)
!5152 = !DILocalVariable(name: "n", arg: 1, scope: !5145, file: !5146, line: 30, type: !187)
!5153 = !DILocation(line: 30, column: 21, scope: !5145)
!5154 = !DILocation(line: 32, column: 15, scope: !5145)
!5155 = !DILocation(line: 374, column: 2, scope: !5108, inlinedAt: !5150)
!5156 = !DILocation(line: 376, column: 14, scope: !5108, inlinedAt: !5150)
!5157 = !DILocation(line: 377, column: 9, scope: !5108, inlinedAt: !5150)
!5158 = !DILocation(line: 377, column: 16, scope: !5108, inlinedAt: !5150)
!5159 = !DILocation(line: 32, column: 18, scope: !5145)
!5160 = !DILocation(line: 32, column: 2, scope: !5145)
!5161 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5162, file: !5162, line: 137, type: !5163, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5162 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5163 = !DISubroutineType(types: !5164)
!5164 = !{!88, !2076, !5165, !1340, !219}
!5165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5166, size: 64)
!5166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!5167 = !DILocalVariable(name: "s", arg: 1, scope: !5161, file: !5162, line: 137, type: !2076)
!5168 = !DILocation(line: 137, column: 54, scope: !5161)
!5169 = !DILocalVariable(name: "object", arg: 2, scope: !5161, file: !5162, line: 137, type: !5165)
!5170 = !DILocation(line: 137, column: 69, scope: !5161)
!5171 = !DILocalVariable(name: "size", arg: 3, scope: !5161, file: !5162, line: 138, type: !1340)
!5172 = !DILocation(line: 138, column: 12, scope: !5161)
!5173 = !DILocalVariable(name: "flags", arg: 4, scope: !5161, file: !5162, line: 138, type: !219)
!5174 = !DILocation(line: 138, column: 24, scope: !5161)
!5175 = !DILocation(line: 140, column: 17, scope: !5161)
!5176 = !DILocation(line: 140, column: 2, scope: !5161)
!5177 = distinct !DISubprogram(name: "kref_get", scope: !195, file: !195, line: 43, type: !4969, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5178 = !DILocalVariable(name: "kref", arg: 1, scope: !5177, file: !195, line: 43, type: !4967)
!5179 = !DILocation(line: 43, column: 42, scope: !5177)
!5180 = !DILocation(line: 45, column: 16, scope: !5177)
!5181 = !DILocation(line: 45, column: 22, scope: !5177)
!5182 = !DILocation(line: 45, column: 2, scope: !5177)
!5183 = !DILocation(line: 46, column: 1, scope: !5177)
!5184 = distinct !DISubprogram(name: "refcount_inc", scope: !73, file: !73, line: 265, type: !5185, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5185 = !DISubroutineType(types: !5186)
!5186 = !{null, !4989}
!5187 = !DILocalVariable(name: "r", arg: 1, scope: !5184, file: !73, line: 265, type: !4989)
!5188 = !DILocation(line: 265, column: 45, scope: !5184)
!5189 = !DILocation(line: 267, column: 17, scope: !5184)
!5190 = !DILocation(line: 267, column: 2, scope: !5184)
!5191 = !DILocation(line: 268, column: 1, scope: !5184)
!5192 = distinct !DISubprogram(name: "__refcount_inc", scope: !73, file: !73, line: 248, type: !5193, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5193 = !DISubroutineType(types: !5194)
!5194 = !{null, !4989, !224}
!5195 = !DILocalVariable(name: "r", arg: 1, scope: !5192, file: !73, line: 248, type: !4989)
!5196 = !DILocation(line: 248, column: 47, scope: !5192)
!5197 = !DILocalVariable(name: "oldp", arg: 2, scope: !5192, file: !73, line: 248, type: !224)
!5198 = !DILocation(line: 248, column: 55, scope: !5192)
!5199 = !DILocation(line: 250, column: 20, scope: !5192)
!5200 = !DILocation(line: 250, column: 23, scope: !5192)
!5201 = !DILocation(line: 250, column: 2, scope: !5192)
!5202 = !DILocation(line: 251, column: 1, scope: !5192)
!5203 = distinct !DISubprogram(name: "__refcount_add", scope: !73, file: !73, line: 191, type: !5204, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5204 = !DISubroutineType(types: !5205)
!5205 = !{null, !168, !4989, !224}
!5206 = !DILocalVariable(name: "i", arg: 1, scope: !5207, file: !5011, line: 182, type: !168)
!5207 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !5011, file: !5011, line: 182, type: !5012, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5208 = !DILocation(line: 182, column: 54, scope: !5207, inlinedAt: !5209)
!5209 = distinct !DILocation(line: 143, column: 9, scope: !5210, inlinedAt: !5211)
!5210 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !5018, file: !5018, line: 140, type: !5012, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5211 = distinct !DILocation(line: 193, column: 12, scope: !5203)
!5212 = !DILocalVariable(name: "v", arg: 2, scope: !5207, file: !5011, line: 182, type: !5014)
!5213 = !DILocation(line: 182, column: 67, scope: !5207, inlinedAt: !5209)
!5214 = !DILocalVariable(name: "__ret", scope: !5215, file: !5011, line: 184, type: !168)
!5215 = distinct !DILexicalBlock(scope: !5207, file: !5011, line: 184, column: 9)
!5216 = !DILocation(line: 184, column: 9, scope: !5215, inlinedAt: !5209)
!5217 = !DILocation(line: 99, column: 79, scope: !5026, inlinedAt: !5218)
!5218 = distinct !DILocation(line: 142, column: 2, scope: !5210, inlinedAt: !5211)
!5219 = !DILocation(line: 99, column: 89, scope: !5026, inlinedAt: !5218)
!5220 = !DILocalVariable(name: "i", arg: 1, scope: !5210, file: !5018, line: 140, type: !168)
!5221 = !DILocation(line: 140, column: 30, scope: !5210, inlinedAt: !5211)
!5222 = !DILocalVariable(name: "v", arg: 2, scope: !5210, file: !5018, line: 140, type: !5014)
!5223 = !DILocation(line: 140, column: 43, scope: !5210, inlinedAt: !5211)
!5224 = !DILocalVariable(name: "i", arg: 1, scope: !5203, file: !73, line: 191, type: !168)
!5225 = !DILocation(line: 191, column: 39, scope: !5203)
!5226 = !DILocalVariable(name: "r", arg: 2, scope: !5203, file: !73, line: 191, type: !4989)
!5227 = !DILocation(line: 191, column: 54, scope: !5203)
!5228 = !DILocalVariable(name: "oldp", arg: 3, scope: !5203, file: !73, line: 191, type: !224)
!5229 = !DILocation(line: 191, column: 62, scope: !5203)
!5230 = !DILocalVariable(name: "old", scope: !5203, file: !73, line: 193, type: !168)
!5231 = !DILocation(line: 193, column: 6, scope: !5203)
!5232 = !DILocation(line: 193, column: 37, scope: !5203)
!5233 = !DILocation(line: 193, column: 41, scope: !5203)
!5234 = !DILocation(line: 193, column: 44, scope: !5203)
!5235 = !DILocation(line: 142, column: 31, scope: !5210, inlinedAt: !5211)
!5236 = !DILocation(line: 101, column: 20, scope: !5026, inlinedAt: !5218)
!5237 = !DILocation(line: 101, column: 23, scope: !5026, inlinedAt: !5218)
!5238 = !DILocation(line: 101, column: 2, scope: !5026, inlinedAt: !5218)
!5239 = !DILocation(line: 102, column: 2, scope: !5026, inlinedAt: !5218)
!5240 = !DILocation(line: 143, column: 39, scope: !5210, inlinedAt: !5211)
!5241 = !DILocation(line: 143, column: 42, scope: !5210, inlinedAt: !5211)
!5242 = !{i32 -2146666823}
!5243 = !DILocation(line: 195, column: 6, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5203, file: !73, line: 195, column: 6)
!5245 = !DILocation(line: 195, column: 6, scope: !5203)
!5246 = !DILocation(line: 196, column: 11, scope: !5244)
!5247 = !DILocation(line: 196, column: 4, scope: !5244)
!5248 = !DILocation(line: 196, column: 9, scope: !5244)
!5249 = !DILocation(line: 196, column: 3, scope: !5244)
!5250 = !DILocation(line: 198, column: 6, scope: !5251)
!5251 = distinct !DILexicalBlock(scope: !5203, file: !73, line: 198, column: 6)
!5252 = !DILocation(line: 198, column: 6, scope: !5203)
!5253 = !DILocation(line: 199, column: 26, scope: !5251)
!5254 = !DILocation(line: 199, column: 3, scope: !5251)
!5255 = !DILocation(line: 200, column: 11, scope: !5256)
!5256 = distinct !DILexicalBlock(scope: !5251, file: !73, line: 200, column: 11)
!5257 = !DILocation(line: 200, column: 11, scope: !5251)
!5258 = !DILocation(line: 201, column: 26, scope: !5256)
!5259 = !DILocation(line: 201, column: 3, scope: !5256)
!5260 = !DILocation(line: 202, column: 1, scope: !5203)
!5261 = distinct !DISubprogram(name: "write_seqcount_t_begin_nested", scope: !397, file: !397, line: 512, type: !5262, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5262 = !DISubroutineType(types: !5263)
!5263 = !{null, !3098, !168}
!5264 = !DILocalVariable(name: "s", arg: 1, scope: !5261, file: !397, line: 512, type: !3098)
!5265 = !DILocation(line: 512, column: 62, scope: !5261)
!5266 = !DILocalVariable(name: "subclass", arg: 2, scope: !5261, file: !397, line: 512, type: !168)
!5267 = !DILocation(line: 512, column: 69, scope: !5261)
!5268 = !DILocation(line: 514, column: 29, scope: !5261)
!5269 = !DILocation(line: 514, column: 2, scope: !5261)
!5270 = !DILocation(line: 515, column: 2, scope: !5261)
!5271 = !DILocation(line: 515, column: 2, scope: !5272)
!5272 = distinct !DILexicalBlock(scope: !5261, file: !397, line: 515, column: 2)
!5273 = !DILocation(line: 516, column: 1, scope: !5261)
!5274 = distinct !DISubprogram(name: "raw_write_seqcount_t_begin", scope: !397, file: !397, line: 468, type: !3871, scopeLine: 469, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5275 = !DILocalVariable(name: "s", arg: 1, scope: !5274, file: !397, line: 468, type: !3098)
!5276 = !DILocation(line: 468, column: 59, scope: !5274)
!5277 = !DILocation(line: 470, column: 2, scope: !5274)
!5278 = !DILocation(line: 471, column: 2, scope: !5274)
!5279 = !DILocation(line: 471, column: 5, scope: !5274)
!5280 = !DILocation(line: 471, column: 13, scope: !5274)
!5281 = !DILocation(line: 472, column: 2, scope: !5274)
!5282 = !{i32 -2144944853}
!5283 = !DILocation(line: 473, column: 1, scope: !5274)
!5284 = distinct !DISubprogram(name: "kcsan_nestable_atomic_begin", scope: !4566, file: !4566, line: 148, type: !2631, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5285 = !DILocation(line: 148, column: 56, scope: !5284)
!5286 = distinct !DISubprogram(name: "raw_write_seqcount_t_end", scope: !397, file: !397, line: 487, type: !3871, scopeLine: 488, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5287 = !DILocalVariable(name: "s", arg: 1, scope: !5286, file: !397, line: 487, type: !3098)
!5288 = !DILocation(line: 487, column: 57, scope: !5286)
!5289 = !DILocation(line: 489, column: 2, scope: !5286)
!5290 = !{i32 -2144944640}
!5291 = !DILocation(line: 490, column: 2, scope: !5286)
!5292 = !DILocation(line: 490, column: 5, scope: !5286)
!5293 = !DILocation(line: 490, column: 13, scope: !5286)
!5294 = !DILocation(line: 491, column: 2, scope: !5286)
!5295 = !DILocation(line: 492, column: 1, scope: !5286)
!5296 = distinct !DISubprogram(name: "kcsan_nestable_atomic_end", scope: !4566, file: !4566, line: 149, type: !2631, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5297 = !DILocation(line: 149, column: 54, scope: !5296)
!5298 = distinct !DISubprogram(name: "__rcu_read_lock", scope: !4013, file: !4013, line: 64, type: !2631, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5299 = !DILocation(line: 66, column: 2, scope: !5298)
!5300 = !{i32 -2145350082}
!5301 = !DILocation(line: 67, column: 1, scope: !5298)
!5302 = distinct !DISubprogram(name: "__rcu_read_unlock", scope: !4013, file: !4013, line: 69, type: !2631, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5303 = !DILocation(line: 71, column: 2, scope: !5302)
!5304 = !{i32 -2145349869}
!5305 = !DILocation(line: 72, column: 2, scope: !5302)
!5306 = !DILocation(line: 72, column: 2, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !5302, file: !4013, line: 72, column: 2)
!5308 = !DILocation(line: 73, column: 1, scope: !5302)
!5309 = distinct !DISubprogram(name: "kasan_check_read", scope: !5078, file: !5078, line: 34, type: !5079, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5310 = !DILocalVariable(name: "p", arg: 1, scope: !5309, file: !5078, line: 34, type: !4235)
!5311 = !DILocation(line: 34, column: 58, scope: !5309)
!5312 = !DILocalVariable(name: "size", arg: 2, scope: !5309, file: !5078, line: 34, type: !7)
!5313 = !DILocation(line: 34, column: 74, scope: !5309)
!5314 = !DILocation(line: 36, column: 2, scope: !5309)
!5315 = distinct !DISubprogram(name: "kref_get_unless_zero", scope: !195, file: !195, line: 109, type: !5316, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5316 = !DISubroutineType(types: !5317)
!5317 = !{!168, !4967}
!5318 = !DILocalVariable(name: "kref", arg: 1, scope: !5315, file: !195, line: 109, type: !4967)
!5319 = !DILocation(line: 109, column: 66, scope: !5315)
!5320 = !DILocation(line: 111, column: 32, scope: !5315)
!5321 = !DILocation(line: 111, column: 38, scope: !5315)
!5322 = !DILocation(line: 111, column: 9, scope: !5315)
!5323 = !DILocation(line: 111, column: 2, scope: !5315)
!5324 = distinct !DISubprogram(name: "refcount_inc_not_zero", scope: !73, file: !73, line: 243, type: !4987, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5325 = !DILocalVariable(name: "r", arg: 1, scope: !5324, file: !73, line: 243, type: !4989)
!5326 = !DILocation(line: 243, column: 67, scope: !5324)
!5327 = !DILocation(line: 245, column: 33, scope: !5324)
!5328 = !DILocation(line: 245, column: 9, scope: !5324)
!5329 = !DILocation(line: 245, column: 2, scope: !5324)
!5330 = distinct !DISubprogram(name: "__refcount_inc_not_zero", scope: !73, file: !73, line: 225, type: !4996, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5331 = !DILocalVariable(name: "r", arg: 1, scope: !5330, file: !73, line: 225, type: !4989)
!5332 = !DILocation(line: 225, column: 69, scope: !5330)
!5333 = !DILocalVariable(name: "oldp", arg: 2, scope: !5330, file: !73, line: 225, type: !224)
!5334 = !DILocation(line: 225, column: 77, scope: !5330)
!5335 = !DILocation(line: 227, column: 36, scope: !5330)
!5336 = !DILocation(line: 227, column: 39, scope: !5330)
!5337 = !DILocation(line: 227, column: 9, scope: !5330)
!5338 = !DILocation(line: 227, column: 2, scope: !5330)
!5339 = distinct !DISubprogram(name: "__refcount_add_not_zero", scope: !73, file: !73, line: 150, type: !5007, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5340 = !DILocalVariable(name: "v", arg: 1, scope: !5341, file: !5011, line: 200, type: !5014)
!5341 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !5011, file: !5011, line: 200, type: !5342, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5342 = !DISubroutineType(types: !5343)
!5343 = !{!139, !5014, !224, !168}
!5344 = !DILocation(line: 200, column: 63, scope: !5341, inlinedAt: !5345)
!5345 = distinct !DILocation(line: 729, column: 9, scope: !5346, inlinedAt: !5347)
!5346 = distinct !DISubprogram(name: "atomic_try_cmpxchg_relaxed", scope: !5018, file: !5018, line: 725, type: !5342, scopeLine: 726, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5347 = distinct !DILocation(line: 157, column: 12, scope: !5339)
!5348 = !DILocalVariable(name: "old", arg: 2, scope: !5341, file: !5011, line: 200, type: !224)
!5349 = !DILocation(line: 200, column: 71, scope: !5341, inlinedAt: !5345)
!5350 = !DILocalVariable(name: "new", arg: 3, scope: !5341, file: !5011, line: 200, type: !168)
!5351 = !DILocation(line: 200, column: 80, scope: !5341, inlinedAt: !5345)
!5352 = !DILocalVariable(name: "success", scope: !5353, file: !5011, line: 202, type: !139)
!5353 = distinct !DILexicalBlock(scope: !5341, file: !5011, line: 202, column: 9)
!5354 = !DILocation(line: 202, column: 9, scope: !5353, inlinedAt: !5345)
!5355 = !DILocalVariable(name: "_old", scope: !5353, file: !5011, line: 202, type: !224)
!5356 = !DILocalVariable(name: "__old", scope: !5353, file: !5011, line: 202, type: !168)
!5357 = !DILocalVariable(name: "__new", scope: !5353, file: !5011, line: 202, type: !168)
!5358 = !DILocalVariable(name: "__ptr", scope: !5353, file: !5011, line: 202, type: !213)
!5359 = !DILocation(line: 99, column: 79, scope: !5026, inlinedAt: !5360)
!5360 = distinct !DILocation(line: 728, column: 2, scope: !5346, inlinedAt: !5347)
!5361 = !DILocation(line: 99, column: 89, scope: !5026, inlinedAt: !5360)
!5362 = !DILocation(line: 99, column: 79, scope: !5026, inlinedAt: !5363)
!5363 = distinct !DILocation(line: 727, column: 2, scope: !5346, inlinedAt: !5347)
!5364 = !DILocation(line: 99, column: 89, scope: !5026, inlinedAt: !5363)
!5365 = !DILocalVariable(name: "v", arg: 1, scope: !5346, file: !5018, line: 725, type: !5014)
!5366 = !DILocation(line: 725, column: 38, scope: !5346, inlinedAt: !5347)
!5367 = !DILocalVariable(name: "old", arg: 2, scope: !5346, file: !5018, line: 725, type: !224)
!5368 = !DILocation(line: 725, column: 46, scope: !5346, inlinedAt: !5347)
!5369 = !DILocalVariable(name: "new", arg: 3, scope: !5346, file: !5018, line: 725, type: !168)
!5370 = !DILocation(line: 725, column: 55, scope: !5346, inlinedAt: !5347)
!5371 = !DILocalVariable(name: "i", arg: 1, scope: !5339, file: !73, line: 150, type: !168)
!5372 = !DILocation(line: 150, column: 61, scope: !5339)
!5373 = !DILocalVariable(name: "r", arg: 2, scope: !5339, file: !73, line: 150, type: !4989)
!5374 = !DILocation(line: 150, column: 76, scope: !5339)
!5375 = !DILocalVariable(name: "oldp", arg: 3, scope: !5339, file: !73, line: 150, type: !224)
!5376 = !DILocation(line: 150, column: 84, scope: !5339)
!5377 = !DILocalVariable(name: "old", scope: !5339, file: !73, line: 152, type: !168)
!5378 = !DILocation(line: 152, column: 6, scope: !5339)
!5379 = !DILocation(line: 152, column: 26, scope: !5339)
!5380 = !DILocation(line: 152, column: 12, scope: !5339)
!5381 = !DILocation(line: 154, column: 2, scope: !5339)
!5382 = !DILocation(line: 155, column: 8, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5384, file: !73, line: 155, column: 7)
!5384 = distinct !DILexicalBlock(scope: !5339, file: !73, line: 154, column: 5)
!5385 = !DILocation(line: 155, column: 7, scope: !5384)
!5386 = !DILocation(line: 156, column: 4, scope: !5383)
!5387 = !DILocation(line: 157, column: 2, scope: !5384)
!5388 = !DILocation(line: 157, column: 40, scope: !5339)
!5389 = !DILocation(line: 157, column: 43, scope: !5339)
!5390 = !DILocation(line: 157, column: 55, scope: !5339)
!5391 = !DILocation(line: 157, column: 61, scope: !5339)
!5392 = !DILocation(line: 157, column: 59, scope: !5339)
!5393 = !DILocation(line: 727, column: 31, scope: !5346, inlinedAt: !5347)
!5394 = !DILocation(line: 101, column: 20, scope: !5026, inlinedAt: !5363)
!5395 = !DILocation(line: 101, column: 23, scope: !5026, inlinedAt: !5363)
!5396 = !DILocation(line: 101, column: 2, scope: !5026, inlinedAt: !5363)
!5397 = !DILocation(line: 102, column: 2, scope: !5026, inlinedAt: !5363)
!5398 = !DILocation(line: 728, column: 31, scope: !5346, inlinedAt: !5347)
!5399 = !DILocation(line: 101, column: 20, scope: !5026, inlinedAt: !5360)
!5400 = !DILocation(line: 101, column: 23, scope: !5026, inlinedAt: !5360)
!5401 = !DILocation(line: 101, column: 2, scope: !5026, inlinedAt: !5360)
!5402 = !DILocation(line: 102, column: 2, scope: !5026, inlinedAt: !5360)
!5403 = !DILocation(line: 729, column: 41, scope: !5346, inlinedAt: !5347)
!5404 = !DILocation(line: 729, column: 44, scope: !5346, inlinedAt: !5347)
!5405 = !DILocation(line: 729, column: 49, scope: !5346, inlinedAt: !5347)
!5406 = !{i32 -2146661158, i32 -2146661003}
!5407 = !DILocation(line: 202, column: 9, scope: !5408, inlinedAt: !5345)
!5408 = distinct !DILexicalBlock(scope: !5353, file: !5011, line: 202, column: 9)
!5409 = !DILocation(line: 202, column: 9, scope: !5341, inlinedAt: !5345)
!5410 = !DILocation(line: 157, column: 11, scope: !5339)
!5411 = distinct !{!5411, !5381, !5412}
!5412 = !DILocation(line: 157, column: 63, scope: !5339)
!5413 = !DILocation(line: 159, column: 6, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5339, file: !73, line: 159, column: 6)
!5415 = !DILocation(line: 159, column: 6, scope: !5339)
!5416 = !DILocation(line: 160, column: 11, scope: !5414)
!5417 = !DILocation(line: 160, column: 4, scope: !5414)
!5418 = !DILocation(line: 160, column: 9, scope: !5414)
!5419 = !DILocation(line: 160, column: 3, scope: !5414)
!5420 = !DILocation(line: 162, column: 6, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5339, file: !73, line: 162, column: 6)
!5422 = !DILocation(line: 162, column: 6, scope: !5339)
!5423 = !DILocation(line: 163, column: 26, scope: !5421)
!5424 = !DILocation(line: 163, column: 3, scope: !5421)
!5425 = !DILocation(line: 165, column: 9, scope: !5339)
!5426 = !DILocation(line: 165, column: 2, scope: !5339)
!5427 = distinct !DISubprogram(name: "refcount_read", scope: !73, file: !73, line: 145, type: !5428, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5428 = !DISubroutineType(types: !5429)
!5429 = !{!7, !5430}
!5430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5431, size: 64)
!5431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!5432 = !DILocalVariable(name: "v", arg: 1, scope: !5433, file: !5011, line: 23, type: !5436)
!5433 = distinct !DISubprogram(name: "arch_atomic_read", scope: !5011, file: !5011, line: 23, type: !5434, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5434 = !DISubroutineType(types: !5435)
!5435 = !{!168, !5436}
!5436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5437, size: 64)
!5437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!5438 = !DILocation(line: 23, column: 61, scope: !5433, inlinedAt: !5439)
!5439 = distinct !DILocation(line: 28, column: 9, scope: !5440, inlinedAt: !5441)
!5440 = distinct !DISubprogram(name: "atomic_read", scope: !5018, file: !5018, line: 25, type: !5434, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5441 = distinct !DILocation(line: 147, column: 9, scope: !5427)
!5442 = !DILocation(line: 69, column: 73, scope: !4231, inlinedAt: !5443)
!5443 = distinct !DILocation(line: 27, column: 2, scope: !5440, inlinedAt: !5441)
!5444 = !DILocation(line: 69, column: 83, scope: !4231, inlinedAt: !5443)
!5445 = !DILocalVariable(name: "v", arg: 1, scope: !5440, file: !5018, line: 25, type: !5436)
!5446 = !DILocation(line: 25, column: 29, scope: !5440, inlinedAt: !5441)
!5447 = !DILocalVariable(name: "r", arg: 1, scope: !5427, file: !73, line: 145, type: !5430)
!5448 = !DILocation(line: 145, column: 60, scope: !5427)
!5449 = !DILocation(line: 147, column: 22, scope: !5427)
!5450 = !DILocation(line: 147, column: 25, scope: !5427)
!5451 = !DILocation(line: 27, column: 25, scope: !5440, inlinedAt: !5441)
!5452 = !DILocation(line: 71, column: 19, scope: !4231, inlinedAt: !5443)
!5453 = !DILocation(line: 71, column: 22, scope: !4231, inlinedAt: !5443)
!5454 = !DILocation(line: 71, column: 2, scope: !4231, inlinedAt: !5443)
!5455 = !DILocation(line: 72, column: 2, scope: !4231, inlinedAt: !5443)
!5456 = !DILocation(line: 28, column: 26, scope: !5440, inlinedAt: !5441)
!5457 = !DILocation(line: 29, column: 9, scope: !5433, inlinedAt: !5439)
!5458 = !DILocation(line: 147, column: 2, scope: !5427)
!5459 = distinct !DISubprogram(name: "__read_seqcount_t_retry", scope: !397, file: !397, line: 430, type: !4571, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!5460 = !DILocalVariable(name: "s", arg: 1, scope: !5459, file: !397, line: 430, type: !4573)
!5461 = !DILocation(line: 430, column: 61, scope: !5459)
!5462 = !DILocalVariable(name: "start", arg: 2, scope: !5459, file: !397, line: 430, type: !7)
!5463 = !DILocation(line: 430, column: 73, scope: !5459)
!5464 = !DILocation(line: 432, column: 2, scope: !5459)
!5465 = !DILocation(line: 433, column: 9, scope: !5466)
!5466 = distinct !DILexicalBlock(scope: !5459, file: !397, line: 433, column: 9)
!5467 = !DILocation(line: 433, column: 9, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5466, file: !397, line: 433, column: 9)
!5469 = !DILocation(line: 433, column: 9, scope: !5459)
!5470 = !DILocation(line: 433, column: 2, scope: !5459)
