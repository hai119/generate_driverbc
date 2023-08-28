; ModuleID = '../bcout/drivers/xen/xenbus/xenbus_comms.llvm.bc'
source_filename = "drivers/xen/xenbus/xenbus_comms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.xenstore_domain_interface = type { [1024 x i8], [1024 x i8], i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.58, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.page = type { i64, %union.anon.1, %union.anon.38, %struct.atomic_t, [8 x i8] }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.63, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.64, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.65, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.66, i32, i32, %struct.fsnotify_mark_connector*, i8* }
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
%struct.lock_class_key = type {}
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
%union.anon.63 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.64 = type { %struct.callback_head }
%union.anon.65 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.11 }
%union.anon.11 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i32, i64, i64, %union.anon.12, %union.anon.13 }
%union.anon.12 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.13 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.15 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.15 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.66 = type { %struct.pipe_inode_info* }
%struct.fsnotify_mark_connector = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.38 = type { %struct.atomic_t }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.39 }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.25 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.25 = type { %struct.callback_head }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.17, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.18, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.19, %union.anon.23, %struct.key_restriction* }
%union.anon.17 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.18 = type { i64 }
%union.anon.19 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.20, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.20 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.23 = type { %union.key_payload }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.44, %union.anon.45, i32 }
%struct.request_queue = type opaque
%union.anon.44 = type { %struct.list_head }
%union.anon.45 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.46 }
%struct.anon.46 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.50 }
%struct.anon.50 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.57, i32, [12 x i8] }
%union.anon.57 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.58 = type { %struct.callback_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.59, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.62 }
%union.anon.59 = type { %struct.anon.60 }
%struct.anon.60 = type { i64, i64 }
%union.anon.62 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.anon.67 = type { %struct.xsd_sockmsg, i8*, %union.anon.68, i8, i8, i32 }
%struct.xsd_sockmsg = type { i32, i32, i32, i32 }
%union.anon.68 = type { i8* }
%struct.kmem_cache = type opaque
%struct.anon.69 = type { %struct.xb_req_data*, i32, i32 }
%struct.xb_req_data = type { %struct.list_head, %struct.wait_queue_head, %struct.xsd_sockmsg, i32, i32, i8*, %struct.kvec*, i32, i32, i32, i8, void (%struct.xb_req_data*)*, i8* }
%struct.kvec = type { i8*, i64 }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.xs_watch_event = type { %struct.list_head, i32, %struct.xenbus_watch*, i8*, i8*, [0 x i8] }
%struct.xenbus_watch = type { %struct.list_head, i8*, void (%struct.xenbus_watch*, i8*, i8*)* }
%struct.evtchn_send = type { i32 }

@xs_reply_list = dso_local global %struct.list_head { %struct.list_head* @xs_reply_list, %struct.list_head* @xs_reply_list }, align 8, !dbg !0
@xb_write_list = dso_local global %struct.list_head { %struct.list_head* @xb_write_list, %struct.list_head* @xb_write_list }, align 8, !dbg !225
@xb_waitq = dso_local global %struct.wait_queue_head { %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (%struct.wait_queue_head* @xb_waitq to %struct.list_head*), %struct.list_head* bitcast (%struct.wait_queue_head* @xb_waitq to %struct.list_head*) } }, align 8, !dbg !227
@xb_write_mutex = dso_local global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @xb_write_mutex to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @xb_write_mutex to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !229
@xs_response_mutex = dso_local global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @xs_response_mutex to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @xs_response_mutex to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !246
@xen_store_interface = external dso_local global %struct.xenstore_domain_interface*, align 8
@.str = private unnamed_addr constant [54 x i8] c"\013xenbus: request ring is not quiescent (%08x:%08x)!\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"\014xenbus: response ring is not quiescent (%08x:%08x): fixing up\0A\00", align 1
@reset_devices = external dso_local global i32, align 4
@xenbus_irq = internal global i32 0, align 4, !dbg !248
@xen_store_evtchn = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"xenbus\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"\013xenbus: request irq failed %i\0A\00", align 1
@xenbus_task = internal global %struct.task_struct* null, align 8, !dbg !250
@xenstored_ready = external dso_local global i32, align 4
@probe_work = internal global %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @probe_work to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @probe_work to i8*), i64 8) to %struct.list_head*) }, void (%struct.work_struct*)* @xenbus_probe }, align 8, !dbg !3078
@system_wq = external dso_local global %struct.workqueue_struct*, align 8
@xenbus_thread._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock undef, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !3080
@__func__.xenbus_thread = private unnamed_addr constant [14 x i8] c"xenbus_thread\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"\014xenbus: error %d while reading message\0A\00", align 1
@xenbus_thread._rs.5 = internal global %struct.ratelimit_state { %struct.raw_spinlock undef, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !3085
@.str.6 = private unnamed_addr constant [42 x i8] c"\014xenbus: error %d while writing message\0A\00", align 1
@process_msg.state = internal global %struct.anon.67 zeroinitializer, align 8, !dbg !3087
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.7 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@process_writes.state = internal global %struct.anon.69 zeroinitializer, align 8, !dbg !3124

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xb_init_comms() #0 !dbg !3138 {
entry:
  %retval = alloca i32, align 4
  %intf = alloca %struct.xenstore_domain_interface*, align 8
  %err = alloca i32, align 4
  %__k = alloca %struct.task_struct*, align 8
  %tmp = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.xenstore_domain_interface** %intf, metadata !3139, metadata !DIExpression()), !dbg !3153
  %0 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** @xen_store_interface, align 8, !dbg !3154
  store %struct.xenstore_domain_interface* %0, %struct.xenstore_domain_interface** %intf, align 8, !dbg !3153
  %1 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %intf, align 8, !dbg !3155
  %req_prod = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %1, i32 0, i32 3, !dbg !3157
  %2 = load i32, i32* %req_prod, align 4, !dbg !3157
  %3 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %intf, align 8, !dbg !3158
  %req_cons = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %3, i32 0, i32 2, !dbg !3159
  %4 = load i32, i32* %req_cons, align 4, !dbg !3159
  %cmp = icmp ne i32 %2, %4, !dbg !3160
  br i1 %cmp, label %if.then, label %if.end, !dbg !3161

if.then:                                          ; preds = %entry
  %5 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %intf, align 8, !dbg !3162
  %req_cons1 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %5, i32 0, i32 2, !dbg !3162
  %6 = load i32, i32* %req_cons1, align 4, !dbg !3162
  %7 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %intf, align 8, !dbg !3162
  %req_prod2 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %7, i32 0, i32 3, !dbg !3162
  %8 = load i32, i32* %req_prod2, align 4, !dbg !3162
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %8) #10, !dbg !3162
  br label %if.end, !dbg !3162

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %intf, align 8, !dbg !3163
  %rsp_prod = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %9, i32 0, i32 5, !dbg !3165
  %10 = load i32, i32* %rsp_prod, align 4, !dbg !3165
  %11 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %intf, align 8, !dbg !3166
  %rsp_cons = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %11, i32 0, i32 4, !dbg !3167
  %12 = load i32, i32* %rsp_cons, align 4, !dbg !3167
  %cmp3 = icmp ne i32 %10, %12, !dbg !3168
  br i1 %cmp3, label %if.then4, label %if.end12, !dbg !3169

if.then4:                                         ; preds = %if.end
  %13 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %intf, align 8, !dbg !3170
  %rsp_cons5 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %13, i32 0, i32 4, !dbg !3170
  %14 = load i32, i32* %rsp_cons5, align 4, !dbg !3170
  %15 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %intf, align 8, !dbg !3170
  %rsp_prod6 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %15, i32 0, i32 5, !dbg !3170
  %16 = load i32, i32* %rsp_prod6, align 4, !dbg !3170
  %call7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %16) #10, !dbg !3170
  %17 = load i32, i32* @reset_devices, align 4, !dbg !3172
  %tobool = icmp ne i32 %17, 0, !dbg !3172
  br i1 %tobool, label %if.end11, label %if.then8, !dbg !3174

if.then8:                                         ; preds = %if.then4
  %18 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %intf, align 8, !dbg !3175
  %rsp_prod9 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %18, i32 0, i32 5, !dbg !3176
  %19 = load i32, i32* %rsp_prod9, align 4, !dbg !3176
  %20 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %intf, align 8, !dbg !3177
  %rsp_cons10 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %20, i32 0, i32 4, !dbg !3178
  store i32 %19, i32* %rsp_cons10, align 4, !dbg !3179
  br label %if.end11, !dbg !3177

if.end11:                                         ; preds = %if.then8, %if.then4
  br label %if.end12, !dbg !3180

if.end12:                                         ; preds = %if.end11, %if.end
  %21 = load i32, i32* @xenbus_irq, align 4, !dbg !3181
  %tobool13 = icmp ne i32 %21, 0, !dbg !3181
  br i1 %tobool13, label %if.then14, label %if.else, !dbg !3183

if.then14:                                        ; preds = %if.end12
  %22 = load i32, i32* @xen_store_evtchn, align 4, !dbg !3184
  %23 = load i32, i32* @xenbus_irq, align 4, !dbg !3186
  call void @rebind_evtchn_irq(i32 %22, i32 %23) #11, !dbg !3187
  br label %if.end32, !dbg !3188

if.else:                                          ; preds = %if.end12
  call void @llvm.dbg.declare(metadata i32* %err, metadata !3189, metadata !DIExpression()), !dbg !3191
  %24 = load i32, i32* @xen_store_evtchn, align 4, !dbg !3192
  %call15 = call i32 @bind_evtchn_to_irqhandler(i32 %24, i32 (i32, i8*)* @wake_waiting, i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* bitcast (%struct.wait_queue_head* @xb_waitq to i8*)) #11, !dbg !3193
  store i32 %call15, i32* %err, align 4, !dbg !3194
  %25 = load i32, i32* %err, align 4, !dbg !3195
  %cmp16 = icmp slt i32 %25, 0, !dbg !3197
  br i1 %cmp16, label %if.then17, label %if.end19, !dbg !3198

if.then17:                                        ; preds = %if.else
  %26 = load i32, i32* %err, align 4, !dbg !3199
  %call18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %26) #10, !dbg !3199
  %27 = load i32, i32* %err, align 4, !dbg !3201
  store i32 %27, i32* %retval, align 4, !dbg !3202
  br label %return, !dbg !3202

if.end19:                                         ; preds = %if.else
  %28 = load i32, i32* %err, align 4, !dbg !3203
  store i32 %28, i32* @xenbus_irq, align 4, !dbg !3204
  %29 = load %struct.task_struct*, %struct.task_struct** @xenbus_task, align 8, !dbg !3205
  %tobool20 = icmp ne %struct.task_struct* %29, null, !dbg !3205
  br i1 %tobool20, label %if.end31, label %if.then21, !dbg !3207

if.then21:                                        ; preds = %if.end19
  call void @llvm.dbg.declare(metadata %struct.task_struct** %__k, metadata !3208, metadata !DIExpression()), !dbg !3211
  %call22 = call %struct.task_struct* (i32 (i8*)*, i8*, i32, i8*, ...) @kthread_create_on_node(i32 (i8*)* @xenbus_thread, i8* null, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)) #11, !dbg !3211
  store %struct.task_struct* %call22, %struct.task_struct** %__k, align 8, !dbg !3211
  %30 = load %struct.task_struct*, %struct.task_struct** %__k, align 8, !dbg !3212
  %31 = bitcast %struct.task_struct* %30 to i8*, !dbg !3212
  %call23 = call zeroext i1 @IS_ERR(i8* %31) #11, !dbg !3212
  br i1 %call23, label %if.end26, label %if.then24, !dbg !3211

if.then24:                                        ; preds = %if.then21
  %32 = load %struct.task_struct*, %struct.task_struct** %__k, align 8, !dbg !3212
  %call25 = call i32 @wake_up_process(%struct.task_struct* %32) #11, !dbg !3212
  br label %if.end26, !dbg !3212

if.end26:                                         ; preds = %if.then24, %if.then21
  %33 = load %struct.task_struct*, %struct.task_struct** %__k, align 8, !dbg !3211
  store %struct.task_struct* %33, %struct.task_struct** %tmp, align 8, !dbg !3212
  %34 = load %struct.task_struct*, %struct.task_struct** %tmp, align 8, !dbg !3211
  store %struct.task_struct* %34, %struct.task_struct** @xenbus_task, align 8, !dbg !3214
  %35 = load %struct.task_struct*, %struct.task_struct** @xenbus_task, align 8, !dbg !3215
  %36 = bitcast %struct.task_struct* %35 to i8*, !dbg !3215
  %call27 = call zeroext i1 @IS_ERR(i8* %36) #11, !dbg !3217
  br i1 %call27, label %if.then28, label %if.end30, !dbg !3218

if.then28:                                        ; preds = %if.end26
  %37 = load %struct.task_struct*, %struct.task_struct** @xenbus_task, align 8, !dbg !3219
  %38 = bitcast %struct.task_struct* %37 to i8*, !dbg !3219
  %call29 = call i64 @PTR_ERR(i8* %38) #11, !dbg !3220
  %conv = trunc i64 %call29 to i32, !dbg !3220
  store i32 %conv, i32* %retval, align 4, !dbg !3221
  br label %return, !dbg !3221

if.end30:                                         ; preds = %if.end26
  br label %if.end31, !dbg !3222

if.end31:                                         ; preds = %if.end30, %if.end19
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then14
  store i32 0, i32* %retval, align 4, !dbg !3223
  br label %return, !dbg !3223

return:                                           ; preds = %if.end32, %if.then28, %if.then17
  %39 = load i32, i32* %retval, align 4, !dbg !3224
  ret i32 %39, !dbg !3224
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @rebind_evtchn_irq(i32, i32) #3

; Function Attrs: noredzone
declare dso_local i32 @bind_evtchn_to_irqhandler(i32, i32 (i32, i8*)*, i64, i8*, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @wake_waiting(i32 %irq, i8* %unused) #0 !dbg !3225 {
entry:
  %irq.addr = alloca i32, align 4
  %unused.addr = alloca i8*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !3229, metadata !DIExpression()), !dbg !3230
  store i8* %unused, i8** %unused.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %unused.addr, metadata !3231, metadata !DIExpression()), !dbg !3232
  %0 = load i32, i32* @xenstored_ready, align 4, !dbg !3233
  %cmp = icmp eq i32 %0, 0, !dbg !3233
  %lnot = xor i1 %cmp, true, !dbg !3233
  %lnot1 = xor i1 %lnot, true, !dbg !3233
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3233
  %conv = sext i32 %lnot.ext to i64, !dbg !3233
  %tobool = icmp ne i64 %conv, 0, !dbg !3233
  br i1 %tobool, label %if.then, label %if.end, !dbg !3235

if.then:                                          ; preds = %entry
  store i32 1, i32* @xenstored_ready, align 4, !dbg !3236
  %call = call zeroext i1 @schedule_work(%struct.work_struct* @probe_work) #11, !dbg !3238
  br label %if.end, !dbg !3239

if.end:                                           ; preds = %if.then, %entry
  call void @__wake_up(%struct.wait_queue_head* @xb_waitq, i32 3, i32 1, i8* null) #11, !dbg !3240
  ret i32 1, !dbg !3241
}

; Function Attrs: noredzone
declare dso_local %struct.task_struct* @kthread_create_on_node(i32 (i8*)*, i8*, i32, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xenbus_thread(i8* %unused) #0 !dbg !3082 {
entry:
  %unused.addr = alloca i8*, align 8
  %err = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret4 = alloca i64, align 8
  %__int = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp13 = alloca i32, align 4
  store i8* %unused, i8** %unused.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %unused.addr, metadata !3242, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.declare(metadata i32* %err, metadata !3244, metadata !DIExpression()), !dbg !3245
  br label %while.cond, !dbg !3246

while.cond:                                       ; preds = %if.end37, %if.then15, %entry
  %call = call zeroext i1 @kthread_should_stop() #11, !dbg !3247
  %lnot = xor i1 %call, true, !dbg !3248
  br i1 %lnot, label %while.body, label %while.end, !dbg !3246

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %__ret, metadata !3249, metadata !DIExpression()), !dbg !3253
  store i32 0, i32* %__ret, align 4, !dbg !3253
  br label %do.body, !dbg !3253

do.body:                                          ; preds = %while.body
  br label %do.body1, !dbg !3254

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !3256

do.end:                                           ; preds = %do.body1
  br label %do.end2, !dbg !3254

do.end2:                                          ; preds = %do.end
  %call3 = call i32 @xb_thread_work() #11, !dbg !3258
  %tobool = icmp ne i32 %call3, 0, !dbg !3258
  br i1 %tobool, label %if.end12, label %if.then, !dbg !3253

if.then:                                          ; preds = %do.end2
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %__wq_entry, metadata !3260, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.declare(metadata i64* %__ret4, metadata !3274, metadata !DIExpression()), !dbg !3273
  store i64 0, i64* %__ret4, align 8, !dbg !3273
  call void @init_wait_entry(%struct.wait_queue_entry* %__wq_entry, i32 0) #11, !dbg !3273
  br label %for.cond, !dbg !3273

for.cond:                                         ; preds = %if.end11, %if.then
  call void @llvm.dbg.declare(metadata i64* %__int, metadata !3275, metadata !DIExpression()), !dbg !3279
  %call5 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* @xb_waitq, %struct.wait_queue_entry* %__wq_entry, i32 1) #11, !dbg !3279
  store i64 %call5, i64* %__int, align 8, !dbg !3279
  %call6 = call i32 @xb_thread_work() #11, !dbg !3280
  %tobool7 = icmp ne i32 %call6, 0, !dbg !3280
  br i1 %tobool7, label %if.then8, label %if.end, !dbg !3279

if.then8:                                         ; preds = %for.cond
  br label %for.end, !dbg !3280

if.end:                                           ; preds = %for.cond
  %0 = load i64, i64* %__int, align 8, !dbg !3282
  %tobool9 = icmp ne i64 %0, 0, !dbg !3282
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !3279

if.then10:                                        ; preds = %if.end
  %1 = load i64, i64* %__int, align 8, !dbg !3284
  store i64 %1, i64* %__ret4, align 8, !dbg !3284
  br label %__out, !dbg !3284

if.end11:                                         ; preds = %if.end
  call void @schedule() #11, !dbg !3279
  br label %for.cond, !dbg !3286, !llvm.loop !3287

for.end:                                          ; preds = %if.then8
  call void @finish_wait(%struct.wait_queue_head* @xb_waitq, %struct.wait_queue_entry* %__wq_entry) #11, !dbg !3273
  br label %__out, !dbg !3273

__out:                                            ; preds = %for.end, %if.then10
  call void @llvm.dbg.label(metadata !3289), !dbg !3273
  %2 = load i64, i64* %__ret4, align 8, !dbg !3273
  store i64 %2, i64* %tmp, align 8, !dbg !3273
  %3 = load i64, i64* %tmp, align 8, !dbg !3273
  %conv = trunc i64 %3 to i32, !dbg !3258
  store i32 %conv, i32* %__ret, align 4, !dbg !3258
  br label %if.end12, !dbg !3258

if.end12:                                         ; preds = %__out, %do.end2
  %4 = load i32, i32* %__ret, align 4, !dbg !3253
  store i32 %4, i32* %tmp13, align 4, !dbg !3258
  %5 = load i32, i32* %tmp13, align 4, !dbg !3253
  %tobool14 = icmp ne i32 %5, 0, !dbg !3290
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !3291

if.then15:                                        ; preds = %if.end12
  br label %while.cond, !dbg !3292, !llvm.loop !3293

if.end16:                                         ; preds = %if.end12
  %call17 = call i32 @process_msg() #11, !dbg !3295
  store i32 %call17, i32* %err, align 4, !dbg !3296
  %6 = load i32, i32* %err, align 4, !dbg !3297
  %cmp = icmp eq i32 %6, -12, !dbg !3299
  br i1 %cmp, label %if.then19, label %if.else, !dbg !3300

if.then19:                                        ; preds = %if.end16
  call void @schedule() #11, !dbg !3301
  br label %if.end28, !dbg !3301

if.else:                                          ; preds = %if.end16
  %7 = load i32, i32* %err, align 4, !dbg !3302
  %tobool20 = icmp ne i32 %7, 0, !dbg !3302
  br i1 %tobool20, label %if.then21, label %if.end27, !dbg !3304

if.then21:                                        ; preds = %if.else
  %call22 = call i32 @___ratelimit(%struct.ratelimit_state* @xenbus_thread._rs, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.xenbus_thread, i64 0, i64 0)) #11, !dbg !3305
  %tobool23 = icmp ne i32 %call22, 0, !dbg !3305
  br i1 %tobool23, label %if.then24, label %if.end26, !dbg !3308

if.then24:                                        ; preds = %if.then21
  %8 = load i32, i32* %err, align 4, !dbg !3305
  %call25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %8) #10, !dbg !3305
  br label %if.end26, !dbg !3305

if.end26:                                         ; preds = %if.then24, %if.then21
  br label %if.end27, !dbg !3309

if.end27:                                         ; preds = %if.end26, %if.else
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then19
  %call29 = call i32 @process_writes() #11, !dbg !3310
  store i32 %call29, i32* %err, align 4, !dbg !3311
  %9 = load i32, i32* %err, align 4, !dbg !3312
  %tobool30 = icmp ne i32 %9, 0, !dbg !3312
  br i1 %tobool30, label %if.then31, label %if.end37, !dbg !3314

if.then31:                                        ; preds = %if.end28
  %call32 = call i32 @___ratelimit(%struct.ratelimit_state* @xenbus_thread._rs.5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.xenbus_thread, i64 0, i64 0)) #11, !dbg !3315
  %tobool33 = icmp ne i32 %call32, 0, !dbg !3315
  br i1 %tobool33, label %if.then34, label %if.end36, !dbg !3318

if.then34:                                        ; preds = %if.then31
  %10 = load i32, i32* %err, align 4, !dbg !3315
  %call35 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %10) #10, !dbg !3315
  br label %if.end36, !dbg !3315

if.end36:                                         ; preds = %if.then34, %if.then31
  br label %if.end37, !dbg !3319

if.end37:                                         ; preds = %if.end36, %if.end28
  br label %while.cond, !dbg !3246, !llvm.loop !3293

while.end:                                        ; preds = %while.cond
  store %struct.task_struct* null, %struct.task_struct** @xenbus_task, align 8, !dbg !3320
  ret i32 0, !dbg !3321
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !3322 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3326, metadata !DIExpression()), !dbg !3327
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3328
  %1 = ptrtoint i8* %0 to i64, !dbg !3328
  %2 = inttoptr i64 %1 to i8*, !dbg !3328
  %3 = ptrtoint i8* %2 to i64, !dbg !3328
  %cmp = icmp uge i64 %3, -4095, !dbg !3328
  %lnot = xor i1 %cmp, true, !dbg !3328
  %lnot1 = xor i1 %lnot, true, !dbg !3328
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3328
  %conv = sext i32 %lnot.ext to i64, !dbg !3328
  %tobool = icmp ne i64 %conv, 0, !dbg !3328
  ret i1 %tobool, !dbg !3329
}

; Function Attrs: noredzone
declare dso_local i32 @wake_up_process(%struct.task_struct*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !3330 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3333, metadata !DIExpression()), !dbg !3334
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3335
  %1 = ptrtoint i8* %0 to i64, !dbg !3336
  ret i64 %1, !dbg !3337
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @xb_deinit_comms() #0 !dbg !3338 {
entry:
  %0 = load i32, i32* @xenbus_irq, align 4, !dbg !3339
  call void @unbind_from_irqhandler(i32 %0, i8* bitcast (%struct.wait_queue_head* @xb_waitq to i8*)) #11, !dbg !3340
  store i32 0, i32* @xenbus_irq, align 4, !dbg !3341
  ret void, !dbg !3342
}

; Function Attrs: noredzone
declare dso_local void @unbind_from_irqhandler(i32, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @schedule_work(%struct.work_struct* %work) #0 !dbg !3343 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !3346, metadata !DIExpression()), !dbg !3347
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8, !dbg !3348
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !3349
  %call = call zeroext i1 @queue_work(%struct.workqueue_struct* %0, %struct.work_struct* %1) #11, !dbg !3350
  ret i1 %call, !dbg !3351
}

; Function Attrs: noredzone
declare dso_local void @__wake_up(%struct.wait_queue_head*, i32, i32, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @queue_work(%struct.workqueue_struct* %wq, %struct.work_struct* %work) #0 !dbg !3352 {
entry:
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.workqueue_struct** %wq.addr, metadata !3355, metadata !DIExpression()), !dbg !3356
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !3357, metadata !DIExpression()), !dbg !3358
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq.addr, align 8, !dbg !3359
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !3360
  %call = call zeroext i1 @queue_work_on(i32 1, %struct.workqueue_struct* %0, %struct.work_struct* %1) #11, !dbg !3361
  ret i1 %call, !dbg !3362
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @queue_work_on(i32, %struct.workqueue_struct*, %struct.work_struct*) #3

; Function Attrs: noredzone
declare dso_local void @xenbus_probe(%struct.work_struct*) #3

; Function Attrs: noredzone
declare dso_local zeroext i1 @kthread_should_stop() #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xb_thread_work() #0 !dbg !3363 {
entry:
  %call = call i32 @xb_data_to_read() #11, !dbg !3364
  %tobool = icmp ne i32 %call, 0, !dbg !3364
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !3365

lor.rhs:                                          ; preds = %entry
  %call1 = call i32 @xb_data_to_write() #11, !dbg !3366
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3365
  br label %lor.end, !dbg !3365

lor.end:                                          ; preds = %lor.rhs, %entry
  %0 = phi i1 [ true, %entry ], [ %tobool2, %lor.rhs ]
  %lor.ext = zext i1 %0 to i32, !dbg !3365
  ret i32 %lor.ext, !dbg !3367
}

; Function Attrs: noredzone
declare dso_local void @init_wait_entry(%struct.wait_queue_entry*, i32) #3

; Function Attrs: noredzone
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head*, %struct.wait_queue_entry*, i32) #3

; Function Attrs: noredzone
declare dso_local void @schedule() #3

; Function Attrs: noredzone
declare dso_local void @finish_wait(%struct.wait_queue_head*, %struct.wait_queue_entry*) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @process_msg() #0 !dbg !3089 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3368, metadata !DIExpression()), !dbg !3372
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3382, metadata !DIExpression()), !dbg !3383
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3384, metadata !DIExpression()), !dbg !3385
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3386, metadata !DIExpression()), !dbg !3387
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3388, metadata !DIExpression()), !dbg !3392
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3394, metadata !DIExpression()), !dbg !3398
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3400, metadata !DIExpression()), !dbg !3404
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3409, metadata !DIExpression()), !dbg !3410
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3411, metadata !DIExpression()), !dbg !3412
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3413, metadata !DIExpression()), !dbg !3414
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3415, metadata !DIExpression()), !dbg !3416
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3417, metadata !DIExpression()), !dbg !3418
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3419, metadata !DIExpression()), !dbg !3420
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3421, metadata !DIExpression()), !dbg !3422
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3423, metadata !DIExpression()), !dbg !3424
  %retval = alloca i32, align 4
  %req = alloca %struct.xb_req_data*, align 8
  %err = alloca i32, align 4
  %len = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.xb_req_data*, align 8
  %__mptr70 = alloca i8*, align 8
  %tmp74 = alloca %struct.xb_req_data*, align 8
  call void @llvm.dbg.declare(metadata %struct.xb_req_data** %req, metadata !3425, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.declare(metadata i32* %err, metadata !3427, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.declare(metadata i32* %len, metadata !3429, metadata !DIExpression()), !dbg !3430
  %0 = load i8, i8* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 3), align 8, !dbg !3431
  %tobool = trunc i8 %0 to i1, !dbg !3431
  br i1 %tobool, label %if.end3, label %if.then, !dbg !3433

if.then:                                          ; preds = %entry
  store i8 1, i8* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 3), align 8, !dbg !3434
  store i8 1, i8* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 4), align 1, !dbg !3436
  store i32 0, i32* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 5), align 4, !dbg !3437
  call void @mutex_lock(%struct.mutex* @xs_response_mutex) #11, !dbg !3438
  %call = call i32 @xb_data_to_read() #11, !dbg !3439
  %tobool1 = icmp ne i32 %call, 0, !dbg !3439
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !3441

if.then2:                                         ; preds = %if.then
  call void @mutex_unlock(%struct.mutex* @xs_response_mutex) #11, !dbg !3442
  store i8 0, i8* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 3), align 8, !dbg !3444
  store i32 0, i32* %retval, align 4, !dbg !3445
  br label %return, !dbg !3445

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !3446

if.end3:                                          ; preds = %if.end, %entry
  %1 = load i8, i8* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 4), align 1, !dbg !3447
  %tobool4 = trunc i8 %1 to i1, !dbg !3447
  br i1 %tobool4, label %if.then5, label %if.end42, !dbg !3448

if.then5:                                         ; preds = %if.end3
  %2 = load i32, i32* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 5), align 4, !dbg !3449
  %conv = zext i32 %2 to i64, !dbg !3451
  %cmp = icmp ne i64 %conv, 16, !dbg !3452
  br i1 %cmp, label %if.then7, label %if.end24, !dbg !3453

if.then7:                                         ; preds = %if.then5
  %3 = load i32, i32* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 5), align 4, !dbg !3454
  %idx.ext = zext i32 %3 to i64, !dbg !3456
  %add.ptr = getelementptr i8, i8* bitcast (%struct.anon.67* @process_msg.state to i8*), i64 %idx.ext, !dbg !3456
  %4 = load i32, i32* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 5), align 4, !dbg !3457
  %conv8 = zext i32 %4 to i64, !dbg !3458
  %sub = sub i64 16, %conv8, !dbg !3459
  %conv9 = trunc i64 %sub to i32, !dbg !3460
  %call10 = call i32 @xb_read(i8* %add.ptr, i32 %conv9) #11, !dbg !3461
  store i32 %call10, i32* %err, align 4, !dbg !3462
  %5 = load i32, i32* %err, align 4, !dbg !3463
  %cmp11 = icmp slt i32 %5, 0, !dbg !3465
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !3466

if.then13:                                        ; preds = %if.then7
  br label %out, !dbg !3467

if.end14:                                         ; preds = %if.then7
  %6 = load i32, i32* %err, align 4, !dbg !3468
  %7 = load i32, i32* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 5), align 4, !dbg !3469
  %add = add i32 %7, %6, !dbg !3469
  store i32 %add, i32* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 5), align 4, !dbg !3469
  %8 = load i32, i32* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 5), align 4, !dbg !3470
  %conv15 = zext i32 %8 to i64, !dbg !3472
  %cmp16 = icmp ne i64 %conv15, 16, !dbg !3473
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !3474

if.then18:                                        ; preds = %if.end14
  store i32 0, i32* %retval, align 4, !dbg !3475
  br label %return, !dbg !3475

if.end19:                                         ; preds = %if.end14
  %9 = load i32, i32* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 0, i32 3), align 4, !dbg !3476
  %cmp20 = icmp ugt i32 %9, 4096, !dbg !3478
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !3479

if.then22:                                        ; preds = %if.end19
  store i32 -22, i32* %err, align 4, !dbg !3480
  br label %out, !dbg !3482

if.end23:                                         ; preds = %if.end19
  br label %if.end24, !dbg !3483

if.end24:                                         ; preds = %if.end23, %if.then5
  %10 = load i32, i32* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 0, i32 3), align 4, !dbg !3484
  %add25 = add i32 %10, 1, !dbg !3485
  store i32 %add25, i32* %len, align 4, !dbg !3486
  %11 = load i32, i32* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 0, i32 0), align 8, !dbg !3487
  %cmp26 = icmp eq i32 %11, 15, !dbg !3489
  br i1 %cmp26, label %if.then28, label %if.end32, !dbg !3490

if.then28:                                        ; preds = %if.end24
  %12 = load i32, i32* %len, align 4, !dbg !3491
  %conv29 = zext i32 %12 to i64, !dbg !3491
  %add30 = add i64 %conv29, 48, !dbg !3491
  %conv31 = trunc i64 %add30 to i32, !dbg !3491
  store i32 %conv31, i32* %len, align 4, !dbg !3491
  br label %if.end32, !dbg !3492

if.end32:                                         ; preds = %if.then28, %if.end24
  %13 = load i32, i32* %len, align 4, !dbg !3493
  %conv33 = zext i32 %13 to i64, !dbg !3493
  store i64 %conv33, i64* %size.addr.i, align 8
  store i32 3104, i32* %flags.addr.i, align 4
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !3494
  %15 = call i1 @llvm.is.constant.i64(i64 %14) #6, !dbg !3495
  br i1 %15, label %if.then.i, label %if.end9.i, !dbg !3496

if.then.i:                                        ; preds = %if.end32
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !3497
  %cmp.i = icmp ugt i64 %16, 8192, !dbg !3498
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3499

if.then1.i:                                       ; preds = %if.then.i
  %17 = load i64, i64* %size.addr.i, align 8, !dbg !3500
  %18 = load i32, i32* %flags.addr.i, align 4, !dbg !3501
  store i64 %17, i64* %size.addr.i.i, align 8
  store i32 %18, i32* %flags.addr.i.i, align 4
  %19 = load i64, i64* %size.addr.i.i, align 8, !dbg !3502
  %call.i.i = call i32 @get_order(i64 %19) #12, !dbg !3503
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3418
  %20 = load i64, i64* %size.addr.i.i, align 8, !dbg !3504
  %21 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3505
  %22 = load i32, i32* %order.i.i, align 4, !dbg !3506
  store i64 %20, i64* %size.addr.i.i.i, align 8
  store i32 %21, i32* %flags.addr.i.i.i, align 4
  store i32 %22, i32* %order.addr.i.i.i, align 4
  %23 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3507
  %24 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3508
  %25 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3509
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %23, i32 %24, i32 %25) #13, !dbg !3510
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3510
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3510
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3510
  call void @llvm.assume(i1 %maskcond.i.i.i) #6, !dbg !3510
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3511
  br label %kmalloc.exit, !dbg !3511

if.end.i:                                         ; preds = %if.then.i
  %26 = load i64, i64* %size.addr.i, align 8, !dbg !3512
  store i64 %26, i64* %size.addr.i11.i, align 8
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3513
  %tobool.i.i = icmp ne i64 %27, 0, !dbg !3513
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3515

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3516
  br label %kmalloc_index.exit.i, !dbg !3516

if.end.i.i:                                       ; preds = %if.end.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3517
  %cmp.i.i = icmp ule i64 %28, 8, !dbg !3519
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3520

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3521
  br label %kmalloc_index.exit.i, !dbg !3521

if.end2.i.i:                                      ; preds = %if.end.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3522
  %cmp3.i.i = icmp ugt i64 %29, 64, !dbg !3524
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3525

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3526
  %cmp4.i.i = icmp ule i64 %30, 96, !dbg !3527
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3528

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3529
  br label %kmalloc_index.exit.i, !dbg !3529

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3530
  %cmp7.i.i = icmp ugt i64 %31, 128, !dbg !3532
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3533

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3534
  %cmp9.i.i = icmp ule i64 %32, 192, !dbg !3535
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3536

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3537
  br label %kmalloc_index.exit.i, !dbg !3537

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3538
  %cmp12.i.i = icmp ule i64 %33, 8, !dbg !3540
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3541

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3542
  br label %kmalloc_index.exit.i, !dbg !3542

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3543
  %cmp15.i.i = icmp ule i64 %34, 16, !dbg !3545
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3546

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3547
  br label %kmalloc_index.exit.i, !dbg !3547

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3548
  %cmp18.i.i = icmp ule i64 %35, 32, !dbg !3550
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3551

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3552
  br label %kmalloc_index.exit.i, !dbg !3552

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3553
  %cmp21.i.i = icmp ule i64 %36, 64, !dbg !3555
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3556

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3557
  br label %kmalloc_index.exit.i, !dbg !3557

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3558
  %cmp24.i.i = icmp ule i64 %37, 128, !dbg !3560
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3561

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3562
  br label %kmalloc_index.exit.i, !dbg !3562

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3563
  %cmp27.i.i = icmp ule i64 %38, 256, !dbg !3565
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3566

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3567
  br label %kmalloc_index.exit.i, !dbg !3567

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3568
  %cmp30.i.i = icmp ule i64 %39, 512, !dbg !3570
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3571

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3572
  br label %kmalloc_index.exit.i, !dbg !3572

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3573
  %cmp33.i.i = icmp ule i64 %40, 1024, !dbg !3575
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3576

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3577
  br label %kmalloc_index.exit.i, !dbg !3577

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3578
  %cmp36.i.i = icmp ule i64 %41, 2048, !dbg !3580
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3581

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3582
  br label %kmalloc_index.exit.i, !dbg !3582

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3583
  %cmp39.i.i = icmp ule i64 %42, 4096, !dbg !3585
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3586

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3587
  br label %kmalloc_index.exit.i, !dbg !3587

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3588
  %cmp42.i.i = icmp ule i64 %43, 8192, !dbg !3590
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3591

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3592
  br label %kmalloc_index.exit.i, !dbg !3592

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3593
  %cmp45.i.i = icmp ule i64 %44, 16384, !dbg !3595
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3596

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3597
  br label %kmalloc_index.exit.i, !dbg !3597

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3598
  %cmp48.i.i = icmp ule i64 %45, 32768, !dbg !3600
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3601

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3602
  br label %kmalloc_index.exit.i, !dbg !3602

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3603
  %cmp51.i.i = icmp ule i64 %46, 65536, !dbg !3605
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3606

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3607
  br label %kmalloc_index.exit.i, !dbg !3607

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3608
  %cmp54.i.i = icmp ule i64 %47, 131072, !dbg !3610
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3611

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3612
  br label %kmalloc_index.exit.i, !dbg !3612

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3613
  %cmp57.i.i = icmp ule i64 %48, 262144, !dbg !3615
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3616

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3617
  br label %kmalloc_index.exit.i, !dbg !3617

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3618
  %cmp60.i.i = icmp ule i64 %49, 524288, !dbg !3620
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3621

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3622
  br label %kmalloc_index.exit.i, !dbg !3622

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3623
  %cmp63.i.i = icmp ule i64 %50, 1048576, !dbg !3625
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3626

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3627
  br label %kmalloc_index.exit.i, !dbg !3627

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3628
  %cmp66.i.i = icmp ule i64 %51, 2097152, !dbg !3630
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3631

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3632
  br label %kmalloc_index.exit.i, !dbg !3632

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3633
  %cmp69.i.i = icmp ule i64 %52, 4194304, !dbg !3635
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3636

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3637
  br label %kmalloc_index.exit.i, !dbg !3637

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3638
  %cmp72.i.i = icmp ule i64 %53, 8388608, !dbg !3640
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3641

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3642
  br label %kmalloc_index.exit.i, !dbg !3642

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3643
  %cmp75.i.i = icmp ule i64 %54, 16777216, !dbg !3645
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3646

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3647
  br label %kmalloc_index.exit.i, !dbg !3647

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3648
  %cmp78.i.i = icmp ule i64 %55, 33554432, !dbg !3650
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3651

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3652
  br label %kmalloc_index.exit.i, !dbg !3652

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3653
  %cmp81.i.i = icmp ule i64 %56, 67108864, !dbg !3655
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3656

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3657
  br label %kmalloc_index.exit.i, !dbg !3657

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 382, i32 0, i64 12) #6, !dbg !3658, !srcloc !3661
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 198) #6, !dbg !3662, !srcloc !3665
  unreachable, !dbg !3666

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %57 = load i32, i32* %retval.i.i, align 4, !dbg !3667
  store i32 %57, i32* %index.i, align 4, !dbg !3668
  %58 = load i32, i32* %index.i, align 4, !dbg !3669
  %tobool.i = icmp ne i32 %58, 0, !dbg !3669
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3671

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3672
  br label %kmalloc.exit, !dbg !3672

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %59 = load i32, i32* %flags.addr.i, align 4, !dbg !3673
  store i32 %59, i32* %flags.addr.i13.i, align 4
  %60 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3674
  %and.i.i = and i32 %60, 17, !dbg !3674
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3674
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3674
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3674
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3674
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3676

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3677
  br label %kmalloc_type.exit.i, !dbg !3677

if.end.i16.i:                                     ; preds = %if.end4.i
  %61 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3678
  %and2.i.i = and i32 %61, 1, !dbg !3679
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3678
  %62 = zext i1 %tobool3.i.i to i64, !dbg !3678
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3678
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3680
  br label %kmalloc_type.exit.i, !dbg !3680

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %63 = load i32, i32* %retval.i12.i, align 4, !dbg !3681
  %idxprom.i = zext i32 %63 to i64, !dbg !3682
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3682
  %64 = load i32, i32* %index.i, align 4, !dbg !3683
  %idxprom6.i = zext i32 %64 to i64, !dbg !3682
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3682
  %65 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3682
  %66 = load i32, i32* %flags.addr.i, align 4, !dbg !3684
  %67 = load i64, i64* %size.addr.i, align 8, !dbg !3685
  store %struct.kmem_cache* %65, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %66, i32* %flags.addr.i17.i, align 4
  store i64 %67, i64* %size.addr.i18.i, align 8
  %68 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3686
  %69 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3687
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %68, i32 %69) #13, !dbg !3688
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3688
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3688
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3688
  call void @llvm.assume(i1 %maskcond.i.i) #6, !dbg !3688
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3387
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3689
  %71 = load i8*, i8** %ret.i.i, align 8, !dbg !3690
  %72 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3691
  %73 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3692
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %70, i8* %71, i64 %72, i32 %73) #13, !dbg !3693
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3694
  %74 = load i8*, i8** %ret.i.i, align 8, !dbg !3695
  store i8* %74, i8** %retval.i, align 8, !dbg !3696
  br label %kmalloc.exit, !dbg !3696

if.end9.i:                                        ; preds = %if.end32
  %75 = load i64, i64* %size.addr.i, align 8, !dbg !3697
  %76 = load i32, i32* %flags.addr.i, align 4, !dbg !3698
  %call10.i = call noalias i8* @__kmalloc(i64 %75, i32 %76) #13, !dbg !3699
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3699
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3699
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3699
  call void @llvm.assume(i1 %maskcond.i) #6, !dbg !3699
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3700
  br label %kmalloc.exit, !dbg !3700

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %77 = load i8*, i8** %retval.i, align 8, !dbg !3701
  store i8* %77, i8** getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 2, i32 0), align 8, !dbg !3702
  %78 = load i8*, i8** getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 2, i32 0), align 8, !dbg !3703
  %tobool35 = icmp ne i8* %78, null, !dbg !3705
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !3706

if.then36:                                        ; preds = %kmalloc.exit
  store i32 -12, i32* %retval, align 4, !dbg !3707
  br label %return, !dbg !3707

if.end37:                                         ; preds = %kmalloc.exit
  %79 = load i32, i32* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 0, i32 0), align 8, !dbg !3708
  %cmp38 = icmp eq i32 %79, 15, !dbg !3710
  br i1 %cmp38, label %if.then40, label %if.else, !dbg !3711

if.then40:                                        ; preds = %if.end37
  %80 = load %struct.xs_watch_event*, %struct.xs_watch_event** bitcast (%union.anon.68* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 2) to %struct.xs_watch_event**), align 8, !dbg !3712
  %body = getelementptr inbounds %struct.xs_watch_event, %struct.xs_watch_event* %80, i32 0, i32 5, !dbg !3713
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %body, i64 0, i64 0, !dbg !3714
  store i8* %arraydecay, i8** getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 1), align 8, !dbg !3715
  br label %if.end41, !dbg !3716

if.else:                                          ; preds = %if.end37
  %81 = load i8*, i8** getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 2, i32 0), align 8, !dbg !3717
  store i8* %81, i8** getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 1), align 8, !dbg !3718
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then40
  store i8 0, i8* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 4), align 1, !dbg !3719
  store i32 0, i32* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 5), align 4, !dbg !3720
  br label %if.end42, !dbg !3721

if.end42:                                         ; preds = %if.end41, %if.end3
  %82 = load i8*, i8** getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 1), align 8, !dbg !3722
  %83 = load i32, i32* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 5), align 4, !dbg !3723
  %idx.ext43 = zext i32 %83 to i64, !dbg !3724
  %add.ptr44 = getelementptr i8, i8* %82, i64 %idx.ext43, !dbg !3724
  %84 = load i32, i32* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 0, i32 3), align 4, !dbg !3725
  %85 = load i32, i32* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 5), align 4, !dbg !3726
  %sub45 = sub i32 %84, %85, !dbg !3727
  %call46 = call i32 @xb_read(i8* %add.ptr44, i32 %sub45) #11, !dbg !3728
  store i32 %call46, i32* %err, align 4, !dbg !3729
  %86 = load i32, i32* %err, align 4, !dbg !3730
  %cmp47 = icmp slt i32 %86, 0, !dbg !3732
  br i1 %cmp47, label %if.then49, label %if.end50, !dbg !3733

if.then49:                                        ; preds = %if.end42
  br label %out, !dbg !3734

if.end50:                                         ; preds = %if.end42
  %87 = load i32, i32* %err, align 4, !dbg !3735
  %88 = load i32, i32* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 5), align 4, !dbg !3736
  %add51 = add i32 %88, %87, !dbg !3736
  store i32 %add51, i32* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 5), align 4, !dbg !3736
  %89 = load i32, i32* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 5), align 4, !dbg !3737
  %90 = load i32, i32* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 0, i32 3), align 4, !dbg !3739
  %cmp52 = icmp ne i32 %89, %90, !dbg !3740
  br i1 %cmp52, label %if.then54, label %if.end55, !dbg !3741

if.then54:                                        ; preds = %if.end50
  store i32 0, i32* %retval, align 4, !dbg !3742
  br label %return, !dbg !3742

if.end55:                                         ; preds = %if.end50
  %91 = load i8*, i8** getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 1), align 8, !dbg !3743
  %92 = load i32, i32* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 0, i32 3), align 4, !dbg !3744
  %idxprom = zext i32 %92 to i64, !dbg !3745
  %arrayidx = getelementptr i8, i8* %91, i64 %idxprom, !dbg !3745
  store i8 0, i8* %arrayidx, align 1, !dbg !3746
  %93 = load i32, i32* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 0, i32 0), align 8, !dbg !3747
  %cmp56 = icmp eq i32 %93, 15, !dbg !3749
  br i1 %cmp56, label %if.then58, label %if.else61, !dbg !3750

if.then58:                                        ; preds = %if.end55
  %94 = load i32, i32* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 0, i32 3), align 4, !dbg !3751
  %95 = load %struct.xs_watch_event*, %struct.xs_watch_event** bitcast (%union.anon.68* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 2) to %struct.xs_watch_event**), align 8, !dbg !3753
  %len59 = getelementptr inbounds %struct.xs_watch_event, %struct.xs_watch_event* %95, i32 0, i32 1, !dbg !3754
  store i32 %94, i32* %len59, align 8, !dbg !3755
  %96 = load %struct.xs_watch_event*, %struct.xs_watch_event** bitcast (%union.anon.68* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 2) to %struct.xs_watch_event**), align 8, !dbg !3756
  %call60 = call i32 @xs_watch_msg(%struct.xs_watch_event* %96) #11, !dbg !3757
  store i32 %call60, i32* %err, align 4, !dbg !3758
  br label %if.end91, !dbg !3759

if.else61:                                        ; preds = %if.end55
  store i32 -2, i32* %err, align 4, !dbg !3760
  call void @mutex_lock(%struct.mutex* @xb_write_mutex) #11, !dbg !3762
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3763, metadata !DIExpression()), !dbg !3766
  %97 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @xs_reply_list, i32 0, i32 0), align 8, !dbg !3766
  %98 = bitcast %struct.list_head* %97 to i8*, !dbg !3766
  store i8* %98, i8** %__mptr, align 8, !dbg !3766
  br label %do.body, !dbg !3766

do.body:                                          ; preds = %if.else61
  br label %do.end, !dbg !3767

do.end:                                           ; preds = %do.body
  %99 = load i8*, i8** %__mptr, align 8, !dbg !3766
  %add.ptr62 = getelementptr i8, i8* %99, i64 0, !dbg !3766
  %100 = bitcast i8* %add.ptr62 to %struct.xb_req_data*, !dbg !3766
  store %struct.xb_req_data* %100, %struct.xb_req_data** %tmp, align 8, !dbg !3767
  %101 = load %struct.xb_req_data*, %struct.xb_req_data** %tmp, align 8, !dbg !3766
  store %struct.xb_req_data* %101, %struct.xb_req_data** %req, align 8, !dbg !3769
  br label %for.cond, !dbg !3769

for.cond:                                         ; preds = %do.end73, %do.end
  %102 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !3770
  %list = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %102, i32 0, i32 0, !dbg !3770
  %cmp63 = icmp eq %struct.list_head* %list, @xs_reply_list, !dbg !3770
  %lnot = xor i1 %cmp63, true, !dbg !3770
  br i1 %lnot, label %for.body, label %for.end, !dbg !3769

for.body:                                         ; preds = %for.cond
  %103 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !3772
  %msg = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %103, i32 0, i32 2, !dbg !3775
  %req_id = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %msg, i32 0, i32 1, !dbg !3776
  %104 = load i32, i32* %req_id, align 4, !dbg !3776
  %105 = load i32, i32* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 0, i32 1), align 4, !dbg !3777
  %cmp65 = icmp eq i32 %104, %105, !dbg !3778
  br i1 %cmp65, label %if.then67, label %if.end69, !dbg !3779

if.then67:                                        ; preds = %for.body
  %106 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !3780
  %list68 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %106, i32 0, i32 0, !dbg !3782
  call void @list_del(%struct.list_head* %list68) #11, !dbg !3783
  store i32 0, i32* %err, align 4, !dbg !3784
  br label %for.end, !dbg !3785

if.end69:                                         ; preds = %for.body
  br label %for.inc, !dbg !3786

for.inc:                                          ; preds = %if.end69
  call void @llvm.dbg.declare(metadata i8** %__mptr70, metadata !3787, metadata !DIExpression()), !dbg !3789
  %107 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !3789
  %list71 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %107, i32 0, i32 0, !dbg !3789
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list71, i32 0, i32 0, !dbg !3789
  %108 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3789
  %109 = bitcast %struct.list_head* %108 to i8*, !dbg !3789
  store i8* %109, i8** %__mptr70, align 8, !dbg !3789
  br label %do.body72, !dbg !3789

do.body72:                                        ; preds = %for.inc
  br label %do.end73, !dbg !3790

do.end73:                                         ; preds = %do.body72
  %110 = load i8*, i8** %__mptr70, align 8, !dbg !3789
  %add.ptr75 = getelementptr i8, i8* %110, i64 0, !dbg !3789
  %111 = bitcast i8* %add.ptr75 to %struct.xb_req_data*, !dbg !3789
  store %struct.xb_req_data* %111, %struct.xb_req_data** %tmp74, align 8, !dbg !3790
  %112 = load %struct.xb_req_data*, %struct.xb_req_data** %tmp74, align 8, !dbg !3789
  store %struct.xb_req_data* %112, %struct.xb_req_data** %req, align 8, !dbg !3770
  br label %for.cond, !dbg !3770, !llvm.loop !3792

for.end:                                          ; preds = %if.then67, %for.cond
  call void @mutex_unlock(%struct.mutex* @xb_write_mutex) #11, !dbg !3794
  %113 = load i32, i32* %err, align 4, !dbg !3795
  %tobool76 = icmp ne i32 %113, 0, !dbg !3795
  br i1 %tobool76, label %if.then77, label %if.end78, !dbg !3797

if.then77:                                        ; preds = %for.end
  br label %out, !dbg !3798

if.end78:                                         ; preds = %for.end
  %114 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !3799
  %state = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %114, i32 0, i32 9, !dbg !3801
  %115 = load i32, i32* %state, align 8, !dbg !3801
  %cmp79 = icmp eq i32 %115, 1, !dbg !3802
  br i1 %cmp79, label %if.then81, label %if.else89, !dbg !3803

if.then81:                                        ; preds = %if.end78
  %116 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !3804
  %caller_req_id = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %116, i32 0, i32 3, !dbg !3806
  %117 = load i32, i32* %caller_req_id, align 8, !dbg !3806
  %118 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !3807
  %msg82 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %118, i32 0, i32 2, !dbg !3808
  %req_id83 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %msg82, i32 0, i32 1, !dbg !3809
  store i32 %117, i32* %req_id83, align 4, !dbg !3810
  %119 = load i32, i32* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 0, i32 0), align 8, !dbg !3811
  %120 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !3812
  %msg84 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %120, i32 0, i32 2, !dbg !3813
  %type = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %msg84, i32 0, i32 0, !dbg !3814
  store i32 %119, i32* %type, align 8, !dbg !3815
  %121 = load i32, i32* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 0, i32 3), align 4, !dbg !3816
  %122 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !3817
  %msg85 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %122, i32 0, i32 2, !dbg !3818
  %len86 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %msg85, i32 0, i32 3, !dbg !3819
  store i32 %121, i32* %len86, align 4, !dbg !3820
  %123 = load i8*, i8** getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 1), align 8, !dbg !3821
  %124 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !3822
  %body87 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %124, i32 0, i32 5, !dbg !3823
  store i8* %123, i8** %body87, align 8, !dbg !3824
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !3825, !srcloc !3826
  %125 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !3827
  %state88 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %125, i32 0, i32 9, !dbg !3828
  store i32 2, i32* %state88, align 8, !dbg !3829
  %126 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !3830
  %cb = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %126, i32 0, i32 11, !dbg !3831
  %127 = load void (%struct.xb_req_data*)*, void (%struct.xb_req_data*)** %cb, align 8, !dbg !3831
  %128 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !3832
  call void %127(%struct.xb_req_data* %128) #11, !dbg !3830
  br label %if.end90, !dbg !3833

if.else89:                                        ; preds = %if.end78
  %129 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !3834
  %130 = bitcast %struct.xb_req_data* %129 to i8*, !dbg !3834
  call void @kfree(i8* %130) #11, !dbg !3835
  br label %if.end90

if.end90:                                         ; preds = %if.else89, %if.then81
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.then58
  call void @mutex_unlock(%struct.mutex* @xs_response_mutex) #11, !dbg !3836
  store i8 0, i8* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 3), align 8, !dbg !3837
  store i8* null, i8** getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 2, i32 0), align 8, !dbg !3838
  %131 = load i32, i32* %err, align 4, !dbg !3839
  store i32 %131, i32* %retval, align 4, !dbg !3840
  br label %return, !dbg !3840

out:                                              ; preds = %if.then77, %if.then49, %if.then22, %if.then13
  call void @llvm.dbg.label(metadata !3841), !dbg !3842
  call void @mutex_unlock(%struct.mutex* @xs_response_mutex) #11, !dbg !3843
  store i8 0, i8* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 3), align 8, !dbg !3844
  %132 = load i8*, i8** getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 2, i32 0), align 8, !dbg !3845
  call void @kfree(i8* %132) #11, !dbg !3846
  store i8* null, i8** getelementptr inbounds (%struct.anon.67, %struct.anon.67* @process_msg.state, i32 0, i32 2, i32 0), align 8, !dbg !3847
  %133 = load i32, i32* %err, align 4, !dbg !3848
  store i32 %133, i32* %retval, align 4, !dbg !3849
  br label %return, !dbg !3849

return:                                           ; preds = %out, %if.end91, %if.then54, %if.then36, %if.then18, %if.then2
  %134 = load i32, i32* %retval, align 4, !dbg !3850
  ret i32 %134, !dbg !3850
}

; Function Attrs: noredzone
declare dso_local i32 @___ratelimit(%struct.ratelimit_state*, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @process_writes() #0 !dbg !3126 {
entry:
  %retval = alloca i32, align 4
  %base = alloca i8*, align 8
  %len = alloca i32, align 4
  %err = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.xb_req_data*, align 8
  call void @llvm.dbg.declare(metadata i8** %base, metadata !3851, metadata !DIExpression()), !dbg !3852
  call void @llvm.dbg.declare(metadata i32* %len, metadata !3853, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.declare(metadata i32* %err, metadata !3855, metadata !DIExpression()), !dbg !3856
  store i32 0, i32* %err, align 4, !dbg !3856
  %call = call i32 @xb_data_to_write() #11, !dbg !3857
  %tobool = icmp ne i32 %call, 0, !dbg !3857
  br i1 %tobool, label %if.end, label %if.then, !dbg !3859

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3860
  br label %return, !dbg !3860

if.end:                                           ; preds = %entry
  call void @mutex_lock(%struct.mutex* @xb_write_mutex) #11, !dbg !3861
  %0 = load %struct.xb_req_data*, %struct.xb_req_data** getelementptr inbounds (%struct.anon.69, %struct.anon.69* @process_writes.state, i32 0, i32 0), align 8, !dbg !3862
  %tobool1 = icmp ne %struct.xb_req_data* %0, null, !dbg !3864
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3865

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3866, metadata !DIExpression()), !dbg !3869
  %1 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @xb_write_list, i32 0, i32 0), align 8, !dbg !3869
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !3869
  store i8* %2, i8** %__mptr, align 8, !dbg !3869
  br label %do.body, !dbg !3869

do.body:                                          ; preds = %if.then2
  br label %do.end, !dbg !3870

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !3869
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !3869
  %4 = bitcast i8* %add.ptr to %struct.xb_req_data*, !dbg !3869
  store %struct.xb_req_data* %4, %struct.xb_req_data** %tmp, align 8, !dbg !3870
  %5 = load %struct.xb_req_data*, %struct.xb_req_data** %tmp, align 8, !dbg !3869
  store %struct.xb_req_data* %5, %struct.xb_req_data** getelementptr inbounds (%struct.anon.69, %struct.anon.69* @process_writes.state, i32 0, i32 0), align 8, !dbg !3872
  store i32 -1, i32* getelementptr inbounds (%struct.anon.69, %struct.anon.69* @process_writes.state, i32 0, i32 1), align 8, !dbg !3873
  store i32 0, i32* getelementptr inbounds (%struct.anon.69, %struct.anon.69* @process_writes.state, i32 0, i32 2), align 4, !dbg !3874
  br label %if.end3, !dbg !3875

if.end3:                                          ; preds = %do.end, %if.end
  %6 = load %struct.xb_req_data*, %struct.xb_req_data** getelementptr inbounds (%struct.anon.69, %struct.anon.69* @process_writes.state, i32 0, i32 0), align 8, !dbg !3876
  %state = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %6, i32 0, i32 9, !dbg !3878
  %7 = load i32, i32* %state, align 8, !dbg !3878
  %cmp = icmp eq i32 %7, 3, !dbg !3879
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !3880

if.then4:                                         ; preds = %if.end3
  br label %out_err, !dbg !3881

if.end5:                                          ; preds = %if.end3
  br label %while.cond, !dbg !3882

while.cond:                                       ; preds = %if.end22, %if.end5
  %8 = load i32, i32* getelementptr inbounds (%struct.anon.69, %struct.anon.69* @process_writes.state, i32 0, i32 1), align 8, !dbg !3883
  %9 = load %struct.xb_req_data*, %struct.xb_req_data** getelementptr inbounds (%struct.anon.69, %struct.anon.69* @process_writes.state, i32 0, i32 0), align 8, !dbg !3884
  %num_vecs = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %9, i32 0, i32 7, !dbg !3885
  %10 = load i32, i32* %num_vecs, align 8, !dbg !3885
  %cmp6 = icmp slt i32 %8, %10, !dbg !3886
  br i1 %cmp6, label %while.body, label %while.end, !dbg !3882

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* getelementptr inbounds (%struct.anon.69, %struct.anon.69* @process_writes.state, i32 0, i32 1), align 8, !dbg !3887
  %cmp7 = icmp slt i32 %11, 0, !dbg !3890
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !3891

if.then8:                                         ; preds = %while.body
  %12 = load %struct.xb_req_data*, %struct.xb_req_data** getelementptr inbounds (%struct.anon.69, %struct.anon.69* @process_writes.state, i32 0, i32 0), align 8, !dbg !3892
  %msg = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %12, i32 0, i32 2, !dbg !3894
  %13 = bitcast %struct.xsd_sockmsg* %msg to i8*, !dbg !3895
  store i8* %13, i8** %base, align 8, !dbg !3896
  store i32 16, i32* %len, align 4, !dbg !3897
  br label %if.end12, !dbg !3898

if.else:                                          ; preds = %while.body
  %14 = load %struct.xb_req_data*, %struct.xb_req_data** getelementptr inbounds (%struct.anon.69, %struct.anon.69* @process_writes.state, i32 0, i32 0), align 8, !dbg !3899
  %vec = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %14, i32 0, i32 6, !dbg !3901
  %15 = load %struct.kvec*, %struct.kvec** %vec, align 8, !dbg !3901
  %16 = load i32, i32* getelementptr inbounds (%struct.anon.69, %struct.anon.69* @process_writes.state, i32 0, i32 1), align 8, !dbg !3902
  %idxprom = sext i32 %16 to i64, !dbg !3903
  %arrayidx = getelementptr %struct.kvec, %struct.kvec* %15, i64 %idxprom, !dbg !3903
  %iov_base = getelementptr inbounds %struct.kvec, %struct.kvec* %arrayidx, i32 0, i32 0, !dbg !3904
  %17 = load i8*, i8** %iov_base, align 8, !dbg !3904
  store i8* %17, i8** %base, align 8, !dbg !3905
  %18 = load %struct.xb_req_data*, %struct.xb_req_data** getelementptr inbounds (%struct.anon.69, %struct.anon.69* @process_writes.state, i32 0, i32 0), align 8, !dbg !3906
  %vec9 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %18, i32 0, i32 6, !dbg !3907
  %19 = load %struct.kvec*, %struct.kvec** %vec9, align 8, !dbg !3907
  %20 = load i32, i32* getelementptr inbounds (%struct.anon.69, %struct.anon.69* @process_writes.state, i32 0, i32 1), align 8, !dbg !3908
  %idxprom10 = sext i32 %20 to i64, !dbg !3909
  %arrayidx11 = getelementptr %struct.kvec, %struct.kvec* %19, i64 %idxprom10, !dbg !3909
  %iov_len = getelementptr inbounds %struct.kvec, %struct.kvec* %arrayidx11, i32 0, i32 1, !dbg !3910
  %21 = load i64, i64* %iov_len, align 8, !dbg !3910
  %conv = trunc i64 %21 to i32, !dbg !3909
  store i32 %conv, i32* %len, align 4, !dbg !3911
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then8
  %22 = load i8*, i8** %base, align 8, !dbg !3912
  %23 = load i32, i32* getelementptr inbounds (%struct.anon.69, %struct.anon.69* @process_writes.state, i32 0, i32 2), align 4, !dbg !3913
  %idx.ext = zext i32 %23 to i64, !dbg !3914
  %add.ptr13 = getelementptr i8, i8* %22, i64 %idx.ext, !dbg !3914
  %24 = load i32, i32* %len, align 4, !dbg !3915
  %25 = load i32, i32* getelementptr inbounds (%struct.anon.69, %struct.anon.69* @process_writes.state, i32 0, i32 2), align 4, !dbg !3916
  %sub = sub i32 %24, %25, !dbg !3917
  %call14 = call i32 @xb_write(i8* %add.ptr13, i32 %sub) #11, !dbg !3918
  store i32 %call14, i32* %err, align 4, !dbg !3919
  %26 = load i32, i32* %err, align 4, !dbg !3920
  %cmp15 = icmp slt i32 %26, 0, !dbg !3922
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !3923

if.then17:                                        ; preds = %if.end12
  br label %out_err, !dbg !3924

if.end18:                                         ; preds = %if.end12
  %27 = load i32, i32* %err, align 4, !dbg !3925
  %28 = load i32, i32* getelementptr inbounds (%struct.anon.69, %struct.anon.69* @process_writes.state, i32 0, i32 2), align 4, !dbg !3926
  %add = add i32 %28, %27, !dbg !3926
  store i32 %add, i32* getelementptr inbounds (%struct.anon.69, %struct.anon.69* @process_writes.state, i32 0, i32 2), align 4, !dbg !3926
  %29 = load i32, i32* getelementptr inbounds (%struct.anon.69, %struct.anon.69* @process_writes.state, i32 0, i32 2), align 4, !dbg !3927
  %30 = load i32, i32* %len, align 4, !dbg !3929
  %cmp19 = icmp ne i32 %29, %30, !dbg !3930
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !3931

if.then21:                                        ; preds = %if.end18
  br label %out, !dbg !3932

if.end22:                                         ; preds = %if.end18
  %31 = load i32, i32* getelementptr inbounds (%struct.anon.69, %struct.anon.69* @process_writes.state, i32 0, i32 1), align 8, !dbg !3933
  %inc = add i32 %31, 1, !dbg !3933
  store i32 %inc, i32* getelementptr inbounds (%struct.anon.69, %struct.anon.69* @process_writes.state, i32 0, i32 1), align 8, !dbg !3933
  store i32 0, i32* getelementptr inbounds (%struct.anon.69, %struct.anon.69* @process_writes.state, i32 0, i32 2), align 4, !dbg !3934
  br label %while.cond, !dbg !3882, !llvm.loop !3935

while.end:                                        ; preds = %while.cond
  %32 = load %struct.xb_req_data*, %struct.xb_req_data** getelementptr inbounds (%struct.anon.69, %struct.anon.69* @process_writes.state, i32 0, i32 0), align 8, !dbg !3937
  %list = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %32, i32 0, i32 0, !dbg !3938
  call void @list_del(%struct.list_head* %list) #11, !dbg !3939
  %33 = load %struct.xb_req_data*, %struct.xb_req_data** getelementptr inbounds (%struct.anon.69, %struct.anon.69* @process_writes.state, i32 0, i32 0), align 8, !dbg !3940
  %state23 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %33, i32 0, i32 9, !dbg !3941
  store i32 1, i32* %state23, align 8, !dbg !3942
  %34 = load %struct.xb_req_data*, %struct.xb_req_data** getelementptr inbounds (%struct.anon.69, %struct.anon.69* @process_writes.state, i32 0, i32 0), align 8, !dbg !3943
  %list24 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %34, i32 0, i32 0, !dbg !3944
  call void @list_add_tail(%struct.list_head* %list24, %struct.list_head* @xs_reply_list) #11, !dbg !3945
  store %struct.xb_req_data* null, %struct.xb_req_data** getelementptr inbounds (%struct.anon.69, %struct.anon.69* @process_writes.state, i32 0, i32 0), align 8, !dbg !3946
  br label %out, !dbg !3947

out:                                              ; preds = %while.end, %if.then21
  call void @llvm.dbg.label(metadata !3948), !dbg !3949
  call void @mutex_unlock(%struct.mutex* @xb_write_mutex) #11, !dbg !3950
  store i32 0, i32* %retval, align 4, !dbg !3951
  br label %return, !dbg !3951

out_err:                                          ; preds = %if.then17, %if.then4
  call void @llvm.dbg.label(metadata !3952), !dbg !3953
  %35 = load %struct.xb_req_data*, %struct.xb_req_data** getelementptr inbounds (%struct.anon.69, %struct.anon.69* @process_writes.state, i32 0, i32 0), align 8, !dbg !3954
  %msg25 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %35, i32 0, i32 2, !dbg !3955
  %type = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %msg25, i32 0, i32 0, !dbg !3956
  store i32 16, i32* %type, align 8, !dbg !3957
  %36 = load i32, i32* %err, align 4, !dbg !3958
  %37 = load %struct.xb_req_data*, %struct.xb_req_data** getelementptr inbounds (%struct.anon.69, %struct.anon.69* @process_writes.state, i32 0, i32 0), align 8, !dbg !3959
  %err26 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %37, i32 0, i32 8, !dbg !3960
  store i32 %36, i32* %err26, align 4, !dbg !3961
  %38 = load %struct.xb_req_data*, %struct.xb_req_data** getelementptr inbounds (%struct.anon.69, %struct.anon.69* @process_writes.state, i32 0, i32 0), align 8, !dbg !3962
  %list27 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %38, i32 0, i32 0, !dbg !3963
  call void @list_del(%struct.list_head* %list27) #11, !dbg !3964
  %39 = load %struct.xb_req_data*, %struct.xb_req_data** getelementptr inbounds (%struct.anon.69, %struct.anon.69* @process_writes.state, i32 0, i32 0), align 8, !dbg !3965
  %state28 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %39, i32 0, i32 9, !dbg !3967
  %40 = load i32, i32* %state28, align 8, !dbg !3967
  %cmp29 = icmp eq i32 %40, 3, !dbg !3968
  br i1 %cmp29, label %if.then31, label %if.else32, !dbg !3969

if.then31:                                        ; preds = %out_err
  %41 = load %struct.xb_req_data*, %struct.xb_req_data** getelementptr inbounds (%struct.anon.69, %struct.anon.69* @process_writes.state, i32 0, i32 0), align 8, !dbg !3970
  %42 = bitcast %struct.xb_req_data* %41 to i8*, !dbg !3971
  call void @kfree(i8* %42) #11, !dbg !3972
  br label %if.end34, !dbg !3972

if.else32:                                        ; preds = %out_err
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !3973, !srcloc !3975
  %43 = load %struct.xb_req_data*, %struct.xb_req_data** getelementptr inbounds (%struct.anon.69, %struct.anon.69* @process_writes.state, i32 0, i32 0), align 8, !dbg !3976
  %state33 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %43, i32 0, i32 9, !dbg !3977
  store i32 2, i32* %state33, align 8, !dbg !3978
  %44 = load %struct.xb_req_data*, %struct.xb_req_data** getelementptr inbounds (%struct.anon.69, %struct.anon.69* @process_writes.state, i32 0, i32 0), align 8, !dbg !3979
  %wq = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %44, i32 0, i32 1, !dbg !3979
  call void @__wake_up(%struct.wait_queue_head* %wq, i32 3, i32 1, i8* null) #11, !dbg !3979
  br label %if.end34

if.end34:                                         ; preds = %if.else32, %if.then31
  call void @mutex_unlock(%struct.mutex* @xb_write_mutex) #11, !dbg !3980
  store %struct.xb_req_data* null, %struct.xb_req_data** getelementptr inbounds (%struct.anon.69, %struct.anon.69* @process_writes.state, i32 0, i32 0), align 8, !dbg !3981
  %45 = load i32, i32* %err, align 4, !dbg !3982
  store i32 %45, i32* %retval, align 4, !dbg !3983
  br label %return, !dbg !3983

return:                                           ; preds = %if.end34, %out, %if.then
  %46 = load i32, i32* %retval, align 4, !dbg !3984
  ret i32 %46, !dbg !3984
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xb_data_to_read() #0 !dbg !3985 {
entry:
  %intf = alloca %struct.xenstore_domain_interface*, align 8
  call void @llvm.dbg.declare(metadata %struct.xenstore_domain_interface** %intf, metadata !3986, metadata !DIExpression()), !dbg !3987
  %0 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** @xen_store_interface, align 8, !dbg !3988
  store %struct.xenstore_domain_interface* %0, %struct.xenstore_domain_interface** %intf, align 8, !dbg !3987
  %1 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %intf, align 8, !dbg !3989
  %rsp_cons = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %1, i32 0, i32 4, !dbg !3990
  %2 = load i32, i32* %rsp_cons, align 4, !dbg !3990
  %3 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %intf, align 8, !dbg !3991
  %rsp_prod = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %3, i32 0, i32 5, !dbg !3992
  %4 = load i32, i32* %rsp_prod, align 4, !dbg !3992
  %cmp = icmp ne i32 %2, %4, !dbg !3993
  %conv = zext i1 %cmp to i32, !dbg !3993
  ret i32 %conv, !dbg !3994
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xb_data_to_write() #0 !dbg !3995 {
entry:
  %intf = alloca %struct.xenstore_domain_interface*, align 8
  call void @llvm.dbg.declare(metadata %struct.xenstore_domain_interface** %intf, metadata !3996, metadata !DIExpression()), !dbg !3997
  %0 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** @xen_store_interface, align 8, !dbg !3998
  store %struct.xenstore_domain_interface* %0, %struct.xenstore_domain_interface** %intf, align 8, !dbg !3997
  %1 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %intf, align 8, !dbg !3999
  %req_prod = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %1, i32 0, i32 3, !dbg !4000
  %2 = load i32, i32* %req_prod, align 4, !dbg !4000
  %3 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %intf, align 8, !dbg !4001
  %req_cons = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %3, i32 0, i32 2, !dbg !4002
  %4 = load i32, i32* %req_cons, align 4, !dbg !4002
  %sub = sub i32 %2, %4, !dbg !4003
  %cmp = icmp ne i32 %sub, 1024, !dbg !4004
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4005

land.rhs:                                         ; preds = %entry
  %call = call i32 @list_empty(%struct.list_head* @xb_write_list) #11, !dbg !4006
  %tobool = icmp ne i32 %call, 0, !dbg !4007
  %lnot = xor i1 %tobool, true, !dbg !4007
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !4008
  %land.ext = zext i1 %5 to i32, !dbg !4005
  ret i32 %land.ext, !dbg !4009
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !4010 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4016, metadata !DIExpression()), !dbg !4017
  br label %do.body, !dbg !4018

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4020

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4018
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !4018
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4018
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !4020
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !4018
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4022
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !4023
  %conv = zext i1 %cmp to i32, !dbg !4023
  ret i32 %conv, !dbg !4024
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #3

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xb_read(i8* %data, i32 %len) #0 !dbg !4025 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %intf = alloca %struct.xenstore_domain_interface*, align 8
  %cons = alloca i32, align 4
  %prod = alloca i32, align 4
  %bytes = alloca i32, align 4
  %avail = alloca i32, align 4
  %src = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4028, metadata !DIExpression()), !dbg !4029
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !4030, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.declare(metadata %struct.xenstore_domain_interface** %intf, metadata !4032, metadata !DIExpression()), !dbg !4033
  %0 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** @xen_store_interface, align 8, !dbg !4034
  store %struct.xenstore_domain_interface* %0, %struct.xenstore_domain_interface** %intf, align 8, !dbg !4033
  call void @llvm.dbg.declare(metadata i32* %cons, metadata !4035, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.declare(metadata i32* %prod, metadata !4037, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.declare(metadata i32* %bytes, metadata !4039, metadata !DIExpression()), !dbg !4040
  store i32 0, i32* %bytes, align 4, !dbg !4040
  br label %while.cond, !dbg !4041

while.cond:                                       ; preds = %if.end20, %if.then8, %entry
  %1 = load i32, i32* %len.addr, align 4, !dbg !4042
  %cmp = icmp ne i32 %1, 0, !dbg !4043
  br i1 %cmp, label %while.body, label %while.end, !dbg !4041

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %avail, metadata !4044, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.declare(metadata i8** %src, metadata !4047, metadata !DIExpression()), !dbg !4048
  %2 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %intf, align 8, !dbg !4049
  %rsp_cons = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %2, i32 0, i32 4, !dbg !4050
  %3 = load i32, i32* %rsp_cons, align 4, !dbg !4050
  store i32 %3, i32* %cons, align 4, !dbg !4051
  %4 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %intf, align 8, !dbg !4052
  %rsp_prod = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %4, i32 0, i32 5, !dbg !4053
  %5 = load i32, i32* %rsp_prod, align 4, !dbg !4053
  store i32 %5, i32* %prod, align 4, !dbg !4054
  %6 = load i32, i32* %cons, align 4, !dbg !4055
  %7 = load i32, i32* %prod, align 4, !dbg !4057
  %cmp1 = icmp eq i32 %6, %7, !dbg !4058
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4059

if.then:                                          ; preds = %while.body
  %8 = load i32, i32* %bytes, align 4, !dbg !4060
  store i32 %8, i32* %retval, align 4, !dbg !4061
  br label %return, !dbg !4061

if.end:                                           ; preds = %while.body
  %9 = load i32, i32* %cons, align 4, !dbg !4062
  %10 = load i32, i32* %prod, align 4, !dbg !4064
  %call = call i32 @check_indexes(i32 %9, i32 %10) #11, !dbg !4065
  %tobool = icmp ne i32 %call, 0, !dbg !4065
  br i1 %tobool, label %if.end5, label %if.then2, !dbg !4066

if.then2:                                         ; preds = %if.end
  %11 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %intf, align 8, !dbg !4067
  %rsp_prod3 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %11, i32 0, i32 5, !dbg !4069
  store i32 0, i32* %rsp_prod3, align 4, !dbg !4070
  %12 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %intf, align 8, !dbg !4071
  %rsp_cons4 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %12, i32 0, i32 4, !dbg !4072
  store i32 0, i32* %rsp_cons4, align 4, !dbg !4073
  store i32 -5, i32* %retval, align 4, !dbg !4074
  br label %return, !dbg !4074

if.end5:                                          ; preds = %if.end
  %13 = load i32, i32* %cons, align 4, !dbg !4075
  %14 = load i32, i32* %prod, align 4, !dbg !4076
  %15 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %intf, align 8, !dbg !4077
  %rsp = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %15, i32 0, i32 1, !dbg !4078
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %rsp, i64 0, i64 0, !dbg !4077
  %call6 = call i8* @get_input_chunk(i32 %13, i32 %14, i8* %arraydecay, i32* %avail) #11, !dbg !4079
  store i8* %call6, i8** %src, align 8, !dbg !4080
  %16 = load i32, i32* %avail, align 4, !dbg !4081
  %cmp7 = icmp eq i32 %16, 0, !dbg !4083
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !4084

if.then8:                                         ; preds = %if.end5
  br label %while.cond, !dbg !4085, !llvm.loop !4086

if.end9:                                          ; preds = %if.end5
  %17 = load i32, i32* %avail, align 4, !dbg !4088
  %18 = load i32, i32* %len.addr, align 4, !dbg !4090
  %cmp10 = icmp ugt i32 %17, %18, !dbg !4091
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !4092

if.then11:                                        ; preds = %if.end9
  %19 = load i32, i32* %len.addr, align 4, !dbg !4093
  store i32 %19, i32* %avail, align 4, !dbg !4094
  br label %if.end12, !dbg !4095

if.end12:                                         ; preds = %if.then11, %if.end9
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4096, !srcloc !4097
  %20 = load i8*, i8** %data.addr, align 8, !dbg !4098
  %21 = load i8*, i8** %src, align 8, !dbg !4099
  %22 = load i32, i32* %avail, align 4, !dbg !4100
  %conv = zext i32 %22 to i64, !dbg !4100
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 %21, i64 %conv, i1 false), !dbg !4101
  %23 = load i32, i32* %avail, align 4, !dbg !4102
  %24 = load i8*, i8** %data.addr, align 8, !dbg !4103
  %idx.ext = zext i32 %23 to i64, !dbg !4103
  %add.ptr = getelementptr i8, i8* %24, i64 %idx.ext, !dbg !4103
  store i8* %add.ptr, i8** %data.addr, align 8, !dbg !4103
  %25 = load i32, i32* %avail, align 4, !dbg !4104
  %26 = load i32, i32* %len.addr, align 4, !dbg !4105
  %sub = sub i32 %26, %25, !dbg !4105
  store i32 %sub, i32* %len.addr, align 4, !dbg !4105
  %27 = load i32, i32* %avail, align 4, !dbg !4106
  %28 = load i32, i32* %bytes, align 4, !dbg !4107
  %add = add i32 %28, %27, !dbg !4107
  store i32 %add, i32* %bytes, align 4, !dbg !4107
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4108, !srcloc !4109
  %29 = load i32, i32* %avail, align 4, !dbg !4110
  %30 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %intf, align 8, !dbg !4111
  %rsp_cons13 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %30, i32 0, i32 4, !dbg !4112
  %31 = load i32, i32* %rsp_cons13, align 4, !dbg !4113
  %add14 = add i32 %31, %29, !dbg !4113
  store i32 %add14, i32* %rsp_cons13, align 4, !dbg !4113
  %32 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %intf, align 8, !dbg !4114
  %rsp_prod15 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %32, i32 0, i32 5, !dbg !4116
  %33 = load i32, i32* %rsp_prod15, align 4, !dbg !4116
  %34 = load i32, i32* %cons, align 4, !dbg !4117
  %sub16 = sub i32 %33, %34, !dbg !4118
  %cmp17 = icmp uge i32 %sub16, 1024, !dbg !4119
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !4120

if.then19:                                        ; preds = %if.end12
  %35 = load i32, i32* @xen_store_evtchn, align 4, !dbg !4121
  call void @notify_remote_via_evtchn(i32 %35) #11, !dbg !4122
  br label %if.end20, !dbg !4122

if.end20:                                         ; preds = %if.then19, %if.end12
  br label %while.cond, !dbg !4041, !llvm.loop !4086

while.end:                                        ; preds = %while.cond
  %36 = load i32, i32* %bytes, align 4, !dbg !4123
  store i32 %36, i32* %retval, align 4, !dbg !4124
  br label %return, !dbg !4124

return:                                           ; preds = %while.end, %if.then2, %if.then
  %37 = load i32, i32* %retval, align 4, !dbg !4125
  ret i32 %37, !dbg !4125
}

; Function Attrs: noredzone
declare dso_local i32 @xs_watch_msg(%struct.xs_watch_event*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !4126 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4129, metadata !DIExpression()), !dbg !4130
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4131
  call void @__list_del_entry(%struct.list_head* %0) #11, !dbg !4132
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4133
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4134
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !4135
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4136
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !4137
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !4138
  ret void, !dbg !4139
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @check_indexes(i32 %cons, i32 %prod) #0 !dbg !4140 {
entry:
  %cons.addr = alloca i32, align 4
  %prod.addr = alloca i32, align 4
  store i32 %cons, i32* %cons.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cons.addr, metadata !4143, metadata !DIExpression()), !dbg !4144
  store i32 %prod, i32* %prod.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %prod.addr, metadata !4145, metadata !DIExpression()), !dbg !4146
  %0 = load i32, i32* %prod.addr, align 4, !dbg !4147
  %1 = load i32, i32* %cons.addr, align 4, !dbg !4148
  %sub = sub i32 %0, %1, !dbg !4149
  %cmp = icmp ule i32 %sub, 1024, !dbg !4150
  %conv = zext i1 %cmp to i32, !dbg !4150
  ret i32 %conv, !dbg !4151
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @get_input_chunk(i32 %cons, i32 %prod, i8* %buf, i32* %len) #0 !dbg !4152 {
entry:
  %cons.addr = alloca i32, align 4
  %prod.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32*, align 8
  store i32 %cons, i32* %cons.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cons.addr, metadata !4156, metadata !DIExpression()), !dbg !4157
  store i32 %prod, i32* %prod.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %prod.addr, metadata !4158, metadata !DIExpression()), !dbg !4159
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4160, metadata !DIExpression()), !dbg !4161
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !4162, metadata !DIExpression()), !dbg !4163
  %0 = load i32, i32* %cons.addr, align 4, !dbg !4164
  %and = and i32 %0, 1023, !dbg !4164
  %sub = sub i32 1024, %and, !dbg !4165
  %1 = load i32*, i32** %len.addr, align 8, !dbg !4166
  store i32 %sub, i32* %1, align 4, !dbg !4167
  %2 = load i32, i32* %prod.addr, align 4, !dbg !4168
  %3 = load i32, i32* %cons.addr, align 4, !dbg !4170
  %sub1 = sub i32 %2, %3, !dbg !4171
  %4 = load i32*, i32** %len.addr, align 8, !dbg !4172
  %5 = load i32, i32* %4, align 4, !dbg !4173
  %cmp = icmp ult i32 %sub1, %5, !dbg !4174
  br i1 %cmp, label %if.then, label %if.end, !dbg !4175

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %prod.addr, align 4, !dbg !4176
  %7 = load i32, i32* %cons.addr, align 4, !dbg !4177
  %sub2 = sub i32 %6, %7, !dbg !4178
  %8 = load i32*, i32** %len.addr, align 8, !dbg !4179
  store i32 %sub2, i32* %8, align 4, !dbg !4180
  br label %if.end, !dbg !4181

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !4182
  %10 = load i32, i32* %cons.addr, align 4, !dbg !4183
  %and3 = and i32 %10, 1023, !dbg !4183
  %idx.ext = zext i32 %and3 to i64, !dbg !4184
  %add.ptr = getelementptr i8, i8* %9, i64 %idx.ext, !dbg !4184
  ret i8* %add.ptr, !dbg !4185
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @notify_remote_via_evtchn(i32 %port) #0 !dbg !4186 {
entry:
  %port.addr = alloca i32, align 4
  %send = alloca %struct.evtchn_send, align 4
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !4192, metadata !DIExpression()), !dbg !4193
  call void @llvm.dbg.declare(metadata %struct.evtchn_send* %send, metadata !4194, metadata !DIExpression()), !dbg !4198
  %port1 = getelementptr inbounds %struct.evtchn_send, %struct.evtchn_send* %send, i32 0, i32 0, !dbg !4199
  %0 = load i32, i32* %port.addr, align 4, !dbg !4200
  store i32 %0, i32* %port1, align 4, !dbg !4199
  %1 = bitcast %struct.evtchn_send* %send to i8*, !dbg !4201
  %call = call i32 @HYPERVISOR_event_channel_op(i32 4, i8* %1) #11, !dbg !4202
  ret void, !dbg !4203
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @HYPERVISOR_event_channel_op(i32 %cmd, i8* %arg) #0 !dbg !4204 {
entry:
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %__res = alloca i64, align 8
  %__arg1 = alloca i64, align 8
  %__arg2 = alloca i64, align 8
  %__arg3 = alloca i64, align 8
  %__arg4 = alloca i64, align 8
  %__arg5 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !4208, metadata !DIExpression()), !dbg !4209
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !4210, metadata !DIExpression()), !dbg !4211
  call void @llvm.dbg.declare(metadata i64* %__res, metadata !4212, metadata !DIExpression()), !dbg !4214
  call void @llvm.dbg.declare(metadata i64* %__arg1, metadata !4215, metadata !DIExpression()), !dbg !4214
  %0 = load i64, i64* %__arg1, align 8, !dbg !4214
  store i64 %0, i64* %__arg1, align 8, !dbg !4214
  call void @llvm.dbg.declare(metadata i64* %__arg2, metadata !4216, metadata !DIExpression()), !dbg !4214
  %1 = load i64, i64* %__arg2, align 8, !dbg !4214
  store i64 %1, i64* %__arg2, align 8, !dbg !4214
  call void @llvm.dbg.declare(metadata i64* %__arg3, metadata !4217, metadata !DIExpression()), !dbg !4214
  %2 = load i64, i64* %__arg3, align 8, !dbg !4214
  store i64 %2, i64* %__arg3, align 8, !dbg !4214
  call void @llvm.dbg.declare(metadata i64* %__arg4, metadata !4218, metadata !DIExpression()), !dbg !4214
  %3 = load i64, i64* %__arg4, align 8, !dbg !4214
  store i64 %3, i64* %__arg4, align 8, !dbg !4214
  call void @llvm.dbg.declare(metadata i64* %__arg5, metadata !4219, metadata !DIExpression()), !dbg !4214
  %4 = load i64, i64* %__arg5, align 8, !dbg !4214
  store i64 %4, i64* %__arg5, align 8, !dbg !4214
  %5 = load i32, i32* %cmd.addr, align 4, !dbg !4214
  %conv = sext i32 %5 to i64, !dbg !4214
  store i64 %conv, i64* %__arg1, align 8, !dbg !4214
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !4214
  %7 = ptrtoint i8* %6 to i64, !dbg !4214
  store i64 %7, i64* %__arg2, align 8, !dbg !4214
  %8 = call i64 @llvm.read_register.i64(metadata !3132), !dbg !4214
  %9 = load i64, i64* %__arg1, align 8, !dbg !4214
  %10 = load i64, i64* %__arg2, align 8, !dbg !4214
  %11 = call { i64, i64, i64, i64 } asm sideeffect "call hypercall_page+${4:c}", "={rax},={rsp},={rdi},={rsi},i,1,2,3,~{memory},~{r8},~{r10},~{rdx},~{dirflag},~{fpsr},~{flags}"(i64 1024, i64 %8, i64 %9, i64 %10) #6, !dbg !4214, !srcloc !4220
  %asmresult = extractvalue { i64, i64, i64, i64 } %11, 0, !dbg !4214
  %asmresult1 = extractvalue { i64, i64, i64, i64 } %11, 1, !dbg !4214
  %asmresult2 = extractvalue { i64, i64, i64, i64 } %11, 2, !dbg !4214
  %asmresult3 = extractvalue { i64, i64, i64, i64 } %11, 3, !dbg !4214
  store i64 %asmresult, i64* %__res, align 8, !dbg !4214
  call void @llvm.write_register.i64(metadata !3132, i64 %asmresult1), !dbg !4214
  store i64 %asmresult2, i64* %__arg1, align 8, !dbg !4214
  store i64 %asmresult3, i64* %__arg2, align 8, !dbg !4214
  %12 = load i64, i64* %__res, align 8, !dbg !4214
  %conv4 = trunc i64 %12 to i32, !dbg !4214
  store i32 %conv4, i32* %tmp, align 4, !dbg !4214
  %13 = load i32, i32* %tmp, align 4, !dbg !4214
  ret i32 %13, !dbg !4221
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #5

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #6

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #8

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #9 !dbg !4222 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4226, metadata !DIExpression()), !dbg !4231
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4233, metadata !DIExpression()), !dbg !4234
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4235, metadata !DIExpression()), !dbg !4236
  %0 = load i64, i64* %size.addr, align 8, !dbg !4237
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4239
  br i1 %1, label %if.then, label %if.end447, !dbg !4240

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4241
  %tobool = icmp ne i64 %2, 0, !dbg !4241
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4244

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4245
  br label %return, !dbg !4245

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4246
  %cmp = icmp ult i64 %3, 4096, !dbg !4248
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4249

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4250
  br label %return, !dbg !4250

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub = sub i64 %4, 1, !dbg !4251
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4251
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4251

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub4 = sub i64 %6, 1, !dbg !4251
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4251
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4251

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub6 = sub i64 %8, 1, !dbg !4251
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4251
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4251

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4251

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub9 = sub i64 %9, 1, !dbg !4251
  %and = and i64 %sub9, -9223372036854775808, !dbg !4251
  %tobool10 = icmp ne i64 %and, 0, !dbg !4251
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4251

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4251

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub13 = sub i64 %10, 1, !dbg !4251
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4251
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4251
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4251

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4251

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub18 = sub i64 %11, 1, !dbg !4251
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4251
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4251
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4251

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4251

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub23 = sub i64 %12, 1, !dbg !4251
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4251
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4251
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4251

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4251

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub28 = sub i64 %13, 1, !dbg !4251
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4251
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4251
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4251

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4251

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub33 = sub i64 %14, 1, !dbg !4251
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4251
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4251
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4251

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4251

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub38 = sub i64 %15, 1, !dbg !4251
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4251
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4251
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4251

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4251

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub43 = sub i64 %16, 1, !dbg !4251
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4251
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4251
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4251

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4251

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub48 = sub i64 %17, 1, !dbg !4251
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4251
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4251
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4251

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4251

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub53 = sub i64 %18, 1, !dbg !4251
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4251
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4251
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4251

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4251

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub58 = sub i64 %19, 1, !dbg !4251
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4251
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4251
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4251

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4251

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub63 = sub i64 %20, 1, !dbg !4251
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4251
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4251
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4251

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4251

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub68 = sub i64 %21, 1, !dbg !4251
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4251
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4251
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4251

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4251

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub73 = sub i64 %22, 1, !dbg !4251
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4251
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4251
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4251

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4251

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub78 = sub i64 %23, 1, !dbg !4251
  %and79 = and i64 %sub78, 562949953421312, !dbg !4251
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4251
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4251

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4251

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub83 = sub i64 %24, 1, !dbg !4251
  %and84 = and i64 %sub83, 281474976710656, !dbg !4251
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4251
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4251

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4251

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub88 = sub i64 %25, 1, !dbg !4251
  %and89 = and i64 %sub88, 140737488355328, !dbg !4251
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4251
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4251

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4251

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub93 = sub i64 %26, 1, !dbg !4251
  %and94 = and i64 %sub93, 70368744177664, !dbg !4251
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4251
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4251

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4251

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub98 = sub i64 %27, 1, !dbg !4251
  %and99 = and i64 %sub98, 35184372088832, !dbg !4251
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4251
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4251

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4251

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub103 = sub i64 %28, 1, !dbg !4251
  %and104 = and i64 %sub103, 17592186044416, !dbg !4251
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4251
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4251

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4251

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub108 = sub i64 %29, 1, !dbg !4251
  %and109 = and i64 %sub108, 8796093022208, !dbg !4251
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4251
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4251

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4251

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub113 = sub i64 %30, 1, !dbg !4251
  %and114 = and i64 %sub113, 4398046511104, !dbg !4251
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4251
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4251

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4251

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub118 = sub i64 %31, 1, !dbg !4251
  %and119 = and i64 %sub118, 2199023255552, !dbg !4251
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4251
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4251

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4251

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub123 = sub i64 %32, 1, !dbg !4251
  %and124 = and i64 %sub123, 1099511627776, !dbg !4251
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4251
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4251

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4251

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub128 = sub i64 %33, 1, !dbg !4251
  %and129 = and i64 %sub128, 549755813888, !dbg !4251
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4251
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4251

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4251

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub133 = sub i64 %34, 1, !dbg !4251
  %and134 = and i64 %sub133, 274877906944, !dbg !4251
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4251
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4251

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4251

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub138 = sub i64 %35, 1, !dbg !4251
  %and139 = and i64 %sub138, 137438953472, !dbg !4251
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4251
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4251

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4251

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub143 = sub i64 %36, 1, !dbg !4251
  %and144 = and i64 %sub143, 68719476736, !dbg !4251
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4251
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4251

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4251

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub148 = sub i64 %37, 1, !dbg !4251
  %and149 = and i64 %sub148, 34359738368, !dbg !4251
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4251
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4251

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4251

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub153 = sub i64 %38, 1, !dbg !4251
  %and154 = and i64 %sub153, 17179869184, !dbg !4251
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4251
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4251

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4251

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub158 = sub i64 %39, 1, !dbg !4251
  %and159 = and i64 %sub158, 8589934592, !dbg !4251
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4251
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4251

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4251

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub163 = sub i64 %40, 1, !dbg !4251
  %and164 = and i64 %sub163, 4294967296, !dbg !4251
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4251
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4251

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4251

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub168 = sub i64 %41, 1, !dbg !4251
  %and169 = and i64 %sub168, 2147483648, !dbg !4251
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4251
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4251

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4251

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub173 = sub i64 %42, 1, !dbg !4251
  %and174 = and i64 %sub173, 1073741824, !dbg !4251
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4251
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4251

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4251

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub178 = sub i64 %43, 1, !dbg !4251
  %and179 = and i64 %sub178, 536870912, !dbg !4251
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4251
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4251

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4251

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub183 = sub i64 %44, 1, !dbg !4251
  %and184 = and i64 %sub183, 268435456, !dbg !4251
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4251
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4251

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4251

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub188 = sub i64 %45, 1, !dbg !4251
  %and189 = and i64 %sub188, 134217728, !dbg !4251
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4251
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4251

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4251

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub193 = sub i64 %46, 1, !dbg !4251
  %and194 = and i64 %sub193, 67108864, !dbg !4251
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4251
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4251

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4251

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub198 = sub i64 %47, 1, !dbg !4251
  %and199 = and i64 %sub198, 33554432, !dbg !4251
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4251
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4251

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4251

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub203 = sub i64 %48, 1, !dbg !4251
  %and204 = and i64 %sub203, 16777216, !dbg !4251
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4251
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4251

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4251

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub208 = sub i64 %49, 1, !dbg !4251
  %and209 = and i64 %sub208, 8388608, !dbg !4251
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4251
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4251

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4251

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub213 = sub i64 %50, 1, !dbg !4251
  %and214 = and i64 %sub213, 4194304, !dbg !4251
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4251
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4251

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4251

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub218 = sub i64 %51, 1, !dbg !4251
  %and219 = and i64 %sub218, 2097152, !dbg !4251
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4251
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4251

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4251

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub223 = sub i64 %52, 1, !dbg !4251
  %and224 = and i64 %sub223, 1048576, !dbg !4251
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4251
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4251

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4251

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub228 = sub i64 %53, 1, !dbg !4251
  %and229 = and i64 %sub228, 524288, !dbg !4251
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4251
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4251

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4251

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub233 = sub i64 %54, 1, !dbg !4251
  %and234 = and i64 %sub233, 262144, !dbg !4251
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4251
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4251

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4251

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub238 = sub i64 %55, 1, !dbg !4251
  %and239 = and i64 %sub238, 131072, !dbg !4251
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4251
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4251

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4251

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub243 = sub i64 %56, 1, !dbg !4251
  %and244 = and i64 %sub243, 65536, !dbg !4251
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4251
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4251

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4251

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub248 = sub i64 %57, 1, !dbg !4251
  %and249 = and i64 %sub248, 32768, !dbg !4251
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4251
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4251

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4251

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub253 = sub i64 %58, 1, !dbg !4251
  %and254 = and i64 %sub253, 16384, !dbg !4251
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4251
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4251

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4251

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub258 = sub i64 %59, 1, !dbg !4251
  %and259 = and i64 %sub258, 8192, !dbg !4251
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4251
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4251

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4251

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub263 = sub i64 %60, 1, !dbg !4251
  %and264 = and i64 %sub263, 4096, !dbg !4251
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4251
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4251

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4251

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub268 = sub i64 %61, 1, !dbg !4251
  %and269 = and i64 %sub268, 2048, !dbg !4251
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4251
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4251

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4251

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub273 = sub i64 %62, 1, !dbg !4251
  %and274 = and i64 %sub273, 1024, !dbg !4251
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4251
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4251

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4251

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub278 = sub i64 %63, 1, !dbg !4251
  %and279 = and i64 %sub278, 512, !dbg !4251
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4251
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4251

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4251

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub283 = sub i64 %64, 1, !dbg !4251
  %and284 = and i64 %sub283, 256, !dbg !4251
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4251
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4251

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4251

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub288 = sub i64 %65, 1, !dbg !4251
  %and289 = and i64 %sub288, 128, !dbg !4251
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4251
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4251

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4251

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub293 = sub i64 %66, 1, !dbg !4251
  %and294 = and i64 %sub293, 64, !dbg !4251
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4251
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4251

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4251

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub298 = sub i64 %67, 1, !dbg !4251
  %and299 = and i64 %sub298, 32, !dbg !4251
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4251
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4251

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4251

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub303 = sub i64 %68, 1, !dbg !4251
  %and304 = and i64 %sub303, 16, !dbg !4251
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4251
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4251

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4251

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub308 = sub i64 %69, 1, !dbg !4251
  %and309 = and i64 %sub308, 8, !dbg !4251
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4251
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4251

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4251

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub313 = sub i64 %70, 1, !dbg !4251
  %and314 = and i64 %sub313, 4, !dbg !4251
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4251
  %71 = zext i1 %tobool315 to i64, !dbg !4251
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4251
  br label %cond.end, !dbg !4251

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4251
  br label %cond.end317, !dbg !4251

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4251
  br label %cond.end319, !dbg !4251

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4251
  br label %cond.end321, !dbg !4251

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4251
  br label %cond.end323, !dbg !4251

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4251
  br label %cond.end325, !dbg !4251

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4251
  br label %cond.end327, !dbg !4251

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4251
  br label %cond.end329, !dbg !4251

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4251
  br label %cond.end331, !dbg !4251

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4251
  br label %cond.end333, !dbg !4251

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4251
  br label %cond.end335, !dbg !4251

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4251
  br label %cond.end337, !dbg !4251

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4251
  br label %cond.end339, !dbg !4251

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4251
  br label %cond.end341, !dbg !4251

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4251
  br label %cond.end343, !dbg !4251

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4251
  br label %cond.end345, !dbg !4251

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4251
  br label %cond.end347, !dbg !4251

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4251
  br label %cond.end349, !dbg !4251

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4251
  br label %cond.end351, !dbg !4251

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4251
  br label %cond.end353, !dbg !4251

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4251
  br label %cond.end355, !dbg !4251

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4251
  br label %cond.end357, !dbg !4251

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4251
  br label %cond.end359, !dbg !4251

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4251
  br label %cond.end361, !dbg !4251

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4251
  br label %cond.end363, !dbg !4251

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4251
  br label %cond.end365, !dbg !4251

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4251
  br label %cond.end367, !dbg !4251

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4251
  br label %cond.end369, !dbg !4251

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4251
  br label %cond.end371, !dbg !4251

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4251
  br label %cond.end373, !dbg !4251

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4251
  br label %cond.end375, !dbg !4251

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4251
  br label %cond.end377, !dbg !4251

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4251
  br label %cond.end379, !dbg !4251

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4251
  br label %cond.end381, !dbg !4251

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4251
  br label %cond.end383, !dbg !4251

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4251
  br label %cond.end385, !dbg !4251

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4251
  br label %cond.end387, !dbg !4251

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4251
  br label %cond.end389, !dbg !4251

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4251
  br label %cond.end391, !dbg !4251

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4251
  br label %cond.end393, !dbg !4251

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4251
  br label %cond.end395, !dbg !4251

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4251
  br label %cond.end397, !dbg !4251

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4251
  br label %cond.end399, !dbg !4251

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4251
  br label %cond.end401, !dbg !4251

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4251
  br label %cond.end403, !dbg !4251

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4251
  br label %cond.end405, !dbg !4251

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4251
  br label %cond.end407, !dbg !4251

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4251
  br label %cond.end409, !dbg !4251

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4251
  br label %cond.end411, !dbg !4251

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4251
  br label %cond.end413, !dbg !4251

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4251
  br label %cond.end415, !dbg !4251

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4251
  br label %cond.end417, !dbg !4251

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4251
  br label %cond.end419, !dbg !4251

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4251
  br label %cond.end421, !dbg !4251

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4251
  br label %cond.end423, !dbg !4251

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4251
  br label %cond.end425, !dbg !4251

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4251
  br label %cond.end427, !dbg !4251

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4251
  br label %cond.end429, !dbg !4251

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4251
  br label %cond.end431, !dbg !4251

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4251
  br label %cond.end433, !dbg !4251

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4251
  br label %cond.end435, !dbg !4251

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4251
  br label %cond.end437, !dbg !4251

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4251
  br label %cond.end440, !dbg !4251

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4251

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4251
  br label %cond.end444, !dbg !4251

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4251
  %sub443 = sub i64 %72, 1, !dbg !4251
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !4251
  br label %cond.end444, !dbg !4251

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4251
  %sub446 = sub i32 %cond445, 12, !dbg !4252
  %add = add i32 %sub446, 1, !dbg !4253
  store i32 %add, i32* %retval, align 4, !dbg !4254
  br label %return, !dbg !4254

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4255
  %dec = add i64 %73, -1, !dbg !4255
  store i64 %dec, i64* %size.addr, align 8, !dbg !4255
  %74 = load i64, i64* %size.addr, align 8, !dbg !4256
  %shr = lshr i64 %74, 12, !dbg !4256
  store i64 %shr, i64* %size.addr, align 8, !dbg !4256
  %75 = load i64, i64* %size.addr, align 8, !dbg !4257
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4234
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4258
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4259
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #5, !dbg !4258, !srcloc !4260
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4258
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4261
  %add.i = add i32 %79, 1, !dbg !4262
  store i32 %add.i, i32* %retval, align 4, !dbg !4263
  br label %return, !dbg !4263

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4264
  ret i32 %80, !dbg !4264
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #9 !dbg !4265 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4226, metadata !DIExpression()), !dbg !4269
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4233, metadata !DIExpression()), !dbg !4271
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4272, metadata !DIExpression()), !dbg !4273
  %0 = load i64, i64* %n.addr, align 8, !dbg !4274
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4271
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4275
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4276
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #5, !dbg !4275, !srcloc !4260
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4275
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4277
  %add.i = add i32 %4, 1, !dbg !4278
  %sub = sub i32 %add.i, 1, !dbg !4279
  ret i32 %sub, !dbg !4280
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4281 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4285, metadata !DIExpression()), !dbg !4286
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4287, metadata !DIExpression()), !dbg !4288
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4289, metadata !DIExpression()), !dbg !4290
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4291, metadata !DIExpression()), !dbg !4292
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4293
  ret i8* %0, !dbg !4294
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !4295 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4296, metadata !DIExpression()), !dbg !4297
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4298
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #11, !dbg !4300
  br i1 %call, label %if.end, label %if.then, !dbg !4301

if.then:                                          ; preds = %entry
  br label %return, !dbg !4302

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4303
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4304
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4304
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4305
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !4306
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4306
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #11, !dbg !4307
  br label %return, !dbg !4308

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4308
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !4309 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4312, metadata !DIExpression()), !dbg !4313
  ret i1 true, !dbg !4314
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4315 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4318, metadata !DIExpression()), !dbg !4319
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4320, metadata !DIExpression()), !dbg !4321
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4322
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4323
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4324
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !4325
  br label %do.body, !dbg !4326

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !4327

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !4329

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !4327

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4331
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4331
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !4331
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !4331
  br label %do.end5, !dbg !4331

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !4327

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !4333
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xb_write(i8* %data, i32 %len) #0 !dbg !4334 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %intf = alloca %struct.xenstore_domain_interface*, align 8
  %cons = alloca i32, align 4
  %prod = alloca i32, align 4
  %bytes = alloca i32, align 4
  %dst = alloca i8*, align 8
  %avail = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4337, metadata !DIExpression()), !dbg !4338
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !4339, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.declare(metadata %struct.xenstore_domain_interface** %intf, metadata !4341, metadata !DIExpression()), !dbg !4342
  %0 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** @xen_store_interface, align 8, !dbg !4343
  store %struct.xenstore_domain_interface* %0, %struct.xenstore_domain_interface** %intf, align 8, !dbg !4342
  call void @llvm.dbg.declare(metadata i32* %cons, metadata !4344, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.declare(metadata i32* %prod, metadata !4346, metadata !DIExpression()), !dbg !4347
  call void @llvm.dbg.declare(metadata i32* %bytes, metadata !4348, metadata !DIExpression()), !dbg !4349
  store i32 0, i32* %bytes, align 4, !dbg !4349
  br label %while.cond, !dbg !4350

while.cond:                                       ; preds = %if.end20, %if.then9, %entry
  %1 = load i32, i32* %len.addr, align 4, !dbg !4351
  %cmp = icmp ne i32 %1, 0, !dbg !4352
  br i1 %cmp, label %while.body, label %while.end, !dbg !4350

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i8** %dst, metadata !4353, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.declare(metadata i32* %avail, metadata !4356, metadata !DIExpression()), !dbg !4357
  %2 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %intf, align 8, !dbg !4358
  %req_cons = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %2, i32 0, i32 2, !dbg !4359
  %3 = load i32, i32* %req_cons, align 4, !dbg !4359
  store i32 %3, i32* %cons, align 4, !dbg !4360
  %4 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %intf, align 8, !dbg !4361
  %req_prod = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %4, i32 0, i32 3, !dbg !4362
  %5 = load i32, i32* %req_prod, align 4, !dbg !4362
  store i32 %5, i32* %prod, align 4, !dbg !4363
  %6 = load i32, i32* %cons, align 4, !dbg !4364
  %7 = load i32, i32* %prod, align 4, !dbg !4366
  %call = call i32 @check_indexes(i32 %6, i32 %7) #11, !dbg !4367
  %tobool = icmp ne i32 %call, 0, !dbg !4367
  br i1 %tobool, label %if.end, label %if.then, !dbg !4368

if.then:                                          ; preds = %while.body
  %8 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %intf, align 8, !dbg !4369
  %req_prod1 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %8, i32 0, i32 3, !dbg !4371
  store i32 0, i32* %req_prod1, align 4, !dbg !4372
  %9 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %intf, align 8, !dbg !4373
  %req_cons2 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %9, i32 0, i32 2, !dbg !4374
  store i32 0, i32* %req_cons2, align 4, !dbg !4375
  store i32 -5, i32* %retval, align 4, !dbg !4376
  br label %return, !dbg !4376

if.end:                                           ; preds = %while.body
  %call3 = call i32 @xb_data_to_write() #11, !dbg !4377
  %tobool4 = icmp ne i32 %call3, 0, !dbg !4377
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4379

if.then5:                                         ; preds = %if.end
  %10 = load i32, i32* %bytes, align 4, !dbg !4380
  store i32 %10, i32* %retval, align 4, !dbg !4381
  br label %return, !dbg !4381

if.end6:                                          ; preds = %if.end
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4382, !srcloc !4383
  %11 = load i32, i32* %cons, align 4, !dbg !4384
  %12 = load i32, i32* %prod, align 4, !dbg !4385
  %13 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %intf, align 8, !dbg !4386
  %req = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %13, i32 0, i32 0, !dbg !4387
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %req, i64 0, i64 0, !dbg !4386
  %call7 = call i8* @get_output_chunk(i32 %11, i32 %12, i8* %arraydecay, i32* %avail) #11, !dbg !4388
  store i8* %call7, i8** %dst, align 8, !dbg !4389
  %14 = load i32, i32* %avail, align 4, !dbg !4390
  %cmp8 = icmp eq i32 %14, 0, !dbg !4392
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !4393

if.then9:                                         ; preds = %if.end6
  br label %while.cond, !dbg !4394, !llvm.loop !4395

if.end10:                                         ; preds = %if.end6
  %15 = load i32, i32* %avail, align 4, !dbg !4397
  %16 = load i32, i32* %len.addr, align 4, !dbg !4399
  %cmp11 = icmp ugt i32 %15, %16, !dbg !4400
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !4401

if.then12:                                        ; preds = %if.end10
  %17 = load i32, i32* %len.addr, align 4, !dbg !4402
  store i32 %17, i32* %avail, align 4, !dbg !4403
  br label %if.end13, !dbg !4404

if.end13:                                         ; preds = %if.then12, %if.end10
  %18 = load i8*, i8** %dst, align 8, !dbg !4405
  %19 = load i8*, i8** %data.addr, align 8, !dbg !4406
  %20 = load i32, i32* %avail, align 4, !dbg !4407
  %conv = zext i32 %20 to i64, !dbg !4407
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %19, i64 %conv, i1 false), !dbg !4408
  %21 = load i32, i32* %avail, align 4, !dbg !4409
  %22 = load i8*, i8** %data.addr, align 8, !dbg !4410
  %idx.ext = zext i32 %21 to i64, !dbg !4410
  %add.ptr = getelementptr i8, i8* %22, i64 %idx.ext, !dbg !4410
  store i8* %add.ptr, i8** %data.addr, align 8, !dbg !4410
  %23 = load i32, i32* %avail, align 4, !dbg !4411
  %24 = load i32, i32* %len.addr, align 4, !dbg !4412
  %sub = sub i32 %24, %23, !dbg !4412
  store i32 %sub, i32* %len.addr, align 4, !dbg !4412
  %25 = load i32, i32* %avail, align 4, !dbg !4413
  %26 = load i32, i32* %bytes, align 4, !dbg !4414
  %add = add i32 %26, %25, !dbg !4414
  store i32 %add, i32* %bytes, align 4, !dbg !4414
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4415, !srcloc !4416
  %27 = load i32, i32* %avail, align 4, !dbg !4417
  %28 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %intf, align 8, !dbg !4418
  %req_prod14 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %28, i32 0, i32 3, !dbg !4419
  %29 = load i32, i32* %req_prod14, align 4, !dbg !4420
  %add15 = add i32 %29, %27, !dbg !4420
  store i32 %add15, i32* %req_prod14, align 4, !dbg !4420
  %30 = load i32, i32* %prod, align 4, !dbg !4421
  %31 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %intf, align 8, !dbg !4423
  %req_cons16 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %31, i32 0, i32 2, !dbg !4424
  %32 = load i32, i32* %req_cons16, align 4, !dbg !4424
  %cmp17 = icmp ule i32 %30, %32, !dbg !4425
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !4426

if.then19:                                        ; preds = %if.end13
  %33 = load i32, i32* @xen_store_evtchn, align 4, !dbg !4427
  call void @notify_remote_via_evtchn(i32 %33) #11, !dbg !4428
  br label %if.end20, !dbg !4428

if.end20:                                         ; preds = %if.then19, %if.end13
  br label %while.cond, !dbg !4350, !llvm.loop !4395

while.end:                                        ; preds = %while.cond
  %34 = load i32, i32* %bytes, align 4, !dbg !4429
  store i32 %34, i32* %retval, align 4, !dbg !4430
  br label %return, !dbg !4430

return:                                           ; preds = %while.end, %if.then5, %if.then
  %35 = load i32, i32* %retval, align 4, !dbg !4431
  ret i32 %35, !dbg !4431
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !4432 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4433, metadata !DIExpression()), !dbg !4434
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4435, metadata !DIExpression()), !dbg !4436
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4437
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4438
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4439
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4439
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4440
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #11, !dbg !4441
  ret void, !dbg !4442
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @get_output_chunk(i32 %cons, i32 %prod, i8* %buf, i32* %len) #0 !dbg !4443 {
entry:
  %cons.addr = alloca i32, align 4
  %prod.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32*, align 8
  store i32 %cons, i32* %cons.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cons.addr, metadata !4446, metadata !DIExpression()), !dbg !4447
  store i32 %prod, i32* %prod.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %prod.addr, metadata !4448, metadata !DIExpression()), !dbg !4449
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4450, metadata !DIExpression()), !dbg !4451
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !4452, metadata !DIExpression()), !dbg !4453
  %0 = load i32, i32* %prod.addr, align 4, !dbg !4454
  %and = and i32 %0, 1023, !dbg !4454
  %sub = sub i32 1024, %and, !dbg !4455
  %1 = load i32*, i32** %len.addr, align 8, !dbg !4456
  store i32 %sub, i32* %1, align 4, !dbg !4457
  %2 = load i32, i32* %prod.addr, align 4, !dbg !4458
  %3 = load i32, i32* %cons.addr, align 4, !dbg !4460
  %sub1 = sub i32 %2, %3, !dbg !4461
  %sub2 = sub i32 1024, %sub1, !dbg !4462
  %4 = load i32*, i32** %len.addr, align 8, !dbg !4463
  %5 = load i32, i32* %4, align 4, !dbg !4464
  %cmp = icmp ult i32 %sub2, %5, !dbg !4465
  br i1 %cmp, label %if.then, label %if.end, !dbg !4466

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %prod.addr, align 4, !dbg !4467
  %7 = load i32, i32* %cons.addr, align 4, !dbg !4468
  %sub3 = sub i32 %6, %7, !dbg !4469
  %sub4 = sub i32 1024, %sub3, !dbg !4470
  %8 = load i32*, i32** %len.addr, align 8, !dbg !4471
  store i32 %sub4, i32* %8, align 4, !dbg !4472
  br label %if.end, !dbg !4473

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !4474
  %10 = load i32, i32* %prod.addr, align 4, !dbg !4475
  %and5 = and i32 %10, 1023, !dbg !4475
  %idx.ext = zext i32 %and5 to i64, !dbg !4476
  %add.ptr = getelementptr i8, i8* %9, i64 %idx.ext, !dbg !4476
  ret i8* %add.ptr, !dbg !4477
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4478 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4481, metadata !DIExpression()), !dbg !4482
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4483, metadata !DIExpression()), !dbg !4484
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4485, metadata !DIExpression()), !dbg !4486
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4487
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4489
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4490
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #11, !dbg !4491
  br i1 %call, label %if.end, label %if.then, !dbg !4492

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !4493

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4494
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4495
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !4496
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !4497
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4498
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4499
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !4500
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !4501
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4502
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4503
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !4504
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !4505
  br label %do.body, !dbg !4506

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !4507

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !4509

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !4507

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4511
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4511
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !4511
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !4511
  br label %do.end7, !dbg !4511

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !4507

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !4513
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4514 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4517, metadata !DIExpression()), !dbg !4518
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4519, metadata !DIExpression()), !dbg !4520
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4521, metadata !DIExpression()), !dbg !4522
  ret i1 true, !dbg !4523
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone willreturn }
attributes #8 = { nounwind willreturn }
attributes #9 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { cold noredzone }
attributes #11 = { noredzone }
attributes #12 = { noredzone nounwind readnone }
attributes #13 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!3132}
!llvm.module.flags = !{!3133, !3134, !3135, !3136}
!llvm.ident = !{!3137}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xs_reply_list", scope: !2, file: !3, line: 47, type: !149, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !143, globals: !224, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/xen/xenbus/xenbus_comms.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !26, !34, !41, !48, !54, !60, !66, !99, !124, !131, !136}
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
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !61, line: 11, baseType: !7, size: 32, elements: !62)
!61 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!62 = !{!63, !64, !65}
!63 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!64 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!65 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !67, line: 30, baseType: !68, size: 64, elements: !69)
!67 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!68 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!69 = !{!70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98}
!70 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!71 = !DIEnumerator(name: "WORK_STRUCT_DELAYED_BIT", value: 1)
!72 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!73 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!74 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!75 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!76 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!77 = !DIEnumerator(name: "WORK_STRUCT_DELAYED", value: 2)
!78 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!79 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!80 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!81 = !DIEnumerator(name: "WORK_NR_COLORS", value: 15)
!82 = !DIEnumerator(name: "WORK_NO_COLOR", value: 15)
!83 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 1)
!84 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!85 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!86 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!87 = !DIEnumerator(name: "WORK_OFFQ_CANCELING", value: 16)
!88 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!89 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!90 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!91 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!92 = !DIEnumerator(name: "WORK_OFFQ_POOL_NONE", value: 2147483647)
!93 = !DIEnumerator(name: "WORK_STRUCT_FLAG_MASK", value: 255)
!94 = !DIEnumerator(name: "WORK_STRUCT_WQ_DATA_MASK", value: -256)
!95 = !DIEnumerator(name: "WORK_STRUCT_NO_POOL", value: 68719476704)
!96 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!97 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!98 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 24)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xsd_sockmsg_type", file: !100, line: 11, baseType: !7, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/xen/interface/io/xs_wire.h", directory: "/home/lizy2001/genbc/linux")
!101 = !{!102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123}
!102 = !DIEnumerator(name: "XS_DEBUG", value: 0, isUnsigned: true)
!103 = !DIEnumerator(name: "XS_DIRECTORY", value: 1, isUnsigned: true)
!104 = !DIEnumerator(name: "XS_READ", value: 2, isUnsigned: true)
!105 = !DIEnumerator(name: "XS_GET_PERMS", value: 3, isUnsigned: true)
!106 = !DIEnumerator(name: "XS_WATCH", value: 4, isUnsigned: true)
!107 = !DIEnumerator(name: "XS_UNWATCH", value: 5, isUnsigned: true)
!108 = !DIEnumerator(name: "XS_TRANSACTION_START", value: 6, isUnsigned: true)
!109 = !DIEnumerator(name: "XS_TRANSACTION_END", value: 7, isUnsigned: true)
!110 = !DIEnumerator(name: "XS_INTRODUCE", value: 8, isUnsigned: true)
!111 = !DIEnumerator(name: "XS_RELEASE", value: 9, isUnsigned: true)
!112 = !DIEnumerator(name: "XS_GET_DOMAIN_PATH", value: 10, isUnsigned: true)
!113 = !DIEnumerator(name: "XS_WRITE", value: 11, isUnsigned: true)
!114 = !DIEnumerator(name: "XS_MKDIR", value: 12, isUnsigned: true)
!115 = !DIEnumerator(name: "XS_RM", value: 13, isUnsigned: true)
!116 = !DIEnumerator(name: "XS_SET_PERMS", value: 14, isUnsigned: true)
!117 = !DIEnumerator(name: "XS_WATCH_EVENT", value: 15, isUnsigned: true)
!118 = !DIEnumerator(name: "XS_ERROR", value: 16, isUnsigned: true)
!119 = !DIEnumerator(name: "XS_IS_DOMAIN_INTRODUCED", value: 17, isUnsigned: true)
!120 = !DIEnumerator(name: "XS_RESUME", value: 18, isUnsigned: true)
!121 = !DIEnumerator(name: "XS_SET_TARGET", value: 19, isUnsigned: true)
!122 = !DIEnumerator(name: "XS_RESTRICT", value: 20, isUnsigned: true)
!123 = !DIEnumerator(name: "XS_RESET_WATCHES", value: 21, isUnsigned: true)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xb_req_state", file: !125, line: 68, baseType: !7, size: 32, elements: !126)
!125 = !DIFile(filename: "drivers/xen/xenbus/xenbus.h", directory: "/home/lizy2001/genbc/linux")
!126 = !{!127, !128, !129, !130}
!127 = !DIEnumerator(name: "xb_req_state_queued", value: 0, isUnsigned: true)
!128 = !DIEnumerator(name: "xb_req_state_wait_reply", value: 1, isUnsigned: true)
!129 = !DIEnumerator(name: "xb_req_state_got_reply", value: 2, isUnsigned: true)
!130 = !DIEnumerator(name: "xb_req_state_aborted", value: 3, isUnsigned: true)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !132, line: 10, baseType: !7, size: 32, elements: !133)
!132 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!133 = !{!134, !135}
!134 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!135 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !137, line: 305, baseType: !7, size: 32, elements: !138)
!137 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!138 = !{!139, !140, !141, !142}
!139 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!140 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!141 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!142 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!143 = !{!144, !145, !154, !155, !210, !212, !223, !68}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !150, line: 178, size: 128, elements: !151)
!150 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!151 = !{!152, !153}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !149, file: !150, line: 179, baseType: !148, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !149, file: !150, line: 179, baseType: !148, size: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !150, line: 148, baseType: !7)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xb_req_data", file: !125, line: 75, size: 832, elements: !157)
!157 = !{!158, !159, !181, !193, !194, !195, !198, !211, !213, !214, !215, !218, !222}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !156, file: !125, line: 76, baseType: !149, size: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !156, file: !125, line: 77, baseType: !160, size: 128, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !161, line: 40, baseType: !162)
!161 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !161, line: 36, size: 128, elements: !163)
!163 = !{!164, !180}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !162, file: !161, line: 37, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !166, line: 83, baseType: !167)
!166 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !166, line: 71, elements: !168)
!168 = !{!169}
!169 = !DIDerivedType(tag: DW_TAG_member, scope: !167, file: !166, line: 72, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !167, file: !166, line: 72, elements: !171)
!171 = !{!172}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !170, file: !166, line: 73, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !166, line: 20, elements: !174)
!174 = !{!175}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !173, file: !166, line: 21, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !177, line: 25, baseType: !178)
!177 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !177, line: 25, elements: !179)
!179 = !{}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !162, file: !161, line: 38, baseType: !149, size: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !156, file: !125, line: 78, baseType: !182, size: 128, offset: 256)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xsd_sockmsg", file: !100, line: 65, size: 128, elements: !183)
!183 = !{!184, !190, !191, !192}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !182, file: !100, line: 67, baseType: !185, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !150, line: 104, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !187, line: 21, baseType: !188)
!187 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !189, line: 27, baseType: !7)
!189 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!190 = !DIDerivedType(tag: DW_TAG_member, name: "req_id", scope: !182, file: !100, line: 68, baseType: !185, size: 32, offset: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "tx_id", scope: !182, file: !100, line: 69, baseType: !185, size: 32, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !182, file: !100, line: 70, baseType: !185, size: 32, offset: 96)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "caller_req_id", scope: !156, file: !125, line: 79, baseType: !185, size: 32, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !156, file: !125, line: 80, baseType: !99, size: 32, offset: 416)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !156, file: !125, line: 81, baseType: !196, size: 64, offset: 448)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !156, file: !125, line: 82, baseType: !199, size: 64, offset: 512)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !202, line: 15, size: 128, elements: !203)
!202 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!203 = !{!204, !205}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !201, file: !202, line: 16, baseType: !144, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !201, file: !202, line: 17, baseType: !206, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !150, line: 55, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !208, line: 72, baseType: !209)
!208 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !208, line: 16, baseType: !210)
!210 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "num_vecs", scope: !156, file: !125, line: 83, baseType: !212, size: 32, offset: 576)
!212 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !156, file: !125, line: 84, baseType: !212, size: 32, offset: 608)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !156, file: !125, line: 85, baseType: !124, size: 32, offset: 640)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "user_req", scope: !156, file: !125, line: 86, baseType: !216, size: 8, offset: 672)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !150, line: 30, baseType: !217)
!217 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !156, file: !125, line: 87, baseType: !219, size: 64, offset: 704)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !155}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !156, file: !125, line: 88, baseType: !144, size: 64, offset: 768)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!224 = !{!0, !225, !227, !229, !246, !248, !250, !3078, !3080, !3085, !3087, !3124}
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(name: "xb_write_list", scope: !2, file: !3, line: 50, type: !149, isLocal: false, isDefinition: true)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(name: "xb_waitq", scope: !2, file: !3, line: 51, type: !162, isLocal: false, isDefinition: true)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(name: "xb_write_mutex", scope: !2, file: !3, line: 52, type: !231, isLocal: false, isDefinition: true)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !232, line: 53, size: 192, elements: !233)
!232 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!233 = !{!234, !244, !245}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !231, file: !232, line: 54, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !236, line: 13, baseType: !237)
!236 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !150, line: 175, baseType: !238)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !150, line: 173, size: 64, elements: !239)
!239 = !{!240}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !238, file: !150, line: 174, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !187, line: 22, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !189, line: 30, baseType: !243)
!243 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !231, file: !232, line: 55, baseType: !165, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !231, file: !232, line: 59, baseType: !149, size: 128, offset: 64)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(name: "xs_response_mutex", scope: !2, file: !3, line: 55, type: !231, isLocal: false, isDefinition: true)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(name: "xenbus_irq", scope: !2, file: !3, line: 57, type: !212, isLocal: true, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(name: "xenbus_task", scope: !2, file: !3, line: 58, type: !252, isLocal: true, isDefinition: true)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !254, line: 640, size: 48640, elements: !255)
!254 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!255 = !{!256, !262, !264, !265, !275, !276, !277, !278, !279, !280, !281, !282, !286, !314, !326, !425, !426, !427, !438, !439, !441, !442, !2382, !2383, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2460, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2475, !2476, !2477, !2479, !2480, !2481, !2482, !2483, !2484, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2508, !2513, !2514, !2515, !2516, !2517, !2519, !2522, !2525, !2528, !2531, !2534, !2635, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2683, !2684, !2685, !2686, !2687, !2692, !2693, !2694, !2697, !2698, !2701, !2704, !2707, !2708, !2740, !2743, !2744, !2823, !2824, !2827, !2828, !2831, !2832, !2833, !2837, !2838, !2839, !2852, !2853, !2854, !2864, !2869, !2870, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !253, file: !254, line: 646, baseType: !257, size: 128)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !258, line: 56, size: 128, elements: !259)
!258 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!259 = !{!260, !261}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !257, file: !258, line: 57, baseType: !210, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !257, file: !258, line: 58, baseType: !186, size: 32, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !253, file: !254, line: 649, baseType: !263, size: 64, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !68)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !253, file: !254, line: 657, baseType: !144, size: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !253, file: !254, line: 658, baseType: !266, size: 32, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !267, line: 113, baseType: !268)
!267 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !267, line: 111, size: 32, elements: !269)
!269 = !{!270}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !268, file: !267, line: 112, baseType: !271, size: 32)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !150, line: 168, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !150, line: 166, size: 32, elements: !273)
!273 = !{!274}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !272, file: !150, line: 167, baseType: !212, size: 32)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !253, file: !254, line: 660, baseType: !7, size: 32, offset: 288)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !253, file: !254, line: 661, baseType: !7, size: 32, offset: 320)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !253, file: !254, line: 684, baseType: !212, size: 32, offset: 352)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !253, file: !254, line: 686, baseType: !212, size: 32, offset: 384)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !253, file: !254, line: 687, baseType: !212, size: 32, offset: 416)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !253, file: !254, line: 688, baseType: !212, size: 32, offset: 448)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !253, file: !254, line: 689, baseType: !7, size: 32, offset: 480)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !253, file: !254, line: 691, baseType: !283, size: 64, offset: 512)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !254, line: 691, flags: DIFlagFwdDecl)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !253, file: !254, line: 692, baseType: !287, size: 832, offset: 576)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !254, line: 451, size: 832, elements: !288)
!288 = !{!289, !294, !302, !303, !304, !308, !309, !310, !311, !312}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !287, file: !254, line: 453, baseType: !290, size: 128)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !254, line: 325, size: 128, elements: !291)
!291 = !{!292, !293}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !290, file: !254, line: 326, baseType: !210, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !290, file: !254, line: 327, baseType: !186, size: 32, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !287, file: !254, line: 454, baseType: !295, size: 192, align: 64, offset: 128)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !296, line: 24, size: 192, align: 64, elements: !297)
!296 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!297 = !{!298, !299, !301}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !295, file: !296, line: 25, baseType: !210, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !295, file: !296, line: 26, baseType: !300, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !295, file: !296, line: 27, baseType: !300, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !287, file: !254, line: 455, baseType: !149, size: 128, offset: 320)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !287, file: !254, line: 456, baseType: !7, size: 32, offset: 448)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !287, file: !254, line: 458, baseType: !305, size: 64, offset: 512)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !187, line: 23, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !189, line: 31, baseType: !307)
!307 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !287, file: !254, line: 459, baseType: !305, size: 64, offset: 576)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !287, file: !254, line: 460, baseType: !305, size: 64, offset: 640)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !287, file: !254, line: 461, baseType: !305, size: 64, offset: 704)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !287, file: !254, line: 463, baseType: !305, size: 64, offset: 768)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !287, file: !254, line: 465, baseType: !313, offset: 832)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !254, line: 415, elements: !179)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !253, file: !254, line: 693, baseType: !315, size: 384, offset: 1408)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !254, line: 489, size: 384, elements: !316)
!316 = !{!317, !318, !319, !320, !321, !323, !324}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !315, file: !254, line: 490, baseType: !149, size: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !315, file: !254, line: 491, baseType: !210, size: 64, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !315, file: !254, line: 492, baseType: !210, size: 64, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !315, file: !254, line: 493, baseType: !7, size: 32, offset: 256)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !315, file: !254, line: 494, baseType: !322, size: 16, offset: 288)
!322 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !315, file: !254, line: 495, baseType: !322, size: 16, offset: 304)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !315, file: !254, line: 497, baseType: !325, size: 64, offset: 320)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !253, file: !254, line: 697, baseType: !327, size: 1792, offset: 1792)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !254, line: 507, size: 1792, elements: !328)
!328 = !{!329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !422, !423}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !327, file: !254, line: 508, baseType: !295, size: 192, align: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !327, file: !254, line: 515, baseType: !305, size: 64, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !327, file: !254, line: 516, baseType: !305, size: 64, offset: 256)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !327, file: !254, line: 517, baseType: !305, size: 64, offset: 320)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !327, file: !254, line: 518, baseType: !305, size: 64, offset: 384)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !327, file: !254, line: 519, baseType: !305, size: 64, offset: 448)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !327, file: !254, line: 526, baseType: !241, size: 64, offset: 512)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !327, file: !254, line: 527, baseType: !305, size: 64, offset: 576)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !327, file: !254, line: 528, baseType: !7, size: 32, offset: 640)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !327, file: !254, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !327, file: !254, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !327, file: !254, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !327, file: !254, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !327, file: !254, line: 563, baseType: !343, size: 512, offset: 704)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !344)
!344 = !{!345, !353, !354, !359, !415, !419, !420, !421}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !343, file: !6, line: 119, baseType: !346, size: 256)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !347, line: 9, size: 256, elements: !348)
!347 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!348 = !{!349, !350}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !346, file: !347, line: 10, baseType: !295, size: 192, align: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !346, file: !347, line: 11, baseType: !351, size: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !352, line: 29, baseType: !241)
!352 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !343, file: !6, line: 120, baseType: !351, size: 64, offset: 256)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !343, file: !6, line: 121, baseType: !355, size: 64, offset: 320)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!5, !358}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !343, file: !6, line: 122, baseType: !360, size: 64, offset: 384)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !362)
!362 = !{!363, !384, !385, !388, !398, !399, !410, !414}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !361, file: !6, line: 160, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !366)
!366 = !{!367, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !365, file: !6, line: 215, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !166, line: 29, baseType: !173)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !365, file: !6, line: 216, baseType: !7, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !365, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !365, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !365, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !365, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !365, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !365, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !365, file: !6, line: 233, baseType: !351, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !365, file: !6, line: 234, baseType: !358, size: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !365, file: !6, line: 235, baseType: !351, size: 64, offset: 256)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !365, file: !6, line: 236, baseType: !358, size: 64, offset: 320)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !365, file: !6, line: 237, baseType: !381, size: 4096, offset: 512)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 4096, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 8)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !361, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !361, file: !6, line: 162, baseType: !386, size: 32, offset: 96)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !150, line: 27, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !208, line: 96, baseType: !212)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !361, file: !6, line: 163, baseType: !389, size: 32, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !390, line: 276, baseType: !391)
!390 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !390, line: 276, size: 32, elements: !392)
!392 = !{!393}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !391, file: !390, line: 276, baseType: !394, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !390, line: 70, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !390, line: 65, size: 32, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !395, file: !390, line: 66, baseType: !7, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !361, file: !6, line: 164, baseType: !358, size: 64, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !361, file: !6, line: 165, baseType: !400, size: 128, offset: 256)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !347, line: 14, size: 128, elements: !401)
!401 = !{!402}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !400, file: !347, line: 15, baseType: !403, size: 128)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !296, line: 125, size: 128, elements: !404)
!404 = !{!405, !409}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !403, file: !296, line: 126, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !296, line: 31, size: 64, elements: !407)
!407 = !{!408}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !406, file: !296, line: 32, baseType: !300, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !403, file: !296, line: 127, baseType: !300, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !361, file: !6, line: 166, baseType: !411, size: 64, offset: 384)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{!351}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !361, file: !6, line: 167, baseType: !351, size: 64, offset: 448)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !343, file: !6, line: 123, baseType: !416, size: 8, offset: 448)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !187, line: 17, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !189, line: 21, baseType: !418)
!418 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !343, file: !6, line: 124, baseType: !416, size: 8, offset: 456)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !343, file: !6, line: 125, baseType: !416, size: 8, offset: 464)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !343, file: !6, line: 126, baseType: !416, size: 8, offset: 472)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !327, file: !254, line: 572, baseType: !343, size: 512, offset: 1216)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !327, file: !254, line: 580, baseType: !424, size: 64, offset: 1728)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !253, file: !254, line: 721, baseType: !7, size: 32, offset: 3584)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !253, file: !254, line: 722, baseType: !212, size: 32, offset: 3616)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !253, file: !254, line: 723, baseType: !428, size: 64, offset: 3648)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !431, line: 17, baseType: !432)
!431 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !431, line: 17, size: 64, elements: !433)
!433 = !{!434}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !432, file: !431, line: 17, baseType: !435, size: 64)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 64, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 1)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !253, file: !254, line: 724, baseType: !430, size: 64, offset: 3712)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !253, file: !254, line: 749, baseType: !440, offset: 3776)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !254, line: 290, elements: !179)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !253, file: !254, line: 751, baseType: !149, size: 128, offset: 3776)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !253, file: !254, line: 757, baseType: !443, size: 64, offset: 3904)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !445, line: 388, size: 7296, elements: !446)
!445 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!446 = !{!447, !2378}
!447 = !DIDerivedType(tag: DW_TAG_member, scope: !444, file: !445, line: 389, baseType: !448, size: 7296)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !444, file: !445, line: 389, size: 7296, elements: !449)
!449 = !{!450, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2317, !2323, !2326, !2349, !2350, !2362, !2363, !2366, !2367, !2368, !2371, !2372, !2373, !2376, !2377}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !448, file: !445, line: 390, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !445, line: 305, size: 1472, elements: !453)
!453 = !{!454, !455, !456, !457, !458, !459, !460, !461, !469, !470, !475, !476, !479, !2263, !2264, !2265, !2266, !2267}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !452, file: !445, line: 308, baseType: !210, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !452, file: !445, line: 309, baseType: !210, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !452, file: !445, line: 313, baseType: !451, size: 64, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !452, file: !445, line: 313, baseType: !451, size: 64, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !452, file: !445, line: 315, baseType: !295, size: 192, align: 64, offset: 256)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !452, file: !445, line: 323, baseType: !210, size: 64, offset: 448)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !452, file: !445, line: 327, baseType: !443, size: 64, offset: 512)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !452, file: !445, line: 333, baseType: !462, size: 64, offset: 576)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !463, line: 284, baseType: !464)
!463 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !463, line: 284, size: 64, elements: !465)
!465 = !{!466}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !464, file: !463, line: 284, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !468, line: 19, baseType: !210)
!468 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!469 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !452, file: !445, line: 334, baseType: !210, size: 64, offset: 640)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !452, file: !445, line: 343, baseType: !471, size: 256, offset: 704)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !452, file: !445, line: 340, size: 256, elements: !472)
!472 = !{!473, !474}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !471, file: !445, line: 341, baseType: !295, size: 192, align: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !471, file: !445, line: 342, baseType: !210, size: 64, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !452, file: !445, line: 351, baseType: !149, size: 128, offset: 960)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !452, file: !445, line: 353, baseType: !477, size: 64, offset: 1088)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !445, line: 353, flags: DIFlagFwdDecl)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !452, file: !445, line: 356, baseType: !480, size: 64, offset: 1152)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !482)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !49, line: 557, size: 832, elements: !483)
!483 = !{!484, !488, !489, !493, !497, !2237, !2241, !2245, !2249, !2250, !2251, !2255, !2259}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !482, file: !49, line: 558, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{null, !451}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !482, file: !49, line: 559, baseType: !485, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !482, file: !49, line: 560, baseType: !490, size: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!212, !451, !210}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !482, file: !49, line: 561, baseType: !494, size: 64, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!212, !451}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !482, file: !49, line: 562, baseType: !498, size: 64, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!501, !502}
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !445, line: 682, baseType: !7)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !49, line: 508, size: 768, elements: !504)
!504 = !{!505, !506, !507, !508, !509, !510, !517, !524, !530, !2231, !2232, !2234, !2236}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !503, file: !49, line: 509, baseType: !451, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !503, file: !49, line: 510, baseType: !7, size: 32, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !503, file: !49, line: 511, baseType: !154, size: 32, offset: 96)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !503, file: !49, line: 512, baseType: !210, size: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !503, file: !49, line: 513, baseType: !210, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !503, file: !49, line: 514, baseType: !511, size: 64, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !463, line: 385, baseType: !513)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !463, line: 385, size: 64, elements: !514)
!514 = !{!515}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !513, file: !463, line: 385, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !468, line: 15, baseType: !210)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !503, file: !49, line: 516, baseType: !518, size: 64, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !463, line: 359, baseType: !520)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !463, line: 359, size: 64, elements: !521)
!521 = !{!522}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !520, file: !463, line: 359, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !468, line: 16, baseType: !210)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !503, file: !49, line: 519, baseType: !525, size: 64, offset: 384)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !468, line: 21, baseType: !526)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !468, line: 21, size: 64, elements: !527)
!527 = !{!528}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !526, file: !468, line: 21, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !468, line: 14, baseType: !210)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !503, file: !49, line: 521, baseType: !531, size: 64, offset: 448)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !445, line: 68, size: 512, align: 128, elements: !533)
!533 = !{!534, !535, !2223, !2230}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !532, file: !445, line: 69, baseType: !210, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, scope: !532, file: !445, line: 77, baseType: !536, size: 320, offset: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !532, file: !445, line: 77, size: 320, elements: !537)
!537 = !{!538, !2084, !2089, !2117, !2125, !2131, !2144, !2222}
!538 = !DIDerivedType(tag: DW_TAG_member, scope: !536, file: !445, line: 78, baseType: !539, size: 320)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !536, file: !445, line: 78, size: 320, elements: !540)
!540 = !{!541, !542, !2082, !2083}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !539, file: !445, line: 84, baseType: !149, size: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !539, file: !445, line: 86, baseType: !543, size: 64, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !18, line: 451, size: 1216, align: 64, elements: !545)
!545 = !{!546, !1969, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !2077, !2078, !2079, !2080, !2081}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !544, file: !18, line: 452, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !18, line: 610, size: 4224, elements: !549)
!549 = !{!550, !552, !553, !561, !568, !569, !1901, !1902, !1903, !1904, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1945, !1953, !1954, !1955, !1965, !1966, !1967, !1968}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !548, file: !18, line: 611, baseType: !551, size: 16)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !150, line: 19, baseType: !322)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !548, file: !18, line: 612, baseType: !322, size: 16, offset: 16)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !548, file: !18, line: 613, baseType: !554, size: 32, offset: 32)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !555, line: 23, baseType: !556)
!555 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !555, line: 21, size: 32, elements: !557)
!557 = !{!558}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !556, file: !555, line: 22, baseType: !559, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !150, line: 32, baseType: !560)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !208, line: 49, baseType: !7)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !548, file: !18, line: 614, baseType: !562, size: 32, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !555, line: 28, baseType: !563)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !555, line: 26, size: 32, elements: !564)
!564 = !{!565}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !563, file: !555, line: 27, baseType: !566, size: 32)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !150, line: 33, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !208, line: 50, baseType: !7)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !548, file: !18, line: 615, baseType: !7, size: 32, offset: 96)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !548, file: !18, line: 622, baseType: !570, size: 64, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !572)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !18, line: 1864, size: 1536, align: 512, elements: !573)
!573 = !{!574, !1232, !1245, !1249, !1255, !1259, !1263, !1267, !1271, !1275, !1279, !1280, !1284, !1288, !1851, !1877, !1881, !1887, !1892, !1896, !1897}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !572, file: !18, line: 1865, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!578, !547, !578, !7}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !580, line: 89, size: 1536, elements: !581)
!580 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!581 = !{!582, !583, !588, !596, !597, !612, !613, !617, !629, !699, !1216, !1217, !1218, !1224, !1225, !1226}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !579, file: !580, line: 91, baseType: !7, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !579, file: !580, line: 92, baseType: !584, size: 32, offset: 32)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !390, line: 277, baseType: !585)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !390, line: 277, size: 32, elements: !586)
!586 = !{!587}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !585, file: !390, line: 277, baseType: !394, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !579, file: !580, line: 93, baseType: !589, size: 128, offset: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !590, line: 38, size: 128, elements: !591)
!590 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!591 = !{!592, !594}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !589, file: !590, line: 39, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !589, file: !590, line: 39, baseType: !595, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !579, file: !580, line: 94, baseType: !578, size: 64, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !579, file: !580, line: 95, baseType: !598, size: 128, offset: 256)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !580, line: 47, size: 128, elements: !599)
!599 = !{!600, !609}
!600 = !DIDerivedType(tag: DW_TAG_member, scope: !598, file: !580, line: 48, baseType: !601, size: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !598, file: !580, line: 48, size: 64, elements: !602)
!602 = !{!603, !608}
!603 = !DIDerivedType(tag: DW_TAG_member, scope: !601, file: !580, line: 49, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !601, file: !580, line: 49, size: 64, elements: !605)
!605 = !{!606, !607}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !604, file: !580, line: 50, baseType: !186, size: 32)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !604, file: !580, line: 50, baseType: !186, size: 32, offset: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !601, file: !580, line: 52, baseType: !305, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !598, file: !580, line: 54, baseType: !610, size: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !579, file: !580, line: 96, baseType: !547, size: 64, offset: 384)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !579, file: !580, line: 98, baseType: !614, size: 256, offset: 448)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 256, elements: !615)
!615 = !{!616}
!616 = !DISubrange(count: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !579, file: !580, line: 101, baseType: !618, size: 32, offset: 704)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !619, line: 25, size: 32, elements: !620)
!619 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!620 = !{!621}
!621 = !DIDerivedType(tag: DW_TAG_member, scope: !618, file: !619, line: 26, baseType: !622, size: 32)
!622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !618, file: !619, line: 26, size: 32, elements: !623)
!623 = !{!624}
!624 = !DIDerivedType(tag: DW_TAG_member, scope: !622, file: !619, line: 30, baseType: !625, size: 32)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !622, file: !619, line: 30, size: 32, elements: !626)
!626 = !{!627, !628}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !625, file: !619, line: 31, baseType: !165)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !625, file: !619, line: 32, baseType: !212, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !579, file: !580, line: 102, baseType: !630, size: 64, offset: 768)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !580, line: 135, size: 1024, align: 512, elements: !633)
!633 = !{!634, !638, !639, !646, !654, !658, !662, !666, !667, !671, !675, !687, !693}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !632, file: !580, line: 136, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!212, !578, !7}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !632, file: !580, line: 137, baseType: !635, size: 64, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !632, file: !580, line: 138, baseType: !640, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!212, !643, !645}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !579)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !632, file: !580, line: 139, baseType: !647, size: 64, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!212, !643, !7, !650, !652}
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !598)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !632, file: !580, line: 141, baseType: !655, size: 64, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!212, !643}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !632, file: !580, line: 142, baseType: !659, size: 64, offset: 320)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!212, !578}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !632, file: !580, line: 143, baseType: !663, size: 64, offset: 384)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{null, !578}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !632, file: !580, line: 144, baseType: !663, size: 64, offset: 448)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !632, file: !580, line: 145, baseType: !668, size: 64, offset: 512)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{null, !578, !547}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !632, file: !580, line: 146, baseType: !672, size: 64, offset: 576)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!196, !578, !196, !212}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !632, file: !580, line: 147, baseType: !676, size: 64, offset: 640)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!679, !681}
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !580, line: 18, flags: DIFlagFwdDecl)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !683, line: 8, size: 128, elements: !684)
!683 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!684 = !{!685, !686}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !682, file: !683, line: 9, baseType: !679, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !682, file: !683, line: 10, baseType: !578, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !632, file: !580, line: 148, baseType: !688, size: 64, offset: 704)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!212, !691, !216}
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !682)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !632, file: !580, line: 149, baseType: !694, size: 64, offset: 768)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!578, !578, !697}
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !548)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !579, file: !580, line: 103, baseType: !700, size: 64, offset: 832)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !18, line: 1416, size: 9472, elements: !702)
!702 = !{!703, !704, !707, !708, !709, !712, !764, !846, !930, !1013, !1017, !1018, !1019, !1020, !1021, !1029, !1030, !1031, !1036, !1040, !1041, !1044, !1047, !1050, !1051, !1052, !1093, !1128, !1129, !1130, !1131, !1132, !1133, !1136, !1138, !1147, !1148, !1150, !1151, !1152, !1153, !1154, !1169, !1170, !1171, !1172, !1175, !1178, !1179, !1182, !1197, !1198, !1199, !1210, !1211, !1212, !1213, !1214, !1215}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !701, file: !18, line: 1417, baseType: !149, size: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !701, file: !18, line: 1418, baseType: !705, size: 32, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !150, line: 16, baseType: !706)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !150, line: 13, baseType: !186)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !701, file: !18, line: 1419, baseType: !418, size: 8, offset: 160)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !701, file: !18, line: 1420, baseType: !210, size: 64, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !701, file: !18, line: 1421, baseType: !710, size: 64, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !150, line: 46, baseType: !711)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !208, line: 88, baseType: !243)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !701, file: !18, line: 1422, baseType: !713, size: 64, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !18, line: 2228, size: 576, elements: !715)
!715 = !{!716, !717, !718, !725, !729, !733, !737, !741, !742, !752, !755, !756, !757, !761, !762, !763}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !714, file: !18, line: 2229, baseType: !650, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !714, file: !18, line: 2230, baseType: !212, size: 32, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !714, file: !18, line: 2238, baseType: !719, size: 64, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!212, !722}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !724, line: 28, flags: DIFlagFwdDecl)
!724 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!725 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !714, file: !18, line: 2239, baseType: !726, size: 64, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !728)
!728 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !18, line: 70, flags: DIFlagFwdDecl)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !714, file: !18, line: 2240, baseType: !730, size: 64, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!578, !713, !212, !650, !144}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !714, file: !18, line: 2242, baseType: !734, size: 64, offset: 320)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{null, !700}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !714, file: !18, line: 2243, baseType: !738, size: 64, offset: 384)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !740, line: 76, flags: DIFlagFwdDecl)
!740 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!741 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !714, file: !18, line: 2244, baseType: !713, size: 64, offset: 448)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !714, file: !18, line: 2245, baseType: !743, size: 64, offset: 512)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !150, line: 182, size: 64, elements: !744)
!744 = !{!745}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !743, file: !150, line: 183, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !150, line: 186, size: 128, elements: !748)
!748 = !{!749, !750}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !747, file: !150, line: 187, baseType: !746, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !747, file: !150, line: 187, baseType: !751, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !714, file: !18, line: 2247, baseType: !753, offset: 576)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !754, line: 187, elements: !179)
!754 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!755 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !714, file: !18, line: 2248, baseType: !753, offset: 576)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !714, file: !18, line: 2249, baseType: !753, offset: 576)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !714, file: !18, line: 2250, baseType: !758, offset: 576)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !753, elements: !759)
!759 = !{!760}
!760 = !DISubrange(count: 3)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !714, file: !18, line: 2252, baseType: !753, offset: 576)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !714, file: !18, line: 2253, baseType: !753, offset: 576)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !714, file: !18, line: 2254, baseType: !753, offset: 576)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !701, file: !18, line: 1423, baseType: !765, size: 64, offset: 384)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !767)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !18, line: 1935, size: 1472, elements: !768)
!768 = !{!769, !773, !777, !778, !782, !788, !792, !793, !794, !798, !802, !803, !804, !805, !811, !816, !817, !823, !824, !825, !826, !830, !845}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !767, file: !18, line: 1936, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!547, !700}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !767, file: !18, line: 1937, baseType: !774, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{null, !547}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !767, file: !18, line: 1938, baseType: !774, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !767, file: !18, line: 1940, baseType: !779, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{null, !547, !212}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !767, file: !18, line: 1941, baseType: !783, size: 64, offset: 256)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!212, !547, !786}
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !18, line: 289, flags: DIFlagFwdDecl)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !767, file: !18, line: 1942, baseType: !789, size: 64, offset: 320)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{!212, !547}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !767, file: !18, line: 1943, baseType: !774, size: 64, offset: 384)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !767, file: !18, line: 1944, baseType: !734, size: 64, offset: 448)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !767, file: !18, line: 1945, baseType: !795, size: 64, offset: 512)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{!212, !700, !212}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !767, file: !18, line: 1946, baseType: !799, size: 64, offset: 576)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{!212, !700}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !767, file: !18, line: 1947, baseType: !799, size: 64, offset: 640)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !767, file: !18, line: 1948, baseType: !799, size: 64, offset: 704)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !767, file: !18, line: 1949, baseType: !799, size: 64, offset: 768)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !767, file: !18, line: 1950, baseType: !806, size: 64, offset: 832)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!212, !578, !809}
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !18, line: 57, flags: DIFlagFwdDecl)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !767, file: !18, line: 1951, baseType: !812, size: 64, offset: 896)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!212, !700, !815, !196}
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !767, file: !18, line: 1952, baseType: !734, size: 64, offset: 960)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !767, file: !18, line: 1954, baseType: !818, size: 64, offset: 1024)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!212, !821, !578}
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !463, line: 539, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !767, file: !18, line: 1955, baseType: !818, size: 64, offset: 1088)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !767, file: !18, line: 1956, baseType: !818, size: 64, offset: 1152)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !767, file: !18, line: 1957, baseType: !818, size: 64, offset: 1216)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !767, file: !18, line: 1963, baseType: !827, size: 64, offset: 1280)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!212, !700, !531, !154}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !767, file: !18, line: 1964, baseType: !831, size: 64, offset: 1344)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!68, !700, !834}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !836, line: 12, size: 256, elements: !837)
!836 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!837 = !{!838, !839, !840, !841, !842}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !835, file: !836, line: 13, baseType: !154, size: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !835, file: !836, line: 16, baseType: !212, size: 32, offset: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !835, file: !836, line: 23, baseType: !210, size: 64, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !835, file: !836, line: 30, baseType: !210, size: 64, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !835, file: !836, line: 33, baseType: !843, size: 64, offset: 192)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !445, line: 27, flags: DIFlagFwdDecl)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !767, file: !18, line: 1966, baseType: !831, size: 64, offset: 1408)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !701, file: !18, line: 1424, baseType: !847, size: 64, offset: 448)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !849)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !12, line: 322, size: 704, elements: !850)
!850 = !{!851, !899, !903, !907, !908, !909, !910, !911, !916, !921, !925}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !849, file: !12, line: 323, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!212, !855}
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !12, line: 294, size: 1600, elements: !857)
!857 = !{!858, !859, !860, !861, !862, !863, !864, !865, !866, !882, !883, !884}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !856, file: !12, line: 295, baseType: !747, size: 128)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !856, file: !12, line: 296, baseType: !149, size: 128, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !856, file: !12, line: 297, baseType: !149, size: 128, offset: 256)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !856, file: !12, line: 298, baseType: !149, size: 128, offset: 384)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !856, file: !12, line: 299, baseType: !231, size: 192, offset: 512)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !856, file: !12, line: 300, baseType: !165, offset: 704)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !856, file: !12, line: 301, baseType: !271, size: 32, offset: 704)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !856, file: !12, line: 302, baseType: !700, size: 64, offset: 768)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !856, file: !12, line: 303, baseType: !867, size: 64, offset: 832)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !12, line: 68, size: 64, elements: !868)
!868 = !{!869, !881}
!869 = !DIDerivedType(tag: DW_TAG_member, scope: !867, file: !12, line: 69, baseType: !870, size: 32)
!870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !867, file: !12, line: 69, size: 32, elements: !871)
!871 = !{!872, !873, !874}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !870, file: !12, line: 70, baseType: !554, size: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !870, file: !12, line: 71, baseType: !562, size: 32)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !870, file: !12, line: 72, baseType: !875, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !876, line: 24, baseType: !877)
!876 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !876, line: 22, size: 32, elements: !878)
!878 = !{!879}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !877, file: !876, line: 23, baseType: !880, size: 32)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !876, line: 20, baseType: !560)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !867, file: !12, line: 74, baseType: !11, size: 32, offset: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !856, file: !12, line: 304, baseType: !710, size: 64, offset: 896)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !856, file: !12, line: 305, baseType: !210, size: 64, offset: 960)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !856, file: !12, line: 306, baseType: !885, size: 576, offset: 1024)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !12, line: 205, size: 576, elements: !886)
!886 = !{!887, !889, !890, !891, !892, !893, !894, !895, !898}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !885, file: !12, line: 206, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !12, line: 66, baseType: !243)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !885, file: !12, line: 207, baseType: !888, size: 64, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !885, file: !12, line: 208, baseType: !888, size: 64, offset: 128)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !885, file: !12, line: 209, baseType: !888, size: 64, offset: 192)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !885, file: !12, line: 210, baseType: !888, size: 64, offset: 256)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !885, file: !12, line: 211, baseType: !888, size: 64, offset: 320)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !885, file: !12, line: 212, baseType: !888, size: 64, offset: 384)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !885, file: !12, line: 213, baseType: !896, size: 64, offset: 448)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !897, line: 8, baseType: !242)
!897 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!898 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !885, file: !12, line: 214, baseType: !896, size: 64, offset: 512)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !849, file: !12, line: 324, baseType: !900, size: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{!855, !700, !212}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !849, file: !12, line: 325, baseType: !904, size: 64, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{null, !855}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !849, file: !12, line: 326, baseType: !852, size: 64, offset: 192)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !849, file: !12, line: 327, baseType: !852, size: 64, offset: 256)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !849, file: !12, line: 328, baseType: !852, size: 64, offset: 320)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !849, file: !12, line: 329, baseType: !795, size: 64, offset: 384)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !849, file: !12, line: 332, baseType: !912, size: 64, offset: 448)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{!915, !547}
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !849, file: !12, line: 333, baseType: !917, size: 64, offset: 512)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{!212, !547, !920}
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !849, file: !12, line: 335, baseType: !922, size: 64, offset: 576)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{!212, !547, !915}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !849, file: !12, line: 337, baseType: !926, size: 64, offset: 640)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{!212, !700, !929}
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !701, file: !18, line: 1425, baseType: !931, size: 64, offset: 512)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !933)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !12, line: 428, size: 704, elements: !934)
!934 = !{!935, !939, !940, !944, !945, !946, !961, !984, !988, !989, !1012}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !933, file: !12, line: 429, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!212, !700, !212, !212, !691}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !933, file: !12, line: 430, baseType: !795, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !933, file: !12, line: 431, baseType: !941, size: 64, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!212, !700, !7}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !933, file: !12, line: 432, baseType: !941, size: 64, offset: 192)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !933, file: !12, line: 433, baseType: !795, size: 64, offset: 256)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !933, file: !12, line: 434, baseType: !947, size: 64, offset: 320)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DISubroutineType(types: !949)
!949 = !{!212, !700, !212, !950}
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !12, line: 415, size: 256, elements: !952)
!952 = !{!953, !954, !955, !956, !957, !958, !959, !960}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !951, file: !12, line: 416, baseType: !212, size: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !951, file: !12, line: 417, baseType: !7, size: 32, offset: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !951, file: !12, line: 418, baseType: !7, size: 32, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !951, file: !12, line: 420, baseType: !7, size: 32, offset: 96)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !951, file: !12, line: 421, baseType: !7, size: 32, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !951, file: !12, line: 422, baseType: !7, size: 32, offset: 160)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !951, file: !12, line: 423, baseType: !7, size: 32, offset: 192)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !951, file: !12, line: 424, baseType: !7, size: 32, offset: 224)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !933, file: !12, line: 435, baseType: !962, size: 64, offset: 384)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{!212, !700, !867, !965}
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !12, line: 343, size: 960, elements: !967)
!967 = !{!968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !966, file: !12, line: 344, baseType: !212, size: 32)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !966, file: !12, line: 345, baseType: !305, size: 64, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !966, file: !12, line: 346, baseType: !305, size: 64, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !966, file: !12, line: 347, baseType: !305, size: 64, offset: 192)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !966, file: !12, line: 348, baseType: !305, size: 64, offset: 256)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !966, file: !12, line: 349, baseType: !305, size: 64, offset: 320)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !966, file: !12, line: 350, baseType: !305, size: 64, offset: 384)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !966, file: !12, line: 351, baseType: !241, size: 64, offset: 448)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !966, file: !12, line: 353, baseType: !241, size: 64, offset: 512)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !966, file: !12, line: 354, baseType: !212, size: 32, offset: 576)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !966, file: !12, line: 355, baseType: !212, size: 32, offset: 608)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !966, file: !12, line: 356, baseType: !305, size: 64, offset: 640)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !966, file: !12, line: 357, baseType: !305, size: 64, offset: 704)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !966, file: !12, line: 358, baseType: !305, size: 64, offset: 768)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !966, file: !12, line: 359, baseType: !241, size: 64, offset: 832)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !966, file: !12, line: 360, baseType: !212, size: 32, offset: 896)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !933, file: !12, line: 436, baseType: !985, size: 64, offset: 448)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!212, !700, !929, !965}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !933, file: !12, line: 438, baseType: !962, size: 64, offset: 512)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !933, file: !12, line: 439, baseType: !990, size: 64, offset: 576)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{!212, !700, !993}
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !12, line: 409, size: 1408, elements: !995)
!995 = !{!996, !997}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !994, file: !12, line: 410, baseType: !7, size: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !994, file: !12, line: 411, baseType: !998, size: 1344, offset: 64)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !999, size: 1344, elements: !759)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !12, line: 395, size: 448, elements: !1000)
!1000 = !{!1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1011}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !999, file: !12, line: 396, baseType: !7, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !999, file: !12, line: 397, baseType: !7, size: 32, offset: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !999, file: !12, line: 399, baseType: !7, size: 32, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !999, file: !12, line: 400, baseType: !7, size: 32, offset: 96)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !999, file: !12, line: 401, baseType: !7, size: 32, offset: 128)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !999, file: !12, line: 402, baseType: !7, size: 32, offset: 160)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !999, file: !12, line: 403, baseType: !7, size: 32, offset: 192)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !999, file: !12, line: 404, baseType: !307, size: 64, offset: 256)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !999, file: !12, line: 405, baseType: !1010, size: 64, offset: 320)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !150, line: 126, baseType: !305)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !999, file: !12, line: 406, baseType: !1010, size: 64, offset: 384)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !933, file: !12, line: 440, baseType: !941, size: 64, offset: 640)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !701, file: !18, line: 1426, baseType: !1014, size: 64, offset: 576)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1016)
!1016 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !18, line: 49, flags: DIFlagFwdDecl)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !701, file: !18, line: 1427, baseType: !210, size: 64, offset: 640)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !701, file: !18, line: 1428, baseType: !210, size: 64, offset: 704)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !701, file: !18, line: 1429, baseType: !210, size: 64, offset: 768)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !701, file: !18, line: 1430, baseType: !578, size: 64, offset: 832)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !701, file: !18, line: 1431, baseType: !1022, size: 256, offset: 896)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1023, line: 35, size: 256, elements: !1024)
!1023 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1024 = !{!1025, !1026, !1027, !1028}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1022, file: !1023, line: 36, baseType: !235, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1022, file: !1023, line: 42, baseType: !235, size: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1022, file: !1023, line: 46, baseType: !368, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1022, file: !1023, line: 47, baseType: !149, size: 128, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !701, file: !18, line: 1432, baseType: !212, size: 32, offset: 1152)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !701, file: !18, line: 1433, baseType: !271, size: 32, offset: 1184)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !701, file: !18, line: 1437, baseType: !1032, size: 64, offset: 1216)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1035)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !18, line: 1437, flags: DIFlagFwdDecl)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !701, file: !18, line: 1449, baseType: !1037, size: 64, offset: 1280)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !590, line: 34, size: 64, elements: !1038)
!1038 = !{!1039}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1037, file: !590, line: 35, baseType: !593, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !701, file: !18, line: 1450, baseType: !149, size: 128, offset: 1344)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !701, file: !18, line: 1451, baseType: !1042, size: 64, offset: 1472)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !18, line: 699, flags: DIFlagFwdDecl)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !701, file: !18, line: 1452, baseType: !1045, size: 64, offset: 1536)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !254, line: 40, flags: DIFlagFwdDecl)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !701, file: !18, line: 1453, baseType: !1048, size: 64, offset: 1600)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !18, line: 1453, flags: DIFlagFwdDecl)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !701, file: !18, line: 1454, baseType: !747, size: 128, offset: 1664)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !701, file: !18, line: 1455, baseType: !7, size: 32, offset: 1792)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !701, file: !18, line: 1456, baseType: !1053, size: 2432, offset: 1856)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !12, line: 518, size: 2432, elements: !1054)
!1054 = !{!1055, !1056, !1057, !1059, !1091}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1053, file: !12, line: 519, baseType: !7, size: 32)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1053, file: !12, line: 520, baseType: !1022, size: 256, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1053, file: !12, line: 521, baseType: !1058, size: 192, offset: 320)
!1058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 192, elements: !759)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1053, file: !12, line: 522, baseType: !1060, size: 1728, offset: 512)
!1060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1061, size: 1728, elements: !759)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !12, line: 222, size: 576, elements: !1062)
!1062 = !{!1063, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1061, file: !12, line: 223, baseType: !1064, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !12, line: 443, size: 256, elements: !1066)
!1066 = !{!1067, !1068, !1081, !1082}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1065, file: !12, line: 444, baseType: !212, size: 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1065, file: !12, line: 445, baseType: !1069, size: 64, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1071)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !12, line: 310, size: 512, elements: !1072)
!1072 = !{!1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1071, file: !12, line: 311, baseType: !795, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1071, file: !12, line: 312, baseType: !795, size: 64, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1071, file: !12, line: 313, baseType: !795, size: 64, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1071, file: !12, line: 314, baseType: !795, size: 64, offset: 192)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1071, file: !12, line: 315, baseType: !852, size: 64, offset: 256)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1071, file: !12, line: 316, baseType: !852, size: 64, offset: 320)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1071, file: !12, line: 317, baseType: !852, size: 64, offset: 384)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1071, file: !12, line: 318, baseType: !926, size: 64, offset: 448)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1065, file: !12, line: 446, baseType: !738, size: 64, offset: 128)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1065, file: !12, line: 447, baseType: !1064, size: 64, offset: 192)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1061, file: !12, line: 224, baseType: !212, size: 32, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1061, file: !12, line: 226, baseType: !149, size: 128, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1061, file: !12, line: 227, baseType: !210, size: 64, offset: 256)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1061, file: !12, line: 228, baseType: !7, size: 32, offset: 320)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1061, file: !12, line: 229, baseType: !7, size: 32, offset: 352)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1061, file: !12, line: 230, baseType: !888, size: 64, offset: 384)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1061, file: !12, line: 231, baseType: !888, size: 64, offset: 448)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1061, file: !12, line: 232, baseType: !144, size: 64, offset: 512)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1053, file: !12, line: 523, baseType: !1092, size: 192, offset: 2240)
!1092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1069, size: 192, elements: !759)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !701, file: !18, line: 1458, baseType: !1094, size: 2112, offset: 4288)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !18, line: 1410, size: 2112, elements: !1095)
!1095 = !{!1096, !1097, !1098}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1094, file: !18, line: 1411, baseType: !212, size: 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !1094, file: !18, line: 1412, baseType: !160, size: 128, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1094, file: !18, line: 1413, baseType: !1099, size: 1920, offset: 192)
!1099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1100, size: 1920, elements: !759)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1101, line: 12, size: 640, elements: !1102)
!1101 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1102 = !{!1103, !1119, !1121, !1126, !1127}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1100, file: !1101, line: 13, baseType: !1104, size: 320)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1105, line: 17, size: 320, elements: !1106)
!1105 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!1106 = !{!1107, !1108, !1109, !1110}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1104, file: !1105, line: 18, baseType: !212, size: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1104, file: !1105, line: 19, baseType: !212, size: 32, offset: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1104, file: !1105, line: 20, baseType: !160, size: 128, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1104, file: !1105, line: 22, baseType: !1111, size: 128, align: 64, offset: 192)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !150, line: 216, size: 128, align: 64, elements: !1112)
!1112 = !{!1113, !1115}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1111, file: !150, line: 217, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1111, file: !150, line: 218, baseType: !1116, size: 64, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{null, !1114}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1100, file: !1101, line: 14, baseType: !1120, size: 64, offset: 320)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1100, file: !1101, line: 15, baseType: !1122, size: 64, offset: 384)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1123, line: 16, size: 64, elements: !1124)
!1123 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!1124 = !{!1125}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1122, file: !1123, line: 17, baseType: !252, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1100, file: !1101, line: 16, baseType: !160, size: 128, offset: 448)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1100, file: !1101, line: 17, baseType: !271, size: 32, offset: 576)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !701, file: !18, line: 1465, baseType: !144, size: 64, offset: 6400)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !701, file: !18, line: 1468, baseType: !186, size: 32, offset: 6464)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !701, file: !18, line: 1470, baseType: !896, size: 64, offset: 6528)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !701, file: !18, line: 1471, baseType: !896, size: 64, offset: 6592)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !701, file: !18, line: 1473, baseType: !188, size: 32, offset: 6656)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !701, file: !18, line: 1474, baseType: !1134, size: 64, offset: 6720)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !18, line: 603, flags: DIFlagFwdDecl)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !701, file: !18, line: 1477, baseType: !1137, size: 256, offset: 6784)
!1137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 256, elements: !615)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !701, file: !18, line: 1478, baseType: !1139, size: 128, offset: 7040)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1140, line: 18, baseType: !1141)
!1140 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1140, line: 16, size: 128, elements: !1142)
!1142 = !{!1143}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1141, file: !1140, line: 17, baseType: !1144, size: 128)
!1144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 128, elements: !1145)
!1145 = !{!1146}
!1146 = !DISubrange(count: 16)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !701, file: !18, line: 1480, baseType: !7, size: 32, offset: 7168)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !701, file: !18, line: 1481, baseType: !1149, size: 32, offset: 7200)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !150, line: 150, baseType: !7)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !701, file: !18, line: 1487, baseType: !231, size: 192, offset: 7232)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !701, file: !18, line: 1493, baseType: !650, size: 64, offset: 7424)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !701, file: !18, line: 1495, baseType: !630, size: 64, offset: 7488)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !701, file: !18, line: 1500, baseType: !212, size: 32, offset: 7552)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !701, file: !18, line: 1502, baseType: !1155, size: 448, offset: 7616)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !836, line: 60, size: 448, elements: !1156)
!1156 = !{!1157, !1162, !1163, !1164, !1165, !1166, !1167}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1155, file: !836, line: 61, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!210, !1161, !834}
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1155, file: !836, line: 63, baseType: !1158, size: 64, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1155, file: !836, line: 66, baseType: !68, size: 64, offset: 128)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1155, file: !836, line: 67, baseType: !212, size: 32, offset: 192)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1155, file: !836, line: 68, baseType: !7, size: 32, offset: 224)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1155, file: !836, line: 71, baseType: !149, size: 128, offset: 256)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1155, file: !836, line: 77, baseType: !1168, size: 64, offset: 384)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !701, file: !18, line: 1505, baseType: !235, size: 64, offset: 8064)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !701, file: !18, line: 1508, baseType: !235, size: 64, offset: 8128)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !701, file: !18, line: 1511, baseType: !212, size: 32, offset: 8192)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !701, file: !18, line: 1514, baseType: !1173, size: 32, offset: 8224)
!1173 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1174, line: 8, baseType: !186)
!1174 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !701, file: !18, line: 1517, baseType: !1176, size: 64, offset: 8256)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !67, line: 18, flags: DIFlagFwdDecl)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !701, file: !18, line: 1518, baseType: !743, size: 64, offset: 8320)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !701, file: !18, line: 1525, baseType: !1180, size: 64, offset: 8384)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !555, line: 18, flags: DIFlagFwdDecl)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !701, file: !18, line: 1532, baseType: !1183, size: 64, offset: 8448)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1184, line: 52, size: 64, elements: !1185)
!1184 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!1185 = !{!1186}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1183, file: !1184, line: 53, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1184, line: 40, size: 256, elements: !1189)
!1189 = !{!1190, !1191, !1196}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1188, file: !1184, line: 42, baseType: !165)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1188, file: !1184, line: 44, baseType: !1192, size: 192)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1184, line: 28, size: 192, elements: !1193)
!1193 = !{!1194, !1195}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1192, file: !1184, line: 29, baseType: !149, size: 128)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1192, file: !1184, line: 31, baseType: !68, size: 64, offset: 128)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1188, file: !1184, line: 49, baseType: !68, size: 64, offset: 192)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !701, file: !18, line: 1533, baseType: !1183, size: 64, offset: 8512)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !701, file: !18, line: 1534, baseType: !1111, size: 128, align: 64, offset: 8576)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !701, file: !18, line: 1535, baseType: !1200, size: 256, offset: 8704)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !67, line: 102, size: 256, elements: !1201)
!1201 = !{!1202, !1203, !1204}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1200, file: !67, line: 103, baseType: !235, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1200, file: !67, line: 104, baseType: !149, size: 128, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1200, file: !67, line: 105, baseType: !1205, size: 64, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !67, line: 21, baseType: !1206)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{null, !1209}
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !701, file: !18, line: 1537, baseType: !231, size: 192, offset: 8960)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !701, file: !18, line: 1542, baseType: !212, size: 32, offset: 9152)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !701, file: !18, line: 1545, baseType: !165, offset: 9184)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !701, file: !18, line: 1546, baseType: !149, size: 128, offset: 9216)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !701, file: !18, line: 1548, baseType: !165, offset: 9344)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !701, file: !18, line: 1549, baseType: !149, size: 128, offset: 9344)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !579, file: !580, line: 104, baseType: !210, size: 64, offset: 896)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !579, file: !580, line: 105, baseType: !144, size: 64, offset: 960)
!1218 = !DIDerivedType(tag: DW_TAG_member, scope: !579, file: !580, line: 107, baseType: !1219, size: 128, offset: 1024)
!1219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !579, file: !580, line: 107, size: 128, elements: !1220)
!1220 = !{!1221, !1222}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !1219, file: !580, line: 108, baseType: !149, size: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !1219, file: !580, line: 109, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !579, file: !580, line: 111, baseType: !149, size: 128, offset: 1152)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !579, file: !580, line: 112, baseType: !149, size: 128, offset: 1280)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !579, file: !580, line: 120, baseType: !1227, size: 128, offset: 1408)
!1227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !579, file: !580, line: 116, size: 128, elements: !1228)
!1228 = !{!1229, !1230, !1231}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !1227, file: !580, line: 117, baseType: !747, size: 128)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !1227, file: !580, line: 118, baseType: !589, size: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !1227, file: !580, line: 119, baseType: !1111, size: 128, align: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !572, file: !18, line: 1866, baseType: !1233, size: 64, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!650, !578, !547, !1236}
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1238, line: 10, size: 128, elements: !1239)
!1238 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!1239 = !{!1240, !1244}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1237, file: !1238, line: 11, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{null, !144}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1237, file: !1238, line: 12, baseType: !144, size: 64, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !572, file: !18, line: 1867, baseType: !1246, size: 64, offset: 128)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!212, !547, !212}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !572, file: !18, line: 1868, baseType: !1250, size: 64, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!1253, !547, !212}
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !18, line: 581, flags: DIFlagFwdDecl)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !572, file: !18, line: 1870, baseType: !1256, size: 64, offset: 256)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!212, !578, !196, !212}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !572, file: !18, line: 1872, baseType: !1260, size: 64, offset: 320)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!212, !547, !578, !551, !216}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !572, file: !18, line: 1873, baseType: !1264, size: 64, offset: 384)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!212, !578, !547, !578}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !572, file: !18, line: 1874, baseType: !1268, size: 64, offset: 448)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!212, !547, !578}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !572, file: !18, line: 1875, baseType: !1272, size: 64, offset: 512)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!212, !547, !578, !650}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !572, file: !18, line: 1876, baseType: !1276, size: 64, offset: 576)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!212, !547, !578, !551}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !572, file: !18, line: 1877, baseType: !1268, size: 64, offset: 640)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !572, file: !18, line: 1878, baseType: !1281, size: 64, offset: 704)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!212, !547, !578, !551, !705}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !572, file: !18, line: 1879, baseType: !1285, size: 64, offset: 768)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!212, !547, !578, !547, !578, !7}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !572, file: !18, line: 1881, baseType: !1289, size: 64, offset: 832)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!212, !578, !1292}
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !18, line: 219, size: 640, elements: !1294)
!1294 = !{!1295, !1296, !1297, !1298, !1299, !1300, !1305, !1306, !1307}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1293, file: !18, line: 220, baseType: !7, size: 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1293, file: !18, line: 221, baseType: !551, size: 16, offset: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1293, file: !18, line: 222, baseType: !554, size: 32, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1293, file: !18, line: 223, baseType: !562, size: 32, offset: 96)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1293, file: !18, line: 224, baseType: !710, size: 64, offset: 128)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1293, file: !18, line: 225, baseType: !1301, size: 128, offset: 192)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !897, line: 13, size: 128, elements: !1302)
!1302 = !{!1303, !1304}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1301, file: !897, line: 14, baseType: !896, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1301, file: !897, line: 15, baseType: !68, size: 64, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1293, file: !18, line: 226, baseType: !1301, size: 128, offset: 320)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1293, file: !18, line: 227, baseType: !1301, size: 128, offset: 448)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1293, file: !18, line: 234, baseType: !1308, size: 64, offset: 576)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !18, line: 916, size: 1856, align: 32, elements: !1310)
!1310 = !{!1311, !1321, !1322, !1323, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1650, !1835, !1844, !1845, !1846, !1847, !1848, !1849, !1850}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !1309, file: !18, line: 920, baseType: !1312, size: 128)
!1312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1309, file: !18, line: 917, size: 128, elements: !1313)
!1313 = !{!1314, !1320}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !1312, file: !18, line: 918, baseType: !1315, size: 64)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1316, line: 58, size: 64, elements: !1317)
!1316 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!1317 = !{!1318}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1315, file: !1316, line: 59, baseType: !1319, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !1312, file: !18, line: 919, baseType: !1111, size: 128, align: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1309, file: !18, line: 921, baseType: !682, size: 128, offset: 128)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1309, file: !18, line: 922, baseType: !547, size: 64, offset: 256)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1309, file: !18, line: 923, baseType: !1324, size: 64, offset: 320)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1326)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !18, line: 1822, size: 2048, elements: !1327)
!1327 = !{!1328, !1329, !1333, !1341, !1345, !1406, !1407, !1411, !1424, !1425, !1433, !1437, !1438, !1442, !1443, !1447, !1452, !1453, !1457, !1461, !1570, !1574, !1578, !1582, !1583, !1587, !1591, !1596, !1600, !1604, !1608, !1612}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1326, file: !18, line: 1823, baseType: !738, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1326, file: !18, line: 1824, baseType: !1330, size: 64, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!710, !1308, !710, !212}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1326, file: !18, line: 1825, baseType: !1334, size: 64, offset: 128)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!1337, !1308, !196, !206, !1340}
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !150, line: 60, baseType: !1338)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !208, line: 73, baseType: !1339)
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !208, line: 15, baseType: !68)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1326, file: !18, line: 1826, baseType: !1342, size: 64, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!1337, !1308, !650, !206, !1340}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1326, file: !18, line: 1827, baseType: !1346, size: 64, offset: 256)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!1337, !1349, !1371}
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !18, line: 320, size: 384, elements: !1351)
!1351 = !{!1352, !1353, !1354, !1358, !1359, !1360, !1363, !1364}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1350, file: !18, line: 321, baseType: !1308, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1350, file: !18, line: 326, baseType: !710, size: 64, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1350, file: !18, line: 327, baseType: !1355, size: 64, offset: 128)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{null, !1349, !68, !68}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1350, file: !18, line: 328, baseType: !144, size: 64, offset: 192)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1350, file: !18, line: 329, baseType: !212, size: 32, offset: 256)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1350, file: !18, line: 330, baseType: !1361, size: 16, offset: 288)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !187, line: 19, baseType: !1362)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !189, line: 24, baseType: !322)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1350, file: !18, line: 331, baseType: !1361, size: 16, offset: 304)
!1364 = !DIDerivedType(tag: DW_TAG_member, scope: !1350, file: !18, line: 332, baseType: !1365, size: 64, offset: 320)
!1365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1350, file: !18, line: 332, size: 64, elements: !1366)
!1366 = !{!1367, !1368}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1365, file: !18, line: 333, baseType: !7, size: 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1365, file: !18, line: 334, baseType: !1369, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !18, line: 334, flags: DIFlagFwdDecl)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !202, line: 29, size: 320, elements: !1373)
!1373 = !{!1374, !1375, !1376, !1377, !1397}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1372, file: !202, line: 35, baseType: !7, size: 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1372, file: !202, line: 36, baseType: !206, size: 64, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1372, file: !202, line: 37, baseType: !206, size: 64, offset: 128)
!1377 = !DIDerivedType(tag: DW_TAG_member, scope: !1372, file: !202, line: 38, baseType: !1378, size: 64, offset: 192)
!1378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1372, file: !202, line: 38, size: 64, elements: !1379)
!1379 = !{!1380, !1388, !1389, !1394}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !1378, file: !202, line: 39, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1383)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1384, line: 17, size: 128, elements: !1385)
!1384 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!1385 = !{!1386, !1387}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1383, file: !1384, line: 19, baseType: !144, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1383, file: !1384, line: 20, baseType: !207, size: 64, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1378, file: !202, line: 40, baseType: !199, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1378, file: !202, line: 41, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1392)
!1392 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1393, line: 45, flags: DIFlagFwdDecl)
!1393 = !DIFile(filename: "./include/xen/xen.h", directory: "/home/lizy2001/genbc/linux")
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !1378, file: !202, line: 42, baseType: !1395, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !254, line: 53, flags: DIFlagFwdDecl)
!1397 = !DIDerivedType(tag: DW_TAG_member, scope: !1372, file: !202, line: 44, baseType: !1398, size: 64, offset: 256)
!1398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1372, file: !202, line: 44, size: 64, elements: !1399)
!1399 = !{!1400, !1401}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1398, file: !202, line: 45, baseType: !210, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, scope: !1398, file: !202, line: 46, baseType: !1402, size: 64)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1398, file: !202, line: 46, size: 64, elements: !1403)
!1403 = !{!1404, !1405}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1402, file: !202, line: 47, baseType: !7, size: 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "start_head", scope: !1402, file: !202, line: 48, baseType: !7, size: 32, offset: 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1326, file: !18, line: 1828, baseType: !1346, size: 64, offset: 320)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1326, file: !18, line: 1829, baseType: !1408, size: 64, offset: 384)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!212, !1349, !216}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1326, file: !18, line: 1830, baseType: !1412, size: 64, offset: 448)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!212, !1308, !1415}
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !18, line: 1776, size: 128, elements: !1417)
!1417 = !{!1418, !1423}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1416, file: !18, line: 1777, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !18, line: 1773, baseType: !1420)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!212, !1415, !650, !212, !710, !305, !7}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1416, file: !18, line: 1778, baseType: !710, size: 64, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1326, file: !18, line: 1831, baseType: !1412, size: 64, offset: 512)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1326, file: !18, line: 1832, baseType: !1426, size: 64, offset: 576)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!1429, !1308, !1431}
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1430, line: 52, baseType: !7)
!1430 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !724, line: 27, flags: DIFlagFwdDecl)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1326, file: !18, line: 1833, baseType: !1434, size: 64, offset: 640)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!68, !1308, !7, !210}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1326, file: !18, line: 1834, baseType: !1434, size: 64, offset: 704)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1326, file: !18, line: 1835, baseType: !1439, size: 64, offset: 768)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!212, !1308, !451}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1326, file: !18, line: 1836, baseType: !210, size: 64, offset: 832)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1326, file: !18, line: 1837, baseType: !1444, size: 64, offset: 896)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!212, !547, !1308}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1326, file: !18, line: 1838, baseType: !1448, size: 64, offset: 960)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!212, !1308, !1451}
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !18, line: 1007, baseType: !144)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1326, file: !18, line: 1839, baseType: !1444, size: 64, offset: 1024)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1326, file: !18, line: 1840, baseType: !1454, size: 64, offset: 1088)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!212, !1308, !710, !710, !212}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1326, file: !18, line: 1841, baseType: !1458, size: 64, offset: 1152)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!212, !212, !1308, !212}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1326, file: !18, line: 1842, baseType: !1462, size: 64, offset: 1216)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!212, !1308, !212, !1465}
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !18, line: 1062, size: 1664, elements: !1467)
!1467 = !{!1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1499, !1500, !1501, !1514, !1546}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1466, file: !18, line: 1063, baseType: !1465, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1466, file: !18, line: 1064, baseType: !149, size: 128, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1466, file: !18, line: 1065, baseType: !747, size: 128, offset: 192)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1466, file: !18, line: 1066, baseType: !149, size: 128, offset: 320)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1466, file: !18, line: 1069, baseType: !149, size: 128, offset: 448)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1466, file: !18, line: 1072, baseType: !1451, size: 64, offset: 576)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1466, file: !18, line: 1073, baseType: !7, size: 32, offset: 640)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1466, file: !18, line: 1074, baseType: !418, size: 8, offset: 672)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1466, file: !18, line: 1075, baseType: !7, size: 32, offset: 704)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1466, file: !18, line: 1076, baseType: !212, size: 32, offset: 736)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1466, file: !18, line: 1077, baseType: !160, size: 128, offset: 768)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1466, file: !18, line: 1078, baseType: !1308, size: 64, offset: 896)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1466, file: !18, line: 1079, baseType: !710, size: 64, offset: 960)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1466, file: !18, line: 1080, baseType: !710, size: 64, offset: 1024)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1466, file: !18, line: 1082, baseType: !1483, size: 64, offset: 1088)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !18, line: 1314, size: 320, elements: !1485)
!1485 = !{!1486, !1494, !1495, !1496, !1497, !1498}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1484, file: !18, line: 1315, baseType: !1487)
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1488, line: 20, baseType: !1489)
!1488 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1488, line: 11, elements: !1490)
!1490 = !{!1491}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1489, file: !1488, line: 12, baseType: !1492)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !177, line: 33, baseType: !1493)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !177, line: 31, elements: !179)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1484, file: !18, line: 1316, baseType: !212, size: 32)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1484, file: !18, line: 1317, baseType: !212, size: 32, offset: 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1484, file: !18, line: 1318, baseType: !1483, size: 64, offset: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1484, file: !18, line: 1319, baseType: !1308, size: 64, offset: 128)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1484, file: !18, line: 1320, baseType: !1111, size: 128, align: 64, offset: 192)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1466, file: !18, line: 1084, baseType: !210, size: 64, offset: 1152)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1466, file: !18, line: 1085, baseType: !210, size: 64, offset: 1216)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1466, file: !18, line: 1087, baseType: !1502, size: 64, offset: 1280)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1504)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !18, line: 1011, size: 128, elements: !1505)
!1505 = !{!1506, !1510}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1504, file: !18, line: 1012, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{null, !1465, !1465}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1504, file: !18, line: 1013, baseType: !1511, size: 64, offset: 64)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{null, !1465}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1466, file: !18, line: 1088, baseType: !1515, size: 64, offset: 1344)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1517)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !18, line: 1016, size: 512, elements: !1518)
!1518 = !{!1519, !1523, !1527, !1528, !1532, !1536, !1540, !1545}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1517, file: !18, line: 1017, baseType: !1520, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!1451, !1451}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1517, file: !18, line: 1018, baseType: !1524, size: 64, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{null, !1451}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1517, file: !18, line: 1019, baseType: !1511, size: 64, offset: 128)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1517, file: !18, line: 1020, baseType: !1529, size: 64, offset: 192)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!212, !1465, !212}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1517, file: !18, line: 1021, baseType: !1533, size: 64, offset: 256)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!216, !1465}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1517, file: !18, line: 1022, baseType: !1537, size: 64, offset: 320)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!212, !1465, !212, !148}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1517, file: !18, line: 1023, baseType: !1541, size: 64, offset: 384)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{null, !1465, !1544}
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1517, file: !18, line: 1024, baseType: !1533, size: 64, offset: 448)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1466, file: !18, line: 1097, baseType: !1547, size: 256, offset: 1408)
!1547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1466, file: !18, line: 1089, size: 256, elements: !1548)
!1548 = !{!1549, !1558, !1564}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1547, file: !18, line: 1090, baseType: !1550, size: 256)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1551, line: 10, size: 256, elements: !1552)
!1551 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!1552 = !{!1553, !1554, !1557}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1550, file: !1551, line: 11, baseType: !186, size: 32)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1550, file: !1551, line: 12, baseType: !1555, size: 64, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1551, line: 5, flags: DIFlagFwdDecl)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1550, file: !1551, line: 13, baseType: !149, size: 128, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1547, file: !18, line: 1091, baseType: !1559, size: 64)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1551, line: 17, size: 64, elements: !1560)
!1560 = !{!1561}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1559, file: !1551, line: 18, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1551, line: 16, flags: DIFlagFwdDecl)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1547, file: !18, line: 1096, baseType: !1565, size: 192)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1547, file: !18, line: 1092, size: 192, elements: !1566)
!1566 = !{!1567, !1568, !1569}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1565, file: !18, line: 1093, baseType: !149, size: 128)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1565, file: !18, line: 1094, baseType: !212, size: 32, offset: 128)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1565, file: !18, line: 1095, baseType: !7, size: 32, offset: 160)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1326, file: !18, line: 1843, baseType: !1571, size: 64, offset: 1280)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!1337, !1308, !531, !212, !206, !1340, !212}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1326, file: !18, line: 1844, baseType: !1575, size: 64, offset: 1344)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!210, !1308, !210, !210, !210, !210}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1326, file: !18, line: 1845, baseType: !1579, size: 64, offset: 1408)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!212, !212}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1326, file: !18, line: 1846, baseType: !1462, size: 64, offset: 1472)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1326, file: !18, line: 1847, baseType: !1584, size: 64, offset: 1536)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!1337, !1395, !1308, !1340, !206, !7}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1326, file: !18, line: 1848, baseType: !1588, size: 64, offset: 1600)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!1337, !1308, !1340, !1395, !206, !7}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1326, file: !18, line: 1849, baseType: !1592, size: 64, offset: 1664)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!212, !1308, !68, !1595, !1544}
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1326, file: !18, line: 1850, baseType: !1597, size: 64, offset: 1728)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!68, !1308, !212, !710, !710}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1326, file: !18, line: 1852, baseType: !1601, size: 64, offset: 1792)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{null, !821, !1308}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1326, file: !18, line: 1856, baseType: !1605, size: 64, offset: 1856)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!1337, !1308, !710, !1308, !710, !206, !7}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1326, file: !18, line: 1858, baseType: !1609, size: 64, offset: 1920)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!710, !1308, !710, !1308, !710, !710, !7}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1326, file: !18, line: 1861, baseType: !1454, size: 64, offset: 1984)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1309, file: !18, line: 929, baseType: !165, offset: 384)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !1309, file: !18, line: 930, baseType: !17, size: 32, offset: 384)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1309, file: !18, line: 931, baseType: !235, size: 64, offset: 448)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1309, file: !18, line: 932, baseType: !7, size: 32, offset: 512)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1309, file: !18, line: 933, baseType: !1149, size: 32, offset: 544)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1309, file: !18, line: 934, baseType: !231, size: 192, offset: 576)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1309, file: !18, line: 935, baseType: !710, size: 64, offset: 768)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1309, file: !18, line: 936, baseType: !1621, size: 192, offset: 832)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !18, line: 885, size: 192, elements: !1622)
!1622 = !{!1623, !1624, !1646, !1647, !1648, !1649}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1621, file: !18, line: 886, baseType: !1487)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1621, file: !18, line: 887, baseType: !1625, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !27, line: 59, size: 768, elements: !1627)
!1627 = !{!1628, !1629, !1630, !1631, !1635, !1636, !1637, !1638}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1626, file: !27, line: 61, baseType: !266, size: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1626, file: !27, line: 62, baseType: !7, size: 32, offset: 32)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1626, file: !27, line: 63, baseType: !165, offset: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1626, file: !27, line: 65, baseType: !1632, size: 256, offset: 64)
!1632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !743, size: 256, elements: !1633)
!1633 = !{!1634}
!1634 = !DISubrange(count: 4)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1626, file: !27, line: 66, baseType: !743, size: 64, offset: 320)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1626, file: !27, line: 68, baseType: !160, size: 128, offset: 384)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1626, file: !27, line: 69, baseType: !1111, size: 128, align: 64, offset: 512)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1626, file: !27, line: 70, baseType: !1639, size: 128, offset: 640)
!1639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1640, size: 128, elements: !436)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !27, line: 54, size: 128, elements: !1641)
!1641 = !{!1642, !1643}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1640, file: !27, line: 55, baseType: !212, size: 32)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1640, file: !27, line: 56, baseType: !1644, size: 64, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !27, line: 56, flags: DIFlagFwdDecl)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1621, file: !18, line: 888, baseType: !26, size: 32, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1621, file: !18, line: 889, baseType: !554, size: 32, offset: 96)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1621, file: !18, line: 889, baseType: !554, size: 32, offset: 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1621, file: !18, line: 890, baseType: !212, size: 32, offset: 160)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1309, file: !18, line: 937, baseType: !1651, size: 64, offset: 1024)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1653)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1654, line: 111, size: 1280, elements: !1655)
!1654 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1655 = !{!1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1675, !1676, !1677, !1678, !1679, !1680, !1790, !1791, !1792, !1793, !1819, !1820, !1830}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1653, file: !1654, line: 112, baseType: !271, size: 32)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1653, file: !1654, line: 120, baseType: !554, size: 32, offset: 32)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1653, file: !1654, line: 121, baseType: !562, size: 32, offset: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1653, file: !1654, line: 122, baseType: !554, size: 32, offset: 96)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1653, file: !1654, line: 123, baseType: !562, size: 32, offset: 128)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1653, file: !1654, line: 124, baseType: !554, size: 32, offset: 160)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1653, file: !1654, line: 125, baseType: !562, size: 32, offset: 192)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1653, file: !1654, line: 126, baseType: !554, size: 32, offset: 224)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1653, file: !1654, line: 127, baseType: !562, size: 32, offset: 256)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1653, file: !1654, line: 128, baseType: !7, size: 32, offset: 288)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1653, file: !1654, line: 129, baseType: !1667, size: 64, offset: 320)
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1668, line: 26, baseType: !1669)
!1668 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1668, line: 24, size: 64, elements: !1670)
!1670 = !{!1671}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1669, file: !1668, line: 25, baseType: !1672, size: 64)
!1672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 64, elements: !1673)
!1673 = !{!1674}
!1674 = !DISubrange(count: 2)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1653, file: !1654, line: 130, baseType: !1667, size: 64, offset: 384)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1653, file: !1654, line: 131, baseType: !1667, size: 64, offset: 448)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1653, file: !1654, line: 132, baseType: !1667, size: 64, offset: 512)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1653, file: !1654, line: 133, baseType: !1667, size: 64, offset: 576)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1653, file: !1654, line: 135, baseType: !418, size: 8, offset: 640)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1653, file: !1654, line: 137, baseType: !1681, size: 64, offset: 704)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1683, line: 189, size: 1664, elements: !1684)
!1683 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1684 = !{!1685, !1686, !1691, !1696, !1697, !1700, !1701, !1706, !1707, !1708, !1709, !1711, !1712, !1713, !1715, !1716, !1754, !1775}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1682, file: !1683, line: 190, baseType: !266, size: 32)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1682, file: !1683, line: 191, baseType: !1687, size: 32, offset: 32)
!1687 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1683, line: 28, baseType: !1688)
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !150, line: 98, baseType: !1689)
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !187, line: 20, baseType: !1690)
!1690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !189, line: 26, baseType: !212)
!1691 = !DIDerivedType(tag: DW_TAG_member, scope: !1682, file: !1683, line: 192, baseType: !1692, size: 192, offset: 64)
!1692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1682, file: !1683, line: 192, size: 192, elements: !1693)
!1693 = !{!1694, !1695}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1692, file: !1683, line: 193, baseType: !149, size: 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1692, file: !1683, line: 194, baseType: !295, size: 192, align: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1682, file: !1683, line: 199, baseType: !1022, size: 256, offset: 256)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1682, file: !1683, line: 200, baseType: !1698, size: 64, offset: 512)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1683, line: 200, flags: DIFlagFwdDecl)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1682, file: !1683, line: 201, baseType: !144, size: 64, offset: 576)
!1701 = !DIDerivedType(tag: DW_TAG_member, scope: !1682, file: !1683, line: 202, baseType: !1702, size: 64, offset: 640)
!1702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1682, file: !1683, line: 202, size: 64, elements: !1703)
!1703 = !{!1704, !1705}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1702, file: !1683, line: 203, baseType: !896, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1702, file: !1683, line: 204, baseType: !896, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1682, file: !1683, line: 206, baseType: !896, size: 64, offset: 704)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1682, file: !1683, line: 207, baseType: !554, size: 32, offset: 768)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1682, file: !1683, line: 208, baseType: !562, size: 32, offset: 800)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1682, file: !1683, line: 209, baseType: !1710, size: 32, offset: 832)
!1710 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1683, line: 31, baseType: !185)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1682, file: !1683, line: 210, baseType: !322, size: 16, offset: 864)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1682, file: !1683, line: 211, baseType: !322, size: 16, offset: 880)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1682, file: !1683, line: 215, baseType: !1714, size: 16, offset: 896)
!1714 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1682, file: !1683, line: 222, baseType: !210, size: 64, offset: 960)
!1716 = !DIDerivedType(tag: DW_TAG_member, scope: !1682, file: !1683, line: 239, baseType: !1717, size: 320, offset: 1024)
!1717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1682, file: !1683, line: 239, size: 320, elements: !1718)
!1718 = !{!1719, !1746}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1717, file: !1683, line: 240, baseType: !1720, size: 320)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1683, line: 108, size: 320, elements: !1721)
!1721 = !{!1722, !1723, !1735, !1738, !1745}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1720, file: !1683, line: 110, baseType: !210, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, scope: !1720, file: !1683, line: 111, baseType: !1724, size: 64, offset: 64)
!1724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1720, file: !1683, line: 111, size: 64, elements: !1725)
!1725 = !{!1726, !1734}
!1726 = !DIDerivedType(tag: DW_TAG_member, scope: !1724, file: !1683, line: 112, baseType: !1727, size: 64)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1724, file: !1683, line: 112, size: 64, elements: !1728)
!1728 = !{!1729, !1730}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1727, file: !1683, line: 114, baseType: !1361, size: 16)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1727, file: !1683, line: 115, baseType: !1731, size: 48, offset: 16)
!1731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 48, elements: !1732)
!1732 = !{!1733}
!1733 = !DISubrange(count: 6)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1724, file: !1683, line: 121, baseType: !210, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1720, file: !1683, line: 123, baseType: !1736, size: 64, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1683, line: 96, flags: DIFlagFwdDecl)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1720, file: !1683, line: 124, baseType: !1739, size: 64, offset: 192)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1683, line: 102, size: 192, elements: !1741)
!1741 = !{!1742, !1743, !1744}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1740, file: !1683, line: 103, baseType: !1111, size: 128, align: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1740, file: !1683, line: 104, baseType: !266, size: 32, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1740, file: !1683, line: 105, baseType: !216, size: 8, offset: 160)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1720, file: !1683, line: 125, baseType: !650, size: 64, offset: 256)
!1746 = !DIDerivedType(tag: DW_TAG_member, scope: !1717, file: !1683, line: 241, baseType: !1747, size: 320)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1717, file: !1683, line: 241, size: 320, elements: !1748)
!1748 = !{!1749, !1750, !1751, !1752, !1753}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1747, file: !1683, line: 242, baseType: !210, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1747, file: !1683, line: 243, baseType: !210, size: 64, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1747, file: !1683, line: 244, baseType: !1736, size: 64, offset: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1747, file: !1683, line: 245, baseType: !1739, size: 64, offset: 192)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1747, file: !1683, line: 246, baseType: !196, size: 64, offset: 256)
!1754 = !DIDerivedType(tag: DW_TAG_member, scope: !1682, file: !1683, line: 254, baseType: !1755, size: 256, offset: 1344)
!1755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1682, file: !1683, line: 254, size: 256, elements: !1756)
!1756 = !{!1757, !1763}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1755, file: !1683, line: 255, baseType: !1758, size: 256)
!1758 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1683, line: 128, size: 256, elements: !1759)
!1759 = !{!1760, !1761}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1758, file: !1683, line: 129, baseType: !144, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1758, file: !1683, line: 130, baseType: !1762, size: 256)
!1762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 256, elements: !1633)
!1763 = !DIDerivedType(tag: DW_TAG_member, scope: !1755, file: !1683, line: 256, baseType: !1764, size: 256)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1755, file: !1683, line: 256, size: 256, elements: !1765)
!1765 = !{!1766, !1767}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1764, file: !1683, line: 258, baseType: !149, size: 128)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1764, file: !1683, line: 259, baseType: !1768, size: 128, offset: 128)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1769, line: 22, size: 128, elements: !1770)
!1769 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1770 = !{!1771, !1774}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1768, file: !1769, line: 23, baseType: !1772, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1769, line: 23, flags: DIFlagFwdDecl)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1768, file: !1769, line: 24, baseType: !210, size: 64, offset: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1682, file: !1683, line: 274, baseType: !1776, size: 64, offset: 1600)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1683, line: 170, size: 192, elements: !1778)
!1778 = !{!1779, !1788, !1789}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1777, file: !1683, line: 171, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1683, line: 165, baseType: !1781)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!212, !1681, !1784, !1786, !1681}
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1737)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1758)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1777, file: !1683, line: 172, baseType: !1681, size: 64, offset: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1777, file: !1683, line: 173, baseType: !1736, size: 64, offset: 128)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1653, file: !1654, line: 138, baseType: !1681, size: 64, offset: 768)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1653, file: !1654, line: 139, baseType: !1681, size: 64, offset: 832)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1653, file: !1654, line: 140, baseType: !1681, size: 64, offset: 896)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1653, file: !1654, line: 145, baseType: !1794, size: 64, offset: 960)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1796, line: 13, size: 896, elements: !1797)
!1796 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1797 = !{!1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1795, file: !1796, line: 14, baseType: !266, size: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1795, file: !1796, line: 15, baseType: !271, size: 32, offset: 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1795, file: !1796, line: 16, baseType: !271, size: 32, offset: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1795, file: !1796, line: 21, baseType: !235, size: 64, offset: 128)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1795, file: !1796, line: 27, baseType: !210, size: 64, offset: 192)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1795, file: !1796, line: 28, baseType: !210, size: 64, offset: 256)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1795, file: !1796, line: 29, baseType: !235, size: 64, offset: 320)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1795, file: !1796, line: 32, baseType: !747, size: 128, offset: 384)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1795, file: !1796, line: 33, baseType: !554, size: 32, offset: 512)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1795, file: !1796, line: 37, baseType: !235, size: 64, offset: 576)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1795, file: !1796, line: 44, baseType: !1809, size: 256, offset: 640)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1810, line: 15, size: 256, elements: !1811)
!1810 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1811 = !{!1812, !1813, !1814, !1815, !1816, !1817, !1818}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1809, file: !1810, line: 16, baseType: !368)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1809, file: !1810, line: 18, baseType: !212, size: 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1809, file: !1810, line: 19, baseType: !212, size: 32, offset: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1809, file: !1810, line: 20, baseType: !212, size: 32, offset: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1809, file: !1810, line: 21, baseType: !212, size: 32, offset: 96)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1809, file: !1810, line: 22, baseType: !210, size: 64, offset: 128)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1809, file: !1810, line: 23, baseType: !210, size: 64, offset: 192)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1653, file: !1654, line: 146, baseType: !1180, size: 64, offset: 1024)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1653, file: !1654, line: 147, baseType: !1821, size: 64, offset: 1088)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1654, line: 25, size: 64, elements: !1823)
!1823 = !{!1824, !1825, !1826}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1822, file: !1654, line: 26, baseType: !271, size: 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1822, file: !1654, line: 27, baseType: !212, size: 32, offset: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1822, file: !1654, line: 28, baseType: !1827, offset: 64)
!1827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, elements: !1828)
!1828 = !{!1829}
!1829 = !DISubrange(count: 0)
!1830 = !DIDerivedType(tag: DW_TAG_member, scope: !1653, file: !1654, line: 149, baseType: !1831, size: 128, offset: 1152)
!1831 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1653, file: !1654, line: 149, size: 128, elements: !1832)
!1832 = !{!1833, !1834}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1831, file: !1654, line: 150, baseType: !212, size: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1831, file: !1654, line: 151, baseType: !1111, size: 128, align: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1309, file: !18, line: 938, baseType: !1836, size: 256, offset: 1088)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !18, line: 896, size: 256, elements: !1837)
!1837 = !{!1838, !1839, !1840, !1841, !1842, !1843}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1836, file: !18, line: 897, baseType: !210, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1836, file: !18, line: 898, baseType: !7, size: 32, offset: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1836, file: !18, line: 899, baseType: !7, size: 32, offset: 96)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1836, file: !18, line: 902, baseType: !7, size: 32, offset: 128)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1836, file: !18, line: 903, baseType: !7, size: 32, offset: 160)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1836, file: !18, line: 904, baseType: !710, size: 64, offset: 192)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1309, file: !18, line: 940, baseType: !305, size: 64, offset: 1344)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1309, file: !18, line: 945, baseType: !144, size: 64, offset: 1408)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !1309, file: !18, line: 949, baseType: !149, size: 128, offset: 1472)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !1309, file: !18, line: 950, baseType: !149, size: 128, offset: 1600)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1309, file: !18, line: 952, baseType: !543, size: 64, offset: 1728)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1309, file: !18, line: 953, baseType: !1173, size: 32, offset: 1792)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1309, file: !18, line: 954, baseType: !1173, size: 32, offset: 1824)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !572, file: !18, line: 1882, baseType: !1852, size: 64, offset: 896)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!212, !691, !1855, !186, !7}
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1857, line: 22, size: 1152, elements: !1858)
!1857 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!1858 = !{!1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1856, file: !1857, line: 23, baseType: !186, size: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1856, file: !1857, line: 24, baseType: !551, size: 16, offset: 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1856, file: !1857, line: 25, baseType: !7, size: 32, offset: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1856, file: !1857, line: 26, baseType: !185, size: 32, offset: 96)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1856, file: !1857, line: 27, baseType: !305, size: 64, offset: 128)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1856, file: !1857, line: 28, baseType: !305, size: 64, offset: 192)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1856, file: !1857, line: 37, baseType: !305, size: 64, offset: 256)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1856, file: !1857, line: 38, baseType: !705, size: 32, offset: 320)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1856, file: !1857, line: 39, baseType: !705, size: 32, offset: 352)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1856, file: !1857, line: 40, baseType: !554, size: 32, offset: 384)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1856, file: !1857, line: 41, baseType: !562, size: 32, offset: 416)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1856, file: !1857, line: 42, baseType: !710, size: 64, offset: 448)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1856, file: !1857, line: 43, baseType: !1301, size: 128, offset: 512)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1856, file: !1857, line: 44, baseType: !1301, size: 128, offset: 640)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1856, file: !1857, line: 45, baseType: !1301, size: 128, offset: 768)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1856, file: !1857, line: 46, baseType: !1301, size: 128, offset: 896)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1856, file: !1857, line: 47, baseType: !305, size: 64, offset: 1024)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1856, file: !1857, line: 48, baseType: !305, size: 64, offset: 1088)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !572, file: !18, line: 1883, baseType: !1878, size: 64, offset: 960)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!1337, !578, !196, !206}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !572, file: !18, line: 1884, baseType: !1882, size: 64, offset: 1024)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!212, !547, !1885, !305, !305}
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !18, line: 50, flags: DIFlagFwdDecl)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !572, file: !18, line: 1886, baseType: !1888, size: 64, offset: 1088)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!212, !547, !1891, !212}
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !572, file: !18, line: 1887, baseType: !1893, size: 64, offset: 1152)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!212, !547, !578, !1308, !7, !551}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !572, file: !18, line: 1890, baseType: !1276, size: 64, offset: 1216)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !572, file: !18, line: 1891, baseType: !1898, size: 64, offset: 1280)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!212, !547, !1253, !212}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !548, file: !18, line: 623, baseType: !700, size: 64, offset: 192)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !548, file: !18, line: 624, baseType: !543, size: 64, offset: 256)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !548, file: !18, line: 631, baseType: !210, size: 64, offset: 320)
!1904 = !DIDerivedType(tag: DW_TAG_member, scope: !548, file: !18, line: 639, baseType: !1905, size: 32, offset: 384)
!1905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !548, file: !18, line: 639, size: 32, elements: !1906)
!1906 = !{!1907, !1909}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !1905, file: !18, line: 640, baseType: !1908, size: 32)
!1908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !1905, file: !18, line: 641, baseType: !7, size: 32)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !548, file: !18, line: 643, baseType: !705, size: 32, offset: 416)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !548, file: !18, line: 644, baseType: !710, size: 64, offset: 448)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !548, file: !18, line: 645, baseType: !1301, size: 128, offset: 512)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !548, file: !18, line: 646, baseType: !1301, size: 128, offset: 640)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !548, file: !18, line: 647, baseType: !1301, size: 128, offset: 768)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !548, file: !18, line: 648, baseType: !165, offset: 896)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !548, file: !18, line: 649, baseType: !322, size: 16, offset: 896)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !548, file: !18, line: 650, baseType: !416, size: 8, offset: 912)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !548, file: !18, line: 651, baseType: !416, size: 8, offset: 920)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !548, file: !18, line: 652, baseType: !1010, size: 64, offset: 960)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !548, file: !18, line: 659, baseType: !210, size: 64, offset: 1024)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !548, file: !18, line: 660, baseType: !1022, size: 256, offset: 1088)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !548, file: !18, line: 662, baseType: !210, size: 64, offset: 1344)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !548, file: !18, line: 663, baseType: !210, size: 64, offset: 1408)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !548, file: !18, line: 665, baseType: !747, size: 128, offset: 1472)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !548, file: !18, line: 666, baseType: !149, size: 128, offset: 1600)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !548, file: !18, line: 675, baseType: !149, size: 128, offset: 1728)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !548, file: !18, line: 676, baseType: !149, size: 128, offset: 1856)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !548, file: !18, line: 677, baseType: !149, size: 128, offset: 1984)
!1929 = !DIDerivedType(tag: DW_TAG_member, scope: !548, file: !18, line: 678, baseType: !1930, size: 128, offset: 2112)
!1930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !548, file: !18, line: 678, size: 128, elements: !1931)
!1931 = !{!1932, !1933}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !1930, file: !18, line: 679, baseType: !743, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !1930, file: !18, line: 680, baseType: !1111, size: 128, align: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !548, file: !18, line: 682, baseType: !237, size: 64, offset: 2240)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !548, file: !18, line: 683, baseType: !237, size: 64, offset: 2304)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !548, file: !18, line: 684, baseType: !271, size: 32, offset: 2368)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !548, file: !18, line: 685, baseType: !271, size: 32, offset: 2400)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !548, file: !18, line: 686, baseType: !271, size: 32, offset: 2432)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !548, file: !18, line: 688, baseType: !271, size: 32, offset: 2464)
!1940 = !DIDerivedType(tag: DW_TAG_member, scope: !548, file: !18, line: 690, baseType: !1941, size: 64, offset: 2496)
!1941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !548, file: !18, line: 690, size: 64, elements: !1942)
!1942 = !{!1943, !1944}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !1941, file: !18, line: 691, baseType: !1324, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1941, file: !18, line: 692, baseType: !774, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !548, file: !18, line: 694, baseType: !1946, size: 64, offset: 2560)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !18, line: 1100, size: 384, elements: !1948)
!1948 = !{!1949, !1950, !1951, !1952}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !1947, file: !18, line: 1101, baseType: !165)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !1947, file: !18, line: 1102, baseType: !149, size: 128)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !1947, file: !18, line: 1103, baseType: !149, size: 128, offset: 128)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !1947, file: !18, line: 1104, baseType: !149, size: 128, offset: 256)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !548, file: !18, line: 695, baseType: !544, size: 1216, align: 64, offset: 2624)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !548, file: !18, line: 696, baseType: !149, size: 128, offset: 3840)
!1955 = !DIDerivedType(tag: DW_TAG_member, scope: !548, file: !18, line: 697, baseType: !1956, size: 64, offset: 3968)
!1956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !548, file: !18, line: 697, size: 64, elements: !1957)
!1957 = !{!1958, !1959, !1960, !1963, !1964}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !1956, file: !18, line: 698, baseType: !1395, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !1956, file: !18, line: 699, baseType: !1042, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !1956, file: !18, line: 700, baseType: !1961, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !18, line: 700, flags: DIFlagFwdDecl)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !1956, file: !18, line: 701, baseType: !196, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !1956, file: !18, line: 702, baseType: !7, size: 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !548, file: !18, line: 705, baseType: !188, size: 32, offset: 4032)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !548, file: !18, line: 708, baseType: !188, size: 32, offset: 4064)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !548, file: !18, line: 709, baseType: !1134, size: 64, offset: 4096)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !548, file: !18, line: 720, baseType: !144, size: 64, offset: 4160)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !544, file: !18, line: 453, baseType: !1970, size: 128, offset: 64)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1971, line: 292, size: 128, elements: !1972)
!1971 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1972 = !{!1973, !1974, !1975}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1970, file: !1971, line: 293, baseType: !165)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1970, file: !1971, line: 295, baseType: !154, size: 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1970, file: !1971, line: 296, baseType: !144, size: 64, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !544, file: !18, line: 454, baseType: !154, size: 32, offset: 192)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !544, file: !18, line: 455, baseType: !271, size: 32, offset: 224)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !544, file: !18, line: 460, baseType: !403, size: 128, offset: 256)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !544, file: !18, line: 461, baseType: !1022, size: 256, offset: 384)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !544, file: !18, line: 462, baseType: !210, size: 64, offset: 640)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !544, file: !18, line: 463, baseType: !210, size: 64, offset: 704)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !544, file: !18, line: 464, baseType: !210, size: 64, offset: 768)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !544, file: !18, line: 465, baseType: !1984, size: 64, offset: 832)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1986)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !18, line: 367, size: 1408, elements: !1987)
!1987 = !{!1988, !1992, !1996, !2000, !2004, !2008, !2014, !2019, !2023, !2028, !2032, !2036, !2040, !2041, !2045, !2051, !2052, !2053, !2057, !2062, !2066, !2073}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1986, file: !18, line: 368, baseType: !1989, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!212, !531, !786}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1986, file: !18, line: 369, baseType: !1993, size: 64, offset: 64)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!212, !1308, !531}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1986, file: !18, line: 372, baseType: !1997, size: 64, offset: 128)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!212, !543, !786}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1986, file: !18, line: 375, baseType: !2001, size: 64, offset: 192)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!212, !531}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1986, file: !18, line: 381, baseType: !2005, size: 64, offset: 256)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!212, !1308, !543, !148, !7}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1986, file: !18, line: 383, baseType: !2009, size: 64, offset: 320)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{null, !2012}
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !18, line: 290, flags: DIFlagFwdDecl)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1986, file: !18, line: 385, baseType: !2015, size: 64, offset: 384)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!212, !1308, !543, !710, !7, !7, !2018, !1544}
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1986, file: !18, line: 388, baseType: !2020, size: 64, offset: 448)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!212, !1308, !543, !710, !7, !7, !531, !144}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1986, file: !18, line: 393, baseType: !2024, size: 64, offset: 512)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!2027, !543, !2027}
!2027 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !150, line: 125, baseType: !305)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1986, file: !18, line: 394, baseType: !2029, size: 64, offset: 576)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{null, !531, !7, !7}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1986, file: !18, line: 395, baseType: !2033, size: 64, offset: 640)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!212, !531, !154}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1986, file: !18, line: 396, baseType: !2037, size: 64, offset: 704)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{null, !531}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1986, file: !18, line: 397, baseType: !1346, size: 64, offset: 768)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1986, file: !18, line: 402, baseType: !2042, size: 64, offset: 832)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!212, !543, !531, !531, !34}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1986, file: !18, line: 404, baseType: !2046, size: 64, offset: 896)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!216, !531, !2049}
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !2050, line: 305, baseType: !7)
!2050 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1986, file: !18, line: 405, baseType: !2037, size: 64, offset: 960)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1986, file: !18, line: 406, baseType: !2001, size: 64, offset: 1024)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1986, file: !18, line: 407, baseType: !2054, size: 64, offset: 1088)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!212, !531, !210, !210}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1986, file: !18, line: 409, baseType: !2058, size: 64, offset: 1152)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{null, !531, !2061, !2061}
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1986, file: !18, line: 410, baseType: !2063, size: 64, offset: 1216)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!212, !543, !531}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1986, file: !18, line: 413, baseType: !2067, size: 64, offset: 1280)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!212, !2070, !1308, !2072}
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !18, line: 61, flags: DIFlagFwdDecl)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1986, file: !18, line: 415, baseType: !2074, size: 64, offset: 1344)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{null, !1308}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !544, file: !18, line: 466, baseType: !210, size: 64, offset: 896)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !544, file: !18, line: 467, baseType: !1173, size: 32, offset: 960)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !544, file: !18, line: 468, baseType: !165, offset: 992)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !544, file: !18, line: 469, baseType: !149, size: 128, offset: 1024)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !544, file: !18, line: 470, baseType: !144, size: 64, offset: 1152)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !539, file: !445, line: 87, baseType: !210, size: 64, offset: 192)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !539, file: !445, line: 94, baseType: !210, size: 64, offset: 256)
!2084 = !DIDerivedType(tag: DW_TAG_member, scope: !536, file: !445, line: 96, baseType: !2085, size: 64)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !536, file: !445, line: 96, size: 64, elements: !2086)
!2086 = !{!2087}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2085, file: !445, line: 101, baseType: !2088, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !150, line: 143, baseType: !305)
!2089 = !DIDerivedType(tag: DW_TAG_member, scope: !536, file: !445, line: 103, baseType: !2090, size: 320)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !536, file: !445, line: 103, size: 320, elements: !2091)
!2091 = !{!2092, !2102, !2105, !2106}
!2092 = !DIDerivedType(tag: DW_TAG_member, scope: !2090, file: !445, line: 104, baseType: !2093, size: 128)
!2093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2090, file: !445, line: 104, size: 128, elements: !2094)
!2094 = !{!2095, !2096}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !2093, file: !445, line: 105, baseType: !149, size: 128)
!2096 = !DIDerivedType(tag: DW_TAG_member, scope: !2093, file: !445, line: 106, baseType: !2097, size: 128)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2093, file: !445, line: 106, size: 128, elements: !2098)
!2098 = !{!2099, !2100, !2101}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2097, file: !445, line: 107, baseType: !531, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2097, file: !445, line: 109, baseType: !212, size: 32, offset: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !2097, file: !445, line: 110, baseType: !212, size: 32, offset: 96)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !2090, file: !445, line: 117, baseType: !2103, size: 64, offset: 128)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !445, line: 117, flags: DIFlagFwdDecl)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !2090, file: !445, line: 119, baseType: !144, size: 64, offset: 192)
!2106 = !DIDerivedType(tag: DW_TAG_member, scope: !2090, file: !445, line: 120, baseType: !2107, size: 64, offset: 256)
!2107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2090, file: !445, line: 120, size: 64, elements: !2108)
!2108 = !{!2109, !2110, !2111}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !2107, file: !445, line: 121, baseType: !144, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2107, file: !445, line: 122, baseType: !210, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, scope: !2107, file: !445, line: 123, baseType: !2112, size: 32)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2107, file: !445, line: 123, size: 32, elements: !2113)
!2113 = !{!2114, !2115, !2116}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !2112, file: !445, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !2112, file: !445, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2112, file: !445, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!2117 = !DIDerivedType(tag: DW_TAG_member, scope: !536, file: !445, line: 130, baseType: !2118, size: 192)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !536, file: !445, line: 130, size: 192, elements: !2119)
!2119 = !{!2120, !2121, !2122, !2123, !2124}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2118, file: !445, line: 131, baseType: !210, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !2118, file: !445, line: 134, baseType: !418, size: 8, offset: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !2118, file: !445, line: 135, baseType: !418, size: 8, offset: 72)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !2118, file: !445, line: 136, baseType: !271, size: 32, offset: 96)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !2118, file: !445, line: 137, baseType: !7, size: 32, offset: 128)
!2125 = !DIDerivedType(tag: DW_TAG_member, scope: !536, file: !445, line: 139, baseType: !2126, size: 256)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !536, file: !445, line: 139, size: 256, elements: !2127)
!2127 = !{!2128, !2129, !2130}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !2126, file: !445, line: 140, baseType: !210, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !2126, file: !445, line: 141, baseType: !271, size: 32, offset: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !2126, file: !445, line: 143, baseType: !149, size: 128, offset: 128)
!2131 = !DIDerivedType(tag: DW_TAG_member, scope: !536, file: !445, line: 145, baseType: !2132, size: 256)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !536, file: !445, line: 145, size: 256, elements: !2133)
!2133 = !{!2134, !2135, !2137, !2138, !2143}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !2132, file: !445, line: 146, baseType: !210, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !2132, file: !445, line: 147, baseType: !2136, size: 64, offset: 64)
!2136 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !463, line: 509, baseType: !531)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !2132, file: !445, line: 148, baseType: !210, size: 64, offset: 128)
!2138 = !DIDerivedType(tag: DW_TAG_member, scope: !2132, file: !445, line: 149, baseType: !2139, size: 64, offset: 192)
!2139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2132, file: !445, line: 149, size: 64, elements: !2140)
!2140 = !{!2141, !2142}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !2139, file: !445, line: 150, baseType: !443, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !2139, file: !445, line: 151, baseType: !271, size: 32)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2132, file: !445, line: 156, baseType: !165, offset: 256)
!2144 = !DIDerivedType(tag: DW_TAG_member, scope: !536, file: !445, line: 159, baseType: !2145, size: 128)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !536, file: !445, line: 159, size: 128, elements: !2146)
!2146 = !{!2147, !2221}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2145, file: !445, line: 161, baseType: !2148, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !42, line: 110, size: 1152, elements: !2150)
!2150 = !{!2151, !2161, !2182, !2183, !2194, !2195, !2196, !2208, !2209, !2210}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2149, file: !42, line: 111, baseType: !2152, size: 384)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !42, line: 19, size: 384, elements: !2153)
!2153 = !{!2154, !2156, !2157, !2158, !2159, !2160}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2152, file: !42, line: 20, baseType: !2155, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2152, file: !42, line: 21, baseType: !2155, size: 64, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2152, file: !42, line: 22, baseType: !2155, size: 64, offset: 128)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2152, file: !42, line: 23, baseType: !210, size: 64, offset: 192)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2152, file: !42, line: 24, baseType: !210, size: 64, offset: 256)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2152, file: !42, line: 25, baseType: !210, size: 64, offset: 320)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2149, file: !42, line: 112, baseType: !2162, size: 64, offset: 384)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2164, line: 105, size: 128, elements: !2165)
!2164 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2165 = !{!2166, !2167}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2163, file: !2164, line: 110, baseType: !210, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2163, file: !2164, line: 118, baseType: !2168, size: 64, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2164, line: 95, size: 448, elements: !2170)
!2170 = !{!2171, !2172, !2177, !2178, !2179, !2180, !2181}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2169, file: !2164, line: 96, baseType: !235, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2169, file: !2164, line: 97, baseType: !2173, size: 64, offset: 64)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2164, line: 60, baseType: !2175)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{null, !2162}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2169, file: !2164, line: 98, baseType: !2173, size: 64, offset: 128)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2169, file: !2164, line: 99, baseType: !216, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2169, file: !2164, line: 100, baseType: !216, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2169, file: !2164, line: 101, baseType: !1111, size: 128, align: 64, offset: 256)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2169, file: !2164, line: 102, baseType: !2162, size: 64, offset: 384)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2149, file: !42, line: 113, baseType: !2163, size: 128, offset: 448)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2149, file: !42, line: 114, baseType: !2184, size: 192, offset: 576)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2185, line: 26, size: 192, elements: !2186)
!2185 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2186 = !{!2187, !2188}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2184, file: !2185, line: 27, baseType: !7, size: 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2184, file: !2185, line: 28, baseType: !2189, size: 128, offset: 64)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2190, line: 43, size: 128, elements: !2191)
!2190 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2191 = !{!2192, !2193}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2189, file: !2190, line: 44, baseType: !368)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2189, file: !2190, line: 45, baseType: !149, size: 128)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2149, file: !42, line: 115, baseType: !41, size: 32, offset: 768)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2149, file: !42, line: 116, baseType: !7, size: 32, offset: 800)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2149, file: !42, line: 117, baseType: !2197, size: 64, offset: 832)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2199)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !42, line: 67, size: 256, elements: !2200)
!2200 = !{!2201, !2202, !2206, !2207}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2199, file: !42, line: 73, baseType: !2037, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2199, file: !42, line: 78, baseType: !2203, size: 64, offset: 64)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{null, !2148}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2199, file: !42, line: 83, baseType: !2203, size: 64, offset: 128)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2199, file: !42, line: 89, baseType: !498, size: 64, offset: 192)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2149, file: !42, line: 118, baseType: !144, size: 64, offset: 896)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2149, file: !42, line: 119, baseType: !212, size: 32, offset: 960)
!2210 = !DIDerivedType(tag: DW_TAG_member, scope: !2149, file: !42, line: 120, baseType: !2211, size: 128, offset: 1024)
!2211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2149, file: !42, line: 120, size: 128, elements: !2212)
!2212 = !{!2213, !2219}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2211, file: !42, line: 121, baseType: !2214, size: 128)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2215, line: 6, size: 128, elements: !2216)
!2215 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2216 = !{!2217, !2218}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2214, file: !2215, line: 7, baseType: !305, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2214, file: !2215, line: 8, baseType: !305, size: 64, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2211, file: !42, line: 122, baseType: !2220)
!2220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2214, elements: !1828)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2145, file: !445, line: 162, baseType: !144, size: 64, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !536, file: !445, line: 176, baseType: !1111, size: 128, align: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, scope: !532, file: !445, line: 179, baseType: !2224, size: 32, offset: 384)
!2224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !532, file: !445, line: 179, size: 32, elements: !2225)
!2225 = !{!2226, !2227, !2228, !2229}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2224, file: !445, line: 184, baseType: !271, size: 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2224, file: !445, line: 192, baseType: !7, size: 32)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2224, file: !445, line: 194, baseType: !7, size: 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2224, file: !445, line: 195, baseType: !212, size: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !532, file: !445, line: 199, baseType: !271, size: 32, offset: 416)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !503, file: !49, line: 522, baseType: !531, size: 64, offset: 512)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !503, file: !49, line: 528, baseType: !2233, size: 64, offset: 576)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !503, file: !49, line: 532, baseType: !2235, size: 64, offset: 640)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !503, file: !49, line: 536, baseType: !2136, size: 64, offset: 704)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !482, file: !49, line: 563, baseType: !2238, size: 64, offset: 320)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!501, !502, !48}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !482, file: !49, line: 565, baseType: !2242, size: 64, offset: 384)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{null, !502, !210, !210}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !482, file: !49, line: 567, baseType: !2246, size: 64, offset: 448)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!210, !451}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !482, file: !49, line: 571, baseType: !498, size: 64, offset: 512)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !482, file: !49, line: 574, baseType: !498, size: 64, offset: 576)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !482, file: !49, line: 579, baseType: !2252, size: 64, offset: 640)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!212, !451, !210, !144, !212, !212}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !482, file: !49, line: 585, baseType: !2256, size: 64, offset: 704)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!650, !451}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !482, file: !49, line: 615, baseType: !2260, size: 64, offset: 768)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!531, !451, !210}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !452, file: !445, line: 359, baseType: !210, size: 64, offset: 1216)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !452, file: !445, line: 361, baseType: !1308, size: 64, offset: 1280)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !452, file: !445, line: 362, baseType: !144, size: 64, offset: 1344)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !452, file: !445, line: 365, baseType: !235, size: 64, offset: 1408)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !452, file: !445, line: 373, baseType: !2268, offset: 1472)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !445, line: 296, elements: !179)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !448, file: !445, line: 391, baseType: !406, size: 64, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !448, file: !445, line: 392, baseType: !305, size: 64, offset: 128)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !448, file: !445, line: 394, baseType: !1575, size: 64, offset: 192)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !448, file: !445, line: 398, baseType: !210, size: 64, offset: 256)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !448, file: !445, line: 399, baseType: !210, size: 64, offset: 320)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !448, file: !445, line: 405, baseType: !210, size: 64, offset: 384)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !448, file: !445, line: 406, baseType: !210, size: 64, offset: 448)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !448, file: !445, line: 407, baseType: !2277, size: 64, offset: 512)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !463, line: 286, baseType: !2279)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !463, line: 286, size: 64, elements: !2280)
!2280 = !{!2281}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2279, file: !463, line: 286, baseType: !2282, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !468, line: 18, baseType: !210)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !448, file: !445, line: 416, baseType: !271, size: 32, offset: 576)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !448, file: !445, line: 428, baseType: !271, size: 32, offset: 608)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !448, file: !445, line: 437, baseType: !271, size: 32, offset: 640)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !448, file: !445, line: 447, baseType: !271, size: 32, offset: 672)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !448, file: !445, line: 450, baseType: !235, size: 64, offset: 704)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !448, file: !445, line: 452, baseType: !212, size: 32, offset: 768)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !448, file: !445, line: 454, baseType: !165, offset: 800)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !448, file: !445, line: 457, baseType: !1022, size: 256, offset: 832)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !448, file: !445, line: 459, baseType: !149, size: 128, offset: 1088)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !448, file: !445, line: 466, baseType: !210, size: 64, offset: 1216)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !448, file: !445, line: 467, baseType: !210, size: 64, offset: 1280)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !448, file: !445, line: 469, baseType: !210, size: 64, offset: 1344)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !448, file: !445, line: 470, baseType: !210, size: 64, offset: 1408)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !448, file: !445, line: 471, baseType: !237, size: 64, offset: 1472)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !448, file: !445, line: 472, baseType: !210, size: 64, offset: 1536)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !448, file: !445, line: 473, baseType: !210, size: 64, offset: 1600)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !448, file: !445, line: 474, baseType: !210, size: 64, offset: 1664)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !448, file: !445, line: 475, baseType: !210, size: 64, offset: 1728)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !448, file: !445, line: 477, baseType: !165, offset: 1792)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !448, file: !445, line: 478, baseType: !210, size: 64, offset: 1792)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !448, file: !445, line: 478, baseType: !210, size: 64, offset: 1856)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !448, file: !445, line: 478, baseType: !210, size: 64, offset: 1920)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !448, file: !445, line: 478, baseType: !210, size: 64, offset: 1984)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !448, file: !445, line: 479, baseType: !210, size: 64, offset: 2048)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !448, file: !445, line: 479, baseType: !210, size: 64, offset: 2112)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !448, file: !445, line: 479, baseType: !210, size: 64, offset: 2176)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !448, file: !445, line: 480, baseType: !210, size: 64, offset: 2240)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !448, file: !445, line: 480, baseType: !210, size: 64, offset: 2304)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !448, file: !445, line: 480, baseType: !210, size: 64, offset: 2368)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !448, file: !445, line: 480, baseType: !210, size: 64, offset: 2432)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !448, file: !445, line: 482, baseType: !2314, size: 2816, offset: 2496)
!2314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 2816, elements: !2315)
!2315 = !{!2316}
!2316 = !DISubrange(count: 44)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !448, file: !445, line: 488, baseType: !2318, size: 256, offset: 5312)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2319, line: 60, size: 256, elements: !2320)
!2319 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2320 = !{!2321}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2318, file: !2319, line: 61, baseType: !2322, size: 256)
!2322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 256, elements: !1633)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !448, file: !445, line: 490, baseType: !2324, size: 64, offset: 5568)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !445, line: 490, flags: DIFlagFwdDecl)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !448, file: !445, line: 493, baseType: !2327, size: 896, offset: 5632)
!2327 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2328, line: 53, baseType: !2329)
!2328 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2328, line: 13, size: 896, elements: !2330)
!2330 = !{!2331, !2332, !2333, !2334, !2337, !2338, !2339, !2340, !2344, !2345, !2346}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2329, file: !2328, line: 18, baseType: !305, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2329, file: !2328, line: 28, baseType: !237, size: 64, offset: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2329, file: !2328, line: 31, baseType: !1022, size: 256, offset: 128)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2329, file: !2328, line: 32, baseType: !2335, size: 64, offset: 384)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2328, line: 32, flags: DIFlagFwdDecl)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2329, file: !2328, line: 37, baseType: !322, size: 16, offset: 448)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2329, file: !2328, line: 40, baseType: !231, size: 192, offset: 512)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2329, file: !2328, line: 41, baseType: !144, size: 64, offset: 704)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2329, file: !2328, line: 42, baseType: !2341, size: 64, offset: 768)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2343)
!2343 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2328, line: 42, flags: DIFlagFwdDecl)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2329, file: !2328, line: 44, baseType: !271, size: 32, offset: 832)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2329, file: !2328, line: 50, baseType: !1361, size: 16, offset: 864)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2329, file: !2328, line: 51, baseType: !2347, size: 16, offset: 880)
!2347 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !187, line: 18, baseType: !2348)
!2348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !189, line: 23, baseType: !1714)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !448, file: !445, line: 495, baseType: !210, size: 64, offset: 6528)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !448, file: !445, line: 497, baseType: !2351, size: 64, offset: 6592)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !445, line: 381, size: 384, elements: !2353)
!2353 = !{!2354, !2355, !2361}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2352, file: !445, line: 382, baseType: !271, size: 32)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2352, file: !445, line: 383, baseType: !2356, size: 128, offset: 64)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !445, line: 376, size: 128, elements: !2357)
!2357 = !{!2358, !2359}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2356, file: !445, line: 377, baseType: !252, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2356, file: !445, line: 378, baseType: !2360, size: 64, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2352, file: !445, line: 384, baseType: !2184, size: 192, offset: 192)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !448, file: !445, line: 500, baseType: !165, offset: 6656)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !448, file: !445, line: 501, baseType: !2364, size: 64, offset: 6656)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !445, line: 387, flags: DIFlagFwdDecl)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !448, file: !445, line: 516, baseType: !1180, size: 64, offset: 6720)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !448, file: !445, line: 519, baseType: !1308, size: 64, offset: 6784)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !448, file: !445, line: 521, baseType: !2369, size: 64, offset: 6848)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !445, line: 521, flags: DIFlagFwdDecl)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !448, file: !445, line: 545, baseType: !271, size: 32, offset: 6912)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !448, file: !445, line: 548, baseType: !216, size: 8, offset: 6944)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !448, file: !445, line: 550, baseType: !2374, offset: 6952)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2375, line: 142, elements: !179)
!2375 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !448, file: !445, line: 554, baseType: !1200, size: 256, offset: 6976)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !448, file: !445, line: 557, baseType: !186, size: 32, offset: 7232)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !444, file: !445, line: 565, baseType: !2379, offset: 7296)
!2379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, elements: !2380)
!2380 = !{!2381}
!2381 = !DISubrange(count: -1)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !253, file: !254, line: 758, baseType: !443, size: 64, offset: 3968)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !253, file: !254, line: 761, baseType: !2384, size: 320, offset: 4032)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2319, line: 34, size: 320, elements: !2385)
!2385 = !{!2386, !2387}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2384, file: !2319, line: 35, baseType: !305, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2384, file: !2319, line: 36, baseType: !2388, size: 256, offset: 64)
!2388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 256, elements: !1633)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !253, file: !254, line: 766, baseType: !212, size: 32, offset: 4352)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !253, file: !254, line: 767, baseType: !212, size: 32, offset: 4384)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !253, file: !254, line: 768, baseType: !212, size: 32, offset: 4416)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !253, file: !254, line: 770, baseType: !212, size: 32, offset: 4448)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !253, file: !254, line: 772, baseType: !210, size: 64, offset: 4480)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !253, file: !254, line: 775, baseType: !7, size: 32, offset: 4544)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !253, file: !254, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !253, file: !254, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !253, file: !254, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !253, file: !254, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !253, file: !254, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !253, file: !254, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !253, file: !254, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !253, file: !254, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !253, file: !254, line: 831, baseType: !210, size: 64, offset: 4672)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !253, file: !254, line: 833, baseType: !2405, size: 384, offset: 4736)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !55, line: 25, size: 384, elements: !2406)
!2406 = !{!2407, !2412}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2405, file: !55, line: 26, baseType: !2408, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!68, !2411}
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, scope: !2405, file: !55, line: 27, baseType: !2413, size: 320, offset: 64)
!2413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2405, file: !55, line: 27, size: 320, elements: !2414)
!2414 = !{!2415, !2425, !2450}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2413, file: !55, line: 36, baseType: !2416, size: 320)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2413, file: !55, line: 29, size: 320, elements: !2417)
!2417 = !{!2418, !2420, !2421, !2422, !2423, !2424}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2416, file: !55, line: 30, baseType: !2419, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2416, file: !55, line: 31, baseType: !186, size: 32, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2416, file: !55, line: 32, baseType: !186, size: 32, offset: 96)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2416, file: !55, line: 33, baseType: !186, size: 32, offset: 128)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2416, file: !55, line: 34, baseType: !305, size: 64, offset: 192)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2416, file: !55, line: 35, baseType: !2419, size: 64, offset: 256)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2413, file: !55, line: 46, baseType: !2426, size: 192)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2413, file: !55, line: 38, size: 192, elements: !2427)
!2427 = !{!2428, !2429, !2430, !2449}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2426, file: !55, line: 39, baseType: !386, size: 32)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2426, file: !55, line: 40, baseType: !54, size: 32, offset: 32)
!2430 = !DIDerivedType(tag: DW_TAG_member, scope: !2426, file: !55, line: 41, baseType: !2431, size: 64, offset: 64)
!2431 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2426, file: !55, line: 41, size: 64, elements: !2432)
!2432 = !{!2433, !2441}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2431, file: !55, line: 42, baseType: !2434, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2436, line: 7, size: 128, elements: !2437)
!2436 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2437 = !{!2438, !2440}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2435, file: !2436, line: 8, baseType: !2439, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !208, line: 93, baseType: !243)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2435, file: !2436, line: 9, baseType: !243, size: 64, offset: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2431, file: !55, line: 43, baseType: !2442, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2444, line: 7, size: 64, elements: !2445)
!2444 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2445 = !{!2446, !2448}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2443, file: !2444, line: 8, baseType: !2447, size: 32)
!2447 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2444, line: 5, baseType: !1689)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2443, file: !2444, line: 9, baseType: !1689, size: 32, offset: 32)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2426, file: !55, line: 45, baseType: !305, size: 64, offset: 128)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2413, file: !55, line: 54, baseType: !2451, size: 256)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2413, file: !55, line: 48, size: 256, elements: !2452)
!2452 = !{!2453, !2456, !2457, !2458, !2459}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2451, file: !55, line: 49, baseType: !2454, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !55, line: 14, flags: DIFlagFwdDecl)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2451, file: !55, line: 50, baseType: !212, size: 32, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2451, file: !55, line: 51, baseType: !212, size: 32, offset: 96)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2451, file: !55, line: 52, baseType: !210, size: 64, offset: 128)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2451, file: !55, line: 53, baseType: !210, size: 64, offset: 192)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !253, file: !254, line: 835, baseType: !2461, size: 32, offset: 5120)
!2461 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !150, line: 22, baseType: !2462)
!2462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !208, line: 28, baseType: !212)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !253, file: !254, line: 836, baseType: !2461, size: 32, offset: 5152)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !253, file: !254, line: 840, baseType: !210, size: 64, offset: 5184)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !253, file: !254, line: 849, baseType: !252, size: 64, offset: 5248)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !253, file: !254, line: 852, baseType: !252, size: 64, offset: 5312)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !253, file: !254, line: 857, baseType: !149, size: 128, offset: 5376)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !253, file: !254, line: 858, baseType: !149, size: 128, offset: 5504)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !253, file: !254, line: 859, baseType: !252, size: 64, offset: 5632)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !253, file: !254, line: 867, baseType: !149, size: 128, offset: 5696)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !253, file: !254, line: 868, baseType: !149, size: 128, offset: 5824)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !253, file: !254, line: 871, baseType: !1625, size: 64, offset: 5952)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !253, file: !254, line: 872, baseType: !2474, size: 512, offset: 6016)
!2474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !747, size: 512, elements: !1633)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !253, file: !254, line: 873, baseType: !149, size: 128, offset: 6528)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !253, file: !254, line: 874, baseType: !149, size: 128, offset: 6656)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !253, file: !254, line: 876, baseType: !2478, size: 64, offset: 6784)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !253, file: !254, line: 879, baseType: !815, size: 64, offset: 6848)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !253, file: !254, line: 882, baseType: !815, size: 64, offset: 6912)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !253, file: !254, line: 884, baseType: !305, size: 64, offset: 6976)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !253, file: !254, line: 885, baseType: !305, size: 64, offset: 7040)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !253, file: !254, line: 890, baseType: !305, size: 64, offset: 7104)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !253, file: !254, line: 891, baseType: !2485, size: 128, offset: 7168)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !254, line: 242, size: 128, elements: !2486)
!2486 = !{!2487, !2488, !2489}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2485, file: !254, line: 244, baseType: !305, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2485, file: !254, line: 245, baseType: !305, size: 64, offset: 64)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2485, file: !254, line: 246, baseType: !368, offset: 128)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !253, file: !254, line: 900, baseType: !210, size: 64, offset: 7296)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !253, file: !254, line: 901, baseType: !210, size: 64, offset: 7360)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !253, file: !254, line: 904, baseType: !305, size: 64, offset: 7424)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !253, file: !254, line: 907, baseType: !305, size: 64, offset: 7488)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !253, file: !254, line: 910, baseType: !210, size: 64, offset: 7552)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !253, file: !254, line: 911, baseType: !210, size: 64, offset: 7616)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !253, file: !254, line: 914, baseType: !2497, size: 640, offset: 7680)
!2497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2498, line: 123, size: 640, elements: !2499)
!2498 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2499 = !{!2500, !2506, !2507}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2497, file: !2498, line: 124, baseType: !2501, size: 576)
!2501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2502, size: 576, elements: !759)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2498, line: 108, size: 192, elements: !2503)
!2503 = !{!2504, !2505}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2502, file: !2498, line: 109, baseType: !305, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2502, file: !2498, line: 110, baseType: !400, size: 128, offset: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2497, file: !2498, line: 125, baseType: !7, size: 32, offset: 576)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2497, file: !2498, line: 126, baseType: !7, size: 32, offset: 608)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !253, file: !254, line: 917, baseType: !2509, size: 192, offset: 8320)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2498, line: 134, size: 192, elements: !2510)
!2510 = !{!2511, !2512}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2509, file: !2498, line: 135, baseType: !1111, size: 128, align: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2509, file: !2498, line: 136, baseType: !7, size: 32, offset: 128)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !253, file: !254, line: 923, baseType: !1651, size: 64, offset: 8512)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !253, file: !254, line: 926, baseType: !1651, size: 64, offset: 8576)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !253, file: !254, line: 929, baseType: !1651, size: 64, offset: 8640)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !253, file: !254, line: 933, baseType: !1681, size: 64, offset: 8704)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !253, file: !254, line: 943, baseType: !2518, size: 128, offset: 8768)
!2518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 128, elements: !1145)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !253, file: !254, line: 945, baseType: !2520, size: 64, offset: 8896)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !254, line: 49, flags: DIFlagFwdDecl)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !253, file: !254, line: 956, baseType: !2523, size: 64, offset: 8960)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !254, line: 45, flags: DIFlagFwdDecl)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !253, file: !254, line: 959, baseType: !2526, size: 64, offset: 9024)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !254, line: 959, flags: DIFlagFwdDecl)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !253, file: !254, line: 962, baseType: !2529, size: 64, offset: 9088)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !254, line: 66, flags: DIFlagFwdDecl)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !253, file: !254, line: 966, baseType: !2532, size: 64, offset: 9152)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !254, line: 50, flags: DIFlagFwdDecl)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !253, file: !254, line: 969, baseType: !2535, size: 64, offset: 9216)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2537, line: 82, size: 7296, elements: !2538)
!2537 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2538 = !{!2539, !2540, !2541, !2542, !2543, !2544, !2545, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2574, !2583, !2584, !2586, !2587, !2588, !2591, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2621, !2622, !2629, !2630, !2631, !2632, !2633, !2634}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2536, file: !2537, line: 83, baseType: !266, size: 32)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2536, file: !2537, line: 84, baseType: !271, size: 32, offset: 32)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2536, file: !2537, line: 85, baseType: !212, size: 32, offset: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2536, file: !2537, line: 86, baseType: !149, size: 128, offset: 128)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2536, file: !2537, line: 88, baseType: !160, size: 128, offset: 256)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2536, file: !2537, line: 91, baseType: !252, size: 64, offset: 384)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2536, file: !2537, line: 94, baseType: !2546, size: 192, offset: 448)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2547, line: 30, size: 192, elements: !2548)
!2547 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2548 = !{!2549, !2550}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2546, file: !2547, line: 31, baseType: !149, size: 128)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2546, file: !2547, line: 32, baseType: !2551, size: 64, offset: 128)
!2551 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2552, line: 25, baseType: !2553)
!2552 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2552, line: 23, size: 64, elements: !2554)
!2554 = !{!2555}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2553, file: !2552, line: 24, baseType: !435, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2536, file: !2537, line: 97, baseType: !743, size: 64, offset: 640)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2536, file: !2537, line: 100, baseType: !212, size: 32, offset: 704)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2536, file: !2537, line: 106, baseType: !212, size: 32, offset: 736)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2536, file: !2537, line: 107, baseType: !252, size: 64, offset: 768)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2536, file: !2537, line: 110, baseType: !212, size: 32, offset: 832)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2536, file: !2537, line: 111, baseType: !7, size: 32, offset: 864)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2536, file: !2537, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2536, file: !2537, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2536, file: !2537, line: 128, baseType: !212, size: 32, offset: 928)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2536, file: !2537, line: 129, baseType: !149, size: 128, offset: 960)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2536, file: !2537, line: 132, baseType: !343, size: 512, offset: 1088)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2536, file: !2537, line: 133, baseType: !351, size: 64, offset: 1600)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2536, file: !2537, line: 140, baseType: !2569, size: 256, offset: 1664)
!2569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2570, size: 256, elements: !1673)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2537, line: 38, size: 128, elements: !2571)
!2571 = !{!2572, !2573}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2570, file: !2537, line: 39, baseType: !305, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2570, file: !2537, line: 40, baseType: !305, size: 64, offset: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2536, file: !2537, line: 146, baseType: !2575, size: 192, offset: 1920)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2537, line: 66, size: 192, elements: !2576)
!2576 = !{!2577}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2575, file: !2537, line: 67, baseType: !2578, size: 192)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2537, line: 47, size: 192, elements: !2579)
!2579 = !{!2580, !2581, !2582}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2578, file: !2537, line: 48, baseType: !237, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2578, file: !2537, line: 49, baseType: !237, size: 64, offset: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2578, file: !2537, line: 50, baseType: !237, size: 64, offset: 128)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2536, file: !2537, line: 150, baseType: !2497, size: 640, offset: 2112)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2536, file: !2537, line: 153, baseType: !2585, size: 256, offset: 2752)
!2585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1625, size: 256, elements: !1633)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2536, file: !2537, line: 159, baseType: !1625, size: 64, offset: 3008)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2536, file: !2537, line: 162, baseType: !212, size: 32, offset: 3072)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2536, file: !2537, line: 164, baseType: !2589, size: 64, offset: 3136)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2537, line: 164, flags: DIFlagFwdDecl)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2536, file: !2537, line: 175, baseType: !2592, size: 32, offset: 3200)
!2592 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !390, line: 805, baseType: !2593)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !390, line: 798, size: 32, elements: !2594)
!2594 = !{!2595, !2596}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2593, file: !390, line: 803, baseType: !584, size: 32)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2593, file: !390, line: 804, baseType: !165, offset: 32)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2536, file: !2537, line: 176, baseType: !305, size: 64, offset: 3264)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2536, file: !2537, line: 176, baseType: !305, size: 64, offset: 3328)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2536, file: !2537, line: 176, baseType: !305, size: 64, offset: 3392)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2536, file: !2537, line: 176, baseType: !305, size: 64, offset: 3456)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2536, file: !2537, line: 177, baseType: !305, size: 64, offset: 3520)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2536, file: !2537, line: 178, baseType: !305, size: 64, offset: 3584)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2536, file: !2537, line: 179, baseType: !2485, size: 128, offset: 3648)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2536, file: !2537, line: 180, baseType: !210, size: 64, offset: 3776)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2536, file: !2537, line: 180, baseType: !210, size: 64, offset: 3840)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2536, file: !2537, line: 180, baseType: !210, size: 64, offset: 3904)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2536, file: !2537, line: 180, baseType: !210, size: 64, offset: 3968)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2536, file: !2537, line: 181, baseType: !210, size: 64, offset: 4032)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2536, file: !2537, line: 181, baseType: !210, size: 64, offset: 4096)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2536, file: !2537, line: 181, baseType: !210, size: 64, offset: 4160)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2536, file: !2537, line: 181, baseType: !210, size: 64, offset: 4224)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2536, file: !2537, line: 182, baseType: !210, size: 64, offset: 4288)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2536, file: !2537, line: 182, baseType: !210, size: 64, offset: 4352)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2536, file: !2537, line: 182, baseType: !210, size: 64, offset: 4416)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2536, file: !2537, line: 182, baseType: !210, size: 64, offset: 4480)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2536, file: !2537, line: 183, baseType: !210, size: 64, offset: 4544)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2536, file: !2537, line: 183, baseType: !210, size: 64, offset: 4608)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2536, file: !2537, line: 184, baseType: !2619, offset: 4672)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2620, line: 12, elements: !179)
!2620 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2536, file: !2537, line: 192, baseType: !307, size: 64, offset: 4672)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2536, file: !2537, line: 203, baseType: !2623, size: 2048, offset: 4736)
!2623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2624, size: 2048, elements: !1145)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2625, line: 43, size: 128, elements: !2626)
!2625 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2626 = !{!2627, !2628}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2624, file: !2625, line: 44, baseType: !209, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2624, file: !2625, line: 45, baseType: !209, size: 64, offset: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2536, file: !2537, line: 220, baseType: !216, size: 8, offset: 6784)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2536, file: !2537, line: 221, baseType: !1714, size: 16, offset: 6800)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2536, file: !2537, line: 222, baseType: !1714, size: 16, offset: 6816)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2536, file: !2537, line: 224, baseType: !443, size: 64, offset: 6848)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2536, file: !2537, line: 227, baseType: !231, size: 192, offset: 6912)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2536, file: !2537, line: 233, baseType: !231, size: 192, offset: 7104)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !253, file: !254, line: 970, baseType: !2636, size: 64, offset: 9280)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2537, line: 20, size: 16576, elements: !2638)
!2638 = !{!2639, !2640, !2641, !2642}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2637, file: !2537, line: 21, baseType: !165)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2637, file: !2537, line: 22, baseType: !266, size: 32)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2637, file: !2537, line: 23, baseType: !160, size: 128, offset: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2637, file: !2537, line: 24, baseType: !2643, size: 16384, offset: 192)
!2643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2644, size: 16384, elements: !2664)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2547, line: 49, size: 256, elements: !2645)
!2645 = !{!2646}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2644, file: !2547, line: 50, baseType: !2647, size: 256)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2547, line: 35, size: 256, elements: !2648)
!2648 = !{!2649, !2656, !2657, !2663}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2647, file: !2547, line: 37, baseType: !2650, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2651, line: 19, baseType: !2652)
!2651 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2651, line: 18, baseType: !2654)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{null, !212}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2647, file: !2547, line: 38, baseType: !210, size: 64, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2647, file: !2547, line: 44, baseType: !2658, size: 64, offset: 128)
!2658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2651, line: 22, baseType: !2659)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2651, line: 21, baseType: !2661)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{null}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2647, file: !2547, line: 46, baseType: !2551, size: 64, offset: 192)
!2664 = !{!2665}
!2665 = !DISubrange(count: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !253, file: !254, line: 971, baseType: !2551, size: 64, offset: 9344)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !253, file: !254, line: 972, baseType: !2551, size: 64, offset: 9408)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !253, file: !254, line: 974, baseType: !2551, size: 64, offset: 9472)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !253, file: !254, line: 975, baseType: !2546, size: 192, offset: 9536)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !253, file: !254, line: 976, baseType: !210, size: 64, offset: 9728)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !253, file: !254, line: 977, baseType: !206, size: 64, offset: 9792)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !253, file: !254, line: 978, baseType: !7, size: 32, offset: 9856)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !253, file: !254, line: 980, baseType: !1114, size: 64, offset: 9920)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !253, file: !254, line: 989, baseType: !2675, size: 128, offset: 9984)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2676, line: 35, size: 128, elements: !2677)
!2676 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2677 = !{!2678, !2679, !2680}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2675, file: !2676, line: 36, baseType: !212, size: 32)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2675, file: !2676, line: 37, baseType: !271, size: 32, offset: 32)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2675, file: !2676, line: 38, baseType: !2681, size: 64, offset: 64)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2676, line: 23, flags: DIFlagFwdDecl)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !253, file: !254, line: 992, baseType: !305, size: 64, offset: 10112)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !253, file: !254, line: 993, baseType: !305, size: 64, offset: 10176)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !253, file: !254, line: 996, baseType: !165, offset: 10240)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !253, file: !254, line: 999, baseType: !368, offset: 10240)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !253, file: !254, line: 1001, baseType: !2688, size: 64, offset: 10240)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !254, line: 636, size: 64, elements: !2689)
!2689 = !{!2690}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2688, file: !254, line: 637, baseType: !2691, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !253, file: !254, line: 1005, baseType: !403, size: 128, offset: 10304)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !253, file: !254, line: 1007, baseType: !252, size: 64, offset: 10432)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !253, file: !254, line: 1009, baseType: !2695, size: 64, offset: 10496)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !254, line: 1009, flags: DIFlagFwdDecl)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !253, file: !254, line: 1043, baseType: !144, size: 64, offset: 10560)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !253, file: !254, line: 1046, baseType: !2699, size: 64, offset: 10624)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !254, line: 41, flags: DIFlagFwdDecl)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !253, file: !254, line: 1050, baseType: !2702, size: 64, offset: 10688)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !254, line: 42, flags: DIFlagFwdDecl)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !253, file: !254, line: 1054, baseType: !2705, size: 64, offset: 10752)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !254, line: 55, flags: DIFlagFwdDecl)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !253, file: !254, line: 1056, baseType: !1045, size: 64, offset: 10816)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !253, file: !254, line: 1058, baseType: !2709, size: 64, offset: 10880)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2711, line: 99, size: 704, elements: !2712)
!2711 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2712 = !{!2713, !2714, !2715, !2716, !2717, !2718, !2719, !2738, !2739}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2710, file: !2711, line: 100, baseType: !235, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2710, file: !2711, line: 101, baseType: !271, size: 32, offset: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2710, file: !2711, line: 102, baseType: !271, size: 32, offset: 96)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2710, file: !2711, line: 105, baseType: !165, offset: 128)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2710, file: !2711, line: 107, baseType: !322, size: 16, offset: 128)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2710, file: !2711, line: 109, baseType: !1970, size: 128, offset: 192)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2710, file: !2711, line: 110, baseType: !2720, size: 64, offset: 320)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2711, line: 73, size: 448, elements: !2722)
!2722 = !{!2723, !2726, !2727, !2732, !2737}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2721, file: !2711, line: 74, baseType: !2724, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2711, line: 74, flags: DIFlagFwdDecl)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2721, file: !2711, line: 75, baseType: !2709, size: 64, offset: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, scope: !2721, file: !2711, line: 83, baseType: !2728, size: 128, offset: 128)
!2728 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2721, file: !2711, line: 83, size: 128, elements: !2729)
!2729 = !{!2730, !2731}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2728, file: !2711, line: 84, baseType: !149, size: 128)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2728, file: !2711, line: 85, baseType: !2103, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, scope: !2721, file: !2711, line: 87, baseType: !2733, size: 128, offset: 256)
!2733 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2721, file: !2711, line: 87, size: 128, elements: !2734)
!2734 = !{!2735, !2736}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2733, file: !2711, line: 88, baseType: !747, size: 128)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2733, file: !2711, line: 89, baseType: !1111, size: 128, align: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2721, file: !2711, line: 92, baseType: !7, size: 32, offset: 384)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2710, file: !2711, line: 111, baseType: !743, size: 64, offset: 384)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2710, file: !2711, line: 113, baseType: !1200, size: 256, offset: 448)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !253, file: !254, line: 1061, baseType: !2741, size: 64, offset: 10944)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !254, line: 43, flags: DIFlagFwdDecl)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !253, file: !254, line: 1064, baseType: !210, size: 64, offset: 11008)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !253, file: !254, line: 1065, baseType: !2745, size: 64, offset: 11072)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2547, line: 14, baseType: !2747)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2547, line: 12, size: 384, elements: !2748)
!2748 = !{!2749}
!2749 = !DIDerivedType(tag: DW_TAG_member, scope: !2747, file: !2547, line: 13, baseType: !2750, size: 384)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2747, file: !2547, line: 13, size: 384, elements: !2751)
!2751 = !{!2752, !2753, !2754, !2755}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2750, file: !2547, line: 13, baseType: !212, size: 32)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2750, file: !2547, line: 13, baseType: !212, size: 32, offset: 32)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2750, file: !2547, line: 13, baseType: !212, size: 32, offset: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2750, file: !2547, line: 13, baseType: !2756, size: 256, offset: 128)
!2756 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2757, line: 32, size: 256, elements: !2758)
!2757 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2758 = !{!2759, !2764, !2777, !2783, !2792, !2812, !2817}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2756, file: !2757, line: 37, baseType: !2760, size: 64)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2756, file: !2757, line: 34, size: 64, elements: !2761)
!2761 = !{!2762, !2763}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2760, file: !2757, line: 35, baseType: !2462, size: 32)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2760, file: !2757, line: 36, baseType: !560, size: 32, offset: 32)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2756, file: !2757, line: 45, baseType: !2765, size: 192)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2756, file: !2757, line: 40, size: 192, elements: !2766)
!2766 = !{!2767, !2769, !2770, !2776}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2765, file: !2757, line: 41, baseType: !2768, size: 32)
!2768 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !208, line: 95, baseType: !212)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2765, file: !2757, line: 42, baseType: !212, size: 32, offset: 32)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2765, file: !2757, line: 43, baseType: !2771, size: 64, offset: 64)
!2771 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2757, line: 11, baseType: !2772)
!2772 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2757, line: 8, size: 64, elements: !2773)
!2773 = !{!2774, !2775}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2772, file: !2757, line: 9, baseType: !212, size: 32)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2772, file: !2757, line: 10, baseType: !144, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2765, file: !2757, line: 44, baseType: !212, size: 32, offset: 128)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2756, file: !2757, line: 52, baseType: !2778, size: 128)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2756, file: !2757, line: 48, size: 128, elements: !2779)
!2779 = !{!2780, !2781, !2782}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2778, file: !2757, line: 49, baseType: !2462, size: 32)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2778, file: !2757, line: 50, baseType: !560, size: 32, offset: 32)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2778, file: !2757, line: 51, baseType: !2771, size: 64, offset: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2756, file: !2757, line: 61, baseType: !2784, size: 256)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2756, file: !2757, line: 55, size: 256, elements: !2785)
!2785 = !{!2786, !2787, !2788, !2789, !2791}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2784, file: !2757, line: 56, baseType: !2462, size: 32)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2784, file: !2757, line: 57, baseType: !560, size: 32, offset: 32)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2784, file: !2757, line: 58, baseType: !212, size: 32, offset: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2784, file: !2757, line: 59, baseType: !2790, size: 64, offset: 128)
!2790 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !208, line: 94, baseType: !1339)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2784, file: !2757, line: 60, baseType: !2790, size: 64, offset: 192)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2756, file: !2757, line: 95, baseType: !2793, size: 256)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2756, file: !2757, line: 64, size: 256, elements: !2794)
!2794 = !{!2795, !2796}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2793, file: !2757, line: 65, baseType: !144, size: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, scope: !2793, file: !2757, line: 77, baseType: !2797, size: 192, offset: 64)
!2797 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2793, file: !2757, line: 77, size: 192, elements: !2798)
!2798 = !{!2799, !2800, !2807}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2797, file: !2757, line: 82, baseType: !1714, size: 16)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2797, file: !2757, line: 88, baseType: !2801, size: 192)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2797, file: !2757, line: 84, size: 192, elements: !2802)
!2802 = !{!2803, !2805, !2806}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2801, file: !2757, line: 85, baseType: !2804, size: 64)
!2804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 64, elements: !382)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2801, file: !2757, line: 86, baseType: !144, size: 64, offset: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2801, file: !2757, line: 87, baseType: !144, size: 64, offset: 128)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2797, file: !2757, line: 93, baseType: !2808, size: 96)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2797, file: !2757, line: 90, size: 96, elements: !2809)
!2809 = !{!2810, !2811}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2808, file: !2757, line: 91, baseType: !2804, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2808, file: !2757, line: 92, baseType: !188, size: 32, offset: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2756, file: !2757, line: 101, baseType: !2813, size: 128)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2756, file: !2757, line: 98, size: 128, elements: !2814)
!2814 = !{!2815, !2816}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2813, file: !2757, line: 99, baseType: !68, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2813, file: !2757, line: 100, baseType: !212, size: 32, offset: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2756, file: !2757, line: 108, baseType: !2818, size: 128)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2756, file: !2757, line: 104, size: 128, elements: !2819)
!2819 = !{!2820, !2821, !2822}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2818, file: !2757, line: 105, baseType: !144, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2818, file: !2757, line: 106, baseType: !212, size: 32, offset: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2818, file: !2757, line: 107, baseType: !7, size: 32, offset: 96)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !253, file: !254, line: 1067, baseType: !2619, offset: 11136)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !253, file: !254, line: 1099, baseType: !2825, size: 64, offset: 11136)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !254, line: 56, flags: DIFlagFwdDecl)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !253, file: !254, line: 1103, baseType: !149, size: 128, offset: 11200)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !253, file: !254, line: 1104, baseType: !2829, size: 64, offset: 11328)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !254, line: 46, flags: DIFlagFwdDecl)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !253, file: !254, line: 1105, baseType: !231, size: 192, offset: 11392)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !253, file: !254, line: 1106, baseType: !7, size: 32, offset: 11584)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !253, file: !254, line: 1109, baseType: !2834, size: 128, offset: 11648)
!2834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2835, size: 128, elements: !1673)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !254, line: 51, flags: DIFlagFwdDecl)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !253, file: !254, line: 1110, baseType: !231, size: 192, offset: 11776)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !253, file: !254, line: 1111, baseType: !149, size: 128, offset: 11968)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !253, file: !254, line: 1173, baseType: !2840, size: 64, offset: 12096)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2842, line: 62, size: 256, align: 256, elements: !2843)
!2842 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2843 = !{!2844, !2845, !2846, !2851}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2841, file: !2842, line: 75, baseType: !188, size: 32)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2841, file: !2842, line: 90, baseType: !188, size: 32, offset: 32)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2841, file: !2842, line: 124, baseType: !2847, size: 64, offset: 64)
!2847 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2841, file: !2842, line: 109, size: 64, elements: !2848)
!2848 = !{!2849, !2850}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2847, file: !2842, line: 110, baseType: !306, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2847, file: !2842, line: 112, baseType: !306, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2841, file: !2842, line: 144, baseType: !188, size: 32, offset: 128)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !253, file: !254, line: 1174, baseType: !186, size: 32, offset: 12160)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !253, file: !254, line: 1179, baseType: !210, size: 64, offset: 12224)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !253, file: !254, line: 1182, baseType: !2855, size: 128, offset: 12288)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2319, line: 76, size: 128, elements: !2856)
!2856 = !{!2857, !2862, !2863}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2855, file: !2319, line: 85, baseType: !2858, size: 64)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2859, line: 7, size: 64, elements: !2860)
!2859 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2860 = !{!2861}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2858, file: !2859, line: 12, baseType: !432, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2855, file: !2319, line: 88, baseType: !216, size: 8, offset: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2855, file: !2319, line: 95, baseType: !216, size: 8, offset: 72)
!2864 = !DIDerivedType(tag: DW_TAG_member, scope: !253, file: !254, line: 1184, baseType: !2865, size: 128, offset: 12416)
!2865 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !253, file: !254, line: 1184, size: 128, elements: !2866)
!2866 = !{!2867, !2868}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2865, file: !254, line: 1185, baseType: !266, size: 32)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2865, file: !254, line: 1186, baseType: !1111, size: 128, align: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !253, file: !254, line: 1190, baseType: !1395, size: 64, offset: 12544)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !253, file: !254, line: 1192, baseType: !2871, size: 128, offset: 12608)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2319, line: 64, size: 128, elements: !2872)
!2872 = !{!2873, !2874, !2875}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2871, file: !2319, line: 65, baseType: !531, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2871, file: !2319, line: 67, baseType: !188, size: 32, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2871, file: !2319, line: 68, baseType: !188, size: 32, offset: 96)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !253, file: !254, line: 1206, baseType: !212, size: 32, offset: 12736)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !253, file: !254, line: 1207, baseType: !212, size: 32, offset: 12768)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !253, file: !254, line: 1209, baseType: !210, size: 64, offset: 12800)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !253, file: !254, line: 1219, baseType: !305, size: 64, offset: 12864)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !253, file: !254, line: 1220, baseType: !305, size: 64, offset: 12928)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !253, file: !254, line: 1317, baseType: !212, size: 32, offset: 12992)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !253, file: !254, line: 1319, baseType: !252, size: 64, offset: 13056)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !253, file: !254, line: 1322, baseType: !2884, size: 64, offset: 13120)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2886, line: 56, size: 512, elements: !2887)
!2886 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2887 = !{!2888, !2889, !2890, !2891, !2892, !2893, !2894, !2896}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2885, file: !2886, line: 57, baseType: !2884, size: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2885, file: !2886, line: 58, baseType: !144, size: 64, offset: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2885, file: !2886, line: 59, baseType: !210, size: 64, offset: 128)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2885, file: !2886, line: 60, baseType: !210, size: 64, offset: 192)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2885, file: !2886, line: 61, baseType: !2018, size: 64, offset: 256)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2885, file: !2886, line: 62, baseType: !7, size: 32, offset: 320)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2885, file: !2886, line: 63, baseType: !2895, size: 64, offset: 384)
!2895 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !150, line: 153, baseType: !305)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2885, file: !2886, line: 64, baseType: !2897, size: 64, offset: 448)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !253, file: !254, line: 1326, baseType: !266, size: 32, offset: 13184)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !253, file: !254, line: 1342, baseType: !144, size: 64, offset: 13248)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !253, file: !254, line: 1343, baseType: !306, size: 64, offset: 13312)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !253, file: !254, line: 1344, baseType: !305, size: 64, offset: 13376)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !253, file: !254, line: 1345, baseType: !306, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !253, file: !254, line: 1346, baseType: !306, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !253, file: !254, line: 1347, baseType: !306, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !253, file: !254, line: 1348, baseType: !1111, size: 128, align: 64, offset: 13504)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !253, file: !254, line: 1358, baseType: !2908, size: 34816, offset: 13824)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2909, line: 485, size: 34816, elements: !2910)
!2909 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2910 = !{!2911, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2940, !2941, !2942, !2943, !2944, !2945, !2948, !2949, !2950}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2908, file: !2909, line: 487, baseType: !2912, size: 192)
!2912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2913, size: 192, elements: !759)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2914, line: 16, size: 64, elements: !2915)
!2914 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2915 = !{!2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2913, file: !2914, line: 17, baseType: !1361, size: 16)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2913, file: !2914, line: 18, baseType: !1361, size: 16, offset: 16)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2913, file: !2914, line: 19, baseType: !1361, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2913, file: !2914, line: 19, baseType: !1361, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2913, file: !2914, line: 19, baseType: !1361, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2913, file: !2914, line: 19, baseType: !1361, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2913, file: !2914, line: 19, baseType: !1361, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2913, file: !2914, line: 20, baseType: !1361, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2913, file: !2914, line: 20, baseType: !1361, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2913, file: !2914, line: 20, baseType: !1361, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2913, file: !2914, line: 20, baseType: !1361, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2913, file: !2914, line: 20, baseType: !1361, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2913, file: !2914, line: 20, baseType: !1361, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2908, file: !2909, line: 491, baseType: !210, size: 64, offset: 192)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2908, file: !2909, line: 495, baseType: !322, size: 16, offset: 256)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2908, file: !2909, line: 496, baseType: !322, size: 16, offset: 272)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2908, file: !2909, line: 497, baseType: !322, size: 16, offset: 288)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2908, file: !2909, line: 498, baseType: !322, size: 16, offset: 304)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2908, file: !2909, line: 502, baseType: !210, size: 64, offset: 320)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2908, file: !2909, line: 503, baseType: !210, size: 64, offset: 384)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2908, file: !2909, line: 514, baseType: !2937, size: 256, offset: 448)
!2937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2938, size: 256, elements: !1633)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2909, line: 483, flags: DIFlagFwdDecl)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2908, file: !2909, line: 516, baseType: !210, size: 64, offset: 704)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2908, file: !2909, line: 518, baseType: !210, size: 64, offset: 768)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2908, file: !2909, line: 520, baseType: !210, size: 64, offset: 832)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2908, file: !2909, line: 521, baseType: !210, size: 64, offset: 896)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2908, file: !2909, line: 522, baseType: !210, size: 64, offset: 960)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2908, file: !2909, line: 528, baseType: !2946, size: 64, offset: 1024)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2909, line: 10, flags: DIFlagFwdDecl)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2908, file: !2909, line: 535, baseType: !210, size: 64, offset: 1088)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2908, file: !2909, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2908, file: !2909, line: 540, baseType: !2951, size: 33280, offset: 1536)
!2951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2952, line: 317, size: 33280, elements: !2953)
!2952 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2953 = !{!2954, !2955, !2956}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2951, file: !2952, line: 330, baseType: !7, size: 32)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2951, file: !2952, line: 337, baseType: !210, size: 64, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2951, file: !2952, line: 348, baseType: !2957, size: 32768, offset: 512)
!2957 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2952, line: 304, size: 32768, elements: !2958)
!2958 = !{!2959, !2974, !3011, !3061, !3074}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2957, file: !2952, line: 305, baseType: !2960, size: 896)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2952, line: 12, size: 896, elements: !2961)
!2961 = !{!2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2973}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2960, file: !2952, line: 13, baseType: !186, size: 32)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2960, file: !2952, line: 14, baseType: !186, size: 32, offset: 32)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2960, file: !2952, line: 15, baseType: !186, size: 32, offset: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2960, file: !2952, line: 16, baseType: !186, size: 32, offset: 96)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2960, file: !2952, line: 17, baseType: !186, size: 32, offset: 128)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2960, file: !2952, line: 18, baseType: !186, size: 32, offset: 160)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2960, file: !2952, line: 19, baseType: !186, size: 32, offset: 192)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2960, file: !2952, line: 22, baseType: !2970, size: 640, offset: 224)
!2970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 640, elements: !2971)
!2971 = !{!2972}
!2972 = !DISubrange(count: 20)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2960, file: !2952, line: 25, baseType: !186, size: 32, offset: 864)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2957, file: !2952, line: 306, baseType: !2975, size: 4096, align: 128)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2952, line: 34, size: 4096, align: 128, elements: !2976)
!2976 = !{!2977, !2978, !2979, !2980, !2981, !2996, !2997, !2998, !3000, !3002, !3006}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2975, file: !2952, line: 35, baseType: !1361, size: 16)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2975, file: !2952, line: 36, baseType: !1361, size: 16, offset: 16)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2975, file: !2952, line: 37, baseType: !1361, size: 16, offset: 32)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2975, file: !2952, line: 38, baseType: !1361, size: 16, offset: 48)
!2981 = !DIDerivedType(tag: DW_TAG_member, scope: !2975, file: !2952, line: 39, baseType: !2982, size: 128, offset: 64)
!2982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2975, file: !2952, line: 39, size: 128, elements: !2983)
!2983 = !{!2984, !2989}
!2984 = !DIDerivedType(tag: DW_TAG_member, scope: !2982, file: !2952, line: 40, baseType: !2985, size: 128)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2982, file: !2952, line: 40, size: 128, elements: !2986)
!2986 = !{!2987, !2988}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2985, file: !2952, line: 41, baseType: !305, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2985, file: !2952, line: 42, baseType: !305, size: 64, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, scope: !2982, file: !2952, line: 44, baseType: !2990, size: 128)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2982, file: !2952, line: 44, size: 128, elements: !2991)
!2991 = !{!2992, !2993, !2994, !2995}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2990, file: !2952, line: 45, baseType: !186, size: 32)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2990, file: !2952, line: 46, baseType: !186, size: 32, offset: 32)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2990, file: !2952, line: 47, baseType: !186, size: 32, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2990, file: !2952, line: 48, baseType: !186, size: 32, offset: 96)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2975, file: !2952, line: 51, baseType: !186, size: 32, offset: 192)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2975, file: !2952, line: 52, baseType: !186, size: 32, offset: 224)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2975, file: !2952, line: 55, baseType: !2999, size: 1024, offset: 256)
!2999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 1024, elements: !615)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2975, file: !2952, line: 58, baseType: !3001, size: 2048, offset: 1280)
!3001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 2048, elements: !2664)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2975, file: !2952, line: 60, baseType: !3003, size: 384, offset: 3328)
!3003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 384, elements: !3004)
!3004 = !{!3005}
!3005 = !DISubrange(count: 12)
!3006 = !DIDerivedType(tag: DW_TAG_member, scope: !2975, file: !2952, line: 62, baseType: !3007, size: 384, offset: 3712)
!3007 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2975, file: !2952, line: 62, size: 384, elements: !3008)
!3008 = !{!3009, !3010}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3007, file: !2952, line: 63, baseType: !3003, size: 384)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3007, file: !2952, line: 64, baseType: !3003, size: 384)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2957, file: !2952, line: 307, baseType: !3012, size: 1088)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2952, line: 79, size: 1088, elements: !3013)
!3013 = !{!3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3060}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3012, file: !2952, line: 80, baseType: !186, size: 32)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3012, file: !2952, line: 81, baseType: !186, size: 32, offset: 32)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3012, file: !2952, line: 82, baseType: !186, size: 32, offset: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3012, file: !2952, line: 83, baseType: !186, size: 32, offset: 96)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3012, file: !2952, line: 84, baseType: !186, size: 32, offset: 128)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3012, file: !2952, line: 85, baseType: !186, size: 32, offset: 160)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3012, file: !2952, line: 86, baseType: !186, size: 32, offset: 192)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3012, file: !2952, line: 88, baseType: !2970, size: 640, offset: 224)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3012, file: !2952, line: 89, baseType: !416, size: 8, offset: 864)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3012, file: !2952, line: 90, baseType: !416, size: 8, offset: 872)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3012, file: !2952, line: 91, baseType: !416, size: 8, offset: 880)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3012, file: !2952, line: 92, baseType: !416, size: 8, offset: 888)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3012, file: !2952, line: 93, baseType: !416, size: 8, offset: 896)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3012, file: !2952, line: 94, baseType: !416, size: 8, offset: 904)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3012, file: !2952, line: 95, baseType: !3029, size: 64, offset: 960)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3031, line: 11, size: 128, elements: !3032)
!3031 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3032 = !{!3033, !3034}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3030, file: !3031, line: 12, baseType: !68, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3030, file: !3031, line: 13, baseType: !3035, size: 64, offset: 64)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3037, line: 56, size: 1344, elements: !3038)
!3037 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3038 = !{!3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3036, file: !3037, line: 61, baseType: !210, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3036, file: !3037, line: 62, baseType: !210, size: 64, offset: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3036, file: !3037, line: 63, baseType: !210, size: 64, offset: 128)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3036, file: !3037, line: 64, baseType: !210, size: 64, offset: 192)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3036, file: !3037, line: 65, baseType: !210, size: 64, offset: 256)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3036, file: !3037, line: 66, baseType: !210, size: 64, offset: 320)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3036, file: !3037, line: 68, baseType: !210, size: 64, offset: 384)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3036, file: !3037, line: 69, baseType: !210, size: 64, offset: 448)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3036, file: !3037, line: 70, baseType: !210, size: 64, offset: 512)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3036, file: !3037, line: 71, baseType: !210, size: 64, offset: 576)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3036, file: !3037, line: 72, baseType: !210, size: 64, offset: 640)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3036, file: !3037, line: 73, baseType: !210, size: 64, offset: 704)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3036, file: !3037, line: 74, baseType: !210, size: 64, offset: 768)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3036, file: !3037, line: 75, baseType: !210, size: 64, offset: 832)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3036, file: !3037, line: 76, baseType: !210, size: 64, offset: 896)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3036, file: !3037, line: 81, baseType: !210, size: 64, offset: 960)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3036, file: !3037, line: 83, baseType: !210, size: 64, offset: 1024)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3036, file: !3037, line: 84, baseType: !210, size: 64, offset: 1088)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3036, file: !3037, line: 85, baseType: !210, size: 64, offset: 1152)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3036, file: !3037, line: 86, baseType: !210, size: 64, offset: 1216)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3036, file: !3037, line: 87, baseType: !210, size: 64, offset: 1280)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3012, file: !2952, line: 96, baseType: !186, size: 32, offset: 1024)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2957, file: !2952, line: 308, baseType: !3062, size: 4608, align: 512)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2952, line: 289, size: 4608, align: 512, elements: !3063)
!3063 = !{!3064, !3065, !3072}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3062, file: !2952, line: 290, baseType: !2975, size: 4096, align: 128)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3062, file: !2952, line: 291, baseType: !3066, size: 512, offset: 4096)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2952, line: 268, size: 512, elements: !3067)
!3067 = !{!3068, !3069, !3070}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3066, file: !2952, line: 269, baseType: !305, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3066, file: !2952, line: 270, baseType: !305, size: 64, offset: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3066, file: !2952, line: 271, baseType: !3071, size: 384, offset: 128)
!3071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 384, elements: !1732)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3062, file: !2952, line: 292, baseType: !3073, offset: 4608)
!3073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, elements: !1828)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2957, file: !2952, line: 309, baseType: !3075, size: 32768)
!3075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 32768, elements: !3076)
!3076 = !{!3077}
!3077 = !DISubrange(count: 4096)
!3078 = !DIGlobalVariableExpression(var: !3079, expr: !DIExpression())
!3079 = distinct !DIGlobalVariable(name: "probe_work", scope: !2, file: !3, line: 60, type: !1200, isLocal: true, isDefinition: true)
!3080 = !DIGlobalVariableExpression(var: !3081, expr: !DIExpression())
!3081 = distinct !DIGlobalVariable(name: "_rs", scope: !3082, file: !3, line: 430, type: !1809, isLocal: true, isDefinition: true)
!3082 = distinct !DISubprogram(name: "xenbus_thread", scope: !3, file: !3, line: 418, type: !3083, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!212, !144}
!3085 = !DIGlobalVariableExpression(var: !3086, expr: !DIExpression())
!3086 = distinct !DIGlobalVariable(name: "_rs", scope: !3082, file: !3, line: 435, type: !1809, isLocal: true, isDefinition: true)
!3087 = !DIGlobalVariableExpression(var: !3088, expr: !DIExpression())
!3088 = distinct !DIGlobalVariable(name: "state", scope: !3089, file: !3, line: 225, type: !3092, isLocal: true, isDefinition: true)
!3089 = distinct !DISubprogram(name: "process_msg", scope: !3, file: !3, line: 213, type: !3090, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!212}
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3089, file: !3, line: 215, size: 320, elements: !3093)
!3093 = !{!3094, !3095, !3096, !3121, !3122, !3123}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !3092, file: !3, line: 216, baseType: !182, size: 128)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !3092, file: !3, line: 217, baseType: !196, size: 64, offset: 128)
!3096 = !DIDerivedType(tag: DW_TAG_member, scope: !3092, file: !3, line: 218, baseType: !3097, size: 64, offset: 192)
!3097 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3092, file: !3, line: 218, size: 64, elements: !3098)
!3098 = !{!3099, !3100}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3097, file: !3, line: 219, baseType: !144, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "watch", scope: !3097, file: !3, line: 220, baseType: !3101, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xs_watch_event", file: !125, line: 59, size: 384, elements: !3103)
!3103 = !{!3104, !3105, !3106, !3117, !3118, !3119}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3102, file: !125, line: 60, baseType: !149, size: 128)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3102, file: !125, line: 61, baseType: !7, size: 32, offset: 128)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !3102, file: !125, line: 62, baseType: !3107, size: 64, offset: 192)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_watch", file: !3109, line: 57, size: 256, elements: !3110)
!3109 = !DIFile(filename: "./include/xen/xenbus.h", directory: "/home/lizy2001/genbc/linux")
!3110 = !{!3111, !3112, !3113}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3108, file: !3109, line: 59, baseType: !149, size: 128)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3108, file: !3109, line: 62, baseType: !650, size: 64, offset: 128)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !3108, file: !3109, line: 65, baseType: !3114, size: 64, offset: 192)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{null, !3107, !650, !650}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !3102, file: !125, line: 63, baseType: !650, size: 64, offset: 256)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !3102, file: !125, line: 64, baseType: !650, size: 64, offset: 320)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !3102, file: !125, line: 65, baseType: !3120, offset: 384)
!3120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, elements: !2380)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "in_msg", scope: !3092, file: !3, line: 222, baseType: !216, size: 8, offset: 256)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "in_hdr", scope: !3092, file: !3, line: 223, baseType: !216, size: 8, offset: 264)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3092, file: !3, line: 224, baseType: !7, size: 32, offset: 288)
!3124 = !DIGlobalVariableExpression(var: !3125, expr: !DIExpression())
!3125 = distinct !DIGlobalVariable(name: "state", scope: !3126, file: !3, line: 344, type: !3127, isLocal: true, isDefinition: true)
!3126 = distinct !DISubprogram(name: "process_writes", scope: !3, file: !3, line: 338, type: !3090, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3126, file: !3, line: 340, size: 128, elements: !3128)
!3128 = !{!3129, !3130, !3131}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "req", scope: !3127, file: !3, line: 341, baseType: !155, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3127, file: !3, line: 342, baseType: !212, size: 32, offset: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "written", scope: !3127, file: !3, line: 343, baseType: !7, size: 32, offset: 96)
!3132 = !{!"rsp"}
!3133 = !{i32 7, !"Dwarf Version", i32 4}
!3134 = !{i32 2, !"Debug Info Version", i32 3}
!3135 = !{i32 1, !"wchar_size", i32 2}
!3136 = !{i32 1, !"Code Model", i32 2}
!3137 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3138 = distinct !DISubprogram(name: "xb_init_comms", scope: !3, file: !3, line: 446, type: !3090, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3139 = !DILocalVariable(name: "intf", scope: !3138, file: !3, line: 448, type: !3140)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenstore_domain_interface", file: !100, line: 85, size: 16512, elements: !3142)
!3142 = !{!3143, !3147, !3148, !3150, !3151, !3152}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "req", scope: !3141, file: !100, line: 86, baseType: !3144, size: 8192)
!3144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 8192, elements: !3145)
!3145 = !{!3146}
!3146 = !DISubrange(count: 1024)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "rsp", scope: !3141, file: !100, line: 87, baseType: !3144, size: 8192, offset: 8192)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "req_cons", scope: !3141, file: !100, line: 88, baseType: !3149, size: 32, offset: 16384)
!3149 = !DIDerivedType(tag: DW_TAG_typedef, name: "XENSTORE_RING_IDX", file: !100, line: 83, baseType: !185)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "req_prod", scope: !3141, file: !100, line: 88, baseType: !3149, size: 32, offset: 16416)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "rsp_cons", scope: !3141, file: !100, line: 89, baseType: !3149, size: 32, offset: 16448)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "rsp_prod", scope: !3141, file: !100, line: 89, baseType: !3149, size: 32, offset: 16480)
!3153 = !DILocation(line: 448, column: 36, scope: !3138)
!3154 = !DILocation(line: 448, column: 43, scope: !3138)
!3155 = !DILocation(line: 450, column: 6, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3138, file: !3, line: 450, column: 6)
!3157 = !DILocation(line: 450, column: 12, scope: !3156)
!3158 = !DILocation(line: 450, column: 24, scope: !3156)
!3159 = !DILocation(line: 450, column: 30, scope: !3156)
!3160 = !DILocation(line: 450, column: 21, scope: !3156)
!3161 = !DILocation(line: 450, column: 6, scope: !3138)
!3162 = !DILocation(line: 451, column: 3, scope: !3156)
!3163 = !DILocation(line: 454, column: 6, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3138, file: !3, line: 454, column: 6)
!3165 = !DILocation(line: 454, column: 12, scope: !3164)
!3166 = !DILocation(line: 454, column: 24, scope: !3164)
!3167 = !DILocation(line: 454, column: 30, scope: !3164)
!3168 = !DILocation(line: 454, column: 21, scope: !3164)
!3169 = !DILocation(line: 454, column: 6, scope: !3138)
!3170 = !DILocation(line: 455, column: 3, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3164, file: !3, line: 454, column: 40)
!3172 = !DILocation(line: 458, column: 8, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3171, file: !3, line: 458, column: 7)
!3174 = !DILocation(line: 458, column: 7, scope: !3171)
!3175 = !DILocation(line: 459, column: 21, scope: !3173)
!3176 = !DILocation(line: 459, column: 27, scope: !3173)
!3177 = !DILocation(line: 459, column: 4, scope: !3173)
!3178 = !DILocation(line: 459, column: 10, scope: !3173)
!3179 = !DILocation(line: 459, column: 19, scope: !3173)
!3180 = !DILocation(line: 460, column: 2, scope: !3171)
!3181 = !DILocation(line: 462, column: 6, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3138, file: !3, line: 462, column: 6)
!3183 = !DILocation(line: 462, column: 6, scope: !3138)
!3184 = !DILocation(line: 464, column: 21, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 462, column: 18)
!3186 = !DILocation(line: 464, column: 39, scope: !3185)
!3187 = !DILocation(line: 464, column: 3, scope: !3185)
!3188 = !DILocation(line: 465, column: 2, scope: !3185)
!3189 = !DILocalVariable(name: "err", scope: !3190, file: !3, line: 466, type: !212)
!3190 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 465, column: 9)
!3191 = !DILocation(line: 466, column: 7, scope: !3190)
!3192 = !DILocation(line: 468, column: 35, scope: !3190)
!3193 = !DILocation(line: 468, column: 9, scope: !3190)
!3194 = !DILocation(line: 468, column: 7, scope: !3190)
!3195 = !DILocation(line: 470, column: 7, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3190, file: !3, line: 470, column: 7)
!3197 = !DILocation(line: 470, column: 11, scope: !3196)
!3198 = !DILocation(line: 470, column: 7, scope: !3190)
!3199 = !DILocation(line: 471, column: 4, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3196, file: !3, line: 470, column: 16)
!3201 = !DILocation(line: 472, column: 11, scope: !3200)
!3202 = !DILocation(line: 472, column: 4, scope: !3200)
!3203 = !DILocation(line: 475, column: 16, scope: !3190)
!3204 = !DILocation(line: 475, column: 14, scope: !3190)
!3205 = !DILocation(line: 477, column: 8, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3190, file: !3, line: 477, column: 7)
!3207 = !DILocation(line: 477, column: 7, scope: !3190)
!3208 = !DILocalVariable(name: "__k", scope: !3209, file: !3, line: 478, type: !252)
!3209 = distinct !DILexicalBlock(scope: !3210, file: !3, line: 478, column: 18)
!3210 = distinct !DILexicalBlock(scope: !3206, file: !3, line: 477, column: 21)
!3211 = !DILocation(line: 478, column: 18, scope: !3209)
!3212 = !DILocation(line: 478, column: 18, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3209, file: !3, line: 478, column: 18)
!3214 = !DILocation(line: 478, column: 16, scope: !3210)
!3215 = !DILocation(line: 480, column: 15, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3210, file: !3, line: 480, column: 8)
!3217 = !DILocation(line: 480, column: 8, scope: !3216)
!3218 = !DILocation(line: 480, column: 8, scope: !3210)
!3219 = !DILocation(line: 481, column: 20, scope: !3216)
!3220 = !DILocation(line: 481, column: 12, scope: !3216)
!3221 = !DILocation(line: 481, column: 5, scope: !3216)
!3222 = !DILocation(line: 482, column: 3, scope: !3210)
!3223 = !DILocation(line: 485, column: 2, scope: !3138)
!3224 = !DILocation(line: 486, column: 1, scope: !3138)
!3225 = distinct !DISubprogram(name: "wake_waiting", scope: !3, file: !3, line: 63, type: !3226, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!3228, !212, !144}
!3228 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !61, line: 17, baseType: !60)
!3229 = !DILocalVariable(name: "irq", arg: 1, scope: !3225, file: !3, line: 63, type: !212)
!3230 = !DILocation(line: 63, column: 37, scope: !3225)
!3231 = !DILocalVariable(name: "unused", arg: 2, scope: !3225, file: !3, line: 63, type: !144)
!3232 = !DILocation(line: 63, column: 48, scope: !3225)
!3233 = !DILocation(line: 65, column: 6, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3225, file: !3, line: 65, column: 6)
!3235 = !DILocation(line: 65, column: 6, scope: !3225)
!3236 = !DILocation(line: 66, column: 19, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3234, file: !3, line: 65, column: 38)
!3238 = !DILocation(line: 67, column: 3, scope: !3237)
!3239 = !DILocation(line: 68, column: 2, scope: !3237)
!3240 = !DILocation(line: 70, column: 2, scope: !3225)
!3241 = !DILocation(line: 71, column: 2, scope: !3225)
!3242 = !DILocalVariable(name: "unused", arg: 1, scope: !3082, file: !3, line: 418, type: !144)
!3243 = !DILocation(line: 418, column: 32, scope: !3082)
!3244 = !DILocalVariable(name: "err", scope: !3082, file: !3, line: 420, type: !212)
!3245 = !DILocation(line: 420, column: 6, scope: !3082)
!3246 = !DILocation(line: 422, column: 2, scope: !3082)
!3247 = !DILocation(line: 422, column: 10, scope: !3082)
!3248 = !DILocation(line: 422, column: 9, scope: !3082)
!3249 = !DILocalVariable(name: "__ret", scope: !3250, file: !3, line: 423, type: !212)
!3250 = distinct !DILexicalBlock(scope: !3251, file: !3, line: 423, column: 7)
!3251 = distinct !DILexicalBlock(scope: !3252, file: !3, line: 423, column: 7)
!3252 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 422, column: 33)
!3253 = !DILocation(line: 423, column: 7, scope: !3250)
!3254 = !DILocation(line: 423, column: 7, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3250, file: !3, line: 423, column: 7)
!3256 = !DILocation(line: 423, column: 7, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3255, file: !3, line: 423, column: 7)
!3258 = !DILocation(line: 423, column: 7, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3250, file: !3, line: 423, column: 7)
!3260 = !DILocalVariable(name: "__wq_entry", scope: !3261, file: !3, line: 423, type: !3262)
!3261 = distinct !DILexicalBlock(scope: !3259, file: !3, line: 423, column: 7)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !161, line: 29, size: 320, elements: !3263)
!3263 = !{!3264, !3265, !3266, !3272}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3262, file: !161, line: 30, baseType: !7, size: 32)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3262, file: !161, line: 31, baseType: !144, size: 64, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3262, file: !161, line: 32, baseType: !3267, size: 64, offset: 128)
!3267 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !161, line: 16, baseType: !3268)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!212, !3271, !7, !212, !144}
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3262, file: !161, line: 33, baseType: !149, size: 128, offset: 192)
!3273 = !DILocation(line: 423, column: 7, scope: !3261)
!3274 = !DILocalVariable(name: "__ret", scope: !3261, file: !3, line: 423, type: !68)
!3275 = !DILocalVariable(name: "__int", scope: !3276, file: !3, line: 423, type: !68)
!3276 = distinct !DILexicalBlock(scope: !3277, file: !3, line: 423, column: 7)
!3277 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 423, column: 7)
!3278 = distinct !DILexicalBlock(scope: !3261, file: !3, line: 423, column: 7)
!3279 = !DILocation(line: 423, column: 7, scope: !3276)
!3280 = !DILocation(line: 423, column: 7, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3276, file: !3, line: 423, column: 7)
!3282 = !DILocation(line: 423, column: 7, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3276, file: !3, line: 423, column: 7)
!3284 = !DILocation(line: 423, column: 7, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3283, file: !3, line: 423, column: 7)
!3286 = !DILocation(line: 423, column: 7, scope: !3277)
!3287 = distinct !{!3287, !3288, !3288}
!3288 = !DILocation(line: 423, column: 7, scope: !3278)
!3289 = !DILabel(scope: !3261, name: "__out", file: !3, line: 423)
!3290 = !DILocation(line: 423, column: 7, scope: !3251)
!3291 = !DILocation(line: 423, column: 7, scope: !3252)
!3292 = !DILocation(line: 424, column: 4, scope: !3251)
!3293 = distinct !{!3293, !3246, !3294}
!3294 = !DILocation(line: 437, column: 2, scope: !3082)
!3295 = !DILocation(line: 426, column: 9, scope: !3252)
!3296 = !DILocation(line: 426, column: 7, scope: !3252)
!3297 = !DILocation(line: 427, column: 7, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3252, file: !3, line: 427, column: 7)
!3299 = !DILocation(line: 427, column: 11, scope: !3298)
!3300 = !DILocation(line: 427, column: 7, scope: !3252)
!3301 = !DILocation(line: 428, column: 4, scope: !3298)
!3302 = !DILocation(line: 429, column: 12, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 429, column: 12)
!3304 = !DILocation(line: 429, column: 12, scope: !3298)
!3305 = !DILocation(line: 430, column: 4, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3307, file: !3, line: 430, column: 4)
!3307 = distinct !DILexicalBlock(scope: !3303, file: !3, line: 430, column: 4)
!3308 = !DILocation(line: 430, column: 4, scope: !3307)
!3309 = !DILocation(line: 430, column: 4, scope: !3303)
!3310 = !DILocation(line: 433, column: 9, scope: !3252)
!3311 = !DILocation(line: 433, column: 7, scope: !3252)
!3312 = !DILocation(line: 434, column: 7, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3252, file: !3, line: 434, column: 7)
!3314 = !DILocation(line: 434, column: 7, scope: !3252)
!3315 = !DILocation(line: 435, column: 4, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3317, file: !3, line: 435, column: 4)
!3317 = distinct !DILexicalBlock(scope: !3313, file: !3, line: 435, column: 4)
!3318 = !DILocation(line: 435, column: 4, scope: !3317)
!3319 = !DILocation(line: 435, column: 4, scope: !3313)
!3320 = !DILocation(line: 439, column: 14, scope: !3082)
!3321 = !DILocation(line: 440, column: 2, scope: !3082)
!3322 = distinct !DISubprogram(name: "IS_ERR", scope: !3323, file: !3323, line: 34, type: !3324, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3323 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!216, !2897}
!3326 = !DILocalVariable(name: "ptr", arg: 1, scope: !3322, file: !3323, line: 34, type: !2897)
!3327 = !DILocation(line: 34, column: 60, scope: !3322)
!3328 = !DILocation(line: 36, column: 9, scope: !3322)
!3329 = !DILocation(line: 36, column: 2, scope: !3322)
!3330 = distinct !DISubprogram(name: "PTR_ERR", scope: !3323, file: !3323, line: 29, type: !3331, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!68, !2897}
!3333 = !DILocalVariable(name: "ptr", arg: 1, scope: !3330, file: !3323, line: 29, type: !2897)
!3334 = !DILocation(line: 29, column: 61, scope: !3330)
!3335 = !DILocation(line: 31, column: 16, scope: !3330)
!3336 = !DILocation(line: 31, column: 9, scope: !3330)
!3337 = !DILocation(line: 31, column: 2, scope: !3330)
!3338 = distinct !DISubprogram(name: "xb_deinit_comms", scope: !3, file: !3, line: 488, type: !2661, scopeLine: 489, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3339 = !DILocation(line: 490, column: 25, scope: !3338)
!3340 = !DILocation(line: 490, column: 2, scope: !3338)
!3341 = !DILocation(line: 491, column: 13, scope: !3338)
!3342 = !DILocation(line: 492, column: 1, scope: !3338)
!3343 = distinct !DISubprogram(name: "schedule_work", scope: !67, file: !67, line: 566, type: !3344, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!216, !1209}
!3346 = !DILocalVariable(name: "work", arg: 1, scope: !3343, file: !67, line: 566, type: !1209)
!3347 = !DILocation(line: 566, column: 54, scope: !3343)
!3348 = !DILocation(line: 568, column: 20, scope: !3343)
!3349 = !DILocation(line: 568, column: 31, scope: !3343)
!3350 = !DILocation(line: 568, column: 9, scope: !3343)
!3351 = !DILocation(line: 568, column: 2, scope: !3343)
!3352 = distinct !DISubprogram(name: "queue_work", scope: !67, file: !67, line: 504, type: !3353, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!216, !1176, !1209}
!3355 = !DILocalVariable(name: "wq", arg: 1, scope: !3352, file: !67, line: 504, type: !1176)
!3356 = !DILocation(line: 504, column: 56, scope: !3352)
!3357 = !DILocalVariable(name: "work", arg: 2, scope: !3352, file: !67, line: 505, type: !1209)
!3358 = !DILocation(line: 505, column: 30, scope: !3352)
!3359 = !DILocation(line: 507, column: 41, scope: !3352)
!3360 = !DILocation(line: 507, column: 45, scope: !3352)
!3361 = !DILocation(line: 507, column: 9, scope: !3352)
!3362 = !DILocation(line: 507, column: 2, scope: !3352)
!3363 = distinct !DISubprogram(name: "xb_thread_work", scope: !3, file: !3, line: 413, type: !3090, scopeLine: 414, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3364 = !DILocation(line: 415, column: 9, scope: !3363)
!3365 = !DILocation(line: 415, column: 27, scope: !3363)
!3366 = !DILocation(line: 415, column: 30, scope: !3363)
!3367 = !DILocation(line: 415, column: 2, scope: !3363)
!3368 = !DILocalVariable(name: "s", arg: 1, scope: !3369, file: !137, line: 445, type: !2103)
!3369 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !137, file: !137, line: 445, type: !3370, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!144, !2103, !154, !206}
!3372 = !DILocation(line: 445, column: 72, scope: !3369, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 552, column: 10, scope: !3374, inlinedAt: !3379)
!3374 = distinct !DILexicalBlock(scope: !3375, file: !137, line: 540, column: 34)
!3375 = distinct !DILexicalBlock(scope: !3376, file: !137, line: 540, column: 6)
!3376 = distinct !DISubprogram(name: "kmalloc", scope: !137, file: !137, line: 538, type: !3377, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!144, !206, !154}
!3379 = distinct !DILocation(line: 272, column: 17, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3381, file: !3, line: 253, column: 20)
!3381 = distinct !DILexicalBlock(scope: !3089, file: !3, line: 253, column: 6)
!3382 = !DILocalVariable(name: "flags", arg: 2, scope: !3369, file: !137, line: 446, type: !154)
!3383 = !DILocation(line: 446, column: 9, scope: !3369, inlinedAt: !3373)
!3384 = !DILocalVariable(name: "size", arg: 3, scope: !3369, file: !137, line: 446, type: !206)
!3385 = !DILocation(line: 446, column: 23, scope: !3369, inlinedAt: !3373)
!3386 = !DILocalVariable(name: "ret", scope: !3369, file: !137, line: 448, type: !144)
!3387 = !DILocation(line: 448, column: 8, scope: !3369, inlinedAt: !3373)
!3388 = !DILocalVariable(name: "flags", arg: 1, scope: !3389, file: !137, line: 318, type: !154)
!3389 = distinct !DISubprogram(name: "kmalloc_type", scope: !137, file: !137, line: 318, type: !3390, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!136, !154}
!3392 = !DILocation(line: 318, column: 67, scope: !3389, inlinedAt: !3393)
!3393 = distinct !DILocation(line: 553, column: 20, scope: !3374, inlinedAt: !3379)
!3394 = !DILocalVariable(name: "size", arg: 1, scope: !3395, file: !137, line: 346, type: !206)
!3395 = distinct !DISubprogram(name: "kmalloc_index", scope: !137, file: !137, line: 346, type: !3396, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!7, !206}
!3398 = !DILocation(line: 346, column: 58, scope: !3395, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 547, column: 11, scope: !3374, inlinedAt: !3379)
!3400 = !DILocalVariable(name: "size", arg: 1, scope: !3401, file: !137, line: 472, type: !206)
!3401 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !137, file: !137, line: 472, type: !3402, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!144, !206, !154, !7}
!3404 = !DILocation(line: 472, column: 28, scope: !3401, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 481, column: 9, scope: !3406, inlinedAt: !3407)
!3406 = distinct !DISubprogram(name: "kmalloc_large", scope: !137, file: !137, line: 478, type: !3377, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3407 = distinct !DILocation(line: 545, column: 11, scope: !3408, inlinedAt: !3379)
!3408 = distinct !DILexicalBlock(scope: !3374, file: !137, line: 544, column: 7)
!3409 = !DILocalVariable(name: "flags", arg: 2, scope: !3401, file: !137, line: 472, type: !154)
!3410 = !DILocation(line: 472, column: 40, scope: !3401, inlinedAt: !3405)
!3411 = !DILocalVariable(name: "order", arg: 3, scope: !3401, file: !137, line: 472, type: !7)
!3412 = !DILocation(line: 472, column: 60, scope: !3401, inlinedAt: !3405)
!3413 = !DILocalVariable(name: "size", arg: 1, scope: !3406, file: !137, line: 478, type: !206)
!3414 = !DILocation(line: 478, column: 51, scope: !3406, inlinedAt: !3407)
!3415 = !DILocalVariable(name: "flags", arg: 2, scope: !3406, file: !137, line: 478, type: !154)
!3416 = !DILocation(line: 478, column: 63, scope: !3406, inlinedAt: !3407)
!3417 = !DILocalVariable(name: "order", scope: !3406, file: !137, line: 480, type: !7)
!3418 = !DILocation(line: 480, column: 15, scope: !3406, inlinedAt: !3407)
!3419 = !DILocalVariable(name: "size", arg: 1, scope: !3376, file: !137, line: 538, type: !206)
!3420 = !DILocation(line: 538, column: 45, scope: !3376, inlinedAt: !3379)
!3421 = !DILocalVariable(name: "flags", arg: 2, scope: !3376, file: !137, line: 538, type: !154)
!3422 = !DILocation(line: 538, column: 57, scope: !3376, inlinedAt: !3379)
!3423 = !DILocalVariable(name: "index", scope: !3374, file: !137, line: 542, type: !7)
!3424 = !DILocation(line: 542, column: 16, scope: !3374, inlinedAt: !3379)
!3425 = !DILocalVariable(name: "req", scope: !3089, file: !3, line: 226, type: !155)
!3426 = !DILocation(line: 226, column: 22, scope: !3089)
!3427 = !DILocalVariable(name: "err", scope: !3089, file: !3, line: 227, type: !212)
!3428 = !DILocation(line: 227, column: 6, scope: !3089)
!3429 = !DILocalVariable(name: "len", scope: !3089, file: !3, line: 228, type: !7)
!3430 = !DILocation(line: 228, column: 15, scope: !3089)
!3431 = !DILocation(line: 230, column: 13, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3089, file: !3, line: 230, column: 6)
!3433 = !DILocation(line: 230, column: 6, scope: !3089)
!3434 = !DILocation(line: 231, column: 16, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3432, file: !3, line: 230, column: 21)
!3436 = !DILocation(line: 232, column: 16, scope: !3435)
!3437 = !DILocation(line: 233, column: 14, scope: !3435)
!3438 = !DILocation(line: 243, column: 3, scope: !3435)
!3439 = !DILocation(line: 245, column: 8, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3435, file: !3, line: 245, column: 7)
!3441 = !DILocation(line: 245, column: 7, scope: !3435)
!3442 = !DILocation(line: 247, column: 4, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3440, file: !3, line: 245, column: 27)
!3444 = !DILocation(line: 248, column: 17, scope: !3443)
!3445 = !DILocation(line: 249, column: 4, scope: !3443)
!3446 = !DILocation(line: 251, column: 2, scope: !3435)
!3447 = !DILocation(line: 253, column: 12, scope: !3381)
!3448 = !DILocation(line: 253, column: 6, scope: !3089)
!3449 = !DILocation(line: 254, column: 13, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 254, column: 7)
!3451 = !DILocation(line: 254, column: 7, scope: !3450)
!3452 = !DILocation(line: 254, column: 18, scope: !3450)
!3453 = !DILocation(line: 254, column: 7, scope: !3380)
!3454 = !DILocation(line: 255, column: 45, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3450, file: !3, line: 254, column: 40)
!3456 = !DILocation(line: 255, column: 37, scope: !3455)
!3457 = !DILocation(line: 256, column: 37, scope: !3455)
!3458 = !DILocation(line: 256, column: 31, scope: !3455)
!3459 = !DILocation(line: 256, column: 29, scope: !3455)
!3460 = !DILocation(line: 256, column: 11, scope: !3455)
!3461 = !DILocation(line: 255, column: 10, scope: !3455)
!3462 = !DILocation(line: 255, column: 8, scope: !3455)
!3463 = !DILocation(line: 257, column: 8, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3455, file: !3, line: 257, column: 8)
!3465 = !DILocation(line: 257, column: 12, scope: !3464)
!3466 = !DILocation(line: 257, column: 8, scope: !3455)
!3467 = !DILocation(line: 258, column: 5, scope: !3464)
!3468 = !DILocation(line: 259, column: 18, scope: !3455)
!3469 = !DILocation(line: 259, column: 15, scope: !3455)
!3470 = !DILocation(line: 260, column: 14, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3455, file: !3, line: 260, column: 8)
!3472 = !DILocation(line: 260, column: 8, scope: !3471)
!3473 = !DILocation(line: 260, column: 19, scope: !3471)
!3474 = !DILocation(line: 260, column: 8, scope: !3455)
!3475 = !DILocation(line: 261, column: 5, scope: !3471)
!3476 = !DILocation(line: 262, column: 18, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3455, file: !3, line: 262, column: 8)
!3478 = !DILocation(line: 262, column: 22, scope: !3477)
!3479 = !DILocation(line: 262, column: 8, scope: !3455)
!3480 = !DILocation(line: 263, column: 9, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3477, file: !3, line: 262, column: 46)
!3482 = !DILocation(line: 264, column: 5, scope: !3481)
!3483 = !DILocation(line: 266, column: 3, scope: !3455)
!3484 = !DILocation(line: 268, column: 19, scope: !3380)
!3485 = !DILocation(line: 268, column: 23, scope: !3380)
!3486 = !DILocation(line: 268, column: 7, scope: !3380)
!3487 = !DILocation(line: 269, column: 17, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 269, column: 7)
!3489 = !DILocation(line: 269, column: 22, scope: !3488)
!3490 = !DILocation(line: 269, column: 7, scope: !3380)
!3491 = !DILocation(line: 270, column: 8, scope: !3488)
!3492 = !DILocation(line: 270, column: 4, scope: !3488)
!3493 = !DILocation(line: 272, column: 25, scope: !3380)
!3494 = !DILocation(line: 540, column: 27, scope: !3375, inlinedAt: !3379)
!3495 = !DILocation(line: 540, column: 6, scope: !3375, inlinedAt: !3379)
!3496 = !DILocation(line: 540, column: 6, scope: !3376, inlinedAt: !3379)
!3497 = !DILocation(line: 544, column: 7, scope: !3408, inlinedAt: !3379)
!3498 = !DILocation(line: 544, column: 12, scope: !3408, inlinedAt: !3379)
!3499 = !DILocation(line: 544, column: 7, scope: !3374, inlinedAt: !3379)
!3500 = !DILocation(line: 545, column: 25, scope: !3408, inlinedAt: !3379)
!3501 = !DILocation(line: 545, column: 31, scope: !3408, inlinedAt: !3379)
!3502 = !DILocation(line: 480, column: 33, scope: !3406, inlinedAt: !3407)
!3503 = !DILocation(line: 480, column: 23, scope: !3406, inlinedAt: !3407)
!3504 = !DILocation(line: 481, column: 29, scope: !3406, inlinedAt: !3407)
!3505 = !DILocation(line: 481, column: 35, scope: !3406, inlinedAt: !3407)
!3506 = !DILocation(line: 481, column: 42, scope: !3406, inlinedAt: !3407)
!3507 = !DILocation(line: 474, column: 23, scope: !3401, inlinedAt: !3405)
!3508 = !DILocation(line: 474, column: 29, scope: !3401, inlinedAt: !3405)
!3509 = !DILocation(line: 474, column: 36, scope: !3401, inlinedAt: !3405)
!3510 = !DILocation(line: 474, column: 9, scope: !3401, inlinedAt: !3405)
!3511 = !DILocation(line: 545, column: 4, scope: !3408, inlinedAt: !3379)
!3512 = !DILocation(line: 547, column: 25, scope: !3374, inlinedAt: !3379)
!3513 = !DILocation(line: 348, column: 7, scope: !3514, inlinedAt: !3399)
!3514 = distinct !DILexicalBlock(scope: !3395, file: !137, line: 348, column: 6)
!3515 = !DILocation(line: 348, column: 6, scope: !3395, inlinedAt: !3399)
!3516 = !DILocation(line: 349, column: 3, scope: !3514, inlinedAt: !3399)
!3517 = !DILocation(line: 351, column: 6, scope: !3518, inlinedAt: !3399)
!3518 = distinct !DILexicalBlock(scope: !3395, file: !137, line: 351, column: 6)
!3519 = !DILocation(line: 351, column: 11, scope: !3518, inlinedAt: !3399)
!3520 = !DILocation(line: 351, column: 6, scope: !3395, inlinedAt: !3399)
!3521 = !DILocation(line: 352, column: 3, scope: !3518, inlinedAt: !3399)
!3522 = !DILocation(line: 354, column: 32, scope: !3523, inlinedAt: !3399)
!3523 = distinct !DILexicalBlock(scope: !3395, file: !137, line: 354, column: 6)
!3524 = !DILocation(line: 354, column: 37, scope: !3523, inlinedAt: !3399)
!3525 = !DILocation(line: 354, column: 42, scope: !3523, inlinedAt: !3399)
!3526 = !DILocation(line: 354, column: 45, scope: !3523, inlinedAt: !3399)
!3527 = !DILocation(line: 354, column: 50, scope: !3523, inlinedAt: !3399)
!3528 = !DILocation(line: 354, column: 6, scope: !3395, inlinedAt: !3399)
!3529 = !DILocation(line: 355, column: 3, scope: !3523, inlinedAt: !3399)
!3530 = !DILocation(line: 356, column: 32, scope: !3531, inlinedAt: !3399)
!3531 = distinct !DILexicalBlock(scope: !3395, file: !137, line: 356, column: 6)
!3532 = !DILocation(line: 356, column: 37, scope: !3531, inlinedAt: !3399)
!3533 = !DILocation(line: 356, column: 43, scope: !3531, inlinedAt: !3399)
!3534 = !DILocation(line: 356, column: 46, scope: !3531, inlinedAt: !3399)
!3535 = !DILocation(line: 356, column: 51, scope: !3531, inlinedAt: !3399)
!3536 = !DILocation(line: 356, column: 6, scope: !3395, inlinedAt: !3399)
!3537 = !DILocation(line: 357, column: 3, scope: !3531, inlinedAt: !3399)
!3538 = !DILocation(line: 358, column: 6, scope: !3539, inlinedAt: !3399)
!3539 = distinct !DILexicalBlock(scope: !3395, file: !137, line: 358, column: 6)
!3540 = !DILocation(line: 358, column: 11, scope: !3539, inlinedAt: !3399)
!3541 = !DILocation(line: 358, column: 6, scope: !3395, inlinedAt: !3399)
!3542 = !DILocation(line: 358, column: 26, scope: !3539, inlinedAt: !3399)
!3543 = !DILocation(line: 359, column: 6, scope: !3544, inlinedAt: !3399)
!3544 = distinct !DILexicalBlock(scope: !3395, file: !137, line: 359, column: 6)
!3545 = !DILocation(line: 359, column: 11, scope: !3544, inlinedAt: !3399)
!3546 = !DILocation(line: 359, column: 6, scope: !3395, inlinedAt: !3399)
!3547 = !DILocation(line: 359, column: 26, scope: !3544, inlinedAt: !3399)
!3548 = !DILocation(line: 360, column: 6, scope: !3549, inlinedAt: !3399)
!3549 = distinct !DILexicalBlock(scope: !3395, file: !137, line: 360, column: 6)
!3550 = !DILocation(line: 360, column: 11, scope: !3549, inlinedAt: !3399)
!3551 = !DILocation(line: 360, column: 6, scope: !3395, inlinedAt: !3399)
!3552 = !DILocation(line: 360, column: 26, scope: !3549, inlinedAt: !3399)
!3553 = !DILocation(line: 361, column: 6, scope: !3554, inlinedAt: !3399)
!3554 = distinct !DILexicalBlock(scope: !3395, file: !137, line: 361, column: 6)
!3555 = !DILocation(line: 361, column: 11, scope: !3554, inlinedAt: !3399)
!3556 = !DILocation(line: 361, column: 6, scope: !3395, inlinedAt: !3399)
!3557 = !DILocation(line: 361, column: 26, scope: !3554, inlinedAt: !3399)
!3558 = !DILocation(line: 362, column: 6, scope: !3559, inlinedAt: !3399)
!3559 = distinct !DILexicalBlock(scope: !3395, file: !137, line: 362, column: 6)
!3560 = !DILocation(line: 362, column: 11, scope: !3559, inlinedAt: !3399)
!3561 = !DILocation(line: 362, column: 6, scope: !3395, inlinedAt: !3399)
!3562 = !DILocation(line: 362, column: 26, scope: !3559, inlinedAt: !3399)
!3563 = !DILocation(line: 363, column: 6, scope: !3564, inlinedAt: !3399)
!3564 = distinct !DILexicalBlock(scope: !3395, file: !137, line: 363, column: 6)
!3565 = !DILocation(line: 363, column: 11, scope: !3564, inlinedAt: !3399)
!3566 = !DILocation(line: 363, column: 6, scope: !3395, inlinedAt: !3399)
!3567 = !DILocation(line: 363, column: 26, scope: !3564, inlinedAt: !3399)
!3568 = !DILocation(line: 364, column: 6, scope: !3569, inlinedAt: !3399)
!3569 = distinct !DILexicalBlock(scope: !3395, file: !137, line: 364, column: 6)
!3570 = !DILocation(line: 364, column: 11, scope: !3569, inlinedAt: !3399)
!3571 = !DILocation(line: 364, column: 6, scope: !3395, inlinedAt: !3399)
!3572 = !DILocation(line: 364, column: 26, scope: !3569, inlinedAt: !3399)
!3573 = !DILocation(line: 365, column: 6, scope: !3574, inlinedAt: !3399)
!3574 = distinct !DILexicalBlock(scope: !3395, file: !137, line: 365, column: 6)
!3575 = !DILocation(line: 365, column: 11, scope: !3574, inlinedAt: !3399)
!3576 = !DILocation(line: 365, column: 6, scope: !3395, inlinedAt: !3399)
!3577 = !DILocation(line: 365, column: 26, scope: !3574, inlinedAt: !3399)
!3578 = !DILocation(line: 366, column: 6, scope: !3579, inlinedAt: !3399)
!3579 = distinct !DILexicalBlock(scope: !3395, file: !137, line: 366, column: 6)
!3580 = !DILocation(line: 366, column: 11, scope: !3579, inlinedAt: !3399)
!3581 = !DILocation(line: 366, column: 6, scope: !3395, inlinedAt: !3399)
!3582 = !DILocation(line: 366, column: 26, scope: !3579, inlinedAt: !3399)
!3583 = !DILocation(line: 367, column: 6, scope: !3584, inlinedAt: !3399)
!3584 = distinct !DILexicalBlock(scope: !3395, file: !137, line: 367, column: 6)
!3585 = !DILocation(line: 367, column: 11, scope: !3584, inlinedAt: !3399)
!3586 = !DILocation(line: 367, column: 6, scope: !3395, inlinedAt: !3399)
!3587 = !DILocation(line: 367, column: 26, scope: !3584, inlinedAt: !3399)
!3588 = !DILocation(line: 368, column: 6, scope: !3589, inlinedAt: !3399)
!3589 = distinct !DILexicalBlock(scope: !3395, file: !137, line: 368, column: 6)
!3590 = !DILocation(line: 368, column: 11, scope: !3589, inlinedAt: !3399)
!3591 = !DILocation(line: 368, column: 6, scope: !3395, inlinedAt: !3399)
!3592 = !DILocation(line: 368, column: 26, scope: !3589, inlinedAt: !3399)
!3593 = !DILocation(line: 369, column: 6, scope: !3594, inlinedAt: !3399)
!3594 = distinct !DILexicalBlock(scope: !3395, file: !137, line: 369, column: 6)
!3595 = !DILocation(line: 369, column: 11, scope: !3594, inlinedAt: !3399)
!3596 = !DILocation(line: 369, column: 6, scope: !3395, inlinedAt: !3399)
!3597 = !DILocation(line: 369, column: 26, scope: !3594, inlinedAt: !3399)
!3598 = !DILocation(line: 370, column: 6, scope: !3599, inlinedAt: !3399)
!3599 = distinct !DILexicalBlock(scope: !3395, file: !137, line: 370, column: 6)
!3600 = !DILocation(line: 370, column: 11, scope: !3599, inlinedAt: !3399)
!3601 = !DILocation(line: 370, column: 6, scope: !3395, inlinedAt: !3399)
!3602 = !DILocation(line: 370, column: 26, scope: !3599, inlinedAt: !3399)
!3603 = !DILocation(line: 371, column: 6, scope: !3604, inlinedAt: !3399)
!3604 = distinct !DILexicalBlock(scope: !3395, file: !137, line: 371, column: 6)
!3605 = !DILocation(line: 371, column: 11, scope: !3604, inlinedAt: !3399)
!3606 = !DILocation(line: 371, column: 6, scope: !3395, inlinedAt: !3399)
!3607 = !DILocation(line: 371, column: 26, scope: !3604, inlinedAt: !3399)
!3608 = !DILocation(line: 372, column: 6, scope: !3609, inlinedAt: !3399)
!3609 = distinct !DILexicalBlock(scope: !3395, file: !137, line: 372, column: 6)
!3610 = !DILocation(line: 372, column: 11, scope: !3609, inlinedAt: !3399)
!3611 = !DILocation(line: 372, column: 6, scope: !3395, inlinedAt: !3399)
!3612 = !DILocation(line: 372, column: 26, scope: !3609, inlinedAt: !3399)
!3613 = !DILocation(line: 373, column: 6, scope: !3614, inlinedAt: !3399)
!3614 = distinct !DILexicalBlock(scope: !3395, file: !137, line: 373, column: 6)
!3615 = !DILocation(line: 373, column: 11, scope: !3614, inlinedAt: !3399)
!3616 = !DILocation(line: 373, column: 6, scope: !3395, inlinedAt: !3399)
!3617 = !DILocation(line: 373, column: 26, scope: !3614, inlinedAt: !3399)
!3618 = !DILocation(line: 374, column: 6, scope: !3619, inlinedAt: !3399)
!3619 = distinct !DILexicalBlock(scope: !3395, file: !137, line: 374, column: 6)
!3620 = !DILocation(line: 374, column: 11, scope: !3619, inlinedAt: !3399)
!3621 = !DILocation(line: 374, column: 6, scope: !3395, inlinedAt: !3399)
!3622 = !DILocation(line: 374, column: 26, scope: !3619, inlinedAt: !3399)
!3623 = !DILocation(line: 375, column: 6, scope: !3624, inlinedAt: !3399)
!3624 = distinct !DILexicalBlock(scope: !3395, file: !137, line: 375, column: 6)
!3625 = !DILocation(line: 375, column: 11, scope: !3624, inlinedAt: !3399)
!3626 = !DILocation(line: 375, column: 6, scope: !3395, inlinedAt: !3399)
!3627 = !DILocation(line: 375, column: 27, scope: !3624, inlinedAt: !3399)
!3628 = !DILocation(line: 376, column: 6, scope: !3629, inlinedAt: !3399)
!3629 = distinct !DILexicalBlock(scope: !3395, file: !137, line: 376, column: 6)
!3630 = !DILocation(line: 376, column: 11, scope: !3629, inlinedAt: !3399)
!3631 = !DILocation(line: 376, column: 6, scope: !3395, inlinedAt: !3399)
!3632 = !DILocation(line: 376, column: 32, scope: !3629, inlinedAt: !3399)
!3633 = !DILocation(line: 377, column: 6, scope: !3634, inlinedAt: !3399)
!3634 = distinct !DILexicalBlock(scope: !3395, file: !137, line: 377, column: 6)
!3635 = !DILocation(line: 377, column: 11, scope: !3634, inlinedAt: !3399)
!3636 = !DILocation(line: 377, column: 6, scope: !3395, inlinedAt: !3399)
!3637 = !DILocation(line: 377, column: 32, scope: !3634, inlinedAt: !3399)
!3638 = !DILocation(line: 378, column: 6, scope: !3639, inlinedAt: !3399)
!3639 = distinct !DILexicalBlock(scope: !3395, file: !137, line: 378, column: 6)
!3640 = !DILocation(line: 378, column: 11, scope: !3639, inlinedAt: !3399)
!3641 = !DILocation(line: 378, column: 6, scope: !3395, inlinedAt: !3399)
!3642 = !DILocation(line: 378, column: 32, scope: !3639, inlinedAt: !3399)
!3643 = !DILocation(line: 379, column: 6, scope: !3644, inlinedAt: !3399)
!3644 = distinct !DILexicalBlock(scope: !3395, file: !137, line: 379, column: 6)
!3645 = !DILocation(line: 379, column: 11, scope: !3644, inlinedAt: !3399)
!3646 = !DILocation(line: 379, column: 6, scope: !3395, inlinedAt: !3399)
!3647 = !DILocation(line: 379, column: 33, scope: !3644, inlinedAt: !3399)
!3648 = !DILocation(line: 380, column: 6, scope: !3649, inlinedAt: !3399)
!3649 = distinct !DILexicalBlock(scope: !3395, file: !137, line: 380, column: 6)
!3650 = !DILocation(line: 380, column: 11, scope: !3649, inlinedAt: !3399)
!3651 = !DILocation(line: 380, column: 6, scope: !3395, inlinedAt: !3399)
!3652 = !DILocation(line: 380, column: 33, scope: !3649, inlinedAt: !3399)
!3653 = !DILocation(line: 381, column: 6, scope: !3654, inlinedAt: !3399)
!3654 = distinct !DILexicalBlock(scope: !3395, file: !137, line: 381, column: 6)
!3655 = !DILocation(line: 381, column: 11, scope: !3654, inlinedAt: !3399)
!3656 = !DILocation(line: 381, column: 6, scope: !3395, inlinedAt: !3399)
!3657 = !DILocation(line: 381, column: 33, scope: !3654, inlinedAt: !3399)
!3658 = !DILocation(line: 382, column: 2, scope: !3659, inlinedAt: !3399)
!3659 = distinct !DILexicalBlock(scope: !3660, file: !137, line: 382, column: 2)
!3660 = distinct !DILexicalBlock(scope: !3395, file: !137, line: 382, column: 2)
!3661 = !{i32 -2142948800, i32 -2142948771, i32 -2142948725, i32 -2142948667, i32 -2142948613, i32 -2142948559, i32 -2142948504, i32 -2142948473}
!3662 = !DILocation(line: 382, column: 2, scope: !3663, inlinedAt: !3399)
!3663 = distinct !DILexicalBlock(scope: !3664, file: !137, line: 382, column: 2)
!3664 = distinct !DILexicalBlock(scope: !3660, file: !137, line: 382, column: 2)
!3665 = !{i32 -2142948030, i32 -2142948023, i32 -2142947969, i32 -2142947938, i32 -2142947908}
!3666 = !DILocation(line: 382, column: 2, scope: !3664, inlinedAt: !3399)
!3667 = !DILocation(line: 386, column: 1, scope: !3395, inlinedAt: !3399)
!3668 = !DILocation(line: 547, column: 9, scope: !3374, inlinedAt: !3379)
!3669 = !DILocation(line: 549, column: 8, scope: !3670, inlinedAt: !3379)
!3670 = distinct !DILexicalBlock(scope: !3374, file: !137, line: 549, column: 7)
!3671 = !DILocation(line: 549, column: 7, scope: !3374, inlinedAt: !3379)
!3672 = !DILocation(line: 550, column: 4, scope: !3670, inlinedAt: !3379)
!3673 = !DILocation(line: 553, column: 33, scope: !3374, inlinedAt: !3379)
!3674 = !DILocation(line: 325, column: 6, scope: !3675, inlinedAt: !3393)
!3675 = distinct !DILexicalBlock(scope: !3389, file: !137, line: 325, column: 6)
!3676 = !DILocation(line: 325, column: 6, scope: !3389, inlinedAt: !3393)
!3677 = !DILocation(line: 326, column: 3, scope: !3675, inlinedAt: !3393)
!3678 = !DILocation(line: 332, column: 9, scope: !3389, inlinedAt: !3393)
!3679 = !DILocation(line: 332, column: 15, scope: !3389, inlinedAt: !3393)
!3680 = !DILocation(line: 332, column: 2, scope: !3389, inlinedAt: !3393)
!3681 = !DILocation(line: 336, column: 1, scope: !3389, inlinedAt: !3393)
!3682 = !DILocation(line: 553, column: 5, scope: !3374, inlinedAt: !3379)
!3683 = !DILocation(line: 553, column: 41, scope: !3374, inlinedAt: !3379)
!3684 = !DILocation(line: 554, column: 5, scope: !3374, inlinedAt: !3379)
!3685 = !DILocation(line: 554, column: 12, scope: !3374, inlinedAt: !3379)
!3686 = !DILocation(line: 448, column: 31, scope: !3369, inlinedAt: !3373)
!3687 = !DILocation(line: 448, column: 34, scope: !3369, inlinedAt: !3373)
!3688 = !DILocation(line: 448, column: 14, scope: !3369, inlinedAt: !3373)
!3689 = !DILocation(line: 450, column: 22, scope: !3369, inlinedAt: !3373)
!3690 = !DILocation(line: 450, column: 25, scope: !3369, inlinedAt: !3373)
!3691 = !DILocation(line: 450, column: 30, scope: !3369, inlinedAt: !3373)
!3692 = !DILocation(line: 450, column: 36, scope: !3369, inlinedAt: !3373)
!3693 = !DILocation(line: 450, column: 8, scope: !3369, inlinedAt: !3373)
!3694 = !DILocation(line: 450, column: 6, scope: !3369, inlinedAt: !3373)
!3695 = !DILocation(line: 451, column: 9, scope: !3369, inlinedAt: !3373)
!3696 = !DILocation(line: 552, column: 3, scope: !3374, inlinedAt: !3379)
!3697 = !DILocation(line: 557, column: 19, scope: !3376, inlinedAt: !3379)
!3698 = !DILocation(line: 557, column: 25, scope: !3376, inlinedAt: !3379)
!3699 = !DILocation(line: 557, column: 9, scope: !3376, inlinedAt: !3379)
!3700 = !DILocation(line: 557, column: 2, scope: !3376, inlinedAt: !3379)
!3701 = !DILocation(line: 558, column: 1, scope: !3376, inlinedAt: !3379)
!3702 = !DILocation(line: 272, column: 15, scope: !3380)
!3703 = !DILocation(line: 273, column: 14, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 273, column: 7)
!3705 = !DILocation(line: 273, column: 8, scope: !3704)
!3706 = !DILocation(line: 273, column: 7, scope: !3380)
!3707 = !DILocation(line: 274, column: 4, scope: !3704)
!3708 = !DILocation(line: 276, column: 17, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 276, column: 7)
!3710 = !DILocation(line: 276, column: 22, scope: !3709)
!3711 = !DILocation(line: 276, column: 7, scope: !3380)
!3712 = !DILocation(line: 277, column: 23, scope: !3709)
!3713 = !DILocation(line: 277, column: 30, scope: !3709)
!3714 = !DILocation(line: 277, column: 17, scope: !3709)
!3715 = !DILocation(line: 277, column: 15, scope: !3709)
!3716 = !DILocation(line: 277, column: 4, scope: !3709)
!3717 = !DILocation(line: 279, column: 23, scope: !3709)
!3718 = !DILocation(line: 279, column: 15, scope: !3709)
!3719 = !DILocation(line: 280, column: 16, scope: !3380)
!3720 = !DILocation(line: 281, column: 14, scope: !3380)
!3721 = !DILocation(line: 282, column: 2, scope: !3380)
!3722 = !DILocation(line: 284, column: 22, scope: !3089)
!3723 = !DILocation(line: 284, column: 35, scope: !3089)
!3724 = !DILocation(line: 284, column: 27, scope: !3089)
!3725 = !DILocation(line: 284, column: 51, scope: !3089)
!3726 = !DILocation(line: 284, column: 63, scope: !3089)
!3727 = !DILocation(line: 284, column: 55, scope: !3089)
!3728 = !DILocation(line: 284, column: 8, scope: !3089)
!3729 = !DILocation(line: 284, column: 6, scope: !3089)
!3730 = !DILocation(line: 285, column: 6, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3089, file: !3, line: 285, column: 6)
!3732 = !DILocation(line: 285, column: 10, scope: !3731)
!3733 = !DILocation(line: 285, column: 6, scope: !3089)
!3734 = !DILocation(line: 286, column: 3, scope: !3731)
!3735 = !DILocation(line: 288, column: 16, scope: !3089)
!3736 = !DILocation(line: 288, column: 13, scope: !3089)
!3737 = !DILocation(line: 289, column: 12, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3089, file: !3, line: 289, column: 6)
!3739 = !DILocation(line: 289, column: 30, scope: !3738)
!3740 = !DILocation(line: 289, column: 17, scope: !3738)
!3741 = !DILocation(line: 289, column: 6, scope: !3089)
!3742 = !DILocation(line: 290, column: 3, scope: !3738)
!3743 = !DILocation(line: 292, column: 8, scope: !3089)
!3744 = !DILocation(line: 292, column: 23, scope: !3089)
!3745 = !DILocation(line: 292, column: 2, scope: !3089)
!3746 = !DILocation(line: 292, column: 28, scope: !3089)
!3747 = !DILocation(line: 294, column: 16, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3089, file: !3, line: 294, column: 6)
!3749 = !DILocation(line: 294, column: 21, scope: !3748)
!3750 = !DILocation(line: 294, column: 6, scope: !3089)
!3751 = !DILocation(line: 295, column: 32, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3748, file: !3, line: 294, column: 40)
!3753 = !DILocation(line: 295, column: 9, scope: !3752)
!3754 = !DILocation(line: 295, column: 16, scope: !3752)
!3755 = !DILocation(line: 295, column: 20, scope: !3752)
!3756 = !DILocation(line: 296, column: 28, scope: !3752)
!3757 = !DILocation(line: 296, column: 9, scope: !3752)
!3758 = !DILocation(line: 296, column: 7, scope: !3752)
!3759 = !DILocation(line: 297, column: 2, scope: !3752)
!3760 = !DILocation(line: 298, column: 7, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3748, file: !3, line: 297, column: 9)
!3762 = !DILocation(line: 299, column: 3, scope: !3761)
!3763 = !DILocalVariable(name: "__mptr", scope: !3764, file: !3, line: 300, type: !144)
!3764 = distinct !DILexicalBlock(scope: !3765, file: !3, line: 300, column: 3)
!3765 = distinct !DILexicalBlock(scope: !3761, file: !3, line: 300, column: 3)
!3766 = !DILocation(line: 300, column: 3, scope: !3764)
!3767 = !DILocation(line: 300, column: 3, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 300, column: 3)
!3769 = !DILocation(line: 300, column: 3, scope: !3765)
!3770 = !DILocation(line: 300, column: 3, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3765, file: !3, line: 300, column: 3)
!3772 = !DILocation(line: 301, column: 8, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3774, file: !3, line: 301, column: 8)
!3774 = distinct !DILexicalBlock(scope: !3771, file: !3, line: 300, column: 50)
!3775 = !DILocation(line: 301, column: 13, scope: !3773)
!3776 = !DILocation(line: 301, column: 17, scope: !3773)
!3777 = !DILocation(line: 301, column: 37, scope: !3773)
!3778 = !DILocation(line: 301, column: 24, scope: !3773)
!3779 = !DILocation(line: 301, column: 8, scope: !3774)
!3780 = !DILocation(line: 302, column: 15, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3773, file: !3, line: 301, column: 45)
!3782 = !DILocation(line: 302, column: 20, scope: !3781)
!3783 = !DILocation(line: 302, column: 5, scope: !3781)
!3784 = !DILocation(line: 303, column: 9, scope: !3781)
!3785 = !DILocation(line: 304, column: 5, scope: !3781)
!3786 = !DILocation(line: 306, column: 3, scope: !3774)
!3787 = !DILocalVariable(name: "__mptr", scope: !3788, file: !3, line: 300, type: !144)
!3788 = distinct !DILexicalBlock(scope: !3771, file: !3, line: 300, column: 3)
!3789 = !DILocation(line: 300, column: 3, scope: !3788)
!3790 = !DILocation(line: 300, column: 3, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3788, file: !3, line: 300, column: 3)
!3792 = distinct !{!3792, !3769, !3793}
!3793 = !DILocation(line: 306, column: 3, scope: !3765)
!3794 = !DILocation(line: 307, column: 3, scope: !3761)
!3795 = !DILocation(line: 308, column: 7, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3761, file: !3, line: 308, column: 7)
!3797 = !DILocation(line: 308, column: 7, scope: !3761)
!3798 = !DILocation(line: 309, column: 4, scope: !3796)
!3799 = !DILocation(line: 311, column: 7, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3761, file: !3, line: 311, column: 7)
!3801 = !DILocation(line: 311, column: 12, scope: !3800)
!3802 = !DILocation(line: 311, column: 18, scope: !3800)
!3803 = !DILocation(line: 311, column: 7, scope: !3761)
!3804 = !DILocation(line: 312, column: 22, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !3800, file: !3, line: 311, column: 46)
!3806 = !DILocation(line: 312, column: 27, scope: !3805)
!3807 = !DILocation(line: 312, column: 4, scope: !3805)
!3808 = !DILocation(line: 312, column: 9, scope: !3805)
!3809 = !DILocation(line: 312, column: 13, scope: !3805)
!3810 = !DILocation(line: 312, column: 20, scope: !3805)
!3811 = !DILocation(line: 313, column: 30, scope: !3805)
!3812 = !DILocation(line: 313, column: 4, scope: !3805)
!3813 = !DILocation(line: 313, column: 9, scope: !3805)
!3814 = !DILocation(line: 313, column: 13, scope: !3805)
!3815 = !DILocation(line: 313, column: 18, scope: !3805)
!3816 = !DILocation(line: 314, column: 29, scope: !3805)
!3817 = !DILocation(line: 314, column: 4, scope: !3805)
!3818 = !DILocation(line: 314, column: 9, scope: !3805)
!3819 = !DILocation(line: 314, column: 13, scope: !3805)
!3820 = !DILocation(line: 314, column: 17, scope: !3805)
!3821 = !DILocation(line: 315, column: 22, scope: !3805)
!3822 = !DILocation(line: 315, column: 4, scope: !3805)
!3823 = !DILocation(line: 315, column: 9, scope: !3805)
!3824 = !DILocation(line: 315, column: 14, scope: !3805)
!3825 = !DILocation(line: 317, column: 4, scope: !3805)
!3826 = !{i32 -2141541510}
!3827 = !DILocation(line: 318, column: 4, scope: !3805)
!3828 = !DILocation(line: 318, column: 9, scope: !3805)
!3829 = !DILocation(line: 318, column: 15, scope: !3805)
!3830 = !DILocation(line: 319, column: 4, scope: !3805)
!3831 = !DILocation(line: 319, column: 9, scope: !3805)
!3832 = !DILocation(line: 319, column: 12, scope: !3805)
!3833 = !DILocation(line: 320, column: 3, scope: !3805)
!3834 = !DILocation(line: 321, column: 10, scope: !3800)
!3835 = !DILocation(line: 321, column: 4, scope: !3800)
!3836 = !DILocation(line: 324, column: 2, scope: !3089)
!3837 = !DILocation(line: 326, column: 15, scope: !3089)
!3838 = !DILocation(line: 327, column: 14, scope: !3089)
!3839 = !DILocation(line: 328, column: 9, scope: !3089)
!3840 = !DILocation(line: 328, column: 2, scope: !3089)
!3841 = !DILabel(scope: !3089, name: "out", file: !3, line: 330)
!3842 = !DILocation(line: 330, column: 2, scope: !3089)
!3843 = !DILocation(line: 331, column: 2, scope: !3089)
!3844 = !DILocation(line: 332, column: 15, scope: !3089)
!3845 = !DILocation(line: 333, column: 14, scope: !3089)
!3846 = !DILocation(line: 333, column: 2, scope: !3089)
!3847 = !DILocation(line: 334, column: 14, scope: !3089)
!3848 = !DILocation(line: 335, column: 9, scope: !3089)
!3849 = !DILocation(line: 335, column: 2, scope: !3089)
!3850 = !DILocation(line: 336, column: 1, scope: !3089)
!3851 = !DILocalVariable(name: "base", scope: !3126, file: !3, line: 345, type: !144)
!3852 = !DILocation(line: 345, column: 8, scope: !3126)
!3853 = !DILocalVariable(name: "len", scope: !3126, file: !3, line: 346, type: !7)
!3854 = !DILocation(line: 346, column: 15, scope: !3126)
!3855 = !DILocalVariable(name: "err", scope: !3126, file: !3, line: 347, type: !212)
!3856 = !DILocation(line: 347, column: 6, scope: !3126)
!3857 = !DILocation(line: 349, column: 7, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3126, file: !3, line: 349, column: 6)
!3859 = !DILocation(line: 349, column: 6, scope: !3126)
!3860 = !DILocation(line: 350, column: 3, scope: !3858)
!3861 = !DILocation(line: 352, column: 2, scope: !3126)
!3862 = !DILocation(line: 354, column: 13, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3126, file: !3, line: 354, column: 6)
!3864 = !DILocation(line: 354, column: 7, scope: !3863)
!3865 = !DILocation(line: 354, column: 6, scope: !3126)
!3866 = !DILocalVariable(name: "__mptr", scope: !3867, file: !3, line: 355, type: !144)
!3867 = distinct !DILexicalBlock(scope: !3868, file: !3, line: 355, column: 15)
!3868 = distinct !DILexicalBlock(scope: !3863, file: !3, line: 354, column: 18)
!3869 = !DILocation(line: 355, column: 15, scope: !3867)
!3870 = !DILocation(line: 355, column: 15, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 355, column: 15)
!3872 = !DILocation(line: 355, column: 13, scope: !3868)
!3873 = !DILocation(line: 357, column: 13, scope: !3868)
!3874 = !DILocation(line: 358, column: 17, scope: !3868)
!3875 = !DILocation(line: 359, column: 2, scope: !3868)
!3876 = !DILocation(line: 361, column: 12, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3126, file: !3, line: 361, column: 6)
!3878 = !DILocation(line: 361, column: 17, scope: !3877)
!3879 = !DILocation(line: 361, column: 23, scope: !3877)
!3880 = !DILocation(line: 361, column: 6, scope: !3126)
!3881 = !DILocation(line: 362, column: 3, scope: !3877)
!3882 = !DILocation(line: 364, column: 2, scope: !3126)
!3883 = !DILocation(line: 364, column: 15, scope: !3126)
!3884 = !DILocation(line: 364, column: 27, scope: !3126)
!3885 = !DILocation(line: 364, column: 32, scope: !3126)
!3886 = !DILocation(line: 364, column: 19, scope: !3126)
!3887 = !DILocation(line: 365, column: 13, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3889, file: !3, line: 365, column: 7)
!3889 = distinct !DILexicalBlock(scope: !3126, file: !3, line: 364, column: 42)
!3890 = !DILocation(line: 365, column: 17, scope: !3888)
!3891 = !DILocation(line: 365, column: 7, scope: !3889)
!3892 = !DILocation(line: 366, column: 18, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3888, file: !3, line: 365, column: 22)
!3894 = !DILocation(line: 366, column: 23, scope: !3893)
!3895 = !DILocation(line: 366, column: 11, scope: !3893)
!3896 = !DILocation(line: 366, column: 9, scope: !3893)
!3897 = !DILocation(line: 367, column: 8, scope: !3893)
!3898 = !DILocation(line: 368, column: 3, scope: !3893)
!3899 = !DILocation(line: 369, column: 17, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3888, file: !3, line: 368, column: 10)
!3901 = !DILocation(line: 369, column: 22, scope: !3900)
!3902 = !DILocation(line: 369, column: 32, scope: !3900)
!3903 = !DILocation(line: 369, column: 11, scope: !3900)
!3904 = !DILocation(line: 369, column: 37, scope: !3900)
!3905 = !DILocation(line: 369, column: 9, scope: !3900)
!3906 = !DILocation(line: 370, column: 16, scope: !3900)
!3907 = !DILocation(line: 370, column: 21, scope: !3900)
!3908 = !DILocation(line: 370, column: 31, scope: !3900)
!3909 = !DILocation(line: 370, column: 10, scope: !3900)
!3910 = !DILocation(line: 370, column: 36, scope: !3900)
!3911 = !DILocation(line: 370, column: 8, scope: !3900)
!3912 = !DILocation(line: 372, column: 18, scope: !3889)
!3913 = !DILocation(line: 372, column: 31, scope: !3889)
!3914 = !DILocation(line: 372, column: 23, scope: !3889)
!3915 = !DILocation(line: 372, column: 40, scope: !3889)
!3916 = !DILocation(line: 372, column: 52, scope: !3889)
!3917 = !DILocation(line: 372, column: 44, scope: !3889)
!3918 = !DILocation(line: 372, column: 9, scope: !3889)
!3919 = !DILocation(line: 372, column: 7, scope: !3889)
!3920 = !DILocation(line: 373, column: 7, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3889, file: !3, line: 373, column: 7)
!3922 = !DILocation(line: 373, column: 11, scope: !3921)
!3923 = !DILocation(line: 373, column: 7, scope: !3889)
!3924 = !DILocation(line: 374, column: 4, scope: !3921)
!3925 = !DILocation(line: 375, column: 20, scope: !3889)
!3926 = !DILocation(line: 375, column: 17, scope: !3889)
!3927 = !DILocation(line: 376, column: 13, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3889, file: !3, line: 376, column: 7)
!3929 = !DILocation(line: 376, column: 24, scope: !3928)
!3930 = !DILocation(line: 376, column: 21, scope: !3928)
!3931 = !DILocation(line: 376, column: 7, scope: !3889)
!3932 = !DILocation(line: 377, column: 4, scope: !3928)
!3933 = !DILocation(line: 379, column: 12, scope: !3889)
!3934 = !DILocation(line: 380, column: 17, scope: !3889)
!3935 = distinct !{!3935, !3882, !3936}
!3936 = !DILocation(line: 381, column: 2, scope: !3126)
!3937 = !DILocation(line: 383, column: 18, scope: !3126)
!3938 = !DILocation(line: 383, column: 23, scope: !3126)
!3939 = !DILocation(line: 383, column: 2, scope: !3126)
!3940 = !DILocation(line: 384, column: 8, scope: !3126)
!3941 = !DILocation(line: 384, column: 13, scope: !3126)
!3942 = !DILocation(line: 384, column: 19, scope: !3126)
!3943 = !DILocation(line: 385, column: 23, scope: !3126)
!3944 = !DILocation(line: 385, column: 28, scope: !3126)
!3945 = !DILocation(line: 385, column: 2, scope: !3126)
!3946 = !DILocation(line: 386, column: 12, scope: !3126)
!3947 = !DILocation(line: 386, column: 2, scope: !3126)
!3948 = !DILabel(scope: !3126, name: "out", file: !3, line: 388)
!3949 = !DILocation(line: 388, column: 2, scope: !3126)
!3950 = !DILocation(line: 389, column: 2, scope: !3126)
!3951 = !DILocation(line: 391, column: 2, scope: !3126)
!3952 = !DILabel(scope: !3126, name: "out_err", file: !3, line: 393)
!3953 = !DILocation(line: 393, column: 2, scope: !3126)
!3954 = !DILocation(line: 394, column: 8, scope: !3126)
!3955 = !DILocation(line: 394, column: 13, scope: !3126)
!3956 = !DILocation(line: 394, column: 17, scope: !3126)
!3957 = !DILocation(line: 394, column: 22, scope: !3126)
!3958 = !DILocation(line: 395, column: 19, scope: !3126)
!3959 = !DILocation(line: 395, column: 8, scope: !3126)
!3960 = !DILocation(line: 395, column: 13, scope: !3126)
!3961 = !DILocation(line: 395, column: 17, scope: !3126)
!3962 = !DILocation(line: 396, column: 18, scope: !3126)
!3963 = !DILocation(line: 396, column: 23, scope: !3126)
!3964 = !DILocation(line: 396, column: 2, scope: !3126)
!3965 = !DILocation(line: 397, column: 12, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3126, file: !3, line: 397, column: 6)
!3967 = !DILocation(line: 397, column: 17, scope: !3966)
!3968 = !DILocation(line: 397, column: 23, scope: !3966)
!3969 = !DILocation(line: 397, column: 6, scope: !3126)
!3970 = !DILocation(line: 398, column: 15, scope: !3966)
!3971 = !DILocation(line: 398, column: 9, scope: !3966)
!3972 = !DILocation(line: 398, column: 3, scope: !3966)
!3973 = !DILocation(line: 401, column: 3, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3966, file: !3, line: 399, column: 7)
!3975 = !{i32 -2141539578}
!3976 = !DILocation(line: 402, column: 9, scope: !3974)
!3977 = !DILocation(line: 402, column: 14, scope: !3974)
!3978 = !DILocation(line: 402, column: 20, scope: !3974)
!3979 = !DILocation(line: 403, column: 3, scope: !3974)
!3980 = !DILocation(line: 406, column: 2, scope: !3126)
!3981 = !DILocation(line: 408, column: 12, scope: !3126)
!3982 = !DILocation(line: 410, column: 9, scope: !3126)
!3983 = !DILocation(line: 410, column: 2, scope: !3126)
!3984 = !DILocation(line: 411, column: 1, scope: !3126)
!3985 = distinct !DISubprogram(name: "xb_data_to_read", scope: !3, file: !3, line: 160, type: !3090, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3986 = !DILocalVariable(name: "intf", scope: !3985, file: !3, line: 162, type: !3140)
!3987 = !DILocation(line: 162, column: 36, scope: !3985)
!3988 = !DILocation(line: 162, column: 43, scope: !3985)
!3989 = !DILocation(line: 163, column: 10, scope: !3985)
!3990 = !DILocation(line: 163, column: 16, scope: !3985)
!3991 = !DILocation(line: 163, column: 28, scope: !3985)
!3992 = !DILocation(line: 163, column: 34, scope: !3985)
!3993 = !DILocation(line: 163, column: 25, scope: !3985)
!3994 = !DILocation(line: 163, column: 2, scope: !3985)
!3995 = distinct !DISubprogram(name: "xb_data_to_write", scope: !3, file: !3, line: 99, type: !3090, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3996 = !DILocalVariable(name: "intf", scope: !3995, file: !3, line: 101, type: !3140)
!3997 = !DILocation(line: 101, column: 36, scope: !3995)
!3998 = !DILocation(line: 101, column: 43, scope: !3995)
!3999 = !DILocation(line: 103, column: 10, scope: !3995)
!4000 = !DILocation(line: 103, column: 16, scope: !3995)
!4001 = !DILocation(line: 103, column: 27, scope: !3995)
!4002 = !DILocation(line: 103, column: 33, scope: !3995)
!4003 = !DILocation(line: 103, column: 25, scope: !3995)
!4004 = !DILocation(line: 103, column: 43, scope: !3995)
!4005 = !DILocation(line: 103, column: 65, scope: !3995)
!4006 = !DILocation(line: 104, column: 4, scope: !3995)
!4007 = !DILocation(line: 104, column: 3, scope: !3995)
!4008 = !DILocation(line: 0, scope: !3995)
!4009 = !DILocation(line: 103, column: 2, scope: !3995)
!4010 = distinct !DISubprogram(name: "list_empty", scope: !4011, file: !4011, line: 280, type: !4012, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4011 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!212, !4014}
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!4016 = !DILocalVariable(name: "head", arg: 1, scope: !4010, file: !4011, line: 280, type: !4014)
!4017 = !DILocation(line: 280, column: 54, scope: !4010)
!4018 = !DILocation(line: 282, column: 9, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !4010, file: !4011, line: 282, column: 9)
!4020 = !DILocation(line: 282, column: 9, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4019, file: !4011, line: 282, column: 9)
!4022 = !DILocation(line: 282, column: 34, scope: !4010)
!4023 = !DILocation(line: 282, column: 31, scope: !4010)
!4024 = !DILocation(line: 282, column: 2, scope: !4010)
!4025 = distinct !DISubprogram(name: "xb_read", scope: !3, file: !3, line: 166, type: !4026, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{!212, !144, !7}
!4028 = !DILocalVariable(name: "data", arg: 1, scope: !4025, file: !3, line: 166, type: !144)
!4029 = !DILocation(line: 166, column: 26, scope: !4025)
!4030 = !DILocalVariable(name: "len", arg: 2, scope: !4025, file: !3, line: 166, type: !7)
!4031 = !DILocation(line: 166, column: 45, scope: !4025)
!4032 = !DILocalVariable(name: "intf", scope: !4025, file: !3, line: 168, type: !3140)
!4033 = !DILocation(line: 168, column: 36, scope: !4025)
!4034 = !DILocation(line: 168, column: 43, scope: !4025)
!4035 = !DILocalVariable(name: "cons", scope: !4025, file: !3, line: 169, type: !3149)
!4036 = !DILocation(line: 169, column: 20, scope: !4025)
!4037 = !DILocalVariable(name: "prod", scope: !4025, file: !3, line: 169, type: !3149)
!4038 = !DILocation(line: 169, column: 26, scope: !4025)
!4039 = !DILocalVariable(name: "bytes", scope: !4025, file: !3, line: 170, type: !7)
!4040 = !DILocation(line: 170, column: 15, scope: !4025)
!4041 = !DILocation(line: 172, column: 2, scope: !4025)
!4042 = !DILocation(line: 172, column: 9, scope: !4025)
!4043 = !DILocation(line: 172, column: 13, scope: !4025)
!4044 = !DILocalVariable(name: "avail", scope: !4045, file: !3, line: 173, type: !7)
!4045 = distinct !DILexicalBlock(scope: !4025, file: !3, line: 172, column: 19)
!4046 = !DILocation(line: 173, column: 16, scope: !4045)
!4047 = !DILocalVariable(name: "src", scope: !4045, file: !3, line: 174, type: !650)
!4048 = !DILocation(line: 174, column: 15, scope: !4045)
!4049 = !DILocation(line: 177, column: 10, scope: !4045)
!4050 = !DILocation(line: 177, column: 16, scope: !4045)
!4051 = !DILocation(line: 177, column: 8, scope: !4045)
!4052 = !DILocation(line: 178, column: 10, scope: !4045)
!4053 = !DILocation(line: 178, column: 16, scope: !4045)
!4054 = !DILocation(line: 178, column: 8, scope: !4045)
!4055 = !DILocation(line: 179, column: 7, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4045, file: !3, line: 179, column: 7)
!4057 = !DILocation(line: 179, column: 15, scope: !4056)
!4058 = !DILocation(line: 179, column: 12, scope: !4056)
!4059 = !DILocation(line: 179, column: 7, scope: !4045)
!4060 = !DILocation(line: 180, column: 11, scope: !4056)
!4061 = !DILocation(line: 180, column: 4, scope: !4056)
!4062 = !DILocation(line: 182, column: 22, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4045, file: !3, line: 182, column: 7)
!4064 = !DILocation(line: 182, column: 28, scope: !4063)
!4065 = !DILocation(line: 182, column: 8, scope: !4063)
!4066 = !DILocation(line: 182, column: 7, scope: !4045)
!4067 = !DILocation(line: 183, column: 21, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4063, file: !3, line: 182, column: 35)
!4069 = !DILocation(line: 183, column: 27, scope: !4068)
!4070 = !DILocation(line: 183, column: 36, scope: !4068)
!4071 = !DILocation(line: 183, column: 4, scope: !4068)
!4072 = !DILocation(line: 183, column: 10, scope: !4068)
!4073 = !DILocation(line: 183, column: 19, scope: !4068)
!4074 = !DILocation(line: 184, column: 4, scope: !4068)
!4075 = !DILocation(line: 187, column: 25, scope: !4045)
!4076 = !DILocation(line: 187, column: 31, scope: !4045)
!4077 = !DILocation(line: 187, column: 37, scope: !4045)
!4078 = !DILocation(line: 187, column: 43, scope: !4045)
!4079 = !DILocation(line: 187, column: 9, scope: !4045)
!4080 = !DILocation(line: 187, column: 7, scope: !4045)
!4081 = !DILocation(line: 188, column: 7, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4045, file: !3, line: 188, column: 7)
!4083 = !DILocation(line: 188, column: 13, scope: !4082)
!4084 = !DILocation(line: 188, column: 7, scope: !4045)
!4085 = !DILocation(line: 189, column: 4, scope: !4082)
!4086 = distinct !{!4086, !4041, !4087}
!4087 = !DILocation(line: 208, column: 2, scope: !4025)
!4088 = !DILocation(line: 190, column: 7, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4045, file: !3, line: 190, column: 7)
!4090 = !DILocation(line: 190, column: 15, scope: !4089)
!4091 = !DILocation(line: 190, column: 13, scope: !4089)
!4092 = !DILocation(line: 190, column: 7, scope: !4045)
!4093 = !DILocation(line: 191, column: 12, scope: !4089)
!4094 = !DILocation(line: 191, column: 10, scope: !4089)
!4095 = !DILocation(line: 191, column: 4, scope: !4089)
!4096 = !DILocation(line: 194, column: 3, scope: !4045)
!4097 = !{i32 -2141545607}
!4098 = !DILocation(line: 196, column: 10, scope: !4045)
!4099 = !DILocation(line: 196, column: 16, scope: !4045)
!4100 = !DILocation(line: 196, column: 21, scope: !4045)
!4101 = !DILocation(line: 196, column: 3, scope: !4045)
!4102 = !DILocation(line: 197, column: 11, scope: !4045)
!4103 = !DILocation(line: 197, column: 8, scope: !4045)
!4104 = !DILocation(line: 198, column: 10, scope: !4045)
!4105 = !DILocation(line: 198, column: 7, scope: !4045)
!4106 = !DILocation(line: 199, column: 12, scope: !4045)
!4107 = !DILocation(line: 199, column: 9, scope: !4045)
!4108 = !DILocation(line: 202, column: 3, scope: !4045)
!4109 = !{i32 -2141545566}
!4110 = !DILocation(line: 203, column: 21, scope: !4045)
!4111 = !DILocation(line: 203, column: 3, scope: !4045)
!4112 = !DILocation(line: 203, column: 9, scope: !4045)
!4113 = !DILocation(line: 203, column: 18, scope: !4045)
!4114 = !DILocation(line: 206, column: 7, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4045, file: !3, line: 206, column: 7)
!4116 = !DILocation(line: 206, column: 13, scope: !4115)
!4117 = !DILocation(line: 206, column: 24, scope: !4115)
!4118 = !DILocation(line: 206, column: 22, scope: !4115)
!4119 = !DILocation(line: 206, column: 29, scope: !4115)
!4120 = !DILocation(line: 206, column: 7, scope: !4045)
!4121 = !DILocation(line: 207, column: 29, scope: !4115)
!4122 = !DILocation(line: 207, column: 4, scope: !4115)
!4123 = !DILocation(line: 210, column: 9, scope: !4025)
!4124 = !DILocation(line: 210, column: 2, scope: !4025)
!4125 = !DILocation(line: 211, column: 1, scope: !4025)
!4126 = distinct !DISubprogram(name: "list_del", scope: !4011, file: !4011, line: 144, type: !4127, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{null, !148}
!4129 = !DILocalVariable(name: "entry", arg: 1, scope: !4126, file: !4011, line: 144, type: !148)
!4130 = !DILocation(line: 144, column: 47, scope: !4126)
!4131 = !DILocation(line: 146, column: 19, scope: !4126)
!4132 = !DILocation(line: 146, column: 2, scope: !4126)
!4133 = !DILocation(line: 147, column: 2, scope: !4126)
!4134 = !DILocation(line: 147, column: 9, scope: !4126)
!4135 = !DILocation(line: 147, column: 14, scope: !4126)
!4136 = !DILocation(line: 148, column: 2, scope: !4126)
!4137 = !DILocation(line: 148, column: 9, scope: !4126)
!4138 = !DILocation(line: 148, column: 14, scope: !4126)
!4139 = !DILocation(line: 149, column: 1, scope: !4126)
!4140 = distinct !DISubprogram(name: "check_indexes", scope: !3, file: !3, line: 74, type: !4141, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!212, !3149, !3149}
!4143 = !DILocalVariable(name: "cons", arg: 1, scope: !4140, file: !3, line: 74, type: !3149)
!4144 = !DILocation(line: 74, column: 44, scope: !4140)
!4145 = !DILocalVariable(name: "prod", arg: 2, scope: !4140, file: !3, line: 74, type: !3149)
!4146 = !DILocation(line: 74, column: 68, scope: !4140)
!4147 = !DILocation(line: 76, column: 11, scope: !4140)
!4148 = !DILocation(line: 76, column: 18, scope: !4140)
!4149 = !DILocation(line: 76, column: 16, scope: !4140)
!4150 = !DILocation(line: 76, column: 24, scope: !4140)
!4151 = !DILocation(line: 76, column: 2, scope: !4140)
!4152 = distinct !DISubprogram(name: "get_input_chunk", scope: !3, file: !3, line: 89, type: !4153, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!2897, !3149, !3149, !650, !4155}
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!4156 = !DILocalVariable(name: "cons", arg: 1, scope: !4152, file: !3, line: 89, type: !3149)
!4157 = !DILocation(line: 89, column: 54, scope: !4152)
!4158 = !DILocalVariable(name: "prod", arg: 2, scope: !4152, file: !3, line: 90, type: !3149)
!4159 = !DILocation(line: 90, column: 26, scope: !4152)
!4160 = !DILocalVariable(name: "buf", arg: 3, scope: !4152, file: !3, line: 91, type: !650)
!4161 = !DILocation(line: 91, column: 20, scope: !4152)
!4162 = !DILocalVariable(name: "len", arg: 4, scope: !4152, file: !3, line: 91, type: !4155)
!4163 = !DILocation(line: 91, column: 35, scope: !4152)
!4164 = !DILocation(line: 93, column: 30, scope: !4152)
!4165 = !DILocation(line: 93, column: 28, scope: !4152)
!4166 = !DILocation(line: 93, column: 3, scope: !4152)
!4167 = !DILocation(line: 93, column: 7, scope: !4152)
!4168 = !DILocation(line: 94, column: 7, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4152, file: !3, line: 94, column: 6)
!4170 = !DILocation(line: 94, column: 14, scope: !4169)
!4171 = !DILocation(line: 94, column: 12, scope: !4169)
!4172 = !DILocation(line: 94, column: 23, scope: !4169)
!4173 = !DILocation(line: 94, column: 22, scope: !4169)
!4174 = !DILocation(line: 94, column: 20, scope: !4169)
!4175 = !DILocation(line: 94, column: 6, scope: !4152)
!4176 = !DILocation(line: 95, column: 10, scope: !4169)
!4177 = !DILocation(line: 95, column: 17, scope: !4169)
!4178 = !DILocation(line: 95, column: 15, scope: !4169)
!4179 = !DILocation(line: 95, column: 4, scope: !4169)
!4180 = !DILocation(line: 95, column: 8, scope: !4169)
!4181 = !DILocation(line: 95, column: 3, scope: !4169)
!4182 = !DILocation(line: 96, column: 9, scope: !4152)
!4183 = !DILocation(line: 96, column: 15, scope: !4152)
!4184 = !DILocation(line: 96, column: 13, scope: !4152)
!4185 = !DILocation(line: 96, column: 2, scope: !4152)
!4186 = distinct !DISubprogram(name: "notify_remote_via_evtchn", scope: !4187, file: !4187, line: 78, type: !4188, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4187 = !DIFile(filename: "./include/xen/events.h", directory: "/home/lizy2001/genbc/linux")
!4188 = !DISubroutineType(types: !4189)
!4189 = !{null, !4190}
!4190 = !DIDerivedType(tag: DW_TAG_typedef, name: "evtchn_port_t", file: !4191, line: 15, baseType: !185)
!4191 = !DIFile(filename: "./include/xen/interface/event_channel.h", directory: "/home/lizy2001/genbc/linux")
!4192 = !DILocalVariable(name: "port", arg: 1, scope: !4186, file: !4187, line: 78, type: !4190)
!4193 = !DILocation(line: 78, column: 59, scope: !4186)
!4194 = !DILocalVariable(name: "send", scope: !4186, file: !4187, line: 80, type: !4195)
!4195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evtchn_send", file: !4191, line: 114, size: 32, elements: !4196)
!4196 = !{!4197}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4195, file: !4191, line: 116, baseType: !4190, size: 32)
!4198 = !DILocation(line: 80, column: 21, scope: !4186)
!4199 = !DILocation(line: 80, column: 28, scope: !4186)
!4200 = !DILocation(line: 80, column: 38, scope: !4186)
!4201 = !DILocation(line: 81, column: 51, scope: !4186)
!4202 = !DILocation(line: 81, column: 8, scope: !4186)
!4203 = !DILocation(line: 82, column: 1, scope: !4186)
!4204 = distinct !DISubprogram(name: "HYPERVISOR_event_channel_op", scope: !4205, file: !4205, line: 356, type: !4206, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4205 = !DIFile(filename: "./arch/x86/include/asm/xen/hypercall.h", directory: "/home/lizy2001/genbc/linux")
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!212, !212, !144}
!4208 = !DILocalVariable(name: "cmd", arg: 1, scope: !4204, file: !4205, line: 356, type: !212)
!4209 = !DILocation(line: 356, column: 33, scope: !4204)
!4210 = !DILocalVariable(name: "arg", arg: 2, scope: !4204, file: !4205, line: 356, type: !144)
!4211 = !DILocation(line: 356, column: 44, scope: !4204)
!4212 = !DILocalVariable(name: "__res", scope: !4213, file: !4205, line: 358, type: !210)
!4213 = distinct !DILexicalBlock(scope: !4204, file: !4205, line: 358, column: 9)
!4214 = !DILocation(line: 358, column: 9, scope: !4213)
!4215 = !DILocalVariable(name: "__arg1", scope: !4213, file: !4205, line: 358, type: !210)
!4216 = !DILocalVariable(name: "__arg2", scope: !4213, file: !4205, line: 358, type: !210)
!4217 = !DILocalVariable(name: "__arg3", scope: !4213, file: !4205, line: 358, type: !210)
!4218 = !DILocalVariable(name: "__arg4", scope: !4213, file: !4205, line: 358, type: !210)
!4219 = !DILocalVariable(name: "__arg5", scope: !4213, file: !4205, line: 358, type: !210)
!4220 = !{i32 -2141887518}
!4221 = !DILocation(line: 358, column: 2, scope: !4204)
!4222 = distinct !DISubprogram(name: "get_order", scope: !4223, file: !4223, line: 29, type: !4224, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4223 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!212, !210}
!4226 = !DILocalVariable(name: "x", arg: 1, scope: !4227, file: !4228, line: 366, type: !306)
!4227 = distinct !DISubprogram(name: "fls64", scope: !4228, file: !4228, line: 366, type: !4229, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4228 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!212, !306}
!4231 = !DILocation(line: 366, column: 40, scope: !4227, inlinedAt: !4232)
!4232 = distinct !DILocation(line: 46, column: 9, scope: !4222)
!4233 = !DILocalVariable(name: "bitpos", scope: !4227, file: !4228, line: 368, type: !212)
!4234 = !DILocation(line: 368, column: 6, scope: !4227, inlinedAt: !4232)
!4235 = !DILocalVariable(name: "size", arg: 1, scope: !4222, file: !4223, line: 29, type: !210)
!4236 = !DILocation(line: 29, column: 63, scope: !4222)
!4237 = !DILocation(line: 31, column: 27, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4222, file: !4223, line: 31, column: 6)
!4239 = !DILocation(line: 31, column: 6, scope: !4238)
!4240 = !DILocation(line: 31, column: 6, scope: !4222)
!4241 = !DILocation(line: 32, column: 8, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4243, file: !4223, line: 32, column: 7)
!4243 = distinct !DILexicalBlock(scope: !4238, file: !4223, line: 31, column: 34)
!4244 = !DILocation(line: 32, column: 7, scope: !4243)
!4245 = !DILocation(line: 33, column: 4, scope: !4242)
!4246 = !DILocation(line: 35, column: 7, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4243, file: !4223, line: 35, column: 7)
!4248 = !DILocation(line: 35, column: 12, scope: !4247)
!4249 = !DILocation(line: 35, column: 7, scope: !4243)
!4250 = !DILocation(line: 36, column: 4, scope: !4247)
!4251 = !DILocation(line: 38, column: 10, scope: !4243)
!4252 = !DILocation(line: 38, column: 28, scope: !4243)
!4253 = !DILocation(line: 38, column: 41, scope: !4243)
!4254 = !DILocation(line: 38, column: 3, scope: !4243)
!4255 = !DILocation(line: 41, column: 6, scope: !4222)
!4256 = !DILocation(line: 42, column: 7, scope: !4222)
!4257 = !DILocation(line: 46, column: 15, scope: !4222)
!4258 = !DILocation(line: 374, column: 2, scope: !4227, inlinedAt: !4232)
!4259 = !DILocation(line: 376, column: 14, scope: !4227, inlinedAt: !4232)
!4260 = !{i32 325094}
!4261 = !DILocation(line: 377, column: 9, scope: !4227, inlinedAt: !4232)
!4262 = !DILocation(line: 377, column: 16, scope: !4227, inlinedAt: !4232)
!4263 = !DILocation(line: 46, column: 2, scope: !4222)
!4264 = !DILocation(line: 48, column: 1, scope: !4222)
!4265 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4266, file: !4266, line: 30, type: !4267, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4266 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!212, !305}
!4269 = !DILocation(line: 366, column: 40, scope: !4227, inlinedAt: !4270)
!4270 = distinct !DILocation(line: 32, column: 9, scope: !4265)
!4271 = !DILocation(line: 368, column: 6, scope: !4227, inlinedAt: !4270)
!4272 = !DILocalVariable(name: "n", arg: 1, scope: !4265, file: !4266, line: 30, type: !305)
!4273 = !DILocation(line: 30, column: 21, scope: !4265)
!4274 = !DILocation(line: 32, column: 15, scope: !4265)
!4275 = !DILocation(line: 374, column: 2, scope: !4227, inlinedAt: !4270)
!4276 = !DILocation(line: 376, column: 14, scope: !4227, inlinedAt: !4270)
!4277 = !DILocation(line: 377, column: 9, scope: !4227, inlinedAt: !4270)
!4278 = !DILocation(line: 377, column: 16, scope: !4227, inlinedAt: !4270)
!4279 = !DILocation(line: 32, column: 18, scope: !4265)
!4280 = !DILocation(line: 32, column: 2, scope: !4265)
!4281 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4282, file: !4282, line: 137, type: !4283, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4282 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!144, !2103, !2897, !206, !154}
!4285 = !DILocalVariable(name: "s", arg: 1, scope: !4281, file: !4282, line: 137, type: !2103)
!4286 = !DILocation(line: 137, column: 54, scope: !4281)
!4287 = !DILocalVariable(name: "object", arg: 2, scope: !4281, file: !4282, line: 137, type: !2897)
!4288 = !DILocation(line: 137, column: 69, scope: !4281)
!4289 = !DILocalVariable(name: "size", arg: 3, scope: !4281, file: !4282, line: 138, type: !206)
!4290 = !DILocation(line: 138, column: 12, scope: !4281)
!4291 = !DILocalVariable(name: "flags", arg: 4, scope: !4281, file: !4282, line: 138, type: !154)
!4292 = !DILocation(line: 138, column: 24, scope: !4281)
!4293 = !DILocation(line: 140, column: 17, scope: !4281)
!4294 = !DILocation(line: 140, column: 2, scope: !4281)
!4295 = distinct !DISubprogram(name: "__list_del_entry", scope: !4011, file: !4011, line: 130, type: !4127, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4296 = !DILocalVariable(name: "entry", arg: 1, scope: !4295, file: !4011, line: 130, type: !148)
!4297 = !DILocation(line: 130, column: 55, scope: !4295)
!4298 = !DILocation(line: 132, column: 30, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4295, file: !4011, line: 132, column: 6)
!4300 = !DILocation(line: 132, column: 7, scope: !4299)
!4301 = !DILocation(line: 132, column: 6, scope: !4295)
!4302 = !DILocation(line: 133, column: 3, scope: !4299)
!4303 = !DILocation(line: 135, column: 13, scope: !4295)
!4304 = !DILocation(line: 135, column: 20, scope: !4295)
!4305 = !DILocation(line: 135, column: 26, scope: !4295)
!4306 = !DILocation(line: 135, column: 33, scope: !4295)
!4307 = !DILocation(line: 135, column: 2, scope: !4295)
!4308 = !DILocation(line: 136, column: 1, scope: !4295)
!4309 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4011, file: !4011, line: 51, type: !4310, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!216, !148}
!4312 = !DILocalVariable(name: "entry", arg: 1, scope: !4309, file: !4011, line: 51, type: !148)
!4313 = !DILocation(line: 51, column: 61, scope: !4309)
!4314 = !DILocation(line: 53, column: 2, scope: !4309)
!4315 = distinct !DISubprogram(name: "__list_del", scope: !4011, file: !4011, line: 110, type: !4316, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{null, !148, !148}
!4318 = !DILocalVariable(name: "prev", arg: 1, scope: !4315, file: !4011, line: 110, type: !148)
!4319 = !DILocation(line: 110, column: 50, scope: !4315)
!4320 = !DILocalVariable(name: "next", arg: 2, scope: !4315, file: !4011, line: 110, type: !148)
!4321 = !DILocation(line: 110, column: 75, scope: !4315)
!4322 = !DILocation(line: 112, column: 15, scope: !4315)
!4323 = !DILocation(line: 112, column: 2, scope: !4315)
!4324 = !DILocation(line: 112, column: 8, scope: !4315)
!4325 = !DILocation(line: 112, column: 13, scope: !4315)
!4326 = !DILocation(line: 113, column: 2, scope: !4315)
!4327 = !DILocation(line: 113, column: 2, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4315, file: !4011, line: 113, column: 2)
!4329 = !DILocation(line: 113, column: 2, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4328, file: !4011, line: 113, column: 2)
!4331 = !DILocation(line: 113, column: 2, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4328, file: !4011, line: 113, column: 2)
!4333 = !DILocation(line: 114, column: 1, scope: !4315)
!4334 = distinct !DISubprogram(name: "xb_write", scope: !3, file: !3, line: 114, type: !4335, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!212, !2897, !7}
!4337 = !DILocalVariable(name: "data", arg: 1, scope: !4334, file: !3, line: 114, type: !2897)
!4338 = !DILocation(line: 114, column: 33, scope: !4334)
!4339 = !DILocalVariable(name: "len", arg: 2, scope: !4334, file: !3, line: 114, type: !7)
!4340 = !DILocation(line: 114, column: 52, scope: !4334)
!4341 = !DILocalVariable(name: "intf", scope: !4334, file: !3, line: 116, type: !3140)
!4342 = !DILocation(line: 116, column: 36, scope: !4334)
!4343 = !DILocation(line: 116, column: 43, scope: !4334)
!4344 = !DILocalVariable(name: "cons", scope: !4334, file: !3, line: 117, type: !3149)
!4345 = !DILocation(line: 117, column: 20, scope: !4334)
!4346 = !DILocalVariable(name: "prod", scope: !4334, file: !3, line: 117, type: !3149)
!4347 = !DILocation(line: 117, column: 26, scope: !4334)
!4348 = !DILocalVariable(name: "bytes", scope: !4334, file: !3, line: 118, type: !7)
!4349 = !DILocation(line: 118, column: 15, scope: !4334)
!4350 = !DILocation(line: 120, column: 2, scope: !4334)
!4351 = !DILocation(line: 120, column: 9, scope: !4334)
!4352 = !DILocation(line: 120, column: 13, scope: !4334)
!4353 = !DILocalVariable(name: "dst", scope: !4354, file: !3, line: 121, type: !144)
!4354 = distinct !DILexicalBlock(scope: !4334, file: !3, line: 120, column: 19)
!4355 = !DILocation(line: 121, column: 9, scope: !4354)
!4356 = !DILocalVariable(name: "avail", scope: !4354, file: !3, line: 122, type: !7)
!4357 = !DILocation(line: 122, column: 16, scope: !4354)
!4358 = !DILocation(line: 125, column: 10, scope: !4354)
!4359 = !DILocation(line: 125, column: 16, scope: !4354)
!4360 = !DILocation(line: 125, column: 8, scope: !4354)
!4361 = !DILocation(line: 126, column: 10, scope: !4354)
!4362 = !DILocation(line: 126, column: 16, scope: !4354)
!4363 = !DILocation(line: 126, column: 8, scope: !4354)
!4364 = !DILocation(line: 127, column: 22, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4354, file: !3, line: 127, column: 7)
!4366 = !DILocation(line: 127, column: 28, scope: !4365)
!4367 = !DILocation(line: 127, column: 8, scope: !4365)
!4368 = !DILocation(line: 127, column: 7, scope: !4354)
!4369 = !DILocation(line: 128, column: 21, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4365, file: !3, line: 127, column: 35)
!4371 = !DILocation(line: 128, column: 27, scope: !4370)
!4372 = !DILocation(line: 128, column: 36, scope: !4370)
!4373 = !DILocation(line: 128, column: 4, scope: !4370)
!4374 = !DILocation(line: 128, column: 10, scope: !4370)
!4375 = !DILocation(line: 128, column: 19, scope: !4370)
!4376 = !DILocation(line: 129, column: 4, scope: !4370)
!4377 = !DILocation(line: 131, column: 8, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4354, file: !3, line: 131, column: 7)
!4379 = !DILocation(line: 131, column: 7, scope: !4354)
!4380 = !DILocation(line: 132, column: 11, scope: !4378)
!4381 = !DILocation(line: 132, column: 4, scope: !4378)
!4382 = !DILocation(line: 135, column: 3, scope: !4354)
!4383 = !{i32 -2141545768}
!4384 = !DILocation(line: 137, column: 26, scope: !4354)
!4385 = !DILocation(line: 137, column: 32, scope: !4354)
!4386 = !DILocation(line: 137, column: 38, scope: !4354)
!4387 = !DILocation(line: 137, column: 44, scope: !4354)
!4388 = !DILocation(line: 137, column: 9, scope: !4354)
!4389 = !DILocation(line: 137, column: 7, scope: !4354)
!4390 = !DILocation(line: 138, column: 7, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4354, file: !3, line: 138, column: 7)
!4392 = !DILocation(line: 138, column: 13, scope: !4391)
!4393 = !DILocation(line: 138, column: 7, scope: !4354)
!4394 = !DILocation(line: 139, column: 4, scope: !4391)
!4395 = distinct !{!4395, !4350, !4396}
!4396 = !DILocation(line: 155, column: 2, scope: !4334)
!4397 = !DILocation(line: 140, column: 7, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4354, file: !3, line: 140, column: 7)
!4399 = !DILocation(line: 140, column: 15, scope: !4398)
!4400 = !DILocation(line: 140, column: 13, scope: !4398)
!4401 = !DILocation(line: 140, column: 7, scope: !4354)
!4402 = !DILocation(line: 141, column: 12, scope: !4398)
!4403 = !DILocation(line: 141, column: 10, scope: !4398)
!4404 = !DILocation(line: 141, column: 4, scope: !4398)
!4405 = !DILocation(line: 143, column: 10, scope: !4354)
!4406 = !DILocation(line: 143, column: 15, scope: !4354)
!4407 = !DILocation(line: 143, column: 21, scope: !4354)
!4408 = !DILocation(line: 143, column: 3, scope: !4354)
!4409 = !DILocation(line: 144, column: 11, scope: !4354)
!4410 = !DILocation(line: 144, column: 8, scope: !4354)
!4411 = !DILocation(line: 145, column: 10, scope: !4354)
!4412 = !DILocation(line: 145, column: 7, scope: !4354)
!4413 = !DILocation(line: 146, column: 12, scope: !4354)
!4414 = !DILocation(line: 146, column: 9, scope: !4354)
!4415 = !DILocation(line: 149, column: 3, scope: !4354)
!4416 = !{i32 -2141545679}
!4417 = !DILocation(line: 150, column: 21, scope: !4354)
!4418 = !DILocation(line: 150, column: 3, scope: !4354)
!4419 = !DILocation(line: 150, column: 9, scope: !4354)
!4420 = !DILocation(line: 150, column: 18, scope: !4354)
!4421 = !DILocation(line: 153, column: 7, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4354, file: !3, line: 153, column: 7)
!4423 = !DILocation(line: 153, column: 15, scope: !4422)
!4424 = !DILocation(line: 153, column: 21, scope: !4422)
!4425 = !DILocation(line: 153, column: 12, scope: !4422)
!4426 = !DILocation(line: 153, column: 7, scope: !4354)
!4427 = !DILocation(line: 154, column: 29, scope: !4422)
!4428 = !DILocation(line: 154, column: 4, scope: !4422)
!4429 = !DILocation(line: 157, column: 9, scope: !4334)
!4430 = !DILocation(line: 157, column: 2, scope: !4334)
!4431 = !DILocation(line: 158, column: 1, scope: !4334)
!4432 = distinct !DISubprogram(name: "list_add_tail", scope: !4011, file: !4011, line: 98, type: !4316, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4433 = !DILocalVariable(name: "new", arg: 1, scope: !4432, file: !4011, line: 98, type: !148)
!4434 = !DILocation(line: 98, column: 52, scope: !4432)
!4435 = !DILocalVariable(name: "head", arg: 2, scope: !4432, file: !4011, line: 98, type: !148)
!4436 = !DILocation(line: 98, column: 75, scope: !4432)
!4437 = !DILocation(line: 100, column: 13, scope: !4432)
!4438 = !DILocation(line: 100, column: 18, scope: !4432)
!4439 = !DILocation(line: 100, column: 24, scope: !4432)
!4440 = !DILocation(line: 100, column: 30, scope: !4432)
!4441 = !DILocation(line: 100, column: 2, scope: !4432)
!4442 = !DILocation(line: 101, column: 1, scope: !4432)
!4443 = distinct !DISubprogram(name: "get_output_chunk", scope: !3, file: !3, line: 79, type: !4444, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{!144, !3149, !3149, !196, !4155}
!4446 = !DILocalVariable(name: "cons", arg: 1, scope: !4443, file: !3, line: 79, type: !3149)
!4447 = !DILocation(line: 79, column: 49, scope: !4443)
!4448 = !DILocalVariable(name: "prod", arg: 2, scope: !4443, file: !3, line: 80, type: !3149)
!4449 = !DILocation(line: 80, column: 28, scope: !4443)
!4450 = !DILocalVariable(name: "buf", arg: 3, scope: !4443, file: !3, line: 81, type: !196)
!4451 = !DILocation(line: 81, column: 16, scope: !4443)
!4452 = !DILocalVariable(name: "len", arg: 4, scope: !4443, file: !3, line: 81, type: !4155)
!4453 = !DILocation(line: 81, column: 31, scope: !4443)
!4454 = !DILocation(line: 83, column: 30, scope: !4443)
!4455 = !DILocation(line: 83, column: 28, scope: !4443)
!4456 = !DILocation(line: 83, column: 3, scope: !4443)
!4457 = !DILocation(line: 83, column: 7, scope: !4443)
!4458 = !DILocation(line: 84, column: 29, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4443, file: !3, line: 84, column: 6)
!4460 = !DILocation(line: 84, column: 36, scope: !4459)
!4461 = !DILocation(line: 84, column: 34, scope: !4459)
!4462 = !DILocation(line: 84, column: 26, scope: !4459)
!4463 = !DILocation(line: 84, column: 46, scope: !4459)
!4464 = !DILocation(line: 84, column: 45, scope: !4459)
!4465 = !DILocation(line: 84, column: 43, scope: !4459)
!4466 = !DILocation(line: 84, column: 6, scope: !4443)
!4467 = !DILocation(line: 85, column: 32, scope: !4459)
!4468 = !DILocation(line: 85, column: 39, scope: !4459)
!4469 = !DILocation(line: 85, column: 37, scope: !4459)
!4470 = !DILocation(line: 85, column: 29, scope: !4459)
!4471 = !DILocation(line: 85, column: 4, scope: !4459)
!4472 = !DILocation(line: 85, column: 8, scope: !4459)
!4473 = !DILocation(line: 85, column: 3, scope: !4459)
!4474 = !DILocation(line: 86, column: 9, scope: !4443)
!4475 = !DILocation(line: 86, column: 15, scope: !4443)
!4476 = !DILocation(line: 86, column: 13, scope: !4443)
!4477 = !DILocation(line: 86, column: 2, scope: !4443)
!4478 = distinct !DISubprogram(name: "__list_add", scope: !4011, file: !4011, line: 63, type: !4479, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4479 = !DISubroutineType(types: !4480)
!4480 = !{null, !148, !148, !148}
!4481 = !DILocalVariable(name: "new", arg: 1, scope: !4478, file: !4011, line: 63, type: !148)
!4482 = !DILocation(line: 63, column: 49, scope: !4478)
!4483 = !DILocalVariable(name: "prev", arg: 2, scope: !4478, file: !4011, line: 64, type: !148)
!4484 = !DILocation(line: 64, column: 28, scope: !4478)
!4485 = !DILocalVariable(name: "next", arg: 3, scope: !4478, file: !4011, line: 65, type: !148)
!4486 = !DILocation(line: 65, column: 28, scope: !4478)
!4487 = !DILocation(line: 67, column: 24, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4478, file: !4011, line: 67, column: 6)
!4489 = !DILocation(line: 67, column: 29, scope: !4488)
!4490 = !DILocation(line: 67, column: 35, scope: !4488)
!4491 = !DILocation(line: 67, column: 7, scope: !4488)
!4492 = !DILocation(line: 67, column: 6, scope: !4478)
!4493 = !DILocation(line: 68, column: 3, scope: !4488)
!4494 = !DILocation(line: 70, column: 15, scope: !4478)
!4495 = !DILocation(line: 70, column: 2, scope: !4478)
!4496 = !DILocation(line: 70, column: 8, scope: !4478)
!4497 = !DILocation(line: 70, column: 13, scope: !4478)
!4498 = !DILocation(line: 71, column: 14, scope: !4478)
!4499 = !DILocation(line: 71, column: 2, scope: !4478)
!4500 = !DILocation(line: 71, column: 7, scope: !4478)
!4501 = !DILocation(line: 71, column: 12, scope: !4478)
!4502 = !DILocation(line: 72, column: 14, scope: !4478)
!4503 = !DILocation(line: 72, column: 2, scope: !4478)
!4504 = !DILocation(line: 72, column: 7, scope: !4478)
!4505 = !DILocation(line: 72, column: 12, scope: !4478)
!4506 = !DILocation(line: 73, column: 2, scope: !4478)
!4507 = !DILocation(line: 73, column: 2, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4478, file: !4011, line: 73, column: 2)
!4509 = !DILocation(line: 73, column: 2, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4508, file: !4011, line: 73, column: 2)
!4511 = !DILocation(line: 73, column: 2, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4508, file: !4011, line: 73, column: 2)
!4513 = !DILocation(line: 74, column: 1, scope: !4478)
!4514 = distinct !DISubprogram(name: "__list_add_valid", scope: !4011, file: !4011, line: 45, type: !4515, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4515 = !DISubroutineType(types: !4516)
!4516 = !{!216, !148, !148, !148}
!4517 = !DILocalVariable(name: "new", arg: 1, scope: !4514, file: !4011, line: 45, type: !148)
!4518 = !DILocation(line: 45, column: 55, scope: !4514)
!4519 = !DILocalVariable(name: "prev", arg: 2, scope: !4514, file: !4011, line: 46, type: !148)
!4520 = !DILocation(line: 46, column: 23, scope: !4514)
!4521 = !DILocalVariable(name: "next", arg: 3, scope: !4514, file: !4011, line: 47, type: !148)
!4522 = !DILocation(line: 47, column: 23, scope: !4514)
!4523 = !DILocation(line: 49, column: 2, scope: !4514)
