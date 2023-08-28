; ModuleID = '../bcout/drivers/xen/xenbus/xenbus_xs.llvm.bc'
source_filename = "drivers/xen/xenbus/xenbus_xs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.kmem_cache = type opaque
%struct.lock_class_key = type {}
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.xsd_errors = type { i32, i8* }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.61, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.vm_operations_struct = type opaque
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
%struct.user_namespace = type opaque
%struct.file = type { %union.anon.1, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.31, %struct.list_head, %struct.list_head, %union.anon.32 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.module = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type opaque
%struct.page = type { i64, %union.anon.4, %union.anon.21, %struct.atomic_t, [8 x i8] }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.21 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.22, i32 }
%union.anon.22 = type { %struct.kuid_t }
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
%union.anon.31 = type { %struct.list_head }
%union.anon.32 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.23, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.24, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.25, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.28, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.23 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.24 = type { %struct.callback_head }
%union.anon.25 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.6 }
%union.anon.6 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i32, i64, i64, %union.anon.7, %union.anon.8 }
%union.anon.7 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.8 = type { i64 }
%struct.swap_info_struct = type opaque
%union.anon.28 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.26 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.26 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.42 }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.41 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.41 = type { %struct.callback_head }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.33, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.34, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.35, %union.anon.39, %struct.key_restriction* }
%union.anon.33 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.34 = type { i64 }
%union.anon.35 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.36, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.36 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.39 = type { %union.key_payload }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.47, %union.anon.48, i32 }
%struct.request_queue = type opaque
%union.anon.47 = type { %struct.list_head }
%union.anon.48 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.49 }
%struct.anon.49 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.53 }
%struct.anon.53 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.60, i32, [12 x i8] }
%union.anon.60 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.61 = type { %struct.callback_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.62, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.65 }
%union.anon.62 = type { %struct.anon.63 }
%struct.anon.63 = type { i64, i64 }
%union.anon.65 = type { [12 x i32] }
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
%struct.xb_req_data = type { %struct.list_head, %struct.wait_queue_head, %struct.xsd_sockmsg, i32, i32, i8*, %struct.kvec*, i32, i32, i32, i8, {}*, i8* }
%struct.xsd_sockmsg = type { i32, i32, i32, i32 }
%struct.kvec = type { i8*, i64 }
%struct.xenbus_transaction = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.xs_watch_event = type { %struct.list_head, i32, %struct.xenbus_watch*, i8*, i8*, [0 x i8] }
%struct.xenbus_watch = type { %struct.list_head, i8*, void (%struct.xenbus_watch*, i8*, i8*)* }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }

@xs_state_lock = internal global %struct.spinlock undef, align 1, !dbg !0
@xs_state_users = internal global i32 0, align 4, !dbg !2891
@.str = private unnamed_addr constant [7 x i8] c"ENOENT\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"drivers/xen/xenbus/xenbus_xs.c\00", align 1
@xs_suspend_active = internal global i32 0, align 4, !dbg !2893
@xs_state_exit_wq = internal global %struct.wait_queue_head { %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (%struct.wait_queue_head* @xs_state_exit_wq to %struct.list_head*), %struct.list_head* bitcast (%struct.wait_queue_head* @xs_state_exit_wq to %struct.list_head*) } }, align 8, !dbg !2897
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@watches_lock = internal global %struct.spinlock undef, align 1, !dbg !2926
@watch_events_lock = internal global %struct.spinlock undef, align 1, !dbg !2928
@watch_events = internal global %struct.list_head { %struct.list_head* @watch_events, %struct.list_head* @watch_events }, align 8, !dbg !2930
@watch_events_waitq = internal global %struct.wait_queue_head { %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (%struct.wait_queue_head* @watch_events_waitq to %struct.list_head*), %struct.list_head* bitcast (%struct.wait_queue_head* @watch_events_waitq to %struct.list_head*) } }, align 8, !dbg !2932
@.str.6 = private unnamed_addr constant [4 x i8] c"%lX\00", align 1
@xs_watch_rwsem = internal global %struct.rw_semaphore { %struct.atomic64_t zeroinitializer, %struct.atomic64_t zeroinitializer, %struct.raw_spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rw_semaphore* @xs_watch_rwsem to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rw_semaphore* @xs_watch_rwsem to i8*), i64 16) to %struct.list_head*) } }, align 8, !dbg !2934
@watches = internal global %struct.list_head { %struct.list_head* @watches, %struct.list_head* @watches }, align 8, !dbg !2936
@.str.7 = private unnamed_addr constant [42 x i8] c"\014xenbus: Failed to release watch %s: %i\0A\00", align 1
@xenwatch_pid = internal global i32 0, align 4, !dbg !2895
@xenwatch_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @xenwatch_mutex to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @xenwatch_mutex to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !2938
@xs_response_mutex = external dso_local global %struct.mutex, align 8
@xs_reboot_nb = internal global %struct.notifier_block { i32 (%struct.notifier_block*, i64, i8*)* @xs_reboot_notify, %struct.notifier_block* null, i32 0 }, align 8, !dbg !2940
@.str.8 = private unnamed_addr constant [9 x i8] c"xenwatch\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.9 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@xs_send.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2899
@.str.10 = private unnamed_addr constant [9 x i8] c"&req->wq\00", align 1
@xb_write_mutex = external dso_local global %struct.mutex, align 8
@xb_write_list = external dso_local global %struct.list_head, align 8
@xb_waitq = external dso_local global %struct.wait_queue_head, align 8
@xs_state_enter_wq = internal global %struct.wait_queue_head { %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (%struct.wait_queue_head* @xs_state_enter_wq to %struct.list_head*), %struct.list_head* bitcast (%struct.wait_queue_head* @xs_state_enter_wq to %struct.list_head*) } }, align 8, !dbg !2905
@xs_request_id = internal global i32 0, align 4, !dbg !2907
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@xs_talkv._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock undef, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !2909
@__func__.xs_talkv = private unnamed_addr constant [9 x i8] c"xs_talkv\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"\014xenbus: unexpected type [%d], expected [%d]\0A\00", align 1
@xen_store_domain_type = external dso_local global i32, align 4
@system_state = external dso_local global i32, align 4
@xsd_errors = internal global [14 x %struct.xsd_errors] [%struct.xsd_errors { i32 22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0) }, %struct.xsd_errors { i32 13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0) }, %struct.xsd_errors { i32 17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0) }, %struct.xsd_errors { i32 21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0) }, %struct.xsd_errors { i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0) }, %struct.xsd_errors { i32 12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0) }, %struct.xsd_errors { i32 28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0) }, %struct.xsd_errors { i32 5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0) }, %struct.xsd_errors { i32 39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0) }, %struct.xsd_errors { i32 38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0) }, %struct.xsd_errors { i32 30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0) }, %struct.xsd_errors { i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0) }, %struct.xsd_errors { i32 11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0) }, %struct.xsd_errors { i32 106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0) }], align 16, !dbg !2917
@.str.14 = private unnamed_addr constant [44 x i8] c"\014xenbus: xen store gave: unknown error %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"EINVAL\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"EACCES\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"EEXIST\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"EISDIR\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"ENOMEM\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"ENOSPC\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"EIO\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"ENOTEMPTY\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"ENOSYS\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"EROFS\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"EBUSY\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"EAGAIN\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"EISCONN\00", align 1
@current_task = external dso_local global %struct.task_struct*, section ".data", align 8
@xb_dev_generation_id = external dso_local global i32, align 4
@xs_reply_list = external dso_local global %struct.list_head, align 8
@xen_domain_type = external dso_local global i32, align 4
@xen_start_flags = external dso_local global i32, align 4
@.str.28 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"platform-feature-xs_reset_watches\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"\014xenbus: xs_reset_watches failed: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"XenVMMXenVMM\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @xs_request_exit(%struct.xb_req_data* %req) #0 !dbg !2959 {
entry:
  %lock.addr.i40 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i40, metadata !2960, metadata !DIExpression()), !dbg !2966
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2968, metadata !DIExpression()), !dbg !2970
  %req.addr = alloca %struct.xb_req_data*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.xb_req_data* %req, %struct.xb_req_data** %req.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xb_req_data** %req.addr, metadata !2972, metadata !DIExpression()), !dbg !2973
  store %struct.spinlock* @xs_state_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !2974, !srcloc !2976
  %0 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2977
  %1 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %0, i32 0, i32 0, !dbg !2977
  %rlock.i = bitcast %union.anon* %1 to %struct.raw_spinlock*, !dbg !2977
  %2 = load i32, i32* @xs_state_users, align 4, !dbg !2979
  %dec = add i32 %2, -1, !dbg !2979
  store i32 %dec, i32* @xs_state_users, align 4, !dbg !2979
  %3 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !2980
  %type = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %3, i32 0, i32 4, !dbg !2982
  %4 = load i32, i32* %type, align 4, !dbg !2982
  %cmp = icmp eq i32 %4, 6, !dbg !2983
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !2984

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !2985
  %msg = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %5, i32 0, i32 2, !dbg !2986
  %type1 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %msg, i32 0, i32 0, !dbg !2987
  %6 = load i32, i32* %type1, align 8, !dbg !2987
  %cmp2 = icmp eq i32 %6, 16, !dbg !2988
  br i1 %cmp2, label %if.then32, label %lor.lhs.false, !dbg !2989

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %7 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !2990
  %type3 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %7, i32 0, i32 4, !dbg !2991
  %8 = load i32, i32* %type3, align 4, !dbg !2991
  %cmp4 = icmp eq i32 %8, 7, !dbg !2992
  br i1 %cmp4, label %land.lhs.true5, label %if.end34, !dbg !2993

land.lhs.true5:                                   ; preds = %lor.lhs.false
  %9 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !2994
  %user_req = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %9, i32 0, i32 10, !dbg !2995
  %10 = load i8, i8* %user_req, align 4, !dbg !2995
  %tobool = trunc i8 %10 to i1, !dbg !2995
  br i1 %tobool, label %if.end34, label %land.lhs.true6, !dbg !2996

land.lhs.true6:                                   ; preds = %land.lhs.true5
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2997, metadata !DIExpression()), !dbg !2999
  %11 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !2999
  %msg7 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %11, i32 0, i32 2, !dbg !2999
  %type8 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %msg7, i32 0, i32 0, !dbg !2999
  %12 = load i32, i32* %type8, align 8, !dbg !2999
  %cmp9 = icmp eq i32 %12, 16, !dbg !2999
  br i1 %cmp9, label %land.rhs, label %land.end, !dbg !2999

land.rhs:                                         ; preds = %land.lhs.true6
  %13 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !2999
  %body = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %13, i32 0, i32 5, !dbg !2999
  %14 = load i8*, i8** %body, align 8, !dbg !2999
  %call = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)) #10, !dbg !2999
  %tobool10 = icmp ne i32 %call, 0, !dbg !2999
  %lnot = xor i1 %tobool10, true, !dbg !2999
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true6
  %15 = phi i1 [ false, %land.lhs.true6 ], [ %lnot, %land.rhs ], !dbg !3000
  %lnot11 = xor i1 %15, true, !dbg !2999
  %lnot12 = xor i1 %lnot11, true, !dbg !2999
  %lnot.ext = zext i1 %lnot12 to i32, !dbg !2999
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2999
  %16 = load i32, i32* %__ret_warn_on, align 4, !dbg !3001
  %tobool13 = icmp ne i32 %16, 0, !dbg !3001
  %lnot14 = xor i1 %tobool13, true, !dbg !3001
  %lnot16 = xor i1 %lnot14, true, !dbg !3001
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !3001
  %conv = sext i32 %lnot.ext17 to i64, !dbg !3001
  %tobool18 = icmp ne i64 %conv, 0, !dbg !3001
  br i1 %tobool18, label %if.then, label %if.end, !dbg !2999

if.then:                                          ; preds = %land.end
  br label %do.body, !dbg !3001

do.body:                                          ; preds = %if.then
  br label %do.body19, !dbg !3003

do.body19:                                        ; preds = %do.body
  br label %do.end, !dbg !3005

do.end:                                           ; preds = %do.body19
  br label %do.body20, !dbg !3003

do.body20:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 146, i32 2307, i64 12) #3, !dbg !3007, !srcloc !3009
  br label %do.end21, !dbg !3007

do.end21:                                         ; preds = %do.body20
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 203) #3, !dbg !3010, !srcloc !3012
  br label %do.body22, !dbg !3003

do.body22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !3013

do.end23:                                         ; preds = %do.body22
  br label %do.end24, !dbg !3003

do.end24:                                         ; preds = %do.end23
  br label %if.end, !dbg !3003

if.end:                                           ; preds = %do.end24, %land.end
  %17 = load i32, i32* %__ret_warn_on, align 4, !dbg !2999
  %tobool25 = icmp ne i32 %17, 0, !dbg !2999
  %lnot26 = xor i1 %tobool25, true, !dbg !2999
  %lnot28 = xor i1 %lnot26, true, !dbg !2999
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !2999
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !2999
  store i64 %conv30, i64* %tmp, align 8, !dbg !3001
  %18 = load i64, i64* %tmp, align 8, !dbg !2999
  %tobool31 = icmp ne i64 %18, 0, !dbg !3015
  br i1 %tobool31, label %if.end34, label %if.then32, !dbg !3016

if.then32:                                        ; preds = %if.end, %land.lhs.true
  %19 = load i32, i32* @xs_state_users, align 4, !dbg !3017
  %dec33 = add i32 %19, -1, !dbg !3017
  store i32 %dec33, i32* @xs_state_users, align 4, !dbg !3017
  br label %if.end34, !dbg !3018

if.end34:                                         ; preds = %if.then32, %if.end, %land.lhs.true5, %lor.lhs.false
  store %struct.spinlock* @xs_state_lock, %struct.spinlock** %lock.addr.i40, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !3019, !srcloc !3021
  %20 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i40, align 8, !dbg !3022
  %21 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %20, i32 0, i32 0, !dbg !3022
  %rlock.i41 = bitcast %union.anon* %21 to %struct.raw_spinlock*, !dbg !3022
  %22 = load i32, i32* @xs_suspend_active, align 4, !dbg !3024
  %tobool35 = icmp ne i32 %22, 0, !dbg !3024
  br i1 %tobool35, label %land.lhs.true36, label %if.end39, !dbg !3026

land.lhs.true36:                                  ; preds = %if.end34
  %23 = load i32, i32* @xs_state_users, align 4, !dbg !3027
  %tobool37 = icmp ne i32 %23, 0, !dbg !3027
  br i1 %tobool37, label %if.end39, label %if.then38, !dbg !3028

if.then38:                                        ; preds = %land.lhs.true36
  call void @__wake_up(%struct.wait_queue_head* @xs_state_exit_wq, i32 3, i32 1, i8* null) #10, !dbg !3029
  br label %if.end39, !dbg !3029

if.end39:                                         ; preds = %if.then38, %land.lhs.true36, %if.end34
  ret void, !dbg !3030
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local void @__wake_up(%struct.wait_queue_head*, i32, i32, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xenbus_dev_request_and_reply(%struct.xsd_sockmsg* %msg, i8* %par) #0 !dbg !3031 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3034, metadata !DIExpression()), !dbg !3038
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3046, metadata !DIExpression()), !dbg !3047
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3048, metadata !DIExpression()), !dbg !3049
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3050, metadata !DIExpression()), !dbg !3051
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3052, metadata !DIExpression()), !dbg !3056
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3058, metadata !DIExpression()), !dbg !3062
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3064, metadata !DIExpression()), !dbg !3068
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3073, metadata !DIExpression()), !dbg !3074
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3075, metadata !DIExpression()), !dbg !3076
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3077, metadata !DIExpression()), !dbg !3078
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3079, metadata !DIExpression()), !dbg !3080
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3081, metadata !DIExpression()), !dbg !3082
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3083, metadata !DIExpression()), !dbg !3084
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3085, metadata !DIExpression()), !dbg !3086
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3087, metadata !DIExpression()), !dbg !3088
  %retval = alloca i32, align 4
  %msg.addr = alloca %struct.xsd_sockmsg*, align 8
  %par.addr = alloca i8*, align 8
  %req = alloca %struct.xb_req_data*, align 8
  %vec = alloca %struct.kvec*, align 8
  store %struct.xsd_sockmsg* %msg, %struct.xsd_sockmsg** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xsd_sockmsg** %msg.addr, metadata !3089, metadata !DIExpression()), !dbg !3090
  store i8* %par, i8** %par.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %par.addr, metadata !3091, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.declare(metadata %struct.xb_req_data** %req, metadata !3093, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.declare(metadata %struct.kvec** %vec, metadata !3095, metadata !DIExpression()), !dbg !3096
  store i64 120, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %0 = load i64, i64* %size.addr.i, align 8, !dbg !3097
  %1 = call i1 @llvm.is.constant.i64(i64 %0) #3, !dbg !3098
  br i1 %1, label %if.then.i, label %if.end9.i, !dbg !3099

if.then.i:                                        ; preds = %entry
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !3100
  %cmp.i = icmp ugt i64 %2, 8192, !dbg !3101
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3102

if.then1.i:                                       ; preds = %if.then.i
  %3 = load i64, i64* %size.addr.i, align 8, !dbg !3103
  %4 = load i32, i32* %flags.addr.i, align 4, !dbg !3104
  store i64 %3, i64* %size.addr.i.i, align 8
  store i32 %4, i32* %flags.addr.i.i, align 4
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !3105
  %call.i.i = call i32 @get_order(i64 %5) #11, !dbg !3106
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3082
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !3107
  %7 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3108
  %8 = load i32, i32* %order.i.i, align 4, !dbg !3109
  store i64 %6, i64* %size.addr.i.i.i, align 8
  store i32 %7, i32* %flags.addr.i.i.i, align 4
  store i32 %8, i32* %order.addr.i.i.i, align 4
  %9 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3110
  %10 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3111
  %11 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3112
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %9, i32 %10, i32 %11) #12, !dbg !3113
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3113
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3113
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3113
  call void @llvm.assume(i1 %maskcond.i.i.i) #3, !dbg !3113
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3114
  br label %kmalloc.exit, !dbg !3114

if.end.i:                                         ; preds = %if.then.i
  %12 = load i64, i64* %size.addr.i, align 8, !dbg !3115
  store i64 %12, i64* %size.addr.i11.i, align 8
  %13 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3116
  %tobool.i.i = icmp ne i64 %13, 0, !dbg !3116
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3118

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3119
  br label %kmalloc_index.exit.i, !dbg !3119

if.end.i.i:                                       ; preds = %if.end.i
  %14 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3120
  %cmp.i.i = icmp ule i64 %14, 8, !dbg !3122
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3123

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3124
  br label %kmalloc_index.exit.i, !dbg !3124

if.end2.i.i:                                      ; preds = %if.end.i.i
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3125
  %cmp3.i.i = icmp ugt i64 %15, 64, !dbg !3127
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3128

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3129
  %cmp4.i.i = icmp ule i64 %16, 96, !dbg !3130
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3131

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3132
  br label %kmalloc_index.exit.i, !dbg !3132

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3133
  %cmp7.i.i = icmp ugt i64 %17, 128, !dbg !3135
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3136

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3137
  %cmp9.i.i = icmp ule i64 %18, 192, !dbg !3138
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3139

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3140
  br label %kmalloc_index.exit.i, !dbg !3140

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3141
  %cmp12.i.i = icmp ule i64 %19, 8, !dbg !3143
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3144

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3145
  br label %kmalloc_index.exit.i, !dbg !3145

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3146
  %cmp15.i.i = icmp ule i64 %20, 16, !dbg !3148
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3149

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3150
  br label %kmalloc_index.exit.i, !dbg !3150

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3151
  %cmp18.i.i = icmp ule i64 %21, 32, !dbg !3153
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3154

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3155
  br label %kmalloc_index.exit.i, !dbg !3155

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3156
  %cmp21.i.i = icmp ule i64 %22, 64, !dbg !3158
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3159

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3160
  br label %kmalloc_index.exit.i, !dbg !3160

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3161
  %cmp24.i.i = icmp ule i64 %23, 128, !dbg !3163
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3164

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3165
  br label %kmalloc_index.exit.i, !dbg !3165

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3166
  %cmp27.i.i = icmp ule i64 %24, 256, !dbg !3168
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3169

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3170
  br label %kmalloc_index.exit.i, !dbg !3170

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3171
  %cmp30.i.i = icmp ule i64 %25, 512, !dbg !3173
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3174

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3175
  br label %kmalloc_index.exit.i, !dbg !3175

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3176
  %cmp33.i.i = icmp ule i64 %26, 1024, !dbg !3178
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3179

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3180
  br label %kmalloc_index.exit.i, !dbg !3180

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3181
  %cmp36.i.i = icmp ule i64 %27, 2048, !dbg !3183
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3184

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3185
  br label %kmalloc_index.exit.i, !dbg !3185

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3186
  %cmp39.i.i = icmp ule i64 %28, 4096, !dbg !3188
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3189

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3190
  br label %kmalloc_index.exit.i, !dbg !3190

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3191
  %cmp42.i.i = icmp ule i64 %29, 8192, !dbg !3193
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3194

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3195
  br label %kmalloc_index.exit.i, !dbg !3195

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3196
  %cmp45.i.i = icmp ule i64 %30, 16384, !dbg !3198
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3199

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3200
  br label %kmalloc_index.exit.i, !dbg !3200

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3201
  %cmp48.i.i = icmp ule i64 %31, 32768, !dbg !3203
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3204

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3205
  br label %kmalloc_index.exit.i, !dbg !3205

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3206
  %cmp51.i.i = icmp ule i64 %32, 65536, !dbg !3208
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3209

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3210
  br label %kmalloc_index.exit.i, !dbg !3210

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3211
  %cmp54.i.i = icmp ule i64 %33, 131072, !dbg !3213
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3214

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3215
  br label %kmalloc_index.exit.i, !dbg !3215

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3216
  %cmp57.i.i = icmp ule i64 %34, 262144, !dbg !3218
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3219

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3220
  br label %kmalloc_index.exit.i, !dbg !3220

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3221
  %cmp60.i.i = icmp ule i64 %35, 524288, !dbg !3223
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3224

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3225
  br label %kmalloc_index.exit.i, !dbg !3225

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3226
  %cmp63.i.i = icmp ule i64 %36, 1048576, !dbg !3228
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3229

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3230
  br label %kmalloc_index.exit.i, !dbg !3230

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3231
  %cmp66.i.i = icmp ule i64 %37, 2097152, !dbg !3233
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3234

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3235
  br label %kmalloc_index.exit.i, !dbg !3235

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3236
  %cmp69.i.i = icmp ule i64 %38, 4194304, !dbg !3238
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3239

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3240
  br label %kmalloc_index.exit.i, !dbg !3240

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3241
  %cmp72.i.i = icmp ule i64 %39, 8388608, !dbg !3243
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3244

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3245
  br label %kmalloc_index.exit.i, !dbg !3245

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3246
  %cmp75.i.i = icmp ule i64 %40, 16777216, !dbg !3248
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3249

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3250
  br label %kmalloc_index.exit.i, !dbg !3250

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3251
  %cmp78.i.i = icmp ule i64 %41, 33554432, !dbg !3253
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3254

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3255
  br label %kmalloc_index.exit.i, !dbg !3255

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3256
  %cmp81.i.i = icmp ule i64 %42, 67108864, !dbg !3258
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3259

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3260
  br label %kmalloc_index.exit.i, !dbg !3260

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 382, i32 0, i64 12) #3, !dbg !3261, !srcloc !3264
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 90) #3, !dbg !3265, !srcloc !3268
  unreachable, !dbg !3269

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %43 = load i32, i32* %retval.i.i, align 4, !dbg !3270
  store i32 %43, i32* %index.i, align 4, !dbg !3271
  %44 = load i32, i32* %index.i, align 4, !dbg !3272
  %tobool.i = icmp ne i32 %44, 0, !dbg !3272
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3274

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3275
  br label %kmalloc.exit, !dbg !3275

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %45 = load i32, i32* %flags.addr.i, align 4, !dbg !3276
  store i32 %45, i32* %flags.addr.i13.i, align 4
  %46 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3277
  %and.i.i = and i32 %46, 17, !dbg !3277
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3277
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3277
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3277
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3277
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3279

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3280
  br label %kmalloc_type.exit.i, !dbg !3280

if.end.i16.i:                                     ; preds = %if.end4.i
  %47 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3281
  %and2.i.i = and i32 %47, 1, !dbg !3282
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3281
  %48 = zext i1 %tobool3.i.i to i64, !dbg !3281
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3281
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3283
  br label %kmalloc_type.exit.i, !dbg !3283

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %49 = load i32, i32* %retval.i12.i, align 4, !dbg !3284
  %idxprom.i = zext i32 %49 to i64, !dbg !3285
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3285
  %50 = load i32, i32* %index.i, align 4, !dbg !3286
  %idxprom6.i = zext i32 %50 to i64, !dbg !3285
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3285
  %51 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3285
  %52 = load i32, i32* %flags.addr.i, align 4, !dbg !3287
  %53 = load i64, i64* %size.addr.i, align 8, !dbg !3288
  store %struct.kmem_cache* %51, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %52, i32* %flags.addr.i17.i, align 4
  store i64 %53, i64* %size.addr.i18.i, align 8
  %54 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3289
  %55 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3290
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %54, i32 %55) #12, !dbg !3291
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3291
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3291
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3291
  call void @llvm.assume(i1 %maskcond.i.i) #3, !dbg !3291
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3051
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3292
  %57 = load i8*, i8** %ret.i.i, align 8, !dbg !3293
  %58 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3294
  %59 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3295
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %56, i8* %57, i64 %58, i32 %59) #12, !dbg !3296
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3297
  %60 = load i8*, i8** %ret.i.i, align 8, !dbg !3298
  store i8* %60, i8** %retval.i, align 8, !dbg !3299
  br label %kmalloc.exit, !dbg !3299

if.end9.i:                                        ; preds = %entry
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !3300
  %62 = load i32, i32* %flags.addr.i, align 4, !dbg !3301
  %call10.i = call noalias i8* @__kmalloc(i64 %61, i32 %62) #12, !dbg !3302
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3302
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3302
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3302
  call void @llvm.assume(i1 %maskcond.i) #3, !dbg !3302
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3303
  br label %kmalloc.exit, !dbg !3303

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %63 = load i8*, i8** %retval.i, align 8, !dbg !3304
  %64 = bitcast i8* %63 to %struct.xb_req_data*, !dbg !3305
  store %struct.xb_req_data* %64, %struct.xb_req_data** %req, align 8, !dbg !3306
  %65 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !3307
  %tobool = icmp ne %struct.xb_req_data* %65, null, !dbg !3307
  br i1 %tobool, label %if.end, label %if.then, !dbg !3309

if.then:                                          ; preds = %kmalloc.exit
  store i32 -12, i32* %retval, align 4, !dbg !3310
  br label %return, !dbg !3310

if.end:                                           ; preds = %kmalloc.exit
  %66 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !3311
  %add.ptr = getelementptr %struct.xb_req_data, %struct.xb_req_data* %66, i64 1, !dbg !3312
  %67 = bitcast %struct.xb_req_data* %add.ptr to %struct.kvec*, !dbg !3313
  store %struct.kvec* %67, %struct.kvec** %vec, align 8, !dbg !3314
  %68 = load %struct.xsd_sockmsg*, %struct.xsd_sockmsg** %msg.addr, align 8, !dbg !3315
  %len = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %68, i32 0, i32 3, !dbg !3316
  %69 = load i32, i32* %len, align 4, !dbg !3316
  %conv = zext i32 %69 to i64, !dbg !3315
  %70 = load %struct.kvec*, %struct.kvec** %vec, align 8, !dbg !3317
  %iov_len = getelementptr inbounds %struct.kvec, %struct.kvec* %70, i32 0, i32 1, !dbg !3318
  store i64 %conv, i64* %iov_len, align 8, !dbg !3319
  %71 = load %struct.xsd_sockmsg*, %struct.xsd_sockmsg** %msg.addr, align 8, !dbg !3320
  %add.ptr1 = getelementptr %struct.xsd_sockmsg, %struct.xsd_sockmsg* %71, i64 1, !dbg !3321
  %72 = bitcast %struct.xsd_sockmsg* %add.ptr1 to i8*, !dbg !3320
  %73 = load %struct.kvec*, %struct.kvec** %vec, align 8, !dbg !3322
  %iov_base = getelementptr inbounds %struct.kvec, %struct.kvec* %73, i32 0, i32 0, !dbg !3323
  store i8* %72, i8** %iov_base, align 8, !dbg !3324
  %74 = load %struct.kvec*, %struct.kvec** %vec, align 8, !dbg !3325
  %75 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !3326
  %vec2 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %75, i32 0, i32 6, !dbg !3327
  store %struct.kvec* %74, %struct.kvec** %vec2, align 8, !dbg !3328
  %76 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !3329
  %num_vecs = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %76, i32 0, i32 7, !dbg !3330
  store i32 1, i32* %num_vecs, align 8, !dbg !3331
  %77 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !3332
  %cb = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %77, i32 0, i32 11, !dbg !3333
  %cb3 = bitcast {}** %cb to void (%struct.xb_req_data*)**, !dbg !3333
  store void (%struct.xb_req_data*)* @xenbus_dev_queue_reply, void (%struct.xb_req_data*)** %cb3, align 8, !dbg !3334
  %78 = load i8*, i8** %par.addr, align 8, !dbg !3335
  %79 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !3336
  %par4 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %79, i32 0, i32 12, !dbg !3337
  store i8* %78, i8** %par4, align 8, !dbg !3338
  %80 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !3339
  %user_req = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %80, i32 0, i32 10, !dbg !3340
  store i8 1, i8* %user_req, align 4, !dbg !3341
  %81 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !3342
  %82 = load %struct.xsd_sockmsg*, %struct.xsd_sockmsg** %msg.addr, align 8, !dbg !3343
  call void @xs_send(%struct.xb_req_data* %81, %struct.xsd_sockmsg* %82) #10, !dbg !3344
  store i32 0, i32* %retval, align 4, !dbg !3345
  br label %return, !dbg !3345

return:                                           ; preds = %if.end, %if.then
  %83 = load i32, i32* %retval, align 4, !dbg !3346
  ret i32 %83, !dbg !3346
}

; Function Attrs: noredzone
declare dso_local void @xenbus_dev_queue_reply(%struct.xb_req_data*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xs_send(%struct.xb_req_data* %req, %struct.xsd_sockmsg* %msg) #0 !dbg !2901 {
entry:
  %req.addr = alloca %struct.xb_req_data*, align 8
  %msg.addr = alloca %struct.xsd_sockmsg*, align 8
  %notify = alloca i8, align 1
  store %struct.xb_req_data* %req, %struct.xb_req_data** %req.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xb_req_data** %req.addr, metadata !3347, metadata !DIExpression()), !dbg !3348
  store %struct.xsd_sockmsg* %msg, %struct.xsd_sockmsg** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xsd_sockmsg** %msg.addr, metadata !3349, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.declare(metadata i8* %notify, metadata !3351, metadata !DIExpression()), !dbg !3352
  %0 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !3353
  %msg1 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %0, i32 0, i32 2, !dbg !3354
  %1 = load %struct.xsd_sockmsg*, %struct.xsd_sockmsg** %msg.addr, align 8, !dbg !3355
  %2 = bitcast %struct.xsd_sockmsg* %msg1 to i8*, !dbg !3356
  %3 = bitcast %struct.xsd_sockmsg* %1 to i8*, !dbg !3356
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 4 %3, i64 16, i1 false), !dbg !3356
  %4 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !3357
  %err = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %4, i32 0, i32 8, !dbg !3358
  store i32 0, i32* %err, align 4, !dbg !3359
  %5 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !3360
  %state = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %5, i32 0, i32 9, !dbg !3361
  store i32 0, i32* %state, align 8, !dbg !3362
  br label %do.body, !dbg !3363

do.body:                                          ; preds = %entry
  %6 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !3364
  %wq = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %6, i32 0, i32 1, !dbg !3364
  call void @__init_waitqueue_head(%struct.wait_queue_head* %wq, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), %struct.lock_class_key* @xs_send.__key) #10, !dbg !3364
  br label %do.end, !dbg !3364

do.end:                                           ; preds = %do.body
  %7 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !3366
  %msg2 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %7, i32 0, i32 2, !dbg !3367
  %req_id = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %msg2, i32 0, i32 1, !dbg !3368
  %8 = load i32, i32* %req_id, align 4, !dbg !3368
  %9 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !3369
  %caller_req_id = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %9, i32 0, i32 3, !dbg !3370
  store i32 %8, i32* %caller_req_id, align 8, !dbg !3371
  %10 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !3372
  %call = call i32 @xs_request_enter(%struct.xb_req_data* %10) #10, !dbg !3373
  %11 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !3374
  %msg3 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %11, i32 0, i32 2, !dbg !3375
  %req_id4 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %msg3, i32 0, i32 1, !dbg !3376
  store i32 %call, i32* %req_id4, align 4, !dbg !3377
  call void @mutex_lock(%struct.mutex* @xb_write_mutex) #10, !dbg !3378
  %12 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !3379
  %list = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %12, i32 0, i32 0, !dbg !3380
  call void @list_add_tail(%struct.list_head* %list, %struct.list_head* @xb_write_list) #10, !dbg !3381
  %call5 = call i32 @list_is_singular(%struct.list_head* @xb_write_list) #10, !dbg !3382
  %tobool = icmp ne i32 %call5, 0, !dbg !3382
  %frombool = zext i1 %tobool to i8, !dbg !3383
  store i8 %frombool, i8* %notify, align 1, !dbg !3383
  call void @mutex_unlock(%struct.mutex* @xb_write_mutex) #10, !dbg !3384
  %13 = load i8, i8* %notify, align 1, !dbg !3385
  %tobool6 = trunc i8 %13 to i1, !dbg !3385
  br i1 %tobool6, label %if.then, label %if.end, !dbg !3387

if.then:                                          ; preds = %do.end
  call void @__wake_up(%struct.wait_queue_head* @xb_waitq, i32 3, i32 1, i8* null) #10, !dbg !3388
  br label %if.end, !dbg !3388

if.end:                                           ; preds = %if.then, %do.end
  ret void, !dbg !3389
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8** @xenbus_directory(i32 %t.coerce, i8* %dir, i8* %node, i32* %num) #0 !dbg !3390 {
entry:
  %retval = alloca i8**, align 8
  %t = alloca %struct.xenbus_transaction, align 4
  %dir.addr = alloca i8*, align 8
  %node.addr = alloca i8*, align 8
  %num.addr = alloca i32*, align 8
  %strings = alloca i8*, align 8
  %path = alloca i8*, align 8
  %len = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %t, i32 0, i32 0
  store i32 %t.coerce, i32* %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata %struct.xenbus_transaction* %t, metadata !3393, metadata !DIExpression()), !dbg !3394
  store i8* %dir, i8** %dir.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dir.addr, metadata !3395, metadata !DIExpression()), !dbg !3396
  store i8* %node, i8** %node.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %node.addr, metadata !3397, metadata !DIExpression()), !dbg !3398
  store i32* %num, i32** %num.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %num.addr, metadata !3399, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.declare(metadata i8** %strings, metadata !3401, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.declare(metadata i8** %path, metadata !3403, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.declare(metadata i32* %len, metadata !3405, metadata !DIExpression()), !dbg !3406
  %0 = load i8*, i8** %dir.addr, align 8, !dbg !3407
  %1 = load i8*, i8** %node.addr, align 8, !dbg !3408
  %call = call i8* @join(i8* %0, i8* %1) #10, !dbg !3409
  store i8* %call, i8** %path, align 8, !dbg !3410
  %2 = load i8*, i8** %path, align 8, !dbg !3411
  %call1 = call zeroext i1 @IS_ERR(i8* %2) #10, !dbg !3413
  br i1 %call1, label %if.then, label %if.end, !dbg !3414

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %path, align 8, !dbg !3415
  %4 = bitcast i8* %3 to i8**, !dbg !3416
  store i8** %4, i8*** %retval, align 8, !dbg !3417
  br label %return, !dbg !3417

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %path, align 8, !dbg !3418
  %coerce.dive2 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %t, i32 0, i32 0, !dbg !3419
  %6 = load i32, i32* %coerce.dive2, align 4, !dbg !3419
  %call3 = call i8* @xs_single(i32 %6, i32 1, i8* %5, i32* %len) #10, !dbg !3419
  store i8* %call3, i8** %strings, align 8, !dbg !3420
  %7 = load i8*, i8** %path, align 8, !dbg !3421
  call void @kfree(i8* %7) #10, !dbg !3422
  %8 = load i8*, i8** %strings, align 8, !dbg !3423
  %call4 = call zeroext i1 @IS_ERR(i8* %8) #10, !dbg !3425
  br i1 %call4, label %if.then5, label %if.end6, !dbg !3426

if.then5:                                         ; preds = %if.end
  %9 = load i8*, i8** %strings, align 8, !dbg !3427
  %10 = bitcast i8* %9 to i8**, !dbg !3428
  store i8** %10, i8*** %retval, align 8, !dbg !3429
  br label %return, !dbg !3429

if.end6:                                          ; preds = %if.end
  %11 = load i8*, i8** %strings, align 8, !dbg !3430
  %12 = load i32, i32* %len, align 4, !dbg !3431
  %13 = load i32*, i32** %num.addr, align 8, !dbg !3432
  %call7 = call i8** @split(i8* %11, i32 %12, i32* %13) #10, !dbg !3433
  store i8** %call7, i8*** %retval, align 8, !dbg !3434
  br label %return, !dbg !3434

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %14 = load i8**, i8*** %retval, align 8, !dbg !3435
  ret i8** %14, !dbg !3435
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @join(i8* %dir, i8* %name) #0 !dbg !3436 {
entry:
  %dir.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %buffer = alloca i8*, align 8
  store i8* %dir, i8** %dir.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dir.addr, metadata !3439, metadata !DIExpression()), !dbg !3440
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !3441, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.declare(metadata i8** %buffer, metadata !3443, metadata !DIExpression()), !dbg !3444
  %0 = load i8*, i8** %name.addr, align 8, !dbg !3445
  %call = call i64 @strlen(i8* %0) #10, !dbg !3447
  %cmp = icmp eq i64 %call, 0, !dbg !3448
  br i1 %cmp, label %if.then, label %if.else, !dbg !3449

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %dir.addr, align 8, !dbg !3450
  %call1 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 3104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* %1) #10, !dbg !3451
  store i8* %call1, i8** %buffer, align 8, !dbg !3452
  br label %if.end, !dbg !3453

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %dir.addr, align 8, !dbg !3454
  %3 = load i8*, i8** %name.addr, align 8, !dbg !3455
  %call2 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 3104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3456
  store i8* %call2, i8** %buffer, align 8, !dbg !3457
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i8*, i8** %buffer, align 8, !dbg !3458
  %tobool = icmp ne i8* %4, null, !dbg !3458
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3459

cond.true:                                        ; preds = %if.end
  %call3 = call i8* @ERR_PTR(i64 -12) #10, !dbg !3460
  br label %cond.end, !dbg !3459

cond.false:                                       ; preds = %if.end
  %5 = load i8*, i8** %buffer, align 8, !dbg !3461
  br label %cond.end, !dbg !3459

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call3, %cond.true ], [ %5, %cond.false ], !dbg !3459
  ret i8* %cond, !dbg !3462
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !3463 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3469, metadata !DIExpression()), !dbg !3470
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3471
  %1 = ptrtoint i8* %0 to i64, !dbg !3471
  %2 = inttoptr i64 %1 to i8*, !dbg !3471
  %3 = ptrtoint i8* %2 to i64, !dbg !3471
  %cmp = icmp uge i64 %3, -4095, !dbg !3471
  %lnot = xor i1 %cmp, true, !dbg !3471
  %lnot1 = xor i1 %lnot, true, !dbg !3471
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3471
  %conv = sext i32 %lnot.ext to i64, !dbg !3471
  %tobool = icmp ne i64 %conv, 0, !dbg !3471
  ret i1 %tobool, !dbg !3472
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @xs_single(i32 %t.coerce, i32 %type, i8* %string, i32* %len) #0 !dbg !3473 {
entry:
  %t = alloca %struct.xenbus_transaction, align 4
  %type.addr = alloca i32, align 4
  %string.addr = alloca i8*, align 8
  %len.addr = alloca i32*, align 8
  %iovec = alloca %struct.kvec, align 8
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %t, i32 0, i32 0
  store i32 %t.coerce, i32* %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata %struct.xenbus_transaction* %t, metadata !3476, metadata !DIExpression()), !dbg !3477
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !3478, metadata !DIExpression()), !dbg !3479
  store i8* %string, i8** %string.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %string.addr, metadata !3480, metadata !DIExpression()), !dbg !3481
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !3482, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.declare(metadata %struct.kvec* %iovec, metadata !3484, metadata !DIExpression()), !dbg !3485
  %0 = load i8*, i8** %string.addr, align 8, !dbg !3486
  %iov_base = getelementptr inbounds %struct.kvec, %struct.kvec* %iovec, i32 0, i32 0, !dbg !3487
  store i8* %0, i8** %iov_base, align 8, !dbg !3488
  %1 = load i8*, i8** %string.addr, align 8, !dbg !3489
  %call = call i64 @strlen(i8* %1) #10, !dbg !3490
  %add = add i64 %call, 1, !dbg !3491
  %iov_len = getelementptr inbounds %struct.kvec, %struct.kvec* %iovec, i32 0, i32 1, !dbg !3492
  store i64 %add, i64* %iov_len, align 8, !dbg !3493
  %2 = load i32, i32* %type.addr, align 4, !dbg !3494
  %3 = load i32*, i32** %len.addr, align 8, !dbg !3495
  %coerce.dive1 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %t, i32 0, i32 0, !dbg !3496
  %4 = load i32, i32* %coerce.dive1, align 4, !dbg !3496
  %call2 = call i8* @xs_talkv(i32 %4, i32 %2, %struct.kvec* %iovec, i32 1, i32* %3) #10, !dbg !3496
  ret i8* %call2, !dbg !3497
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8** @split(i8* %strings, i32 %len, i32* %num) #0 !dbg !3498 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3034, metadata !DIExpression()), !dbg !3501
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3046, metadata !DIExpression()), !dbg !3504
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3048, metadata !DIExpression()), !dbg !3505
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3050, metadata !DIExpression()), !dbg !3506
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3052, metadata !DIExpression()), !dbg !3507
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3058, metadata !DIExpression()), !dbg !3509
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3064, metadata !DIExpression()), !dbg !3511
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3073, metadata !DIExpression()), !dbg !3514
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3075, metadata !DIExpression()), !dbg !3515
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3077, metadata !DIExpression()), !dbg !3516
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3079, metadata !DIExpression()), !dbg !3517
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3081, metadata !DIExpression()), !dbg !3518
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3083, metadata !DIExpression()), !dbg !3519
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3085, metadata !DIExpression()), !dbg !3520
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3087, metadata !DIExpression()), !dbg !3521
  %retval = alloca i8**, align 8
  %strings.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %num.addr = alloca i32*, align 8
  %p = alloca i8*, align 8
  %ret = alloca i8**, align 8
  store i8* %strings, i8** %strings.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %strings.addr, metadata !3522, metadata !DIExpression()), !dbg !3523
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !3524, metadata !DIExpression()), !dbg !3525
  store i32* %num, i32** %num.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %num.addr, metadata !3526, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.declare(metadata i8** %p, metadata !3528, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.declare(metadata i8*** %ret, metadata !3530, metadata !DIExpression()), !dbg !3531
  %0 = load i8*, i8** %strings.addr, align 8, !dbg !3532
  %1 = load i32, i32* %len.addr, align 4, !dbg !3533
  %call = call i32 @count_strings(i8* %0, i32 %1) #10, !dbg !3534
  %2 = load i32*, i32** %num.addr, align 8, !dbg !3535
  store i32 %call, i32* %2, align 4, !dbg !3536
  %3 = load i32*, i32** %num.addr, align 8, !dbg !3537
  %4 = load i32, i32* %3, align 4, !dbg !3538
  %conv = zext i32 %4 to i64, !dbg !3538
  %mul = mul i64 %conv, 8, !dbg !3539
  %5 = load i32, i32* %len.addr, align 4, !dbg !3540
  %conv1 = zext i32 %5 to i64, !dbg !3540
  %add = add i64 %mul, %conv1, !dbg !3541
  store i64 %add, i64* %size.addr.i, align 8
  store i32 3104, i32* %flags.addr.i, align 4
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !3542
  %7 = call i1 @llvm.is.constant.i64(i64 %6) #3, !dbg !3543
  br i1 %7, label %if.then.i, label %if.end9.i, !dbg !3544

if.then.i:                                        ; preds = %entry
  %8 = load i64, i64* %size.addr.i, align 8, !dbg !3545
  %cmp.i = icmp ugt i64 %8, 8192, !dbg !3546
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3547

if.then1.i:                                       ; preds = %if.then.i
  %9 = load i64, i64* %size.addr.i, align 8, !dbg !3548
  %10 = load i32, i32* %flags.addr.i, align 4, !dbg !3549
  store i64 %9, i64* %size.addr.i.i, align 8
  store i32 %10, i32* %flags.addr.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i, align 8, !dbg !3550
  %call.i.i = call i32 @get_order(i64 %11) #11, !dbg !3551
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3518
  %12 = load i64, i64* %size.addr.i.i, align 8, !dbg !3552
  %13 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3553
  %14 = load i32, i32* %order.i.i, align 4, !dbg !3554
  store i64 %12, i64* %size.addr.i.i.i, align 8
  store i32 %13, i32* %flags.addr.i.i.i, align 4
  store i32 %14, i32* %order.addr.i.i.i, align 4
  %15 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3555
  %16 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3556
  %17 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3557
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %15, i32 %16, i32 %17) #12, !dbg !3558
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3558
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3558
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3558
  call void @llvm.assume(i1 %maskcond.i.i.i) #3, !dbg !3558
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3559
  br label %kmalloc.exit, !dbg !3559

if.end.i:                                         ; preds = %if.then.i
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !3560
  store i64 %18, i64* %size.addr.i11.i, align 8
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3561
  %tobool.i.i = icmp ne i64 %19, 0, !dbg !3561
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3562

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3563
  br label %kmalloc_index.exit.i, !dbg !3563

if.end.i.i:                                       ; preds = %if.end.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3564
  %cmp.i.i = icmp ule i64 %20, 8, !dbg !3565
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3566

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3567
  br label %kmalloc_index.exit.i, !dbg !3567

if.end2.i.i:                                      ; preds = %if.end.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3568
  %cmp3.i.i = icmp ugt i64 %21, 64, !dbg !3569
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3570

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3571
  %cmp4.i.i = icmp ule i64 %22, 96, !dbg !3572
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3573

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3574
  br label %kmalloc_index.exit.i, !dbg !3574

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3575
  %cmp7.i.i = icmp ugt i64 %23, 128, !dbg !3576
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3577

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3578
  %cmp9.i.i = icmp ule i64 %24, 192, !dbg !3579
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3580

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3581
  br label %kmalloc_index.exit.i, !dbg !3581

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3582
  %cmp12.i.i = icmp ule i64 %25, 8, !dbg !3583
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3584

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3585
  br label %kmalloc_index.exit.i, !dbg !3585

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3586
  %cmp15.i.i = icmp ule i64 %26, 16, !dbg !3587
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3588

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3589
  br label %kmalloc_index.exit.i, !dbg !3589

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3590
  %cmp18.i.i = icmp ule i64 %27, 32, !dbg !3591
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3592

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3593
  br label %kmalloc_index.exit.i, !dbg !3593

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3594
  %cmp21.i.i = icmp ule i64 %28, 64, !dbg !3595
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3596

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3597
  br label %kmalloc_index.exit.i, !dbg !3597

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3598
  %cmp24.i.i = icmp ule i64 %29, 128, !dbg !3599
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3600

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3601
  br label %kmalloc_index.exit.i, !dbg !3601

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3602
  %cmp27.i.i = icmp ule i64 %30, 256, !dbg !3603
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3604

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3605
  br label %kmalloc_index.exit.i, !dbg !3605

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3606
  %cmp30.i.i = icmp ule i64 %31, 512, !dbg !3607
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3608

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3609
  br label %kmalloc_index.exit.i, !dbg !3609

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3610
  %cmp33.i.i = icmp ule i64 %32, 1024, !dbg !3611
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3612

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3613
  br label %kmalloc_index.exit.i, !dbg !3613

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3614
  %cmp36.i.i = icmp ule i64 %33, 2048, !dbg !3615
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3616

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3617
  br label %kmalloc_index.exit.i, !dbg !3617

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3618
  %cmp39.i.i = icmp ule i64 %34, 4096, !dbg !3619
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3620

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3621
  br label %kmalloc_index.exit.i, !dbg !3621

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3622
  %cmp42.i.i = icmp ule i64 %35, 8192, !dbg !3623
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3624

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3625
  br label %kmalloc_index.exit.i, !dbg !3625

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3626
  %cmp45.i.i = icmp ule i64 %36, 16384, !dbg !3627
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3628

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3629
  br label %kmalloc_index.exit.i, !dbg !3629

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3630
  %cmp48.i.i = icmp ule i64 %37, 32768, !dbg !3631
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3632

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3633
  br label %kmalloc_index.exit.i, !dbg !3633

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3634
  %cmp51.i.i = icmp ule i64 %38, 65536, !dbg !3635
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3636

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3637
  br label %kmalloc_index.exit.i, !dbg !3637

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3638
  %cmp54.i.i = icmp ule i64 %39, 131072, !dbg !3639
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3640

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3641
  br label %kmalloc_index.exit.i, !dbg !3641

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3642
  %cmp57.i.i = icmp ule i64 %40, 262144, !dbg !3643
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3644

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3645
  br label %kmalloc_index.exit.i, !dbg !3645

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3646
  %cmp60.i.i = icmp ule i64 %41, 524288, !dbg !3647
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3648

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3649
  br label %kmalloc_index.exit.i, !dbg !3649

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3650
  %cmp63.i.i = icmp ule i64 %42, 1048576, !dbg !3651
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3652

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3653
  br label %kmalloc_index.exit.i, !dbg !3653

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3654
  %cmp66.i.i = icmp ule i64 %43, 2097152, !dbg !3655
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3656

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3657
  br label %kmalloc_index.exit.i, !dbg !3657

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3658
  %cmp69.i.i = icmp ule i64 %44, 4194304, !dbg !3659
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3660

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3661
  br label %kmalloc_index.exit.i, !dbg !3661

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3662
  %cmp72.i.i = icmp ule i64 %45, 8388608, !dbg !3663
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3664

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3665
  br label %kmalloc_index.exit.i, !dbg !3665

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3666
  %cmp75.i.i = icmp ule i64 %46, 16777216, !dbg !3667
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3668

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3669
  br label %kmalloc_index.exit.i, !dbg !3669

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3670
  %cmp78.i.i = icmp ule i64 %47, 33554432, !dbg !3671
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3672

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3673
  br label %kmalloc_index.exit.i, !dbg !3673

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3674
  %cmp81.i.i = icmp ule i64 %48, 67108864, !dbg !3675
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3676

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3677
  br label %kmalloc_index.exit.i, !dbg !3677

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 382, i32 0, i64 12) #3, !dbg !3678, !srcloc !3264
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 90) #3, !dbg !3679, !srcloc !3268
  unreachable, !dbg !3680

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %49 = load i32, i32* %retval.i.i, align 4, !dbg !3681
  store i32 %49, i32* %index.i, align 4, !dbg !3682
  %50 = load i32, i32* %index.i, align 4, !dbg !3683
  %tobool.i = icmp ne i32 %50, 0, !dbg !3683
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3684

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3685
  br label %kmalloc.exit, !dbg !3685

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %51 = load i32, i32* %flags.addr.i, align 4, !dbg !3686
  store i32 %51, i32* %flags.addr.i13.i, align 4
  %52 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3687
  %and.i.i = and i32 %52, 17, !dbg !3687
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3687
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3687
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3687
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3687
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3688

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3689
  br label %kmalloc_type.exit.i, !dbg !3689

if.end.i16.i:                                     ; preds = %if.end4.i
  %53 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3690
  %and2.i.i = and i32 %53, 1, !dbg !3691
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3690
  %54 = zext i1 %tobool3.i.i to i64, !dbg !3690
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3690
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3692
  br label %kmalloc_type.exit.i, !dbg !3692

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %55 = load i32, i32* %retval.i12.i, align 4, !dbg !3693
  %idxprom.i = zext i32 %55 to i64, !dbg !3694
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3694
  %56 = load i32, i32* %index.i, align 4, !dbg !3695
  %idxprom6.i = zext i32 %56 to i64, !dbg !3694
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3694
  %57 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3694
  %58 = load i32, i32* %flags.addr.i, align 4, !dbg !3696
  %59 = load i64, i64* %size.addr.i, align 8, !dbg !3697
  store %struct.kmem_cache* %57, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %58, i32* %flags.addr.i17.i, align 4
  store i64 %59, i64* %size.addr.i18.i, align 8
  %60 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3698
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3699
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %60, i32 %61) #12, !dbg !3700
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3700
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3700
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3700
  call void @llvm.assume(i1 %maskcond.i.i) #3, !dbg !3700
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3506
  %62 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3701
  %63 = load i8*, i8** %ret.i.i, align 8, !dbg !3702
  %64 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3703
  %65 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3704
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %62, i8* %63, i64 %64, i32 %65) #12, !dbg !3705
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3706
  %66 = load i8*, i8** %ret.i.i, align 8, !dbg !3707
  store i8* %66, i8** %retval.i, align 8, !dbg !3708
  br label %kmalloc.exit, !dbg !3708

if.end9.i:                                        ; preds = %entry
  %67 = load i64, i64* %size.addr.i, align 8, !dbg !3709
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !3710
  %call10.i = call noalias i8* @__kmalloc(i64 %67, i32 %68) #12, !dbg !3711
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3711
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3711
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3711
  call void @llvm.assume(i1 %maskcond.i) #3, !dbg !3711
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3712
  br label %kmalloc.exit, !dbg !3712

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %69 = load i8*, i8** %retval.i, align 8, !dbg !3713
  %70 = bitcast i8* %69 to i8**, !dbg !3714
  store i8** %70, i8*** %ret, align 8, !dbg !3715
  %71 = load i8**, i8*** %ret, align 8, !dbg !3716
  %tobool = icmp ne i8** %71, null, !dbg !3716
  br i1 %tobool, label %if.end, label %if.then, !dbg !3718

if.then:                                          ; preds = %kmalloc.exit
  %72 = load i8*, i8** %strings.addr, align 8, !dbg !3719
  call void @kfree(i8* %72) #10, !dbg !3721
  %call3 = call i8* @ERR_PTR(i64 -12) #10, !dbg !3722
  %73 = bitcast i8* %call3 to i8**, !dbg !3722
  store i8** %73, i8*** %retval, align 8, !dbg !3723
  br label %return, !dbg !3723

if.end:                                           ; preds = %kmalloc.exit
  %74 = load i8**, i8*** %ret, align 8, !dbg !3724
  %75 = load i32*, i32** %num.addr, align 8, !dbg !3725
  %76 = load i32, i32* %75, align 4, !dbg !3726
  %idxprom = zext i32 %76 to i64, !dbg !3724
  %arrayidx = getelementptr i8*, i8** %74, i64 %idxprom, !dbg !3724
  %77 = bitcast i8** %arrayidx to i8*, !dbg !3727
  %78 = load i8*, i8** %strings.addr, align 8, !dbg !3728
  %79 = load i32, i32* %len.addr, align 4, !dbg !3729
  %conv4 = zext i32 %79 to i64, !dbg !3729
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 1 %78, i64 %conv4, i1 false), !dbg !3727
  %80 = load i8*, i8** %strings.addr, align 8, !dbg !3730
  call void @kfree(i8* %80) #10, !dbg !3731
  %81 = load i8**, i8*** %ret, align 8, !dbg !3732
  %82 = load i32*, i32** %num.addr, align 8, !dbg !3733
  %83 = load i32, i32* %82, align 4, !dbg !3734
  %idxprom5 = zext i32 %83 to i64, !dbg !3732
  %arrayidx6 = getelementptr i8*, i8** %81, i64 %idxprom5, !dbg !3732
  %84 = bitcast i8** %arrayidx6 to i8*, !dbg !3735
  store i8* %84, i8** %strings.addr, align 8, !dbg !3736
  %85 = load i8*, i8** %strings.addr, align 8, !dbg !3737
  store i8* %85, i8** %p, align 8, !dbg !3739
  %86 = load i32*, i32** %num.addr, align 8, !dbg !3740
  store i32 0, i32* %86, align 4, !dbg !3741
  br label %for.cond, !dbg !3742

for.cond:                                         ; preds = %for.inc, %if.end
  %87 = load i8*, i8** %p, align 8, !dbg !3743
  %88 = load i8*, i8** %strings.addr, align 8, !dbg !3745
  %89 = load i32, i32* %len.addr, align 4, !dbg !3746
  %idx.ext = zext i32 %89 to i64, !dbg !3747
  %add.ptr = getelementptr i8, i8* %88, i64 %idx.ext, !dbg !3747
  %cmp = icmp ult i8* %87, %add.ptr, !dbg !3748
  br i1 %cmp, label %for.body, label %for.end, !dbg !3749

for.body:                                         ; preds = %for.cond
  %90 = load i8*, i8** %p, align 8, !dbg !3750
  %91 = load i8**, i8*** %ret, align 8, !dbg !3751
  %92 = load i32*, i32** %num.addr, align 8, !dbg !3752
  %93 = load i32, i32* %92, align 4, !dbg !3753
  %inc = add i32 %93, 1, !dbg !3753
  store i32 %inc, i32* %92, align 4, !dbg !3753
  %idxprom8 = zext i32 %93 to i64, !dbg !3751
  %arrayidx9 = getelementptr i8*, i8** %91, i64 %idxprom8, !dbg !3751
  store i8* %90, i8** %arrayidx9, align 8, !dbg !3754
  br label %for.inc, !dbg !3751

for.inc:                                          ; preds = %for.body
  %94 = load i8*, i8** %p, align 8, !dbg !3755
  %call10 = call i64 @strlen(i8* %94) #10, !dbg !3756
  %add11 = add i64 %call10, 1, !dbg !3757
  %95 = load i8*, i8** %p, align 8, !dbg !3758
  %add.ptr12 = getelementptr i8, i8* %95, i64 %add11, !dbg !3758
  store i8* %add.ptr12, i8** %p, align 8, !dbg !3758
  br label %for.cond, !dbg !3759, !llvm.loop !3760

for.end:                                          ; preds = %for.cond
  %96 = load i8**, i8*** %ret, align 8, !dbg !3762
  store i8** %96, i8*** %retval, align 8, !dbg !3763
  br label %return, !dbg !3763

return:                                           ; preds = %for.end, %if.then
  %97 = load i8**, i8*** %retval, align 8, !dbg !3764
  ret i8** %97, !dbg !3764
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xenbus_exists(i32 %t.coerce, i8* %dir, i8* %node) #0 !dbg !3765 {
entry:
  %retval = alloca i32, align 4
  %t = alloca %struct.xenbus_transaction, align 4
  %dir.addr = alloca i8*, align 8
  %node.addr = alloca i8*, align 8
  %d = alloca i8**, align 8
  %dir_n = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %t, i32 0, i32 0
  store i32 %t.coerce, i32* %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata %struct.xenbus_transaction* %t, metadata !3768, metadata !DIExpression()), !dbg !3769
  store i8* %dir, i8** %dir.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dir.addr, metadata !3770, metadata !DIExpression()), !dbg !3771
  store i8* %node, i8** %node.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %node.addr, metadata !3772, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.declare(metadata i8*** %d, metadata !3774, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.declare(metadata i32* %dir_n, metadata !3776, metadata !DIExpression()), !dbg !3777
  %0 = load i8*, i8** %dir.addr, align 8, !dbg !3778
  %1 = load i8*, i8** %node.addr, align 8, !dbg !3779
  %coerce.dive1 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %t, i32 0, i32 0, !dbg !3780
  %2 = load i32, i32* %coerce.dive1, align 4, !dbg !3780
  %call = call i8** @xenbus_directory(i32 %2, i8* %0, i8* %1, i32* %dir_n) #10, !dbg !3780
  store i8** %call, i8*** %d, align 8, !dbg !3781
  %3 = load i8**, i8*** %d, align 8, !dbg !3782
  %4 = bitcast i8** %3 to i8*, !dbg !3782
  %call2 = call zeroext i1 @IS_ERR(i8* %4) #10, !dbg !3784
  br i1 %call2, label %if.then, label %if.end, !dbg !3785

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3786
  br label %return, !dbg !3786

if.end:                                           ; preds = %entry
  %5 = load i8**, i8*** %d, align 8, !dbg !3787
  %6 = bitcast i8** %5 to i8*, !dbg !3787
  call void @kfree(i8* %6) #10, !dbg !3788
  store i32 1, i32* %retval, align 4, !dbg !3789
  br label %return, !dbg !3789

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !3790
  ret i32 %7, !dbg !3790
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @xenbus_read(i32 %t.coerce, i8* %dir, i8* %node, i32* %len) #0 !dbg !3791 {
entry:
  %retval = alloca i8*, align 8
  %t = alloca %struct.xenbus_transaction, align 4
  %dir.addr = alloca i8*, align 8
  %node.addr = alloca i8*, align 8
  %len.addr = alloca i32*, align 8
  %path = alloca i8*, align 8
  %ret = alloca i8*, align 8
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %t, i32 0, i32 0
  store i32 %t.coerce, i32* %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata %struct.xenbus_transaction* %t, metadata !3794, metadata !DIExpression()), !dbg !3795
  store i8* %dir, i8** %dir.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dir.addr, metadata !3796, metadata !DIExpression()), !dbg !3797
  store i8* %node, i8** %node.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %node.addr, metadata !3798, metadata !DIExpression()), !dbg !3799
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !3800, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.declare(metadata i8** %path, metadata !3802, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.declare(metadata i8** %ret, metadata !3804, metadata !DIExpression()), !dbg !3805
  %0 = load i8*, i8** %dir.addr, align 8, !dbg !3806
  %1 = load i8*, i8** %node.addr, align 8, !dbg !3807
  %call = call i8* @join(i8* %0, i8* %1) #10, !dbg !3808
  store i8* %call, i8** %path, align 8, !dbg !3809
  %2 = load i8*, i8** %path, align 8, !dbg !3810
  %call1 = call zeroext i1 @IS_ERR(i8* %2) #10, !dbg !3812
  br i1 %call1, label %if.then, label %if.end, !dbg !3813

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %path, align 8, !dbg !3814
  store i8* %3, i8** %retval, align 8, !dbg !3815
  br label %return, !dbg !3815

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %path, align 8, !dbg !3816
  %5 = load i32*, i32** %len.addr, align 8, !dbg !3817
  %coerce.dive2 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %t, i32 0, i32 0, !dbg !3818
  %6 = load i32, i32* %coerce.dive2, align 4, !dbg !3818
  %call3 = call i8* @xs_single(i32 %6, i32 2, i8* %4, i32* %5) #10, !dbg !3818
  store i8* %call3, i8** %ret, align 8, !dbg !3819
  %7 = load i8*, i8** %path, align 8, !dbg !3820
  call void @kfree(i8* %7) #10, !dbg !3821
  %8 = load i8*, i8** %ret, align 8, !dbg !3822
  store i8* %8, i8** %retval, align 8, !dbg !3823
  br label %return, !dbg !3823

return:                                           ; preds = %if.end, %if.then
  %9 = load i8*, i8** %retval, align 8, !dbg !3824
  ret i8* %9, !dbg !3824
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xenbus_write(i32 %t.coerce, i8* %dir, i8* %node, i8* %string) #0 !dbg !3825 {
entry:
  %retval = alloca i32, align 4
  %t = alloca %struct.xenbus_transaction, align 4
  %dir.addr = alloca i8*, align 8
  %node.addr = alloca i8*, align 8
  %string.addr = alloca i8*, align 8
  %path = alloca i8*, align 8
  %iovec = alloca [2 x %struct.kvec], align 16
  %ret = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %t, i32 0, i32 0
  store i32 %t.coerce, i32* %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata %struct.xenbus_transaction* %t, metadata !3828, metadata !DIExpression()), !dbg !3829
  store i8* %dir, i8** %dir.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dir.addr, metadata !3830, metadata !DIExpression()), !dbg !3831
  store i8* %node, i8** %node.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %node.addr, metadata !3832, metadata !DIExpression()), !dbg !3833
  store i8* %string, i8** %string.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %string.addr, metadata !3834, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.declare(metadata i8** %path, metadata !3836, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.declare(metadata [2 x %struct.kvec]* %iovec, metadata !3838, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3841, metadata !DIExpression()), !dbg !3842
  %0 = load i8*, i8** %dir.addr, align 8, !dbg !3843
  %1 = load i8*, i8** %node.addr, align 8, !dbg !3844
  %call = call i8* @join(i8* %0, i8* %1) #10, !dbg !3845
  store i8* %call, i8** %path, align 8, !dbg !3846
  %2 = load i8*, i8** %path, align 8, !dbg !3847
  %call1 = call zeroext i1 @IS_ERR(i8* %2) #10, !dbg !3849
  br i1 %call1, label %if.then, label %if.end, !dbg !3850

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %path, align 8, !dbg !3851
  %call2 = call i64 @PTR_ERR(i8* %3) #10, !dbg !3852
  %conv = trunc i64 %call2 to i32, !dbg !3852
  store i32 %conv, i32* %retval, align 4, !dbg !3853
  br label %return, !dbg !3853

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %path, align 8, !dbg !3854
  %arrayidx = getelementptr [2 x %struct.kvec], [2 x %struct.kvec]* %iovec, i64 0, i64 0, !dbg !3855
  %iov_base = getelementptr inbounds %struct.kvec, %struct.kvec* %arrayidx, i32 0, i32 0, !dbg !3856
  store i8* %4, i8** %iov_base, align 16, !dbg !3857
  %5 = load i8*, i8** %path, align 8, !dbg !3858
  %call3 = call i64 @strlen(i8* %5) #10, !dbg !3859
  %add = add i64 %call3, 1, !dbg !3860
  %arrayidx4 = getelementptr [2 x %struct.kvec], [2 x %struct.kvec]* %iovec, i64 0, i64 0, !dbg !3861
  %iov_len = getelementptr inbounds %struct.kvec, %struct.kvec* %arrayidx4, i32 0, i32 1, !dbg !3862
  store i64 %add, i64* %iov_len, align 8, !dbg !3863
  %6 = load i8*, i8** %string.addr, align 8, !dbg !3864
  %arrayidx5 = getelementptr [2 x %struct.kvec], [2 x %struct.kvec]* %iovec, i64 0, i64 1, !dbg !3865
  %iov_base6 = getelementptr inbounds %struct.kvec, %struct.kvec* %arrayidx5, i32 0, i32 0, !dbg !3866
  store i8* %6, i8** %iov_base6, align 16, !dbg !3867
  %7 = load i8*, i8** %string.addr, align 8, !dbg !3868
  %call7 = call i64 @strlen(i8* %7) #10, !dbg !3869
  %arrayidx8 = getelementptr [2 x %struct.kvec], [2 x %struct.kvec]* %iovec, i64 0, i64 1, !dbg !3870
  %iov_len9 = getelementptr inbounds %struct.kvec, %struct.kvec* %arrayidx8, i32 0, i32 1, !dbg !3871
  store i64 %call7, i64* %iov_len9, align 8, !dbg !3872
  %arraydecay = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %iovec, i64 0, i64 0, !dbg !3873
  %coerce.dive10 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %t, i32 0, i32 0, !dbg !3874
  %8 = load i32, i32* %coerce.dive10, align 4, !dbg !3874
  %call11 = call i8* @xs_talkv(i32 %8, i32 11, %struct.kvec* %arraydecay, i32 2, i32* null) #10, !dbg !3874
  %call12 = call i32 @xs_error(i8* %call11) #10, !dbg !3875
  store i32 %call12, i32* %ret, align 4, !dbg !3876
  %9 = load i8*, i8** %path, align 8, !dbg !3877
  call void @kfree(i8* %9) #10, !dbg !3878
  %10 = load i32, i32* %ret, align 4, !dbg !3879
  store i32 %10, i32* %retval, align 4, !dbg !3880
  br label %return, !dbg !3880

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !3881
  ret i32 %11, !dbg !3881
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !3882 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3885, metadata !DIExpression()), !dbg !3886
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3887
  %1 = ptrtoint i8* %0 to i64, !dbg !3888
  ret i64 %1, !dbg !3889
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xs_error(i8* %reply) #0 !dbg !3890 {
entry:
  %retval = alloca i32, align 4
  %reply.addr = alloca i8*, align 8
  store i8* %reply, i8** %reply.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %reply.addr, metadata !3893, metadata !DIExpression()), !dbg !3894
  %0 = load i8*, i8** %reply.addr, align 8, !dbg !3895
  %call = call zeroext i1 @IS_ERR(i8* %0) #10, !dbg !3897
  br i1 %call, label %if.then, label %if.end, !dbg !3898

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %reply.addr, align 8, !dbg !3899
  %call1 = call i64 @PTR_ERR(i8* %1) #10, !dbg !3900
  %conv = trunc i64 %call1 to i32, !dbg !3900
  store i32 %conv, i32* %retval, align 4, !dbg !3901
  br label %return, !dbg !3901

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %reply.addr, align 8, !dbg !3902
  call void @kfree(i8* %2) #10, !dbg !3903
  store i32 0, i32* %retval, align 4, !dbg !3904
  br label %return, !dbg !3904

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !3905
  ret i32 %3, !dbg !3905
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @xs_talkv(i32 %t.coerce, i32 %type, %struct.kvec* %iovec, i32 %num_vecs, i32* %len) #0 !dbg !2911 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3034, metadata !DIExpression()), !dbg !3906
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3046, metadata !DIExpression()), !dbg !3909
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3048, metadata !DIExpression()), !dbg !3910
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3050, metadata !DIExpression()), !dbg !3911
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3052, metadata !DIExpression()), !dbg !3912
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3058, metadata !DIExpression()), !dbg !3914
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3064, metadata !DIExpression()), !dbg !3916
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3073, metadata !DIExpression()), !dbg !3919
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3075, metadata !DIExpression()), !dbg !3920
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3077, metadata !DIExpression()), !dbg !3921
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3079, metadata !DIExpression()), !dbg !3922
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3081, metadata !DIExpression()), !dbg !3923
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3083, metadata !DIExpression()), !dbg !3924
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3085, metadata !DIExpression()), !dbg !3925
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3087, metadata !DIExpression()), !dbg !3926
  %retval = alloca i8*, align 8
  %t = alloca %struct.xenbus_transaction, align 4
  %type.addr = alloca i32, align 4
  %iovec.addr = alloca %struct.kvec*, align 8
  %num_vecs.addr = alloca i32, align 4
  %len.addr = alloca i32*, align 8
  %req = alloca %struct.xb_req_data*, align 8
  %msg = alloca %struct.xsd_sockmsg, align 4
  %ret = alloca i8*, align 8
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %t, i32 0, i32 0
  store i32 %t.coerce, i32* %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata %struct.xenbus_transaction* %t, metadata !3927, metadata !DIExpression()), !dbg !3928
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !3929, metadata !DIExpression()), !dbg !3930
  store %struct.kvec* %iovec, %struct.kvec** %iovec.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kvec** %iovec.addr, metadata !3931, metadata !DIExpression()), !dbg !3932
  store i32 %num_vecs, i32* %num_vecs.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_vecs.addr, metadata !3933, metadata !DIExpression()), !dbg !3934
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !3935, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.declare(metadata %struct.xb_req_data** %req, metadata !3937, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.declare(metadata %struct.xsd_sockmsg* %msg, metadata !3939, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.declare(metadata i8** %ret, metadata !3941, metadata !DIExpression()), !dbg !3942
  store i8* null, i8** %ret, align 8, !dbg !3942
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3943, metadata !DIExpression()), !dbg !3944
  call void @llvm.dbg.declare(metadata i32* %err, metadata !3945, metadata !DIExpression()), !dbg !3946
  store i64 104, i64* %size.addr.i, align 8
  store i32 3104, i32* %flags.addr.i, align 4
  %0 = load i64, i64* %size.addr.i, align 8, !dbg !3947
  %1 = call i1 @llvm.is.constant.i64(i64 %0) #3, !dbg !3948
  br i1 %1, label %if.then.i, label %if.end9.i, !dbg !3949

if.then.i:                                        ; preds = %entry
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !3950
  %cmp.i = icmp ugt i64 %2, 8192, !dbg !3951
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3952

if.then1.i:                                       ; preds = %if.then.i
  %3 = load i64, i64* %size.addr.i, align 8, !dbg !3953
  %4 = load i32, i32* %flags.addr.i, align 4, !dbg !3954
  store i64 %3, i64* %size.addr.i.i, align 8
  store i32 %4, i32* %flags.addr.i.i, align 4
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !3955
  %call.i.i = call i32 @get_order(i64 %5) #11, !dbg !3956
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3923
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !3957
  %7 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3958
  %8 = load i32, i32* %order.i.i, align 4, !dbg !3959
  store i64 %6, i64* %size.addr.i.i.i, align 8
  store i32 %7, i32* %flags.addr.i.i.i, align 4
  store i32 %8, i32* %order.addr.i.i.i, align 4
  %9 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3960
  %10 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3961
  %11 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3962
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %9, i32 %10, i32 %11) #12, !dbg !3963
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3963
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3963
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3963
  call void @llvm.assume(i1 %maskcond.i.i.i) #3, !dbg !3963
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3964
  br label %kmalloc.exit, !dbg !3964

if.end.i:                                         ; preds = %if.then.i
  %12 = load i64, i64* %size.addr.i, align 8, !dbg !3965
  store i64 %12, i64* %size.addr.i11.i, align 8
  %13 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3966
  %tobool.i.i = icmp ne i64 %13, 0, !dbg !3966
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3967

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3968
  br label %kmalloc_index.exit.i, !dbg !3968

if.end.i.i:                                       ; preds = %if.end.i
  %14 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3969
  %cmp.i.i = icmp ule i64 %14, 8, !dbg !3970
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3971

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3972
  br label %kmalloc_index.exit.i, !dbg !3972

if.end2.i.i:                                      ; preds = %if.end.i.i
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3973
  %cmp3.i.i = icmp ugt i64 %15, 64, !dbg !3974
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3975

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3976
  %cmp4.i.i = icmp ule i64 %16, 96, !dbg !3977
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3978

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3979
  br label %kmalloc_index.exit.i, !dbg !3979

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3980
  %cmp7.i.i = icmp ugt i64 %17, 128, !dbg !3981
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3982

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3983
  %cmp9.i.i = icmp ule i64 %18, 192, !dbg !3984
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3985

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3986
  br label %kmalloc_index.exit.i, !dbg !3986

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3987
  %cmp12.i.i = icmp ule i64 %19, 8, !dbg !3988
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3989

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3990
  br label %kmalloc_index.exit.i, !dbg !3990

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3991
  %cmp15.i.i = icmp ule i64 %20, 16, !dbg !3992
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3993

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3994
  br label %kmalloc_index.exit.i, !dbg !3994

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3995
  %cmp18.i.i = icmp ule i64 %21, 32, !dbg !3996
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3997

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3998
  br label %kmalloc_index.exit.i, !dbg !3998

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3999
  %cmp21.i.i = icmp ule i64 %22, 64, !dbg !4000
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4001

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4002
  br label %kmalloc_index.exit.i, !dbg !4002

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4003
  %cmp24.i.i = icmp ule i64 %23, 128, !dbg !4004
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4005

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4006
  br label %kmalloc_index.exit.i, !dbg !4006

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4007
  %cmp27.i.i = icmp ule i64 %24, 256, !dbg !4008
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4009

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4010
  br label %kmalloc_index.exit.i, !dbg !4010

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4011
  %cmp30.i.i = icmp ule i64 %25, 512, !dbg !4012
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4013

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4014
  br label %kmalloc_index.exit.i, !dbg !4014

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4015
  %cmp33.i.i = icmp ule i64 %26, 1024, !dbg !4016
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4017

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4018
  br label %kmalloc_index.exit.i, !dbg !4018

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4019
  %cmp36.i.i = icmp ule i64 %27, 2048, !dbg !4020
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4021

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4022
  br label %kmalloc_index.exit.i, !dbg !4022

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4023
  %cmp39.i.i = icmp ule i64 %28, 4096, !dbg !4024
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4025

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4026
  br label %kmalloc_index.exit.i, !dbg !4026

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4027
  %cmp42.i.i = icmp ule i64 %29, 8192, !dbg !4028
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4029

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4030
  br label %kmalloc_index.exit.i, !dbg !4030

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4031
  %cmp45.i.i = icmp ule i64 %30, 16384, !dbg !4032
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4033

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4034
  br label %kmalloc_index.exit.i, !dbg !4034

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4035
  %cmp48.i.i = icmp ule i64 %31, 32768, !dbg !4036
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4037

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4038
  br label %kmalloc_index.exit.i, !dbg !4038

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4039
  %cmp51.i.i = icmp ule i64 %32, 65536, !dbg !4040
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4041

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4042
  br label %kmalloc_index.exit.i, !dbg !4042

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4043
  %cmp54.i.i = icmp ule i64 %33, 131072, !dbg !4044
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4045

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4046
  br label %kmalloc_index.exit.i, !dbg !4046

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4047
  %cmp57.i.i = icmp ule i64 %34, 262144, !dbg !4048
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4049

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4050
  br label %kmalloc_index.exit.i, !dbg !4050

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4051
  %cmp60.i.i = icmp ule i64 %35, 524288, !dbg !4052
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4053

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4054
  br label %kmalloc_index.exit.i, !dbg !4054

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4055
  %cmp63.i.i = icmp ule i64 %36, 1048576, !dbg !4056
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4057

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4058
  br label %kmalloc_index.exit.i, !dbg !4058

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4059
  %cmp66.i.i = icmp ule i64 %37, 2097152, !dbg !4060
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4061

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4062
  br label %kmalloc_index.exit.i, !dbg !4062

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4063
  %cmp69.i.i = icmp ule i64 %38, 4194304, !dbg !4064
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4065

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4066
  br label %kmalloc_index.exit.i, !dbg !4066

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4067
  %cmp72.i.i = icmp ule i64 %39, 8388608, !dbg !4068
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4069

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4070
  br label %kmalloc_index.exit.i, !dbg !4070

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4071
  %cmp75.i.i = icmp ule i64 %40, 16777216, !dbg !4072
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4073

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4074
  br label %kmalloc_index.exit.i, !dbg !4074

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4075
  %cmp78.i.i = icmp ule i64 %41, 33554432, !dbg !4076
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4077

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4078
  br label %kmalloc_index.exit.i, !dbg !4078

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4079
  %cmp81.i.i = icmp ule i64 %42, 67108864, !dbg !4080
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4081

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4082
  br label %kmalloc_index.exit.i, !dbg !4082

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 382, i32 0, i64 12) #3, !dbg !4083, !srcloc !3264
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 90) #3, !dbg !4084, !srcloc !3268
  unreachable, !dbg !4085

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %43 = load i32, i32* %retval.i.i, align 4, !dbg !4086
  store i32 %43, i32* %index.i, align 4, !dbg !4087
  %44 = load i32, i32* %index.i, align 4, !dbg !4088
  %tobool.i = icmp ne i32 %44, 0, !dbg !4088
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4089

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4090
  br label %kmalloc.exit, !dbg !4090

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %45 = load i32, i32* %flags.addr.i, align 4, !dbg !4091
  store i32 %45, i32* %flags.addr.i13.i, align 4
  %46 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4092
  %and.i.i = and i32 %46, 17, !dbg !4092
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4092
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4092
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4092
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4092
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4093

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4094
  br label %kmalloc_type.exit.i, !dbg !4094

if.end.i16.i:                                     ; preds = %if.end4.i
  %47 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4095
  %and2.i.i = and i32 %47, 1, !dbg !4096
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4095
  %48 = zext i1 %tobool3.i.i to i64, !dbg !4095
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4095
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4097
  br label %kmalloc_type.exit.i, !dbg !4097

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %49 = load i32, i32* %retval.i12.i, align 4, !dbg !4098
  %idxprom.i = zext i32 %49 to i64, !dbg !4099
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4099
  %50 = load i32, i32* %index.i, align 4, !dbg !4100
  %idxprom6.i = zext i32 %50 to i64, !dbg !4099
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4099
  %51 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4099
  %52 = load i32, i32* %flags.addr.i, align 4, !dbg !4101
  %53 = load i64, i64* %size.addr.i, align 8, !dbg !4102
  store %struct.kmem_cache* %51, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %52, i32* %flags.addr.i17.i, align 4
  store i64 %53, i64* %size.addr.i18.i, align 8
  %54 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4103
  %55 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4104
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %54, i32 %55) #12, !dbg !4105
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4105
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4105
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4105
  call void @llvm.assume(i1 %maskcond.i.i) #3, !dbg !4105
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3911
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4106
  %57 = load i8*, i8** %ret.i.i, align 8, !dbg !4107
  %58 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4108
  %59 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4109
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %56, i8* %57, i64 %58, i32 %59) #12, !dbg !4110
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4111
  %60 = load i8*, i8** %ret.i.i, align 8, !dbg !4112
  store i8* %60, i8** %retval.i, align 8, !dbg !4113
  br label %kmalloc.exit, !dbg !4113

if.end9.i:                                        ; preds = %entry
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !4114
  %62 = load i32, i32* %flags.addr.i, align 4, !dbg !4115
  %call10.i = call noalias i8* @__kmalloc(i64 %61, i32 %62) #12, !dbg !4116
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4116
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4116
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4116
  call void @llvm.assume(i1 %maskcond.i) #3, !dbg !4116
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4117
  br label %kmalloc.exit, !dbg !4117

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %63 = load i8*, i8** %retval.i, align 8, !dbg !4118
  %64 = bitcast i8* %63 to %struct.xb_req_data*, !dbg !4119
  store %struct.xb_req_data* %64, %struct.xb_req_data** %req, align 8, !dbg !4120
  %65 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !4121
  %tobool = icmp ne %struct.xb_req_data* %65, null, !dbg !4121
  br i1 %tobool, label %if.end, label %if.then, !dbg !4123

if.then:                                          ; preds = %kmalloc.exit
  %call1 = call i8* @ERR_PTR(i64 -12) #10, !dbg !4124
  store i8* %call1, i8** %retval, align 8, !dbg !4125
  br label %return, !dbg !4125

if.end:                                           ; preds = %kmalloc.exit
  %66 = load %struct.kvec*, %struct.kvec** %iovec.addr, align 8, !dbg !4126
  %67 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !4127
  %vec = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %67, i32 0, i32 6, !dbg !4128
  store %struct.kvec* %66, %struct.kvec** %vec, align 8, !dbg !4129
  %68 = load i32, i32* %num_vecs.addr, align 4, !dbg !4130
  %69 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !4131
  %num_vecs2 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %69, i32 0, i32 7, !dbg !4132
  store i32 %68, i32* %num_vecs2, align 8, !dbg !4133
  %70 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !4134
  %cb = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %70, i32 0, i32 11, !dbg !4135
  %cb3 = bitcast {}** %cb to void (%struct.xb_req_data*)**, !dbg !4135
  store void (%struct.xb_req_data*)* @xs_wake_up, void (%struct.xb_req_data*)** %cb3, align 8, !dbg !4136
  %71 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !4137
  %user_req = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %71, i32 0, i32 10, !dbg !4138
  store i8 0, i8* %user_req, align 4, !dbg !4139
  %req_id = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %msg, i32 0, i32 1, !dbg !4140
  store i32 0, i32* %req_id, align 4, !dbg !4141
  %id = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %t, i32 0, i32 0, !dbg !4142
  %72 = load i32, i32* %id, align 4, !dbg !4142
  %tx_id = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %msg, i32 0, i32 2, !dbg !4143
  store i32 %72, i32* %tx_id, align 4, !dbg !4144
  %73 = load i32, i32* %type.addr, align 4, !dbg !4145
  %type4 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %msg, i32 0, i32 0, !dbg !4146
  store i32 %73, i32* %type4, align 4, !dbg !4147
  %len5 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %msg, i32 0, i32 3, !dbg !4148
  store i32 0, i32* %len5, align 4, !dbg !4149
  store i32 0, i32* %i, align 4, !dbg !4150
  br label %for.cond, !dbg !4152

for.cond:                                         ; preds = %for.inc, %if.end
  %74 = load i32, i32* %i, align 4, !dbg !4153
  %75 = load i32, i32* %num_vecs.addr, align 4, !dbg !4155
  %cmp = icmp ult i32 %74, %75, !dbg !4156
  br i1 %cmp, label %for.body, label %for.end, !dbg !4157

for.body:                                         ; preds = %for.cond
  %76 = load %struct.kvec*, %struct.kvec** %iovec.addr, align 8, !dbg !4158
  %77 = load i32, i32* %i, align 4, !dbg !4159
  %idxprom = zext i32 %77 to i64, !dbg !4158
  %arrayidx = getelementptr %struct.kvec, %struct.kvec* %76, i64 %idxprom, !dbg !4158
  %iov_len = getelementptr inbounds %struct.kvec, %struct.kvec* %arrayidx, i32 0, i32 1, !dbg !4160
  %78 = load i64, i64* %iov_len, align 8, !dbg !4160
  %len6 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %msg, i32 0, i32 3, !dbg !4161
  %79 = load i32, i32* %len6, align 4, !dbg !4162
  %conv = zext i32 %79 to i64, !dbg !4162
  %add = add i64 %conv, %78, !dbg !4162
  %conv7 = trunc i64 %add to i32, !dbg !4162
  store i32 %conv7, i32* %len6, align 4, !dbg !4162
  br label %for.inc, !dbg !4163

for.inc:                                          ; preds = %for.body
  %80 = load i32, i32* %i, align 4, !dbg !4164
  %inc = add i32 %80, 1, !dbg !4164
  store i32 %inc, i32* %i, align 4, !dbg !4164
  br label %for.cond, !dbg !4165, !llvm.loop !4166

for.end:                                          ; preds = %for.cond
  %81 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !4168
  call void @xs_send(%struct.xb_req_data* %81, %struct.xsd_sockmsg* %msg) #10, !dbg !4169
  %82 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !4170
  %call8 = call i8* @xs_wait_for_reply(%struct.xb_req_data* %82, %struct.xsd_sockmsg* %msg) #10, !dbg !4171
  store i8* %call8, i8** %ret, align 8, !dbg !4172
  %83 = load i32*, i32** %len.addr, align 8, !dbg !4173
  %tobool9 = icmp ne i32* %83, null, !dbg !4173
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !4175

if.then10:                                        ; preds = %for.end
  %len11 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %msg, i32 0, i32 3, !dbg !4176
  %84 = load i32, i32* %len11, align 4, !dbg !4176
  %85 = load i32*, i32** %len.addr, align 8, !dbg !4177
  store i32 %84, i32* %85, align 4, !dbg !4178
  br label %if.end12, !dbg !4179

if.end12:                                         ; preds = %if.then10, %for.end
  %86 = load i8*, i8** %ret, align 8, !dbg !4180
  %call13 = call zeroext i1 @IS_ERR(i8* %86) #10, !dbg !4182
  br i1 %call13, label %if.then14, label %if.end15, !dbg !4183

if.then14:                                        ; preds = %if.end12
  %87 = load i8*, i8** %ret, align 8, !dbg !4184
  store i8* %87, i8** %retval, align 8, !dbg !4185
  br label %return, !dbg !4185

if.end15:                                         ; preds = %if.end12
  %type16 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %msg, i32 0, i32 0, !dbg !4186
  %88 = load i32, i32* %type16, align 4, !dbg !4186
  %cmp17 = icmp eq i32 %88, 16, !dbg !4188
  br i1 %cmp17, label %if.then19, label %if.end23, !dbg !4189

if.then19:                                        ; preds = %if.end15
  %89 = load i8*, i8** %ret, align 8, !dbg !4190
  %call20 = call i32 @get_error(i8* %89) #10, !dbg !4192
  store i32 %call20, i32* %err, align 4, !dbg !4193
  %90 = load i8*, i8** %ret, align 8, !dbg !4194
  call void @kfree(i8* %90) #10, !dbg !4195
  %91 = load i32, i32* %err, align 4, !dbg !4196
  %sub = sub i32 0, %91, !dbg !4197
  %conv21 = sext i32 %sub to i64, !dbg !4197
  %call22 = call i8* @ERR_PTR(i64 %conv21) #10, !dbg !4198
  store i8* %call22, i8** %retval, align 8, !dbg !4199
  br label %return, !dbg !4199

if.end23:                                         ; preds = %if.end15
  %type24 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %msg, i32 0, i32 0, !dbg !4200
  %92 = load i32, i32* %type24, align 4, !dbg !4200
  %93 = load i32, i32* %type.addr, align 4, !dbg !4202
  %cmp25 = icmp ne i32 %92, %93, !dbg !4203
  br i1 %cmp25, label %if.then27, label %if.end35, !dbg !4204

if.then27:                                        ; preds = %if.end23
  %call28 = call i32 @___ratelimit(%struct.ratelimit_state* @xs_talkv._rs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.xs_talkv, i64 0, i64 0)) #10, !dbg !4205
  %tobool29 = icmp ne i32 %call28, 0, !dbg !4205
  br i1 %tobool29, label %if.then30, label %if.end33, !dbg !4209

if.then30:                                        ; preds = %if.then27
  %type31 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %msg, i32 0, i32 0, !dbg !4205
  %94 = load i32, i32* %type31, align 4, !dbg !4205
  %95 = load i32, i32* %type.addr, align 4, !dbg !4205
  %call32 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i32 %94, i32 %95) #13, !dbg !4205
  br label %if.end33, !dbg !4205

if.end33:                                         ; preds = %if.then30, %if.then27
  %96 = load i8*, i8** %ret, align 8, !dbg !4210
  call void @kfree(i8* %96) #10, !dbg !4211
  %call34 = call i8* @ERR_PTR(i64 -22) #10, !dbg !4212
  store i8* %call34, i8** %retval, align 8, !dbg !4213
  br label %return, !dbg !4213

if.end35:                                         ; preds = %if.end23
  %97 = load i8*, i8** %ret, align 8, !dbg !4214
  store i8* %97, i8** %retval, align 8, !dbg !4215
  br label %return, !dbg !4215

return:                                           ; preds = %if.end35, %if.end33, %if.then19, %if.then14, %if.then
  %98 = load i8*, i8** %retval, align 8, !dbg !4216
  ret i8* %98, !dbg !4216
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xenbus_mkdir(i32 %t.coerce, i8* %dir, i8* %node) #0 !dbg !4217 {
entry:
  %retval = alloca i32, align 4
  %t = alloca %struct.xenbus_transaction, align 4
  %dir.addr = alloca i8*, align 8
  %node.addr = alloca i8*, align 8
  %path = alloca i8*, align 8
  %ret = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %t, i32 0, i32 0
  store i32 %t.coerce, i32* %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata %struct.xenbus_transaction* %t, metadata !4218, metadata !DIExpression()), !dbg !4219
  store i8* %dir, i8** %dir.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dir.addr, metadata !4220, metadata !DIExpression()), !dbg !4221
  store i8* %node, i8** %node.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %node.addr, metadata !4222, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.declare(metadata i8** %path, metadata !4224, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4226, metadata !DIExpression()), !dbg !4227
  %0 = load i8*, i8** %dir.addr, align 8, !dbg !4228
  %1 = load i8*, i8** %node.addr, align 8, !dbg !4229
  %call = call i8* @join(i8* %0, i8* %1) #10, !dbg !4230
  store i8* %call, i8** %path, align 8, !dbg !4231
  %2 = load i8*, i8** %path, align 8, !dbg !4232
  %call1 = call zeroext i1 @IS_ERR(i8* %2) #10, !dbg !4234
  br i1 %call1, label %if.then, label %if.end, !dbg !4235

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %path, align 8, !dbg !4236
  %call2 = call i64 @PTR_ERR(i8* %3) #10, !dbg !4237
  %conv = trunc i64 %call2 to i32, !dbg !4237
  store i32 %conv, i32* %retval, align 4, !dbg !4238
  br label %return, !dbg !4238

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %path, align 8, !dbg !4239
  %coerce.dive3 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %t, i32 0, i32 0, !dbg !4240
  %5 = load i32, i32* %coerce.dive3, align 4, !dbg !4240
  %call4 = call i8* @xs_single(i32 %5, i32 12, i8* %4, i32* null) #10, !dbg !4240
  %call5 = call i32 @xs_error(i8* %call4) #10, !dbg !4241
  store i32 %call5, i32* %ret, align 4, !dbg !4242
  %6 = load i8*, i8** %path, align 8, !dbg !4243
  call void @kfree(i8* %6) #10, !dbg !4244
  %7 = load i32, i32* %ret, align 4, !dbg !4245
  store i32 %7, i32* %retval, align 4, !dbg !4246
  br label %return, !dbg !4246

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !4247
  ret i32 %8, !dbg !4247
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xenbus_rm(i32 %t.coerce, i8* %dir, i8* %node) #0 !dbg !4248 {
entry:
  %retval = alloca i32, align 4
  %t = alloca %struct.xenbus_transaction, align 4
  %dir.addr = alloca i8*, align 8
  %node.addr = alloca i8*, align 8
  %path = alloca i8*, align 8
  %ret = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %t, i32 0, i32 0
  store i32 %t.coerce, i32* %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata %struct.xenbus_transaction* %t, metadata !4249, metadata !DIExpression()), !dbg !4250
  store i8* %dir, i8** %dir.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dir.addr, metadata !4251, metadata !DIExpression()), !dbg !4252
  store i8* %node, i8** %node.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %node.addr, metadata !4253, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.declare(metadata i8** %path, metadata !4255, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4257, metadata !DIExpression()), !dbg !4258
  %0 = load i8*, i8** %dir.addr, align 8, !dbg !4259
  %1 = load i8*, i8** %node.addr, align 8, !dbg !4260
  %call = call i8* @join(i8* %0, i8* %1) #10, !dbg !4261
  store i8* %call, i8** %path, align 8, !dbg !4262
  %2 = load i8*, i8** %path, align 8, !dbg !4263
  %call1 = call zeroext i1 @IS_ERR(i8* %2) #10, !dbg !4265
  br i1 %call1, label %if.then, label %if.end, !dbg !4266

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %path, align 8, !dbg !4267
  %call2 = call i64 @PTR_ERR(i8* %3) #10, !dbg !4268
  %conv = trunc i64 %call2 to i32, !dbg !4268
  store i32 %conv, i32* %retval, align 4, !dbg !4269
  br label %return, !dbg !4269

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %path, align 8, !dbg !4270
  %coerce.dive3 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %t, i32 0, i32 0, !dbg !4271
  %5 = load i32, i32* %coerce.dive3, align 4, !dbg !4271
  %call4 = call i8* @xs_single(i32 %5, i32 13, i8* %4, i32* null) #10, !dbg !4271
  %call5 = call i32 @xs_error(i8* %call4) #10, !dbg !4272
  store i32 %call5, i32* %ret, align 4, !dbg !4273
  %6 = load i8*, i8** %path, align 8, !dbg !4274
  call void @kfree(i8* %6) #10, !dbg !4275
  %7 = load i32, i32* %ret, align 4, !dbg !4276
  store i32 %7, i32* %retval, align 4, !dbg !4277
  br label %return, !dbg !4277

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !4278
  ret i32 %8, !dbg !4278
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xenbus_transaction_start(%struct.xenbus_transaction* %t) #0 !dbg !4279 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca %struct.xenbus_transaction*, align 8
  %id_str = alloca i8*, align 8
  %.compoundliteral = alloca %struct.xenbus_transaction, align 4
  store %struct.xenbus_transaction* %t, %struct.xenbus_transaction** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_transaction** %t.addr, metadata !4283, metadata !DIExpression()), !dbg !4284
  call void @llvm.dbg.declare(metadata i8** %id_str, metadata !4285, metadata !DIExpression()), !dbg !4286
  %id = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !4287
  store i32 0, i32* %id, align 4, !dbg !4287
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !4288
  %0 = load i32, i32* %coerce.dive, align 4, !dbg !4288
  %call = call i8* @xs_single(i32 %0, i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32* null) #10, !dbg !4288
  store i8* %call, i8** %id_str, align 8, !dbg !4289
  %1 = load i8*, i8** %id_str, align 8, !dbg !4290
  %call1 = call zeroext i1 @IS_ERR(i8* %1) #10, !dbg !4292
  br i1 %call1, label %if.then, label %if.end, !dbg !4293

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %id_str, align 8, !dbg !4294
  %call2 = call i64 @PTR_ERR(i8* %2) #10, !dbg !4295
  %conv = trunc i64 %call2 to i32, !dbg !4295
  store i32 %conv, i32* %retval, align 4, !dbg !4296
  br label %return, !dbg !4296

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %id_str, align 8, !dbg !4297
  %call3 = call i64 @simple_strtoul(i8* %3, i8** null, i32 0) #10, !dbg !4298
  %conv4 = trunc i64 %call3 to i32, !dbg !4298
  %4 = load %struct.xenbus_transaction*, %struct.xenbus_transaction** %t.addr, align 8, !dbg !4299
  %id5 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %4, i32 0, i32 0, !dbg !4300
  store i32 %conv4, i32* %id5, align 4, !dbg !4301
  %5 = load i8*, i8** %id_str, align 8, !dbg !4302
  call void @kfree(i8* %5) #10, !dbg !4303
  store i32 0, i32* %retval, align 4, !dbg !4304
  br label %return, !dbg !4304

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !4305
  ret i32 %6, !dbg !4305
}

; Function Attrs: noredzone
declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xenbus_transaction_end(i32 %t.coerce, i32 %abort) #0 !dbg !4306 {
entry:
  %t = alloca %struct.xenbus_transaction, align 4
  %abort.addr = alloca i32, align 4
  %abortstr = alloca [2 x i8], align 1
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %t, i32 0, i32 0
  store i32 %t.coerce, i32* %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata %struct.xenbus_transaction* %t, metadata !4309, metadata !DIExpression()), !dbg !4310
  store i32 %abort, i32* %abort.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %abort.addr, metadata !4311, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.declare(metadata [2 x i8]* %abortstr, metadata !4313, metadata !DIExpression()), !dbg !4315
  %0 = load i32, i32* %abort.addr, align 4, !dbg !4316
  %tobool = icmp ne i32 %0, 0, !dbg !4316
  br i1 %tobool, label %if.then, label %if.else, !dbg !4318

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %abortstr, i64 0, i64 0, !dbg !4319
  %call = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #10, !dbg !4320
  br label %if.end, !dbg !4320

if.else:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [2 x i8], [2 x i8]* %abortstr, i64 0, i64 0, !dbg !4321
  %call2 = call i8* @strcpy(i8* %arraydecay1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #10, !dbg !4322
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay3 = getelementptr inbounds [2 x i8], [2 x i8]* %abortstr, i64 0, i64 0, !dbg !4323
  %coerce.dive4 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %t, i32 0, i32 0, !dbg !4324
  %1 = load i32, i32* %coerce.dive4, align 4, !dbg !4324
  %call5 = call i8* @xs_single(i32 %1, i32 7, i8* %arraydecay3, i32* null) #10, !dbg !4324
  %call6 = call i32 @xs_error(i8* %call5) #10, !dbg !4325
  ret i32 %call6, !dbg !4326
}

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xenbus_scanf(i32 %t.coerce, i8* %dir, i8* %node, i8* %fmt, ...) #0 !dbg !4327 {
entry:
  %retval = alloca i32, align 4
  %t = alloca %struct.xenbus_transaction, align 4
  %dir.addr = alloca i8*, align 8
  %node.addr = alloca i8*, align 8
  %fmt.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %ret = alloca i32, align 4
  %val = alloca i8*, align 8
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %t, i32 0, i32 0
  store i32 %t.coerce, i32* %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata %struct.xenbus_transaction* %t, metadata !4330, metadata !DIExpression()), !dbg !4331
  store i8* %dir, i8** %dir.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dir.addr, metadata !4332, metadata !DIExpression()), !dbg !4333
  store i8* %node, i8** %node.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %node.addr, metadata !4334, metadata !DIExpression()), !dbg !4335
  store i8* %fmt, i8** %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fmt.addr, metadata !4336, metadata !DIExpression()), !dbg !4337
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !4338, metadata !DIExpression()), !dbg !4350
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4351, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.declare(metadata i8** %val, metadata !4353, metadata !DIExpression()), !dbg !4354
  %0 = load i8*, i8** %dir.addr, align 8, !dbg !4355
  %1 = load i8*, i8** %node.addr, align 8, !dbg !4356
  %coerce.dive1 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %t, i32 0, i32 0, !dbg !4357
  %2 = load i32, i32* %coerce.dive1, align 4, !dbg !4357
  %call = call i8* @xenbus_read(i32 %2, i8* %0, i8* %1, i32* null) #10, !dbg !4357
  store i8* %call, i8** %val, align 8, !dbg !4358
  %3 = load i8*, i8** %val, align 8, !dbg !4359
  %call2 = call zeroext i1 @IS_ERR(i8* %3) #10, !dbg !4361
  br i1 %call2, label %if.then, label %if.end, !dbg !4362

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %val, align 8, !dbg !4363
  %call3 = call i64 @PTR_ERR(i8* %4) #10, !dbg !4364
  %conv = trunc i64 %call3 to i32, !dbg !4364
  store i32 %conv, i32* %retval, align 4, !dbg !4365
  br label %return, !dbg !4365

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !4366
  %arraydecay4 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !4366
  call void @llvm.va_start(i8* %arraydecay4), !dbg !4366
  %5 = load i8*, i8** %val, align 8, !dbg !4367
  %6 = load i8*, i8** %fmt.addr, align 8, !dbg !4368
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !4369
  %call6 = call i32 @vsscanf(i8* %5, i8* %6, %struct.__va_list_tag* %arraydecay5) #10, !dbg !4370
  store i32 %call6, i32* %ret, align 4, !dbg !4371
  %arraydecay7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !4372
  %arraydecay78 = bitcast %struct.__va_list_tag* %arraydecay7 to i8*, !dbg !4372
  call void @llvm.va_end(i8* %arraydecay78), !dbg !4372
  %7 = load i8*, i8** %val, align 8, !dbg !4373
  call void @kfree(i8* %7) #10, !dbg !4374
  %8 = load i32, i32* %ret, align 4, !dbg !4375
  %cmp = icmp eq i32 %8, 0, !dbg !4377
  br i1 %cmp, label %if.then10, label %if.end11, !dbg !4378

if.then10:                                        ; preds = %if.end
  store i32 -34, i32* %retval, align 4, !dbg !4379
  br label %return, !dbg !4379

if.end11:                                         ; preds = %if.end
  %9 = load i32, i32* %ret, align 4, !dbg !4380
  store i32 %9, i32* %retval, align 4, !dbg !4381
  br label %return, !dbg !4381

return:                                           ; preds = %if.end11, %if.then10, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !4382
  ret i32 %10, !dbg !4382
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: noredzone
declare dso_local i32 @vsscanf(i8*, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xenbus_read_unsigned(i8* %dir, i8* %node, i32 %default_val) #0 !dbg !4383 {
entry:
  %dir.addr = alloca i8*, align 8
  %node.addr = alloca i8*, align 8
  %default_val.addr = alloca i32, align 4
  %val = alloca i32, align 4
  %ret = alloca i32, align 4
  %.compoundliteral = alloca %struct.xenbus_transaction, align 4
  store i8* %dir, i8** %dir.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dir.addr, metadata !4386, metadata !DIExpression()), !dbg !4387
  store i8* %node, i8** %node.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %node.addr, metadata !4388, metadata !DIExpression()), !dbg !4389
  store i32 %default_val, i32* %default_val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %default_val.addr, metadata !4390, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4392, metadata !DIExpression()), !dbg !4393
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4394, metadata !DIExpression()), !dbg !4395
  %id = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !4396
  store i32 0, i32* %id, align 4, !dbg !4396
  %0 = load i8*, i8** %dir.addr, align 8, !dbg !4397
  %1 = load i8*, i8** %node.addr, align 8, !dbg !4398
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !4399
  %2 = load i32, i32* %coerce.dive, align 4, !dbg !4399
  %call = call i32 (i32, i8*, i8*, i8*, ...) @xenbus_scanf(i32 %2, i8* %0, i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32* %val) #10, !dbg !4399
  store i32 %call, i32* %ret, align 4, !dbg !4400
  %3 = load i32, i32* %ret, align 4, !dbg !4401
  %cmp = icmp sle i32 %3, 0, !dbg !4403
  br i1 %cmp, label %if.then, label %if.end, !dbg !4404

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %default_val.addr, align 4, !dbg !4405
  store i32 %4, i32* %val, align 4, !dbg !4406
  br label %if.end, !dbg !4407

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %val, align 4, !dbg !4408
  ret i32 %5, !dbg !4409
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xenbus_printf(i32 %t.coerce, i8* %dir, i8* %node, i8* %fmt, ...) #0 !dbg !4410 {
entry:
  %retval = alloca i32, align 4
  %t = alloca %struct.xenbus_transaction, align 4
  %dir.addr = alloca i8*, align 8
  %node.addr = alloca i8*, align 8
  %fmt.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %ret = alloca i32, align 4
  %buf = alloca i8*, align 8
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %t, i32 0, i32 0
  store i32 %t.coerce, i32* %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata %struct.xenbus_transaction* %t, metadata !4411, metadata !DIExpression()), !dbg !4412
  store i8* %dir, i8** %dir.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dir.addr, metadata !4413, metadata !DIExpression()), !dbg !4414
  store i8* %node, i8** %node.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %node.addr, metadata !4415, metadata !DIExpression()), !dbg !4416
  store i8* %fmt, i8** %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fmt.addr, metadata !4417, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !4419, metadata !DIExpression()), !dbg !4420
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4421, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !4423, metadata !DIExpression()), !dbg !4424
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !4425
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !4425
  call void @llvm.va_start(i8* %arraydecay1), !dbg !4425
  %0 = load i8*, i8** %fmt.addr, align 8, !dbg !4426
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !4427
  %call = call noalias i8* @kvasprintf(i32 3104, i8* %0, %struct.__va_list_tag* %arraydecay2) #10, !dbg !4428
  store i8* %call, i8** %buf, align 8, !dbg !4429
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !4430
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !4430
  call void @llvm.va_end(i8* %arraydecay34), !dbg !4430
  %1 = load i8*, i8** %buf, align 8, !dbg !4431
  %tobool = icmp ne i8* %1, null, !dbg !4431
  br i1 %tobool, label %if.end, label %if.then, !dbg !4433

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4434
  br label %return, !dbg !4434

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %dir.addr, align 8, !dbg !4435
  %3 = load i8*, i8** %node.addr, align 8, !dbg !4436
  %4 = load i8*, i8** %buf, align 8, !dbg !4437
  %coerce.dive5 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %t, i32 0, i32 0, !dbg !4438
  %5 = load i32, i32* %coerce.dive5, align 4, !dbg !4438
  %call6 = call i32 @xenbus_write(i32 %5, i8* %2, i8* %3, i8* %4) #10, !dbg !4438
  store i32 %call6, i32* %ret, align 4, !dbg !4439
  %6 = load i8*, i8** %buf, align 8, !dbg !4440
  call void @kfree(i8* %6) #10, !dbg !4441
  %7 = load i32, i32* %ret, align 4, !dbg !4442
  store i32 %7, i32* %retval, align 4, !dbg !4443
  br label %return, !dbg !4443

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !4444
  ret i32 %8, !dbg !4444
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kvasprintf(i32, i8*, %struct.__va_list_tag*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xenbus_gather(i32 %t.coerce, i8* %dir, ...) #0 !dbg !4445 {
entry:
  %t = alloca %struct.xenbus_transaction, align 4
  %dir.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %name = alloca i8*, align 8
  %ret = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %result = alloca i8*, align 8
  %p = alloca i8*, align 8
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %t, i32 0, i32 0
  store i32 %t.coerce, i32* %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata %struct.xenbus_transaction* %t, metadata !4448, metadata !DIExpression()), !dbg !4449
  store i8* %dir, i8** %dir.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dir.addr, metadata !4450, metadata !DIExpression()), !dbg !4451
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !4452, metadata !DIExpression()), !dbg !4453
  call void @llvm.dbg.declare(metadata i8** %name, metadata !4454, metadata !DIExpression()), !dbg !4455
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4456, metadata !DIExpression()), !dbg !4457
  store i32 0, i32* %ret, align 4, !dbg !4457
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !4458
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !4458
  call void @llvm.va_start(i8* %arraydecay1), !dbg !4458
  br label %while.cond, !dbg !4459

while.cond:                                       ; preds = %if.end37, %entry
  %0 = load i32, i32* %ret, align 4, !dbg !4460
  %cmp = icmp eq i32 %0, 0, !dbg !4461
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4462

land.rhs:                                         ; preds = %while.cond
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !4463
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0, !dbg !4463
  %gp_offset = load i32, i32* %gp_offset_p, align 16, !dbg !4463
  %fits_in_gp = icmp ule i32 %gp_offset, 40, !dbg !4463
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !4463

vaarg.in_reg:                                     ; preds = %land.rhs
  %1 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3, !dbg !4463
  %reg_save_area = load i8*, i8** %1, align 16, !dbg !4463
  %2 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset, !dbg !4463
  %3 = bitcast i8* %2 to i8**, !dbg !4463
  %4 = add i32 %gp_offset, 8, !dbg !4463
  store i32 %4, i32* %gp_offset_p, align 16, !dbg !4463
  br label %vaarg.end, !dbg !4463

vaarg.in_mem:                                     ; preds = %land.rhs
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2, !dbg !4463
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8, !dbg !4463
  %5 = bitcast i8* %overflow_arg_area to i8**, !dbg !4463
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8, !dbg !4463
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !4463
  br label %vaarg.end, !dbg !4463

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %3, %vaarg.in_reg ], [ %5, %vaarg.in_mem ], !dbg !4463
  %6 = load i8*, i8** %vaarg.addr, align 8, !dbg !4463
  store i8* %6, i8** %name, align 8, !dbg !4464
  %cmp3 = icmp ne i8* %6, null, !dbg !4465
  br label %land.end

land.end:                                         ; preds = %vaarg.end, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp3, %vaarg.end ], !dbg !4466
  br i1 %7, label %while.body, label %while.end, !dbg !4459

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i8** %fmt, metadata !4467, metadata !DIExpression()), !dbg !4469
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !4470
  %gp_offset_p5 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay4, i32 0, i32 0, !dbg !4470
  %gp_offset6 = load i32, i32* %gp_offset_p5, align 16, !dbg !4470
  %fits_in_gp7 = icmp ule i32 %gp_offset6, 40, !dbg !4470
  br i1 %fits_in_gp7, label %vaarg.in_reg8, label %vaarg.in_mem10, !dbg !4470

vaarg.in_reg8:                                    ; preds = %while.body
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay4, i32 0, i32 3, !dbg !4470
  %reg_save_area9 = load i8*, i8** %8, align 16, !dbg !4470
  %9 = getelementptr i8, i8* %reg_save_area9, i32 %gp_offset6, !dbg !4470
  %10 = bitcast i8* %9 to i8**, !dbg !4470
  %11 = add i32 %gp_offset6, 8, !dbg !4470
  store i32 %11, i32* %gp_offset_p5, align 16, !dbg !4470
  br label %vaarg.end14, !dbg !4470

vaarg.in_mem10:                                   ; preds = %while.body
  %overflow_arg_area_p11 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay4, i32 0, i32 2, !dbg !4470
  %overflow_arg_area12 = load i8*, i8** %overflow_arg_area_p11, align 8, !dbg !4470
  %12 = bitcast i8* %overflow_arg_area12 to i8**, !dbg !4470
  %overflow_arg_area.next13 = getelementptr i8, i8* %overflow_arg_area12, i32 8, !dbg !4470
  store i8* %overflow_arg_area.next13, i8** %overflow_arg_area_p11, align 8, !dbg !4470
  br label %vaarg.end14, !dbg !4470

vaarg.end14:                                      ; preds = %vaarg.in_mem10, %vaarg.in_reg8
  %vaarg.addr15 = phi i8** [ %10, %vaarg.in_reg8 ], [ %12, %vaarg.in_mem10 ], !dbg !4470
  %13 = load i8*, i8** %vaarg.addr15, align 8, !dbg !4470
  store i8* %13, i8** %fmt, align 8, !dbg !4469
  call void @llvm.dbg.declare(metadata i8** %result, metadata !4471, metadata !DIExpression()), !dbg !4472
  %arraydecay16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !4473
  %gp_offset_p17 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay16, i32 0, i32 0, !dbg !4473
  %gp_offset18 = load i32, i32* %gp_offset_p17, align 16, !dbg !4473
  %fits_in_gp19 = icmp ule i32 %gp_offset18, 40, !dbg !4473
  br i1 %fits_in_gp19, label %vaarg.in_reg20, label %vaarg.in_mem22, !dbg !4473

vaarg.in_reg20:                                   ; preds = %vaarg.end14
  %14 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay16, i32 0, i32 3, !dbg !4473
  %reg_save_area21 = load i8*, i8** %14, align 16, !dbg !4473
  %15 = getelementptr i8, i8* %reg_save_area21, i32 %gp_offset18, !dbg !4473
  %16 = bitcast i8* %15 to i8**, !dbg !4473
  %17 = add i32 %gp_offset18, 8, !dbg !4473
  store i32 %17, i32* %gp_offset_p17, align 16, !dbg !4473
  br label %vaarg.end26, !dbg !4473

vaarg.in_mem22:                                   ; preds = %vaarg.end14
  %overflow_arg_area_p23 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay16, i32 0, i32 2, !dbg !4473
  %overflow_arg_area24 = load i8*, i8** %overflow_arg_area_p23, align 8, !dbg !4473
  %18 = bitcast i8* %overflow_arg_area24 to i8**, !dbg !4473
  %overflow_arg_area.next25 = getelementptr i8, i8* %overflow_arg_area24, i32 8, !dbg !4473
  store i8* %overflow_arg_area.next25, i8** %overflow_arg_area_p23, align 8, !dbg !4473
  br label %vaarg.end26, !dbg !4473

vaarg.end26:                                      ; preds = %vaarg.in_mem22, %vaarg.in_reg20
  %vaarg.addr27 = phi i8** [ %16, %vaarg.in_reg20 ], [ %18, %vaarg.in_mem22 ], !dbg !4473
  %19 = load i8*, i8** %vaarg.addr27, align 8, !dbg !4473
  store i8* %19, i8** %result, align 8, !dbg !4472
  call void @llvm.dbg.declare(metadata i8** %p, metadata !4474, metadata !DIExpression()), !dbg !4475
  %20 = load i8*, i8** %dir.addr, align 8, !dbg !4476
  %21 = load i8*, i8** %name, align 8, !dbg !4477
  %coerce.dive28 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %t, i32 0, i32 0, !dbg !4478
  %22 = load i32, i32* %coerce.dive28, align 4, !dbg !4478
  %call = call i8* @xenbus_read(i32 %22, i8* %20, i8* %21, i32* null) #10, !dbg !4478
  store i8* %call, i8** %p, align 8, !dbg !4479
  %23 = load i8*, i8** %p, align 8, !dbg !4480
  %call29 = call zeroext i1 @IS_ERR(i8* %23) #10, !dbg !4482
  br i1 %call29, label %if.then, label %if.end, !dbg !4483

if.then:                                          ; preds = %vaarg.end26
  %24 = load i8*, i8** %p, align 8, !dbg !4484
  %call30 = call i64 @PTR_ERR(i8* %24) #10, !dbg !4486
  %conv = trunc i64 %call30 to i32, !dbg !4486
  store i32 %conv, i32* %ret, align 4, !dbg !4487
  br label %while.end, !dbg !4488

if.end:                                           ; preds = %vaarg.end26
  %25 = load i8*, i8** %fmt, align 8, !dbg !4489
  %tobool = icmp ne i8* %25, null, !dbg !4489
  br i1 %tobool, label %if.then31, label %if.else, !dbg !4491

if.then31:                                        ; preds = %if.end
  %26 = load i8*, i8** %p, align 8, !dbg !4492
  %27 = load i8*, i8** %fmt, align 8, !dbg !4495
  %28 = load i8*, i8** %result, align 8, !dbg !4496
  %call32 = call i32 (i8*, i8*, ...) @sscanf(i8* %26, i8* %27, i8* %28) #10, !dbg !4497
  %cmp33 = icmp eq i32 %call32, 0, !dbg !4498
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !4499

if.then35:                                        ; preds = %if.then31
  store i32 -22, i32* %ret, align 4, !dbg !4500
  br label %if.end36, !dbg !4501

if.end36:                                         ; preds = %if.then35, %if.then31
  %29 = load i8*, i8** %p, align 8, !dbg !4502
  call void @kfree(i8* %29) #10, !dbg !4503
  br label %if.end37, !dbg !4504

if.else:                                          ; preds = %if.end
  %30 = load i8*, i8** %p, align 8, !dbg !4505
  %31 = load i8*, i8** %result, align 8, !dbg !4506
  %32 = bitcast i8* %31 to i8**, !dbg !4507
  store i8* %30, i8** %32, align 8, !dbg !4508
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.end36
  br label %while.cond, !dbg !4459, !llvm.loop !4509

while.end:                                        ; preds = %if.then, %land.end
  %arraydecay38 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !4511
  %arraydecay3839 = bitcast %struct.__va_list_tag* %arraydecay38 to i8*, !dbg !4511
  call void @llvm.va_end(i8* %arraydecay3839), !dbg !4511
  %33 = load i32, i32* %ret, align 4, !dbg !4512
  ret i32 %33, !dbg !4513
}

; Function Attrs: noredzone
declare dso_local i32 @sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xs_watch_msg(%struct.xs_watch_event* %event) #0 !dbg !4514 {
entry:
  %lock.addr.i16 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i16, metadata !2960, metadata !DIExpression()), !dbg !4517
  %lock.addr.i14 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i14, metadata !2960, metadata !DIExpression()), !dbg !4519
  %lock.addr.i12 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i12, metadata !2968, metadata !DIExpression()), !dbg !4523
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2968, metadata !DIExpression()), !dbg !4525
  %retval = alloca i32, align 4
  %event.addr = alloca %struct.xs_watch_event*, align 8
  store %struct.xs_watch_event* %event, %struct.xs_watch_event** %event.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xs_watch_event** %event.addr, metadata !4527, metadata !DIExpression()), !dbg !4528
  %0 = load %struct.xs_watch_event*, %struct.xs_watch_event** %event.addr, align 8, !dbg !4529
  %body = getelementptr inbounds %struct.xs_watch_event, %struct.xs_watch_event* %0, i32 0, i32 5, !dbg !4531
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %body, i64 0, i64 0, !dbg !4529
  %1 = load %struct.xs_watch_event*, %struct.xs_watch_event** %event.addr, align 8, !dbg !4532
  %len = getelementptr inbounds %struct.xs_watch_event, %struct.xs_watch_event* %1, i32 0, i32 1, !dbg !4533
  %2 = load i32, i32* %len, align 8, !dbg !4533
  %call = call i32 @count_strings(i8* %arraydecay, i32 %2) #10, !dbg !4534
  %cmp = icmp ne i32 %call, 2, !dbg !4535
  br i1 %cmp, label %if.then, label %if.end, !dbg !4536

if.then:                                          ; preds = %entry
  %3 = load %struct.xs_watch_event*, %struct.xs_watch_event** %event.addr, align 8, !dbg !4537
  %4 = bitcast %struct.xs_watch_event* %3 to i8*, !dbg !4537
  call void @kfree(i8* %4) #10, !dbg !4539
  store i32 -22, i32* %retval, align 4, !dbg !4540
  br label %return, !dbg !4540

if.end:                                           ; preds = %entry
  %5 = load %struct.xs_watch_event*, %struct.xs_watch_event** %event.addr, align 8, !dbg !4541
  %body1 = getelementptr inbounds %struct.xs_watch_event, %struct.xs_watch_event* %5, i32 0, i32 5, !dbg !4542
  %arraydecay2 = getelementptr inbounds [0 x i8], [0 x i8]* %body1, i64 0, i64 0, !dbg !4541
  %6 = load %struct.xs_watch_event*, %struct.xs_watch_event** %event.addr, align 8, !dbg !4543
  %path = getelementptr inbounds %struct.xs_watch_event, %struct.xs_watch_event* %6, i32 0, i32 3, !dbg !4544
  store i8* %arraydecay2, i8** %path, align 8, !dbg !4545
  %7 = load %struct.xs_watch_event*, %struct.xs_watch_event** %event.addr, align 8, !dbg !4546
  %body3 = getelementptr inbounds %struct.xs_watch_event, %struct.xs_watch_event* %7, i32 0, i32 5, !dbg !4547
  %arraydecay4 = getelementptr inbounds [0 x i8], [0 x i8]* %body3, i64 0, i64 0, !dbg !4546
  %call5 = call i8* @strchr(i8* %arraydecay4, i32 0) #10, !dbg !4548
  %add.ptr = getelementptr i8, i8* %call5, i64 1, !dbg !4549
  %8 = load %struct.xs_watch_event*, %struct.xs_watch_event** %event.addr, align 8, !dbg !4550
  %token = getelementptr inbounds %struct.xs_watch_event, %struct.xs_watch_event* %8, i32 0, i32 4, !dbg !4551
  store i8* %add.ptr, i8** %token, align 8, !dbg !4552
  store %struct.spinlock* @watches_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !4553, !srcloc !2976
  %9 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4554
  %10 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %9, i32 0, i32 0, !dbg !4554
  %rlock.i = bitcast %union.anon* %10 to %struct.raw_spinlock*, !dbg !4554
  %11 = load %struct.xs_watch_event*, %struct.xs_watch_event** %event.addr, align 8, !dbg !4555
  %token6 = getelementptr inbounds %struct.xs_watch_event, %struct.xs_watch_event* %11, i32 0, i32 4, !dbg !4556
  %12 = load i8*, i8** %token6, align 8, !dbg !4556
  %call7 = call %struct.xenbus_watch* @find_watch(i8* %12) #10, !dbg !4557
  %13 = load %struct.xs_watch_event*, %struct.xs_watch_event** %event.addr, align 8, !dbg !4558
  %handle = getelementptr inbounds %struct.xs_watch_event, %struct.xs_watch_event* %13, i32 0, i32 2, !dbg !4559
  store %struct.xenbus_watch* %call7, %struct.xenbus_watch** %handle, align 8, !dbg !4560
  %14 = load %struct.xs_watch_event*, %struct.xs_watch_event** %event.addr, align 8, !dbg !4561
  %handle8 = getelementptr inbounds %struct.xs_watch_event, %struct.xs_watch_event* %14, i32 0, i32 2, !dbg !4562
  %15 = load %struct.xenbus_watch*, %struct.xenbus_watch** %handle8, align 8, !dbg !4562
  %cmp9 = icmp ne %struct.xenbus_watch* %15, null, !dbg !4563
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !4564

if.then10:                                        ; preds = %if.end
  store %struct.spinlock* @watch_events_lock, %struct.spinlock** %lock.addr.i12, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !4565, !srcloc !2976
  %16 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i12, align 8, !dbg !4566
  %17 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %16, i32 0, i32 0, !dbg !4566
  %rlock.i13 = bitcast %union.anon* %17 to %struct.raw_spinlock*, !dbg !4566
  %18 = load %struct.xs_watch_event*, %struct.xs_watch_event** %event.addr, align 8, !dbg !4567
  %list = getelementptr inbounds %struct.xs_watch_event, %struct.xs_watch_event* %18, i32 0, i32 0, !dbg !4568
  call void @list_add_tail(%struct.list_head* %list, %struct.list_head* @watch_events) #10, !dbg !4569
  call void @__wake_up(%struct.wait_queue_head* @watch_events_waitq, i32 3, i32 1, i8* null) #10, !dbg !4570
  store %struct.spinlock* @watch_events_lock, %struct.spinlock** %lock.addr.i14, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !4571, !srcloc !3021
  %19 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i14, align 8, !dbg !4572
  %20 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %19, i32 0, i32 0, !dbg !4572
  %rlock.i15 = bitcast %union.anon* %20 to %struct.raw_spinlock*, !dbg !4572
  br label %if.end11, !dbg !4573

if.else:                                          ; preds = %if.end
  %21 = load %struct.xs_watch_event*, %struct.xs_watch_event** %event.addr, align 8, !dbg !4574
  %22 = bitcast %struct.xs_watch_event* %21 to i8*, !dbg !4574
  call void @kfree(i8* %22) #10, !dbg !4575
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then10
  store %struct.spinlock* @watches_lock, %struct.spinlock** %lock.addr.i16, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !4576, !srcloc !3021
  %23 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i16, align 8, !dbg !4577
  %24 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %23, i32 0, i32 0, !dbg !4577
  %rlock.i17 = bitcast %union.anon* %24 to %struct.raw_spinlock*, !dbg !4577
  store i32 0, i32* %retval, align 4, !dbg !4578
  br label %return, !dbg !4578

return:                                           ; preds = %if.end11, %if.then
  %25 = load i32, i32* %retval, align 4, !dbg !4579
  ret i32 %25, !dbg !4579
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @count_strings(i8* %strings, i32 %len) #0 !dbg !4580 {
entry:
  %strings.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %num = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %strings, i8** %strings.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %strings.addr, metadata !4583, metadata !DIExpression()), !dbg !4584
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !4585, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.declare(metadata i32* %num, metadata !4587, metadata !DIExpression()), !dbg !4588
  call void @llvm.dbg.declare(metadata i8** %p, metadata !4589, metadata !DIExpression()), !dbg !4590
  %0 = load i8*, i8** %strings.addr, align 8, !dbg !4591
  store i8* %0, i8** %p, align 8, !dbg !4593
  store i32 0, i32* %num, align 4, !dbg !4594
  br label %for.cond, !dbg !4595

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %p, align 8, !dbg !4596
  %2 = load i8*, i8** %strings.addr, align 8, !dbg !4598
  %3 = load i32, i32* %len.addr, align 4, !dbg !4599
  %idx.ext = zext i32 %3 to i64, !dbg !4600
  %add.ptr = getelementptr i8, i8* %2, i64 %idx.ext, !dbg !4600
  %cmp = icmp ult i8* %1, %add.ptr, !dbg !4601
  br i1 %cmp, label %for.body, label %for.end, !dbg !4602

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %num, align 4, !dbg !4603
  %inc = add i32 %4, 1, !dbg !4603
  store i32 %inc, i32* %num, align 4, !dbg !4603
  br label %for.inc, !dbg !4604

for.inc:                                          ; preds = %for.body
  %5 = load i8*, i8** %p, align 8, !dbg !4605
  %call = call i64 @strlen(i8* %5) #10, !dbg !4606
  %add = add i64 %call, 1, !dbg !4607
  %6 = load i8*, i8** %p, align 8, !dbg !4608
  %add.ptr1 = getelementptr i8, i8* %6, i64 %add, !dbg !4608
  store i8* %add.ptr1, i8** %p, align 8, !dbg !4608
  br label %for.cond, !dbg !4609, !llvm.loop !4610

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %num, align 4, !dbg !4612
  ret i32 %7, !dbg !4613
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.xenbus_watch* @find_watch(i8* %token) #0 !dbg !4614 {
entry:
  %retval = alloca %struct.xenbus_watch*, align 8
  %token.addr = alloca i8*, align 8
  %i = alloca %struct.xenbus_watch*, align 8
  %cmp = alloca %struct.xenbus_watch*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.xenbus_watch*, align 8
  %__mptr3 = alloca i8*, align 8
  %tmp7 = alloca %struct.xenbus_watch*, align 8
  store i8* %token, i8** %token.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %token.addr, metadata !4617, metadata !DIExpression()), !dbg !4618
  call void @llvm.dbg.declare(metadata %struct.xenbus_watch** %i, metadata !4619, metadata !DIExpression()), !dbg !4620
  call void @llvm.dbg.declare(metadata %struct.xenbus_watch** %cmp, metadata !4621, metadata !DIExpression()), !dbg !4622
  %0 = load i8*, i8** %token.addr, align 8, !dbg !4623
  %call = call i64 @simple_strtoul(i8* %0, i8** null, i32 16) #10, !dbg !4624
  %1 = inttoptr i64 %call to i8*, !dbg !4625
  %2 = bitcast i8* %1 to %struct.xenbus_watch*, !dbg !4625
  store %struct.xenbus_watch* %2, %struct.xenbus_watch** %cmp, align 8, !dbg !4626
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4627, metadata !DIExpression()), !dbg !4630
  %3 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @watches, i32 0, i32 0), align 8, !dbg !4630
  %4 = bitcast %struct.list_head* %3 to i8*, !dbg !4630
  store i8* %4, i8** %__mptr, align 8, !dbg !4630
  br label %do.body, !dbg !4630

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4631

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !4630
  %add.ptr = getelementptr i8, i8* %5, i64 0, !dbg !4630
  %6 = bitcast i8* %add.ptr to %struct.xenbus_watch*, !dbg !4630
  store %struct.xenbus_watch* %6, %struct.xenbus_watch** %tmp, align 8, !dbg !4631
  %7 = load %struct.xenbus_watch*, %struct.xenbus_watch** %tmp, align 8, !dbg !4630
  store %struct.xenbus_watch* %7, %struct.xenbus_watch** %i, align 8, !dbg !4633
  br label %for.cond, !dbg !4633

for.cond:                                         ; preds = %do.end6, %do.end
  %8 = load %struct.xenbus_watch*, %struct.xenbus_watch** %i, align 8, !dbg !4634
  %list = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %8, i32 0, i32 0, !dbg !4634
  %cmp1 = icmp eq %struct.list_head* %list, @watches, !dbg !4634
  %lnot = xor i1 %cmp1, true, !dbg !4634
  br i1 %lnot, label %for.body, label %for.end, !dbg !4633

for.body:                                         ; preds = %for.cond
  %9 = load %struct.xenbus_watch*, %struct.xenbus_watch** %i, align 8, !dbg !4636
  %10 = load %struct.xenbus_watch*, %struct.xenbus_watch** %cmp, align 8, !dbg !4638
  %cmp2 = icmp eq %struct.xenbus_watch* %9, %10, !dbg !4639
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4640

if.then:                                          ; preds = %for.body
  %11 = load %struct.xenbus_watch*, %struct.xenbus_watch** %i, align 8, !dbg !4641
  store %struct.xenbus_watch* %11, %struct.xenbus_watch** %retval, align 8, !dbg !4642
  br label %return, !dbg !4642

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4638

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr3, metadata !4643, metadata !DIExpression()), !dbg !4645
  %12 = load %struct.xenbus_watch*, %struct.xenbus_watch** %i, align 8, !dbg !4645
  %list4 = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %12, i32 0, i32 0, !dbg !4645
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list4, i32 0, i32 0, !dbg !4645
  %13 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4645
  %14 = bitcast %struct.list_head* %13 to i8*, !dbg !4645
  store i8* %14, i8** %__mptr3, align 8, !dbg !4645
  br label %do.body5, !dbg !4645

do.body5:                                         ; preds = %for.inc
  br label %do.end6, !dbg !4646

do.end6:                                          ; preds = %do.body5
  %15 = load i8*, i8** %__mptr3, align 8, !dbg !4645
  %add.ptr8 = getelementptr i8, i8* %15, i64 0, !dbg !4645
  %16 = bitcast i8* %add.ptr8 to %struct.xenbus_watch*, !dbg !4645
  store %struct.xenbus_watch* %16, %struct.xenbus_watch** %tmp7, align 8, !dbg !4646
  %17 = load %struct.xenbus_watch*, %struct.xenbus_watch** %tmp7, align 8, !dbg !4645
  store %struct.xenbus_watch* %17, %struct.xenbus_watch** %i, align 8, !dbg !4634
  br label %for.cond, !dbg !4634, !llvm.loop !4648

for.end:                                          ; preds = %for.cond
  store %struct.xenbus_watch* null, %struct.xenbus_watch** %retval, align 8, !dbg !4650
  br label %return, !dbg !4650

return:                                           ; preds = %for.end, %if.then
  %18 = load %struct.xenbus_watch*, %struct.xenbus_watch** %retval, align 8, !dbg !4651
  ret %struct.xenbus_watch* %18, !dbg !4651
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !4652 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4656, metadata !DIExpression()), !dbg !4657
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4658, metadata !DIExpression()), !dbg !4659
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4660
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4661
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4662
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4662
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4663
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #10, !dbg !4664
  ret void, !dbg !4665
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @register_xenbus_watch(%struct.xenbus_watch* %watch) #0 !dbg !4666 {
entry:
  %lock.addr.i23 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i23, metadata !2960, metadata !DIExpression()), !dbg !4669
  %lock.addr.i21 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i21, metadata !2968, metadata !DIExpression()), !dbg !4673
  %lock.addr.i19 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i19, metadata !2960, metadata !DIExpression()), !dbg !4675
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2968, metadata !DIExpression()), !dbg !4677
  %watch.addr = alloca %struct.xenbus_watch*, align 8
  %token = alloca [17 x i8], align 16
  %err = alloca i32, align 4
  store %struct.xenbus_watch* %watch, %struct.xenbus_watch** %watch.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_watch** %watch.addr, metadata !4679, metadata !DIExpression()), !dbg !4680
  call void @llvm.dbg.declare(metadata [17 x i8]* %token, metadata !4681, metadata !DIExpression()), !dbg !4685
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4686, metadata !DIExpression()), !dbg !4687
  %arraydecay = getelementptr inbounds [17 x i8], [17 x i8]* %token, i64 0, i64 0, !dbg !4688
  %0 = load %struct.xenbus_watch*, %struct.xenbus_watch** %watch.addr, align 8, !dbg !4689
  %1 = ptrtoint %struct.xenbus_watch* %0 to i64, !dbg !4690
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i64 %1) #10, !dbg !4691
  call void @down_read(%struct.rw_semaphore* @xs_watch_rwsem) #10, !dbg !4692
  store %struct.spinlock* @watches_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !4693, !srcloc !2976
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4694
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !4694
  %rlock.i = bitcast %union.anon* %3 to %struct.raw_spinlock*, !dbg !4694
  br label %do.body, !dbg !4695

do.body:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [17 x i8], [17 x i8]* %token, i64 0, i64 0, !dbg !4696
  %call2 = call %struct.xenbus_watch* @find_watch(i8* %arraydecay1) #10, !dbg !4696
  %tobool = icmp ne %struct.xenbus_watch* %call2, null, !dbg !4696
  %lnot = xor i1 %tobool, true, !dbg !4696
  %lnot3 = xor i1 %lnot, true, !dbg !4696
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4696
  %conv = sext i32 %lnot.ext to i64, !dbg !4696
  %tobool4 = icmp ne i64 %conv, 0, !dbg !4696
  br i1 %tobool4, label %if.then, label %if.end, !dbg !4699

if.then:                                          ; preds = %do.body
  br label %do.body5, !dbg !4696

do.body5:                                         ; preds = %if.then
  br label %do.body6, !dbg !4700

do.body6:                                         ; preds = %do.body5
  br label %do.end, !dbg !4702

do.end:                                           ; preds = %do.body6
  br label %do.body7, !dbg !4700

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 771, i32 0, i64 12) #3, !dbg !4704, !srcloc !4706
  br label %do.end8, !dbg !4704

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !4700

do.body9:                                         ; preds = %do.end8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 206) #3, !dbg !4707, !srcloc !4710
  unreachable, !dbg !4711

do.end10:                                         ; No predecessors!
  br label %do.end11, !dbg !4700

do.end11:                                         ; preds = %do.end10
  br label %if.end, !dbg !4700

if.end:                                           ; preds = %do.end11, %do.body
  br label %do.end12, !dbg !4699

do.end12:                                         ; preds = %if.end
  %4 = load %struct.xenbus_watch*, %struct.xenbus_watch** %watch.addr, align 8, !dbg !4712
  %list = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %4, i32 0, i32 0, !dbg !4713
  call void @list_add(%struct.list_head* %list, %struct.list_head* @watches) #10, !dbg !4714
  store %struct.spinlock* @watches_lock, %struct.spinlock** %lock.addr.i19, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !4715, !srcloc !3021
  %5 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i19, align 8, !dbg !4716
  %6 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %5, i32 0, i32 0, !dbg !4716
  %rlock.i20 = bitcast %union.anon* %6 to %struct.raw_spinlock*, !dbg !4716
  %7 = load %struct.xenbus_watch*, %struct.xenbus_watch** %watch.addr, align 8, !dbg !4717
  %node = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %7, i32 0, i32 1, !dbg !4718
  %8 = load i8*, i8** %node, align 8, !dbg !4718
  %arraydecay13 = getelementptr inbounds [17 x i8], [17 x i8]* %token, i64 0, i64 0, !dbg !4719
  %call14 = call i32 @xs_watch(i8* %8, i8* %arraydecay13) #10, !dbg !4720
  store i32 %call14, i32* %err, align 4, !dbg !4721
  %9 = load i32, i32* %err, align 4, !dbg !4722
  %tobool15 = icmp ne i32 %9, 0, !dbg !4722
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !4723

if.then16:                                        ; preds = %do.end12
  store %struct.spinlock* @watches_lock, %struct.spinlock** %lock.addr.i21, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !4724, !srcloc !2976
  %10 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i21, align 8, !dbg !4725
  %11 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %10, i32 0, i32 0, !dbg !4725
  %rlock.i22 = bitcast %union.anon* %11 to %struct.raw_spinlock*, !dbg !4725
  %12 = load %struct.xenbus_watch*, %struct.xenbus_watch** %watch.addr, align 8, !dbg !4726
  %list17 = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %12, i32 0, i32 0, !dbg !4727
  call void @list_del(%struct.list_head* %list17) #10, !dbg !4728
  store %struct.spinlock* @watches_lock, %struct.spinlock** %lock.addr.i23, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !4729, !srcloc !3021
  %13 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i23, align 8, !dbg !4730
  %14 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %13, i32 0, i32 0, !dbg !4730
  %rlock.i24 = bitcast %union.anon* %14 to %struct.raw_spinlock*, !dbg !4730
  br label %if.end18, !dbg !4731

if.end18:                                         ; preds = %if.then16, %do.end12
  call void @up_read(%struct.rw_semaphore* @xs_watch_rwsem) #10, !dbg !4732
  %15 = load i32, i32* %err, align 4, !dbg !4733
  ret i32 %15, !dbg !4734
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @down_read(%struct.rw_semaphore*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !4735 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4736, metadata !DIExpression()), !dbg !4737
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4738, metadata !DIExpression()), !dbg !4739
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4740
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4741
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4742
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !4743
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4743
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %3) #10, !dbg !4744
  ret void, !dbg !4745
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xs_watch(i8* %path, i8* %token) #0 !dbg !4746 {
entry:
  %path.addr = alloca i8*, align 8
  %token.addr = alloca i8*, align 8
  %iov = alloca [2 x %struct.kvec], align 16
  %.compoundliteral = alloca %struct.xenbus_transaction, align 4
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !4749, metadata !DIExpression()), !dbg !4750
  store i8* %token, i8** %token.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %token.addr, metadata !4751, metadata !DIExpression()), !dbg !4752
  call void @llvm.dbg.declare(metadata [2 x %struct.kvec]* %iov, metadata !4753, metadata !DIExpression()), !dbg !4754
  %0 = load i8*, i8** %path.addr, align 8, !dbg !4755
  %arrayidx = getelementptr [2 x %struct.kvec], [2 x %struct.kvec]* %iov, i64 0, i64 0, !dbg !4756
  %iov_base = getelementptr inbounds %struct.kvec, %struct.kvec* %arrayidx, i32 0, i32 0, !dbg !4757
  store i8* %0, i8** %iov_base, align 16, !dbg !4758
  %1 = load i8*, i8** %path.addr, align 8, !dbg !4759
  %call = call i64 @strlen(i8* %1) #10, !dbg !4760
  %add = add i64 %call, 1, !dbg !4761
  %arrayidx1 = getelementptr [2 x %struct.kvec], [2 x %struct.kvec]* %iov, i64 0, i64 0, !dbg !4762
  %iov_len = getelementptr inbounds %struct.kvec, %struct.kvec* %arrayidx1, i32 0, i32 1, !dbg !4763
  store i64 %add, i64* %iov_len, align 8, !dbg !4764
  %2 = load i8*, i8** %token.addr, align 8, !dbg !4765
  %arrayidx2 = getelementptr [2 x %struct.kvec], [2 x %struct.kvec]* %iov, i64 0, i64 1, !dbg !4766
  %iov_base3 = getelementptr inbounds %struct.kvec, %struct.kvec* %arrayidx2, i32 0, i32 0, !dbg !4767
  store i8* %2, i8** %iov_base3, align 16, !dbg !4768
  %3 = load i8*, i8** %token.addr, align 8, !dbg !4769
  %call4 = call i64 @strlen(i8* %3) #10, !dbg !4770
  %add5 = add i64 %call4, 1, !dbg !4771
  %arrayidx6 = getelementptr [2 x %struct.kvec], [2 x %struct.kvec]* %iov, i64 0, i64 1, !dbg !4772
  %iov_len7 = getelementptr inbounds %struct.kvec, %struct.kvec* %arrayidx6, i32 0, i32 1, !dbg !4773
  store i64 %add5, i64* %iov_len7, align 8, !dbg !4774
  %id = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !4775
  store i32 0, i32* %id, align 4, !dbg !4775
  %arraydecay = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %iov, i64 0, i64 0, !dbg !4776
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !4777
  %4 = load i32, i32* %coerce.dive, align 4, !dbg !4777
  %call8 = call i8* @xs_talkv(i32 %4, i32 4, %struct.kvec* %arraydecay, i32 2, i32* null) #10, !dbg !4777
  %call9 = call i32 @xs_error(i8* %call8) #10, !dbg !4778
  ret i32 %call9, !dbg !4779
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !4780 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4783, metadata !DIExpression()), !dbg !4784
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4785
  call void @__list_del_entry(%struct.list_head* %0) #10, !dbg !4786
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4787
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4788
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !4789
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4790
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !4791
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !4792
  ret void, !dbg !4793
}

; Function Attrs: noredzone
declare dso_local void @up_read(%struct.rw_semaphore*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @unregister_xenbus_watch(%struct.xenbus_watch* %watch) #0 !dbg !4794 {
entry:
  %pscr_ret__.i63 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i63, metadata !4797, metadata !DIExpression()), !dbg !4803
  %__vpp_verify.i64 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i64, metadata !4806, metadata !DIExpression()), !dbg !4808
  %pfo_val__.i65 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i65, metadata !4809, metadata !DIExpression()), !dbg !4811
  %tmp.i66 = alloca %struct.task_struct*, align 8
  %tmp1.i67 = alloca %struct.task_struct*, align 8
  %lock.addr.i61 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i61, metadata !2960, metadata !DIExpression()), !dbg !4812
  %lock.addr.i59 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i59, metadata !2968, metadata !DIExpression()), !dbg !4814
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !4797, metadata !DIExpression()), !dbg !4816
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !4806, metadata !DIExpression()), !dbg !4819
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !4809, metadata !DIExpression()), !dbg !4820
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %lock.addr.i57 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i57, metadata !2960, metadata !DIExpression()), !dbg !4821
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2968, metadata !DIExpression()), !dbg !4823
  %watch.addr = alloca %struct.xenbus_watch*, align 8
  %event = alloca %struct.xs_watch_event*, align 8
  %tmp = alloca %struct.xs_watch_event*, align 8
  %token = alloca [17 x i8], align 16
  %err = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp27 = alloca %struct.xs_watch_event*, align 8
  %__mptr28 = alloca i8*, align 8
  %tmp32 = alloca %struct.xs_watch_event*, align 8
  %__mptr44 = alloca i8*, align 8
  %tmp49 = alloca %struct.xs_watch_event*, align 8
  store %struct.xenbus_watch* %watch, %struct.xenbus_watch** %watch.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_watch** %watch.addr, metadata !4825, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.declare(metadata %struct.xs_watch_event** %event, metadata !4827, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.declare(metadata %struct.xs_watch_event** %tmp, metadata !4829, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.declare(metadata [17 x i8]* %token, metadata !4831, metadata !DIExpression()), !dbg !4832
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4833, metadata !DIExpression()), !dbg !4834
  %arraydecay = getelementptr inbounds [17 x i8], [17 x i8]* %token, i64 0, i64 0, !dbg !4835
  %0 = load %struct.xenbus_watch*, %struct.xenbus_watch** %watch.addr, align 8, !dbg !4836
  %1 = ptrtoint %struct.xenbus_watch* %0 to i64, !dbg !4837
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i64 %1) #10, !dbg !4838
  call void @down_read(%struct.rw_semaphore* @xs_watch_rwsem) #10, !dbg !4839
  store %struct.spinlock* @watches_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !4840, !srcloc !2976
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4841
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !4841
  %rlock.i = bitcast %union.anon* %3 to %struct.raw_spinlock*, !dbg !4841
  br label %do.body, !dbg !4842

do.body:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [17 x i8], [17 x i8]* %token, i64 0, i64 0, !dbg !4843
  %call2 = call %struct.xenbus_watch* @find_watch(i8* %arraydecay1) #10, !dbg !4843
  %tobool = icmp ne %struct.xenbus_watch* %call2, null, !dbg !4843
  %lnot = xor i1 %tobool, true, !dbg !4843
  %lnot3 = xor i1 %lnot, true, !dbg !4843
  %lnot4 = xor i1 %lnot3, true, !dbg !4843
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !4843
  %conv = sext i32 %lnot.ext to i64, !dbg !4843
  %tobool5 = icmp ne i64 %conv, 0, !dbg !4843
  br i1 %tobool5, label %if.then, label %if.end, !dbg !4846

if.then:                                          ; preds = %do.body
  br label %do.body6, !dbg !4843

do.body6:                                         ; preds = %if.then
  br label %do.body7, !dbg !4847

do.body7:                                         ; preds = %do.body6
  br label %do.end, !dbg !4849

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !4847

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 800, i32 0, i64 12) #3, !dbg !4851, !srcloc !4853
  br label %do.end9, !dbg !4851

do.end9:                                          ; preds = %do.body8
  br label %do.body10, !dbg !4847

do.body10:                                        ; preds = %do.end9
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 207) #3, !dbg !4854, !srcloc !4857
  unreachable, !dbg !4858

do.end11:                                         ; No predecessors!
  br label %do.end12, !dbg !4847

do.end12:                                         ; preds = %do.end11
  br label %if.end, !dbg !4847

if.end:                                           ; preds = %do.end12, %do.body
  br label %do.end13, !dbg !4846

do.end13:                                         ; preds = %if.end
  %4 = load %struct.xenbus_watch*, %struct.xenbus_watch** %watch.addr, align 8, !dbg !4859
  %list = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %4, i32 0, i32 0, !dbg !4860
  call void @list_del(%struct.list_head* %list) #10, !dbg !4861
  store %struct.spinlock* @watches_lock, %struct.spinlock** %lock.addr.i57, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !4862, !srcloc !3021
  %5 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i57, align 8, !dbg !4863
  %6 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %5, i32 0, i32 0, !dbg !4863
  %rlock.i58 = bitcast %union.anon* %6 to %struct.raw_spinlock*, !dbg !4863
  %7 = load %struct.xenbus_watch*, %struct.xenbus_watch** %watch.addr, align 8, !dbg !4864
  %node = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %7, i32 0, i32 1, !dbg !4865
  %8 = load i8*, i8** %node, align 8, !dbg !4865
  %arraydecay14 = getelementptr inbounds [17 x i8], [17 x i8]* %token, i64 0, i64 0, !dbg !4866
  %call15 = call i32 @xs_unwatch(i8* %8, i8* %arraydecay14) #10, !dbg !4867
  store i32 %call15, i32* %err, align 4, !dbg !4868
  %9 = load i32, i32* %err, align 4, !dbg !4869
  %tobool16 = icmp ne i32 %9, 0, !dbg !4869
  br i1 %tobool16, label %if.then17, label %if.end20, !dbg !4871

if.then17:                                        ; preds = %do.end13
  %10 = load %struct.xenbus_watch*, %struct.xenbus_watch** %watch.addr, align 8, !dbg !4872
  %node18 = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %10, i32 0, i32 1, !dbg !4872
  %11 = load i8*, i8** %node18, align 8, !dbg !4872
  %12 = load i32, i32* %err, align 4, !dbg !4872
  %call19 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i8* %11, i32 %12) #13, !dbg !4872
  br label %if.end20, !dbg !4872

if.end20:                                         ; preds = %if.then17, %do.end13
  call void @up_read(%struct.rw_semaphore* @xs_watch_rwsem) #10, !dbg !4873
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !4819
  %13 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !4819
  %14 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #14, !dbg !4820, !srcloc !4874
  store i64 %14, i64* %pfo_val__.i, align 8, !dbg !4820
  %15 = load i64, i64* %pfo_val__.i, align 8, !dbg !4820
  %16 = inttoptr i64 %15 to %struct.task_struct*, !dbg !4820
  store %struct.task_struct* %16, %struct.task_struct** %tmp.i, align 8, !dbg !4820
  %17 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !4820
  store %struct.task_struct* %17, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !4816
  %18 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !4816
  store %struct.task_struct* %18, %struct.task_struct** %tmp1.i, align 8, !dbg !4816
  %19 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !4816
  %pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 35, !dbg !4875
  %20 = load i32, i32* %pid, align 64, !dbg !4875
  %21 = load i32, i32* @xenwatch_pid, align 4, !dbg !4876
  %cmp = icmp ne i32 %20, %21, !dbg !4877
  br i1 %cmp, label %if.then23, label %if.end24, !dbg !4878

if.then23:                                        ; preds = %if.end20
  call void @mutex_lock(%struct.mutex* @xenwatch_mutex) #10, !dbg !4879
  br label %if.end24, !dbg !4879

if.end24:                                         ; preds = %if.then23, %if.end20
  store %struct.spinlock* @watch_events_lock, %struct.spinlock** %lock.addr.i59, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !4880, !srcloc !2976
  %22 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i59, align 8, !dbg !4881
  %23 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %22, i32 0, i32 0, !dbg !4881
  %rlock.i60 = bitcast %union.anon* %23 to %struct.raw_spinlock*, !dbg !4881
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4882, metadata !DIExpression()), !dbg !4885
  %24 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @watch_events, i32 0, i32 0), align 8, !dbg !4885
  %25 = bitcast %struct.list_head* %24 to i8*, !dbg !4885
  store i8* %25, i8** %__mptr, align 8, !dbg !4885
  br label %do.body25, !dbg !4885

do.body25:                                        ; preds = %if.end24
  br label %do.end26, !dbg !4886

do.end26:                                         ; preds = %do.body25
  %26 = load i8*, i8** %__mptr, align 8, !dbg !4885
  %add.ptr = getelementptr i8, i8* %26, i64 0, !dbg !4885
  %27 = bitcast i8* %add.ptr to %struct.xs_watch_event*, !dbg !4885
  store %struct.xs_watch_event* %27, %struct.xs_watch_event** %tmp27, align 8, !dbg !4886
  %28 = load %struct.xs_watch_event*, %struct.xs_watch_event** %tmp27, align 8, !dbg !4885
  store %struct.xs_watch_event* %28, %struct.xs_watch_event** %event, align 8, !dbg !4888
  call void @llvm.dbg.declare(metadata i8** %__mptr28, metadata !4889, metadata !DIExpression()), !dbg !4891
  %29 = load %struct.xs_watch_event*, %struct.xs_watch_event** %event, align 8, !dbg !4891
  %list29 = getelementptr inbounds %struct.xs_watch_event, %struct.xs_watch_event* %29, i32 0, i32 0, !dbg !4891
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list29, i32 0, i32 0, !dbg !4891
  %30 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4891
  %31 = bitcast %struct.list_head* %30 to i8*, !dbg !4891
  store i8* %31, i8** %__mptr28, align 8, !dbg !4891
  br label %do.body30, !dbg !4891

do.body30:                                        ; preds = %do.end26
  br label %do.end31, !dbg !4892

do.end31:                                         ; preds = %do.body30
  %32 = load i8*, i8** %__mptr28, align 8, !dbg !4891
  %add.ptr33 = getelementptr i8, i8* %32, i64 0, !dbg !4891
  %33 = bitcast i8* %add.ptr33 to %struct.xs_watch_event*, !dbg !4891
  store %struct.xs_watch_event* %33, %struct.xs_watch_event** %tmp32, align 8, !dbg !4892
  %34 = load %struct.xs_watch_event*, %struct.xs_watch_event** %tmp32, align 8, !dbg !4891
  store %struct.xs_watch_event* %34, %struct.xs_watch_event** %tmp, align 8, !dbg !4888
  br label %for.cond, !dbg !4888

for.cond:                                         ; preds = %do.end48, %do.end31
  %35 = load %struct.xs_watch_event*, %struct.xs_watch_event** %event, align 8, !dbg !4894
  %list34 = getelementptr inbounds %struct.xs_watch_event, %struct.xs_watch_event* %35, i32 0, i32 0, !dbg !4894
  %cmp35 = icmp eq %struct.list_head* %list34, @watch_events, !dbg !4894
  %lnot37 = xor i1 %cmp35, true, !dbg !4894
  br i1 %lnot37, label %for.body, label %for.end, !dbg !4888

for.body:                                         ; preds = %for.cond
  %36 = load %struct.xs_watch_event*, %struct.xs_watch_event** %event, align 8, !dbg !4896
  %handle = getelementptr inbounds %struct.xs_watch_event, %struct.xs_watch_event* %36, i32 0, i32 2, !dbg !4899
  %37 = load %struct.xenbus_watch*, %struct.xenbus_watch** %handle, align 8, !dbg !4899
  %38 = load %struct.xenbus_watch*, %struct.xenbus_watch** %watch.addr, align 8, !dbg !4900
  %cmp39 = icmp ne %struct.xenbus_watch* %37, %38, !dbg !4901
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !4902

if.then41:                                        ; preds = %for.body
  br label %for.inc, !dbg !4903

if.end42:                                         ; preds = %for.body
  %39 = load %struct.xs_watch_event*, %struct.xs_watch_event** %event, align 8, !dbg !4904
  %list43 = getelementptr inbounds %struct.xs_watch_event, %struct.xs_watch_event* %39, i32 0, i32 0, !dbg !4905
  call void @list_del(%struct.list_head* %list43) #10, !dbg !4906
  %40 = load %struct.xs_watch_event*, %struct.xs_watch_event** %event, align 8, !dbg !4907
  %41 = bitcast %struct.xs_watch_event* %40 to i8*, !dbg !4907
  call void @kfree(i8* %41) #10, !dbg !4908
  br label %for.inc, !dbg !4909

for.inc:                                          ; preds = %if.end42, %if.then41
  %42 = load %struct.xs_watch_event*, %struct.xs_watch_event** %tmp, align 8, !dbg !4894
  store %struct.xs_watch_event* %42, %struct.xs_watch_event** %event, align 8, !dbg !4894
  call void @llvm.dbg.declare(metadata i8** %__mptr44, metadata !4910, metadata !DIExpression()), !dbg !4912
  %43 = load %struct.xs_watch_event*, %struct.xs_watch_event** %tmp, align 8, !dbg !4912
  %list45 = getelementptr inbounds %struct.xs_watch_event, %struct.xs_watch_event* %43, i32 0, i32 0, !dbg !4912
  %next46 = getelementptr inbounds %struct.list_head, %struct.list_head* %list45, i32 0, i32 0, !dbg !4912
  %44 = load %struct.list_head*, %struct.list_head** %next46, align 8, !dbg !4912
  %45 = bitcast %struct.list_head* %44 to i8*, !dbg !4912
  store i8* %45, i8** %__mptr44, align 8, !dbg !4912
  br label %do.body47, !dbg !4912

do.body47:                                        ; preds = %for.inc
  br label %do.end48, !dbg !4913

do.end48:                                         ; preds = %do.body47
  %46 = load i8*, i8** %__mptr44, align 8, !dbg !4912
  %add.ptr50 = getelementptr i8, i8* %46, i64 0, !dbg !4912
  %47 = bitcast i8* %add.ptr50 to %struct.xs_watch_event*, !dbg !4912
  store %struct.xs_watch_event* %47, %struct.xs_watch_event** %tmp49, align 8, !dbg !4913
  %48 = load %struct.xs_watch_event*, %struct.xs_watch_event** %tmp49, align 8, !dbg !4912
  store %struct.xs_watch_event* %48, %struct.xs_watch_event** %tmp, align 8, !dbg !4894
  br label %for.cond, !dbg !4894, !llvm.loop !4915

for.end:                                          ; preds = %for.cond
  store %struct.spinlock* @watch_events_lock, %struct.spinlock** %lock.addr.i61, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !4917, !srcloc !3021
  %49 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i61, align 8, !dbg !4918
  %50 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %49, i32 0, i32 0, !dbg !4918
  %rlock.i62 = bitcast %union.anon* %50 to %struct.raw_spinlock*, !dbg !4918
  store i8* null, i8** %__vpp_verify.i64, align 8, !dbg !4808
  %51 = load i8*, i8** %__vpp_verify.i64, align 8, !dbg !4808
  %52 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #14, !dbg !4811, !srcloc !4874
  store i64 %52, i64* %pfo_val__.i65, align 8, !dbg !4811
  %53 = load i64, i64* %pfo_val__.i65, align 8, !dbg !4811
  %54 = inttoptr i64 %53 to %struct.task_struct*, !dbg !4811
  store %struct.task_struct* %54, %struct.task_struct** %tmp.i66, align 8, !dbg !4811
  %55 = load %struct.task_struct*, %struct.task_struct** %tmp.i66, align 8, !dbg !4811
  store %struct.task_struct* %55, %struct.task_struct** %pscr_ret__.i63, align 8, !dbg !4803
  %56 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i63, align 8, !dbg !4803
  store %struct.task_struct* %56, %struct.task_struct** %tmp1.i67, align 8, !dbg !4803
  %57 = load %struct.task_struct*, %struct.task_struct** %tmp1.i67, align 8, !dbg !4803
  %pid52 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %57, i32 0, i32 35, !dbg !4919
  %58 = load i32, i32* %pid52, align 64, !dbg !4919
  %59 = load i32, i32* @xenwatch_pid, align 4, !dbg !4920
  %cmp53 = icmp ne i32 %58, %59, !dbg !4921
  br i1 %cmp53, label %if.then55, label %if.end56, !dbg !4922

if.then55:                                        ; preds = %for.end
  call void @mutex_unlock(%struct.mutex* @xenwatch_mutex) #10, !dbg !4923
  br label %if.end56, !dbg !4923

if.end56:                                         ; preds = %if.then55, %for.end
  ret void, !dbg !4924
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xs_unwatch(i8* %path, i8* %token) #0 !dbg !4925 {
entry:
  %path.addr = alloca i8*, align 8
  %token.addr = alloca i8*, align 8
  %iov = alloca [2 x %struct.kvec], align 16
  %.compoundliteral = alloca %struct.xenbus_transaction, align 4
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !4926, metadata !DIExpression()), !dbg !4927
  store i8* %token, i8** %token.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %token.addr, metadata !4928, metadata !DIExpression()), !dbg !4929
  call void @llvm.dbg.declare(metadata [2 x %struct.kvec]* %iov, metadata !4930, metadata !DIExpression()), !dbg !4931
  %0 = load i8*, i8** %path.addr, align 8, !dbg !4932
  %arrayidx = getelementptr [2 x %struct.kvec], [2 x %struct.kvec]* %iov, i64 0, i64 0, !dbg !4933
  %iov_base = getelementptr inbounds %struct.kvec, %struct.kvec* %arrayidx, i32 0, i32 0, !dbg !4934
  store i8* %0, i8** %iov_base, align 16, !dbg !4935
  %1 = load i8*, i8** %path.addr, align 8, !dbg !4936
  %call = call i64 @strlen(i8* %1) #10, !dbg !4937
  %add = add i64 %call, 1, !dbg !4938
  %arrayidx1 = getelementptr [2 x %struct.kvec], [2 x %struct.kvec]* %iov, i64 0, i64 0, !dbg !4939
  %iov_len = getelementptr inbounds %struct.kvec, %struct.kvec* %arrayidx1, i32 0, i32 1, !dbg !4940
  store i64 %add, i64* %iov_len, align 8, !dbg !4941
  %2 = load i8*, i8** %token.addr, align 8, !dbg !4942
  %arrayidx2 = getelementptr [2 x %struct.kvec], [2 x %struct.kvec]* %iov, i64 0, i64 1, !dbg !4943
  %iov_base3 = getelementptr inbounds %struct.kvec, %struct.kvec* %arrayidx2, i32 0, i32 0, !dbg !4944
  store i8* %2, i8** %iov_base3, align 16, !dbg !4945
  %3 = load i8*, i8** %token.addr, align 8, !dbg !4946
  %call4 = call i64 @strlen(i8* %3) #10, !dbg !4947
  %add5 = add i64 %call4, 1, !dbg !4948
  %arrayidx6 = getelementptr [2 x %struct.kvec], [2 x %struct.kvec]* %iov, i64 0, i64 1, !dbg !4949
  %iov_len7 = getelementptr inbounds %struct.kvec, %struct.kvec* %arrayidx6, i32 0, i32 1, !dbg !4950
  store i64 %add5, i64* %iov_len7, align 8, !dbg !4951
  %id = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !4952
  store i32 0, i32* %id, align 4, !dbg !4952
  %arraydecay = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %iov, i64 0, i64 0, !dbg !4953
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !4954
  %4 = load i32, i32* %coerce.dive, align 4, !dbg !4954
  %call8 = call i8* @xs_talkv(i32 %4, i32 5, %struct.kvec* %arraydecay, i32 2, i32* null) #10, !dbg !4954
  %call9 = call i32 @xs_error(i8* %call8) #10, !dbg !4955
  ret i32 %call9, !dbg !4956
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @xs_suspend() #0 !dbg !4957 {
entry:
  call void @xs_suspend_enter() #10, !dbg !4958
  call void @down_write(%struct.rw_semaphore* @xs_watch_rwsem) #10, !dbg !4959
  call void @mutex_lock(%struct.mutex* @xs_response_mutex) #10, !dbg !4960
  ret void, !dbg !4961
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xs_suspend_enter() #0 !dbg !4962 {
entry:
  %lock.addr.i8 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i8, metadata !2960, metadata !DIExpression()), !dbg !4963
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2968, metadata !DIExpression()), !dbg !4965
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret = alloca i64, align 8
  %__int = alloca i64, align 8
  %tmp = alloca i64, align 8
  store %struct.spinlock* @xs_state_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !4967, !srcloc !2976
  %0 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4968
  %1 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %0, i32 0, i32 0, !dbg !4968
  %rlock.i = bitcast %union.anon* %1 to %struct.raw_spinlock*, !dbg !4968
  %2 = load i32, i32* @xs_suspend_active, align 4, !dbg !4969
  %inc = add i32 %2, 1, !dbg !4969
  store i32 %inc, i32* @xs_suspend_active, align 4, !dbg !4969
  store %struct.spinlock* @xs_state_lock, %struct.spinlock** %lock.addr.i8, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !4970, !srcloc !3021
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i8, align 8, !dbg !4971
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !4971
  %rlock.i9 = bitcast %union.anon* %4 to %struct.raw_spinlock*, !dbg !4971
  br label %do.body, !dbg !4972

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4973

do.body1:                                         ; preds = %do.body
  br label %do.body2, !dbg !4975

do.body2:                                         ; preds = %do.body1
  br label %do.end, !dbg !4977

do.end:                                           ; preds = %do.body2
  br label %do.end3, !dbg !4975

do.end3:                                          ; preds = %do.end
  %5 = load i32, i32* @xs_state_users, align 4, !dbg !4979
  %cmp = icmp eq i32 %5, 0, !dbg !4979
  br i1 %cmp, label %if.then, label %if.end, !dbg !4973

if.then:                                          ; preds = %do.end3
  br label %do.end7, !dbg !4979

if.end:                                           ; preds = %do.end3
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %__wq_entry, metadata !4981, metadata !DIExpression()), !dbg !4994
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !4995, metadata !DIExpression()), !dbg !4994
  store i64 0, i64* %__ret, align 8, !dbg !4994
  call void @init_wait_entry(%struct.wait_queue_entry* %__wq_entry, i32 0) #10, !dbg !4994
  br label %for.cond, !dbg !4994

for.cond:                                         ; preds = %if.end6, %if.end
  call void @llvm.dbg.declare(metadata i64* %__int, metadata !4996, metadata !DIExpression()), !dbg !5000
  %call = call i64 @prepare_to_wait_event(%struct.wait_queue_head* @xs_state_exit_wq, %struct.wait_queue_entry* %__wq_entry, i32 2) #10, !dbg !5000
  store i64 %call, i64* %__int, align 8, !dbg !5000
  %6 = load i32, i32* @xs_state_users, align 4, !dbg !5001
  %cmp4 = icmp eq i32 %6, 0, !dbg !5001
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5000

if.then5:                                         ; preds = %for.cond
  br label %for.end, !dbg !5001

if.end6:                                          ; preds = %for.cond
  call void @schedule() #10, !dbg !5000
  br label %for.cond, !dbg !5003, !llvm.loop !5004

for.end:                                          ; preds = %if.then5
  call void @finish_wait(%struct.wait_queue_head* @xs_state_exit_wq, %struct.wait_queue_entry* %__wq_entry) #10, !dbg !4994
  br label %__out, !dbg !4994

__out:                                            ; preds = %for.end
  call void @llvm.dbg.label(metadata !5006), !dbg !4994
  %7 = load i64, i64* %__ret, align 8, !dbg !4994
  store i64 %7, i64* %tmp, align 8, !dbg !4994
  %8 = load i64, i64* %tmp, align 8, !dbg !4994
  br label %do.end7, !dbg !4973

do.end7:                                          ; preds = %__out, %if.then
  ret void, !dbg !5007
}

; Function Attrs: noredzone
declare dso_local void @down_write(%struct.rw_semaphore*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @xs_resume() #0 !dbg !5008 {
entry:
  %watch = alloca %struct.xenbus_watch*, align 8
  %token = alloca [17 x i8], align 16
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.xenbus_watch*, align 8
  %__mptr4 = alloca i8*, align 8
  %tmp8 = alloca %struct.xenbus_watch*, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_watch** %watch, metadata !5009, metadata !DIExpression()), !dbg !5010
  call void @llvm.dbg.declare(metadata [17 x i8]* %token, metadata !5011, metadata !DIExpression()), !dbg !5012
  %call = call i32 @xb_init_comms() #10, !dbg !5013
  call void @mutex_unlock(%struct.mutex* @xs_response_mutex) #10, !dbg !5014
  call void @xs_suspend_exit() #10, !dbg !5015
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5016, metadata !DIExpression()), !dbg !5019
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @watches, i32 0, i32 0), align 8, !dbg !5019
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !5019
  store i8* %1, i8** %__mptr, align 8, !dbg !5019
  br label %do.body, !dbg !5019

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5020

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5019
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5019
  %3 = bitcast i8* %add.ptr to %struct.xenbus_watch*, !dbg !5019
  store %struct.xenbus_watch* %3, %struct.xenbus_watch** %tmp, align 8, !dbg !5020
  %4 = load %struct.xenbus_watch*, %struct.xenbus_watch** %tmp, align 8, !dbg !5019
  store %struct.xenbus_watch* %4, %struct.xenbus_watch** %watch, align 8, !dbg !5022
  br label %for.cond, !dbg !5022

for.cond:                                         ; preds = %do.end7, %do.end
  %5 = load %struct.xenbus_watch*, %struct.xenbus_watch** %watch, align 8, !dbg !5023
  %list = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %5, i32 0, i32 0, !dbg !5023
  %cmp = icmp eq %struct.list_head* %list, @watches, !dbg !5023
  %lnot = xor i1 %cmp, true, !dbg !5023
  br i1 %lnot, label %for.body, label %for.end, !dbg !5022

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [17 x i8], [17 x i8]* %token, i64 0, i64 0, !dbg !5025
  %6 = load %struct.xenbus_watch*, %struct.xenbus_watch** %watch, align 8, !dbg !5027
  %7 = ptrtoint %struct.xenbus_watch* %6 to i64, !dbg !5028
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i64 %7) #10, !dbg !5029
  %8 = load %struct.xenbus_watch*, %struct.xenbus_watch** %watch, align 8, !dbg !5030
  %node = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %8, i32 0, i32 1, !dbg !5031
  %9 = load i8*, i8** %node, align 8, !dbg !5031
  %arraydecay2 = getelementptr inbounds [17 x i8], [17 x i8]* %token, i64 0, i64 0, !dbg !5032
  %call3 = call i32 @xs_watch(i8* %9, i8* %arraydecay2) #10, !dbg !5033
  br label %for.inc, !dbg !5034

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %__mptr4, metadata !5035, metadata !DIExpression()), !dbg !5037
  %10 = load %struct.xenbus_watch*, %struct.xenbus_watch** %watch, align 8, !dbg !5037
  %list5 = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %10, i32 0, i32 0, !dbg !5037
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list5, i32 0, i32 0, !dbg !5037
  %11 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5037
  %12 = bitcast %struct.list_head* %11 to i8*, !dbg !5037
  store i8* %12, i8** %__mptr4, align 8, !dbg !5037
  br label %do.body6, !dbg !5037

do.body6:                                         ; preds = %for.inc
  br label %do.end7, !dbg !5038

do.end7:                                          ; preds = %do.body6
  %13 = load i8*, i8** %__mptr4, align 8, !dbg !5037
  %add.ptr9 = getelementptr i8, i8* %13, i64 0, !dbg !5037
  %14 = bitcast i8* %add.ptr9 to %struct.xenbus_watch*, !dbg !5037
  store %struct.xenbus_watch* %14, %struct.xenbus_watch** %tmp8, align 8, !dbg !5038
  %15 = load %struct.xenbus_watch*, %struct.xenbus_watch** %tmp8, align 8, !dbg !5037
  store %struct.xenbus_watch* %15, %struct.xenbus_watch** %watch, align 8, !dbg !5023
  br label %for.cond, !dbg !5023, !llvm.loop !5040

for.end:                                          ; preds = %for.cond
  call void @up_write(%struct.rw_semaphore* @xs_watch_rwsem) #10, !dbg !5042
  ret void, !dbg !5043
}

; Function Attrs: noredzone
declare dso_local i32 @xb_init_comms() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xs_suspend_exit() #0 !dbg !5044 {
entry:
  %lock.addr.i1 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i1, metadata !2960, metadata !DIExpression()), !dbg !5045
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2968, metadata !DIExpression()), !dbg !5047
  %0 = load i32, i32* @xb_dev_generation_id, align 4, !dbg !5049
  %inc = add i32 %0, 1, !dbg !5049
  store i32 %inc, i32* @xb_dev_generation_id, align 4, !dbg !5049
  store %struct.spinlock* @xs_state_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !5050, !srcloc !2976
  %1 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5051
  %2 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %1, i32 0, i32 0, !dbg !5051
  %rlock.i = bitcast %union.anon* %2 to %struct.raw_spinlock*, !dbg !5051
  %3 = load i32, i32* @xs_suspend_active, align 4, !dbg !5052
  %dec = add i32 %3, -1, !dbg !5052
  store i32 %dec, i32* @xs_suspend_active, align 4, !dbg !5052
  store %struct.spinlock* @xs_state_lock, %struct.spinlock** %lock.addr.i1, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !5053, !srcloc !3021
  %4 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i1, align 8, !dbg !5054
  %5 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %4, i32 0, i32 0, !dbg !5054
  %rlock.i2 = bitcast %union.anon* %5 to %struct.raw_spinlock*, !dbg !5054
  call void @__wake_up(%struct.wait_queue_head* @xs_state_enter_wq, i32 3, i32 0, i8* null) #10, !dbg !5055
  ret void, !dbg !5056
}

; Function Attrs: noredzone
declare dso_local void @up_write(%struct.rw_semaphore*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @xs_suspend_cancel() #0 !dbg !5057 {
entry:
  call void @mutex_unlock(%struct.mutex* @xs_response_mutex) #10, !dbg !5058
  call void @up_write(%struct.rw_semaphore* @xs_watch_rwsem) #10, !dbg !5059
  call void @xs_suspend_exit() #10, !dbg !5060
  ret void, !dbg !5061
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xs_init() #0 !dbg !5062 {
entry:
  %retval = alloca i32, align 4
  %err = alloca i32, align 4
  %task = alloca %struct.task_struct*, align 8
  %__k = alloca %struct.task_struct*, align 8
  %tmp = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5065, metadata !DIExpression()), !dbg !5066
  call void @llvm.dbg.declare(metadata %struct.task_struct** %task, metadata !5067, metadata !DIExpression()), !dbg !5068
  %call = call i32 @register_reboot_notifier(%struct.notifier_block* @xs_reboot_nb) #10, !dbg !5069
  %call1 = call i32 @xb_init_comms() #10, !dbg !5070
  store i32 %call1, i32* %err, align 4, !dbg !5071
  %0 = load i32, i32* %err, align 4, !dbg !5072
  %tobool = icmp ne i32 %0, 0, !dbg !5072
  br i1 %tobool, label %if.then, label %if.end, !dbg !5074

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %err, align 4, !dbg !5075
  store i32 %1, i32* %retval, align 4, !dbg !5076
  br label %return, !dbg !5076

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.task_struct** %__k, metadata !5077, metadata !DIExpression()), !dbg !5079
  %call2 = call %struct.task_struct* (i32 (i8*)*, i8*, i32, i8*, ...) @kthread_create_on_node(i32 (i8*)* @xenwatch_thread, i8* null, i32 -1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !5079
  store %struct.task_struct* %call2, %struct.task_struct** %__k, align 8, !dbg !5079
  %2 = load %struct.task_struct*, %struct.task_struct** %__k, align 8, !dbg !5080
  %3 = bitcast %struct.task_struct* %2 to i8*, !dbg !5080
  %call3 = call zeroext i1 @IS_ERR(i8* %3) #10, !dbg !5080
  br i1 %call3, label %if.end6, label %if.then4, !dbg !5079

if.then4:                                         ; preds = %if.end
  %4 = load %struct.task_struct*, %struct.task_struct** %__k, align 8, !dbg !5080
  %call5 = call i32 @wake_up_process(%struct.task_struct* %4) #10, !dbg !5080
  br label %if.end6, !dbg !5080

if.end6:                                          ; preds = %if.then4, %if.end
  %5 = load %struct.task_struct*, %struct.task_struct** %__k, align 8, !dbg !5079
  store %struct.task_struct* %5, %struct.task_struct** %tmp, align 8, !dbg !5080
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp, align 8, !dbg !5079
  store %struct.task_struct* %6, %struct.task_struct** %task, align 8, !dbg !5082
  %7 = load %struct.task_struct*, %struct.task_struct** %task, align 8, !dbg !5083
  %8 = bitcast %struct.task_struct* %7 to i8*, !dbg !5083
  %call7 = call zeroext i1 @IS_ERR(i8* %8) #10, !dbg !5085
  br i1 %call7, label %if.then8, label %if.end10, !dbg !5086

if.then8:                                         ; preds = %if.end6
  %9 = load %struct.task_struct*, %struct.task_struct** %task, align 8, !dbg !5087
  %10 = bitcast %struct.task_struct* %9 to i8*, !dbg !5087
  %call9 = call i64 @PTR_ERR(i8* %10) #10, !dbg !5088
  %conv = trunc i64 %call9 to i32, !dbg !5088
  store i32 %conv, i32* %retval, align 4, !dbg !5089
  br label %return, !dbg !5089

if.end10:                                         ; preds = %if.end6
  call void @xs_reset_watches() #10, !dbg !5090
  store i32 0, i32* %retval, align 4, !dbg !5091
  br label %return, !dbg !5091

return:                                           ; preds = %if.end10, %if.then8, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !5092
  ret i32 %11, !dbg !5092
}

; Function Attrs: noredzone
declare dso_local i32 @register_reboot_notifier(%struct.notifier_block*) #2

; Function Attrs: noredzone
declare dso_local %struct.task_struct* @kthread_create_on_node(i32 (i8*)*, i8*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xenwatch_thread(i8* %unused) #0 !dbg !5093 {
entry:
  %lock.addr.i30 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i30, metadata !2960, metadata !DIExpression()), !dbg !5096
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2968, metadata !DIExpression()), !dbg !5101
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !4797, metadata !DIExpression()), !dbg !5103
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !4806, metadata !DIExpression()), !dbg !5105
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !4809, metadata !DIExpression()), !dbg !5106
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %unused.addr = alloca i8*, align 8
  %ent = alloca %struct.list_head*, align 8
  %event = alloca %struct.xs_watch_event*, align 8
  %__ret = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret4 = alloca i64, align 8
  %__int = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp14 = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp26 = alloca %struct.xs_watch_event*, align 8
  store i8* %unused, i8** %unused.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %unused.addr, metadata !5107, metadata !DIExpression()), !dbg !5108
  call void @llvm.dbg.declare(metadata %struct.list_head** %ent, metadata !5109, metadata !DIExpression()), !dbg !5110
  call void @llvm.dbg.declare(metadata %struct.xs_watch_event** %event, metadata !5111, metadata !DIExpression()), !dbg !5112
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !5105
  %0 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !5105
  %1 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #14, !dbg !5106, !srcloc !4874
  store i64 %1, i64* %pfo_val__.i, align 8, !dbg !5106
  %2 = load i64, i64* %pfo_val__.i, align 8, !dbg !5106
  %3 = inttoptr i64 %2 to %struct.task_struct*, !dbg !5106
  store %struct.task_struct* %3, %struct.task_struct** %tmp.i, align 8, !dbg !5106
  %4 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !5106
  store %struct.task_struct* %4, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5103
  %5 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5103
  store %struct.task_struct* %5, %struct.task_struct** %tmp1.i, align 8, !dbg !5103
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !5103
  %pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 35, !dbg !5113
  %7 = load i32, i32* %pid, align 64, !dbg !5113
  store i32 %7, i32* @xenwatch_pid, align 4, !dbg !5114
  br label %for.cond, !dbg !5115

for.cond:                                         ; preds = %if.end28, %entry
  call void @llvm.dbg.declare(metadata i32* %__ret, metadata !5116, metadata !DIExpression()), !dbg !5118
  store i32 0, i32* %__ret, align 4, !dbg !5118
  br label %do.body, !dbg !5118

do.body:                                          ; preds = %for.cond
  br label %do.body1, !dbg !5119

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5121

do.end:                                           ; preds = %do.body1
  br label %do.end2, !dbg !5119

do.end2:                                          ; preds = %do.end
  %call3 = call i32 @list_empty(%struct.list_head* @watch_events) #10, !dbg !5123
  %tobool = icmp ne i32 %call3, 0, !dbg !5123
  br i1 %tobool, label %if.then, label %if.end13, !dbg !5118

if.then:                                          ; preds = %do.end2
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %__wq_entry, metadata !5125, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.declare(metadata i64* %__ret4, metadata !5128, metadata !DIExpression()), !dbg !5127
  store i64 0, i64* %__ret4, align 8, !dbg !5127
  call void @init_wait_entry(%struct.wait_queue_entry* %__wq_entry, i32 0) #10, !dbg !5127
  br label %for.cond5, !dbg !5127

for.cond5:                                        ; preds = %if.end12, %if.then
  call void @llvm.dbg.declare(metadata i64* %__int, metadata !5129, metadata !DIExpression()), !dbg !5133
  %call6 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* @watch_events_waitq, %struct.wait_queue_entry* %__wq_entry, i32 1) #10, !dbg !5133
  store i64 %call6, i64* %__int, align 8, !dbg !5133
  %call7 = call i32 @list_empty(%struct.list_head* @watch_events) #10, !dbg !5134
  %tobool8 = icmp ne i32 %call7, 0, !dbg !5134
  br i1 %tobool8, label %if.end, label %if.then9, !dbg !5133

if.then9:                                         ; preds = %for.cond5
  br label %for.end, !dbg !5134

if.end:                                           ; preds = %for.cond5
  %8 = load i64, i64* %__int, align 8, !dbg !5136
  %tobool10 = icmp ne i64 %8, 0, !dbg !5136
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !5133

if.then11:                                        ; preds = %if.end
  %9 = load i64, i64* %__int, align 8, !dbg !5138
  store i64 %9, i64* %__ret4, align 8, !dbg !5138
  br label %__out, !dbg !5138

if.end12:                                         ; preds = %if.end
  call void @schedule() #10, !dbg !5133
  br label %for.cond5, !dbg !5140, !llvm.loop !5141

for.end:                                          ; preds = %if.then9
  call void @finish_wait(%struct.wait_queue_head* @watch_events_waitq, %struct.wait_queue_entry* %__wq_entry) #10, !dbg !5127
  br label %__out, !dbg !5127

__out:                                            ; preds = %for.end, %if.then11
  call void @llvm.dbg.label(metadata !5143), !dbg !5127
  %10 = load i64, i64* %__ret4, align 8, !dbg !5127
  store i64 %10, i64* %tmp, align 8, !dbg !5127
  %11 = load i64, i64* %tmp, align 8, !dbg !5127
  %conv = trunc i64 %11 to i32, !dbg !5123
  store i32 %conv, i32* %__ret, align 4, !dbg !5123
  br label %if.end13, !dbg !5123

if.end13:                                         ; preds = %__out, %do.end2
  %12 = load i32, i32* %__ret, align 4, !dbg !5118
  store i32 %12, i32* %tmp14, align 4, !dbg !5123
  %13 = load i32, i32* %tmp14, align 4, !dbg !5118
  %call15 = call zeroext i1 @kthread_should_stop() #10, !dbg !5144
  br i1 %call15, label %if.then16, label %if.end17, !dbg !5146

if.then16:                                        ; preds = %if.end13
  br label %for.end29, !dbg !5147

if.end17:                                         ; preds = %if.end13
  call void @mutex_lock(%struct.mutex* @xenwatch_mutex) #10, !dbg !5148
  store %struct.spinlock* @watch_events_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !5149, !srcloc !2976
  %14 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5150
  %15 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %14, i32 0, i32 0, !dbg !5150
  %rlock.i = bitcast %union.anon* %15 to %struct.raw_spinlock*, !dbg !5150
  %16 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @watch_events, i32 0, i32 0), align 8, !dbg !5151
  store %struct.list_head* %16, %struct.list_head** %ent, align 8, !dbg !5152
  %17 = load %struct.list_head*, %struct.list_head** %ent, align 8, !dbg !5153
  %cmp = icmp ne %struct.list_head* %17, @watch_events, !dbg !5155
  br i1 %cmp, label %if.then19, label %if.end20, !dbg !5156

if.then19:                                        ; preds = %if.end17
  %18 = load %struct.list_head*, %struct.list_head** %ent, align 8, !dbg !5157
  call void @list_del(%struct.list_head* %18) #10, !dbg !5158
  br label %if.end20, !dbg !5158

if.end20:                                         ; preds = %if.then19, %if.end17
  store %struct.spinlock* @watch_events_lock, %struct.spinlock** %lock.addr.i30, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !5159, !srcloc !3021
  %19 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i30, align 8, !dbg !5160
  %20 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %19, i32 0, i32 0, !dbg !5160
  %rlock.i31 = bitcast %union.anon* %20 to %struct.raw_spinlock*, !dbg !5160
  %21 = load %struct.list_head*, %struct.list_head** %ent, align 8, !dbg !5161
  %cmp21 = icmp ne %struct.list_head* %21, @watch_events, !dbg !5163
  br i1 %cmp21, label %if.then23, label %if.end28, !dbg !5164

if.then23:                                        ; preds = %if.end20
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5165, metadata !DIExpression()), !dbg !5168
  %22 = load %struct.list_head*, %struct.list_head** %ent, align 8, !dbg !5168
  %23 = bitcast %struct.list_head* %22 to i8*, !dbg !5168
  store i8* %23, i8** %__mptr, align 8, !dbg !5168
  br label %do.body24, !dbg !5168

do.body24:                                        ; preds = %if.then23
  br label %do.end25, !dbg !5169

do.end25:                                         ; preds = %do.body24
  %24 = load i8*, i8** %__mptr, align 8, !dbg !5168
  %add.ptr = getelementptr i8, i8* %24, i64 0, !dbg !5168
  %25 = bitcast i8* %add.ptr to %struct.xs_watch_event*, !dbg !5168
  store %struct.xs_watch_event* %25, %struct.xs_watch_event** %tmp26, align 8, !dbg !5169
  %26 = load %struct.xs_watch_event*, %struct.xs_watch_event** %tmp26, align 8, !dbg !5168
  store %struct.xs_watch_event* %26, %struct.xs_watch_event** %event, align 8, !dbg !5171
  %27 = load %struct.xs_watch_event*, %struct.xs_watch_event** %event, align 8, !dbg !5172
  %handle = getelementptr inbounds %struct.xs_watch_event, %struct.xs_watch_event* %27, i32 0, i32 2, !dbg !5173
  %28 = load %struct.xenbus_watch*, %struct.xenbus_watch** %handle, align 8, !dbg !5173
  %callback = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %28, i32 0, i32 2, !dbg !5174
  %29 = load void (%struct.xenbus_watch*, i8*, i8*)*, void (%struct.xenbus_watch*, i8*, i8*)** %callback, align 8, !dbg !5174
  %30 = load %struct.xs_watch_event*, %struct.xs_watch_event** %event, align 8, !dbg !5175
  %handle27 = getelementptr inbounds %struct.xs_watch_event, %struct.xs_watch_event* %30, i32 0, i32 2, !dbg !5176
  %31 = load %struct.xenbus_watch*, %struct.xenbus_watch** %handle27, align 8, !dbg !5176
  %32 = load %struct.xs_watch_event*, %struct.xs_watch_event** %event, align 8, !dbg !5177
  %path = getelementptr inbounds %struct.xs_watch_event, %struct.xs_watch_event* %32, i32 0, i32 3, !dbg !5178
  %33 = load i8*, i8** %path, align 8, !dbg !5178
  %34 = load %struct.xs_watch_event*, %struct.xs_watch_event** %event, align 8, !dbg !5179
  %token = getelementptr inbounds %struct.xs_watch_event, %struct.xs_watch_event* %34, i32 0, i32 4, !dbg !5180
  %35 = load i8*, i8** %token, align 8, !dbg !5180
  call void %29(%struct.xenbus_watch* %31, i8* %33, i8* %35) #10, !dbg !5172
  %36 = load %struct.xs_watch_event*, %struct.xs_watch_event** %event, align 8, !dbg !5181
  %37 = bitcast %struct.xs_watch_event* %36 to i8*, !dbg !5181
  call void @kfree(i8* %37) #10, !dbg !5182
  br label %if.end28, !dbg !5183

if.end28:                                         ; preds = %do.end25, %if.end20
  call void @mutex_unlock(%struct.mutex* @xenwatch_mutex) #10, !dbg !5184
  br label %for.cond, !dbg !5185, !llvm.loop !5186

for.end29:                                        ; preds = %if.then16
  ret i32 0, !dbg !5189
}

; Function Attrs: noredzone
declare dso_local i32 @wake_up_process(%struct.task_struct*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xs_reset_watches() #0 !dbg !5190 {
entry:
  %err = alloca i32, align 4
  %.compoundliteral = alloca %struct.xenbus_transaction, align 4
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5191, metadata !DIExpression()), !dbg !5192
  %0 = load i32, i32* @xen_domain_type, align 4, !dbg !5193
  %cmp = icmp eq i32 %0, 2, !dbg !5193
  br i1 %cmp, label %lor.lhs.false, label %if.then, !dbg !5195

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @xen_domain_type, align 4, !dbg !5196
  %cmp1 = icmp ne i32 %1, 0, !dbg !5196
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !5196

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load i32, i32* @xen_start_flags, align 4, !dbg !5196
  %and = and i32 %2, 2, !dbg !5196
  %tobool = icmp ne i32 %and, 0, !dbg !5196
  br i1 %tobool, label %if.then, label %if.end, !dbg !5197

if.then:                                          ; preds = %land.lhs.true, %entry
  br label %if.end15, !dbg !5198

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %call = call zeroext i1 @xen_strict_xenbus_quirk() #10, !dbg !5199
  br i1 %call, label %if.then2, label %if.end3, !dbg !5201

if.then2:                                         ; preds = %if.end
  br label %if.end15, !dbg !5202

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @xenbus_read_unsigned(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i64 0, i64 0), i32 0) #10, !dbg !5203
  %tobool5 = icmp ne i32 %call4, 0, !dbg !5203
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !5205

if.then6:                                         ; preds = %if.end3
  br label %if.end15, !dbg !5206

if.end7:                                          ; preds = %if.end3
  %id = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !5207
  store i32 0, i32* %id, align 4, !dbg !5207
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !5208
  %3 = load i32, i32* %coerce.dive, align 4, !dbg !5208
  %call8 = call i8* @xs_single(i32 %3, i32 21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32* null) #10, !dbg !5208
  %call9 = call i32 @xs_error(i8* %call8) #10, !dbg !5209
  store i32 %call9, i32* %err, align 4, !dbg !5210
  %4 = load i32, i32* %err, align 4, !dbg !5211
  %tobool10 = icmp ne i32 %4, 0, !dbg !5211
  br i1 %tobool10, label %land.lhs.true11, label %if.end15, !dbg !5213

land.lhs.true11:                                  ; preds = %if.end7
  %5 = load i32, i32* %err, align 4, !dbg !5214
  %cmp12 = icmp ne i32 %5, -17, !dbg !5215
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !5216

if.then13:                                        ; preds = %land.lhs.true11
  %6 = load i32, i32* %err, align 4, !dbg !5217
  %call14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0), i32 %6) #13, !dbg !5217
  br label %if.end15, !dbg !5217

if.end15:                                         ; preds = %if.then, %if.then2, %if.then6, %if.then13, %land.lhs.true11, %if.end7
  ret void, !dbg !5218
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5219 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5223, metadata !DIExpression()), !dbg !5228
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5230, metadata !DIExpression()), !dbg !5231
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5232, metadata !DIExpression()), !dbg !5233
  %0 = load i64, i64* %size.addr, align 8, !dbg !5234
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5236
  br i1 %1, label %if.then, label %if.end447, !dbg !5237

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5238
  %tobool = icmp ne i64 %2, 0, !dbg !5238
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5241

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5242
  br label %return, !dbg !5242

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5243
  %cmp = icmp ult i64 %3, 4096, !dbg !5245
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5246

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5247
  br label %return, !dbg !5247

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub = sub i64 %4, 1, !dbg !5248
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5248
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5248

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub4 = sub i64 %6, 1, !dbg !5248
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5248
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5248

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub6 = sub i64 %8, 1, !dbg !5248
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5248
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5248

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5248

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub9 = sub i64 %9, 1, !dbg !5248
  %and = and i64 %sub9, -9223372036854775808, !dbg !5248
  %tobool10 = icmp ne i64 %and, 0, !dbg !5248
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5248

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5248

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub13 = sub i64 %10, 1, !dbg !5248
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5248
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5248
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5248

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5248

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub18 = sub i64 %11, 1, !dbg !5248
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5248
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5248
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5248

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5248

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub23 = sub i64 %12, 1, !dbg !5248
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5248
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5248
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5248

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5248

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub28 = sub i64 %13, 1, !dbg !5248
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5248
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5248
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5248

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5248

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub33 = sub i64 %14, 1, !dbg !5248
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5248
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5248
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5248

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5248

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub38 = sub i64 %15, 1, !dbg !5248
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5248
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5248
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5248

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5248

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub43 = sub i64 %16, 1, !dbg !5248
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5248
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5248
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5248

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5248

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub48 = sub i64 %17, 1, !dbg !5248
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5248
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5248
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5248

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5248

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub53 = sub i64 %18, 1, !dbg !5248
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5248
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5248
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5248

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5248

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub58 = sub i64 %19, 1, !dbg !5248
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5248
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5248
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5248

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5248

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub63 = sub i64 %20, 1, !dbg !5248
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5248
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5248
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5248

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5248

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub68 = sub i64 %21, 1, !dbg !5248
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5248
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5248
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5248

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5248

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub73 = sub i64 %22, 1, !dbg !5248
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5248
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5248
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5248

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5248

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub78 = sub i64 %23, 1, !dbg !5248
  %and79 = and i64 %sub78, 562949953421312, !dbg !5248
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5248
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5248

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5248

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub83 = sub i64 %24, 1, !dbg !5248
  %and84 = and i64 %sub83, 281474976710656, !dbg !5248
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5248
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5248

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5248

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub88 = sub i64 %25, 1, !dbg !5248
  %and89 = and i64 %sub88, 140737488355328, !dbg !5248
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5248
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5248

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5248

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub93 = sub i64 %26, 1, !dbg !5248
  %and94 = and i64 %sub93, 70368744177664, !dbg !5248
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5248
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5248

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5248

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub98 = sub i64 %27, 1, !dbg !5248
  %and99 = and i64 %sub98, 35184372088832, !dbg !5248
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5248
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5248

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5248

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub103 = sub i64 %28, 1, !dbg !5248
  %and104 = and i64 %sub103, 17592186044416, !dbg !5248
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5248
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5248

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5248

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub108 = sub i64 %29, 1, !dbg !5248
  %and109 = and i64 %sub108, 8796093022208, !dbg !5248
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5248
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5248

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5248

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub113 = sub i64 %30, 1, !dbg !5248
  %and114 = and i64 %sub113, 4398046511104, !dbg !5248
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5248
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5248

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5248

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub118 = sub i64 %31, 1, !dbg !5248
  %and119 = and i64 %sub118, 2199023255552, !dbg !5248
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5248
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5248

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5248

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub123 = sub i64 %32, 1, !dbg !5248
  %and124 = and i64 %sub123, 1099511627776, !dbg !5248
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5248
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5248

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5248

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub128 = sub i64 %33, 1, !dbg !5248
  %and129 = and i64 %sub128, 549755813888, !dbg !5248
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5248
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5248

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5248

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub133 = sub i64 %34, 1, !dbg !5248
  %and134 = and i64 %sub133, 274877906944, !dbg !5248
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5248
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5248

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5248

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub138 = sub i64 %35, 1, !dbg !5248
  %and139 = and i64 %sub138, 137438953472, !dbg !5248
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5248
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5248

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5248

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub143 = sub i64 %36, 1, !dbg !5248
  %and144 = and i64 %sub143, 68719476736, !dbg !5248
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5248
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5248

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5248

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub148 = sub i64 %37, 1, !dbg !5248
  %and149 = and i64 %sub148, 34359738368, !dbg !5248
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5248
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5248

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5248

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub153 = sub i64 %38, 1, !dbg !5248
  %and154 = and i64 %sub153, 17179869184, !dbg !5248
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5248
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5248

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5248

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub158 = sub i64 %39, 1, !dbg !5248
  %and159 = and i64 %sub158, 8589934592, !dbg !5248
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5248
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5248

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5248

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub163 = sub i64 %40, 1, !dbg !5248
  %and164 = and i64 %sub163, 4294967296, !dbg !5248
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5248
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5248

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5248

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub168 = sub i64 %41, 1, !dbg !5248
  %and169 = and i64 %sub168, 2147483648, !dbg !5248
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5248
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5248

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5248

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub173 = sub i64 %42, 1, !dbg !5248
  %and174 = and i64 %sub173, 1073741824, !dbg !5248
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5248
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5248

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5248

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub178 = sub i64 %43, 1, !dbg !5248
  %and179 = and i64 %sub178, 536870912, !dbg !5248
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5248
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5248

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5248

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub183 = sub i64 %44, 1, !dbg !5248
  %and184 = and i64 %sub183, 268435456, !dbg !5248
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5248
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5248

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5248

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub188 = sub i64 %45, 1, !dbg !5248
  %and189 = and i64 %sub188, 134217728, !dbg !5248
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5248
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5248

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5248

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub193 = sub i64 %46, 1, !dbg !5248
  %and194 = and i64 %sub193, 67108864, !dbg !5248
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5248
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5248

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5248

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub198 = sub i64 %47, 1, !dbg !5248
  %and199 = and i64 %sub198, 33554432, !dbg !5248
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5248
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5248

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5248

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub203 = sub i64 %48, 1, !dbg !5248
  %and204 = and i64 %sub203, 16777216, !dbg !5248
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5248
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5248

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5248

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub208 = sub i64 %49, 1, !dbg !5248
  %and209 = and i64 %sub208, 8388608, !dbg !5248
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5248
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5248

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5248

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub213 = sub i64 %50, 1, !dbg !5248
  %and214 = and i64 %sub213, 4194304, !dbg !5248
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5248
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5248

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5248

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub218 = sub i64 %51, 1, !dbg !5248
  %and219 = and i64 %sub218, 2097152, !dbg !5248
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5248
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5248

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5248

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub223 = sub i64 %52, 1, !dbg !5248
  %and224 = and i64 %sub223, 1048576, !dbg !5248
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5248
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5248

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5248

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub228 = sub i64 %53, 1, !dbg !5248
  %and229 = and i64 %sub228, 524288, !dbg !5248
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5248
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5248

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5248

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub233 = sub i64 %54, 1, !dbg !5248
  %and234 = and i64 %sub233, 262144, !dbg !5248
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5248
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5248

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5248

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub238 = sub i64 %55, 1, !dbg !5248
  %and239 = and i64 %sub238, 131072, !dbg !5248
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5248
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5248

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5248

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub243 = sub i64 %56, 1, !dbg !5248
  %and244 = and i64 %sub243, 65536, !dbg !5248
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5248
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5248

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5248

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub248 = sub i64 %57, 1, !dbg !5248
  %and249 = and i64 %sub248, 32768, !dbg !5248
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5248
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5248

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5248

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub253 = sub i64 %58, 1, !dbg !5248
  %and254 = and i64 %sub253, 16384, !dbg !5248
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5248
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5248

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5248

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub258 = sub i64 %59, 1, !dbg !5248
  %and259 = and i64 %sub258, 8192, !dbg !5248
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5248
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5248

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5248

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub263 = sub i64 %60, 1, !dbg !5248
  %and264 = and i64 %sub263, 4096, !dbg !5248
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5248
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5248

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5248

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub268 = sub i64 %61, 1, !dbg !5248
  %and269 = and i64 %sub268, 2048, !dbg !5248
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5248
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5248

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5248

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub273 = sub i64 %62, 1, !dbg !5248
  %and274 = and i64 %sub273, 1024, !dbg !5248
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5248
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5248

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5248

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub278 = sub i64 %63, 1, !dbg !5248
  %and279 = and i64 %sub278, 512, !dbg !5248
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5248
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5248

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5248

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub283 = sub i64 %64, 1, !dbg !5248
  %and284 = and i64 %sub283, 256, !dbg !5248
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5248
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5248

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5248

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub288 = sub i64 %65, 1, !dbg !5248
  %and289 = and i64 %sub288, 128, !dbg !5248
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5248
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5248

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5248

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub293 = sub i64 %66, 1, !dbg !5248
  %and294 = and i64 %sub293, 64, !dbg !5248
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5248
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5248

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5248

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub298 = sub i64 %67, 1, !dbg !5248
  %and299 = and i64 %sub298, 32, !dbg !5248
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5248
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5248

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5248

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub303 = sub i64 %68, 1, !dbg !5248
  %and304 = and i64 %sub303, 16, !dbg !5248
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5248
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5248

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5248

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub308 = sub i64 %69, 1, !dbg !5248
  %and309 = and i64 %sub308, 8, !dbg !5248
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5248
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5248

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5248

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub313 = sub i64 %70, 1, !dbg !5248
  %and314 = and i64 %sub313, 4, !dbg !5248
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5248
  %71 = zext i1 %tobool315 to i64, !dbg !5248
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5248
  br label %cond.end, !dbg !5248

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5248
  br label %cond.end317, !dbg !5248

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5248
  br label %cond.end319, !dbg !5248

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5248
  br label %cond.end321, !dbg !5248

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5248
  br label %cond.end323, !dbg !5248

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5248
  br label %cond.end325, !dbg !5248

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5248
  br label %cond.end327, !dbg !5248

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5248
  br label %cond.end329, !dbg !5248

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5248
  br label %cond.end331, !dbg !5248

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5248
  br label %cond.end333, !dbg !5248

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5248
  br label %cond.end335, !dbg !5248

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5248
  br label %cond.end337, !dbg !5248

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5248
  br label %cond.end339, !dbg !5248

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5248
  br label %cond.end341, !dbg !5248

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5248
  br label %cond.end343, !dbg !5248

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5248
  br label %cond.end345, !dbg !5248

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5248
  br label %cond.end347, !dbg !5248

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5248
  br label %cond.end349, !dbg !5248

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5248
  br label %cond.end351, !dbg !5248

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5248
  br label %cond.end353, !dbg !5248

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5248
  br label %cond.end355, !dbg !5248

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5248
  br label %cond.end357, !dbg !5248

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5248
  br label %cond.end359, !dbg !5248

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5248
  br label %cond.end361, !dbg !5248

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5248
  br label %cond.end363, !dbg !5248

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5248
  br label %cond.end365, !dbg !5248

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5248
  br label %cond.end367, !dbg !5248

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5248
  br label %cond.end369, !dbg !5248

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5248
  br label %cond.end371, !dbg !5248

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5248
  br label %cond.end373, !dbg !5248

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5248
  br label %cond.end375, !dbg !5248

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5248
  br label %cond.end377, !dbg !5248

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5248
  br label %cond.end379, !dbg !5248

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5248
  br label %cond.end381, !dbg !5248

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5248
  br label %cond.end383, !dbg !5248

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5248
  br label %cond.end385, !dbg !5248

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5248
  br label %cond.end387, !dbg !5248

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5248
  br label %cond.end389, !dbg !5248

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5248
  br label %cond.end391, !dbg !5248

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5248
  br label %cond.end393, !dbg !5248

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5248
  br label %cond.end395, !dbg !5248

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5248
  br label %cond.end397, !dbg !5248

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5248
  br label %cond.end399, !dbg !5248

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5248
  br label %cond.end401, !dbg !5248

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5248
  br label %cond.end403, !dbg !5248

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5248
  br label %cond.end405, !dbg !5248

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5248
  br label %cond.end407, !dbg !5248

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5248
  br label %cond.end409, !dbg !5248

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5248
  br label %cond.end411, !dbg !5248

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5248
  br label %cond.end413, !dbg !5248

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5248
  br label %cond.end415, !dbg !5248

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5248
  br label %cond.end417, !dbg !5248

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5248
  br label %cond.end419, !dbg !5248

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5248
  br label %cond.end421, !dbg !5248

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5248
  br label %cond.end423, !dbg !5248

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5248
  br label %cond.end425, !dbg !5248

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5248
  br label %cond.end427, !dbg !5248

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5248
  br label %cond.end429, !dbg !5248

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5248
  br label %cond.end431, !dbg !5248

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5248
  br label %cond.end433, !dbg !5248

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5248
  br label %cond.end435, !dbg !5248

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5248
  br label %cond.end437, !dbg !5248

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5248
  br label %cond.end440, !dbg !5248

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5248

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5248
  br label %cond.end444, !dbg !5248

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5248
  %sub443 = sub i64 %72, 1, !dbg !5248
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !5248
  br label %cond.end444, !dbg !5248

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5248
  %sub446 = sub i32 %cond445, 12, !dbg !5249
  %add = add i32 %sub446, 1, !dbg !5250
  store i32 %add, i32* %retval, align 4, !dbg !5251
  br label %return, !dbg !5251

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5252
  %dec = add i64 %73, -1, !dbg !5252
  store i64 %dec, i64* %size.addr, align 8, !dbg !5252
  %74 = load i64, i64* %size.addr, align 8, !dbg !5253
  %shr = lshr i64 %74, 12, !dbg !5253
  store i64 %shr, i64* %size.addr, align 8, !dbg !5253
  %75 = load i64, i64* %size.addr, align 8, !dbg !5254
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5231
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5255
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5256
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #9, !dbg !5255, !srcloc !5257
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5255
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5258
  %add.i = add i32 %79, 1, !dbg !5259
  store i32 %add.i, i32* %retval, align 4, !dbg !5260
  br label %return, !dbg !5260

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5261
  ret i32 %80, !dbg !5261
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5262 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5223, metadata !DIExpression()), !dbg !5266
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5230, metadata !DIExpression()), !dbg !5268
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5269, metadata !DIExpression()), !dbg !5270
  %0 = load i64, i64* %n.addr, align 8, !dbg !5271
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5268
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5272
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5273
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #9, !dbg !5272, !srcloc !5257
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5272
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5274
  %add.i = add i32 %4, 1, !dbg !5275
  %sub = sub i32 %add.i, 1, !dbg !5276
  ret i32 %sub, !dbg !5277
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5278 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5281, metadata !DIExpression()), !dbg !5282
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5283, metadata !DIExpression()), !dbg !5284
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5285, metadata !DIExpression()), !dbg !5286
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5287, metadata !DIExpression()), !dbg !5288
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5289
  ret i8* %0, !dbg !5290
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noredzone
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xs_request_enter(%struct.xb_req_data* %req) #0 !dbg !5291 {
entry:
  %lock.addr.i21 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i21, metadata !2960, metadata !DIExpression()), !dbg !5294
  %lock.addr.i19 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i19, metadata !2968, metadata !DIExpression()), !dbg !5296
  %lock.addr.i17 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i17, metadata !2960, metadata !DIExpression()), !dbg !5299
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2968, metadata !DIExpression()), !dbg !5301
  %req.addr = alloca %struct.xb_req_data*, align 8
  %rq_id = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret = alloca i64, align 8
  %__int = alloca i64, align 8
  %tmp = alloca i64, align 8
  store %struct.xb_req_data* %req, %struct.xb_req_data** %req.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xb_req_data** %req.addr, metadata !5303, metadata !DIExpression()), !dbg !5304
  call void @llvm.dbg.declare(metadata i32* %rq_id, metadata !5305, metadata !DIExpression()), !dbg !5306
  %0 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !5307
  %msg = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %0, i32 0, i32 2, !dbg !5308
  %type = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %msg, i32 0, i32 0, !dbg !5309
  %1 = load i32, i32* %type, align 8, !dbg !5309
  %2 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !5310
  %type1 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %2, i32 0, i32 4, !dbg !5311
  store i32 %1, i32* %type1, align 4, !dbg !5312
  store %struct.spinlock* @xs_state_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !5313, !srcloc !2976
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5314
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !5314
  %rlock.i = bitcast %union.anon* %4 to %struct.raw_spinlock*, !dbg !5314
  br label %while.cond, !dbg !5315

while.cond:                                       ; preds = %do.end9, %entry
  %5 = load i32, i32* @xs_state_users, align 4, !dbg !5316
  %tobool = icmp ne i32 %5, 0, !dbg !5316
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !5317

land.rhs:                                         ; preds = %while.cond
  %6 = load i32, i32* @xs_suspend_active, align 4, !dbg !5318
  %tobool2 = icmp ne i32 %6, 0, !dbg !5317
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %tobool2, %land.rhs ], !dbg !5319
  br i1 %7, label %while.body, label %while.end, !dbg !5315

while.body:                                       ; preds = %land.end
  store %struct.spinlock* @xs_state_lock, %struct.spinlock** %lock.addr.i17, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !5320, !srcloc !3021
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i17, align 8, !dbg !5321
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !5321
  %rlock.i18 = bitcast %union.anon* %9 to %struct.raw_spinlock*, !dbg !5321
  br label %do.body, !dbg !5322

do.body:                                          ; preds = %while.body
  br label %do.body3, !dbg !5323

do.body3:                                         ; preds = %do.body
  br label %do.body4, !dbg !5325

do.body4:                                         ; preds = %do.body3
  br label %do.end, !dbg !5327

do.end:                                           ; preds = %do.body4
  br label %do.end5, !dbg !5325

do.end5:                                          ; preds = %do.end
  %10 = load i32, i32* @xs_suspend_active, align 4, !dbg !5329
  %cmp = icmp eq i32 %10, 0, !dbg !5329
  br i1 %cmp, label %if.then, label %if.end, !dbg !5323

if.then:                                          ; preds = %do.end5
  br label %do.end9, !dbg !5329

if.end:                                           ; preds = %do.end5
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %__wq_entry, metadata !5331, metadata !DIExpression()), !dbg !5333
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5334, metadata !DIExpression()), !dbg !5333
  store i64 0, i64* %__ret, align 8, !dbg !5333
  call void @init_wait_entry(%struct.wait_queue_entry* %__wq_entry, i32 0) #10, !dbg !5333
  br label %for.cond, !dbg !5333

for.cond:                                         ; preds = %if.end8, %if.end
  call void @llvm.dbg.declare(metadata i64* %__int, metadata !5335, metadata !DIExpression()), !dbg !5339
  %call = call i64 @prepare_to_wait_event(%struct.wait_queue_head* @xs_state_enter_wq, %struct.wait_queue_entry* %__wq_entry, i32 2) #10, !dbg !5339
  store i64 %call, i64* %__int, align 8, !dbg !5339
  %11 = load i32, i32* @xs_suspend_active, align 4, !dbg !5340
  %cmp6 = icmp eq i32 %11, 0, !dbg !5340
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !5339

if.then7:                                         ; preds = %for.cond
  br label %for.end, !dbg !5340

if.end8:                                          ; preds = %for.cond
  call void @schedule() #10, !dbg !5339
  br label %for.cond, !dbg !5342, !llvm.loop !5343

for.end:                                          ; preds = %if.then7
  call void @finish_wait(%struct.wait_queue_head* @xs_state_enter_wq, %struct.wait_queue_entry* %__wq_entry) #10, !dbg !5333
  br label %__out, !dbg !5333

__out:                                            ; preds = %for.end
  call void @llvm.dbg.label(metadata !5345), !dbg !5333
  %12 = load i64, i64* %__ret, align 8, !dbg !5333
  store i64 %12, i64* %tmp, align 8, !dbg !5333
  %13 = load i64, i64* %tmp, align 8, !dbg !5333
  br label %do.end9, !dbg !5323

do.end9:                                          ; preds = %__out, %if.then
  store %struct.spinlock* @xs_state_lock, %struct.spinlock** %lock.addr.i19, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !5346, !srcloc !2976
  %14 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i19, align 8, !dbg !5347
  %15 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %14, i32 0, i32 0, !dbg !5347
  %rlock.i20 = bitcast %union.anon* %15 to %struct.raw_spinlock*, !dbg !5347
  br label %while.cond, !dbg !5315, !llvm.loop !5348

while.end:                                        ; preds = %land.end
  %16 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !5350
  %type10 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %16, i32 0, i32 4, !dbg !5352
  %17 = load i32, i32* %type10, align 4, !dbg !5352
  %cmp11 = icmp eq i32 %17, 6, !dbg !5353
  br i1 %cmp11, label %land.lhs.true, label %if.end14, !dbg !5354

land.lhs.true:                                    ; preds = %while.end
  %18 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !5355
  %user_req = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %18, i32 0, i32 10, !dbg !5356
  %19 = load i8, i8* %user_req, align 4, !dbg !5356
  %tobool12 = trunc i8 %19 to i1, !dbg !5356
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !5357

if.then13:                                        ; preds = %land.lhs.true
  %20 = load i32, i32* @xs_state_users, align 4, !dbg !5358
  %inc = add i32 %20, 1, !dbg !5358
  store i32 %inc, i32* @xs_state_users, align 4, !dbg !5358
  br label %if.end14, !dbg !5359

if.end14:                                         ; preds = %if.then13, %land.lhs.true, %while.end
  %21 = load i32, i32* @xs_state_users, align 4, !dbg !5360
  %inc15 = add i32 %21, 1, !dbg !5360
  store i32 %inc15, i32* @xs_state_users, align 4, !dbg !5360
  %22 = load i32, i32* @xs_request_id, align 4, !dbg !5361
  %inc16 = add i32 %22, 1, !dbg !5361
  store i32 %inc16, i32* @xs_request_id, align 4, !dbg !5361
  store i32 %22, i32* %rq_id, align 4, !dbg !5362
  store %struct.spinlock* @xs_state_lock, %struct.spinlock** %lock.addr.i21, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !5363, !srcloc !3021
  %23 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i21, align 8, !dbg !5364
  %24 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %23, i32 0, i32 0, !dbg !5364
  %rlock.i22 = bitcast %union.anon* %24 to %struct.raw_spinlock*, !dbg !5364
  %25 = load i32, i32* %rq_id, align 4, !dbg !5365
  ret i32 %25, !dbg !5366
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_is_singular(%struct.list_head* %head) #0 !dbg !5367 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !5372, metadata !DIExpression()), !dbg !5373
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5374
  %call = call i32 @list_empty(%struct.list_head* %0) #10, !dbg !5375
  %tobool = icmp ne i32 %call, 0, !dbg !5375
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !5376

land.rhs:                                         ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5377
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5378
  %2 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5378
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5379
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !5380
  %4 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5380
  %cmp = icmp eq %struct.list_head* %2, %4, !dbg !5381
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !5382
  %land.ext = zext i1 %5 to i32, !dbg !5376
  ret i32 %land.ext, !dbg !5383
}

; Function Attrs: noredzone
declare dso_local void @init_wait_entry(%struct.wait_queue_entry*, i32) #2

; Function Attrs: noredzone
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head*, %struct.wait_queue_entry*, i32) #2

; Function Attrs: noredzone
declare dso_local void @schedule() #2

; Function Attrs: noredzone
declare dso_local void @finish_wait(%struct.wait_queue_head*, %struct.wait_queue_entry*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !5384 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !5385, metadata !DIExpression()), !dbg !5386
  br label %do.body, !dbg !5387

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5389

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5387
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !5387
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5387
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !5389
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !5387
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5391
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !5392
  %conv = zext i1 %cmp to i32, !dbg !5392
  ret i32 %conv, !dbg !5393
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kasprintf(i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !5394 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !5397, metadata !DIExpression()), !dbg !5398
  %0 = load i64, i64* %error.addr, align 8, !dbg !5399
  %1 = inttoptr i64 %0 to i8*, !dbg !5400
  ret i8* %1, !dbg !5401
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xs_wake_up(%struct.xb_req_data* %req) #0 !dbg !5402 {
entry:
  %req.addr = alloca %struct.xb_req_data*, align 8
  store %struct.xb_req_data* %req, %struct.xb_req_data** %req.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xb_req_data** %req.addr, metadata !5403, metadata !DIExpression()), !dbg !5404
  %0 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !5405
  %wq = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %0, i32 0, i32 1, !dbg !5405
  call void @__wake_up(%struct.wait_queue_head* %wq, i32 3, i32 1, i8* null) #10, !dbg !5405
  ret void, !dbg !5406
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @xs_wait_for_reply(%struct.xb_req_data* %req, %struct.xsd_sockmsg* %msg) #0 !dbg !5407 {
entry:
  %req.addr = alloca %struct.xb_req_data*, align 8
  %msg.addr = alloca %struct.xsd_sockmsg*, align 8
  %ret = alloca i8*, align 8
  store %struct.xb_req_data* %req, %struct.xb_req_data** %req.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xb_req_data** %req.addr, metadata !5410, metadata !DIExpression()), !dbg !5411
  store %struct.xsd_sockmsg* %msg, %struct.xsd_sockmsg** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xsd_sockmsg** %msg.addr, metadata !5412, metadata !DIExpression()), !dbg !5413
  call void @llvm.dbg.declare(metadata i8** %ret, metadata !5414, metadata !DIExpression()), !dbg !5415
  %0 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !5416
  %call = call i8* @read_reply(%struct.xb_req_data* %0) #10, !dbg !5417
  store i8* %call, i8** %ret, align 8, !dbg !5418
  %1 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !5419
  call void @xs_request_exit(%struct.xb_req_data* %1) #10, !dbg !5420
  %2 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !5421
  %msg1 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %2, i32 0, i32 2, !dbg !5422
  %type = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %msg1, i32 0, i32 0, !dbg !5423
  %3 = load i32, i32* %type, align 8, !dbg !5423
  %4 = load %struct.xsd_sockmsg*, %struct.xsd_sockmsg** %msg.addr, align 8, !dbg !5424
  %type2 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %4, i32 0, i32 0, !dbg !5425
  store i32 %3, i32* %type2, align 4, !dbg !5426
  %5 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !5427
  %msg3 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %5, i32 0, i32 2, !dbg !5428
  %len = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %msg3, i32 0, i32 3, !dbg !5429
  %6 = load i32, i32* %len, align 4, !dbg !5429
  %7 = load %struct.xsd_sockmsg*, %struct.xsd_sockmsg** %msg.addr, align 8, !dbg !5430
  %len4 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %7, i32 0, i32 3, !dbg !5431
  store i32 %6, i32* %len4, align 4, !dbg !5432
  call void @mutex_lock(%struct.mutex* @xb_write_mutex) #10, !dbg !5433
  %8 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !5434
  %state = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %8, i32 0, i32 9, !dbg !5436
  %9 = load i32, i32* %state, align 8, !dbg !5436
  %cmp = icmp eq i32 %9, 0, !dbg !5437
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5438

lor.lhs.false:                                    ; preds = %entry
  %10 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !5439
  %state5 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %10, i32 0, i32 9, !dbg !5440
  %11 = load i32, i32* %state5, align 8, !dbg !5440
  %cmp6 = icmp eq i32 %11, 1, !dbg !5441
  br i1 %cmp6, label %if.then, label %if.else, !dbg !5442

if.then:                                          ; preds = %lor.lhs.false, %entry
  %12 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !5443
  %state7 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %12, i32 0, i32 9, !dbg !5444
  store i32 3, i32* %state7, align 8, !dbg !5445
  br label %if.end, !dbg !5443

if.else:                                          ; preds = %lor.lhs.false
  %13 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !5446
  %14 = bitcast %struct.xb_req_data* %13 to i8*, !dbg !5446
  call void @kfree(i8* %14) #10, !dbg !5447
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @mutex_unlock(%struct.mutex* @xb_write_mutex) #10, !dbg !5448
  %15 = load i8*, i8** %ret, align 8, !dbg !5449
  ret i8* %15, !dbg !5450
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @get_error(i8* %errorstring) #0 !dbg !5451 {
entry:
  %retval = alloca i32, align 4
  %errorstring.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %errorstring, i8** %errorstring.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %errorstring.addr, metadata !5454, metadata !DIExpression()), !dbg !5455
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5456, metadata !DIExpression()), !dbg !5457
  store i32 0, i32* %i, align 4, !dbg !5458
  br label %for.cond, !dbg !5460

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %errorstring.addr, align 8, !dbg !5461
  %1 = load i32, i32* %i, align 4, !dbg !5463
  %idxprom = zext i32 %1 to i64, !dbg !5464
  %arrayidx = getelementptr [14 x %struct.xsd_errors], [14 x %struct.xsd_errors]* @xsd_errors, i64 0, i64 %idxprom, !dbg !5464
  %errstring = getelementptr inbounds %struct.xsd_errors, %struct.xsd_errors* %arrayidx, i32 0, i32 1, !dbg !5465
  %2 = load i8*, i8** %errstring, align 8, !dbg !5465
  %call = call i32 @strcmp(i8* %0, i8* %2) #10, !dbg !5466
  %cmp = icmp ne i32 %call, 0, !dbg !5467
  br i1 %cmp, label %for.body, label %for.end, !dbg !5468

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !dbg !5469
  %conv = zext i32 %3 to i64, !dbg !5469
  %cmp1 = icmp eq i64 %conv, 13, !dbg !5472
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5473

if.then:                                          ; preds = %for.body
  %4 = load i8*, i8** %errorstring.addr, align 8, !dbg !5474
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i64 0, i64 0), i8* %4) #13, !dbg !5474
  store i32 22, i32* %retval, align 4, !dbg !5476
  br label %return, !dbg !5476

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5477

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4, !dbg !5478
  %inc = add i32 %5, 1, !dbg !5478
  store i32 %inc, i32* %i, align 4, !dbg !5478
  br label %for.cond, !dbg !5479, !llvm.loop !5480

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !5482
  %idxprom4 = zext i32 %6 to i64, !dbg !5483
  %arrayidx5 = getelementptr [14 x %struct.xsd_errors], [14 x %struct.xsd_errors]* @xsd_errors, i64 0, i64 %idxprom4, !dbg !5483
  %errnum = getelementptr inbounds %struct.xsd_errors, %struct.xsd_errors* %arrayidx5, i32 0, i32 0, !dbg !5484
  %7 = load i32, i32* %errnum, align 16, !dbg !5484
  store i32 %7, i32* %retval, align 4, !dbg !5485
  br label %return, !dbg !5485

return:                                           ; preds = %for.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !5486
  ret i32 %8, !dbg !5486
}

; Function Attrs: noredzone
declare dso_local i32 @___ratelimit(%struct.ratelimit_state*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @read_reply(%struct.xb_req_data* %req) #0 !dbg !5487 {
entry:
  %retval = alloca i8*, align 8
  %req.addr = alloca %struct.xb_req_data*, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret = alloca i64, align 8
  %__int = alloca i64, align 8
  %tmp = alloca i64, align 8
  store %struct.xb_req_data* %req, %struct.xb_req_data** %req.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xb_req_data** %req.addr, metadata !5490, metadata !DIExpression()), !dbg !5491
  br label %do.body, !dbg !5492

do.body:                                          ; preds = %do.cond, %entry
  br label %do.body1, !dbg !5493

do.body1:                                         ; preds = %do.body
  br label %do.body2, !dbg !5495

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5497

do.body3:                                         ; preds = %do.body2
  br label %do.end, !dbg !5499

do.end:                                           ; preds = %do.body3
  br label %do.end4, !dbg !5497

do.end4:                                          ; preds = %do.end
  %0 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !5501
  %call = call zeroext i1 @test_reply(%struct.xb_req_data* %0) #10, !dbg !5501
  br i1 %call, label %if.then, label %if.end, !dbg !5495

if.then:                                          ; preds = %do.end4
  br label %do.end10, !dbg !5501

if.end:                                           ; preds = %do.end4
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %__wq_entry, metadata !5503, metadata !DIExpression()), !dbg !5505
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5506, metadata !DIExpression()), !dbg !5505
  store i64 0, i64* %__ret, align 8, !dbg !5505
  call void @init_wait_entry(%struct.wait_queue_entry* %__wq_entry, i32 0) #10, !dbg !5505
  br label %for.cond, !dbg !5505

for.cond:                                         ; preds = %if.end8, %if.end
  call void @llvm.dbg.declare(metadata i64* %__int, metadata !5507, metadata !DIExpression()), !dbg !5511
  %1 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !5511
  %wq = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %1, i32 0, i32 1, !dbg !5511
  %call5 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* %wq, %struct.wait_queue_entry* %__wq_entry, i32 2) #10, !dbg !5511
  store i64 %call5, i64* %__int, align 8, !dbg !5511
  %2 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !5512
  %call6 = call zeroext i1 @test_reply(%struct.xb_req_data* %2) #10, !dbg !5512
  br i1 %call6, label %if.then7, label %if.end8, !dbg !5511

if.then7:                                         ; preds = %for.cond
  br label %for.end, !dbg !5512

if.end8:                                          ; preds = %for.cond
  call void @schedule() #10, !dbg !5511
  br label %for.cond, !dbg !5514, !llvm.loop !5515

for.end:                                          ; preds = %if.then7
  %3 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !5505
  %wq9 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %3, i32 0, i32 1, !dbg !5505
  call void @finish_wait(%struct.wait_queue_head* %wq9, %struct.wait_queue_entry* %__wq_entry) #10, !dbg !5505
  br label %__out, !dbg !5505

__out:                                            ; preds = %for.end
  call void @llvm.dbg.label(metadata !5517), !dbg !5505
  %4 = load i64, i64* %__ret, align 8, !dbg !5505
  store i64 %4, i64* %tmp, align 8, !dbg !5505
  %5 = load i64, i64* %tmp, align 8, !dbg !5505
  br label %do.end10, !dbg !5495

do.end10:                                         ; preds = %__out, %if.then
  %call11 = call zeroext i1 @xenbus_ok() #10, !dbg !5518
  br i1 %call11, label %if.end14, label %if.then12, !dbg !5520

if.then12:                                        ; preds = %do.end10
  %call13 = call i8* @ERR_PTR(i64 -5) #10, !dbg !5521
  store i8* %call13, i8** %retval, align 8, !dbg !5522
  br label %return, !dbg !5522

if.end14:                                         ; preds = %do.end10
  %6 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !5523
  %err = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %6, i32 0, i32 8, !dbg !5525
  %7 = load i32, i32* %err, align 4, !dbg !5525
  %tobool = icmp ne i32 %7, 0, !dbg !5523
  br i1 %tobool, label %if.then15, label %if.end18, !dbg !5526

if.then15:                                        ; preds = %if.end14
  %8 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !5527
  %err16 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %8, i32 0, i32 8, !dbg !5528
  %9 = load i32, i32* %err16, align 4, !dbg !5528
  %conv = sext i32 %9 to i64, !dbg !5527
  %call17 = call i8* @ERR_PTR(i64 %conv) #10, !dbg !5529
  store i8* %call17, i8** %retval, align 8, !dbg !5530
  br label %return, !dbg !5530

if.end18:                                         ; preds = %if.end14
  br label %do.cond, !dbg !5531

do.cond:                                          ; preds = %if.end18
  %10 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !5532
  %state = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %10, i32 0, i32 9, !dbg !5533
  %11 = load i32, i32* %state, align 8, !dbg !5533
  %cmp = icmp ne i32 %11, 2, !dbg !5534
  br i1 %cmp, label %do.body, label %do.end20, !dbg !5531, !llvm.loop !5535

do.end20:                                         ; preds = %do.cond
  %12 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !5537
  %body = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %12, i32 0, i32 5, !dbg !5538
  %13 = load i8*, i8** %body, align 8, !dbg !5538
  store i8* %13, i8** %retval, align 8, !dbg !5539
  br label %return, !dbg !5539

return:                                           ; preds = %do.end20, %if.then15, %if.then12
  %14 = load i8*, i8** %retval, align 8, !dbg !5540
  ret i8* %14, !dbg !5540
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_reply(%struct.xb_req_data* %req) #0 !dbg !5541 {
entry:
  %retval = alloca i1, align 1
  %req.addr = alloca %struct.xb_req_data*, align 8
  store %struct.xb_req_data* %req, %struct.xb_req_data** %req.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xb_req_data** %req.addr, metadata !5544, metadata !DIExpression()), !dbg !5545
  %0 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !5546
  %state = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %0, i32 0, i32 9, !dbg !5548
  %1 = load i32, i32* %state, align 8, !dbg !5548
  %cmp = icmp eq i32 %1, 2, !dbg !5549
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5550

lor.lhs.false:                                    ; preds = %entry
  %call = call zeroext i1 @xenbus_ok() #10, !dbg !5551
  br i1 %call, label %if.end, label %if.then, !dbg !5552

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !5553, !srcloc !5555
  store i1 true, i1* %retval, align 1, !dbg !5556
  br label %return, !dbg !5556

if.end:                                           ; preds = %lor.lhs.false
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !5557, !srcloc !5558
  store i1 false, i1* %retval, align 1, !dbg !5559
  br label %return, !dbg !5559

return:                                           ; preds = %if.end, %if.then
  %2 = load i1, i1* %retval, align 1, !dbg !5560
  ret i1 %2, !dbg !5560
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @xenbus_ok() #0 !dbg !5561 {
entry:
  %retval = alloca i1, align 1
  %0 = load i32, i32* @xen_store_domain_type, align 4, !dbg !5564
  switch i32 %0, label %sw.default3 [
    i32 3, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb2
  ], !dbg !5565

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* @system_state, align 4, !dbg !5566
  switch i32 %1, label %sw.default [
    i32 4, label %sw.bb1
    i32 5, label %sw.bb1
    i32 3, label %sw.bb1
  ], !dbg !5568

sw.bb1:                                           ; preds = %sw.bb, %sw.bb, %sw.bb
  store i1 false, i1* %retval, align 1, !dbg !5569
  br label %return, !dbg !5569

sw.default:                                       ; preds = %sw.bb
  br label %sw.epilog, !dbg !5571

sw.epilog:                                        ; preds = %sw.default
  store i1 true, i1* %retval, align 1, !dbg !5572
  br label %return, !dbg !5572

sw.bb2:                                           ; preds = %entry, %entry
  store i1 true, i1* %retval, align 1, !dbg !5573
  br label %return, !dbg !5573

sw.default3:                                      ; preds = %entry
  br label %sw.epilog4, !dbg !5574

sw.epilog4:                                       ; preds = %sw.default3
  store i1 false, i1* %retval, align 1, !dbg !5575
  br label %return, !dbg !5575

return:                                           ; preds = %sw.epilog4, %sw.bb2, %sw.epilog, %sw.bb1
  %2 = load i1, i1* %retval, align 1, !dbg !5576
  ret i1 %2, !dbg !5576
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5577 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5580, metadata !DIExpression()), !dbg !5581
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5582, metadata !DIExpression()), !dbg !5583
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5584, metadata !DIExpression()), !dbg !5585
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5586
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5588
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5589
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #10, !dbg !5590
  br i1 %call, label %if.end, label %if.then, !dbg !5591

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5592

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5593
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5594
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !5595
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !5596
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5597
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5598
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !5599
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !5600
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5601
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5602
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !5603
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !5604
  br label %do.body, !dbg !5605

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5606

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5608

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5606

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5610
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5610
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !5610
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !5610
  br label %do.end7, !dbg !5610

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5606

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5612
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5613 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5616, metadata !DIExpression()), !dbg !5617
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5618, metadata !DIExpression()), !dbg !5619
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5620, metadata !DIExpression()), !dbg !5621
  ret i1 true, !dbg !5622
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !5623 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5624, metadata !DIExpression()), !dbg !5625
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5626
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #10, !dbg !5628
  br i1 %call, label %if.end, label %if.then, !dbg !5629

if.then:                                          ; preds = %entry
  br label %return, !dbg !5630

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5631
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5632
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5632
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5633
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5634
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5634
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #10, !dbg !5635
  br label %return, !dbg !5636

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5636
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !5637 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5640, metadata !DIExpression()), !dbg !5641
  ret i1 true, !dbg !5642
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5643 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5644, metadata !DIExpression()), !dbg !5645
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5646, metadata !DIExpression()), !dbg !5647
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5648
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5649
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5650
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !5651
  br label %do.body, !dbg !5652

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5653

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5655

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5653

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5657
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5657
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5657
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !5657
  br label %do.end5, !dbg !5657

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5653

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5659
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xs_reboot_notify(%struct.notifier_block* %nb, i64 %code, i8* %unused) #0 !dbg !5660 {
entry:
  %nb.addr = alloca %struct.notifier_block*, align 8
  %code.addr = alloca i64, align 8
  %unused.addr = alloca i8*, align 8
  %req = alloca %struct.xb_req_data*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.xb_req_data*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp5 = alloca %struct.xb_req_data*, align 8
  %__mptr7 = alloca i8*, align 8
  %tmp10 = alloca %struct.xb_req_data*, align 8
  %__mptr19 = alloca i8*, align 8
  %tmp24 = alloca %struct.xb_req_data*, align 8
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !5661, metadata !DIExpression()), !dbg !5662
  store i64 %code, i64* %code.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %code.addr, metadata !5663, metadata !DIExpression()), !dbg !5664
  store i8* %unused, i8** %unused.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %unused.addr, metadata !5665, metadata !DIExpression()), !dbg !5666
  call void @llvm.dbg.declare(metadata %struct.xb_req_data** %req, metadata !5667, metadata !DIExpression()), !dbg !5668
  call void @mutex_lock(%struct.mutex* @xb_write_mutex) #10, !dbg !5669
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5670, metadata !DIExpression()), !dbg !5673
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @xs_reply_list, i32 0, i32 0), align 8, !dbg !5673
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !5673
  store i8* %1, i8** %__mptr, align 8, !dbg !5673
  br label %do.body, !dbg !5673

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5674

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5673
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5673
  %3 = bitcast i8* %add.ptr to %struct.xb_req_data*, !dbg !5673
  store %struct.xb_req_data* %3, %struct.xb_req_data** %tmp, align 8, !dbg !5674
  %4 = load %struct.xb_req_data*, %struct.xb_req_data** %tmp, align 8, !dbg !5673
  store %struct.xb_req_data* %4, %struct.xb_req_data** %req, align 8, !dbg !5676
  br label %for.cond, !dbg !5676

for.cond:                                         ; preds = %do.end4, %do.end
  %5 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !5677
  %list = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %5, i32 0, i32 0, !dbg !5677
  %cmp = icmp eq %struct.list_head* %list, @xs_reply_list, !dbg !5677
  %lnot = xor i1 %cmp, true, !dbg !5677
  br i1 %lnot, label %for.body, label %for.end, !dbg !5676

for.body:                                         ; preds = %for.cond
  %6 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !5679
  %wq = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %6, i32 0, i32 1, !dbg !5679
  call void @__wake_up(%struct.wait_queue_head* %wq, i32 3, i32 1, i8* null) #10, !dbg !5679
  br label %for.inc, !dbg !5679

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !5680, metadata !DIExpression()), !dbg !5682
  %7 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !5682
  %list2 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %7, i32 0, i32 0, !dbg !5682
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list2, i32 0, i32 0, !dbg !5682
  %8 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5682
  %9 = bitcast %struct.list_head* %8 to i8*, !dbg !5682
  store i8* %9, i8** %__mptr1, align 8, !dbg !5682
  br label %do.body3, !dbg !5682

do.body3:                                         ; preds = %for.inc
  br label %do.end4, !dbg !5683

do.end4:                                          ; preds = %do.body3
  %10 = load i8*, i8** %__mptr1, align 8, !dbg !5682
  %add.ptr6 = getelementptr i8, i8* %10, i64 0, !dbg !5682
  %11 = bitcast i8* %add.ptr6 to %struct.xb_req_data*, !dbg !5682
  store %struct.xb_req_data* %11, %struct.xb_req_data** %tmp5, align 8, !dbg !5683
  %12 = load %struct.xb_req_data*, %struct.xb_req_data** %tmp5, align 8, !dbg !5682
  store %struct.xb_req_data* %12, %struct.xb_req_data** %req, align 8, !dbg !5677
  br label %for.cond, !dbg !5677, !llvm.loop !5685

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr7, metadata !5687, metadata !DIExpression()), !dbg !5690
  %13 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @xb_write_list, i32 0, i32 0), align 8, !dbg !5690
  %14 = bitcast %struct.list_head* %13 to i8*, !dbg !5690
  store i8* %14, i8** %__mptr7, align 8, !dbg !5690
  br label %do.body8, !dbg !5690

do.body8:                                         ; preds = %for.end
  br label %do.end9, !dbg !5691

do.end9:                                          ; preds = %do.body8
  %15 = load i8*, i8** %__mptr7, align 8, !dbg !5690
  %add.ptr11 = getelementptr i8, i8* %15, i64 0, !dbg !5690
  %16 = bitcast i8* %add.ptr11 to %struct.xb_req_data*, !dbg !5690
  store %struct.xb_req_data* %16, %struct.xb_req_data** %tmp10, align 8, !dbg !5691
  %17 = load %struct.xb_req_data*, %struct.xb_req_data** %tmp10, align 8, !dbg !5690
  store %struct.xb_req_data* %17, %struct.xb_req_data** %req, align 8, !dbg !5693
  br label %for.cond12, !dbg !5693

for.cond12:                                       ; preds = %do.end23, %do.end9
  %18 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !5694
  %list13 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %18, i32 0, i32 0, !dbg !5694
  %cmp14 = icmp eq %struct.list_head* %list13, @xb_write_list, !dbg !5694
  %lnot15 = xor i1 %cmp14, true, !dbg !5694
  br i1 %lnot15, label %for.body16, label %for.end26, !dbg !5693

for.body16:                                       ; preds = %for.cond12
  %19 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !5696
  %wq17 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %19, i32 0, i32 1, !dbg !5696
  call void @__wake_up(%struct.wait_queue_head* %wq17, i32 3, i32 1, i8* null) #10, !dbg !5696
  br label %for.inc18, !dbg !5696

for.inc18:                                        ; preds = %for.body16
  call void @llvm.dbg.declare(metadata i8** %__mptr19, metadata !5697, metadata !DIExpression()), !dbg !5699
  %20 = load %struct.xb_req_data*, %struct.xb_req_data** %req, align 8, !dbg !5699
  %list20 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %20, i32 0, i32 0, !dbg !5699
  %next21 = getelementptr inbounds %struct.list_head, %struct.list_head* %list20, i32 0, i32 0, !dbg !5699
  %21 = load %struct.list_head*, %struct.list_head** %next21, align 8, !dbg !5699
  %22 = bitcast %struct.list_head* %21 to i8*, !dbg !5699
  store i8* %22, i8** %__mptr19, align 8, !dbg !5699
  br label %do.body22, !dbg !5699

do.body22:                                        ; preds = %for.inc18
  br label %do.end23, !dbg !5700

do.end23:                                         ; preds = %do.body22
  %23 = load i8*, i8** %__mptr19, align 8, !dbg !5699
  %add.ptr25 = getelementptr i8, i8* %23, i64 0, !dbg !5699
  %24 = bitcast i8* %add.ptr25 to %struct.xb_req_data*, !dbg !5699
  store %struct.xb_req_data* %24, %struct.xb_req_data** %tmp24, align 8, !dbg !5700
  %25 = load %struct.xb_req_data*, %struct.xb_req_data** %tmp24, align 8, !dbg !5699
  store %struct.xb_req_data* %25, %struct.xb_req_data** %req, align 8, !dbg !5694
  br label %for.cond12, !dbg !5694, !llvm.loop !5702

for.end26:                                        ; preds = %for.cond12
  call void @mutex_unlock(%struct.mutex* @xb_write_mutex) #10, !dbg !5704
  ret i32 0, !dbg !5705
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @kthread_should_stop() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @xen_strict_xenbus_quirk() #0 !dbg !5706 {
entry:
  %retval = alloca i1, align 1
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  %base = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %eax, metadata !5707, metadata !DIExpression()), !dbg !5708
  call void @llvm.dbg.declare(metadata i32* %ebx, metadata !5709, metadata !DIExpression()), !dbg !5710
  call void @llvm.dbg.declare(metadata i32* %ecx, metadata !5711, metadata !DIExpression()), !dbg !5712
  call void @llvm.dbg.declare(metadata i32* %edx, metadata !5713, metadata !DIExpression()), !dbg !5714
  call void @llvm.dbg.declare(metadata i32* %base, metadata !5715, metadata !DIExpression()), !dbg !5716
  %call = call i32 @xen_cpuid_base() #10, !dbg !5717
  store i32 %call, i32* %base, align 4, !dbg !5718
  %0 = load i32, i32* %base, align 4, !dbg !5719
  %add = add i32 %0, 1, !dbg !5720
  call void @cpuid(i32 %add, i32* %eax, i32* %ebx, i32* %ecx, i32* %edx) #10, !dbg !5721
  %1 = load i32, i32* %eax, align 4, !dbg !5722
  %shr = lshr i32 %1, 16, !dbg !5724
  %cmp = icmp ult i32 %shr, 4, !dbg !5725
  br i1 %cmp, label %if.then, label %if.end, !dbg !5726

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1, !dbg !5727
  br label %return, !dbg !5727

if.end:                                           ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !5728
  br label %return, !dbg !5728

return:                                           ; preds = %if.end, %if.then
  %2 = load i1, i1* %retval, align 1, !dbg !5729
  ret i1 %2, !dbg !5729
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_cpuid_base() #0 !dbg !5730 {
entry:
  %call = call i32 @hypervisor_cpuid_base(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0), i32 2) #10, !dbg !5734
  ret i32 %call, !dbg !5735
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpuid(i32 %op, i32* %eax, i32* %ebx, i32* %ecx, i32* %edx) #0 !dbg !5736 {
entry:
  %op.addr = alloca i32, align 4
  %eax.addr = alloca i32*, align 8
  %ebx.addr = alloca i32*, align 8
  %ecx.addr = alloca i32*, align 8
  %edx.addr = alloca i32*, align 8
  store i32 %op, i32* %op.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %op.addr, metadata !5739, metadata !DIExpression()), !dbg !5740
  store i32* %eax, i32** %eax.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %eax.addr, metadata !5741, metadata !DIExpression()), !dbg !5742
  store i32* %ebx, i32** %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ebx.addr, metadata !5743, metadata !DIExpression()), !dbg !5744
  store i32* %ecx, i32** %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ecx.addr, metadata !5745, metadata !DIExpression()), !dbg !5746
  store i32* %edx, i32** %edx.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %edx.addr, metadata !5747, metadata !DIExpression()), !dbg !5748
  %0 = load i32, i32* %op.addr, align 4, !dbg !5749
  %1 = load i32*, i32** %eax.addr, align 8, !dbg !5750
  store i32 %0, i32* %1, align 4, !dbg !5751
  %2 = load i32*, i32** %ecx.addr, align 8, !dbg !5752
  store i32 0, i32* %2, align 4, !dbg !5753
  %3 = load i32*, i32** %eax.addr, align 8, !dbg !5754
  %4 = load i32*, i32** %ebx.addr, align 8, !dbg !5755
  %5 = load i32*, i32** %ecx.addr, align 8, !dbg !5756
  %6 = load i32*, i32** %edx.addr, align 8, !dbg !5757
  call void @__cpuid(i32* %3, i32* %4, i32* %5, i32* %6) #10, !dbg !5758
  ret void, !dbg !5759
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hypervisor_cpuid_base(i8* %sig, i32 %leaves) #0 !dbg !5760 {
entry:
  %retval = alloca i32, align 4
  %sig.addr = alloca i8*, align 8
  %leaves.addr = alloca i32, align 4
  %base = alloca i32, align 4
  %eax = alloca i32, align 4
  %signature = alloca [3 x i32], align 4
  store i8* %sig, i8** %sig.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %sig.addr, metadata !5763, metadata !DIExpression()), !dbg !5764
  store i32 %leaves, i32* %leaves.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %leaves.addr, metadata !5765, metadata !DIExpression()), !dbg !5766
  call void @llvm.dbg.declare(metadata i32* %base, metadata !5767, metadata !DIExpression()), !dbg !5768
  call void @llvm.dbg.declare(metadata i32* %eax, metadata !5769, metadata !DIExpression()), !dbg !5770
  call void @llvm.dbg.declare(metadata [3 x i32]* %signature, metadata !5771, metadata !DIExpression()), !dbg !5773
  store i32 1073741824, i32* %base, align 4, !dbg !5774
  br label %for.cond, !dbg !5776

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %base, align 4, !dbg !5777
  %cmp = icmp ult i32 %0, 1073807360, !dbg !5779
  br i1 %cmp, label %for.body, label %for.end, !dbg !5780

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %base, align 4, !dbg !5781
  %arrayidx = getelementptr [3 x i32], [3 x i32]* %signature, i64 0, i64 0, !dbg !5783
  %arrayidx1 = getelementptr [3 x i32], [3 x i32]* %signature, i64 0, i64 1, !dbg !5784
  %arrayidx2 = getelementptr [3 x i32], [3 x i32]* %signature, i64 0, i64 2, !dbg !5785
  call void @cpuid(i32 %1, i32* %eax, i32* %arrayidx, i32* %arrayidx1, i32* %arrayidx2) #10, !dbg !5786
  %2 = load i8*, i8** %sig.addr, align 8, !dbg !5787
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %signature, i64 0, i64 0, !dbg !5789
  %3 = bitcast i32* %arraydecay to i8*, !dbg !5789
  %call = call i32 @memcmp(i8* %2, i8* %3, i64 12) #10, !dbg !5790
  %tobool = icmp ne i32 %call, 0, !dbg !5790
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !5791

land.lhs.true:                                    ; preds = %for.body
  %4 = load i32, i32* %leaves.addr, align 4, !dbg !5792
  %cmp3 = icmp eq i32 %4, 0, !dbg !5793
  br i1 %cmp3, label %if.then, label %lor.lhs.false, !dbg !5794

lor.lhs.false:                                    ; preds = %land.lhs.true
  %5 = load i32, i32* %eax, align 4, !dbg !5795
  %6 = load i32, i32* %base, align 4, !dbg !5796
  %sub = sub i32 %5, %6, !dbg !5797
  %7 = load i32, i32* %leaves.addr, align 4, !dbg !5798
  %cmp4 = icmp uge i32 %sub, %7, !dbg !5799
  br i1 %cmp4, label %if.then, label %if.end, !dbg !5800

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %8 = load i32, i32* %base, align 4, !dbg !5801
  store i32 %8, i32* %retval, align 4, !dbg !5802
  br label %return, !dbg !5802

if.end:                                           ; preds = %lor.lhs.false, %for.body
  br label %for.inc, !dbg !5803

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %base, align 4, !dbg !5804
  %add = add i32 %9, 256, !dbg !5804
  store i32 %add, i32* %base, align 4, !dbg !5804
  br label %for.cond, !dbg !5805, !llvm.loop !5806

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !5808
  br label %return, !dbg !5808

return:                                           ; preds = %for.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !5809
  ret i32 %10, !dbg !5809
}

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__cpuid(i32* %eax, i32* %ebx, i32* %ecx, i32* %edx) #0 !dbg !5810 {
entry:
  %eax.addr = alloca i32*, align 8
  %ebx.addr = alloca i32*, align 8
  %ecx.addr = alloca i32*, align 8
  %edx.addr = alloca i32*, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i32* %eax, i32** %eax.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %eax.addr, metadata !5814, metadata !DIExpression()), !dbg !5815
  store i32* %ebx, i32** %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ebx.addr, metadata !5816, metadata !DIExpression()), !dbg !5817
  store i32* %ecx, i32** %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ecx.addr, metadata !5818, metadata !DIExpression()), !dbg !5819
  store i32* %edx, i32** %edx.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %edx.addr, metadata !5820, metadata !DIExpression()), !dbg !5821
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5822, metadata !DIExpression()), !dbg !5824
  %0 = load i64, i64* %__edi, align 8, !dbg !5824
  store i64 %0, i64* %__edi, align 8, !dbg !5824
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5825, metadata !DIExpression()), !dbg !5824
  %1 = load i64, i64* %__esi, align 8, !dbg !5824
  store i64 %1, i64* %__esi, align 8, !dbg !5824
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5826, metadata !DIExpression()), !dbg !5824
  %2 = load i64, i64* %__edx, align 8, !dbg !5824
  store i64 %2, i64* %__edx, align 8, !dbg !5824
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5827, metadata !DIExpression()), !dbg !5824
  %3 = load i64, i64* %__ecx, align 8, !dbg !5824
  store i64 %3, i64* %__ecx, align 8, !dbg !5824
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5828, metadata !DIExpression()), !dbg !5824
  %4 = load i64, i64* %__eax, align 8, !dbg !5824
  store i64 %4, i64* %__eax, align 8, !dbg !5824
  %5 = load void (i32*, i32*, i32*, i32*)*, void (i32*, i32*, i32*, i32*)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 22), align 8, !dbg !5824
  %6 = call i64 @llvm.read_register.i64(metadata !2953), !dbg !5824
  %7 = load i32*, i32** %eax.addr, align 8, !dbg !5824
  %8 = ptrtoint i32* %7 to i64, !dbg !5824
  %9 = load i32*, i32** %ebx.addr, align 8, !dbg !5824
  %10 = ptrtoint i32* %9 to i64, !dbg !5824
  %11 = load i32*, i32** %ecx.addr, align 8, !dbg !5824
  %12 = ptrtoint i32* %11 to i64, !dbg !5824
  %13 = load i32*, i32** %edx.addr, align 8, !dbg !5824
  %14 = ptrtoint i32* %13 to i64, !dbg !5824
  %15 = call { i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${6:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${5:c}\0A  .byte 772b-771b\0A  .short ${7:c}\0A.popsection\0A", "={di},={si},={dx},={cx},={rsp},i,i,i,{di},{si},{dx},{cx},4,~{memory},~{cc},~{rax},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 25, void (i32*, i32*, i32*, i32*)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 22), i32 511, i64 %8, i64 %10, i64 %12, i64 %14, i64 %6) #3, !dbg !5824, !srcloc !5829
  %asmresult = extractvalue { i64, i64, i64, i64, i64 } %15, 0, !dbg !5824
  %asmresult1 = extractvalue { i64, i64, i64, i64, i64 } %15, 1, !dbg !5824
  %asmresult2 = extractvalue { i64, i64, i64, i64, i64 } %15, 2, !dbg !5824
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64 } %15, 3, !dbg !5824
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64 } %15, 4, !dbg !5824
  store i64 %asmresult, i64* %__edi, align 8, !dbg !5824
  store i64 %asmresult1, i64* %__esi, align 8, !dbg !5824
  store i64 %asmresult2, i64* %__edx, align 8, !dbg !5824
  store i64 %asmresult3, i64* %__ecx, align 8, !dbg !5824
  call void @llvm.write_register.i64(metadata !2953, i64 %asmresult4), !dbg !5824
  ret void, !dbg !5830
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #3

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { noredzone }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { cold noredzone }
attributes #14 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!2953}
!llvm.module.flags = !{!2954, !2955, !2956, !2957}
!llvm.ident = !{!2958}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xs_state_lock", scope: !2, file: !3, line: 64, type: !782, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !97, globals: !2890, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/xen/xenbus/xenbus_xs.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !31, !38, !43, !48, !55, !61, !70, !78, !84, !91}
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
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !39, line: 10, baseType: !7, size: 32, elements: !40)
!39 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!40 = !{!41, !42}
!41 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!42 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !44, line: 65, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!45 = !{!46, !47}
!46 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!47 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !49, line: 15, baseType: !7, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!50 = !{!51, !52, !53, !54}
!51 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!52 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!53 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!54 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !56, line: 54, baseType: !7, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!57 = !{!58, !59, !60}
!58 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!59 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!60 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !62, line: 296, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!63 = !{!64, !65, !66, !67, !68, !69}
!64 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!65 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!66 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!67 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!68 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!69 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !71, line: 9, baseType: !7, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!72 = !{!73, !74, !75, !76, !77}
!73 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!74 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!75 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!76 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!77 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !79, line: 16, baseType: !7, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!80 = !{!81, !82, !83}
!81 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!82 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!83 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !85, line: 305, baseType: !7, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!86 = !{!87, !88, !89, !90}
!87 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!88 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!89 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!90 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xen_domain_type", file: !92, line: 5, baseType: !7, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/xen/xen.h", directory: "/home/lizy2001/genbc/linux")
!93 = !{!94, !95, !96}
!94 = !DIEnumerator(name: "XEN_NATIVE", value: 0, isUnsigned: true)
!95 = !DIEnumerator(name: "XEN_PV_DOMAIN", value: 1, isUnsigned: true)
!96 = !DIEnumerator(name: "XEN_HVM_DOMAIN", value: 2, isUnsigned: true)
!97 = !{!98, !99, !101, !112, !115, !116, !118, !119, !130, !146, !111, !113, !149, !150, !151, !2865}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !100, line: 148, baseType: !7)
!100 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !103, line: 15, size: 128, elements: !104)
!103 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!104 = !{!105, !106}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !102, file: !103, line: 16, baseType: !98, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !102, file: !103, line: 17, baseType: !107, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !100, line: 55, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !109, line: 72, baseType: !110)
!109 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !109, line: 16, baseType: !111)
!111 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!115 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!118 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xs_watch_event", file: !32, line: 59, size: 384, elements: !121)
!121 = !{!122, !128, !129, !140, !141, !142}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !120, file: !32, line: 60, baseType: !123, size: 128)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !100, line: 178, size: 128, elements: !124)
!124 = !{!125, !127}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !123, file: !100, line: 179, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !123, file: !100, line: 179, baseType: !126, size: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !120, file: !32, line: 61, baseType: !7, size: 32, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !120, file: !32, line: 62, baseType: !130, size: 64, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_watch", file: !132, line: 57, size: 256, elements: !133)
!132 = !DIFile(filename: "./include/xen/xenbus.h", directory: "/home/lizy2001/genbc/linux")
!133 = !{!134, !135, !136}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !131, file: !132, line: 59, baseType: !123, size: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !131, file: !132, line: 62, baseType: !116, size: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !131, file: !132, line: 65, baseType: !137, size: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !130, !116, !116}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !120, file: !32, line: 63, baseType: !116, size: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !120, file: !32, line: 64, baseType: !116, size: 64, offset: 320)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !120, file: !32, line: 65, baseType: !143, offset: 384)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: -1)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !126)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !153, line: 640, size: 48640, elements: !154)
!153 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!154 = !{!155, !165, !167, !168, !178, !179, !180, !181, !182, !183, !184, !185, !189, !218, !230, !339, !340, !341, !352, !353, !355, !356, !2181, !2182, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2259, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2274, !2275, !2276, !2278, !2279, !2280, !2281, !2282, !2283, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2307, !2312, !2313, !2314, !2315, !2316, !2318, !2321, !2324, !2327, !2330, !2333, !2434, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2482, !2483, !2484, !2485, !2486, !2491, !2492, !2493, !2496, !2497, !2500, !2503, !2506, !2507, !2539, !2542, !2543, !2622, !2623, !2626, !2627, !2630, !2631, !2632, !2636, !2637, !2638, !2651, !2652, !2653, !2663, !2668, !2669, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !152, file: !153, line: 646, baseType: !156, size: 128)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !157, line: 56, size: 128, elements: !158)
!157 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!158 = !{!159, !160}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !156, file: !157, line: 57, baseType: !111, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !156, file: !157, line: 58, baseType: !161, size: 32, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !162, line: 21, baseType: !163)
!162 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !164, line: 27, baseType: !7)
!164 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!165 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !152, file: !153, line: 649, baseType: !166, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !118)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !152, file: !153, line: 657, baseType: !98, size: 64, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !152, file: !153, line: 658, baseType: !169, size: 32, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !170, line: 113, baseType: !171)
!170 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !170, line: 111, size: 32, elements: !172)
!172 = !{!173}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !171, file: !170, line: 112, baseType: !174, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !100, line: 168, baseType: !175)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !100, line: 166, size: 32, elements: !176)
!176 = !{!177}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !175, file: !100, line: 167, baseType: !115, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !152, file: !153, line: 660, baseType: !7, size: 32, offset: 288)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !152, file: !153, line: 661, baseType: !7, size: 32, offset: 320)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !152, file: !153, line: 684, baseType: !115, size: 32, offset: 352)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !152, file: !153, line: 686, baseType: !115, size: 32, offset: 384)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !152, file: !153, line: 687, baseType: !115, size: 32, offset: 416)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !152, file: !153, line: 688, baseType: !115, size: 32, offset: 448)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !152, file: !153, line: 689, baseType: !7, size: 32, offset: 480)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !152, file: !153, line: 691, baseType: !186, size: 64, offset: 512)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!188 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !153, line: 691, flags: DIFlagFwdDecl)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !152, file: !153, line: 692, baseType: !190, size: 832, offset: 576)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !153, line: 451, size: 832, elements: !191)
!191 = !{!192, !197, !205, !206, !207, !211, !212, !213, !214, !215}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !190, file: !153, line: 453, baseType: !193, size: 128)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !153, line: 325, size: 128, elements: !194)
!194 = !{!195, !196}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !193, file: !153, line: 326, baseType: !111, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !193, file: !153, line: 327, baseType: !161, size: 32, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !190, file: !153, line: 454, baseType: !198, size: 192, align: 64, offset: 128)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !199, line: 24, size: 192, align: 64, elements: !200)
!199 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!200 = !{!201, !202, !204}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !198, file: !199, line: 25, baseType: !111, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !198, file: !199, line: 26, baseType: !203, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !198, file: !199, line: 27, baseType: !203, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !190, file: !153, line: 455, baseType: !123, size: 128, offset: 320)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !190, file: !153, line: 456, baseType: !7, size: 32, offset: 448)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !190, file: !153, line: 458, baseType: !208, size: 64, offset: 512)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !162, line: 23, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !164, line: 31, baseType: !210)
!210 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !190, file: !153, line: 459, baseType: !208, size: 64, offset: 576)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !190, file: !153, line: 460, baseType: !208, size: 64, offset: 640)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !190, file: !153, line: 461, baseType: !208, size: 64, offset: 704)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !190, file: !153, line: 463, baseType: !208, size: 64, offset: 768)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !190, file: !153, line: 465, baseType: !216, offset: 832)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !153, line: 415, elements: !217)
!217 = !{}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !152, file: !153, line: 693, baseType: !219, size: 384, offset: 1408)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !153, line: 489, size: 384, elements: !220)
!220 = !{!221, !222, !223, !224, !225, !227, !228}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !219, file: !153, line: 490, baseType: !123, size: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !219, file: !153, line: 491, baseType: !111, size: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !219, file: !153, line: 492, baseType: !111, size: 64, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !219, file: !153, line: 493, baseType: !7, size: 32, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !219, file: !153, line: 494, baseType: !226, size: 16, offset: 288)
!226 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !219, file: !153, line: 495, baseType: !226, size: 16, offset: 304)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !219, file: !153, line: 497, baseType: !229, size: 64, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !152, file: !153, line: 697, baseType: !231, size: 1792, offset: 1792)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !153, line: 507, size: 1792, elements: !232)
!232 = !{!233, !234, !235, !236, !237, !238, !239, !243, !244, !245, !246, !247, !248, !249, !336, !337}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !231, file: !153, line: 508, baseType: !198, size: 192, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !231, file: !153, line: 515, baseType: !208, size: 64, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !231, file: !153, line: 516, baseType: !208, size: 64, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !231, file: !153, line: 517, baseType: !208, size: 64, offset: 320)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !231, file: !153, line: 518, baseType: !208, size: 64, offset: 384)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !231, file: !153, line: 519, baseType: !208, size: 64, offset: 448)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !231, file: !153, line: 526, baseType: !240, size: 64, offset: 512)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !162, line: 22, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !164, line: 30, baseType: !242)
!242 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !231, file: !153, line: 527, baseType: !208, size: 64, offset: 576)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !231, file: !153, line: 528, baseType: !7, size: 32, offset: 640)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !231, file: !153, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !231, file: !153, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !231, file: !153, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !231, file: !153, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !231, file: !153, line: 563, baseType: !250, size: 512, offset: 704)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !44, line: 118, size: 512, elements: !251)
!251 = !{!252, !260, !261, !266, !329, !333, !334, !335}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !250, file: !44, line: 119, baseType: !253, size: 256)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !254, line: 9, size: 256, elements: !255)
!254 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!255 = !{!256, !257}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !253, file: !254, line: 10, baseType: !198, size: 192, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !253, file: !254, line: 11, baseType: !258, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !259, line: 29, baseType: !240)
!259 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !250, file: !44, line: 120, baseType: !258, size: 64, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !250, file: !44, line: 121, baseType: !262, size: 64, offset: 320)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!43, !265}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !250, file: !44, line: 122, baseType: !267, size: 64, offset: 384)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !44, line: 159, size: 512, align: 512, elements: !269)
!269 = !{!270, !298, !299, !302, !312, !313, !324, !328}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !268, file: !44, line: 160, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !44, line: 214, size: 4608, align: 512, elements: !273)
!273 = !{!274, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !272, file: !44, line: 215, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !276, line: 29, baseType: !277)
!276 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !276, line: 20, elements: !278)
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !277, file: !276, line: 21, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !281, line: 25, baseType: !282)
!281 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !281, line: 25, elements: !217)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !272, file: !44, line: 216, baseType: !7, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !272, file: !44, line: 217, baseType: !7, size: 32, offset: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !272, file: !44, line: 218, baseType: !7, size: 32, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !272, file: !44, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !272, file: !44, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !272, file: !44, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !272, file: !44, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !272, file: !44, line: 233, baseType: !258, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !272, file: !44, line: 234, baseType: !265, size: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !272, file: !44, line: 235, baseType: !258, size: 64, offset: 256)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !272, file: !44, line: 236, baseType: !265, size: 64, offset: 320)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !272, file: !44, line: 237, baseType: !295, size: 4096, offset: 512)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 4096, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 8)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !268, file: !44, line: 161, baseType: !7, size: 32, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !268, file: !44, line: 162, baseType: !300, size: 32, offset: 96)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !100, line: 27, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !109, line: 96, baseType: !115)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !268, file: !44, line: 163, baseType: !303, size: 32, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !304, line: 276, baseType: !305)
!304 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !304, line: 276, size: 32, elements: !306)
!306 = !{!307}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !305, file: !304, line: 276, baseType: !308, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !304, line: 70, baseType: !309)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !304, line: 65, size: 32, elements: !310)
!310 = !{!311}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !309, file: !304, line: 66, baseType: !7, size: 32)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !268, file: !44, line: 164, baseType: !265, size: 64, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !268, file: !44, line: 165, baseType: !314, size: 128, offset: 256)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !254, line: 14, size: 128, elements: !315)
!315 = !{!316}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !314, file: !254, line: 15, baseType: !317, size: 128)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !199, line: 125, size: 128, elements: !318)
!318 = !{!319, !323}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !317, file: !199, line: 126, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !199, line: 31, size: 64, elements: !321)
!321 = !{!322}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !320, file: !199, line: 32, baseType: !203, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !317, file: !199, line: 127, baseType: !203, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !268, file: !44, line: 166, baseType: !325, size: 64, offset: 384)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!258}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !268, file: !44, line: 167, baseType: !258, size: 64, offset: 448)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !250, file: !44, line: 123, baseType: !330, size: 8, offset: 448)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !162, line: 17, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !164, line: 21, baseType: !332)
!332 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !250, file: !44, line: 124, baseType: !330, size: 8, offset: 456)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !250, file: !44, line: 125, baseType: !330, size: 8, offset: 464)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !250, file: !44, line: 126, baseType: !330, size: 8, offset: 472)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !231, file: !153, line: 572, baseType: !250, size: 512, offset: 1216)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !231, file: !153, line: 580, baseType: !338, size: 64, offset: 1728)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !152, file: !153, line: 721, baseType: !7, size: 32, offset: 3584)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !152, file: !153, line: 722, baseType: !115, size: 32, offset: 3616)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !152, file: !153, line: 723, baseType: !342, size: 64, offset: 3648)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !345, line: 17, baseType: !346)
!345 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !345, line: 17, size: 64, elements: !347)
!347 = !{!348}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !346, file: !345, line: 17, baseType: !349, size: 64)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 64, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 1)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !152, file: !153, line: 724, baseType: !344, size: 64, offset: 3712)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !152, file: !153, line: 749, baseType: !354, offset: 3776)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !153, line: 290, elements: !217)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !152, file: !153, line: 751, baseType: !123, size: 128, offset: 3776)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !152, file: !153, line: 757, baseType: !357, size: 64, offset: 3904)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !359, line: 388, size: 7296, elements: !360)
!359 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!360 = !{!361, !2179}
!361 = !DIDerivedType(tag: DW_TAG_member, scope: !358, file: !359, line: 389, baseType: !362, size: 7296)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !358, file: !359, line: 389, size: 7296, elements: !363)
!363 = !{!364, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2108, !2114, !2117, !2140, !2141, !2163, !2164, !2167, !2168, !2169, !2172, !2173, !2174, !2177, !2178}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !362, file: !359, line: 390, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !359, line: 305, size: 1472, elements: !367)
!367 = !{!368, !369, !370, !371, !372, !373, !374, !375, !383, !384, !389, !390, !393, !397, !398, !2056, !2057, !2058}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !366, file: !359, line: 308, baseType: !111, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !366, file: !359, line: 309, baseType: !111, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !366, file: !359, line: 313, baseType: !365, size: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !366, file: !359, line: 313, baseType: !365, size: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !366, file: !359, line: 315, baseType: !198, size: 192, align: 64, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !366, file: !359, line: 323, baseType: !111, size: 64, offset: 448)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !366, file: !359, line: 327, baseType: !357, size: 64, offset: 512)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !366, file: !359, line: 333, baseType: !376, size: 64, offset: 576)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !377, line: 284, baseType: !378)
!377 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !377, line: 284, size: 64, elements: !379)
!379 = !{!380}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !378, file: !377, line: 284, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !382, line: 19, baseType: !111)
!382 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!383 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !366, file: !359, line: 334, baseType: !111, size: 64, offset: 640)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !366, file: !359, line: 343, baseType: !385, size: 256, offset: 704)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !366, file: !359, line: 340, size: 256, elements: !386)
!386 = !{!387, !388}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !385, file: !359, line: 341, baseType: !198, size: 192, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !385, file: !359, line: 342, baseType: !111, size: 64, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !366, file: !359, line: 351, baseType: !123, size: 128, offset: 960)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !366, file: !359, line: 353, baseType: !391, size: 64, offset: 1088)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !359, line: 353, flags: DIFlagFwdDecl)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !366, file: !359, line: 356, baseType: !394, size: 64, offset: 1152)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!396 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !359, line: 356, flags: DIFlagFwdDecl)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !366, file: !359, line: 359, baseType: !111, size: 64, offset: 1216)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !366, file: !359, line: 361, baseType: !399, size: 64, offset: 1280)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !62, line: 916, size: 1856, align: 32, elements: !401)
!401 = !{!402, !420, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1855, !2040, !2049, !2050, !2051, !2052, !2053, !2054, !2055}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !400, file: !62, line: 920, baseType: !403, size: 128)
!403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !400, file: !62, line: 917, size: 128, elements: !404)
!404 = !{!405, !411}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !403, file: !62, line: 918, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !407, line: 58, size: 64, elements: !408)
!407 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !406, file: !407, line: 59, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !403, file: !62, line: 919, baseType: !412, size: 128, align: 64)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !100, line: 216, size: 128, align: 64, elements: !413)
!413 = !{!414, !416}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !412, file: !100, line: 217, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !412, file: !100, line: 218, baseType: !417, size: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !415}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !400, file: !62, line: 921, baseType: !421, size: 128, offset: 128)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !422, line: 8, size: 128, elements: !423)
!422 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!423 = !{!424, !428}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !421, file: !422, line: 9, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !427, line: 18, flags: DIFlagFwdDecl)
!427 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!428 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !421, file: !422, line: 10, baseType: !429, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !427, line: 89, size: 1536, elements: !431)
!431 = !{!432, !433, !438, !446, !447, !462, !1784, !1786, !1798, !1799, !1800, !1801, !1802, !1808, !1809, !1810}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !430, file: !427, line: 91, baseType: !7, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !430, file: !427, line: 92, baseType: !434, size: 32, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !304, line: 277, baseType: !435)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !304, line: 277, size: 32, elements: !436)
!436 = !{!437}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !435, file: !304, line: 277, baseType: !308, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !430, file: !427, line: 93, baseType: !439, size: 128, offset: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !440, line: 38, size: 128, elements: !441)
!440 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!441 = !{!442, !444}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !439, file: !440, line: 39, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !439, file: !440, line: 39, baseType: !445, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !430, file: !427, line: 94, baseType: !429, size: 64, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !430, file: !427, line: 95, baseType: !448, size: 128, offset: 256)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !427, line: 47, size: 128, elements: !449)
!449 = !{!450, !459}
!450 = !DIDerivedType(tag: DW_TAG_member, scope: !448, file: !427, line: 48, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !448, file: !427, line: 48, size: 64, elements: !452)
!452 = !{!453, !458}
!453 = !DIDerivedType(tag: DW_TAG_member, scope: !451, file: !427, line: 49, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !427, line: 49, size: 64, elements: !455)
!455 = !{!456, !457}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !454, file: !427, line: 50, baseType: !161, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !454, file: !427, line: 50, baseType: !161, size: 32, offset: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !451, file: !427, line: 52, baseType: !208, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !448, file: !427, line: 54, baseType: !460, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !430, file: !427, line: 96, baseType: !463, size: 64, offset: 384)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !62, line: 610, size: 4224, elements: !465)
!465 = !{!466, !468, !469, !477, !484, !485, !634, !1492, !1493, !1494, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1760, !1768, !1769, !1770, !1780, !1781, !1782, !1783}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !464, file: !62, line: 611, baseType: !467, size: 16)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !100, line: 19, baseType: !226)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !464, file: !62, line: 612, baseType: !226, size: 16, offset: 16)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !464, file: !62, line: 613, baseType: !470, size: 32, offset: 32)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !471, line: 23, baseType: !472)
!471 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !471, line: 21, size: 32, elements: !473)
!473 = !{!474}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !472, file: !471, line: 22, baseType: !475, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !100, line: 32, baseType: !476)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !109, line: 49, baseType: !7)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !464, file: !62, line: 614, baseType: !478, size: 32, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !471, line: 28, baseType: !479)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !471, line: 26, size: 32, elements: !480)
!480 = !{!481}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !479, file: !471, line: 27, baseType: !482, size: 32)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !100, line: 33, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !109, line: 50, baseType: !7)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !464, file: !62, line: 615, baseType: !7, size: 32, offset: 96)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !464, file: !62, line: 622, baseType: !486, size: 64, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !488)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !62, line: 1864, size: 1536, align: 512, elements: !489)
!489 = !{!490, !494, !507, !511, !517, !521, !527, !531, !535, !539, !543, !544, !550, !554, !578, !607, !614, !620, !625, !629, !630}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !488, file: !62, line: 1865, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!429, !463, !429, !7}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !488, file: !62, line: 1866, baseType: !495, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!116, !429, !463, !498}
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !500, line: 10, size: 128, elements: !501)
!500 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!501 = !{!502, !506}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !499, file: !500, line: 11, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{null, !98}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !499, file: !500, line: 12, baseType: !98, size: 64, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !488, file: !62, line: 1867, baseType: !508, size: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!115, !463, !115}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !488, file: !62, line: 1868, baseType: !512, size: 64, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!515, !463, !115}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !62, line: 581, flags: DIFlagFwdDecl)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !488, file: !62, line: 1870, baseType: !518, size: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!115, !429, !113, !115}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !488, file: !62, line: 1872, baseType: !522, size: 64, offset: 320)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!115, !463, !429, !467, !525}
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !100, line: 30, baseType: !526)
!526 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !488, file: !62, line: 1873, baseType: !528, size: 64, offset: 384)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!115, !429, !463, !429}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !488, file: !62, line: 1874, baseType: !532, size: 64, offset: 448)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!115, !463, !429}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !488, file: !62, line: 1875, baseType: !536, size: 64, offset: 512)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!115, !463, !429, !116}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !488, file: !62, line: 1876, baseType: !540, size: 64, offset: 576)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!115, !463, !429, !467}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !488, file: !62, line: 1877, baseType: !532, size: 64, offset: 640)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !488, file: !62, line: 1878, baseType: !545, size: 64, offset: 704)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!115, !463, !429, !467, !548}
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !100, line: 16, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !100, line: 13, baseType: !161)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !488, file: !62, line: 1879, baseType: !551, size: 64, offset: 768)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!115, !463, !429, !463, !429, !7}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !488, file: !62, line: 1881, baseType: !555, size: 64, offset: 832)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!115, !429, !558}
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !62, line: 219, size: 640, elements: !560)
!560 = !{!561, !562, !563, !564, !565, !568, !575, !576, !577}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !559, file: !62, line: 220, baseType: !7, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !559, file: !62, line: 221, baseType: !467, size: 16, offset: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !559, file: !62, line: 222, baseType: !470, size: 32, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !559, file: !62, line: 223, baseType: !478, size: 32, offset: 96)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !559, file: !62, line: 224, baseType: !566, size: 64, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !100, line: 46, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !109, line: 88, baseType: !242)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !559, file: !62, line: 225, baseType: !569, size: 128, offset: 192)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !570, line: 13, size: 128, elements: !571)
!570 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!571 = !{!572, !574}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !569, file: !570, line: 14, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !570, line: 8, baseType: !241)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !569, file: !570, line: 15, baseType: !118, size: 64, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !559, file: !62, line: 226, baseType: !569, size: 128, offset: 320)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !559, file: !62, line: 227, baseType: !569, size: 128, offset: 448)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !559, file: !62, line: 234, baseType: !399, size: 64, offset: 576)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !488, file: !62, line: 1882, baseType: !579, size: 64, offset: 896)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!115, !582, !584, !161, !7}
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !421)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !586, line: 22, size: 1152, elements: !587)
!586 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!587 = !{!588, !589, !590, !591, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !585, file: !586, line: 23, baseType: !161, size: 32)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !585, file: !586, line: 24, baseType: !467, size: 16, offset: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !585, file: !586, line: 25, baseType: !7, size: 32, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !585, file: !586, line: 26, baseType: !592, size: 32, offset: 96)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !100, line: 104, baseType: !161)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !585, file: !586, line: 27, baseType: !208, size: 64, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !585, file: !586, line: 28, baseType: !208, size: 64, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !585, file: !586, line: 37, baseType: !208, size: 64, offset: 256)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !585, file: !586, line: 38, baseType: !548, size: 32, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !585, file: !586, line: 39, baseType: !548, size: 32, offset: 352)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !585, file: !586, line: 40, baseType: !470, size: 32, offset: 384)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !585, file: !586, line: 41, baseType: !478, size: 32, offset: 416)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !585, file: !586, line: 42, baseType: !566, size: 64, offset: 448)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !585, file: !586, line: 43, baseType: !569, size: 128, offset: 512)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !585, file: !586, line: 44, baseType: !569, size: 128, offset: 640)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !585, file: !586, line: 45, baseType: !569, size: 128, offset: 768)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !585, file: !586, line: 46, baseType: !569, size: 128, offset: 896)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !585, file: !586, line: 47, baseType: !208, size: 64, offset: 1024)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !585, file: !586, line: 48, baseType: !208, size: 64, offset: 1088)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !488, file: !62, line: 1883, baseType: !608, size: 64, offset: 960)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!611, !429, !113, !107}
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !100, line: 60, baseType: !612)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !109, line: 73, baseType: !613)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !109, line: 15, baseType: !118)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !488, file: !62, line: 1884, baseType: !615, size: 64, offset: 1024)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!115, !463, !618, !208, !208}
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !62, line: 50, flags: DIFlagFwdDecl)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !488, file: !62, line: 1886, baseType: !621, size: 64, offset: 1088)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!115, !463, !624, !115}
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !488, file: !62, line: 1887, baseType: !626, size: 64, offset: 1152)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!115, !463, !429, !399, !7, !467}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !488, file: !62, line: 1890, baseType: !540, size: 64, offset: 1216)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !488, file: !62, line: 1891, baseType: !631, size: 64, offset: 1280)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!115, !463, !515, !115}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !464, file: !62, line: 623, baseType: !635, size: 64, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !62, line: 1416, size: 9472, elements: !637)
!637 = !{!638, !639, !640, !641, !642, !643, !695, !1068, !1156, !1239, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1255, !1259, !1260, !1263, !1266, !1269, !1270, !1271, !1312, !1345, !1346, !1347, !1348, !1349, !1350, !1353, !1357, !1366, !1367, !1369, !1370, !1371, !1430, !1431, !1446, !1447, !1448, !1449, !1450, !1454, !1455, !1458, !1473, !1474, !1475, !1486, !1487, !1488, !1489, !1490, !1491}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !636, file: !62, line: 1417, baseType: !123, size: 128)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !636, file: !62, line: 1418, baseType: !548, size: 32, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !636, file: !62, line: 1419, baseType: !332, size: 8, offset: 160)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !636, file: !62, line: 1420, baseType: !111, size: 64, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !636, file: !62, line: 1421, baseType: !566, size: 64, offset: 256)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !636, file: !62, line: 1422, baseType: !644, size: 64, offset: 320)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !62, line: 2228, size: 576, elements: !646)
!646 = !{!647, !648, !649, !656, !660, !664, !668, !672, !673, !683, !686, !687, !688, !692, !693, !694}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !645, file: !62, line: 2229, baseType: !116, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !645, file: !62, line: 2230, baseType: !115, size: 32, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !645, file: !62, line: 2238, baseType: !650, size: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!115, !653}
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !655, line: 28, flags: DIFlagFwdDecl)
!655 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!656 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !645, file: !62, line: 2239, baseType: !657, size: 64, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !659)
!659 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !62, line: 70, flags: DIFlagFwdDecl)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !645, file: !62, line: 2240, baseType: !661, size: 64, offset: 256)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!429, !644, !115, !116, !98}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !645, file: !62, line: 2242, baseType: !665, size: 64, offset: 320)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{null, !635}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !645, file: !62, line: 2243, baseType: !669, size: 64, offset: 384)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !671, line: 76, flags: DIFlagFwdDecl)
!671 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!672 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !645, file: !62, line: 2244, baseType: !644, size: 64, offset: 448)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !645, file: !62, line: 2245, baseType: !674, size: 64, offset: 512)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !100, line: 182, size: 64, elements: !675)
!675 = !{!676}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !674, file: !100, line: 183, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !100, line: 186, size: 128, elements: !679)
!679 = !{!680, !681}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !678, file: !100, line: 187, baseType: !677, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !678, file: !100, line: 187, baseType: !682, size: 64, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !645, file: !62, line: 2247, baseType: !684, offset: 576)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !685, line: 187, elements: !217)
!685 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!686 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !645, file: !62, line: 2248, baseType: !684, offset: 576)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !645, file: !62, line: 2249, baseType: !684, offset: 576)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !645, file: !62, line: 2250, baseType: !689, offset: 576)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, elements: !690)
!690 = !{!691}
!691 = !DISubrange(count: 3)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !645, file: !62, line: 2252, baseType: !684, offset: 576)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !645, file: !62, line: 2253, baseType: !684, offset: 576)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !645, file: !62, line: 2254, baseType: !684, offset: 576)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !636, file: !62, line: 1423, baseType: !696, size: 64, offset: 384)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !698)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !62, line: 1935, size: 1472, elements: !699)
!699 = !{!700, !704, !708, !709, !713, !719, !723, !724, !725, !729, !733, !734, !735, !736, !742, !747, !748, !754, !755, !756, !757, !1052, !1067}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !698, file: !62, line: 1936, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!463, !635}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !698, file: !62, line: 1937, baseType: !705, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{null, !463}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !698, file: !62, line: 1938, baseType: !705, size: 64, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !698, file: !62, line: 1940, baseType: !710, size: 64, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !463, !115}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !698, file: !62, line: 1941, baseType: !714, size: 64, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!115, !463, !717}
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !62, line: 289, flags: DIFlagFwdDecl)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !698, file: !62, line: 1942, baseType: !720, size: 64, offset: 320)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!115, !463}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !698, file: !62, line: 1943, baseType: !705, size: 64, offset: 384)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !698, file: !62, line: 1944, baseType: !665, size: 64, offset: 448)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !698, file: !62, line: 1945, baseType: !726, size: 64, offset: 512)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!115, !635, !115}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !698, file: !62, line: 1946, baseType: !730, size: 64, offset: 576)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!115, !635}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !698, file: !62, line: 1947, baseType: !730, size: 64, offset: 640)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !698, file: !62, line: 1948, baseType: !730, size: 64, offset: 704)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !698, file: !62, line: 1949, baseType: !730, size: 64, offset: 768)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !698, file: !62, line: 1950, baseType: !737, size: 64, offset: 832)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!115, !429, !740}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !62, line: 57, flags: DIFlagFwdDecl)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !698, file: !62, line: 1951, baseType: !743, size: 64, offset: 896)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!115, !635, !746, !113}
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !698, file: !62, line: 1952, baseType: !665, size: 64, offset: 960)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !698, file: !62, line: 1954, baseType: !749, size: 64, offset: 1024)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!115, !752, !429}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !377, line: 539, flags: DIFlagFwdDecl)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !698, file: !62, line: 1955, baseType: !749, size: 64, offset: 1088)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !698, file: !62, line: 1956, baseType: !749, size: 64, offset: 1152)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !698, file: !62, line: 1957, baseType: !749, size: 64, offset: 1216)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !698, file: !62, line: 1963, baseType: !758, size: 64, offset: 1280)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{!115, !635, !761, !99}
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !359, line: 68, size: 512, align: 128, elements: !763)
!763 = !{!764, !765, !1044, !1051}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !762, file: !359, line: 69, baseType: !111, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, scope: !762, file: !359, line: 77, baseType: !766, size: 320, offset: 64)
!766 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !762, file: !359, line: 77, size: 320, elements: !767)
!767 = !{!768, !976, !981, !1009, !1017, !1023, !1036, !1043}
!768 = !DIDerivedType(tag: DW_TAG_member, scope: !766, file: !359, line: 78, baseType: !769, size: 320)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !766, file: !359, line: 78, size: 320, elements: !770)
!770 = !{!771, !772, !974, !975}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !769, file: !359, line: 84, baseType: !123, size: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !769, file: !359, line: 86, baseType: !773, size: 64, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !62, line: 451, size: 1216, align: 64, elements: !775)
!775 = !{!776, !777, !791, !792, !793, !794, !808, !809, !810, !811, !967, !968, !971, !972, !973}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !774, file: !62, line: 452, baseType: !463, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !774, file: !62, line: 453, baseType: !778, size: 128, offset: 64)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !779, line: 292, size: 128, elements: !780)
!779 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!780 = !{!781, !789, !790}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !778, file: !779, line: 293, baseType: !782)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !276, line: 83, baseType: !783)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !276, line: 71, elements: !784)
!784 = !{!785}
!785 = !DIDerivedType(tag: DW_TAG_member, scope: !783, file: !276, line: 72, baseType: !786)
!786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !783, file: !276, line: 72, elements: !787)
!787 = !{!788}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !786, file: !276, line: 73, baseType: !277)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !778, file: !779, line: 295, baseType: !99, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !778, file: !779, line: 296, baseType: !98, size: 64, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !774, file: !62, line: 454, baseType: !99, size: 32, offset: 192)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !774, file: !62, line: 455, baseType: !174, size: 32, offset: 224)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !774, file: !62, line: 460, baseType: !317, size: 128, offset: 256)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !774, file: !62, line: 461, baseType: !795, size: 256, offset: 384)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !796, line: 35, size: 256, elements: !797)
!796 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!797 = !{!798, !805, !806, !807}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !795, file: !796, line: 36, baseType: !799, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !800, line: 13, baseType: !801)
!800 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !100, line: 175, baseType: !802)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !100, line: 173, size: 64, elements: !803)
!803 = !{!804}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !802, file: !100, line: 174, baseType: !240, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !795, file: !796, line: 42, baseType: !799, size: 64, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !795, file: !796, line: 46, baseType: !275, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !795, file: !796, line: 47, baseType: !123, size: 128, offset: 128)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !774, file: !62, line: 462, baseType: !111, size: 64, offset: 640)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !774, file: !62, line: 463, baseType: !111, size: 64, offset: 704)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !774, file: !62, line: 464, baseType: !111, size: 64, offset: 768)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !774, file: !62, line: 465, baseType: !812, size: 64, offset: 832)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !814)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !62, line: 367, size: 1408, elements: !815)
!815 = !{!816, !820, !824, !828, !832, !836, !842, !848, !852, !857, !861, !865, !869, !931, !935, !941, !942, !943, !947, !952, !956, !963}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !814, file: !62, line: 368, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{!115, !761, !717}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !814, file: !62, line: 369, baseType: !821, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!115, !399, !761}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !814, file: !62, line: 372, baseType: !825, size: 64, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!115, !773, !717}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !814, file: !62, line: 375, baseType: !829, size: 64, offset: 192)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!115, !761}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !814, file: !62, line: 381, baseType: !833, size: 64, offset: 256)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!115, !399, !773, !126, !7}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !814, file: !62, line: 383, baseType: !837, size: 64, offset: 320)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !840}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !62, line: 290, flags: DIFlagFwdDecl)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !814, file: !62, line: 385, baseType: !843, size: 64, offset: 384)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!115, !399, !773, !566, !7, !7, !846, !847}
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !814, file: !62, line: 388, baseType: !849, size: 64, offset: 448)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!115, !399, !773, !566, !7, !7, !761, !98}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !814, file: !62, line: 393, baseType: !853, size: 64, offset: 512)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!856, !773, !856}
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !100, line: 125, baseType: !208)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !814, file: !62, line: 394, baseType: !858, size: 64, offset: 576)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{null, !761, !7, !7}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !814, file: !62, line: 395, baseType: !862, size: 64, offset: 640)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{!115, !761, !99}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !814, file: !62, line: 396, baseType: !866, size: 64, offset: 704)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{null, !761}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !814, file: !62, line: 397, baseType: !870, size: 64, offset: 768)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!611, !873, !895}
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !62, line: 320, size: 384, elements: !875)
!875 = !{!876, !877, !878, !882, !883, !884, !887, !888}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !874, file: !62, line: 321, baseType: !399, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !874, file: !62, line: 326, baseType: !566, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !874, file: !62, line: 327, baseType: !879, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{null, !873, !118, !118}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !874, file: !62, line: 328, baseType: !98, size: 64, offset: 192)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !874, file: !62, line: 329, baseType: !115, size: 32, offset: 256)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !874, file: !62, line: 330, baseType: !885, size: 16, offset: 288)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !162, line: 19, baseType: !886)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !164, line: 24, baseType: !226)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !874, file: !62, line: 331, baseType: !885, size: 16, offset: 304)
!888 = !DIDerivedType(tag: DW_TAG_member, scope: !874, file: !62, line: 332, baseType: !889, size: 64, offset: 320)
!889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !874, file: !62, line: 332, size: 64, elements: !890)
!890 = !{!891, !892}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !889, file: !62, line: 333, baseType: !7, size: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !889, file: !62, line: 334, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !62, line: 334, flags: DIFlagFwdDecl)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !103, line: 29, size: 320, elements: !897)
!897 = !{!898, !899, !900, !901, !922}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !896, file: !103, line: 35, baseType: !7, size: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !896, file: !103, line: 36, baseType: !107, size: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !896, file: !103, line: 37, baseType: !107, size: 64, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_member, scope: !896, file: !103, line: 38, baseType: !902, size: 64, offset: 192)
!902 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !896, file: !103, line: 38, size: 64, elements: !903)
!903 = !{!904, !912, !915, !919}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !902, file: !103, line: 39, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !907)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !908, line: 17, size: 128, elements: !909)
!908 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!909 = !{!910, !911}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !907, file: !908, line: 19, baseType: !98, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !907, file: !908, line: 20, baseType: !108, size: 64, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !902, file: !103, line: 40, baseType: !913, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !902, file: !103, line: 41, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !918)
!918 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !103, line: 41, flags: DIFlagFwdDecl)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !902, file: !103, line: 42, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !103, line: 13, flags: DIFlagFwdDecl)
!922 = !DIDerivedType(tag: DW_TAG_member, scope: !896, file: !103, line: 44, baseType: !923, size: 64, offset: 256)
!923 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !896, file: !103, line: 44, size: 64, elements: !924)
!924 = !{!925, !926}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !923, file: !103, line: 45, baseType: !111, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, scope: !923, file: !103, line: 46, baseType: !927, size: 64)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !923, file: !103, line: 46, size: 64, elements: !928)
!928 = !{!929, !930}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !927, file: !103, line: 47, baseType: !7, size: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "start_head", scope: !927, file: !103, line: 48, baseType: !7, size: 32, offset: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !814, file: !62, line: 402, baseType: !932, size: 64, offset: 832)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!115, !773, !761, !761, !48}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !814, file: !62, line: 404, baseType: !936, size: 64, offset: 896)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!525, !761, !939}
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !940, line: 305, baseType: !7)
!940 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!941 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !814, file: !62, line: 405, baseType: !866, size: 64, offset: 960)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !814, file: !62, line: 406, baseType: !829, size: 64, offset: 1024)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !814, file: !62, line: 407, baseType: !944, size: 64, offset: 1088)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!115, !761, !111, !111}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !814, file: !62, line: 409, baseType: !948, size: 64, offset: 1152)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{null, !761, !951, !951}
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !814, file: !62, line: 410, baseType: !953, size: 64, offset: 1216)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{!115, !773, !761}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !814, file: !62, line: 413, baseType: !957, size: 64, offset: 1280)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{!115, !960, !399, !962}
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !62, line: 61, flags: DIFlagFwdDecl)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !814, file: !62, line: 415, baseType: !964, size: 64, offset: 1344)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{null, !399}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !774, file: !62, line: 466, baseType: !111, size: 64, offset: 896)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !774, file: !62, line: 467, baseType: !969, size: 32, offset: 960)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !970, line: 8, baseType: !161)
!970 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!971 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !774, file: !62, line: 468, baseType: !782, offset: 992)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !774, file: !62, line: 469, baseType: !123, size: 128, offset: 1024)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !774, file: !62, line: 470, baseType: !98, size: 64, offset: 1152)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !769, file: !359, line: 87, baseType: !111, size: 64, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !769, file: !359, line: 94, baseType: !111, size: 64, offset: 256)
!976 = !DIDerivedType(tag: DW_TAG_member, scope: !766, file: !359, line: 96, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !766, file: !359, line: 96, size: 64, elements: !978)
!978 = !{!979}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !977, file: !359, line: 101, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !100, line: 143, baseType: !208)
!981 = !DIDerivedType(tag: DW_TAG_member, scope: !766, file: !359, line: 103, baseType: !982, size: 320)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !766, file: !359, line: 103, size: 320, elements: !983)
!983 = !{!984, !994, !997, !998}
!984 = !DIDerivedType(tag: DW_TAG_member, scope: !982, file: !359, line: 104, baseType: !985, size: 128)
!985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !982, file: !359, line: 104, size: 128, elements: !986)
!986 = !{!987, !988}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !985, file: !359, line: 105, baseType: !123, size: 128)
!988 = !DIDerivedType(tag: DW_TAG_member, scope: !985, file: !359, line: 106, baseType: !989, size: 128)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !985, file: !359, line: 106, size: 128, elements: !990)
!990 = !{!991, !992, !993}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !989, file: !359, line: 107, baseType: !761, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !989, file: !359, line: 109, baseType: !115, size: 32, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !989, file: !359, line: 110, baseType: !115, size: 32, offset: 96)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !982, file: !359, line: 117, baseType: !995, size: 64, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !359, line: 117, flags: DIFlagFwdDecl)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !982, file: !359, line: 119, baseType: !98, size: 64, offset: 192)
!998 = !DIDerivedType(tag: DW_TAG_member, scope: !982, file: !359, line: 120, baseType: !999, size: 64, offset: 256)
!999 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !982, file: !359, line: 120, size: 64, elements: !1000)
!1000 = !{!1001, !1002, !1003}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !999, file: !359, line: 121, baseType: !98, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !999, file: !359, line: 122, baseType: !111, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, scope: !999, file: !359, line: 123, baseType: !1004, size: 32)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !999, file: !359, line: 123, size: 32, elements: !1005)
!1005 = !{!1006, !1007, !1008}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1004, file: !359, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1004, file: !359, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1004, file: !359, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1009 = !DIDerivedType(tag: DW_TAG_member, scope: !766, file: !359, line: 130, baseType: !1010, size: 192)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !766, file: !359, line: 130, size: 192, elements: !1011)
!1011 = !{!1012, !1013, !1014, !1015, !1016}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1010, file: !359, line: 131, baseType: !111, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1010, file: !359, line: 134, baseType: !332, size: 8, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1010, file: !359, line: 135, baseType: !332, size: 8, offset: 72)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1010, file: !359, line: 136, baseType: !174, size: 32, offset: 96)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1010, file: !359, line: 137, baseType: !7, size: 32, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, scope: !766, file: !359, line: 139, baseType: !1018, size: 256)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !766, file: !359, line: 139, size: 256, elements: !1019)
!1019 = !{!1020, !1021, !1022}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1018, file: !359, line: 140, baseType: !111, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1018, file: !359, line: 141, baseType: !174, size: 32, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1018, file: !359, line: 143, baseType: !123, size: 128, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, scope: !766, file: !359, line: 145, baseType: !1024, size: 256)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !766, file: !359, line: 145, size: 256, elements: !1025)
!1025 = !{!1026, !1027, !1029, !1030, !1035}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1024, file: !359, line: 146, baseType: !111, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1024, file: !359, line: 147, baseType: !1028, size: 64, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !377, line: 509, baseType: !761)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1024, file: !359, line: 148, baseType: !111, size: 64, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, scope: !1024, file: !359, line: 149, baseType: !1031, size: 64, offset: 192)
!1031 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1024, file: !359, line: 149, size: 64, elements: !1032)
!1032 = !{!1033, !1034}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1031, file: !359, line: 150, baseType: !357, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1031, file: !359, line: 151, baseType: !174, size: 32)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1024, file: !359, line: 156, baseType: !782, offset: 256)
!1036 = !DIDerivedType(tag: DW_TAG_member, scope: !766, file: !359, line: 159, baseType: !1037, size: 128)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !766, file: !359, line: 159, size: 128, elements: !1038)
!1038 = !{!1039, !1042}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1037, file: !359, line: 161, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !359, line: 161, flags: DIFlagFwdDecl)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1037, file: !359, line: 162, baseType: !98, size: 64, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !766, file: !359, line: 176, baseType: !412, size: 128, align: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, scope: !762, file: !359, line: 179, baseType: !1045, size: 32, offset: 384)
!1045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !762, file: !359, line: 179, size: 32, elements: !1046)
!1046 = !{!1047, !1048, !1049, !1050}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1045, file: !359, line: 184, baseType: !174, size: 32)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1045, file: !359, line: 192, baseType: !7, size: 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1045, file: !359, line: 194, baseType: !7, size: 32)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1045, file: !359, line: 195, baseType: !115, size: 32)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !762, file: !359, line: 199, baseType: !174, size: 32, offset: 416)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !698, file: !62, line: 1964, baseType: !1053, size: 64, offset: 1344)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!118, !635, !1056}
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1058, line: 12, size: 256, elements: !1059)
!1058 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!1059 = !{!1060, !1061, !1062, !1063, !1064}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1057, file: !1058, line: 13, baseType: !99, size: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1057, file: !1058, line: 16, baseType: !115, size: 32, offset: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1057, file: !1058, line: 23, baseType: !111, size: 64, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1057, file: !1058, line: 30, baseType: !111, size: 64, offset: 128)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1057, file: !1058, line: 33, baseType: !1065, size: 64, offset: 192)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !359, line: 27, flags: DIFlagFwdDecl)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !698, file: !62, line: 1966, baseType: !1053, size: 64, offset: 1408)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !636, file: !62, line: 1424, baseType: !1069, size: 64, offset: 448)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1071)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !56, line: 322, size: 704, elements: !1072)
!1072 = !{!1073, !1125, !1129, !1133, !1134, !1135, !1136, !1137, !1142, !1147, !1151}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1071, file: !56, line: 323, baseType: !1074, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!115, !1077}
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !56, line: 294, size: 1600, elements: !1079)
!1079 = !{!1080, !1081, !1082, !1083, !1084, !1091, !1092, !1093, !1094, !1110, !1111, !1112}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1078, file: !56, line: 295, baseType: !678, size: 128)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1078, file: !56, line: 296, baseType: !123, size: 128, offset: 128)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1078, file: !56, line: 297, baseType: !123, size: 128, offset: 256)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1078, file: !56, line: 298, baseType: !123, size: 128, offset: 384)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1078, file: !56, line: 299, baseType: !1085, size: 192, offset: 512)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1086, line: 53, size: 192, elements: !1087)
!1086 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1087 = !{!1088, !1089, !1090}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1085, file: !1086, line: 54, baseType: !799, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1085, file: !1086, line: 55, baseType: !782, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1085, file: !1086, line: 59, baseType: !123, size: 128, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1078, file: !56, line: 300, baseType: !782, offset: 704)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1078, file: !56, line: 301, baseType: !174, size: 32, offset: 704)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1078, file: !56, line: 302, baseType: !635, size: 64, offset: 768)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1078, file: !56, line: 303, baseType: !1095, size: 64, offset: 832)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !56, line: 68, size: 64, elements: !1096)
!1096 = !{!1097, !1109}
!1097 = !DIDerivedType(tag: DW_TAG_member, scope: !1095, file: !56, line: 69, baseType: !1098, size: 32)
!1098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1095, file: !56, line: 69, size: 32, elements: !1099)
!1099 = !{!1100, !1101, !1102}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1098, file: !56, line: 70, baseType: !470, size: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1098, file: !56, line: 71, baseType: !478, size: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1098, file: !56, line: 72, baseType: !1103, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1104, line: 24, baseType: !1105)
!1104 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1104, line: 22, size: 32, elements: !1106)
!1106 = !{!1107}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1105, file: !1104, line: 23, baseType: !1108, size: 32)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1104, line: 20, baseType: !476)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1095, file: !56, line: 74, baseType: !55, size: 32, offset: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1078, file: !56, line: 304, baseType: !566, size: 64, offset: 896)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1078, file: !56, line: 305, baseType: !111, size: 64, offset: 960)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1078, file: !56, line: 306, baseType: !1113, size: 576, offset: 1024)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !56, line: 205, size: 576, elements: !1114)
!1114 = !{!1115, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1113, file: !56, line: 206, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !56, line: 66, baseType: !242)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1113, file: !56, line: 207, baseType: !1116, size: 64, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1113, file: !56, line: 208, baseType: !1116, size: 64, offset: 128)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1113, file: !56, line: 209, baseType: !1116, size: 64, offset: 192)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1113, file: !56, line: 210, baseType: !1116, size: 64, offset: 256)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1113, file: !56, line: 211, baseType: !1116, size: 64, offset: 320)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1113, file: !56, line: 212, baseType: !1116, size: 64, offset: 384)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1113, file: !56, line: 213, baseType: !573, size: 64, offset: 448)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1113, file: !56, line: 214, baseType: !573, size: 64, offset: 512)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1071, file: !56, line: 324, baseType: !1126, size: 64, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!1077, !635, !115}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1071, file: !56, line: 325, baseType: !1130, size: 64, offset: 128)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{null, !1077}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1071, file: !56, line: 326, baseType: !1074, size: 64, offset: 192)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1071, file: !56, line: 327, baseType: !1074, size: 64, offset: 256)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1071, file: !56, line: 328, baseType: !1074, size: 64, offset: 320)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1071, file: !56, line: 329, baseType: !726, size: 64, offset: 384)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1071, file: !56, line: 332, baseType: !1138, size: 64, offset: 448)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!1141, !463}
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1071, file: !56, line: 333, baseType: !1143, size: 64, offset: 512)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!115, !463, !1146}
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1071, file: !56, line: 335, baseType: !1148, size: 64, offset: 576)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!115, !463, !1141}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1071, file: !56, line: 337, baseType: !1152, size: 64, offset: 640)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!115, !635, !1155}
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !636, file: !62, line: 1425, baseType: !1157, size: 64, offset: 512)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1159)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !56, line: 428, size: 704, elements: !1160)
!1160 = !{!1161, !1165, !1166, !1170, !1171, !1172, !1187, !1210, !1214, !1215, !1238}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1159, file: !56, line: 429, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!115, !635, !115, !115, !582}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1159, file: !56, line: 430, baseType: !726, size: 64, offset: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1159, file: !56, line: 431, baseType: !1167, size: 64, offset: 128)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!115, !635, !7}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1159, file: !56, line: 432, baseType: !1167, size: 64, offset: 192)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1159, file: !56, line: 433, baseType: !726, size: 64, offset: 256)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1159, file: !56, line: 434, baseType: !1173, size: 64, offset: 320)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!115, !635, !115, !1176}
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !56, line: 415, size: 256, elements: !1178)
!1178 = !{!1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1177, file: !56, line: 416, baseType: !115, size: 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1177, file: !56, line: 417, baseType: !7, size: 32, offset: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1177, file: !56, line: 418, baseType: !7, size: 32, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1177, file: !56, line: 420, baseType: !7, size: 32, offset: 96)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1177, file: !56, line: 421, baseType: !7, size: 32, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1177, file: !56, line: 422, baseType: !7, size: 32, offset: 160)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1177, file: !56, line: 423, baseType: !7, size: 32, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1177, file: !56, line: 424, baseType: !7, size: 32, offset: 224)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1159, file: !56, line: 435, baseType: !1188, size: 64, offset: 384)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!115, !635, !1095, !1191}
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !56, line: 343, size: 960, elements: !1193)
!1193 = !{!1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1192, file: !56, line: 344, baseType: !115, size: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1192, file: !56, line: 345, baseType: !208, size: 64, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1192, file: !56, line: 346, baseType: !208, size: 64, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1192, file: !56, line: 347, baseType: !208, size: 64, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1192, file: !56, line: 348, baseType: !208, size: 64, offset: 256)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1192, file: !56, line: 349, baseType: !208, size: 64, offset: 320)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1192, file: !56, line: 350, baseType: !208, size: 64, offset: 384)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1192, file: !56, line: 351, baseType: !240, size: 64, offset: 448)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1192, file: !56, line: 353, baseType: !240, size: 64, offset: 512)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1192, file: !56, line: 354, baseType: !115, size: 32, offset: 576)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1192, file: !56, line: 355, baseType: !115, size: 32, offset: 608)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1192, file: !56, line: 356, baseType: !208, size: 64, offset: 640)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1192, file: !56, line: 357, baseType: !208, size: 64, offset: 704)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1192, file: !56, line: 358, baseType: !208, size: 64, offset: 768)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1192, file: !56, line: 359, baseType: !240, size: 64, offset: 832)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1192, file: !56, line: 360, baseType: !115, size: 32, offset: 896)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1159, file: !56, line: 436, baseType: !1211, size: 64, offset: 448)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!115, !635, !1155, !1191}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1159, file: !56, line: 438, baseType: !1188, size: 64, offset: 512)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1159, file: !56, line: 439, baseType: !1216, size: 64, offset: 576)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!115, !635, !1219}
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !56, line: 409, size: 1408, elements: !1221)
!1221 = !{!1222, !1223}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1220, file: !56, line: 410, baseType: !7, size: 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1220, file: !56, line: 411, baseType: !1224, size: 1344, offset: 64)
!1224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1225, size: 1344, elements: !690)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !56, line: 395, size: 448, elements: !1226)
!1226 = !{!1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1237}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1225, file: !56, line: 396, baseType: !7, size: 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1225, file: !56, line: 397, baseType: !7, size: 32, offset: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1225, file: !56, line: 399, baseType: !7, size: 32, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1225, file: !56, line: 400, baseType: !7, size: 32, offset: 96)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1225, file: !56, line: 401, baseType: !7, size: 32, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1225, file: !56, line: 402, baseType: !7, size: 32, offset: 160)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1225, file: !56, line: 403, baseType: !7, size: 32, offset: 192)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1225, file: !56, line: 404, baseType: !210, size: 64, offset: 256)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1225, file: !56, line: 405, baseType: !1236, size: 64, offset: 320)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !100, line: 126, baseType: !208)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1225, file: !56, line: 406, baseType: !1236, size: 64, offset: 384)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1159, file: !56, line: 440, baseType: !1167, size: 64, offset: 640)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !636, file: !62, line: 1426, baseType: !1240, size: 64, offset: 576)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1242)
!1242 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !62, line: 49, flags: DIFlagFwdDecl)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !636, file: !62, line: 1427, baseType: !111, size: 64, offset: 640)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !636, file: !62, line: 1428, baseType: !111, size: 64, offset: 704)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !636, file: !62, line: 1429, baseType: !111, size: 64, offset: 768)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !636, file: !62, line: 1430, baseType: !429, size: 64, offset: 832)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !636, file: !62, line: 1431, baseType: !795, size: 256, offset: 896)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !636, file: !62, line: 1432, baseType: !115, size: 32, offset: 1152)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !636, file: !62, line: 1433, baseType: !174, size: 32, offset: 1184)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !636, file: !62, line: 1437, baseType: !1251, size: 64, offset: 1216)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1254)
!1254 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !62, line: 1437, flags: DIFlagFwdDecl)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !636, file: !62, line: 1449, baseType: !1256, size: 64, offset: 1280)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !440, line: 34, size: 64, elements: !1257)
!1257 = !{!1258}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1256, file: !440, line: 35, baseType: !443, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !636, file: !62, line: 1450, baseType: !123, size: 128, offset: 1344)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !636, file: !62, line: 1451, baseType: !1261, size: 64, offset: 1472)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !62, line: 699, flags: DIFlagFwdDecl)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !636, file: !62, line: 1452, baseType: !1264, size: 64, offset: 1536)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !153, line: 40, flags: DIFlagFwdDecl)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !636, file: !62, line: 1453, baseType: !1267, size: 64, offset: 1600)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !62, line: 1453, flags: DIFlagFwdDecl)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !636, file: !62, line: 1454, baseType: !678, size: 128, offset: 1664)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !636, file: !62, line: 1455, baseType: !7, size: 32, offset: 1792)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !636, file: !62, line: 1456, baseType: !1272, size: 2432, offset: 1856)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !56, line: 518, size: 2432, elements: !1273)
!1273 = !{!1274, !1275, !1276, !1278, !1310}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1272, file: !56, line: 519, baseType: !7, size: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1272, file: !56, line: 520, baseType: !795, size: 256, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1272, file: !56, line: 521, baseType: !1277, size: 192, offset: 320)
!1277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !463, size: 192, elements: !690)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1272, file: !56, line: 522, baseType: !1279, size: 1728, offset: 512)
!1279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1280, size: 1728, elements: !690)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !56, line: 222, size: 576, elements: !1281)
!1281 = !{!1282, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1280, file: !56, line: 223, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !56, line: 443, size: 256, elements: !1285)
!1285 = !{!1286, !1287, !1300, !1301}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1284, file: !56, line: 444, baseType: !115, size: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1284, file: !56, line: 445, baseType: !1288, size: 64, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1290)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !56, line: 310, size: 512, elements: !1291)
!1291 = !{!1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1290, file: !56, line: 311, baseType: !726, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1290, file: !56, line: 312, baseType: !726, size: 64, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1290, file: !56, line: 313, baseType: !726, size: 64, offset: 128)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1290, file: !56, line: 314, baseType: !726, size: 64, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1290, file: !56, line: 315, baseType: !1074, size: 64, offset: 256)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1290, file: !56, line: 316, baseType: !1074, size: 64, offset: 320)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1290, file: !56, line: 317, baseType: !1074, size: 64, offset: 384)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1290, file: !56, line: 318, baseType: !1152, size: 64, offset: 448)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1284, file: !56, line: 446, baseType: !669, size: 64, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1284, file: !56, line: 447, baseType: !1283, size: 64, offset: 192)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1280, file: !56, line: 224, baseType: !115, size: 32, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1280, file: !56, line: 226, baseType: !123, size: 128, offset: 128)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1280, file: !56, line: 227, baseType: !111, size: 64, offset: 256)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1280, file: !56, line: 228, baseType: !7, size: 32, offset: 320)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1280, file: !56, line: 229, baseType: !7, size: 32, offset: 352)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1280, file: !56, line: 230, baseType: !1116, size: 64, offset: 384)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1280, file: !56, line: 231, baseType: !1116, size: 64, offset: 448)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1280, file: !56, line: 232, baseType: !98, size: 64, offset: 512)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1272, file: !56, line: 523, baseType: !1311, size: 192, offset: 2240)
!1311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1288, size: 192, elements: !690)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !636, file: !62, line: 1458, baseType: !1313, size: 2112, offset: 4288)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !62, line: 1410, size: 2112, elements: !1314)
!1314 = !{!1315, !1316, !1323}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1313, file: !62, line: 1411, baseType: !115, size: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !1313, file: !62, line: 1412, baseType: !1317, size: 128, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1318, line: 40, baseType: !1319)
!1318 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1318, line: 36, size: 128, elements: !1320)
!1320 = !{!1321, !1322}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1319, file: !1318, line: 37, baseType: !782)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1319, file: !1318, line: 38, baseType: !123, size: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1313, file: !62, line: 1413, baseType: !1324, size: 1920, offset: 192)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1325, size: 1920, elements: !690)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1326, line: 12, size: 640, elements: !1327)
!1326 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1327 = !{!1328, !1336, !1338, !1343, !1344}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1325, file: !1326, line: 13, baseType: !1329, size: 320)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1330, line: 17, size: 320, elements: !1331)
!1330 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!1331 = !{!1332, !1333, !1334, !1335}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1329, file: !1330, line: 18, baseType: !115, size: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1329, file: !1330, line: 19, baseType: !115, size: 32, offset: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1329, file: !1330, line: 20, baseType: !1317, size: 128, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1329, file: !1330, line: 22, baseType: !412, size: 128, align: 64, offset: 192)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1325, file: !1326, line: 14, baseType: !1337, size: 64, offset: 320)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1325, file: !1326, line: 15, baseType: !1339, size: 64, offset: 384)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1340, line: 16, size: 64, elements: !1341)
!1340 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!1341 = !{!1342}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1339, file: !1340, line: 17, baseType: !151, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1325, file: !1326, line: 16, baseType: !1317, size: 128, offset: 448)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1325, file: !1326, line: 17, baseType: !174, size: 32, offset: 576)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !636, file: !62, line: 1465, baseType: !98, size: 64, offset: 6400)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !636, file: !62, line: 1468, baseType: !161, size: 32, offset: 6464)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !636, file: !62, line: 1470, baseType: !573, size: 64, offset: 6528)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !636, file: !62, line: 1471, baseType: !573, size: 64, offset: 6592)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !636, file: !62, line: 1473, baseType: !163, size: 32, offset: 6656)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !636, file: !62, line: 1474, baseType: !1351, size: 64, offset: 6720)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !62, line: 603, flags: DIFlagFwdDecl)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !636, file: !62, line: 1477, baseType: !1354, size: 256, offset: 6784)
!1354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 256, elements: !1355)
!1355 = !{!1356}
!1356 = !DISubrange(count: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !636, file: !62, line: 1478, baseType: !1358, size: 128, offset: 7040)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1359, line: 18, baseType: !1360)
!1359 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1359, line: 16, size: 128, elements: !1361)
!1361 = !{!1362}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1360, file: !1359, line: 17, baseType: !1363, size: 128)
!1363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 128, elements: !1364)
!1364 = !{!1365}
!1365 = !DISubrange(count: 16)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !636, file: !62, line: 1480, baseType: !7, size: 32, offset: 7168)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !636, file: !62, line: 1481, baseType: !1368, size: 32, offset: 7200)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !100, line: 150, baseType: !7)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !636, file: !62, line: 1487, baseType: !1085, size: 192, offset: 7232)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !636, file: !62, line: 1493, baseType: !116, size: 64, offset: 7424)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !636, file: !62, line: 1495, baseType: !1372, size: 64, offset: 7488)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1374)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !427, line: 135, size: 1024, align: 512, elements: !1375)
!1375 = !{!1376, !1380, !1381, !1388, !1394, !1398, !1402, !1406, !1407, !1411, !1415, !1420, !1424}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1374, file: !427, line: 136, baseType: !1377, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!115, !429, !7}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1374, file: !427, line: 137, baseType: !1377, size: 64, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1374, file: !427, line: 138, baseType: !1382, size: 64, offset: 128)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!115, !1385, !1387}
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1374, file: !427, line: 139, baseType: !1389, size: 64, offset: 192)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!115, !1385, !7, !116, !1392}
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1374, file: !427, line: 141, baseType: !1395, size: 64, offset: 256)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!115, !1385}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1374, file: !427, line: 142, baseType: !1399, size: 64, offset: 320)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!115, !429}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1374, file: !427, line: 143, baseType: !1403, size: 64, offset: 384)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{null, !429}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1374, file: !427, line: 144, baseType: !1403, size: 64, offset: 448)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1374, file: !427, line: 145, baseType: !1408, size: 64, offset: 512)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{null, !429, !463}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1374, file: !427, line: 146, baseType: !1412, size: 64, offset: 576)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!113, !429, !113, !115}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1374, file: !427, line: 147, baseType: !1416, size: 64, offset: 640)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!425, !1419}
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1374, file: !427, line: 148, baseType: !1421, size: 64, offset: 704)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!115, !582, !525}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1374, file: !427, line: 149, baseType: !1425, size: 64, offset: 768)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!429, !429, !1428}
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !464)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !636, file: !62, line: 1500, baseType: !115, size: 32, offset: 7552)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !636, file: !62, line: 1502, baseType: !1432, size: 448, offset: 7616)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1058, line: 60, size: 448, elements: !1433)
!1433 = !{!1434, !1439, !1440, !1441, !1442, !1443, !1444}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1432, file: !1058, line: 61, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!111, !1438, !1056}
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1432, file: !1058, line: 63, baseType: !1435, size: 64, offset: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1432, file: !1058, line: 66, baseType: !118, size: 64, offset: 128)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1432, file: !1058, line: 67, baseType: !115, size: 32, offset: 192)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1432, file: !1058, line: 68, baseType: !7, size: 32, offset: 224)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1432, file: !1058, line: 71, baseType: !123, size: 128, offset: 256)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1432, file: !1058, line: 77, baseType: !1445, size: 64, offset: 384)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !636, file: !62, line: 1505, baseType: !799, size: 64, offset: 8064)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !636, file: !62, line: 1508, baseType: !799, size: 64, offset: 8128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !636, file: !62, line: 1511, baseType: !115, size: 32, offset: 8192)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !636, file: !62, line: 1514, baseType: !969, size: 32, offset: 8224)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !636, file: !62, line: 1517, baseType: !1451, size: 64, offset: 8256)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1453, line: 18, flags: DIFlagFwdDecl)
!1453 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !636, file: !62, line: 1518, baseType: !674, size: 64, offset: 8320)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !636, file: !62, line: 1525, baseType: !1456, size: 64, offset: 8384)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !359, line: 516, flags: DIFlagFwdDecl)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !636, file: !62, line: 1532, baseType: !1459, size: 64, offset: 8448)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1460, line: 52, size: 64, elements: !1461)
!1460 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!1461 = !{!1462}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1459, file: !1460, line: 53, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1460, line: 40, size: 256, elements: !1465)
!1465 = !{!1466, !1467, !1472}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1464, file: !1460, line: 42, baseType: !782)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1464, file: !1460, line: 44, baseType: !1468, size: 192)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1460, line: 28, size: 192, elements: !1469)
!1469 = !{!1470, !1471}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1468, file: !1460, line: 29, baseType: !123, size: 128)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1468, file: !1460, line: 31, baseType: !118, size: 64, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1464, file: !1460, line: 49, baseType: !118, size: 64, offset: 192)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !636, file: !62, line: 1533, baseType: !1459, size: 64, offset: 8512)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !636, file: !62, line: 1534, baseType: !412, size: 128, align: 64, offset: 8576)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !636, file: !62, line: 1535, baseType: !1476, size: 256, offset: 8704)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1453, line: 102, size: 256, elements: !1477)
!1477 = !{!1478, !1479, !1480}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1476, file: !1453, line: 103, baseType: !799, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1476, file: !1453, line: 104, baseType: !123, size: 128, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1476, file: !1453, line: 105, baseType: !1481, size: 64, offset: 192)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1453, line: 21, baseType: !1482)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{null, !1485}
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !636, file: !62, line: 1537, baseType: !1085, size: 192, offset: 8960)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !636, file: !62, line: 1542, baseType: !115, size: 32, offset: 9152)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !636, file: !62, line: 1545, baseType: !782, offset: 9184)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !636, file: !62, line: 1546, baseType: !123, size: 128, offset: 9216)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !636, file: !62, line: 1548, baseType: !782, offset: 9344)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !636, file: !62, line: 1549, baseType: !123, size: 128, offset: 9344)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !464, file: !62, line: 624, baseType: !773, size: 64, offset: 256)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !464, file: !62, line: 631, baseType: !111, size: 64, offset: 320)
!1494 = !DIDerivedType(tag: DW_TAG_member, scope: !464, file: !62, line: 639, baseType: !1495, size: 32, offset: 384)
!1495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !464, file: !62, line: 639, size: 32, elements: !1496)
!1496 = !{!1497, !1499}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !1495, file: !62, line: 640, baseType: !1498, size: 32)
!1498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !1495, file: !62, line: 641, baseType: !7, size: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !464, file: !62, line: 643, baseType: !548, size: 32, offset: 416)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !464, file: !62, line: 644, baseType: !566, size: 64, offset: 448)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !464, file: !62, line: 645, baseType: !569, size: 128, offset: 512)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !464, file: !62, line: 646, baseType: !569, size: 128, offset: 640)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !464, file: !62, line: 647, baseType: !569, size: 128, offset: 768)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !464, file: !62, line: 648, baseType: !782, offset: 896)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !464, file: !62, line: 649, baseType: !226, size: 16, offset: 896)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !464, file: !62, line: 650, baseType: !330, size: 8, offset: 912)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !464, file: !62, line: 651, baseType: !330, size: 8, offset: 920)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !464, file: !62, line: 652, baseType: !1236, size: 64, offset: 960)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !464, file: !62, line: 659, baseType: !111, size: 64, offset: 1024)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !464, file: !62, line: 660, baseType: !795, size: 256, offset: 1088)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !464, file: !62, line: 662, baseType: !111, size: 64, offset: 1344)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !464, file: !62, line: 663, baseType: !111, size: 64, offset: 1408)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !464, file: !62, line: 665, baseType: !678, size: 128, offset: 1472)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !464, file: !62, line: 666, baseType: !123, size: 128, offset: 1600)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !464, file: !62, line: 675, baseType: !123, size: 128, offset: 1728)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !464, file: !62, line: 676, baseType: !123, size: 128, offset: 1856)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !464, file: !62, line: 677, baseType: !123, size: 128, offset: 1984)
!1519 = !DIDerivedType(tag: DW_TAG_member, scope: !464, file: !62, line: 678, baseType: !1520, size: 128, offset: 2112)
!1520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !464, file: !62, line: 678, size: 128, elements: !1521)
!1521 = !{!1522, !1523}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !1520, file: !62, line: 679, baseType: !674, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !1520, file: !62, line: 680, baseType: !412, size: 128, align: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !464, file: !62, line: 682, baseType: !801, size: 64, offset: 2240)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !464, file: !62, line: 683, baseType: !801, size: 64, offset: 2304)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !464, file: !62, line: 684, baseType: !174, size: 32, offset: 2368)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !464, file: !62, line: 685, baseType: !174, size: 32, offset: 2400)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !464, file: !62, line: 686, baseType: !174, size: 32, offset: 2432)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !464, file: !62, line: 688, baseType: !174, size: 32, offset: 2464)
!1530 = !DIDerivedType(tag: DW_TAG_member, scope: !464, file: !62, line: 690, baseType: !1531, size: 64, offset: 2496)
!1531 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !464, file: !62, line: 690, size: 64, elements: !1532)
!1532 = !{!1533, !1759}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !1531, file: !62, line: 691, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1536)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !62, line: 1822, size: 2048, elements: !1537)
!1537 = !{!1538, !1539, !1543, !1548, !1552, !1553, !1554, !1558, !1571, !1572, !1580, !1584, !1585, !1589, !1590, !1594, !1599, !1600, !1604, !1608, !1716, !1720, !1724, !1728, !1729, !1733, !1737, !1742, !1746, !1750, !1754, !1758}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1536, file: !62, line: 1823, baseType: !669, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1536, file: !62, line: 1824, baseType: !1540, size: 64, offset: 64)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!566, !399, !566, !115}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1536, file: !62, line: 1825, baseType: !1544, size: 64, offset: 128)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!611, !399, !113, !107, !1547}
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1536, file: !62, line: 1826, baseType: !1549, size: 64, offset: 192)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!611, !399, !116, !107, !1547}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1536, file: !62, line: 1827, baseType: !870, size: 64, offset: 256)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1536, file: !62, line: 1828, baseType: !870, size: 64, offset: 320)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1536, file: !62, line: 1829, baseType: !1555, size: 64, offset: 384)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!115, !873, !525}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1536, file: !62, line: 1830, baseType: !1559, size: 64, offset: 448)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!115, !399, !1562}
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !62, line: 1776, size: 128, elements: !1564)
!1564 = !{!1565, !1570}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1563, file: !62, line: 1777, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !62, line: 1773, baseType: !1567)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!115, !1562, !116, !115, !566, !208, !7}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1563, file: !62, line: 1778, baseType: !566, size: 64, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1536, file: !62, line: 1831, baseType: !1559, size: 64, offset: 512)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1536, file: !62, line: 1832, baseType: !1573, size: 64, offset: 576)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!1576, !399, !1578}
!1576 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1577, line: 52, baseType: !7)
!1577 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !655, line: 27, flags: DIFlagFwdDecl)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1536, file: !62, line: 1833, baseType: !1581, size: 64, offset: 640)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!118, !399, !7, !111}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1536, file: !62, line: 1834, baseType: !1581, size: 64, offset: 704)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1536, file: !62, line: 1835, baseType: !1586, size: 64, offset: 768)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!115, !399, !365}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1536, file: !62, line: 1836, baseType: !111, size: 64, offset: 832)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1536, file: !62, line: 1837, baseType: !1591, size: 64, offset: 896)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!115, !463, !399}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1536, file: !62, line: 1838, baseType: !1595, size: 64, offset: 960)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!115, !399, !1598}
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !62, line: 1007, baseType: !98)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1536, file: !62, line: 1839, baseType: !1591, size: 64, offset: 1024)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1536, file: !62, line: 1840, baseType: !1601, size: 64, offset: 1088)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!115, !399, !566, !566, !115}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1536, file: !62, line: 1841, baseType: !1605, size: 64, offset: 1152)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!115, !115, !399, !115}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1536, file: !62, line: 1842, baseType: !1609, size: 64, offset: 1216)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!115, !399, !115, !1612}
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !62, line: 1062, size: 1664, elements: !1614)
!1614 = !{!1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1646, !1647, !1648, !1661, !1692}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1613, file: !62, line: 1063, baseType: !1612, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1613, file: !62, line: 1064, baseType: !123, size: 128, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1613, file: !62, line: 1065, baseType: !678, size: 128, offset: 192)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1613, file: !62, line: 1066, baseType: !123, size: 128, offset: 320)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1613, file: !62, line: 1069, baseType: !123, size: 128, offset: 448)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1613, file: !62, line: 1072, baseType: !1598, size: 64, offset: 576)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1613, file: !62, line: 1073, baseType: !7, size: 32, offset: 640)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1613, file: !62, line: 1074, baseType: !332, size: 8, offset: 672)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1613, file: !62, line: 1075, baseType: !7, size: 32, offset: 704)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1613, file: !62, line: 1076, baseType: !115, size: 32, offset: 736)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1613, file: !62, line: 1077, baseType: !1317, size: 128, offset: 768)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1613, file: !62, line: 1078, baseType: !399, size: 64, offset: 896)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1613, file: !62, line: 1079, baseType: !566, size: 64, offset: 960)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1613, file: !62, line: 1080, baseType: !566, size: 64, offset: 1024)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1613, file: !62, line: 1082, baseType: !1630, size: 64, offset: 1088)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !62, line: 1314, size: 320, elements: !1632)
!1632 = !{!1633, !1641, !1642, !1643, !1644, !1645}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1631, file: !62, line: 1315, baseType: !1634)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1635, line: 20, baseType: !1636)
!1635 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1635, line: 11, elements: !1637)
!1637 = !{!1638}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1636, file: !1635, line: 12, baseType: !1639)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !281, line: 33, baseType: !1640)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !281, line: 31, elements: !217)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1631, file: !62, line: 1316, baseType: !115, size: 32)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1631, file: !62, line: 1317, baseType: !115, size: 32, offset: 32)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1631, file: !62, line: 1318, baseType: !1630, size: 64, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1631, file: !62, line: 1319, baseType: !399, size: 64, offset: 128)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1631, file: !62, line: 1320, baseType: !412, size: 128, align: 64, offset: 192)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1613, file: !62, line: 1084, baseType: !111, size: 64, offset: 1152)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1613, file: !62, line: 1085, baseType: !111, size: 64, offset: 1216)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1613, file: !62, line: 1087, baseType: !1649, size: 64, offset: 1280)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1651)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !62, line: 1011, size: 128, elements: !1652)
!1652 = !{!1653, !1657}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1651, file: !62, line: 1012, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{null, !1612, !1612}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1651, file: !62, line: 1013, baseType: !1658, size: 64, offset: 64)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{null, !1612}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1613, file: !62, line: 1088, baseType: !1662, size: 64, offset: 1344)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1664)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !62, line: 1016, size: 512, elements: !1665)
!1665 = !{!1666, !1670, !1674, !1675, !1679, !1683, !1687, !1691}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1664, file: !62, line: 1017, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!1598, !1598}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1664, file: !62, line: 1018, baseType: !1671, size: 64, offset: 64)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{null, !1598}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1664, file: !62, line: 1019, baseType: !1658, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1664, file: !62, line: 1020, baseType: !1676, size: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!115, !1612, !115}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1664, file: !62, line: 1021, baseType: !1680, size: 64, offset: 256)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!525, !1612}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1664, file: !62, line: 1022, baseType: !1684, size: 64, offset: 320)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!115, !1612, !115, !126}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1664, file: !62, line: 1023, baseType: !1688, size: 64, offset: 384)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{null, !1612, !847}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1664, file: !62, line: 1024, baseType: !1680, size: 64, offset: 448)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1613, file: !62, line: 1097, baseType: !1693, size: 256, offset: 1408)
!1693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1613, file: !62, line: 1089, size: 256, elements: !1694)
!1694 = !{!1695, !1704, !1710}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1693, file: !62, line: 1090, baseType: !1696, size: 256)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1697, line: 10, size: 256, elements: !1698)
!1697 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!1698 = !{!1699, !1700, !1703}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1696, file: !1697, line: 11, baseType: !161, size: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1696, file: !1697, line: 12, baseType: !1701, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1697, line: 5, flags: DIFlagFwdDecl)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1696, file: !1697, line: 13, baseType: !123, size: 128, offset: 128)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1693, file: !62, line: 1091, baseType: !1705, size: 64)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1697, line: 17, size: 64, elements: !1706)
!1706 = !{!1707}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1705, file: !1697, line: 18, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1697, line: 16, flags: DIFlagFwdDecl)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1693, file: !62, line: 1096, baseType: !1711, size: 192)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1693, file: !62, line: 1092, size: 192, elements: !1712)
!1712 = !{!1713, !1714, !1715}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1711, file: !62, line: 1093, baseType: !123, size: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1711, file: !62, line: 1094, baseType: !115, size: 32, offset: 128)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1711, file: !62, line: 1095, baseType: !7, size: 32, offset: 160)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1536, file: !62, line: 1843, baseType: !1717, size: 64, offset: 1280)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!611, !399, !761, !115, !107, !1547, !115}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1536, file: !62, line: 1844, baseType: !1721, size: 64, offset: 1344)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!111, !399, !111, !111, !111, !111}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1536, file: !62, line: 1845, baseType: !1725, size: 64, offset: 1408)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!115, !115}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1536, file: !62, line: 1846, baseType: !1609, size: 64, offset: 1472)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1536, file: !62, line: 1847, baseType: !1730, size: 64, offset: 1536)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!611, !920, !399, !1547, !107, !7}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1536, file: !62, line: 1848, baseType: !1734, size: 64, offset: 1600)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!611, !399, !1547, !920, !107, !7}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1536, file: !62, line: 1849, baseType: !1738, size: 64, offset: 1664)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!115, !399, !118, !1741, !847}
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1536, file: !62, line: 1850, baseType: !1743, size: 64, offset: 1728)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!118, !399, !115, !566, !566}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1536, file: !62, line: 1852, baseType: !1747, size: 64, offset: 1792)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{null, !752, !399}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1536, file: !62, line: 1856, baseType: !1751, size: 64, offset: 1856)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!611, !399, !566, !399, !566, !107, !7}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1536, file: !62, line: 1858, baseType: !1755, size: 64, offset: 1920)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!566, !399, !566, !399, !566, !566, !7}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1536, file: !62, line: 1861, baseType: !1601, size: 64, offset: 1984)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1531, file: !62, line: 692, baseType: !705, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !464, file: !62, line: 694, baseType: !1761, size: 64, offset: 2560)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !62, line: 1100, size: 384, elements: !1763)
!1763 = !{!1764, !1765, !1766, !1767}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !1762, file: !62, line: 1101, baseType: !782)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !1762, file: !62, line: 1102, baseType: !123, size: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !1762, file: !62, line: 1103, baseType: !123, size: 128, offset: 128)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !1762, file: !62, line: 1104, baseType: !123, size: 128, offset: 256)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !464, file: !62, line: 695, baseType: !774, size: 1216, align: 64, offset: 2624)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !464, file: !62, line: 696, baseType: !123, size: 128, offset: 3840)
!1770 = !DIDerivedType(tag: DW_TAG_member, scope: !464, file: !62, line: 697, baseType: !1771, size: 64, offset: 3968)
!1771 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !464, file: !62, line: 697, size: 64, elements: !1772)
!1772 = !{!1773, !1774, !1775, !1778, !1779}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !1771, file: !62, line: 698, baseType: !920, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !1771, file: !62, line: 699, baseType: !1261, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !1771, file: !62, line: 700, baseType: !1776, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !62, line: 700, flags: DIFlagFwdDecl)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !1771, file: !62, line: 701, baseType: !113, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !1771, file: !62, line: 702, baseType: !7, size: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !464, file: !62, line: 705, baseType: !163, size: 32, offset: 4032)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !464, file: !62, line: 708, baseType: !163, size: 32, offset: 4064)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !464, file: !62, line: 709, baseType: !1351, size: 64, offset: 4096)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !464, file: !62, line: 720, baseType: !98, size: 64, offset: 4160)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !430, file: !427, line: 98, baseType: !1785, size: 256, offset: 448)
!1785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 256, elements: !1355)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !430, file: !427, line: 101, baseType: !1787, size: 32, offset: 704)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !1788, line: 25, size: 32, elements: !1789)
!1788 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!1789 = !{!1790}
!1790 = !DIDerivedType(tag: DW_TAG_member, scope: !1787, file: !1788, line: 26, baseType: !1791, size: 32)
!1791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1787, file: !1788, line: 26, size: 32, elements: !1792)
!1792 = !{!1793}
!1793 = !DIDerivedType(tag: DW_TAG_member, scope: !1791, file: !1788, line: 30, baseType: !1794, size: 32)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1791, file: !1788, line: 30, size: 32, elements: !1795)
!1795 = !{!1796, !1797}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1794, file: !1788, line: 31, baseType: !782)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1794, file: !1788, line: 32, baseType: !115, size: 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !430, file: !427, line: 102, baseType: !1372, size: 64, offset: 768)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !430, file: !427, line: 103, baseType: !635, size: 64, offset: 832)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !430, file: !427, line: 104, baseType: !111, size: 64, offset: 896)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !430, file: !427, line: 105, baseType: !98, size: 64, offset: 960)
!1802 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !427, line: 107, baseType: !1803, size: 128, offset: 1024)
!1803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !427, line: 107, size: 128, elements: !1804)
!1804 = !{!1805, !1806}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !1803, file: !427, line: 108, baseType: !123, size: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !1803, file: !427, line: 109, baseType: !1807, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !430, file: !427, line: 111, baseType: !123, size: 128, offset: 1152)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !430, file: !427, line: 112, baseType: !123, size: 128, offset: 1280)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !430, file: !427, line: 120, baseType: !1811, size: 128, offset: 1408)
!1811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !427, line: 116, size: 128, elements: !1812)
!1812 = !{!1813, !1814, !1815}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !1811, file: !427, line: 117, baseType: !678, size: 128)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !1811, file: !427, line: 118, baseType: !439, size: 128)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !1811, file: !427, line: 119, baseType: !412, size: 128, align: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !400, file: !62, line: 922, baseType: !463, size: 64, offset: 256)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !400, file: !62, line: 923, baseType: !1534, size: 64, offset: 320)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !400, file: !62, line: 929, baseType: !782, offset: 384)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !400, file: !62, line: 930, baseType: !61, size: 32, offset: 384)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !400, file: !62, line: 931, baseType: !799, size: 64, offset: 448)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !400, file: !62, line: 932, baseType: !7, size: 32, offset: 512)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !400, file: !62, line: 933, baseType: !1368, size: 32, offset: 544)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !400, file: !62, line: 934, baseType: !1085, size: 192, offset: 576)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !400, file: !62, line: 935, baseType: !566, size: 64, offset: 768)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !400, file: !62, line: 936, baseType: !1826, size: 192, offset: 832)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !62, line: 885, size: 192, elements: !1827)
!1827 = !{!1828, !1829, !1851, !1852, !1853, !1854}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1826, file: !62, line: 886, baseType: !1634)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1826, file: !62, line: 887, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !71, line: 59, size: 768, elements: !1832)
!1832 = !{!1833, !1834, !1835, !1836, !1840, !1841, !1842, !1843}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1831, file: !71, line: 61, baseType: !169, size: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1831, file: !71, line: 62, baseType: !7, size: 32, offset: 32)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1831, file: !71, line: 63, baseType: !782, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1831, file: !71, line: 65, baseType: !1837, size: 256, offset: 64)
!1837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 256, elements: !1838)
!1838 = !{!1839}
!1839 = !DISubrange(count: 4)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1831, file: !71, line: 66, baseType: !674, size: 64, offset: 320)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1831, file: !71, line: 68, baseType: !1317, size: 128, offset: 384)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1831, file: !71, line: 69, baseType: !412, size: 128, align: 64, offset: 512)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1831, file: !71, line: 70, baseType: !1844, size: 128, offset: 640)
!1844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1845, size: 128, elements: !350)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !71, line: 54, size: 128, elements: !1846)
!1846 = !{!1847, !1848}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1845, file: !71, line: 55, baseType: !115, size: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1845, file: !71, line: 56, baseType: !1849, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !71, line: 56, flags: DIFlagFwdDecl)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1826, file: !62, line: 888, baseType: !70, size: 32, offset: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1826, file: !62, line: 889, baseType: !470, size: 32, offset: 96)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1826, file: !62, line: 889, baseType: !470, size: 32, offset: 128)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1826, file: !62, line: 890, baseType: !115, size: 32, offset: 160)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !400, file: !62, line: 937, baseType: !1856, size: 64, offset: 1024)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1858)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1859, line: 111, size: 1280, elements: !1860)
!1859 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1860 = !{!1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1880, !1881, !1882, !1883, !1884, !1885, !1995, !1996, !1997, !1998, !2024, !2025, !2035}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1858, file: !1859, line: 112, baseType: !174, size: 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1858, file: !1859, line: 120, baseType: !470, size: 32, offset: 32)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1858, file: !1859, line: 121, baseType: !478, size: 32, offset: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1858, file: !1859, line: 122, baseType: !470, size: 32, offset: 96)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1858, file: !1859, line: 123, baseType: !478, size: 32, offset: 128)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1858, file: !1859, line: 124, baseType: !470, size: 32, offset: 160)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1858, file: !1859, line: 125, baseType: !478, size: 32, offset: 192)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1858, file: !1859, line: 126, baseType: !470, size: 32, offset: 224)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1858, file: !1859, line: 127, baseType: !478, size: 32, offset: 256)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1858, file: !1859, line: 128, baseType: !7, size: 32, offset: 288)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1858, file: !1859, line: 129, baseType: !1872, size: 64, offset: 320)
!1872 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1873, line: 26, baseType: !1874)
!1873 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1873, line: 24, size: 64, elements: !1875)
!1875 = !{!1876}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1874, file: !1873, line: 25, baseType: !1877, size: 64)
!1877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 64, elements: !1878)
!1878 = !{!1879}
!1879 = !DISubrange(count: 2)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1858, file: !1859, line: 130, baseType: !1872, size: 64, offset: 384)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1858, file: !1859, line: 131, baseType: !1872, size: 64, offset: 448)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1858, file: !1859, line: 132, baseType: !1872, size: 64, offset: 512)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1858, file: !1859, line: 133, baseType: !1872, size: 64, offset: 576)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1858, file: !1859, line: 135, baseType: !332, size: 8, offset: 640)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1858, file: !1859, line: 137, baseType: !1886, size: 64, offset: 704)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1888, line: 189, size: 1664, elements: !1889)
!1888 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1889 = !{!1890, !1891, !1896, !1901, !1902, !1905, !1906, !1911, !1912, !1913, !1914, !1916, !1917, !1918, !1920, !1921, !1959, !1980}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1887, file: !1888, line: 190, baseType: !169, size: 32)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1887, file: !1888, line: 191, baseType: !1892, size: 32, offset: 32)
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1888, line: 28, baseType: !1893)
!1893 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !100, line: 98, baseType: !1894)
!1894 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !162, line: 20, baseType: !1895)
!1895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !164, line: 26, baseType: !115)
!1896 = !DIDerivedType(tag: DW_TAG_member, scope: !1887, file: !1888, line: 192, baseType: !1897, size: 192, offset: 64)
!1897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1887, file: !1888, line: 192, size: 192, elements: !1898)
!1898 = !{!1899, !1900}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1897, file: !1888, line: 193, baseType: !123, size: 128)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1897, file: !1888, line: 194, baseType: !198, size: 192, align: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1887, file: !1888, line: 199, baseType: !795, size: 256, offset: 256)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1887, file: !1888, line: 200, baseType: !1903, size: 64, offset: 512)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1888, line: 200, flags: DIFlagFwdDecl)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1887, file: !1888, line: 201, baseType: !98, size: 64, offset: 576)
!1906 = !DIDerivedType(tag: DW_TAG_member, scope: !1887, file: !1888, line: 202, baseType: !1907, size: 64, offset: 640)
!1907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1887, file: !1888, line: 202, size: 64, elements: !1908)
!1908 = !{!1909, !1910}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1907, file: !1888, line: 203, baseType: !573, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1907, file: !1888, line: 204, baseType: !573, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1887, file: !1888, line: 206, baseType: !573, size: 64, offset: 704)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1887, file: !1888, line: 207, baseType: !470, size: 32, offset: 768)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1887, file: !1888, line: 208, baseType: !478, size: 32, offset: 800)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1887, file: !1888, line: 209, baseType: !1915, size: 32, offset: 832)
!1915 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1888, line: 31, baseType: !592)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1887, file: !1888, line: 210, baseType: !226, size: 16, offset: 864)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1887, file: !1888, line: 211, baseType: !226, size: 16, offset: 880)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1887, file: !1888, line: 215, baseType: !1919, size: 16, offset: 896)
!1919 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1887, file: !1888, line: 222, baseType: !111, size: 64, offset: 960)
!1921 = !DIDerivedType(tag: DW_TAG_member, scope: !1887, file: !1888, line: 239, baseType: !1922, size: 320, offset: 1024)
!1922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1887, file: !1888, line: 239, size: 320, elements: !1923)
!1923 = !{!1924, !1951}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1922, file: !1888, line: 240, baseType: !1925, size: 320)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1888, line: 108, size: 320, elements: !1926)
!1926 = !{!1927, !1928, !1940, !1943, !1950}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1925, file: !1888, line: 110, baseType: !111, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, scope: !1925, file: !1888, line: 111, baseType: !1929, size: 64, offset: 64)
!1929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1925, file: !1888, line: 111, size: 64, elements: !1930)
!1930 = !{!1931, !1939}
!1931 = !DIDerivedType(tag: DW_TAG_member, scope: !1929, file: !1888, line: 112, baseType: !1932, size: 64)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1929, file: !1888, line: 112, size: 64, elements: !1933)
!1933 = !{!1934, !1935}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1932, file: !1888, line: 114, baseType: !885, size: 16)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1932, file: !1888, line: 115, baseType: !1936, size: 48, offset: 16)
!1936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 48, elements: !1937)
!1937 = !{!1938}
!1938 = !DISubrange(count: 6)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1929, file: !1888, line: 121, baseType: !111, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1925, file: !1888, line: 123, baseType: !1941, size: 64, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1888, line: 96, flags: DIFlagFwdDecl)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1925, file: !1888, line: 124, baseType: !1944, size: 64, offset: 192)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1888, line: 102, size: 192, elements: !1946)
!1946 = !{!1947, !1948, !1949}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1945, file: !1888, line: 103, baseType: !412, size: 128, align: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1945, file: !1888, line: 104, baseType: !169, size: 32, offset: 128)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1945, file: !1888, line: 105, baseType: !525, size: 8, offset: 160)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1925, file: !1888, line: 125, baseType: !116, size: 64, offset: 256)
!1951 = !DIDerivedType(tag: DW_TAG_member, scope: !1922, file: !1888, line: 241, baseType: !1952, size: 320)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1922, file: !1888, line: 241, size: 320, elements: !1953)
!1953 = !{!1954, !1955, !1956, !1957, !1958}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1952, file: !1888, line: 242, baseType: !111, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1952, file: !1888, line: 243, baseType: !111, size: 64, offset: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1952, file: !1888, line: 244, baseType: !1941, size: 64, offset: 128)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1952, file: !1888, line: 245, baseType: !1944, size: 64, offset: 192)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1952, file: !1888, line: 246, baseType: !113, size: 64, offset: 256)
!1959 = !DIDerivedType(tag: DW_TAG_member, scope: !1887, file: !1888, line: 254, baseType: !1960, size: 256, offset: 1344)
!1960 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1887, file: !1888, line: 254, size: 256, elements: !1961)
!1961 = !{!1962, !1968}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1960, file: !1888, line: 255, baseType: !1963, size: 256)
!1963 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1888, line: 128, size: 256, elements: !1964)
!1964 = !{!1965, !1966}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1963, file: !1888, line: 129, baseType: !98, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1963, file: !1888, line: 130, baseType: !1967, size: 256)
!1967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 256, elements: !1838)
!1968 = !DIDerivedType(tag: DW_TAG_member, scope: !1960, file: !1888, line: 256, baseType: !1969, size: 256)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1960, file: !1888, line: 256, size: 256, elements: !1970)
!1970 = !{!1971, !1972}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1969, file: !1888, line: 258, baseType: !123, size: 128)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1969, file: !1888, line: 259, baseType: !1973, size: 128, offset: 128)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1974, line: 22, size: 128, elements: !1975)
!1974 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1975 = !{!1976, !1979}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1973, file: !1974, line: 23, baseType: !1977, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1974, line: 23, flags: DIFlagFwdDecl)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1973, file: !1974, line: 24, baseType: !111, size: 64, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1887, file: !1888, line: 274, baseType: !1981, size: 64, offset: 1600)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1888, line: 170, size: 192, elements: !1983)
!1983 = !{!1984, !1993, !1994}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1982, file: !1888, line: 171, baseType: !1985, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1888, line: 165, baseType: !1986)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!115, !1886, !1989, !1991, !1886}
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1942)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1963)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1982, file: !1888, line: 172, baseType: !1886, size: 64, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1982, file: !1888, line: 173, baseType: !1941, size: 64, offset: 128)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1858, file: !1859, line: 138, baseType: !1886, size: 64, offset: 768)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1858, file: !1859, line: 139, baseType: !1886, size: 64, offset: 832)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1858, file: !1859, line: 140, baseType: !1886, size: 64, offset: 896)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1858, file: !1859, line: 145, baseType: !1999, size: 64, offset: 960)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2001, line: 13, size: 896, elements: !2002)
!2001 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!2002 = !{!2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2000, file: !2001, line: 14, baseType: !169, size: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2000, file: !2001, line: 15, baseType: !174, size: 32, offset: 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2000, file: !2001, line: 16, baseType: !174, size: 32, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2000, file: !2001, line: 21, baseType: !799, size: 64, offset: 128)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2000, file: !2001, line: 27, baseType: !111, size: 64, offset: 192)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2000, file: !2001, line: 28, baseType: !111, size: 64, offset: 256)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2000, file: !2001, line: 29, baseType: !799, size: 64, offset: 320)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2000, file: !2001, line: 32, baseType: !678, size: 128, offset: 384)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2000, file: !2001, line: 33, baseType: !470, size: 32, offset: 512)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2000, file: !2001, line: 37, baseType: !799, size: 64, offset: 576)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2000, file: !2001, line: 44, baseType: !2014, size: 256, offset: 640)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2015, line: 15, size: 256, elements: !2016)
!2015 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2016 = !{!2017, !2018, !2019, !2020, !2021, !2022, !2023}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2014, file: !2015, line: 16, baseType: !275)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2014, file: !2015, line: 18, baseType: !115, size: 32)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2014, file: !2015, line: 19, baseType: !115, size: 32, offset: 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2014, file: !2015, line: 20, baseType: !115, size: 32, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2014, file: !2015, line: 21, baseType: !115, size: 32, offset: 96)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2014, file: !2015, line: 22, baseType: !111, size: 64, offset: 128)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2014, file: !2015, line: 23, baseType: !111, size: 64, offset: 192)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1858, file: !1859, line: 146, baseType: !1456, size: 64, offset: 1024)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1858, file: !1859, line: 147, baseType: !2026, size: 64, offset: 1088)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1859, line: 25, size: 64, elements: !2028)
!2028 = !{!2029, !2030, !2031}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2027, file: !1859, line: 26, baseType: !174, size: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2027, file: !1859, line: 27, baseType: !115, size: 32, offset: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2027, file: !1859, line: 28, baseType: !2032, offset: 64)
!2032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, elements: !2033)
!2033 = !{!2034}
!2034 = !DISubrange(count: 0)
!2035 = !DIDerivedType(tag: DW_TAG_member, scope: !1858, file: !1859, line: 149, baseType: !2036, size: 128, offset: 1152)
!2036 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1858, file: !1859, line: 149, size: 128, elements: !2037)
!2037 = !{!2038, !2039}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2036, file: !1859, line: 150, baseType: !115, size: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2036, file: !1859, line: 151, baseType: !412, size: 128, align: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !400, file: !62, line: 938, baseType: !2041, size: 256, offset: 1088)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !62, line: 896, size: 256, elements: !2042)
!2042 = !{!2043, !2044, !2045, !2046, !2047, !2048}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2041, file: !62, line: 897, baseType: !111, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2041, file: !62, line: 898, baseType: !7, size: 32, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2041, file: !62, line: 899, baseType: !7, size: 32, offset: 96)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2041, file: !62, line: 902, baseType: !7, size: 32, offset: 128)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2041, file: !62, line: 903, baseType: !7, size: 32, offset: 160)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2041, file: !62, line: 904, baseType: !566, size: 64, offset: 192)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !400, file: !62, line: 940, baseType: !208, size: 64, offset: 1344)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !400, file: !62, line: 945, baseType: !98, size: 64, offset: 1408)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !400, file: !62, line: 949, baseType: !123, size: 128, offset: 1472)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !400, file: !62, line: 950, baseType: !123, size: 128, offset: 1600)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !400, file: !62, line: 952, baseType: !773, size: 64, offset: 1728)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !400, file: !62, line: 953, baseType: !969, size: 32, offset: 1792)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !400, file: !62, line: 954, baseType: !969, size: 32, offset: 1824)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !366, file: !359, line: 362, baseType: !98, size: 64, offset: 1344)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !366, file: !359, line: 365, baseType: !799, size: 64, offset: 1408)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !366, file: !359, line: 373, baseType: !2059, offset: 1472)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !359, line: 296, elements: !217)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !362, file: !359, line: 391, baseType: !320, size: 64, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !362, file: !359, line: 392, baseType: !208, size: 64, offset: 128)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !362, file: !359, line: 394, baseType: !1721, size: 64, offset: 192)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !362, file: !359, line: 398, baseType: !111, size: 64, offset: 256)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !362, file: !359, line: 399, baseType: !111, size: 64, offset: 320)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !362, file: !359, line: 405, baseType: !111, size: 64, offset: 384)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !362, file: !359, line: 406, baseType: !111, size: 64, offset: 448)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !362, file: !359, line: 407, baseType: !2068, size: 64, offset: 512)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !377, line: 286, baseType: !2070)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !377, line: 286, size: 64, elements: !2071)
!2071 = !{!2072}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2070, file: !377, line: 286, baseType: !2073, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !382, line: 18, baseType: !111)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !362, file: !359, line: 416, baseType: !174, size: 32, offset: 576)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !362, file: !359, line: 428, baseType: !174, size: 32, offset: 608)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !362, file: !359, line: 437, baseType: !174, size: 32, offset: 640)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !362, file: !359, line: 447, baseType: !174, size: 32, offset: 672)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !362, file: !359, line: 450, baseType: !799, size: 64, offset: 704)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !362, file: !359, line: 452, baseType: !115, size: 32, offset: 768)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !362, file: !359, line: 454, baseType: !782, offset: 800)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !362, file: !359, line: 457, baseType: !795, size: 256, offset: 832)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !362, file: !359, line: 459, baseType: !123, size: 128, offset: 1088)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !362, file: !359, line: 466, baseType: !111, size: 64, offset: 1216)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !362, file: !359, line: 467, baseType: !111, size: 64, offset: 1280)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !362, file: !359, line: 469, baseType: !111, size: 64, offset: 1344)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !362, file: !359, line: 470, baseType: !111, size: 64, offset: 1408)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !362, file: !359, line: 471, baseType: !801, size: 64, offset: 1472)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !362, file: !359, line: 472, baseType: !111, size: 64, offset: 1536)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !362, file: !359, line: 473, baseType: !111, size: 64, offset: 1600)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !362, file: !359, line: 474, baseType: !111, size: 64, offset: 1664)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !362, file: !359, line: 475, baseType: !111, size: 64, offset: 1728)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !362, file: !359, line: 477, baseType: !782, offset: 1792)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !362, file: !359, line: 478, baseType: !111, size: 64, offset: 1792)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !362, file: !359, line: 478, baseType: !111, size: 64, offset: 1856)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !362, file: !359, line: 478, baseType: !111, size: 64, offset: 1920)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !362, file: !359, line: 478, baseType: !111, size: 64, offset: 1984)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !362, file: !359, line: 479, baseType: !111, size: 64, offset: 2048)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !362, file: !359, line: 479, baseType: !111, size: 64, offset: 2112)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !362, file: !359, line: 479, baseType: !111, size: 64, offset: 2176)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !362, file: !359, line: 480, baseType: !111, size: 64, offset: 2240)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !362, file: !359, line: 480, baseType: !111, size: 64, offset: 2304)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !362, file: !359, line: 480, baseType: !111, size: 64, offset: 2368)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !362, file: !359, line: 480, baseType: !111, size: 64, offset: 2432)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !362, file: !359, line: 482, baseType: !2105, size: 2816, offset: 2496)
!2105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 2816, elements: !2106)
!2106 = !{!2107}
!2107 = !DISubrange(count: 44)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !362, file: !359, line: 488, baseType: !2109, size: 256, offset: 5312)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2110, line: 60, size: 256, elements: !2111)
!2110 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2111 = !{!2112}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2109, file: !2110, line: 61, baseType: !2113, size: 256)
!2113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !799, size: 256, elements: !1838)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !362, file: !359, line: 490, baseType: !2115, size: 64, offset: 5568)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !359, line: 490, flags: DIFlagFwdDecl)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !362, file: !359, line: 493, baseType: !2118, size: 896, offset: 5632)
!2118 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2119, line: 53, baseType: !2120)
!2119 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2119, line: 13, size: 896, elements: !2121)
!2121 = !{!2122, !2123, !2124, !2125, !2128, !2129, !2130, !2131, !2135, !2136, !2137}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2120, file: !2119, line: 18, baseType: !208, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2120, file: !2119, line: 28, baseType: !801, size: 64, offset: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2120, file: !2119, line: 31, baseType: !795, size: 256, offset: 128)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2120, file: !2119, line: 32, baseType: !2126, size: 64, offset: 384)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2119, line: 32, flags: DIFlagFwdDecl)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2120, file: !2119, line: 37, baseType: !226, size: 16, offset: 448)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2120, file: !2119, line: 40, baseType: !1085, size: 192, offset: 512)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2120, file: !2119, line: 41, baseType: !98, size: 64, offset: 704)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2120, file: !2119, line: 42, baseType: !2132, size: 64, offset: 768)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2134)
!2134 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2119, line: 42, flags: DIFlagFwdDecl)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2120, file: !2119, line: 44, baseType: !174, size: 32, offset: 832)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2120, file: !2119, line: 50, baseType: !885, size: 16, offset: 864)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2120, file: !2119, line: 51, baseType: !2138, size: 16, offset: 880)
!2138 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !162, line: 18, baseType: !2139)
!2139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !164, line: 23, baseType: !1919)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !362, file: !359, line: 495, baseType: !111, size: 64, offset: 6528)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !362, file: !359, line: 497, baseType: !2142, size: 64, offset: 6592)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !359, line: 381, size: 384, elements: !2144)
!2144 = !{!2145, !2146, !2152}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2143, file: !359, line: 382, baseType: !174, size: 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2143, file: !359, line: 383, baseType: !2147, size: 128, offset: 64)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !359, line: 376, size: 128, elements: !2148)
!2148 = !{!2149, !2150}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2147, file: !359, line: 377, baseType: !151, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2147, file: !359, line: 378, baseType: !2151, size: 64, offset: 64)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2143, file: !359, line: 384, baseType: !2153, size: 192, offset: 192)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2154, line: 26, size: 192, elements: !2155)
!2154 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2155 = !{!2156, !2157}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2153, file: !2154, line: 27, baseType: !7, size: 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2153, file: !2154, line: 28, baseType: !2158, size: 128, offset: 64)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2159, line: 43, size: 128, elements: !2160)
!2159 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2160 = !{!2161, !2162}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2158, file: !2159, line: 44, baseType: !275)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2158, file: !2159, line: 45, baseType: !123, size: 128)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !362, file: !359, line: 500, baseType: !782, offset: 6656)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !362, file: !359, line: 501, baseType: !2165, size: 64, offset: 6656)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !359, line: 387, flags: DIFlagFwdDecl)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !362, file: !359, line: 516, baseType: !1456, size: 64, offset: 6720)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !362, file: !359, line: 519, baseType: !399, size: 64, offset: 6784)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !362, file: !359, line: 521, baseType: !2170, size: 64, offset: 6848)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !359, line: 521, flags: DIFlagFwdDecl)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !362, file: !359, line: 545, baseType: !174, size: 32, offset: 6912)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !362, file: !359, line: 548, baseType: !525, size: 8, offset: 6944)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !362, file: !359, line: 550, baseType: !2175, offset: 6952)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2176, line: 142, elements: !217)
!2176 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !362, file: !359, line: 554, baseType: !1476, size: 256, offset: 6976)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !362, file: !359, line: 557, baseType: !161, size: 32, offset: 7232)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !358, file: !359, line: 565, baseType: !2180, offset: 7296)
!2180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, elements: !144)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !152, file: !153, line: 758, baseType: !357, size: 64, offset: 3968)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !152, file: !153, line: 761, baseType: !2183, size: 320, offset: 4032)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2110, line: 34, size: 320, elements: !2184)
!2184 = !{!2185, !2186}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2183, file: !2110, line: 35, baseType: !208, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2183, file: !2110, line: 36, baseType: !2187, size: 256, offset: 64)
!2187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 256, elements: !1838)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !152, file: !153, line: 766, baseType: !115, size: 32, offset: 4352)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !152, file: !153, line: 767, baseType: !115, size: 32, offset: 4384)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !152, file: !153, line: 768, baseType: !115, size: 32, offset: 4416)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !152, file: !153, line: 770, baseType: !115, size: 32, offset: 4448)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !152, file: !153, line: 772, baseType: !111, size: 64, offset: 4480)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !152, file: !153, line: 775, baseType: !7, size: 32, offset: 4544)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !152, file: !153, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !152, file: !153, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !152, file: !153, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !152, file: !153, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !152, file: !153, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !152, file: !153, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !152, file: !153, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !152, file: !153, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !152, file: !153, line: 831, baseType: !111, size: 64, offset: 4672)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !152, file: !153, line: 833, baseType: !2204, size: 384, offset: 4736)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !79, line: 25, size: 384, elements: !2205)
!2205 = !{!2206, !2211}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2204, file: !79, line: 26, baseType: !2207, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!118, !2210}
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, scope: !2204, file: !79, line: 27, baseType: !2212, size: 320, offset: 64)
!2212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2204, file: !79, line: 27, size: 320, elements: !2213)
!2213 = !{!2214, !2224, !2249}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2212, file: !79, line: 36, baseType: !2215, size: 320)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2212, file: !79, line: 29, size: 320, elements: !2216)
!2216 = !{!2217, !2219, !2220, !2221, !2222, !2223}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2215, file: !79, line: 30, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2215, file: !79, line: 31, baseType: !161, size: 32, offset: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2215, file: !79, line: 32, baseType: !161, size: 32, offset: 96)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2215, file: !79, line: 33, baseType: !161, size: 32, offset: 128)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2215, file: !79, line: 34, baseType: !208, size: 64, offset: 192)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2215, file: !79, line: 35, baseType: !2218, size: 64, offset: 256)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2212, file: !79, line: 46, baseType: !2225, size: 192)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2212, file: !79, line: 38, size: 192, elements: !2226)
!2226 = !{!2227, !2228, !2229, !2248}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2225, file: !79, line: 39, baseType: !300, size: 32)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2225, file: !79, line: 40, baseType: !78, size: 32, offset: 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, scope: !2225, file: !79, line: 41, baseType: !2230, size: 64, offset: 64)
!2230 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2225, file: !79, line: 41, size: 64, elements: !2231)
!2231 = !{!2232, !2240}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2230, file: !79, line: 42, baseType: !2233, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2235, line: 7, size: 128, elements: !2236)
!2235 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2236 = !{!2237, !2239}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2234, file: !2235, line: 8, baseType: !2238, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !109, line: 93, baseType: !242)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2234, file: !2235, line: 9, baseType: !242, size: 64, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2230, file: !79, line: 43, baseType: !2241, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2243, line: 7, size: 64, elements: !2244)
!2243 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2244 = !{!2245, !2247}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2242, file: !2243, line: 8, baseType: !2246, size: 32)
!2246 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2243, line: 5, baseType: !1894)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2242, file: !2243, line: 9, baseType: !1894, size: 32, offset: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2225, file: !79, line: 45, baseType: !208, size: 64, offset: 128)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2212, file: !79, line: 54, baseType: !2250, size: 256)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2212, file: !79, line: 48, size: 256, elements: !2251)
!2251 = !{!2252, !2255, !2256, !2257, !2258}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2250, file: !79, line: 49, baseType: !2253, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !79, line: 14, flags: DIFlagFwdDecl)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2250, file: !79, line: 50, baseType: !115, size: 32, offset: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2250, file: !79, line: 51, baseType: !115, size: 32, offset: 96)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2250, file: !79, line: 52, baseType: !111, size: 64, offset: 128)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2250, file: !79, line: 53, baseType: !111, size: 64, offset: 192)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !152, file: !153, line: 835, baseType: !2260, size: 32, offset: 5120)
!2260 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !100, line: 22, baseType: !2261)
!2261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !109, line: 28, baseType: !115)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !152, file: !153, line: 836, baseType: !2260, size: 32, offset: 5152)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !152, file: !153, line: 840, baseType: !111, size: 64, offset: 5184)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !152, file: !153, line: 849, baseType: !151, size: 64, offset: 5248)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !152, file: !153, line: 852, baseType: !151, size: 64, offset: 5312)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !152, file: !153, line: 857, baseType: !123, size: 128, offset: 5376)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !152, file: !153, line: 858, baseType: !123, size: 128, offset: 5504)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !152, file: !153, line: 859, baseType: !151, size: 64, offset: 5632)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !152, file: !153, line: 867, baseType: !123, size: 128, offset: 5696)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !152, file: !153, line: 868, baseType: !123, size: 128, offset: 5824)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !152, file: !153, line: 871, baseType: !1830, size: 64, offset: 5952)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !152, file: !153, line: 872, baseType: !2273, size: 512, offset: 6016)
!2273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !678, size: 512, elements: !1838)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !152, file: !153, line: 873, baseType: !123, size: 128, offset: 6528)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !152, file: !153, line: 874, baseType: !123, size: 128, offset: 6656)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !152, file: !153, line: 876, baseType: !2277, size: 64, offset: 6784)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !152, file: !153, line: 879, baseType: !746, size: 64, offset: 6848)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !152, file: !153, line: 882, baseType: !746, size: 64, offset: 6912)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !152, file: !153, line: 884, baseType: !208, size: 64, offset: 6976)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !152, file: !153, line: 885, baseType: !208, size: 64, offset: 7040)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !152, file: !153, line: 890, baseType: !208, size: 64, offset: 7104)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !152, file: !153, line: 891, baseType: !2284, size: 128, offset: 7168)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !153, line: 242, size: 128, elements: !2285)
!2285 = !{!2286, !2287, !2288}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2284, file: !153, line: 244, baseType: !208, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2284, file: !153, line: 245, baseType: !208, size: 64, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2284, file: !153, line: 246, baseType: !275, offset: 128)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !152, file: !153, line: 900, baseType: !111, size: 64, offset: 7296)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !152, file: !153, line: 901, baseType: !111, size: 64, offset: 7360)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !152, file: !153, line: 904, baseType: !208, size: 64, offset: 7424)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !152, file: !153, line: 907, baseType: !208, size: 64, offset: 7488)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !152, file: !153, line: 910, baseType: !111, size: 64, offset: 7552)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !152, file: !153, line: 911, baseType: !111, size: 64, offset: 7616)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !152, file: !153, line: 914, baseType: !2296, size: 640, offset: 7680)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2297, line: 123, size: 640, elements: !2298)
!2297 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2298 = !{!2299, !2305, !2306}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2296, file: !2297, line: 124, baseType: !2300, size: 576)
!2300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2301, size: 576, elements: !690)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2297, line: 108, size: 192, elements: !2302)
!2302 = !{!2303, !2304}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2301, file: !2297, line: 109, baseType: !208, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2301, file: !2297, line: 110, baseType: !314, size: 128, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2296, file: !2297, line: 125, baseType: !7, size: 32, offset: 576)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2296, file: !2297, line: 126, baseType: !7, size: 32, offset: 608)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !152, file: !153, line: 917, baseType: !2308, size: 192, offset: 8320)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2297, line: 134, size: 192, elements: !2309)
!2309 = !{!2310, !2311}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2308, file: !2297, line: 135, baseType: !412, size: 128, align: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2308, file: !2297, line: 136, baseType: !7, size: 32, offset: 128)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !152, file: !153, line: 923, baseType: !1856, size: 64, offset: 8512)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !152, file: !153, line: 926, baseType: !1856, size: 64, offset: 8576)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !152, file: !153, line: 929, baseType: !1856, size: 64, offset: 8640)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !152, file: !153, line: 933, baseType: !1886, size: 64, offset: 8704)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !152, file: !153, line: 943, baseType: !2317, size: 128, offset: 8768)
!2317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 128, elements: !1364)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !152, file: !153, line: 945, baseType: !2319, size: 64, offset: 8896)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !153, line: 49, flags: DIFlagFwdDecl)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !152, file: !153, line: 956, baseType: !2322, size: 64, offset: 8960)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !153, line: 45, flags: DIFlagFwdDecl)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !152, file: !153, line: 959, baseType: !2325, size: 64, offset: 9024)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !153, line: 959, flags: DIFlagFwdDecl)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !152, file: !153, line: 962, baseType: !2328, size: 64, offset: 9088)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !153, line: 66, flags: DIFlagFwdDecl)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !152, file: !153, line: 966, baseType: !2331, size: 64, offset: 9152)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !153, line: 50, flags: DIFlagFwdDecl)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !152, file: !153, line: 969, baseType: !2334, size: 64, offset: 9216)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2336, line: 82, size: 7296, elements: !2337)
!2336 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2337 = !{!2338, !2339, !2340, !2341, !2342, !2343, !2344, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2373, !2382, !2383, !2385, !2386, !2387, !2390, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2420, !2421, !2428, !2429, !2430, !2431, !2432, !2433}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2335, file: !2336, line: 83, baseType: !169, size: 32)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2335, file: !2336, line: 84, baseType: !174, size: 32, offset: 32)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2335, file: !2336, line: 85, baseType: !115, size: 32, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2335, file: !2336, line: 86, baseType: !123, size: 128, offset: 128)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2335, file: !2336, line: 88, baseType: !1317, size: 128, offset: 256)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2335, file: !2336, line: 91, baseType: !151, size: 64, offset: 384)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2335, file: !2336, line: 94, baseType: !2345, size: 192, offset: 448)
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2346, line: 30, size: 192, elements: !2347)
!2346 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2347 = !{!2348, !2349}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2345, file: !2346, line: 31, baseType: !123, size: 128)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2345, file: !2346, line: 32, baseType: !2350, size: 64, offset: 128)
!2350 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2351, line: 25, baseType: !2352)
!2351 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2351, line: 23, size: 64, elements: !2353)
!2353 = !{!2354}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2352, file: !2351, line: 24, baseType: !349, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2335, file: !2336, line: 97, baseType: !674, size: 64, offset: 640)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2335, file: !2336, line: 100, baseType: !115, size: 32, offset: 704)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2335, file: !2336, line: 106, baseType: !115, size: 32, offset: 736)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2335, file: !2336, line: 107, baseType: !151, size: 64, offset: 768)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2335, file: !2336, line: 110, baseType: !115, size: 32, offset: 832)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2335, file: !2336, line: 111, baseType: !7, size: 32, offset: 864)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2335, file: !2336, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2335, file: !2336, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2335, file: !2336, line: 128, baseType: !115, size: 32, offset: 928)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2335, file: !2336, line: 129, baseType: !123, size: 128, offset: 960)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2335, file: !2336, line: 132, baseType: !250, size: 512, offset: 1088)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2335, file: !2336, line: 133, baseType: !258, size: 64, offset: 1600)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2335, file: !2336, line: 140, baseType: !2368, size: 256, offset: 1664)
!2368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2369, size: 256, elements: !1878)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2336, line: 38, size: 128, elements: !2370)
!2370 = !{!2371, !2372}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2369, file: !2336, line: 39, baseType: !208, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2369, file: !2336, line: 40, baseType: !208, size: 64, offset: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2335, file: !2336, line: 146, baseType: !2374, size: 192, offset: 1920)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2336, line: 66, size: 192, elements: !2375)
!2375 = !{!2376}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2374, file: !2336, line: 67, baseType: !2377, size: 192)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2336, line: 47, size: 192, elements: !2378)
!2378 = !{!2379, !2380, !2381}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2377, file: !2336, line: 48, baseType: !801, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2377, file: !2336, line: 49, baseType: !801, size: 64, offset: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2377, file: !2336, line: 50, baseType: !801, size: 64, offset: 128)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2335, file: !2336, line: 150, baseType: !2296, size: 640, offset: 2112)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2335, file: !2336, line: 153, baseType: !2384, size: 256, offset: 2752)
!2384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1830, size: 256, elements: !1838)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2335, file: !2336, line: 159, baseType: !1830, size: 64, offset: 3008)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2335, file: !2336, line: 162, baseType: !115, size: 32, offset: 3072)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2335, file: !2336, line: 164, baseType: !2388, size: 64, offset: 3136)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2336, line: 164, flags: DIFlagFwdDecl)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2335, file: !2336, line: 175, baseType: !2391, size: 32, offset: 3200)
!2391 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !304, line: 805, baseType: !2392)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !304, line: 798, size: 32, elements: !2393)
!2393 = !{!2394, !2395}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2392, file: !304, line: 803, baseType: !434, size: 32)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2392, file: !304, line: 804, baseType: !782, offset: 32)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2335, file: !2336, line: 176, baseType: !208, size: 64, offset: 3264)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2335, file: !2336, line: 176, baseType: !208, size: 64, offset: 3328)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2335, file: !2336, line: 176, baseType: !208, size: 64, offset: 3392)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2335, file: !2336, line: 176, baseType: !208, size: 64, offset: 3456)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2335, file: !2336, line: 177, baseType: !208, size: 64, offset: 3520)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2335, file: !2336, line: 178, baseType: !208, size: 64, offset: 3584)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2335, file: !2336, line: 179, baseType: !2284, size: 128, offset: 3648)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2335, file: !2336, line: 180, baseType: !111, size: 64, offset: 3776)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2335, file: !2336, line: 180, baseType: !111, size: 64, offset: 3840)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2335, file: !2336, line: 180, baseType: !111, size: 64, offset: 3904)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2335, file: !2336, line: 180, baseType: !111, size: 64, offset: 3968)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2335, file: !2336, line: 181, baseType: !111, size: 64, offset: 4032)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2335, file: !2336, line: 181, baseType: !111, size: 64, offset: 4096)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2335, file: !2336, line: 181, baseType: !111, size: 64, offset: 4160)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2335, file: !2336, line: 181, baseType: !111, size: 64, offset: 4224)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2335, file: !2336, line: 182, baseType: !111, size: 64, offset: 4288)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2335, file: !2336, line: 182, baseType: !111, size: 64, offset: 4352)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2335, file: !2336, line: 182, baseType: !111, size: 64, offset: 4416)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2335, file: !2336, line: 182, baseType: !111, size: 64, offset: 4480)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2335, file: !2336, line: 183, baseType: !111, size: 64, offset: 4544)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2335, file: !2336, line: 183, baseType: !111, size: 64, offset: 4608)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2335, file: !2336, line: 184, baseType: !2418, offset: 4672)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2419, line: 12, elements: !217)
!2419 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2335, file: !2336, line: 192, baseType: !210, size: 64, offset: 4672)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2335, file: !2336, line: 203, baseType: !2422, size: 2048, offset: 4736)
!2422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2423, size: 2048, elements: !1364)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2424, line: 43, size: 128, elements: !2425)
!2424 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2425 = !{!2426, !2427}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2423, file: !2424, line: 44, baseType: !110, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2423, file: !2424, line: 45, baseType: !110, size: 64, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2335, file: !2336, line: 220, baseType: !525, size: 8, offset: 6784)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2335, file: !2336, line: 221, baseType: !1919, size: 16, offset: 6800)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2335, file: !2336, line: 222, baseType: !1919, size: 16, offset: 6816)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2335, file: !2336, line: 224, baseType: !357, size: 64, offset: 6848)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2335, file: !2336, line: 227, baseType: !1085, size: 192, offset: 6912)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2335, file: !2336, line: 233, baseType: !1085, size: 192, offset: 7104)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !152, file: !153, line: 970, baseType: !2435, size: 64, offset: 9280)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2336, line: 20, size: 16576, elements: !2437)
!2437 = !{!2438, !2439, !2440, !2441}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2436, file: !2336, line: 21, baseType: !782)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2436, file: !2336, line: 22, baseType: !169, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2436, file: !2336, line: 23, baseType: !1317, size: 128, offset: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2436, file: !2336, line: 24, baseType: !2442, size: 16384, offset: 192)
!2442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2443, size: 16384, elements: !2463)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2346, line: 49, size: 256, elements: !2444)
!2444 = !{!2445}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2443, file: !2346, line: 50, baseType: !2446, size: 256)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2346, line: 35, size: 256, elements: !2447)
!2447 = !{!2448, !2455, !2456, !2462}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2446, file: !2346, line: 37, baseType: !2449, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2450, line: 19, baseType: !2451)
!2450 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2450, line: 18, baseType: !2453)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{null, !115}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2446, file: !2346, line: 38, baseType: !111, size: 64, offset: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2446, file: !2346, line: 44, baseType: !2457, size: 64, offset: 128)
!2457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2450, line: 22, baseType: !2458)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2450, line: 21, baseType: !2460)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{null}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2446, file: !2346, line: 46, baseType: !2350, size: 64, offset: 192)
!2463 = !{!2464}
!2464 = !DISubrange(count: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !152, file: !153, line: 971, baseType: !2350, size: 64, offset: 9344)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !152, file: !153, line: 972, baseType: !2350, size: 64, offset: 9408)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !152, file: !153, line: 974, baseType: !2350, size: 64, offset: 9472)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !152, file: !153, line: 975, baseType: !2345, size: 192, offset: 9536)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !152, file: !153, line: 976, baseType: !111, size: 64, offset: 9728)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !152, file: !153, line: 977, baseType: !107, size: 64, offset: 9792)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !152, file: !153, line: 978, baseType: !7, size: 32, offset: 9856)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !152, file: !153, line: 980, baseType: !415, size: 64, offset: 9920)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !152, file: !153, line: 989, baseType: !2474, size: 128, offset: 9984)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2475, line: 35, size: 128, elements: !2476)
!2475 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2476 = !{!2477, !2478, !2479}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2474, file: !2475, line: 36, baseType: !115, size: 32)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2474, file: !2475, line: 37, baseType: !174, size: 32, offset: 32)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2474, file: !2475, line: 38, baseType: !2480, size: 64, offset: 64)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2475, line: 23, flags: DIFlagFwdDecl)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !152, file: !153, line: 992, baseType: !208, size: 64, offset: 10112)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !152, file: !153, line: 993, baseType: !208, size: 64, offset: 10176)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !152, file: !153, line: 996, baseType: !782, offset: 10240)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !152, file: !153, line: 999, baseType: !275, offset: 10240)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !152, file: !153, line: 1001, baseType: !2487, size: 64, offset: 10240)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !153, line: 636, size: 64, elements: !2488)
!2488 = !{!2489}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2487, file: !153, line: 637, baseType: !2490, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !152, file: !153, line: 1005, baseType: !317, size: 128, offset: 10304)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !152, file: !153, line: 1007, baseType: !151, size: 64, offset: 10432)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !152, file: !153, line: 1009, baseType: !2494, size: 64, offset: 10496)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !153, line: 1009, flags: DIFlagFwdDecl)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !152, file: !153, line: 1043, baseType: !98, size: 64, offset: 10560)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !152, file: !153, line: 1046, baseType: !2498, size: 64, offset: 10624)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !153, line: 41, flags: DIFlagFwdDecl)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !152, file: !153, line: 1050, baseType: !2501, size: 64, offset: 10688)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !153, line: 42, flags: DIFlagFwdDecl)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !152, file: !153, line: 1054, baseType: !2504, size: 64, offset: 10752)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !153, line: 55, flags: DIFlagFwdDecl)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !152, file: !153, line: 1056, baseType: !1264, size: 64, offset: 10816)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !152, file: !153, line: 1058, baseType: !2508, size: 64, offset: 10880)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2510, line: 99, size: 704, elements: !2511)
!2510 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2511 = !{!2512, !2513, !2514, !2515, !2516, !2517, !2518, !2537, !2538}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2509, file: !2510, line: 100, baseType: !799, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2509, file: !2510, line: 101, baseType: !174, size: 32, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2509, file: !2510, line: 102, baseType: !174, size: 32, offset: 96)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2509, file: !2510, line: 105, baseType: !782, offset: 128)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2509, file: !2510, line: 107, baseType: !226, size: 16, offset: 128)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2509, file: !2510, line: 109, baseType: !778, size: 128, offset: 192)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2509, file: !2510, line: 110, baseType: !2519, size: 64, offset: 320)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2510, line: 73, size: 448, elements: !2521)
!2521 = !{!2522, !2525, !2526, !2531, !2536}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2520, file: !2510, line: 74, baseType: !2523, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2510, line: 74, flags: DIFlagFwdDecl)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2520, file: !2510, line: 75, baseType: !2508, size: 64, offset: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, scope: !2520, file: !2510, line: 83, baseType: !2527, size: 128, offset: 128)
!2527 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2520, file: !2510, line: 83, size: 128, elements: !2528)
!2528 = !{!2529, !2530}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2527, file: !2510, line: 84, baseType: !123, size: 128)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2527, file: !2510, line: 85, baseType: !995, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, scope: !2520, file: !2510, line: 87, baseType: !2532, size: 128, offset: 256)
!2532 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2520, file: !2510, line: 87, size: 128, elements: !2533)
!2533 = !{!2534, !2535}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2532, file: !2510, line: 88, baseType: !678, size: 128)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2532, file: !2510, line: 89, baseType: !412, size: 128, align: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2520, file: !2510, line: 92, baseType: !7, size: 32, offset: 384)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2509, file: !2510, line: 111, baseType: !674, size: 64, offset: 384)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2509, file: !2510, line: 113, baseType: !1476, size: 256, offset: 448)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !152, file: !153, line: 1061, baseType: !2540, size: 64, offset: 10944)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !153, line: 43, flags: DIFlagFwdDecl)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !152, file: !153, line: 1064, baseType: !111, size: 64, offset: 11008)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !152, file: !153, line: 1065, baseType: !2544, size: 64, offset: 11072)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2346, line: 14, baseType: !2546)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2346, line: 12, size: 384, elements: !2547)
!2547 = !{!2548}
!2548 = !DIDerivedType(tag: DW_TAG_member, scope: !2546, file: !2346, line: 13, baseType: !2549, size: 384)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2546, file: !2346, line: 13, size: 384, elements: !2550)
!2550 = !{!2551, !2552, !2553, !2554}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2549, file: !2346, line: 13, baseType: !115, size: 32)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2549, file: !2346, line: 13, baseType: !115, size: 32, offset: 32)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2549, file: !2346, line: 13, baseType: !115, size: 32, offset: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2549, file: !2346, line: 13, baseType: !2555, size: 256, offset: 128)
!2555 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2556, line: 32, size: 256, elements: !2557)
!2556 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2557 = !{!2558, !2563, !2576, !2582, !2591, !2611, !2616}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2555, file: !2556, line: 37, baseType: !2559, size: 64)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2555, file: !2556, line: 34, size: 64, elements: !2560)
!2560 = !{!2561, !2562}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2559, file: !2556, line: 35, baseType: !2261, size: 32)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2559, file: !2556, line: 36, baseType: !476, size: 32, offset: 32)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2555, file: !2556, line: 45, baseType: !2564, size: 192)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2555, file: !2556, line: 40, size: 192, elements: !2565)
!2565 = !{!2566, !2568, !2569, !2575}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2564, file: !2556, line: 41, baseType: !2567, size: 32)
!2567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !109, line: 95, baseType: !115)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2564, file: !2556, line: 42, baseType: !115, size: 32, offset: 32)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2564, file: !2556, line: 43, baseType: !2570, size: 64, offset: 64)
!2570 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2556, line: 11, baseType: !2571)
!2571 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2556, line: 8, size: 64, elements: !2572)
!2572 = !{!2573, !2574}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2571, file: !2556, line: 9, baseType: !115, size: 32)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2571, file: !2556, line: 10, baseType: !98, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2564, file: !2556, line: 44, baseType: !115, size: 32, offset: 128)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2555, file: !2556, line: 52, baseType: !2577, size: 128)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2555, file: !2556, line: 48, size: 128, elements: !2578)
!2578 = !{!2579, !2580, !2581}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2577, file: !2556, line: 49, baseType: !2261, size: 32)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2577, file: !2556, line: 50, baseType: !476, size: 32, offset: 32)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2577, file: !2556, line: 51, baseType: !2570, size: 64, offset: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2555, file: !2556, line: 61, baseType: !2583, size: 256)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2555, file: !2556, line: 55, size: 256, elements: !2584)
!2584 = !{!2585, !2586, !2587, !2588, !2590}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2583, file: !2556, line: 56, baseType: !2261, size: 32)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2583, file: !2556, line: 57, baseType: !476, size: 32, offset: 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2583, file: !2556, line: 58, baseType: !115, size: 32, offset: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2583, file: !2556, line: 59, baseType: !2589, size: 64, offset: 128)
!2589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !109, line: 94, baseType: !613)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2583, file: !2556, line: 60, baseType: !2589, size: 64, offset: 192)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2555, file: !2556, line: 95, baseType: !2592, size: 256)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2555, file: !2556, line: 64, size: 256, elements: !2593)
!2593 = !{!2594, !2595}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2592, file: !2556, line: 65, baseType: !98, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, scope: !2592, file: !2556, line: 77, baseType: !2596, size: 192, offset: 64)
!2596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2592, file: !2556, line: 77, size: 192, elements: !2597)
!2597 = !{!2598, !2599, !2606}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2596, file: !2556, line: 82, baseType: !1919, size: 16)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2596, file: !2556, line: 88, baseType: !2600, size: 192)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2596, file: !2556, line: 84, size: 192, elements: !2601)
!2601 = !{!2602, !2604, !2605}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2600, file: !2556, line: 85, baseType: !2603, size: 64)
!2603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 64, elements: !296)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2600, file: !2556, line: 86, baseType: !98, size: 64, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2600, file: !2556, line: 87, baseType: !98, size: 64, offset: 128)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2596, file: !2556, line: 93, baseType: !2607, size: 96)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2596, file: !2556, line: 90, size: 96, elements: !2608)
!2608 = !{!2609, !2610}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2607, file: !2556, line: 91, baseType: !2603, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2607, file: !2556, line: 92, baseType: !163, size: 32, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2555, file: !2556, line: 101, baseType: !2612, size: 128)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2555, file: !2556, line: 98, size: 128, elements: !2613)
!2613 = !{!2614, !2615}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2612, file: !2556, line: 99, baseType: !118, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2612, file: !2556, line: 100, baseType: !115, size: 32, offset: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2555, file: !2556, line: 108, baseType: !2617, size: 128)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2555, file: !2556, line: 104, size: 128, elements: !2618)
!2618 = !{!2619, !2620, !2621}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2617, file: !2556, line: 105, baseType: !98, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2617, file: !2556, line: 106, baseType: !115, size: 32, offset: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2617, file: !2556, line: 107, baseType: !7, size: 32, offset: 96)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !152, file: !153, line: 1067, baseType: !2418, offset: 11136)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !152, file: !153, line: 1099, baseType: !2624, size: 64, offset: 11136)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !153, line: 56, flags: DIFlagFwdDecl)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !152, file: !153, line: 1103, baseType: !123, size: 128, offset: 11200)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !152, file: !153, line: 1104, baseType: !2628, size: 64, offset: 11328)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !153, line: 46, flags: DIFlagFwdDecl)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !152, file: !153, line: 1105, baseType: !1085, size: 192, offset: 11392)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !152, file: !153, line: 1106, baseType: !7, size: 32, offset: 11584)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !152, file: !153, line: 1109, baseType: !2633, size: 128, offset: 11648)
!2633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2634, size: 128, elements: !1878)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !153, line: 51, flags: DIFlagFwdDecl)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !152, file: !153, line: 1110, baseType: !1085, size: 192, offset: 11776)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !152, file: !153, line: 1111, baseType: !123, size: 128, offset: 11968)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !152, file: !153, line: 1173, baseType: !2639, size: 64, offset: 12096)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2641, line: 62, size: 256, align: 256, elements: !2642)
!2641 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2642 = !{!2643, !2644, !2645, !2650}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2640, file: !2641, line: 75, baseType: !163, size: 32)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2640, file: !2641, line: 90, baseType: !163, size: 32, offset: 32)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2640, file: !2641, line: 124, baseType: !2646, size: 64, offset: 64)
!2646 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2640, file: !2641, line: 109, size: 64, elements: !2647)
!2647 = !{!2648, !2649}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2646, file: !2641, line: 110, baseType: !209, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2646, file: !2641, line: 112, baseType: !209, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2640, file: !2641, line: 144, baseType: !163, size: 32, offset: 128)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !152, file: !153, line: 1174, baseType: !161, size: 32, offset: 12160)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !152, file: !153, line: 1179, baseType: !111, size: 64, offset: 12224)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !152, file: !153, line: 1182, baseType: !2654, size: 128, offset: 12288)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2110, line: 76, size: 128, elements: !2655)
!2655 = !{!2656, !2661, !2662}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2654, file: !2110, line: 85, baseType: !2657, size: 64)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2658, line: 7, size: 64, elements: !2659)
!2658 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2659 = !{!2660}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2657, file: !2658, line: 12, baseType: !346, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2654, file: !2110, line: 88, baseType: !525, size: 8, offset: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2654, file: !2110, line: 95, baseType: !525, size: 8, offset: 72)
!2663 = !DIDerivedType(tag: DW_TAG_member, scope: !152, file: !153, line: 1184, baseType: !2664, size: 128, offset: 12416)
!2664 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !152, file: !153, line: 1184, size: 128, elements: !2665)
!2665 = !{!2666, !2667}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2664, file: !153, line: 1185, baseType: !169, size: 32)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2664, file: !153, line: 1186, baseType: !412, size: 128, align: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !152, file: !153, line: 1190, baseType: !920, size: 64, offset: 12544)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !152, file: !153, line: 1192, baseType: !2670, size: 128, offset: 12608)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2110, line: 64, size: 128, elements: !2671)
!2671 = !{!2672, !2673, !2674}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2670, file: !2110, line: 65, baseType: !761, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2670, file: !2110, line: 67, baseType: !163, size: 32, offset: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2670, file: !2110, line: 68, baseType: !163, size: 32, offset: 96)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !152, file: !153, line: 1206, baseType: !115, size: 32, offset: 12736)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !152, file: !153, line: 1207, baseType: !115, size: 32, offset: 12768)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !152, file: !153, line: 1209, baseType: !111, size: 64, offset: 12800)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !152, file: !153, line: 1219, baseType: !208, size: 64, offset: 12864)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !152, file: !153, line: 1220, baseType: !208, size: 64, offset: 12928)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !152, file: !153, line: 1317, baseType: !115, size: 32, offset: 12992)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !152, file: !153, line: 1319, baseType: !151, size: 64, offset: 13056)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !152, file: !153, line: 1322, baseType: !2683, size: 64, offset: 13120)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2685, line: 9, flags: DIFlagFwdDecl)
!2685 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !152, file: !153, line: 1326, baseType: !169, size: 32, offset: 13184)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !152, file: !153, line: 1342, baseType: !98, size: 64, offset: 13248)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !152, file: !153, line: 1343, baseType: !209, size: 64, offset: 13312)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !152, file: !153, line: 1344, baseType: !208, size: 64, offset: 13376)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !152, file: !153, line: 1345, baseType: !209, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !152, file: !153, line: 1346, baseType: !209, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !152, file: !153, line: 1347, baseType: !209, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !152, file: !153, line: 1348, baseType: !412, size: 128, align: 64, offset: 13504)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !152, file: !153, line: 1358, baseType: !2695, size: 34816, offset: 13824)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2696, line: 485, size: 34816, elements: !2697)
!2696 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2697 = !{!2698, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2727, !2728, !2729, !2730, !2731, !2732, !2735, !2736, !2737}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2695, file: !2696, line: 487, baseType: !2699, size: 192)
!2699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2700, size: 192, elements: !690)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2701, line: 16, size: 64, elements: !2702)
!2701 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2702 = !{!2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2700, file: !2701, line: 17, baseType: !885, size: 16)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2700, file: !2701, line: 18, baseType: !885, size: 16, offset: 16)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2700, file: !2701, line: 19, baseType: !885, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2700, file: !2701, line: 19, baseType: !885, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2700, file: !2701, line: 19, baseType: !885, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2700, file: !2701, line: 19, baseType: !885, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2700, file: !2701, line: 19, baseType: !885, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2700, file: !2701, line: 20, baseType: !885, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2700, file: !2701, line: 20, baseType: !885, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2700, file: !2701, line: 20, baseType: !885, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2700, file: !2701, line: 20, baseType: !885, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2700, file: !2701, line: 20, baseType: !885, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2700, file: !2701, line: 20, baseType: !885, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2695, file: !2696, line: 491, baseType: !111, size: 64, offset: 192)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2695, file: !2696, line: 495, baseType: !226, size: 16, offset: 256)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2695, file: !2696, line: 496, baseType: !226, size: 16, offset: 272)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2695, file: !2696, line: 497, baseType: !226, size: 16, offset: 288)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2695, file: !2696, line: 498, baseType: !226, size: 16, offset: 304)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2695, file: !2696, line: 502, baseType: !111, size: 64, offset: 320)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2695, file: !2696, line: 503, baseType: !111, size: 64, offset: 384)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2695, file: !2696, line: 514, baseType: !2724, size: 256, offset: 448)
!2724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2725, size: 256, elements: !1838)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2696, line: 483, flags: DIFlagFwdDecl)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2695, file: !2696, line: 516, baseType: !111, size: 64, offset: 704)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2695, file: !2696, line: 518, baseType: !111, size: 64, offset: 768)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2695, file: !2696, line: 520, baseType: !111, size: 64, offset: 832)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2695, file: !2696, line: 521, baseType: !111, size: 64, offset: 896)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2695, file: !2696, line: 522, baseType: !111, size: 64, offset: 960)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2695, file: !2696, line: 528, baseType: !2733, size: 64, offset: 1024)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2696, line: 10, flags: DIFlagFwdDecl)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2695, file: !2696, line: 535, baseType: !111, size: 64, offset: 1088)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2695, file: !2696, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2695, file: !2696, line: 540, baseType: !2738, size: 33280, offset: 1536)
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2739, line: 317, size: 33280, elements: !2740)
!2739 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2740 = !{!2741, !2742, !2743}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2738, file: !2739, line: 330, baseType: !7, size: 32)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2738, file: !2739, line: 337, baseType: !111, size: 64, offset: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2738, file: !2739, line: 348, baseType: !2744, size: 32768, offset: 512)
!2744 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2739, line: 304, size: 32768, elements: !2745)
!2745 = !{!2746, !2761, !2798, !2848, !2861}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2744, file: !2739, line: 305, baseType: !2747, size: 896)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2739, line: 12, size: 896, elements: !2748)
!2748 = !{!2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2760}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2747, file: !2739, line: 13, baseType: !161, size: 32)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2747, file: !2739, line: 14, baseType: !161, size: 32, offset: 32)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2747, file: !2739, line: 15, baseType: !161, size: 32, offset: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2747, file: !2739, line: 16, baseType: !161, size: 32, offset: 96)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2747, file: !2739, line: 17, baseType: !161, size: 32, offset: 128)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2747, file: !2739, line: 18, baseType: !161, size: 32, offset: 160)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2747, file: !2739, line: 19, baseType: !161, size: 32, offset: 192)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2747, file: !2739, line: 22, baseType: !2757, size: 640, offset: 224)
!2757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 640, elements: !2758)
!2758 = !{!2759}
!2759 = !DISubrange(count: 20)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2747, file: !2739, line: 25, baseType: !161, size: 32, offset: 864)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2744, file: !2739, line: 306, baseType: !2762, size: 4096, align: 128)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2739, line: 34, size: 4096, align: 128, elements: !2763)
!2763 = !{!2764, !2765, !2766, !2767, !2768, !2783, !2784, !2785, !2787, !2789, !2793}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2762, file: !2739, line: 35, baseType: !885, size: 16)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2762, file: !2739, line: 36, baseType: !885, size: 16, offset: 16)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2762, file: !2739, line: 37, baseType: !885, size: 16, offset: 32)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2762, file: !2739, line: 38, baseType: !885, size: 16, offset: 48)
!2768 = !DIDerivedType(tag: DW_TAG_member, scope: !2762, file: !2739, line: 39, baseType: !2769, size: 128, offset: 64)
!2769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2762, file: !2739, line: 39, size: 128, elements: !2770)
!2770 = !{!2771, !2776}
!2771 = !DIDerivedType(tag: DW_TAG_member, scope: !2769, file: !2739, line: 40, baseType: !2772, size: 128)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2769, file: !2739, line: 40, size: 128, elements: !2773)
!2773 = !{!2774, !2775}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2772, file: !2739, line: 41, baseType: !208, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2772, file: !2739, line: 42, baseType: !208, size: 64, offset: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, scope: !2769, file: !2739, line: 44, baseType: !2777, size: 128)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2769, file: !2739, line: 44, size: 128, elements: !2778)
!2778 = !{!2779, !2780, !2781, !2782}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2777, file: !2739, line: 45, baseType: !161, size: 32)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2777, file: !2739, line: 46, baseType: !161, size: 32, offset: 32)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2777, file: !2739, line: 47, baseType: !161, size: 32, offset: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2777, file: !2739, line: 48, baseType: !161, size: 32, offset: 96)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2762, file: !2739, line: 51, baseType: !161, size: 32, offset: 192)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2762, file: !2739, line: 52, baseType: !161, size: 32, offset: 224)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2762, file: !2739, line: 55, baseType: !2786, size: 1024, offset: 256)
!2786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 1024, elements: !1355)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2762, file: !2739, line: 58, baseType: !2788, size: 2048, offset: 1280)
!2788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 2048, elements: !2463)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2762, file: !2739, line: 60, baseType: !2790, size: 384, offset: 3328)
!2790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 384, elements: !2791)
!2791 = !{!2792}
!2792 = !DISubrange(count: 12)
!2793 = !DIDerivedType(tag: DW_TAG_member, scope: !2762, file: !2739, line: 62, baseType: !2794, size: 384, offset: 3712)
!2794 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2762, file: !2739, line: 62, size: 384, elements: !2795)
!2795 = !{!2796, !2797}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2794, file: !2739, line: 63, baseType: !2790, size: 384)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2794, file: !2739, line: 64, baseType: !2790, size: 384)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2744, file: !2739, line: 307, baseType: !2799, size: 1088)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2739, line: 79, size: 1088, elements: !2800)
!2800 = !{!2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2847}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2799, file: !2739, line: 80, baseType: !161, size: 32)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2799, file: !2739, line: 81, baseType: !161, size: 32, offset: 32)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2799, file: !2739, line: 82, baseType: !161, size: 32, offset: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2799, file: !2739, line: 83, baseType: !161, size: 32, offset: 96)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2799, file: !2739, line: 84, baseType: !161, size: 32, offset: 128)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2799, file: !2739, line: 85, baseType: !161, size: 32, offset: 160)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2799, file: !2739, line: 86, baseType: !161, size: 32, offset: 192)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2799, file: !2739, line: 88, baseType: !2757, size: 640, offset: 224)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2799, file: !2739, line: 89, baseType: !330, size: 8, offset: 864)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2799, file: !2739, line: 90, baseType: !330, size: 8, offset: 872)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2799, file: !2739, line: 91, baseType: !330, size: 8, offset: 880)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2799, file: !2739, line: 92, baseType: !330, size: 8, offset: 888)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2799, file: !2739, line: 93, baseType: !330, size: 8, offset: 896)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2799, file: !2739, line: 94, baseType: !330, size: 8, offset: 904)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2799, file: !2739, line: 95, baseType: !2816, size: 64, offset: 960)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2818, line: 11, size: 128, elements: !2819)
!2818 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2819 = !{!2820, !2821}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2817, file: !2818, line: 12, baseType: !118, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2817, file: !2818, line: 13, baseType: !2822, size: 64, offset: 64)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2824, line: 56, size: 1344, elements: !2825)
!2824 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2825 = !{!2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2823, file: !2824, line: 61, baseType: !111, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2823, file: !2824, line: 62, baseType: !111, size: 64, offset: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2823, file: !2824, line: 63, baseType: !111, size: 64, offset: 128)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2823, file: !2824, line: 64, baseType: !111, size: 64, offset: 192)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2823, file: !2824, line: 65, baseType: !111, size: 64, offset: 256)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2823, file: !2824, line: 66, baseType: !111, size: 64, offset: 320)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2823, file: !2824, line: 68, baseType: !111, size: 64, offset: 384)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2823, file: !2824, line: 69, baseType: !111, size: 64, offset: 448)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2823, file: !2824, line: 70, baseType: !111, size: 64, offset: 512)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2823, file: !2824, line: 71, baseType: !111, size: 64, offset: 576)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2823, file: !2824, line: 72, baseType: !111, size: 64, offset: 640)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2823, file: !2824, line: 73, baseType: !111, size: 64, offset: 704)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2823, file: !2824, line: 74, baseType: !111, size: 64, offset: 768)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2823, file: !2824, line: 75, baseType: !111, size: 64, offset: 832)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2823, file: !2824, line: 76, baseType: !111, size: 64, offset: 896)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2823, file: !2824, line: 81, baseType: !111, size: 64, offset: 960)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2823, file: !2824, line: 83, baseType: !111, size: 64, offset: 1024)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2823, file: !2824, line: 84, baseType: !111, size: 64, offset: 1088)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2823, file: !2824, line: 85, baseType: !111, size: 64, offset: 1152)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2823, file: !2824, line: 86, baseType: !111, size: 64, offset: 1216)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2823, file: !2824, line: 87, baseType: !111, size: 64, offset: 1280)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2799, file: !2739, line: 96, baseType: !161, size: 32, offset: 1024)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2744, file: !2739, line: 308, baseType: !2849, size: 4608, align: 512)
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2739, line: 289, size: 4608, align: 512, elements: !2850)
!2850 = !{!2851, !2852, !2859}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2849, file: !2739, line: 290, baseType: !2762, size: 4096, align: 128)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2849, file: !2739, line: 291, baseType: !2853, size: 512, offset: 4096)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2739, line: 268, size: 512, elements: !2854)
!2854 = !{!2855, !2856, !2857}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2853, file: !2739, line: 269, baseType: !208, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2853, file: !2739, line: 270, baseType: !208, size: 64, offset: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2853, file: !2739, line: 271, baseType: !2858, size: 384, offset: 128)
!2858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 384, elements: !1937)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2849, file: !2739, line: 292, baseType: !2860, offset: 4608)
!2860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, elements: !2033)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2744, file: !2739, line: 309, baseType: !2862, size: 32768)
!2862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 32768, elements: !2863)
!2863 = !{!2864}
!2864 = !DISubrange(count: 4096)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xb_req_data", file: !32, line: 75, size: 832, elements: !2867)
!2867 = !{!2868, !2869, !2870, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2889}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2866, file: !32, line: 76, baseType: !123, size: 128)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2866, file: !32, line: 77, baseType: !1317, size: 128, offset: 128)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !2866, file: !32, line: 78, baseType: !2871, size: 128, offset: 256)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xsd_sockmsg", file: !6, line: 65, size: 128, elements: !2872)
!2872 = !{!2873, !2874, !2875, !2876}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2871, file: !6, line: 67, baseType: !592, size: 32)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "req_id", scope: !2871, file: !6, line: 68, baseType: !592, size: 32, offset: 32)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "tx_id", scope: !2871, file: !6, line: 69, baseType: !592, size: 32, offset: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2871, file: !6, line: 70, baseType: !592, size: 32, offset: 96)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "caller_req_id", scope: !2866, file: !32, line: 79, baseType: !592, size: 32, offset: 384)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2866, file: !32, line: 80, baseType: !5, size: 32, offset: 416)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !2866, file: !32, line: 81, baseType: !113, size: 64, offset: 448)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2866, file: !32, line: 82, baseType: !913, size: 64, offset: 512)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "num_vecs", scope: !2866, file: !32, line: 83, baseType: !115, size: 32, offset: 576)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !2866, file: !32, line: 84, baseType: !115, size: 32, offset: 608)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2866, file: !32, line: 85, baseType: !31, size: 32, offset: 640)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "user_req", scope: !2866, file: !32, line: 86, baseType: !525, size: 8, offset: 672)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !2866, file: !32, line: 87, baseType: !2886, size: 64, offset: 704)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{null, !2865}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !2866, file: !32, line: 88, baseType: !98, size: 64, offset: 768)
!2890 = !{!2891, !2893, !2895, !0, !2897, !2899, !2905, !2907, !2909, !2917, !2926, !2928, !2930, !2932, !2934, !2936, !2938, !2940}
!2891 = !DIGlobalVariableExpression(var: !2892, expr: !DIExpression())
!2892 = distinct !DIGlobalVariable(name: "xs_state_users", scope: !2, file: !3, line: 66, type: !7, isLocal: true, isDefinition: true)
!2893 = !DIGlobalVariableExpression(var: !2894, expr: !DIExpression())
!2894 = distinct !DIGlobalVariable(name: "xs_suspend_active", scope: !2, file: !3, line: 68, type: !115, isLocal: true, isDefinition: true)
!2895 = !DIGlobalVariableExpression(var: !2896, expr: !DIExpression())
!2896 = distinct !DIGlobalVariable(name: "xenwatch_pid", scope: !2, file: !3, line: 94, type: !2260, isLocal: true, isDefinition: true)
!2897 = !DIGlobalVariableExpression(var: !2898, expr: !DIExpression())
!2898 = distinct !DIGlobalVariable(name: "xs_state_exit_wq", scope: !2, file: !3, line: 75, type: !1319, isLocal: true, isDefinition: true)
!2899 = !DIGlobalVariableExpression(var: !2900, expr: !DIExpression())
!2900 = distinct !DIGlobalVariable(name: "__key", scope: !2901, file: !3, line: 234, type: !684, isLocal: true, isDefinition: true)
!2901 = distinct !DISubprogram(name: "xs_send", scope: !3, file: !3, line: 227, type: !2902, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{null, !2865, !2904}
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2905 = !DIGlobalVariableExpression(var: !2906, expr: !DIExpression())
!2906 = distinct !DIGlobalVariable(name: "xs_state_enter_wq", scope: !2, file: !3, line: 73, type: !1319, isLocal: true, isDefinition: true)
!2907 = !DIGlobalVariableExpression(var: !2908, expr: !DIExpression())
!2908 = distinct !DIGlobalVariable(name: "xs_request_id", scope: !2, file: !3, line: 70, type: !592, isLocal: true, isDefinition: true)
!2909 = !DIGlobalVariableExpression(var: !2910, expr: !DIExpression())
!2910 = distinct !DIGlobalVariable(name: "_rs", scope: !2911, file: !3, line: 346, type: !2014, isLocal: true, isDefinition: true)
!2911 = distinct !DISubprogram(name: "xs_talkv", scope: !3, file: !3, line: 302, type: !2912, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!98, !2914, !5, !913, !7, !1337}
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_transaction", file: !132, line: 133, size: 32, elements: !2915)
!2915 = !{!2916}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2914, file: !132, line: 135, baseType: !161, size: 32)
!2917 = !DIGlobalVariableExpression(var: !2918, expr: !DIExpression())
!2918 = distinct !DIGlobalVariable(name: "xsd_errors", scope: !2, file: !6, line: 48, type: !2919, isLocal: true, isDefinition: true)
!2919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2920, size: 1792, elements: !2924)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xsd_errors", file: !6, line: 42, size: 128, elements: !2921)
!2921 = !{!2922, !2923}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !2920, file: !6, line: 44, baseType: !115, size: 32)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "errstring", scope: !2920, file: !6, line: 45, baseType: !116, size: 64, offset: 64)
!2924 = !{!2925}
!2925 = !DISubrange(count: 14)
!2926 = !DIGlobalVariableExpression(var: !2927, expr: !DIExpression())
!2927 = distinct !DIGlobalVariable(name: "watches_lock", scope: !2, file: !3, line: 79, type: !782, isLocal: true, isDefinition: true)
!2928 = !DIGlobalVariableExpression(var: !2929, expr: !DIExpression())
!2929 = distinct !DIGlobalVariable(name: "watch_events_lock", scope: !2, file: !3, line: 83, type: !782, isLocal: true, isDefinition: true)
!2930 = !DIGlobalVariableExpression(var: !2931, expr: !DIExpression())
!2931 = distinct !DIGlobalVariable(name: "watch_events", scope: !2, file: !3, line: 82, type: !123, isLocal: true, isDefinition: true)
!2932 = !DIGlobalVariableExpression(var: !2933, expr: !DIExpression())
!2933 = distinct !DIGlobalVariable(name: "watch_events_waitq", scope: !2, file: !3, line: 96, type: !1319, isLocal: true, isDefinition: true)
!2934 = !DIGlobalVariableExpression(var: !2935, expr: !DIExpression())
!2935 = distinct !DIGlobalVariable(name: "xs_watch_rwsem", scope: !2, file: !3, line: 86, type: !795, isLocal: true, isDefinition: true)
!2936 = !DIGlobalVariableExpression(var: !2937, expr: !DIExpression())
!2937 = distinct !DIGlobalVariable(name: "watches", scope: !2, file: !3, line: 78, type: !123, isLocal: true, isDefinition: true)
!2938 = !DIGlobalVariableExpression(var: !2939, expr: !DIExpression())
!2939 = distinct !DIGlobalVariable(name: "xenwatch_mutex", scope: !2, file: !3, line: 95, type: !1085, isLocal: true, isDefinition: true)
!2940 = !DIGlobalVariableExpression(var: !2941, expr: !DIExpression())
!2941 = distinct !DIGlobalVariable(name: "xs_reboot_nb", scope: !2, file: !3, line: 922, type: !2942, isLocal: true, isDefinition: true)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !2943, line: 54, size: 192, elements: !2944)
!2943 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!2944 = !{!2945, !2951, !2952}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !2942, file: !2943, line: 55, baseType: !2946, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !2943, line: 51, baseType: !2947)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!115, !2950, !111, !98}
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2942, file: !2943, line: 56, baseType: !2950, size: 64, offset: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2942, file: !2943, line: 57, baseType: !115, size: 32, offset: 128)
!2953 = !{!"rsp"}
!2954 = !{i32 7, !"Dwarf Version", i32 4}
!2955 = !{i32 2, !"Debug Info Version", i32 3}
!2956 = !{i32 1, !"wchar_size", i32 2}
!2957 = !{i32 1, !"Code Model", i32 2}
!2958 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2959 = distinct !DISubprogram(name: "xs_request_exit", scope: !3, file: !3, line: 139, type: !2887, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!2960 = !DILocalVariable(name: "lock", arg: 1, scope: !2961, file: !2962, line: 392, type: !2965)
!2961 = distinct !DISubprogram(name: "spin_unlock", scope: !2962, file: !2962, line: 392, type: !2963, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!2962 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!2963 = !DISubroutineType(types: !2964)
!2964 = !{null, !2965}
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!2966 = !DILocation(line: 392, column: 53, scope: !2961, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 148, column: 2, scope: !2959)
!2968 = !DILocalVariable(name: "lock", arg: 1, scope: !2969, file: !2962, line: 352, type: !2965)
!2969 = distinct !DISubprogram(name: "spin_lock", scope: !2962, file: !2962, line: 352, type: !2963, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!2970 = !DILocation(line: 352, column: 51, scope: !2969, inlinedAt: !2971)
!2971 = distinct !DILocation(line: 141, column: 2, scope: !2959)
!2972 = !DILocalVariable(name: "req", arg: 1, scope: !2959, file: !3, line: 139, type: !2865)
!2973 = !DILocation(line: 139, column: 42, scope: !2959)
!2974 = !DILocation(line: 354, column: 2, scope: !2975, inlinedAt: !2971)
!2975 = distinct !DILexicalBlock(scope: !2969, file: !2962, line: 354, column: 2)
!2976 = !{i32 -2145473400}
!2977 = !DILocation(line: 354, column: 2, scope: !2978, inlinedAt: !2971)
!2978 = distinct !DILexicalBlock(scope: !2975, file: !2962, line: 354, column: 2)
!2979 = !DILocation(line: 142, column: 16, scope: !2959)
!2980 = !DILocation(line: 143, column: 7, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 143, column: 6)
!2982 = !DILocation(line: 143, column: 12, scope: !2981)
!2983 = !DILocation(line: 143, column: 17, scope: !2981)
!2984 = !DILocation(line: 143, column: 41, scope: !2981)
!2985 = !DILocation(line: 143, column: 44, scope: !2981)
!2986 = !DILocation(line: 143, column: 49, scope: !2981)
!2987 = !DILocation(line: 143, column: 53, scope: !2981)
!2988 = !DILocation(line: 143, column: 58, scope: !2981)
!2989 = !DILocation(line: 143, column: 71, scope: !2981)
!2990 = !DILocation(line: 144, column: 7, scope: !2981)
!2991 = !DILocation(line: 144, column: 12, scope: !2981)
!2992 = !DILocation(line: 144, column: 17, scope: !2981)
!2993 = !DILocation(line: 144, column: 39, scope: !2981)
!2994 = !DILocation(line: 144, column: 43, scope: !2981)
!2995 = !DILocation(line: 144, column: 48, scope: !2981)
!2996 = !DILocation(line: 144, column: 57, scope: !2981)
!2997 = !DILocalVariable(name: "__ret_warn_on", scope: !2998, file: !3, line: 145, type: !115)
!2998 = distinct !DILexicalBlock(scope: !2981, file: !3, line: 145, column: 8)
!2999 = !DILocation(line: 145, column: 8, scope: !2998)
!3000 = !DILocation(line: 0, scope: !2998)
!3001 = !DILocation(line: 145, column: 8, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2998, file: !3, line: 145, column: 8)
!3003 = !DILocation(line: 145, column: 8, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 145, column: 8)
!3005 = !DILocation(line: 145, column: 8, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3004, file: !3, line: 145, column: 8)
!3007 = !DILocation(line: 145, column: 8, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3004, file: !3, line: 145, column: 8)
!3009 = !{i32 -2142869018, i32 -2142868989, i32 -2142868943, i32 -2142868885, i32 -2142868831, i32 -2142868777, i32 -2142868722, i32 -2142868691}
!3010 = !DILocation(line: 145, column: 8, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3004, file: !3, line: 145, column: 8)
!3012 = !{i32 -2142868268, i32 -2142868261, i32 -2142868209, i32 -2142868178, i32 -2142868148}
!3013 = !DILocation(line: 145, column: 8, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3004, file: !3, line: 145, column: 8)
!3015 = !DILocation(line: 145, column: 8, scope: !2981)
!3016 = !DILocation(line: 143, column: 6, scope: !2959)
!3017 = !DILocation(line: 147, column: 17, scope: !2981)
!3018 = !DILocation(line: 147, column: 3, scope: !2981)
!3019 = !DILocation(line: 394, column: 2, scope: !3020, inlinedAt: !2967)
!3020 = distinct !DILexicalBlock(scope: !2961, file: !2962, line: 394, column: 2)
!3021 = !{i32 -2145471039}
!3022 = !DILocation(line: 394, column: 2, scope: !3023, inlinedAt: !2967)
!3023 = distinct !DILexicalBlock(scope: !3020, file: !2962, line: 394, column: 2)
!3024 = !DILocation(line: 150, column: 6, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 150, column: 6)
!3026 = !DILocation(line: 150, column: 24, scope: !3025)
!3027 = !DILocation(line: 150, column: 28, scope: !3025)
!3028 = !DILocation(line: 150, column: 6, scope: !2959)
!3029 = !DILocation(line: 151, column: 3, scope: !3025)
!3030 = !DILocation(line: 152, column: 1, scope: !2959)
!3031 = distinct !DISubprogram(name: "xenbus_dev_request_and_reply", scope: !3, file: !3, line: 276, type: !3032, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!115, !2904, !98}
!3034 = !DILocalVariable(name: "s", arg: 1, scope: !3035, file: !85, line: 445, type: !995)
!3035 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !85, file: !85, line: 445, type: !3036, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!98, !995, !99, !107}
!3038 = !DILocation(line: 445, column: 72, scope: !3035, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 552, column: 10, scope: !3040, inlinedAt: !3045)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !85, line: 540, column: 34)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !85, line: 540, column: 6)
!3042 = distinct !DISubprogram(name: "kmalloc", scope: !85, file: !85, line: 538, type: !3043, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!98, !107, !99}
!3045 = distinct !DILocation(line: 281, column: 8, scope: !3031)
!3046 = !DILocalVariable(name: "flags", arg: 2, scope: !3035, file: !85, line: 446, type: !99)
!3047 = !DILocation(line: 446, column: 9, scope: !3035, inlinedAt: !3039)
!3048 = !DILocalVariable(name: "size", arg: 3, scope: !3035, file: !85, line: 446, type: !107)
!3049 = !DILocation(line: 446, column: 23, scope: !3035, inlinedAt: !3039)
!3050 = !DILocalVariable(name: "ret", scope: !3035, file: !85, line: 448, type: !98)
!3051 = !DILocation(line: 448, column: 8, scope: !3035, inlinedAt: !3039)
!3052 = !DILocalVariable(name: "flags", arg: 1, scope: !3053, file: !85, line: 318, type: !99)
!3053 = distinct !DISubprogram(name: "kmalloc_type", scope: !85, file: !85, line: 318, type: !3054, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!84, !99}
!3056 = !DILocation(line: 318, column: 67, scope: !3053, inlinedAt: !3057)
!3057 = distinct !DILocation(line: 553, column: 20, scope: !3040, inlinedAt: !3045)
!3058 = !DILocalVariable(name: "size", arg: 1, scope: !3059, file: !85, line: 346, type: !107)
!3059 = distinct !DISubprogram(name: "kmalloc_index", scope: !85, file: !85, line: 346, type: !3060, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!7, !107}
!3062 = !DILocation(line: 346, column: 58, scope: !3059, inlinedAt: !3063)
!3063 = distinct !DILocation(line: 547, column: 11, scope: !3040, inlinedAt: !3045)
!3064 = !DILocalVariable(name: "size", arg: 1, scope: !3065, file: !85, line: 472, type: !107)
!3065 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !85, file: !85, line: 472, type: !3066, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!98, !107, !99, !7}
!3068 = !DILocation(line: 472, column: 28, scope: !3065, inlinedAt: !3069)
!3069 = distinct !DILocation(line: 481, column: 9, scope: !3070, inlinedAt: !3071)
!3070 = distinct !DISubprogram(name: "kmalloc_large", scope: !85, file: !85, line: 478, type: !3043, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3071 = distinct !DILocation(line: 545, column: 11, scope: !3072, inlinedAt: !3045)
!3072 = distinct !DILexicalBlock(scope: !3040, file: !85, line: 544, column: 7)
!3073 = !DILocalVariable(name: "flags", arg: 2, scope: !3065, file: !85, line: 472, type: !99)
!3074 = !DILocation(line: 472, column: 40, scope: !3065, inlinedAt: !3069)
!3075 = !DILocalVariable(name: "order", arg: 3, scope: !3065, file: !85, line: 472, type: !7)
!3076 = !DILocation(line: 472, column: 60, scope: !3065, inlinedAt: !3069)
!3077 = !DILocalVariable(name: "size", arg: 1, scope: !3070, file: !85, line: 478, type: !107)
!3078 = !DILocation(line: 478, column: 51, scope: !3070, inlinedAt: !3071)
!3079 = !DILocalVariable(name: "flags", arg: 2, scope: !3070, file: !85, line: 478, type: !99)
!3080 = !DILocation(line: 478, column: 63, scope: !3070, inlinedAt: !3071)
!3081 = !DILocalVariable(name: "order", scope: !3070, file: !85, line: 480, type: !7)
!3082 = !DILocation(line: 480, column: 15, scope: !3070, inlinedAt: !3071)
!3083 = !DILocalVariable(name: "size", arg: 1, scope: !3042, file: !85, line: 538, type: !107)
!3084 = !DILocation(line: 538, column: 45, scope: !3042, inlinedAt: !3045)
!3085 = !DILocalVariable(name: "flags", arg: 2, scope: !3042, file: !85, line: 538, type: !99)
!3086 = !DILocation(line: 538, column: 57, scope: !3042, inlinedAt: !3045)
!3087 = !DILocalVariable(name: "index", scope: !3040, file: !85, line: 542, type: !7)
!3088 = !DILocation(line: 542, column: 16, scope: !3040, inlinedAt: !3045)
!3089 = !DILocalVariable(name: "msg", arg: 1, scope: !3031, file: !3, line: 276, type: !2904)
!3090 = !DILocation(line: 276, column: 54, scope: !3031)
!3091 = !DILocalVariable(name: "par", arg: 2, scope: !3031, file: !3, line: 276, type: !98)
!3092 = !DILocation(line: 276, column: 65, scope: !3031)
!3093 = !DILocalVariable(name: "req", scope: !3031, file: !3, line: 278, type: !2865)
!3094 = !DILocation(line: 278, column: 22, scope: !3031)
!3095 = !DILocalVariable(name: "vec", scope: !3031, file: !3, line: 279, type: !101)
!3096 = !DILocation(line: 279, column: 15, scope: !3031)
!3097 = !DILocation(line: 540, column: 27, scope: !3041, inlinedAt: !3045)
!3098 = !DILocation(line: 540, column: 6, scope: !3041, inlinedAt: !3045)
!3099 = !DILocation(line: 540, column: 6, scope: !3042, inlinedAt: !3045)
!3100 = !DILocation(line: 544, column: 7, scope: !3072, inlinedAt: !3045)
!3101 = !DILocation(line: 544, column: 12, scope: !3072, inlinedAt: !3045)
!3102 = !DILocation(line: 544, column: 7, scope: !3040, inlinedAt: !3045)
!3103 = !DILocation(line: 545, column: 25, scope: !3072, inlinedAt: !3045)
!3104 = !DILocation(line: 545, column: 31, scope: !3072, inlinedAt: !3045)
!3105 = !DILocation(line: 480, column: 33, scope: !3070, inlinedAt: !3071)
!3106 = !DILocation(line: 480, column: 23, scope: !3070, inlinedAt: !3071)
!3107 = !DILocation(line: 481, column: 29, scope: !3070, inlinedAt: !3071)
!3108 = !DILocation(line: 481, column: 35, scope: !3070, inlinedAt: !3071)
!3109 = !DILocation(line: 481, column: 42, scope: !3070, inlinedAt: !3071)
!3110 = !DILocation(line: 474, column: 23, scope: !3065, inlinedAt: !3069)
!3111 = !DILocation(line: 474, column: 29, scope: !3065, inlinedAt: !3069)
!3112 = !DILocation(line: 474, column: 36, scope: !3065, inlinedAt: !3069)
!3113 = !DILocation(line: 474, column: 9, scope: !3065, inlinedAt: !3069)
!3114 = !DILocation(line: 545, column: 4, scope: !3072, inlinedAt: !3045)
!3115 = !DILocation(line: 547, column: 25, scope: !3040, inlinedAt: !3045)
!3116 = !DILocation(line: 348, column: 7, scope: !3117, inlinedAt: !3063)
!3117 = distinct !DILexicalBlock(scope: !3059, file: !85, line: 348, column: 6)
!3118 = !DILocation(line: 348, column: 6, scope: !3059, inlinedAt: !3063)
!3119 = !DILocation(line: 349, column: 3, scope: !3117, inlinedAt: !3063)
!3120 = !DILocation(line: 351, column: 6, scope: !3121, inlinedAt: !3063)
!3121 = distinct !DILexicalBlock(scope: !3059, file: !85, line: 351, column: 6)
!3122 = !DILocation(line: 351, column: 11, scope: !3121, inlinedAt: !3063)
!3123 = !DILocation(line: 351, column: 6, scope: !3059, inlinedAt: !3063)
!3124 = !DILocation(line: 352, column: 3, scope: !3121, inlinedAt: !3063)
!3125 = !DILocation(line: 354, column: 32, scope: !3126, inlinedAt: !3063)
!3126 = distinct !DILexicalBlock(scope: !3059, file: !85, line: 354, column: 6)
!3127 = !DILocation(line: 354, column: 37, scope: !3126, inlinedAt: !3063)
!3128 = !DILocation(line: 354, column: 42, scope: !3126, inlinedAt: !3063)
!3129 = !DILocation(line: 354, column: 45, scope: !3126, inlinedAt: !3063)
!3130 = !DILocation(line: 354, column: 50, scope: !3126, inlinedAt: !3063)
!3131 = !DILocation(line: 354, column: 6, scope: !3059, inlinedAt: !3063)
!3132 = !DILocation(line: 355, column: 3, scope: !3126, inlinedAt: !3063)
!3133 = !DILocation(line: 356, column: 32, scope: !3134, inlinedAt: !3063)
!3134 = distinct !DILexicalBlock(scope: !3059, file: !85, line: 356, column: 6)
!3135 = !DILocation(line: 356, column: 37, scope: !3134, inlinedAt: !3063)
!3136 = !DILocation(line: 356, column: 43, scope: !3134, inlinedAt: !3063)
!3137 = !DILocation(line: 356, column: 46, scope: !3134, inlinedAt: !3063)
!3138 = !DILocation(line: 356, column: 51, scope: !3134, inlinedAt: !3063)
!3139 = !DILocation(line: 356, column: 6, scope: !3059, inlinedAt: !3063)
!3140 = !DILocation(line: 357, column: 3, scope: !3134, inlinedAt: !3063)
!3141 = !DILocation(line: 358, column: 6, scope: !3142, inlinedAt: !3063)
!3142 = distinct !DILexicalBlock(scope: !3059, file: !85, line: 358, column: 6)
!3143 = !DILocation(line: 358, column: 11, scope: !3142, inlinedAt: !3063)
!3144 = !DILocation(line: 358, column: 6, scope: !3059, inlinedAt: !3063)
!3145 = !DILocation(line: 358, column: 26, scope: !3142, inlinedAt: !3063)
!3146 = !DILocation(line: 359, column: 6, scope: !3147, inlinedAt: !3063)
!3147 = distinct !DILexicalBlock(scope: !3059, file: !85, line: 359, column: 6)
!3148 = !DILocation(line: 359, column: 11, scope: !3147, inlinedAt: !3063)
!3149 = !DILocation(line: 359, column: 6, scope: !3059, inlinedAt: !3063)
!3150 = !DILocation(line: 359, column: 26, scope: !3147, inlinedAt: !3063)
!3151 = !DILocation(line: 360, column: 6, scope: !3152, inlinedAt: !3063)
!3152 = distinct !DILexicalBlock(scope: !3059, file: !85, line: 360, column: 6)
!3153 = !DILocation(line: 360, column: 11, scope: !3152, inlinedAt: !3063)
!3154 = !DILocation(line: 360, column: 6, scope: !3059, inlinedAt: !3063)
!3155 = !DILocation(line: 360, column: 26, scope: !3152, inlinedAt: !3063)
!3156 = !DILocation(line: 361, column: 6, scope: !3157, inlinedAt: !3063)
!3157 = distinct !DILexicalBlock(scope: !3059, file: !85, line: 361, column: 6)
!3158 = !DILocation(line: 361, column: 11, scope: !3157, inlinedAt: !3063)
!3159 = !DILocation(line: 361, column: 6, scope: !3059, inlinedAt: !3063)
!3160 = !DILocation(line: 361, column: 26, scope: !3157, inlinedAt: !3063)
!3161 = !DILocation(line: 362, column: 6, scope: !3162, inlinedAt: !3063)
!3162 = distinct !DILexicalBlock(scope: !3059, file: !85, line: 362, column: 6)
!3163 = !DILocation(line: 362, column: 11, scope: !3162, inlinedAt: !3063)
!3164 = !DILocation(line: 362, column: 6, scope: !3059, inlinedAt: !3063)
!3165 = !DILocation(line: 362, column: 26, scope: !3162, inlinedAt: !3063)
!3166 = !DILocation(line: 363, column: 6, scope: !3167, inlinedAt: !3063)
!3167 = distinct !DILexicalBlock(scope: !3059, file: !85, line: 363, column: 6)
!3168 = !DILocation(line: 363, column: 11, scope: !3167, inlinedAt: !3063)
!3169 = !DILocation(line: 363, column: 6, scope: !3059, inlinedAt: !3063)
!3170 = !DILocation(line: 363, column: 26, scope: !3167, inlinedAt: !3063)
!3171 = !DILocation(line: 364, column: 6, scope: !3172, inlinedAt: !3063)
!3172 = distinct !DILexicalBlock(scope: !3059, file: !85, line: 364, column: 6)
!3173 = !DILocation(line: 364, column: 11, scope: !3172, inlinedAt: !3063)
!3174 = !DILocation(line: 364, column: 6, scope: !3059, inlinedAt: !3063)
!3175 = !DILocation(line: 364, column: 26, scope: !3172, inlinedAt: !3063)
!3176 = !DILocation(line: 365, column: 6, scope: !3177, inlinedAt: !3063)
!3177 = distinct !DILexicalBlock(scope: !3059, file: !85, line: 365, column: 6)
!3178 = !DILocation(line: 365, column: 11, scope: !3177, inlinedAt: !3063)
!3179 = !DILocation(line: 365, column: 6, scope: !3059, inlinedAt: !3063)
!3180 = !DILocation(line: 365, column: 26, scope: !3177, inlinedAt: !3063)
!3181 = !DILocation(line: 366, column: 6, scope: !3182, inlinedAt: !3063)
!3182 = distinct !DILexicalBlock(scope: !3059, file: !85, line: 366, column: 6)
!3183 = !DILocation(line: 366, column: 11, scope: !3182, inlinedAt: !3063)
!3184 = !DILocation(line: 366, column: 6, scope: !3059, inlinedAt: !3063)
!3185 = !DILocation(line: 366, column: 26, scope: !3182, inlinedAt: !3063)
!3186 = !DILocation(line: 367, column: 6, scope: !3187, inlinedAt: !3063)
!3187 = distinct !DILexicalBlock(scope: !3059, file: !85, line: 367, column: 6)
!3188 = !DILocation(line: 367, column: 11, scope: !3187, inlinedAt: !3063)
!3189 = !DILocation(line: 367, column: 6, scope: !3059, inlinedAt: !3063)
!3190 = !DILocation(line: 367, column: 26, scope: !3187, inlinedAt: !3063)
!3191 = !DILocation(line: 368, column: 6, scope: !3192, inlinedAt: !3063)
!3192 = distinct !DILexicalBlock(scope: !3059, file: !85, line: 368, column: 6)
!3193 = !DILocation(line: 368, column: 11, scope: !3192, inlinedAt: !3063)
!3194 = !DILocation(line: 368, column: 6, scope: !3059, inlinedAt: !3063)
!3195 = !DILocation(line: 368, column: 26, scope: !3192, inlinedAt: !3063)
!3196 = !DILocation(line: 369, column: 6, scope: !3197, inlinedAt: !3063)
!3197 = distinct !DILexicalBlock(scope: !3059, file: !85, line: 369, column: 6)
!3198 = !DILocation(line: 369, column: 11, scope: !3197, inlinedAt: !3063)
!3199 = !DILocation(line: 369, column: 6, scope: !3059, inlinedAt: !3063)
!3200 = !DILocation(line: 369, column: 26, scope: !3197, inlinedAt: !3063)
!3201 = !DILocation(line: 370, column: 6, scope: !3202, inlinedAt: !3063)
!3202 = distinct !DILexicalBlock(scope: !3059, file: !85, line: 370, column: 6)
!3203 = !DILocation(line: 370, column: 11, scope: !3202, inlinedAt: !3063)
!3204 = !DILocation(line: 370, column: 6, scope: !3059, inlinedAt: !3063)
!3205 = !DILocation(line: 370, column: 26, scope: !3202, inlinedAt: !3063)
!3206 = !DILocation(line: 371, column: 6, scope: !3207, inlinedAt: !3063)
!3207 = distinct !DILexicalBlock(scope: !3059, file: !85, line: 371, column: 6)
!3208 = !DILocation(line: 371, column: 11, scope: !3207, inlinedAt: !3063)
!3209 = !DILocation(line: 371, column: 6, scope: !3059, inlinedAt: !3063)
!3210 = !DILocation(line: 371, column: 26, scope: !3207, inlinedAt: !3063)
!3211 = !DILocation(line: 372, column: 6, scope: !3212, inlinedAt: !3063)
!3212 = distinct !DILexicalBlock(scope: !3059, file: !85, line: 372, column: 6)
!3213 = !DILocation(line: 372, column: 11, scope: !3212, inlinedAt: !3063)
!3214 = !DILocation(line: 372, column: 6, scope: !3059, inlinedAt: !3063)
!3215 = !DILocation(line: 372, column: 26, scope: !3212, inlinedAt: !3063)
!3216 = !DILocation(line: 373, column: 6, scope: !3217, inlinedAt: !3063)
!3217 = distinct !DILexicalBlock(scope: !3059, file: !85, line: 373, column: 6)
!3218 = !DILocation(line: 373, column: 11, scope: !3217, inlinedAt: !3063)
!3219 = !DILocation(line: 373, column: 6, scope: !3059, inlinedAt: !3063)
!3220 = !DILocation(line: 373, column: 26, scope: !3217, inlinedAt: !3063)
!3221 = !DILocation(line: 374, column: 6, scope: !3222, inlinedAt: !3063)
!3222 = distinct !DILexicalBlock(scope: !3059, file: !85, line: 374, column: 6)
!3223 = !DILocation(line: 374, column: 11, scope: !3222, inlinedAt: !3063)
!3224 = !DILocation(line: 374, column: 6, scope: !3059, inlinedAt: !3063)
!3225 = !DILocation(line: 374, column: 26, scope: !3222, inlinedAt: !3063)
!3226 = !DILocation(line: 375, column: 6, scope: !3227, inlinedAt: !3063)
!3227 = distinct !DILexicalBlock(scope: !3059, file: !85, line: 375, column: 6)
!3228 = !DILocation(line: 375, column: 11, scope: !3227, inlinedAt: !3063)
!3229 = !DILocation(line: 375, column: 6, scope: !3059, inlinedAt: !3063)
!3230 = !DILocation(line: 375, column: 27, scope: !3227, inlinedAt: !3063)
!3231 = !DILocation(line: 376, column: 6, scope: !3232, inlinedAt: !3063)
!3232 = distinct !DILexicalBlock(scope: !3059, file: !85, line: 376, column: 6)
!3233 = !DILocation(line: 376, column: 11, scope: !3232, inlinedAt: !3063)
!3234 = !DILocation(line: 376, column: 6, scope: !3059, inlinedAt: !3063)
!3235 = !DILocation(line: 376, column: 32, scope: !3232, inlinedAt: !3063)
!3236 = !DILocation(line: 377, column: 6, scope: !3237, inlinedAt: !3063)
!3237 = distinct !DILexicalBlock(scope: !3059, file: !85, line: 377, column: 6)
!3238 = !DILocation(line: 377, column: 11, scope: !3237, inlinedAt: !3063)
!3239 = !DILocation(line: 377, column: 6, scope: !3059, inlinedAt: !3063)
!3240 = !DILocation(line: 377, column: 32, scope: !3237, inlinedAt: !3063)
!3241 = !DILocation(line: 378, column: 6, scope: !3242, inlinedAt: !3063)
!3242 = distinct !DILexicalBlock(scope: !3059, file: !85, line: 378, column: 6)
!3243 = !DILocation(line: 378, column: 11, scope: !3242, inlinedAt: !3063)
!3244 = !DILocation(line: 378, column: 6, scope: !3059, inlinedAt: !3063)
!3245 = !DILocation(line: 378, column: 32, scope: !3242, inlinedAt: !3063)
!3246 = !DILocation(line: 379, column: 6, scope: !3247, inlinedAt: !3063)
!3247 = distinct !DILexicalBlock(scope: !3059, file: !85, line: 379, column: 6)
!3248 = !DILocation(line: 379, column: 11, scope: !3247, inlinedAt: !3063)
!3249 = !DILocation(line: 379, column: 6, scope: !3059, inlinedAt: !3063)
!3250 = !DILocation(line: 379, column: 33, scope: !3247, inlinedAt: !3063)
!3251 = !DILocation(line: 380, column: 6, scope: !3252, inlinedAt: !3063)
!3252 = distinct !DILexicalBlock(scope: !3059, file: !85, line: 380, column: 6)
!3253 = !DILocation(line: 380, column: 11, scope: !3252, inlinedAt: !3063)
!3254 = !DILocation(line: 380, column: 6, scope: !3059, inlinedAt: !3063)
!3255 = !DILocation(line: 380, column: 33, scope: !3252, inlinedAt: !3063)
!3256 = !DILocation(line: 381, column: 6, scope: !3257, inlinedAt: !3063)
!3257 = distinct !DILexicalBlock(scope: !3059, file: !85, line: 381, column: 6)
!3258 = !DILocation(line: 381, column: 11, scope: !3257, inlinedAt: !3063)
!3259 = !DILocation(line: 381, column: 6, scope: !3059, inlinedAt: !3063)
!3260 = !DILocation(line: 381, column: 33, scope: !3257, inlinedAt: !3063)
!3261 = !DILocation(line: 382, column: 2, scope: !3262, inlinedAt: !3063)
!3262 = distinct !DILexicalBlock(scope: !3263, file: !85, line: 382, column: 2)
!3263 = distinct !DILexicalBlock(scope: !3059, file: !85, line: 382, column: 2)
!3264 = !{i32 -2144590437, i32 -2144590408, i32 -2144590362, i32 -2144590304, i32 -2144590250, i32 -2144590196, i32 -2144590141, i32 -2144590110}
!3265 = !DILocation(line: 382, column: 2, scope: !3266, inlinedAt: !3063)
!3266 = distinct !DILexicalBlock(scope: !3267, file: !85, line: 382, column: 2)
!3267 = distinct !DILexicalBlock(scope: !3263, file: !85, line: 382, column: 2)
!3268 = !{i32 -2144589667, i32 -2144589660, i32 -2144589606, i32 -2144589575, i32 -2144589545}
!3269 = !DILocation(line: 382, column: 2, scope: !3267, inlinedAt: !3063)
!3270 = !DILocation(line: 386, column: 1, scope: !3059, inlinedAt: !3063)
!3271 = !DILocation(line: 547, column: 9, scope: !3040, inlinedAt: !3045)
!3272 = !DILocation(line: 549, column: 8, scope: !3273, inlinedAt: !3045)
!3273 = distinct !DILexicalBlock(scope: !3040, file: !85, line: 549, column: 7)
!3274 = !DILocation(line: 549, column: 7, scope: !3040, inlinedAt: !3045)
!3275 = !DILocation(line: 550, column: 4, scope: !3273, inlinedAt: !3045)
!3276 = !DILocation(line: 553, column: 33, scope: !3040, inlinedAt: !3045)
!3277 = !DILocation(line: 325, column: 6, scope: !3278, inlinedAt: !3057)
!3278 = distinct !DILexicalBlock(scope: !3053, file: !85, line: 325, column: 6)
!3279 = !DILocation(line: 325, column: 6, scope: !3053, inlinedAt: !3057)
!3280 = !DILocation(line: 326, column: 3, scope: !3278, inlinedAt: !3057)
!3281 = !DILocation(line: 332, column: 9, scope: !3053, inlinedAt: !3057)
!3282 = !DILocation(line: 332, column: 15, scope: !3053, inlinedAt: !3057)
!3283 = !DILocation(line: 332, column: 2, scope: !3053, inlinedAt: !3057)
!3284 = !DILocation(line: 336, column: 1, scope: !3053, inlinedAt: !3057)
!3285 = !DILocation(line: 553, column: 5, scope: !3040, inlinedAt: !3045)
!3286 = !DILocation(line: 553, column: 41, scope: !3040, inlinedAt: !3045)
!3287 = !DILocation(line: 554, column: 5, scope: !3040, inlinedAt: !3045)
!3288 = !DILocation(line: 554, column: 12, scope: !3040, inlinedAt: !3045)
!3289 = !DILocation(line: 448, column: 31, scope: !3035, inlinedAt: !3039)
!3290 = !DILocation(line: 448, column: 34, scope: !3035, inlinedAt: !3039)
!3291 = !DILocation(line: 448, column: 14, scope: !3035, inlinedAt: !3039)
!3292 = !DILocation(line: 450, column: 22, scope: !3035, inlinedAt: !3039)
!3293 = !DILocation(line: 450, column: 25, scope: !3035, inlinedAt: !3039)
!3294 = !DILocation(line: 450, column: 30, scope: !3035, inlinedAt: !3039)
!3295 = !DILocation(line: 450, column: 36, scope: !3035, inlinedAt: !3039)
!3296 = !DILocation(line: 450, column: 8, scope: !3035, inlinedAt: !3039)
!3297 = !DILocation(line: 450, column: 6, scope: !3035, inlinedAt: !3039)
!3298 = !DILocation(line: 451, column: 9, scope: !3035, inlinedAt: !3039)
!3299 = !DILocation(line: 552, column: 3, scope: !3040, inlinedAt: !3045)
!3300 = !DILocation(line: 557, column: 19, scope: !3042, inlinedAt: !3045)
!3301 = !DILocation(line: 557, column: 25, scope: !3042, inlinedAt: !3045)
!3302 = !DILocation(line: 557, column: 9, scope: !3042, inlinedAt: !3045)
!3303 = !DILocation(line: 557, column: 2, scope: !3042, inlinedAt: !3045)
!3304 = !DILocation(line: 558, column: 1, scope: !3042, inlinedAt: !3045)
!3305 = !DILocation(line: 281, column: 8, scope: !3031)
!3306 = !DILocation(line: 281, column: 6, scope: !3031)
!3307 = !DILocation(line: 282, column: 7, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3031, file: !3, line: 282, column: 6)
!3309 = !DILocation(line: 282, column: 6, scope: !3031)
!3310 = !DILocation(line: 283, column: 3, scope: !3308)
!3311 = !DILocation(line: 285, column: 24, scope: !3031)
!3312 = !DILocation(line: 285, column: 28, scope: !3031)
!3313 = !DILocation(line: 285, column: 8, scope: !3031)
!3314 = !DILocation(line: 285, column: 6, scope: !3031)
!3315 = !DILocation(line: 286, column: 17, scope: !3031)
!3316 = !DILocation(line: 286, column: 22, scope: !3031)
!3317 = !DILocation(line: 286, column: 2, scope: !3031)
!3318 = !DILocation(line: 286, column: 7, scope: !3031)
!3319 = !DILocation(line: 286, column: 15, scope: !3031)
!3320 = !DILocation(line: 287, column: 18, scope: !3031)
!3321 = !DILocation(line: 287, column: 22, scope: !3031)
!3322 = !DILocation(line: 287, column: 2, scope: !3031)
!3323 = !DILocation(line: 287, column: 7, scope: !3031)
!3324 = !DILocation(line: 287, column: 16, scope: !3031)
!3325 = !DILocation(line: 289, column: 13, scope: !3031)
!3326 = !DILocation(line: 289, column: 2, scope: !3031)
!3327 = !DILocation(line: 289, column: 7, scope: !3031)
!3328 = !DILocation(line: 289, column: 11, scope: !3031)
!3329 = !DILocation(line: 290, column: 2, scope: !3031)
!3330 = !DILocation(line: 290, column: 7, scope: !3031)
!3331 = !DILocation(line: 290, column: 16, scope: !3031)
!3332 = !DILocation(line: 291, column: 2, scope: !3031)
!3333 = !DILocation(line: 291, column: 7, scope: !3031)
!3334 = !DILocation(line: 291, column: 10, scope: !3031)
!3335 = !DILocation(line: 292, column: 13, scope: !3031)
!3336 = !DILocation(line: 292, column: 2, scope: !3031)
!3337 = !DILocation(line: 292, column: 7, scope: !3031)
!3338 = !DILocation(line: 292, column: 11, scope: !3031)
!3339 = !DILocation(line: 293, column: 2, scope: !3031)
!3340 = !DILocation(line: 293, column: 7, scope: !3031)
!3341 = !DILocation(line: 293, column: 16, scope: !3031)
!3342 = !DILocation(line: 295, column: 10, scope: !3031)
!3343 = !DILocation(line: 295, column: 15, scope: !3031)
!3344 = !DILocation(line: 295, column: 2, scope: !3031)
!3345 = !DILocation(line: 297, column: 2, scope: !3031)
!3346 = !DILocation(line: 298, column: 1, scope: !3031)
!3347 = !DILocalVariable(name: "req", arg: 1, scope: !2901, file: !3, line: 227, type: !2865)
!3348 = !DILocation(line: 227, column: 41, scope: !2901)
!3349 = !DILocalVariable(name: "msg", arg: 2, scope: !2901, file: !3, line: 227, type: !2904)
!3350 = !DILocation(line: 227, column: 66, scope: !2901)
!3351 = !DILocalVariable(name: "notify", scope: !2901, file: !3, line: 229, type: !525)
!3352 = !DILocation(line: 229, column: 7, scope: !2901)
!3353 = !DILocation(line: 231, column: 2, scope: !2901)
!3354 = !DILocation(line: 231, column: 7, scope: !2901)
!3355 = !DILocation(line: 231, column: 14, scope: !2901)
!3356 = !DILocation(line: 231, column: 13, scope: !2901)
!3357 = !DILocation(line: 232, column: 2, scope: !2901)
!3358 = !DILocation(line: 232, column: 7, scope: !2901)
!3359 = !DILocation(line: 232, column: 11, scope: !2901)
!3360 = !DILocation(line: 233, column: 2, scope: !2901)
!3361 = !DILocation(line: 233, column: 7, scope: !2901)
!3362 = !DILocation(line: 233, column: 13, scope: !2901)
!3363 = !DILocation(line: 234, column: 2, scope: !2901)
!3364 = !DILocation(line: 234, column: 2, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !2901, file: !3, line: 234, column: 2)
!3366 = !DILocation(line: 237, column: 23, scope: !2901)
!3367 = !DILocation(line: 237, column: 28, scope: !2901)
!3368 = !DILocation(line: 237, column: 32, scope: !2901)
!3369 = !DILocation(line: 237, column: 2, scope: !2901)
!3370 = !DILocation(line: 237, column: 7, scope: !2901)
!3371 = !DILocation(line: 237, column: 21, scope: !2901)
!3372 = !DILocation(line: 238, column: 37, scope: !2901)
!3373 = !DILocation(line: 238, column: 20, scope: !2901)
!3374 = !DILocation(line: 238, column: 2, scope: !2901)
!3375 = !DILocation(line: 238, column: 7, scope: !2901)
!3376 = !DILocation(line: 238, column: 11, scope: !2901)
!3377 = !DILocation(line: 238, column: 18, scope: !2901)
!3378 = !DILocation(line: 240, column: 2, scope: !2901)
!3379 = !DILocation(line: 241, column: 17, scope: !2901)
!3380 = !DILocation(line: 241, column: 22, scope: !2901)
!3381 = !DILocation(line: 241, column: 2, scope: !2901)
!3382 = !DILocation(line: 242, column: 11, scope: !2901)
!3383 = !DILocation(line: 242, column: 9, scope: !2901)
!3384 = !DILocation(line: 243, column: 2, scope: !2901)
!3385 = !DILocation(line: 245, column: 6, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !2901, file: !3, line: 245, column: 6)
!3387 = !DILocation(line: 245, column: 6, scope: !2901)
!3388 = !DILocation(line: 246, column: 3, scope: !3386)
!3389 = !DILocation(line: 247, column: 1, scope: !2901)
!3390 = distinct !DISubprogram(name: "xenbus_directory", scope: !3, file: !3, line: 422, type: !3391, scopeLine: 424, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!112, !2914, !116, !116, !1337}
!3393 = !DILocalVariable(name: "t", arg: 1, scope: !3390, file: !3, line: 422, type: !2914)
!3394 = !DILocation(line: 422, column: 51, scope: !3390)
!3395 = !DILocalVariable(name: "dir", arg: 2, scope: !3390, file: !3, line: 423, type: !116)
!3396 = !DILocation(line: 423, column: 16, scope: !3390)
!3397 = !DILocalVariable(name: "node", arg: 3, scope: !3390, file: !3, line: 423, type: !116)
!3398 = !DILocation(line: 423, column: 33, scope: !3390)
!3399 = !DILocalVariable(name: "num", arg: 4, scope: !3390, file: !3, line: 423, type: !1337)
!3400 = !DILocation(line: 423, column: 53, scope: !3390)
!3401 = !DILocalVariable(name: "strings", scope: !3390, file: !3, line: 425, type: !113)
!3402 = !DILocation(line: 425, column: 8, scope: !3390)
!3403 = !DILocalVariable(name: "path", scope: !3390, file: !3, line: 425, type: !113)
!3404 = !DILocation(line: 425, column: 18, scope: !3390)
!3405 = !DILocalVariable(name: "len", scope: !3390, file: !3, line: 426, type: !7)
!3406 = !DILocation(line: 426, column: 15, scope: !3390)
!3407 = !DILocation(line: 428, column: 14, scope: !3390)
!3408 = !DILocation(line: 428, column: 19, scope: !3390)
!3409 = !DILocation(line: 428, column: 9, scope: !3390)
!3410 = !DILocation(line: 428, column: 7, scope: !3390)
!3411 = !DILocation(line: 429, column: 13, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3390, file: !3, line: 429, column: 6)
!3413 = !DILocation(line: 429, column: 6, scope: !3412)
!3414 = !DILocation(line: 429, column: 6, scope: !3390)
!3415 = !DILocation(line: 430, column: 19, scope: !3412)
!3416 = !DILocation(line: 430, column: 10, scope: !3412)
!3417 = !DILocation(line: 430, column: 3, scope: !3412)
!3418 = !DILocation(line: 432, column: 39, scope: !3390)
!3419 = !DILocation(line: 432, column: 12, scope: !3390)
!3420 = !DILocation(line: 432, column: 10, scope: !3390)
!3421 = !DILocation(line: 433, column: 8, scope: !3390)
!3422 = !DILocation(line: 433, column: 2, scope: !3390)
!3423 = !DILocation(line: 434, column: 13, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3390, file: !3, line: 434, column: 6)
!3425 = !DILocation(line: 434, column: 6, scope: !3424)
!3426 = !DILocation(line: 434, column: 6, scope: !3390)
!3427 = !DILocation(line: 435, column: 19, scope: !3424)
!3428 = !DILocation(line: 435, column: 10, scope: !3424)
!3429 = !DILocation(line: 435, column: 3, scope: !3424)
!3430 = !DILocation(line: 437, column: 15, scope: !3390)
!3431 = !DILocation(line: 437, column: 24, scope: !3390)
!3432 = !DILocation(line: 437, column: 29, scope: !3390)
!3433 = !DILocation(line: 437, column: 9, scope: !3390)
!3434 = !DILocation(line: 437, column: 2, scope: !3390)
!3435 = !DILocation(line: 438, column: 1, scope: !3390)
!3436 = distinct !DISubprogram(name: "join", scope: !3, file: !3, line: 388, type: !3437, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!113, !116, !116}
!3439 = !DILocalVariable(name: "dir", arg: 1, scope: !3436, file: !3, line: 388, type: !116)
!3440 = !DILocation(line: 388, column: 31, scope: !3436)
!3441 = !DILocalVariable(name: "name", arg: 2, scope: !3436, file: !3, line: 388, type: !116)
!3442 = !DILocation(line: 388, column: 48, scope: !3436)
!3443 = !DILocalVariable(name: "buffer", scope: !3436, file: !3, line: 390, type: !113)
!3444 = !DILocation(line: 390, column: 8, scope: !3436)
!3445 = !DILocation(line: 392, column: 13, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3436, file: !3, line: 392, column: 6)
!3447 = !DILocation(line: 392, column: 6, scope: !3446)
!3448 = !DILocation(line: 392, column: 19, scope: !3446)
!3449 = !DILocation(line: 392, column: 6, scope: !3436)
!3450 = !DILocation(line: 393, column: 51, scope: !3446)
!3451 = !DILocation(line: 393, column: 12, scope: !3446)
!3452 = !DILocation(line: 393, column: 10, scope: !3446)
!3453 = !DILocation(line: 393, column: 3, scope: !3446)
!3454 = !DILocation(line: 395, column: 54, scope: !3446)
!3455 = !DILocation(line: 395, column: 59, scope: !3446)
!3456 = !DILocation(line: 395, column: 12, scope: !3446)
!3457 = !DILocation(line: 395, column: 10, scope: !3446)
!3458 = !DILocation(line: 396, column: 11, scope: !3436)
!3459 = !DILocation(line: 396, column: 9, scope: !3436)
!3460 = !DILocation(line: 396, column: 21, scope: !3436)
!3461 = !DILocation(line: 396, column: 40, scope: !3436)
!3462 = !DILocation(line: 396, column: 2, scope: !3436)
!3463 = distinct !DISubprogram(name: "IS_ERR", scope: !3464, file: !3464, line: 34, type: !3465, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3464 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!525, !3467}
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3469 = !DILocalVariable(name: "ptr", arg: 1, scope: !3463, file: !3464, line: 34, type: !3467)
!3470 = !DILocation(line: 34, column: 60, scope: !3463)
!3471 = !DILocation(line: 36, column: 9, scope: !3463)
!3472 = !DILocation(line: 36, column: 2, scope: !3463)
!3473 = distinct !DISubprogram(name: "xs_single", scope: !3, file: !3, line: 355, type: !3474, scopeLine: 359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!98, !2914, !5, !116, !1337}
!3476 = !DILocalVariable(name: "t", arg: 1, scope: !3473, file: !3, line: 355, type: !2914)
!3477 = !DILocation(line: 355, column: 50, scope: !3473)
!3478 = !DILocalVariable(name: "type", arg: 2, scope: !3473, file: !3, line: 356, type: !5)
!3479 = !DILocation(line: 356, column: 32, scope: !3473)
!3480 = !DILocalVariable(name: "string", arg: 3, scope: !3473, file: !3, line: 357, type: !116)
!3481 = !DILocation(line: 357, column: 22, scope: !3473)
!3482 = !DILocalVariable(name: "len", arg: 4, scope: !3473, file: !3, line: 358, type: !1337)
!3483 = !DILocation(line: 358, column: 24, scope: !3473)
!3484 = !DILocalVariable(name: "iovec", scope: !3473, file: !3, line: 360, type: !102)
!3485 = !DILocation(line: 360, column: 14, scope: !3473)
!3486 = !DILocation(line: 362, column: 27, scope: !3473)
!3487 = !DILocation(line: 362, column: 8, scope: !3473)
!3488 = !DILocation(line: 362, column: 17, scope: !3473)
!3489 = !DILocation(line: 363, column: 25, scope: !3473)
!3490 = !DILocation(line: 363, column: 18, scope: !3473)
!3491 = !DILocation(line: 363, column: 33, scope: !3473)
!3492 = !DILocation(line: 363, column: 8, scope: !3473)
!3493 = !DILocation(line: 363, column: 16, scope: !3473)
!3494 = !DILocation(line: 364, column: 21, scope: !3473)
!3495 = !DILocation(line: 364, column: 38, scope: !3473)
!3496 = !DILocation(line: 364, column: 9, scope: !3473)
!3497 = !DILocation(line: 364, column: 2, scope: !3473)
!3498 = distinct !DISubprogram(name: "split", scope: !3, file: !3, line: 399, type: !3499, scopeLine: 400, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!112, !113, !7, !1337}
!3501 = !DILocation(line: 445, column: 72, scope: !3035, inlinedAt: !3502)
!3502 = distinct !DILocation(line: 552, column: 10, scope: !3040, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 407, column: 8, scope: !3498)
!3504 = !DILocation(line: 446, column: 9, scope: !3035, inlinedAt: !3502)
!3505 = !DILocation(line: 446, column: 23, scope: !3035, inlinedAt: !3502)
!3506 = !DILocation(line: 448, column: 8, scope: !3035, inlinedAt: !3502)
!3507 = !DILocation(line: 318, column: 67, scope: !3053, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 553, column: 20, scope: !3040, inlinedAt: !3503)
!3509 = !DILocation(line: 346, column: 58, scope: !3059, inlinedAt: !3510)
!3510 = distinct !DILocation(line: 547, column: 11, scope: !3040, inlinedAt: !3503)
!3511 = !DILocation(line: 472, column: 28, scope: !3065, inlinedAt: !3512)
!3512 = distinct !DILocation(line: 481, column: 9, scope: !3070, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 545, column: 11, scope: !3072, inlinedAt: !3503)
!3514 = !DILocation(line: 472, column: 40, scope: !3065, inlinedAt: !3512)
!3515 = !DILocation(line: 472, column: 60, scope: !3065, inlinedAt: !3512)
!3516 = !DILocation(line: 478, column: 51, scope: !3070, inlinedAt: !3513)
!3517 = !DILocation(line: 478, column: 63, scope: !3070, inlinedAt: !3513)
!3518 = !DILocation(line: 480, column: 15, scope: !3070, inlinedAt: !3513)
!3519 = !DILocation(line: 538, column: 45, scope: !3042, inlinedAt: !3503)
!3520 = !DILocation(line: 538, column: 57, scope: !3042, inlinedAt: !3503)
!3521 = !DILocation(line: 542, column: 16, scope: !3040, inlinedAt: !3503)
!3522 = !DILocalVariable(name: "strings", arg: 1, scope: !3498, file: !3, line: 399, type: !113)
!3523 = !DILocation(line: 399, column: 27, scope: !3498)
!3524 = !DILocalVariable(name: "len", arg: 2, scope: !3498, file: !3, line: 399, type: !7)
!3525 = !DILocation(line: 399, column: 49, scope: !3498)
!3526 = !DILocalVariable(name: "num", arg: 3, scope: !3498, file: !3, line: 399, type: !1337)
!3527 = !DILocation(line: 399, column: 68, scope: !3498)
!3528 = !DILocalVariable(name: "p", scope: !3498, file: !3, line: 401, type: !113)
!3529 = !DILocation(line: 401, column: 8, scope: !3498)
!3530 = !DILocalVariable(name: "ret", scope: !3498, file: !3, line: 401, type: !112)
!3531 = !DILocation(line: 401, column: 13, scope: !3498)
!3532 = !DILocation(line: 404, column: 23, scope: !3498)
!3533 = !DILocation(line: 404, column: 32, scope: !3498)
!3534 = !DILocation(line: 404, column: 9, scope: !3498)
!3535 = !DILocation(line: 404, column: 3, scope: !3498)
!3536 = !DILocation(line: 404, column: 7, scope: !3498)
!3537 = !DILocation(line: 407, column: 17, scope: !3498)
!3538 = !DILocation(line: 407, column: 16, scope: !3498)
!3539 = !DILocation(line: 407, column: 21, scope: !3498)
!3540 = !DILocation(line: 407, column: 40, scope: !3498)
!3541 = !DILocation(line: 407, column: 38, scope: !3498)
!3542 = !DILocation(line: 540, column: 27, scope: !3041, inlinedAt: !3503)
!3543 = !DILocation(line: 540, column: 6, scope: !3041, inlinedAt: !3503)
!3544 = !DILocation(line: 540, column: 6, scope: !3042, inlinedAt: !3503)
!3545 = !DILocation(line: 544, column: 7, scope: !3072, inlinedAt: !3503)
!3546 = !DILocation(line: 544, column: 12, scope: !3072, inlinedAt: !3503)
!3547 = !DILocation(line: 544, column: 7, scope: !3040, inlinedAt: !3503)
!3548 = !DILocation(line: 545, column: 25, scope: !3072, inlinedAt: !3503)
!3549 = !DILocation(line: 545, column: 31, scope: !3072, inlinedAt: !3503)
!3550 = !DILocation(line: 480, column: 33, scope: !3070, inlinedAt: !3513)
!3551 = !DILocation(line: 480, column: 23, scope: !3070, inlinedAt: !3513)
!3552 = !DILocation(line: 481, column: 29, scope: !3070, inlinedAt: !3513)
!3553 = !DILocation(line: 481, column: 35, scope: !3070, inlinedAt: !3513)
!3554 = !DILocation(line: 481, column: 42, scope: !3070, inlinedAt: !3513)
!3555 = !DILocation(line: 474, column: 23, scope: !3065, inlinedAt: !3512)
!3556 = !DILocation(line: 474, column: 29, scope: !3065, inlinedAt: !3512)
!3557 = !DILocation(line: 474, column: 36, scope: !3065, inlinedAt: !3512)
!3558 = !DILocation(line: 474, column: 9, scope: !3065, inlinedAt: !3512)
!3559 = !DILocation(line: 545, column: 4, scope: !3072, inlinedAt: !3503)
!3560 = !DILocation(line: 547, column: 25, scope: !3040, inlinedAt: !3503)
!3561 = !DILocation(line: 348, column: 7, scope: !3117, inlinedAt: !3510)
!3562 = !DILocation(line: 348, column: 6, scope: !3059, inlinedAt: !3510)
!3563 = !DILocation(line: 349, column: 3, scope: !3117, inlinedAt: !3510)
!3564 = !DILocation(line: 351, column: 6, scope: !3121, inlinedAt: !3510)
!3565 = !DILocation(line: 351, column: 11, scope: !3121, inlinedAt: !3510)
!3566 = !DILocation(line: 351, column: 6, scope: !3059, inlinedAt: !3510)
!3567 = !DILocation(line: 352, column: 3, scope: !3121, inlinedAt: !3510)
!3568 = !DILocation(line: 354, column: 32, scope: !3126, inlinedAt: !3510)
!3569 = !DILocation(line: 354, column: 37, scope: !3126, inlinedAt: !3510)
!3570 = !DILocation(line: 354, column: 42, scope: !3126, inlinedAt: !3510)
!3571 = !DILocation(line: 354, column: 45, scope: !3126, inlinedAt: !3510)
!3572 = !DILocation(line: 354, column: 50, scope: !3126, inlinedAt: !3510)
!3573 = !DILocation(line: 354, column: 6, scope: !3059, inlinedAt: !3510)
!3574 = !DILocation(line: 355, column: 3, scope: !3126, inlinedAt: !3510)
!3575 = !DILocation(line: 356, column: 32, scope: !3134, inlinedAt: !3510)
!3576 = !DILocation(line: 356, column: 37, scope: !3134, inlinedAt: !3510)
!3577 = !DILocation(line: 356, column: 43, scope: !3134, inlinedAt: !3510)
!3578 = !DILocation(line: 356, column: 46, scope: !3134, inlinedAt: !3510)
!3579 = !DILocation(line: 356, column: 51, scope: !3134, inlinedAt: !3510)
!3580 = !DILocation(line: 356, column: 6, scope: !3059, inlinedAt: !3510)
!3581 = !DILocation(line: 357, column: 3, scope: !3134, inlinedAt: !3510)
!3582 = !DILocation(line: 358, column: 6, scope: !3142, inlinedAt: !3510)
!3583 = !DILocation(line: 358, column: 11, scope: !3142, inlinedAt: !3510)
!3584 = !DILocation(line: 358, column: 6, scope: !3059, inlinedAt: !3510)
!3585 = !DILocation(line: 358, column: 26, scope: !3142, inlinedAt: !3510)
!3586 = !DILocation(line: 359, column: 6, scope: !3147, inlinedAt: !3510)
!3587 = !DILocation(line: 359, column: 11, scope: !3147, inlinedAt: !3510)
!3588 = !DILocation(line: 359, column: 6, scope: !3059, inlinedAt: !3510)
!3589 = !DILocation(line: 359, column: 26, scope: !3147, inlinedAt: !3510)
!3590 = !DILocation(line: 360, column: 6, scope: !3152, inlinedAt: !3510)
!3591 = !DILocation(line: 360, column: 11, scope: !3152, inlinedAt: !3510)
!3592 = !DILocation(line: 360, column: 6, scope: !3059, inlinedAt: !3510)
!3593 = !DILocation(line: 360, column: 26, scope: !3152, inlinedAt: !3510)
!3594 = !DILocation(line: 361, column: 6, scope: !3157, inlinedAt: !3510)
!3595 = !DILocation(line: 361, column: 11, scope: !3157, inlinedAt: !3510)
!3596 = !DILocation(line: 361, column: 6, scope: !3059, inlinedAt: !3510)
!3597 = !DILocation(line: 361, column: 26, scope: !3157, inlinedAt: !3510)
!3598 = !DILocation(line: 362, column: 6, scope: !3162, inlinedAt: !3510)
!3599 = !DILocation(line: 362, column: 11, scope: !3162, inlinedAt: !3510)
!3600 = !DILocation(line: 362, column: 6, scope: !3059, inlinedAt: !3510)
!3601 = !DILocation(line: 362, column: 26, scope: !3162, inlinedAt: !3510)
!3602 = !DILocation(line: 363, column: 6, scope: !3167, inlinedAt: !3510)
!3603 = !DILocation(line: 363, column: 11, scope: !3167, inlinedAt: !3510)
!3604 = !DILocation(line: 363, column: 6, scope: !3059, inlinedAt: !3510)
!3605 = !DILocation(line: 363, column: 26, scope: !3167, inlinedAt: !3510)
!3606 = !DILocation(line: 364, column: 6, scope: !3172, inlinedAt: !3510)
!3607 = !DILocation(line: 364, column: 11, scope: !3172, inlinedAt: !3510)
!3608 = !DILocation(line: 364, column: 6, scope: !3059, inlinedAt: !3510)
!3609 = !DILocation(line: 364, column: 26, scope: !3172, inlinedAt: !3510)
!3610 = !DILocation(line: 365, column: 6, scope: !3177, inlinedAt: !3510)
!3611 = !DILocation(line: 365, column: 11, scope: !3177, inlinedAt: !3510)
!3612 = !DILocation(line: 365, column: 6, scope: !3059, inlinedAt: !3510)
!3613 = !DILocation(line: 365, column: 26, scope: !3177, inlinedAt: !3510)
!3614 = !DILocation(line: 366, column: 6, scope: !3182, inlinedAt: !3510)
!3615 = !DILocation(line: 366, column: 11, scope: !3182, inlinedAt: !3510)
!3616 = !DILocation(line: 366, column: 6, scope: !3059, inlinedAt: !3510)
!3617 = !DILocation(line: 366, column: 26, scope: !3182, inlinedAt: !3510)
!3618 = !DILocation(line: 367, column: 6, scope: !3187, inlinedAt: !3510)
!3619 = !DILocation(line: 367, column: 11, scope: !3187, inlinedAt: !3510)
!3620 = !DILocation(line: 367, column: 6, scope: !3059, inlinedAt: !3510)
!3621 = !DILocation(line: 367, column: 26, scope: !3187, inlinedAt: !3510)
!3622 = !DILocation(line: 368, column: 6, scope: !3192, inlinedAt: !3510)
!3623 = !DILocation(line: 368, column: 11, scope: !3192, inlinedAt: !3510)
!3624 = !DILocation(line: 368, column: 6, scope: !3059, inlinedAt: !3510)
!3625 = !DILocation(line: 368, column: 26, scope: !3192, inlinedAt: !3510)
!3626 = !DILocation(line: 369, column: 6, scope: !3197, inlinedAt: !3510)
!3627 = !DILocation(line: 369, column: 11, scope: !3197, inlinedAt: !3510)
!3628 = !DILocation(line: 369, column: 6, scope: !3059, inlinedAt: !3510)
!3629 = !DILocation(line: 369, column: 26, scope: !3197, inlinedAt: !3510)
!3630 = !DILocation(line: 370, column: 6, scope: !3202, inlinedAt: !3510)
!3631 = !DILocation(line: 370, column: 11, scope: !3202, inlinedAt: !3510)
!3632 = !DILocation(line: 370, column: 6, scope: !3059, inlinedAt: !3510)
!3633 = !DILocation(line: 370, column: 26, scope: !3202, inlinedAt: !3510)
!3634 = !DILocation(line: 371, column: 6, scope: !3207, inlinedAt: !3510)
!3635 = !DILocation(line: 371, column: 11, scope: !3207, inlinedAt: !3510)
!3636 = !DILocation(line: 371, column: 6, scope: !3059, inlinedAt: !3510)
!3637 = !DILocation(line: 371, column: 26, scope: !3207, inlinedAt: !3510)
!3638 = !DILocation(line: 372, column: 6, scope: !3212, inlinedAt: !3510)
!3639 = !DILocation(line: 372, column: 11, scope: !3212, inlinedAt: !3510)
!3640 = !DILocation(line: 372, column: 6, scope: !3059, inlinedAt: !3510)
!3641 = !DILocation(line: 372, column: 26, scope: !3212, inlinedAt: !3510)
!3642 = !DILocation(line: 373, column: 6, scope: !3217, inlinedAt: !3510)
!3643 = !DILocation(line: 373, column: 11, scope: !3217, inlinedAt: !3510)
!3644 = !DILocation(line: 373, column: 6, scope: !3059, inlinedAt: !3510)
!3645 = !DILocation(line: 373, column: 26, scope: !3217, inlinedAt: !3510)
!3646 = !DILocation(line: 374, column: 6, scope: !3222, inlinedAt: !3510)
!3647 = !DILocation(line: 374, column: 11, scope: !3222, inlinedAt: !3510)
!3648 = !DILocation(line: 374, column: 6, scope: !3059, inlinedAt: !3510)
!3649 = !DILocation(line: 374, column: 26, scope: !3222, inlinedAt: !3510)
!3650 = !DILocation(line: 375, column: 6, scope: !3227, inlinedAt: !3510)
!3651 = !DILocation(line: 375, column: 11, scope: !3227, inlinedAt: !3510)
!3652 = !DILocation(line: 375, column: 6, scope: !3059, inlinedAt: !3510)
!3653 = !DILocation(line: 375, column: 27, scope: !3227, inlinedAt: !3510)
!3654 = !DILocation(line: 376, column: 6, scope: !3232, inlinedAt: !3510)
!3655 = !DILocation(line: 376, column: 11, scope: !3232, inlinedAt: !3510)
!3656 = !DILocation(line: 376, column: 6, scope: !3059, inlinedAt: !3510)
!3657 = !DILocation(line: 376, column: 32, scope: !3232, inlinedAt: !3510)
!3658 = !DILocation(line: 377, column: 6, scope: !3237, inlinedAt: !3510)
!3659 = !DILocation(line: 377, column: 11, scope: !3237, inlinedAt: !3510)
!3660 = !DILocation(line: 377, column: 6, scope: !3059, inlinedAt: !3510)
!3661 = !DILocation(line: 377, column: 32, scope: !3237, inlinedAt: !3510)
!3662 = !DILocation(line: 378, column: 6, scope: !3242, inlinedAt: !3510)
!3663 = !DILocation(line: 378, column: 11, scope: !3242, inlinedAt: !3510)
!3664 = !DILocation(line: 378, column: 6, scope: !3059, inlinedAt: !3510)
!3665 = !DILocation(line: 378, column: 32, scope: !3242, inlinedAt: !3510)
!3666 = !DILocation(line: 379, column: 6, scope: !3247, inlinedAt: !3510)
!3667 = !DILocation(line: 379, column: 11, scope: !3247, inlinedAt: !3510)
!3668 = !DILocation(line: 379, column: 6, scope: !3059, inlinedAt: !3510)
!3669 = !DILocation(line: 379, column: 33, scope: !3247, inlinedAt: !3510)
!3670 = !DILocation(line: 380, column: 6, scope: !3252, inlinedAt: !3510)
!3671 = !DILocation(line: 380, column: 11, scope: !3252, inlinedAt: !3510)
!3672 = !DILocation(line: 380, column: 6, scope: !3059, inlinedAt: !3510)
!3673 = !DILocation(line: 380, column: 33, scope: !3252, inlinedAt: !3510)
!3674 = !DILocation(line: 381, column: 6, scope: !3257, inlinedAt: !3510)
!3675 = !DILocation(line: 381, column: 11, scope: !3257, inlinedAt: !3510)
!3676 = !DILocation(line: 381, column: 6, scope: !3059, inlinedAt: !3510)
!3677 = !DILocation(line: 381, column: 33, scope: !3257, inlinedAt: !3510)
!3678 = !DILocation(line: 382, column: 2, scope: !3262, inlinedAt: !3510)
!3679 = !DILocation(line: 382, column: 2, scope: !3266, inlinedAt: !3510)
!3680 = !DILocation(line: 382, column: 2, scope: !3267, inlinedAt: !3510)
!3681 = !DILocation(line: 386, column: 1, scope: !3059, inlinedAt: !3510)
!3682 = !DILocation(line: 547, column: 9, scope: !3040, inlinedAt: !3503)
!3683 = !DILocation(line: 549, column: 8, scope: !3273, inlinedAt: !3503)
!3684 = !DILocation(line: 549, column: 7, scope: !3040, inlinedAt: !3503)
!3685 = !DILocation(line: 550, column: 4, scope: !3273, inlinedAt: !3503)
!3686 = !DILocation(line: 553, column: 33, scope: !3040, inlinedAt: !3503)
!3687 = !DILocation(line: 325, column: 6, scope: !3278, inlinedAt: !3508)
!3688 = !DILocation(line: 325, column: 6, scope: !3053, inlinedAt: !3508)
!3689 = !DILocation(line: 326, column: 3, scope: !3278, inlinedAt: !3508)
!3690 = !DILocation(line: 332, column: 9, scope: !3053, inlinedAt: !3508)
!3691 = !DILocation(line: 332, column: 15, scope: !3053, inlinedAt: !3508)
!3692 = !DILocation(line: 332, column: 2, scope: !3053, inlinedAt: !3508)
!3693 = !DILocation(line: 336, column: 1, scope: !3053, inlinedAt: !3508)
!3694 = !DILocation(line: 553, column: 5, scope: !3040, inlinedAt: !3503)
!3695 = !DILocation(line: 553, column: 41, scope: !3040, inlinedAt: !3503)
!3696 = !DILocation(line: 554, column: 5, scope: !3040, inlinedAt: !3503)
!3697 = !DILocation(line: 554, column: 12, scope: !3040, inlinedAt: !3503)
!3698 = !DILocation(line: 448, column: 31, scope: !3035, inlinedAt: !3502)
!3699 = !DILocation(line: 448, column: 34, scope: !3035, inlinedAt: !3502)
!3700 = !DILocation(line: 448, column: 14, scope: !3035, inlinedAt: !3502)
!3701 = !DILocation(line: 450, column: 22, scope: !3035, inlinedAt: !3502)
!3702 = !DILocation(line: 450, column: 25, scope: !3035, inlinedAt: !3502)
!3703 = !DILocation(line: 450, column: 30, scope: !3035, inlinedAt: !3502)
!3704 = !DILocation(line: 450, column: 36, scope: !3035, inlinedAt: !3502)
!3705 = !DILocation(line: 450, column: 8, scope: !3035, inlinedAt: !3502)
!3706 = !DILocation(line: 450, column: 6, scope: !3035, inlinedAt: !3502)
!3707 = !DILocation(line: 451, column: 9, scope: !3035, inlinedAt: !3502)
!3708 = !DILocation(line: 552, column: 3, scope: !3040, inlinedAt: !3503)
!3709 = !DILocation(line: 557, column: 19, scope: !3042, inlinedAt: !3503)
!3710 = !DILocation(line: 557, column: 25, scope: !3042, inlinedAt: !3503)
!3711 = !DILocation(line: 557, column: 9, scope: !3042, inlinedAt: !3503)
!3712 = !DILocation(line: 557, column: 2, scope: !3042, inlinedAt: !3503)
!3713 = !DILocation(line: 558, column: 1, scope: !3042, inlinedAt: !3503)
!3714 = !DILocation(line: 407, column: 8, scope: !3498)
!3715 = !DILocation(line: 407, column: 6, scope: !3498)
!3716 = !DILocation(line: 408, column: 7, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3498, file: !3, line: 408, column: 6)
!3718 = !DILocation(line: 408, column: 6, scope: !3498)
!3719 = !DILocation(line: 409, column: 9, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3717, file: !3, line: 408, column: 12)
!3721 = !DILocation(line: 409, column: 3, scope: !3720)
!3722 = !DILocation(line: 410, column: 10, scope: !3720)
!3723 = !DILocation(line: 410, column: 3, scope: !3720)
!3724 = !DILocation(line: 412, column: 10, scope: !3498)
!3725 = !DILocation(line: 412, column: 15, scope: !3498)
!3726 = !DILocation(line: 412, column: 14, scope: !3498)
!3727 = !DILocation(line: 412, column: 2, scope: !3498)
!3728 = !DILocation(line: 412, column: 21, scope: !3498)
!3729 = !DILocation(line: 412, column: 30, scope: !3498)
!3730 = !DILocation(line: 413, column: 8, scope: !3498)
!3731 = !DILocation(line: 413, column: 2, scope: !3498)
!3732 = !DILocation(line: 415, column: 21, scope: !3498)
!3733 = !DILocation(line: 415, column: 26, scope: !3498)
!3734 = !DILocation(line: 415, column: 25, scope: !3498)
!3735 = !DILocation(line: 415, column: 12, scope: !3498)
!3736 = !DILocation(line: 415, column: 10, scope: !3498)
!3737 = !DILocation(line: 416, column: 11, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3498, file: !3, line: 416, column: 2)
!3739 = !DILocation(line: 416, column: 9, scope: !3738)
!3740 = !DILocation(line: 416, column: 21, scope: !3738)
!3741 = !DILocation(line: 416, column: 25, scope: !3738)
!3742 = !DILocation(line: 416, column: 7, scope: !3738)
!3743 = !DILocation(line: 416, column: 30, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3738, file: !3, line: 416, column: 2)
!3745 = !DILocation(line: 416, column: 34, scope: !3744)
!3746 = !DILocation(line: 416, column: 44, scope: !3744)
!3747 = !DILocation(line: 416, column: 42, scope: !3744)
!3748 = !DILocation(line: 416, column: 32, scope: !3744)
!3749 = !DILocation(line: 416, column: 2, scope: !3738)
!3750 = !DILocation(line: 417, column: 19, scope: !3744)
!3751 = !DILocation(line: 417, column: 3, scope: !3744)
!3752 = !DILocation(line: 417, column: 9, scope: !3744)
!3753 = !DILocation(line: 417, column: 13, scope: !3744)
!3754 = !DILocation(line: 417, column: 17, scope: !3744)
!3755 = !DILocation(line: 416, column: 61, scope: !3744)
!3756 = !DILocation(line: 416, column: 54, scope: !3744)
!3757 = !DILocation(line: 416, column: 64, scope: !3744)
!3758 = !DILocation(line: 416, column: 51, scope: !3744)
!3759 = !DILocation(line: 416, column: 2, scope: !3744)
!3760 = distinct !{!3760, !3749, !3761}
!3761 = !DILocation(line: 417, column: 19, scope: !3738)
!3762 = !DILocation(line: 419, column: 9, scope: !3498)
!3763 = !DILocation(line: 419, column: 2, scope: !3498)
!3764 = !DILocation(line: 420, column: 1, scope: !3498)
!3765 = distinct !DISubprogram(name: "xenbus_exists", scope: !3, file: !3, line: 442, type: !3766, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!115, !2914, !116, !116}
!3768 = !DILocalVariable(name: "t", arg: 1, scope: !3765, file: !3, line: 442, type: !2914)
!3769 = !DILocation(line: 442, column: 45, scope: !3765)
!3770 = !DILocalVariable(name: "dir", arg: 2, scope: !3765, file: !3, line: 443, type: !116)
!3771 = !DILocation(line: 443, column: 17, scope: !3765)
!3772 = !DILocalVariable(name: "node", arg: 3, scope: !3765, file: !3, line: 443, type: !116)
!3773 = !DILocation(line: 443, column: 34, scope: !3765)
!3774 = !DILocalVariable(name: "d", scope: !3765, file: !3, line: 445, type: !112)
!3775 = !DILocation(line: 445, column: 9, scope: !3765)
!3776 = !DILocalVariable(name: "dir_n", scope: !3765, file: !3, line: 446, type: !115)
!3777 = !DILocation(line: 446, column: 6, scope: !3765)
!3778 = !DILocation(line: 448, column: 26, scope: !3765)
!3779 = !DILocation(line: 448, column: 31, scope: !3765)
!3780 = !DILocation(line: 448, column: 6, scope: !3765)
!3781 = !DILocation(line: 448, column: 4, scope: !3765)
!3782 = !DILocation(line: 449, column: 13, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3765, file: !3, line: 449, column: 6)
!3784 = !DILocation(line: 449, column: 6, scope: !3783)
!3785 = !DILocation(line: 449, column: 6, scope: !3765)
!3786 = !DILocation(line: 450, column: 3, scope: !3783)
!3787 = !DILocation(line: 451, column: 8, scope: !3765)
!3788 = !DILocation(line: 451, column: 2, scope: !3765)
!3789 = !DILocation(line: 452, column: 2, scope: !3765)
!3790 = !DILocation(line: 453, column: 1, scope: !3765)
!3791 = distinct !DISubprogram(name: "xenbus_read", scope: !3, file: !3, line: 460, type: !3792, scopeLine: 462, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!98, !2914, !116, !116, !1337}
!3794 = !DILocalVariable(name: "t", arg: 1, scope: !3791, file: !3, line: 460, type: !2914)
!3795 = !DILocation(line: 460, column: 45, scope: !3791)
!3796 = !DILocalVariable(name: "dir", arg: 2, scope: !3791, file: !3, line: 461, type: !116)
!3797 = !DILocation(line: 461, column: 17, scope: !3791)
!3798 = !DILocalVariable(name: "node", arg: 3, scope: !3791, file: !3, line: 461, type: !116)
!3799 = !DILocation(line: 461, column: 34, scope: !3791)
!3800 = !DILocalVariable(name: "len", arg: 4, scope: !3791, file: !3, line: 461, type: !1337)
!3801 = !DILocation(line: 461, column: 54, scope: !3791)
!3802 = !DILocalVariable(name: "path", scope: !3791, file: !3, line: 463, type: !113)
!3803 = !DILocation(line: 463, column: 8, scope: !3791)
!3804 = !DILocalVariable(name: "ret", scope: !3791, file: !3, line: 464, type: !98)
!3805 = !DILocation(line: 464, column: 8, scope: !3791)
!3806 = !DILocation(line: 466, column: 14, scope: !3791)
!3807 = !DILocation(line: 466, column: 19, scope: !3791)
!3808 = !DILocation(line: 466, column: 9, scope: !3791)
!3809 = !DILocation(line: 466, column: 7, scope: !3791)
!3810 = !DILocation(line: 467, column: 13, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3791, file: !3, line: 467, column: 6)
!3812 = !DILocation(line: 467, column: 6, scope: !3811)
!3813 = !DILocation(line: 467, column: 6, scope: !3791)
!3814 = !DILocation(line: 468, column: 18, scope: !3811)
!3815 = !DILocation(line: 468, column: 3, scope: !3811)
!3816 = !DILocation(line: 470, column: 30, scope: !3791)
!3817 = !DILocation(line: 470, column: 36, scope: !3791)
!3818 = !DILocation(line: 470, column: 8, scope: !3791)
!3819 = !DILocation(line: 470, column: 6, scope: !3791)
!3820 = !DILocation(line: 471, column: 8, scope: !3791)
!3821 = !DILocation(line: 471, column: 2, scope: !3791)
!3822 = !DILocation(line: 472, column: 9, scope: !3791)
!3823 = !DILocation(line: 472, column: 2, scope: !3791)
!3824 = !DILocation(line: 473, column: 1, scope: !3791)
!3825 = distinct !DISubprogram(name: "xenbus_write", scope: !3, file: !3, line: 479, type: !3826, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!115, !2914, !116, !116, !116}
!3828 = !DILocalVariable(name: "t", arg: 1, scope: !3825, file: !3, line: 479, type: !2914)
!3829 = !DILocation(line: 479, column: 44, scope: !3825)
!3830 = !DILocalVariable(name: "dir", arg: 2, scope: !3825, file: !3, line: 480, type: !116)
!3831 = !DILocation(line: 480, column: 16, scope: !3825)
!3832 = !DILocalVariable(name: "node", arg: 3, scope: !3825, file: !3, line: 480, type: !116)
!3833 = !DILocation(line: 480, column: 33, scope: !3825)
!3834 = !DILocalVariable(name: "string", arg: 4, scope: !3825, file: !3, line: 480, type: !116)
!3835 = !DILocation(line: 480, column: 51, scope: !3825)
!3836 = !DILocalVariable(name: "path", scope: !3825, file: !3, line: 482, type: !116)
!3837 = !DILocation(line: 482, column: 14, scope: !3825)
!3838 = !DILocalVariable(name: "iovec", scope: !3825, file: !3, line: 483, type: !3839)
!3839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 256, elements: !1878)
!3840 = !DILocation(line: 483, column: 14, scope: !3825)
!3841 = !DILocalVariable(name: "ret", scope: !3825, file: !3, line: 484, type: !115)
!3842 = !DILocation(line: 484, column: 6, scope: !3825)
!3843 = !DILocation(line: 486, column: 14, scope: !3825)
!3844 = !DILocation(line: 486, column: 19, scope: !3825)
!3845 = !DILocation(line: 486, column: 9, scope: !3825)
!3846 = !DILocation(line: 486, column: 7, scope: !3825)
!3847 = !DILocation(line: 487, column: 13, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3825, file: !3, line: 487, column: 6)
!3849 = !DILocation(line: 487, column: 6, scope: !3848)
!3850 = !DILocation(line: 487, column: 6, scope: !3825)
!3851 = !DILocation(line: 488, column: 18, scope: !3848)
!3852 = !DILocation(line: 488, column: 10, scope: !3848)
!3853 = !DILocation(line: 488, column: 3, scope: !3848)
!3854 = !DILocation(line: 490, column: 30, scope: !3825)
!3855 = !DILocation(line: 490, column: 2, scope: !3825)
!3856 = !DILocation(line: 490, column: 11, scope: !3825)
!3857 = !DILocation(line: 490, column: 20, scope: !3825)
!3858 = !DILocation(line: 491, column: 28, scope: !3825)
!3859 = !DILocation(line: 491, column: 21, scope: !3825)
!3860 = !DILocation(line: 491, column: 34, scope: !3825)
!3861 = !DILocation(line: 491, column: 2, scope: !3825)
!3862 = !DILocation(line: 491, column: 11, scope: !3825)
!3863 = !DILocation(line: 491, column: 19, scope: !3825)
!3864 = !DILocation(line: 492, column: 30, scope: !3825)
!3865 = !DILocation(line: 492, column: 2, scope: !3825)
!3866 = !DILocation(line: 492, column: 11, scope: !3825)
!3867 = !DILocation(line: 492, column: 20, scope: !3825)
!3868 = !DILocation(line: 493, column: 28, scope: !3825)
!3869 = !DILocation(line: 493, column: 21, scope: !3825)
!3870 = !DILocation(line: 493, column: 2, scope: !3825)
!3871 = !DILocation(line: 493, column: 11, scope: !3825)
!3872 = !DILocation(line: 493, column: 19, scope: !3825)
!3873 = !DILocation(line: 495, column: 39, scope: !3825)
!3874 = !DILocation(line: 495, column: 17, scope: !3825)
!3875 = !DILocation(line: 495, column: 8, scope: !3825)
!3876 = !DILocation(line: 495, column: 6, scope: !3825)
!3877 = !DILocation(line: 496, column: 8, scope: !3825)
!3878 = !DILocation(line: 496, column: 2, scope: !3825)
!3879 = !DILocation(line: 497, column: 9, scope: !3825)
!3880 = !DILocation(line: 497, column: 2, scope: !3825)
!3881 = !DILocation(line: 498, column: 1, scope: !3825)
!3882 = distinct !DISubprogram(name: "PTR_ERR", scope: !3464, file: !3464, line: 29, type: !3883, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!118, !3467}
!3885 = !DILocalVariable(name: "ptr", arg: 1, scope: !3882, file: !3464, line: 29, type: !3467)
!3886 = !DILocation(line: 29, column: 61, scope: !3882)
!3887 = !DILocation(line: 31, column: 16, scope: !3882)
!3888 = !DILocation(line: 31, column: 9, scope: !3882)
!3889 = !DILocation(line: 31, column: 2, scope: !3882)
!3890 = distinct !DISubprogram(name: "xs_error", scope: !3, file: !3, line: 368, type: !3891, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!115, !113}
!3893 = !DILocalVariable(name: "reply", arg: 1, scope: !3890, file: !3, line: 368, type: !113)
!3894 = !DILocation(line: 368, column: 27, scope: !3890)
!3895 = !DILocation(line: 370, column: 13, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3890, file: !3, line: 370, column: 6)
!3897 = !DILocation(line: 370, column: 6, scope: !3896)
!3898 = !DILocation(line: 370, column: 6, scope: !3890)
!3899 = !DILocation(line: 371, column: 18, scope: !3896)
!3900 = !DILocation(line: 371, column: 10, scope: !3896)
!3901 = !DILocation(line: 371, column: 3, scope: !3896)
!3902 = !DILocation(line: 372, column: 8, scope: !3890)
!3903 = !DILocation(line: 372, column: 2, scope: !3890)
!3904 = !DILocation(line: 373, column: 2, scope: !3890)
!3905 = !DILocation(line: 374, column: 1, scope: !3890)
!3906 = !DILocation(line: 445, column: 72, scope: !3035, inlinedAt: !3907)
!3907 = distinct !DILocation(line: 552, column: 10, scope: !3040, inlinedAt: !3908)
!3908 = distinct !DILocation(line: 314, column: 8, scope: !2911)
!3909 = !DILocation(line: 446, column: 9, scope: !3035, inlinedAt: !3907)
!3910 = !DILocation(line: 446, column: 23, scope: !3035, inlinedAt: !3907)
!3911 = !DILocation(line: 448, column: 8, scope: !3035, inlinedAt: !3907)
!3912 = !DILocation(line: 318, column: 67, scope: !3053, inlinedAt: !3913)
!3913 = distinct !DILocation(line: 553, column: 20, scope: !3040, inlinedAt: !3908)
!3914 = !DILocation(line: 346, column: 58, scope: !3059, inlinedAt: !3915)
!3915 = distinct !DILocation(line: 547, column: 11, scope: !3040, inlinedAt: !3908)
!3916 = !DILocation(line: 472, column: 28, scope: !3065, inlinedAt: !3917)
!3917 = distinct !DILocation(line: 481, column: 9, scope: !3070, inlinedAt: !3918)
!3918 = distinct !DILocation(line: 545, column: 11, scope: !3072, inlinedAt: !3908)
!3919 = !DILocation(line: 472, column: 40, scope: !3065, inlinedAt: !3917)
!3920 = !DILocation(line: 472, column: 60, scope: !3065, inlinedAt: !3917)
!3921 = !DILocation(line: 478, column: 51, scope: !3070, inlinedAt: !3918)
!3922 = !DILocation(line: 478, column: 63, scope: !3070, inlinedAt: !3918)
!3923 = !DILocation(line: 480, column: 15, scope: !3070, inlinedAt: !3918)
!3924 = !DILocation(line: 538, column: 45, scope: !3042, inlinedAt: !3908)
!3925 = !DILocation(line: 538, column: 57, scope: !3042, inlinedAt: !3908)
!3926 = !DILocation(line: 542, column: 16, scope: !3040, inlinedAt: !3908)
!3927 = !DILocalVariable(name: "t", arg: 1, scope: !2911, file: !3, line: 302, type: !2914)
!3928 = !DILocation(line: 302, column: 49, scope: !2911)
!3929 = !DILocalVariable(name: "type", arg: 2, scope: !2911, file: !3, line: 303, type: !5)
!3930 = !DILocation(line: 303, column: 31, scope: !2911)
!3931 = !DILocalVariable(name: "iovec", arg: 3, scope: !2911, file: !3, line: 304, type: !913)
!3932 = !DILocation(line: 304, column: 28, scope: !2911)
!3933 = !DILocalVariable(name: "num_vecs", arg: 4, scope: !2911, file: !3, line: 305, type: !7)
!3934 = !DILocation(line: 305, column: 22, scope: !2911)
!3935 = !DILocalVariable(name: "len", arg: 5, scope: !2911, file: !3, line: 306, type: !1337)
!3936 = !DILocation(line: 306, column: 23, scope: !2911)
!3937 = !DILocalVariable(name: "req", scope: !2911, file: !3, line: 308, type: !2865)
!3938 = !DILocation(line: 308, column: 22, scope: !2911)
!3939 = !DILocalVariable(name: "msg", scope: !2911, file: !3, line: 309, type: !2871)
!3940 = !DILocation(line: 309, column: 21, scope: !2911)
!3941 = !DILocalVariable(name: "ret", scope: !2911, file: !3, line: 310, type: !98)
!3942 = !DILocation(line: 310, column: 8, scope: !2911)
!3943 = !DILocalVariable(name: "i", scope: !2911, file: !3, line: 311, type: !7)
!3944 = !DILocation(line: 311, column: 15, scope: !2911)
!3945 = !DILocalVariable(name: "err", scope: !2911, file: !3, line: 312, type: !115)
!3946 = !DILocation(line: 312, column: 6, scope: !2911)
!3947 = !DILocation(line: 540, column: 27, scope: !3041, inlinedAt: !3908)
!3948 = !DILocation(line: 540, column: 6, scope: !3041, inlinedAt: !3908)
!3949 = !DILocation(line: 540, column: 6, scope: !3042, inlinedAt: !3908)
!3950 = !DILocation(line: 544, column: 7, scope: !3072, inlinedAt: !3908)
!3951 = !DILocation(line: 544, column: 12, scope: !3072, inlinedAt: !3908)
!3952 = !DILocation(line: 544, column: 7, scope: !3040, inlinedAt: !3908)
!3953 = !DILocation(line: 545, column: 25, scope: !3072, inlinedAt: !3908)
!3954 = !DILocation(line: 545, column: 31, scope: !3072, inlinedAt: !3908)
!3955 = !DILocation(line: 480, column: 33, scope: !3070, inlinedAt: !3918)
!3956 = !DILocation(line: 480, column: 23, scope: !3070, inlinedAt: !3918)
!3957 = !DILocation(line: 481, column: 29, scope: !3070, inlinedAt: !3918)
!3958 = !DILocation(line: 481, column: 35, scope: !3070, inlinedAt: !3918)
!3959 = !DILocation(line: 481, column: 42, scope: !3070, inlinedAt: !3918)
!3960 = !DILocation(line: 474, column: 23, scope: !3065, inlinedAt: !3917)
!3961 = !DILocation(line: 474, column: 29, scope: !3065, inlinedAt: !3917)
!3962 = !DILocation(line: 474, column: 36, scope: !3065, inlinedAt: !3917)
!3963 = !DILocation(line: 474, column: 9, scope: !3065, inlinedAt: !3917)
!3964 = !DILocation(line: 545, column: 4, scope: !3072, inlinedAt: !3908)
!3965 = !DILocation(line: 547, column: 25, scope: !3040, inlinedAt: !3908)
!3966 = !DILocation(line: 348, column: 7, scope: !3117, inlinedAt: !3915)
!3967 = !DILocation(line: 348, column: 6, scope: !3059, inlinedAt: !3915)
!3968 = !DILocation(line: 349, column: 3, scope: !3117, inlinedAt: !3915)
!3969 = !DILocation(line: 351, column: 6, scope: !3121, inlinedAt: !3915)
!3970 = !DILocation(line: 351, column: 11, scope: !3121, inlinedAt: !3915)
!3971 = !DILocation(line: 351, column: 6, scope: !3059, inlinedAt: !3915)
!3972 = !DILocation(line: 352, column: 3, scope: !3121, inlinedAt: !3915)
!3973 = !DILocation(line: 354, column: 32, scope: !3126, inlinedAt: !3915)
!3974 = !DILocation(line: 354, column: 37, scope: !3126, inlinedAt: !3915)
!3975 = !DILocation(line: 354, column: 42, scope: !3126, inlinedAt: !3915)
!3976 = !DILocation(line: 354, column: 45, scope: !3126, inlinedAt: !3915)
!3977 = !DILocation(line: 354, column: 50, scope: !3126, inlinedAt: !3915)
!3978 = !DILocation(line: 354, column: 6, scope: !3059, inlinedAt: !3915)
!3979 = !DILocation(line: 355, column: 3, scope: !3126, inlinedAt: !3915)
!3980 = !DILocation(line: 356, column: 32, scope: !3134, inlinedAt: !3915)
!3981 = !DILocation(line: 356, column: 37, scope: !3134, inlinedAt: !3915)
!3982 = !DILocation(line: 356, column: 43, scope: !3134, inlinedAt: !3915)
!3983 = !DILocation(line: 356, column: 46, scope: !3134, inlinedAt: !3915)
!3984 = !DILocation(line: 356, column: 51, scope: !3134, inlinedAt: !3915)
!3985 = !DILocation(line: 356, column: 6, scope: !3059, inlinedAt: !3915)
!3986 = !DILocation(line: 357, column: 3, scope: !3134, inlinedAt: !3915)
!3987 = !DILocation(line: 358, column: 6, scope: !3142, inlinedAt: !3915)
!3988 = !DILocation(line: 358, column: 11, scope: !3142, inlinedAt: !3915)
!3989 = !DILocation(line: 358, column: 6, scope: !3059, inlinedAt: !3915)
!3990 = !DILocation(line: 358, column: 26, scope: !3142, inlinedAt: !3915)
!3991 = !DILocation(line: 359, column: 6, scope: !3147, inlinedAt: !3915)
!3992 = !DILocation(line: 359, column: 11, scope: !3147, inlinedAt: !3915)
!3993 = !DILocation(line: 359, column: 6, scope: !3059, inlinedAt: !3915)
!3994 = !DILocation(line: 359, column: 26, scope: !3147, inlinedAt: !3915)
!3995 = !DILocation(line: 360, column: 6, scope: !3152, inlinedAt: !3915)
!3996 = !DILocation(line: 360, column: 11, scope: !3152, inlinedAt: !3915)
!3997 = !DILocation(line: 360, column: 6, scope: !3059, inlinedAt: !3915)
!3998 = !DILocation(line: 360, column: 26, scope: !3152, inlinedAt: !3915)
!3999 = !DILocation(line: 361, column: 6, scope: !3157, inlinedAt: !3915)
!4000 = !DILocation(line: 361, column: 11, scope: !3157, inlinedAt: !3915)
!4001 = !DILocation(line: 361, column: 6, scope: !3059, inlinedAt: !3915)
!4002 = !DILocation(line: 361, column: 26, scope: !3157, inlinedAt: !3915)
!4003 = !DILocation(line: 362, column: 6, scope: !3162, inlinedAt: !3915)
!4004 = !DILocation(line: 362, column: 11, scope: !3162, inlinedAt: !3915)
!4005 = !DILocation(line: 362, column: 6, scope: !3059, inlinedAt: !3915)
!4006 = !DILocation(line: 362, column: 26, scope: !3162, inlinedAt: !3915)
!4007 = !DILocation(line: 363, column: 6, scope: !3167, inlinedAt: !3915)
!4008 = !DILocation(line: 363, column: 11, scope: !3167, inlinedAt: !3915)
!4009 = !DILocation(line: 363, column: 6, scope: !3059, inlinedAt: !3915)
!4010 = !DILocation(line: 363, column: 26, scope: !3167, inlinedAt: !3915)
!4011 = !DILocation(line: 364, column: 6, scope: !3172, inlinedAt: !3915)
!4012 = !DILocation(line: 364, column: 11, scope: !3172, inlinedAt: !3915)
!4013 = !DILocation(line: 364, column: 6, scope: !3059, inlinedAt: !3915)
!4014 = !DILocation(line: 364, column: 26, scope: !3172, inlinedAt: !3915)
!4015 = !DILocation(line: 365, column: 6, scope: !3177, inlinedAt: !3915)
!4016 = !DILocation(line: 365, column: 11, scope: !3177, inlinedAt: !3915)
!4017 = !DILocation(line: 365, column: 6, scope: !3059, inlinedAt: !3915)
!4018 = !DILocation(line: 365, column: 26, scope: !3177, inlinedAt: !3915)
!4019 = !DILocation(line: 366, column: 6, scope: !3182, inlinedAt: !3915)
!4020 = !DILocation(line: 366, column: 11, scope: !3182, inlinedAt: !3915)
!4021 = !DILocation(line: 366, column: 6, scope: !3059, inlinedAt: !3915)
!4022 = !DILocation(line: 366, column: 26, scope: !3182, inlinedAt: !3915)
!4023 = !DILocation(line: 367, column: 6, scope: !3187, inlinedAt: !3915)
!4024 = !DILocation(line: 367, column: 11, scope: !3187, inlinedAt: !3915)
!4025 = !DILocation(line: 367, column: 6, scope: !3059, inlinedAt: !3915)
!4026 = !DILocation(line: 367, column: 26, scope: !3187, inlinedAt: !3915)
!4027 = !DILocation(line: 368, column: 6, scope: !3192, inlinedAt: !3915)
!4028 = !DILocation(line: 368, column: 11, scope: !3192, inlinedAt: !3915)
!4029 = !DILocation(line: 368, column: 6, scope: !3059, inlinedAt: !3915)
!4030 = !DILocation(line: 368, column: 26, scope: !3192, inlinedAt: !3915)
!4031 = !DILocation(line: 369, column: 6, scope: !3197, inlinedAt: !3915)
!4032 = !DILocation(line: 369, column: 11, scope: !3197, inlinedAt: !3915)
!4033 = !DILocation(line: 369, column: 6, scope: !3059, inlinedAt: !3915)
!4034 = !DILocation(line: 369, column: 26, scope: !3197, inlinedAt: !3915)
!4035 = !DILocation(line: 370, column: 6, scope: !3202, inlinedAt: !3915)
!4036 = !DILocation(line: 370, column: 11, scope: !3202, inlinedAt: !3915)
!4037 = !DILocation(line: 370, column: 6, scope: !3059, inlinedAt: !3915)
!4038 = !DILocation(line: 370, column: 26, scope: !3202, inlinedAt: !3915)
!4039 = !DILocation(line: 371, column: 6, scope: !3207, inlinedAt: !3915)
!4040 = !DILocation(line: 371, column: 11, scope: !3207, inlinedAt: !3915)
!4041 = !DILocation(line: 371, column: 6, scope: !3059, inlinedAt: !3915)
!4042 = !DILocation(line: 371, column: 26, scope: !3207, inlinedAt: !3915)
!4043 = !DILocation(line: 372, column: 6, scope: !3212, inlinedAt: !3915)
!4044 = !DILocation(line: 372, column: 11, scope: !3212, inlinedAt: !3915)
!4045 = !DILocation(line: 372, column: 6, scope: !3059, inlinedAt: !3915)
!4046 = !DILocation(line: 372, column: 26, scope: !3212, inlinedAt: !3915)
!4047 = !DILocation(line: 373, column: 6, scope: !3217, inlinedAt: !3915)
!4048 = !DILocation(line: 373, column: 11, scope: !3217, inlinedAt: !3915)
!4049 = !DILocation(line: 373, column: 6, scope: !3059, inlinedAt: !3915)
!4050 = !DILocation(line: 373, column: 26, scope: !3217, inlinedAt: !3915)
!4051 = !DILocation(line: 374, column: 6, scope: !3222, inlinedAt: !3915)
!4052 = !DILocation(line: 374, column: 11, scope: !3222, inlinedAt: !3915)
!4053 = !DILocation(line: 374, column: 6, scope: !3059, inlinedAt: !3915)
!4054 = !DILocation(line: 374, column: 26, scope: !3222, inlinedAt: !3915)
!4055 = !DILocation(line: 375, column: 6, scope: !3227, inlinedAt: !3915)
!4056 = !DILocation(line: 375, column: 11, scope: !3227, inlinedAt: !3915)
!4057 = !DILocation(line: 375, column: 6, scope: !3059, inlinedAt: !3915)
!4058 = !DILocation(line: 375, column: 27, scope: !3227, inlinedAt: !3915)
!4059 = !DILocation(line: 376, column: 6, scope: !3232, inlinedAt: !3915)
!4060 = !DILocation(line: 376, column: 11, scope: !3232, inlinedAt: !3915)
!4061 = !DILocation(line: 376, column: 6, scope: !3059, inlinedAt: !3915)
!4062 = !DILocation(line: 376, column: 32, scope: !3232, inlinedAt: !3915)
!4063 = !DILocation(line: 377, column: 6, scope: !3237, inlinedAt: !3915)
!4064 = !DILocation(line: 377, column: 11, scope: !3237, inlinedAt: !3915)
!4065 = !DILocation(line: 377, column: 6, scope: !3059, inlinedAt: !3915)
!4066 = !DILocation(line: 377, column: 32, scope: !3237, inlinedAt: !3915)
!4067 = !DILocation(line: 378, column: 6, scope: !3242, inlinedAt: !3915)
!4068 = !DILocation(line: 378, column: 11, scope: !3242, inlinedAt: !3915)
!4069 = !DILocation(line: 378, column: 6, scope: !3059, inlinedAt: !3915)
!4070 = !DILocation(line: 378, column: 32, scope: !3242, inlinedAt: !3915)
!4071 = !DILocation(line: 379, column: 6, scope: !3247, inlinedAt: !3915)
!4072 = !DILocation(line: 379, column: 11, scope: !3247, inlinedAt: !3915)
!4073 = !DILocation(line: 379, column: 6, scope: !3059, inlinedAt: !3915)
!4074 = !DILocation(line: 379, column: 33, scope: !3247, inlinedAt: !3915)
!4075 = !DILocation(line: 380, column: 6, scope: !3252, inlinedAt: !3915)
!4076 = !DILocation(line: 380, column: 11, scope: !3252, inlinedAt: !3915)
!4077 = !DILocation(line: 380, column: 6, scope: !3059, inlinedAt: !3915)
!4078 = !DILocation(line: 380, column: 33, scope: !3252, inlinedAt: !3915)
!4079 = !DILocation(line: 381, column: 6, scope: !3257, inlinedAt: !3915)
!4080 = !DILocation(line: 381, column: 11, scope: !3257, inlinedAt: !3915)
!4081 = !DILocation(line: 381, column: 6, scope: !3059, inlinedAt: !3915)
!4082 = !DILocation(line: 381, column: 33, scope: !3257, inlinedAt: !3915)
!4083 = !DILocation(line: 382, column: 2, scope: !3262, inlinedAt: !3915)
!4084 = !DILocation(line: 382, column: 2, scope: !3266, inlinedAt: !3915)
!4085 = !DILocation(line: 382, column: 2, scope: !3267, inlinedAt: !3915)
!4086 = !DILocation(line: 386, column: 1, scope: !3059, inlinedAt: !3915)
!4087 = !DILocation(line: 547, column: 9, scope: !3040, inlinedAt: !3908)
!4088 = !DILocation(line: 549, column: 8, scope: !3273, inlinedAt: !3908)
!4089 = !DILocation(line: 549, column: 7, scope: !3040, inlinedAt: !3908)
!4090 = !DILocation(line: 550, column: 4, scope: !3273, inlinedAt: !3908)
!4091 = !DILocation(line: 553, column: 33, scope: !3040, inlinedAt: !3908)
!4092 = !DILocation(line: 325, column: 6, scope: !3278, inlinedAt: !3913)
!4093 = !DILocation(line: 325, column: 6, scope: !3053, inlinedAt: !3913)
!4094 = !DILocation(line: 326, column: 3, scope: !3278, inlinedAt: !3913)
!4095 = !DILocation(line: 332, column: 9, scope: !3053, inlinedAt: !3913)
!4096 = !DILocation(line: 332, column: 15, scope: !3053, inlinedAt: !3913)
!4097 = !DILocation(line: 332, column: 2, scope: !3053, inlinedAt: !3913)
!4098 = !DILocation(line: 336, column: 1, scope: !3053, inlinedAt: !3913)
!4099 = !DILocation(line: 553, column: 5, scope: !3040, inlinedAt: !3908)
!4100 = !DILocation(line: 553, column: 41, scope: !3040, inlinedAt: !3908)
!4101 = !DILocation(line: 554, column: 5, scope: !3040, inlinedAt: !3908)
!4102 = !DILocation(line: 554, column: 12, scope: !3040, inlinedAt: !3908)
!4103 = !DILocation(line: 448, column: 31, scope: !3035, inlinedAt: !3907)
!4104 = !DILocation(line: 448, column: 34, scope: !3035, inlinedAt: !3907)
!4105 = !DILocation(line: 448, column: 14, scope: !3035, inlinedAt: !3907)
!4106 = !DILocation(line: 450, column: 22, scope: !3035, inlinedAt: !3907)
!4107 = !DILocation(line: 450, column: 25, scope: !3035, inlinedAt: !3907)
!4108 = !DILocation(line: 450, column: 30, scope: !3035, inlinedAt: !3907)
!4109 = !DILocation(line: 450, column: 36, scope: !3035, inlinedAt: !3907)
!4110 = !DILocation(line: 450, column: 8, scope: !3035, inlinedAt: !3907)
!4111 = !DILocation(line: 450, column: 6, scope: !3035, inlinedAt: !3907)
!4112 = !DILocation(line: 451, column: 9, scope: !3035, inlinedAt: !3907)
!4113 = !DILocation(line: 552, column: 3, scope: !3040, inlinedAt: !3908)
!4114 = !DILocation(line: 557, column: 19, scope: !3042, inlinedAt: !3908)
!4115 = !DILocation(line: 557, column: 25, scope: !3042, inlinedAt: !3908)
!4116 = !DILocation(line: 557, column: 9, scope: !3042, inlinedAt: !3908)
!4117 = !DILocation(line: 557, column: 2, scope: !3042, inlinedAt: !3908)
!4118 = !DILocation(line: 558, column: 1, scope: !3042, inlinedAt: !3908)
!4119 = !DILocation(line: 314, column: 8, scope: !2911)
!4120 = !DILocation(line: 314, column: 6, scope: !2911)
!4121 = !DILocation(line: 315, column: 7, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !2911, file: !3, line: 315, column: 6)
!4123 = !DILocation(line: 315, column: 6, scope: !2911)
!4124 = !DILocation(line: 316, column: 10, scope: !4122)
!4125 = !DILocation(line: 316, column: 3, scope: !4122)
!4126 = !DILocation(line: 318, column: 13, scope: !2911)
!4127 = !DILocation(line: 318, column: 2, scope: !2911)
!4128 = !DILocation(line: 318, column: 7, scope: !2911)
!4129 = !DILocation(line: 318, column: 11, scope: !2911)
!4130 = !DILocation(line: 319, column: 18, scope: !2911)
!4131 = !DILocation(line: 319, column: 2, scope: !2911)
!4132 = !DILocation(line: 319, column: 7, scope: !2911)
!4133 = !DILocation(line: 319, column: 16, scope: !2911)
!4134 = !DILocation(line: 320, column: 2, scope: !2911)
!4135 = !DILocation(line: 320, column: 7, scope: !2911)
!4136 = !DILocation(line: 320, column: 10, scope: !2911)
!4137 = !DILocation(line: 321, column: 2, scope: !2911)
!4138 = !DILocation(line: 321, column: 7, scope: !2911)
!4139 = !DILocation(line: 321, column: 16, scope: !2911)
!4140 = !DILocation(line: 323, column: 6, scope: !2911)
!4141 = !DILocation(line: 323, column: 13, scope: !2911)
!4142 = !DILocation(line: 324, column: 16, scope: !2911)
!4143 = !DILocation(line: 324, column: 6, scope: !2911)
!4144 = !DILocation(line: 324, column: 12, scope: !2911)
!4145 = !DILocation(line: 325, column: 13, scope: !2911)
!4146 = !DILocation(line: 325, column: 6, scope: !2911)
!4147 = !DILocation(line: 325, column: 11, scope: !2911)
!4148 = !DILocation(line: 326, column: 6, scope: !2911)
!4149 = !DILocation(line: 326, column: 10, scope: !2911)
!4150 = !DILocation(line: 327, column: 9, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !2911, file: !3, line: 327, column: 2)
!4152 = !DILocation(line: 327, column: 7, scope: !4151)
!4153 = !DILocation(line: 327, column: 14, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4151, file: !3, line: 327, column: 2)
!4155 = !DILocation(line: 327, column: 18, scope: !4154)
!4156 = !DILocation(line: 327, column: 16, scope: !4154)
!4157 = !DILocation(line: 327, column: 2, scope: !4151)
!4158 = !DILocation(line: 328, column: 14, scope: !4154)
!4159 = !DILocation(line: 328, column: 20, scope: !4154)
!4160 = !DILocation(line: 328, column: 23, scope: !4154)
!4161 = !DILocation(line: 328, column: 7, scope: !4154)
!4162 = !DILocation(line: 328, column: 11, scope: !4154)
!4163 = !DILocation(line: 328, column: 3, scope: !4154)
!4164 = !DILocation(line: 327, column: 29, scope: !4154)
!4165 = !DILocation(line: 327, column: 2, scope: !4154)
!4166 = distinct !{!4166, !4157, !4167}
!4167 = !DILocation(line: 328, column: 23, scope: !4151)
!4168 = !DILocation(line: 330, column: 10, scope: !2911)
!4169 = !DILocation(line: 330, column: 2, scope: !2911)
!4170 = !DILocation(line: 332, column: 26, scope: !2911)
!4171 = !DILocation(line: 332, column: 8, scope: !2911)
!4172 = !DILocation(line: 332, column: 6, scope: !2911)
!4173 = !DILocation(line: 333, column: 6, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !2911, file: !3, line: 333, column: 6)
!4175 = !DILocation(line: 333, column: 6, scope: !2911)
!4176 = !DILocation(line: 334, column: 14, scope: !4174)
!4177 = !DILocation(line: 334, column: 4, scope: !4174)
!4178 = !DILocation(line: 334, column: 8, scope: !4174)
!4179 = !DILocation(line: 334, column: 3, scope: !4174)
!4180 = !DILocation(line: 336, column: 13, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !2911, file: !3, line: 336, column: 6)
!4182 = !DILocation(line: 336, column: 6, scope: !4181)
!4183 = !DILocation(line: 336, column: 6, scope: !2911)
!4184 = !DILocation(line: 337, column: 10, scope: !4181)
!4185 = !DILocation(line: 337, column: 3, scope: !4181)
!4186 = !DILocation(line: 339, column: 10, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !2911, file: !3, line: 339, column: 6)
!4188 = !DILocation(line: 339, column: 15, scope: !4187)
!4189 = !DILocation(line: 339, column: 6, scope: !2911)
!4190 = !DILocation(line: 340, column: 19, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4187, file: !3, line: 339, column: 28)
!4192 = !DILocation(line: 340, column: 9, scope: !4191)
!4193 = !DILocation(line: 340, column: 7, scope: !4191)
!4194 = !DILocation(line: 341, column: 9, scope: !4191)
!4195 = !DILocation(line: 341, column: 3, scope: !4191)
!4196 = !DILocation(line: 342, column: 19, scope: !4191)
!4197 = !DILocation(line: 342, column: 18, scope: !4191)
!4198 = !DILocation(line: 342, column: 10, scope: !4191)
!4199 = !DILocation(line: 342, column: 3, scope: !4191)
!4200 = !DILocation(line: 345, column: 10, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !2911, file: !3, line: 345, column: 6)
!4202 = !DILocation(line: 345, column: 18, scope: !4201)
!4203 = !DILocation(line: 345, column: 15, scope: !4201)
!4204 = !DILocation(line: 345, column: 6, scope: !2911)
!4205 = !DILocation(line: 346, column: 3, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4207, file: !3, line: 346, column: 3)
!4207 = distinct !DILexicalBlock(scope: !4208, file: !3, line: 346, column: 3)
!4208 = distinct !DILexicalBlock(scope: !4201, file: !3, line: 345, column: 24)
!4209 = !DILocation(line: 346, column: 3, scope: !4207)
!4210 = !DILocation(line: 348, column: 9, scope: !4208)
!4211 = !DILocation(line: 348, column: 3, scope: !4208)
!4212 = !DILocation(line: 349, column: 10, scope: !4208)
!4213 = !DILocation(line: 349, column: 3, scope: !4208)
!4214 = !DILocation(line: 351, column: 9, scope: !2911)
!4215 = !DILocation(line: 351, column: 2, scope: !2911)
!4216 = !DILocation(line: 352, column: 1, scope: !2911)
!4217 = distinct !DISubprogram(name: "xenbus_mkdir", scope: !3, file: !3, line: 502, type: !3766, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4218 = !DILocalVariable(name: "t", arg: 1, scope: !4217, file: !3, line: 502, type: !2914)
!4219 = !DILocation(line: 502, column: 44, scope: !4217)
!4220 = !DILocalVariable(name: "dir", arg: 2, scope: !4217, file: !3, line: 503, type: !116)
!4221 = !DILocation(line: 503, column: 16, scope: !4217)
!4222 = !DILocalVariable(name: "node", arg: 3, scope: !4217, file: !3, line: 503, type: !116)
!4223 = !DILocation(line: 503, column: 33, scope: !4217)
!4224 = !DILocalVariable(name: "path", scope: !4217, file: !3, line: 505, type: !113)
!4225 = !DILocation(line: 505, column: 8, scope: !4217)
!4226 = !DILocalVariable(name: "ret", scope: !4217, file: !3, line: 506, type: !115)
!4227 = !DILocation(line: 506, column: 6, scope: !4217)
!4228 = !DILocation(line: 508, column: 14, scope: !4217)
!4229 = !DILocation(line: 508, column: 19, scope: !4217)
!4230 = !DILocation(line: 508, column: 9, scope: !4217)
!4231 = !DILocation(line: 508, column: 7, scope: !4217)
!4232 = !DILocation(line: 509, column: 13, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4217, file: !3, line: 509, column: 6)
!4234 = !DILocation(line: 509, column: 6, scope: !4233)
!4235 = !DILocation(line: 509, column: 6, scope: !4217)
!4236 = !DILocation(line: 510, column: 18, scope: !4233)
!4237 = !DILocation(line: 510, column: 10, scope: !4233)
!4238 = !DILocation(line: 510, column: 3, scope: !4233)
!4239 = !DILocation(line: 512, column: 40, scope: !4217)
!4240 = !DILocation(line: 512, column: 17, scope: !4217)
!4241 = !DILocation(line: 512, column: 8, scope: !4217)
!4242 = !DILocation(line: 512, column: 6, scope: !4217)
!4243 = !DILocation(line: 513, column: 8, scope: !4217)
!4244 = !DILocation(line: 513, column: 2, scope: !4217)
!4245 = !DILocation(line: 514, column: 9, scope: !4217)
!4246 = !DILocation(line: 514, column: 2, scope: !4217)
!4247 = !DILocation(line: 515, column: 1, scope: !4217)
!4248 = distinct !DISubprogram(name: "xenbus_rm", scope: !3, file: !3, line: 519, type: !3766, scopeLine: 520, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4249 = !DILocalVariable(name: "t", arg: 1, scope: !4248, file: !3, line: 519, type: !2914)
!4250 = !DILocation(line: 519, column: 41, scope: !4248)
!4251 = !DILocalVariable(name: "dir", arg: 2, scope: !4248, file: !3, line: 519, type: !116)
!4252 = !DILocation(line: 519, column: 56, scope: !4248)
!4253 = !DILocalVariable(name: "node", arg: 3, scope: !4248, file: !3, line: 519, type: !116)
!4254 = !DILocation(line: 519, column: 73, scope: !4248)
!4255 = !DILocalVariable(name: "path", scope: !4248, file: !3, line: 521, type: !113)
!4256 = !DILocation(line: 521, column: 8, scope: !4248)
!4257 = !DILocalVariable(name: "ret", scope: !4248, file: !3, line: 522, type: !115)
!4258 = !DILocation(line: 522, column: 6, scope: !4248)
!4259 = !DILocation(line: 524, column: 14, scope: !4248)
!4260 = !DILocation(line: 524, column: 19, scope: !4248)
!4261 = !DILocation(line: 524, column: 9, scope: !4248)
!4262 = !DILocation(line: 524, column: 7, scope: !4248)
!4263 = !DILocation(line: 525, column: 13, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4248, file: !3, line: 525, column: 6)
!4265 = !DILocation(line: 525, column: 6, scope: !4264)
!4266 = !DILocation(line: 525, column: 6, scope: !4248)
!4267 = !DILocation(line: 526, column: 18, scope: !4264)
!4268 = !DILocation(line: 526, column: 10, scope: !4264)
!4269 = !DILocation(line: 526, column: 3, scope: !4264)
!4270 = !DILocation(line: 528, column: 37, scope: !4248)
!4271 = !DILocation(line: 528, column: 17, scope: !4248)
!4272 = !DILocation(line: 528, column: 8, scope: !4248)
!4273 = !DILocation(line: 528, column: 6, scope: !4248)
!4274 = !DILocation(line: 529, column: 8, scope: !4248)
!4275 = !DILocation(line: 529, column: 2, scope: !4248)
!4276 = !DILocation(line: 530, column: 9, scope: !4248)
!4277 = !DILocation(line: 530, column: 2, scope: !4248)
!4278 = !DILocation(line: 531, column: 1, scope: !4248)
!4279 = distinct !DISubprogram(name: "xenbus_transaction_start", scope: !3, file: !3, line: 537, type: !4280, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!115, !4282}
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!4283 = !DILocalVariable(name: "t", arg: 1, scope: !4279, file: !3, line: 537, type: !4282)
!4284 = !DILocation(line: 537, column: 57, scope: !4279)
!4285 = !DILocalVariable(name: "id_str", scope: !4279, file: !3, line: 539, type: !113)
!4286 = !DILocation(line: 539, column: 8, scope: !4279)
!4287 = !DILocation(line: 541, column: 21, scope: !4279)
!4288 = !DILocation(line: 541, column: 11, scope: !4279)
!4289 = !DILocation(line: 541, column: 9, scope: !4279)
!4290 = !DILocation(line: 542, column: 13, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4279, file: !3, line: 542, column: 6)
!4292 = !DILocation(line: 542, column: 6, scope: !4291)
!4293 = !DILocation(line: 542, column: 6, scope: !4279)
!4294 = !DILocation(line: 543, column: 18, scope: !4291)
!4295 = !DILocation(line: 543, column: 10, scope: !4291)
!4296 = !DILocation(line: 543, column: 3, scope: !4291)
!4297 = !DILocation(line: 545, column: 25, scope: !4279)
!4298 = !DILocation(line: 545, column: 10, scope: !4279)
!4299 = !DILocation(line: 545, column: 2, scope: !4279)
!4300 = !DILocation(line: 545, column: 5, scope: !4279)
!4301 = !DILocation(line: 545, column: 8, scope: !4279)
!4302 = !DILocation(line: 546, column: 8, scope: !4279)
!4303 = !DILocation(line: 546, column: 2, scope: !4279)
!4304 = !DILocation(line: 547, column: 2, scope: !4279)
!4305 = !DILocation(line: 548, column: 1, scope: !4279)
!4306 = distinct !DISubprogram(name: "xenbus_transaction_end", scope: !3, file: !3, line: 554, type: !4307, scopeLine: 555, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!115, !2914, !115}
!4309 = !DILocalVariable(name: "t", arg: 1, scope: !4306, file: !3, line: 554, type: !2914)
!4310 = !DILocation(line: 554, column: 54, scope: !4306)
!4311 = !DILocalVariable(name: "abort", arg: 2, scope: !4306, file: !3, line: 554, type: !115)
!4312 = !DILocation(line: 554, column: 61, scope: !4306)
!4313 = !DILocalVariable(name: "abortstr", scope: !4306, file: !3, line: 556, type: !4314)
!4314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 16, elements: !1878)
!4315 = !DILocation(line: 556, column: 7, scope: !4306)
!4316 = !DILocation(line: 558, column: 6, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4306, file: !3, line: 558, column: 6)
!4318 = !DILocation(line: 558, column: 6, scope: !4306)
!4319 = !DILocation(line: 559, column: 10, scope: !4317)
!4320 = !DILocation(line: 559, column: 3, scope: !4317)
!4321 = !DILocation(line: 561, column: 10, scope: !4317)
!4322 = !DILocation(line: 561, column: 3, scope: !4317)
!4323 = !DILocation(line: 563, column: 51, scope: !4306)
!4324 = !DILocation(line: 563, column: 18, scope: !4306)
!4325 = !DILocation(line: 563, column: 9, scope: !4306)
!4326 = !DILocation(line: 563, column: 2, scope: !4306)
!4327 = distinct !DISubprogram(name: "xenbus_scanf", scope: !3, file: !3, line: 568, type: !4328, scopeLine: 570, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4328 = !DISubroutineType(types: !4329)
!4329 = !{!115, !2914, !116, !116, !116, null}
!4330 = !DILocalVariable(name: "t", arg: 1, scope: !4327, file: !3, line: 568, type: !2914)
!4331 = !DILocation(line: 568, column: 44, scope: !4327)
!4332 = !DILocalVariable(name: "dir", arg: 2, scope: !4327, file: !3, line: 569, type: !116)
!4333 = !DILocation(line: 569, column: 16, scope: !4327)
!4334 = !DILocalVariable(name: "node", arg: 3, scope: !4327, file: !3, line: 569, type: !116)
!4335 = !DILocation(line: 569, column: 33, scope: !4327)
!4336 = !DILocalVariable(name: "fmt", arg: 4, scope: !4327, file: !3, line: 569, type: !116)
!4337 = !DILocation(line: 569, column: 51, scope: !4327)
!4338 = !DILocalVariable(name: "ap", scope: !4327, file: !3, line: 571, type: !4339)
!4339 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4340, line: 99, baseType: !4341)
!4340 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h", directory: "")
!4341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4340, line: 40, baseType: !4342)
!4342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 571, baseType: !4343)
!4343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4344, size: 192, elements: !350)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 571, size: 192, elements: !4345)
!4345 = !{!4346, !4347, !4348, !4349}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4344, file: !3, line: 571, baseType: !7, size: 32)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4344, file: !3, line: 571, baseType: !7, size: 32, offset: 32)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4344, file: !3, line: 571, baseType: !98, size: 64, offset: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4344, file: !3, line: 571, baseType: !98, size: 64, offset: 128)
!4350 = !DILocation(line: 571, column: 10, scope: !4327)
!4351 = !DILocalVariable(name: "ret", scope: !4327, file: !3, line: 572, type: !115)
!4352 = !DILocation(line: 572, column: 6, scope: !4327)
!4353 = !DILocalVariable(name: "val", scope: !4327, file: !3, line: 573, type: !113)
!4354 = !DILocation(line: 573, column: 8, scope: !4327)
!4355 = !DILocation(line: 575, column: 23, scope: !4327)
!4356 = !DILocation(line: 575, column: 28, scope: !4327)
!4357 = !DILocation(line: 575, column: 8, scope: !4327)
!4358 = !DILocation(line: 575, column: 6, scope: !4327)
!4359 = !DILocation(line: 576, column: 13, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4327, file: !3, line: 576, column: 6)
!4361 = !DILocation(line: 576, column: 6, scope: !4360)
!4362 = !DILocation(line: 576, column: 6, scope: !4327)
!4363 = !DILocation(line: 577, column: 18, scope: !4360)
!4364 = !DILocation(line: 577, column: 10, scope: !4360)
!4365 = !DILocation(line: 577, column: 3, scope: !4360)
!4366 = !DILocation(line: 579, column: 2, scope: !4327)
!4367 = !DILocation(line: 580, column: 16, scope: !4327)
!4368 = !DILocation(line: 580, column: 21, scope: !4327)
!4369 = !DILocation(line: 580, column: 26, scope: !4327)
!4370 = !DILocation(line: 580, column: 8, scope: !4327)
!4371 = !DILocation(line: 580, column: 6, scope: !4327)
!4372 = !DILocation(line: 581, column: 2, scope: !4327)
!4373 = !DILocation(line: 582, column: 8, scope: !4327)
!4374 = !DILocation(line: 582, column: 2, scope: !4327)
!4375 = !DILocation(line: 584, column: 6, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4327, file: !3, line: 584, column: 6)
!4377 = !DILocation(line: 584, column: 10, scope: !4376)
!4378 = !DILocation(line: 584, column: 6, scope: !4327)
!4379 = !DILocation(line: 585, column: 3, scope: !4376)
!4380 = !DILocation(line: 586, column: 9, scope: !4327)
!4381 = !DILocation(line: 586, column: 2, scope: !4327)
!4382 = !DILocation(line: 587, column: 1, scope: !4327)
!4383 = distinct !DISubprogram(name: "xenbus_read_unsigned", scope: !3, file: !3, line: 591, type: !4384, scopeLine: 593, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{!7, !116, !116, !7}
!4386 = !DILocalVariable(name: "dir", arg: 1, scope: !4383, file: !3, line: 591, type: !116)
!4387 = !DILocation(line: 591, column: 47, scope: !4383)
!4388 = !DILocalVariable(name: "node", arg: 2, scope: !4383, file: !3, line: 591, type: !116)
!4389 = !DILocation(line: 591, column: 64, scope: !4383)
!4390 = !DILocalVariable(name: "default_val", arg: 3, scope: !4383, file: !3, line: 592, type: !7)
!4391 = !DILocation(line: 592, column: 20, scope: !4383)
!4392 = !DILocalVariable(name: "val", scope: !4383, file: !3, line: 594, type: !7)
!4393 = !DILocation(line: 594, column: 15, scope: !4383)
!4394 = !DILocalVariable(name: "ret", scope: !4383, file: !3, line: 595, type: !115)
!4395 = !DILocation(line: 595, column: 6, scope: !4383)
!4396 = !DILocation(line: 597, column: 21, scope: !4383)
!4397 = !DILocation(line: 597, column: 30, scope: !4383)
!4398 = !DILocation(line: 597, column: 35, scope: !4383)
!4399 = !DILocation(line: 597, column: 8, scope: !4383)
!4400 = !DILocation(line: 597, column: 6, scope: !4383)
!4401 = !DILocation(line: 598, column: 6, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4383, file: !3, line: 598, column: 6)
!4403 = !DILocation(line: 598, column: 10, scope: !4402)
!4404 = !DILocation(line: 598, column: 6, scope: !4383)
!4405 = !DILocation(line: 599, column: 9, scope: !4402)
!4406 = !DILocation(line: 599, column: 7, scope: !4402)
!4407 = !DILocation(line: 599, column: 3, scope: !4402)
!4408 = !DILocation(line: 601, column: 9, scope: !4383)
!4409 = !DILocation(line: 601, column: 2, scope: !4383)
!4410 = distinct !DISubprogram(name: "xenbus_printf", scope: !3, file: !3, line: 606, type: !4328, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4411 = !DILocalVariable(name: "t", arg: 1, scope: !4410, file: !3, line: 606, type: !2914)
!4412 = !DILocation(line: 606, column: 45, scope: !4410)
!4413 = !DILocalVariable(name: "dir", arg: 2, scope: !4410, file: !3, line: 607, type: !116)
!4414 = !DILocation(line: 607, column: 17, scope: !4410)
!4415 = !DILocalVariable(name: "node", arg: 3, scope: !4410, file: !3, line: 607, type: !116)
!4416 = !DILocation(line: 607, column: 34, scope: !4410)
!4417 = !DILocalVariable(name: "fmt", arg: 4, scope: !4410, file: !3, line: 607, type: !116)
!4418 = !DILocation(line: 607, column: 52, scope: !4410)
!4419 = !DILocalVariable(name: "ap", scope: !4410, file: !3, line: 609, type: !4339)
!4420 = !DILocation(line: 609, column: 10, scope: !4410)
!4421 = !DILocalVariable(name: "ret", scope: !4410, file: !3, line: 610, type: !115)
!4422 = !DILocation(line: 610, column: 6, scope: !4410)
!4423 = !DILocalVariable(name: "buf", scope: !4410, file: !3, line: 611, type: !113)
!4424 = !DILocation(line: 611, column: 8, scope: !4410)
!4425 = !DILocation(line: 613, column: 2, scope: !4410)
!4426 = !DILocation(line: 614, column: 42, scope: !4410)
!4427 = !DILocation(line: 614, column: 47, scope: !4410)
!4428 = !DILocation(line: 614, column: 8, scope: !4410)
!4429 = !DILocation(line: 614, column: 6, scope: !4410)
!4430 = !DILocation(line: 615, column: 2, scope: !4410)
!4431 = !DILocation(line: 617, column: 7, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4410, file: !3, line: 617, column: 6)
!4433 = !DILocation(line: 617, column: 6, scope: !4410)
!4434 = !DILocation(line: 618, column: 3, scope: !4432)
!4435 = !DILocation(line: 620, column: 24, scope: !4410)
!4436 = !DILocation(line: 620, column: 29, scope: !4410)
!4437 = !DILocation(line: 620, column: 35, scope: !4410)
!4438 = !DILocation(line: 620, column: 8, scope: !4410)
!4439 = !DILocation(line: 620, column: 6, scope: !4410)
!4440 = !DILocation(line: 622, column: 8, scope: !4410)
!4441 = !DILocation(line: 622, column: 2, scope: !4410)
!4442 = !DILocation(line: 624, column: 9, scope: !4410)
!4443 = !DILocation(line: 624, column: 2, scope: !4410)
!4444 = !DILocation(line: 625, column: 1, scope: !4410)
!4445 = distinct !DISubprogram(name: "xenbus_gather", scope: !3, file: !3, line: 629, type: !4446, scopeLine: 630, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4446 = !DISubroutineType(types: !4447)
!4447 = !{!115, !2914, !116, null}
!4448 = !DILocalVariable(name: "t", arg: 1, scope: !4445, file: !3, line: 629, type: !2914)
!4449 = !DILocation(line: 629, column: 45, scope: !4445)
!4450 = !DILocalVariable(name: "dir", arg: 2, scope: !4445, file: !3, line: 629, type: !116)
!4451 = !DILocation(line: 629, column: 60, scope: !4445)
!4452 = !DILocalVariable(name: "ap", scope: !4445, file: !3, line: 631, type: !4339)
!4453 = !DILocation(line: 631, column: 10, scope: !4445)
!4454 = !DILocalVariable(name: "name", scope: !4445, file: !3, line: 632, type: !116)
!4455 = !DILocation(line: 632, column: 14, scope: !4445)
!4456 = !DILocalVariable(name: "ret", scope: !4445, file: !3, line: 633, type: !115)
!4457 = !DILocation(line: 633, column: 6, scope: !4445)
!4458 = !DILocation(line: 635, column: 2, scope: !4445)
!4459 = !DILocation(line: 636, column: 2, scope: !4445)
!4460 = !DILocation(line: 636, column: 9, scope: !4445)
!4461 = !DILocation(line: 636, column: 13, scope: !4445)
!4462 = !DILocation(line: 636, column: 18, scope: !4445)
!4463 = !DILocation(line: 636, column: 29, scope: !4445)
!4464 = !DILocation(line: 636, column: 27, scope: !4445)
!4465 = !DILocation(line: 636, column: 49, scope: !4445)
!4466 = !DILocation(line: 0, scope: !4445)
!4467 = !DILocalVariable(name: "fmt", scope: !4468, file: !3, line: 637, type: !116)
!4468 = distinct !DILexicalBlock(scope: !4445, file: !3, line: 636, column: 58)
!4469 = !DILocation(line: 637, column: 15, scope: !4468)
!4470 = !DILocation(line: 637, column: 21, scope: !4468)
!4471 = !DILocalVariable(name: "result", scope: !4468, file: !3, line: 638, type: !98)
!4472 = !DILocation(line: 638, column: 9, scope: !4468)
!4473 = !DILocation(line: 638, column: 18, scope: !4468)
!4474 = !DILocalVariable(name: "p", scope: !4468, file: !3, line: 639, type: !113)
!4475 = !DILocation(line: 639, column: 9, scope: !4468)
!4476 = !DILocation(line: 641, column: 22, scope: !4468)
!4477 = !DILocation(line: 641, column: 27, scope: !4468)
!4478 = !DILocation(line: 641, column: 7, scope: !4468)
!4479 = !DILocation(line: 641, column: 5, scope: !4468)
!4480 = !DILocation(line: 642, column: 14, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4468, file: !3, line: 642, column: 7)
!4482 = !DILocation(line: 642, column: 7, scope: !4481)
!4483 = !DILocation(line: 642, column: 7, scope: !4468)
!4484 = !DILocation(line: 643, column: 18, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4481, file: !3, line: 642, column: 18)
!4486 = !DILocation(line: 643, column: 10, scope: !4485)
!4487 = !DILocation(line: 643, column: 8, scope: !4485)
!4488 = !DILocation(line: 644, column: 4, scope: !4485)
!4489 = !DILocation(line: 646, column: 7, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4468, file: !3, line: 646, column: 7)
!4491 = !DILocation(line: 646, column: 7, scope: !4468)
!4492 = !DILocation(line: 647, column: 15, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4494, file: !3, line: 647, column: 8)
!4494 = distinct !DILexicalBlock(scope: !4490, file: !3, line: 646, column: 12)
!4495 = !DILocation(line: 647, column: 18, scope: !4493)
!4496 = !DILocation(line: 647, column: 23, scope: !4493)
!4497 = !DILocation(line: 647, column: 8, scope: !4493)
!4498 = !DILocation(line: 647, column: 31, scope: !4493)
!4499 = !DILocation(line: 647, column: 8, scope: !4494)
!4500 = !DILocation(line: 648, column: 9, scope: !4493)
!4501 = !DILocation(line: 648, column: 5, scope: !4493)
!4502 = !DILocation(line: 649, column: 10, scope: !4494)
!4503 = !DILocation(line: 649, column: 4, scope: !4494)
!4504 = !DILocation(line: 650, column: 3, scope: !4494)
!4505 = !DILocation(line: 651, column: 23, scope: !4490)
!4506 = !DILocation(line: 651, column: 14, scope: !4490)
!4507 = !DILocation(line: 651, column: 5, scope: !4490)
!4508 = !DILocation(line: 651, column: 21, scope: !4490)
!4509 = distinct !{!4509, !4459, !4510}
!4510 = !DILocation(line: 652, column: 2, scope: !4445)
!4511 = !DILocation(line: 653, column: 2, scope: !4445)
!4512 = !DILocation(line: 654, column: 9, scope: !4445)
!4513 = !DILocation(line: 654, column: 2, scope: !4445)
!4514 = distinct !DISubprogram(name: "xs_watch_msg", scope: !3, file: !3, line: 697, type: !4515, scopeLine: 698, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4515 = !DISubroutineType(types: !4516)
!4516 = !{!115, !119}
!4517 = !DILocation(line: 392, column: 53, scope: !2961, inlinedAt: !4518)
!4518 = distinct !DILocation(line: 715, column: 2, scope: !4514)
!4519 = !DILocation(line: 392, column: 53, scope: !2961, inlinedAt: !4520)
!4520 = distinct !DILocation(line: 712, column: 3, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4522, file: !3, line: 708, column: 29)
!4522 = distinct !DILexicalBlock(scope: !4514, file: !3, line: 708, column: 6)
!4523 = !DILocation(line: 352, column: 51, scope: !2969, inlinedAt: !4524)
!4524 = distinct !DILocation(line: 709, column: 3, scope: !4521)
!4525 = !DILocation(line: 352, column: 51, scope: !2969, inlinedAt: !4526)
!4526 = distinct !DILocation(line: 706, column: 2, scope: !4514)
!4527 = !DILocalVariable(name: "event", arg: 1, scope: !4514, file: !3, line: 697, type: !119)
!4528 = !DILocation(line: 697, column: 41, scope: !4514)
!4529 = !DILocation(line: 699, column: 20, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4514, file: !3, line: 699, column: 6)
!4531 = !DILocation(line: 699, column: 27, scope: !4530)
!4532 = !DILocation(line: 699, column: 33, scope: !4530)
!4533 = !DILocation(line: 699, column: 40, scope: !4530)
!4534 = !DILocation(line: 699, column: 6, scope: !4530)
!4535 = !DILocation(line: 699, column: 45, scope: !4530)
!4536 = !DILocation(line: 699, column: 6, scope: !4514)
!4537 = !DILocation(line: 700, column: 9, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 699, column: 51)
!4539 = !DILocation(line: 700, column: 3, scope: !4538)
!4540 = !DILocation(line: 701, column: 3, scope: !4538)
!4541 = !DILocation(line: 703, column: 30, scope: !4514)
!4542 = !DILocation(line: 703, column: 37, scope: !4514)
!4543 = !DILocation(line: 703, column: 2, scope: !4514)
!4544 = !DILocation(line: 703, column: 9, scope: !4514)
!4545 = !DILocation(line: 703, column: 14, scope: !4514)
!4546 = !DILocation(line: 704, column: 38, scope: !4514)
!4547 = !DILocation(line: 704, column: 45, scope: !4514)
!4548 = !DILocation(line: 704, column: 31, scope: !4514)
!4549 = !DILocation(line: 704, column: 57, scope: !4514)
!4550 = !DILocation(line: 704, column: 2, scope: !4514)
!4551 = !DILocation(line: 704, column: 9, scope: !4514)
!4552 = !DILocation(line: 704, column: 15, scope: !4514)
!4553 = !DILocation(line: 354, column: 2, scope: !2975, inlinedAt: !4526)
!4554 = !DILocation(line: 354, column: 2, scope: !2978, inlinedAt: !4526)
!4555 = !DILocation(line: 707, column: 29, scope: !4514)
!4556 = !DILocation(line: 707, column: 36, scope: !4514)
!4557 = !DILocation(line: 707, column: 18, scope: !4514)
!4558 = !DILocation(line: 707, column: 2, scope: !4514)
!4559 = !DILocation(line: 707, column: 9, scope: !4514)
!4560 = !DILocation(line: 707, column: 16, scope: !4514)
!4561 = !DILocation(line: 708, column: 6, scope: !4522)
!4562 = !DILocation(line: 708, column: 13, scope: !4522)
!4563 = !DILocation(line: 708, column: 20, scope: !4522)
!4564 = !DILocation(line: 708, column: 6, scope: !4514)
!4565 = !DILocation(line: 354, column: 2, scope: !2975, inlinedAt: !4524)
!4566 = !DILocation(line: 354, column: 2, scope: !2978, inlinedAt: !4524)
!4567 = !DILocation(line: 710, column: 18, scope: !4521)
!4568 = !DILocation(line: 710, column: 25, scope: !4521)
!4569 = !DILocation(line: 710, column: 3, scope: !4521)
!4570 = !DILocation(line: 711, column: 3, scope: !4521)
!4571 = !DILocation(line: 394, column: 2, scope: !3020, inlinedAt: !4520)
!4572 = !DILocation(line: 394, column: 2, scope: !3023, inlinedAt: !4520)
!4573 = !DILocation(line: 713, column: 2, scope: !4521)
!4574 = !DILocation(line: 714, column: 9, scope: !4522)
!4575 = !DILocation(line: 714, column: 3, scope: !4522)
!4576 = !DILocation(line: 394, column: 2, scope: !3020, inlinedAt: !4518)
!4577 = !DILocation(line: 394, column: 2, scope: !3023, inlinedAt: !4518)
!4578 = !DILocation(line: 717, column: 2, scope: !4514)
!4579 = !DILocation(line: 718, column: 1, scope: !4514)
!4580 = distinct !DISubprogram(name: "count_strings", scope: !3, file: !3, line: 376, type: !4581, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!7, !116, !7}
!4583 = !DILocalVariable(name: "strings", arg: 1, scope: !4580, file: !3, line: 376, type: !116)
!4584 = !DILocation(line: 376, column: 47, scope: !4580)
!4585 = !DILocalVariable(name: "len", arg: 2, scope: !4580, file: !3, line: 376, type: !7)
!4586 = !DILocation(line: 376, column: 69, scope: !4580)
!4587 = !DILocalVariable(name: "num", scope: !4580, file: !3, line: 378, type: !7)
!4588 = !DILocation(line: 378, column: 15, scope: !4580)
!4589 = !DILocalVariable(name: "p", scope: !4580, file: !3, line: 379, type: !116)
!4590 = !DILocation(line: 379, column: 14, scope: !4580)
!4591 = !DILocation(line: 381, column: 11, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4580, file: !3, line: 381, column: 2)
!4593 = !DILocation(line: 381, column: 9, scope: !4592)
!4594 = !DILocation(line: 381, column: 24, scope: !4592)
!4595 = !DILocation(line: 381, column: 7, scope: !4592)
!4596 = !DILocation(line: 381, column: 29, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4592, file: !3, line: 381, column: 2)
!4598 = !DILocation(line: 381, column: 33, scope: !4597)
!4599 = !DILocation(line: 381, column: 43, scope: !4597)
!4600 = !DILocation(line: 381, column: 41, scope: !4597)
!4601 = !DILocation(line: 381, column: 31, scope: !4597)
!4602 = !DILocation(line: 381, column: 2, scope: !4592)
!4603 = !DILocation(line: 382, column: 6, scope: !4597)
!4604 = !DILocation(line: 382, column: 3, scope: !4597)
!4605 = !DILocation(line: 381, column: 60, scope: !4597)
!4606 = !DILocation(line: 381, column: 53, scope: !4597)
!4607 = !DILocation(line: 381, column: 63, scope: !4597)
!4608 = !DILocation(line: 381, column: 50, scope: !4597)
!4609 = !DILocation(line: 381, column: 2, scope: !4597)
!4610 = distinct !{!4610, !4602, !4611}
!4611 = !DILocation(line: 382, column: 6, scope: !4592)
!4612 = !DILocation(line: 384, column: 9, scope: !4580)
!4613 = !DILocation(line: 384, column: 2, scope: !4580)
!4614 = distinct !DISubprogram(name: "find_watch", scope: !3, file: !3, line: 684, type: !4615, scopeLine: 685, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4615 = !DISubroutineType(types: !4616)
!4616 = !{!130, !116}
!4617 = !DILocalVariable(name: "token", arg: 1, scope: !4614, file: !3, line: 684, type: !116)
!4618 = !DILocation(line: 684, column: 52, scope: !4614)
!4619 = !DILocalVariable(name: "i", scope: !4614, file: !3, line: 686, type: !130)
!4620 = !DILocation(line: 686, column: 23, scope: !4614)
!4621 = !DILocalVariable(name: "cmp", scope: !4614, file: !3, line: 686, type: !130)
!4622 = !DILocation(line: 686, column: 27, scope: !4614)
!4623 = !DILocation(line: 688, column: 31, scope: !4614)
!4624 = !DILocation(line: 688, column: 16, scope: !4614)
!4625 = !DILocation(line: 688, column: 8, scope: !4614)
!4626 = !DILocation(line: 688, column: 6, scope: !4614)
!4627 = !DILocalVariable(name: "__mptr", scope: !4628, file: !3, line: 690, type: !98)
!4628 = distinct !DILexicalBlock(scope: !4629, file: !3, line: 690, column: 2)
!4629 = distinct !DILexicalBlock(scope: !4614, file: !3, line: 690, column: 2)
!4630 = !DILocation(line: 690, column: 2, scope: !4628)
!4631 = !DILocation(line: 690, column: 2, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4628, file: !3, line: 690, column: 2)
!4633 = !DILocation(line: 690, column: 2, scope: !4629)
!4634 = !DILocation(line: 690, column: 2, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4629, file: !3, line: 690, column: 2)
!4636 = !DILocation(line: 691, column: 7, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 691, column: 7)
!4638 = !DILocation(line: 691, column: 12, scope: !4637)
!4639 = !DILocation(line: 691, column: 9, scope: !4637)
!4640 = !DILocation(line: 691, column: 7, scope: !4635)
!4641 = !DILocation(line: 692, column: 11, scope: !4637)
!4642 = !DILocation(line: 692, column: 4, scope: !4637)
!4643 = !DILocalVariable(name: "__mptr", scope: !4644, file: !3, line: 690, type: !98)
!4644 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 690, column: 2)
!4645 = !DILocation(line: 690, column: 2, scope: !4644)
!4646 = !DILocation(line: 690, column: 2, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4644, file: !3, line: 690, column: 2)
!4648 = distinct !{!4648, !4633, !4649}
!4649 = !DILocation(line: 692, column: 11, scope: !4629)
!4650 = !DILocation(line: 694, column: 2, scope: !4614)
!4651 = !DILocation(line: 695, column: 1, scope: !4614)
!4652 = distinct !DISubprogram(name: "list_add_tail", scope: !4653, file: !4653, line: 98, type: !4654, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4653 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4654 = !DISubroutineType(types: !4655)
!4655 = !{null, !126, !126}
!4656 = !DILocalVariable(name: "new", arg: 1, scope: !4652, file: !4653, line: 98, type: !126)
!4657 = !DILocation(line: 98, column: 52, scope: !4652)
!4658 = !DILocalVariable(name: "head", arg: 2, scope: !4652, file: !4653, line: 98, type: !126)
!4659 = !DILocation(line: 98, column: 75, scope: !4652)
!4660 = !DILocation(line: 100, column: 13, scope: !4652)
!4661 = !DILocation(line: 100, column: 18, scope: !4652)
!4662 = !DILocation(line: 100, column: 24, scope: !4652)
!4663 = !DILocation(line: 100, column: 30, scope: !4652)
!4664 = !DILocation(line: 100, column: 2, scope: !4652)
!4665 = !DILocation(line: 101, column: 1, scope: !4652)
!4666 = distinct !DISubprogram(name: "register_xenbus_watch", scope: !3, file: !3, line: 760, type: !4667, scopeLine: 761, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!115, !130}
!4669 = !DILocation(line: 392, column: 53, scope: !2961, inlinedAt: !4670)
!4670 = distinct !DILocation(line: 780, column: 3, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 777, column: 11)
!4672 = distinct !DILexicalBlock(scope: !4666, file: !3, line: 777, column: 6)
!4673 = !DILocation(line: 352, column: 51, scope: !2969, inlinedAt: !4674)
!4674 = distinct !DILocation(line: 778, column: 3, scope: !4671)
!4675 = !DILocation(line: 392, column: 53, scope: !2961, inlinedAt: !4676)
!4676 = distinct !DILocation(line: 773, column: 2, scope: !4666)
!4677 = !DILocation(line: 352, column: 51, scope: !2969, inlinedAt: !4678)
!4678 = distinct !DILocation(line: 770, column: 2, scope: !4666)
!4679 = !DILocalVariable(name: "watch", arg: 1, scope: !4666, file: !3, line: 760, type: !130)
!4680 = !DILocation(line: 760, column: 48, scope: !4666)
!4681 = !DILocalVariable(name: "token", scope: !4666, file: !3, line: 763, type: !4682)
!4682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 136, elements: !4683)
!4683 = !{!4684}
!4684 = !DISubrange(count: 17)
!4685 = !DILocation(line: 763, column: 7, scope: !4666)
!4686 = !DILocalVariable(name: "err", scope: !4666, file: !3, line: 764, type: !115)
!4687 = !DILocation(line: 764, column: 6, scope: !4666)
!4688 = !DILocation(line: 766, column: 10, scope: !4666)
!4689 = !DILocation(line: 766, column: 30, scope: !4666)
!4690 = !DILocation(line: 766, column: 24, scope: !4666)
!4691 = !DILocation(line: 766, column: 2, scope: !4666)
!4692 = !DILocation(line: 768, column: 2, scope: !4666)
!4693 = !DILocation(line: 354, column: 2, scope: !2975, inlinedAt: !4678)
!4694 = !DILocation(line: 354, column: 2, scope: !2978, inlinedAt: !4678)
!4695 = !DILocation(line: 771, column: 2, scope: !4666)
!4696 = !DILocation(line: 771, column: 2, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4698, file: !3, line: 771, column: 2)
!4698 = distinct !DILexicalBlock(scope: !4666, file: !3, line: 771, column: 2)
!4699 = !DILocation(line: 771, column: 2, scope: !4698)
!4700 = !DILocation(line: 771, column: 2, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4697, file: !3, line: 771, column: 2)
!4702 = !DILocation(line: 771, column: 2, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4701, file: !3, line: 771, column: 2)
!4704 = !DILocation(line: 771, column: 2, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4701, file: !3, line: 771, column: 2)
!4706 = !{i32 -2142856629, i32 -2142856600, i32 -2142856554, i32 -2142856496, i32 -2142856442, i32 -2142856388, i32 -2142856333, i32 -2142856302}
!4707 = !DILocation(line: 771, column: 2, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4709, file: !3, line: 771, column: 2)
!4709 = distinct !DILexicalBlock(scope: !4701, file: !3, line: 771, column: 2)
!4710 = !{i32 -2142855849, i32 -2142855842, i32 -2142855788, i32 -2142855757, i32 -2142855727}
!4711 = !DILocation(line: 771, column: 2, scope: !4709)
!4712 = !DILocation(line: 772, column: 12, scope: !4666)
!4713 = !DILocation(line: 772, column: 19, scope: !4666)
!4714 = !DILocation(line: 772, column: 2, scope: !4666)
!4715 = !DILocation(line: 394, column: 2, scope: !3020, inlinedAt: !4676)
!4716 = !DILocation(line: 394, column: 2, scope: !3023, inlinedAt: !4676)
!4717 = !DILocation(line: 775, column: 17, scope: !4666)
!4718 = !DILocation(line: 775, column: 24, scope: !4666)
!4719 = !DILocation(line: 775, column: 30, scope: !4666)
!4720 = !DILocation(line: 775, column: 8, scope: !4666)
!4721 = !DILocation(line: 775, column: 6, scope: !4666)
!4722 = !DILocation(line: 777, column: 6, scope: !4672)
!4723 = !DILocation(line: 777, column: 6, scope: !4666)
!4724 = !DILocation(line: 354, column: 2, scope: !2975, inlinedAt: !4674)
!4725 = !DILocation(line: 354, column: 2, scope: !2978, inlinedAt: !4674)
!4726 = !DILocation(line: 779, column: 13, scope: !4671)
!4727 = !DILocation(line: 779, column: 20, scope: !4671)
!4728 = !DILocation(line: 779, column: 3, scope: !4671)
!4729 = !DILocation(line: 394, column: 2, scope: !3020, inlinedAt: !4670)
!4730 = !DILocation(line: 394, column: 2, scope: !3023, inlinedAt: !4670)
!4731 = !DILocation(line: 781, column: 2, scope: !4671)
!4732 = !DILocation(line: 783, column: 2, scope: !4666)
!4733 = !DILocation(line: 785, column: 9, scope: !4666)
!4734 = !DILocation(line: 785, column: 2, scope: !4666)
!4735 = distinct !DISubprogram(name: "list_add", scope: !4653, file: !4653, line: 84, type: !4654, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4736 = !DILocalVariable(name: "new", arg: 1, scope: !4735, file: !4653, line: 84, type: !126)
!4737 = !DILocation(line: 84, column: 47, scope: !4735)
!4738 = !DILocalVariable(name: "head", arg: 2, scope: !4735, file: !4653, line: 84, type: !126)
!4739 = !DILocation(line: 84, column: 70, scope: !4735)
!4740 = !DILocation(line: 86, column: 13, scope: !4735)
!4741 = !DILocation(line: 86, column: 18, scope: !4735)
!4742 = !DILocation(line: 86, column: 24, scope: !4735)
!4743 = !DILocation(line: 86, column: 30, scope: !4735)
!4744 = !DILocation(line: 86, column: 2, scope: !4735)
!4745 = !DILocation(line: 87, column: 1, scope: !4735)
!4746 = distinct !DISubprogram(name: "xs_watch", scope: !3, file: !3, line: 658, type: !4747, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4747 = !DISubroutineType(types: !4748)
!4748 = !{!115, !116, !116}
!4749 = !DILocalVariable(name: "path", arg: 1, scope: !4746, file: !3, line: 658, type: !116)
!4750 = !DILocation(line: 658, column: 33, scope: !4746)
!4751 = !DILocalVariable(name: "token", arg: 2, scope: !4746, file: !3, line: 658, type: !116)
!4752 = !DILocation(line: 658, column: 51, scope: !4746)
!4753 = !DILocalVariable(name: "iov", scope: !4746, file: !3, line: 660, type: !3839)
!4754 = !DILocation(line: 660, column: 14, scope: !4746)
!4755 = !DILocation(line: 662, column: 28, scope: !4746)
!4756 = !DILocation(line: 662, column: 2, scope: !4746)
!4757 = !DILocation(line: 662, column: 9, scope: !4746)
!4758 = !DILocation(line: 662, column: 18, scope: !4746)
!4759 = !DILocation(line: 663, column: 26, scope: !4746)
!4760 = !DILocation(line: 663, column: 19, scope: !4746)
!4761 = !DILocation(line: 663, column: 32, scope: !4746)
!4762 = !DILocation(line: 663, column: 2, scope: !4746)
!4763 = !DILocation(line: 663, column: 9, scope: !4746)
!4764 = !DILocation(line: 663, column: 17, scope: !4746)
!4765 = !DILocation(line: 664, column: 28, scope: !4746)
!4766 = !DILocation(line: 664, column: 2, scope: !4746)
!4767 = !DILocation(line: 664, column: 9, scope: !4746)
!4768 = !DILocation(line: 664, column: 18, scope: !4746)
!4769 = !DILocation(line: 665, column: 26, scope: !4746)
!4770 = !DILocation(line: 665, column: 19, scope: !4746)
!4771 = !DILocation(line: 665, column: 33, scope: !4746)
!4772 = !DILocation(line: 665, column: 2, scope: !4746)
!4773 = !DILocation(line: 665, column: 9, scope: !4746)
!4774 = !DILocation(line: 665, column: 17, scope: !4746)
!4775 = !DILocation(line: 667, column: 27, scope: !4746)
!4776 = !DILocation(line: 667, column: 46, scope: !4746)
!4777 = !DILocation(line: 667, column: 18, scope: !4746)
!4778 = !DILocation(line: 667, column: 9, scope: !4746)
!4779 = !DILocation(line: 667, column: 2, scope: !4746)
!4780 = distinct !DISubprogram(name: "list_del", scope: !4653, file: !4653, line: 144, type: !4781, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4781 = !DISubroutineType(types: !4782)
!4782 = !{null, !126}
!4783 = !DILocalVariable(name: "entry", arg: 1, scope: !4780, file: !4653, line: 144, type: !126)
!4784 = !DILocation(line: 144, column: 47, scope: !4780)
!4785 = !DILocation(line: 146, column: 19, scope: !4780)
!4786 = !DILocation(line: 146, column: 2, scope: !4780)
!4787 = !DILocation(line: 147, column: 2, scope: !4780)
!4788 = !DILocation(line: 147, column: 9, scope: !4780)
!4789 = !DILocation(line: 147, column: 14, scope: !4780)
!4790 = !DILocation(line: 148, column: 2, scope: !4780)
!4791 = !DILocation(line: 148, column: 9, scope: !4780)
!4792 = !DILocation(line: 148, column: 14, scope: !4780)
!4793 = !DILocation(line: 149, column: 1, scope: !4780)
!4794 = distinct !DISubprogram(name: "unregister_xenbus_watch", scope: !3, file: !3, line: 789, type: !4795, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4795 = !DISubroutineType(types: !4796)
!4796 = !{null, !130}
!4797 = !DILocalVariable(name: "pscr_ret__", scope: !4798, file: !4799, line: 15, type: !151)
!4798 = distinct !DILexicalBlock(scope: !4800, file: !4799, line: 15, column: 9)
!4799 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/lizy2001/genbc/linux")
!4800 = distinct !DISubprogram(name: "get_current", scope: !4799, file: !4799, line: 13, type: !4801, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4801 = !DISubroutineType(types: !4802)
!4802 = !{!151}
!4803 = !DILocation(line: 15, column: 9, scope: !4798, inlinedAt: !4804)
!4804 = distinct !DILocation(line: 825, column: 6, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4794, file: !3, line: 825, column: 6)
!4806 = !DILocalVariable(name: "__vpp_verify", scope: !4807, file: !4799, line: 15, type: !3467)
!4807 = distinct !DILexicalBlock(scope: !4798, file: !4799, line: 15, column: 9)
!4808 = !DILocation(line: 15, column: 9, scope: !4807, inlinedAt: !4804)
!4809 = !DILocalVariable(name: "pfo_val__", scope: !4810, file: !4799, line: 15, type: !208)
!4810 = distinct !DILexicalBlock(scope: !4798, file: !4799, line: 15, column: 9)
!4811 = !DILocation(line: 15, column: 9, scope: !4810, inlinedAt: !4804)
!4812 = !DILocation(line: 392, column: 53, scope: !2961, inlinedAt: !4813)
!4813 = distinct !DILocation(line: 823, column: 2, scope: !4794)
!4814 = !DILocation(line: 352, column: 51, scope: !2969, inlinedAt: !4815)
!4815 = distinct !DILocation(line: 816, column: 2, scope: !4794)
!4816 = !DILocation(line: 15, column: 9, scope: !4798, inlinedAt: !4817)
!4817 = distinct !DILocation(line: 812, column: 6, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4794, file: !3, line: 812, column: 6)
!4819 = !DILocation(line: 15, column: 9, scope: !4807, inlinedAt: !4817)
!4820 = !DILocation(line: 15, column: 9, scope: !4810, inlinedAt: !4817)
!4821 = !DILocation(line: 392, column: 53, scope: !2961, inlinedAt: !4822)
!4822 = distinct !DILocation(line: 802, column: 2, scope: !4794)
!4823 = !DILocation(line: 352, column: 51, scope: !2969, inlinedAt: !4824)
!4824 = distinct !DILocation(line: 799, column: 2, scope: !4794)
!4825 = !DILocalVariable(name: "watch", arg: 1, scope: !4794, file: !3, line: 789, type: !130)
!4826 = !DILocation(line: 789, column: 51, scope: !4794)
!4827 = !DILocalVariable(name: "event", scope: !4794, file: !3, line: 791, type: !119)
!4828 = !DILocation(line: 791, column: 25, scope: !4794)
!4829 = !DILocalVariable(name: "tmp", scope: !4794, file: !3, line: 791, type: !119)
!4830 = !DILocation(line: 791, column: 33, scope: !4794)
!4831 = !DILocalVariable(name: "token", scope: !4794, file: !3, line: 792, type: !4682)
!4832 = !DILocation(line: 792, column: 7, scope: !4794)
!4833 = !DILocalVariable(name: "err", scope: !4794, file: !3, line: 793, type: !115)
!4834 = !DILocation(line: 793, column: 6, scope: !4794)
!4835 = !DILocation(line: 795, column: 10, scope: !4794)
!4836 = !DILocation(line: 795, column: 30, scope: !4794)
!4837 = !DILocation(line: 795, column: 24, scope: !4794)
!4838 = !DILocation(line: 795, column: 2, scope: !4794)
!4839 = !DILocation(line: 797, column: 2, scope: !4794)
!4840 = !DILocation(line: 354, column: 2, scope: !2975, inlinedAt: !4824)
!4841 = !DILocation(line: 354, column: 2, scope: !2978, inlinedAt: !4824)
!4842 = !DILocation(line: 800, column: 2, scope: !4794)
!4843 = !DILocation(line: 800, column: 2, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4845, file: !3, line: 800, column: 2)
!4845 = distinct !DILexicalBlock(scope: !4794, file: !3, line: 800, column: 2)
!4846 = !DILocation(line: 800, column: 2, scope: !4845)
!4847 = !DILocation(line: 800, column: 2, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4844, file: !3, line: 800, column: 2)
!4849 = !DILocation(line: 800, column: 2, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4848, file: !3, line: 800, column: 2)
!4851 = !DILocation(line: 800, column: 2, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4848, file: !3, line: 800, column: 2)
!4853 = !{i32 -2142855299, i32 -2142855270, i32 -2142855224, i32 -2142855166, i32 -2142855112, i32 -2142855058, i32 -2142855003, i32 -2142854972}
!4854 = !DILocation(line: 800, column: 2, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4856, file: !3, line: 800, column: 2)
!4856 = distinct !DILexicalBlock(scope: !4848, file: !3, line: 800, column: 2)
!4857 = !{i32 -2142854519, i32 -2142854512, i32 -2142854458, i32 -2142854427, i32 -2142854397}
!4858 = !DILocation(line: 800, column: 2, scope: !4856)
!4859 = !DILocation(line: 801, column: 12, scope: !4794)
!4860 = !DILocation(line: 801, column: 19, scope: !4794)
!4861 = !DILocation(line: 801, column: 2, scope: !4794)
!4862 = !DILocation(line: 394, column: 2, scope: !3020, inlinedAt: !4822)
!4863 = !DILocation(line: 394, column: 2, scope: !3023, inlinedAt: !4822)
!4864 = !DILocation(line: 804, column: 19, scope: !4794)
!4865 = !DILocation(line: 804, column: 26, scope: !4794)
!4866 = !DILocation(line: 804, column: 32, scope: !4794)
!4867 = !DILocation(line: 804, column: 8, scope: !4794)
!4868 = !DILocation(line: 804, column: 6, scope: !4794)
!4869 = !DILocation(line: 805, column: 6, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4794, file: !3, line: 805, column: 6)
!4871 = !DILocation(line: 805, column: 6, scope: !4794)
!4872 = !DILocation(line: 806, column: 3, scope: !4870)
!4873 = !DILocation(line: 808, column: 2, scope: !4794)
!4874 = !{i32 -2146829456}
!4875 = !DILocation(line: 812, column: 15, scope: !4818)
!4876 = !DILocation(line: 812, column: 22, scope: !4818)
!4877 = !DILocation(line: 812, column: 19, scope: !4818)
!4878 = !DILocation(line: 812, column: 6, scope: !4794)
!4879 = !DILocation(line: 813, column: 3, scope: !4818)
!4880 = !DILocation(line: 354, column: 2, scope: !2975, inlinedAt: !4815)
!4881 = !DILocation(line: 354, column: 2, scope: !2978, inlinedAt: !4815)
!4882 = !DILocalVariable(name: "__mptr", scope: !4883, file: !3, line: 817, type: !98)
!4883 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 817, column: 2)
!4884 = distinct !DILexicalBlock(scope: !4794, file: !3, line: 817, column: 2)
!4885 = !DILocation(line: 817, column: 2, scope: !4883)
!4886 = !DILocation(line: 817, column: 2, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4883, file: !3, line: 817, column: 2)
!4888 = !DILocation(line: 817, column: 2, scope: !4884)
!4889 = !DILocalVariable(name: "__mptr", scope: !4890, file: !3, line: 817, type: !98)
!4890 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 817, column: 2)
!4891 = !DILocation(line: 817, column: 2, scope: !4890)
!4892 = !DILocation(line: 817, column: 2, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 817, column: 2)
!4894 = !DILocation(line: 817, column: 2, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 817, column: 2)
!4896 = !DILocation(line: 818, column: 7, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 818, column: 7)
!4898 = distinct !DILexicalBlock(scope: !4895, file: !3, line: 817, column: 60)
!4899 = !DILocation(line: 818, column: 14, scope: !4897)
!4900 = !DILocation(line: 818, column: 24, scope: !4897)
!4901 = !DILocation(line: 818, column: 21, scope: !4897)
!4902 = !DILocation(line: 818, column: 7, scope: !4898)
!4903 = !DILocation(line: 819, column: 4, scope: !4897)
!4904 = !DILocation(line: 820, column: 13, scope: !4898)
!4905 = !DILocation(line: 820, column: 20, scope: !4898)
!4906 = !DILocation(line: 820, column: 3, scope: !4898)
!4907 = !DILocation(line: 821, column: 9, scope: !4898)
!4908 = !DILocation(line: 821, column: 3, scope: !4898)
!4909 = !DILocation(line: 822, column: 2, scope: !4898)
!4910 = !DILocalVariable(name: "__mptr", scope: !4911, file: !3, line: 817, type: !98)
!4911 = distinct !DILexicalBlock(scope: !4895, file: !3, line: 817, column: 2)
!4912 = !DILocation(line: 817, column: 2, scope: !4911)
!4913 = !DILocation(line: 817, column: 2, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4911, file: !3, line: 817, column: 2)
!4915 = distinct !{!4915, !4888, !4916}
!4916 = !DILocation(line: 822, column: 2, scope: !4884)
!4917 = !DILocation(line: 394, column: 2, scope: !3020, inlinedAt: !4813)
!4918 = !DILocation(line: 394, column: 2, scope: !3023, inlinedAt: !4813)
!4919 = !DILocation(line: 825, column: 15, scope: !4805)
!4920 = !DILocation(line: 825, column: 22, scope: !4805)
!4921 = !DILocation(line: 825, column: 19, scope: !4805)
!4922 = !DILocation(line: 825, column: 6, scope: !4794)
!4923 = !DILocation(line: 826, column: 3, scope: !4805)
!4924 = !DILocation(line: 827, column: 1, scope: !4794)
!4925 = distinct !DISubprogram(name: "xs_unwatch", scope: !3, file: !3, line: 671, type: !4747, scopeLine: 672, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4926 = !DILocalVariable(name: "path", arg: 1, scope: !4925, file: !3, line: 671, type: !116)
!4927 = !DILocation(line: 671, column: 35, scope: !4925)
!4928 = !DILocalVariable(name: "token", arg: 2, scope: !4925, file: !3, line: 671, type: !116)
!4929 = !DILocation(line: 671, column: 53, scope: !4925)
!4930 = !DILocalVariable(name: "iov", scope: !4925, file: !3, line: 673, type: !3839)
!4931 = !DILocation(line: 673, column: 14, scope: !4925)
!4932 = !DILocation(line: 675, column: 28, scope: !4925)
!4933 = !DILocation(line: 675, column: 2, scope: !4925)
!4934 = !DILocation(line: 675, column: 9, scope: !4925)
!4935 = !DILocation(line: 675, column: 18, scope: !4925)
!4936 = !DILocation(line: 676, column: 26, scope: !4925)
!4937 = !DILocation(line: 676, column: 19, scope: !4925)
!4938 = !DILocation(line: 676, column: 32, scope: !4925)
!4939 = !DILocation(line: 676, column: 2, scope: !4925)
!4940 = !DILocation(line: 676, column: 9, scope: !4925)
!4941 = !DILocation(line: 676, column: 17, scope: !4925)
!4942 = !DILocation(line: 677, column: 28, scope: !4925)
!4943 = !DILocation(line: 677, column: 2, scope: !4925)
!4944 = !DILocation(line: 677, column: 9, scope: !4925)
!4945 = !DILocation(line: 677, column: 18, scope: !4925)
!4946 = !DILocation(line: 678, column: 26, scope: !4925)
!4947 = !DILocation(line: 678, column: 19, scope: !4925)
!4948 = !DILocation(line: 678, column: 33, scope: !4925)
!4949 = !DILocation(line: 678, column: 2, scope: !4925)
!4950 = !DILocation(line: 678, column: 9, scope: !4925)
!4951 = !DILocation(line: 678, column: 17, scope: !4925)
!4952 = !DILocation(line: 680, column: 27, scope: !4925)
!4953 = !DILocation(line: 680, column: 48, scope: !4925)
!4954 = !DILocation(line: 680, column: 18, scope: !4925)
!4955 = !DILocation(line: 680, column: 9, scope: !4925)
!4956 = !DILocation(line: 680, column: 2, scope: !4925)
!4957 = distinct !DISubprogram(name: "xs_suspend", scope: !3, file: !3, line: 830, type: !2460, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4958 = !DILocation(line: 832, column: 2, scope: !4957)
!4959 = !DILocation(line: 834, column: 2, scope: !4957)
!4960 = !DILocation(line: 835, column: 2, scope: !4957)
!4961 = !DILocation(line: 836, column: 1, scope: !4957)
!4962 = distinct !DISubprogram(name: "xs_suspend_enter", scope: !3, file: !3, line: 98, type: !2460, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4963 = !DILocation(line: 392, column: 53, scope: !2961, inlinedAt: !4964)
!4964 = distinct !DILocation(line: 102, column: 2, scope: !4962)
!4965 = !DILocation(line: 352, column: 51, scope: !2969, inlinedAt: !4966)
!4966 = distinct !DILocation(line: 100, column: 2, scope: !4962)
!4967 = !DILocation(line: 354, column: 2, scope: !2975, inlinedAt: !4966)
!4968 = !DILocation(line: 354, column: 2, scope: !2978, inlinedAt: !4966)
!4969 = !DILocation(line: 101, column: 19, scope: !4962)
!4970 = !DILocation(line: 394, column: 2, scope: !3020, inlinedAt: !4964)
!4971 = !DILocation(line: 394, column: 2, scope: !3023, inlinedAt: !4964)
!4972 = !DILocation(line: 103, column: 2, scope: !4962)
!4973 = !DILocation(line: 103, column: 2, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4962, file: !3, line: 103, column: 2)
!4975 = !DILocation(line: 103, column: 2, scope: !4976)
!4976 = distinct !DILexicalBlock(scope: !4974, file: !3, line: 103, column: 2)
!4977 = !DILocation(line: 103, column: 2, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4976, file: !3, line: 103, column: 2)
!4979 = !DILocation(line: 103, column: 2, scope: !4980)
!4980 = distinct !DILexicalBlock(scope: !4974, file: !3, line: 103, column: 2)
!4981 = !DILocalVariable(name: "__wq_entry", scope: !4982, file: !3, line: 103, type: !4983)
!4982 = distinct !DILexicalBlock(scope: !4974, file: !3, line: 103, column: 2)
!4983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !1318, line: 29, size: 320, elements: !4984)
!4984 = !{!4985, !4986, !4987, !4993}
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4983, file: !1318, line: 30, baseType: !7, size: 32)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4983, file: !1318, line: 31, baseType: !98, size: 64, offset: 64)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4983, file: !1318, line: 32, baseType: !4988, size: 64, offset: 128)
!4988 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !1318, line: 16, baseType: !4989)
!4989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4990, size: 64)
!4990 = !DISubroutineType(types: !4991)
!4991 = !{!115, !4992, !7, !115, !98}
!4992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4983, size: 64)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4983, file: !1318, line: 33, baseType: !123, size: 128, offset: 192)
!4994 = !DILocation(line: 103, column: 2, scope: !4982)
!4995 = !DILocalVariable(name: "__ret", scope: !4982, file: !3, line: 103, type: !118)
!4996 = !DILocalVariable(name: "__int", scope: !4997, file: !3, line: 103, type: !118)
!4997 = distinct !DILexicalBlock(scope: !4998, file: !3, line: 103, column: 2)
!4998 = distinct !DILexicalBlock(scope: !4999, file: !3, line: 103, column: 2)
!4999 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 103, column: 2)
!5000 = !DILocation(line: 103, column: 2, scope: !4997)
!5001 = !DILocation(line: 103, column: 2, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !4997, file: !3, line: 103, column: 2)
!5003 = !DILocation(line: 103, column: 2, scope: !4998)
!5004 = distinct !{!5004, !5005, !5005}
!5005 = !DILocation(line: 103, column: 2, scope: !4999)
!5006 = !DILabel(scope: !4982, name: "__out", file: !3, line: 103)
!5007 = !DILocation(line: 104, column: 1, scope: !4962)
!5008 = distinct !DISubprogram(name: "xs_resume", scope: !3, file: !3, line: 838, type: !2460, scopeLine: 839, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5009 = !DILocalVariable(name: "watch", scope: !5008, file: !3, line: 840, type: !130)
!5010 = !DILocation(line: 840, column: 23, scope: !5008)
!5011 = !DILocalVariable(name: "token", scope: !5008, file: !3, line: 841, type: !4682)
!5012 = !DILocation(line: 841, column: 7, scope: !5008)
!5013 = !DILocation(line: 843, column: 2, scope: !5008)
!5014 = !DILocation(line: 845, column: 2, scope: !5008)
!5015 = !DILocation(line: 847, column: 2, scope: !5008)
!5016 = !DILocalVariable(name: "__mptr", scope: !5017, file: !3, line: 850, type: !98)
!5017 = distinct !DILexicalBlock(scope: !5018, file: !3, line: 850, column: 2)
!5018 = distinct !DILexicalBlock(scope: !5008, file: !3, line: 850, column: 2)
!5019 = !DILocation(line: 850, column: 2, scope: !5017)
!5020 = !DILocation(line: 850, column: 2, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 850, column: 2)
!5022 = !DILocation(line: 850, column: 2, scope: !5018)
!5023 = !DILocation(line: 850, column: 2, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !5018, file: !3, line: 850, column: 2)
!5025 = !DILocation(line: 851, column: 11, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !5024, file: !3, line: 850, column: 45)
!5027 = !DILocation(line: 851, column: 31, scope: !5026)
!5028 = !DILocation(line: 851, column: 25, scope: !5026)
!5029 = !DILocation(line: 851, column: 3, scope: !5026)
!5030 = !DILocation(line: 852, column: 12, scope: !5026)
!5031 = !DILocation(line: 852, column: 19, scope: !5026)
!5032 = !DILocation(line: 852, column: 25, scope: !5026)
!5033 = !DILocation(line: 852, column: 3, scope: !5026)
!5034 = !DILocation(line: 853, column: 2, scope: !5026)
!5035 = !DILocalVariable(name: "__mptr", scope: !5036, file: !3, line: 850, type: !98)
!5036 = distinct !DILexicalBlock(scope: !5024, file: !3, line: 850, column: 2)
!5037 = !DILocation(line: 850, column: 2, scope: !5036)
!5038 = !DILocation(line: 850, column: 2, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !5036, file: !3, line: 850, column: 2)
!5040 = distinct !{!5040, !5022, !5041}
!5041 = !DILocation(line: 853, column: 2, scope: !5018)
!5042 = !DILocation(line: 855, column: 2, scope: !5008)
!5043 = !DILocation(line: 856, column: 1, scope: !5008)
!5044 = distinct !DISubprogram(name: "xs_suspend_exit", scope: !3, file: !3, line: 106, type: !2460, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5045 = !DILocation(line: 392, column: 53, scope: !2961, inlinedAt: !5046)
!5046 = distinct !DILocation(line: 111, column: 2, scope: !5044)
!5047 = !DILocation(line: 352, column: 51, scope: !2969, inlinedAt: !5048)
!5048 = distinct !DILocation(line: 109, column: 2, scope: !5044)
!5049 = !DILocation(line: 108, column: 22, scope: !5044)
!5050 = !DILocation(line: 354, column: 2, scope: !2975, inlinedAt: !5048)
!5051 = !DILocation(line: 354, column: 2, scope: !2978, inlinedAt: !5048)
!5052 = !DILocation(line: 110, column: 19, scope: !5044)
!5053 = !DILocation(line: 394, column: 2, scope: !3020, inlinedAt: !5046)
!5054 = !DILocation(line: 394, column: 2, scope: !3023, inlinedAt: !5046)
!5055 = !DILocation(line: 112, column: 2, scope: !5044)
!5056 = !DILocation(line: 113, column: 1, scope: !5044)
!5057 = distinct !DISubprogram(name: "xs_suspend_cancel", scope: !3, file: !3, line: 858, type: !2460, scopeLine: 859, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5058 = !DILocation(line: 860, column: 2, scope: !5057)
!5059 = !DILocation(line: 861, column: 2, scope: !5057)
!5060 = !DILocation(line: 863, column: 2, scope: !5057)
!5061 = !DILocation(line: 864, column: 1, scope: !5057)
!5062 = distinct !DISubprogram(name: "xs_init", scope: !3, file: !3, line: 926, type: !5063, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5063 = !DISubroutineType(types: !5064)
!5064 = !{!115}
!5065 = !DILocalVariable(name: "err", scope: !5062, file: !3, line: 928, type: !115)
!5066 = !DILocation(line: 928, column: 6, scope: !5062)
!5067 = !DILocalVariable(name: "task", scope: !5062, file: !3, line: 929, type: !151)
!5068 = !DILocation(line: 929, column: 22, scope: !5062)
!5069 = !DILocation(line: 931, column: 2, scope: !5062)
!5070 = !DILocation(line: 934, column: 8, scope: !5062)
!5071 = !DILocation(line: 934, column: 6, scope: !5062)
!5072 = !DILocation(line: 935, column: 6, scope: !5073)
!5073 = distinct !DILexicalBlock(scope: !5062, file: !3, line: 935, column: 6)
!5074 = !DILocation(line: 935, column: 6, scope: !5062)
!5075 = !DILocation(line: 936, column: 10, scope: !5073)
!5076 = !DILocation(line: 936, column: 3, scope: !5073)
!5077 = !DILocalVariable(name: "__k", scope: !5078, file: !3, line: 938, type: !151)
!5078 = distinct !DILexicalBlock(scope: !5062, file: !3, line: 938, column: 9)
!5079 = !DILocation(line: 938, column: 9, scope: !5078)
!5080 = !DILocation(line: 938, column: 9, scope: !5081)
!5081 = distinct !DILexicalBlock(scope: !5078, file: !3, line: 938, column: 9)
!5082 = !DILocation(line: 938, column: 7, scope: !5062)
!5083 = !DILocation(line: 939, column: 13, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !5062, file: !3, line: 939, column: 6)
!5085 = !DILocation(line: 939, column: 6, scope: !5084)
!5086 = !DILocation(line: 939, column: 6, scope: !5062)
!5087 = !DILocation(line: 940, column: 18, scope: !5084)
!5088 = !DILocation(line: 940, column: 10, scope: !5084)
!5089 = !DILocation(line: 940, column: 3, scope: !5084)
!5090 = !DILocation(line: 943, column: 2, scope: !5062)
!5091 = !DILocation(line: 945, column: 2, scope: !5062)
!5092 = !DILocation(line: 946, column: 1, scope: !5062)
!5093 = distinct !DISubprogram(name: "xenwatch_thread", scope: !3, file: !3, line: 866, type: !5094, scopeLine: 867, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5094 = !DISubroutineType(types: !5095)
!5095 = !{!115, !98}
!5096 = !DILocation(line: 392, column: 53, scope: !2961, inlinedAt: !5097)
!5097 = distinct !DILocation(line: 886, column: 3, scope: !5098)
!5098 = distinct !DILexicalBlock(scope: !5099, file: !3, line: 873, column: 11)
!5099 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 873, column: 2)
!5100 = distinct !DILexicalBlock(scope: !5093, file: !3, line: 873, column: 2)
!5101 = !DILocation(line: 352, column: 51, scope: !2969, inlinedAt: !5102)
!5102 = distinct !DILocation(line: 882, column: 3, scope: !5098)
!5103 = !DILocation(line: 15, column: 9, scope: !4798, inlinedAt: !5104)
!5104 = distinct !DILocation(line: 871, column: 17, scope: !5093)
!5105 = !DILocation(line: 15, column: 9, scope: !4807, inlinedAt: !5104)
!5106 = !DILocation(line: 15, column: 9, scope: !4810, inlinedAt: !5104)
!5107 = !DILocalVariable(name: "unused", arg: 1, scope: !5093, file: !3, line: 866, type: !98)
!5108 = !DILocation(line: 866, column: 34, scope: !5093)
!5109 = !DILocalVariable(name: "ent", scope: !5093, file: !3, line: 868, type: !126)
!5110 = !DILocation(line: 868, column: 20, scope: !5093)
!5111 = !DILocalVariable(name: "event", scope: !5093, file: !3, line: 869, type: !119)
!5112 = !DILocation(line: 869, column: 25, scope: !5093)
!5113 = !DILocation(line: 871, column: 26, scope: !5093)
!5114 = !DILocation(line: 871, column: 15, scope: !5093)
!5115 = !DILocation(line: 873, column: 2, scope: !5093)
!5116 = !DILocalVariable(name: "__ret", scope: !5117, file: !3, line: 874, type: !115)
!5117 = distinct !DILexicalBlock(scope: !5098, file: !3, line: 874, column: 3)
!5118 = !DILocation(line: 874, column: 3, scope: !5117)
!5119 = !DILocation(line: 874, column: 3, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5117, file: !3, line: 874, column: 3)
!5121 = !DILocation(line: 874, column: 3, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5120, file: !3, line: 874, column: 3)
!5123 = !DILocation(line: 874, column: 3, scope: !5124)
!5124 = distinct !DILexicalBlock(scope: !5117, file: !3, line: 874, column: 3)
!5125 = !DILocalVariable(name: "__wq_entry", scope: !5126, file: !3, line: 874, type: !4983)
!5126 = distinct !DILexicalBlock(scope: !5124, file: !3, line: 874, column: 3)
!5127 = !DILocation(line: 874, column: 3, scope: !5126)
!5128 = !DILocalVariable(name: "__ret", scope: !5126, file: !3, line: 874, type: !118)
!5129 = !DILocalVariable(name: "__int", scope: !5130, file: !3, line: 874, type: !118)
!5130 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 874, column: 3)
!5131 = distinct !DILexicalBlock(scope: !5132, file: !3, line: 874, column: 3)
!5132 = distinct !DILexicalBlock(scope: !5126, file: !3, line: 874, column: 3)
!5133 = !DILocation(line: 874, column: 3, scope: !5130)
!5134 = !DILocation(line: 874, column: 3, scope: !5135)
!5135 = distinct !DILexicalBlock(scope: !5130, file: !3, line: 874, column: 3)
!5136 = !DILocation(line: 874, column: 3, scope: !5137)
!5137 = distinct !DILexicalBlock(scope: !5130, file: !3, line: 874, column: 3)
!5138 = !DILocation(line: 874, column: 3, scope: !5139)
!5139 = distinct !DILexicalBlock(scope: !5137, file: !3, line: 874, column: 3)
!5140 = !DILocation(line: 874, column: 3, scope: !5131)
!5141 = distinct !{!5141, !5142, !5142}
!5142 = !DILocation(line: 874, column: 3, scope: !5132)
!5143 = !DILabel(scope: !5126, name: "__out", file: !3, line: 874)
!5144 = !DILocation(line: 877, column: 7, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !5098, file: !3, line: 877, column: 7)
!5146 = !DILocation(line: 877, column: 7, scope: !5098)
!5147 = !DILocation(line: 878, column: 4, scope: !5145)
!5148 = !DILocation(line: 880, column: 3, scope: !5098)
!5149 = !DILocation(line: 354, column: 2, scope: !2975, inlinedAt: !5102)
!5150 = !DILocation(line: 354, column: 2, scope: !2978, inlinedAt: !5102)
!5151 = !DILocation(line: 883, column: 22, scope: !5098)
!5152 = !DILocation(line: 883, column: 7, scope: !5098)
!5153 = !DILocation(line: 884, column: 7, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !5098, file: !3, line: 884, column: 7)
!5155 = !DILocation(line: 884, column: 11, scope: !5154)
!5156 = !DILocation(line: 884, column: 7, scope: !5098)
!5157 = !DILocation(line: 885, column: 13, scope: !5154)
!5158 = !DILocation(line: 885, column: 4, scope: !5154)
!5159 = !DILocation(line: 394, column: 2, scope: !3020, inlinedAt: !5097)
!5160 = !DILocation(line: 394, column: 2, scope: !3023, inlinedAt: !5097)
!5161 = !DILocation(line: 888, column: 7, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5098, file: !3, line: 888, column: 7)
!5163 = !DILocation(line: 888, column: 11, scope: !5162)
!5164 = !DILocation(line: 888, column: 7, scope: !5098)
!5165 = !DILocalVariable(name: "__mptr", scope: !5166, file: !3, line: 889, type: !98)
!5166 = distinct !DILexicalBlock(scope: !5167, file: !3, line: 889, column: 12)
!5167 = distinct !DILexicalBlock(scope: !5162, file: !3, line: 888, column: 29)
!5168 = !DILocation(line: 889, column: 12, scope: !5166)
!5169 = !DILocation(line: 889, column: 12, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5166, file: !3, line: 889, column: 12)
!5171 = !DILocation(line: 889, column: 10, scope: !5167)
!5172 = !DILocation(line: 890, column: 4, scope: !5167)
!5173 = !DILocation(line: 890, column: 11, scope: !5167)
!5174 = !DILocation(line: 890, column: 19, scope: !5167)
!5175 = !DILocation(line: 890, column: 28, scope: !5167)
!5176 = !DILocation(line: 890, column: 35, scope: !5167)
!5177 = !DILocation(line: 890, column: 43, scope: !5167)
!5178 = !DILocation(line: 890, column: 50, scope: !5167)
!5179 = !DILocation(line: 891, column: 7, scope: !5167)
!5180 = !DILocation(line: 891, column: 14, scope: !5167)
!5181 = !DILocation(line: 892, column: 10, scope: !5167)
!5182 = !DILocation(line: 892, column: 4, scope: !5167)
!5183 = !DILocation(line: 893, column: 3, scope: !5167)
!5184 = !DILocation(line: 895, column: 3, scope: !5098)
!5185 = !DILocation(line: 873, column: 2, scope: !5099)
!5186 = distinct !{!5186, !5187, !5188}
!5187 = !DILocation(line: 873, column: 2, scope: !5100)
!5188 = !DILocation(line: 896, column: 2, scope: !5100)
!5189 = !DILocation(line: 898, column: 2, scope: !5093)
!5190 = distinct !DISubprogram(name: "xs_reset_watches", scope: !3, file: !3, line: 740, type: !2460, scopeLine: 741, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5191 = !DILocalVariable(name: "err", scope: !5190, file: !3, line: 742, type: !115)
!5192 = !DILocation(line: 742, column: 6, scope: !5190)
!5193 = !DILocation(line: 744, column: 7, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5190, file: !3, line: 744, column: 6)
!5195 = !DILocation(line: 744, column: 24, scope: !5194)
!5196 = !DILocation(line: 744, column: 27, scope: !5194)
!5197 = !DILocation(line: 744, column: 6, scope: !5190)
!5198 = !DILocation(line: 745, column: 3, scope: !5194)
!5199 = !DILocation(line: 747, column: 6, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5190, file: !3, line: 747, column: 6)
!5201 = !DILocation(line: 747, column: 6, scope: !5190)
!5202 = !DILocation(line: 748, column: 3, scope: !5200)
!5203 = !DILocation(line: 750, column: 7, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5190, file: !3, line: 750, column: 6)
!5205 = !DILocation(line: 750, column: 6, scope: !5190)
!5206 = !DILocation(line: 752, column: 3, scope: !5204)
!5207 = !DILocation(line: 754, column: 27, scope: !5190)
!5208 = !DILocation(line: 754, column: 17, scope: !5190)
!5209 = !DILocation(line: 754, column: 8, scope: !5190)
!5210 = !DILocation(line: 754, column: 6, scope: !5190)
!5211 = !DILocation(line: 755, column: 6, scope: !5212)
!5212 = distinct !DILexicalBlock(scope: !5190, file: !3, line: 755, column: 6)
!5213 = !DILocation(line: 755, column: 10, scope: !5212)
!5214 = !DILocation(line: 755, column: 13, scope: !5212)
!5215 = !DILocation(line: 755, column: 17, scope: !5212)
!5216 = !DILocation(line: 755, column: 6, scope: !5190)
!5217 = !DILocation(line: 756, column: 3, scope: !5212)
!5218 = !DILocation(line: 757, column: 1, scope: !5190)
!5219 = distinct !DISubprogram(name: "get_order", scope: !5220, file: !5220, line: 29, type: !5221, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5220 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5221 = !DISubroutineType(types: !5222)
!5222 = !{!115, !111}
!5223 = !DILocalVariable(name: "x", arg: 1, scope: !5224, file: !5225, line: 366, type: !209)
!5224 = distinct !DISubprogram(name: "fls64", scope: !5225, file: !5225, line: 366, type: !5226, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5225 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5226 = !DISubroutineType(types: !5227)
!5227 = !{!115, !209}
!5228 = !DILocation(line: 366, column: 40, scope: !5224, inlinedAt: !5229)
!5229 = distinct !DILocation(line: 46, column: 9, scope: !5219)
!5230 = !DILocalVariable(name: "bitpos", scope: !5224, file: !5225, line: 368, type: !115)
!5231 = !DILocation(line: 368, column: 6, scope: !5224, inlinedAt: !5229)
!5232 = !DILocalVariable(name: "size", arg: 1, scope: !5219, file: !5220, line: 29, type: !111)
!5233 = !DILocation(line: 29, column: 63, scope: !5219)
!5234 = !DILocation(line: 31, column: 27, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5219, file: !5220, line: 31, column: 6)
!5236 = !DILocation(line: 31, column: 6, scope: !5235)
!5237 = !DILocation(line: 31, column: 6, scope: !5219)
!5238 = !DILocation(line: 32, column: 8, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5240, file: !5220, line: 32, column: 7)
!5240 = distinct !DILexicalBlock(scope: !5235, file: !5220, line: 31, column: 34)
!5241 = !DILocation(line: 32, column: 7, scope: !5240)
!5242 = !DILocation(line: 33, column: 4, scope: !5239)
!5243 = !DILocation(line: 35, column: 7, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5240, file: !5220, line: 35, column: 7)
!5245 = !DILocation(line: 35, column: 12, scope: !5244)
!5246 = !DILocation(line: 35, column: 7, scope: !5240)
!5247 = !DILocation(line: 36, column: 4, scope: !5244)
!5248 = !DILocation(line: 38, column: 10, scope: !5240)
!5249 = !DILocation(line: 38, column: 28, scope: !5240)
!5250 = !DILocation(line: 38, column: 41, scope: !5240)
!5251 = !DILocation(line: 38, column: 3, scope: !5240)
!5252 = !DILocation(line: 41, column: 6, scope: !5219)
!5253 = !DILocation(line: 42, column: 7, scope: !5219)
!5254 = !DILocation(line: 46, column: 15, scope: !5219)
!5255 = !DILocation(line: 374, column: 2, scope: !5224, inlinedAt: !5229)
!5256 = !DILocation(line: 376, column: 14, scope: !5224, inlinedAt: !5229)
!5257 = !{i32 305804}
!5258 = !DILocation(line: 377, column: 9, scope: !5224, inlinedAt: !5229)
!5259 = !DILocation(line: 377, column: 16, scope: !5224, inlinedAt: !5229)
!5260 = !DILocation(line: 46, column: 2, scope: !5219)
!5261 = !DILocation(line: 48, column: 1, scope: !5219)
!5262 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5263, file: !5263, line: 30, type: !5264, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5263 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5264 = !DISubroutineType(types: !5265)
!5265 = !{!115, !208}
!5266 = !DILocation(line: 366, column: 40, scope: !5224, inlinedAt: !5267)
!5267 = distinct !DILocation(line: 32, column: 9, scope: !5262)
!5268 = !DILocation(line: 368, column: 6, scope: !5224, inlinedAt: !5267)
!5269 = !DILocalVariable(name: "n", arg: 1, scope: !5262, file: !5263, line: 30, type: !208)
!5270 = !DILocation(line: 30, column: 21, scope: !5262)
!5271 = !DILocation(line: 32, column: 15, scope: !5262)
!5272 = !DILocation(line: 374, column: 2, scope: !5224, inlinedAt: !5267)
!5273 = !DILocation(line: 376, column: 14, scope: !5224, inlinedAt: !5267)
!5274 = !DILocation(line: 377, column: 9, scope: !5224, inlinedAt: !5267)
!5275 = !DILocation(line: 377, column: 16, scope: !5224, inlinedAt: !5267)
!5276 = !DILocation(line: 32, column: 18, scope: !5262)
!5277 = !DILocation(line: 32, column: 2, scope: !5262)
!5278 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !2685, file: !2685, line: 137, type: !5279, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5279 = !DISubroutineType(types: !5280)
!5280 = !{!98, !995, !3467, !107, !99}
!5281 = !DILocalVariable(name: "s", arg: 1, scope: !5278, file: !2685, line: 137, type: !995)
!5282 = !DILocation(line: 137, column: 54, scope: !5278)
!5283 = !DILocalVariable(name: "object", arg: 2, scope: !5278, file: !2685, line: 137, type: !3467)
!5284 = !DILocation(line: 137, column: 69, scope: !5278)
!5285 = !DILocalVariable(name: "size", arg: 3, scope: !5278, file: !2685, line: 138, type: !107)
!5286 = !DILocation(line: 138, column: 12, scope: !5278)
!5287 = !DILocalVariable(name: "flags", arg: 4, scope: !5278, file: !2685, line: 138, type: !99)
!5288 = !DILocation(line: 138, column: 24, scope: !5278)
!5289 = !DILocation(line: 140, column: 17, scope: !5278)
!5290 = !DILocation(line: 140, column: 2, scope: !5278)
!5291 = distinct !DISubprogram(name: "xs_request_enter", scope: !3, file: !3, line: 115, type: !5292, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5292 = !DISubroutineType(types: !5293)
!5293 = !{!592, !2865}
!5294 = !DILocation(line: 392, column: 53, scope: !2961, inlinedAt: !5295)
!5295 = distinct !DILocation(line: 134, column: 2, scope: !5291)
!5296 = !DILocation(line: 352, column: 51, scope: !2969, inlinedAt: !5297)
!5297 = distinct !DILocation(line: 126, column: 3, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !5291, file: !3, line: 123, column: 47)
!5299 = !DILocation(line: 392, column: 53, scope: !2961, inlinedAt: !5300)
!5300 = distinct !DILocation(line: 124, column: 3, scope: !5298)
!5301 = !DILocation(line: 352, column: 51, scope: !2969, inlinedAt: !5302)
!5302 = distinct !DILocation(line: 121, column: 2, scope: !5291)
!5303 = !DILocalVariable(name: "req", arg: 1, scope: !5291, file: !3, line: 115, type: !2865)
!5304 = !DILocation(line: 115, column: 54, scope: !5291)
!5305 = !DILocalVariable(name: "rq_id", scope: !5291, file: !3, line: 117, type: !592)
!5306 = !DILocation(line: 117, column: 11, scope: !5291)
!5307 = !DILocation(line: 119, column: 14, scope: !5291)
!5308 = !DILocation(line: 119, column: 19, scope: !5291)
!5309 = !DILocation(line: 119, column: 23, scope: !5291)
!5310 = !DILocation(line: 119, column: 2, scope: !5291)
!5311 = !DILocation(line: 119, column: 7, scope: !5291)
!5312 = !DILocation(line: 119, column: 12, scope: !5291)
!5313 = !DILocation(line: 354, column: 2, scope: !2975, inlinedAt: !5302)
!5314 = !DILocation(line: 354, column: 2, scope: !2978, inlinedAt: !5302)
!5315 = !DILocation(line: 123, column: 2, scope: !5291)
!5316 = !DILocation(line: 123, column: 10, scope: !5291)
!5317 = !DILocation(line: 123, column: 25, scope: !5291)
!5318 = !DILocation(line: 123, column: 28, scope: !5291)
!5319 = !DILocation(line: 0, scope: !5291)
!5320 = !DILocation(line: 394, column: 2, scope: !3020, inlinedAt: !5300)
!5321 = !DILocation(line: 394, column: 2, scope: !3023, inlinedAt: !5300)
!5322 = !DILocation(line: 125, column: 3, scope: !5298)
!5323 = !DILocation(line: 125, column: 3, scope: !5324)
!5324 = distinct !DILexicalBlock(scope: !5298, file: !3, line: 125, column: 3)
!5325 = !DILocation(line: 125, column: 3, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 125, column: 3)
!5327 = !DILocation(line: 125, column: 3, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5326, file: !3, line: 125, column: 3)
!5329 = !DILocation(line: 125, column: 3, scope: !5330)
!5330 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 125, column: 3)
!5331 = !DILocalVariable(name: "__wq_entry", scope: !5332, file: !3, line: 125, type: !4983)
!5332 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 125, column: 3)
!5333 = !DILocation(line: 125, column: 3, scope: !5332)
!5334 = !DILocalVariable(name: "__ret", scope: !5332, file: !3, line: 125, type: !118)
!5335 = !DILocalVariable(name: "__int", scope: !5336, file: !3, line: 125, type: !118)
!5336 = distinct !DILexicalBlock(scope: !5337, file: !3, line: 125, column: 3)
!5337 = distinct !DILexicalBlock(scope: !5338, file: !3, line: 125, column: 3)
!5338 = distinct !DILexicalBlock(scope: !5332, file: !3, line: 125, column: 3)
!5339 = !DILocation(line: 125, column: 3, scope: !5336)
!5340 = !DILocation(line: 125, column: 3, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5336, file: !3, line: 125, column: 3)
!5342 = !DILocation(line: 125, column: 3, scope: !5337)
!5343 = distinct !{!5343, !5344, !5344}
!5344 = !DILocation(line: 125, column: 3, scope: !5338)
!5345 = !DILabel(scope: !5332, name: "__out", file: !3, line: 125)
!5346 = !DILocation(line: 354, column: 2, scope: !2975, inlinedAt: !5297)
!5347 = !DILocation(line: 354, column: 2, scope: !2978, inlinedAt: !5297)
!5348 = distinct !{!5348, !5315, !5349}
!5349 = !DILocation(line: 127, column: 2, scope: !5291)
!5350 = !DILocation(line: 129, column: 6, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5291, file: !3, line: 129, column: 6)
!5352 = !DILocation(line: 129, column: 11, scope: !5351)
!5353 = !DILocation(line: 129, column: 16, scope: !5351)
!5354 = !DILocation(line: 129, column: 40, scope: !5351)
!5355 = !DILocation(line: 129, column: 44, scope: !5351)
!5356 = !DILocation(line: 129, column: 49, scope: !5351)
!5357 = !DILocation(line: 129, column: 6, scope: !5291)
!5358 = !DILocation(line: 130, column: 17, scope: !5351)
!5359 = !DILocation(line: 130, column: 3, scope: !5351)
!5360 = !DILocation(line: 131, column: 16, scope: !5291)
!5361 = !DILocation(line: 132, column: 23, scope: !5291)
!5362 = !DILocation(line: 132, column: 8, scope: !5291)
!5363 = !DILocation(line: 394, column: 2, scope: !3020, inlinedAt: !5295)
!5364 = !DILocation(line: 394, column: 2, scope: !3023, inlinedAt: !5295)
!5365 = !DILocation(line: 136, column: 9, scope: !5291)
!5366 = !DILocation(line: 136, column: 2, scope: !5291)
!5367 = distinct !DISubprogram(name: "list_is_singular", scope: !4653, file: !4653, line: 358, type: !5368, scopeLine: 359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5368 = !DISubroutineType(types: !5369)
!5369 = !{!115, !5370}
!5370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5371, size: 64)
!5371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!5372 = !DILocalVariable(name: "head", arg: 1, scope: !5367, file: !4653, line: 358, type: !5370)
!5373 = !DILocation(line: 358, column: 60, scope: !5367)
!5374 = !DILocation(line: 360, column: 21, scope: !5367)
!5375 = !DILocation(line: 360, column: 10, scope: !5367)
!5376 = !DILocation(line: 360, column: 27, scope: !5367)
!5377 = !DILocation(line: 360, column: 31, scope: !5367)
!5378 = !DILocation(line: 360, column: 37, scope: !5367)
!5379 = !DILocation(line: 360, column: 45, scope: !5367)
!5380 = !DILocation(line: 360, column: 51, scope: !5367)
!5381 = !DILocation(line: 360, column: 42, scope: !5367)
!5382 = !DILocation(line: 0, scope: !5367)
!5383 = !DILocation(line: 360, column: 2, scope: !5367)
!5384 = distinct !DISubprogram(name: "list_empty", scope: !4653, file: !4653, line: 280, type: !5368, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5385 = !DILocalVariable(name: "head", arg: 1, scope: !5384, file: !4653, line: 280, type: !5370)
!5386 = !DILocation(line: 280, column: 54, scope: !5384)
!5387 = !DILocation(line: 282, column: 9, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5384, file: !4653, line: 282, column: 9)
!5389 = !DILocation(line: 282, column: 9, scope: !5390)
!5390 = distinct !DILexicalBlock(scope: !5388, file: !4653, line: 282, column: 9)
!5391 = !DILocation(line: 282, column: 34, scope: !5384)
!5392 = !DILocation(line: 282, column: 31, scope: !5384)
!5393 = !DILocation(line: 282, column: 2, scope: !5384)
!5394 = distinct !DISubprogram(name: "ERR_PTR", scope: !3464, file: !3464, line: 24, type: !5395, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5395 = !DISubroutineType(types: !5396)
!5396 = !{!98, !118}
!5397 = !DILocalVariable(name: "error", arg: 1, scope: !5394, file: !3464, line: 24, type: !118)
!5398 = !DILocation(line: 24, column: 48, scope: !5394)
!5399 = !DILocation(line: 26, column: 18, scope: !5394)
!5400 = !DILocation(line: 26, column: 9, scope: !5394)
!5401 = !DILocation(line: 26, column: 2, scope: !5394)
!5402 = distinct !DISubprogram(name: "xs_wake_up", scope: !3, file: !3, line: 271, type: !2887, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5403 = !DILocalVariable(name: "req", arg: 1, scope: !5402, file: !3, line: 271, type: !2865)
!5404 = !DILocation(line: 271, column: 44, scope: !5402)
!5405 = !DILocation(line: 273, column: 2, scope: !5402)
!5406 = !DILocation(line: 274, column: 1, scope: !5402)
!5407 = distinct !DISubprogram(name: "xs_wait_for_reply", scope: !3, file: !3, line: 249, type: !5408, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5408 = !DISubroutineType(types: !5409)
!5409 = !{!98, !2865, !2904}
!5410 = !DILocalVariable(name: "req", arg: 1, scope: !5407, file: !3, line: 249, type: !2865)
!5411 = !DILocation(line: 249, column: 52, scope: !5407)
!5412 = !DILocalVariable(name: "msg", arg: 2, scope: !5407, file: !3, line: 249, type: !2904)
!5413 = !DILocation(line: 249, column: 77, scope: !5407)
!5414 = !DILocalVariable(name: "ret", scope: !5407, file: !3, line: 251, type: !98)
!5415 = !DILocation(line: 251, column: 8, scope: !5407)
!5416 = !DILocation(line: 253, column: 19, scope: !5407)
!5417 = !DILocation(line: 253, column: 8, scope: !5407)
!5418 = !DILocation(line: 253, column: 6, scope: !5407)
!5419 = !DILocation(line: 255, column: 18, scope: !5407)
!5420 = !DILocation(line: 255, column: 2, scope: !5407)
!5421 = !DILocation(line: 257, column: 14, scope: !5407)
!5422 = !DILocation(line: 257, column: 19, scope: !5407)
!5423 = !DILocation(line: 257, column: 23, scope: !5407)
!5424 = !DILocation(line: 257, column: 2, scope: !5407)
!5425 = !DILocation(line: 257, column: 7, scope: !5407)
!5426 = !DILocation(line: 257, column: 12, scope: !5407)
!5427 = !DILocation(line: 258, column: 13, scope: !5407)
!5428 = !DILocation(line: 258, column: 18, scope: !5407)
!5429 = !DILocation(line: 258, column: 22, scope: !5407)
!5430 = !DILocation(line: 258, column: 2, scope: !5407)
!5431 = !DILocation(line: 258, column: 7, scope: !5407)
!5432 = !DILocation(line: 258, column: 11, scope: !5407)
!5433 = !DILocation(line: 260, column: 2, scope: !5407)
!5434 = !DILocation(line: 261, column: 6, scope: !5435)
!5435 = distinct !DILexicalBlock(scope: !5407, file: !3, line: 261, column: 6)
!5436 = !DILocation(line: 261, column: 11, scope: !5435)
!5437 = !DILocation(line: 261, column: 17, scope: !5435)
!5438 = !DILocation(line: 261, column: 40, scope: !5435)
!5439 = !DILocation(line: 262, column: 6, scope: !5435)
!5440 = !DILocation(line: 262, column: 11, scope: !5435)
!5441 = !DILocation(line: 262, column: 17, scope: !5435)
!5442 = !DILocation(line: 261, column: 6, scope: !5407)
!5443 = !DILocation(line: 263, column: 3, scope: !5435)
!5444 = !DILocation(line: 263, column: 8, scope: !5435)
!5445 = !DILocation(line: 263, column: 14, scope: !5435)
!5446 = !DILocation(line: 265, column: 9, scope: !5435)
!5447 = !DILocation(line: 265, column: 3, scope: !5435)
!5448 = !DILocation(line: 266, column: 2, scope: !5407)
!5449 = !DILocation(line: 268, column: 9, scope: !5407)
!5450 = !DILocation(line: 268, column: 2, scope: !5407)
!5451 = distinct !DISubprogram(name: "get_error", scope: !3, file: !3, line: 154, type: !5452, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5452 = !DISubroutineType(types: !5453)
!5453 = !{!115, !116}
!5454 = !DILocalVariable(name: "errorstring", arg: 1, scope: !5451, file: !3, line: 154, type: !116)
!5455 = !DILocation(line: 154, column: 34, scope: !5451)
!5456 = !DILocalVariable(name: "i", scope: !5451, file: !3, line: 156, type: !7)
!5457 = !DILocation(line: 156, column: 15, scope: !5451)
!5458 = !DILocation(line: 158, column: 9, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5451, file: !3, line: 158, column: 2)
!5460 = !DILocation(line: 158, column: 7, scope: !5459)
!5461 = !DILocation(line: 158, column: 21, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !5459, file: !3, line: 158, column: 2)
!5463 = !DILocation(line: 158, column: 45, scope: !5462)
!5464 = !DILocation(line: 158, column: 34, scope: !5462)
!5465 = !DILocation(line: 158, column: 48, scope: !5462)
!5466 = !DILocation(line: 158, column: 14, scope: !5462)
!5467 = !DILocation(line: 158, column: 59, scope: !5462)
!5468 = !DILocation(line: 158, column: 2, scope: !5459)
!5469 = !DILocation(line: 159, column: 7, scope: !5470)
!5470 = distinct !DILexicalBlock(scope: !5471, file: !3, line: 159, column: 7)
!5471 = distinct !DILexicalBlock(scope: !5462, file: !3, line: 158, column: 70)
!5472 = !DILocation(line: 159, column: 9, scope: !5470)
!5473 = !DILocation(line: 159, column: 7, scope: !5471)
!5474 = !DILocation(line: 160, column: 4, scope: !5475)
!5475 = distinct !DILexicalBlock(scope: !5470, file: !3, line: 159, column: 40)
!5476 = !DILocation(line: 162, column: 4, scope: !5475)
!5477 = !DILocation(line: 164, column: 2, scope: !5471)
!5478 = !DILocation(line: 158, column: 66, scope: !5462)
!5479 = !DILocation(line: 158, column: 2, scope: !5462)
!5480 = distinct !{!5480, !5468, !5481}
!5481 = !DILocation(line: 164, column: 2, scope: !5459)
!5482 = !DILocation(line: 165, column: 20, scope: !5451)
!5483 = !DILocation(line: 165, column: 9, scope: !5451)
!5484 = !DILocation(line: 165, column: 23, scope: !5451)
!5485 = !DILocation(line: 165, column: 2, scope: !5451)
!5486 = !DILocation(line: 166, column: 1, scope: !5451)
!5487 = distinct !DISubprogram(name: "read_reply", scope: !3, file: !3, line: 206, type: !5488, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5488 = !DISubroutineType(types: !5489)
!5489 = !{!98, !2865}
!5490 = !DILocalVariable(name: "req", arg: 1, scope: !5487, file: !3, line: 206, type: !2865)
!5491 = !DILocation(line: 206, column: 45, scope: !5487)
!5492 = !DILocation(line: 208, column: 2, scope: !5487)
!5493 = !DILocation(line: 209, column: 3, scope: !5494)
!5494 = distinct !DILexicalBlock(scope: !5487, file: !3, line: 208, column: 5)
!5495 = !DILocation(line: 209, column: 3, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5494, file: !3, line: 209, column: 3)
!5497 = !DILocation(line: 209, column: 3, scope: !5498)
!5498 = distinct !DILexicalBlock(scope: !5496, file: !3, line: 209, column: 3)
!5499 = !DILocation(line: 209, column: 3, scope: !5500)
!5500 = distinct !DILexicalBlock(scope: !5498, file: !3, line: 209, column: 3)
!5501 = !DILocation(line: 209, column: 3, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5496, file: !3, line: 209, column: 3)
!5503 = !DILocalVariable(name: "__wq_entry", scope: !5504, file: !3, line: 209, type: !4983)
!5504 = distinct !DILexicalBlock(scope: !5496, file: !3, line: 209, column: 3)
!5505 = !DILocation(line: 209, column: 3, scope: !5504)
!5506 = !DILocalVariable(name: "__ret", scope: !5504, file: !3, line: 209, type: !118)
!5507 = !DILocalVariable(name: "__int", scope: !5508, file: !3, line: 209, type: !118)
!5508 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 209, column: 3)
!5509 = distinct !DILexicalBlock(scope: !5510, file: !3, line: 209, column: 3)
!5510 = distinct !DILexicalBlock(scope: !5504, file: !3, line: 209, column: 3)
!5511 = !DILocation(line: 209, column: 3, scope: !5508)
!5512 = !DILocation(line: 209, column: 3, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5508, file: !3, line: 209, column: 3)
!5514 = !DILocation(line: 209, column: 3, scope: !5509)
!5515 = distinct !{!5515, !5516, !5516}
!5516 = !DILocation(line: 209, column: 3, scope: !5510)
!5517 = !DILabel(scope: !5504, name: "__out", file: !3, line: 209)
!5518 = !DILocation(line: 211, column: 8, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !5494, file: !3, line: 211, column: 7)
!5520 = !DILocation(line: 211, column: 7, scope: !5494)
!5521 = !DILocation(line: 218, column: 11, scope: !5519)
!5522 = !DILocation(line: 218, column: 4, scope: !5519)
!5523 = !DILocation(line: 219, column: 7, scope: !5524)
!5524 = distinct !DILexicalBlock(scope: !5494, file: !3, line: 219, column: 7)
!5525 = !DILocation(line: 219, column: 12, scope: !5524)
!5526 = !DILocation(line: 219, column: 7, scope: !5494)
!5527 = !DILocation(line: 220, column: 19, scope: !5524)
!5528 = !DILocation(line: 220, column: 24, scope: !5524)
!5529 = !DILocation(line: 220, column: 11, scope: !5524)
!5530 = !DILocation(line: 220, column: 4, scope: !5524)
!5531 = !DILocation(line: 222, column: 2, scope: !5494)
!5532 = !DILocation(line: 222, column: 11, scope: !5487)
!5533 = !DILocation(line: 222, column: 16, scope: !5487)
!5534 = !DILocation(line: 222, column: 22, scope: !5487)
!5535 = distinct !{!5535, !5492, !5536}
!5536 = !DILocation(line: 222, column: 47, scope: !5487)
!5537 = !DILocation(line: 224, column: 9, scope: !5487)
!5538 = !DILocation(line: 224, column: 14, scope: !5487)
!5539 = !DILocation(line: 224, column: 2, scope: !5487)
!5540 = !DILocation(line: 225, column: 1, scope: !5487)
!5541 = distinct !DISubprogram(name: "test_reply", scope: !3, file: !3, line: 192, type: !5542, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5542 = !DISubroutineType(types: !5543)
!5543 = !{!525, !2865}
!5544 = !DILocalVariable(name: "req", arg: 1, scope: !5541, file: !3, line: 192, type: !2865)
!5545 = !DILocation(line: 192, column: 44, scope: !5541)
!5546 = !DILocation(line: 194, column: 6, scope: !5547)
!5547 = distinct !DILexicalBlock(scope: !5541, file: !3, line: 194, column: 6)
!5548 = !DILocation(line: 194, column: 11, scope: !5547)
!5549 = !DILocation(line: 194, column: 17, scope: !5547)
!5550 = !DILocation(line: 194, column: 43, scope: !5547)
!5551 = !DILocation(line: 194, column: 47, scope: !5547)
!5552 = !DILocation(line: 194, column: 6, scope: !5541)
!5553 = !DILocation(line: 196, column: 3, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5547, file: !3, line: 194, column: 60)
!5555 = !{i32 -2142867319}
!5556 = !DILocation(line: 197, column: 3, scope: !5554)
!5557 = !DILocation(line: 201, column: 2, scope: !5541)
!5558 = !{i32 -2142867281}
!5559 = !DILocation(line: 203, column: 2, scope: !5541)
!5560 = !DILocation(line: 204, column: 1, scope: !5541)
!5561 = distinct !DISubprogram(name: "xenbus_ok", scope: !3, file: !3, line: 168, type: !5562, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5562 = !DISubroutineType(types: !5563)
!5563 = !{!525}
!5564 = !DILocation(line: 170, column: 10, scope: !5561)
!5565 = !DILocation(line: 170, column: 2, scope: !5561)
!5566 = !DILocation(line: 172, column: 11, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5561, file: !3, line: 170, column: 33)
!5568 = !DILocation(line: 172, column: 3, scope: !5567)
!5569 = !DILocation(line: 176, column: 4, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5567, file: !3, line: 172, column: 25)
!5571 = !DILocation(line: 178, column: 4, scope: !5570)
!5572 = !DILocation(line: 180, column: 3, scope: !5567)
!5573 = !DILocation(line: 185, column: 3, scope: !5567)
!5574 = !DILocation(line: 187, column: 3, scope: !5567)
!5575 = !DILocation(line: 189, column: 2, scope: !5561)
!5576 = !DILocation(line: 190, column: 1, scope: !5561)
!5577 = distinct !DISubprogram(name: "__list_add", scope: !4653, file: !4653, line: 63, type: !5578, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5578 = !DISubroutineType(types: !5579)
!5579 = !{null, !126, !126, !126}
!5580 = !DILocalVariable(name: "new", arg: 1, scope: !5577, file: !4653, line: 63, type: !126)
!5581 = !DILocation(line: 63, column: 49, scope: !5577)
!5582 = !DILocalVariable(name: "prev", arg: 2, scope: !5577, file: !4653, line: 64, type: !126)
!5583 = !DILocation(line: 64, column: 28, scope: !5577)
!5584 = !DILocalVariable(name: "next", arg: 3, scope: !5577, file: !4653, line: 65, type: !126)
!5585 = !DILocation(line: 65, column: 28, scope: !5577)
!5586 = !DILocation(line: 67, column: 24, scope: !5587)
!5587 = distinct !DILexicalBlock(scope: !5577, file: !4653, line: 67, column: 6)
!5588 = !DILocation(line: 67, column: 29, scope: !5587)
!5589 = !DILocation(line: 67, column: 35, scope: !5587)
!5590 = !DILocation(line: 67, column: 7, scope: !5587)
!5591 = !DILocation(line: 67, column: 6, scope: !5577)
!5592 = !DILocation(line: 68, column: 3, scope: !5587)
!5593 = !DILocation(line: 70, column: 15, scope: !5577)
!5594 = !DILocation(line: 70, column: 2, scope: !5577)
!5595 = !DILocation(line: 70, column: 8, scope: !5577)
!5596 = !DILocation(line: 70, column: 13, scope: !5577)
!5597 = !DILocation(line: 71, column: 14, scope: !5577)
!5598 = !DILocation(line: 71, column: 2, scope: !5577)
!5599 = !DILocation(line: 71, column: 7, scope: !5577)
!5600 = !DILocation(line: 71, column: 12, scope: !5577)
!5601 = !DILocation(line: 72, column: 14, scope: !5577)
!5602 = !DILocation(line: 72, column: 2, scope: !5577)
!5603 = !DILocation(line: 72, column: 7, scope: !5577)
!5604 = !DILocation(line: 72, column: 12, scope: !5577)
!5605 = !DILocation(line: 73, column: 2, scope: !5577)
!5606 = !DILocation(line: 73, column: 2, scope: !5607)
!5607 = distinct !DILexicalBlock(scope: !5577, file: !4653, line: 73, column: 2)
!5608 = !DILocation(line: 73, column: 2, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5607, file: !4653, line: 73, column: 2)
!5610 = !DILocation(line: 73, column: 2, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5607, file: !4653, line: 73, column: 2)
!5612 = !DILocation(line: 74, column: 1, scope: !5577)
!5613 = distinct !DISubprogram(name: "__list_add_valid", scope: !4653, file: !4653, line: 45, type: !5614, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5614 = !DISubroutineType(types: !5615)
!5615 = !{!525, !126, !126, !126}
!5616 = !DILocalVariable(name: "new", arg: 1, scope: !5613, file: !4653, line: 45, type: !126)
!5617 = !DILocation(line: 45, column: 55, scope: !5613)
!5618 = !DILocalVariable(name: "prev", arg: 2, scope: !5613, file: !4653, line: 46, type: !126)
!5619 = !DILocation(line: 46, column: 23, scope: !5613)
!5620 = !DILocalVariable(name: "next", arg: 3, scope: !5613, file: !4653, line: 47, type: !126)
!5621 = !DILocation(line: 47, column: 23, scope: !5613)
!5622 = !DILocation(line: 49, column: 2, scope: !5613)
!5623 = distinct !DISubprogram(name: "__list_del_entry", scope: !4653, file: !4653, line: 130, type: !4781, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5624 = !DILocalVariable(name: "entry", arg: 1, scope: !5623, file: !4653, line: 130, type: !126)
!5625 = !DILocation(line: 130, column: 55, scope: !5623)
!5626 = !DILocation(line: 132, column: 30, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5623, file: !4653, line: 132, column: 6)
!5628 = !DILocation(line: 132, column: 7, scope: !5627)
!5629 = !DILocation(line: 132, column: 6, scope: !5623)
!5630 = !DILocation(line: 133, column: 3, scope: !5627)
!5631 = !DILocation(line: 135, column: 13, scope: !5623)
!5632 = !DILocation(line: 135, column: 20, scope: !5623)
!5633 = !DILocation(line: 135, column: 26, scope: !5623)
!5634 = !DILocation(line: 135, column: 33, scope: !5623)
!5635 = !DILocation(line: 135, column: 2, scope: !5623)
!5636 = !DILocation(line: 136, column: 1, scope: !5623)
!5637 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4653, file: !4653, line: 51, type: !5638, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5638 = !DISubroutineType(types: !5639)
!5639 = !{!525, !126}
!5640 = !DILocalVariable(name: "entry", arg: 1, scope: !5637, file: !4653, line: 51, type: !126)
!5641 = !DILocation(line: 51, column: 61, scope: !5637)
!5642 = !DILocation(line: 53, column: 2, scope: !5637)
!5643 = distinct !DISubprogram(name: "__list_del", scope: !4653, file: !4653, line: 110, type: !4654, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5644 = !DILocalVariable(name: "prev", arg: 1, scope: !5643, file: !4653, line: 110, type: !126)
!5645 = !DILocation(line: 110, column: 50, scope: !5643)
!5646 = !DILocalVariable(name: "next", arg: 2, scope: !5643, file: !4653, line: 110, type: !126)
!5647 = !DILocation(line: 110, column: 75, scope: !5643)
!5648 = !DILocation(line: 112, column: 15, scope: !5643)
!5649 = !DILocation(line: 112, column: 2, scope: !5643)
!5650 = !DILocation(line: 112, column: 8, scope: !5643)
!5651 = !DILocation(line: 112, column: 13, scope: !5643)
!5652 = !DILocation(line: 113, column: 2, scope: !5643)
!5653 = !DILocation(line: 113, column: 2, scope: !5654)
!5654 = distinct !DILexicalBlock(scope: !5643, file: !4653, line: 113, column: 2)
!5655 = !DILocation(line: 113, column: 2, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5654, file: !4653, line: 113, column: 2)
!5657 = !DILocation(line: 113, column: 2, scope: !5658)
!5658 = distinct !DILexicalBlock(scope: !5654, file: !4653, line: 113, column: 2)
!5659 = !DILocation(line: 114, column: 1, scope: !5643)
!5660 = distinct !DISubprogram(name: "xs_reboot_notify", scope: !3, file: !3, line: 908, type: !2948, scopeLine: 910, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5661 = !DILocalVariable(name: "nb", arg: 1, scope: !5660, file: !3, line: 908, type: !2950)
!5662 = !DILocation(line: 908, column: 52, scope: !5660)
!5663 = !DILocalVariable(name: "code", arg: 2, scope: !5660, file: !3, line: 909, type: !111)
!5664 = !DILocation(line: 909, column: 22, scope: !5660)
!5665 = !DILocalVariable(name: "unused", arg: 3, scope: !5660, file: !3, line: 909, type: !98)
!5666 = !DILocation(line: 909, column: 34, scope: !5660)
!5667 = !DILocalVariable(name: "req", scope: !5660, file: !3, line: 911, type: !2865)
!5668 = !DILocation(line: 911, column: 22, scope: !5660)
!5669 = !DILocation(line: 913, column: 2, scope: !5660)
!5670 = !DILocalVariable(name: "__mptr", scope: !5671, file: !3, line: 914, type: !98)
!5671 = distinct !DILexicalBlock(scope: !5672, file: !3, line: 914, column: 2)
!5672 = distinct !DILexicalBlock(scope: !5660, file: !3, line: 914, column: 2)
!5673 = !DILocation(line: 914, column: 2, scope: !5671)
!5674 = !DILocation(line: 914, column: 2, scope: !5675)
!5675 = distinct !DILexicalBlock(scope: !5671, file: !3, line: 914, column: 2)
!5676 = !DILocation(line: 914, column: 2, scope: !5672)
!5677 = !DILocation(line: 914, column: 2, scope: !5678)
!5678 = distinct !DILexicalBlock(scope: !5672, file: !3, line: 914, column: 2)
!5679 = !DILocation(line: 915, column: 3, scope: !5678)
!5680 = !DILocalVariable(name: "__mptr", scope: !5681, file: !3, line: 914, type: !98)
!5681 = distinct !DILexicalBlock(scope: !5678, file: !3, line: 914, column: 2)
!5682 = !DILocation(line: 914, column: 2, scope: !5681)
!5683 = !DILocation(line: 914, column: 2, scope: !5684)
!5684 = distinct !DILexicalBlock(scope: !5681, file: !3, line: 914, column: 2)
!5685 = distinct !{!5685, !5676, !5686}
!5686 = !DILocation(line: 915, column: 3, scope: !5672)
!5687 = !DILocalVariable(name: "__mptr", scope: !5688, file: !3, line: 916, type: !98)
!5688 = distinct !DILexicalBlock(scope: !5689, file: !3, line: 916, column: 2)
!5689 = distinct !DILexicalBlock(scope: !5660, file: !3, line: 916, column: 2)
!5690 = !DILocation(line: 916, column: 2, scope: !5688)
!5691 = !DILocation(line: 916, column: 2, scope: !5692)
!5692 = distinct !DILexicalBlock(scope: !5688, file: !3, line: 916, column: 2)
!5693 = !DILocation(line: 916, column: 2, scope: !5689)
!5694 = !DILocation(line: 916, column: 2, scope: !5695)
!5695 = distinct !DILexicalBlock(scope: !5689, file: !3, line: 916, column: 2)
!5696 = !DILocation(line: 917, column: 3, scope: !5695)
!5697 = !DILocalVariable(name: "__mptr", scope: !5698, file: !3, line: 916, type: !98)
!5698 = distinct !DILexicalBlock(scope: !5695, file: !3, line: 916, column: 2)
!5699 = !DILocation(line: 916, column: 2, scope: !5698)
!5700 = !DILocation(line: 916, column: 2, scope: !5701)
!5701 = distinct !DILexicalBlock(scope: !5698, file: !3, line: 916, column: 2)
!5702 = distinct !{!5702, !5693, !5703}
!5703 = !DILocation(line: 917, column: 3, scope: !5689)
!5704 = !DILocation(line: 918, column: 2, scope: !5660)
!5705 = !DILocation(line: 919, column: 2, scope: !5660)
!5706 = distinct !DISubprogram(name: "xen_strict_xenbus_quirk", scope: !3, file: !3, line: 726, type: !5562, scopeLine: 727, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5707 = !DILocalVariable(name: "eax", scope: !5706, file: !3, line: 729, type: !592)
!5708 = !DILocation(line: 729, column: 11, scope: !5706)
!5709 = !DILocalVariable(name: "ebx", scope: !5706, file: !3, line: 729, type: !592)
!5710 = !DILocation(line: 729, column: 16, scope: !5706)
!5711 = !DILocalVariable(name: "ecx", scope: !5706, file: !3, line: 729, type: !592)
!5712 = !DILocation(line: 729, column: 21, scope: !5706)
!5713 = !DILocalVariable(name: "edx", scope: !5706, file: !3, line: 729, type: !592)
!5714 = !DILocation(line: 729, column: 26, scope: !5706)
!5715 = !DILocalVariable(name: "base", scope: !5706, file: !3, line: 729, type: !592)
!5716 = !DILocation(line: 729, column: 31, scope: !5706)
!5717 = !DILocation(line: 731, column: 9, scope: !5706)
!5718 = !DILocation(line: 731, column: 7, scope: !5706)
!5719 = !DILocation(line: 732, column: 8, scope: !5706)
!5720 = !DILocation(line: 732, column: 13, scope: !5706)
!5721 = !DILocation(line: 732, column: 2, scope: !5706)
!5722 = !DILocation(line: 734, column: 7, scope: !5723)
!5723 = distinct !DILexicalBlock(scope: !5706, file: !3, line: 734, column: 6)
!5724 = !DILocation(line: 734, column: 11, scope: !5723)
!5725 = !DILocation(line: 734, column: 18, scope: !5723)
!5726 = !DILocation(line: 734, column: 6, scope: !5706)
!5727 = !DILocation(line: 735, column: 3, scope: !5723)
!5728 = !DILocation(line: 737, column: 2, scope: !5706)
!5729 = !DILocation(line: 739, column: 1, scope: !5706)
!5730 = distinct !DISubprogram(name: "xen_cpuid_base", scope: !5731, file: !5731, line: 41, type: !5732, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5731 = !DIFile(filename: "./arch/x86/include/asm/xen/hypervisor.h", directory: "/home/lizy2001/genbc/linux")
!5732 = !DISubroutineType(types: !5733)
!5733 = !{!592}
!5734 = !DILocation(line: 43, column: 9, scope: !5730)
!5735 = !DILocation(line: 43, column: 2, scope: !5730)
!5736 = distinct !DISubprogram(name: "cpuid", scope: !2696, file: !2696, line: 615, type: !5737, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5737 = !DISubroutineType(types: !5738)
!5738 = !{null, !7, !1337, !1337, !1337, !1337}
!5739 = !DILocalVariable(name: "op", arg: 1, scope: !5736, file: !2696, line: 615, type: !7)
!5740 = !DILocation(line: 615, column: 39, scope: !5736)
!5741 = !DILocalVariable(name: "eax", arg: 2, scope: !5736, file: !2696, line: 616, type: !1337)
!5742 = !DILocation(line: 616, column: 19, scope: !5736)
!5743 = !DILocalVariable(name: "ebx", arg: 3, scope: !5736, file: !2696, line: 616, type: !1337)
!5744 = !DILocation(line: 616, column: 38, scope: !5736)
!5745 = !DILocalVariable(name: "ecx", arg: 4, scope: !5736, file: !2696, line: 617, type: !1337)
!5746 = !DILocation(line: 617, column: 19, scope: !5736)
!5747 = !DILocalVariable(name: "edx", arg: 5, scope: !5736, file: !2696, line: 617, type: !1337)
!5748 = !DILocation(line: 617, column: 38, scope: !5736)
!5749 = !DILocation(line: 619, column: 9, scope: !5736)
!5750 = !DILocation(line: 619, column: 3, scope: !5736)
!5751 = !DILocation(line: 619, column: 7, scope: !5736)
!5752 = !DILocation(line: 620, column: 3, scope: !5736)
!5753 = !DILocation(line: 620, column: 7, scope: !5736)
!5754 = !DILocation(line: 621, column: 10, scope: !5736)
!5755 = !DILocation(line: 621, column: 15, scope: !5736)
!5756 = !DILocation(line: 621, column: 20, scope: !5736)
!5757 = !DILocation(line: 621, column: 25, scope: !5736)
!5758 = !DILocation(line: 621, column: 2, scope: !5736)
!5759 = !DILocation(line: 622, column: 1, scope: !5736)
!5760 = distinct !DISubprogram(name: "hypervisor_cpuid_base", scope: !2696, file: !2696, line: 823, type: !5761, scopeLine: 824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5761 = !DISubroutineType(types: !5762)
!5762 = !{!592, !116, !592}
!5763 = !DILocalVariable(name: "sig", arg: 1, scope: !5760, file: !2696, line: 823, type: !116)
!5764 = !DILocation(line: 823, column: 58, scope: !5760)
!5765 = !DILocalVariable(name: "leaves", arg: 2, scope: !5760, file: !2696, line: 823, type: !592)
!5766 = !DILocation(line: 823, column: 72, scope: !5760)
!5767 = !DILocalVariable(name: "base", scope: !5760, file: !2696, line: 825, type: !592)
!5768 = !DILocation(line: 825, column: 11, scope: !5760)
!5769 = !DILocalVariable(name: "eax", scope: !5760, file: !2696, line: 825, type: !592)
!5770 = !DILocation(line: 825, column: 17, scope: !5760)
!5771 = !DILocalVariable(name: "signature", scope: !5760, file: !2696, line: 825, type: !5772)
!5772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !592, size: 96, elements: !690)
!5773 = !DILocation(line: 825, column: 22, scope: !5760)
!5774 = !DILocation(line: 827, column: 12, scope: !5775)
!5775 = distinct !DILexicalBlock(scope: !5760, file: !2696, line: 827, column: 2)
!5776 = !DILocation(line: 827, column: 7, scope: !5775)
!5777 = !DILocation(line: 827, column: 26, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5775, file: !2696, line: 827, column: 2)
!5779 = !DILocation(line: 827, column: 31, scope: !5778)
!5780 = !DILocation(line: 827, column: 2, scope: !5775)
!5781 = !DILocation(line: 828, column: 9, scope: !5782)
!5782 = distinct !DILexicalBlock(scope: !5778, file: !2696, line: 827, column: 60)
!5783 = !DILocation(line: 828, column: 22, scope: !5782)
!5784 = !DILocation(line: 828, column: 37, scope: !5782)
!5785 = !DILocation(line: 828, column: 52, scope: !5782)
!5786 = !DILocation(line: 828, column: 3, scope: !5782)
!5787 = !DILocation(line: 830, column: 15, scope: !5788)
!5788 = distinct !DILexicalBlock(scope: !5782, file: !2696, line: 830, column: 7)
!5789 = !DILocation(line: 830, column: 20, scope: !5788)
!5790 = !DILocation(line: 830, column: 8, scope: !5788)
!5791 = !DILocation(line: 830, column: 35, scope: !5788)
!5792 = !DILocation(line: 831, column: 8, scope: !5788)
!5793 = !DILocation(line: 831, column: 15, scope: !5788)
!5794 = !DILocation(line: 831, column: 20, scope: !5788)
!5795 = !DILocation(line: 831, column: 25, scope: !5788)
!5796 = !DILocation(line: 831, column: 31, scope: !5788)
!5797 = !DILocation(line: 831, column: 29, scope: !5788)
!5798 = !DILocation(line: 831, column: 40, scope: !5788)
!5799 = !DILocation(line: 831, column: 37, scope: !5788)
!5800 = !DILocation(line: 830, column: 7, scope: !5782)
!5801 = !DILocation(line: 832, column: 11, scope: !5788)
!5802 = !DILocation(line: 832, column: 4, scope: !5788)
!5803 = !DILocation(line: 833, column: 2, scope: !5782)
!5804 = !DILocation(line: 827, column: 50, scope: !5778)
!5805 = !DILocation(line: 827, column: 2, scope: !5778)
!5806 = distinct !{!5806, !5780, !5807}
!5807 = !DILocation(line: 833, column: 2, scope: !5775)
!5808 = !DILocation(line: 835, column: 2, scope: !5760)
!5809 = !DILocation(line: 836, column: 1, scope: !5760)
!5810 = distinct !DISubprogram(name: "__cpuid", scope: !5811, file: !5811, line: 94, type: !5812, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!5811 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!5812 = !DISubroutineType(types: !5813)
!5813 = !{null, !1337, !1337, !1337, !1337}
!5814 = !DILocalVariable(name: "eax", arg: 1, scope: !5810, file: !5811, line: 94, type: !1337)
!5815 = !DILocation(line: 94, column: 42, scope: !5810)
!5816 = !DILocalVariable(name: "ebx", arg: 2, scope: !5810, file: !5811, line: 94, type: !1337)
!5817 = !DILocation(line: 94, column: 61, scope: !5810)
!5818 = !DILocalVariable(name: "ecx", arg: 3, scope: !5810, file: !5811, line: 95, type: !1337)
!5819 = !DILocation(line: 95, column: 21, scope: !5810)
!5820 = !DILocalVariable(name: "edx", arg: 4, scope: !5810, file: !5811, line: 95, type: !1337)
!5821 = !DILocation(line: 95, column: 40, scope: !5810)
!5822 = !DILocalVariable(name: "__edi", scope: !5823, file: !5811, line: 97, type: !111)
!5823 = distinct !DILexicalBlock(scope: !5810, file: !5811, line: 97, column: 2)
!5824 = !DILocation(line: 97, column: 2, scope: !5823)
!5825 = !DILocalVariable(name: "__esi", scope: !5823, file: !5811, line: 97, type: !111)
!5826 = !DILocalVariable(name: "__edx", scope: !5823, file: !5811, line: 97, type: !111)
!5827 = !DILocalVariable(name: "__ecx", scope: !5823, file: !5811, line: 97, type: !111)
!5828 = !DILocalVariable(name: "__eax", scope: !5823, file: !5811, line: 97, type: !111)
!5829 = !{i32 -2146092078, i32 -2146091098, i32 -2146090864, i32 -2146090813, i32 -2146090785, i32 -2146090760, i32 -2146091076, i32 -2146091063, i32 -2146090625, i32 -2146090506, i32 -2146090971, i32 -2146090944, i32 -2146090916, i32 -2146090886}
!5830 = !DILocation(line: 98, column: 1, scope: !5810)
