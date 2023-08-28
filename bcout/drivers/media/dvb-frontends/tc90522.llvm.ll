; ModuleID = '../bcout/drivers/media/dvb-frontends/tc90522.llvm.bc'
source_filename = "drivers/media/dvb-frontends/tc90522.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_tc90522_driver_init6:\09\09\09"
module asm ".long\09tc90522_driver_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.i2c_driver = type { i32, i32 (%struct.i2c_client*, %struct.i2c_device_id*)*, i32 (%struct.i2c_client*)*, i32 (%struct.i2c_client*)*, void (%struct.i2c_client*)*, void (%struct.i2c_client*, i32, i32)*, i32 (%struct.i2c_client*, i32, i8*)*, %struct.device_driver, %struct.i2c_device_id*, i32 (%struct.i2c_client*, %struct.i2c_board_info*)*, i16*, %struct.list_head }
%struct.i2c_client = type { i16, i16, [20 x i8], %struct.i2c_adapter*, %struct.device, i32, i32, %struct.list_head }
%struct.i2c_adapter = type { %struct.module*, i32, %struct.i2c_algorithm*, i8*, %struct.i2c_lock_operations*, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i64, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, %struct.i2c_bus_recovery_info*, %struct.i2c_adapter_quirks*, %struct.irq_domain* }
%struct.module = type opaque
%struct.i2c_algorithm = type { i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*)* }
%struct.i2c_msg = type { i16, i16, i16, i8* }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.i2c_lock_operations = type { void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*, i32)*, void (%struct.i2c_adapter*, i32)* }
%struct.rt_mutex = type { %struct.raw_spinlock, %struct.rb_root_cached, %struct.task_struct* }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.59, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i32 }
%struct.sched_class = type opaque
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, %struct.sched_statistics }
%struct.load_weight = type { i64, i32 }
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
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.29, %struct.list_head, %struct.list_head, %union.anon.30 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.1, i8* }
%union.anon.1 = type { i64 }
%struct.lockref = type { %union.anon.27 }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { %struct.spinlock, i32 }
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
%struct.page = type { i64, %union.anon.3, %union.anon.18, %struct.atomic_t, [8 x i8] }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.18 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.19, i32 }
%union.anon.19 = type { %struct.kuid_t }
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
%union.anon.29 = type { %struct.list_head }
%union.anon.30 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.20, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.21, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.22, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.25, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.20 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.21 = type { %struct.callback_head }
%union.anon.22 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.6 }
%union.anon.6 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.25 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.23 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.23 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.39 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.39 = type { %struct.callback_head }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.31, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.32, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.33, %union.anon.37, %struct.key_restriction* }
%union.anon.31 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.32 = type { i64 }
%union.anon.33 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.34, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.34 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.37 = type { %union.key_payload }
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
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.45, %union.anon.46, i32 }
%struct.request_queue = type opaque
%union.anon.45 = type { %struct.list_head }
%union.anon.46 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.47 }
%struct.anon.47 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.51 }
%struct.anon.51 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.58, i32, [12 x i8] }
%union.anon.58 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.59 = type { %struct.callback_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.60, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.63 }
%union.anon.60 = type { %struct.anon.61 }
%struct.anon.61 = type { i64, i64 }
%union.anon.63 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.i2c_bus_recovery_info = type { i32 (%struct.i2c_adapter*)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)*, %struct.gpio_desc*, %struct.gpio_desc*, %struct.pinctrl*, %struct.pinctrl_state*, %struct.pinctrl_state* }
%struct.gpio_desc = type opaque
%struct.pinctrl = type opaque
%struct.pinctrl_state = type opaque
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, i32, %struct.xarray, %struct.mutex, [0 x i32] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.attribute = type { i8*, i16 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.26, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.26 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type opaque
%struct.irq_domain_chip_generic = type opaque
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
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
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.i2c_device_id = type { [20 x i8], i64 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, i8*, i8*, %struct.device_node*, %struct.fwnode_handle*, %struct.property_entry*, %struct.resource*, i32, i32 }
%struct.property_entry = type { i8*, i64, i8, i32, %union.anon.64 }
%union.anon.64 = type { i8* }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, i8*, i32)*, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)*, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)*, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i64)*, i32 (%struct.dvb_frontend*, i64)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, %struct.dvb_adapter*, i8*, i8*, i8*, i8*, i8*, %struct.dtv_frontend_properties, i32 (i8*, i32, i32, i32)*, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, i8*, [6 x i8], i8*, %struct.device*, %struct.module*, i32, %struct.dvb_device*, %struct.mutex }
%struct.dvb_device = type { %struct.list_head, %struct.file_operations*, %struct.dvb_adapter*, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, i32 (%struct.file*, i32, i8*)*, i8* }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.66], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.66 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.67 }>
%union.anon.67 = type { i64 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.dvb_diseqc_slave_reply = type { [4 x i8], i8, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, void (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, %struct.analog_parameters*)*, i32 (%struct.dvb_frontend*, i8*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i8*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)* }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_parameters = type { i32, i32, i32, i64 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, void (%struct.dvb_frontend*, %struct.analog_parameters*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i8*)* }
%struct.analog_demod_info = type { i8* }
%struct.kmem_cache = type opaque
%struct.reg_val = type { i8, i8 }
%struct.tc90522_state = type { %struct.tc90522_config, %struct.dvb_frontend, %struct.i2c_client*, %struct.i2c_adapter, i8 }
%struct.tc90522_config = type { %struct.dvb_frontend*, %struct.i2c_adapter*, i8 }

@__UNIQUE_ID___addressable_tc90522_driver_init221 = internal global i8* bitcast (i32 ()* @tc90522_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@tc90522_driver = internal global %struct.i2c_driver { i32 0, i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tc90522_probe, i32 (%struct.i2c_client*)* @tc90522_remove, i32 (%struct.i2c_client*)* null, void (%struct.i2c_client*)* null, void (%struct.i2c_client*, i32, i32)* null, i32 (%struct.i2c_client*, i32, i8*)* null, %struct.device_driver { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* null, %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* null, void (%struct.device*)* null, %struct.driver_private* null }, %struct.i2c_device_id* getelementptr inbounds ([3 x %struct.i2c_device_id], [3 x %struct.i2c_device_id]* @tc90522_id, i32 0, i32 0), i32 (%struct.i2c_client*, %struct.i2c_board_info*)* null, i16* null, %struct.list_head zeroinitializer }, align 8, !dbg !4405
@__exitcall_tc90522_driver_exit = internal global void ()* @tc90522_driver_exit, section ".exitcall.exit", align 8, !dbg !4382
@__UNIQUE_ID_description222 = internal constant [45 x i8] c"tc90522.description=Toshiba TC90522 frontend\00", section ".modinfo", align 1, !dbg !4387
@__UNIQUE_ID_author223 = internal constant [31 x i8] c"tc90522.author=Akihiro TSUKADA\00", section ".modinfo", align 1, !dbg !4392
@__UNIQUE_ID_file224 = internal constant [49 x i8] c"tc90522.file=drivers/media/dvb-frontends/tc90522\00", section ".modinfo", align 1, !dbg !4397
@__UNIQUE_ID_license225 = internal constant [20 x i8] c"tc90522.license=GPL\00", section ".modinfo", align 1, !dbg !4402
@.str = private unnamed_addr constant [8 x i8] c"tc90522\00", align 1
@tc90522_id = internal constant [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tc90522sat\00\00\00\00\00\00\00\00\00\00", i64 0 }, %struct.i2c_device_id { [20 x i8] c"tc90522ter\00\00\00\00\00\00\00\00\00\00", i64 1 }, %struct.i2c_device_id zeroinitializer], align 16, !dbg !4538
@tc90522_ops_sat = internal constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Toshiba TC90522 ISDB-S module\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1769985 }, [8 x i8] c"\09\00\00\00\00\00\00\00", void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @tc90522_init, i32 (%struct.dvb_frontend*)* @tc90522_sleep, i32 (%struct.dvb_frontend*, i8*, i32)* null, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @tc90522_set_frontend, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* @tc90522_get_tune_settings, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @tc90522s_get_frontend, i32 (%struct.dvb_frontend*, i32*)* @tc90522s_read_status, i32 (%struct.dvb_frontend*, i32*)* null, i32 (%struct.dvb_frontend*, i16*)* null, i32 (%struct.dvb_frontend*, i16*)* null, i32 (%struct.dvb_frontend*, i32*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 8, !dbg !4500
@tc90522_ops_ter = internal constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Toshiba TC90522 ISDB-T module\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 470000000, i32 770000000, i32 142857, i32 0, i32 0, i32 0, i32 0, i32 1075523247 }, [8 x i8] c"\08\00\00\00\00\00\00\00", void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @tc90522_init, i32 (%struct.dvb_frontend*)* @tc90522_sleep, i32 (%struct.dvb_frontend*, i8*, i32)* null, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @tc90522_set_frontend, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* @tc90522_get_tune_settings, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @tc90522t_get_frontend, i32 (%struct.dvb_frontend*, i32*)* @tc90522t_read_status, i32 (%struct.dvb_frontend*, i32*)* null, i32 (%struct.dvb_frontend*, i16*)* null, i32 (%struct.dvb_frontend*, i16*)* null, i32 (%struct.dvb_frontend*, i32*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 8, !dbg !4524
@tc90522_tuner_i2c_algo = internal constant %struct.i2c_algorithm { i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @tc90522_master_xfer, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* null, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* null, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* null, i32 (%struct.i2c_adapter*)* @tc90522_functionality }, align 8, !dbg !4536
@.str.1 = private unnamed_addr constant [12 x i8] c"tc90522_sub\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Toshiba TC90522 attached.\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@wakeup_sat = internal constant %struct.reg_val { i8 23, i8 0 }, align 1, !dbg !4503
@wakeup_ter = internal constant %struct.reg_val { i8 3, i8 -128 }, align 1, !dbg !4510
@.str.4 = private unnamed_addr constant [28 x i8] c"(%s) failed. [adap%d-fe%d]\0A\00", align 1
@__func__.tc90522_init = private unnamed_addr constant [13 x i8] c"tc90522_init\00", align 1
@__const.tc90522_set_if_agc.agc_sat = private unnamed_addr constant [4 x %struct.reg_val] [%struct.reg_val { i8 10, i8 0 }, %struct.reg_val { i8 16, i8 48 }, %struct.reg_val { i8 17, i8 0 }, %struct.reg_val { i8 3, i8 1 }], align 1
@__const.tc90522_set_if_agc.agc_ter = private unnamed_addr constant [3 x %struct.reg_val] [%struct.reg_val { i8 37, i8 0 }, %struct.reg_val { i8 35, i8 76 }, %struct.reg_val { i8 1, i8 64 }], align 1
@sleep_sat = internal constant %struct.reg_val { i8 23, i8 1 }, align 1, !dbg !4512
@sleep_ter = internal constant %struct.reg_val { i8 3, i8 -112 }, align 1, !dbg !4514
@__func__.tc90522_sleep = private unnamed_addr constant [14 x i8] c"tc90522_sleep\00", align 1
@reset_sat = internal constant %struct.reg_val { i8 3, i8 1 }, align 1, !dbg !4516
@reset_ter = internal constant %struct.reg_val { i8 1, i8 64 }, align 1, !dbg !4518
@__func__.tc90522_set_frontend = private unnamed_addr constant [21 x i8] c"tc90522_set_frontend\00", align 1
@__const.tc90522s_set_tsid.set_tsid = private unnamed_addr constant [2 x %struct.reg_val] [%struct.reg_val { i8 -113, i8 0 }, %struct.reg_val { i8 -112, i8 0 }], align 1
@fec_conv_sat = internal constant [8 x i32] [i32 0, i32 1, i32 1, i32 2, i32 3, i32 5, i32 7, i32 2], align 16, !dbg !4520
@tm_conv = internal constant [4 x i32] [i32 0, i32 3, i32 1, i32 0], align 16, !dbg !4526
@fec_conv_ter = internal constant [8 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7, i32 0, i32 0, i32 0], align 16, !dbg !4530
@mod_conv = internal constant [8 x i32] [i32 12, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 0], align 16, !dbg !4532
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_tc90522_driver_init221 to i8*), i8* bitcast (void ()* @tc90522_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_tc90522_driver_exit to i8*), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__UNIQUE_ID_description222, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__UNIQUE_ID_author223, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_file224, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license225, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @tc90522_driver_init() #0 section ".init.text" !dbg !4546 {
entry:
  %call = call i32 @i2c_register_driver(%struct.module* null, %struct.i2c_driver* @tc90522_driver) #9, !dbg !4549
  ret i32 %call, !dbg !4549
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @tc90522_driver_exit() #0 section ".exit.text" !dbg !4550 {
entry:
  call void @i2c_del_driver(%struct.i2c_driver* @tc90522_driver) #9, !dbg !4551
  ret void, !dbg !4551
}

; Function Attrs: noredzone
declare dso_local void @i2c_del_driver(%struct.i2c_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @i2c_register_driver(%struct.module*, %struct.i2c_driver*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tc90522_probe(%struct.i2c_client* %client, %struct.i2c_device_id* %id) #2 !dbg !4552 {
entry:
  %retval = alloca i32, align 4
  %client.addr = alloca %struct.i2c_client*, align 8
  %id.addr = alloca %struct.i2c_device_id*, align 8
  %state = alloca %struct.tc90522_state*, align 8
  %cfg = alloca %struct.tc90522_config*, align 8
  %ops = alloca %struct.dvb_frontend_ops*, align 8
  %adap = alloca %struct.i2c_adapter*, align 8
  %ret = alloca i32, align 4
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !4553, metadata !DIExpression()), !dbg !4554
  store %struct.i2c_device_id* %id, %struct.i2c_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_device_id** %id.addr, metadata !4555, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.declare(metadata %struct.tc90522_state** %state, metadata !4557, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.declare(metadata %struct.tc90522_config** %cfg, metadata !4559, metadata !DIExpression()), !dbg !4561
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend_ops** %ops, metadata !4562, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap, metadata !4565, metadata !DIExpression()), !dbg !4566
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4567, metadata !DIExpression()), !dbg !4568
  %call = call i8* @kzalloc(i64 2264, i32 3264) #9, !dbg !4569
  %0 = bitcast i8* %call to %struct.tc90522_state*, !dbg !4569
  store %struct.tc90522_state* %0, %struct.tc90522_state** %state, align 8, !dbg !4570
  %1 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !4571
  %tobool = icmp ne %struct.tc90522_state* %1, null, !dbg !4571
  br i1 %tobool, label %if.end, label %if.then, !dbg !4573

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4574
  br label %return, !dbg !4574

if.end:                                           ; preds = %entry
  %2 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4575
  %3 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !4576
  %i2c_client = getelementptr inbounds %struct.tc90522_state, %struct.tc90522_state* %3, i32 0, i32 2, !dbg !4577
  store %struct.i2c_client* %2, %struct.i2c_client** %i2c_client, align 8, !dbg !4578
  %4 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4579
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %4, i32 0, i32 4, !dbg !4580
  %platform_data = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 7, !dbg !4581
  %5 = load i8*, i8** %platform_data, align 8, !dbg !4581
  %6 = bitcast i8* %5 to %struct.tc90522_config*, !dbg !4579
  store %struct.tc90522_config* %6, %struct.tc90522_config** %cfg, align 8, !dbg !4582
  %7 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !4583
  %cfg1 = getelementptr inbounds %struct.tc90522_state, %struct.tc90522_state* %7, i32 0, i32 0, !dbg !4584
  %8 = bitcast %struct.tc90522_config* %cfg1 to i8*, !dbg !4585
  %9 = load %struct.tc90522_config*, %struct.tc90522_config** %cfg, align 8, !dbg !4586
  %10 = bitcast %struct.tc90522_config* %9 to i8*, !dbg !4585
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %10, i64 24, i1 false), !dbg !4585
  %11 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !4587
  %fe = getelementptr inbounds %struct.tc90522_state, %struct.tc90522_state* %11, i32 0, i32 1, !dbg !4588
  %12 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !4589
  %cfg2 = getelementptr inbounds %struct.tc90522_state, %struct.tc90522_state* %12, i32 0, i32 0, !dbg !4590
  %fe3 = getelementptr inbounds %struct.tc90522_config, %struct.tc90522_config* %cfg2, i32 0, i32 0, !dbg !4591
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe3, align 8, !dbg !4592
  %13 = load %struct.tc90522_config*, %struct.tc90522_config** %cfg, align 8, !dbg !4593
  %fe4 = getelementptr inbounds %struct.tc90522_config, %struct.tc90522_config* %13, i32 0, i32 0, !dbg !4594
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe4, align 8, !dbg !4595
  %14 = load %struct.i2c_device_id*, %struct.i2c_device_id** %id.addr, align 8, !dbg !4596
  %driver_data = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %14, i32 0, i32 1, !dbg !4597
  %15 = load i64, i64* %driver_data, align 8, !dbg !4597
  %cmp = icmp eq i64 %15, 0, !dbg !4598
  %16 = zext i1 %cmp to i64, !dbg !4596
  %cond = select i1 %cmp, %struct.dvb_frontend_ops* @tc90522_ops_sat, %struct.dvb_frontend_ops* @tc90522_ops_ter, !dbg !4596
  store %struct.dvb_frontend_ops* %cond, %struct.dvb_frontend_ops** %ops, align 8, !dbg !4599
  %17 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !4600
  %fe5 = getelementptr inbounds %struct.tc90522_state, %struct.tc90522_state* %17, i32 0, i32 1, !dbg !4601
  %ops6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %fe5, i32 0, i32 1, !dbg !4602
  %18 = bitcast %struct.dvb_frontend_ops* %ops6 to i8*, !dbg !4603
  %19 = load %struct.dvb_frontend_ops*, %struct.dvb_frontend_ops** %ops, align 8, !dbg !4604
  %20 = bitcast %struct.dvb_frontend_ops* %19 to i8*, !dbg !4603
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %20, i64 752, i1 false), !dbg !4603
  %21 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !4605
  %22 = bitcast %struct.tc90522_state* %21 to i8*, !dbg !4605
  %23 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !4606
  %fe7 = getelementptr inbounds %struct.tc90522_state, %struct.tc90522_state* %23, i32 0, i32 1, !dbg !4607
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %fe7, i32 0, i32 3, !dbg !4608
  store i8* %22, i8** %demodulator_priv, align 8, !dbg !4609
  %24 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !4610
  %tuner_i2c = getelementptr inbounds %struct.tc90522_state, %struct.tc90522_state* %24, i32 0, i32 3, !dbg !4611
  store %struct.i2c_adapter* %tuner_i2c, %struct.i2c_adapter** %adap, align 8, !dbg !4612
  %25 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !4613
  %owner = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %25, i32 0, i32 0, !dbg !4614
  store %struct.module* null, %struct.module** %owner, align 8, !dbg !4615
  %26 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !4616
  %algo = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %26, i32 0, i32 2, !dbg !4617
  store %struct.i2c_algorithm* @tc90522_tuner_i2c_algo, %struct.i2c_algorithm** %algo, align 8, !dbg !4618
  %27 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4619
  %dev8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 4, !dbg !4620
  %28 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !4621
  %dev9 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %28, i32 0, i32 9, !dbg !4622
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev9, i32 0, i32 1, !dbg !4623
  store %struct.device* %dev8, %struct.device** %parent, align 8, !dbg !4624
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !4625
  %name = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %29, i32 0, i32 12, !dbg !4626
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %name, i64 0, i64 0, !dbg !4625
  %call10 = call i64 @strscpy(i8* %arraydecay, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 48) #9, !dbg !4627
  %30 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !4628
  %31 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !4629
  %32 = bitcast %struct.tc90522_state* %31 to i8*, !dbg !4629
  call void @i2c_set_adapdata(%struct.i2c_adapter* %30, i8* %32) #9, !dbg !4630
  %33 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !4631
  %call11 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %33) #9, !dbg !4632
  store i32 %call11, i32* %ret, align 4, !dbg !4633
  %34 = load i32, i32* %ret, align 4, !dbg !4634
  %cmp12 = icmp slt i32 %34, 0, !dbg !4636
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4637

if.then13:                                        ; preds = %if.end
  br label %free_state, !dbg !4638

if.end14:                                         ; preds = %if.end
  %35 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !4639
  %36 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !4640
  %cfg15 = getelementptr inbounds %struct.tc90522_state, %struct.tc90522_state* %36, i32 0, i32 0, !dbg !4641
  %tuner_i2c16 = getelementptr inbounds %struct.tc90522_config, %struct.tc90522_config* %cfg15, i32 0, i32 1, !dbg !4642
  store %struct.i2c_adapter* %35, %struct.i2c_adapter** %tuner_i2c16, align 8, !dbg !4643
  %37 = load %struct.tc90522_config*, %struct.tc90522_config** %cfg, align 8, !dbg !4644
  %tuner_i2c17 = getelementptr inbounds %struct.tc90522_config, %struct.tc90522_config* %37, i32 0, i32 1, !dbg !4645
  store %struct.i2c_adapter* %35, %struct.i2c_adapter** %tuner_i2c17, align 8, !dbg !4646
  %38 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4647
  %39 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !4648
  %cfg18 = getelementptr inbounds %struct.tc90522_state, %struct.tc90522_state* %39, i32 0, i32 0, !dbg !4649
  %40 = bitcast %struct.tc90522_config* %cfg18 to i8*, !dbg !4650
  call void @i2c_set_clientdata(%struct.i2c_client* %38, i8* %40) #9, !dbg !4651
  %41 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4652
  %dev19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 4, !dbg !4652
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !4652
  store i32 0, i32* %retval, align 4, !dbg !4653
  br label %return, !dbg !4653

free_state:                                       ; preds = %if.then13
  call void @llvm.dbg.label(metadata !4654), !dbg !4655
  %42 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !4656
  %43 = bitcast %struct.tc90522_state* %42 to i8*, !dbg !4656
  call void @kfree(i8* %43) #9, !dbg !4657
  %44 = load i32, i32* %ret, align 4, !dbg !4658
  store i32 %44, i32* %retval, align 4, !dbg !4659
  br label %return, !dbg !4659

return:                                           ; preds = %free_state, %if.end14, %if.then
  %45 = load i32, i32* %retval, align 4, !dbg !4660
  ret i32 %45, !dbg !4660
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tc90522_remove(%struct.i2c_client* %client) #2 !dbg !4661 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %state = alloca %struct.tc90522_state*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !4662, metadata !DIExpression()), !dbg !4663
  call void @llvm.dbg.declare(metadata %struct.tc90522_state** %state, metadata !4664, metadata !DIExpression()), !dbg !4665
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4666
  %call = call i8* @i2c_get_clientdata(%struct.i2c_client* %0) #9, !dbg !4667
  %1 = bitcast i8* %call to %struct.tc90522_config*, !dbg !4667
  %call1 = call %struct.tc90522_state* @cfg_to_state(%struct.tc90522_config* %1) #9, !dbg !4668
  store %struct.tc90522_state* %call1, %struct.tc90522_state** %state, align 8, !dbg !4669
  %2 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !4670
  %tuner_i2c = getelementptr inbounds %struct.tc90522_state, %struct.tc90522_state* %2, i32 0, i32 3, !dbg !4671
  call void @i2c_del_adapter(%struct.i2c_adapter* %tuner_i2c) #9, !dbg !4672
  %3 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !4673
  %4 = bitcast %struct.tc90522_state* %3 to i8*, !dbg !4673
  call void @kfree(i8* %4) #9, !dbg !4674
  ret i32 0, !dbg !4675
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !4676 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4679, metadata !DIExpression()), !dbg !4683
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4689, metadata !DIExpression()), !dbg !4690
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4691, metadata !DIExpression()), !dbg !4692
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4693, metadata !DIExpression()), !dbg !4694
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4695, metadata !DIExpression()), !dbg !4699
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4701, metadata !DIExpression()), !dbg !4705
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4707, metadata !DIExpression()), !dbg !4711
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4716, metadata !DIExpression()), !dbg !4717
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4718, metadata !DIExpression()), !dbg !4719
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4720, metadata !DIExpression()), !dbg !4721
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4722, metadata !DIExpression()), !dbg !4723
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4724, metadata !DIExpression()), !dbg !4725
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4726, metadata !DIExpression()), !dbg !4727
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4728, metadata !DIExpression()), !dbg !4729
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4730, metadata !DIExpression()), !dbg !4731
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4732, metadata !DIExpression()), !dbg !4733
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4734, metadata !DIExpression()), !dbg !4735
  %0 = load i64, i64* %size.addr, align 8, !dbg !4736
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4737
  %or = or i32 %1, 256, !dbg !4738
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4739
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #11, !dbg !4740
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4741

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4742
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4743
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4744

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4745
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4746
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4747
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !4748
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4725
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4749
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4750
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4751
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4752
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4753
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4754
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !4755
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4755
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4755
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4755
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !4755
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4756
  br label %kmalloc.exit, !dbg !4756

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4757
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4758
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4758
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4760

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4761
  br label %kmalloc_index.exit.i, !dbg !4761

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4762
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4764
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4765

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4766
  br label %kmalloc_index.exit.i, !dbg !4766

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4767
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4769
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4770

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4771
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4772
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4773

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4774
  br label %kmalloc_index.exit.i, !dbg !4774

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4775
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4777
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4778

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4779
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4780
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4781

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4782
  br label %kmalloc_index.exit.i, !dbg !4782

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4783
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4785
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4786

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4787
  br label %kmalloc_index.exit.i, !dbg !4787

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4788
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4790
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4791

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4792
  br label %kmalloc_index.exit.i, !dbg !4792

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4793
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4795
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4796

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4797
  br label %kmalloc_index.exit.i, !dbg !4797

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4798
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4800
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4801

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4802
  br label %kmalloc_index.exit.i, !dbg !4802

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4803
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4805
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4806

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4807
  br label %kmalloc_index.exit.i, !dbg !4807

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4808
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4810
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4811

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4812
  br label %kmalloc_index.exit.i, !dbg !4812

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4813
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4815
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4816

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4817
  br label %kmalloc_index.exit.i, !dbg !4817

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4818
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4820
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4821

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4822
  br label %kmalloc_index.exit.i, !dbg !4822

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4823
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4825
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4826

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4827
  br label %kmalloc_index.exit.i, !dbg !4827

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4828
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4830
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4831

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4832
  br label %kmalloc_index.exit.i, !dbg !4832

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4833
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4835
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4836

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4837
  br label %kmalloc_index.exit.i, !dbg !4837

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4838
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4840
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4841

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4842
  br label %kmalloc_index.exit.i, !dbg !4842

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4843
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4845
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4846

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4847
  br label %kmalloc_index.exit.i, !dbg !4847

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4848
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4850
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4851

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4852
  br label %kmalloc_index.exit.i, !dbg !4852

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4853
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4855
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4856

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4857
  br label %kmalloc_index.exit.i, !dbg !4857

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4858
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4860
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4861

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4862
  br label %kmalloc_index.exit.i, !dbg !4862

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4863
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4865
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4866

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4867
  br label %kmalloc_index.exit.i, !dbg !4867

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4868
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4870
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4871

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4872
  br label %kmalloc_index.exit.i, !dbg !4872

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4873
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4875
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4876

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4877
  br label %kmalloc_index.exit.i, !dbg !4877

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4878
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4880
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4881

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4882
  br label %kmalloc_index.exit.i, !dbg !4882

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4883
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4885
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4886

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4887
  br label %kmalloc_index.exit.i, !dbg !4887

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4888
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4890
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4891

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4892
  br label %kmalloc_index.exit.i, !dbg !4892

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4893
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4895
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4896

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4897
  br label %kmalloc_index.exit.i, !dbg !4897

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4898
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4900
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4901

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4902
  br label %kmalloc_index.exit.i, !dbg !4902

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !4903, !srcloc !4906
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 102) #11, !dbg !4907, !srcloc !4910
  unreachable, !dbg !4911

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4912
  store i32 %45, i32* %index.i, align 4, !dbg !4913
  %46 = load i32, i32* %index.i, align 4, !dbg !4914
  %tobool.i = icmp ne i32 %46, 0, !dbg !4914
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4916

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4917
  br label %kmalloc.exit, !dbg !4917

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4918
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4919
  %and.i.i = and i32 %48, 17, !dbg !4919
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4919
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4919
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4919
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4919
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4921

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4922
  br label %kmalloc_type.exit.i, !dbg !4922

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4923
  %and2.i.i = and i32 %49, 1, !dbg !4924
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4923
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4923
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4923
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4925
  br label %kmalloc_type.exit.i, !dbg !4925

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4926
  %idxprom.i = zext i32 %51 to i64, !dbg !4927
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4927
  %52 = load i32, i32* %index.i, align 4, !dbg !4928
  %idxprom6.i = zext i32 %52 to i64, !dbg !4927
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4927
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4927
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4929
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4930
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4931
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4932
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !4933
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4933
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4933
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4933
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !4933
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4694
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4934
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4935
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4936
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4937
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !4938
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4939
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4940
  store i8* %62, i8** %retval.i, align 8, !dbg !4941
  br label %kmalloc.exit, !dbg !4941

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4942
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4943
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !4944
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4944
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4944
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4944
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !4944
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4945
  br label %kmalloc.exit, !dbg !4945

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4946
  ret i8* %65, !dbg !4947
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local i64 @strscpy(i8*, i8*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_set_adapdata(%struct.i2c_adapter* %adap, i8* %data) #2 !dbg !4948 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !4951, metadata !DIExpression()), !dbg !4952
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4953, metadata !DIExpression()), !dbg !4954
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !4955
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 9, !dbg !4956
  %1 = load i8*, i8** %data.addr, align 8, !dbg !4957
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #9, !dbg !4958
  ret void, !dbg !4959
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_set_clientdata(%struct.i2c_client* %client, i8* %data) #2 !dbg !4960 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !4963, metadata !DIExpression()), !dbg !4964
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4965, metadata !DIExpression()), !dbg !4966
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4967
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %0, i32 0, i32 4, !dbg !4968
  %1 = load i8*, i8** %data.addr, align 8, !dbg !4969
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #9, !dbg !4970
  ret void, !dbg !4971
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #5

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !4972 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4976, metadata !DIExpression()), !dbg !4981
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4983, metadata !DIExpression()), !dbg !4984
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4985, metadata !DIExpression()), !dbg !4986
  %0 = load i64, i64* %size.addr, align 8, !dbg !4987
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4989
  br i1 %1, label %if.then, label %if.end447, !dbg !4990

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4991
  %tobool = icmp ne i64 %2, 0, !dbg !4991
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4994

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4995
  br label %return, !dbg !4995

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4996
  %cmp = icmp ult i64 %3, 4096, !dbg !4998
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4999

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5000
  br label %return, !dbg !5000

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub = sub i64 %4, 1, !dbg !5001
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5001
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5001

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub4 = sub i64 %6, 1, !dbg !5001
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5001
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5001

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub6 = sub i64 %8, 1, !dbg !5001
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5001
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5001

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5001

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub9 = sub i64 %9, 1, !dbg !5001
  %and = and i64 %sub9, -9223372036854775808, !dbg !5001
  %tobool10 = icmp ne i64 %and, 0, !dbg !5001
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5001

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5001

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub13 = sub i64 %10, 1, !dbg !5001
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5001
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5001
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5001

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5001

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub18 = sub i64 %11, 1, !dbg !5001
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5001
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5001
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5001

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5001

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub23 = sub i64 %12, 1, !dbg !5001
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5001
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5001
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5001

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5001

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub28 = sub i64 %13, 1, !dbg !5001
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5001
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5001
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5001

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5001

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub33 = sub i64 %14, 1, !dbg !5001
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5001
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5001
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5001

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5001

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub38 = sub i64 %15, 1, !dbg !5001
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5001
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5001
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5001

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5001

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub43 = sub i64 %16, 1, !dbg !5001
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5001
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5001
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5001

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5001

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub48 = sub i64 %17, 1, !dbg !5001
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5001
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5001
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5001

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5001

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub53 = sub i64 %18, 1, !dbg !5001
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5001
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5001
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5001

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5001

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub58 = sub i64 %19, 1, !dbg !5001
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5001
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5001
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5001

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5001

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub63 = sub i64 %20, 1, !dbg !5001
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5001
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5001
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5001

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5001

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub68 = sub i64 %21, 1, !dbg !5001
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5001
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5001
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5001

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5001

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub73 = sub i64 %22, 1, !dbg !5001
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5001
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5001
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5001

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5001

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub78 = sub i64 %23, 1, !dbg !5001
  %and79 = and i64 %sub78, 562949953421312, !dbg !5001
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5001
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5001

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5001

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub83 = sub i64 %24, 1, !dbg !5001
  %and84 = and i64 %sub83, 281474976710656, !dbg !5001
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5001
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5001

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5001

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub88 = sub i64 %25, 1, !dbg !5001
  %and89 = and i64 %sub88, 140737488355328, !dbg !5001
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5001
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5001

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5001

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub93 = sub i64 %26, 1, !dbg !5001
  %and94 = and i64 %sub93, 70368744177664, !dbg !5001
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5001
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5001

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5001

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub98 = sub i64 %27, 1, !dbg !5001
  %and99 = and i64 %sub98, 35184372088832, !dbg !5001
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5001
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5001

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5001

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub103 = sub i64 %28, 1, !dbg !5001
  %and104 = and i64 %sub103, 17592186044416, !dbg !5001
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5001
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5001

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5001

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub108 = sub i64 %29, 1, !dbg !5001
  %and109 = and i64 %sub108, 8796093022208, !dbg !5001
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5001
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5001

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5001

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub113 = sub i64 %30, 1, !dbg !5001
  %and114 = and i64 %sub113, 4398046511104, !dbg !5001
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5001
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5001

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5001

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub118 = sub i64 %31, 1, !dbg !5001
  %and119 = and i64 %sub118, 2199023255552, !dbg !5001
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5001
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5001

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5001

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub123 = sub i64 %32, 1, !dbg !5001
  %and124 = and i64 %sub123, 1099511627776, !dbg !5001
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5001
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5001

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5001

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub128 = sub i64 %33, 1, !dbg !5001
  %and129 = and i64 %sub128, 549755813888, !dbg !5001
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5001
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5001

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5001

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub133 = sub i64 %34, 1, !dbg !5001
  %and134 = and i64 %sub133, 274877906944, !dbg !5001
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5001
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5001

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5001

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub138 = sub i64 %35, 1, !dbg !5001
  %and139 = and i64 %sub138, 137438953472, !dbg !5001
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5001
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5001

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5001

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub143 = sub i64 %36, 1, !dbg !5001
  %and144 = and i64 %sub143, 68719476736, !dbg !5001
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5001
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5001

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5001

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub148 = sub i64 %37, 1, !dbg !5001
  %and149 = and i64 %sub148, 34359738368, !dbg !5001
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5001
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5001

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5001

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub153 = sub i64 %38, 1, !dbg !5001
  %and154 = and i64 %sub153, 17179869184, !dbg !5001
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5001
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5001

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5001

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub158 = sub i64 %39, 1, !dbg !5001
  %and159 = and i64 %sub158, 8589934592, !dbg !5001
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5001
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5001

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5001

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub163 = sub i64 %40, 1, !dbg !5001
  %and164 = and i64 %sub163, 4294967296, !dbg !5001
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5001
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5001

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5001

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub168 = sub i64 %41, 1, !dbg !5001
  %and169 = and i64 %sub168, 2147483648, !dbg !5001
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5001
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5001

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5001

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub173 = sub i64 %42, 1, !dbg !5001
  %and174 = and i64 %sub173, 1073741824, !dbg !5001
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5001
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5001

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5001

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub178 = sub i64 %43, 1, !dbg !5001
  %and179 = and i64 %sub178, 536870912, !dbg !5001
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5001
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5001

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5001

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub183 = sub i64 %44, 1, !dbg !5001
  %and184 = and i64 %sub183, 268435456, !dbg !5001
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5001
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5001

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5001

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub188 = sub i64 %45, 1, !dbg !5001
  %and189 = and i64 %sub188, 134217728, !dbg !5001
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5001
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5001

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5001

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub193 = sub i64 %46, 1, !dbg !5001
  %and194 = and i64 %sub193, 67108864, !dbg !5001
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5001
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5001

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5001

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub198 = sub i64 %47, 1, !dbg !5001
  %and199 = and i64 %sub198, 33554432, !dbg !5001
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5001
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5001

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5001

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub203 = sub i64 %48, 1, !dbg !5001
  %and204 = and i64 %sub203, 16777216, !dbg !5001
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5001
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5001

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5001

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub208 = sub i64 %49, 1, !dbg !5001
  %and209 = and i64 %sub208, 8388608, !dbg !5001
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5001
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5001

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5001

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub213 = sub i64 %50, 1, !dbg !5001
  %and214 = and i64 %sub213, 4194304, !dbg !5001
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5001
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5001

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5001

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub218 = sub i64 %51, 1, !dbg !5001
  %and219 = and i64 %sub218, 2097152, !dbg !5001
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5001
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5001

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5001

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub223 = sub i64 %52, 1, !dbg !5001
  %and224 = and i64 %sub223, 1048576, !dbg !5001
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5001
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5001

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5001

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub228 = sub i64 %53, 1, !dbg !5001
  %and229 = and i64 %sub228, 524288, !dbg !5001
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5001
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5001

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5001

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub233 = sub i64 %54, 1, !dbg !5001
  %and234 = and i64 %sub233, 262144, !dbg !5001
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5001
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5001

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5001

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub238 = sub i64 %55, 1, !dbg !5001
  %and239 = and i64 %sub238, 131072, !dbg !5001
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5001
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5001

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5001

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub243 = sub i64 %56, 1, !dbg !5001
  %and244 = and i64 %sub243, 65536, !dbg !5001
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5001
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5001

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5001

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub248 = sub i64 %57, 1, !dbg !5001
  %and249 = and i64 %sub248, 32768, !dbg !5001
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5001
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5001

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5001

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub253 = sub i64 %58, 1, !dbg !5001
  %and254 = and i64 %sub253, 16384, !dbg !5001
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5001
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5001

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5001

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub258 = sub i64 %59, 1, !dbg !5001
  %and259 = and i64 %sub258, 8192, !dbg !5001
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5001
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5001

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5001

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub263 = sub i64 %60, 1, !dbg !5001
  %and264 = and i64 %sub263, 4096, !dbg !5001
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5001
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5001

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5001

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub268 = sub i64 %61, 1, !dbg !5001
  %and269 = and i64 %sub268, 2048, !dbg !5001
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5001
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5001

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5001

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub273 = sub i64 %62, 1, !dbg !5001
  %and274 = and i64 %sub273, 1024, !dbg !5001
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5001
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5001

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5001

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub278 = sub i64 %63, 1, !dbg !5001
  %and279 = and i64 %sub278, 512, !dbg !5001
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5001
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5001

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5001

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub283 = sub i64 %64, 1, !dbg !5001
  %and284 = and i64 %sub283, 256, !dbg !5001
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5001
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5001

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5001

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub288 = sub i64 %65, 1, !dbg !5001
  %and289 = and i64 %sub288, 128, !dbg !5001
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5001
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5001

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5001

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub293 = sub i64 %66, 1, !dbg !5001
  %and294 = and i64 %sub293, 64, !dbg !5001
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5001
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5001

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5001

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub298 = sub i64 %67, 1, !dbg !5001
  %and299 = and i64 %sub298, 32, !dbg !5001
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5001
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5001

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5001

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub303 = sub i64 %68, 1, !dbg !5001
  %and304 = and i64 %sub303, 16, !dbg !5001
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5001
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5001

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5001

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub308 = sub i64 %69, 1, !dbg !5001
  %and309 = and i64 %sub308, 8, !dbg !5001
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5001
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5001

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5001

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub313 = sub i64 %70, 1, !dbg !5001
  %and314 = and i64 %sub313, 4, !dbg !5001
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5001
  %71 = zext i1 %tobool315 to i64, !dbg !5001
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5001
  br label %cond.end, !dbg !5001

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5001
  br label %cond.end317, !dbg !5001

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5001
  br label %cond.end319, !dbg !5001

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5001
  br label %cond.end321, !dbg !5001

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5001
  br label %cond.end323, !dbg !5001

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5001
  br label %cond.end325, !dbg !5001

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5001
  br label %cond.end327, !dbg !5001

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5001
  br label %cond.end329, !dbg !5001

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5001
  br label %cond.end331, !dbg !5001

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5001
  br label %cond.end333, !dbg !5001

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5001
  br label %cond.end335, !dbg !5001

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5001
  br label %cond.end337, !dbg !5001

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5001
  br label %cond.end339, !dbg !5001

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5001
  br label %cond.end341, !dbg !5001

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5001
  br label %cond.end343, !dbg !5001

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5001
  br label %cond.end345, !dbg !5001

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5001
  br label %cond.end347, !dbg !5001

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5001
  br label %cond.end349, !dbg !5001

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5001
  br label %cond.end351, !dbg !5001

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5001
  br label %cond.end353, !dbg !5001

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5001
  br label %cond.end355, !dbg !5001

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5001
  br label %cond.end357, !dbg !5001

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5001
  br label %cond.end359, !dbg !5001

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5001
  br label %cond.end361, !dbg !5001

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5001
  br label %cond.end363, !dbg !5001

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5001
  br label %cond.end365, !dbg !5001

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5001
  br label %cond.end367, !dbg !5001

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5001
  br label %cond.end369, !dbg !5001

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5001
  br label %cond.end371, !dbg !5001

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5001
  br label %cond.end373, !dbg !5001

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5001
  br label %cond.end375, !dbg !5001

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5001
  br label %cond.end377, !dbg !5001

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5001
  br label %cond.end379, !dbg !5001

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5001
  br label %cond.end381, !dbg !5001

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5001
  br label %cond.end383, !dbg !5001

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5001
  br label %cond.end385, !dbg !5001

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5001
  br label %cond.end387, !dbg !5001

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5001
  br label %cond.end389, !dbg !5001

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5001
  br label %cond.end391, !dbg !5001

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5001
  br label %cond.end393, !dbg !5001

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5001
  br label %cond.end395, !dbg !5001

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5001
  br label %cond.end397, !dbg !5001

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5001
  br label %cond.end399, !dbg !5001

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5001
  br label %cond.end401, !dbg !5001

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5001
  br label %cond.end403, !dbg !5001

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5001
  br label %cond.end405, !dbg !5001

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5001
  br label %cond.end407, !dbg !5001

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5001
  br label %cond.end409, !dbg !5001

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5001
  br label %cond.end411, !dbg !5001

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5001
  br label %cond.end413, !dbg !5001

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5001
  br label %cond.end415, !dbg !5001

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5001
  br label %cond.end417, !dbg !5001

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5001
  br label %cond.end419, !dbg !5001

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5001
  br label %cond.end421, !dbg !5001

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5001
  br label %cond.end423, !dbg !5001

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5001
  br label %cond.end425, !dbg !5001

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5001
  br label %cond.end427, !dbg !5001

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5001
  br label %cond.end429, !dbg !5001

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5001
  br label %cond.end431, !dbg !5001

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5001
  br label %cond.end433, !dbg !5001

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5001
  br label %cond.end435, !dbg !5001

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5001
  br label %cond.end437, !dbg !5001

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5001
  br label %cond.end440, !dbg !5001

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5001

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5001
  br label %cond.end444, !dbg !5001

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5001
  %sub443 = sub i64 %72, 1, !dbg !5001
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !5001
  br label %cond.end444, !dbg !5001

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5001
  %sub446 = sub i32 %cond445, 12, !dbg !5002
  %add = add i32 %sub446, 1, !dbg !5003
  store i32 %add, i32* %retval, align 4, !dbg !5004
  br label %return, !dbg !5004

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5005
  %dec = add i64 %73, -1, !dbg !5005
  store i64 %dec, i64* %size.addr, align 8, !dbg !5005
  %74 = load i64, i64* %size.addr, align 8, !dbg !5006
  %shr = lshr i64 %74, 12, !dbg !5006
  store i64 %shr, i64* %size.addr, align 8, !dbg !5006
  %75 = load i64, i64* %size.addr, align 8, !dbg !5007
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4984
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5008
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5009
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !5008, !srcloc !5010
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5008
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5011
  %add.i = add i32 %79, 1, !dbg !5012
  store i32 %add.i, i32* %retval, align 4, !dbg !5013
  br label %return, !dbg !5013

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5014
  ret i32 %80, !dbg !5014
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !5015 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4976, metadata !DIExpression()), !dbg !5019
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4983, metadata !DIExpression()), !dbg !5021
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5022, metadata !DIExpression()), !dbg !5023
  %0 = load i64, i64* %n.addr, align 8, !dbg !5024
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5021
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5025
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5026
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !5025, !srcloc !5010
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5025
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5027
  %add.i = add i32 %4, 1, !dbg !5028
  %sub = sub i32 %add.i, 1, !dbg !5029
  ret i32 %sub, !dbg !5030
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !5031 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5035, metadata !DIExpression()), !dbg !5036
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5037, metadata !DIExpression()), !dbg !5038
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5039, metadata !DIExpression()), !dbg !5040
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5041, metadata !DIExpression()), !dbg !5042
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5043
  ret i8* %0, !dbg !5044
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tc90522_init(%struct.dvb_frontend* %fe) #2 !dbg !5045 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.tc90522_state*, align 8
  %ret = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5046, metadata !DIExpression()), !dbg !5047
  call void @llvm.dbg.declare(metadata %struct.tc90522_state** %state, metadata !5048, metadata !DIExpression()), !dbg !5049
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5050, metadata !DIExpression()), !dbg !5051
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5052
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5053
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5053
  %2 = bitcast i8* %1 to %struct.tc90522_state*, !dbg !5052
  store %struct.tc90522_state* %2, %struct.tc90522_state** %state, align 8, !dbg !5054
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5055
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %3, i32 0, i32 1, !dbg !5057
  %delsys = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 1, !dbg !5058
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %delsys, i64 0, i64 0, !dbg !5055
  %4 = load i8, i8* %arrayidx, align 8, !dbg !5055
  %conv = zext i8 %4 to i32, !dbg !5055
  %cmp = icmp eq i32 %conv, 9, !dbg !5059
  br i1 %cmp, label %if.then, label %if.else, !dbg !5060

if.then:                                          ; preds = %entry
  %5 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !5061
  %call = call i32 @reg_write(%struct.tc90522_state* %5, %struct.reg_val* @wakeup_sat, i32 1) #9, !dbg !5062
  store i32 %call, i32* %ret, align 4, !dbg !5063
  br label %if.end17, !dbg !5064

if.else:                                          ; preds = %entry
  %6 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !5065
  %call2 = call i32 @reg_write(%struct.tc90522_state* %6, %struct.reg_val* @wakeup_ter, i32 1) #9, !dbg !5067
  store i32 %call2, i32* %ret, align 4, !dbg !5068
  %7 = load i32, i32* %ret, align 4, !dbg !5069
  %cmp3 = icmp eq i32 %7, 0, !dbg !5071
  br i1 %cmp3, label %land.lhs.true, label %if.end, !dbg !5072

land.lhs.true:                                    ; preds = %if.else
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5073
  %ops5 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 1, !dbg !5074
  %set_lna = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops5, i32 0, i32 28, !dbg !5075
  %9 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_lna, align 8, !dbg !5075
  %tobool = icmp ne i32 (%struct.dvb_frontend*)* %9, null, !dbg !5073
  br i1 %tobool, label %land.lhs.true6, label %if.end, !dbg !5076

land.lhs.true6:                                   ; preds = %land.lhs.true
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5077
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 8, !dbg !5078
  %lna = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %dtv_property_cache, i32 0, i32 41, !dbg !5079
  %11 = load i32, i32* %lna, align 4, !dbg !5079
  %cmp7 = icmp eq i32 %11, -1, !dbg !5080
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !5081

if.then9:                                         ; preds = %land.lhs.true6
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5082
  %dtv_property_cache10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 8, !dbg !5084
  %lna11 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %dtv_property_cache10, i32 0, i32 41, !dbg !5085
  store i32 1, i32* %lna11, align 4, !dbg !5086
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5087
  %ops12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 1, !dbg !5088
  %set_lna13 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops12, i32 0, i32 28, !dbg !5089
  %14 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_lna13, align 8, !dbg !5089
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5090
  %call14 = call i32 %14(%struct.dvb_frontend* %15) #9, !dbg !5087
  store i32 %call14, i32* %ret, align 4, !dbg !5091
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5092
  %dtv_property_cache15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 8, !dbg !5093
  %lna16 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %dtv_property_cache15, i32 0, i32 41, !dbg !5094
  store i32 -1, i32* %lna16, align 4, !dbg !5095
  br label %if.end, !dbg !5096

if.end:                                           ; preds = %if.then9, %land.lhs.true6, %land.lhs.true, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then
  %17 = load i32, i32* %ret, align 4, !dbg !5097
  %cmp18 = icmp slt i32 %17, 0, !dbg !5099
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !5100

if.then20:                                        ; preds = %if.end17
  %18 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !5101
  %tuner_i2c = getelementptr inbounds %struct.tc90522_state, %struct.tc90522_state* %18, i32 0, i32 3, !dbg !5101
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %tuner_i2c, i32 0, i32 9, !dbg !5101
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5101
  %dvb = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %19, i32 0, i32 2, !dbg !5101
  %20 = load %struct.dvb_adapter*, %struct.dvb_adapter** %dvb, align 8, !dbg !5101
  %num = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %20, i32 0, i32 0, !dbg !5101
  %21 = load i32, i32* %num, align 8, !dbg !5101
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5101
  %id = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %22, i32 0, i32 10, !dbg !5101
  %23 = load i32, i32* %id, align 8, !dbg !5101
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.tc90522_init, i64 0, i64 0), i32 %21, i32 %23) #10, !dbg !5101
  %24 = load i32, i32* %ret, align 4, !dbg !5103
  store i32 %24, i32* %retval, align 4, !dbg !5104
  br label %return, !dbg !5104

if.end21:                                         ; preds = %if.end17
  %25 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5105
  %dtv_property_cache22 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %25, i32 0, i32 8, !dbg !5107
  %isdbt_layer_enabled = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %dtv_property_cache22, i32 0, i32 22, !dbg !5108
  %26 = load i8, i8* %isdbt_layer_enabled, align 8, !dbg !5108
  %conv23 = zext i8 %26 to i32, !dbg !5105
  %cmp24 = icmp eq i32 %conv23, 0, !dbg !5109
  br i1 %cmp24, label %if.then26, label %if.end29, !dbg !5110

if.then26:                                        ; preds = %if.end21
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5111
  %dtv_property_cache27 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %27, i32 0, i32 8, !dbg !5112
  %isdbt_layer_enabled28 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %dtv_property_cache27, i32 0, i32 22, !dbg !5113
  store i8 7, i8* %isdbt_layer_enabled28, align 8, !dbg !5114
  br label %if.end29, !dbg !5111

if.end29:                                         ; preds = %if.then26, %if.end21
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5115
  %call30 = call i32 @tc90522_set_if_agc(%struct.dvb_frontend* %28, i1 zeroext true) #9, !dbg !5116
  store i32 %call30, i32* %retval, align 4, !dbg !5117
  br label %return, !dbg !5117

return:                                           ; preds = %if.end29, %if.then20
  %29 = load i32, i32* %retval, align 4, !dbg !5118
  ret i32 %29, !dbg !5118
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tc90522_sleep(%struct.dvb_frontend* %fe) #2 !dbg !5119 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.tc90522_state*, align 8
  %ret = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5120, metadata !DIExpression()), !dbg !5121
  call void @llvm.dbg.declare(metadata %struct.tc90522_state** %state, metadata !5122, metadata !DIExpression()), !dbg !5123
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5124, metadata !DIExpression()), !dbg !5125
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5126
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5127
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5127
  %2 = bitcast i8* %1 to %struct.tc90522_state*, !dbg !5126
  store %struct.tc90522_state* %2, %struct.tc90522_state** %state, align 8, !dbg !5128
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5129
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %3, i32 0, i32 1, !dbg !5131
  %delsys = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 1, !dbg !5132
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %delsys, i64 0, i64 0, !dbg !5129
  %4 = load i8, i8* %arrayidx, align 8, !dbg !5129
  %conv = zext i8 %4 to i32, !dbg !5129
  %cmp = icmp eq i32 %conv, 9, !dbg !5133
  br i1 %cmp, label %if.then, label %if.else, !dbg !5134

if.then:                                          ; preds = %entry
  %5 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !5135
  %call = call i32 @reg_write(%struct.tc90522_state* %5, %struct.reg_val* @sleep_sat, i32 1) #9, !dbg !5136
  store i32 %call, i32* %ret, align 4, !dbg !5137
  br label %if.end17, !dbg !5138

if.else:                                          ; preds = %entry
  %6 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !5139
  %call2 = call i32 @reg_write(%struct.tc90522_state* %6, %struct.reg_val* @sleep_ter, i32 1) #9, !dbg !5141
  store i32 %call2, i32* %ret, align 4, !dbg !5142
  %7 = load i32, i32* %ret, align 4, !dbg !5143
  %cmp3 = icmp eq i32 %7, 0, !dbg !5145
  br i1 %cmp3, label %land.lhs.true, label %if.end, !dbg !5146

land.lhs.true:                                    ; preds = %if.else
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5147
  %ops5 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 1, !dbg !5148
  %set_lna = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops5, i32 0, i32 28, !dbg !5149
  %9 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_lna, align 8, !dbg !5149
  %tobool = icmp ne i32 (%struct.dvb_frontend*)* %9, null, !dbg !5147
  br i1 %tobool, label %land.lhs.true6, label %if.end, !dbg !5150

land.lhs.true6:                                   ; preds = %land.lhs.true
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5151
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 8, !dbg !5152
  %lna = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %dtv_property_cache, i32 0, i32 41, !dbg !5153
  %11 = load i32, i32* %lna, align 4, !dbg !5153
  %cmp7 = icmp eq i32 %11, -1, !dbg !5154
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !5155

if.then9:                                         ; preds = %land.lhs.true6
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5156
  %dtv_property_cache10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 8, !dbg !5158
  %lna11 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %dtv_property_cache10, i32 0, i32 41, !dbg !5159
  store i32 0, i32* %lna11, align 4, !dbg !5160
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5161
  %ops12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 1, !dbg !5162
  %set_lna13 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops12, i32 0, i32 28, !dbg !5163
  %14 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_lna13, align 8, !dbg !5163
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5164
  %call14 = call i32 %14(%struct.dvb_frontend* %15) #9, !dbg !5161
  store i32 %call14, i32* %ret, align 4, !dbg !5165
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5166
  %dtv_property_cache15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 8, !dbg !5167
  %lna16 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %dtv_property_cache15, i32 0, i32 41, !dbg !5168
  store i32 -1, i32* %lna16, align 4, !dbg !5169
  br label %if.end, !dbg !5170

if.end:                                           ; preds = %if.then9, %land.lhs.true6, %land.lhs.true, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then
  %17 = load i32, i32* %ret, align 4, !dbg !5171
  %cmp18 = icmp slt i32 %17, 0, !dbg !5173
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !5174

if.then20:                                        ; preds = %if.end17
  %18 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !5175
  %tuner_i2c = getelementptr inbounds %struct.tc90522_state, %struct.tc90522_state* %18, i32 0, i32 3, !dbg !5175
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %tuner_i2c, i32 0, i32 9, !dbg !5175
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5175
  %dvb = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %19, i32 0, i32 2, !dbg !5175
  %20 = load %struct.dvb_adapter*, %struct.dvb_adapter** %dvb, align 8, !dbg !5175
  %num = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %20, i32 0, i32 0, !dbg !5175
  %21 = load i32, i32* %num, align 8, !dbg !5175
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5175
  %id = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %22, i32 0, i32 10, !dbg !5175
  %23 = load i32, i32* %id, align 8, !dbg !5175
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.tc90522_sleep, i64 0, i64 0), i32 %21, i32 %23) #10, !dbg !5175
  br label %if.end21, !dbg !5175

if.end21:                                         ; preds = %if.then20, %if.end17
  %24 = load i32, i32* %ret, align 4, !dbg !5176
  ret i32 %24, !dbg !5177
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tc90522_set_frontend(%struct.dvb_frontend* %fe) #2 !dbg !5178 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.tc90522_state*, align 8
  %ret = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5179, metadata !DIExpression()), !dbg !5180
  call void @llvm.dbg.declare(metadata %struct.tc90522_state** %state, metadata !5181, metadata !DIExpression()), !dbg !5182
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5183, metadata !DIExpression()), !dbg !5184
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5185
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5186
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5186
  %2 = bitcast i8* %1 to %struct.tc90522_state*, !dbg !5185
  store %struct.tc90522_state* %2, %struct.tc90522_state** %state, align 8, !dbg !5187
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5188
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %3, i32 0, i32 1, !dbg !5190
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !5191
  %set_params = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops, i32 0, i32 6, !dbg !5192
  %4 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params, align 8, !dbg !5192
  %tobool = icmp ne i32 (%struct.dvb_frontend*)* %4, null, !dbg !5188
  br i1 %tobool, label %if.then, label %if.else, !dbg !5193

if.then:                                          ; preds = %entry
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5194
  %ops1 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 1, !dbg !5195
  %tuner_ops2 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops1, i32 0, i32 30, !dbg !5196
  %set_params3 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops2, i32 0, i32 6, !dbg !5197
  %6 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params3, align 8, !dbg !5197
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5198
  %call = call i32 %6(%struct.dvb_frontend* %7) #9, !dbg !5194
  store i32 %call, i32* %ret, align 4, !dbg !5199
  br label %if.end, !dbg !5200

if.else:                                          ; preds = %entry
  store i32 -19, i32* %ret, align 4, !dbg !5201
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %ret, align 4, !dbg !5202
  %cmp = icmp slt i32 %8, 0, !dbg !5204
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !5205

if.then4:                                         ; preds = %if.end
  br label %failed, !dbg !5206

if.end5:                                          ; preds = %if.end
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5207
  %ops6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 1, !dbg !5209
  %delsys = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops6, i32 0, i32 1, !dbg !5210
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %delsys, i64 0, i64 0, !dbg !5207
  %10 = load i8, i8* %arrayidx, align 8, !dbg !5207
  %conv = zext i8 %10 to i32, !dbg !5207
  %cmp7 = icmp eq i32 %conv, 9, !dbg !5211
  br i1 %cmp7, label %if.then9, label %if.else16, !dbg !5212

if.then9:                                         ; preds = %if.end5
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5213
  %call10 = call i32 @tc90522s_set_tsid(%struct.dvb_frontend* %11) #9, !dbg !5215
  store i32 %call10, i32* %ret, align 4, !dbg !5216
  %12 = load i32, i32* %ret, align 4, !dbg !5217
  %cmp11 = icmp slt i32 %12, 0, !dbg !5219
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !5220

if.then13:                                        ; preds = %if.then9
  br label %failed, !dbg !5221

if.end14:                                         ; preds = %if.then9
  %13 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !5222
  %call15 = call i32 @reg_write(%struct.tc90522_state* %13, %struct.reg_val* @reset_sat, i32 1) #9, !dbg !5223
  store i32 %call15, i32* %ret, align 4, !dbg !5224
  br label %if.end23, !dbg !5225

if.else16:                                        ; preds = %if.end5
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5226
  %call17 = call i32 @tc90522t_set_layers(%struct.dvb_frontend* %14) #9, !dbg !5228
  store i32 %call17, i32* %ret, align 4, !dbg !5229
  %15 = load i32, i32* %ret, align 4, !dbg !5230
  %cmp18 = icmp slt i32 %15, 0, !dbg !5232
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !5233

if.then20:                                        ; preds = %if.else16
  br label %failed, !dbg !5234

if.end21:                                         ; preds = %if.else16
  %16 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !5235
  %call22 = call i32 @reg_write(%struct.tc90522_state* %16, %struct.reg_val* @reset_ter, i32 1) #9, !dbg !5236
  store i32 %call22, i32* %ret, align 4, !dbg !5237
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %if.end14
  %17 = load i32, i32* %ret, align 4, !dbg !5238
  %cmp24 = icmp slt i32 %17, 0, !dbg !5240
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !5241

if.then26:                                        ; preds = %if.end23
  br label %failed, !dbg !5242

if.end27:                                         ; preds = %if.end23
  store i32 0, i32* %retval, align 4, !dbg !5243
  br label %return, !dbg !5243

failed:                                           ; preds = %if.then26, %if.then20, %if.then13, %if.then4
  call void @llvm.dbg.label(metadata !5244), !dbg !5245
  %18 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !5246
  %tuner_i2c = getelementptr inbounds %struct.tc90522_state, %struct.tc90522_state* %18, i32 0, i32 3, !dbg !5246
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %tuner_i2c, i32 0, i32 9, !dbg !5246
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5246
  %dvb = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %19, i32 0, i32 2, !dbg !5246
  %20 = load %struct.dvb_adapter*, %struct.dvb_adapter** %dvb, align 8, !dbg !5246
  %num = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %20, i32 0, i32 0, !dbg !5246
  %21 = load i32, i32* %num, align 8, !dbg !5246
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5246
  %id = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %22, i32 0, i32 10, !dbg !5246
  %23 = load i32, i32* %id, align 8, !dbg !5246
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.tc90522_set_frontend, i64 0, i64 0), i32 %21, i32 %23) #10, !dbg !5246
  %24 = load i32, i32* %ret, align 4, !dbg !5247
  store i32 %24, i32* %retval, align 4, !dbg !5248
  br label %return, !dbg !5248

return:                                           ; preds = %failed, %if.end27
  %25 = load i32, i32* %retval, align 4, !dbg !5249
  ret i32 %25, !dbg !5249
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tc90522_get_tune_settings(%struct.dvb_frontend* %fe, %struct.dvb_frontend_tune_settings* %settings) #2 !dbg !5250 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %settings.addr = alloca %struct.dvb_frontend_tune_settings*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5251, metadata !DIExpression()), !dbg !5252
  store %struct.dvb_frontend_tune_settings* %settings, %struct.dvb_frontend_tune_settings** %settings.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend_tune_settings** %settings.addr, metadata !5253, metadata !DIExpression()), !dbg !5254
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5255
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 1, !dbg !5257
  %delsys = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 1, !dbg !5258
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %delsys, i64 0, i64 0, !dbg !5255
  %1 = load i8, i8* %arrayidx, align 8, !dbg !5255
  %conv = zext i8 %1 to i32, !dbg !5255
  %cmp = icmp eq i32 %conv, 9, !dbg !5259
  br i1 %cmp, label %if.then, label %if.else, !dbg !5260

if.then:                                          ; preds = %entry
  %2 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %settings.addr, align 8, !dbg !5261
  %min_delay_ms = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %2, i32 0, i32 0, !dbg !5263
  store i32 250, i32* %min_delay_ms, align 4, !dbg !5264
  %3 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %settings.addr, align 8, !dbg !5265
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %3, i32 0, i32 1, !dbg !5266
  store i32 1000, i32* %step_size, align 4, !dbg !5267
  %4 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %settings.addr, align 8, !dbg !5268
  %step_size2 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %4, i32 0, i32 1, !dbg !5269
  %5 = load i32, i32* %step_size2, align 4, !dbg !5269
  %mul = mul i32 %5, 2, !dbg !5270
  %6 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %settings.addr, align 8, !dbg !5271
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %6, i32 0, i32 2, !dbg !5272
  store i32 %mul, i32* %max_drift, align 4, !dbg !5273
  br label %if.end, !dbg !5274

if.else:                                          ; preds = %entry
  %7 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %settings.addr, align 8, !dbg !5275
  %min_delay_ms3 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %7, i32 0, i32 0, !dbg !5277
  store i32 400, i32* %min_delay_ms3, align 4, !dbg !5278
  %8 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %settings.addr, align 8, !dbg !5279
  %step_size4 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %8, i32 0, i32 1, !dbg !5280
  store i32 142857, i32* %step_size4, align 4, !dbg !5281
  %9 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %settings.addr, align 8, !dbg !5282
  %step_size5 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %9, i32 0, i32 1, !dbg !5283
  %10 = load i32, i32* %step_size5, align 4, !dbg !5283
  %11 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %settings.addr, align 8, !dbg !5284
  %max_drift6 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %11, i32 0, i32 2, !dbg !5285
  store i32 %10, i32* %max_drift6, align 4, !dbg !5286
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0, !dbg !5287
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tc90522s_get_frontend(%struct.dvb_frontend* %fe, %struct.dtv_frontend_properties* %c) #2 !dbg !5288 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %c.addr = alloca %struct.dtv_frontend_properties*, align 8
  %state = alloca %struct.tc90522_state*, align 8
  %stats = alloca %struct.dtv_fe_stats*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %layers = alloca i32, align 4
  %val = alloca [10 x i8], align 1
  %cndat = alloca i32, align 4
  %v = alloca i8, align 1
  %dummy = alloca i16, align 2
  %p = alloca i32, align 4
  %p4 = alloca i32, align 4
  %cn = alloca i64, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5289, metadata !DIExpression()), !dbg !5290
  store %struct.dtv_frontend_properties* %c, %struct.dtv_frontend_properties** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c.addr, metadata !5291, metadata !DIExpression()), !dbg !5292
  call void @llvm.dbg.declare(metadata %struct.tc90522_state** %state, metadata !5293, metadata !DIExpression()), !dbg !5294
  call void @llvm.dbg.declare(metadata %struct.dtv_fe_stats** %stats, metadata !5295, metadata !DIExpression()), !dbg !5297
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5298, metadata !DIExpression()), !dbg !5299
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5300, metadata !DIExpression()), !dbg !5301
  call void @llvm.dbg.declare(metadata i32* %layers, metadata !5302, metadata !DIExpression()), !dbg !5303
  call void @llvm.dbg.declare(metadata [10 x i8]* %val, metadata !5304, metadata !DIExpression()), !dbg !5308
  call void @llvm.dbg.declare(metadata i32* %cndat, metadata !5309, metadata !DIExpression()), !dbg !5310
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5311
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5312
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5312
  %2 = bitcast i8* %1 to %struct.tc90522_state*, !dbg !5311
  store %struct.tc90522_state* %2, %struct.tc90522_state** %state, align 8, !dbg !5313
  %3 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5314
  %delivery_system = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %3, i32 0, i32 15, !dbg !5315
  store i32 9, i32* %delivery_system, align 4, !dbg !5316
  %4 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5317
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %4, i32 0, i32 10, !dbg !5318
  store i32 28860000, i32* %symbol_rate, align 4, !dbg !5319
  store i32 0, i32* %layers, align 4, !dbg !5320
  %5 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !5321
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %val, i64 0, i64 0, !dbg !5322
  %call = call i32 @reg_read(%struct.tc90522_state* %5, i8 zeroext -26, i8* %arraydecay, i8 zeroext 5) #9, !dbg !5323
  store i32 %call, i32* %ret, align 4, !dbg !5324
  %6 = load i32, i32* %ret, align 4, !dbg !5325
  %cmp = icmp eq i32 %6, 0, !dbg !5327
  br i1 %cmp, label %if.then, label %if.end52, !dbg !5328

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8* %v, metadata !5329, metadata !DIExpression()), !dbg !5331
  %arrayidx = getelementptr [10 x i8], [10 x i8]* %val, i64 0, i64 0, !dbg !5332
  %7 = load i8, i8* %arrayidx, align 1, !dbg !5332
  %conv = zext i8 %7 to i32, !dbg !5332
  %shl = shl i32 %conv, 8, !dbg !5333
  %arrayidx1 = getelementptr [10 x i8], [10 x i8]* %val, i64 0, i64 1, !dbg !5334
  %8 = load i8, i8* %arrayidx1, align 1, !dbg !5334
  %conv2 = zext i8 %8 to i32, !dbg !5334
  %or = or i32 %shl, %conv2, !dbg !5335
  %9 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5336
  %stream_id = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %9, i32 0, i32 24, !dbg !5337
  store i32 %or, i32* %stream_id, align 4, !dbg !5338
  %arrayidx3 = getelementptr [10 x i8], [10 x i8]* %val, i64 0, i64 2, !dbg !5339
  %10 = load i8, i8* %arrayidx3, align 1, !dbg !5339
  %conv4 = zext i8 %10 to i32, !dbg !5339
  %and = and i32 %conv4, 112, !dbg !5340
  %shr = ashr i32 %and, 4, !dbg !5341
  %conv5 = trunc i32 %shr to i8, !dbg !5342
  store i8 %conv5, i8* %v, align 1, !dbg !5343
  %11 = load i8, i8* %v, align 1, !dbg !5344
  %conv6 = zext i8 %11 to i32, !dbg !5344
  %cmp7 = icmp eq i32 %conv6, 7, !dbg !5345
  %12 = zext i1 %cmp7 to i64, !dbg !5346
  %cond = select i1 %cmp7, i32 9, i32 0, !dbg !5346
  %13 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5347
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %13, i32 0, i32 1, !dbg !5348
  store i32 %cond, i32* %modulation, align 4, !dbg !5349
  %14 = load i8, i8* %v, align 1, !dbg !5350
  %idxprom = zext i8 %14 to i64, !dbg !5351
  %arrayidx9 = getelementptr [8 x i32], [8 x i32]* @fec_conv_sat, i64 0, i64 %idxprom, !dbg !5351
  %15 = load i32, i32* %arrayidx9, align 4, !dbg !5351
  %16 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5352
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %16, i32 0, i32 5, !dbg !5353
  store i32 %15, i32* %fec_inner, align 4, !dbg !5354
  %17 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5355
  %fec_inner10 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %17, i32 0, i32 5, !dbg !5356
  %18 = load i32, i32* %fec_inner10, align 4, !dbg !5356
  %19 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5357
  %layer = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %19, i32 0, i32 23, !dbg !5358
  %arrayidx11 = getelementptr [3 x %struct.anon.66], [3 x %struct.anon.66]* %layer, i64 0, i64 0, !dbg !5357
  %fec = getelementptr inbounds %struct.anon.66, %struct.anon.66* %arrayidx11, i32 0, i32 1, !dbg !5359
  store i32 %18, i32* %fec, align 4, !dbg !5360
  %20 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5361
  %modulation12 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %20, i32 0, i32 1, !dbg !5362
  %21 = load i32, i32* %modulation12, align 4, !dbg !5362
  %22 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5363
  %layer13 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %22, i32 0, i32 23, !dbg !5364
  %arrayidx14 = getelementptr [3 x %struct.anon.66], [3 x %struct.anon.66]* %layer13, i64 0, i64 0, !dbg !5363
  %modulation15 = getelementptr inbounds %struct.anon.66, %struct.anon.66* %arrayidx14, i32 0, i32 2, !dbg !5365
  store i32 %21, i32* %modulation15, align 4, !dbg !5366
  %arrayidx16 = getelementptr [10 x i8], [10 x i8]* %val, i64 0, i64 3, !dbg !5367
  %23 = load i8, i8* %arrayidx16, align 1, !dbg !5367
  %conv17 = zext i8 %23 to i32, !dbg !5367
  %and18 = and i32 %conv17, 63, !dbg !5368
  %conv19 = trunc i32 %and18 to i8, !dbg !5367
  %24 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5369
  %layer20 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %24, i32 0, i32 23, !dbg !5370
  %arrayidx21 = getelementptr [3 x %struct.anon.66], [3 x %struct.anon.66]* %layer20, i64 0, i64 0, !dbg !5369
  %segment_count = getelementptr inbounds %struct.anon.66, %struct.anon.66* %arrayidx21, i32 0, i32 0, !dbg !5371
  store i8 %conv19, i8* %segment_count, align 4, !dbg !5372
  %arrayidx22 = getelementptr [10 x i8], [10 x i8]* %val, i64 0, i64 2, !dbg !5373
  %25 = load i8, i8* %arrayidx22, align 1, !dbg !5373
  %conv23 = zext i8 %25 to i32, !dbg !5373
  %and24 = and i32 %conv23, 7, !dbg !5374
  %conv25 = trunc i32 %and24 to i8, !dbg !5375
  store i8 %conv25, i8* %v, align 1, !dbg !5376
  %26 = load i8, i8* %v, align 1, !dbg !5377
  %idxprom26 = zext i8 %26 to i64, !dbg !5378
  %arrayidx27 = getelementptr [8 x i32], [8 x i32]* @fec_conv_sat, i64 0, i64 %idxprom26, !dbg !5378
  %27 = load i32, i32* %arrayidx27, align 4, !dbg !5378
  %28 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5379
  %layer28 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %28, i32 0, i32 23, !dbg !5380
  %arrayidx29 = getelementptr [3 x %struct.anon.66], [3 x %struct.anon.66]* %layer28, i64 0, i64 1, !dbg !5379
  %fec30 = getelementptr inbounds %struct.anon.66, %struct.anon.66* %arrayidx29, i32 0, i32 1, !dbg !5381
  store i32 %27, i32* %fec30, align 4, !dbg !5382
  %29 = load i8, i8* %v, align 1, !dbg !5383
  %conv31 = zext i8 %29 to i32, !dbg !5383
  %cmp32 = icmp eq i32 %conv31, 0, !dbg !5385
  br i1 %cmp32, label %if.then34, label %if.else, !dbg !5386

if.then34:                                        ; preds = %if.then
  %30 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5387
  %layer35 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %30, i32 0, i32 23, !dbg !5388
  %arrayidx36 = getelementptr [3 x %struct.anon.66], [3 x %struct.anon.66]* %layer35, i64 0, i64 1, !dbg !5387
  %segment_count37 = getelementptr inbounds %struct.anon.66, %struct.anon.66* %arrayidx36, i32 0, i32 0, !dbg !5389
  store i8 0, i8* %segment_count37, align 4, !dbg !5390
  br label %if.end, !dbg !5387

if.else:                                          ; preds = %if.then
  %arrayidx38 = getelementptr [10 x i8], [10 x i8]* %val, i64 0, i64 4, !dbg !5391
  %31 = load i8, i8* %arrayidx38, align 1, !dbg !5391
  %conv39 = zext i8 %31 to i32, !dbg !5391
  %and40 = and i32 %conv39, 63, !dbg !5392
  %conv41 = trunc i32 %and40 to i8, !dbg !5391
  %32 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5393
  %layer42 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %32, i32 0, i32 23, !dbg !5394
  %arrayidx43 = getelementptr [3 x %struct.anon.66], [3 x %struct.anon.66]* %layer42, i64 0, i64 1, !dbg !5393
  %segment_count44 = getelementptr inbounds %struct.anon.66, %struct.anon.66* %arrayidx43, i32 0, i32 0, !dbg !5395
  store i8 %conv41, i8* %segment_count44, align 4, !dbg !5396
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then34
  %33 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5397
  %layer45 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %33, i32 0, i32 23, !dbg !5398
  %arrayidx46 = getelementptr [3 x %struct.anon.66], [3 x %struct.anon.66]* %layer45, i64 0, i64 1, !dbg !5397
  %modulation47 = getelementptr inbounds %struct.anon.66, %struct.anon.66* %arrayidx46, i32 0, i32 2, !dbg !5399
  store i32 0, i32* %modulation47, align 4, !dbg !5400
  %34 = load i8, i8* %v, align 1, !dbg !5401
  %conv48 = zext i8 %34 to i32, !dbg !5401
  %cmp49 = icmp sgt i32 %conv48, 0, !dbg !5402
  %35 = zext i1 %cmp49 to i64, !dbg !5403
  %cond51 = select i1 %cmp49, i32 2, i32 1, !dbg !5403
  store i32 %cond51, i32* %layers, align 4, !dbg !5404
  br label %if.end52, !dbg !5405

if.end52:                                         ; preds = %if.end, %entry
  %36 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5406
  %strength = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %36, i32 0, i32 42, !dbg !5407
  store %struct.dtv_fe_stats* %strength, %struct.dtv_fe_stats** %stats, align 8, !dbg !5408
  %37 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %stats, align 8, !dbg !5409
  %len = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %37, i32 0, i32 0, !dbg !5410
  store i8 0, i8* %len, align 1, !dbg !5411
  %38 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5412
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %38, i32 0, i32 1, !dbg !5414
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !5415
  %get_rf_strength = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops, i32 0, i32 13, !dbg !5416
  %39 = load i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i16*)** %get_rf_strength, align 8, !dbg !5416
  %tobool = icmp ne i32 (%struct.dvb_frontend*, i16*)* %39, null, !dbg !5412
  br i1 %tobool, label %if.then53, label %if.end58, !dbg !5417

if.then53:                                        ; preds = %if.end52
  call void @llvm.dbg.declare(metadata i16* %dummy, metadata !5418, metadata !DIExpression()), !dbg !5420
  %40 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5421
  %ops54 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %40, i32 0, i32 1, !dbg !5422
  %tuner_ops55 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops54, i32 0, i32 30, !dbg !5423
  %get_rf_strength56 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops55, i32 0, i32 13, !dbg !5424
  %41 = load i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i16*)** %get_rf_strength56, align 8, !dbg !5424
  %42 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5425
  %call57 = call i32 %41(%struct.dvb_frontend* %42, i16* %dummy) #9, !dbg !5421
  br label %if.end58, !dbg !5426

if.end58:                                         ; preds = %if.then53, %if.end52
  %43 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5427
  %cnr = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %43, i32 0, i32 43, !dbg !5428
  store %struct.dtv_fe_stats* %cnr, %struct.dtv_fe_stats** %stats, align 8, !dbg !5429
  %44 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %stats, align 8, !dbg !5430
  %len59 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %44, i32 0, i32 0, !dbg !5431
  store i8 1, i8* %len59, align 1, !dbg !5432
  %45 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %stats, align 8, !dbg !5433
  %stat = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %45, i32 0, i32 1, !dbg !5434
  %arrayidx60 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat, i64 0, i64 0, !dbg !5433
  %scale = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx60, i32 0, i32 0, !dbg !5435
  store i8 0, i8* %scale, align 1, !dbg !5436
  store i32 0, i32* %cndat, align 4, !dbg !5437
  %46 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !5438
  %arraydecay61 = getelementptr inbounds [10 x i8], [10 x i8]* %val, i64 0, i64 0, !dbg !5439
  %call62 = call i32 @reg_read(%struct.tc90522_state* %46, i8 zeroext -68, i8* %arraydecay61, i8 zeroext 2) #9, !dbg !5440
  store i32 %call62, i32* %ret, align 4, !dbg !5441
  %47 = load i32, i32* %ret, align 4, !dbg !5442
  %cmp63 = icmp eq i32 %47, 0, !dbg !5444
  br i1 %cmp63, label %if.then65, label %if.end72, !dbg !5445

if.then65:                                        ; preds = %if.end58
  %arrayidx66 = getelementptr [10 x i8], [10 x i8]* %val, i64 0, i64 0, !dbg !5446
  %48 = load i8, i8* %arrayidx66, align 1, !dbg !5446
  %conv67 = zext i8 %48 to i32, !dbg !5446
  %shl68 = shl i32 %conv67, 8, !dbg !5447
  %arrayidx69 = getelementptr [10 x i8], [10 x i8]* %val, i64 0, i64 1, !dbg !5448
  %49 = load i8, i8* %arrayidx69, align 1, !dbg !5448
  %conv70 = zext i8 %49 to i32, !dbg !5448
  %or71 = or i32 %shl68, %conv70, !dbg !5449
  store i32 %or71, i32* %cndat, align 4, !dbg !5450
  br label %if.end72, !dbg !5451

if.end72:                                         ; preds = %if.then65, %if.end58
  %50 = load i32, i32* %cndat, align 4, !dbg !5452
  %cmp73 = icmp uge i32 %50, 3000, !dbg !5454
  br i1 %cmp73, label %if.then75, label %if.end110, !dbg !5455

if.then75:                                        ; preds = %if.end72
  call void @llvm.dbg.declare(metadata i32* %p, metadata !5456, metadata !DIExpression()), !dbg !5458
  call void @llvm.dbg.declare(metadata i32* %p4, metadata !5459, metadata !DIExpression()), !dbg !5460
  call void @llvm.dbg.declare(metadata i64* %cn, metadata !5461, metadata !DIExpression()), !dbg !5462
  %51 = load i32, i32* %cndat, align 4, !dbg !5463
  %sub = sub i32 %51, 3000, !dbg !5463
  store i32 %sub, i32* %cndat, align 4, !dbg !5463
  %52 = load i32, i32* %cndat, align 4, !dbg !5464
  %shl76 = shl i32 %52, 16, !dbg !5465
  %conv77 = zext i32 %shl76 to i64, !dbg !5464
  %call78 = call i64 @int_sqrt(i64 %conv77) #9, !dbg !5466
  %conv79 = trunc i64 %call78 to i32, !dbg !5466
  store i32 %conv79, i32* %p, align 4, !dbg !5467
  %53 = load i32, i32* %cndat, align 4, !dbg !5468
  %54 = load i32, i32* %cndat, align 4, !dbg !5469
  %mul = mul i32 %53, %54, !dbg !5470
  store i32 %mul, i32* %p4, align 4, !dbg !5471
  %55 = load i32, i32* %p4, align 4, !dbg !5472
  %conv80 = zext i32 %55 to i64, !dbg !5472
  %mul81 = mul i64 -16346, %conv80, !dbg !5473
  %56 = load i32, i32* %p, align 4, !dbg !5474
  %conv82 = zext i32 %56 to i64, !dbg !5474
  %mul83 = mul i64 %mul81, %conv82, !dbg !5475
  %call84 = call i64 @div64_s64(i64 %mul83, i64 10) #9, !dbg !5476
  %shr85 = ashr i64 %call84, 35, !dbg !5477
  store i64 %shr85, i64* %cn, align 8, !dbg !5478
  %57 = load i32, i32* %p4, align 4, !dbg !5479
  %conv86 = zext i32 %57 to i64, !dbg !5479
  %mul87 = mul i64 14341, %conv86, !dbg !5480
  %shr88 = ashr i64 %mul87, 21, !dbg !5481
  %58 = load i64, i64* %cn, align 8, !dbg !5482
  %add = add i64 %58, %shr88, !dbg !5482
  store i64 %add, i64* %cn, align 8, !dbg !5482
  %59 = load i32, i32* %cndat, align 4, !dbg !5483
  %conv89 = zext i32 %59 to i64, !dbg !5483
  %mul90 = mul i64 50259, %conv89, !dbg !5484
  %60 = load i32, i32* %p, align 4, !dbg !5485
  %conv91 = zext i32 %60 to i64, !dbg !5485
  %mul92 = mul i64 %mul90, %conv91, !dbg !5486
  %shr93 = ashr i64 %mul92, 23, !dbg !5487
  %61 = load i64, i64* %cn, align 8, !dbg !5488
  %sub94 = sub i64 %61, %shr93, !dbg !5488
  store i64 %sub94, i64* %cn, align 8, !dbg !5488
  %62 = load i32, i32* %cndat, align 4, !dbg !5489
  %conv95 = zext i32 %62 to i64, !dbg !5489
  %mul96 = mul i64 88977, %conv95, !dbg !5490
  %shr97 = ashr i64 %mul96, 9, !dbg !5491
  %63 = load i64, i64* %cn, align 8, !dbg !5492
  %add98 = add i64 %63, %shr97, !dbg !5492
  store i64 %add98, i64* %cn, align 8, !dbg !5492
  %64 = load i32, i32* %p, align 4, !dbg !5493
  %conv99 = zext i32 %64 to i64, !dbg !5493
  %mul100 = mul i64 89565, %conv99, !dbg !5494
  %shr101 = ashr i64 %mul100, 11, !dbg !5495
  %65 = load i64, i64* %cn, align 8, !dbg !5496
  %sub102 = sub i64 %65, %shr101, !dbg !5496
  store i64 %sub102, i64* %cn, align 8, !dbg !5496
  %66 = load i64, i64* %cn, align 8, !dbg !5497
  %add103 = add i64 %66, 470856, !dbg !5497
  store i64 %add103, i64* %cn, align 8, !dbg !5497
  %67 = load i64, i64* %cn, align 8, !dbg !5498
  %shr104 = ashr i64 %67, 3, !dbg !5499
  %68 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %stats, align 8, !dbg !5500
  %stat105 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %68, i32 0, i32 1, !dbg !5501
  %arrayidx106 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat105, i64 0, i64 0, !dbg !5500
  %69 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx106, i32 0, i32 1, !dbg !5502
  %svalue = bitcast %union.anon.67* %69 to i64*, !dbg !5502
  store i64 %shr104, i64* %svalue, align 1, !dbg !5503
  %70 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %stats, align 8, !dbg !5504
  %stat107 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %70, i32 0, i32 1, !dbg !5505
  %arrayidx108 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat107, i64 0, i64 0, !dbg !5504
  %scale109 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx108, i32 0, i32 0, !dbg !5506
  store i8 1, i8* %scale109, align 1, !dbg !5507
  br label %if.end110, !dbg !5508

if.end110:                                        ; preds = %if.then75, %if.end72
  %71 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5509
  %post_bit_error = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %71, i32 0, i32 46, !dbg !5510
  store %struct.dtv_fe_stats* %post_bit_error, %struct.dtv_fe_stats** %stats, align 8, !dbg !5511
  %72 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %stats, align 8, !dbg !5512
  %73 = bitcast %struct.dtv_fe_stats* %72 to i8*, !dbg !5513
  call void @llvm.memset.p0i8.i64(i8* align 1 %73, i8 0, i64 37, i1 false), !dbg !5513
  %74 = load i32, i32* %layers, align 4, !dbg !5514
  %conv111 = trunc i32 %74 to i8, !dbg !5514
  %75 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %stats, align 8, !dbg !5515
  %len112 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %75, i32 0, i32 0, !dbg !5516
  store i8 %conv111, i8* %len112, align 1, !dbg !5517
  %76 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !5518
  %arraydecay113 = getelementptr inbounds [10 x i8], [10 x i8]* %val, i64 0, i64 0, !dbg !5519
  %call114 = call i32 @reg_read(%struct.tc90522_state* %76, i8 zeroext -21, i8* %arraydecay113, i8 zeroext 10) #9, !dbg !5520
  store i32 %call114, i32* %ret, align 4, !dbg !5521
  %77 = load i32, i32* %ret, align 4, !dbg !5522
  %cmp115 = icmp slt i32 %77, 0, !dbg !5524
  br i1 %cmp115, label %if.then117, label %if.else124, !dbg !5525

if.then117:                                       ; preds = %if.end110
  store i32 0, i32* %i, align 4, !dbg !5526
  br label %for.cond, !dbg !5528

for.cond:                                         ; preds = %for.inc, %if.then117
  %78 = load i32, i32* %i, align 4, !dbg !5529
  %79 = load i32, i32* %layers, align 4, !dbg !5531
  %cmp118 = icmp slt i32 %78, %79, !dbg !5532
  br i1 %cmp118, label %for.body, label %for.end, !dbg !5533

for.body:                                         ; preds = %for.cond
  %80 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %stats, align 8, !dbg !5534
  %stat120 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %80, i32 0, i32 1, !dbg !5535
  %81 = load i32, i32* %i, align 4, !dbg !5536
  %idxprom121 = sext i32 %81 to i64, !dbg !5534
  %arrayidx122 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat120, i64 0, i64 %idxprom121, !dbg !5534
  %scale123 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx122, i32 0, i32 0, !dbg !5537
  store i8 0, i8* %scale123, align 1, !dbg !5538
  br label %for.inc, !dbg !5534

for.inc:                                          ; preds = %for.body
  %82 = load i32, i32* %i, align 4, !dbg !5539
  %inc = add i32 %82, 1, !dbg !5539
  store i32 %inc, i32* %i, align 4, !dbg !5539
  br label %for.cond, !dbg !5540, !llvm.loop !5541

for.end:                                          ; preds = %for.cond
  br label %if.end158, !dbg !5542

if.else124:                                       ; preds = %if.end110
  store i32 0, i32* %i, align 4, !dbg !5543
  br label %for.cond125, !dbg !5546

for.cond125:                                      ; preds = %for.inc155, %if.else124
  %83 = load i32, i32* %i, align 4, !dbg !5547
  %84 = load i32, i32* %layers, align 4, !dbg !5549
  %cmp126 = icmp slt i32 %83, %84, !dbg !5550
  br i1 %cmp126, label %for.body128, label %for.end157, !dbg !5551

for.body128:                                      ; preds = %for.cond125
  %85 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %stats, align 8, !dbg !5552
  %stat129 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %85, i32 0, i32 1, !dbg !5554
  %86 = load i32, i32* %i, align 4, !dbg !5555
  %idxprom130 = sext i32 %86 to i64, !dbg !5552
  %arrayidx131 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat129, i64 0, i64 %idxprom130, !dbg !5552
  %scale132 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx131, i32 0, i32 0, !dbg !5556
  store i8 3, i8* %scale132, align 1, !dbg !5557
  %87 = load i32, i32* %i, align 4, !dbg !5558
  %mul133 = mul i32 %87, 5, !dbg !5559
  %idxprom134 = sext i32 %mul133 to i64, !dbg !5560
  %arrayidx135 = getelementptr [10 x i8], [10 x i8]* %val, i64 0, i64 %idxprom134, !dbg !5560
  %88 = load i8, i8* %arrayidx135, align 1, !dbg !5560
  %conv136 = zext i8 %88 to i32, !dbg !5560
  %shl137 = shl i32 %conv136, 16, !dbg !5561
  %89 = load i32, i32* %i, align 4, !dbg !5562
  %mul138 = mul i32 %89, 5, !dbg !5563
  %add139 = add i32 %mul138, 1, !dbg !5564
  %idxprom140 = sext i32 %add139 to i64, !dbg !5565
  %arrayidx141 = getelementptr [10 x i8], [10 x i8]* %val, i64 0, i64 %idxprom140, !dbg !5565
  %90 = load i8, i8* %arrayidx141, align 1, !dbg !5565
  %conv142 = zext i8 %90 to i32, !dbg !5565
  %shl143 = shl i32 %conv142, 8, !dbg !5566
  %or144 = or i32 %shl137, %shl143, !dbg !5567
  %91 = load i32, i32* %i, align 4, !dbg !5568
  %mul145 = mul i32 %91, 5, !dbg !5569
  %add146 = add i32 %mul145, 2, !dbg !5570
  %idxprom147 = sext i32 %add146 to i64, !dbg !5571
  %arrayidx148 = getelementptr [10 x i8], [10 x i8]* %val, i64 0, i64 %idxprom147, !dbg !5571
  %92 = load i8, i8* %arrayidx148, align 1, !dbg !5571
  %conv149 = zext i8 %92 to i32, !dbg !5571
  %or150 = or i32 %or144, %conv149, !dbg !5572
  %conv151 = sext i32 %or150 to i64, !dbg !5560
  %93 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %stats, align 8, !dbg !5573
  %stat152 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %93, i32 0, i32 1, !dbg !5574
  %94 = load i32, i32* %i, align 4, !dbg !5575
  %idxprom153 = sext i32 %94 to i64, !dbg !5573
  %arrayidx154 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat152, i64 0, i64 %idxprom153, !dbg !5573
  %95 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx154, i32 0, i32 1, !dbg !5576
  %uvalue = bitcast %union.anon.67* %95 to i64*, !dbg !5576
  store i64 %conv151, i64* %uvalue, align 1, !dbg !5577
  br label %for.inc155, !dbg !5578

for.inc155:                                       ; preds = %for.body128
  %96 = load i32, i32* %i, align 4, !dbg !5579
  %inc156 = add i32 %96, 1, !dbg !5579
  store i32 %inc156, i32* %i, align 4, !dbg !5579
  br label %for.cond125, !dbg !5580, !llvm.loop !5581

for.end157:                                       ; preds = %for.cond125
  br label %if.end158

if.end158:                                        ; preds = %for.end157, %for.end
  %97 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5583
  %post_bit_count = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %97, i32 0, i32 47, !dbg !5584
  store %struct.dtv_fe_stats* %post_bit_count, %struct.dtv_fe_stats** %stats, align 8, !dbg !5585
  %98 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %stats, align 8, !dbg !5586
  %99 = bitcast %struct.dtv_fe_stats* %98 to i8*, !dbg !5587
  call void @llvm.memset.p0i8.i64(i8* align 1 %99, i8 0, i64 37, i1 false), !dbg !5587
  %100 = load i32, i32* %layers, align 4, !dbg !5588
  %conv159 = trunc i32 %100 to i8, !dbg !5588
  %101 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %stats, align 8, !dbg !5589
  %len160 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %101, i32 0, i32 0, !dbg !5590
  store i8 %conv159, i8* %len160, align 1, !dbg !5591
  %102 = load i32, i32* %ret, align 4, !dbg !5592
  %cmp161 = icmp slt i32 %102, 0, !dbg !5594
  br i1 %cmp161, label %if.then163, label %if.else175, !dbg !5595

if.then163:                                       ; preds = %if.end158
  store i32 0, i32* %i, align 4, !dbg !5596
  br label %for.cond164, !dbg !5598

for.cond164:                                      ; preds = %for.inc172, %if.then163
  %103 = load i32, i32* %i, align 4, !dbg !5599
  %104 = load i32, i32* %layers, align 4, !dbg !5601
  %cmp165 = icmp slt i32 %103, %104, !dbg !5602
  br i1 %cmp165, label %for.body167, label %for.end174, !dbg !5603

for.body167:                                      ; preds = %for.cond164
  %105 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %stats, align 8, !dbg !5604
  %stat168 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %105, i32 0, i32 1, !dbg !5605
  %106 = load i32, i32* %i, align 4, !dbg !5606
  %idxprom169 = sext i32 %106 to i64, !dbg !5604
  %arrayidx170 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat168, i64 0, i64 %idxprom169, !dbg !5604
  %scale171 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx170, i32 0, i32 0, !dbg !5607
  store i8 0, i8* %scale171, align 1, !dbg !5608
  br label %for.inc172, !dbg !5604

for.inc172:                                       ; preds = %for.body167
  %107 = load i32, i32* %i, align 4, !dbg !5609
  %inc173 = add i32 %107, 1, !dbg !5609
  store i32 %inc173, i32* %i, align 4, !dbg !5609
  br label %for.cond164, !dbg !5610, !llvm.loop !5611

for.end174:                                       ; preds = %for.cond164
  br label %if.end209, !dbg !5612

if.else175:                                       ; preds = %if.end158
  store i32 0, i32* %i, align 4, !dbg !5613
  br label %for.cond176, !dbg !5616

for.cond176:                                      ; preds = %for.inc206, %if.else175
  %108 = load i32, i32* %i, align 4, !dbg !5617
  %109 = load i32, i32* %layers, align 4, !dbg !5619
  %cmp177 = icmp slt i32 %108, %109, !dbg !5620
  br i1 %cmp177, label %for.body179, label %for.end208, !dbg !5621

for.body179:                                      ; preds = %for.cond176
  %110 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %stats, align 8, !dbg !5622
  %stat180 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %110, i32 0, i32 1, !dbg !5624
  %111 = load i32, i32* %i, align 4, !dbg !5625
  %idxprom181 = sext i32 %111 to i64, !dbg !5622
  %arrayidx182 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat180, i64 0, i64 %idxprom181, !dbg !5622
  %scale183 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx182, i32 0, i32 0, !dbg !5626
  store i8 3, i8* %scale183, align 1, !dbg !5627
  %112 = load i32, i32* %i, align 4, !dbg !5628
  %mul184 = mul i32 %112, 5, !dbg !5629
  %add185 = add i32 %mul184, 3, !dbg !5630
  %idxprom186 = sext i32 %add185 to i64, !dbg !5631
  %arrayidx187 = getelementptr [10 x i8], [10 x i8]* %val, i64 0, i64 %idxprom186, !dbg !5631
  %113 = load i8, i8* %arrayidx187, align 1, !dbg !5631
  %conv188 = zext i8 %113 to i32, !dbg !5631
  %shl189 = shl i32 %conv188, 8, !dbg !5632
  %114 = load i32, i32* %i, align 4, !dbg !5633
  %mul190 = mul i32 %114, 5, !dbg !5634
  %add191 = add i32 %mul190, 4, !dbg !5635
  %idxprom192 = sext i32 %add191 to i64, !dbg !5636
  %arrayidx193 = getelementptr [10 x i8], [10 x i8]* %val, i64 0, i64 %idxprom192, !dbg !5636
  %115 = load i8, i8* %arrayidx193, align 1, !dbg !5636
  %conv194 = zext i8 %115 to i32, !dbg !5636
  %or195 = or i32 %shl189, %conv194, !dbg !5637
  %conv196 = sext i32 %or195 to i64, !dbg !5631
  %116 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %stats, align 8, !dbg !5638
  %stat197 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %116, i32 0, i32 1, !dbg !5639
  %117 = load i32, i32* %i, align 4, !dbg !5640
  %idxprom198 = sext i32 %117 to i64, !dbg !5638
  %arrayidx199 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat197, i64 0, i64 %idxprom198, !dbg !5638
  %118 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx199, i32 0, i32 1, !dbg !5641
  %uvalue200 = bitcast %union.anon.67* %118 to i64*, !dbg !5641
  store i64 %conv196, i64* %uvalue200, align 1, !dbg !5642
  %119 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %stats, align 8, !dbg !5643
  %stat201 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %119, i32 0, i32 1, !dbg !5644
  %120 = load i32, i32* %i, align 4, !dbg !5645
  %idxprom202 = sext i32 %120 to i64, !dbg !5643
  %arrayidx203 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat201, i64 0, i64 %idxprom202, !dbg !5643
  %121 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx203, i32 0, i32 1, !dbg !5646
  %uvalue204 = bitcast %union.anon.67* %121 to i64*, !dbg !5646
  %122 = load i64, i64* %uvalue204, align 1, !dbg !5647
  %mul205 = mul i64 %122, 1632, !dbg !5647
  store i64 %mul205, i64* %uvalue204, align 1, !dbg !5647
  br label %for.inc206, !dbg !5648

for.inc206:                                       ; preds = %for.body179
  %123 = load i32, i32* %i, align 4, !dbg !5649
  %inc207 = add i32 %123, 1, !dbg !5649
  store i32 %inc207, i32* %i, align 4, !dbg !5649
  br label %for.cond176, !dbg !5650, !llvm.loop !5651

for.end208:                                       ; preds = %for.cond176
  br label %if.end209

if.end209:                                        ; preds = %for.end208, %for.end174
  ret i32 0, !dbg !5653
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tc90522s_read_status(%struct.dvb_frontend* %fe, i32* %status) #2 !dbg !5654 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %status.addr = alloca i32*, align 8
  %state = alloca %struct.tc90522_state*, align 8
  %ret = alloca i32, align 4
  %reg = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5655, metadata !DIExpression()), !dbg !5656
  store i32* %status, i32** %status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %status.addr, metadata !5657, metadata !DIExpression()), !dbg !5658
  call void @llvm.dbg.declare(metadata %struct.tc90522_state** %state, metadata !5659, metadata !DIExpression()), !dbg !5660
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5661, metadata !DIExpression()), !dbg !5662
  call void @llvm.dbg.declare(metadata i8* %reg, metadata !5663, metadata !DIExpression()), !dbg !5664
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5665
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5666
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5666
  %2 = bitcast i8* %1 to %struct.tc90522_state*, !dbg !5665
  store %struct.tc90522_state* %2, %struct.tc90522_state** %state, align 8, !dbg !5667
  %3 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !5668
  %call = call i32 @reg_read(%struct.tc90522_state* %3, i8 zeroext -61, i8* %reg, i8 zeroext 1) #9, !dbg !5669
  store i32 %call, i32* %ret, align 4, !dbg !5670
  %4 = load i32, i32* %ret, align 4, !dbg !5671
  %cmp = icmp slt i32 %4, 0, !dbg !5673
  br i1 %cmp, label %if.then, label %if.end, !dbg !5674

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !5675
  store i32 %5, i32* %retval, align 4, !dbg !5676
  br label %return, !dbg !5676

if.end:                                           ; preds = %entry
  %6 = load i32*, i32** %status.addr, align 8, !dbg !5677
  store i32 0, i32* %6, align 4, !dbg !5678
  %7 = load i8, i8* %reg, align 1, !dbg !5679
  %conv = zext i8 %7 to i32, !dbg !5679
  %and = and i32 %conv, 128, !dbg !5681
  %tobool = icmp ne i32 %and, 0, !dbg !5681
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !5682

if.then1:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5683
  br label %return, !dbg !5683

if.end2:                                          ; preds = %if.end
  %8 = load i32*, i32** %status.addr, align 8, !dbg !5684
  %9 = load i32, i32* %8, align 4, !dbg !5685
  %or = or i32 %9, 1, !dbg !5685
  store i32 %or, i32* %8, align 4, !dbg !5685
  %10 = load i8, i8* %reg, align 1, !dbg !5686
  %conv3 = zext i8 %10 to i32, !dbg !5686
  %and4 = and i32 %conv3, 96, !dbg !5688
  %tobool5 = icmp ne i32 %and4, 0, !dbg !5688
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !5689

if.then6:                                         ; preds = %if.end2
  store i32 0, i32* %retval, align 4, !dbg !5690
  br label %return, !dbg !5690

if.end7:                                          ; preds = %if.end2
  %11 = load i32*, i32** %status.addr, align 8, !dbg !5691
  %12 = load i32, i32* %11, align 4, !dbg !5692
  %or8 = or i32 %12, 14, !dbg !5692
  store i32 %or8, i32* %11, align 4, !dbg !5692
  %13 = load i8, i8* %reg, align 1, !dbg !5693
  %conv9 = zext i8 %13 to i32, !dbg !5693
  %and10 = and i32 %conv9, 16, !dbg !5695
  %tobool11 = icmp ne i32 %and10, 0, !dbg !5695
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !5696

if.then12:                                        ; preds = %if.end7
  store i32 0, i32* %retval, align 4, !dbg !5697
  br label %return, !dbg !5697

if.end13:                                         ; preds = %if.end7
  %14 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !5698
  %call14 = call i32 @reg_read(%struct.tc90522_state* %14, i8 zeroext -59, i8* %reg, i8 zeroext 1) #9, !dbg !5700
  %cmp15 = icmp slt i32 %call14, 0, !dbg !5701
  br i1 %cmp15, label %if.then20, label %lor.lhs.false, !dbg !5702

lor.lhs.false:                                    ; preds = %if.end13
  %15 = load i8, i8* %reg, align 1, !dbg !5703
  %conv17 = zext i8 %15 to i32, !dbg !5703
  %and18 = and i32 %conv17, 3, !dbg !5704
  %tobool19 = icmp ne i32 %and18, 0, !dbg !5704
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !5705

if.then20:                                        ; preds = %lor.lhs.false, %if.end13
  store i32 0, i32* %retval, align 4, !dbg !5706
  br label %return, !dbg !5706

if.end21:                                         ; preds = %lor.lhs.false
  %16 = load i32*, i32** %status.addr, align 8, !dbg !5707
  %17 = load i32, i32* %16, align 4, !dbg !5708
  %or22 = or i32 %17, 16, !dbg !5708
  store i32 %or22, i32* %16, align 4, !dbg !5708
  store i32 0, i32* %retval, align 4, !dbg !5709
  br label %return, !dbg !5709

return:                                           ; preds = %if.end21, %if.then20, %if.then12, %if.then6, %if.then1, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !5710
  ret i32 %18, !dbg !5710
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @reg_write(%struct.tc90522_state* %state, %struct.reg_val* %regs, i32 %num) #2 !dbg !5711 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.tc90522_state*, align 8
  %regs.addr = alloca %struct.reg_val*, align 8
  %num.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %msg = alloca %struct.i2c_msg, align 8
  store %struct.tc90522_state* %state, %struct.tc90522_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tc90522_state** %state.addr, metadata !5715, metadata !DIExpression()), !dbg !5716
  store %struct.reg_val* %regs, %struct.reg_val** %regs.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.reg_val** %regs.addr, metadata !5717, metadata !DIExpression()), !dbg !5718
  store i32 %num, i32* %num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !5719, metadata !DIExpression()), !dbg !5720
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5721, metadata !DIExpression()), !dbg !5722
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5723, metadata !DIExpression()), !dbg !5724
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !5725, metadata !DIExpression()), !dbg !5726
  store i32 0, i32* %ret, align 4, !dbg !5727
  %0 = load %struct.tc90522_state*, %struct.tc90522_state** %state.addr, align 8, !dbg !5728
  %i2c_client = getelementptr inbounds %struct.tc90522_state, %struct.tc90522_state* %0, i32 0, i32 2, !dbg !5729
  %1 = load %struct.i2c_client*, %struct.i2c_client** %i2c_client, align 8, !dbg !5729
  %addr = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %1, i32 0, i32 1, !dbg !5730
  %2 = load i16, i16* %addr, align 2, !dbg !5730
  %addr1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !5731
  store i16 %2, i16* %addr1, align 8, !dbg !5732
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !5733
  store i16 0, i16* %flags, align 2, !dbg !5734
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5735
  store i16 2, i16* %len, align 4, !dbg !5736
  store i32 0, i32* %i, align 4, !dbg !5737
  br label %for.cond, !dbg !5739

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !5740
  %4 = load i32, i32* %num.addr, align 4, !dbg !5742
  %cmp = icmp slt i32 %3, %4, !dbg !5743
  br i1 %cmp, label %for.body, label %for.end, !dbg !5744

for.body:                                         ; preds = %for.cond
  %5 = load %struct.reg_val*, %struct.reg_val** %regs.addr, align 8, !dbg !5745
  %6 = load i32, i32* %i, align 4, !dbg !5747
  %idxprom = sext i32 %6 to i64, !dbg !5745
  %arrayidx = getelementptr %struct.reg_val, %struct.reg_val* %5, i64 %idxprom, !dbg !5745
  %7 = bitcast %struct.reg_val* %arrayidx to i8*, !dbg !5748
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5749
  store i8* %7, i8** %buf, align 8, !dbg !5750
  %8 = load %struct.tc90522_state*, %struct.tc90522_state** %state.addr, align 8, !dbg !5751
  %i2c_client2 = getelementptr inbounds %struct.tc90522_state, %struct.tc90522_state* %8, i32 0, i32 2, !dbg !5752
  %9 = load %struct.i2c_client*, %struct.i2c_client** %i2c_client2, align 8, !dbg !5752
  %adapter = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 3, !dbg !5753
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !5753
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %10, %struct.i2c_msg* %msg, i32 1) #9, !dbg !5754
  store i32 %call, i32* %ret, align 4, !dbg !5755
  %11 = load i32, i32* %ret, align 4, !dbg !5756
  %cmp3 = icmp eq i32 %11, 0, !dbg !5758
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5759

if.then:                                          ; preds = %for.body
  store i32 -5, i32* %ret, align 4, !dbg !5760
  br label %if.end, !dbg !5761

if.end:                                           ; preds = %if.then, %for.body
  %12 = load i32, i32* %ret, align 4, !dbg !5762
  %cmp4 = icmp slt i32 %12, 0, !dbg !5764
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5765

if.then5:                                         ; preds = %if.end
  %13 = load i32, i32* %ret, align 4, !dbg !5766
  store i32 %13, i32* %retval, align 4, !dbg !5767
  br label %return, !dbg !5767

if.end6:                                          ; preds = %if.end
  br label %for.inc, !dbg !5768

for.inc:                                          ; preds = %if.end6
  %14 = load i32, i32* %i, align 4, !dbg !5769
  %inc = add i32 %14, 1, !dbg !5769
  store i32 %inc, i32* %i, align 4, !dbg !5769
  br label %for.cond, !dbg !5770, !llvm.loop !5771

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !5773
  br label %return, !dbg !5773

return:                                           ; preds = %for.end, %if.then5
  %15 = load i32, i32* %retval, align 4, !dbg !5774
  ret i32 %15, !dbg !5774
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tc90522_set_if_agc(%struct.dvb_frontend* %fe, i1 zeroext %on) #2 !dbg !5775 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %on.addr = alloca i8, align 1
  %agc_sat = alloca [4 x %struct.reg_val], align 1
  %agc_ter = alloca [3 x %struct.reg_val], align 1
  %state = alloca %struct.tc90522_state*, align 8
  %rv = alloca %struct.reg_val*, align 8
  %num = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5778, metadata !DIExpression()), !dbg !5779
  %frombool = zext i1 %on to i8
  store i8 %frombool, i8* %on.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %on.addr, metadata !5780, metadata !DIExpression()), !dbg !5781
  call void @llvm.dbg.declare(metadata [4 x %struct.reg_val]* %agc_sat, metadata !5782, metadata !DIExpression()), !dbg !5784
  %0 = bitcast [4 x %struct.reg_val]* %agc_sat to i8*, !dbg !5784
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([4 x %struct.reg_val], [4 x %struct.reg_val]* @__const.tc90522_set_if_agc.agc_sat, i32 0, i32 0, i32 0), i64 8, i1 false), !dbg !5784
  call void @llvm.dbg.declare(metadata [3 x %struct.reg_val]* %agc_ter, metadata !5785, metadata !DIExpression()), !dbg !5787
  %1 = bitcast [3 x %struct.reg_val]* %agc_ter to i8*, !dbg !5787
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 getelementptr inbounds ([3 x %struct.reg_val], [3 x %struct.reg_val]* @__const.tc90522_set_if_agc.agc_ter, i32 0, i32 0, i32 0), i64 6, i1 false), !dbg !5787
  call void @llvm.dbg.declare(metadata %struct.tc90522_state** %state, metadata !5788, metadata !DIExpression()), !dbg !5789
  call void @llvm.dbg.declare(metadata %struct.reg_val** %rv, metadata !5790, metadata !DIExpression()), !dbg !5792
  call void @llvm.dbg.declare(metadata i32* %num, metadata !5793, metadata !DIExpression()), !dbg !5794
  %2 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5795
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %2, i32 0, i32 3, !dbg !5796
  %3 = load i8*, i8** %demodulator_priv, align 8, !dbg !5796
  %4 = bitcast i8* %3 to %struct.tc90522_state*, !dbg !5795
  store %struct.tc90522_state* %4, %struct.tc90522_state** %state, align 8, !dbg !5797
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5798
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 1, !dbg !5800
  %delsys = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 1, !dbg !5801
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %delsys, i64 0, i64 0, !dbg !5798
  %6 = load i8, i8* %arrayidx, align 8, !dbg !5798
  %conv = zext i8 %6 to i32, !dbg !5798
  %cmp = icmp eq i32 %conv, 9, !dbg !5802
  br i1 %cmp, label %if.then, label %if.else, !dbg !5803

if.then:                                          ; preds = %entry
  %7 = load i8, i8* %on.addr, align 1, !dbg !5804
  %tobool = trunc i8 %7 to i1, !dbg !5804
  %8 = zext i1 %tobool to i64, !dbg !5804
  %cond = select i1 %tobool, i32 255, i32 0, !dbg !5804
  %conv3 = trunc i32 %cond to i8, !dbg !5804
  %arrayidx4 = getelementptr [4 x %struct.reg_val], [4 x %struct.reg_val]* %agc_sat, i64 0, i64 0, !dbg !5806
  %val = getelementptr inbounds %struct.reg_val, %struct.reg_val* %arrayidx4, i32 0, i32 1, !dbg !5807
  store i8 %conv3, i8* %val, align 1, !dbg !5808
  %arrayidx5 = getelementptr [4 x %struct.reg_val], [4 x %struct.reg_val]* %agc_sat, i64 0, i64 1, !dbg !5809
  %val6 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %arrayidx5, i32 0, i32 1, !dbg !5810
  %9 = load i8, i8* %val6, align 1, !dbg !5811
  %conv7 = zext i8 %9 to i32, !dbg !5811
  %or = or i32 %conv7, 128, !dbg !5811
  %conv8 = trunc i32 %or to i8, !dbg !5811
  store i8 %conv8, i8* %val6, align 1, !dbg !5811
  %10 = load i8, i8* %on.addr, align 1, !dbg !5812
  %tobool9 = trunc i8 %10 to i1, !dbg !5812
  %11 = zext i1 %tobool9 to i64, !dbg !5812
  %cond11 = select i1 %tobool9, i32 1, i32 0, !dbg !5812
  %arrayidx12 = getelementptr [4 x %struct.reg_val], [4 x %struct.reg_val]* %agc_sat, i64 0, i64 1, !dbg !5813
  %val13 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %arrayidx12, i32 0, i32 1, !dbg !5814
  %12 = load i8, i8* %val13, align 1, !dbg !5815
  %conv14 = zext i8 %12 to i32, !dbg !5815
  %or15 = or i32 %conv14, %cond11, !dbg !5815
  %conv16 = trunc i32 %or15 to i8, !dbg !5815
  store i8 %conv16, i8* %val13, align 1, !dbg !5815
  %13 = load i8, i8* %on.addr, align 1, !dbg !5816
  %tobool17 = trunc i8 %13 to i1, !dbg !5816
  %14 = zext i1 %tobool17 to i64, !dbg !5816
  %cond19 = select i1 %tobool17, i32 64, i32 0, !dbg !5816
  %arrayidx20 = getelementptr [4 x %struct.reg_val], [4 x %struct.reg_val]* %agc_sat, i64 0, i64 2, !dbg !5817
  %val21 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %arrayidx20, i32 0, i32 1, !dbg !5818
  %15 = load i8, i8* %val21, align 1, !dbg !5819
  %conv22 = zext i8 %15 to i32, !dbg !5819
  %or23 = or i32 %conv22, %cond19, !dbg !5819
  %conv24 = trunc i32 %or23 to i8, !dbg !5819
  store i8 %conv24, i8* %val21, align 1, !dbg !5819
  %arraydecay = getelementptr inbounds [4 x %struct.reg_val], [4 x %struct.reg_val]* %agc_sat, i64 0, i64 0, !dbg !5820
  store %struct.reg_val* %arraydecay, %struct.reg_val** %rv, align 8, !dbg !5821
  store i32 4, i32* %num, align 4, !dbg !5822
  br label %if.end, !dbg !5823

if.else:                                          ; preds = %entry
  %16 = load i8, i8* %on.addr, align 1, !dbg !5824
  %tobool25 = trunc i8 %16 to i1, !dbg !5824
  %17 = zext i1 %tobool25 to i64, !dbg !5824
  %cond27 = select i1 %tobool25, i32 64, i32 0, !dbg !5824
  %conv28 = trunc i32 %cond27 to i8, !dbg !5824
  %arrayidx29 = getelementptr [3 x %struct.reg_val], [3 x %struct.reg_val]* %agc_ter, i64 0, i64 0, !dbg !5826
  %val30 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %arrayidx29, i32 0, i32 1, !dbg !5827
  store i8 %conv28, i8* %val30, align 1, !dbg !5828
  %18 = load i8, i8* %on.addr, align 1, !dbg !5829
  %tobool31 = trunc i8 %18 to i1, !dbg !5829
  %19 = zext i1 %tobool31 to i64, !dbg !5829
  %cond33 = select i1 %tobool31, i32 0, i32 1, !dbg !5829
  %arrayidx34 = getelementptr [3 x %struct.reg_val], [3 x %struct.reg_val]* %agc_ter, i64 0, i64 1, !dbg !5830
  %val35 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %arrayidx34, i32 0, i32 1, !dbg !5831
  %20 = load i8, i8* %val35, align 1, !dbg !5832
  %conv36 = zext i8 %20 to i32, !dbg !5832
  %or37 = or i32 %conv36, %cond33, !dbg !5832
  %conv38 = trunc i32 %or37 to i8, !dbg !5832
  store i8 %conv38, i8* %val35, align 1, !dbg !5832
  %arraydecay39 = getelementptr inbounds [3 x %struct.reg_val], [3 x %struct.reg_val]* %agc_ter, i64 0, i64 0, !dbg !5833
  store %struct.reg_val* %arraydecay39, %struct.reg_val** %rv, align 8, !dbg !5834
  store i32 3, i32* %num, align 4, !dbg !5835
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !5836
  %22 = load %struct.reg_val*, %struct.reg_val** %rv, align 8, !dbg !5837
  %23 = load i32, i32* %num, align 4, !dbg !5838
  %call = call i32 @reg_write(%struct.tc90522_state* %21, %struct.reg_val* %22, i32 %23) #9, !dbg !5839
  ret i32 %call, !dbg !5840
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tc90522s_set_tsid(%struct.dvb_frontend* %fe) #2 !dbg !5841 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %set_tsid = alloca [2 x %struct.reg_val], align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5842, metadata !DIExpression()), !dbg !5843
  call void @llvm.dbg.declare(metadata [2 x %struct.reg_val]* %set_tsid, metadata !5844, metadata !DIExpression()), !dbg !5846
  %0 = bitcast [2 x %struct.reg_val]* %set_tsid to i8*, !dbg !5846
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([2 x %struct.reg_val], [2 x %struct.reg_val]* @__const.tc90522s_set_tsid.set_tsid, i32 0, i32 0, i32 0), i64 4, i1 false), !dbg !5846
  %1 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5847
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %1, i32 0, i32 8, !dbg !5848
  %stream_id = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %dtv_property_cache, i32 0, i32 24, !dbg !5849
  %2 = load i32, i32* %stream_id, align 4, !dbg !5849
  %and = and i32 %2, 65280, !dbg !5850
  %shr = lshr i32 %and, 8, !dbg !5851
  %conv = trunc i32 %shr to i8, !dbg !5852
  %arrayidx = getelementptr [2 x %struct.reg_val], [2 x %struct.reg_val]* %set_tsid, i64 0, i64 0, !dbg !5853
  %val = getelementptr inbounds %struct.reg_val, %struct.reg_val* %arrayidx, i32 0, i32 1, !dbg !5854
  store i8 %conv, i8* %val, align 1, !dbg !5855
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5856
  %dtv_property_cache1 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %3, i32 0, i32 8, !dbg !5857
  %stream_id2 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %dtv_property_cache1, i32 0, i32 24, !dbg !5858
  %4 = load i32, i32* %stream_id2, align 4, !dbg !5858
  %and3 = and i32 %4, 255, !dbg !5859
  %conv4 = trunc i32 %and3 to i8, !dbg !5856
  %arrayidx5 = getelementptr [2 x %struct.reg_val], [2 x %struct.reg_val]* %set_tsid, i64 0, i64 1, !dbg !5860
  %val6 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %arrayidx5, i32 0, i32 1, !dbg !5861
  store i8 %conv4, i8* %val6, align 1, !dbg !5862
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5863
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 3, !dbg !5864
  %6 = load i8*, i8** %demodulator_priv, align 8, !dbg !5864
  %7 = bitcast i8* %6 to %struct.tc90522_state*, !dbg !5863
  %arraydecay = getelementptr inbounds [2 x %struct.reg_val], [2 x %struct.reg_val]* %set_tsid, i64 0, i64 0, !dbg !5865
  %call = call i32 @reg_write(%struct.tc90522_state* %7, %struct.reg_val* %arraydecay, i32 2) #9, !dbg !5866
  ret i32 %call, !dbg !5867
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tc90522t_set_layers(%struct.dvb_frontend* %fe) #2 !dbg !5868 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %rv = alloca %struct.reg_val, align 1
  %laysel = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5869, metadata !DIExpression()), !dbg !5870
  call void @llvm.dbg.declare(metadata %struct.reg_val* %rv, metadata !5871, metadata !DIExpression()), !dbg !5872
  call void @llvm.dbg.declare(metadata i8* %laysel, metadata !5873, metadata !DIExpression()), !dbg !5874
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5875
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 8, !dbg !5876
  %isdbt_layer_enabled = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %dtv_property_cache, i32 0, i32 22, !dbg !5877
  %1 = load i8, i8* %isdbt_layer_enabled, align 8, !dbg !5877
  %conv = zext i8 %1 to i32, !dbg !5875
  %neg = xor i32 %conv, -1, !dbg !5878
  %and = and i32 %neg, 7, !dbg !5879
  %conv1 = trunc i32 %and to i8, !dbg !5878
  store i8 %conv1, i8* %laysel, align 1, !dbg !5880
  %2 = load i8, i8* %laysel, align 1, !dbg !5881
  %conv2 = zext i8 %2 to i32, !dbg !5881
  %and3 = and i32 %conv2, 1, !dbg !5882
  %shl = shl i32 %and3, 2, !dbg !5883
  %3 = load i8, i8* %laysel, align 1, !dbg !5884
  %conv4 = zext i8 %3 to i32, !dbg !5884
  %and5 = and i32 %conv4, 2, !dbg !5885
  %or = or i32 %shl, %and5, !dbg !5886
  %4 = load i8, i8* %laysel, align 1, !dbg !5887
  %conv6 = zext i8 %4 to i32, !dbg !5887
  %and7 = and i32 %conv6, 4, !dbg !5888
  %shr = ashr i32 %and7, 2, !dbg !5889
  %or8 = or i32 %or, %shr, !dbg !5890
  %conv9 = trunc i32 %or8 to i8, !dbg !5891
  store i8 %conv9, i8* %laysel, align 1, !dbg !5892
  %reg = getelementptr inbounds %struct.reg_val, %struct.reg_val* %rv, i32 0, i32 0, !dbg !5893
  store i8 113, i8* %reg, align 1, !dbg !5894
  %5 = load i8, i8* %laysel, align 1, !dbg !5895
  %val = getelementptr inbounds %struct.reg_val, %struct.reg_val* %rv, i32 0, i32 1, !dbg !5896
  store i8 %5, i8* %val, align 1, !dbg !5897
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5898
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 3, !dbg !5899
  %7 = load i8*, i8** %demodulator_priv, align 8, !dbg !5899
  %8 = bitcast i8* %7 to %struct.tc90522_state*, !dbg !5898
  %call = call i32 @reg_write(%struct.tc90522_state* %8, %struct.reg_val* %rv, i32 1) #9, !dbg !5900
  ret i32 %call, !dbg !5901
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @reg_read(%struct.tc90522_state* %state, i8 zeroext %reg, i8* %val, i8 zeroext %len) #2 !dbg !5902 {
entry:
  %state.addr = alloca %struct.tc90522_state*, align 8
  %reg.addr = alloca i8, align 1
  %val.addr = alloca i8*, align 8
  %len.addr = alloca i8, align 1
  %msgs = alloca [2 x %struct.i2c_msg], align 16
  %ret = alloca i32, align 4
  store %struct.tc90522_state* %state, %struct.tc90522_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tc90522_state** %state.addr, metadata !5905, metadata !DIExpression()), !dbg !5906
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !5907, metadata !DIExpression()), !dbg !5908
  store i8* %val, i8** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %val.addr, metadata !5909, metadata !DIExpression()), !dbg !5910
  store i8 %len, i8* %len.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %len.addr, metadata !5911, metadata !DIExpression()), !dbg !5912
  call void @llvm.dbg.declare(metadata [2 x %struct.i2c_msg]* %msgs, metadata !5913, metadata !DIExpression()), !dbg !5915
  %arrayinit.begin = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msgs, i64 0, i64 0, !dbg !5916
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 0, !dbg !5917
  %0 = load %struct.tc90522_state*, %struct.tc90522_state** %state.addr, align 8, !dbg !5918
  %i2c_client = getelementptr inbounds %struct.tc90522_state, %struct.tc90522_state* %0, i32 0, i32 2, !dbg !5919
  %1 = load %struct.i2c_client*, %struct.i2c_client** %i2c_client, align 8, !dbg !5919
  %addr1 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %1, i32 0, i32 1, !dbg !5920
  %2 = load i16, i16* %addr1, align 2, !dbg !5920
  store i16 %2, i16* %addr, align 16, !dbg !5917
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 1, !dbg !5917
  store i16 0, i16* %flags, align 2, !dbg !5917
  %len2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 2, !dbg !5917
  store i16 1, i16* %len2, align 4, !dbg !5917
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 3, !dbg !5917
  store i8* %reg.addr, i8** %buf, align 8, !dbg !5917
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i64 1, !dbg !5916
  %addr3 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 0, !dbg !5921
  %3 = load %struct.tc90522_state*, %struct.tc90522_state** %state.addr, align 8, !dbg !5922
  %i2c_client4 = getelementptr inbounds %struct.tc90522_state, %struct.tc90522_state* %3, i32 0, i32 2, !dbg !5923
  %4 = load %struct.i2c_client*, %struct.i2c_client** %i2c_client4, align 8, !dbg !5923
  %addr5 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %4, i32 0, i32 1, !dbg !5924
  %5 = load i16, i16* %addr5, align 2, !dbg !5924
  store i16 %5, i16* %addr3, align 16, !dbg !5921
  %flags6 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 1, !dbg !5921
  store i16 1, i16* %flags6, align 2, !dbg !5921
  %len7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 2, !dbg !5921
  %6 = load i8, i8* %len.addr, align 1, !dbg !5925
  %conv = zext i8 %6 to i16, !dbg !5925
  store i16 %conv, i16* %len7, align 4, !dbg !5921
  %buf8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 3, !dbg !5921
  %7 = load i8*, i8** %val.addr, align 8, !dbg !5926
  store i8* %7, i8** %buf8, align 8, !dbg !5921
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5927, metadata !DIExpression()), !dbg !5928
  %8 = load %struct.tc90522_state*, %struct.tc90522_state** %state.addr, align 8, !dbg !5929
  %i2c_client9 = getelementptr inbounds %struct.tc90522_state, %struct.tc90522_state* %8, i32 0, i32 2, !dbg !5930
  %9 = load %struct.i2c_client*, %struct.i2c_client** %i2c_client9, align 8, !dbg !5930
  %adapter = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 3, !dbg !5931
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !5931
  %arraydecay = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msgs, i64 0, i64 0, !dbg !5932
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %10, %struct.i2c_msg* %arraydecay, i32 2) #9, !dbg !5933
  store i32 %call, i32* %ret, align 4, !dbg !5934
  %11 = load i32, i32* %ret, align 4, !dbg !5935
  %conv10 = sext i32 %11 to i64, !dbg !5935
  %cmp = icmp eq i64 %conv10, 2, !dbg !5937
  br i1 %cmp, label %if.then, label %if.else, !dbg !5938

if.then:                                          ; preds = %entry
  store i32 0, i32* %ret, align 4, !dbg !5939
  br label %if.end15, !dbg !5940

if.else:                                          ; preds = %entry
  %12 = load i32, i32* %ret, align 4, !dbg !5941
  %cmp12 = icmp sge i32 %12, 0, !dbg !5943
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !5944

if.then14:                                        ; preds = %if.else
  store i32 -5, i32* %ret, align 4, !dbg !5945
  br label %if.end, !dbg !5946

if.end:                                           ; preds = %if.then14, %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then
  %13 = load i32, i32* %ret, align 4, !dbg !5947
  ret i32 %13, !dbg !5948
}

; Function Attrs: noredzone
declare dso_local i64 @int_sqrt(i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @div64_s64(i64 %dividend, i64 %divisor) #2 !dbg !5949 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i64, align 8
  store i64 %dividend, i64* %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dividend.addr, metadata !5953, metadata !DIExpression()), !dbg !5954
  store i64 %divisor, i64* %divisor.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %divisor.addr, metadata !5955, metadata !DIExpression()), !dbg !5956
  %0 = load i64, i64* %dividend.addr, align 8, !dbg !5957
  %1 = load i64, i64* %divisor.addr, align 8, !dbg !5958
  %div = sdiv i64 %0, %1, !dbg !5959
  ret i64 %div, !dbg !5960
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tc90522t_get_frontend(%struct.dvb_frontend* %fe, %struct.dtv_frontend_properties* %c) #2 !dbg !5961 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %c.addr = alloca %struct.dtv_frontend_properties*, align 8
  %state = alloca %struct.tc90522_state*, align 8
  %stats = alloca %struct.dtv_fe_stats*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %layers = alloca i32, align 4
  %val = alloca [15 x i8], align 1
  %mode = alloca i8, align 1
  %cndat = alloca i32, align 4
  %v = alloca i8, align 1
  %dummy = alloca i16, align 2
  %p = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cn = alloca i64, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5962, metadata !DIExpression()), !dbg !5963
  store %struct.dtv_frontend_properties* %c, %struct.dtv_frontend_properties** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c.addr, metadata !5964, metadata !DIExpression()), !dbg !5965
  call void @llvm.dbg.declare(metadata %struct.tc90522_state** %state, metadata !5966, metadata !DIExpression()), !dbg !5967
  call void @llvm.dbg.declare(metadata %struct.dtv_fe_stats** %stats, metadata !5968, metadata !DIExpression()), !dbg !5969
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5970, metadata !DIExpression()), !dbg !5971
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5972, metadata !DIExpression()), !dbg !5973
  call void @llvm.dbg.declare(metadata i32* %layers, metadata !5974, metadata !DIExpression()), !dbg !5975
  call void @llvm.dbg.declare(metadata [15 x i8]* %val, metadata !5976, metadata !DIExpression()), !dbg !5980
  call void @llvm.dbg.declare(metadata i8* %mode, metadata !5981, metadata !DIExpression()), !dbg !5982
  call void @llvm.dbg.declare(metadata i32* %cndat, metadata !5983, metadata !DIExpression()), !dbg !5984
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5985
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5986
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5986
  %2 = bitcast i8* %1 to %struct.tc90522_state*, !dbg !5985
  store %struct.tc90522_state* %2, %struct.tc90522_state** %state, align 8, !dbg !5987
  %3 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5988
  %delivery_system = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %3, i32 0, i32 15, !dbg !5989
  store i32 8, i32* %delivery_system, align 4, !dbg !5990
  %4 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5991
  %bandwidth_hz = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %4, i32 0, i32 7, !dbg !5992
  store i32 6000000, i32* %bandwidth_hz, align 4, !dbg !5993
  store i8 1, i8* %mode, align 1, !dbg !5994
  %5 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !5995
  %arraydecay = getelementptr inbounds [15 x i8], [15 x i8]* %val, i64 0, i64 0, !dbg !5996
  %call = call i32 @reg_read(%struct.tc90522_state* %5, i8 zeroext -80, i8* %arraydecay, i8 zeroext 1) #9, !dbg !5997
  store i32 %call, i32* %ret, align 4, !dbg !5998
  %6 = load i32, i32* %ret, align 4, !dbg !5999
  %cmp = icmp eq i32 %6, 0, !dbg !6001
  br i1 %cmp, label %if.then, label %if.end, !dbg !6002

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr [15 x i8], [15 x i8]* %val, i64 0, i64 0, !dbg !6003
  %7 = load i8, i8* %arrayidx, align 1, !dbg !6003
  %conv = zext i8 %7 to i32, !dbg !6003
  %and = and i32 %conv, 192, !dbg !6005
  %shr = ashr i32 %and, 6, !dbg !6006
  %conv1 = trunc i32 %shr to i8, !dbg !6007
  store i8 %conv1, i8* %mode, align 1, !dbg !6008
  %8 = load i8, i8* %mode, align 1, !dbg !6009
  %idxprom = zext i8 %8 to i64, !dbg !6010
  %arrayidx2 = getelementptr [4 x i32], [4 x i32]* @tm_conv, i64 0, i64 %idxprom, !dbg !6010
  %9 = load i32, i32* %arrayidx2, align 4, !dbg !6010
  %10 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6011
  %transmission_mode = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %10, i32 0, i32 6, !dbg !6012
  store i32 %9, i32* %transmission_mode, align 4, !dbg !6013
  %arrayidx3 = getelementptr [15 x i8], [15 x i8]* %val, i64 0, i64 0, !dbg !6014
  %11 = load i8, i8* %arrayidx3, align 1, !dbg !6014
  %conv4 = zext i8 %11 to i32, !dbg !6014
  %and5 = and i32 %conv4, 48, !dbg !6015
  %shr6 = ashr i32 %and5, 4, !dbg !6016
  %12 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6017
  %guard_interval = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %12, i32 0, i32 8, !dbg !6018
  store i32 %shr6, i32* %guard_interval, align 4, !dbg !6019
  br label %if.end, !dbg !6020

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !6021
  %arraydecay7 = getelementptr inbounds [15 x i8], [15 x i8]* %val, i64 0, i64 0, !dbg !6022
  %call8 = call i32 @reg_read(%struct.tc90522_state* %13, i8 zeroext -78, i8* %arraydecay7, i8 zeroext 6) #9, !dbg !6023
  store i32 %call8, i32* %ret, align 4, !dbg !6024
  store i32 0, i32* %layers, align 4, !dbg !6025
  %14 = load i32, i32* %ret, align 4, !dbg !6026
  %cmp9 = icmp eq i32 %14, 0, !dbg !6028
  br i1 %cmp9, label %if.then11, label %if.end153, !dbg !6029

if.then11:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8* %v, metadata !6030, metadata !DIExpression()), !dbg !6032
  %arrayidx12 = getelementptr [15 x i8], [15 x i8]* %val, i64 0, i64 0, !dbg !6033
  %15 = load i8, i8* %arrayidx12, align 1, !dbg !6033
  %conv13 = zext i8 %15 to i32, !dbg !6033
  %and14 = and i32 %conv13, 1, !dbg !6034
  %conv15 = trunc i32 %and14 to i8, !dbg !6033
  %16 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6035
  %isdbt_partial_reception = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %16, i32 0, i32 17, !dbg !6036
  store i8 %conv15, i8* %isdbt_partial_reception, align 4, !dbg !6037
  %arrayidx16 = getelementptr [15 x i8], [15 x i8]* %val, i64 0, i64 0, !dbg !6038
  %17 = load i8, i8* %arrayidx16, align 1, !dbg !6038
  %conv17 = zext i8 %17 to i32, !dbg !6038
  %and18 = and i32 %conv17, 192, !dbg !6039
  %cmp19 = icmp eq i32 %and18, 64, !dbg !6040
  %conv20 = zext i1 %cmp19 to i32, !dbg !6040
  %conv21 = trunc i32 %conv20 to i8, !dbg !6041
  %18 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6042
  %isdbt_sb_mode = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %18, i32 0, i32 18, !dbg !6043
  store i8 %conv21, i8* %isdbt_sb_mode, align 1, !dbg !6044
  %arrayidx22 = getelementptr [15 x i8], [15 x i8]* %val, i64 0, i64 2, !dbg !6045
  %19 = load i8, i8* %arrayidx22, align 1, !dbg !6045
  %conv23 = zext i8 %19 to i32, !dbg !6045
  %and24 = and i32 %conv23, 120, !dbg !6046
  %shr25 = ashr i32 %and24, 3, !dbg !6047
  %conv26 = trunc i32 %shr25 to i8, !dbg !6048
  store i8 %conv26, i8* %v, align 1, !dbg !6049
  %20 = load i8, i8* %v, align 1, !dbg !6050
  %conv27 = zext i8 %20 to i32, !dbg !6050
  %cmp28 = icmp eq i32 %conv27, 15, !dbg !6052
  br i1 %cmp28, label %if.then30, label %if.else, !dbg !6053

if.then30:                                        ; preds = %if.then11
  %21 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6054
  %layer = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %21, i32 0, i32 23, !dbg !6055
  %arrayidx31 = getelementptr [3 x %struct.anon.66], [3 x %struct.anon.66]* %layer, i64 0, i64 0, !dbg !6054
  %segment_count = getelementptr inbounds %struct.anon.66, %struct.anon.66* %arrayidx31, i32 0, i32 0, !dbg !6056
  store i8 0, i8* %segment_count, align 4, !dbg !6057
  br label %if.end61, !dbg !6054

if.else:                                          ; preds = %if.then11
  %22 = load i32, i32* %layers, align 4, !dbg !6058
  %inc = add i32 %22, 1, !dbg !6058
  store i32 %inc, i32* %layers, align 4, !dbg !6058
  %23 = load i8, i8* %v, align 1, !dbg !6060
  %24 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6061
  %layer32 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %24, i32 0, i32 23, !dbg !6062
  %arrayidx33 = getelementptr [3 x %struct.anon.66], [3 x %struct.anon.66]* %layer32, i64 0, i64 0, !dbg !6061
  %segment_count34 = getelementptr inbounds %struct.anon.66, %struct.anon.66* %arrayidx33, i32 0, i32 0, !dbg !6063
  store i8 %23, i8* %segment_count34, align 4, !dbg !6064
  %arrayidx35 = getelementptr [15 x i8], [15 x i8]* %val, i64 0, i64 1, !dbg !6065
  %25 = load i8, i8* %arrayidx35, align 1, !dbg !6065
  %conv36 = zext i8 %25 to i32, !dbg !6065
  %and37 = and i32 %conv36, 28, !dbg !6066
  %shr38 = ashr i32 %and37, 2, !dbg !6067
  %idxprom39 = sext i32 %shr38 to i64, !dbg !6068
  %arrayidx40 = getelementptr [8 x i32], [8 x i32]* @fec_conv_ter, i64 0, i64 %idxprom39, !dbg !6068
  %26 = load i32, i32* %arrayidx40, align 4, !dbg !6068
  %27 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6069
  %layer41 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %27, i32 0, i32 23, !dbg !6070
  %arrayidx42 = getelementptr [3 x %struct.anon.66], [3 x %struct.anon.66]* %layer41, i64 0, i64 0, !dbg !6069
  %fec = getelementptr inbounds %struct.anon.66, %struct.anon.66* %arrayidx42, i32 0, i32 1, !dbg !6071
  store i32 %26, i32* %fec, align 4, !dbg !6072
  %arrayidx43 = getelementptr [15 x i8], [15 x i8]* %val, i64 0, i64 1, !dbg !6073
  %28 = load i8, i8* %arrayidx43, align 1, !dbg !6073
  %conv44 = zext i8 %28 to i32, !dbg !6073
  %and45 = and i32 %conv44, 224, !dbg !6074
  %shr46 = ashr i32 %and45, 5, !dbg !6075
  %idxprom47 = sext i32 %shr46 to i64, !dbg !6076
  %arrayidx48 = getelementptr [8 x i32], [8 x i32]* @mod_conv, i64 0, i64 %idxprom47, !dbg !6076
  %29 = load i32, i32* %arrayidx48, align 4, !dbg !6076
  %30 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6077
  %layer49 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %30, i32 0, i32 23, !dbg !6078
  %arrayidx50 = getelementptr [3 x %struct.anon.66], [3 x %struct.anon.66]* %layer49, i64 0, i64 0, !dbg !6077
  %modulation = getelementptr inbounds %struct.anon.66, %struct.anon.66* %arrayidx50, i32 0, i32 2, !dbg !6079
  store i32 %29, i32* %modulation, align 4, !dbg !6080
  %arrayidx51 = getelementptr [15 x i8], [15 x i8]* %val, i64 0, i64 1, !dbg !6081
  %31 = load i8, i8* %arrayidx51, align 1, !dbg !6081
  %conv52 = zext i8 %31 to i32, !dbg !6081
  %and53 = and i32 %conv52, 3, !dbg !6082
  %shl = shl i32 %and53, 1, !dbg !6083
  %arrayidx54 = getelementptr [15 x i8], [15 x i8]* %val, i64 0, i64 2, !dbg !6084
  %32 = load i8, i8* %arrayidx54, align 1, !dbg !6084
  %conv55 = zext i8 %32 to i32, !dbg !6084
  %and56 = and i32 %conv55, 128, !dbg !6085
  %shr57 = ashr i32 %and56, 7, !dbg !6086
  %or = or i32 %shl, %shr57, !dbg !6087
  %conv58 = trunc i32 %or to i8, !dbg !6088
  store i8 %conv58, i8* %v, align 1, !dbg !6089
  %33 = load i8, i8* %v, align 1, !dbg !6090
  %34 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6091
  %layer59 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %34, i32 0, i32 23, !dbg !6092
  %arrayidx60 = getelementptr [3 x %struct.anon.66], [3 x %struct.anon.66]* %layer59, i64 0, i64 0, !dbg !6091
  %interleaving = getelementptr inbounds %struct.anon.66, %struct.anon.66* %arrayidx60, i32 0, i32 3, !dbg !6093
  store i8 %33, i8* %interleaving, align 4, !dbg !6094
  br label %if.end61

if.end61:                                         ; preds = %if.else, %if.then30
  %arrayidx62 = getelementptr [15 x i8], [15 x i8]* %val, i64 0, i64 3, !dbg !6095
  %35 = load i8, i8* %arrayidx62, align 1, !dbg !6095
  %conv63 = zext i8 %35 to i32, !dbg !6095
  %and64 = and i32 %conv63, 3, !dbg !6096
  %shl65 = shl i32 %and64, 2, !dbg !6097
  %arrayidx66 = getelementptr [15 x i8], [15 x i8]* %val, i64 0, i64 4, !dbg !6098
  %36 = load i8, i8* %arrayidx66, align 1, !dbg !6098
  %conv67 = zext i8 %36 to i32, !dbg !6098
  %and68 = and i32 %conv67, 192, !dbg !6099
  %shr69 = ashr i32 %and68, 6, !dbg !6100
  %or70 = or i32 %shl65, %shr69, !dbg !6101
  %conv71 = trunc i32 %or70 to i8, !dbg !6102
  store i8 %conv71, i8* %v, align 1, !dbg !6103
  %37 = load i8, i8* %v, align 1, !dbg !6104
  %conv72 = zext i8 %37 to i32, !dbg !6104
  %cmp73 = icmp eq i32 %conv72, 15, !dbg !6106
  br i1 %cmp73, label %if.then75, label %if.else79, !dbg !6107

if.then75:                                        ; preds = %if.end61
  %38 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6108
  %layer76 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %38, i32 0, i32 23, !dbg !6109
  %arrayidx77 = getelementptr [3 x %struct.anon.66], [3 x %struct.anon.66]* %layer76, i64 0, i64 1, !dbg !6108
  %segment_count78 = getelementptr inbounds %struct.anon.66, %struct.anon.66* %arrayidx77, i32 0, i32 0, !dbg !6110
  store i8 0, i8* %segment_count78, align 4, !dbg !6111
  br label %if.end109, !dbg !6108

if.else79:                                        ; preds = %if.end61
  %39 = load i32, i32* %layers, align 4, !dbg !6112
  %inc80 = add i32 %39, 1, !dbg !6112
  store i32 %inc80, i32* %layers, align 4, !dbg !6112
  %40 = load i8, i8* %v, align 1, !dbg !6114
  %41 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6115
  %layer81 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %41, i32 0, i32 23, !dbg !6116
  %arrayidx82 = getelementptr [3 x %struct.anon.66], [3 x %struct.anon.66]* %layer81, i64 0, i64 1, !dbg !6115
  %segment_count83 = getelementptr inbounds %struct.anon.66, %struct.anon.66* %arrayidx82, i32 0, i32 0, !dbg !6117
  store i8 %40, i8* %segment_count83, align 4, !dbg !6118
  %arrayidx84 = getelementptr [15 x i8], [15 x i8]* %val, i64 0, i64 3, !dbg !6119
  %42 = load i8, i8* %arrayidx84, align 1, !dbg !6119
  %conv85 = zext i8 %42 to i32, !dbg !6119
  %and86 = and i32 %conv85, 224, !dbg !6120
  %shr87 = ashr i32 %and86, 5, !dbg !6121
  %idxprom88 = sext i32 %shr87 to i64, !dbg !6122
  %arrayidx89 = getelementptr [8 x i32], [8 x i32]* @fec_conv_ter, i64 0, i64 %idxprom88, !dbg !6122
  %43 = load i32, i32* %arrayidx89, align 4, !dbg !6122
  %44 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6123
  %layer90 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %44, i32 0, i32 23, !dbg !6124
  %arrayidx91 = getelementptr [3 x %struct.anon.66], [3 x %struct.anon.66]* %layer90, i64 0, i64 1, !dbg !6123
  %fec92 = getelementptr inbounds %struct.anon.66, %struct.anon.66* %arrayidx91, i32 0, i32 1, !dbg !6125
  store i32 %43, i32* %fec92, align 4, !dbg !6126
  %arrayidx93 = getelementptr [15 x i8], [15 x i8]* %val, i64 0, i64 2, !dbg !6127
  %45 = load i8, i8* %arrayidx93, align 1, !dbg !6127
  %conv94 = zext i8 %45 to i32, !dbg !6127
  %and95 = and i32 %conv94, 7, !dbg !6128
  %idxprom96 = sext i32 %and95 to i64, !dbg !6129
  %arrayidx97 = getelementptr [8 x i32], [8 x i32]* @mod_conv, i64 0, i64 %idxprom96, !dbg !6129
  %46 = load i32, i32* %arrayidx97, align 4, !dbg !6129
  %47 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6130
  %layer98 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %47, i32 0, i32 23, !dbg !6131
  %arrayidx99 = getelementptr [3 x %struct.anon.66], [3 x %struct.anon.66]* %layer98, i64 0, i64 1, !dbg !6130
  %modulation100 = getelementptr inbounds %struct.anon.66, %struct.anon.66* %arrayidx99, i32 0, i32 2, !dbg !6132
  store i32 %46, i32* %modulation100, align 4, !dbg !6133
  %arrayidx101 = getelementptr [15 x i8], [15 x i8]* %val, i64 0, i64 3, !dbg !6134
  %48 = load i8, i8* %arrayidx101, align 1, !dbg !6134
  %conv102 = zext i8 %48 to i32, !dbg !6134
  %and103 = and i32 %conv102, 28, !dbg !6135
  %shr104 = ashr i32 %and103, 2, !dbg !6136
  %conv105 = trunc i32 %shr104 to i8, !dbg !6137
  %49 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6138
  %layer106 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %49, i32 0, i32 23, !dbg !6139
  %arrayidx107 = getelementptr [3 x %struct.anon.66], [3 x %struct.anon.66]* %layer106, i64 0, i64 1, !dbg !6138
  %interleaving108 = getelementptr inbounds %struct.anon.66, %struct.anon.66* %arrayidx107, i32 0, i32 3, !dbg !6140
  store i8 %conv105, i8* %interleaving108, align 4, !dbg !6141
  br label %if.end109

if.end109:                                        ; preds = %if.else79, %if.then75
  %arrayidx110 = getelementptr [15 x i8], [15 x i8]* %val, i64 0, i64 5, !dbg !6142
  %50 = load i8, i8* %arrayidx110, align 1, !dbg !6142
  %conv111 = zext i8 %50 to i32, !dbg !6142
  %and112 = and i32 %conv111, 30, !dbg !6143
  %shr113 = ashr i32 %and112, 1, !dbg !6144
  %conv114 = trunc i32 %shr113 to i8, !dbg !6145
  store i8 %conv114, i8* %v, align 1, !dbg !6146
  %51 = load i8, i8* %v, align 1, !dbg !6147
  %conv115 = zext i8 %51 to i32, !dbg !6147
  %cmp116 = icmp eq i32 %conv115, 15, !dbg !6149
  br i1 %cmp116, label %if.then118, label %if.else122, !dbg !6150

if.then118:                                       ; preds = %if.end109
  %52 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6151
  %layer119 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %52, i32 0, i32 23, !dbg !6152
  %arrayidx120 = getelementptr [3 x %struct.anon.66], [3 x %struct.anon.66]* %layer119, i64 0, i64 2, !dbg !6151
  %segment_count121 = getelementptr inbounds %struct.anon.66, %struct.anon.66* %arrayidx120, i32 0, i32 0, !dbg !6153
  store i8 0, i8* %segment_count121, align 4, !dbg !6154
  br label %if.end152, !dbg !6151

if.else122:                                       ; preds = %if.end109
  %53 = load i32, i32* %layers, align 4, !dbg !6155
  %inc123 = add i32 %53, 1, !dbg !6155
  store i32 %inc123, i32* %layers, align 4, !dbg !6155
  %54 = load i8, i8* %v, align 1, !dbg !6157
  %55 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6158
  %layer124 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %55, i32 0, i32 23, !dbg !6159
  %arrayidx125 = getelementptr [3 x %struct.anon.66], [3 x %struct.anon.66]* %layer124, i64 0, i64 2, !dbg !6158
  %segment_count126 = getelementptr inbounds %struct.anon.66, %struct.anon.66* %arrayidx125, i32 0, i32 0, !dbg !6160
  store i8 %54, i8* %segment_count126, align 4, !dbg !6161
  %arrayidx127 = getelementptr [15 x i8], [15 x i8]* %val, i64 0, i64 4, !dbg !6162
  %56 = load i8, i8* %arrayidx127, align 1, !dbg !6162
  %conv128 = zext i8 %56 to i32, !dbg !6162
  %and129 = and i32 %conv128, 7, !dbg !6163
  %idxprom130 = sext i32 %and129 to i64, !dbg !6164
  %arrayidx131 = getelementptr [8 x i32], [8 x i32]* @fec_conv_ter, i64 0, i64 %idxprom130, !dbg !6164
  %57 = load i32, i32* %arrayidx131, align 4, !dbg !6164
  %58 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6165
  %layer132 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %58, i32 0, i32 23, !dbg !6166
  %arrayidx133 = getelementptr [3 x %struct.anon.66], [3 x %struct.anon.66]* %layer132, i64 0, i64 2, !dbg !6165
  %fec134 = getelementptr inbounds %struct.anon.66, %struct.anon.66* %arrayidx133, i32 0, i32 1, !dbg !6167
  store i32 %57, i32* %fec134, align 4, !dbg !6168
  %arrayidx135 = getelementptr [15 x i8], [15 x i8]* %val, i64 0, i64 4, !dbg !6169
  %59 = load i8, i8* %arrayidx135, align 1, !dbg !6169
  %conv136 = zext i8 %59 to i32, !dbg !6169
  %and137 = and i32 %conv136, 56, !dbg !6170
  %shr138 = ashr i32 %and137, 3, !dbg !6171
  %idxprom139 = sext i32 %shr138 to i64, !dbg !6172
  %arrayidx140 = getelementptr [8 x i32], [8 x i32]* @mod_conv, i64 0, i64 %idxprom139, !dbg !6172
  %60 = load i32, i32* %arrayidx140, align 4, !dbg !6172
  %61 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6173
  %layer141 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %61, i32 0, i32 23, !dbg !6174
  %arrayidx142 = getelementptr [3 x %struct.anon.66], [3 x %struct.anon.66]* %layer141, i64 0, i64 2, !dbg !6173
  %modulation143 = getelementptr inbounds %struct.anon.66, %struct.anon.66* %arrayidx142, i32 0, i32 2, !dbg !6175
  store i32 %60, i32* %modulation143, align 4, !dbg !6176
  %arrayidx144 = getelementptr [15 x i8], [15 x i8]* %val, i64 0, i64 5, !dbg !6177
  %62 = load i8, i8* %arrayidx144, align 1, !dbg !6177
  %conv145 = zext i8 %62 to i32, !dbg !6177
  %and146 = and i32 %conv145, 224, !dbg !6178
  %shr147 = ashr i32 %and146, 5, !dbg !6179
  %conv148 = trunc i32 %shr147 to i8, !dbg !6180
  %63 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6181
  %layer149 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %63, i32 0, i32 23, !dbg !6182
  %arrayidx150 = getelementptr [3 x %struct.anon.66], [3 x %struct.anon.66]* %layer149, i64 0, i64 2, !dbg !6181
  %interleaving151 = getelementptr inbounds %struct.anon.66, %struct.anon.66* %arrayidx150, i32 0, i32 3, !dbg !6183
  store i8 %conv148, i8* %interleaving151, align 4, !dbg !6184
  br label %if.end152

if.end152:                                        ; preds = %if.else122, %if.then118
  br label %if.end153, !dbg !6185

if.end153:                                        ; preds = %if.end152, %if.end
  %64 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6186
  %strength = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %64, i32 0, i32 42, !dbg !6187
  store %struct.dtv_fe_stats* %strength, %struct.dtv_fe_stats** %stats, align 8, !dbg !6188
  %65 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %stats, align 8, !dbg !6189
  %len = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %65, i32 0, i32 0, !dbg !6190
  store i8 0, i8* %len, align 1, !dbg !6191
  %66 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6192
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %66, i32 0, i32 1, !dbg !6194
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !6195
  %get_rf_strength = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops, i32 0, i32 13, !dbg !6196
  %67 = load i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i16*)** %get_rf_strength, align 8, !dbg !6196
  %tobool = icmp ne i32 (%struct.dvb_frontend*, i16*)* %67, null, !dbg !6192
  br i1 %tobool, label %if.then154, label %if.end159, !dbg !6197

if.then154:                                       ; preds = %if.end153
  call void @llvm.dbg.declare(metadata i16* %dummy, metadata !6198, metadata !DIExpression()), !dbg !6200
  %68 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6201
  %ops155 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %68, i32 0, i32 1, !dbg !6202
  %tuner_ops156 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops155, i32 0, i32 30, !dbg !6203
  %get_rf_strength157 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops156, i32 0, i32 13, !dbg !6204
  %69 = load i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i16*)** %get_rf_strength157, align 8, !dbg !6204
  %70 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6205
  %call158 = call i32 %69(%struct.dvb_frontend* %70, i16* %dummy) #9, !dbg !6201
  br label %if.end159, !dbg !6206

if.end159:                                        ; preds = %if.then154, %if.end153
  %71 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6207
  %cnr = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %71, i32 0, i32 43, !dbg !6208
  store %struct.dtv_fe_stats* %cnr, %struct.dtv_fe_stats** %stats, align 8, !dbg !6209
  %72 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %stats, align 8, !dbg !6210
  %len160 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %72, i32 0, i32 0, !dbg !6211
  store i8 1, i8* %len160, align 1, !dbg !6212
  %73 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %stats, align 8, !dbg !6213
  %stat = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %73, i32 0, i32 1, !dbg !6214
  %arrayidx161 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat, i64 0, i64 0, !dbg !6213
  %scale = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx161, i32 0, i32 0, !dbg !6215
  store i8 0, i8* %scale, align 1, !dbg !6216
  store i32 0, i32* %cndat, align 4, !dbg !6217
  %74 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !6218
  %arraydecay162 = getelementptr inbounds [15 x i8], [15 x i8]* %val, i64 0, i64 0, !dbg !6219
  %call163 = call i32 @reg_read(%struct.tc90522_state* %74, i8 zeroext -117, i8* %arraydecay162, i8 zeroext 3) #9, !dbg !6220
  store i32 %call163, i32* %ret, align 4, !dbg !6221
  %75 = load i32, i32* %ret, align 4, !dbg !6222
  %cmp164 = icmp eq i32 %75, 0, !dbg !6224
  br i1 %cmp164, label %if.then166, label %if.end177, !dbg !6225

if.then166:                                       ; preds = %if.end159
  %arrayidx167 = getelementptr [15 x i8], [15 x i8]* %val, i64 0, i64 0, !dbg !6226
  %76 = load i8, i8* %arrayidx167, align 1, !dbg !6226
  %conv168 = zext i8 %76 to i32, !dbg !6226
  %shl169 = shl i32 %conv168, 16, !dbg !6227
  %arrayidx170 = getelementptr [15 x i8], [15 x i8]* %val, i64 0, i64 1, !dbg !6228
  %77 = load i8, i8* %arrayidx170, align 1, !dbg !6228
  %conv171 = zext i8 %77 to i32, !dbg !6228
  %shl172 = shl i32 %conv171, 8, !dbg !6229
  %or173 = or i32 %shl169, %shl172, !dbg !6230
  %arrayidx174 = getelementptr [15 x i8], [15 x i8]* %val, i64 0, i64 2, !dbg !6231
  %78 = load i8, i8* %arrayidx174, align 1, !dbg !6231
  %conv175 = zext i8 %78 to i32, !dbg !6231
  %or176 = or i32 %or173, %conv175, !dbg !6232
  store i32 %or176, i32* %cndat, align 4, !dbg !6233
  br label %if.end177, !dbg !6234

if.end177:                                        ; preds = %if.then166, %if.end159
  %79 = load i32, i32* %cndat, align 4, !dbg !6235
  %cmp178 = icmp ne i32 %79, 0, !dbg !6237
  br i1 %cmp178, label %if.then180, label %if.end223, !dbg !6238

if.then180:                                       ; preds = %if.end177
  call void @llvm.dbg.declare(metadata i32* %p, metadata !6239, metadata !DIExpression()), !dbg !6241
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !6242, metadata !DIExpression()), !dbg !6243
  call void @llvm.dbg.declare(metadata i64* %cn, metadata !6244, metadata !DIExpression()), !dbg !6245
  %call181 = call i32 @intlog10(i32 5505024) #9, !dbg !6246
  %80 = load i32, i32* %cndat, align 4, !dbg !6247
  %call182 = call i32 @intlog10(i32 %80) #9, !dbg !6248
  %sub = sub i32 %call181, %call182, !dbg !6249
  store i32 %sub, i32* %p, align 4, !dbg !6250
  %81 = load i32, i32* %p, align 4, !dbg !6251
  %mul = mul i32 %81, 10, !dbg !6251
  store i32 %mul, i32* %p, align 4, !dbg !6251
  store i64 24772, i64* %cn, align 8, !dbg !6252
  %82 = load i32, i32* %p, align 4, !dbg !6253
  %conv183 = zext i32 %82 to i64, !dbg !6253
  %mul184 = mul i64 43827, %conv183, !dbg !6254
  %call185 = call i64 @div64_s64(i64 %mul184, i64 10) #9, !dbg !6255
  %shr186 = ashr i64 %call185, 24, !dbg !6256
  %83 = load i64, i64* %cn, align 8, !dbg !6257
  %add = add i64 %83, %shr186, !dbg !6257
  store i64 %add, i64* %cn, align 8, !dbg !6257
  %84 = load i32, i32* %p, align 4, !dbg !6258
  %shr187 = lshr i32 %84, 8, !dbg !6259
  store i32 %shr187, i32* %tmp, align 4, !dbg !6260
  %85 = load i32, i32* %tmp, align 4, !dbg !6261
  %conv188 = zext i32 %85 to i64, !dbg !6261
  %mul189 = mul i64 3184, %conv188, !dbg !6262
  %86 = load i32, i32* %tmp, align 4, !dbg !6263
  %conv190 = zext i32 %86 to i64, !dbg !6263
  %mul191 = mul i64 %mul189, %conv190, !dbg !6264
  %call192 = call i64 @div64_s64(i64 %mul191, i64 10) #9, !dbg !6265
  %shr193 = ashr i64 %call192, 32, !dbg !6266
  %87 = load i64, i64* %cn, align 8, !dbg !6267
  %add194 = add i64 %87, %shr193, !dbg !6267
  store i64 %add194, i64* %cn, align 8, !dbg !6267
  %88 = load i32, i32* %p, align 4, !dbg !6268
  %shr195 = lshr i32 %88, 13, !dbg !6269
  store i32 %shr195, i32* %tmp, align 4, !dbg !6270
  %89 = load i32, i32* %tmp, align 4, !dbg !6271
  %conv196 = zext i32 %89 to i64, !dbg !6271
  %mul197 = mul i64 128, %conv196, !dbg !6272
  %90 = load i32, i32* %tmp, align 4, !dbg !6273
  %conv198 = zext i32 %90 to i64, !dbg !6273
  %mul199 = mul i64 %mul197, %conv198, !dbg !6274
  %91 = load i32, i32* %tmp, align 4, !dbg !6275
  %conv200 = zext i32 %91 to i64, !dbg !6275
  %mul201 = mul i64 %mul199, %conv200, !dbg !6276
  %call202 = call i64 @div64_s64(i64 %mul201, i64 10) #9, !dbg !6277
  %shr203 = ashr i64 %call202, 33, !dbg !6278
  %92 = load i64, i64* %cn, align 8, !dbg !6279
  %sub204 = sub i64 %92, %shr203, !dbg !6279
  store i64 %sub204, i64* %cn, align 8, !dbg !6279
  %93 = load i32, i32* %p, align 4, !dbg !6280
  %shr205 = lshr i32 %93, 18, !dbg !6281
  store i32 %shr205, i32* %tmp, align 4, !dbg !6282
  %94 = load i32, i32* %tmp, align 4, !dbg !6283
  %conv206 = zext i32 %94 to i64, !dbg !6283
  %mul207 = mul i64 192, %conv206, !dbg !6284
  %95 = load i32, i32* %tmp, align 4, !dbg !6285
  %conv208 = zext i32 %95 to i64, !dbg !6285
  %mul209 = mul i64 %mul207, %conv208, !dbg !6286
  %96 = load i32, i32* %tmp, align 4, !dbg !6287
  %conv210 = zext i32 %96 to i64, !dbg !6287
  %mul211 = mul i64 %mul209, %conv210, !dbg !6288
  %97 = load i32, i32* %tmp, align 4, !dbg !6289
  %conv212 = zext i32 %97 to i64, !dbg !6289
  %mul213 = mul i64 %mul211, %conv212, !dbg !6290
  %call214 = call i64 @div64_s64(i64 %mul213, i64 1000) #9, !dbg !6291
  %shr215 = ashr i64 %call214, 24, !dbg !6292
  %98 = load i64, i64* %cn, align 8, !dbg !6293
  %add216 = add i64 %98, %shr215, !dbg !6293
  store i64 %add216, i64* %cn, align 8, !dbg !6293
  %99 = load i64, i64* %cn, align 8, !dbg !6294
  %shr217 = ashr i64 %99, 3, !dbg !6295
  %100 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %stats, align 8, !dbg !6296
  %stat218 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %100, i32 0, i32 1, !dbg !6297
  %arrayidx219 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat218, i64 0, i64 0, !dbg !6296
  %101 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx219, i32 0, i32 1, !dbg !6298
  %svalue = bitcast %union.anon.67* %101 to i64*, !dbg !6298
  store i64 %shr217, i64* %svalue, align 1, !dbg !6299
  %102 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %stats, align 8, !dbg !6300
  %stat220 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %102, i32 0, i32 1, !dbg !6301
  %arrayidx221 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat220, i64 0, i64 0, !dbg !6300
  %scale222 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx221, i32 0, i32 0, !dbg !6302
  store i8 1, i8* %scale222, align 1, !dbg !6303
  br label %if.end223, !dbg !6304

if.end223:                                        ; preds = %if.then180, %if.end177
  %103 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6305
  %post_bit_error = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %103, i32 0, i32 46, !dbg !6306
  store %struct.dtv_fe_stats* %post_bit_error, %struct.dtv_fe_stats** %stats, align 8, !dbg !6307
  %104 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %stats, align 8, !dbg !6308
  %105 = bitcast %struct.dtv_fe_stats* %104 to i8*, !dbg !6309
  call void @llvm.memset.p0i8.i64(i8* align 1 %105, i8 0, i64 37, i1 false), !dbg !6309
  %106 = load i32, i32* %layers, align 4, !dbg !6310
  %conv224 = trunc i32 %106 to i8, !dbg !6310
  %107 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %stats, align 8, !dbg !6311
  %len225 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %107, i32 0, i32 0, !dbg !6312
  store i8 %conv224, i8* %len225, align 1, !dbg !6313
  %108 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !6314
  %arraydecay226 = getelementptr inbounds [15 x i8], [15 x i8]* %val, i64 0, i64 0, !dbg !6315
  %call227 = call i32 @reg_read(%struct.tc90522_state* %108, i8 zeroext -99, i8* %arraydecay226, i8 zeroext 15) #9, !dbg !6316
  store i32 %call227, i32* %ret, align 4, !dbg !6317
  %109 = load i32, i32* %ret, align 4, !dbg !6318
  %cmp228 = icmp slt i32 %109, 0, !dbg !6320
  br i1 %cmp228, label %if.then230, label %if.else238, !dbg !6321

if.then230:                                       ; preds = %if.end223
  store i32 0, i32* %i, align 4, !dbg !6322
  br label %for.cond, !dbg !6324

for.cond:                                         ; preds = %for.inc, %if.then230
  %110 = load i32, i32* %i, align 4, !dbg !6325
  %111 = load i32, i32* %layers, align 4, !dbg !6327
  %cmp231 = icmp slt i32 %110, %111, !dbg !6328
  br i1 %cmp231, label %for.body, label %for.end, !dbg !6329

for.body:                                         ; preds = %for.cond
  %112 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %stats, align 8, !dbg !6330
  %stat233 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %112, i32 0, i32 1, !dbg !6331
  %113 = load i32, i32* %i, align 4, !dbg !6332
  %idxprom234 = sext i32 %113 to i64, !dbg !6330
  %arrayidx235 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat233, i64 0, i64 %idxprom234, !dbg !6330
  %scale236 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx235, i32 0, i32 0, !dbg !6333
  store i8 0, i8* %scale236, align 1, !dbg !6334
  br label %for.inc, !dbg !6330

for.inc:                                          ; preds = %for.body
  %114 = load i32, i32* %i, align 4, !dbg !6335
  %inc237 = add i32 %114, 1, !dbg !6335
  store i32 %inc237, i32* %i, align 4, !dbg !6335
  br label %for.cond, !dbg !6336, !llvm.loop !6337

for.end:                                          ; preds = %for.cond
  br label %if.end272, !dbg !6338

if.else238:                                       ; preds = %if.end223
  store i32 0, i32* %i, align 4, !dbg !6339
  br label %for.cond239, !dbg !6342

for.cond239:                                      ; preds = %for.inc269, %if.else238
  %115 = load i32, i32* %i, align 4, !dbg !6343
  %116 = load i32, i32* %layers, align 4, !dbg !6345
  %cmp240 = icmp slt i32 %115, %116, !dbg !6346
  br i1 %cmp240, label %for.body242, label %for.end271, !dbg !6347

for.body242:                                      ; preds = %for.cond239
  %117 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %stats, align 8, !dbg !6348
  %stat243 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %117, i32 0, i32 1, !dbg !6350
  %118 = load i32, i32* %i, align 4, !dbg !6351
  %idxprom244 = sext i32 %118 to i64, !dbg !6348
  %arrayidx245 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat243, i64 0, i64 %idxprom244, !dbg !6348
  %scale246 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx245, i32 0, i32 0, !dbg !6352
  store i8 3, i8* %scale246, align 1, !dbg !6353
  %119 = load i32, i32* %i, align 4, !dbg !6354
  %mul247 = mul i32 %119, 3, !dbg !6355
  %idxprom248 = sext i32 %mul247 to i64, !dbg !6356
  %arrayidx249 = getelementptr [15 x i8], [15 x i8]* %val, i64 0, i64 %idxprom248, !dbg !6356
  %120 = load i8, i8* %arrayidx249, align 1, !dbg !6356
  %conv250 = zext i8 %120 to i32, !dbg !6356
  %shl251 = shl i32 %conv250, 16, !dbg !6357
  %121 = load i32, i32* %i, align 4, !dbg !6358
  %mul252 = mul i32 %121, 3, !dbg !6359
  %add253 = add i32 %mul252, 1, !dbg !6360
  %idxprom254 = sext i32 %add253 to i64, !dbg !6361
  %arrayidx255 = getelementptr [15 x i8], [15 x i8]* %val, i64 0, i64 %idxprom254, !dbg !6361
  %122 = load i8, i8* %arrayidx255, align 1, !dbg !6361
  %conv256 = zext i8 %122 to i32, !dbg !6361
  %shl257 = shl i32 %conv256, 8, !dbg !6362
  %or258 = or i32 %shl251, %shl257, !dbg !6363
  %123 = load i32, i32* %i, align 4, !dbg !6364
  %mul259 = mul i32 %123, 3, !dbg !6365
  %add260 = add i32 %mul259, 2, !dbg !6366
  %idxprom261 = sext i32 %add260 to i64, !dbg !6367
  %arrayidx262 = getelementptr [15 x i8], [15 x i8]* %val, i64 0, i64 %idxprom261, !dbg !6367
  %124 = load i8, i8* %arrayidx262, align 1, !dbg !6367
  %conv263 = zext i8 %124 to i32, !dbg !6367
  %or264 = or i32 %or258, %conv263, !dbg !6368
  %conv265 = sext i32 %or264 to i64, !dbg !6356
  %125 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %stats, align 8, !dbg !6369
  %stat266 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %125, i32 0, i32 1, !dbg !6370
  %126 = load i32, i32* %i, align 4, !dbg !6371
  %idxprom267 = sext i32 %126 to i64, !dbg !6369
  %arrayidx268 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat266, i64 0, i64 %idxprom267, !dbg !6369
  %127 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx268, i32 0, i32 1, !dbg !6372
  %uvalue = bitcast %union.anon.67* %127 to i64*, !dbg !6372
  store i64 %conv265, i64* %uvalue, align 1, !dbg !6373
  br label %for.inc269, !dbg !6374

for.inc269:                                       ; preds = %for.body242
  %128 = load i32, i32* %i, align 4, !dbg !6375
  %inc270 = add i32 %128, 1, !dbg !6375
  store i32 %inc270, i32* %i, align 4, !dbg !6375
  br label %for.cond239, !dbg !6376, !llvm.loop !6377

for.end271:                                       ; preds = %for.cond239
  br label %if.end272

if.end272:                                        ; preds = %for.end271, %for.end
  %129 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6379
  %post_bit_count = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %129, i32 0, i32 47, !dbg !6380
  store %struct.dtv_fe_stats* %post_bit_count, %struct.dtv_fe_stats** %stats, align 8, !dbg !6381
  %130 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %stats, align 8, !dbg !6382
  %131 = bitcast %struct.dtv_fe_stats* %130 to i8*, !dbg !6383
  call void @llvm.memset.p0i8.i64(i8* align 1 %131, i8 0, i64 37, i1 false), !dbg !6383
  %132 = load i32, i32* %layers, align 4, !dbg !6384
  %conv273 = trunc i32 %132 to i8, !dbg !6384
  %133 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %stats, align 8, !dbg !6385
  %len274 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %133, i32 0, i32 0, !dbg !6386
  store i8 %conv273, i8* %len274, align 1, !dbg !6387
  %134 = load i32, i32* %ret, align 4, !dbg !6388
  %cmp275 = icmp slt i32 %134, 0, !dbg !6390
  br i1 %cmp275, label %if.then277, label %if.else289, !dbg !6391

if.then277:                                       ; preds = %if.end272
  store i32 0, i32* %i, align 4, !dbg !6392
  br label %for.cond278, !dbg !6394

for.cond278:                                      ; preds = %for.inc286, %if.then277
  %135 = load i32, i32* %i, align 4, !dbg !6395
  %136 = load i32, i32* %layers, align 4, !dbg !6397
  %cmp279 = icmp slt i32 %135, %136, !dbg !6398
  br i1 %cmp279, label %for.body281, label %for.end288, !dbg !6399

for.body281:                                      ; preds = %for.cond278
  %137 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %stats, align 8, !dbg !6400
  %stat282 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %137, i32 0, i32 1, !dbg !6401
  %138 = load i32, i32* %i, align 4, !dbg !6402
  %idxprom283 = sext i32 %138 to i64, !dbg !6400
  %arrayidx284 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat282, i64 0, i64 %idxprom283, !dbg !6400
  %scale285 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx284, i32 0, i32 0, !dbg !6403
  store i8 0, i8* %scale285, align 1, !dbg !6404
  br label %for.inc286, !dbg !6400

for.inc286:                                       ; preds = %for.body281
  %139 = load i32, i32* %i, align 4, !dbg !6405
  %inc287 = add i32 %139, 1, !dbg !6405
  store i32 %inc287, i32* %i, align 4, !dbg !6405
  br label %for.cond278, !dbg !6406, !llvm.loop !6407

for.end288:                                       ; preds = %for.cond278
  br label %if.end324, !dbg !6408

if.else289:                                       ; preds = %if.end272
  store i32 0, i32* %i, align 4, !dbg !6409
  br label %for.cond290, !dbg !6412

for.cond290:                                      ; preds = %for.inc321, %if.else289
  %140 = load i32, i32* %i, align 4, !dbg !6413
  %141 = load i32, i32* %layers, align 4, !dbg !6415
  %cmp291 = icmp slt i32 %140, %141, !dbg !6416
  br i1 %cmp291, label %for.body293, label %for.end323, !dbg !6417

for.body293:                                      ; preds = %for.cond290
  %142 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %stats, align 8, !dbg !6418
  %stat294 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %142, i32 0, i32 1, !dbg !6420
  %143 = load i32, i32* %i, align 4, !dbg !6421
  %idxprom295 = sext i32 %143 to i64, !dbg !6418
  %arrayidx296 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat294, i64 0, i64 %idxprom295, !dbg !6418
  %scale297 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx296, i32 0, i32 0, !dbg !6422
  store i8 3, i8* %scale297, align 1, !dbg !6423
  %144 = load i32, i32* %i, align 4, !dbg !6424
  %mul298 = mul i32 %144, 2, !dbg !6425
  %add299 = add i32 9, %mul298, !dbg !6426
  %idxprom300 = sext i32 %add299 to i64, !dbg !6427
  %arrayidx301 = getelementptr [15 x i8], [15 x i8]* %val, i64 0, i64 %idxprom300, !dbg !6427
  %145 = load i8, i8* %arrayidx301, align 1, !dbg !6427
  %conv302 = zext i8 %145 to i32, !dbg !6427
  %shl303 = shl i32 %conv302, 8, !dbg !6428
  %146 = load i32, i32* %i, align 4, !dbg !6429
  %mul304 = mul i32 %146, 2, !dbg !6430
  %add305 = add i32 9, %mul304, !dbg !6431
  %add306 = add i32 %add305, 1, !dbg !6432
  %idxprom307 = sext i32 %add306 to i64, !dbg !6433
  %arrayidx308 = getelementptr [15 x i8], [15 x i8]* %val, i64 0, i64 %idxprom307, !dbg !6433
  %147 = load i8, i8* %arrayidx308, align 1, !dbg !6433
  %conv309 = zext i8 %147 to i32, !dbg !6433
  %or310 = or i32 %shl303, %conv309, !dbg !6434
  %conv311 = sext i32 %or310 to i64, !dbg !6427
  %148 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %stats, align 8, !dbg !6435
  %stat312 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %148, i32 0, i32 1, !dbg !6436
  %149 = load i32, i32* %i, align 4, !dbg !6437
  %idxprom313 = sext i32 %149 to i64, !dbg !6435
  %arrayidx314 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat312, i64 0, i64 %idxprom313, !dbg !6435
  %150 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx314, i32 0, i32 1, !dbg !6438
  %uvalue315 = bitcast %union.anon.67* %150 to i64*, !dbg !6438
  store i64 %conv311, i64* %uvalue315, align 1, !dbg !6439
  %151 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %stats, align 8, !dbg !6440
  %stat316 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %151, i32 0, i32 1, !dbg !6441
  %152 = load i32, i32* %i, align 4, !dbg !6442
  %idxprom317 = sext i32 %152 to i64, !dbg !6440
  %arrayidx318 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat316, i64 0, i64 %idxprom317, !dbg !6440
  %153 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx318, i32 0, i32 1, !dbg !6443
  %uvalue319 = bitcast %union.anon.67* %153 to i64*, !dbg !6443
  %154 = load i64, i64* %uvalue319, align 1, !dbg !6444
  %mul320 = mul i64 %154, 1632, !dbg !6444
  store i64 %mul320, i64* %uvalue319, align 1, !dbg !6444
  br label %for.inc321, !dbg !6445

for.inc321:                                       ; preds = %for.body293
  %155 = load i32, i32* %i, align 4, !dbg !6446
  %inc322 = add i32 %155, 1, !dbg !6446
  store i32 %inc322, i32* %i, align 4, !dbg !6446
  br label %for.cond290, !dbg !6447, !llvm.loop !6448

for.end323:                                       ; preds = %for.cond290
  br label %if.end324

if.end324:                                        ; preds = %for.end323, %for.end288
  ret i32 0, !dbg !6450
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tc90522t_read_status(%struct.dvb_frontend* %fe, i32* %status) #2 !dbg !6451 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %status.addr = alloca i32*, align 8
  %state = alloca %struct.tc90522_state*, align 8
  %ret = alloca i32, align 4
  %reg = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6452, metadata !DIExpression()), !dbg !6453
  store i32* %status, i32** %status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %status.addr, metadata !6454, metadata !DIExpression()), !dbg !6455
  call void @llvm.dbg.declare(metadata %struct.tc90522_state** %state, metadata !6456, metadata !DIExpression()), !dbg !6457
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6458, metadata !DIExpression()), !dbg !6459
  call void @llvm.dbg.declare(metadata i8* %reg, metadata !6460, metadata !DIExpression()), !dbg !6461
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6462
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6463
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6463
  %2 = bitcast i8* %1 to %struct.tc90522_state*, !dbg !6462
  store %struct.tc90522_state* %2, %struct.tc90522_state** %state, align 8, !dbg !6464
  %3 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !6465
  %call = call i32 @reg_read(%struct.tc90522_state* %3, i8 zeroext -106, i8* %reg, i8 zeroext 1) #9, !dbg !6466
  store i32 %call, i32* %ret, align 4, !dbg !6467
  %4 = load i32, i32* %ret, align 4, !dbg !6468
  %cmp = icmp slt i32 %4, 0, !dbg !6470
  br i1 %cmp, label %if.then, label %if.end, !dbg !6471

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !6472
  store i32 %5, i32* %retval, align 4, !dbg !6473
  br label %return, !dbg !6473

if.end:                                           ; preds = %entry
  %6 = load i32*, i32** %status.addr, align 8, !dbg !6474
  store i32 0, i32* %6, align 4, !dbg !6475
  %7 = load i8, i8* %reg, align 1, !dbg !6476
  %conv = zext i8 %7 to i32, !dbg !6476
  %and = and i32 %conv, 224, !dbg !6478
  %tobool = icmp ne i32 %and, 0, !dbg !6478
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !6479

if.then1:                                         ; preds = %if.end
  %8 = load i32*, i32** %status.addr, align 8, !dbg !6480
  store i32 31, i32* %8, align 4, !dbg !6482
  store i32 0, i32* %retval, align 4, !dbg !6483
  br label %return, !dbg !6483

if.end2:                                          ; preds = %if.end
  %9 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !6484
  %call3 = call i32 @reg_read(%struct.tc90522_state* %9, i8 zeroext -128, i8* %reg, i8 zeroext 1) #9, !dbg !6485
  store i32 %call3, i32* %ret, align 4, !dbg !6486
  %10 = load i32, i32* %ret, align 4, !dbg !6487
  %cmp4 = icmp slt i32 %10, 0, !dbg !6489
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !6490

if.then6:                                         ; preds = %if.end2
  %11 = load i32, i32* %ret, align 4, !dbg !6491
  store i32 %11, i32* %retval, align 4, !dbg !6492
  br label %return, !dbg !6492

if.end7:                                          ; preds = %if.end2
  %12 = load i8, i8* %reg, align 1, !dbg !6493
  %conv8 = zext i8 %12 to i32, !dbg !6493
  %and9 = and i32 %conv8, 240, !dbg !6495
  %tobool10 = icmp ne i32 %and9, 0, !dbg !6495
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !6496

if.then11:                                        ; preds = %if.end7
  store i32 0, i32* %retval, align 4, !dbg !6497
  br label %return, !dbg !6497

if.end12:                                         ; preds = %if.end7
  %13 = load i32*, i32** %status.addr, align 8, !dbg !6498
  %14 = load i32, i32* %13, align 4, !dbg !6499
  %or = or i32 %14, 3, !dbg !6499
  store i32 %or, i32* %13, align 4, !dbg !6499
  %15 = load i8, i8* %reg, align 1, !dbg !6500
  %conv13 = zext i8 %15 to i32, !dbg !6500
  %and14 = and i32 %conv13, 12, !dbg !6502
  %tobool15 = icmp ne i32 %and14, 0, !dbg !6502
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6503

if.then16:                                        ; preds = %if.end12
  store i32 0, i32* %retval, align 4, !dbg !6504
  br label %return, !dbg !6504

if.end17:                                         ; preds = %if.end12
  %16 = load i32*, i32** %status.addr, align 8, !dbg !6505
  %17 = load i32, i32* %16, align 4, !dbg !6506
  %or18 = or i32 %17, 12, !dbg !6506
  store i32 %or18, i32* %16, align 4, !dbg !6506
  %18 = load i8, i8* %reg, align 1, !dbg !6507
  %conv19 = zext i8 %18 to i32, !dbg !6507
  %and20 = and i32 %conv19, 2, !dbg !6509
  %tobool21 = icmp ne i32 %and20, 0, !dbg !6509
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !6510

if.then22:                                        ; preds = %if.end17
  store i32 0, i32* %retval, align 4, !dbg !6511
  br label %return, !dbg !6511

if.end23:                                         ; preds = %if.end17
  %19 = load i32*, i32** %status.addr, align 8, !dbg !6512
  %20 = load i32, i32* %19, align 4, !dbg !6513
  %or24 = or i32 %20, 16, !dbg !6513
  store i32 %or24, i32* %19, align 4, !dbg !6513
  store i32 0, i32* %retval, align 4, !dbg !6514
  br label %return, !dbg !6514

return:                                           ; preds = %if.end23, %if.then22, %if.then16, %if.then11, %if.then6, %if.then1, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !6515
  ret i32 %21, !dbg !6515
}

; Function Attrs: noredzone
declare dso_local i32 @intlog10(i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tc90522_master_xfer(%struct.i2c_adapter* %adap, %struct.i2c_msg* %msgs, i32 %num) #2 !dbg !6516 {
entry:
  %retval = alloca i32, align 4
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  %msgs.addr = alloca %struct.i2c_msg*, align 8
  %num.addr = alloca i32, align 4
  %state = alloca %struct.tc90522_state*, align 8
  %new_msgs = alloca %struct.i2c_msg*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ret = alloca i32, align 4
  %rd_num = alloca i32, align 4
  %wbuf = alloca [256 x i8], align 16
  %p = alloca i8*, align 8
  %bufend = alloca i8*, align 8
  %from = alloca i32, align 4
  %to = alloca i32, align 4
  %r = alloca i32, align 4
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !6517, metadata !DIExpression()), !dbg !6518
  store %struct.i2c_msg* %msgs, %struct.i2c_msg** %msgs.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_msg** %msgs.addr, metadata !6519, metadata !DIExpression()), !dbg !6520
  store i32 %num, i32* %num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !6521, metadata !DIExpression()), !dbg !6522
  call void @llvm.dbg.declare(metadata %struct.tc90522_state** %state, metadata !6523, metadata !DIExpression()), !dbg !6524
  call void @llvm.dbg.declare(metadata %struct.i2c_msg** %new_msgs, metadata !6525, metadata !DIExpression()), !dbg !6526
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6527, metadata !DIExpression()), !dbg !6528
  call void @llvm.dbg.declare(metadata i32* %j, metadata !6529, metadata !DIExpression()), !dbg !6530
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6531, metadata !DIExpression()), !dbg !6532
  call void @llvm.dbg.declare(metadata i32* %rd_num, metadata !6533, metadata !DIExpression()), !dbg !6534
  call void @llvm.dbg.declare(metadata [256 x i8]* %wbuf, metadata !6535, metadata !DIExpression()), !dbg !6539
  call void @llvm.dbg.declare(metadata i8** %p, metadata !6540, metadata !DIExpression()), !dbg !6541
  call void @llvm.dbg.declare(metadata i8** %bufend, metadata !6542, metadata !DIExpression()), !dbg !6543
  %0 = load i32, i32* %num.addr, align 4, !dbg !6544
  %cmp = icmp sle i32 %0, 0, !dbg !6546
  br i1 %cmp, label %if.then, label %if.end, !dbg !6547

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !6548
  br label %return, !dbg !6548

if.end:                                           ; preds = %entry
  store i32 0, i32* %rd_num, align 4, !dbg !6549
  store i32 0, i32* %i, align 4, !dbg !6550
  br label %for.cond, !dbg !6552

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4, !dbg !6553
  %2 = load i32, i32* %num.addr, align 4, !dbg !6555
  %cmp1 = icmp slt i32 %1, %2, !dbg !6556
  br i1 %cmp1, label %for.body, label %for.end, !dbg !6557

for.body:                                         ; preds = %for.cond
  %3 = load %struct.i2c_msg*, %struct.i2c_msg** %msgs.addr, align 8, !dbg !6558
  %4 = load i32, i32* %i, align 4, !dbg !6560
  %idxprom = sext i32 %4 to i64, !dbg !6558
  %arrayidx = getelementptr %struct.i2c_msg, %struct.i2c_msg* %3, i64 %idxprom, !dbg !6558
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx, i32 0, i32 1, !dbg !6561
  %5 = load i16, i16* %flags, align 2, !dbg !6561
  %conv = zext i16 %5 to i32, !dbg !6558
  %and = and i32 %conv, 1, !dbg !6562
  %tobool = icmp ne i32 %and, 0, !dbg !6562
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !6563

if.then2:                                         ; preds = %for.body
  %6 = load i32, i32* %rd_num, align 4, !dbg !6564
  %inc = add i32 %6, 1, !dbg !6564
  store i32 %inc, i32* %rd_num, align 4, !dbg !6564
  br label %if.end3, !dbg !6565

if.end3:                                          ; preds = %if.then2, %for.body
  br label %for.inc, !dbg !6566

for.inc:                                          ; preds = %if.end3
  %7 = load i32, i32* %i, align 4, !dbg !6567
  %inc4 = add i32 %7, 1, !dbg !6567
  store i32 %inc4, i32* %i, align 4, !dbg !6567
  br label %for.cond, !dbg !6568, !llvm.loop !6569

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %num.addr, align 4, !dbg !6571
  %9 = load i32, i32* %rd_num, align 4, !dbg !6572
  %add = add i32 %8, %9, !dbg !6573
  %conv5 = sext i32 %add to i64, !dbg !6571
  %call = call i8* @kmalloc_array(i64 %conv5, i64 16, i32 3264) #9, !dbg !6574
  %10 = bitcast i8* %call to %struct.i2c_msg*, !dbg !6574
  store %struct.i2c_msg* %10, %struct.i2c_msg** %new_msgs, align 8, !dbg !6575
  %11 = load %struct.i2c_msg*, %struct.i2c_msg** %new_msgs, align 8, !dbg !6576
  %tobool6 = icmp ne %struct.i2c_msg* %11, null, !dbg !6576
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !6578

if.then7:                                         ; preds = %for.end
  store i32 -12, i32* %retval, align 4, !dbg !6579
  br label %return, !dbg !6579

if.end8:                                          ; preds = %for.end
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !6580
  %call9 = call i8* @i2c_get_adapdata(%struct.i2c_adapter* %12) #9, !dbg !6581
  %13 = bitcast i8* %call9 to %struct.tc90522_state*, !dbg !6581
  store %struct.tc90522_state* %13, %struct.tc90522_state** %state, align 8, !dbg !6582
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %wbuf, i64 0, i64 0, !dbg !6583
  store i8* %arraydecay, i8** %p, align 8, !dbg !6584
  %arraydecay10 = getelementptr inbounds [256 x i8], [256 x i8]* %wbuf, i64 0, i64 0, !dbg !6585
  %add.ptr = getelementptr i8, i8* %arraydecay10, i64 256, !dbg !6586
  store i8* %add.ptr, i8** %bufend, align 8, !dbg !6587
  store i32 0, i32* %i, align 4, !dbg !6588
  store i32 0, i32* %j, align 4, !dbg !6590
  br label %for.cond11, !dbg !6591

for.cond11:                                       ; preds = %for.inc123, %if.end8
  %14 = load i32, i32* %i, align 4, !dbg !6592
  %15 = load i32, i32* %num.addr, align 4, !dbg !6594
  %cmp12 = icmp slt i32 %14, %15, !dbg !6595
  br i1 %cmp12, label %for.body14, label %for.end126, !dbg !6596

for.body14:                                       ; preds = %for.cond11
  %16 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !6597
  %i2c_client = getelementptr inbounds %struct.tc90522_state, %struct.tc90522_state* %16, i32 0, i32 2, !dbg !6599
  %17 = load %struct.i2c_client*, %struct.i2c_client** %i2c_client, align 8, !dbg !6599
  %addr = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 1, !dbg !6600
  %18 = load i16, i16* %addr, align 2, !dbg !6600
  %19 = load %struct.i2c_msg*, %struct.i2c_msg** %new_msgs, align 8, !dbg !6601
  %20 = load i32, i32* %j, align 4, !dbg !6602
  %idxprom15 = sext i32 %20 to i64, !dbg !6601
  %arrayidx16 = getelementptr %struct.i2c_msg, %struct.i2c_msg* %19, i64 %idxprom15, !dbg !6601
  %addr17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx16, i32 0, i32 0, !dbg !6603
  store i16 %18, i16* %addr17, align 8, !dbg !6604
  %21 = load %struct.i2c_msg*, %struct.i2c_msg** %msgs.addr, align 8, !dbg !6605
  %22 = load i32, i32* %i, align 4, !dbg !6606
  %idxprom18 = sext i32 %22 to i64, !dbg !6605
  %arrayidx19 = getelementptr %struct.i2c_msg, %struct.i2c_msg* %21, i64 %idxprom18, !dbg !6605
  %flags20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx19, i32 0, i32 1, !dbg !6607
  %23 = load i16, i16* %flags20, align 2, !dbg !6607
  %24 = load %struct.i2c_msg*, %struct.i2c_msg** %new_msgs, align 8, !dbg !6608
  %25 = load i32, i32* %j, align 4, !dbg !6609
  %idxprom21 = sext i32 %25 to i64, !dbg !6608
  %arrayidx22 = getelementptr %struct.i2c_msg, %struct.i2c_msg* %24, i64 %idxprom21, !dbg !6608
  %flags23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx22, i32 0, i32 1, !dbg !6610
  store i16 %23, i16* %flags23, align 2, !dbg !6611
  %26 = load %struct.i2c_msg*, %struct.i2c_msg** %msgs.addr, align 8, !dbg !6612
  %27 = load i32, i32* %i, align 4, !dbg !6614
  %idxprom24 = sext i32 %27 to i64, !dbg !6612
  %arrayidx25 = getelementptr %struct.i2c_msg, %struct.i2c_msg* %26, i64 %idxprom24, !dbg !6612
  %flags26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx25, i32 0, i32 1, !dbg !6615
  %28 = load i16, i16* %flags26, align 2, !dbg !6615
  %conv27 = zext i16 %28 to i32, !dbg !6612
  %and28 = and i32 %conv27, 1, !dbg !6616
  %tobool29 = icmp ne i32 %and28, 0, !dbg !6616
  br i1 %tobool29, label %if.then30, label %if.end78, !dbg !6617

if.then30:                                        ; preds = %for.body14
  %29 = load %struct.i2c_msg*, %struct.i2c_msg** %new_msgs, align 8, !dbg !6618
  %30 = load i32, i32* %j, align 4, !dbg !6620
  %idxprom31 = sext i32 %30 to i64, !dbg !6618
  %arrayidx32 = getelementptr %struct.i2c_msg, %struct.i2c_msg* %29, i64 %idxprom31, !dbg !6618
  %flags33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx32, i32 0, i32 1, !dbg !6621
  %31 = load i16, i16* %flags33, align 2, !dbg !6622
  %conv34 = zext i16 %31 to i32, !dbg !6622
  %and35 = and i32 %conv34, -2, !dbg !6622
  %conv36 = trunc i32 %and35 to i16, !dbg !6622
  store i16 %conv36, i16* %flags33, align 2, !dbg !6622
  %32 = load i8*, i8** %p, align 8, !dbg !6623
  %add.ptr37 = getelementptr i8, i8* %32, i64 2, !dbg !6625
  %33 = load i8*, i8** %bufend, align 8, !dbg !6626
  %cmp38 = icmp ugt i8* %add.ptr37, %33, !dbg !6627
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !6628

if.then40:                                        ; preds = %if.then30
  br label %for.end126, !dbg !6629

if.end41:                                         ; preds = %if.then30
  %34 = load i8*, i8** %p, align 8, !dbg !6630
  %arrayidx42 = getelementptr i8, i8* %34, i64 0, !dbg !6630
  store i8 -2, i8* %arrayidx42, align 1, !dbg !6631
  %35 = load %struct.i2c_msg*, %struct.i2c_msg** %msgs.addr, align 8, !dbg !6632
  %36 = load i32, i32* %i, align 4, !dbg !6633
  %idxprom43 = sext i32 %36 to i64, !dbg !6632
  %arrayidx44 = getelementptr %struct.i2c_msg, %struct.i2c_msg* %35, i64 %idxprom43, !dbg !6632
  %addr45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx44, i32 0, i32 0, !dbg !6634
  %37 = load i16, i16* %addr45, align 8, !dbg !6634
  %conv46 = zext i16 %37 to i32, !dbg !6632
  %shl = shl i32 %conv46, 1, !dbg !6635
  %or = or i32 %shl, 1, !dbg !6636
  %conv47 = trunc i32 %or to i8, !dbg !6632
  %38 = load i8*, i8** %p, align 8, !dbg !6637
  %arrayidx48 = getelementptr i8, i8* %38, i64 1, !dbg !6637
  store i8 %conv47, i8* %arrayidx48, align 1, !dbg !6638
  %39 = load i8*, i8** %p, align 8, !dbg !6639
  %40 = load %struct.i2c_msg*, %struct.i2c_msg** %new_msgs, align 8, !dbg !6640
  %41 = load i32, i32* %j, align 4, !dbg !6641
  %idxprom49 = sext i32 %41 to i64, !dbg !6640
  %arrayidx50 = getelementptr %struct.i2c_msg, %struct.i2c_msg* %40, i64 %idxprom49, !dbg !6640
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx50, i32 0, i32 3, !dbg !6642
  store i8* %39, i8** %buf, align 8, !dbg !6643
  %42 = load %struct.i2c_msg*, %struct.i2c_msg** %new_msgs, align 8, !dbg !6644
  %43 = load i32, i32* %j, align 4, !dbg !6645
  %idxprom51 = sext i32 %43 to i64, !dbg !6644
  %arrayidx52 = getelementptr %struct.i2c_msg, %struct.i2c_msg* %42, i64 %idxprom51, !dbg !6644
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx52, i32 0, i32 2, !dbg !6646
  store i16 2, i16* %len, align 4, !dbg !6647
  %44 = load i8*, i8** %p, align 8, !dbg !6648
  %add.ptr53 = getelementptr i8, i8* %44, i64 2, !dbg !6648
  store i8* %add.ptr53, i8** %p, align 8, !dbg !6648
  %45 = load i32, i32* %j, align 4, !dbg !6649
  %inc54 = add i32 %45, 1, !dbg !6649
  store i32 %inc54, i32* %j, align 4, !dbg !6649
  %46 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !6650
  %i2c_client55 = getelementptr inbounds %struct.tc90522_state, %struct.tc90522_state* %46, i32 0, i32 2, !dbg !6651
  %47 = load %struct.i2c_client*, %struct.i2c_client** %i2c_client55, align 8, !dbg !6651
  %addr56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 1, !dbg !6652
  %48 = load i16, i16* %addr56, align 2, !dbg !6652
  %49 = load %struct.i2c_msg*, %struct.i2c_msg** %new_msgs, align 8, !dbg !6653
  %50 = load i32, i32* %j, align 4, !dbg !6654
  %idxprom57 = sext i32 %50 to i64, !dbg !6653
  %arrayidx58 = getelementptr %struct.i2c_msg, %struct.i2c_msg* %49, i64 %idxprom57, !dbg !6653
  %addr59 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx58, i32 0, i32 0, !dbg !6655
  store i16 %48, i16* %addr59, align 8, !dbg !6656
  %51 = load %struct.i2c_msg*, %struct.i2c_msg** %msgs.addr, align 8, !dbg !6657
  %52 = load i32, i32* %i, align 4, !dbg !6658
  %idxprom60 = sext i32 %52 to i64, !dbg !6657
  %arrayidx61 = getelementptr %struct.i2c_msg, %struct.i2c_msg* %51, i64 %idxprom60, !dbg !6657
  %flags62 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx61, i32 0, i32 1, !dbg !6659
  %53 = load i16, i16* %flags62, align 2, !dbg !6659
  %54 = load %struct.i2c_msg*, %struct.i2c_msg** %new_msgs, align 8, !dbg !6660
  %55 = load i32, i32* %j, align 4, !dbg !6661
  %idxprom63 = sext i32 %55 to i64, !dbg !6660
  %arrayidx64 = getelementptr %struct.i2c_msg, %struct.i2c_msg* %54, i64 %idxprom63, !dbg !6660
  %flags65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx64, i32 0, i32 1, !dbg !6662
  store i16 %53, i16* %flags65, align 2, !dbg !6663
  %56 = load %struct.i2c_msg*, %struct.i2c_msg** %msgs.addr, align 8, !dbg !6664
  %57 = load i32, i32* %i, align 4, !dbg !6665
  %idxprom66 = sext i32 %57 to i64, !dbg !6664
  %arrayidx67 = getelementptr %struct.i2c_msg, %struct.i2c_msg* %56, i64 %idxprom66, !dbg !6664
  %buf68 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx67, i32 0, i32 3, !dbg !6666
  %58 = load i8*, i8** %buf68, align 8, !dbg !6666
  %59 = load %struct.i2c_msg*, %struct.i2c_msg** %new_msgs, align 8, !dbg !6667
  %60 = load i32, i32* %j, align 4, !dbg !6668
  %idxprom69 = sext i32 %60 to i64, !dbg !6667
  %arrayidx70 = getelementptr %struct.i2c_msg, %struct.i2c_msg* %59, i64 %idxprom69, !dbg !6667
  %buf71 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx70, i32 0, i32 3, !dbg !6669
  store i8* %58, i8** %buf71, align 8, !dbg !6670
  %61 = load %struct.i2c_msg*, %struct.i2c_msg** %msgs.addr, align 8, !dbg !6671
  %62 = load i32, i32* %i, align 4, !dbg !6672
  %idxprom72 = sext i32 %62 to i64, !dbg !6671
  %arrayidx73 = getelementptr %struct.i2c_msg, %struct.i2c_msg* %61, i64 %idxprom72, !dbg !6671
  %len74 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx73, i32 0, i32 2, !dbg !6673
  %63 = load i16, i16* %len74, align 4, !dbg !6673
  %64 = load %struct.i2c_msg*, %struct.i2c_msg** %new_msgs, align 8, !dbg !6674
  %65 = load i32, i32* %j, align 4, !dbg !6675
  %idxprom75 = sext i32 %65 to i64, !dbg !6674
  %arrayidx76 = getelementptr %struct.i2c_msg, %struct.i2c_msg* %64, i64 %idxprom75, !dbg !6674
  %len77 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx76, i32 0, i32 2, !dbg !6676
  store i16 %63, i16* %len77, align 4, !dbg !6677
  br label %for.inc123, !dbg !6678

if.end78:                                         ; preds = %for.body14
  %66 = load i8*, i8** %p, align 8, !dbg !6679
  %67 = load %struct.i2c_msg*, %struct.i2c_msg** %msgs.addr, align 8, !dbg !6681
  %68 = load i32, i32* %i, align 4, !dbg !6682
  %idxprom79 = sext i32 %68 to i64, !dbg !6681
  %arrayidx80 = getelementptr %struct.i2c_msg, %struct.i2c_msg* %67, i64 %idxprom79, !dbg !6681
  %len81 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx80, i32 0, i32 2, !dbg !6683
  %69 = load i16, i16* %len81, align 4, !dbg !6683
  %conv82 = zext i16 %69 to i32, !dbg !6681
  %idx.ext = sext i32 %conv82 to i64, !dbg !6684
  %add.ptr83 = getelementptr i8, i8* %66, i64 %idx.ext, !dbg !6684
  %add.ptr84 = getelementptr i8, i8* %add.ptr83, i64 2, !dbg !6685
  %70 = load i8*, i8** %bufend, align 8, !dbg !6686
  %cmp85 = icmp ugt i8* %add.ptr84, %70, !dbg !6687
  br i1 %cmp85, label %if.then87, label %if.end88, !dbg !6688

if.then87:                                        ; preds = %if.end78
  br label %for.end126, !dbg !6689

if.end88:                                         ; preds = %if.end78
  %71 = load i8*, i8** %p, align 8, !dbg !6690
  %arrayidx89 = getelementptr i8, i8* %71, i64 0, !dbg !6690
  store i8 -2, i8* %arrayidx89, align 1, !dbg !6691
  %72 = load %struct.i2c_msg*, %struct.i2c_msg** %msgs.addr, align 8, !dbg !6692
  %73 = load i32, i32* %i, align 4, !dbg !6693
  %idxprom90 = sext i32 %73 to i64, !dbg !6692
  %arrayidx91 = getelementptr %struct.i2c_msg, %struct.i2c_msg* %72, i64 %idxprom90, !dbg !6692
  %addr92 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx91, i32 0, i32 0, !dbg !6694
  %74 = load i16, i16* %addr92, align 8, !dbg !6694
  %conv93 = zext i16 %74 to i32, !dbg !6692
  %shl94 = shl i32 %conv93, 1, !dbg !6695
  %conv95 = trunc i32 %shl94 to i8, !dbg !6692
  %75 = load i8*, i8** %p, align 8, !dbg !6696
  %arrayidx96 = getelementptr i8, i8* %75, i64 1, !dbg !6696
  store i8 %conv95, i8* %arrayidx96, align 1, !dbg !6697
  %76 = load i8*, i8** %p, align 8, !dbg !6698
  %add.ptr97 = getelementptr i8, i8* %76, i64 2, !dbg !6699
  %77 = load %struct.i2c_msg*, %struct.i2c_msg** %msgs.addr, align 8, !dbg !6700
  %78 = load i32, i32* %i, align 4, !dbg !6701
  %idxprom98 = sext i32 %78 to i64, !dbg !6700
  %arrayidx99 = getelementptr %struct.i2c_msg, %struct.i2c_msg* %77, i64 %idxprom98, !dbg !6700
  %buf100 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx99, i32 0, i32 3, !dbg !6702
  %79 = load i8*, i8** %buf100, align 8, !dbg !6702
  %80 = load %struct.i2c_msg*, %struct.i2c_msg** %msgs.addr, align 8, !dbg !6703
  %81 = load i32, i32* %i, align 4, !dbg !6704
  %idxprom101 = sext i32 %81 to i64, !dbg !6703
  %arrayidx102 = getelementptr %struct.i2c_msg, %struct.i2c_msg* %80, i64 %idxprom101, !dbg !6703
  %len103 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx102, i32 0, i32 2, !dbg !6705
  %82 = load i16, i16* %len103, align 4, !dbg !6705
  %conv104 = zext i16 %82 to i64, !dbg !6703
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr97, i8* align 1 %79, i64 %conv104, i1 false), !dbg !6706
  %83 = load i8*, i8** %p, align 8, !dbg !6707
  %84 = load %struct.i2c_msg*, %struct.i2c_msg** %new_msgs, align 8, !dbg !6708
  %85 = load i32, i32* %j, align 4, !dbg !6709
  %idxprom105 = sext i32 %85 to i64, !dbg !6708
  %arrayidx106 = getelementptr %struct.i2c_msg, %struct.i2c_msg* %84, i64 %idxprom105, !dbg !6708
  %buf107 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx106, i32 0, i32 3, !dbg !6710
  store i8* %83, i8** %buf107, align 8, !dbg !6711
  %86 = load %struct.i2c_msg*, %struct.i2c_msg** %msgs.addr, align 8, !dbg !6712
  %87 = load i32, i32* %i, align 4, !dbg !6713
  %idxprom108 = sext i32 %87 to i64, !dbg !6712
  %arrayidx109 = getelementptr %struct.i2c_msg, %struct.i2c_msg* %86, i64 %idxprom108, !dbg !6712
  %len110 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx109, i32 0, i32 2, !dbg !6714
  %88 = load i16, i16* %len110, align 4, !dbg !6714
  %conv111 = zext i16 %88 to i32, !dbg !6712
  %add112 = add i32 %conv111, 2, !dbg !6715
  %conv113 = trunc i32 %add112 to i16, !dbg !6712
  %89 = load %struct.i2c_msg*, %struct.i2c_msg** %new_msgs, align 8, !dbg !6716
  %90 = load i32, i32* %j, align 4, !dbg !6717
  %idxprom114 = sext i32 %90 to i64, !dbg !6716
  %arrayidx115 = getelementptr %struct.i2c_msg, %struct.i2c_msg* %89, i64 %idxprom114, !dbg !6716
  %len116 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx115, i32 0, i32 2, !dbg !6718
  store i16 %conv113, i16* %len116, align 4, !dbg !6719
  %91 = load %struct.i2c_msg*, %struct.i2c_msg** %new_msgs, align 8, !dbg !6720
  %92 = load i32, i32* %j, align 4, !dbg !6721
  %idxprom117 = sext i32 %92 to i64, !dbg !6720
  %arrayidx118 = getelementptr %struct.i2c_msg, %struct.i2c_msg* %91, i64 %idxprom117, !dbg !6720
  %len119 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx118, i32 0, i32 2, !dbg !6722
  %93 = load i16, i16* %len119, align 4, !dbg !6722
  %conv120 = zext i16 %93 to i32, !dbg !6720
  %94 = load i8*, i8** %p, align 8, !dbg !6723
  %idx.ext121 = sext i32 %conv120 to i64, !dbg !6723
  %add.ptr122 = getelementptr i8, i8* %94, i64 %idx.ext121, !dbg !6723
  store i8* %add.ptr122, i8** %p, align 8, !dbg !6723
  br label %for.inc123, !dbg !6724

for.inc123:                                       ; preds = %if.end88, %if.end41
  %95 = load i32, i32* %i, align 4, !dbg !6725
  %inc124 = add i32 %95, 1, !dbg !6725
  store i32 %inc124, i32* %i, align 4, !dbg !6725
  %96 = load i32, i32* %j, align 4, !dbg !6726
  %inc125 = add i32 %96, 1, !dbg !6726
  store i32 %inc125, i32* %j, align 4, !dbg !6726
  br label %for.cond11, !dbg !6727, !llvm.loop !6728

for.end126:                                       ; preds = %if.then87, %if.then40, %for.cond11
  %97 = load i32, i32* %i, align 4, !dbg !6730
  %98 = load i32, i32* %num.addr, align 4, !dbg !6732
  %cmp127 = icmp slt i32 %97, %98, !dbg !6733
  br i1 %cmp127, label %if.then129, label %if.else, !dbg !6734

if.then129:                                       ; preds = %for.end126
  store i32 -12, i32* %ret, align 4, !dbg !6735
  br label %if.end162, !dbg !6737

if.else:                                          ; preds = %for.end126
  %99 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !6738
  %cfg = getelementptr inbounds %struct.tc90522_state, %struct.tc90522_state* %99, i32 0, i32 0, !dbg !6740
  %split_tuner_read_i2c = getelementptr inbounds %struct.tc90522_config, %struct.tc90522_config* %cfg, i32 0, i32 2, !dbg !6741
  %100 = load i8, i8* %split_tuner_read_i2c, align 8, !dbg !6741
  %tobool130 = trunc i8 %100 to i1, !dbg !6741
  br i1 %tobool130, label %lor.lhs.false, label %if.then133, !dbg !6742

lor.lhs.false:                                    ; preds = %if.else
  %101 = load i32, i32* %rd_num, align 4, !dbg !6743
  %cmp131 = icmp eq i32 %101, 0, !dbg !6744
  br i1 %cmp131, label %if.then133, label %if.else136, !dbg !6745

if.then133:                                       ; preds = %lor.lhs.false, %if.else
  %102 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !6746
  %i2c_client134 = getelementptr inbounds %struct.tc90522_state, %struct.tc90522_state* %102, i32 0, i32 2, !dbg !6748
  %103 = load %struct.i2c_client*, %struct.i2c_client** %i2c_client134, align 8, !dbg !6748
  %adapter = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %103, i32 0, i32 3, !dbg !6749
  %104 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !6749
  %105 = load %struct.i2c_msg*, %struct.i2c_msg** %new_msgs, align 8, !dbg !6750
  %106 = load i32, i32* %j, align 4, !dbg !6751
  %call135 = call i32 @i2c_transfer(%struct.i2c_adapter* %104, %struct.i2c_msg* %105, i32 %106) #9, !dbg !6752
  store i32 %call135, i32* %ret, align 4, !dbg !6753
  br label %if.end161, !dbg !6754

if.else136:                                       ; preds = %lor.lhs.false
  call void @llvm.dbg.declare(metadata i32* %from, metadata !6755, metadata !DIExpression()), !dbg !6757
  call void @llvm.dbg.declare(metadata i32* %to, metadata !6758, metadata !DIExpression()), !dbg !6759
  store i32 0, i32* %ret, align 4, !dbg !6760
  store i32 0, i32* %from, align 4, !dbg !6761
  br label %do.body, !dbg !6762

do.body:                                          ; preds = %land.end160, %if.else136
  call void @llvm.dbg.declare(metadata i32* %r, metadata !6763, metadata !DIExpression()), !dbg !6765
  %107 = load i32, i32* %from, align 4, !dbg !6766
  %add137 = add i32 %107, 1, !dbg !6767
  store i32 %add137, i32* %to, align 4, !dbg !6768
  br label %while.cond, !dbg !6769

while.cond:                                       ; preds = %while.body, %do.body
  %108 = load i32, i32* %to, align 4, !dbg !6770
  %109 = load i32, i32* %j, align 4, !dbg !6771
  %cmp138 = icmp slt i32 %108, %109, !dbg !6772
  br i1 %cmp138, label %land.rhs, label %land.end, !dbg !6773

land.rhs:                                         ; preds = %while.cond
  %110 = load %struct.i2c_msg*, %struct.i2c_msg** %new_msgs, align 8, !dbg !6774
  %111 = load i32, i32* %to, align 4, !dbg !6775
  %idxprom140 = sext i32 %111 to i64, !dbg !6774
  %arrayidx141 = getelementptr %struct.i2c_msg, %struct.i2c_msg* %110, i64 %idxprom140, !dbg !6774
  %flags142 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx141, i32 0, i32 1, !dbg !6776
  %112 = load i16, i16* %flags142, align 2, !dbg !6776
  %conv143 = zext i16 %112 to i32, !dbg !6774
  %and144 = and i32 %conv143, 1, !dbg !6777
  %tobool145 = icmp ne i32 %and144, 0, !dbg !6778
  %lnot = xor i1 %tobool145, true, !dbg !6778
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %113 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ], !dbg !6779
  br i1 %113, label %while.body, label %while.end, !dbg !6769

while.body:                                       ; preds = %land.end
  %114 = load i32, i32* %to, align 4, !dbg !6780
  %inc146 = add i32 %114, 1, !dbg !6780
  store i32 %inc146, i32* %to, align 4, !dbg !6780
  br label %while.cond, !dbg !6769, !llvm.loop !6781

while.end:                                        ; preds = %land.end
  %115 = load %struct.tc90522_state*, %struct.tc90522_state** %state, align 8, !dbg !6782
  %i2c_client147 = getelementptr inbounds %struct.tc90522_state, %struct.tc90522_state* %115, i32 0, i32 2, !dbg !6783
  %116 = load %struct.i2c_client*, %struct.i2c_client** %i2c_client147, align 8, !dbg !6783
  %adapter148 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %116, i32 0, i32 3, !dbg !6784
  %117 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter148, align 8, !dbg !6784
  %118 = load %struct.i2c_msg*, %struct.i2c_msg** %new_msgs, align 8, !dbg !6785
  %119 = load i32, i32* %from, align 4, !dbg !6786
  %idxprom149 = sext i32 %119 to i64, !dbg !6785
  %arrayidx150 = getelementptr %struct.i2c_msg, %struct.i2c_msg* %118, i64 %idxprom149, !dbg !6785
  %120 = load i32, i32* %to, align 4, !dbg !6787
  %121 = load i32, i32* %from, align 4, !dbg !6788
  %sub = sub i32 %120, %121, !dbg !6789
  %call151 = call i32 @i2c_transfer(%struct.i2c_adapter* %117, %struct.i2c_msg* %arrayidx150, i32 %sub) #9, !dbg !6790
  store i32 %call151, i32* %r, align 4, !dbg !6791
  %122 = load i32, i32* %r, align 4, !dbg !6792
  %cmp152 = icmp sle i32 %122, 0, !dbg !6793
  br i1 %cmp152, label %cond.true, label %cond.false, !dbg !6794

cond.true:                                        ; preds = %while.end
  %123 = load i32, i32* %r, align 4, !dbg !6795
  br label %cond.end, !dbg !6794

cond.false:                                       ; preds = %while.end
  %124 = load i32, i32* %ret, align 4, !dbg !6796
  %125 = load i32, i32* %r, align 4, !dbg !6797
  %add154 = add i32 %124, %125, !dbg !6798
  br label %cond.end, !dbg !6794

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %123, %cond.true ], [ %add154, %cond.false ], !dbg !6794
  store i32 %cond, i32* %ret, align 4, !dbg !6799
  %126 = load i32, i32* %to, align 4, !dbg !6800
  store i32 %126, i32* %from, align 4, !dbg !6801
  br label %do.cond, !dbg !6802

do.cond:                                          ; preds = %cond.end
  %127 = load i32, i32* %from, align 4, !dbg !6803
  %128 = load i32, i32* %j, align 4, !dbg !6804
  %cmp155 = icmp slt i32 %127, %128, !dbg !6805
  br i1 %cmp155, label %land.rhs157, label %land.end160, !dbg !6806

land.rhs157:                                      ; preds = %do.cond
  %129 = load i32, i32* %ret, align 4, !dbg !6807
  %cmp158 = icmp sgt i32 %129, 0, !dbg !6808
  br label %land.end160

land.end160:                                      ; preds = %land.rhs157, %do.cond
  %130 = phi i1 [ false, %do.cond ], [ %cmp158, %land.rhs157 ], !dbg !6809
  br i1 %130, label %do.body, label %do.end, !dbg !6802, !llvm.loop !6810

do.end:                                           ; preds = %land.end160
  br label %if.end161

if.end161:                                        ; preds = %do.end, %if.then133
  br label %if.end162

if.end162:                                        ; preds = %if.end161, %if.then129
  %131 = load i32, i32* %ret, align 4, !dbg !6812
  %cmp163 = icmp sge i32 %131, 0, !dbg !6814
  br i1 %cmp163, label %land.lhs.true, label %if.end168, !dbg !6815

land.lhs.true:                                    ; preds = %if.end162
  %132 = load i32, i32* %ret, align 4, !dbg !6816
  %133 = load i32, i32* %j, align 4, !dbg !6817
  %cmp165 = icmp slt i32 %132, %133, !dbg !6818
  br i1 %cmp165, label %if.then167, label %if.end168, !dbg !6819

if.then167:                                       ; preds = %land.lhs.true
  store i32 -5, i32* %ret, align 4, !dbg !6820
  br label %if.end168, !dbg !6821

if.end168:                                        ; preds = %if.then167, %land.lhs.true, %if.end162
  %134 = load %struct.i2c_msg*, %struct.i2c_msg** %new_msgs, align 8, !dbg !6822
  %135 = bitcast %struct.i2c_msg* %134 to i8*, !dbg !6822
  call void @kfree(i8* %135) #9, !dbg !6823
  %136 = load i32, i32* %ret, align 4, !dbg !6824
  %137 = load i32, i32* %j, align 4, !dbg !6825
  %cmp169 = icmp eq i32 %136, %137, !dbg !6826
  br i1 %cmp169, label %cond.true171, label %cond.false172, !dbg !6827

cond.true171:                                     ; preds = %if.end168
  %138 = load i32, i32* %num.addr, align 4, !dbg !6828
  br label %cond.end173, !dbg !6827

cond.false172:                                    ; preds = %if.end168
  %139 = load i32, i32* %ret, align 4, !dbg !6829
  br label %cond.end173, !dbg !6827

cond.end173:                                      ; preds = %cond.false172, %cond.true171
  %cond174 = phi i32 [ %138, %cond.true171 ], [ %139, %cond.false172 ], !dbg !6827
  store i32 %cond174, i32* %retval, align 4, !dbg !6830
  br label %return, !dbg !6830

return:                                           ; preds = %cond.end173, %if.then7, %if.then
  %140 = load i32, i32* %retval, align 4, !dbg !6831
  ret i32 %140, !dbg !6831
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tc90522_functionality(%struct.i2c_adapter* %adap) #2 !dbg !6832 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !6833, metadata !DIExpression()), !dbg !6834
  ret i32 1, !dbg !6835
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #2 !dbg !6836 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4679, metadata !DIExpression()), !dbg !6839
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4689, metadata !DIExpression()), !dbg !6843
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4691, metadata !DIExpression()), !dbg !6844
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4693, metadata !DIExpression()), !dbg !6845
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4695, metadata !DIExpression()), !dbg !6846
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4701, metadata !DIExpression()), !dbg !6848
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4707, metadata !DIExpression()), !dbg !6850
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4716, metadata !DIExpression()), !dbg !6853
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4718, metadata !DIExpression()), !dbg !6854
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4720, metadata !DIExpression()), !dbg !6855
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4722, metadata !DIExpression()), !dbg !6856
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4724, metadata !DIExpression()), !dbg !6857
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4726, metadata !DIExpression()), !dbg !6858
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4728, metadata !DIExpression()), !dbg !6859
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4730, metadata !DIExpression()), !dbg !6860
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
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6861, metadata !DIExpression()), !dbg !6862
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6863, metadata !DIExpression()), !dbg !6864
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6865, metadata !DIExpression()), !dbg !6866
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !6867, metadata !DIExpression()), !dbg !6868
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !6869, metadata !DIExpression()), !dbg !6872
  %0 = load i64, i64* %n.addr, align 8, !dbg !6872
  store i64 %0, i64* %__a, align 8, !dbg !6872
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !6873, metadata !DIExpression()), !dbg !6872
  %1 = load i64, i64* %size.addr, align 8, !dbg !6872
  store i64 %1, i64* %__b, align 8, !dbg !6872
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !6874, metadata !DIExpression()), !dbg !6872
  store i64* %bytes, i64** %__d, align 8, !dbg !6872
  %cmp = icmp eq i64* %__a, %__b, !dbg !6872
  %conv = zext i1 %cmp to i32, !dbg !6872
  %2 = load i64*, i64** %__d, align 8, !dbg !6872
  %cmp1 = icmp eq i64* %__a, %2, !dbg !6872
  %conv2 = zext i1 %cmp1 to i32, !dbg !6872
  %3 = load i64, i64* %__a, align 8, !dbg !6872
  %4 = load i64, i64* %__b, align 8, !dbg !6872
  %5 = load i64*, i64** %__d, align 8, !dbg !6872
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !6872
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !6872
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !6872
  store i64 %8, i64* %5, align 8, !dbg !6872
  %frombool = zext i1 %7 to i8, !dbg !6872
  store i8 %frombool, i8* %tmp, align 1, !dbg !6872
  %9 = load i8, i8* %tmp, align 1, !dbg !6872
  %tobool = trunc i8 %9 to i1, !dbg !6872
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #9, !dbg !6876
  %lnot = xor i1 %call, true, !dbg !6876
  %lnot3 = xor i1 %lnot, true, !dbg !6876
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6876
  %conv4 = sext i32 %lnot.ext to i64, !dbg !6876
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !6876
  br i1 %tobool5, label %if.then, label %if.end, !dbg !6877

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !6878
  br label %return, !dbg !6878

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !6879
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !6880
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !6881

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !6882
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !6883
  br i1 %13, label %if.then6, label %if.end8, !dbg !6884

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !6885
  %15 = load i32, i32* %flags.addr, align 4, !dbg !6886
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !6887
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #11, !dbg !6888
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !6889

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !6890
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !6891
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !6892

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !6893
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !6894
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !6895
  %call.i.i = call i32 @get_order(i64 %21) #12, !dbg !6896
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !6857
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !6897
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !6898
  %24 = load i32, i32* %order.i.i, align 4, !dbg !6899
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !6900
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !6901
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !6902
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #13, !dbg !6903
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !6903
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !6903
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !6903
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !6903
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !6904
  br label %kmalloc.exit, !dbg !6904

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !6905
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6906
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !6906
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !6907

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !6908
  br label %kmalloc_index.exit.i, !dbg !6908

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6909
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !6910
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !6911

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6912
  br label %kmalloc_index.exit.i, !dbg !6912

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6913
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !6914
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !6915

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6916
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !6917
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !6918

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !6919
  br label %kmalloc_index.exit.i, !dbg !6919

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6920
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !6921
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !6922

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6923
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !6924
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !6925

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !6926
  br label %kmalloc_index.exit.i, !dbg !6926

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6927
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !6928
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !6929

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6930
  br label %kmalloc_index.exit.i, !dbg !6930

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6931
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !6932
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !6933

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !6934
  br label %kmalloc_index.exit.i, !dbg !6934

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6935
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !6936
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !6937

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !6938
  br label %kmalloc_index.exit.i, !dbg !6938

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6939
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !6940
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !6941

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !6942
  br label %kmalloc_index.exit.i, !dbg !6942

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6943
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !6944
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !6945

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !6946
  br label %kmalloc_index.exit.i, !dbg !6946

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6947
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !6948
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !6949

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !6950
  br label %kmalloc_index.exit.i, !dbg !6950

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6951
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !6952
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !6953

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !6954
  br label %kmalloc_index.exit.i, !dbg !6954

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6955
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !6956
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !6957

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !6958
  br label %kmalloc_index.exit.i, !dbg !6958

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6959
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !6960
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !6961

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !6962
  br label %kmalloc_index.exit.i, !dbg !6962

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6963
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !6964
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !6965

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !6966
  br label %kmalloc_index.exit.i, !dbg !6966

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6967
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !6968
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !6969

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !6970
  br label %kmalloc_index.exit.i, !dbg !6970

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6971
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !6972
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !6973

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !6974
  br label %kmalloc_index.exit.i, !dbg !6974

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6975
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !6976
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !6977

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !6978
  br label %kmalloc_index.exit.i, !dbg !6978

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6979
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !6980
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !6981

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !6982
  br label %kmalloc_index.exit.i, !dbg !6982

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6983
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !6984
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !6985

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !6986
  br label %kmalloc_index.exit.i, !dbg !6986

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6987
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !6988
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !6989

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !6990
  br label %kmalloc_index.exit.i, !dbg !6990

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6991
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !6992
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !6993

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !6994
  br label %kmalloc_index.exit.i, !dbg !6994

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6995
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !6996
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !6997

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !6998
  br label %kmalloc_index.exit.i, !dbg !6998

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6999
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !7000
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !7001

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !7002
  br label %kmalloc_index.exit.i, !dbg !7002

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !7003
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !7004
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !7005

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !7006
  br label %kmalloc_index.exit.i, !dbg !7006

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !7007
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !7008
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !7009

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !7010
  br label %kmalloc_index.exit.i, !dbg !7010

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !7011
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !7012
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !7013

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !7014
  br label %kmalloc_index.exit.i, !dbg !7014

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !7015
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !7016
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !7017

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !7018
  br label %kmalloc_index.exit.i, !dbg !7018

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !7019
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !7020
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !7021

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !7022
  br label %kmalloc_index.exit.i, !dbg !7022

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !7023, !srcloc !4906
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 102) #11, !dbg !7024, !srcloc !4910
  unreachable, !dbg !7025

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !7026
  store i32 %59, i32* %index.i, align 4, !dbg !7027
  %60 = load i32, i32* %index.i, align 4, !dbg !7028
  %tobool.i = icmp ne i32 %60, 0, !dbg !7028
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !7029

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !7030
  br label %kmalloc.exit, !dbg !7030

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !7031
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !7032
  %and.i.i = and i32 %62, 17, !dbg !7032
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !7032
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !7032
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !7032
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !7032
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !7033

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !7034
  br label %kmalloc_type.exit.i, !dbg !7034

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !7035
  %and2.i.i = and i32 %63, 1, !dbg !7036
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !7035
  %64 = zext i1 %tobool3.i.i to i64, !dbg !7035
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !7035
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !7037
  br label %kmalloc_type.exit.i, !dbg !7037

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !7038
  %idxprom.i = zext i32 %65 to i64, !dbg !7039
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !7039
  %66 = load i32, i32* %index.i, align 4, !dbg !7040
  %idxprom6.i = zext i32 %66 to i64, !dbg !7039
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !7039
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !7039
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !7041
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !7042
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !7043
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !7044
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #13, !dbg !7045
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !7045
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !7045
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !7045
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !7045
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !6845
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !7046
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !7047
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !7048
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !7049
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #13, !dbg !7050
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !7051
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !7052
  store i8* %76, i8** %retval.i, align 8, !dbg !7053
  br label %kmalloc.exit, !dbg !7053

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !7054
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !7055
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #13, !dbg !7056
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !7056
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !7056
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !7056
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !7056
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !7057
  br label %kmalloc.exit, !dbg !7057

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !7058
  store i8* %79, i8** %retval, align 8, !dbg !7059
  br label %return, !dbg !7059

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !7060
  %81 = load i32, i32* %flags.addr, align 4, !dbg !7061
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #9, !dbg !7062
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !7062
  %maskedptr = and i64 %ptrint, 7, !dbg !7062
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !7062
  call void @llvm.assume(i1 %maskcond), !dbg !7062
  store i8* %call9, i8** %retval, align 8, !dbg !7063
  br label %return, !dbg !7063

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !7064
  ret i8* %82, !dbg !7064
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @i2c_get_adapdata(%struct.i2c_adapter* %adap) #2 !dbg !7065 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !7070, metadata !DIExpression()), !dbg !7071
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !7072
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 9, !dbg !7073
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #9, !dbg !7074
  ret i8* %call, !dbg !7075
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #2 !dbg !7076 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !7080, metadata !DIExpression()), !dbg !7081
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !7082
  %tobool = trunc i8 %0 to i1, !dbg !7082
  %lnot = xor i1 %tobool, true, !dbg !7082
  %lnot1 = xor i1 %lnot, true, !dbg !7082
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7082
  %conv = sext i32 %lnot.ext to i64, !dbg !7082
  %tobool2 = icmp ne i64 %conv, 0, !dbg !7082
  ret i1 %tobool2, !dbg !7083
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !7084 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7087, metadata !DIExpression()), !dbg !7088
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7089
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !7090
  %1 = load i8*, i8** %driver_data, align 8, !dbg !7090
  ret i8* %1, !dbg !7091
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !7092 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7095, metadata !DIExpression()), !dbg !7096
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !7097, metadata !DIExpression()), !dbg !7098
  %0 = load i8*, i8** %data.addr, align 8, !dbg !7099
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7100
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !7101
  store i8* %0, i8** %driver_data, align 8, !dbg !7102
  ret void, !dbg !7103
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.tc90522_state* @cfg_to_state(%struct.tc90522_config* %c) #2 !dbg !7104 {
entry:
  %c.addr = alloca %struct.tc90522_config*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.tc90522_state*, align 8
  store %struct.tc90522_config* %c, %struct.tc90522_config** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tc90522_config** %c.addr, metadata !7107, metadata !DIExpression()), !dbg !7108
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !7109, metadata !DIExpression()), !dbg !7111
  %0 = load %struct.tc90522_config*, %struct.tc90522_config** %c.addr, align 8, !dbg !7111
  %1 = bitcast %struct.tc90522_config* %0 to i8*, !dbg !7111
  store i8* %1, i8** %__mptr, align 8, !dbg !7111
  br label %do.body, !dbg !7111

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7112

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !7111
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !7111
  %3 = bitcast i8* %add.ptr to %struct.tc90522_state*, !dbg !7111
  store %struct.tc90522_state* %3, %struct.tc90522_state** %tmp, align 8, !dbg !7112
  %4 = load %struct.tc90522_state*, %struct.tc90522_state** %tmp, align 8, !dbg !7111
  ret %struct.tc90522_state* %4, !dbg !7114
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @i2c_get_clientdata(%struct.i2c_client* %client) #2 !dbg !7115 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !7120, metadata !DIExpression()), !dbg !7121
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !7122
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %0, i32 0, i32 4, !dbg !7123
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #9, !dbg !7124
  ret i8* %call, !dbg !7125
}

; Function Attrs: noredzone
declare dso_local void @i2c_del_adapter(%struct.i2c_adapter*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind willreturn }
attributes #8 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }
attributes #11 = { nounwind }
attributes #12 = { noredzone nounwind readnone }
attributes #13 = { noredzone nounwind }
attributes #14 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4541, !4542, !4543, !4544}
!llvm.ident = !{!4545}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tc90522_driver_init221", scope: !2, file: !3, line: 849, type: !321, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !315, globals: !4381, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/dvb-frontends/tc90522.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !18, !24, !30, !39, !47, !53, !59, !66, !74, !80, !94, !99, !108, !142, !152, !159, !175, !180, !184, !189, !204, !215, !228, !235, !240, !246, !267, !273, !277, !285, !297, !304, !309}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !12, line: 15, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!17 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !19, line: 54, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !25, line: 26, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
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
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !48, line: 16, baseType: !7, size: 32, elements: !49)
!48 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!49 = !{!50, !51, !52}
!50 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!51 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!52 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
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
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "i2c_alert_protocol", file: !95, line: 215, baseType: !7, size: 32, elements: !96)
!95 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!96 = !{!97, !98}
!97 = !DIEnumerator(name: "I2C_PROTOCOL_SMBUS_ALERT", value: 0, isUnsigned: true)
!98 = !DIEnumerator(name: "I2C_PROTOCOL_SMBUS_HOST_NOTIFY", value: 1, isUnsigned: true)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_prop_type", file: !100, line: 19, baseType: !7, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/property.h", directory: "/home/lizy2001/genbc/linux")
!101 = !{!102, !103, !104, !105, !106, !107}
!102 = !DIEnumerator(name: "DEV_PROP_U8", value: 0, isUnsigned: true)
!103 = !DIEnumerator(name: "DEV_PROP_U16", value: 1, isUnsigned: true)
!104 = !DIEnumerator(name: "DEV_PROP_U32", value: 2, isUnsigned: true)
!105 = !DIEnumerator(name: "DEV_PROP_U64", value: 3, isUnsigned: true)
!106 = !DIEnumerator(name: "DEV_PROP_STRING", value: 4, isUnsigned: true)
!107 = !DIEnumerator(name: "DEV_PROP_REF", value: 5, isUnsigned: true)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_caps", file: !109, line: 72, baseType: !7, size: 32, elements: !110)
!109 = !DIFile(filename: "./include/uapi/linux/dvb/frontend.h", directory: "/home/lizy2001/genbc/linux")
!110 = !{!111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141}
!111 = !DIEnumerator(name: "FE_IS_STUPID", value: 0, isUnsigned: true)
!112 = !DIEnumerator(name: "FE_CAN_INVERSION_AUTO", value: 1, isUnsigned: true)
!113 = !DIEnumerator(name: "FE_CAN_FEC_1_2", value: 2, isUnsigned: true)
!114 = !DIEnumerator(name: "FE_CAN_FEC_2_3", value: 4, isUnsigned: true)
!115 = !DIEnumerator(name: "FE_CAN_FEC_3_4", value: 8, isUnsigned: true)
!116 = !DIEnumerator(name: "FE_CAN_FEC_4_5", value: 16, isUnsigned: true)
!117 = !DIEnumerator(name: "FE_CAN_FEC_5_6", value: 32, isUnsigned: true)
!118 = !DIEnumerator(name: "FE_CAN_FEC_6_7", value: 64, isUnsigned: true)
!119 = !DIEnumerator(name: "FE_CAN_FEC_7_8", value: 128, isUnsigned: true)
!120 = !DIEnumerator(name: "FE_CAN_FEC_8_9", value: 256, isUnsigned: true)
!121 = !DIEnumerator(name: "FE_CAN_FEC_AUTO", value: 512, isUnsigned: true)
!122 = !DIEnumerator(name: "FE_CAN_QPSK", value: 1024, isUnsigned: true)
!123 = !DIEnumerator(name: "FE_CAN_QAM_16", value: 2048, isUnsigned: true)
!124 = !DIEnumerator(name: "FE_CAN_QAM_32", value: 4096, isUnsigned: true)
!125 = !DIEnumerator(name: "FE_CAN_QAM_64", value: 8192, isUnsigned: true)
!126 = !DIEnumerator(name: "FE_CAN_QAM_128", value: 16384, isUnsigned: true)
!127 = !DIEnumerator(name: "FE_CAN_QAM_256", value: 32768, isUnsigned: true)
!128 = !DIEnumerator(name: "FE_CAN_QAM_AUTO", value: 65536, isUnsigned: true)
!129 = !DIEnumerator(name: "FE_CAN_TRANSMISSION_MODE_AUTO", value: 131072, isUnsigned: true)
!130 = !DIEnumerator(name: "FE_CAN_BANDWIDTH_AUTO", value: 262144, isUnsigned: true)
!131 = !DIEnumerator(name: "FE_CAN_GUARD_INTERVAL_AUTO", value: 524288, isUnsigned: true)
!132 = !DIEnumerator(name: "FE_CAN_HIERARCHY_AUTO", value: 1048576, isUnsigned: true)
!133 = !DIEnumerator(name: "FE_CAN_8VSB", value: 2097152, isUnsigned: true)
!134 = !DIEnumerator(name: "FE_CAN_16VSB", value: 4194304, isUnsigned: true)
!135 = !DIEnumerator(name: "FE_HAS_EXTENDED_CAPS", value: 8388608, isUnsigned: true)
!136 = !DIEnumerator(name: "FE_CAN_MULTISTREAM", value: 67108864, isUnsigned: true)
!137 = !DIEnumerator(name: "FE_CAN_TURBO_FEC", value: 134217728, isUnsigned: true)
!138 = !DIEnumerator(name: "FE_CAN_2G_MODULATION", value: 268435456, isUnsigned: true)
!139 = !DIEnumerator(name: "FE_NEEDS_BENDING", value: 536870912, isUnsigned: true)
!140 = !DIEnumerator(name: "FE_CAN_RECOVER", value: 1073741824, isUnsigned: true)
!141 = !DIEnumerator(name: "FE_CAN_MUTE_TS", value: 2147483648, isUnsigned: true)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_status", file: !109, line: 252, baseType: !7, size: 32, elements: !143)
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151}
!144 = !DIEnumerator(name: "FE_NONE", value: 0, isUnsigned: true)
!145 = !DIEnumerator(name: "FE_HAS_SIGNAL", value: 1, isUnsigned: true)
!146 = !DIEnumerator(name: "FE_HAS_CARRIER", value: 2, isUnsigned: true)
!147 = !DIEnumerator(name: "FE_HAS_VITERBI", value: 4, isUnsigned: true)
!148 = !DIEnumerator(name: "FE_HAS_SYNC", value: 8, isUnsigned: true)
!149 = !DIEnumerator(name: "FE_HAS_LOCK", value: 16, isUnsigned: true)
!150 = !DIEnumerator(name: "FE_TIMEDOUT", value: 32, isUnsigned: true)
!151 = !DIEnumerator(name: "FE_REINIT", value: 64, isUnsigned: true)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dvbfe_algo", file: !153, line: 144, baseType: !7, size: 32, elements: !154)
!153 = !DIFile(filename: "./include/media/dvb_frontend.h", directory: "/home/lizy2001/genbc/linux")
!154 = !{!155, !156, !157, !158}
!155 = !DIEnumerator(name: "DVBFE_ALGO_HW", value: 1, isUnsigned: true)
!156 = !DIEnumerator(name: "DVBFE_ALGO_SW", value: 2, isUnsigned: true)
!157 = !DIEnumerator(name: "DVBFE_ALGO_CUSTOM", value: 4, isUnsigned: true)
!158 = !DIEnumerator(name: "DVBFE_ALGO_RECOVERY", value: 2147483648, isUnsigned: true)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_modulation", file: !109, line: 338, baseType: !7, size: 32, elements: !160)
!160 = !{!161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174}
!161 = !DIEnumerator(name: "QPSK", value: 0, isUnsigned: true)
!162 = !DIEnumerator(name: "QAM_16", value: 1, isUnsigned: true)
!163 = !DIEnumerator(name: "QAM_32", value: 2, isUnsigned: true)
!164 = !DIEnumerator(name: "QAM_64", value: 3, isUnsigned: true)
!165 = !DIEnumerator(name: "QAM_128", value: 4, isUnsigned: true)
!166 = !DIEnumerator(name: "QAM_256", value: 5, isUnsigned: true)
!167 = !DIEnumerator(name: "QAM_AUTO", value: 6, isUnsigned: true)
!168 = !DIEnumerator(name: "VSB_8", value: 7, isUnsigned: true)
!169 = !DIEnumerator(name: "VSB_16", value: 8, isUnsigned: true)
!170 = !DIEnumerator(name: "PSK_8", value: 9, isUnsigned: true)
!171 = !DIEnumerator(name: "APSK_16", value: 10, isUnsigned: true)
!172 = !DIEnumerator(name: "APSK_32", value: 11, isUnsigned: true)
!173 = !DIEnumerator(name: "DQPSK", value: 12, isUnsigned: true)
!174 = !DIEnumerator(name: "QAM_4_NR", value: 13, isUnsigned: true)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_sec_voltage", file: !109, line: 208, baseType: !7, size: 32, elements: !176)
!176 = !{!177, !178, !179}
!177 = !DIEnumerator(name: "SEC_VOLTAGE_13", value: 0, isUnsigned: true)
!178 = !DIEnumerator(name: "SEC_VOLTAGE_18", value: 1, isUnsigned: true)
!179 = !DIEnumerator(name: "SEC_VOLTAGE_OFF", value: 2, isUnsigned: true)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_sec_tone_mode", file: !109, line: 220, baseType: !7, size: 32, elements: !181)
!181 = !{!182, !183}
!182 = !DIEnumerator(name: "SEC_TONE_ON", value: 0, isUnsigned: true)
!183 = !DIEnumerator(name: "SEC_TONE_OFF", value: 1, isUnsigned: true)
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_spectral_inversion", file: !109, line: 276, baseType: !7, size: 32, elements: !185)
!185 = !{!186, !187, !188}
!186 = !DIEnumerator(name: "INVERSION_OFF", value: 0, isUnsigned: true)
!187 = !DIEnumerator(name: "INVERSION_ON", value: 1, isUnsigned: true)
!188 = !DIEnumerator(name: "INVERSION_AUTO", value: 2, isUnsigned: true)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_code_rate", file: !109, line: 302, baseType: !7, size: 32, elements: !190)
!190 = !{!191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203}
!191 = !DIEnumerator(name: "FEC_NONE", value: 0, isUnsigned: true)
!192 = !DIEnumerator(name: "FEC_1_2", value: 1, isUnsigned: true)
!193 = !DIEnumerator(name: "FEC_2_3", value: 2, isUnsigned: true)
!194 = !DIEnumerator(name: "FEC_3_4", value: 3, isUnsigned: true)
!195 = !DIEnumerator(name: "FEC_4_5", value: 4, isUnsigned: true)
!196 = !DIEnumerator(name: "FEC_5_6", value: 5, isUnsigned: true)
!197 = !DIEnumerator(name: "FEC_6_7", value: 6, isUnsigned: true)
!198 = !DIEnumerator(name: "FEC_7_8", value: 7, isUnsigned: true)
!199 = !DIEnumerator(name: "FEC_8_9", value: 8, isUnsigned: true)
!200 = !DIEnumerator(name: "FEC_AUTO", value: 9, isUnsigned: true)
!201 = !DIEnumerator(name: "FEC_3_5", value: 10, isUnsigned: true)
!202 = !DIEnumerator(name: "FEC_9_10", value: 11, isUnsigned: true)
!203 = !DIEnumerator(name: "FEC_2_5", value: 12, isUnsigned: true)
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_transmit_mode", file: !109, line: 381, baseType: !7, size: 32, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !211, !212, !213, !214}
!206 = !DIEnumerator(name: "TRANSMISSION_MODE_2K", value: 0, isUnsigned: true)
!207 = !DIEnumerator(name: "TRANSMISSION_MODE_8K", value: 1, isUnsigned: true)
!208 = !DIEnumerator(name: "TRANSMISSION_MODE_AUTO", value: 2, isUnsigned: true)
!209 = !DIEnumerator(name: "TRANSMISSION_MODE_4K", value: 3, isUnsigned: true)
!210 = !DIEnumerator(name: "TRANSMISSION_MODE_1K", value: 4, isUnsigned: true)
!211 = !DIEnumerator(name: "TRANSMISSION_MODE_16K", value: 5, isUnsigned: true)
!212 = !DIEnumerator(name: "TRANSMISSION_MODE_32K", value: 6, isUnsigned: true)
!213 = !DIEnumerator(name: "TRANSMISSION_MODE_C1", value: 7, isUnsigned: true)
!214 = !DIEnumerator(name: "TRANSMISSION_MODE_C3780", value: 8, isUnsigned: true)
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_guard_interval", file: !109, line: 410, baseType: !7, size: 32, elements: !216)
!216 = !{!217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227}
!217 = !DIEnumerator(name: "GUARD_INTERVAL_1_32", value: 0, isUnsigned: true)
!218 = !DIEnumerator(name: "GUARD_INTERVAL_1_16", value: 1, isUnsigned: true)
!219 = !DIEnumerator(name: "GUARD_INTERVAL_1_8", value: 2, isUnsigned: true)
!220 = !DIEnumerator(name: "GUARD_INTERVAL_1_4", value: 3, isUnsigned: true)
!221 = !DIEnumerator(name: "GUARD_INTERVAL_AUTO", value: 4, isUnsigned: true)
!222 = !DIEnumerator(name: "GUARD_INTERVAL_1_128", value: 5, isUnsigned: true)
!223 = !DIEnumerator(name: "GUARD_INTERVAL_19_128", value: 6, isUnsigned: true)
!224 = !DIEnumerator(name: "GUARD_INTERVAL_19_256", value: 7, isUnsigned: true)
!225 = !DIEnumerator(name: "GUARD_INTERVAL_PN420", value: 8, isUnsigned: true)
!226 = !DIEnumerator(name: "GUARD_INTERVAL_PN595", value: 9, isUnsigned: true)
!227 = !DIEnumerator(name: "GUARD_INTERVAL_PN945", value: 10, isUnsigned: true)
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_hierarchy", file: !109, line: 434, baseType: !7, size: 32, elements: !229)
!229 = !{!230, !231, !232, !233, !234}
!230 = !DIEnumerator(name: "HIERARCHY_NONE", value: 0, isUnsigned: true)
!231 = !DIEnumerator(name: "HIERARCHY_1", value: 1, isUnsigned: true)
!232 = !DIEnumerator(name: "HIERARCHY_2", value: 2, isUnsigned: true)
!233 = !DIEnumerator(name: "HIERARCHY_4", value: 3, isUnsigned: true)
!234 = !DIEnumerator(name: "HIERARCHY_AUTO", value: 4, isUnsigned: true)
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_pilot", file: !109, line: 562, baseType: !7, size: 32, elements: !236)
!236 = !{!237, !238, !239}
!237 = !DIEnumerator(name: "PILOT_ON", value: 0, isUnsigned: true)
!238 = !DIEnumerator(name: "PILOT_OFF", value: 1, isUnsigned: true)
!239 = !DIEnumerator(name: "PILOT_AUTO", value: 2, isUnsigned: true)
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_rolloff", file: !109, line: 579, baseType: !7, size: 32, elements: !241)
!241 = !{!242, !243, !244, !245}
!242 = !DIEnumerator(name: "ROLLOFF_35", value: 0, isUnsigned: true)
!243 = !DIEnumerator(name: "ROLLOFF_20", value: 1, isUnsigned: true)
!244 = !DIEnumerator(name: "ROLLOFF_25", value: 2, isUnsigned: true)
!245 = !DIEnumerator(name: "ROLLOFF_AUTO", value: 3, isUnsigned: true)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_delivery_system", file: !109, line: 628, baseType: !7, size: 32, elements: !247)
!247 = !{!248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266}
!248 = !DIEnumerator(name: "SYS_UNDEFINED", value: 0, isUnsigned: true)
!249 = !DIEnumerator(name: "SYS_DVBC_ANNEX_A", value: 1, isUnsigned: true)
!250 = !DIEnumerator(name: "SYS_DVBC_ANNEX_B", value: 2, isUnsigned: true)
!251 = !DIEnumerator(name: "SYS_DVBT", value: 3, isUnsigned: true)
!252 = !DIEnumerator(name: "SYS_DSS", value: 4, isUnsigned: true)
!253 = !DIEnumerator(name: "SYS_DVBS", value: 5, isUnsigned: true)
!254 = !DIEnumerator(name: "SYS_DVBS2", value: 6, isUnsigned: true)
!255 = !DIEnumerator(name: "SYS_DVBH", value: 7, isUnsigned: true)
!256 = !DIEnumerator(name: "SYS_ISDBT", value: 8, isUnsigned: true)
!257 = !DIEnumerator(name: "SYS_ISDBS", value: 9, isUnsigned: true)
!258 = !DIEnumerator(name: "SYS_ISDBC", value: 10, isUnsigned: true)
!259 = !DIEnumerator(name: "SYS_ATSC", value: 11, isUnsigned: true)
!260 = !DIEnumerator(name: "SYS_ATSCMH", value: 12, isUnsigned: true)
!261 = !DIEnumerator(name: "SYS_DTMB", value: 13, isUnsigned: true)
!262 = !DIEnumerator(name: "SYS_CMMB", value: 14, isUnsigned: true)
!263 = !DIEnumerator(name: "SYS_DAB", value: 15, isUnsigned: true)
!264 = !DIEnumerator(name: "SYS_DVBT2", value: 16, isUnsigned: true)
!265 = !DIEnumerator(name: "SYS_TURBO", value: 17, isUnsigned: true)
!266 = !DIEnumerator(name: "SYS_DVBC_ANNEX_C", value: 18, isUnsigned: true)
!267 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_interleaving", file: !109, line: 451, baseType: !7, size: 32, elements: !268)
!268 = !{!269, !270, !271, !272}
!269 = !DIEnumerator(name: "INTERLEAVING_NONE", value: 0, isUnsigned: true)
!270 = !DIEnumerator(name: "INTERLEAVING_AUTO", value: 1, isUnsigned: true)
!271 = !DIEnumerator(name: "INTERLEAVING_240", value: 2, isUnsigned: true)
!272 = !DIEnumerator(name: "INTERLEAVING_720", value: 3, isUnsigned: true)
!273 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_sec_mini_cmd", file: !109, line: 233, baseType: !7, size: 32, elements: !274)
!274 = !{!275, !276}
!275 = !DIEnumerator(name: "SEC_MINI_A", value: 0, isUnsigned: true)
!276 = !DIEnumerator(name: "SEC_MINI_B", value: 1, isUnsigned: true)
!277 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dvbfe_search", file: !153, line: 173, baseType: !7, size: 32, elements: !278)
!278 = !{!279, !280, !281, !282, !283, !284}
!279 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_SUCCESS", value: 1, isUnsigned: true)
!280 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_ASLEEP", value: 2, isUnsigned: true)
!281 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_FAILED", value: 4, isUnsigned: true)
!282 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_INVALID", value: 8, isUnsigned: true)
!283 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_AGAIN", value: 16, isUnsigned: true)
!284 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_ERROR", value: 2147483648, isUnsigned: true)
!285 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dvb_device_type", file: !286, line: 57, baseType: !7, size: 32, elements: !287)
!286 = !DIFile(filename: "./include/media/dvbdev.h", directory: "/home/lizy2001/genbc/linux")
!287 = !{!288, !289, !290, !291, !292, !293, !294, !295, !296}
!288 = !DIEnumerator(name: "DVB_DEVICE_SEC", value: 0, isUnsigned: true)
!289 = !DIEnumerator(name: "DVB_DEVICE_FRONTEND", value: 1, isUnsigned: true)
!290 = !DIEnumerator(name: "DVB_DEVICE_DEMUX", value: 2, isUnsigned: true)
!291 = !DIEnumerator(name: "DVB_DEVICE_DVR", value: 3, isUnsigned: true)
!292 = !DIEnumerator(name: "DVB_DEVICE_CA", value: 4, isUnsigned: true)
!293 = !DIEnumerator(name: "DVB_DEVICE_NET", value: 5, isUnsigned: true)
!294 = !DIEnumerator(name: "DVB_DEVICE_VIDEO", value: 6, isUnsigned: true)
!295 = !DIEnumerator(name: "DVB_DEVICE_AUDIO", value: 7, isUnsigned: true)
!296 = !DIEnumerator(name: "DVB_DEVICE_OSD", value: 8, isUnsigned: true)
!297 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !298, line: 305, baseType: !7, size: 32, elements: !299)
!298 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!299 = !{!300, !301, !302, !303}
!300 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!301 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!302 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!303 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!304 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !305, line: 10, baseType: !7, size: 32, elements: !306)
!305 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!306 = !{!307, !308}
!307 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!308 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!309 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fecap_scale_params", file: !109, line: 752, baseType: !7, size: 32, elements: !310)
!310 = !{!311, !312, !313, !314}
!311 = !DIEnumerator(name: "FE_SCALE_NOT_AVAILABLE", value: 0, isUnsigned: true)
!312 = !DIEnumerator(name: "FE_SCALE_DECIBEL", value: 1, isUnsigned: true)
!313 = !DIEnumerator(name: "FE_SCALE_RELATIVE", value: 2, isUnsigned: true)
!314 = !DIEnumerator(name: "FE_SCALE_COUNTER", value: 3, isUnsigned: true)
!315 = !{!316, !319, !321, !322, !328, !329}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !318, line: 76, flags: DIFlagFwdDecl)
!318 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !320, line: 148, baseType: !7)
!320 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !324, line: 17, baseType: !325)
!324 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !326, line: 21, baseType: !327)
!326 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!327 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!328 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tc90522_state", file: !3, line: 31, size: 18112, elements: !331)
!331 = !{!332, !4365, !4366, !4379, !4380}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !330, file: !3, line: 32, baseType: !333, size: 192)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tc90522_config", file: !334, line: 25, size: 192, elements: !335)
!334 = !DIFile(filename: "drivers/media/dvb-frontends/tc90522.h", directory: "/home/lizy2001/genbc/linux")
!335 = !{!336, !4242, !4364}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "fe", scope: !333, file: !334, line: 27, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend", file: !153, line: 686, size: 10240, elements: !339)
!339 = !{!340, !354, !654, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4240, !4241}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !338, file: !153, line: 687, baseType: !341, size: 32)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !342, line: 19, size: 32, elements: !343)
!342 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!343 = !{!344}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !341, file: !342, line: 20, baseType: !345, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !346, line: 113, baseType: !347)
!346 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !346, line: 111, size: 32, elements: !348)
!348 = !{!349}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !347, file: !346, line: 112, baseType: !350, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !320, line: 168, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !320, line: 166, size: 32, elements: !352)
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !351, file: !320, line: 167, baseType: !328, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !338, file: !153, line: 688, baseType: !355, size: 6016, offset: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_ops", file: !153, line: 435, size: 6016, elements: !356)
!356 = !{!357, !375, !379, !383, !384, !385, !389, !390, !396, !404, !408, !409, !419, !504, !508, !513, !521, !522, !523, !524, !536, !547, !551, !555, !559, !564, !569, !573, !574, !575, !579, !635}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !355, file: !153, line: 436, baseType: !358, size: 1280)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_internal_info", file: !153, line: 338, size: 1280, elements: !359)
!359 = !{!360, !365, !368, !369, !370, !371, !372, !373, !374}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !358, file: !153, line: 339, baseType: !361, size: 1024)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 1024, elements: !363)
!362 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!363 = !{!364}
!364 = !DISubrange(count: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !358, file: !153, line: 340, baseType: !366, size: 32, offset: 1024)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !324, line: 21, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !326, line: 27, baseType: !7)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !358, file: !153, line: 341, baseType: !366, size: 32, offset: 1056)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_stepsize_hz", scope: !358, file: !153, line: 342, baseType: !366, size: 32, offset: 1088)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_tolerance_hz", scope: !358, file: !153, line: 343, baseType: !366, size: 32, offset: 1120)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_min", scope: !358, file: !153, line: 344, baseType: !366, size: 32, offset: 1152)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_max", scope: !358, file: !153, line: 345, baseType: !366, size: 32, offset: 1184)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_tolerance", scope: !358, file: !153, line: 346, baseType: !366, size: 32, offset: 1216)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !358, file: !153, line: 347, baseType: !108, size: 32, offset: 1248)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "delsys", scope: !355, file: !153, line: 438, baseType: !376, size: 64, offset: 1280)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 64, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 8)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !355, file: !153, line: 440, baseType: !380, size: 64, offset: 1344)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !337}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !355, file: !153, line: 441, baseType: !380, size: 64, offset: 1408)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "release_sec", scope: !355, file: !153, line: 442, baseType: !380, size: 64, offset: 1472)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !355, file: !153, line: 444, baseType: !386, size: 64, offset: 1536)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{!328, !337}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !355, file: !153, line: 445, baseType: !386, size: 64, offset: 1600)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !355, file: !153, line: 447, baseType: !391, size: 64, offset: 1664)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{!328, !337, !394, !328}
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !355, file: !153, line: 450, baseType: !397, size: 64, offset: 1728)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{!328, !337, !400, !7, !402, !403}
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !320, line: 30, baseType: !401)
!401 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend_algo", scope: !355, file: !153, line: 457, baseType: !405, size: 64, offset: 1792)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{!152, !337}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "set_frontend", scope: !355, file: !153, line: 460, baseType: !386, size: 64, offset: 1856)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "get_tune_settings", scope: !355, file: !153, line: 461, baseType: !410, size: 64, offset: 1920)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!328, !337, !413}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_tune_settings", file: !153, line: 69, size: 96, elements: !415)
!415 = !{!416, !417, !418}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !414, file: !153, line: 70, baseType: !328, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !414, file: !153, line: 71, baseType: !328, size: 32, offset: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "max_drift", scope: !414, file: !153, line: 72, baseType: !328, size: 32, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend", scope: !355, file: !153, line: 463, baseType: !420, size: 64, offset: 1984)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!328, !337, !423}
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_frontend_properties", file: !153, line: 586, size: 3648, elements: !425)
!425 = !{!426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !497, !498, !499, !500, !501, !502, !503}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !424, file: !153, line: 587, baseType: !366, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !424, file: !153, line: 588, baseType: !159, size: 32, offset: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !424, file: !153, line: 590, baseType: !175, size: 32, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "sectone", scope: !424, file: !153, line: 591, baseType: !180, size: 32, offset: 96)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !424, file: !153, line: 592, baseType: !184, size: 32, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !424, file: !153, line: 593, baseType: !189, size: 32, offset: 160)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "transmission_mode", scope: !424, file: !153, line: 594, baseType: !204, size: 32, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_hz", scope: !424, file: !153, line: 595, baseType: !366, size: 32, offset: 224)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "guard_interval", scope: !424, file: !153, line: 596, baseType: !215, size: 32, offset: 256)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy", scope: !424, file: !153, line: 597, baseType: !228, size: 32, offset: 288)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !424, file: !153, line: 598, baseType: !366, size: 32, offset: 320)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_HP", scope: !424, file: !153, line: 599, baseType: !189, size: 32, offset: 352)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_LP", scope: !424, file: !153, line: 600, baseType: !189, size: 32, offset: 384)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "pilot", scope: !424, file: !153, line: 602, baseType: !235, size: 32, offset: 416)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "rolloff", scope: !424, file: !153, line: 603, baseType: !240, size: 32, offset: 448)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !424, file: !153, line: 605, baseType: !246, size: 32, offset: 480)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !424, file: !153, line: 607, baseType: !267, size: 32, offset: 512)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_partial_reception", scope: !424, file: !153, line: 610, baseType: !323, size: 8, offset: 544)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_mode", scope: !424, file: !153, line: 611, baseType: !323, size: 8, offset: 552)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_subchannel", scope: !424, file: !153, line: 612, baseType: !323, size: 8, offset: 560)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_idx", scope: !424, file: !153, line: 613, baseType: !366, size: 32, offset: 576)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_count", scope: !424, file: !153, line: 614, baseType: !366, size: 32, offset: 608)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_layer_enabled", scope: !424, file: !153, line: 615, baseType: !323, size: 8, offset: 640)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "layer", scope: !424, file: !153, line: 621, baseType: !450, size: 384, offset: 672)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 384, elements: !457)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !424, file: !153, line: 616, size: 128, elements: !452)
!452 = !{!453, !454, !455, !456}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "segment_count", scope: !451, file: !153, line: 617, baseType: !323, size: 8)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "fec", scope: !451, file: !153, line: 618, baseType: !189, size: 32, offset: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !451, file: !153, line: 619, baseType: !159, size: 32, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !451, file: !153, line: 620, baseType: !323, size: 8, offset: 96)
!457 = !{!458}
!458 = !DISubrange(count: 3)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !424, file: !153, line: 624, baseType: !366, size: 32, offset: 1056)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling_sequence_index", scope: !424, file: !153, line: 627, baseType: !366, size: 32, offset: 1088)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_fic_ver", scope: !424, file: !153, line: 630, baseType: !323, size: 8, offset: 1120)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_parade_id", scope: !424, file: !153, line: 631, baseType: !323, size: 8, offset: 1128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_nog", scope: !424, file: !153, line: 632, baseType: !323, size: 8, offset: 1136)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_tnog", scope: !424, file: !153, line: 633, baseType: !323, size: 8, offset: 1144)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sgn", scope: !424, file: !153, line: 634, baseType: !323, size: 8, offset: 1152)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_prc", scope: !424, file: !153, line: 635, baseType: !323, size: 8, offset: 1160)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_mode", scope: !424, file: !153, line: 637, baseType: !323, size: 8, offset: 1168)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_ensemble", scope: !424, file: !153, line: 638, baseType: !323, size: 8, offset: 1176)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_pri", scope: !424, file: !153, line: 639, baseType: !323, size: 8, offset: 1184)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_sec", scope: !424, file: !153, line: 640, baseType: !323, size: 8, offset: 1192)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_block_mode", scope: !424, file: !153, line: 641, baseType: !323, size: 8, offset: 1200)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_a", scope: !424, file: !153, line: 642, baseType: !323, size: 8, offset: 1208)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_b", scope: !424, file: !153, line: 643, baseType: !323, size: 8, offset: 1216)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_c", scope: !424, file: !153, line: 644, baseType: !323, size: 8, offset: 1224)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_d", scope: !424, file: !153, line: 645, baseType: !323, size: 8, offset: 1232)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !424, file: !153, line: 647, baseType: !366, size: 32, offset: 1248)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !424, file: !153, line: 650, baseType: !478, size: 296, offset: 1280)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_fe_stats", file: !109, line: 825, size: 296, elements: !479)
!479 = !{!480, !481}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !478, file: !109, line: 826, baseType: !325, size: 8)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !478, file: !109, line: 827, baseType: !482, size: 288, offset: 8)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 288, elements: !495)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_stats", file: !109, line: 803, size: 72, elements: !484)
!484 = !{!485, !486}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !483, file: !109, line: 804, baseType: !325, size: 8)
!486 = !DIDerivedType(tag: DW_TAG_member, scope: !483, file: !109, line: 805, baseType: !487, size: 64, offset: 8)
!487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !483, file: !109, line: 805, size: 64, elements: !488)
!488 = !{!489, !492}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !487, file: !109, line: 806, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !326, line: 31, baseType: !491)
!491 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !487, file: !109, line: 807, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !326, line: 30, baseType: !494)
!494 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!495 = !{!496}
!496 = !DISubrange(count: 4)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "cnr", scope: !424, file: !153, line: 651, baseType: !478, size: 296, offset: 1576)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_error", scope: !424, file: !153, line: 652, baseType: !478, size: 296, offset: 1872)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_count", scope: !424, file: !153, line: 653, baseType: !478, size: 296, offset: 2168)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !424, file: !153, line: 654, baseType: !478, size: 296, offset: 2464)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !424, file: !153, line: 655, baseType: !478, size: 296, offset: 2760)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "block_error", scope: !424, file: !153, line: 656, baseType: !478, size: 296, offset: 3056)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !424, file: !153, line: 657, baseType: !478, size: 296, offset: 3352)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !355, file: !153, line: 466, baseType: !505, size: 64, offset: 2048)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!328, !337, !403}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "read_ber", scope: !355, file: !153, line: 467, baseType: !509, size: 64, offset: 2112)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!328, !337, !512}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "read_signal_strength", scope: !355, file: !153, line: 468, baseType: !514, size: 64, offset: 2176)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!328, !337, !517}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !324, line: 19, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !326, line: 24, baseType: !520)
!520 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "read_snr", scope: !355, file: !153, line: 469, baseType: !514, size: 64, offset: 2240)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "read_ucblocks", scope: !355, file: !153, line: 470, baseType: !509, size: 64, offset: 2304)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_reset_overload", scope: !355, file: !153, line: 472, baseType: !386, size: 64, offset: 2368)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_master_cmd", scope: !355, file: !153, line: 473, baseType: !525, size: 64, offset: 2432)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!328, !337, !528}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_master_cmd", file: !109, line: 173, size: 56, elements: !530)
!530 = !{!531, !535}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !529, file: !109, line: 174, baseType: !532, size: 48)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 48, elements: !533)
!533 = !{!534}
!534 = !DISubrange(count: 6)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !529, file: !109, line: 175, baseType: !325, size: 8, offset: 48)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_recv_slave_reply", scope: !355, file: !153, line: 474, baseType: !537, size: 64, offset: 2496)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!328, !337, !540}
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_slave_reply", file: !109, line: 195, size: 96, elements: !542)
!542 = !{!543, !545, !546}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !541, file: !109, line: 196, baseType: !544, size: 32)
!544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 32, elements: !495)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !541, file: !109, line: 197, baseType: !325, size: 8, offset: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !541, file: !109, line: 198, baseType: !328, size: 32, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_burst", scope: !355, file: !153, line: 475, baseType: !548, size: 64, offset: 2560)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!328, !337, !273}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "set_tone", scope: !355, file: !153, line: 477, baseType: !552, size: 64, offset: 2624)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!328, !337, !180}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltage", scope: !355, file: !153, line: 478, baseType: !556, size: 64, offset: 2688)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!328, !337, !175}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "enable_high_lnb_voltage", scope: !355, file: !153, line: 480, baseType: !560, size: 64, offset: 2752)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!328, !337, !563}
!563 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "dishnetwork_send_legacy_command", scope: !355, file: !153, line: 481, baseType: !565, size: 64, offset: 2816)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!328, !337, !568}
!568 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !355, file: !153, line: 482, baseType: !570, size: 64, offset: 2880)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!328, !337, !328}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "ts_bus_ctrl", scope: !355, file: !153, line: 483, baseType: !570, size: 64, offset: 2944)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "set_lna", scope: !355, file: !153, line: 484, baseType: !386, size: 64, offset: 3008)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !355, file: !153, line: 490, baseType: !576, size: 64, offset: 3072)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!277, !337}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_ops", scope: !355, file: !153, line: 492, baseType: !580, size: 2304, offset: 3136)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_ops", file: !153, line: 226, size: 2304, elements: !581)
!581 = !{!582, !592, !593, !594, !595, !596, !597, !598, !610, !614, !615, !616, !617, !618, !619, !626, !630, !634}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !580, file: !153, line: 228, baseType: !583, size: 1216)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_info", file: !153, line: 88, size: 1216, elements: !584)
!584 = !{!585, !586, !587, !588, !589, !590, !591}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !583, file: !153, line: 89, baseType: !361, size: 1024)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !583, file: !153, line: 91, baseType: !366, size: 32, offset: 1024)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !583, file: !153, line: 92, baseType: !366, size: 32, offset: 1056)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_step_hz", scope: !583, file: !153, line: 93, baseType: !366, size: 32, offset: 1088)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_min", scope: !583, file: !153, line: 95, baseType: !366, size: 32, offset: 1120)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_max", scope: !583, file: !153, line: 96, baseType: !366, size: 32, offset: 1152)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_step", scope: !583, file: !153, line: 97, baseType: !366, size: 32, offset: 1184)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !580, file: !153, line: 230, baseType: !380, size: 64, offset: 1216)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !580, file: !153, line: 231, baseType: !386, size: 64, offset: 1280)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !580, file: !153, line: 232, baseType: !386, size: 64, offset: 1344)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !580, file: !153, line: 233, baseType: !386, size: 64, offset: 1408)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !580, file: !153, line: 234, baseType: !386, size: 64, offset: 1472)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !580, file: !153, line: 237, baseType: !386, size: 64, offset: 1536)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "set_analog_params", scope: !580, file: !153, line: 238, baseType: !599, size: 64, offset: 1600)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!328, !337, !602}
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_parameters", file: !153, line: 114, size: 192, elements: !604)
!604 = !{!605, !606, !607, !608}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !603, file: !153, line: 115, baseType: !7, size: 32)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !603, file: !153, line: 116, baseType: !7, size: 32, offset: 32)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !603, file: !153, line: 117, baseType: !7, size: 32, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !603, file: !153, line: 118, baseType: !609, size: 64, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !324, line: 23, baseType: !490)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !580, file: !153, line: 240, baseType: !611, size: 64, offset: 1664)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!328, !337, !321}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "get_frequency", scope: !580, file: !153, line: 242, baseType: !509, size: 64, offset: 1728)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "get_bandwidth", scope: !580, file: !153, line: 243, baseType: !509, size: 64, offset: 1792)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "get_if_frequency", scope: !580, file: !153, line: 244, baseType: !509, size: 64, offset: 1856)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !580, file: !153, line: 248, baseType: !509, size: 64, offset: 1920)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "get_rf_strength", scope: !580, file: !153, line: 249, baseType: !514, size: 64, offset: 1984)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !580, file: !153, line: 250, baseType: !620, size: 64, offset: 2048)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!328, !337, !623}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !324, line: 20, baseType: !625)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !326, line: 26, baseType: !328)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "calc_regs", scope: !580, file: !153, line: 258, baseType: !627, size: 64, offset: 2112)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!328, !337, !322, !328}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "set_frequency", scope: !580, file: !153, line: 267, baseType: !631, size: 64, offset: 2176)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!328, !337, !366}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "set_bandwidth", scope: !580, file: !153, line: 268, baseType: !631, size: 64, offset: 2240)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "analog_ops", scope: !355, file: !153, line: 493, baseType: !636, size: 576, offset: 5440)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_ops", file: !153, line: 302, size: 576, elements: !637)
!637 = !{!638, !643, !647, !648, !649, !650, !651, !652, !653}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !636, file: !153, line: 304, baseType: !639, size: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_info", file: !153, line: 276, size: 64, elements: !640)
!640 = !{!641}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !639, file: !153, line: 277, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !636, file: !153, line: 306, baseType: !644, size: 64, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{null, !337, !602}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "has_signal", scope: !636, file: !153, line: 308, baseType: !514, size: 64, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !636, file: !153, line: 309, baseType: !620, size: 64, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_status", scope: !636, file: !153, line: 310, baseType: !380, size: 64, offset: 256)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !636, file: !153, line: 311, baseType: !380, size: 64, offset: 320)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !636, file: !153, line: 312, baseType: !380, size: 64, offset: 384)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !636, file: !153, line: 313, baseType: !570, size: 64, offset: 448)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !636, file: !153, line: 316, baseType: !611, size: 64, offset: 512)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "dvb", scope: !338, file: !153, line: 689, baseType: !655, size: 64, offset: 6080)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !286, line: 101, size: 960, elements: !657)
!657 = !{!658, !659, !665, !666, !669, !671, !672, !4208, !4209, !4210, !4229}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !656, file: !286, line: 102, baseType: !328, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !656, file: !286, line: 103, baseType: !660, size: 128, offset: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !320, line: 178, size: 128, elements: !661)
!661 = !{!662, !664}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !660, file: !320, line: 179, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !660, file: !320, line: 179, baseType: !663, size: 64, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !656, file: !286, line: 104, baseType: !660, size: 128, offset: 192)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !656, file: !286, line: 105, baseType: !667, size: 64, offset: 320)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !362)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !656, file: !286, line: 106, baseType: !670, size: 48, offset: 384)
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 48, elements: !533)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !656, file: !286, line: 107, baseType: !321, size: 64, offset: 448)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !656, file: !286, line: 109, baseType: !673, size: 64, offset: 512)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !60, line: 461, size: 5568, elements: !675)
!675 = !{!676, !3665, !3666, !3669, !3670, !3721, !3809, !3810, !3811, !3812, !3813, !3822, !3927, !3940, !4135, !4136, !4140, !4142, !4143, !4144, !4148, !4154, !4155, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4196, !4197, !4198, !4201, !4204, !4205, !4206, !4207}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !674, file: !60, line: 462, baseType: !677, size: 512)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !678, line: 64, size: 512, elements: !679)
!678 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!679 = !{!680, !681, !682, !684, !741, !3520, !3659, !3660, !3661, !3662, !3663, !3664}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !677, file: !678, line: 65, baseType: !667, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !677, file: !678, line: 66, baseType: !660, size: 128, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !677, file: !678, line: 67, baseType: !683, size: 64, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !677, file: !678, line: 68, baseType: !685, size: 64, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !678, line: 192, size: 704, elements: !687)
!687 = !{!688, !689, !705, !706}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !686, file: !678, line: 193, baseType: !660, size: 128)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !686, file: !678, line: 194, baseType: !690, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !691, line: 83, baseType: !692)
!691 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !691, line: 71, elements: !693)
!693 = !{!694}
!694 = !DIDerivedType(tag: DW_TAG_member, scope: !692, file: !691, line: 72, baseType: !695)
!695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !692, file: !691, line: 72, elements: !696)
!696 = !{!697}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !695, file: !691, line: 73, baseType: !698)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !691, line: 20, elements: !699)
!699 = !{!700}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !698, file: !691, line: 21, baseType: !701)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !702, line: 25, baseType: !703)
!702 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !702, line: 25, elements: !704)
!704 = !{}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !686, file: !678, line: 195, baseType: !677, size: 512, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !686, file: !678, line: 196, baseType: !707, size: 64, offset: 640)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !709)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !678, line: 156, size: 192, elements: !710)
!710 = !{!711, !716, !721}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !709, file: !678, line: 157, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !713)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!328, !685, !683}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !709, file: !678, line: 158, baseType: !717, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !718)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!667, !685, !683}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !709, file: !678, line: 159, baseType: !722, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !723)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!328, !685, !683, !726}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !678, line: 148, size: 20736, elements: !728)
!728 = !{!729, !731, !735, !736, !740}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !727, file: !678, line: 149, baseType: !730, size: 192)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 192, elements: !457)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !727, file: !678, line: 150, baseType: !732, size: 4096, offset: 192)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 4096, elements: !733)
!733 = !{!734}
!734 = !DISubrange(count: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !727, file: !678, line: 151, baseType: !328, size: 32, offset: 4288)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !727, file: !678, line: 152, baseType: !737, size: 16384, offset: 4320)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 16384, elements: !738)
!738 = !{!739}
!739 = !DISubrange(count: 2048)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !727, file: !678, line: 153, baseType: !328, size: 32, offset: 20704)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !677, file: !678, line: 69, baseType: !742, size: 64, offset: 320)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !678, line: 138, size: 448, elements: !744)
!744 = !{!745, !749, !776, !778, !3482, !3510, !3514}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !743, file: !678, line: 139, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{null, !683}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !743, file: !678, line: 140, baseType: !750, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !752)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !753, line: 230, size: 128, elements: !754)
!753 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!754 = !{!755, !769}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !752, file: !753, line: 231, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!759, !683, !763, !642}
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !320, line: 60, baseType: !760)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !761, line: 73, baseType: !762)
!761 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !761, line: 15, baseType: !563)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !753, line: 30, size: 128, elements: !765)
!765 = !{!766, !767}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !764, file: !753, line: 31, baseType: !667, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !764, file: !753, line: 32, baseType: !768, size: 16, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !320, line: 19, baseType: !520)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !752, file: !753, line: 232, baseType: !770, size: 64, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!759, !683, !763, !667, !773}
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !320, line: 55, baseType: !774)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !761, line: 72, baseType: !775)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !761, line: 16, baseType: !568)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !743, file: !678, line: 141, baseType: !777, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !743, file: !678, line: 142, baseType: !779, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !782)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !753, line: 84, size: 320, elements: !783)
!783 = !{!784, !785, !789, !3479, !3480}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !782, file: !753, line: 85, baseType: !667, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !782, file: !753, line: 86, baseType: !786, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!768, !683, !763, !328}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !782, file: !753, line: 88, baseType: !790, size: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!768, !683, !793, !328}
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !753, line: 168, size: 448, elements: !795)
!795 = !{!796, !797, !798, !799, !3474, !3475}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !794, file: !753, line: 169, baseType: !764, size: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !794, file: !753, line: 170, baseType: !773, size: 64, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !794, file: !753, line: 171, baseType: !321, size: 64, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !794, file: !753, line: 172, baseType: !800, size: 64, offset: 256)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!759, !803, !683, !793, !642, !972, !773}
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 916, size: 1856, align: 32, elements: !805)
!805 = !{!806, !824, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3457, !3458, !3467, !3468, !3469, !3470, !3471, !3472, !3473}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !804, file: !31, line: 920, baseType: !807, size: 128)
!807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !804, file: !31, line: 917, size: 128, elements: !808)
!808 = !{!809, !815}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !807, file: !31, line: 918, baseType: !810, size: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !811, line: 58, size: 64, elements: !812)
!811 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!812 = !{!813}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !810, file: !811, line: 59, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !807, file: !31, line: 919, baseType: !816, size: 128, align: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !320, line: 216, size: 128, align: 64, elements: !817)
!817 = !{!818, !820}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !816, file: !320, line: 217, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !816, file: !320, line: 218, baseType: !821, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{null, !819}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !804, file: !31, line: 921, baseType: !825, size: 128, offset: 128)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !826, line: 8, size: 128, elements: !827)
!826 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!827 = !{!828, !832}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !825, file: !826, line: 9, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !831, line: 18, flags: DIFlagFwdDecl)
!831 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!832 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !825, file: !826, line: 10, baseType: !833, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !831, line: 89, size: 1536, elements: !835)
!835 = !{!836, !837, !847, !855, !856, !871, !3408, !3410, !3422, !3423, !3424, !3425, !3426, !3431, !3432, !3433}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !834, file: !831, line: 91, baseType: !7, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !834, file: !831, line: 92, baseType: !838, size: 32, offset: 32)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !839, line: 277, baseType: !840)
!839 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !839, line: 277, size: 32, elements: !841)
!841 = !{!842}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !840, file: !839, line: 277, baseType: !843, size: 32)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !839, line: 70, baseType: !844)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !839, line: 65, size: 32, elements: !845)
!845 = !{!846}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !844, file: !839, line: 66, baseType: !7, size: 32)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !834, file: !831, line: 93, baseType: !848, size: 128, offset: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !849, line: 38, size: 128, elements: !850)
!849 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!850 = !{!851, !853}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !848, file: !849, line: 39, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !848, file: !849, line: 39, baseType: !854, size: 64, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !834, file: !831, line: 94, baseType: !833, size: 64, offset: 192)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !834, file: !831, line: 95, baseType: !857, size: 128, offset: 256)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !831, line: 47, size: 128, elements: !858)
!858 = !{!859, !868}
!859 = !DIDerivedType(tag: DW_TAG_member, scope: !857, file: !831, line: 48, baseType: !860, size: 64)
!860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !857, file: !831, line: 48, size: 64, elements: !861)
!861 = !{!862, !867}
!862 = !DIDerivedType(tag: DW_TAG_member, scope: !860, file: !831, line: 49, baseType: !863, size: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !860, file: !831, line: 49, size: 64, elements: !864)
!864 = !{!865, !866}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !863, file: !831, line: 50, baseType: !366, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !863, file: !831, line: 50, baseType: !366, size: 32, offset: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !860, file: !831, line: 52, baseType: !609, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !857, file: !831, line: 54, baseType: !869, size: 64, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !327)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !834, file: !831, line: 96, baseType: !872, size: 64, offset: 384)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 610, size: 4224, elements: !874)
!874 = !{!875, !876, !877, !885, !892, !893, !1037, !3102, !3103, !3104, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3376, !3384, !3385, !3386, !3404, !3405, !3406, !3407}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !873, file: !31, line: 611, baseType: !768, size: 16)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !873, file: !31, line: 612, baseType: !520, size: 16, offset: 16)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !873, file: !31, line: 613, baseType: !878, size: 32, offset: 32)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !879, line: 23, baseType: !880)
!879 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !879, line: 21, size: 32, elements: !881)
!881 = !{!882}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !880, file: !879, line: 22, baseType: !883, size: 32)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !320, line: 32, baseType: !884)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !761, line: 49, baseType: !7)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !873, file: !31, line: 614, baseType: !886, size: 32, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !879, line: 28, baseType: !887)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !879, line: 26, size: 32, elements: !888)
!888 = !{!889}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !887, file: !879, line: 27, baseType: !890, size: 32)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !320, line: 33, baseType: !891)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !761, line: 50, baseType: !7)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !873, file: !31, line: 615, baseType: !7, size: 32, offset: 96)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !873, file: !31, line: 622, baseType: !894, size: 64, offset: 128)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !896)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1864, size: 1536, align: 512, elements: !897)
!897 = !{!898, !902, !915, !919, !925, !929, !933, !937, !941, !945, !949, !950, !956, !960, !984, !1013, !1017, !1023, !1028, !1032, !1033}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !896, file: !31, line: 1865, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{!833, !872, !833, !7}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !896, file: !31, line: 1866, baseType: !903, size: 64, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{!667, !833, !872, !906}
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !908, line: 10, size: 128, elements: !909)
!908 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!909 = !{!910, !914}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !907, file: !908, line: 11, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{null, !321}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !907, file: !908, line: 12, baseType: !321, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !896, file: !31, line: 1867, baseType: !916, size: 64, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{!328, !872, !328}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !896, file: !31, line: 1868, baseType: !920, size: 64, offset: 192)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!923, !872, !328}
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 581, flags: DIFlagFwdDecl)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !896, file: !31, line: 1870, baseType: !926, size: 64, offset: 256)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{!328, !833, !642, !328}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !896, file: !31, line: 1872, baseType: !930, size: 64, offset: 320)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{!328, !872, !833, !768, !400}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !896, file: !31, line: 1873, baseType: !934, size: 64, offset: 384)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!328, !833, !872, !833}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !896, file: !31, line: 1874, baseType: !938, size: 64, offset: 448)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!328, !872, !833}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !896, file: !31, line: 1875, baseType: !942, size: 64, offset: 512)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!328, !872, !833, !667}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !896, file: !31, line: 1876, baseType: !946, size: 64, offset: 576)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!328, !872, !833, !768}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !896, file: !31, line: 1877, baseType: !938, size: 64, offset: 640)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !896, file: !31, line: 1878, baseType: !951, size: 64, offset: 704)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{!328, !872, !833, !768, !954}
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !320, line: 16, baseType: !955)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !320, line: 13, baseType: !366)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !896, file: !31, line: 1879, baseType: !957, size: 64, offset: 768)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{!328, !872, !833, !872, !833, !7}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !896, file: !31, line: 1881, baseType: !961, size: 64, offset: 832)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{!328, !833, !964}
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 219, size: 640, elements: !966)
!966 = !{!967, !968, !969, !970, !971, !974, !981, !982, !983}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !965, file: !31, line: 220, baseType: !7, size: 32)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !965, file: !31, line: 221, baseType: !768, size: 16, offset: 32)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !965, file: !31, line: 222, baseType: !878, size: 32, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !965, file: !31, line: 223, baseType: !886, size: 32, offset: 96)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !965, file: !31, line: 224, baseType: !972, size: 64, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !320, line: 46, baseType: !973)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !761, line: 88, baseType: !494)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !965, file: !31, line: 225, baseType: !975, size: 128, offset: 192)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !976, line: 13, size: 128, elements: !977)
!976 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!977 = !{!978, !980}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !975, file: !976, line: 14, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !976, line: 8, baseType: !493)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !975, file: !976, line: 15, baseType: !563, size: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !965, file: !31, line: 226, baseType: !975, size: 128, offset: 320)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !965, file: !31, line: 227, baseType: !975, size: 128, offset: 448)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !965, file: !31, line: 234, baseType: !803, size: 64, offset: 576)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !896, file: !31, line: 1882, baseType: !985, size: 64, offset: 896)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!328, !988, !990, !366, !7}
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !825)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !992, line: 22, size: 1152, elements: !993)
!992 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!993 = !{!994, !995, !996, !997, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !991, file: !992, line: 23, baseType: !366, size: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !991, file: !992, line: 24, baseType: !768, size: 16, offset: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !991, file: !992, line: 25, baseType: !7, size: 32, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !991, file: !992, line: 26, baseType: !998, size: 32, offset: 96)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !320, line: 104, baseType: !366)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !991, file: !992, line: 27, baseType: !609, size: 64, offset: 128)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !991, file: !992, line: 28, baseType: !609, size: 64, offset: 192)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !991, file: !992, line: 37, baseType: !609, size: 64, offset: 256)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !991, file: !992, line: 38, baseType: !954, size: 32, offset: 320)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !991, file: !992, line: 39, baseType: !954, size: 32, offset: 352)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !991, file: !992, line: 40, baseType: !878, size: 32, offset: 384)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !991, file: !992, line: 41, baseType: !886, size: 32, offset: 416)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !991, file: !992, line: 42, baseType: !972, size: 64, offset: 448)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !991, file: !992, line: 43, baseType: !975, size: 128, offset: 512)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !991, file: !992, line: 44, baseType: !975, size: 128, offset: 640)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !991, file: !992, line: 45, baseType: !975, size: 128, offset: 768)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !991, file: !992, line: 46, baseType: !975, size: 128, offset: 896)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !991, file: !992, line: 47, baseType: !609, size: 64, offset: 1024)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !991, file: !992, line: 48, baseType: !609, size: 64, offset: 1088)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !896, file: !31, line: 1883, baseType: !1014, size: 64, offset: 960)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!759, !833, !642, !773}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !896, file: !31, line: 1884, baseType: !1018, size: 64, offset: 1024)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!328, !872, !1021, !609, !609}
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 50, flags: DIFlagFwdDecl)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !896, file: !31, line: 1886, baseType: !1024, size: 64, offset: 1088)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!328, !872, !1027, !328}
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !896, file: !31, line: 1887, baseType: !1029, size: 64, offset: 1152)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!328, !872, !833, !803, !7, !768}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !896, file: !31, line: 1890, baseType: !946, size: 64, offset: 1216)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !896, file: !31, line: 1891, baseType: !1034, size: 64, offset: 1280)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!328, !872, !923, !328}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !873, file: !31, line: 623, baseType: !1038, size: 64, offset: 192)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1416, size: 9472, elements: !1040)
!1040 = !{!1041, !1042, !1043, !1044, !1045, !1046, !1093, !2710, !2792, !2875, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2891, !2895, !2896, !2899, !2900, !2903, !2904, !2905, !2946, !2972, !2973, !2974, !2975, !2976, !2977, !2980, !2982, !2989, !2990, !2992, !2993, !2994, !3053, !3054, !3069, !3070, !3071, !3072, !3073, !3076, !3077, !3078, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1039, file: !31, line: 1417, baseType: !660, size: 128)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1039, file: !31, line: 1418, baseType: !954, size: 32, offset: 128)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1039, file: !31, line: 1419, baseType: !327, size: 8, offset: 160)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1039, file: !31, line: 1420, baseType: !568, size: 64, offset: 192)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1039, file: !31, line: 1421, baseType: !972, size: 64, offset: 256)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1039, file: !31, line: 1422, baseType: !1047, size: 64, offset: 320)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2228, size: 576, elements: !1049)
!1049 = !{!1050, !1051, !1052, !1059, !1063, !1067, !1071, !1072, !1073, !1083, !1086, !1087, !1088, !1090, !1091, !1092}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1048, file: !31, line: 2229, baseType: !667, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1048, file: !31, line: 2230, baseType: !328, size: 32, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1048, file: !31, line: 2238, baseType: !1053, size: 64, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!328, !1056}
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1058, line: 28, flags: DIFlagFwdDecl)
!1058 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1048, file: !31, line: 2239, baseType: !1060, size: 64, offset: 192)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1062)
!1062 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 70, flags: DIFlagFwdDecl)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1048, file: !31, line: 2240, baseType: !1064, size: 64, offset: 256)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!833, !1047, !328, !667, !321}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1048, file: !31, line: 2242, baseType: !1068, size: 64, offset: 320)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{null, !1038}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1048, file: !31, line: 2243, baseType: !316, size: 64, offset: 384)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1048, file: !31, line: 2244, baseType: !1047, size: 64, offset: 448)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1048, file: !31, line: 2245, baseType: !1074, size: 64, offset: 512)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !320, line: 182, size: 64, elements: !1075)
!1075 = !{!1076}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1074, file: !320, line: 183, baseType: !1077, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !320, line: 186, size: 128, elements: !1079)
!1079 = !{!1080, !1081}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1078, file: !320, line: 187, baseType: !1077, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1078, file: !320, line: 187, baseType: !1082, size: 64, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1048, file: !31, line: 2247, baseType: !1084, offset: 576)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1085, line: 187, elements: !704)
!1085 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1048, file: !31, line: 2248, baseType: !1084, offset: 576)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1048, file: !31, line: 2249, baseType: !1084, offset: 576)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1048, file: !31, line: 2250, baseType: !1089, offset: 576)
!1089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1084, elements: !457)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1048, file: !31, line: 2252, baseType: !1084, offset: 576)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1048, file: !31, line: 2253, baseType: !1084, offset: 576)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1048, file: !31, line: 2254, baseType: !1084, offset: 576)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1039, file: !31, line: 1423, baseType: !1094, size: 64, offset: 384)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1096)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 1935, size: 1472, elements: !1097)
!1097 = !{!1098, !1102, !1106, !1107, !1111, !1117, !1121, !1122, !1123, !1127, !1131, !1132, !1133, !1134, !1140, !1145, !1146, !1153, !1154, !1155, !1156, !2694, !2709}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1096, file: !31, line: 1936, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!872, !1038}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1096, file: !31, line: 1937, baseType: !1103, size: 64, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{null, !872}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1096, file: !31, line: 1938, baseType: !1103, size: 64, offset: 128)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1096, file: !31, line: 1940, baseType: !1108, size: 64, offset: 192)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{null, !872, !328}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1096, file: !31, line: 1941, baseType: !1112, size: 64, offset: 256)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!328, !872, !1115}
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !31, line: 289, flags: DIFlagFwdDecl)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1096, file: !31, line: 1942, baseType: !1118, size: 64, offset: 320)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!328, !872}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1096, file: !31, line: 1943, baseType: !1103, size: 64, offset: 384)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1096, file: !31, line: 1944, baseType: !1068, size: 64, offset: 448)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1096, file: !31, line: 1945, baseType: !1124, size: 64, offset: 512)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!328, !1038, !328}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1096, file: !31, line: 1946, baseType: !1128, size: 64, offset: 576)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!328, !1038}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1096, file: !31, line: 1947, baseType: !1128, size: 64, offset: 640)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1096, file: !31, line: 1948, baseType: !1128, size: 64, offset: 704)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1096, file: !31, line: 1949, baseType: !1128, size: 64, offset: 768)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1096, file: !31, line: 1950, baseType: !1135, size: 64, offset: 832)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!328, !833, !1138}
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 57, flags: DIFlagFwdDecl)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1096, file: !31, line: 1951, baseType: !1141, size: 64, offset: 896)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!328, !1038, !1144, !642}
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1096, file: !31, line: 1952, baseType: !1068, size: 64, offset: 960)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1096, file: !31, line: 1954, baseType: !1147, size: 64, offset: 1024)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!328, !1150, !833}
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1152, line: 539, flags: DIFlagFwdDecl)
!1152 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1096, file: !31, line: 1955, baseType: !1147, size: 64, offset: 1088)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1096, file: !31, line: 1956, baseType: !1147, size: 64, offset: 1152)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1096, file: !31, line: 1957, baseType: !1147, size: 64, offset: 1216)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !1096, file: !31, line: 1963, baseType: !1157, size: 64, offset: 1280)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!328, !1038, !1160, !319}
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1162, line: 68, size: 512, align: 128, elements: !1163)
!1162 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1163 = !{!1164, !1165, !2686, !2693}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1161, file: !1162, line: 69, baseType: !568, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, scope: !1161, file: !1162, line: 77, baseType: !1166, size: 320, offset: 64)
!1166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1161, file: !1162, line: 77, size: 320, elements: !1167)
!1167 = !{!1168, !1349, !1354, !1382, !1390, !1396, !2678, !2685}
!1168 = !DIDerivedType(tag: DW_TAG_member, scope: !1166, file: !1162, line: 78, baseType: !1169, size: 320)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1166, file: !1162, line: 78, size: 320, elements: !1170)
!1170 = !{!1171, !1172, !1347, !1348}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1169, file: !1162, line: 84, baseType: !660, size: 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1169, file: !1162, line: 86, baseType: !1173, size: 64, offset: 128)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 451, size: 1216, align: 64, elements: !1175)
!1175 = !{!1176, !1177, !1184, !1185, !1186, !1201, !1217, !1218, !1219, !1220, !1340, !1341, !1344, !1345, !1346}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1174, file: !31, line: 452, baseType: !872, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1174, file: !31, line: 453, baseType: !1178, size: 128, offset: 64)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1179, line: 292, size: 128, elements: !1180)
!1179 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1180 = !{!1181, !1182, !1183}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1178, file: !1179, line: 293, baseType: !690)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1178, file: !1179, line: 295, baseType: !319, size: 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1178, file: !1179, line: 296, baseType: !321, size: 64, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1174, file: !31, line: 454, baseType: !319, size: 32, offset: 192)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1174, file: !31, line: 455, baseType: !350, size: 32, offset: 224)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1174, file: !31, line: 460, baseType: !1187, size: 128, offset: 256)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1188, line: 125, size: 128, elements: !1189)
!1188 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!1189 = !{!1190, !1200}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1187, file: !1188, line: 126, baseType: !1191, size: 64)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1188, line: 31, size: 64, elements: !1192)
!1192 = !{!1193}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1191, file: !1188, line: 32, baseType: !1194, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1188, line: 24, size: 192, align: 64, elements: !1196)
!1196 = !{!1197, !1198, !1199}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1195, file: !1188, line: 25, baseType: !568, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1195, file: !1188, line: 26, baseType: !1194, size: 64, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1195, file: !1188, line: 27, baseType: !1194, size: 64, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1187, file: !1188, line: 127, baseType: !1194, size: 64, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1174, file: !31, line: 461, baseType: !1202, size: 256, offset: 384)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1203, line: 35, size: 256, elements: !1204)
!1203 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1204 = !{!1205, !1213, !1214, !1216}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1202, file: !1203, line: 36, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1207, line: 13, baseType: !1208)
!1207 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !320, line: 175, baseType: !1209)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !320, line: 173, size: 64, elements: !1210)
!1210 = !{!1211}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1209, file: !320, line: 174, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !324, line: 22, baseType: !493)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1202, file: !1203, line: 42, baseType: !1206, size: 64, offset: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1202, file: !1203, line: 46, baseType: !1215, offset: 128)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !691, line: 29, baseType: !698)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1202, file: !1203, line: 47, baseType: !660, size: 128, offset: 128)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1174, file: !31, line: 462, baseType: !568, size: 64, offset: 640)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !1174, file: !31, line: 463, baseType: !568, size: 64, offset: 704)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1174, file: !31, line: 464, baseType: !568, size: 64, offset: 768)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1174, file: !31, line: 465, baseType: !1221, size: 64, offset: 832)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1223)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 367, size: 1408, elements: !1224)
!1224 = !{!1225, !1229, !1233, !1237, !1241, !1245, !1251, !1257, !1261, !1266, !1270, !1274, !1278, !1304, !1308, !1314, !1315, !1316, !1320, !1325, !1329, !1336}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1223, file: !31, line: 368, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!328, !1160, !1115}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1223, file: !31, line: 369, baseType: !1230, size: 64, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!328, !803, !1160}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1223, file: !31, line: 372, baseType: !1234, size: 64, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!328, !1173, !1115}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1223, file: !31, line: 375, baseType: !1238, size: 64, offset: 192)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!328, !1160}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1223, file: !31, line: 381, baseType: !1242, size: 64, offset: 256)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!328, !803, !1173, !663, !7}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1223, file: !31, line: 383, baseType: !1246, size: 64, offset: 320)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{null, !1249}
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !31, line: 290, flags: DIFlagFwdDecl)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1223, file: !31, line: 385, baseType: !1252, size: 64, offset: 384)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!328, !803, !1173, !972, !7, !7, !1255, !1256}
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1223, file: !31, line: 388, baseType: !1258, size: 64, offset: 448)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!328, !803, !1173, !972, !7, !7, !1160, !321}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1223, file: !31, line: 393, baseType: !1262, size: 64, offset: 512)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!1265, !1173, !1265}
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !320, line: 125, baseType: !609)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1223, file: !31, line: 394, baseType: !1267, size: 64, offset: 576)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{null, !1160, !7, !7}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1223, file: !31, line: 395, baseType: !1271, size: 64, offset: 640)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!328, !1160, !319}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1223, file: !31, line: 396, baseType: !1275, size: 64, offset: 704)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{null, !1160}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1223, file: !31, line: 397, baseType: !1279, size: 64, offset: 768)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!759, !1282, !1302}
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 320, size: 384, elements: !1284)
!1284 = !{!1285, !1286, !1287, !1291, !1292, !1293, !1294, !1295}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1283, file: !31, line: 321, baseType: !803, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1283, file: !31, line: 326, baseType: !972, size: 64, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1283, file: !31, line: 327, baseType: !1288, size: 64, offset: 128)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{null, !1282, !563, !563}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1283, file: !31, line: 328, baseType: !321, size: 64, offset: 192)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1283, file: !31, line: 329, baseType: !328, size: 32, offset: 256)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1283, file: !31, line: 330, baseType: !518, size: 16, offset: 288)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1283, file: !31, line: 331, baseType: !518, size: 16, offset: 304)
!1295 = !DIDerivedType(tag: DW_TAG_member, scope: !1283, file: !31, line: 332, baseType: !1296, size: 64, offset: 320)
!1296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1283, file: !31, line: 332, size: 64, elements: !1297)
!1297 = !{!1298, !1299}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1296, file: !31, line: 333, baseType: !7, size: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1296, file: !31, line: 334, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !31, line: 334, flags: DIFlagFwdDecl)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !31, line: 64, flags: DIFlagFwdDecl)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1223, file: !31, line: 402, baseType: !1305, size: 64, offset: 832)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!328, !1173, !1160, !1160, !11}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1223, file: !31, line: 404, baseType: !1309, size: 64, offset: 896)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!400, !1160, !1312}
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1313, line: 305, baseType: !7)
!1313 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1223, file: !31, line: 405, baseType: !1275, size: 64, offset: 960)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1223, file: !31, line: 406, baseType: !1238, size: 64, offset: 1024)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1223, file: !31, line: 407, baseType: !1317, size: 64, offset: 1088)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!328, !1160, !568, !568}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1223, file: !31, line: 409, baseType: !1321, size: 64, offset: 1152)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{null, !1160, !1324, !1324}
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1223, file: !31, line: 410, baseType: !1326, size: 64, offset: 1216)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!328, !1173, !1160}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1223, file: !31, line: 413, baseType: !1330, size: 64, offset: 1280)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!328, !1333, !803, !1335}
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !31, line: 61, flags: DIFlagFwdDecl)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1223, file: !31, line: 415, baseType: !1337, size: 64, offset: 1344)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{null, !803}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1174, file: !31, line: 466, baseType: !568, size: 64, offset: 896)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1174, file: !31, line: 467, baseType: !1342, size: 32, offset: 960)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1343, line: 8, baseType: !366)
!1343 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1174, file: !31, line: 468, baseType: !690, offset: 992)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1174, file: !31, line: 469, baseType: !660, size: 128, offset: 1024)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1174, file: !31, line: 470, baseType: !321, size: 64, offset: 1152)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1169, file: !1162, line: 87, baseType: !568, size: 64, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1169, file: !1162, line: 94, baseType: !568, size: 64, offset: 256)
!1349 = !DIDerivedType(tag: DW_TAG_member, scope: !1166, file: !1162, line: 96, baseType: !1350, size: 64)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1166, file: !1162, line: 96, size: 64, elements: !1351)
!1351 = !{!1352}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1350, file: !1162, line: 101, baseType: !1353, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !320, line: 143, baseType: !609)
!1354 = !DIDerivedType(tag: DW_TAG_member, scope: !1166, file: !1162, line: 103, baseType: !1355, size: 320)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1166, file: !1162, line: 103, size: 320, elements: !1356)
!1356 = !{!1357, !1367, !1370, !1371}
!1357 = !DIDerivedType(tag: DW_TAG_member, scope: !1355, file: !1162, line: 104, baseType: !1358, size: 128)
!1358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1355, file: !1162, line: 104, size: 128, elements: !1359)
!1359 = !{!1360, !1361}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1358, file: !1162, line: 105, baseType: !660, size: 128)
!1361 = !DIDerivedType(tag: DW_TAG_member, scope: !1358, file: !1162, line: 106, baseType: !1362, size: 128)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1358, file: !1162, line: 106, size: 128, elements: !1363)
!1363 = !{!1364, !1365, !1366}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1362, file: !1162, line: 107, baseType: !1160, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1362, file: !1162, line: 109, baseType: !328, size: 32, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1362, file: !1162, line: 110, baseType: !328, size: 32, offset: 96)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1355, file: !1162, line: 117, baseType: !1368, size: 64, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1162, line: 117, flags: DIFlagFwdDecl)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1355, file: !1162, line: 119, baseType: !321, size: 64, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_member, scope: !1355, file: !1162, line: 120, baseType: !1372, size: 64, offset: 256)
!1372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1355, file: !1162, line: 120, size: 64, elements: !1373)
!1373 = !{!1374, !1375, !1376}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1372, file: !1162, line: 121, baseType: !321, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1372, file: !1162, line: 122, baseType: !568, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, scope: !1372, file: !1162, line: 123, baseType: !1377, size: 32)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1372, file: !1162, line: 123, size: 32, elements: !1378)
!1378 = !{!1379, !1380, !1381}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1377, file: !1162, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1377, file: !1162, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1377, file: !1162, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1382 = !DIDerivedType(tag: DW_TAG_member, scope: !1166, file: !1162, line: 130, baseType: !1383, size: 192)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1166, file: !1162, line: 130, size: 192, elements: !1384)
!1384 = !{!1385, !1386, !1387, !1388, !1389}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1383, file: !1162, line: 131, baseType: !568, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1383, file: !1162, line: 134, baseType: !327, size: 8, offset: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1383, file: !1162, line: 135, baseType: !327, size: 8, offset: 72)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1383, file: !1162, line: 136, baseType: !350, size: 32, offset: 96)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1383, file: !1162, line: 137, baseType: !7, size: 32, offset: 128)
!1390 = !DIDerivedType(tag: DW_TAG_member, scope: !1166, file: !1162, line: 139, baseType: !1391, size: 256)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1166, file: !1162, line: 139, size: 256, elements: !1392)
!1392 = !{!1393, !1394, !1395}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1391, file: !1162, line: 140, baseType: !568, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1391, file: !1162, line: 141, baseType: !350, size: 32, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1391, file: !1162, line: 143, baseType: !660, size: 128, offset: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, scope: !1166, file: !1162, line: 145, baseType: !1397, size: 256)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1166, file: !1162, line: 145, size: 256, elements: !1398)
!1398 = !{!1399, !1400, !1402, !1403, !2677}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1397, file: !1162, line: 146, baseType: !568, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1397, file: !1162, line: 147, baseType: !1401, size: 64, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1152, line: 509, baseType: !1160)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1397, file: !1162, line: 148, baseType: !568, size: 64, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_member, scope: !1397, file: !1162, line: 149, baseType: !1404, size: 64, offset: 192)
!1404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1397, file: !1162, line: 149, size: 64, elements: !1405)
!1405 = !{!1406, !2676}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1404, file: !1162, line: 150, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1162, line: 388, size: 7296, elements: !1409)
!1409 = !{!1410, !2672}
!1410 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !1162, line: 389, baseType: !1411, size: 7296)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1408, file: !1162, line: 389, size: 7296, elements: !1412)
!1412 = !{!1413, !1451, !1452, !1453, !1457, !1458, !1459, !1460, !1461, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1502, !1508, !1511, !1557, !1558, !2656, !2657, !2660, !2661, !2662, !2665, !2666, !2667, !2670, !2671}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1411, file: !1162, line: 390, baseType: !1414, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1162, line: 305, size: 1472, elements: !1416)
!1416 = !{!1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1431, !1432, !1437, !1438, !1441, !1445, !1446, !1447, !1448, !1449}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1415, file: !1162, line: 308, baseType: !568, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1415, file: !1162, line: 309, baseType: !568, size: 64, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1415, file: !1162, line: 313, baseType: !1414, size: 64, offset: 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1415, file: !1162, line: 313, baseType: !1414, size: 64, offset: 192)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1415, file: !1162, line: 315, baseType: !1195, size: 192, align: 64, offset: 256)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1415, file: !1162, line: 323, baseType: !568, size: 64, offset: 448)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1415, file: !1162, line: 327, baseType: !1407, size: 64, offset: 512)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1415, file: !1162, line: 333, baseType: !1425, size: 64, offset: 576)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1152, line: 284, baseType: !1426)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1152, line: 284, size: 64, elements: !1427)
!1427 = !{!1428}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1426, file: !1152, line: 284, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1430, line: 19, baseType: !568)
!1430 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1415, file: !1162, line: 334, baseType: !568, size: 64, offset: 640)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1415, file: !1162, line: 343, baseType: !1433, size: 256, offset: 704)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1415, file: !1162, line: 340, size: 256, elements: !1434)
!1434 = !{!1435, !1436}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1433, file: !1162, line: 341, baseType: !1195, size: 192, align: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1433, file: !1162, line: 342, baseType: !568, size: 64, offset: 192)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1415, file: !1162, line: 351, baseType: !660, size: 128, offset: 960)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1415, file: !1162, line: 353, baseType: !1439, size: 64, offset: 1088)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1162, line: 353, flags: DIFlagFwdDecl)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1415, file: !1162, line: 356, baseType: !1442, size: 64, offset: 1152)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1444)
!1444 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1162, line: 356, flags: DIFlagFwdDecl)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1415, file: !1162, line: 359, baseType: !568, size: 64, offset: 1216)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1415, file: !1162, line: 361, baseType: !803, size: 64, offset: 1280)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1415, file: !1162, line: 362, baseType: !321, size: 64, offset: 1344)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1415, file: !1162, line: 365, baseType: !1206, size: 64, offset: 1408)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1415, file: !1162, line: 373, baseType: !1450, offset: 1472)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1162, line: 296, elements: !704)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1411, file: !1162, line: 391, baseType: !1191, size: 64, offset: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1411, file: !1162, line: 392, baseType: !609, size: 64, offset: 128)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1411, file: !1162, line: 394, baseType: !1454, size: 64, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!568, !803, !568, !568, !568, !568}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1411, file: !1162, line: 398, baseType: !568, size: 64, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1411, file: !1162, line: 399, baseType: !568, size: 64, offset: 320)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1411, file: !1162, line: 405, baseType: !568, size: 64, offset: 384)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1411, file: !1162, line: 406, baseType: !568, size: 64, offset: 448)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1411, file: !1162, line: 407, baseType: !1462, size: 64, offset: 512)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1152, line: 286, baseType: !1464)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1152, line: 286, size: 64, elements: !1465)
!1465 = !{!1466}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1464, file: !1152, line: 286, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1430, line: 18, baseType: !568)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1411, file: !1162, line: 416, baseType: !350, size: 32, offset: 576)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1411, file: !1162, line: 428, baseType: !350, size: 32, offset: 608)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1411, file: !1162, line: 437, baseType: !350, size: 32, offset: 640)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1411, file: !1162, line: 447, baseType: !350, size: 32, offset: 672)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1411, file: !1162, line: 450, baseType: !1206, size: 64, offset: 704)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1411, file: !1162, line: 452, baseType: !328, size: 32, offset: 768)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1411, file: !1162, line: 454, baseType: !690, offset: 800)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1411, file: !1162, line: 457, baseType: !1202, size: 256, offset: 832)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1411, file: !1162, line: 459, baseType: !660, size: 128, offset: 1088)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1411, file: !1162, line: 466, baseType: !568, size: 64, offset: 1216)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1411, file: !1162, line: 467, baseType: !568, size: 64, offset: 1280)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1411, file: !1162, line: 469, baseType: !568, size: 64, offset: 1344)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1411, file: !1162, line: 470, baseType: !568, size: 64, offset: 1408)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1411, file: !1162, line: 471, baseType: !1208, size: 64, offset: 1472)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1411, file: !1162, line: 472, baseType: !568, size: 64, offset: 1536)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1411, file: !1162, line: 473, baseType: !568, size: 64, offset: 1600)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1411, file: !1162, line: 474, baseType: !568, size: 64, offset: 1664)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1411, file: !1162, line: 475, baseType: !568, size: 64, offset: 1728)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1411, file: !1162, line: 477, baseType: !690, offset: 1792)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1411, file: !1162, line: 478, baseType: !568, size: 64, offset: 1792)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1411, file: !1162, line: 478, baseType: !568, size: 64, offset: 1856)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1411, file: !1162, line: 478, baseType: !568, size: 64, offset: 1920)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1411, file: !1162, line: 478, baseType: !568, size: 64, offset: 1984)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1411, file: !1162, line: 479, baseType: !568, size: 64, offset: 2048)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1411, file: !1162, line: 479, baseType: !568, size: 64, offset: 2112)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1411, file: !1162, line: 479, baseType: !568, size: 64, offset: 2176)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1411, file: !1162, line: 480, baseType: !568, size: 64, offset: 2240)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1411, file: !1162, line: 480, baseType: !568, size: 64, offset: 2304)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1411, file: !1162, line: 480, baseType: !568, size: 64, offset: 2368)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1411, file: !1162, line: 480, baseType: !568, size: 64, offset: 2432)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1411, file: !1162, line: 482, baseType: !1499, size: 2816, offset: 2496)
!1499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !568, size: 2816, elements: !1500)
!1500 = !{!1501}
!1501 = !DISubrange(count: 44)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1411, file: !1162, line: 488, baseType: !1503, size: 256, offset: 5312)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1504, line: 60, size: 256, elements: !1505)
!1504 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1505 = !{!1506}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1503, file: !1504, line: 61, baseType: !1507, size: 256)
!1507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1206, size: 256, elements: !495)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1411, file: !1162, line: 490, baseType: !1509, size: 64, offset: 5568)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1162, line: 490, flags: DIFlagFwdDecl)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1411, file: !1162, line: 493, baseType: !1512, size: 896, offset: 5632)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1513, line: 53, baseType: !1514)
!1513 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1513, line: 13, size: 896, elements: !1515)
!1515 = !{!1516, !1517, !1518, !1519, !1522, !1523, !1530, !1531, !1551, !1552, !1553}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1514, file: !1513, line: 18, baseType: !609, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1514, file: !1513, line: 28, baseType: !1208, size: 64, offset: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1514, file: !1513, line: 31, baseType: !1202, size: 256, offset: 128)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1514, file: !1513, line: 32, baseType: !1520, size: 64, offset: 384)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1513, line: 32, flags: DIFlagFwdDecl)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1514, file: !1513, line: 37, baseType: !520, size: 16, offset: 448)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1514, file: !1513, line: 40, baseType: !1524, size: 192, offset: 512)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1525, line: 53, size: 192, elements: !1526)
!1525 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1526 = !{!1527, !1528, !1529}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1524, file: !1525, line: 54, baseType: !1206, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1524, file: !1525, line: 55, baseType: !690, offset: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1524, file: !1525, line: 59, baseType: !660, size: 128, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1514, file: !1513, line: 41, baseType: !321, size: 64, offset: 704)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1514, file: !1513, line: 42, baseType: !1532, size: 64, offset: 768)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1534)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1535, line: 13, size: 896, elements: !1536)
!1535 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1536 = !{!1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1534, file: !1535, line: 14, baseType: !321, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1534, file: !1535, line: 15, baseType: !568, size: 64, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1534, file: !1535, line: 17, baseType: !568, size: 64, offset: 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1534, file: !1535, line: 17, baseType: !568, size: 64, offset: 192)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1534, file: !1535, line: 19, baseType: !563, size: 64, offset: 256)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1534, file: !1535, line: 21, baseType: !563, size: 64, offset: 320)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1534, file: !1535, line: 22, baseType: !563, size: 64, offset: 384)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1534, file: !1535, line: 23, baseType: !563, size: 64, offset: 448)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1534, file: !1535, line: 24, baseType: !563, size: 64, offset: 512)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1534, file: !1535, line: 25, baseType: !563, size: 64, offset: 576)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1534, file: !1535, line: 26, baseType: !563, size: 64, offset: 640)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1534, file: !1535, line: 27, baseType: !563, size: 64, offset: 704)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1534, file: !1535, line: 28, baseType: !563, size: 64, offset: 768)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1534, file: !1535, line: 29, baseType: !563, size: 64, offset: 832)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1514, file: !1513, line: 44, baseType: !350, size: 32, offset: 832)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1514, file: !1513, line: 50, baseType: !518, size: 16, offset: 864)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1514, file: !1513, line: 51, baseType: !1554, size: 16, offset: 880)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !324, line: 18, baseType: !1555)
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !326, line: 23, baseType: !1556)
!1556 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1411, file: !1162, line: 495, baseType: !568, size: 64, offset: 6528)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1411, file: !1162, line: 497, baseType: !1559, size: 64, offset: 6592)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1162, line: 381, size: 384, elements: !1561)
!1561 = !{!1562, !1563, !2655}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1560, file: !1162, line: 382, baseType: !350, size: 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1560, file: !1162, line: 383, baseType: !1564, size: 128, offset: 64)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1162, line: 376, size: 128, elements: !1565)
!1565 = !{!1566, !2653}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1564, file: !1162, line: 377, baseType: !1567, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1569, line: 640, size: 48640, elements: !1570)
!1569 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1570 = !{!1571, !1577, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1592, !1610, !1621, !1702, !1703, !1704, !1715, !1716, !1718, !1719, !1720, !1721, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1802, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1840, !1842, !1843, !1844, !1856, !1857, !1858, !1859, !1860, !1861, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1885, !1890, !2072, !2073, !2074, !2075, !2079, !2082, !2085, !2088, !2091, !2094, !2195, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2241, !2242, !2243, !2244, !2245, !2250, !2251, !2252, !2255, !2256, !2259, !2262, !2265, !2268, !2311, !2314, !2315, !2394, !2395, !2398, !2399, !2402, !2403, !2404, !2408, !2409, !2410, !2423, !2424, !2425, !2435, !2440, !2443, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1568, file: !1569, line: 646, baseType: !1572, size: 128)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1573, line: 56, size: 128, elements: !1574)
!1573 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1574 = !{!1575, !1576}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1572, file: !1573, line: 57, baseType: !568, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1572, file: !1573, line: 58, baseType: !366, size: 32, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1568, file: !1569, line: 649, baseType: !1578, size: 64, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !563)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1568, file: !1569, line: 657, baseType: !321, size: 64, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1568, file: !1569, line: 658, baseType: !345, size: 32, offset: 256)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1568, file: !1569, line: 660, baseType: !7, size: 32, offset: 288)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1568, file: !1569, line: 661, baseType: !7, size: 32, offset: 320)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1568, file: !1569, line: 684, baseType: !328, size: 32, offset: 352)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1568, file: !1569, line: 686, baseType: !328, size: 32, offset: 384)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1568, file: !1569, line: 687, baseType: !328, size: 32, offset: 416)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1568, file: !1569, line: 688, baseType: !328, size: 32, offset: 448)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1568, file: !1569, line: 689, baseType: !7, size: 32, offset: 480)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1568, file: !1569, line: 691, baseType: !1589, size: 64, offset: 512)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1591)
!1591 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1569, line: 691, flags: DIFlagFwdDecl)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1568, file: !1569, line: 692, baseType: !1593, size: 832, offset: 576)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1569, line: 451, size: 832, elements: !1594)
!1594 = !{!1595, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1593, file: !1569, line: 453, baseType: !1596, size: 128)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1569, line: 325, size: 128, elements: !1597)
!1597 = !{!1598, !1599}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1596, file: !1569, line: 326, baseType: !568, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1596, file: !1569, line: 327, baseType: !366, size: 32, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1593, file: !1569, line: 454, baseType: !1195, size: 192, align: 64, offset: 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1593, file: !1569, line: 455, baseType: !660, size: 128, offset: 320)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1593, file: !1569, line: 456, baseType: !7, size: 32, offset: 448)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1593, file: !1569, line: 458, baseType: !609, size: 64, offset: 512)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1593, file: !1569, line: 459, baseType: !609, size: 64, offset: 576)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1593, file: !1569, line: 460, baseType: !609, size: 64, offset: 640)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1593, file: !1569, line: 461, baseType: !609, size: 64, offset: 704)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1593, file: !1569, line: 463, baseType: !609, size: 64, offset: 768)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1593, file: !1569, line: 465, baseType: !1609, offset: 832)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1569, line: 415, elements: !704)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1568, file: !1569, line: 693, baseType: !1611, size: 384, offset: 1408)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1569, line: 489, size: 384, elements: !1612)
!1612 = !{!1613, !1614, !1615, !1616, !1617, !1618, !1619}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1611, file: !1569, line: 490, baseType: !660, size: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1611, file: !1569, line: 491, baseType: !568, size: 64, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1611, file: !1569, line: 492, baseType: !568, size: 64, offset: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1611, file: !1569, line: 493, baseType: !7, size: 32, offset: 256)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1611, file: !1569, line: 494, baseType: !520, size: 16, offset: 288)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1611, file: !1569, line: 495, baseType: !520, size: 16, offset: 304)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1611, file: !1569, line: 497, baseType: !1620, size: 64, offset: 320)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1568, file: !1569, line: 697, baseType: !1622, size: 1792, offset: 1792)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1569, line: 507, size: 1792, elements: !1623)
!1623 = !{!1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1699, !1700}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1622, file: !1569, line: 508, baseType: !1195, size: 192, align: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1622, file: !1569, line: 515, baseType: !609, size: 64, offset: 192)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1622, file: !1569, line: 516, baseType: !609, size: 64, offset: 256)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1622, file: !1569, line: 517, baseType: !609, size: 64, offset: 320)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1622, file: !1569, line: 518, baseType: !609, size: 64, offset: 384)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1622, file: !1569, line: 519, baseType: !609, size: 64, offset: 448)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1622, file: !1569, line: 526, baseType: !1212, size: 64, offset: 512)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1622, file: !1569, line: 527, baseType: !609, size: 64, offset: 576)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1622, file: !1569, line: 528, baseType: !7, size: 32, offset: 640)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1622, file: !1569, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1622, file: !1569, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1622, file: !1569, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1622, file: !1569, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1622, file: !1569, line: 563, baseType: !1638, size: 512, offset: 704)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !1639)
!1639 = !{!1640, !1648, !1649, !1654, !1695, !1696, !1697, !1698}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1638, file: !6, line: 119, baseType: !1641, size: 256)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1642, line: 9, size: 256, elements: !1643)
!1642 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1643 = !{!1644, !1645}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1641, file: !1642, line: 10, baseType: !1195, size: 192, align: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1641, file: !1642, line: 11, baseType: !1646, size: 64, offset: 192)
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1647, line: 29, baseType: !1212)
!1647 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1638, file: !6, line: 120, baseType: !1646, size: 64, offset: 256)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1638, file: !6, line: 121, baseType: !1650, size: 64, offset: 320)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!5, !1653}
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1638, file: !6, line: 122, baseType: !1655, size: 64, offset: 384)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !1657)
!1657 = !{!1658, !1676, !1677, !1680, !1685, !1686, !1690, !1694}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1656, file: !6, line: 160, baseType: !1659, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !1661)
!1661 = !{!1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1660, file: !6, line: 215, baseType: !1215)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1660, file: !6, line: 216, baseType: !7, size: 32)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1660, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1660, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1660, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1660, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1660, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1660, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1660, file: !6, line: 233, baseType: !1646, size: 64, offset: 128)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1660, file: !6, line: 234, baseType: !1653, size: 64, offset: 192)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1660, file: !6, line: 235, baseType: !1646, size: 64, offset: 256)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1660, file: !6, line: 236, baseType: !1653, size: 64, offset: 320)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1660, file: !6, line: 237, baseType: !1675, size: 4096, offset: 512)
!1675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1656, size: 4096, elements: !377)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1656, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1656, file: !6, line: 162, baseType: !1678, size: 32, offset: 96)
!1678 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !320, line: 27, baseType: !1679)
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !761, line: 96, baseType: !328)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1656, file: !6, line: 163, baseType: !1681, size: 32, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !839, line: 276, baseType: !1682)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !839, line: 276, size: 32, elements: !1683)
!1683 = !{!1684}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1682, file: !839, line: 276, baseType: !843, size: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1656, file: !6, line: 164, baseType: !1653, size: 64, offset: 192)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1656, file: !6, line: 165, baseType: !1687, size: 128, offset: 256)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1642, line: 14, size: 128, elements: !1688)
!1688 = !{!1689}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1687, file: !1642, line: 15, baseType: !1187, size: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1656, file: !6, line: 166, baseType: !1691, size: 64, offset: 384)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!1646}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1656, file: !6, line: 167, baseType: !1646, size: 64, offset: 448)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1638, file: !6, line: 123, baseType: !323, size: 8, offset: 448)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1638, file: !6, line: 124, baseType: !323, size: 8, offset: 456)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1638, file: !6, line: 125, baseType: !323, size: 8, offset: 464)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1638, file: !6, line: 126, baseType: !323, size: 8, offset: 472)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1622, file: !1569, line: 572, baseType: !1638, size: 512, offset: 1216)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1622, file: !1569, line: 580, baseType: !1701, size: 64, offset: 1728)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1568, file: !1569, line: 721, baseType: !7, size: 32, offset: 3584)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1568, file: !1569, line: 722, baseType: !328, size: 32, offset: 3616)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1568, file: !1569, line: 723, baseType: !1705, size: 64, offset: 3648)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1707)
!1707 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1708, line: 17, baseType: !1709)
!1708 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1708, line: 17, size: 64, elements: !1710)
!1710 = !{!1711}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1709, file: !1708, line: 17, baseType: !1712, size: 64)
!1712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !568, size: 64, elements: !1713)
!1713 = !{!1714}
!1714 = !DISubrange(count: 1)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1568, file: !1569, line: 724, baseType: !1707, size: 64, offset: 3712)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1568, file: !1569, line: 749, baseType: !1717, offset: 3776)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1569, line: 290, elements: !704)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1568, file: !1569, line: 751, baseType: !660, size: 128, offset: 3776)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1568, file: !1569, line: 757, baseType: !1407, size: 64, offset: 3904)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1568, file: !1569, line: 758, baseType: !1407, size: 64, offset: 3968)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1568, file: !1569, line: 761, baseType: !1722, size: 320, offset: 4032)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1504, line: 34, size: 320, elements: !1723)
!1723 = !{!1724, !1725}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1722, file: !1504, line: 35, baseType: !609, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1722, file: !1504, line: 36, baseType: !1726, size: 256, offset: 64)
!1726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1414, size: 256, elements: !495)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1568, file: !1569, line: 766, baseType: !328, size: 32, offset: 4352)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1568, file: !1569, line: 767, baseType: !328, size: 32, offset: 4384)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1568, file: !1569, line: 768, baseType: !328, size: 32, offset: 4416)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1568, file: !1569, line: 770, baseType: !328, size: 32, offset: 4448)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1568, file: !1569, line: 772, baseType: !568, size: 64, offset: 4480)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1568, file: !1569, line: 775, baseType: !7, size: 32, offset: 4544)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1568, file: !1569, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1568, file: !1569, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1568, file: !1569, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1568, file: !1569, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1568, file: !1569, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1568, file: !1569, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1568, file: !1569, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1568, file: !1569, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1568, file: !1569, line: 831, baseType: !568, size: 64, offset: 4672)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1568, file: !1569, line: 833, baseType: !1743, size: 384, offset: 4736)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !48, line: 25, size: 384, elements: !1744)
!1744 = !{!1745, !1750}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1743, file: !48, line: 26, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!563, !1749}
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, scope: !1743, file: !48, line: 27, baseType: !1751, size: 320, offset: 64)
!1751 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1743, file: !48, line: 27, size: 320, elements: !1752)
!1752 = !{!1753, !1762, !1787}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1751, file: !48, line: 36, baseType: !1754, size: 320)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1751, file: !48, line: 29, size: 320, elements: !1755)
!1755 = !{!1756, !1757, !1758, !1759, !1760, !1761}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1754, file: !48, line: 30, baseType: !512, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1754, file: !48, line: 31, baseType: !366, size: 32, offset: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1754, file: !48, line: 32, baseType: !366, size: 32, offset: 96)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1754, file: !48, line: 33, baseType: !366, size: 32, offset: 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1754, file: !48, line: 34, baseType: !609, size: 64, offset: 192)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1754, file: !48, line: 35, baseType: !512, size: 64, offset: 256)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1751, file: !48, line: 46, baseType: !1763, size: 192)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1751, file: !48, line: 38, size: 192, elements: !1764)
!1764 = !{!1765, !1766, !1767, !1786}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1763, file: !48, line: 39, baseType: !1678, size: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1763, file: !48, line: 40, baseType: !47, size: 32, offset: 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, scope: !1763, file: !48, line: 41, baseType: !1768, size: 64, offset: 64)
!1768 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1763, file: !48, line: 41, size: 64, elements: !1769)
!1769 = !{!1770, !1778}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1768, file: !48, line: 42, baseType: !1771, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1773, line: 7, size: 128, elements: !1774)
!1773 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1774 = !{!1775, !1777}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1772, file: !1773, line: 8, baseType: !1776, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !761, line: 93, baseType: !494)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1772, file: !1773, line: 9, baseType: !494, size: 64, offset: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1768, file: !48, line: 43, baseType: !1779, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1781, line: 7, size: 64, elements: !1782)
!1781 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1782 = !{!1783, !1785}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1780, file: !1781, line: 8, baseType: !1784, size: 32)
!1784 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1781, line: 5, baseType: !624)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1780, file: !1781, line: 9, baseType: !624, size: 32, offset: 32)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1763, file: !48, line: 45, baseType: !609, size: 64, offset: 128)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1751, file: !48, line: 54, baseType: !1788, size: 256)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1751, file: !48, line: 48, size: 256, elements: !1789)
!1789 = !{!1790, !1798, !1799, !1800, !1801}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1788, file: !48, line: 49, baseType: !1791, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1793, line: 36, size: 64, elements: !1794)
!1793 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1794 = !{!1795, !1796, !1797}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1792, file: !1793, line: 37, baseType: !328, size: 32)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1792, file: !1793, line: 38, baseType: !1556, size: 16, offset: 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1792, file: !1793, line: 39, baseType: !1556, size: 16, offset: 48)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1788, file: !48, line: 50, baseType: !328, size: 32, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1788, file: !48, line: 51, baseType: !328, size: 32, offset: 96)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1788, file: !48, line: 52, baseType: !568, size: 64, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1788, file: !48, line: 53, baseType: !568, size: 64, offset: 192)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1568, file: !1569, line: 835, baseType: !1803, size: 32, offset: 5120)
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !320, line: 22, baseType: !1804)
!1804 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !761, line: 28, baseType: !328)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1568, file: !1569, line: 836, baseType: !1803, size: 32, offset: 5152)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1568, file: !1569, line: 840, baseType: !568, size: 64, offset: 5184)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1568, file: !1569, line: 849, baseType: !1567, size: 64, offset: 5248)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1568, file: !1569, line: 852, baseType: !1567, size: 64, offset: 5312)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1568, file: !1569, line: 857, baseType: !660, size: 128, offset: 5376)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1568, file: !1569, line: 858, baseType: !660, size: 128, offset: 5504)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1568, file: !1569, line: 859, baseType: !1567, size: 64, offset: 5632)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1568, file: !1569, line: 867, baseType: !660, size: 128, offset: 5696)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1568, file: !1569, line: 868, baseType: !660, size: 128, offset: 5824)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1568, file: !1569, line: 871, baseType: !1815, size: 64, offset: 5952)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !40, line: 59, size: 768, elements: !1817)
!1817 = !{!1818, !1819, !1820, !1821, !1823, !1824, !1831, !1832}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1816, file: !40, line: 61, baseType: !345, size: 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1816, file: !40, line: 62, baseType: !7, size: 32, offset: 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1816, file: !40, line: 63, baseType: !690, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1816, file: !40, line: 65, baseType: !1822, size: 256, offset: 64)
!1822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1074, size: 256, elements: !495)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1816, file: !40, line: 66, baseType: !1074, size: 64, offset: 320)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1816, file: !40, line: 68, baseType: !1825, size: 128, offset: 384)
!1825 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1826, line: 40, baseType: !1827)
!1826 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1826, line: 36, size: 128, elements: !1828)
!1828 = !{!1829, !1830}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1827, file: !1826, line: 37, baseType: !690)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1827, file: !1826, line: 38, baseType: !660, size: 128)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1816, file: !40, line: 69, baseType: !816, size: 128, align: 64, offset: 512)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1816, file: !40, line: 70, baseType: !1833, size: 128, offset: 640)
!1833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1834, size: 128, elements: !1713)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !40, line: 54, size: 128, elements: !1835)
!1835 = !{!1836, !1837}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1834, file: !40, line: 55, baseType: !328, size: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1834, file: !40, line: 56, baseType: !1838, size: 64, offset: 64)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !40, line: 56, flags: DIFlagFwdDecl)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1568, file: !1569, line: 872, baseType: !1841, size: 512, offset: 6016)
!1841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1078, size: 512, elements: !495)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1568, file: !1569, line: 873, baseType: !660, size: 128, offset: 6528)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1568, file: !1569, line: 874, baseType: !660, size: 128, offset: 6656)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1568, file: !1569, line: 876, baseType: !1845, size: 64, offset: 6784)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1847, line: 26, size: 192, elements: !1848)
!1847 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1848 = !{!1849, !1850}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1846, file: !1847, line: 27, baseType: !7, size: 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1846, file: !1847, line: 28, baseType: !1851, size: 128, offset: 64)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1852, line: 43, size: 128, elements: !1853)
!1852 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1853 = !{!1854, !1855}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1851, file: !1852, line: 44, baseType: !1215)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1851, file: !1852, line: 45, baseType: !660, size: 128)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1568, file: !1569, line: 879, baseType: !1144, size: 64, offset: 6848)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1568, file: !1569, line: 882, baseType: !1144, size: 64, offset: 6912)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1568, file: !1569, line: 884, baseType: !609, size: 64, offset: 6976)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1568, file: !1569, line: 885, baseType: !609, size: 64, offset: 7040)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1568, file: !1569, line: 890, baseType: !609, size: 64, offset: 7104)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1568, file: !1569, line: 891, baseType: !1862, size: 128, offset: 7168)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1569, line: 242, size: 128, elements: !1863)
!1863 = !{!1864, !1865, !1866}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1862, file: !1569, line: 244, baseType: !609, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1862, file: !1569, line: 245, baseType: !609, size: 64, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1862, file: !1569, line: 246, baseType: !1215, offset: 128)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1568, file: !1569, line: 900, baseType: !568, size: 64, offset: 7296)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1568, file: !1569, line: 901, baseType: !568, size: 64, offset: 7360)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1568, file: !1569, line: 904, baseType: !609, size: 64, offset: 7424)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1568, file: !1569, line: 907, baseType: !609, size: 64, offset: 7488)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1568, file: !1569, line: 910, baseType: !568, size: 64, offset: 7552)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1568, file: !1569, line: 911, baseType: !568, size: 64, offset: 7616)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1568, file: !1569, line: 914, baseType: !1874, size: 640, offset: 7680)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1875, line: 123, size: 640, elements: !1876)
!1875 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1876 = !{!1877, !1883, !1884}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1874, file: !1875, line: 124, baseType: !1878, size: 576)
!1878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1879, size: 576, elements: !457)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1875, line: 108, size: 192, elements: !1880)
!1880 = !{!1881, !1882}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1879, file: !1875, line: 109, baseType: !609, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1879, file: !1875, line: 110, baseType: !1687, size: 128, offset: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1874, file: !1875, line: 125, baseType: !7, size: 32, offset: 576)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1874, file: !1875, line: 126, baseType: !7, size: 32, offset: 608)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1568, file: !1569, line: 917, baseType: !1886, size: 192, offset: 8320)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1875, line: 134, size: 192, elements: !1887)
!1887 = !{!1888, !1889}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1886, file: !1875, line: 135, baseType: !816, size: 128, align: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1886, file: !1875, line: 136, baseType: !7, size: 32, offset: 128)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1568, file: !1569, line: 923, baseType: !1891, size: 64, offset: 8512)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1893)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1894, line: 111, size: 1280, elements: !1895)
!1894 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1895 = !{!1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1915, !1916, !1917, !1918, !1919, !1920, !2025, !2026, !2027, !2028, !2054, !2057, !2067}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1893, file: !1894, line: 112, baseType: !350, size: 32)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1893, file: !1894, line: 120, baseType: !878, size: 32, offset: 32)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1893, file: !1894, line: 121, baseType: !886, size: 32, offset: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1893, file: !1894, line: 122, baseType: !878, size: 32, offset: 96)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1893, file: !1894, line: 123, baseType: !886, size: 32, offset: 128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1893, file: !1894, line: 124, baseType: !878, size: 32, offset: 160)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1893, file: !1894, line: 125, baseType: !886, size: 32, offset: 192)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1893, file: !1894, line: 126, baseType: !878, size: 32, offset: 224)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1893, file: !1894, line: 127, baseType: !886, size: 32, offset: 256)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1893, file: !1894, line: 128, baseType: !7, size: 32, offset: 288)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1893, file: !1894, line: 129, baseType: !1907, size: 64, offset: 320)
!1907 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1908, line: 26, baseType: !1909)
!1908 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1908, line: 24, size: 64, elements: !1910)
!1910 = !{!1911}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1909, file: !1908, line: 25, baseType: !1912, size: 64)
!1912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 64, elements: !1913)
!1913 = !{!1914}
!1914 = !DISubrange(count: 2)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1893, file: !1894, line: 130, baseType: !1907, size: 64, offset: 384)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1893, file: !1894, line: 131, baseType: !1907, size: 64, offset: 448)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1893, file: !1894, line: 132, baseType: !1907, size: 64, offset: 512)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1893, file: !1894, line: 133, baseType: !1907, size: 64, offset: 576)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1893, file: !1894, line: 135, baseType: !327, size: 8, offset: 640)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1893, file: !1894, line: 137, baseType: !1921, size: 64, offset: 704)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1923, line: 189, size: 1664, elements: !1924)
!1923 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1924 = !{!1925, !1926, !1929, !1934, !1935, !1938, !1939, !1944, !1945, !1946, !1947, !1949, !1950, !1951, !1952, !1953, !1989, !2010}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1922, file: !1923, line: 190, baseType: !345, size: 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1922, file: !1923, line: 191, baseType: !1927, size: 32, offset: 32)
!1927 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1923, line: 28, baseType: !1928)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !320, line: 98, baseType: !624)
!1929 = !DIDerivedType(tag: DW_TAG_member, scope: !1922, file: !1923, line: 192, baseType: !1930, size: 192, offset: 64)
!1930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1922, file: !1923, line: 192, size: 192, elements: !1931)
!1931 = !{!1932, !1933}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1930, file: !1923, line: 193, baseType: !660, size: 128)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1930, file: !1923, line: 194, baseType: !1195, size: 192, align: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1922, file: !1923, line: 199, baseType: !1202, size: 256, offset: 256)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1922, file: !1923, line: 200, baseType: !1936, size: 64, offset: 512)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1923, line: 200, flags: DIFlagFwdDecl)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1922, file: !1923, line: 201, baseType: !321, size: 64, offset: 576)
!1939 = !DIDerivedType(tag: DW_TAG_member, scope: !1922, file: !1923, line: 202, baseType: !1940, size: 64, offset: 640)
!1940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1922, file: !1923, line: 202, size: 64, elements: !1941)
!1941 = !{!1942, !1943}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1940, file: !1923, line: 203, baseType: !979, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1940, file: !1923, line: 204, baseType: !979, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1922, file: !1923, line: 206, baseType: !979, size: 64, offset: 704)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1922, file: !1923, line: 207, baseType: !878, size: 32, offset: 768)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1922, file: !1923, line: 208, baseType: !886, size: 32, offset: 800)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1922, file: !1923, line: 209, baseType: !1948, size: 32, offset: 832)
!1948 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1923, line: 31, baseType: !998)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1922, file: !1923, line: 210, baseType: !520, size: 16, offset: 864)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1922, file: !1923, line: 211, baseType: !520, size: 16, offset: 880)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1922, file: !1923, line: 215, baseType: !1556, size: 16, offset: 896)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1922, file: !1923, line: 222, baseType: !568, size: 64, offset: 960)
!1953 = !DIDerivedType(tag: DW_TAG_member, scope: !1922, file: !1923, line: 239, baseType: !1954, size: 320, offset: 1024)
!1954 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1922, file: !1923, line: 239, size: 320, elements: !1955)
!1955 = !{!1956, !1981}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1954, file: !1923, line: 240, baseType: !1957, size: 320)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1923, line: 108, size: 320, elements: !1958)
!1958 = !{!1959, !1960, !1970, !1973, !1980}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1957, file: !1923, line: 110, baseType: !568, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, scope: !1957, file: !1923, line: 111, baseType: !1961, size: 64, offset: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1957, file: !1923, line: 111, size: 64, elements: !1962)
!1962 = !{!1963, !1969}
!1963 = !DIDerivedType(tag: DW_TAG_member, scope: !1961, file: !1923, line: 112, baseType: !1964, size: 64)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1961, file: !1923, line: 112, size: 64, elements: !1965)
!1965 = !{!1966, !1967}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1964, file: !1923, line: 114, baseType: !518, size: 16)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1964, file: !1923, line: 115, baseType: !1968, size: 48, offset: 16)
!1968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 48, elements: !533)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1961, file: !1923, line: 121, baseType: !568, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1957, file: !1923, line: 123, baseType: !1971, size: 64, offset: 128)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1923, line: 96, flags: DIFlagFwdDecl)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1957, file: !1923, line: 124, baseType: !1974, size: 64, offset: 192)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1923, line: 102, size: 192, elements: !1976)
!1976 = !{!1977, !1978, !1979}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1975, file: !1923, line: 103, baseType: !816, size: 128, align: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1975, file: !1923, line: 104, baseType: !345, size: 32, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1975, file: !1923, line: 105, baseType: !400, size: 8, offset: 160)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1957, file: !1923, line: 125, baseType: !667, size: 64, offset: 256)
!1981 = !DIDerivedType(tag: DW_TAG_member, scope: !1954, file: !1923, line: 241, baseType: !1982, size: 320)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1954, file: !1923, line: 241, size: 320, elements: !1983)
!1983 = !{!1984, !1985, !1986, !1987, !1988}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1982, file: !1923, line: 242, baseType: !568, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1982, file: !1923, line: 243, baseType: !568, size: 64, offset: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1982, file: !1923, line: 244, baseType: !1971, size: 64, offset: 128)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1982, file: !1923, line: 245, baseType: !1974, size: 64, offset: 192)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1982, file: !1923, line: 246, baseType: !642, size: 64, offset: 256)
!1989 = !DIDerivedType(tag: DW_TAG_member, scope: !1922, file: !1923, line: 254, baseType: !1990, size: 256, offset: 1344)
!1990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1922, file: !1923, line: 254, size: 256, elements: !1991)
!1991 = !{!1992, !1998}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1990, file: !1923, line: 255, baseType: !1993, size: 256)
!1993 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1923, line: 128, size: 256, elements: !1994)
!1994 = !{!1995, !1996}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1993, file: !1923, line: 129, baseType: !321, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1993, file: !1923, line: 130, baseType: !1997, size: 256)
!1997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 256, elements: !495)
!1998 = !DIDerivedType(tag: DW_TAG_member, scope: !1990, file: !1923, line: 256, baseType: !1999, size: 256)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1990, file: !1923, line: 256, size: 256, elements: !2000)
!2000 = !{!2001, !2002}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1999, file: !1923, line: 258, baseType: !660, size: 128)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1999, file: !1923, line: 259, baseType: !2003, size: 128, offset: 128)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2004, line: 22, size: 128, elements: !2005)
!2004 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!2005 = !{!2006, !2009}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2003, file: !2004, line: 23, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2004, line: 23, flags: DIFlagFwdDecl)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2003, file: !2004, line: 24, baseType: !568, size: 64, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1922, file: !1923, line: 274, baseType: !2011, size: 64, offset: 1600)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1923, line: 170, size: 192, elements: !2013)
!2013 = !{!2014, !2023, !2024}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2012, file: !1923, line: 171, baseType: !2015, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1923, line: 165, baseType: !2016)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!328, !1921, !2019, !2021, !1921}
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1972)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1993)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2012, file: !1923, line: 172, baseType: !1921, size: 64, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2012, file: !1923, line: 173, baseType: !1971, size: 64, offset: 128)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1893, file: !1894, line: 138, baseType: !1921, size: 64, offset: 768)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1893, file: !1894, line: 139, baseType: !1921, size: 64, offset: 832)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1893, file: !1894, line: 140, baseType: !1921, size: 64, offset: 896)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1893, file: !1894, line: 145, baseType: !2029, size: 64, offset: 960)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2031, line: 13, size: 896, elements: !2032)
!2031 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!2032 = !{!2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2030, file: !2031, line: 14, baseType: !345, size: 32)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2030, file: !2031, line: 15, baseType: !350, size: 32, offset: 32)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2030, file: !2031, line: 16, baseType: !350, size: 32, offset: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2030, file: !2031, line: 21, baseType: !1206, size: 64, offset: 128)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2030, file: !2031, line: 27, baseType: !568, size: 64, offset: 192)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2030, file: !2031, line: 28, baseType: !568, size: 64, offset: 256)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2030, file: !2031, line: 29, baseType: !1206, size: 64, offset: 320)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2030, file: !2031, line: 32, baseType: !1078, size: 128, offset: 384)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2030, file: !2031, line: 33, baseType: !878, size: 32, offset: 512)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2030, file: !2031, line: 37, baseType: !1206, size: 64, offset: 576)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2030, file: !2031, line: 44, baseType: !2044, size: 256, offset: 640)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2045, line: 15, size: 256, elements: !2046)
!2045 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2046 = !{!2047, !2048, !2049, !2050, !2051, !2052, !2053}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2044, file: !2045, line: 16, baseType: !1215)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2044, file: !2045, line: 18, baseType: !328, size: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2044, file: !2045, line: 19, baseType: !328, size: 32, offset: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2044, file: !2045, line: 20, baseType: !328, size: 32, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2044, file: !2045, line: 21, baseType: !328, size: 32, offset: 96)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2044, file: !2045, line: 22, baseType: !568, size: 64, offset: 128)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2044, file: !2045, line: 23, baseType: !568, size: 64, offset: 192)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1893, file: !1894, line: 146, baseType: !2055, size: 64, offset: 1024)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1162, line: 516, flags: DIFlagFwdDecl)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1893, file: !1894, line: 147, baseType: !2058, size: 64, offset: 1088)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1894, line: 25, size: 64, elements: !2060)
!2060 = !{!2061, !2062, !2063}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2059, file: !1894, line: 26, baseType: !350, size: 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2059, file: !1894, line: 27, baseType: !328, size: 32, offset: 32)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2059, file: !1894, line: 28, baseType: !2064, offset: 64)
!2064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !886, elements: !2065)
!2065 = !{!2066}
!2066 = !DISubrange(count: 0)
!2067 = !DIDerivedType(tag: DW_TAG_member, scope: !1893, file: !1894, line: 149, baseType: !2068, size: 128, offset: 1152)
!2068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1893, file: !1894, line: 149, size: 128, elements: !2069)
!2069 = !{!2070, !2071}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2068, file: !1894, line: 150, baseType: !328, size: 32)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2068, file: !1894, line: 151, baseType: !816, size: 128, align: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1568, file: !1569, line: 926, baseType: !1891, size: 64, offset: 8576)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1568, file: !1569, line: 929, baseType: !1891, size: 64, offset: 8640)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1568, file: !1569, line: 933, baseType: !1921, size: 64, offset: 8704)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1568, file: !1569, line: 943, baseType: !2076, size: 128, offset: 8768)
!2076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 128, elements: !2077)
!2077 = !{!2078}
!2078 = !DISubrange(count: 16)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1568, file: !1569, line: 945, baseType: !2080, size: 64, offset: 8896)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1569, line: 49, flags: DIFlagFwdDecl)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1568, file: !1569, line: 956, baseType: !2083, size: 64, offset: 8960)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1569, line: 45, flags: DIFlagFwdDecl)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1568, file: !1569, line: 959, baseType: !2086, size: 64, offset: 9024)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1569, line: 959, flags: DIFlagFwdDecl)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1568, file: !1569, line: 962, baseType: !2089, size: 64, offset: 9088)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1569, line: 66, flags: DIFlagFwdDecl)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1568, file: !1569, line: 966, baseType: !2092, size: 64, offset: 9152)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1569, line: 50, flags: DIFlagFwdDecl)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1568, file: !1569, line: 969, baseType: !2095, size: 64, offset: 9216)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2097, line: 82, size: 7296, elements: !2098)
!2097 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2098 = !{!2099, !2100, !2101, !2102, !2103, !2104, !2105, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2134, !2143, !2144, !2146, !2147, !2148, !2151, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2181, !2182, !2189, !2190, !2191, !2192, !2193, !2194}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2096, file: !2097, line: 83, baseType: !345, size: 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2096, file: !2097, line: 84, baseType: !350, size: 32, offset: 32)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2096, file: !2097, line: 85, baseType: !328, size: 32, offset: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2096, file: !2097, line: 86, baseType: !660, size: 128, offset: 128)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2096, file: !2097, line: 88, baseType: !1825, size: 128, offset: 256)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2096, file: !2097, line: 91, baseType: !1567, size: 64, offset: 384)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2096, file: !2097, line: 94, baseType: !2106, size: 192, offset: 448)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2107, line: 30, size: 192, elements: !2108)
!2107 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2108 = !{!2109, !2110}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2106, file: !2107, line: 31, baseType: !660, size: 128)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2106, file: !2107, line: 32, baseType: !2111, size: 64, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2112, line: 25, baseType: !2113)
!2112 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2112, line: 23, size: 64, elements: !2114)
!2114 = !{!2115}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2113, file: !2112, line: 24, baseType: !1712, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2096, file: !2097, line: 97, baseType: !1074, size: 64, offset: 640)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2096, file: !2097, line: 100, baseType: !328, size: 32, offset: 704)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2096, file: !2097, line: 106, baseType: !328, size: 32, offset: 736)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2096, file: !2097, line: 107, baseType: !1567, size: 64, offset: 768)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2096, file: !2097, line: 110, baseType: !328, size: 32, offset: 832)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2096, file: !2097, line: 111, baseType: !7, size: 32, offset: 864)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2096, file: !2097, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2096, file: !2097, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2096, file: !2097, line: 128, baseType: !328, size: 32, offset: 928)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2096, file: !2097, line: 129, baseType: !660, size: 128, offset: 960)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2096, file: !2097, line: 132, baseType: !1638, size: 512, offset: 1088)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2096, file: !2097, line: 133, baseType: !1646, size: 64, offset: 1600)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2096, file: !2097, line: 140, baseType: !2129, size: 256, offset: 1664)
!2129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2130, size: 256, elements: !1913)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2097, line: 38, size: 128, elements: !2131)
!2131 = !{!2132, !2133}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2130, file: !2097, line: 39, baseType: !609, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2130, file: !2097, line: 40, baseType: !609, size: 64, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2096, file: !2097, line: 146, baseType: !2135, size: 192, offset: 1920)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2097, line: 66, size: 192, elements: !2136)
!2136 = !{!2137}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2135, file: !2097, line: 67, baseType: !2138, size: 192)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2097, line: 47, size: 192, elements: !2139)
!2139 = !{!2140, !2141, !2142}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2138, file: !2097, line: 48, baseType: !1208, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2138, file: !2097, line: 49, baseType: !1208, size: 64, offset: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2138, file: !2097, line: 50, baseType: !1208, size: 64, offset: 128)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2096, file: !2097, line: 150, baseType: !1874, size: 640, offset: 2112)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2096, file: !2097, line: 153, baseType: !2145, size: 256, offset: 2752)
!2145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1815, size: 256, elements: !495)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2096, file: !2097, line: 159, baseType: !1815, size: 64, offset: 3008)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2096, file: !2097, line: 162, baseType: !328, size: 32, offset: 3072)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2096, file: !2097, line: 164, baseType: !2149, size: 64, offset: 3136)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2097, line: 164, flags: DIFlagFwdDecl)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2096, file: !2097, line: 175, baseType: !2152, size: 32, offset: 3200)
!2152 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !839, line: 805, baseType: !2153)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !839, line: 798, size: 32, elements: !2154)
!2154 = !{!2155, !2156}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2153, file: !839, line: 803, baseType: !838, size: 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2153, file: !839, line: 804, baseType: !690, offset: 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2096, file: !2097, line: 176, baseType: !609, size: 64, offset: 3264)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2096, file: !2097, line: 176, baseType: !609, size: 64, offset: 3328)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2096, file: !2097, line: 176, baseType: !609, size: 64, offset: 3392)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2096, file: !2097, line: 176, baseType: !609, size: 64, offset: 3456)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2096, file: !2097, line: 177, baseType: !609, size: 64, offset: 3520)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2096, file: !2097, line: 178, baseType: !609, size: 64, offset: 3584)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2096, file: !2097, line: 179, baseType: !1862, size: 128, offset: 3648)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2096, file: !2097, line: 180, baseType: !568, size: 64, offset: 3776)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2096, file: !2097, line: 180, baseType: !568, size: 64, offset: 3840)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2096, file: !2097, line: 180, baseType: !568, size: 64, offset: 3904)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2096, file: !2097, line: 180, baseType: !568, size: 64, offset: 3968)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2096, file: !2097, line: 181, baseType: !568, size: 64, offset: 4032)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2096, file: !2097, line: 181, baseType: !568, size: 64, offset: 4096)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2096, file: !2097, line: 181, baseType: !568, size: 64, offset: 4160)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2096, file: !2097, line: 181, baseType: !568, size: 64, offset: 4224)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2096, file: !2097, line: 182, baseType: !568, size: 64, offset: 4288)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2096, file: !2097, line: 182, baseType: !568, size: 64, offset: 4352)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2096, file: !2097, line: 182, baseType: !568, size: 64, offset: 4416)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2096, file: !2097, line: 182, baseType: !568, size: 64, offset: 4480)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2096, file: !2097, line: 183, baseType: !568, size: 64, offset: 4544)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2096, file: !2097, line: 183, baseType: !568, size: 64, offset: 4608)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2096, file: !2097, line: 184, baseType: !2179, offset: 4672)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2180, line: 12, elements: !704)
!2180 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2096, file: !2097, line: 192, baseType: !491, size: 64, offset: 4672)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2096, file: !2097, line: 203, baseType: !2183, size: 2048, offset: 4736)
!2183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2184, size: 2048, elements: !2077)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2185, line: 43, size: 128, elements: !2186)
!2185 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2186 = !{!2187, !2188}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2184, file: !2185, line: 44, baseType: !775, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2184, file: !2185, line: 45, baseType: !775, size: 64, offset: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2096, file: !2097, line: 220, baseType: !400, size: 8, offset: 6784)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2096, file: !2097, line: 221, baseType: !1556, size: 16, offset: 6800)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2096, file: !2097, line: 222, baseType: !1556, size: 16, offset: 6816)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2096, file: !2097, line: 224, baseType: !1407, size: 64, offset: 6848)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2096, file: !2097, line: 227, baseType: !1524, size: 192, offset: 6912)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2096, file: !2097, line: 233, baseType: !1524, size: 192, offset: 7104)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1568, file: !1569, line: 970, baseType: !2196, size: 64, offset: 9280)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2097, line: 20, size: 16576, elements: !2198)
!2198 = !{!2199, !2200, !2201, !2202}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2197, file: !2097, line: 21, baseType: !690)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2197, file: !2097, line: 22, baseType: !345, size: 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2197, file: !2097, line: 23, baseType: !1825, size: 128, offset: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2197, file: !2097, line: 24, baseType: !2203, size: 16384, offset: 192)
!2203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2204, size: 16384, elements: !733)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2107, line: 49, size: 256, elements: !2205)
!2205 = !{!2206}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2204, file: !2107, line: 50, baseType: !2207, size: 256)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2107, line: 35, size: 256, elements: !2208)
!2208 = !{!2209, !2216, !2217, !2223}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2207, file: !2107, line: 37, baseType: !2210, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2211, line: 19, baseType: !2212)
!2211 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2211, line: 18, baseType: !2214)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{null, !328}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2207, file: !2107, line: 38, baseType: !568, size: 64, offset: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2207, file: !2107, line: 44, baseType: !2218, size: 64, offset: 128)
!2218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2211, line: 22, baseType: !2219)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2211, line: 21, baseType: !2221)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{null}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2207, file: !2107, line: 46, baseType: !2111, size: 64, offset: 192)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1568, file: !1569, line: 971, baseType: !2111, size: 64, offset: 9344)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1568, file: !1569, line: 972, baseType: !2111, size: 64, offset: 9408)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1568, file: !1569, line: 974, baseType: !2111, size: 64, offset: 9472)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1568, file: !1569, line: 975, baseType: !2106, size: 192, offset: 9536)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1568, file: !1569, line: 976, baseType: !568, size: 64, offset: 9728)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1568, file: !1569, line: 977, baseType: !773, size: 64, offset: 9792)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1568, file: !1569, line: 978, baseType: !7, size: 32, offset: 9856)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1568, file: !1569, line: 980, baseType: !819, size: 64, offset: 9920)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1568, file: !1569, line: 989, baseType: !2233, size: 128, offset: 9984)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2234, line: 35, size: 128, elements: !2235)
!2234 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2235 = !{!2236, !2237, !2238}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2233, file: !2234, line: 36, baseType: !328, size: 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2233, file: !2234, line: 37, baseType: !350, size: 32, offset: 32)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2233, file: !2234, line: 38, baseType: !2239, size: 64, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2234, line: 23, flags: DIFlagFwdDecl)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1568, file: !1569, line: 992, baseType: !609, size: 64, offset: 10112)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1568, file: !1569, line: 993, baseType: !609, size: 64, offset: 10176)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1568, file: !1569, line: 996, baseType: !690, offset: 10240)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1568, file: !1569, line: 999, baseType: !1215, offset: 10240)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1568, file: !1569, line: 1001, baseType: !2246, size: 64, offset: 10240)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1569, line: 636, size: 64, elements: !2247)
!2247 = !{!2248}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2246, file: !1569, line: 637, baseType: !2249, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1568, file: !1569, line: 1005, baseType: !1187, size: 128, offset: 10304)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1568, file: !1569, line: 1007, baseType: !1567, size: 64, offset: 10432)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1568, file: !1569, line: 1009, baseType: !2253, size: 64, offset: 10496)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1569, line: 1009, flags: DIFlagFwdDecl)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1568, file: !1569, line: 1043, baseType: !321, size: 64, offset: 10560)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1568, file: !1569, line: 1046, baseType: !2257, size: 64, offset: 10624)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1569, line: 41, flags: DIFlagFwdDecl)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1568, file: !1569, line: 1050, baseType: !2260, size: 64, offset: 10688)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1569, line: 42, flags: DIFlagFwdDecl)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1568, file: !1569, line: 1054, baseType: !2263, size: 64, offset: 10752)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1569, line: 55, flags: DIFlagFwdDecl)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1568, file: !1569, line: 1056, baseType: !2266, size: 64, offset: 10816)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1569, line: 40, flags: DIFlagFwdDecl)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1568, file: !1569, line: 1058, baseType: !2269, size: 64, offset: 10880)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2271, line: 99, size: 704, elements: !2272)
!2271 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2272 = !{!2273, !2274, !2275, !2276, !2277, !2278, !2279, !2298, !2299}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2270, file: !2271, line: 100, baseType: !1206, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2270, file: !2271, line: 101, baseType: !350, size: 32, offset: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2270, file: !2271, line: 102, baseType: !350, size: 32, offset: 96)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2270, file: !2271, line: 105, baseType: !690, offset: 128)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2270, file: !2271, line: 107, baseType: !520, size: 16, offset: 128)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2270, file: !2271, line: 109, baseType: !1178, size: 128, offset: 192)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2270, file: !2271, line: 110, baseType: !2280, size: 64, offset: 320)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2271, line: 73, size: 448, elements: !2282)
!2282 = !{!2283, !2286, !2287, !2292, !2297}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2281, file: !2271, line: 74, baseType: !2284, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2271, line: 74, flags: DIFlagFwdDecl)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2281, file: !2271, line: 75, baseType: !2269, size: 64, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, scope: !2281, file: !2271, line: 83, baseType: !2288, size: 128, offset: 128)
!2288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2281, file: !2271, line: 83, size: 128, elements: !2289)
!2289 = !{!2290, !2291}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2288, file: !2271, line: 84, baseType: !660, size: 128)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2288, file: !2271, line: 85, baseType: !1368, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, scope: !2281, file: !2271, line: 87, baseType: !2293, size: 128, offset: 256)
!2293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2281, file: !2271, line: 87, size: 128, elements: !2294)
!2294 = !{!2295, !2296}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2293, file: !2271, line: 88, baseType: !1078, size: 128)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2293, file: !2271, line: 89, baseType: !816, size: 128, align: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2281, file: !2271, line: 92, baseType: !7, size: 32, offset: 384)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2270, file: !2271, line: 111, baseType: !1074, size: 64, offset: 384)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2270, file: !2271, line: 113, baseType: !2300, size: 256, offset: 448)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2301, line: 102, size: 256, elements: !2302)
!2301 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2302 = !{!2303, !2304, !2305}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2300, file: !2301, line: 103, baseType: !1206, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2300, file: !2301, line: 104, baseType: !660, size: 128, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2300, file: !2301, line: 105, baseType: !2306, size: 64, offset: 192)
!2306 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2301, line: 21, baseType: !2307)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{null, !2310}
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1568, file: !1569, line: 1061, baseType: !2312, size: 64, offset: 10944)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1569, line: 43, flags: DIFlagFwdDecl)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1568, file: !1569, line: 1064, baseType: !568, size: 64, offset: 11008)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1568, file: !1569, line: 1065, baseType: !2316, size: 64, offset: 11072)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2107, line: 14, baseType: !2318)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2107, line: 12, size: 384, elements: !2319)
!2319 = !{!2320}
!2320 = !DIDerivedType(tag: DW_TAG_member, scope: !2318, file: !2107, line: 13, baseType: !2321, size: 384)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2318, file: !2107, line: 13, size: 384, elements: !2322)
!2322 = !{!2323, !2324, !2325, !2326}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2321, file: !2107, line: 13, baseType: !328, size: 32)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2321, file: !2107, line: 13, baseType: !328, size: 32, offset: 32)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2321, file: !2107, line: 13, baseType: !328, size: 32, offset: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2321, file: !2107, line: 13, baseType: !2327, size: 256, offset: 128)
!2327 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2328, line: 32, size: 256, elements: !2329)
!2328 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2329 = !{!2330, !2335, !2348, !2354, !2363, !2383, !2388}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2327, file: !2328, line: 37, baseType: !2331, size: 64)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2327, file: !2328, line: 34, size: 64, elements: !2332)
!2332 = !{!2333, !2334}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2331, file: !2328, line: 35, baseType: !1804, size: 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2331, file: !2328, line: 36, baseType: !884, size: 32, offset: 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2327, file: !2328, line: 45, baseType: !2336, size: 192)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2327, file: !2328, line: 40, size: 192, elements: !2337)
!2337 = !{!2338, !2340, !2341, !2347}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2336, file: !2328, line: 41, baseType: !2339, size: 32)
!2339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !761, line: 95, baseType: !328)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2336, file: !2328, line: 42, baseType: !328, size: 32, offset: 32)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2336, file: !2328, line: 43, baseType: !2342, size: 64, offset: 64)
!2342 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2328, line: 11, baseType: !2343)
!2343 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2328, line: 8, size: 64, elements: !2344)
!2344 = !{!2345, !2346}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2343, file: !2328, line: 9, baseType: !328, size: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2343, file: !2328, line: 10, baseType: !321, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2336, file: !2328, line: 44, baseType: !328, size: 32, offset: 128)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2327, file: !2328, line: 52, baseType: !2349, size: 128)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2327, file: !2328, line: 48, size: 128, elements: !2350)
!2350 = !{!2351, !2352, !2353}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2349, file: !2328, line: 49, baseType: !1804, size: 32)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2349, file: !2328, line: 50, baseType: !884, size: 32, offset: 32)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2349, file: !2328, line: 51, baseType: !2342, size: 64, offset: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2327, file: !2328, line: 61, baseType: !2355, size: 256)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2327, file: !2328, line: 55, size: 256, elements: !2356)
!2356 = !{!2357, !2358, !2359, !2360, !2362}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2355, file: !2328, line: 56, baseType: !1804, size: 32)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2355, file: !2328, line: 57, baseType: !884, size: 32, offset: 32)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2355, file: !2328, line: 58, baseType: !328, size: 32, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2355, file: !2328, line: 59, baseType: !2361, size: 64, offset: 128)
!2361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !761, line: 94, baseType: !762)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2355, file: !2328, line: 60, baseType: !2361, size: 64, offset: 192)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2327, file: !2328, line: 95, baseType: !2364, size: 256)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2327, file: !2328, line: 64, size: 256, elements: !2365)
!2365 = !{!2366, !2367}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2364, file: !2328, line: 65, baseType: !321, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, scope: !2364, file: !2328, line: 77, baseType: !2368, size: 192, offset: 64)
!2368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2364, file: !2328, line: 77, size: 192, elements: !2369)
!2369 = !{!2370, !2371, !2378}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2368, file: !2328, line: 82, baseType: !1556, size: 16)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2368, file: !2328, line: 88, baseType: !2372, size: 192)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2368, file: !2328, line: 84, size: 192, elements: !2373)
!2373 = !{!2374, !2376, !2377}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2372, file: !2328, line: 85, baseType: !2375, size: 64)
!2375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 64, elements: !377)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2372, file: !2328, line: 86, baseType: !321, size: 64, offset: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2372, file: !2328, line: 87, baseType: !321, size: 64, offset: 128)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2368, file: !2328, line: 93, baseType: !2379, size: 96)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2368, file: !2328, line: 90, size: 96, elements: !2380)
!2380 = !{!2381, !2382}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2379, file: !2328, line: 91, baseType: !2375, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2379, file: !2328, line: 92, baseType: !367, size: 32, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2327, file: !2328, line: 101, baseType: !2384, size: 128)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2327, file: !2328, line: 98, size: 128, elements: !2385)
!2385 = !{!2386, !2387}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2384, file: !2328, line: 99, baseType: !563, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2384, file: !2328, line: 100, baseType: !328, size: 32, offset: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2327, file: !2328, line: 108, baseType: !2389, size: 128)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2327, file: !2328, line: 104, size: 128, elements: !2390)
!2390 = !{!2391, !2392, !2393}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2389, file: !2328, line: 105, baseType: !321, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2389, file: !2328, line: 106, baseType: !328, size: 32, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2389, file: !2328, line: 107, baseType: !7, size: 32, offset: 96)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1568, file: !1569, line: 1067, baseType: !2179, offset: 11136)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1568, file: !1569, line: 1099, baseType: !2396, size: 64, offset: 11136)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1569, line: 56, flags: DIFlagFwdDecl)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1568, file: !1569, line: 1103, baseType: !660, size: 128, offset: 11200)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1568, file: !1569, line: 1104, baseType: !2400, size: 64, offset: 11328)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1569, line: 46, flags: DIFlagFwdDecl)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1568, file: !1569, line: 1105, baseType: !1524, size: 192, offset: 11392)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1568, file: !1569, line: 1106, baseType: !7, size: 32, offset: 11584)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1568, file: !1569, line: 1109, baseType: !2405, size: 128, offset: 11648)
!2405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2406, size: 128, elements: !1913)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1569, line: 51, flags: DIFlagFwdDecl)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1568, file: !1569, line: 1110, baseType: !1524, size: 192, offset: 11776)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1568, file: !1569, line: 1111, baseType: !660, size: 128, offset: 11968)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1568, file: !1569, line: 1173, baseType: !2411, size: 64, offset: 12096)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2413, line: 62, size: 256, align: 256, elements: !2414)
!2413 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2414 = !{!2415, !2416, !2417, !2422}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2412, file: !2413, line: 75, baseType: !367, size: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2412, file: !2413, line: 90, baseType: !367, size: 32, offset: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2412, file: !2413, line: 124, baseType: !2418, size: 64, offset: 64)
!2418 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2412, file: !2413, line: 109, size: 64, elements: !2419)
!2419 = !{!2420, !2421}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2418, file: !2413, line: 110, baseType: !490, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2418, file: !2413, line: 112, baseType: !490, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2412, file: !2413, line: 144, baseType: !367, size: 32, offset: 128)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1568, file: !1569, line: 1174, baseType: !366, size: 32, offset: 12160)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1568, file: !1569, line: 1179, baseType: !568, size: 64, offset: 12224)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1568, file: !1569, line: 1182, baseType: !2426, size: 128, offset: 12288)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1504, line: 76, size: 128, elements: !2427)
!2427 = !{!2428, !2433, !2434}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2426, file: !1504, line: 85, baseType: !2429, size: 64)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2430, line: 7, size: 64, elements: !2431)
!2430 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2431 = !{!2432}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2429, file: !2430, line: 12, baseType: !1709, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2426, file: !1504, line: 88, baseType: !400, size: 8, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2426, file: !1504, line: 95, baseType: !400, size: 8, offset: 72)
!2435 = !DIDerivedType(tag: DW_TAG_member, scope: !1568, file: !1569, line: 1184, baseType: !2436, size: 128, offset: 12416)
!2436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1568, file: !1569, line: 1184, size: 128, elements: !2437)
!2437 = !{!2438, !2439}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2436, file: !1569, line: 1185, baseType: !345, size: 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2436, file: !1569, line: 1186, baseType: !816, size: 128, align: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1568, file: !1569, line: 1190, baseType: !2441, size: 64, offset: 12544)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1569, line: 53, flags: DIFlagFwdDecl)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1568, file: !1569, line: 1192, baseType: !2444, size: 128, offset: 12608)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1504, line: 64, size: 128, elements: !2445)
!2445 = !{!2446, !2447, !2448}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2444, file: !1504, line: 65, baseType: !1160, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2444, file: !1504, line: 67, baseType: !367, size: 32, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2444, file: !1504, line: 68, baseType: !367, size: 32, offset: 96)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1568, file: !1569, line: 1206, baseType: !328, size: 32, offset: 12736)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1568, file: !1569, line: 1207, baseType: !328, size: 32, offset: 12768)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1568, file: !1569, line: 1209, baseType: !568, size: 64, offset: 12800)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1568, file: !1569, line: 1219, baseType: !609, size: 64, offset: 12864)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1568, file: !1569, line: 1220, baseType: !609, size: 64, offset: 12928)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1568, file: !1569, line: 1317, baseType: !328, size: 32, offset: 12992)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1568, file: !1569, line: 1319, baseType: !1567, size: 64, offset: 13056)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1568, file: !1569, line: 1322, baseType: !2457, size: 64, offset: 13120)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2459, line: 56, size: 512, elements: !2460)
!2459 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2460 = !{!2461, !2462, !2463, !2464, !2465, !2466, !2467, !2469}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2458, file: !2459, line: 57, baseType: !2457, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2458, file: !2459, line: 58, baseType: !321, size: 64, offset: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2458, file: !2459, line: 59, baseType: !568, size: 64, offset: 128)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2458, file: !2459, line: 60, baseType: !568, size: 64, offset: 192)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2458, file: !2459, line: 61, baseType: !1255, size: 64, offset: 256)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2458, file: !2459, line: 62, baseType: !7, size: 32, offset: 320)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2458, file: !2459, line: 63, baseType: !2468, size: 64, offset: 384)
!2468 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !320, line: 153, baseType: !609)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2458, file: !2459, line: 64, baseType: !2470, size: 64, offset: 448)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1568, file: !1569, line: 1326, baseType: !345, size: 32, offset: 13184)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1568, file: !1569, line: 1342, baseType: !321, size: 64, offset: 13248)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1568, file: !1569, line: 1343, baseType: !490, size: 64, offset: 13312)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1568, file: !1569, line: 1344, baseType: !609, size: 64, offset: 13376)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1568, file: !1569, line: 1345, baseType: !490, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1568, file: !1569, line: 1346, baseType: !490, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1568, file: !1569, line: 1347, baseType: !490, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1568, file: !1569, line: 1348, baseType: !816, size: 128, align: 64, offset: 13504)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1568, file: !1569, line: 1358, baseType: !2481, size: 34816, offset: 13824)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2482, line: 485, size: 34816, elements: !2483)
!2482 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2483 = !{!2484, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2513, !2514, !2515, !2516, !2517, !2518, !2521, !2522, !2523}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2481, file: !2482, line: 487, baseType: !2485, size: 192)
!2485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2486, size: 192, elements: !457)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2487, line: 16, size: 64, elements: !2488)
!2487 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2488 = !{!2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2486, file: !2487, line: 17, baseType: !518, size: 16)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2486, file: !2487, line: 18, baseType: !518, size: 16, offset: 16)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2486, file: !2487, line: 19, baseType: !518, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2486, file: !2487, line: 19, baseType: !518, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2486, file: !2487, line: 19, baseType: !518, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2486, file: !2487, line: 19, baseType: !518, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2486, file: !2487, line: 19, baseType: !518, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2486, file: !2487, line: 20, baseType: !518, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2486, file: !2487, line: 20, baseType: !518, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2486, file: !2487, line: 20, baseType: !518, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2486, file: !2487, line: 20, baseType: !518, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2486, file: !2487, line: 20, baseType: !518, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2486, file: !2487, line: 20, baseType: !518, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2481, file: !2482, line: 491, baseType: !568, size: 64, offset: 192)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2481, file: !2482, line: 495, baseType: !520, size: 16, offset: 256)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2481, file: !2482, line: 496, baseType: !520, size: 16, offset: 272)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2481, file: !2482, line: 497, baseType: !520, size: 16, offset: 288)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2481, file: !2482, line: 498, baseType: !520, size: 16, offset: 304)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2481, file: !2482, line: 502, baseType: !568, size: 64, offset: 320)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2481, file: !2482, line: 503, baseType: !568, size: 64, offset: 384)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2481, file: !2482, line: 514, baseType: !2510, size: 256, offset: 448)
!2510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2511, size: 256, elements: !495)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2482, line: 483, flags: DIFlagFwdDecl)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2481, file: !2482, line: 516, baseType: !568, size: 64, offset: 704)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2481, file: !2482, line: 518, baseType: !568, size: 64, offset: 768)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2481, file: !2482, line: 520, baseType: !568, size: 64, offset: 832)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2481, file: !2482, line: 521, baseType: !568, size: 64, offset: 896)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2481, file: !2482, line: 522, baseType: !568, size: 64, offset: 960)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2481, file: !2482, line: 528, baseType: !2519, size: 64, offset: 1024)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2482, line: 10, flags: DIFlagFwdDecl)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2481, file: !2482, line: 535, baseType: !568, size: 64, offset: 1088)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2481, file: !2482, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2481, file: !2482, line: 540, baseType: !2524, size: 33280, offset: 1536)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2525, line: 317, size: 33280, elements: !2526)
!2525 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2526 = !{!2527, !2528, !2529}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2524, file: !2525, line: 330, baseType: !7, size: 32)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2524, file: !2525, line: 337, baseType: !568, size: 64, offset: 64)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2524, file: !2525, line: 348, baseType: !2530, size: 32768, offset: 512)
!2530 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2525, line: 304, size: 32768, elements: !2531)
!2531 = !{!2532, !2547, !2586, !2636, !2649}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2530, file: !2525, line: 305, baseType: !2533, size: 896)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2525, line: 12, size: 896, elements: !2534)
!2534 = !{!2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2546}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2533, file: !2525, line: 13, baseType: !366, size: 32)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2533, file: !2525, line: 14, baseType: !366, size: 32, offset: 32)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2533, file: !2525, line: 15, baseType: !366, size: 32, offset: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2533, file: !2525, line: 16, baseType: !366, size: 32, offset: 96)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2533, file: !2525, line: 17, baseType: !366, size: 32, offset: 128)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2533, file: !2525, line: 18, baseType: !366, size: 32, offset: 160)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2533, file: !2525, line: 19, baseType: !366, size: 32, offset: 192)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2533, file: !2525, line: 22, baseType: !2543, size: 640, offset: 224)
!2543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 640, elements: !2544)
!2544 = !{!2545}
!2545 = !DISubrange(count: 20)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2533, file: !2525, line: 25, baseType: !366, size: 32, offset: 864)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2530, file: !2525, line: 306, baseType: !2548, size: 4096, align: 128)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2525, line: 34, size: 4096, align: 128, elements: !2549)
!2549 = !{!2550, !2551, !2552, !2553, !2554, !2569, !2570, !2571, !2575, !2577, !2581}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2548, file: !2525, line: 35, baseType: !518, size: 16)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2548, file: !2525, line: 36, baseType: !518, size: 16, offset: 16)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2548, file: !2525, line: 37, baseType: !518, size: 16, offset: 32)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2548, file: !2525, line: 38, baseType: !518, size: 16, offset: 48)
!2554 = !DIDerivedType(tag: DW_TAG_member, scope: !2548, file: !2525, line: 39, baseType: !2555, size: 128, offset: 64)
!2555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2548, file: !2525, line: 39, size: 128, elements: !2556)
!2556 = !{!2557, !2562}
!2557 = !DIDerivedType(tag: DW_TAG_member, scope: !2555, file: !2525, line: 40, baseType: !2558, size: 128)
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2555, file: !2525, line: 40, size: 128, elements: !2559)
!2559 = !{!2560, !2561}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2558, file: !2525, line: 41, baseType: !609, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2558, file: !2525, line: 42, baseType: !609, size: 64, offset: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, scope: !2555, file: !2525, line: 44, baseType: !2563, size: 128)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2555, file: !2525, line: 44, size: 128, elements: !2564)
!2564 = !{!2565, !2566, !2567, !2568}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2563, file: !2525, line: 45, baseType: !366, size: 32)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2563, file: !2525, line: 46, baseType: !366, size: 32, offset: 32)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2563, file: !2525, line: 47, baseType: !366, size: 32, offset: 64)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2563, file: !2525, line: 48, baseType: !366, size: 32, offset: 96)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2548, file: !2525, line: 51, baseType: !366, size: 32, offset: 192)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2548, file: !2525, line: 52, baseType: !366, size: 32, offset: 224)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2548, file: !2525, line: 55, baseType: !2572, size: 1024, offset: 256)
!2572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 1024, elements: !2573)
!2573 = !{!2574}
!2574 = !DISubrange(count: 32)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2548, file: !2525, line: 58, baseType: !2576, size: 2048, offset: 1280)
!2576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 2048, elements: !733)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2548, file: !2525, line: 60, baseType: !2578, size: 384, offset: 3328)
!2578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 384, elements: !2579)
!2579 = !{!2580}
!2580 = !DISubrange(count: 12)
!2581 = !DIDerivedType(tag: DW_TAG_member, scope: !2548, file: !2525, line: 62, baseType: !2582, size: 384, offset: 3712)
!2582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2548, file: !2525, line: 62, size: 384, elements: !2583)
!2583 = !{!2584, !2585}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2582, file: !2525, line: 63, baseType: !2578, size: 384)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2582, file: !2525, line: 64, baseType: !2578, size: 384)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2530, file: !2525, line: 307, baseType: !2587, size: 1088)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2525, line: 79, size: 1088, elements: !2588)
!2588 = !{!2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2635}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2587, file: !2525, line: 80, baseType: !366, size: 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2587, file: !2525, line: 81, baseType: !366, size: 32, offset: 32)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2587, file: !2525, line: 82, baseType: !366, size: 32, offset: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2587, file: !2525, line: 83, baseType: !366, size: 32, offset: 96)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2587, file: !2525, line: 84, baseType: !366, size: 32, offset: 128)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2587, file: !2525, line: 85, baseType: !366, size: 32, offset: 160)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2587, file: !2525, line: 86, baseType: !366, size: 32, offset: 192)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2587, file: !2525, line: 88, baseType: !2543, size: 640, offset: 224)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2587, file: !2525, line: 89, baseType: !323, size: 8, offset: 864)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2587, file: !2525, line: 90, baseType: !323, size: 8, offset: 872)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2587, file: !2525, line: 91, baseType: !323, size: 8, offset: 880)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2587, file: !2525, line: 92, baseType: !323, size: 8, offset: 888)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2587, file: !2525, line: 93, baseType: !323, size: 8, offset: 896)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2587, file: !2525, line: 94, baseType: !323, size: 8, offset: 904)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2587, file: !2525, line: 95, baseType: !2604, size: 64, offset: 960)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2606, line: 11, size: 128, elements: !2607)
!2606 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2607 = !{!2608, !2609}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2605, file: !2606, line: 12, baseType: !563, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2605, file: !2606, line: 13, baseType: !2610, size: 64, offset: 64)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2612, line: 56, size: 1344, elements: !2613)
!2612 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2613 = !{!2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2611, file: !2612, line: 61, baseType: !568, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2611, file: !2612, line: 62, baseType: !568, size: 64, offset: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2611, file: !2612, line: 63, baseType: !568, size: 64, offset: 128)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2611, file: !2612, line: 64, baseType: !568, size: 64, offset: 192)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2611, file: !2612, line: 65, baseType: !568, size: 64, offset: 256)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2611, file: !2612, line: 66, baseType: !568, size: 64, offset: 320)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2611, file: !2612, line: 68, baseType: !568, size: 64, offset: 384)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2611, file: !2612, line: 69, baseType: !568, size: 64, offset: 448)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2611, file: !2612, line: 70, baseType: !568, size: 64, offset: 512)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2611, file: !2612, line: 71, baseType: !568, size: 64, offset: 576)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2611, file: !2612, line: 72, baseType: !568, size: 64, offset: 640)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2611, file: !2612, line: 73, baseType: !568, size: 64, offset: 704)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2611, file: !2612, line: 74, baseType: !568, size: 64, offset: 768)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2611, file: !2612, line: 75, baseType: !568, size: 64, offset: 832)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2611, file: !2612, line: 76, baseType: !568, size: 64, offset: 896)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2611, file: !2612, line: 81, baseType: !568, size: 64, offset: 960)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2611, file: !2612, line: 83, baseType: !568, size: 64, offset: 1024)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2611, file: !2612, line: 84, baseType: !568, size: 64, offset: 1088)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2611, file: !2612, line: 85, baseType: !568, size: 64, offset: 1152)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2611, file: !2612, line: 86, baseType: !568, size: 64, offset: 1216)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2611, file: !2612, line: 87, baseType: !568, size: 64, offset: 1280)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2587, file: !2525, line: 96, baseType: !366, size: 32, offset: 1024)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2530, file: !2525, line: 308, baseType: !2637, size: 4608, align: 512)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2525, line: 289, size: 4608, align: 512, elements: !2638)
!2638 = !{!2639, !2640, !2647}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2637, file: !2525, line: 290, baseType: !2548, size: 4096, align: 128)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2637, file: !2525, line: 291, baseType: !2641, size: 512, offset: 4096)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2525, line: 268, size: 512, elements: !2642)
!2642 = !{!2643, !2644, !2645}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2641, file: !2525, line: 269, baseType: !609, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2641, file: !2525, line: 270, baseType: !609, size: 64, offset: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2641, file: !2525, line: 271, baseType: !2646, size: 384, offset: 128)
!2646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, size: 384, elements: !533)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2637, file: !2525, line: 292, baseType: !2648, offset: 4608)
!2648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, elements: !2065)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2530, file: !2525, line: 309, baseType: !2650, size: 32768)
!2650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 32768, elements: !2651)
!2651 = !{!2652}
!2652 = !DISubrange(count: 4096)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1564, file: !1162, line: 378, baseType: !2654, size: 64, offset: 64)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1560, file: !1162, line: 384, baseType: !1846, size: 192, offset: 192)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1411, file: !1162, line: 500, baseType: !690, offset: 6656)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1411, file: !1162, line: 501, baseType: !2658, size: 64, offset: 6656)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1162, line: 387, flags: DIFlagFwdDecl)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1411, file: !1162, line: 516, baseType: !2055, size: 64, offset: 6720)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1411, file: !1162, line: 519, baseType: !803, size: 64, offset: 6784)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1411, file: !1162, line: 521, baseType: !2663, size: 64, offset: 6848)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1162, line: 521, flags: DIFlagFwdDecl)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1411, file: !1162, line: 545, baseType: !350, size: 32, offset: 6912)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1411, file: !1162, line: 548, baseType: !400, size: 8, offset: 6944)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1411, file: !1162, line: 550, baseType: !2668, offset: 6952)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2669, line: 142, elements: !704)
!2669 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1411, file: !1162, line: 554, baseType: !2300, size: 256, offset: 6976)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1411, file: !1162, line: 557, baseType: !366, size: 32, offset: 7232)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1408, file: !1162, line: 565, baseType: !2673, offset: 7296)
!2673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !568, elements: !2674)
!2674 = !{!2675}
!2675 = !DISubrange(count: -1)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1404, file: !1162, line: 151, baseType: !350, size: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1397, file: !1162, line: 156, baseType: !690, offset: 256)
!2678 = !DIDerivedType(tag: DW_TAG_member, scope: !1166, file: !1162, line: 159, baseType: !2679, size: 128)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1166, file: !1162, line: 159, size: 128, elements: !2680)
!2680 = !{!2681, !2684}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2679, file: !1162, line: 161, baseType: !2682, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1162, line: 161, flags: DIFlagFwdDecl)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2679, file: !1162, line: 162, baseType: !321, size: 64, offset: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1166, file: !1162, line: 176, baseType: !816, size: 128, align: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, scope: !1161, file: !1162, line: 179, baseType: !2687, size: 32, offset: 384)
!2687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1161, file: !1162, line: 179, size: 32, elements: !2688)
!2688 = !{!2689, !2690, !2691, !2692}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2687, file: !1162, line: 184, baseType: !350, size: 32)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2687, file: !1162, line: 192, baseType: !7, size: 32)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2687, file: !1162, line: 194, baseType: !7, size: 32)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2687, file: !1162, line: 195, baseType: !328, size: 32)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1161, file: !1162, line: 199, baseType: !350, size: 32, offset: 416)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1096, file: !31, line: 1964, baseType: !2695, size: 64, offset: 1344)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!563, !1038, !2698}
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2700, line: 12, size: 256, elements: !2701)
!2700 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2701 = !{!2702, !2703, !2704, !2705, !2706}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2699, file: !2700, line: 13, baseType: !319, size: 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2699, file: !2700, line: 16, baseType: !328, size: 32, offset: 32)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2699, file: !2700, line: 23, baseType: !568, size: 64, offset: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2699, file: !2700, line: 30, baseType: !568, size: 64, offset: 128)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2699, file: !2700, line: 33, baseType: !2707, size: 64, offset: 192)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1162, line: 27, flags: DIFlagFwdDecl)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1096, file: !31, line: 1966, baseType: !2695, size: 64, offset: 1408)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1039, file: !31, line: 1424, baseType: !2711, size: 64, offset: 448)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2713)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 322, size: 704, elements: !2714)
!2714 = !{!2715, !2761, !2765, !2769, !2770, !2771, !2772, !2773, !2778, !2783, !2787}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2713, file: !19, line: 323, baseType: !2716, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!328, !2719}
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 294, size: 1600, elements: !2721)
!2721 = !{!2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2746, !2747, !2748}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2720, file: !19, line: 295, baseType: !1078, size: 128)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2720, file: !19, line: 296, baseType: !660, size: 128, offset: 128)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2720, file: !19, line: 297, baseType: !660, size: 128, offset: 256)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2720, file: !19, line: 298, baseType: !660, size: 128, offset: 384)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2720, file: !19, line: 299, baseType: !1524, size: 192, offset: 512)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2720, file: !19, line: 300, baseType: !690, offset: 704)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2720, file: !19, line: 301, baseType: !350, size: 32, offset: 704)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2720, file: !19, line: 302, baseType: !1038, size: 64, offset: 768)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2720, file: !19, line: 303, baseType: !2731, size: 64, offset: 832)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !2732)
!2732 = !{!2733, !2745}
!2733 = !DIDerivedType(tag: DW_TAG_member, scope: !2731, file: !19, line: 69, baseType: !2734, size: 32)
!2734 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2731, file: !19, line: 69, size: 32, elements: !2735)
!2735 = !{!2736, !2737, !2738}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2734, file: !19, line: 70, baseType: !878, size: 32)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2734, file: !19, line: 71, baseType: !886, size: 32)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2734, file: !19, line: 72, baseType: !2739, size: 32)
!2739 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2740, line: 24, baseType: !2741)
!2740 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2740, line: 22, size: 32, elements: !2742)
!2742 = !{!2743}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2741, file: !2740, line: 23, baseType: !2744, size: 32)
!2744 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2740, line: 20, baseType: !884)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2731, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2720, file: !19, line: 304, baseType: !972, size: 64, offset: 896)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2720, file: !19, line: 305, baseType: !568, size: 64, offset: 960)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2720, file: !19, line: 306, baseType: !2749, size: 576, offset: 1024)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !2750)
!2750 = !{!2751, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2749, file: !19, line: 206, baseType: !2752, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !494)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2749, file: !19, line: 207, baseType: !2752, size: 64, offset: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2749, file: !19, line: 208, baseType: !2752, size: 64, offset: 128)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2749, file: !19, line: 209, baseType: !2752, size: 64, offset: 192)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2749, file: !19, line: 210, baseType: !2752, size: 64, offset: 256)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2749, file: !19, line: 211, baseType: !2752, size: 64, offset: 320)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2749, file: !19, line: 212, baseType: !2752, size: 64, offset: 384)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2749, file: !19, line: 213, baseType: !979, size: 64, offset: 448)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2749, file: !19, line: 214, baseType: !979, size: 64, offset: 512)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2713, file: !19, line: 324, baseType: !2762, size: 64, offset: 64)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!2719, !1038, !328}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2713, file: !19, line: 325, baseType: !2766, size: 64, offset: 128)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{null, !2719}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2713, file: !19, line: 326, baseType: !2716, size: 64, offset: 192)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2713, file: !19, line: 327, baseType: !2716, size: 64, offset: 256)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2713, file: !19, line: 328, baseType: !2716, size: 64, offset: 320)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2713, file: !19, line: 329, baseType: !1124, size: 64, offset: 384)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2713, file: !19, line: 332, baseType: !2774, size: 64, offset: 448)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!2777, !872}
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2713, file: !19, line: 333, baseType: !2779, size: 64, offset: 512)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!328, !872, !2782}
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2713, file: !19, line: 335, baseType: !2784, size: 64, offset: 576)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!328, !872, !2777}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2713, file: !19, line: 337, baseType: !2788, size: 64, offset: 640)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!328, !1038, !2791}
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1039, file: !31, line: 1425, baseType: !2793, size: 64, offset: 512)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2795)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 428, size: 704, elements: !2796)
!2796 = !{!2797, !2801, !2802, !2806, !2807, !2808, !2823, !2846, !2850, !2851, !2874}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2795, file: !19, line: 429, baseType: !2798, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!328, !1038, !328, !328, !988}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2795, file: !19, line: 430, baseType: !1124, size: 64, offset: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2795, file: !19, line: 431, baseType: !2803, size: 64, offset: 128)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!328, !1038, !7}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2795, file: !19, line: 432, baseType: !2803, size: 64, offset: 192)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2795, file: !19, line: 433, baseType: !1124, size: 64, offset: 256)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2795, file: !19, line: 434, baseType: !2809, size: 64, offset: 320)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!328, !1038, !328, !2812}
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 415, size: 256, elements: !2814)
!2814 = !{!2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2813, file: !19, line: 416, baseType: !328, size: 32)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2813, file: !19, line: 417, baseType: !7, size: 32, offset: 32)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2813, file: !19, line: 418, baseType: !7, size: 32, offset: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2813, file: !19, line: 420, baseType: !7, size: 32, offset: 96)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2813, file: !19, line: 421, baseType: !7, size: 32, offset: 128)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2813, file: !19, line: 422, baseType: !7, size: 32, offset: 160)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2813, file: !19, line: 423, baseType: !7, size: 32, offset: 192)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2813, file: !19, line: 424, baseType: !7, size: 32, offset: 224)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2795, file: !19, line: 435, baseType: !2824, size: 64, offset: 384)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!328, !1038, !2731, !2827}
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 343, size: 960, elements: !2829)
!2829 = !{!2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2828, file: !19, line: 344, baseType: !328, size: 32)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2828, file: !19, line: 345, baseType: !609, size: 64, offset: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2828, file: !19, line: 346, baseType: !609, size: 64, offset: 128)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2828, file: !19, line: 347, baseType: !609, size: 64, offset: 192)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2828, file: !19, line: 348, baseType: !609, size: 64, offset: 256)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2828, file: !19, line: 349, baseType: !609, size: 64, offset: 320)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2828, file: !19, line: 350, baseType: !609, size: 64, offset: 384)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2828, file: !19, line: 351, baseType: !1212, size: 64, offset: 448)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2828, file: !19, line: 353, baseType: !1212, size: 64, offset: 512)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2828, file: !19, line: 354, baseType: !328, size: 32, offset: 576)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2828, file: !19, line: 355, baseType: !328, size: 32, offset: 608)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2828, file: !19, line: 356, baseType: !609, size: 64, offset: 640)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2828, file: !19, line: 357, baseType: !609, size: 64, offset: 704)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2828, file: !19, line: 358, baseType: !609, size: 64, offset: 768)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2828, file: !19, line: 359, baseType: !1212, size: 64, offset: 832)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2828, file: !19, line: 360, baseType: !328, size: 32, offset: 896)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2795, file: !19, line: 436, baseType: !2847, size: 64, offset: 448)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!328, !1038, !2791, !2827}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2795, file: !19, line: 438, baseType: !2824, size: 64, offset: 512)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2795, file: !19, line: 439, baseType: !2852, size: 64, offset: 576)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!328, !1038, !2855}
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 409, size: 1408, elements: !2857)
!2857 = !{!2858, !2859}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2856, file: !19, line: 410, baseType: !7, size: 32)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2856, file: !19, line: 411, baseType: !2860, size: 1344, offset: 64)
!2860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2861, size: 1344, elements: !457)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 395, size: 448, elements: !2862)
!2862 = !{!2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2873}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2861, file: !19, line: 396, baseType: !7, size: 32)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2861, file: !19, line: 397, baseType: !7, size: 32, offset: 32)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2861, file: !19, line: 399, baseType: !7, size: 32, offset: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2861, file: !19, line: 400, baseType: !7, size: 32, offset: 96)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2861, file: !19, line: 401, baseType: !7, size: 32, offset: 128)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2861, file: !19, line: 402, baseType: !7, size: 32, offset: 160)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2861, file: !19, line: 403, baseType: !7, size: 32, offset: 192)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2861, file: !19, line: 404, baseType: !491, size: 64, offset: 256)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2861, file: !19, line: 405, baseType: !2872, size: 64, offset: 320)
!2872 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !320, line: 126, baseType: !609)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2861, file: !19, line: 406, baseType: !2872, size: 64, offset: 384)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2795, file: !19, line: 440, baseType: !2803, size: 64, offset: 640)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1039, file: !31, line: 1426, baseType: !2876, size: 64, offset: 576)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2878)
!2878 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 49, flags: DIFlagFwdDecl)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1039, file: !31, line: 1427, baseType: !568, size: 64, offset: 640)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1039, file: !31, line: 1428, baseType: !568, size: 64, offset: 704)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1039, file: !31, line: 1429, baseType: !568, size: 64, offset: 768)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1039, file: !31, line: 1430, baseType: !833, size: 64, offset: 832)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1039, file: !31, line: 1431, baseType: !1202, size: 256, offset: 896)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1039, file: !31, line: 1432, baseType: !328, size: 32, offset: 1152)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1039, file: !31, line: 1433, baseType: !350, size: 32, offset: 1184)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1039, file: !31, line: 1437, baseType: !2887, size: 64, offset: 1216)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2890)
!2890 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1437, flags: DIFlagFwdDecl)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1039, file: !31, line: 1449, baseType: !2892, size: 64, offset: 1280)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !849, line: 34, size: 64, elements: !2893)
!2893 = !{!2894}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2892, file: !849, line: 35, baseType: !852, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1039, file: !31, line: 1450, baseType: !660, size: 128, offset: 1344)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1039, file: !31, line: 1451, baseType: !2897, size: 64, offset: 1472)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !31, line: 699, flags: DIFlagFwdDecl)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1039, file: !31, line: 1452, baseType: !2266, size: 64, offset: 1536)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1039, file: !31, line: 1453, baseType: !2901, size: 64, offset: 1600)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1453, flags: DIFlagFwdDecl)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1039, file: !31, line: 1454, baseType: !1078, size: 128, offset: 1664)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1039, file: !31, line: 1455, baseType: !7, size: 32, offset: 1792)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1039, file: !31, line: 1456, baseType: !2906, size: 2432, offset: 1856)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 518, size: 2432, elements: !2907)
!2907 = !{!2908, !2909, !2910, !2912, !2944}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2906, file: !19, line: 519, baseType: !7, size: 32)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2906, file: !19, line: 520, baseType: !1202, size: 256, offset: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2906, file: !19, line: 521, baseType: !2911, size: 192, offset: 320)
!2911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !872, size: 192, elements: !457)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2906, file: !19, line: 522, baseType: !2913, size: 1728, offset: 512)
!2913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2914, size: 1728, elements: !457)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !2915)
!2915 = !{!2916, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2914, file: !19, line: 223, baseType: !2917, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 443, size: 256, elements: !2919)
!2919 = !{!2920, !2921, !2934, !2935}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2918, file: !19, line: 444, baseType: !328, size: 32)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2918, file: !19, line: 445, baseType: !2922, size: 64, offset: 64)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2924)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 310, size: 512, elements: !2925)
!2925 = !{!2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2924, file: !19, line: 311, baseType: !1124, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2924, file: !19, line: 312, baseType: !1124, size: 64, offset: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2924, file: !19, line: 313, baseType: !1124, size: 64, offset: 128)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2924, file: !19, line: 314, baseType: !1124, size: 64, offset: 192)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2924, file: !19, line: 315, baseType: !2716, size: 64, offset: 256)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2924, file: !19, line: 316, baseType: !2716, size: 64, offset: 320)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2924, file: !19, line: 317, baseType: !2716, size: 64, offset: 384)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2924, file: !19, line: 318, baseType: !2788, size: 64, offset: 448)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2918, file: !19, line: 446, baseType: !316, size: 64, offset: 128)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2918, file: !19, line: 447, baseType: !2917, size: 64, offset: 192)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2914, file: !19, line: 224, baseType: !328, size: 32, offset: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2914, file: !19, line: 226, baseType: !660, size: 128, offset: 128)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2914, file: !19, line: 227, baseType: !568, size: 64, offset: 256)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2914, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2914, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2914, file: !19, line: 230, baseType: !2752, size: 64, offset: 384)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2914, file: !19, line: 231, baseType: !2752, size: 64, offset: 448)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2914, file: !19, line: 232, baseType: !321, size: 64, offset: 512)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2906, file: !19, line: 523, baseType: !2945, size: 192, offset: 2240)
!2945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2922, size: 192, elements: !457)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1039, file: !31, line: 1458, baseType: !2947, size: 2112, offset: 4288)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1410, size: 2112, elements: !2948)
!2948 = !{!2949, !2950, !2951}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2947, file: !31, line: 1411, baseType: !328, size: 32)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2947, file: !31, line: 1412, baseType: !1825, size: 128, offset: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2947, file: !31, line: 1413, baseType: !2952, size: 1920, offset: 192)
!2952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2953, size: 1920, elements: !457)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2954, line: 12, size: 640, elements: !2955)
!2954 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2955 = !{!2956, !2964, !2965, !2970, !2971}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2953, file: !2954, line: 13, baseType: !2957, size: 320)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2958, line: 17, size: 320, elements: !2959)
!2958 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2959 = !{!2960, !2961, !2962, !2963}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2957, file: !2958, line: 18, baseType: !328, size: 32)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2957, file: !2958, line: 19, baseType: !328, size: 32, offset: 32)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2957, file: !2958, line: 20, baseType: !1825, size: 128, offset: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2957, file: !2958, line: 22, baseType: !816, size: 128, align: 64, offset: 192)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2953, file: !2954, line: 14, baseType: !402, size: 64, offset: 320)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2953, file: !2954, line: 15, baseType: !2966, size: 64, offset: 384)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2967, line: 16, size: 64, elements: !2968)
!2967 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2968 = !{!2969}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2966, file: !2967, line: 17, baseType: !1567, size: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2953, file: !2954, line: 16, baseType: !1825, size: 128, offset: 448)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2953, file: !2954, line: 17, baseType: !350, size: 32, offset: 576)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1039, file: !31, line: 1465, baseType: !321, size: 64, offset: 6400)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1039, file: !31, line: 1468, baseType: !366, size: 32, offset: 6464)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1039, file: !31, line: 1470, baseType: !979, size: 64, offset: 6528)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1039, file: !31, line: 1471, baseType: !979, size: 64, offset: 6592)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1039, file: !31, line: 1473, baseType: !367, size: 32, offset: 6656)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1039, file: !31, line: 1474, baseType: !2978, size: 64, offset: 6720)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 603, flags: DIFlagFwdDecl)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1039, file: !31, line: 1477, baseType: !2981, size: 256, offset: 6784)
!2981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 256, elements: !2573)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1039, file: !31, line: 1478, baseType: !2983, size: 128, offset: 7040)
!2983 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2984, line: 18, baseType: !2985)
!2984 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2984, line: 16, size: 128, elements: !2986)
!2986 = !{!2987}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2985, file: !2984, line: 17, baseType: !2988, size: 128)
!2988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 128, elements: !2077)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1039, file: !31, line: 1480, baseType: !7, size: 32, offset: 7168)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !1039, file: !31, line: 1481, baseType: !2991, size: 32, offset: 7200)
!2991 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !320, line: 150, baseType: !7)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1039, file: !31, line: 1487, baseType: !1524, size: 192, offset: 7232)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1039, file: !31, line: 1493, baseType: !667, size: 64, offset: 7424)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1039, file: !31, line: 1495, baseType: !2995, size: 64, offset: 7488)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2997)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !831, line: 135, size: 1024, align: 512, elements: !2998)
!2998 = !{!2999, !3003, !3004, !3011, !3017, !3021, !3025, !3029, !3030, !3034, !3038, !3043, !3047}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2997, file: !831, line: 136, baseType: !3000, size: 64)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!328, !833, !7}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2997, file: !831, line: 137, baseType: !3000, size: 64, offset: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2997, file: !831, line: 138, baseType: !3005, size: 64, offset: 128)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!328, !3008, !3010}
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !834)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2997, file: !831, line: 139, baseType: !3012, size: 64, offset: 192)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!328, !3008, !7, !667, !3015}
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !857)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2997, file: !831, line: 141, baseType: !3018, size: 64, offset: 256)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!328, !3008}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2997, file: !831, line: 142, baseType: !3022, size: 64, offset: 320)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!328, !833}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2997, file: !831, line: 143, baseType: !3026, size: 64, offset: 384)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{null, !833}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2997, file: !831, line: 144, baseType: !3026, size: 64, offset: 448)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2997, file: !831, line: 145, baseType: !3031, size: 64, offset: 512)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{null, !833, !872}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2997, file: !831, line: 146, baseType: !3035, size: 64, offset: 576)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!642, !833, !642, !328}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2997, file: !831, line: 147, baseType: !3039, size: 64, offset: 640)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!829, !3042}
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2997, file: !831, line: 148, baseType: !3044, size: 64, offset: 704)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!328, !988, !400}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2997, file: !831, line: 149, baseType: !3048, size: 64, offset: 768)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!833, !833, !3051}
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !873)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !1039, file: !31, line: 1500, baseType: !328, size: 32, offset: 7552)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1039, file: !31, line: 1502, baseType: !3055, size: 448, offset: 7616)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2700, line: 60, size: 448, elements: !3056)
!3056 = !{!3057, !3062, !3063, !3064, !3065, !3066, !3067}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3055, file: !2700, line: 61, baseType: !3058, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!568, !3061, !2698}
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3055, file: !2700, line: 63, baseType: !3058, size: 64, offset: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3055, file: !2700, line: 66, baseType: !563, size: 64, offset: 128)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3055, file: !2700, line: 67, baseType: !328, size: 32, offset: 192)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3055, file: !2700, line: 68, baseType: !7, size: 32, offset: 224)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3055, file: !2700, line: 71, baseType: !660, size: 128, offset: 256)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3055, file: !2700, line: 77, baseType: !3068, size: 64, offset: 384)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1039, file: !31, line: 1505, baseType: !1206, size: 64, offset: 8064)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !1039, file: !31, line: 1508, baseType: !1206, size: 64, offset: 8128)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1039, file: !31, line: 1511, baseType: !328, size: 32, offset: 8192)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1039, file: !31, line: 1514, baseType: !1342, size: 32, offset: 8224)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1039, file: !31, line: 1517, baseType: !3074, size: 64, offset: 8256)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2301, line: 18, flags: DIFlagFwdDecl)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1039, file: !31, line: 1518, baseType: !1074, size: 64, offset: 8320)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1039, file: !31, line: 1525, baseType: !2055, size: 64, offset: 8384)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1039, file: !31, line: 1532, baseType: !3079, size: 64, offset: 8448)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3080, line: 52, size: 64, elements: !3081)
!3080 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!3081 = !{!3082}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3079, file: !3080, line: 53, baseType: !3083, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3080, line: 40, size: 256, elements: !3085)
!3085 = !{!3086, !3087, !3092}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3084, file: !3080, line: 42, baseType: !690)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3084, file: !3080, line: 44, baseType: !3088, size: 192)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3080, line: 28, size: 192, elements: !3089)
!3089 = !{!3090, !3091}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3088, file: !3080, line: 29, baseType: !660, size: 128)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3088, file: !3080, line: 31, baseType: !563, size: 64, offset: 128)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3084, file: !3080, line: 49, baseType: !563, size: 64, offset: 192)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1039, file: !31, line: 1533, baseType: !3079, size: 64, offset: 8512)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1039, file: !31, line: 1534, baseType: !816, size: 128, align: 64, offset: 8576)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1039, file: !31, line: 1535, baseType: !2300, size: 256, offset: 8704)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1039, file: !31, line: 1537, baseType: !1524, size: 192, offset: 8960)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1039, file: !31, line: 1542, baseType: !328, size: 32, offset: 9152)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1039, file: !31, line: 1545, baseType: !690, offset: 9184)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1039, file: !31, line: 1546, baseType: !660, size: 128, offset: 9216)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1039, file: !31, line: 1548, baseType: !690, offset: 9344)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1039, file: !31, line: 1549, baseType: !660, size: 128, offset: 9344)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !873, file: !31, line: 624, baseType: !1173, size: 64, offset: 256)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !873, file: !31, line: 631, baseType: !568, size: 64, offset: 320)
!3104 = !DIDerivedType(tag: DW_TAG_member, scope: !873, file: !31, line: 639, baseType: !3105, size: 32, offset: 384)
!3105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !873, file: !31, line: 639, size: 32, elements: !3106)
!3106 = !{!3107, !3109}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3105, file: !31, line: 640, baseType: !3108, size: 32)
!3108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3105, file: !31, line: 641, baseType: !7, size: 32)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !873, file: !31, line: 643, baseType: !954, size: 32, offset: 416)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !873, file: !31, line: 644, baseType: !972, size: 64, offset: 448)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !873, file: !31, line: 645, baseType: !975, size: 128, offset: 512)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !873, file: !31, line: 646, baseType: !975, size: 128, offset: 640)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !873, file: !31, line: 647, baseType: !975, size: 128, offset: 768)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !873, file: !31, line: 648, baseType: !690, offset: 896)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !873, file: !31, line: 649, baseType: !520, size: 16, offset: 896)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !873, file: !31, line: 650, baseType: !323, size: 8, offset: 912)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !873, file: !31, line: 651, baseType: !323, size: 8, offset: 920)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !873, file: !31, line: 652, baseType: !2872, size: 64, offset: 960)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !873, file: !31, line: 659, baseType: !568, size: 64, offset: 1024)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !873, file: !31, line: 660, baseType: !1202, size: 256, offset: 1088)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !873, file: !31, line: 662, baseType: !568, size: 64, offset: 1344)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !873, file: !31, line: 663, baseType: !568, size: 64, offset: 1408)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !873, file: !31, line: 665, baseType: !1078, size: 128, offset: 1472)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !873, file: !31, line: 666, baseType: !660, size: 128, offset: 1600)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !873, file: !31, line: 675, baseType: !660, size: 128, offset: 1728)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !873, file: !31, line: 676, baseType: !660, size: 128, offset: 1856)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !873, file: !31, line: 677, baseType: !660, size: 128, offset: 1984)
!3129 = !DIDerivedType(tag: DW_TAG_member, scope: !873, file: !31, line: 678, baseType: !3130, size: 128, offset: 2112)
!3130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !873, file: !31, line: 678, size: 128, elements: !3131)
!3131 = !{!3132, !3133}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3130, file: !31, line: 679, baseType: !1074, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3130, file: !31, line: 680, baseType: !816, size: 128, align: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !873, file: !31, line: 682, baseType: !1208, size: 64, offset: 2240)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !873, file: !31, line: 683, baseType: !1208, size: 64, offset: 2304)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !873, file: !31, line: 684, baseType: !350, size: 32, offset: 2368)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !873, file: !31, line: 685, baseType: !350, size: 32, offset: 2400)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !873, file: !31, line: 686, baseType: !350, size: 32, offset: 2432)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !873, file: !31, line: 688, baseType: !350, size: 32, offset: 2464)
!3140 = !DIDerivedType(tag: DW_TAG_member, scope: !873, file: !31, line: 690, baseType: !3141, size: 64, offset: 2496)
!3141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !873, file: !31, line: 690, size: 64, elements: !3142)
!3142 = !{!3143, !3375}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3141, file: !31, line: 691, baseType: !3144, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3146)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1822, size: 2048, elements: !3147)
!3147 = !{!3148, !3149, !3153, !3158, !3162, !3163, !3164, !3168, !3181, !3182, !3199, !3203, !3204, !3208, !3209, !3213, !3218, !3219, !3223, !3227, !3335, !3339, !3340, !3344, !3345, !3349, !3353, !3358, !3362, !3366, !3370, !3374}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3146, file: !31, line: 1823, baseType: !316, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3146, file: !31, line: 1824, baseType: !3150, size: 64, offset: 64)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!972, !803, !972, !328}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3146, file: !31, line: 1825, baseType: !3154, size: 64, offset: 128)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!759, !803, !642, !773, !3157}
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3146, file: !31, line: 1826, baseType: !3159, size: 64, offset: 192)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!759, !803, !667, !773, !3157}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3146, file: !31, line: 1827, baseType: !1279, size: 64, offset: 256)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3146, file: !31, line: 1828, baseType: !1279, size: 64, offset: 320)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3146, file: !31, line: 1829, baseType: !3165, size: 64, offset: 384)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!328, !1282, !400}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !3146, file: !31, line: 1830, baseType: !3169, size: 64, offset: 448)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!328, !803, !3172}
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1776, size: 128, elements: !3174)
!3174 = !{!3175, !3180}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3173, file: !31, line: 1777, baseType: !3176, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1773, baseType: !3177)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!328, !3172, !667, !328, !972, !609, !7}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3173, file: !31, line: 1778, baseType: !972, size: 64, offset: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3146, file: !31, line: 1831, baseType: !3169, size: 64, offset: 512)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3146, file: !31, line: 1832, baseType: !3183, size: 64, offset: 576)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!3186, !803, !3188}
!3186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3187, line: 52, baseType: !7)
!3187 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !3190, line: 43, size: 128, elements: !3191)
!3190 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!3191 = !{!3192, !3198}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !3189, file: !3190, line: 44, baseType: !3193, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !3190, line: 37, baseType: !3194)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{null, !803, !3197, !3188}
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !3189, file: !3190, line: 45, baseType: !3186, size: 32, offset: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3146, file: !31, line: 1833, baseType: !3200, size: 64, offset: 640)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!563, !803, !7, !568}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3146, file: !31, line: 1834, baseType: !3200, size: 64, offset: 704)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3146, file: !31, line: 1835, baseType: !3205, size: 64, offset: 768)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!328, !803, !1414}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3146, file: !31, line: 1836, baseType: !568, size: 64, offset: 832)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3146, file: !31, line: 1837, baseType: !3210, size: 64, offset: 896)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!328, !872, !803}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3146, file: !31, line: 1838, baseType: !3214, size: 64, offset: 960)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!328, !803, !3217}
!3217 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1007, baseType: !321)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3146, file: !31, line: 1839, baseType: !3210, size: 64, offset: 1024)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3146, file: !31, line: 1840, baseType: !3220, size: 64, offset: 1088)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!328, !803, !972, !972, !328}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3146, file: !31, line: 1841, baseType: !3224, size: 64, offset: 1152)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!328, !328, !803, !328}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3146, file: !31, line: 1842, baseType: !3228, size: 64, offset: 1216)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!328, !803, !328, !3231}
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1062, size: 1664, elements: !3233)
!3233 = !{!3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3265, !3266, !3267, !3280, !3311}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3232, file: !31, line: 1063, baseType: !3231, size: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3232, file: !31, line: 1064, baseType: !660, size: 128, offset: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3232, file: !31, line: 1065, baseType: !1078, size: 128, offset: 192)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3232, file: !31, line: 1066, baseType: !660, size: 128, offset: 320)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3232, file: !31, line: 1069, baseType: !660, size: 128, offset: 448)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3232, file: !31, line: 1072, baseType: !3217, size: 64, offset: 576)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3232, file: !31, line: 1073, baseType: !7, size: 32, offset: 640)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3232, file: !31, line: 1074, baseType: !327, size: 8, offset: 672)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3232, file: !31, line: 1075, baseType: !7, size: 32, offset: 704)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3232, file: !31, line: 1076, baseType: !328, size: 32, offset: 736)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3232, file: !31, line: 1077, baseType: !1825, size: 128, offset: 768)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3232, file: !31, line: 1078, baseType: !803, size: 64, offset: 896)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3232, file: !31, line: 1079, baseType: !972, size: 64, offset: 960)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3232, file: !31, line: 1080, baseType: !972, size: 64, offset: 1024)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3232, file: !31, line: 1082, baseType: !3249, size: 64, offset: 1088)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !31, line: 1314, size: 320, elements: !3251)
!3251 = !{!3252, !3260, !3261, !3262, !3263, !3264}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3250, file: !31, line: 1315, baseType: !3253)
!3253 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3254, line: 20, baseType: !3255)
!3254 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3254, line: 11, elements: !3256)
!3256 = !{!3257}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3255, file: !3254, line: 12, baseType: !3258)
!3258 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !702, line: 33, baseType: !3259)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !702, line: 31, elements: !704)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3250, file: !31, line: 1316, baseType: !328, size: 32)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3250, file: !31, line: 1317, baseType: !328, size: 32, offset: 32)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3250, file: !31, line: 1318, baseType: !3249, size: 64, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3250, file: !31, line: 1319, baseType: !803, size: 64, offset: 128)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3250, file: !31, line: 1320, baseType: !816, size: 128, align: 64, offset: 192)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3232, file: !31, line: 1084, baseType: !568, size: 64, offset: 1152)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3232, file: !31, line: 1085, baseType: !568, size: 64, offset: 1216)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3232, file: !31, line: 1087, baseType: !3268, size: 64, offset: 1280)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3270)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !31, line: 1011, size: 128, elements: !3271)
!3271 = !{!3272, !3276}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3270, file: !31, line: 1012, baseType: !3273, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{null, !3231, !3231}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3270, file: !31, line: 1013, baseType: !3277, size: 64, offset: 64)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{null, !3231}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3232, file: !31, line: 1088, baseType: !3281, size: 64, offset: 1344)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3283)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !31, line: 1016, size: 512, elements: !3284)
!3284 = !{!3285, !3289, !3293, !3294, !3298, !3302, !3306, !3310}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3283, file: !31, line: 1017, baseType: !3286, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!3217, !3217}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3283, file: !31, line: 1018, baseType: !3290, size: 64, offset: 64)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{null, !3217}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3283, file: !31, line: 1019, baseType: !3277, size: 64, offset: 128)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3283, file: !31, line: 1020, baseType: !3295, size: 64, offset: 192)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!328, !3231, !328}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3283, file: !31, line: 1021, baseType: !3299, size: 64, offset: 256)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!400, !3231}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3283, file: !31, line: 1022, baseType: !3303, size: 64, offset: 320)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!328, !3231, !328, !663}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3283, file: !31, line: 1023, baseType: !3307, size: 64, offset: 384)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{null, !3231, !1256}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3283, file: !31, line: 1024, baseType: !3299, size: 64, offset: 448)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3232, file: !31, line: 1097, baseType: !3312, size: 256, offset: 1408)
!3312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3232, file: !31, line: 1089, size: 256, elements: !3313)
!3313 = !{!3314, !3323, !3329}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3312, file: !31, line: 1090, baseType: !3315, size: 256)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3316, line: 10, size: 256, elements: !3317)
!3316 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3317 = !{!3318, !3319, !3322}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3315, file: !3316, line: 11, baseType: !366, size: 32)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3315, file: !3316, line: 12, baseType: !3320, size: 64, offset: 64)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3316, line: 5, flags: DIFlagFwdDecl)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3315, file: !3316, line: 13, baseType: !660, size: 128, offset: 128)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3312, file: !31, line: 1091, baseType: !3324, size: 64)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3316, line: 17, size: 64, elements: !3325)
!3325 = !{!3326}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3324, file: !3316, line: 18, baseType: !3327, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3316, line: 16, flags: DIFlagFwdDecl)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3312, file: !31, line: 1096, baseType: !3330, size: 192)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3312, file: !31, line: 1092, size: 192, elements: !3331)
!3331 = !{!3332, !3333, !3334}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3330, file: !31, line: 1093, baseType: !660, size: 128)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3330, file: !31, line: 1094, baseType: !328, size: 32, offset: 128)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3330, file: !31, line: 1095, baseType: !7, size: 32, offset: 160)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !3146, file: !31, line: 1843, baseType: !3336, size: 64, offset: 1280)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!759, !803, !1160, !328, !773, !3157, !328}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3146, file: !31, line: 1844, baseType: !1454, size: 64, offset: 1344)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3146, file: !31, line: 1845, baseType: !3341, size: 64, offset: 1408)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!328, !328}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3146, file: !31, line: 1846, baseType: !3228, size: 64, offset: 1472)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3146, file: !31, line: 1847, baseType: !3346, size: 64, offset: 1536)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!759, !2441, !803, !3157, !773, !7}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3146, file: !31, line: 1848, baseType: !3350, size: 64, offset: 1600)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!759, !803, !3157, !2441, !773, !7}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3146, file: !31, line: 1849, baseType: !3354, size: 64, offset: 1664)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!328, !803, !563, !3357, !1256}
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3146, file: !31, line: 1850, baseType: !3359, size: 64, offset: 1728)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!563, !803, !328, !972, !972}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3146, file: !31, line: 1852, baseType: !3363, size: 64, offset: 1792)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{null, !1150, !803}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3146, file: !31, line: 1856, baseType: !3367, size: 64, offset: 1856)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!759, !803, !972, !803, !972, !773, !7}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3146, file: !31, line: 1858, baseType: !3371, size: 64, offset: 1920)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!972, !803, !972, !803, !972, !972, !7}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3146, file: !31, line: 1861, baseType: !3220, size: 64, offset: 1984)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3141, file: !31, line: 692, baseType: !1103, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !873, file: !31, line: 694, baseType: !3377, size: 64, offset: 2560)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 1100, size: 384, elements: !3379)
!3379 = !{!3380, !3381, !3382, !3383}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3378, file: !31, line: 1101, baseType: !690)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3378, file: !31, line: 1102, baseType: !660, size: 128)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3378, file: !31, line: 1103, baseType: !660, size: 128, offset: 128)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3378, file: !31, line: 1104, baseType: !660, size: 128, offset: 256)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !873, file: !31, line: 695, baseType: !1174, size: 1216, align: 64, offset: 2624)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !873, file: !31, line: 696, baseType: !660, size: 128, offset: 3840)
!3386 = !DIDerivedType(tag: DW_TAG_member, scope: !873, file: !31, line: 697, baseType: !3387, size: 64, offset: 3968)
!3387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !873, file: !31, line: 697, size: 64, elements: !3388)
!3388 = !{!3389, !3390, !3391, !3402, !3403}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3387, file: !31, line: 698, baseType: !2441, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3387, file: !31, line: 699, baseType: !2897, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3387, file: !31, line: 700, baseType: !3392, size: 64)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3394, line: 14, size: 832, elements: !3395)
!3394 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3395 = !{!3396, !3397, !3398, !3399, !3400, !3401}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3393, file: !3394, line: 15, baseType: !677, size: 512)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3393, file: !3394, line: 16, baseType: !316, size: 64, offset: 512)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3393, file: !3394, line: 17, baseType: !3144, size: 64, offset: 576)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3393, file: !3394, line: 18, baseType: !660, size: 128, offset: 640)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3393, file: !3394, line: 19, baseType: !954, size: 32, offset: 768)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3393, file: !3394, line: 20, baseType: !7, size: 32, offset: 800)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3387, file: !31, line: 701, baseType: !642, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3387, file: !31, line: 702, baseType: !7, size: 32)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !873, file: !31, line: 705, baseType: !367, size: 32, offset: 4032)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !873, file: !31, line: 708, baseType: !367, size: 32, offset: 4064)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !873, file: !31, line: 709, baseType: !2978, size: 64, offset: 4096)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !873, file: !31, line: 720, baseType: !321, size: 64, offset: 4160)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !834, file: !831, line: 98, baseType: !3409, size: 256, offset: 448)
!3409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 256, elements: !2573)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !834, file: !831, line: 101, baseType: !3411, size: 32, offset: 704)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3412, line: 25, size: 32, elements: !3413)
!3412 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3413 = !{!3414}
!3414 = !DIDerivedType(tag: DW_TAG_member, scope: !3411, file: !3412, line: 26, baseType: !3415, size: 32)
!3415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3411, file: !3412, line: 26, size: 32, elements: !3416)
!3416 = !{!3417}
!3417 = !DIDerivedType(tag: DW_TAG_member, scope: !3415, file: !3412, line: 30, baseType: !3418, size: 32)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3415, file: !3412, line: 30, size: 32, elements: !3419)
!3419 = !{!3420, !3421}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3418, file: !3412, line: 31, baseType: !690)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3418, file: !3412, line: 32, baseType: !328, size: 32)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !834, file: !831, line: 102, baseType: !2995, size: 64, offset: 768)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !834, file: !831, line: 103, baseType: !1038, size: 64, offset: 832)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !834, file: !831, line: 104, baseType: !568, size: 64, offset: 896)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !834, file: !831, line: 105, baseType: !321, size: 64, offset: 960)
!3426 = !DIDerivedType(tag: DW_TAG_member, scope: !834, file: !831, line: 107, baseType: !3427, size: 128, offset: 1024)
!3427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !834, file: !831, line: 107, size: 128, elements: !3428)
!3428 = !{!3429, !3430}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3427, file: !831, line: 108, baseType: !660, size: 128)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3427, file: !831, line: 109, baseType: !3197, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !834, file: !831, line: 111, baseType: !660, size: 128, offset: 1152)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !834, file: !831, line: 112, baseType: !660, size: 128, offset: 1280)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !834, file: !831, line: 120, baseType: !3434, size: 128, offset: 1408)
!3434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !834, file: !831, line: 116, size: 128, elements: !3435)
!3435 = !{!3436, !3437, !3438}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3434, file: !831, line: 117, baseType: !1078, size: 128)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3434, file: !831, line: 118, baseType: !848, size: 128)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3434, file: !831, line: 119, baseType: !816, size: 128, align: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !804, file: !31, line: 922, baseType: !872, size: 64, offset: 256)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !804, file: !31, line: 923, baseType: !3144, size: 64, offset: 320)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !804, file: !31, line: 929, baseType: !690, offset: 384)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !804, file: !31, line: 930, baseType: !30, size: 32, offset: 384)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !804, file: !31, line: 931, baseType: !1206, size: 64, offset: 448)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !804, file: !31, line: 932, baseType: !7, size: 32, offset: 512)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !804, file: !31, line: 933, baseType: !2991, size: 32, offset: 544)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !804, file: !31, line: 934, baseType: !1524, size: 192, offset: 576)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !804, file: !31, line: 935, baseType: !972, size: 64, offset: 768)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !804, file: !31, line: 936, baseType: !3449, size: 192, offset: 832)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 885, size: 192, elements: !3450)
!3450 = !{!3451, !3452, !3453, !3454, !3455, !3456}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3449, file: !31, line: 886, baseType: !3253)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3449, file: !31, line: 887, baseType: !1815, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3449, file: !31, line: 888, baseType: !39, size: 32, offset: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3449, file: !31, line: 889, baseType: !878, size: 32, offset: 96)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3449, file: !31, line: 889, baseType: !878, size: 32, offset: 128)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3449, file: !31, line: 890, baseType: !328, size: 32, offset: 160)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !804, file: !31, line: 937, baseType: !1891, size: 64, offset: 1024)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !804, file: !31, line: 938, baseType: !3459, size: 256, offset: 1088)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 896, size: 256, elements: !3460)
!3460 = !{!3461, !3462, !3463, !3464, !3465, !3466}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3459, file: !31, line: 897, baseType: !568, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3459, file: !31, line: 898, baseType: !7, size: 32, offset: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3459, file: !31, line: 899, baseType: !7, size: 32, offset: 96)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3459, file: !31, line: 902, baseType: !7, size: 32, offset: 128)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3459, file: !31, line: 903, baseType: !7, size: 32, offset: 160)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3459, file: !31, line: 904, baseType: !972, size: 64, offset: 192)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !804, file: !31, line: 940, baseType: !609, size: 64, offset: 1344)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !804, file: !31, line: 945, baseType: !321, size: 64, offset: 1408)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !804, file: !31, line: 949, baseType: !660, size: 128, offset: 1472)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !804, file: !31, line: 950, baseType: !660, size: 128, offset: 1600)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !804, file: !31, line: 952, baseType: !1173, size: 64, offset: 1728)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !804, file: !31, line: 953, baseType: !1342, size: 32, offset: 1792)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !804, file: !31, line: 954, baseType: !1342, size: 32, offset: 1824)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !794, file: !753, line: 174, baseType: !800, size: 64, offset: 320)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !794, file: !753, line: 176, baseType: !3476, size: 64, offset: 384)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!328, !803, !683, !793, !1414}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !782, file: !753, line: 90, baseType: !777, size: 64, offset: 192)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !782, file: !753, line: 91, baseType: !3481, size: 64, offset: 256)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !743, file: !678, line: 143, baseType: !3483, size: 64, offset: 256)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{!3486, !683}
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3488)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !25, line: 39, size: 384, elements: !3489)
!3489 = !{!3490, !3491, !3495, !3499, !3505, !3509}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3488, file: !25, line: 40, baseType: !24, size: 32)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3488, file: !25, line: 41, baseType: !3492, size: 64, offset: 64)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!400}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3488, file: !25, line: 42, baseType: !3496, size: 64, offset: 128)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!321}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3488, file: !25, line: 43, baseType: !3500, size: 64, offset: 192)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{!2470, !3503}
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !25, line: 19, flags: DIFlagFwdDecl)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3488, file: !25, line: 44, baseType: !3506, size: 64, offset: 256)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!2470}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3488, file: !25, line: 45, baseType: !911, size: 64, offset: 320)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !743, file: !678, line: 144, baseType: !3511, size: 64, offset: 320)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!2470, !683}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !743, file: !678, line: 145, baseType: !3515, size: 64, offset: 384)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{null, !683, !3518, !3519}
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !677, file: !678, line: 70, baseType: !3521, size: 64, offset: 384)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1058, line: 123, size: 1024, elements: !3523)
!3523 = !{!3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3652, !3653, !3654, !3655, !3656}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3522, file: !1058, line: 124, baseType: !350, size: 32)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3522, file: !1058, line: 125, baseType: !350, size: 32, offset: 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3522, file: !1058, line: 135, baseType: !3521, size: 64, offset: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3522, file: !1058, line: 136, baseType: !667, size: 64, offset: 128)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3522, file: !1058, line: 138, baseType: !1195, size: 192, align: 64, offset: 192)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3522, file: !1058, line: 140, baseType: !2470, size: 64, offset: 384)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3522, file: !1058, line: 141, baseType: !7, size: 32, offset: 448)
!3531 = !DIDerivedType(tag: DW_TAG_member, scope: !3522, file: !1058, line: 142, baseType: !3532, size: 256, offset: 512)
!3532 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3522, file: !1058, line: 142, size: 256, elements: !3533)
!3533 = !{!3534, !3580, !3584}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3532, file: !1058, line: 143, baseType: !3535, size: 192)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1058, line: 91, size: 192, elements: !3536)
!3536 = !{!3537, !3538, !3539}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3535, file: !1058, line: 92, baseType: !568, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3535, file: !1058, line: 94, baseType: !1191, size: 64, offset: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3535, file: !1058, line: 100, baseType: !3540, size: 64, offset: 128)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1058, line: 180, size: 704, elements: !3542)
!3542 = !{!3543, !3544, !3545, !3552, !3553, !3554, !3578, !3579}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3541, file: !1058, line: 182, baseType: !3521, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3541, file: !1058, line: 183, baseType: !7, size: 32, offset: 64)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3541, file: !1058, line: 186, baseType: !3546, size: 192, offset: 128)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3547, line: 19, size: 192, elements: !3548)
!3547 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3548 = !{!3549, !3550, !3551}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3546, file: !3547, line: 20, baseType: !1178, size: 128)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3546, file: !3547, line: 21, baseType: !7, size: 32, offset: 128)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3546, file: !3547, line: 22, baseType: !7, size: 32, offset: 160)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3541, file: !1058, line: 187, baseType: !366, size: 32, offset: 320)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3541, file: !1058, line: 188, baseType: !366, size: 32, offset: 352)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3541, file: !1058, line: 189, baseType: !3555, size: 64, offset: 384)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1058, line: 168, size: 320, elements: !3557)
!3557 = !{!3558, !3562, !3566, !3570, !3574}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3556, file: !1058, line: 169, baseType: !3559, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!328, !1150, !3540}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3556, file: !1058, line: 171, baseType: !3563, size: 64, offset: 64)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!328, !3521, !667, !768}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3556, file: !1058, line: 173, baseType: !3567, size: 64, offset: 128)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!328, !3521}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3556, file: !1058, line: 174, baseType: !3571, size: 64, offset: 192)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!328, !3521, !3521, !667}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3556, file: !1058, line: 176, baseType: !3575, size: 64, offset: 256)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{!328, !1150, !3521, !3540}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3541, file: !1058, line: 192, baseType: !660, size: 128, offset: 448)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3541, file: !1058, line: 194, baseType: !1825, size: 128, offset: 576)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3532, file: !1058, line: 144, baseType: !3581, size: 64)
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1058, line: 103, size: 64, elements: !3582)
!3582 = !{!3583}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3581, file: !1058, line: 104, baseType: !3521, size: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3532, file: !1058, line: 145, baseType: !3585, size: 256)
!3585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1058, line: 107, size: 256, elements: !3586)
!3586 = !{!3587, !3647, !3650, !3651}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3585, file: !1058, line: 108, baseType: !3588, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3590)
!3590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1058, line: 217, size: 768, elements: !3591)
!3591 = !{!3592, !3612, !3616, !3620, !3624, !3628, !3632, !3636, !3637, !3638, !3639, !3643}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3590, file: !1058, line: 222, baseType: !3593, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!328, !3596}
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1058, line: 197, size: 1088, elements: !3598)
!3598 = !{!3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3597, file: !1058, line: 199, baseType: !3521, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3597, file: !1058, line: 200, baseType: !803, size: 64, offset: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3597, file: !1058, line: 201, baseType: !1150, size: 64, offset: 128)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3597, file: !1058, line: 202, baseType: !321, size: 64, offset: 192)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3597, file: !1058, line: 205, baseType: !1524, size: 192, offset: 256)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3597, file: !1058, line: 206, baseType: !1524, size: 192, offset: 448)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3597, file: !1058, line: 207, baseType: !328, size: 32, offset: 640)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3597, file: !1058, line: 208, baseType: !660, size: 128, offset: 704)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3597, file: !1058, line: 209, baseType: !642, size: 64, offset: 832)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3597, file: !1058, line: 211, baseType: !773, size: 64, offset: 896)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3597, file: !1058, line: 212, baseType: !400, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3597, file: !1058, line: 213, baseType: !400, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3597, file: !1058, line: 214, baseType: !1442, size: 64, offset: 1024)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3590, file: !1058, line: 223, baseType: !3613, size: 64, offset: 64)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{null, !3596}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3590, file: !1058, line: 236, baseType: !3617, size: 64, offset: 128)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{!328, !1150, !321}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3590, file: !1058, line: 238, baseType: !3621, size: 64, offset: 192)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!321, !1150, !3157}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3590, file: !1058, line: 239, baseType: !3625, size: 64, offset: 256)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!321, !1150, !321, !3157}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3590, file: !1058, line: 240, baseType: !3629, size: 64, offset: 320)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{null, !1150, !321}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3590, file: !1058, line: 242, baseType: !3633, size: 64, offset: 384)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!759, !3596, !642, !773, !972}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3590, file: !1058, line: 252, baseType: !773, size: 64, offset: 448)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3590, file: !1058, line: 259, baseType: !400, size: 8, offset: 512)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3590, file: !1058, line: 260, baseType: !3633, size: 64, offset: 576)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3590, file: !1058, line: 263, baseType: !3640, size: 64, offset: 640)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{!3186, !3596, !3188}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3590, file: !1058, line: 266, baseType: !3644, size: 64, offset: 704)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!328, !3596, !1414}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3585, file: !1058, line: 109, baseType: !3648, size: 64, offset: 64)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1058, line: 31, flags: DIFlagFwdDecl)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3585, file: !1058, line: 110, baseType: !972, size: 64, offset: 128)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3585, file: !1058, line: 111, baseType: !3521, size: 64, offset: 192)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3522, file: !1058, line: 148, baseType: !321, size: 64, offset: 768)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3522, file: !1058, line: 154, baseType: !609, size: 64, offset: 832)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3522, file: !1058, line: 156, baseType: !520, size: 16, offset: 896)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3522, file: !1058, line: 157, baseType: !768, size: 16, offset: 912)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3522, file: !1058, line: 158, baseType: !3657, size: 64, offset: 960)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1058, line: 32, flags: DIFlagFwdDecl)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !677, file: !678, line: 71, baseType: !341, size: 32, offset: 448)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !677, file: !678, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !677, file: !678, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !677, file: !678, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !677, file: !678, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !677, file: !678, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !674, file: !60, line: 463, baseType: !673, size: 64, offset: 512)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !674, file: !60, line: 465, baseType: !3667, size: 64, offset: 576)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !60, line: 36, flags: DIFlagFwdDecl)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !674, file: !60, line: 467, baseType: !667, size: 64, offset: 640)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !674, file: !60, line: 468, baseType: !3671, size: 64, offset: 704)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3673)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !60, line: 87, size: 384, elements: !3674)
!3674 = !{!3675, !3676, !3677, !3681, !3686, !3690}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3673, file: !60, line: 88, baseType: !667, size: 64)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3673, file: !60, line: 89, baseType: !779, size: 64, offset: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3673, file: !60, line: 90, baseType: !3678, size: 64, offset: 128)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!328, !673, !726}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3673, file: !60, line: 91, baseType: !3682, size: 64, offset: 192)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!642, !673, !3685, !3518, !3519}
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3673, file: !60, line: 93, baseType: !3687, size: 64, offset: 256)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{null, !673}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3673, file: !60, line: 95, baseType: !3691, size: 64, offset: 320)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3693)
!3693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !67, line: 278, size: 1472, elements: !3694)
!3694 = !{!3695, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3693, file: !67, line: 279, baseType: !3696, size: 64)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!328, !673}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3693, file: !67, line: 280, baseType: !3687, size: 64, offset: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3693, file: !67, line: 281, baseType: !3696, size: 64, offset: 128)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3693, file: !67, line: 282, baseType: !3696, size: 64, offset: 192)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3693, file: !67, line: 283, baseType: !3696, size: 64, offset: 256)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3693, file: !67, line: 284, baseType: !3696, size: 64, offset: 320)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3693, file: !67, line: 285, baseType: !3696, size: 64, offset: 384)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3693, file: !67, line: 286, baseType: !3696, size: 64, offset: 448)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3693, file: !67, line: 287, baseType: !3696, size: 64, offset: 512)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3693, file: !67, line: 288, baseType: !3696, size: 64, offset: 576)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3693, file: !67, line: 289, baseType: !3696, size: 64, offset: 640)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3693, file: !67, line: 290, baseType: !3696, size: 64, offset: 704)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3693, file: !67, line: 291, baseType: !3696, size: 64, offset: 768)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3693, file: !67, line: 292, baseType: !3696, size: 64, offset: 832)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3693, file: !67, line: 293, baseType: !3696, size: 64, offset: 896)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3693, file: !67, line: 294, baseType: !3696, size: 64, offset: 960)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3693, file: !67, line: 295, baseType: !3696, size: 64, offset: 1024)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3693, file: !67, line: 296, baseType: !3696, size: 64, offset: 1088)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3693, file: !67, line: 297, baseType: !3696, size: 64, offset: 1152)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3693, file: !67, line: 298, baseType: !3696, size: 64, offset: 1216)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3693, file: !67, line: 299, baseType: !3696, size: 64, offset: 1280)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3693, file: !67, line: 300, baseType: !3696, size: 64, offset: 1344)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3693, file: !67, line: 301, baseType: !3696, size: 64, offset: 1408)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !674, file: !60, line: 470, baseType: !3722, size: 64, offset: 768)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3724, line: 82, size: 1408, elements: !3725)
!3724 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3725 = !{!3726, !3727, !3728, !3729, !3730, !3731, !3732, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3804, !3807, !3808}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3723, file: !3724, line: 83, baseType: !667, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3723, file: !3724, line: 84, baseType: !667, size: 64, offset: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3723, file: !3724, line: 85, baseType: !673, size: 64, offset: 128)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3723, file: !3724, line: 86, baseType: !779, size: 64, offset: 192)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3723, file: !3724, line: 87, baseType: !779, size: 64, offset: 256)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3723, file: !3724, line: 88, baseType: !779, size: 64, offset: 320)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3723, file: !3724, line: 90, baseType: !3733, size: 64, offset: 384)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!328, !673, !3736}
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !54, line: 95, size: 1152, elements: !3738)
!3738 = !{!3739, !3740, !3741, !3742, !3743, !3744, !3745, !3755, !3768, !3769, !3770, !3771, !3772, !3780, !3781, !3782, !3783, !3784, !3785}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3737, file: !54, line: 96, baseType: !667, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3737, file: !54, line: 97, baseType: !3722, size: 64, offset: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3737, file: !54, line: 99, baseType: !316, size: 64, offset: 128)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3737, file: !54, line: 100, baseType: !667, size: 64, offset: 192)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3737, file: !54, line: 102, baseType: !400, size: 8, offset: 256)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3737, file: !54, line: 103, baseType: !53, size: 32, offset: 288)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3737, file: !54, line: 105, baseType: !3746, size: 64, offset: 320)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3748)
!3748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3749, line: 262, size: 1600, elements: !3750)
!3749 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3750 = !{!3751, !3752, !3753, !3754}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3748, file: !3749, line: 263, baseType: !2981, size: 256)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3748, file: !3749, line: 264, baseType: !2981, size: 256, offset: 256)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3748, file: !3749, line: 265, baseType: !361, size: 1024, offset: 512)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3748, file: !3749, line: 266, baseType: !2470, size: 64, offset: 1536)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3737, file: !54, line: 106, baseType: !3756, size: 64, offset: 384)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3758)
!3758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3749, line: 210, size: 256, elements: !3759)
!3759 = !{!3760, !3764, !3766, !3767}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3758, file: !3749, line: 211, baseType: !3761, size: 72)
!3761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 72, elements: !3762)
!3762 = !{!3763}
!3763 = !DISubrange(count: 9)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3758, file: !3749, line: 212, baseType: !3765, size: 64, offset: 128)
!3765 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3749, line: 14, baseType: !568)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3758, file: !3749, line: 213, baseType: !367, size: 32, offset: 192)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3758, file: !3749, line: 214, baseType: !367, size: 32, offset: 224)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3737, file: !54, line: 108, baseType: !3696, size: 64, offset: 448)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3737, file: !54, line: 109, baseType: !3687, size: 64, offset: 512)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3737, file: !54, line: 110, baseType: !3696, size: 64, offset: 576)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3737, file: !54, line: 111, baseType: !3687, size: 64, offset: 640)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3737, file: !54, line: 112, baseType: !3773, size: 64, offset: 704)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!328, !673, !3776}
!3776 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !67, line: 52, baseType: !3777)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !67, line: 50, size: 32, elements: !3778)
!3778 = !{!3779}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3777, file: !67, line: 51, baseType: !328, size: 32)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3737, file: !54, line: 113, baseType: !3696, size: 64, offset: 768)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3737, file: !54, line: 114, baseType: !779, size: 64, offset: 832)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3737, file: !54, line: 115, baseType: !779, size: 64, offset: 896)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3737, file: !54, line: 117, baseType: !3691, size: 64, offset: 960)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3737, file: !54, line: 118, baseType: !3687, size: 64, offset: 1024)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3737, file: !54, line: 120, baseType: !3786, size: 64, offset: 1088)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !54, line: 120, flags: DIFlagFwdDecl)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3723, file: !3724, line: 91, baseType: !3678, size: 64, offset: 448)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3723, file: !3724, line: 92, baseType: !3696, size: 64, offset: 512)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3723, file: !3724, line: 93, baseType: !3687, size: 64, offset: 576)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3723, file: !3724, line: 94, baseType: !3696, size: 64, offset: 640)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3723, file: !3724, line: 95, baseType: !3687, size: 64, offset: 704)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3723, file: !3724, line: 97, baseType: !3696, size: 64, offset: 768)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3723, file: !3724, line: 98, baseType: !3696, size: 64, offset: 832)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3723, file: !3724, line: 100, baseType: !3773, size: 64, offset: 896)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3723, file: !3724, line: 101, baseType: !3696, size: 64, offset: 960)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3723, file: !3724, line: 103, baseType: !3696, size: 64, offset: 1024)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3723, file: !3724, line: 105, baseType: !3696, size: 64, offset: 1088)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3723, file: !3724, line: 107, baseType: !3691, size: 64, offset: 1152)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3723, file: !3724, line: 109, baseType: !3801, size: 64, offset: 1216)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3803)
!3803 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3724, line: 109, flags: DIFlagFwdDecl)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3723, file: !3724, line: 111, baseType: !3805, size: 64, offset: 1280)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3724, line: 111, flags: DIFlagFwdDecl)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3723, file: !3724, line: 112, baseType: !1084, offset: 1344)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3723, file: !3724, line: 114, baseType: !400, size: 8, offset: 1344)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !674, file: !60, line: 471, baseType: !3736, size: 64, offset: 832)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !674, file: !60, line: 473, baseType: !321, size: 64, offset: 896)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !674, file: !60, line: 475, baseType: !321, size: 64, offset: 960)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !674, file: !60, line: 480, baseType: !1524, size: 192, offset: 1024)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !674, file: !60, line: 484, baseType: !3814, size: 576, offset: 1216)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !60, line: 361, size: 576, elements: !3815)
!3815 = !{!3816, !3817, !3818, !3819, !3820, !3821}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3814, file: !60, line: 362, baseType: !660, size: 128)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3814, file: !60, line: 363, baseType: !660, size: 128, offset: 128)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3814, file: !60, line: 364, baseType: !660, size: 128, offset: 256)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3814, file: !60, line: 365, baseType: !660, size: 128, offset: 384)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3814, file: !60, line: 366, baseType: !400, size: 8, offset: 512)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3814, file: !60, line: 367, baseType: !59, size: 32, offset: 544)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !674, file: !60, line: 485, baseType: !3823, size: 2304, offset: 1792)
!3823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !67, line: 565, size: 2304, elements: !3824)
!3824 = !{!3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3920, !3924}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3823, file: !67, line: 566, baseType: !3776, size: 32)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3823, file: !67, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3823, file: !67, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3823, file: !67, line: 569, baseType: !400, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3823, file: !67, line: 570, baseType: !400, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3823, file: !67, line: 571, baseType: !400, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3823, file: !67, line: 572, baseType: !400, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3823, file: !67, line: 573, baseType: !400, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3823, file: !67, line: 574, baseType: !400, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3823, file: !67, line: 575, baseType: !400, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3823, file: !67, line: 576, baseType: !400, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3823, file: !67, line: 577, baseType: !366, size: 32, offset: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3823, file: !67, line: 578, baseType: !690, offset: 96)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3823, file: !67, line: 580, baseType: !660, size: 128, offset: 128)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3823, file: !67, line: 581, baseType: !1846, size: 192, offset: 256)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3823, file: !67, line: 582, baseType: !3841, size: 64, offset: 448)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3843, line: 43, size: 1472, elements: !3844)
!3843 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3844 = !{!3845, !3846, !3847, !3848, !3849, !3852, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3842, file: !3843, line: 44, baseType: !667, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3842, file: !3843, line: 45, baseType: !328, size: 32, offset: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3842, file: !3843, line: 46, baseType: !660, size: 128, offset: 128)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3842, file: !3843, line: 47, baseType: !690, offset: 256)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3842, file: !3843, line: 48, baseType: !3850, size: 64, offset: 256)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !67, line: 533, flags: DIFlagFwdDecl)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3842, file: !3843, line: 49, baseType: !3853, size: 320, offset: 320)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3854, line: 11, size: 320, elements: !3855)
!3854 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3855 = !{!3856, !3857, !3858, !3863}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3853, file: !3854, line: 16, baseType: !1078, size: 128)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3853, file: !3854, line: 17, baseType: !568, size: 64, offset: 128)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3853, file: !3854, line: 18, baseType: !3859, size: 64, offset: 192)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{null, !3862}
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3853, file: !3854, line: 19, baseType: !366, size: 32, offset: 256)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3842, file: !3843, line: 50, baseType: !568, size: 64, offset: 640)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3842, file: !3843, line: 51, baseType: !1646, size: 64, offset: 704)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3842, file: !3843, line: 52, baseType: !1646, size: 64, offset: 768)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3842, file: !3843, line: 53, baseType: !1646, size: 64, offset: 832)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3842, file: !3843, line: 54, baseType: !1646, size: 64, offset: 896)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3842, file: !3843, line: 55, baseType: !1646, size: 64, offset: 960)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3842, file: !3843, line: 56, baseType: !568, size: 64, offset: 1024)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3842, file: !3843, line: 57, baseType: !568, size: 64, offset: 1088)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3842, file: !3843, line: 58, baseType: !568, size: 64, offset: 1152)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3842, file: !3843, line: 59, baseType: !568, size: 64, offset: 1216)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3842, file: !3843, line: 60, baseType: !568, size: 64, offset: 1280)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3842, file: !3843, line: 61, baseType: !673, size: 64, offset: 1344)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3842, file: !3843, line: 62, baseType: !400, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3842, file: !3843, line: 63, baseType: !400, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3823, file: !67, line: 583, baseType: !400, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3823, file: !67, line: 584, baseType: !400, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3823, file: !67, line: 585, baseType: !400, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3823, file: !67, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3823, file: !67, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3823, file: !67, line: 592, baseType: !1638, size: 512, offset: 576)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3823, file: !67, line: 593, baseType: !609, size: 64, offset: 1088)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3823, file: !67, line: 594, baseType: !2300, size: 256, offset: 1152)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3823, file: !67, line: 595, baseType: !1825, size: 128, offset: 1408)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3823, file: !67, line: 596, baseType: !3850, size: 64, offset: 1536)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3823, file: !67, line: 597, baseType: !350, size: 32, offset: 1600)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3823, file: !67, line: 598, baseType: !350, size: 32, offset: 1632)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3823, file: !67, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3823, file: !67, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3823, file: !67, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3823, file: !67, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3823, file: !67, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3823, file: !67, line: 604, baseType: !400, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3823, file: !67, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3823, file: !67, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3823, file: !67, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3823, file: !67, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3823, file: !67, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3823, file: !67, line: 610, baseType: !7, size: 32, offset: 1696)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3823, file: !67, line: 611, baseType: !66, size: 32, offset: 1728)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3823, file: !67, line: 612, baseType: !74, size: 32, offset: 1760)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3823, file: !67, line: 613, baseType: !328, size: 32, offset: 1792)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3823, file: !67, line: 614, baseType: !328, size: 32, offset: 1824)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3823, file: !67, line: 615, baseType: !609, size: 64, offset: 1856)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3823, file: !67, line: 616, baseType: !609, size: 64, offset: 1920)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3823, file: !67, line: 617, baseType: !609, size: 64, offset: 1984)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3823, file: !67, line: 618, baseType: !609, size: 64, offset: 2048)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3823, file: !67, line: 620, baseType: !3911, size: 64, offset: 2112)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !67, line: 536, size: 256, elements: !3913)
!3913 = !{!3914, !3915, !3916, !3917}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3912, file: !67, line: 537, baseType: !690)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3912, file: !67, line: 538, baseType: !7, size: 32)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3912, file: !67, line: 540, baseType: !660, size: 128, offset: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3912, file: !67, line: 543, baseType: !3918, size: 64, offset: 192)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !67, line: 534, flags: DIFlagFwdDecl)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3823, file: !67, line: 621, baseType: !3921, size: 64, offset: 2176)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = !DISubroutineType(types: !3923)
!3923 = !{null, !673, !624}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3823, file: !67, line: 622, baseType: !3925, size: 64, offset: 2240)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !67, line: 622, flags: DIFlagFwdDecl)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !674, file: !60, line: 486, baseType: !3928, size: 64, offset: 4096)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !67, line: 642, size: 1792, elements: !3930)
!3930 = !{!3931, !3932, !3933, !3937, !3938, !3939}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3929, file: !67, line: 643, baseType: !3693, size: 1472)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3929, file: !67, line: 644, baseType: !3696, size: 64, offset: 1472)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3929, file: !67, line: 645, baseType: !3934, size: 64, offset: 1536)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{null, !673, !400}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3929, file: !67, line: 646, baseType: !3696, size: 64, offset: 1600)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3929, file: !67, line: 647, baseType: !3687, size: 64, offset: 1664)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3929, file: !67, line: 648, baseType: !3687, size: 64, offset: 1728)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !674, file: !60, line: 493, baseType: !3941, size: 64, offset: 4160)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !81, line: 162, size: 1088, elements: !3943)
!3943 = !{!3944, !3945, !3946, !4119, !4120, !4121, !4122, !4123, !4124, !4127, !4128, !4129, !4130, !4131, !4132, !4133}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3942, file: !81, line: 163, baseType: !660, size: 128)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3942, file: !81, line: 164, baseType: !667, size: 64, offset: 128)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3942, file: !81, line: 165, baseType: !3947, size: 64, offset: 192)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3949)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !81, line: 105, size: 640, elements: !3950)
!3950 = !{!3951, !4069, !4080, !4085, !4089, !4096, !4100, !4104, !4111, !4115}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3949, file: !81, line: 106, baseType: !3952, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!328, !3941, !3955, !80}
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3957, line: 51, size: 1344, elements: !3958)
!3957 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3958 = !{!3959, !3960, !3962, !3963, !4053, !4062, !4063, !4064, !4065, !4066, !4067, !4068}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3956, file: !3957, line: 52, baseType: !667, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3956, file: !3957, line: 53, baseType: !3961, size: 32, offset: 64)
!3961 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3957, line: 28, baseType: !366)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3956, file: !3957, line: 54, baseType: !667, size: 64, offset: 128)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3956, file: !3957, line: 55, baseType: !3964, size: 192, offset: 192)
!3964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3965, line: 17, size: 192, elements: !3966)
!3965 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3966 = !{!3967, !3969, !4052}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3964, file: !3965, line: 18, baseType: !3968, size: 64)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3964, file: !3965, line: 19, baseType: !3970, size: 64, offset: 64)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3972)
!3972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3965, line: 110, size: 1152, elements: !3973)
!3973 = !{!3974, !3978, !3982, !3988, !3994, !3998, !4002, !4007, !4011, !4012, !4016, !4020, !4024, !4035, !4036, !4037, !4038, !4048}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3972, file: !3965, line: 111, baseType: !3975, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!3968, !3968}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3972, file: !3965, line: 112, baseType: !3979, size: 64, offset: 64)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{null, !3968}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3972, file: !3965, line: 113, baseType: !3983, size: 64, offset: 128)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!400, !3986}
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3964)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3972, file: !3965, line: 114, baseType: !3989, size: 64, offset: 192)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!2470, !3986, !3992}
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !674)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3972, file: !3965, line: 116, baseType: !3995, size: 64, offset: 256)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!400, !3986, !667}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3972, file: !3965, line: 118, baseType: !3999, size: 64, offset: 320)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!328, !3986, !667, !7, !321, !773}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3972, file: !3965, line: 123, baseType: !4003, size: 64, offset: 384)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!328, !3986, !667, !4006, !773}
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3972, file: !3965, line: 126, baseType: !4008, size: 64, offset: 448)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!667, !3986}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3972, file: !3965, line: 127, baseType: !4008, size: 64, offset: 512)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3972, file: !3965, line: 128, baseType: !4013, size: 64, offset: 576)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!3968, !3986}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3972, file: !3965, line: 130, baseType: !4017, size: 64, offset: 640)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{!3968, !3986, !3968}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3972, file: !3965, line: 133, baseType: !4021, size: 64, offset: 704)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!3968, !3986, !667}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3972, file: !3965, line: 135, baseType: !4025, size: 64, offset: 768)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{!328, !3986, !667, !667, !7, !7, !4028}
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3965, line: 43, size: 640, elements: !4030)
!4030 = !{!4031, !4032, !4033}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4029, file: !3965, line: 44, baseType: !3968, size: 64)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4029, file: !3965, line: 45, baseType: !7, size: 32, offset: 64)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4029, file: !3965, line: 46, baseType: !4034, size: 512, offset: 128)
!4034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, size: 512, elements: !377)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3972, file: !3965, line: 140, baseType: !4017, size: 64, offset: 832)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3972, file: !3965, line: 143, baseType: !4013, size: 64, offset: 896)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3972, file: !3965, line: 145, baseType: !3975, size: 64, offset: 960)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3972, file: !3965, line: 146, baseType: !4039, size: 64, offset: 1024)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!328, !3986, !4042}
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3965, line: 29, size: 128, elements: !4044)
!4044 = !{!4045, !4046, !4047}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4043, file: !3965, line: 30, baseType: !7, size: 32)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4043, file: !3965, line: 31, baseType: !7, size: 32, offset: 32)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4043, file: !3965, line: 32, baseType: !3986, size: 64, offset: 64)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3972, file: !3965, line: 148, baseType: !4049, size: 64, offset: 1088)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!328, !3986, !673}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3964, file: !3965, line: 20, baseType: !673, size: 64, offset: 128)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3956, file: !3957, line: 57, baseType: !4054, size: 64, offset: 384)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3957, line: 31, size: 704, elements: !4056)
!4056 = !{!4057, !4058, !4059, !4060, !4061}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4055, file: !3957, line: 32, baseType: !642, size: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4055, file: !3957, line: 33, baseType: !328, size: 32, offset: 64)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4055, file: !3957, line: 34, baseType: !321, size: 64, offset: 128)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4055, file: !3957, line: 35, baseType: !4054, size: 64, offset: 192)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4055, file: !3957, line: 43, baseType: !794, size: 448, offset: 256)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3956, file: !3957, line: 58, baseType: !4054, size: 64, offset: 448)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3956, file: !3957, line: 59, baseType: !3955, size: 64, offset: 512)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3956, file: !3957, line: 60, baseType: !3955, size: 64, offset: 576)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3956, file: !3957, line: 61, baseType: !3955, size: 64, offset: 640)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3956, file: !3957, line: 63, baseType: !677, size: 512, offset: 704)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3956, file: !3957, line: 65, baseType: !568, size: 64, offset: 1216)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3956, file: !3957, line: 66, baseType: !321, size: 64, offset: 1280)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3949, file: !81, line: 108, baseType: !4070, size: 64, offset: 64)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!328, !3941, !4073, !80}
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !81, line: 63, size: 640, elements: !4075)
!4075 = !{!4076, !4077, !4078}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4074, file: !81, line: 64, baseType: !3968, size: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !4074, file: !81, line: 65, baseType: !328, size: 32, offset: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4074, file: !81, line: 66, baseType: !4079, size: 512, offset: 96)
!4079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 512, elements: !2077)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3949, file: !81, line: 110, baseType: !4081, size: 64, offset: 128)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!328, !3941, !7, !4084}
!4084 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !320, line: 164, baseType: !568)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3949, file: !81, line: 111, baseType: !4086, size: 64, offset: 192)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{null, !3941, !7}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3949, file: !81, line: 112, baseType: !4090, size: 64, offset: 256)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{!328, !3941, !3955, !4093, !7, !4095, !402}
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3949, file: !81, line: 117, baseType: !4097, size: 64, offset: 320)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{!328, !3941, !7, !7, !321}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3949, file: !81, line: 119, baseType: !4101, size: 64, offset: 384)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{null, !3941, !7, !7}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3949, file: !81, line: 121, baseType: !4105, size: 64, offset: 448)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{!328, !3941, !4108, !400}
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !4110, line: 11, flags: DIFlagFwdDecl)
!4110 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3949, file: !81, line: 122, baseType: !4112, size: 64, offset: 512)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{null, !3941, !4108}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3949, file: !81, line: 123, baseType: !4116, size: 64, offset: 576)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!328, !3941, !4073, !4095, !402}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3942, file: !81, line: 166, baseType: !321, size: 64, offset: 256)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3942, file: !81, line: 167, baseType: !7, size: 32, offset: 320)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3942, file: !81, line: 168, baseType: !7, size: 32, offset: 352)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3942, file: !81, line: 171, baseType: !3968, size: 64, offset: 384)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3942, file: !81, line: 172, baseType: !80, size: 32, offset: 448)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3942, file: !81, line: 173, baseType: !4125, size: 64, offset: 512)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !81, line: 134, flags: DIFlagFwdDecl)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3942, file: !81, line: 175, baseType: !3941, size: 64, offset: 576)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3942, file: !81, line: 182, baseType: !4084, size: 64, offset: 640)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3942, file: !81, line: 183, baseType: !7, size: 32, offset: 704)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3942, file: !81, line: 184, baseType: !7, size: 32, offset: 736)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3942, file: !81, line: 185, baseType: !1178, size: 128, offset: 768)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3942, file: !81, line: 186, baseType: !1524, size: 192, offset: 896)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3942, file: !81, line: 187, baseType: !4134, offset: 1088)
!4134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2674)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !674, file: !60, line: 499, baseType: !660, size: 128, offset: 4224)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !674, file: !60, line: 502, baseType: !4137, size: 64, offset: 4352)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4139)
!4139 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !60, line: 502, flags: DIFlagFwdDecl)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !674, file: !60, line: 504, baseType: !4141, size: 64, offset: 4416)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !674, file: !60, line: 505, baseType: !609, size: 64, offset: 4480)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !674, file: !60, line: 510, baseType: !609, size: 64, offset: 4544)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !674, file: !60, line: 511, baseType: !4145, size: 64, offset: 4608)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4147)
!4147 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !60, line: 511, flags: DIFlagFwdDecl)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !674, file: !60, line: 513, baseType: !4149, size: 64, offset: 4672)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !60, line: 288, size: 128, elements: !4151)
!4151 = !{!4152, !4153}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4150, file: !60, line: 293, baseType: !7, size: 32)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4150, file: !60, line: 294, baseType: !568, size: 64, offset: 64)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !674, file: !60, line: 515, baseType: !660, size: 128, offset: 4736)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !674, file: !60, line: 526, baseType: !4156, offset: 4864)
!4156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4157, line: 5, elements: !704)
!4157 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !674, file: !60, line: 528, baseType: !3955, size: 64, offset: 4864)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !674, file: !60, line: 529, baseType: !3968, size: 64, offset: 4928)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !674, file: !60, line: 534, baseType: !954, size: 32, offset: 4992)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !674, file: !60, line: 535, baseType: !366, size: 32, offset: 5024)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !674, file: !60, line: 537, baseType: !690, offset: 5056)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !674, file: !60, line: 538, baseType: !660, size: 128, offset: 5056)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !674, file: !60, line: 540, baseType: !4165, size: 64, offset: 5184)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4167, line: 54, size: 960, elements: !4168)
!4167 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4168 = !{!4169, !4170, !4171, !4172, !4173, !4174, !4175, !4179, !4183, !4184, !4185, !4186, !4190, !4194, !4195}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4166, file: !4167, line: 55, baseType: !667, size: 64)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4166, file: !4167, line: 56, baseType: !316, size: 64, offset: 64)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4166, file: !4167, line: 58, baseType: !779, size: 64, offset: 128)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4166, file: !4167, line: 59, baseType: !779, size: 64, offset: 192)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4166, file: !4167, line: 60, baseType: !683, size: 64, offset: 256)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4166, file: !4167, line: 62, baseType: !3678, size: 64, offset: 320)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4166, file: !4167, line: 63, baseType: !4176, size: 64, offset: 384)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!642, !673, !3685}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4166, file: !4167, line: 65, baseType: !4180, size: 64, offset: 448)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{null, !4165}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4166, file: !4167, line: 66, baseType: !3687, size: 64, offset: 512)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4166, file: !4167, line: 68, baseType: !3696, size: 64, offset: 576)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4166, file: !4167, line: 70, baseType: !3486, size: 64, offset: 640)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4166, file: !4167, line: 71, baseType: !4187, size: 64, offset: 704)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{!2470, !673}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4166, file: !4167, line: 73, baseType: !4191, size: 64, offset: 768)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{null, !673, !3518, !3519}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4166, file: !4167, line: 75, baseType: !3691, size: 64, offset: 832)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4166, file: !4167, line: 77, baseType: !3805, size: 64, offset: 896)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !674, file: !60, line: 541, baseType: !779, size: 64, offset: 5248)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !674, file: !60, line: 543, baseType: !3687, size: 64, offset: 5312)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !674, file: !60, line: 544, baseType: !4199, size: 64, offset: 5376)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !60, line: 45, flags: DIFlagFwdDecl)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !674, file: !60, line: 545, baseType: !4202, size: 64, offset: 5440)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !60, line: 47, flags: DIFlagFwdDecl)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !674, file: !60, line: 547, baseType: !400, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !674, file: !60, line: 548, baseType: !400, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !674, file: !60, line: 549, baseType: !400, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !674, file: !60, line: 550, baseType: !400, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !656, file: !286, line: 111, baseType: !316, size: 64, offset: 576)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !656, file: !286, line: 113, baseType: !328, size: 32, offset: 640)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !656, file: !286, line: 114, baseType: !4211, size: 64, offset: 704)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !286, line: 157, size: 704, elements: !4213)
!4213 = !{!4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4228}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4212, file: !286, line: 158, baseType: !660, size: 128)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4212, file: !286, line: 159, baseType: !3144, size: 64, offset: 128)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4212, file: !286, line: 160, baseType: !655, size: 64, offset: 192)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4212, file: !286, line: 161, baseType: !285, size: 32, offset: 256)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4212, file: !286, line: 162, baseType: !328, size: 32, offset: 288)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4212, file: !286, line: 163, baseType: !366, size: 32, offset: 320)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !4212, file: !286, line: 167, baseType: !328, size: 32, offset: 352)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !4212, file: !286, line: 168, baseType: !328, size: 32, offset: 384)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4212, file: !286, line: 169, baseType: !328, size: 32, offset: 416)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4212, file: !286, line: 171, baseType: !1825, size: 128, offset: 448)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !4212, file: !286, line: 173, baseType: !4225, size: 64, offset: 576)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!328, !803, !7, !321}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4212, file: !286, line: 187, baseType: !321, size: 64, offset: 640)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !656, file: !286, line: 115, baseType: !1524, size: 192, offset: 768)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "demodulator_priv", scope: !338, file: !153, line: 690, baseType: !321, size: 64, offset: 6144)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_priv", scope: !338, file: !153, line: 691, baseType: !321, size: 64, offset: 6208)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "frontend_priv", scope: !338, file: !153, line: 692, baseType: !321, size: 64, offset: 6272)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "sec_priv", scope: !338, file: !153, line: 693, baseType: !321, size: 64, offset: 6336)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "analog_demod_priv", scope: !338, file: !153, line: 694, baseType: !321, size: 64, offset: 6400)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "dtv_property_cache", scope: !338, file: !153, line: 695, baseType: !424, size: 3648, offset: 6464)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !338, file: !153, line: 698, baseType: !4237, size: 64, offset: 10112)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!328, !321, !328, !328, !328}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !338, file: !153, line: 699, baseType: !328, size: 32, offset: 10176)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !338, file: !153, line: 700, baseType: !7, size: 32, offset: 10208)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_i2c", scope: !333, file: !334, line: 30, baseType: !4243, size: 64, offset: 64)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !95, line: 695, size: 7552, elements: !4245)
!4245 = !{!4246, !4247, !4248, !4285, !4286, !4300, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4317, !4318, !4319, !4320, !4352, !4363}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4244, file: !95, line: 696, baseType: !316, size: 64)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4244, file: !95, line: 697, baseType: !7, size: 32, offset: 64)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !4244, file: !95, line: 698, baseType: !4249, size: 64, offset: 128)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4251)
!4251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !95, line: 519, size: 320, elements: !4252)
!4252 = !{!4253, !4266, !4267, !4280, !4281}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !4251, file: !95, line: 529, baseType: !4254, size: 64)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{!328, !4243, !4257, !328}
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !4259, line: 69, size: 128, elements: !4260)
!4259 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4260 = !{!4261, !4262, !4263, !4264}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4258, file: !4259, line: 70, baseType: !519, size: 16)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4258, file: !4259, line: 71, baseType: !519, size: 16, offset: 16)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4258, file: !4259, line: 84, baseType: !519, size: 16, offset: 32)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4258, file: !4259, line: 85, baseType: !4265, size: 64, offset: 64)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !4251, file: !95, line: 531, baseType: !4254, size: 64, offset: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !4251, file: !95, line: 533, baseType: !4268, size: 64, offset: 128)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!328, !4243, !518, !520, !362, !323, !328, !4271}
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !4259, line: 135, size: 272, elements: !4273)
!4273 = !{!4274, !4275, !4276}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !4272, file: !4259, line: 136, baseType: !325, size: 8)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !4272, file: !4259, line: 137, baseType: !519, size: 16)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4272, file: !4259, line: 138, baseType: !4277, size: 272)
!4277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 272, elements: !4278)
!4278 = !{!4279}
!4279 = !DISubrange(count: 34)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !4251, file: !95, line: 536, baseType: !4268, size: 64, offset: 192)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !4251, file: !95, line: 541, baseType: !4282, size: 64, offset: 256)
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!366, !4243}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !4244, file: !95, line: 699, baseType: !321, size: 64, offset: 192)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !4244, file: !95, line: 702, baseType: !4287, size: 64, offset: 256)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4289)
!4289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !95, line: 557, size: 192, elements: !4290)
!4290 = !{!4291, !4295, !4299}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !4289, file: !95, line: 558, baseType: !4292, size: 64)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{null, !4243, !7}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !4289, file: !95, line: 559, baseType: !4296, size: 64, offset: 64)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!328, !4243, !7}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !4289, file: !95, line: 560, baseType: !4292, size: 64, offset: 128)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !4244, file: !95, line: 703, baseType: !4301, size: 192, offset: 320)
!4301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !4302, line: 30, size: 192, elements: !4303)
!4302 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!4303 = !{!4304, !4305, !4306}
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4301, file: !4302, line: 31, baseType: !1215)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4301, file: !4302, line: 32, baseType: !1187, size: 128)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4301, file: !4302, line: 33, baseType: !1567, size: 64, offset: 128)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !4244, file: !95, line: 704, baseType: !4301, size: 192, offset: 512)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4244, file: !95, line: 706, baseType: !328, size: 32, offset: 704)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !4244, file: !95, line: 707, baseType: !328, size: 32, offset: 736)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4244, file: !95, line: 708, baseType: !674, size: 5568, offset: 768)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !4244, file: !95, line: 709, baseType: !568, size: 64, offset: 6336)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4244, file: !95, line: 713, baseType: !328, size: 32, offset: 6400)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4244, file: !95, line: 714, baseType: !4314, size: 384, offset: 6432)
!4314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 384, elements: !4315)
!4315 = !{!4316}
!4316 = !DISubrange(count: 48)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !4244, file: !95, line: 715, baseType: !1846, size: 192, offset: 6848)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !4244, file: !95, line: 717, baseType: !1524, size: 192, offset: 7040)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !4244, file: !95, line: 718, baseType: !660, size: 128, offset: 7232)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !4244, file: !95, line: 720, baseType: !4321, size: 64, offset: 7360)
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !95, line: 618, size: 832, elements: !4323)
!4323 = !{!4324, !4328, !4329, !4333, !4334, !4335, !4336, !4340, !4341, !4344, !4345, !4348, !4351}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4322, file: !95, line: 619, baseType: !4325, size: 64)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!328, !4243}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4322, file: !95, line: 621, baseType: !4325, size: 64, offset: 64)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4322, file: !95, line: 622, baseType: !4330, size: 64, offset: 128)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{null, !4243, !328}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4322, file: !95, line: 623, baseType: !4325, size: 64, offset: 192)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4322, file: !95, line: 624, baseType: !4330, size: 64, offset: 256)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4322, file: !95, line: 625, baseType: !4325, size: 64, offset: 320)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4322, file: !95, line: 627, baseType: !4337, size: 64, offset: 384)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = !DISubroutineType(types: !4339)
!4339 = !{null, !4243}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4322, file: !95, line: 628, baseType: !4337, size: 64, offset: 448)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4322, file: !95, line: 631, baseType: !4342, size: 64, offset: 512)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !95, line: 631, flags: DIFlagFwdDecl)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4322, file: !95, line: 632, baseType: !4342, size: 64, offset: 576)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4322, file: !95, line: 633, baseType: !4346, size: 64, offset: 640)
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !95, line: 633, flags: DIFlagFwdDecl)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4322, file: !95, line: 634, baseType: !4349, size: 64, offset: 704)
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !95, line: 634, flags: DIFlagFwdDecl)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4322, file: !95, line: 635, baseType: !4349, size: 64, offset: 768)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4244, file: !95, line: 721, baseType: !4353, size: 64, offset: 7424)
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4354, size: 64)
!4354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4355)
!4355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !95, line: 664, size: 192, elements: !4356)
!4356 = !{!4357, !4358, !4359, !4360, !4361, !4362}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4355, file: !95, line: 665, baseType: !609, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4355, file: !95, line: 666, baseType: !328, size: 32, offset: 64)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4355, file: !95, line: 667, baseType: !518, size: 16, offset: 96)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4355, file: !95, line: 668, baseType: !518, size: 16, offset: 112)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4355, file: !95, line: 669, baseType: !518, size: 16, offset: 128)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4355, file: !95, line: 670, baseType: !518, size: 16, offset: 144)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !4244, file: !95, line: 723, baseType: !3941, size: 64, offset: 7488)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "split_tuner_read_i2c", scope: !333, file: !334, line: 33, baseType: !400, size: 8, offset: 128)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "fe", scope: !330, file: !3, line: 33, baseType: !338, size: 10240, offset: 192)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_client", scope: !330, file: !3, line: 34, baseType: !4367, size: 64, offset: 10432)
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_client", file: !95, line: 314, size: 6016, elements: !4369)
!4369 = !{!4370, !4371, !4372, !4374, !4375, !4376, !4377, !4378}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4368, file: !95, line: 315, baseType: !520, size: 16)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4368, file: !95, line: 325, baseType: !520, size: 16, offset: 16)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4368, file: !95, line: 328, baseType: !4373, size: 160, offset: 32)
!4373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 160, elements: !2544)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4368, file: !95, line: 329, baseType: !4243, size: 64, offset: 192)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4368, file: !95, line: 330, baseType: !674, size: 5568, offset: 256)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "init_irq", scope: !4368, file: !95, line: 331, baseType: !328, size: 32, offset: 5824)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4368, file: !95, line: 332, baseType: !328, size: 32, offset: 5856)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "detected", scope: !4368, file: !95, line: 333, baseType: !660, size: 128, offset: 5888)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_i2c", scope: !330, file: !3, line: 35, baseType: !4244, size: 7552, offset: 10496)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !330, file: !3, line: 37, baseType: !400, size: 8, offset: 18048)
!4381 = !{!0, !4382, !4387, !4392, !4397, !4402, !4405, !4500, !4503, !4510, !4512, !4514, !4516, !4518, !4520, !4524, !4526, !4530, !4532, !4536, !4538}
!4382 = !DIGlobalVariableExpression(var: !4383, expr: !DIExpression())
!4383 = distinct !DIGlobalVariable(name: "__exitcall_tc90522_driver_exit", scope: !2, file: !3, line: 849, type: !4384, isLocal: true, isDefinition: true)
!4384 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4385, line: 117, baseType: !4386)
!4385 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!4387 = !DIGlobalVariableExpression(var: !4388, expr: !DIExpression())
!4388 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description222", scope: !2, file: !3, line: 851, type: !4389, isLocal: true, isDefinition: true, align: 8)
!4389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 360, elements: !4390)
!4390 = !{!4391}
!4391 = !DISubrange(count: 45)
!4392 = !DIGlobalVariableExpression(var: !4393, expr: !DIExpression())
!4393 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author223", scope: !2, file: !3, line: 852, type: !4394, isLocal: true, isDefinition: true, align: 8)
!4394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 248, elements: !4395)
!4395 = !{!4396}
!4396 = !DISubrange(count: 31)
!4397 = !DIGlobalVariableExpression(var: !4398, expr: !DIExpression())
!4398 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file224", scope: !2, file: !3, line: 853, type: !4399, isLocal: true, isDefinition: true, align: 8)
!4399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 392, elements: !4400)
!4400 = !{!4401}
!4401 = !DISubrange(count: 49)
!4402 = !DIGlobalVariableExpression(var: !4403, expr: !DIExpression())
!4403 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license225", scope: !2, file: !3, line: 853, type: !4404, isLocal: true, isDefinition: true, align: 8)
!4404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 160, elements: !2544)
!4405 = !DIGlobalVariableExpression(var: !4406, expr: !DIExpression())
!4406 = distinct !DIGlobalVariable(name: "tc90522_driver", scope: !2, file: !3, line: 840, type: !4407, isLocal: true, isDefinition: true)
!4407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_driver", file: !95, line: 255, size: 1920, elements: !4408)
!4408 = !{!4409, !4410, !4420, !4424, !4425, !4429, !4433, !4437, !4438, !4439, !4496, !4499}
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4407, file: !95, line: 256, baseType: !7, size: 32)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4407, file: !95, line: 259, baseType: !4411, size: 64, offset: 64)
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = !DISubroutineType(types: !4413)
!4413 = !{!328, !4367, !4414}
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4416)
!4416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_device_id", file: !3749, line: 457, size: 256, elements: !4417)
!4417 = !{!4418, !4419}
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4416, file: !3749, line: 458, baseType: !4373, size: 160)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4416, file: !3749, line: 459, baseType: !3765, size: 64, offset: 192)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4407, file: !95, line: 260, baseType: !4421, size: 64, offset: 128)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DISubroutineType(types: !4423)
!4423 = !{!328, !4367}
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "probe_new", scope: !4407, file: !95, line: 265, baseType: !4421, size: 64, offset: 192)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4407, file: !95, line: 268, baseType: !4426, size: 64, offset: 256)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = !DISubroutineType(types: !4428)
!4428 = !{null, !4367}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "alert", scope: !4407, file: !95, line: 277, baseType: !4430, size: 64, offset: 320)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{null, !4367, !94, !7}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !4407, file: !95, line: 283, baseType: !4434, size: 64, offset: 384)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{!328, !4367, !7, !321}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4407, file: !95, line: 285, baseType: !3737, size: 1152, offset: 448)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4407, file: !95, line: 286, baseType: !4414, size: 64, offset: 1600)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !4407, file: !95, line: 289, baseType: !4440, size: 64, offset: 1664)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{!328, !4367, !4443}
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_board_info", file: !95, line: 410, size: 640, elements: !4445)
!4445 = !{!4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4478, !4494, !4495}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4444, file: !95, line: 411, baseType: !4373, size: 160)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4444, file: !95, line: 412, baseType: !520, size: 16, offset: 160)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4444, file: !95, line: 413, baseType: !520, size: 16, offset: 176)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4444, file: !95, line: 414, baseType: !667, size: 64, offset: 192)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4444, file: !95, line: 415, baseType: !321, size: 64, offset: 256)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4444, file: !95, line: 416, baseType: !3955, size: 64, offset: 320)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4444, file: !95, line: 417, baseType: !3968, size: 64, offset: 384)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4444, file: !95, line: 418, baseType: !4454, size: 64, offset: 448)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4456)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property_entry", file: !100, line: 263, size: 256, elements: !4457)
!4457 = !{!4458, !4459, !4460, !4461, !4462}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4456, file: !100, line: 264, baseType: !667, size: 64)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4456, file: !100, line: 265, baseType: !773, size: 64, offset: 64)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "is_inline", scope: !4456, file: !100, line: 266, baseType: !400, size: 8, offset: 128)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4456, file: !100, line: 267, baseType: !99, size: 32, offset: 160)
!4462 = !DIDerivedType(tag: DW_TAG_member, scope: !4456, file: !100, line: 268, baseType: !4463, size: 64, offset: 192)
!4463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4456, file: !100, line: 268, size: 64, elements: !4464)
!4464 = !{!4465, !4466}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4463, file: !100, line: 269, baseType: !2470, size: 64)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4463, file: !100, line: 276, baseType: !4467, size: 64)
!4467 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4463, file: !100, line: 270, size: 64, elements: !4468)
!4468 = !{!4469, !4470, !4472, !4474, !4476}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "u8_data", scope: !4467, file: !100, line: 271, baseType: !376, size: 64)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "u16_data", scope: !4467, file: !100, line: 272, baseType: !4471, size: 64)
!4471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !518, size: 64, elements: !495)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "u32_data", scope: !4467, file: !100, line: 273, baseType: !4473, size: 64)
!4473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 64, elements: !1913)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "u64_data", scope: !4467, file: !100, line: 274, baseType: !4475, size: 64)
!4475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, size: 64, elements: !1713)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4467, file: !100, line: 275, baseType: !4477, size: 64)
!4477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !667, size: 64, elements: !1713)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4444, file: !95, line: 419, baseType: !4479, size: 64, offset: 512)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4481)
!4481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4482, line: 20, size: 512, elements: !4483)
!4482 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4483 = !{!4484, !4486, !4487, !4488, !4489, !4490, !4492, !4493}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4481, file: !4482, line: 21, baseType: !4485, size: 64)
!4485 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !320, line: 158, baseType: !2468)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4481, file: !4482, line: 22, baseType: !4485, size: 64, offset: 64)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4481, file: !4482, line: 23, baseType: !667, size: 64, offset: 128)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4481, file: !4482, line: 24, baseType: !568, size: 64, offset: 192)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4481, file: !4482, line: 25, baseType: !568, size: 64, offset: 256)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4481, file: !4482, line: 26, baseType: !4491, size: 64, offset: 320)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4481, file: !4482, line: 26, baseType: !4491, size: 64, offset: 384)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4481, file: !4482, line: 26, baseType: !4491, size: 64, offset: 448)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !4444, file: !95, line: 420, baseType: !7, size: 32, offset: 576)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4444, file: !95, line: 421, baseType: !328, size: 32, offset: 608)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "address_list", scope: !4407, file: !95, line: 290, baseType: !4497, size: 64, offset: 1728)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !520)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "clients", scope: !4407, file: !95, line: 291, baseType: !660, size: 128, offset: 1792)
!4500 = !DIGlobalVariableExpression(var: !4501, expr: !DIExpression())
!4501 = distinct !DIGlobalVariable(name: "tc90522_ops_sat", scope: !2, file: !3, line: 736, type: !4502, isLocal: true, isDefinition: true)
!4502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!4503 = !DIGlobalVariableExpression(var: !4504, expr: !DIExpression())
!4504 = distinct !DIGlobalVariable(name: "wakeup_sat", scope: !2, file: !3, line: 589, type: !4505, isLocal: true, isDefinition: true)
!4505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4506)
!4506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_val", file: !3, line: 40, size: 16, elements: !4507)
!4507 = !{!4508, !4509}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !4506, file: !3, line: 41, baseType: !323, size: 8)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4506, file: !3, line: 42, baseType: !323, size: 8, offset: 8)
!4510 = !DIGlobalVariableExpression(var: !4511, expr: !DIExpression())
!4511 = distinct !DIGlobalVariable(name: "wakeup_ter", scope: !2, file: !3, line: 590, type: !4505, isLocal: true, isDefinition: true)
!4512 = !DIGlobalVariableExpression(var: !4513, expr: !DIExpression())
!4513 = distinct !DIGlobalVariable(name: "sleep_sat", scope: !2, file: !3, line: 562, type: !4505, isLocal: true, isDefinition: true)
!4514 = !DIGlobalVariableExpression(var: !4515, expr: !DIExpression())
!4515 = distinct !DIGlobalVariable(name: "sleep_ter", scope: !2, file: !3, line: 563, type: !4505, isLocal: true, isDefinition: true)
!4516 = !DIGlobalVariableExpression(var: !4517, expr: !DIExpression())
!4517 = distinct !DIGlobalVariable(name: "reset_sat", scope: !2, file: !3, line: 474, type: !4505, isLocal: true, isDefinition: true)
!4518 = !DIGlobalVariableExpression(var: !4519, expr: !DIExpression())
!4519 = distinct !DIGlobalVariable(name: "reset_ter", scope: !2, file: !3, line: 475, type: !4505, isLocal: true, isDefinition: true)
!4520 = !DIGlobalVariableExpression(var: !4521, expr: !DIExpression())
!4521 = distinct !DIGlobalVariable(name: "fec_conv_sat", scope: !2, file: !3, line: 188, type: !4522, isLocal: true, isDefinition: true)
!4522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4523, size: 256, elements: !377)
!4523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!4524 = !DIGlobalVariableExpression(var: !4525, expr: !DIExpression())
!4525 = distinct !DIGlobalVariable(name: "tc90522_ops_ter", scope: !2, file: !3, line: 756, type: !4502, isLocal: true, isDefinition: true)
!4526 = !DIGlobalVariableExpression(var: !4527, expr: !DIExpression())
!4527 = distinct !DIGlobalVariable(name: "tm_conv", scope: !2, file: !3, line: 315, type: !4528, isLocal: true, isDefinition: true)
!4528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4529, size: 128, elements: !495)
!4529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!4530 = !DIGlobalVariableExpression(var: !4531, expr: !DIExpression())
!4531 = distinct !DIGlobalVariable(name: "fec_conv_ter", scope: !2, file: !3, line: 322, type: !4522, isLocal: true, isDefinition: true)
!4532 = !DIGlobalVariableExpression(var: !4533, expr: !DIExpression())
!4533 = distinct !DIGlobalVariable(name: "mod_conv", scope: !2, file: !3, line: 326, type: !4534, isLocal: true, isDefinition: true)
!4534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4535, size: 256, elements: !377)
!4535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!4536 = !DIGlobalVariableExpression(var: !4537, expr: !DIExpression())
!4537 = distinct !DIGlobalVariable(name: "tc90522_tuner_i2c_algo", scope: !2, file: !3, line: 726, type: !4250, isLocal: true, isDefinition: true)
!4538 = !DIGlobalVariableExpression(var: !4539, expr: !DIExpression())
!4539 = distinct !DIGlobalVariable(name: "tc90522_id", scope: !2, file: !3, line: 833, type: !4540, isLocal: true, isDefinition: true)
!4540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4415, size: 768, elements: !457)
!4541 = !{i32 7, !"Dwarf Version", i32 4}
!4542 = !{i32 2, !"Debug Info Version", i32 3}
!4543 = !{i32 1, !"wchar_size", i32 2}
!4544 = !{i32 1, !"Code Model", i32 2}
!4545 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4546 = distinct !DISubprogram(name: "tc90522_driver_init", scope: !3, file: !3, line: 849, type: !4547, scopeLine: 849, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!4547 = !DISubroutineType(types: !4548)
!4548 = !{!328}
!4549 = !DILocation(line: 849, column: 1, scope: !4546)
!4550 = distinct !DISubprogram(name: "tc90522_driver_exit", scope: !3, file: !3, line: 849, type: !2221, scopeLine: 849, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!4551 = !DILocation(line: 849, column: 1, scope: !4550)
!4552 = distinct !DISubprogram(name: "tc90522_probe", scope: !3, file: !3, line: 782, type: !4412, scopeLine: 784, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!4553 = !DILocalVariable(name: "client", arg: 1, scope: !4552, file: !3, line: 782, type: !4367)
!4554 = !DILocation(line: 782, column: 45, scope: !4552)
!4555 = !DILocalVariable(name: "id", arg: 2, scope: !4552, file: !3, line: 783, type: !4414)
!4556 = !DILocation(line: 783, column: 33, scope: !4552)
!4557 = !DILocalVariable(name: "state", scope: !4552, file: !3, line: 785, type: !329)
!4558 = !DILocation(line: 785, column: 24, scope: !4552)
!4559 = !DILocalVariable(name: "cfg", scope: !4552, file: !3, line: 786, type: !4560)
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!4561 = !DILocation(line: 786, column: 25, scope: !4552)
!4562 = !DILocalVariable(name: "ops", scope: !4552, file: !3, line: 787, type: !4563)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4564 = !DILocation(line: 787, column: 33, scope: !4552)
!4565 = !DILocalVariable(name: "adap", scope: !4552, file: !3, line: 788, type: !4243)
!4566 = !DILocation(line: 788, column: 22, scope: !4552)
!4567 = !DILocalVariable(name: "ret", scope: !4552, file: !3, line: 789, type: !328)
!4568 = !DILocation(line: 789, column: 6, scope: !4552)
!4569 = !DILocation(line: 791, column: 10, scope: !4552)
!4570 = !DILocation(line: 791, column: 8, scope: !4552)
!4571 = !DILocation(line: 792, column: 7, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4552, file: !3, line: 792, column: 6)
!4573 = !DILocation(line: 792, column: 6, scope: !4552)
!4574 = !DILocation(line: 793, column: 3, scope: !4572)
!4575 = !DILocation(line: 794, column: 22, scope: !4552)
!4576 = !DILocation(line: 794, column: 2, scope: !4552)
!4577 = !DILocation(line: 794, column: 9, scope: !4552)
!4578 = !DILocation(line: 794, column: 20, scope: !4552)
!4579 = !DILocation(line: 796, column: 8, scope: !4552)
!4580 = !DILocation(line: 796, column: 16, scope: !4552)
!4581 = !DILocation(line: 796, column: 20, scope: !4552)
!4582 = !DILocation(line: 796, column: 6, scope: !4552)
!4583 = !DILocation(line: 797, column: 10, scope: !4552)
!4584 = !DILocation(line: 797, column: 17, scope: !4552)
!4585 = !DILocation(line: 797, column: 2, scope: !4552)
!4586 = !DILocation(line: 797, column: 22, scope: !4552)
!4587 = !DILocation(line: 798, column: 29, scope: !4552)
!4588 = !DILocation(line: 798, column: 36, scope: !4552)
!4589 = !DILocation(line: 798, column: 12, scope: !4552)
!4590 = !DILocation(line: 798, column: 19, scope: !4552)
!4591 = !DILocation(line: 798, column: 23, scope: !4552)
!4592 = !DILocation(line: 798, column: 26, scope: !4552)
!4593 = !DILocation(line: 798, column: 2, scope: !4552)
!4594 = !DILocation(line: 798, column: 7, scope: !4552)
!4595 = !DILocation(line: 798, column: 10, scope: !4552)
!4596 = !DILocation(line: 799, column: 9, scope: !4552)
!4597 = !DILocation(line: 799, column: 13, scope: !4552)
!4598 = !DILocation(line: 799, column: 25, scope: !4552)
!4599 = !DILocation(line: 799, column: 6, scope: !4552)
!4600 = !DILocation(line: 800, column: 10, scope: !4552)
!4601 = !DILocation(line: 800, column: 17, scope: !4552)
!4602 = !DILocation(line: 800, column: 20, scope: !4552)
!4603 = !DILocation(line: 800, column: 2, scope: !4552)
!4604 = !DILocation(line: 800, column: 25, scope: !4552)
!4605 = !DILocation(line: 801, column: 31, scope: !4552)
!4606 = !DILocation(line: 801, column: 2, scope: !4552)
!4607 = !DILocation(line: 801, column: 9, scope: !4552)
!4608 = !DILocation(line: 801, column: 12, scope: !4552)
!4609 = !DILocation(line: 801, column: 29, scope: !4552)
!4610 = !DILocation(line: 803, column: 10, scope: !4552)
!4611 = !DILocation(line: 803, column: 17, scope: !4552)
!4612 = !DILocation(line: 803, column: 7, scope: !4552)
!4613 = !DILocation(line: 804, column: 2, scope: !4552)
!4614 = !DILocation(line: 804, column: 8, scope: !4552)
!4615 = !DILocation(line: 804, column: 14, scope: !4552)
!4616 = !DILocation(line: 805, column: 2, scope: !4552)
!4617 = !DILocation(line: 805, column: 8, scope: !4552)
!4618 = !DILocation(line: 805, column: 13, scope: !4552)
!4619 = !DILocation(line: 806, column: 22, scope: !4552)
!4620 = !DILocation(line: 806, column: 30, scope: !4552)
!4621 = !DILocation(line: 806, column: 2, scope: !4552)
!4622 = !DILocation(line: 806, column: 8, scope: !4552)
!4623 = !DILocation(line: 806, column: 12, scope: !4552)
!4624 = !DILocation(line: 806, column: 19, scope: !4552)
!4625 = !DILocation(line: 807, column: 10, scope: !4552)
!4626 = !DILocation(line: 807, column: 16, scope: !4552)
!4627 = !DILocation(line: 807, column: 2, scope: !4552)
!4628 = !DILocation(line: 808, column: 19, scope: !4552)
!4629 = !DILocation(line: 808, column: 25, scope: !4552)
!4630 = !DILocation(line: 808, column: 2, scope: !4552)
!4631 = !DILocation(line: 809, column: 24, scope: !4552)
!4632 = !DILocation(line: 809, column: 8, scope: !4552)
!4633 = !DILocation(line: 809, column: 6, scope: !4552)
!4634 = !DILocation(line: 810, column: 6, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4552, file: !3, line: 810, column: 6)
!4636 = !DILocation(line: 810, column: 10, scope: !4635)
!4637 = !DILocation(line: 810, column: 6, scope: !4552)
!4638 = !DILocation(line: 811, column: 3, scope: !4635)
!4639 = !DILocation(line: 812, column: 42, scope: !4552)
!4640 = !DILocation(line: 812, column: 19, scope: !4552)
!4641 = !DILocation(line: 812, column: 26, scope: !4552)
!4642 = !DILocation(line: 812, column: 30, scope: !4552)
!4643 = !DILocation(line: 812, column: 40, scope: !4552)
!4644 = !DILocation(line: 812, column: 2, scope: !4552)
!4645 = !DILocation(line: 812, column: 7, scope: !4552)
!4646 = !DILocation(line: 812, column: 17, scope: !4552)
!4647 = !DILocation(line: 814, column: 21, scope: !4552)
!4648 = !DILocation(line: 814, column: 30, scope: !4552)
!4649 = !DILocation(line: 814, column: 37, scope: !4552)
!4650 = !DILocation(line: 814, column: 29, scope: !4552)
!4651 = !DILocation(line: 814, column: 2, scope: !4552)
!4652 = !DILocation(line: 815, column: 2, scope: !4552)
!4653 = !DILocation(line: 816, column: 2, scope: !4552)
!4654 = !DILabel(scope: !4552, name: "free_state", file: !3, line: 817)
!4655 = !DILocation(line: 817, column: 1, scope: !4552)
!4656 = !DILocation(line: 818, column: 8, scope: !4552)
!4657 = !DILocation(line: 818, column: 2, scope: !4552)
!4658 = !DILocation(line: 819, column: 9, scope: !4552)
!4659 = !DILocation(line: 819, column: 2, scope: !4552)
!4660 = !DILocation(line: 820, column: 1, scope: !4552)
!4661 = distinct !DISubprogram(name: "tc90522_remove", scope: !3, file: !3, line: 822, type: !4422, scopeLine: 823, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!4662 = !DILocalVariable(name: "client", arg: 1, scope: !4661, file: !3, line: 822, type: !4367)
!4663 = !DILocation(line: 822, column: 46, scope: !4661)
!4664 = !DILocalVariable(name: "state", scope: !4661, file: !3, line: 824, type: !329)
!4665 = !DILocation(line: 824, column: 24, scope: !4661)
!4666 = !DILocation(line: 826, column: 42, scope: !4661)
!4667 = !DILocation(line: 826, column: 23, scope: !4661)
!4668 = !DILocation(line: 826, column: 10, scope: !4661)
!4669 = !DILocation(line: 826, column: 8, scope: !4661)
!4670 = !DILocation(line: 827, column: 19, scope: !4661)
!4671 = !DILocation(line: 827, column: 26, scope: !4661)
!4672 = !DILocation(line: 827, column: 2, scope: !4661)
!4673 = !DILocation(line: 828, column: 8, scope: !4661)
!4674 = !DILocation(line: 828, column: 2, scope: !4661)
!4675 = !DILocation(line: 829, column: 2, scope: !4661)
!4676 = distinct !DISubprogram(name: "kzalloc", scope: !298, file: !298, line: 662, type: !4677, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!4677 = !DISubroutineType(types: !4678)
!4678 = !{!321, !773, !319}
!4679 = !DILocalVariable(name: "s", arg: 1, scope: !4680, file: !298, line: 445, type: !1368)
!4680 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !298, file: !298, line: 445, type: !4681, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!4681 = !DISubroutineType(types: !4682)
!4682 = !{!321, !1368, !319, !773}
!4683 = !DILocation(line: 445, column: 72, scope: !4680, inlinedAt: !4684)
!4684 = distinct !DILocation(line: 552, column: 10, scope: !4685, inlinedAt: !4688)
!4685 = distinct !DILexicalBlock(scope: !4686, file: !298, line: 540, column: 34)
!4686 = distinct !DILexicalBlock(scope: !4687, file: !298, line: 540, column: 6)
!4687 = distinct !DISubprogram(name: "kmalloc", scope: !298, file: !298, line: 538, type: !4677, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!4688 = distinct !DILocation(line: 664, column: 9, scope: !4676)
!4689 = !DILocalVariable(name: "flags", arg: 2, scope: !4680, file: !298, line: 446, type: !319)
!4690 = !DILocation(line: 446, column: 9, scope: !4680, inlinedAt: !4684)
!4691 = !DILocalVariable(name: "size", arg: 3, scope: !4680, file: !298, line: 446, type: !773)
!4692 = !DILocation(line: 446, column: 23, scope: !4680, inlinedAt: !4684)
!4693 = !DILocalVariable(name: "ret", scope: !4680, file: !298, line: 448, type: !321)
!4694 = !DILocation(line: 448, column: 8, scope: !4680, inlinedAt: !4684)
!4695 = !DILocalVariable(name: "flags", arg: 1, scope: !4696, file: !298, line: 318, type: !319)
!4696 = distinct !DISubprogram(name: "kmalloc_type", scope: !298, file: !298, line: 318, type: !4697, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!297, !319}
!4699 = !DILocation(line: 318, column: 67, scope: !4696, inlinedAt: !4700)
!4700 = distinct !DILocation(line: 553, column: 20, scope: !4685, inlinedAt: !4688)
!4701 = !DILocalVariable(name: "size", arg: 1, scope: !4702, file: !298, line: 346, type: !773)
!4702 = distinct !DISubprogram(name: "kmalloc_index", scope: !298, file: !298, line: 346, type: !4703, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!4703 = !DISubroutineType(types: !4704)
!4704 = !{!7, !773}
!4705 = !DILocation(line: 346, column: 58, scope: !4702, inlinedAt: !4706)
!4706 = distinct !DILocation(line: 547, column: 11, scope: !4685, inlinedAt: !4688)
!4707 = !DILocalVariable(name: "size", arg: 1, scope: !4708, file: !298, line: 472, type: !773)
!4708 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !298, file: !298, line: 472, type: !4709, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!321, !773, !319, !7}
!4711 = !DILocation(line: 472, column: 28, scope: !4708, inlinedAt: !4712)
!4712 = distinct !DILocation(line: 481, column: 9, scope: !4713, inlinedAt: !4714)
!4713 = distinct !DISubprogram(name: "kmalloc_large", scope: !298, file: !298, line: 478, type: !4677, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!4714 = distinct !DILocation(line: 545, column: 11, scope: !4715, inlinedAt: !4688)
!4715 = distinct !DILexicalBlock(scope: !4685, file: !298, line: 544, column: 7)
!4716 = !DILocalVariable(name: "flags", arg: 2, scope: !4708, file: !298, line: 472, type: !319)
!4717 = !DILocation(line: 472, column: 40, scope: !4708, inlinedAt: !4712)
!4718 = !DILocalVariable(name: "order", arg: 3, scope: !4708, file: !298, line: 472, type: !7)
!4719 = !DILocation(line: 472, column: 60, scope: !4708, inlinedAt: !4712)
!4720 = !DILocalVariable(name: "size", arg: 1, scope: !4713, file: !298, line: 478, type: !773)
!4721 = !DILocation(line: 478, column: 51, scope: !4713, inlinedAt: !4714)
!4722 = !DILocalVariable(name: "flags", arg: 2, scope: !4713, file: !298, line: 478, type: !319)
!4723 = !DILocation(line: 478, column: 63, scope: !4713, inlinedAt: !4714)
!4724 = !DILocalVariable(name: "order", scope: !4713, file: !298, line: 480, type: !7)
!4725 = !DILocation(line: 480, column: 15, scope: !4713, inlinedAt: !4714)
!4726 = !DILocalVariable(name: "size", arg: 1, scope: !4687, file: !298, line: 538, type: !773)
!4727 = !DILocation(line: 538, column: 45, scope: !4687, inlinedAt: !4688)
!4728 = !DILocalVariable(name: "flags", arg: 2, scope: !4687, file: !298, line: 538, type: !319)
!4729 = !DILocation(line: 538, column: 57, scope: !4687, inlinedAt: !4688)
!4730 = !DILocalVariable(name: "index", scope: !4685, file: !298, line: 542, type: !7)
!4731 = !DILocation(line: 542, column: 16, scope: !4685, inlinedAt: !4688)
!4732 = !DILocalVariable(name: "size", arg: 1, scope: !4676, file: !298, line: 662, type: !773)
!4733 = !DILocation(line: 662, column: 36, scope: !4676)
!4734 = !DILocalVariable(name: "flags", arg: 2, scope: !4676, file: !298, line: 662, type: !319)
!4735 = !DILocation(line: 662, column: 48, scope: !4676)
!4736 = !DILocation(line: 664, column: 17, scope: !4676)
!4737 = !DILocation(line: 664, column: 23, scope: !4676)
!4738 = !DILocation(line: 664, column: 29, scope: !4676)
!4739 = !DILocation(line: 540, column: 27, scope: !4686, inlinedAt: !4688)
!4740 = !DILocation(line: 540, column: 6, scope: !4686, inlinedAt: !4688)
!4741 = !DILocation(line: 540, column: 6, scope: !4687, inlinedAt: !4688)
!4742 = !DILocation(line: 544, column: 7, scope: !4715, inlinedAt: !4688)
!4743 = !DILocation(line: 544, column: 12, scope: !4715, inlinedAt: !4688)
!4744 = !DILocation(line: 544, column: 7, scope: !4685, inlinedAt: !4688)
!4745 = !DILocation(line: 545, column: 25, scope: !4715, inlinedAt: !4688)
!4746 = !DILocation(line: 545, column: 31, scope: !4715, inlinedAt: !4688)
!4747 = !DILocation(line: 480, column: 33, scope: !4713, inlinedAt: !4714)
!4748 = !DILocation(line: 480, column: 23, scope: !4713, inlinedAt: !4714)
!4749 = !DILocation(line: 481, column: 29, scope: !4713, inlinedAt: !4714)
!4750 = !DILocation(line: 481, column: 35, scope: !4713, inlinedAt: !4714)
!4751 = !DILocation(line: 481, column: 42, scope: !4713, inlinedAt: !4714)
!4752 = !DILocation(line: 474, column: 23, scope: !4708, inlinedAt: !4712)
!4753 = !DILocation(line: 474, column: 29, scope: !4708, inlinedAt: !4712)
!4754 = !DILocation(line: 474, column: 36, scope: !4708, inlinedAt: !4712)
!4755 = !DILocation(line: 474, column: 9, scope: !4708, inlinedAt: !4712)
!4756 = !DILocation(line: 545, column: 4, scope: !4715, inlinedAt: !4688)
!4757 = !DILocation(line: 547, column: 25, scope: !4685, inlinedAt: !4688)
!4758 = !DILocation(line: 348, column: 7, scope: !4759, inlinedAt: !4706)
!4759 = distinct !DILexicalBlock(scope: !4702, file: !298, line: 348, column: 6)
!4760 = !DILocation(line: 348, column: 6, scope: !4702, inlinedAt: !4706)
!4761 = !DILocation(line: 349, column: 3, scope: !4759, inlinedAt: !4706)
!4762 = !DILocation(line: 351, column: 6, scope: !4763, inlinedAt: !4706)
!4763 = distinct !DILexicalBlock(scope: !4702, file: !298, line: 351, column: 6)
!4764 = !DILocation(line: 351, column: 11, scope: !4763, inlinedAt: !4706)
!4765 = !DILocation(line: 351, column: 6, scope: !4702, inlinedAt: !4706)
!4766 = !DILocation(line: 352, column: 3, scope: !4763, inlinedAt: !4706)
!4767 = !DILocation(line: 354, column: 32, scope: !4768, inlinedAt: !4706)
!4768 = distinct !DILexicalBlock(scope: !4702, file: !298, line: 354, column: 6)
!4769 = !DILocation(line: 354, column: 37, scope: !4768, inlinedAt: !4706)
!4770 = !DILocation(line: 354, column: 42, scope: !4768, inlinedAt: !4706)
!4771 = !DILocation(line: 354, column: 45, scope: !4768, inlinedAt: !4706)
!4772 = !DILocation(line: 354, column: 50, scope: !4768, inlinedAt: !4706)
!4773 = !DILocation(line: 354, column: 6, scope: !4702, inlinedAt: !4706)
!4774 = !DILocation(line: 355, column: 3, scope: !4768, inlinedAt: !4706)
!4775 = !DILocation(line: 356, column: 32, scope: !4776, inlinedAt: !4706)
!4776 = distinct !DILexicalBlock(scope: !4702, file: !298, line: 356, column: 6)
!4777 = !DILocation(line: 356, column: 37, scope: !4776, inlinedAt: !4706)
!4778 = !DILocation(line: 356, column: 43, scope: !4776, inlinedAt: !4706)
!4779 = !DILocation(line: 356, column: 46, scope: !4776, inlinedAt: !4706)
!4780 = !DILocation(line: 356, column: 51, scope: !4776, inlinedAt: !4706)
!4781 = !DILocation(line: 356, column: 6, scope: !4702, inlinedAt: !4706)
!4782 = !DILocation(line: 357, column: 3, scope: !4776, inlinedAt: !4706)
!4783 = !DILocation(line: 358, column: 6, scope: !4784, inlinedAt: !4706)
!4784 = distinct !DILexicalBlock(scope: !4702, file: !298, line: 358, column: 6)
!4785 = !DILocation(line: 358, column: 11, scope: !4784, inlinedAt: !4706)
!4786 = !DILocation(line: 358, column: 6, scope: !4702, inlinedAt: !4706)
!4787 = !DILocation(line: 358, column: 26, scope: !4784, inlinedAt: !4706)
!4788 = !DILocation(line: 359, column: 6, scope: !4789, inlinedAt: !4706)
!4789 = distinct !DILexicalBlock(scope: !4702, file: !298, line: 359, column: 6)
!4790 = !DILocation(line: 359, column: 11, scope: !4789, inlinedAt: !4706)
!4791 = !DILocation(line: 359, column: 6, scope: !4702, inlinedAt: !4706)
!4792 = !DILocation(line: 359, column: 26, scope: !4789, inlinedAt: !4706)
!4793 = !DILocation(line: 360, column: 6, scope: !4794, inlinedAt: !4706)
!4794 = distinct !DILexicalBlock(scope: !4702, file: !298, line: 360, column: 6)
!4795 = !DILocation(line: 360, column: 11, scope: !4794, inlinedAt: !4706)
!4796 = !DILocation(line: 360, column: 6, scope: !4702, inlinedAt: !4706)
!4797 = !DILocation(line: 360, column: 26, scope: !4794, inlinedAt: !4706)
!4798 = !DILocation(line: 361, column: 6, scope: !4799, inlinedAt: !4706)
!4799 = distinct !DILexicalBlock(scope: !4702, file: !298, line: 361, column: 6)
!4800 = !DILocation(line: 361, column: 11, scope: !4799, inlinedAt: !4706)
!4801 = !DILocation(line: 361, column: 6, scope: !4702, inlinedAt: !4706)
!4802 = !DILocation(line: 361, column: 26, scope: !4799, inlinedAt: !4706)
!4803 = !DILocation(line: 362, column: 6, scope: !4804, inlinedAt: !4706)
!4804 = distinct !DILexicalBlock(scope: !4702, file: !298, line: 362, column: 6)
!4805 = !DILocation(line: 362, column: 11, scope: !4804, inlinedAt: !4706)
!4806 = !DILocation(line: 362, column: 6, scope: !4702, inlinedAt: !4706)
!4807 = !DILocation(line: 362, column: 26, scope: !4804, inlinedAt: !4706)
!4808 = !DILocation(line: 363, column: 6, scope: !4809, inlinedAt: !4706)
!4809 = distinct !DILexicalBlock(scope: !4702, file: !298, line: 363, column: 6)
!4810 = !DILocation(line: 363, column: 11, scope: !4809, inlinedAt: !4706)
!4811 = !DILocation(line: 363, column: 6, scope: !4702, inlinedAt: !4706)
!4812 = !DILocation(line: 363, column: 26, scope: !4809, inlinedAt: !4706)
!4813 = !DILocation(line: 364, column: 6, scope: !4814, inlinedAt: !4706)
!4814 = distinct !DILexicalBlock(scope: !4702, file: !298, line: 364, column: 6)
!4815 = !DILocation(line: 364, column: 11, scope: !4814, inlinedAt: !4706)
!4816 = !DILocation(line: 364, column: 6, scope: !4702, inlinedAt: !4706)
!4817 = !DILocation(line: 364, column: 26, scope: !4814, inlinedAt: !4706)
!4818 = !DILocation(line: 365, column: 6, scope: !4819, inlinedAt: !4706)
!4819 = distinct !DILexicalBlock(scope: !4702, file: !298, line: 365, column: 6)
!4820 = !DILocation(line: 365, column: 11, scope: !4819, inlinedAt: !4706)
!4821 = !DILocation(line: 365, column: 6, scope: !4702, inlinedAt: !4706)
!4822 = !DILocation(line: 365, column: 26, scope: !4819, inlinedAt: !4706)
!4823 = !DILocation(line: 366, column: 6, scope: !4824, inlinedAt: !4706)
!4824 = distinct !DILexicalBlock(scope: !4702, file: !298, line: 366, column: 6)
!4825 = !DILocation(line: 366, column: 11, scope: !4824, inlinedAt: !4706)
!4826 = !DILocation(line: 366, column: 6, scope: !4702, inlinedAt: !4706)
!4827 = !DILocation(line: 366, column: 26, scope: !4824, inlinedAt: !4706)
!4828 = !DILocation(line: 367, column: 6, scope: !4829, inlinedAt: !4706)
!4829 = distinct !DILexicalBlock(scope: !4702, file: !298, line: 367, column: 6)
!4830 = !DILocation(line: 367, column: 11, scope: !4829, inlinedAt: !4706)
!4831 = !DILocation(line: 367, column: 6, scope: !4702, inlinedAt: !4706)
!4832 = !DILocation(line: 367, column: 26, scope: !4829, inlinedAt: !4706)
!4833 = !DILocation(line: 368, column: 6, scope: !4834, inlinedAt: !4706)
!4834 = distinct !DILexicalBlock(scope: !4702, file: !298, line: 368, column: 6)
!4835 = !DILocation(line: 368, column: 11, scope: !4834, inlinedAt: !4706)
!4836 = !DILocation(line: 368, column: 6, scope: !4702, inlinedAt: !4706)
!4837 = !DILocation(line: 368, column: 26, scope: !4834, inlinedAt: !4706)
!4838 = !DILocation(line: 369, column: 6, scope: !4839, inlinedAt: !4706)
!4839 = distinct !DILexicalBlock(scope: !4702, file: !298, line: 369, column: 6)
!4840 = !DILocation(line: 369, column: 11, scope: !4839, inlinedAt: !4706)
!4841 = !DILocation(line: 369, column: 6, scope: !4702, inlinedAt: !4706)
!4842 = !DILocation(line: 369, column: 26, scope: !4839, inlinedAt: !4706)
!4843 = !DILocation(line: 370, column: 6, scope: !4844, inlinedAt: !4706)
!4844 = distinct !DILexicalBlock(scope: !4702, file: !298, line: 370, column: 6)
!4845 = !DILocation(line: 370, column: 11, scope: !4844, inlinedAt: !4706)
!4846 = !DILocation(line: 370, column: 6, scope: !4702, inlinedAt: !4706)
!4847 = !DILocation(line: 370, column: 26, scope: !4844, inlinedAt: !4706)
!4848 = !DILocation(line: 371, column: 6, scope: !4849, inlinedAt: !4706)
!4849 = distinct !DILexicalBlock(scope: !4702, file: !298, line: 371, column: 6)
!4850 = !DILocation(line: 371, column: 11, scope: !4849, inlinedAt: !4706)
!4851 = !DILocation(line: 371, column: 6, scope: !4702, inlinedAt: !4706)
!4852 = !DILocation(line: 371, column: 26, scope: !4849, inlinedAt: !4706)
!4853 = !DILocation(line: 372, column: 6, scope: !4854, inlinedAt: !4706)
!4854 = distinct !DILexicalBlock(scope: !4702, file: !298, line: 372, column: 6)
!4855 = !DILocation(line: 372, column: 11, scope: !4854, inlinedAt: !4706)
!4856 = !DILocation(line: 372, column: 6, scope: !4702, inlinedAt: !4706)
!4857 = !DILocation(line: 372, column: 26, scope: !4854, inlinedAt: !4706)
!4858 = !DILocation(line: 373, column: 6, scope: !4859, inlinedAt: !4706)
!4859 = distinct !DILexicalBlock(scope: !4702, file: !298, line: 373, column: 6)
!4860 = !DILocation(line: 373, column: 11, scope: !4859, inlinedAt: !4706)
!4861 = !DILocation(line: 373, column: 6, scope: !4702, inlinedAt: !4706)
!4862 = !DILocation(line: 373, column: 26, scope: !4859, inlinedAt: !4706)
!4863 = !DILocation(line: 374, column: 6, scope: !4864, inlinedAt: !4706)
!4864 = distinct !DILexicalBlock(scope: !4702, file: !298, line: 374, column: 6)
!4865 = !DILocation(line: 374, column: 11, scope: !4864, inlinedAt: !4706)
!4866 = !DILocation(line: 374, column: 6, scope: !4702, inlinedAt: !4706)
!4867 = !DILocation(line: 374, column: 26, scope: !4864, inlinedAt: !4706)
!4868 = !DILocation(line: 375, column: 6, scope: !4869, inlinedAt: !4706)
!4869 = distinct !DILexicalBlock(scope: !4702, file: !298, line: 375, column: 6)
!4870 = !DILocation(line: 375, column: 11, scope: !4869, inlinedAt: !4706)
!4871 = !DILocation(line: 375, column: 6, scope: !4702, inlinedAt: !4706)
!4872 = !DILocation(line: 375, column: 27, scope: !4869, inlinedAt: !4706)
!4873 = !DILocation(line: 376, column: 6, scope: !4874, inlinedAt: !4706)
!4874 = distinct !DILexicalBlock(scope: !4702, file: !298, line: 376, column: 6)
!4875 = !DILocation(line: 376, column: 11, scope: !4874, inlinedAt: !4706)
!4876 = !DILocation(line: 376, column: 6, scope: !4702, inlinedAt: !4706)
!4877 = !DILocation(line: 376, column: 32, scope: !4874, inlinedAt: !4706)
!4878 = !DILocation(line: 377, column: 6, scope: !4879, inlinedAt: !4706)
!4879 = distinct !DILexicalBlock(scope: !4702, file: !298, line: 377, column: 6)
!4880 = !DILocation(line: 377, column: 11, scope: !4879, inlinedAt: !4706)
!4881 = !DILocation(line: 377, column: 6, scope: !4702, inlinedAt: !4706)
!4882 = !DILocation(line: 377, column: 32, scope: !4879, inlinedAt: !4706)
!4883 = !DILocation(line: 378, column: 6, scope: !4884, inlinedAt: !4706)
!4884 = distinct !DILexicalBlock(scope: !4702, file: !298, line: 378, column: 6)
!4885 = !DILocation(line: 378, column: 11, scope: !4884, inlinedAt: !4706)
!4886 = !DILocation(line: 378, column: 6, scope: !4702, inlinedAt: !4706)
!4887 = !DILocation(line: 378, column: 32, scope: !4884, inlinedAt: !4706)
!4888 = !DILocation(line: 379, column: 6, scope: !4889, inlinedAt: !4706)
!4889 = distinct !DILexicalBlock(scope: !4702, file: !298, line: 379, column: 6)
!4890 = !DILocation(line: 379, column: 11, scope: !4889, inlinedAt: !4706)
!4891 = !DILocation(line: 379, column: 6, scope: !4702, inlinedAt: !4706)
!4892 = !DILocation(line: 379, column: 33, scope: !4889, inlinedAt: !4706)
!4893 = !DILocation(line: 380, column: 6, scope: !4894, inlinedAt: !4706)
!4894 = distinct !DILexicalBlock(scope: !4702, file: !298, line: 380, column: 6)
!4895 = !DILocation(line: 380, column: 11, scope: !4894, inlinedAt: !4706)
!4896 = !DILocation(line: 380, column: 6, scope: !4702, inlinedAt: !4706)
!4897 = !DILocation(line: 380, column: 33, scope: !4894, inlinedAt: !4706)
!4898 = !DILocation(line: 381, column: 6, scope: !4899, inlinedAt: !4706)
!4899 = distinct !DILexicalBlock(scope: !4702, file: !298, line: 381, column: 6)
!4900 = !DILocation(line: 381, column: 11, scope: !4899, inlinedAt: !4706)
!4901 = !DILocation(line: 381, column: 6, scope: !4702, inlinedAt: !4706)
!4902 = !DILocation(line: 381, column: 33, scope: !4899, inlinedAt: !4706)
!4903 = !DILocation(line: 382, column: 2, scope: !4904, inlinedAt: !4706)
!4904 = distinct !DILexicalBlock(scope: !4905, file: !298, line: 382, column: 2)
!4905 = distinct !DILexicalBlock(scope: !4702, file: !298, line: 382, column: 2)
!4906 = !{i32 -2144134467, i32 -2144134438, i32 -2144134392, i32 -2144134334, i32 -2144134280, i32 -2144134226, i32 -2144134171, i32 -2144134140}
!4907 = !DILocation(line: 382, column: 2, scope: !4908, inlinedAt: !4706)
!4908 = distinct !DILexicalBlock(scope: !4909, file: !298, line: 382, column: 2)
!4909 = distinct !DILexicalBlock(scope: !4905, file: !298, line: 382, column: 2)
!4910 = !{i32 -2144133697, i32 -2144133690, i32 -2144133636, i32 -2144133605, i32 -2144133575}
!4911 = !DILocation(line: 382, column: 2, scope: !4909, inlinedAt: !4706)
!4912 = !DILocation(line: 386, column: 1, scope: !4702, inlinedAt: !4706)
!4913 = !DILocation(line: 547, column: 9, scope: !4685, inlinedAt: !4688)
!4914 = !DILocation(line: 549, column: 8, scope: !4915, inlinedAt: !4688)
!4915 = distinct !DILexicalBlock(scope: !4685, file: !298, line: 549, column: 7)
!4916 = !DILocation(line: 549, column: 7, scope: !4685, inlinedAt: !4688)
!4917 = !DILocation(line: 550, column: 4, scope: !4915, inlinedAt: !4688)
!4918 = !DILocation(line: 553, column: 33, scope: !4685, inlinedAt: !4688)
!4919 = !DILocation(line: 325, column: 6, scope: !4920, inlinedAt: !4700)
!4920 = distinct !DILexicalBlock(scope: !4696, file: !298, line: 325, column: 6)
!4921 = !DILocation(line: 325, column: 6, scope: !4696, inlinedAt: !4700)
!4922 = !DILocation(line: 326, column: 3, scope: !4920, inlinedAt: !4700)
!4923 = !DILocation(line: 332, column: 9, scope: !4696, inlinedAt: !4700)
!4924 = !DILocation(line: 332, column: 15, scope: !4696, inlinedAt: !4700)
!4925 = !DILocation(line: 332, column: 2, scope: !4696, inlinedAt: !4700)
!4926 = !DILocation(line: 336, column: 1, scope: !4696, inlinedAt: !4700)
!4927 = !DILocation(line: 553, column: 5, scope: !4685, inlinedAt: !4688)
!4928 = !DILocation(line: 553, column: 41, scope: !4685, inlinedAt: !4688)
!4929 = !DILocation(line: 554, column: 5, scope: !4685, inlinedAt: !4688)
!4930 = !DILocation(line: 554, column: 12, scope: !4685, inlinedAt: !4688)
!4931 = !DILocation(line: 448, column: 31, scope: !4680, inlinedAt: !4684)
!4932 = !DILocation(line: 448, column: 34, scope: !4680, inlinedAt: !4684)
!4933 = !DILocation(line: 448, column: 14, scope: !4680, inlinedAt: !4684)
!4934 = !DILocation(line: 450, column: 22, scope: !4680, inlinedAt: !4684)
!4935 = !DILocation(line: 450, column: 25, scope: !4680, inlinedAt: !4684)
!4936 = !DILocation(line: 450, column: 30, scope: !4680, inlinedAt: !4684)
!4937 = !DILocation(line: 450, column: 36, scope: !4680, inlinedAt: !4684)
!4938 = !DILocation(line: 450, column: 8, scope: !4680, inlinedAt: !4684)
!4939 = !DILocation(line: 450, column: 6, scope: !4680, inlinedAt: !4684)
!4940 = !DILocation(line: 451, column: 9, scope: !4680, inlinedAt: !4684)
!4941 = !DILocation(line: 552, column: 3, scope: !4685, inlinedAt: !4688)
!4942 = !DILocation(line: 557, column: 19, scope: !4687, inlinedAt: !4688)
!4943 = !DILocation(line: 557, column: 25, scope: !4687, inlinedAt: !4688)
!4944 = !DILocation(line: 557, column: 9, scope: !4687, inlinedAt: !4688)
!4945 = !DILocation(line: 557, column: 2, scope: !4687, inlinedAt: !4688)
!4946 = !DILocation(line: 558, column: 1, scope: !4687, inlinedAt: !4688)
!4947 = !DILocation(line: 664, column: 2, scope: !4676)
!4948 = distinct !DISubprogram(name: "i2c_set_adapdata", scope: !95, file: !95, line: 732, type: !4949, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!4949 = !DISubroutineType(types: !4950)
!4950 = !{null, !4243, !321}
!4951 = !DILocalVariable(name: "adap", arg: 1, scope: !4948, file: !95, line: 732, type: !4243)
!4952 = !DILocation(line: 732, column: 57, scope: !4948)
!4953 = !DILocalVariable(name: "data", arg: 2, scope: !4948, file: !95, line: 732, type: !321)
!4954 = !DILocation(line: 732, column: 69, scope: !4948)
!4955 = !DILocation(line: 734, column: 19, scope: !4948)
!4956 = !DILocation(line: 734, column: 25, scope: !4948)
!4957 = !DILocation(line: 734, column: 30, scope: !4948)
!4958 = !DILocation(line: 734, column: 2, scope: !4948)
!4959 = !DILocation(line: 735, column: 1, scope: !4948)
!4960 = distinct !DISubprogram(name: "i2c_set_clientdata", scope: !95, file: !95, line: 356, type: !4961, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!4961 = !DISubroutineType(types: !4962)
!4962 = !{null, !4367, !321}
!4963 = !DILocalVariable(name: "client", arg: 1, scope: !4960, file: !95, line: 356, type: !4367)
!4964 = !DILocation(line: 356, column: 58, scope: !4960)
!4965 = !DILocalVariable(name: "data", arg: 2, scope: !4960, file: !95, line: 356, type: !321)
!4966 = !DILocation(line: 356, column: 72, scope: !4960)
!4967 = !DILocation(line: 358, column: 19, scope: !4960)
!4968 = !DILocation(line: 358, column: 27, scope: !4960)
!4969 = !DILocation(line: 358, column: 32, scope: !4960)
!4970 = !DILocation(line: 358, column: 2, scope: !4960)
!4971 = !DILocation(line: 359, column: 1, scope: !4960)
!4972 = distinct !DISubprogram(name: "get_order", scope: !4973, file: !4973, line: 29, type: !4974, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!4973 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4974 = !DISubroutineType(types: !4975)
!4975 = !{!328, !568}
!4976 = !DILocalVariable(name: "x", arg: 1, scope: !4977, file: !4978, line: 366, type: !490)
!4977 = distinct !DISubprogram(name: "fls64", scope: !4978, file: !4978, line: 366, type: !4979, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!4978 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4979 = !DISubroutineType(types: !4980)
!4980 = !{!328, !490}
!4981 = !DILocation(line: 366, column: 40, scope: !4977, inlinedAt: !4982)
!4982 = distinct !DILocation(line: 46, column: 9, scope: !4972)
!4983 = !DILocalVariable(name: "bitpos", scope: !4977, file: !4978, line: 368, type: !328)
!4984 = !DILocation(line: 368, column: 6, scope: !4977, inlinedAt: !4982)
!4985 = !DILocalVariable(name: "size", arg: 1, scope: !4972, file: !4973, line: 29, type: !568)
!4986 = !DILocation(line: 29, column: 63, scope: !4972)
!4987 = !DILocation(line: 31, column: 27, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4972, file: !4973, line: 31, column: 6)
!4989 = !DILocation(line: 31, column: 6, scope: !4988)
!4990 = !DILocation(line: 31, column: 6, scope: !4972)
!4991 = !DILocation(line: 32, column: 8, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4993, file: !4973, line: 32, column: 7)
!4993 = distinct !DILexicalBlock(scope: !4988, file: !4973, line: 31, column: 34)
!4994 = !DILocation(line: 32, column: 7, scope: !4993)
!4995 = !DILocation(line: 33, column: 4, scope: !4992)
!4996 = !DILocation(line: 35, column: 7, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4993, file: !4973, line: 35, column: 7)
!4998 = !DILocation(line: 35, column: 12, scope: !4997)
!4999 = !DILocation(line: 35, column: 7, scope: !4993)
!5000 = !DILocation(line: 36, column: 4, scope: !4997)
!5001 = !DILocation(line: 38, column: 10, scope: !4993)
!5002 = !DILocation(line: 38, column: 28, scope: !4993)
!5003 = !DILocation(line: 38, column: 41, scope: !4993)
!5004 = !DILocation(line: 38, column: 3, scope: !4993)
!5005 = !DILocation(line: 41, column: 6, scope: !4972)
!5006 = !DILocation(line: 42, column: 7, scope: !4972)
!5007 = !DILocation(line: 46, column: 15, scope: !4972)
!5008 = !DILocation(line: 374, column: 2, scope: !4977, inlinedAt: !4982)
!5009 = !DILocation(line: 376, column: 14, scope: !4977, inlinedAt: !4982)
!5010 = !{i32 259227}
!5011 = !DILocation(line: 377, column: 9, scope: !4977, inlinedAt: !4982)
!5012 = !DILocation(line: 377, column: 16, scope: !4977, inlinedAt: !4982)
!5013 = !DILocation(line: 46, column: 2, scope: !4972)
!5014 = !DILocation(line: 48, column: 1, scope: !4972)
!5015 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5016, file: !5016, line: 30, type: !5017, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!5016 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5017 = !DISubroutineType(types: !5018)
!5018 = !{!328, !609}
!5019 = !DILocation(line: 366, column: 40, scope: !4977, inlinedAt: !5020)
!5020 = distinct !DILocation(line: 32, column: 9, scope: !5015)
!5021 = !DILocation(line: 368, column: 6, scope: !4977, inlinedAt: !5020)
!5022 = !DILocalVariable(name: "n", arg: 1, scope: !5015, file: !5016, line: 30, type: !609)
!5023 = !DILocation(line: 30, column: 21, scope: !5015)
!5024 = !DILocation(line: 32, column: 15, scope: !5015)
!5025 = !DILocation(line: 374, column: 2, scope: !4977, inlinedAt: !5020)
!5026 = !DILocation(line: 376, column: 14, scope: !4977, inlinedAt: !5020)
!5027 = !DILocation(line: 377, column: 9, scope: !4977, inlinedAt: !5020)
!5028 = !DILocation(line: 377, column: 16, scope: !4977, inlinedAt: !5020)
!5029 = !DILocation(line: 32, column: 18, scope: !5015)
!5030 = !DILocation(line: 32, column: 2, scope: !5015)
!5031 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5032, file: !5032, line: 137, type: !5033, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!5032 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5033 = !DISubroutineType(types: !5034)
!5034 = !{!321, !1368, !2470, !773, !319}
!5035 = !DILocalVariable(name: "s", arg: 1, scope: !5031, file: !5032, line: 137, type: !1368)
!5036 = !DILocation(line: 137, column: 54, scope: !5031)
!5037 = !DILocalVariable(name: "object", arg: 2, scope: !5031, file: !5032, line: 137, type: !2470)
!5038 = !DILocation(line: 137, column: 69, scope: !5031)
!5039 = !DILocalVariable(name: "size", arg: 3, scope: !5031, file: !5032, line: 138, type: !773)
!5040 = !DILocation(line: 138, column: 12, scope: !5031)
!5041 = !DILocalVariable(name: "flags", arg: 4, scope: !5031, file: !5032, line: 138, type: !319)
!5042 = !DILocation(line: 138, column: 24, scope: !5031)
!5043 = !DILocation(line: 140, column: 17, scope: !5031)
!5044 = !DILocation(line: 140, column: 2, scope: !5031)
!5045 = distinct !DISubprogram(name: "tc90522_init", scope: !3, file: !3, line: 592, type: !387, scopeLine: 593, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!5046 = !DILocalVariable(name: "fe", arg: 1, scope: !5045, file: !3, line: 592, type: !337)
!5047 = !DILocation(line: 592, column: 46, scope: !5045)
!5048 = !DILocalVariable(name: "state", scope: !5045, file: !3, line: 594, type: !329)
!5049 = !DILocation(line: 594, column: 24, scope: !5045)
!5050 = !DILocalVariable(name: "ret", scope: !5045, file: !3, line: 595, type: !328)
!5051 = !DILocation(line: 595, column: 6, scope: !5045)
!5052 = !DILocation(line: 603, column: 10, scope: !5045)
!5053 = !DILocation(line: 603, column: 14, scope: !5045)
!5054 = !DILocation(line: 603, column: 8, scope: !5045)
!5055 = !DILocation(line: 604, column: 6, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !5045, file: !3, line: 604, column: 6)
!5057 = !DILocation(line: 604, column: 10, scope: !5056)
!5058 = !DILocation(line: 604, column: 14, scope: !5056)
!5059 = !DILocation(line: 604, column: 24, scope: !5056)
!5060 = !DILocation(line: 604, column: 6, scope: !5045)
!5061 = !DILocation(line: 605, column: 19, scope: !5056)
!5062 = !DILocation(line: 605, column: 9, scope: !5056)
!5063 = !DILocation(line: 605, column: 7, scope: !5056)
!5064 = !DILocation(line: 605, column: 3, scope: !5056)
!5065 = !DILocation(line: 607, column: 19, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !5056, file: !3, line: 606, column: 7)
!5067 = !DILocation(line: 607, column: 9, scope: !5066)
!5068 = !DILocation(line: 607, column: 7, scope: !5066)
!5069 = !DILocation(line: 608, column: 7, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5066, file: !3, line: 608, column: 7)
!5071 = !DILocation(line: 608, column: 11, scope: !5070)
!5072 = !DILocation(line: 608, column: 16, scope: !5070)
!5073 = !DILocation(line: 608, column: 19, scope: !5070)
!5074 = !DILocation(line: 608, column: 23, scope: !5070)
!5075 = !DILocation(line: 608, column: 27, scope: !5070)
!5076 = !DILocation(line: 608, column: 35, scope: !5070)
!5077 = !DILocation(line: 609, column: 7, scope: !5070)
!5078 = !DILocation(line: 609, column: 11, scope: !5070)
!5079 = !DILocation(line: 609, column: 30, scope: !5070)
!5080 = !DILocation(line: 609, column: 34, scope: !5070)
!5081 = !DILocation(line: 608, column: 7, scope: !5066)
!5082 = !DILocation(line: 610, column: 4, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !5070, file: !3, line: 609, column: 47)
!5084 = !DILocation(line: 610, column: 8, scope: !5083)
!5085 = !DILocation(line: 610, column: 27, scope: !5083)
!5086 = !DILocation(line: 610, column: 31, scope: !5083)
!5087 = !DILocation(line: 611, column: 10, scope: !5083)
!5088 = !DILocation(line: 611, column: 14, scope: !5083)
!5089 = !DILocation(line: 611, column: 18, scope: !5083)
!5090 = !DILocation(line: 611, column: 26, scope: !5083)
!5091 = !DILocation(line: 611, column: 8, scope: !5083)
!5092 = !DILocation(line: 612, column: 4, scope: !5083)
!5093 = !DILocation(line: 612, column: 8, scope: !5083)
!5094 = !DILocation(line: 612, column: 27, scope: !5083)
!5095 = !DILocation(line: 612, column: 31, scope: !5083)
!5096 = !DILocation(line: 613, column: 3, scope: !5083)
!5097 = !DILocation(line: 615, column: 6, scope: !5098)
!5098 = distinct !DILexicalBlock(scope: !5045, file: !3, line: 615, column: 6)
!5099 = !DILocation(line: 615, column: 10, scope: !5098)
!5100 = !DILocation(line: 615, column: 6, scope: !5045)
!5101 = !DILocation(line: 616, column: 3, scope: !5102)
!5102 = distinct !DILexicalBlock(scope: !5098, file: !3, line: 615, column: 15)
!5103 = !DILocation(line: 619, column: 10, scope: !5102)
!5104 = !DILocation(line: 619, column: 3, scope: !5102)
!5105 = !DILocation(line: 623, column: 6, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5045, file: !3, line: 623, column: 6)
!5107 = !DILocation(line: 623, column: 10, scope: !5106)
!5108 = !DILocation(line: 623, column: 29, scope: !5106)
!5109 = !DILocation(line: 623, column: 49, scope: !5106)
!5110 = !DILocation(line: 623, column: 6, scope: !5045)
!5111 = !DILocation(line: 624, column: 3, scope: !5106)
!5112 = !DILocation(line: 624, column: 7, scope: !5106)
!5113 = !DILocation(line: 624, column: 26, scope: !5106)
!5114 = !DILocation(line: 624, column: 46, scope: !5106)
!5115 = !DILocation(line: 625, column: 28, scope: !5045)
!5116 = !DILocation(line: 625, column: 9, scope: !5045)
!5117 = !DILocation(line: 625, column: 2, scope: !5045)
!5118 = !DILocation(line: 626, column: 1, scope: !5045)
!5119 = distinct !DISubprogram(name: "tc90522_sleep", scope: !3, file: !3, line: 565, type: !387, scopeLine: 566, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!5120 = !DILocalVariable(name: "fe", arg: 1, scope: !5119, file: !3, line: 565, type: !337)
!5121 = !DILocation(line: 565, column: 47, scope: !5119)
!5122 = !DILocalVariable(name: "state", scope: !5119, file: !3, line: 567, type: !329)
!5123 = !DILocation(line: 567, column: 24, scope: !5119)
!5124 = !DILocalVariable(name: "ret", scope: !5119, file: !3, line: 568, type: !328)
!5125 = !DILocation(line: 568, column: 6, scope: !5119)
!5126 = !DILocation(line: 570, column: 10, scope: !5119)
!5127 = !DILocation(line: 570, column: 14, scope: !5119)
!5128 = !DILocation(line: 570, column: 8, scope: !5119)
!5129 = !DILocation(line: 571, column: 6, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5119, file: !3, line: 571, column: 6)
!5131 = !DILocation(line: 571, column: 10, scope: !5130)
!5132 = !DILocation(line: 571, column: 14, scope: !5130)
!5133 = !DILocation(line: 571, column: 24, scope: !5130)
!5134 = !DILocation(line: 571, column: 6, scope: !5119)
!5135 = !DILocation(line: 572, column: 19, scope: !5130)
!5136 = !DILocation(line: 572, column: 9, scope: !5130)
!5137 = !DILocation(line: 572, column: 7, scope: !5130)
!5138 = !DILocation(line: 572, column: 3, scope: !5130)
!5139 = !DILocation(line: 574, column: 19, scope: !5140)
!5140 = distinct !DILexicalBlock(scope: !5130, file: !3, line: 573, column: 7)
!5141 = !DILocation(line: 574, column: 9, scope: !5140)
!5142 = !DILocation(line: 574, column: 7, scope: !5140)
!5143 = !DILocation(line: 575, column: 7, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5140, file: !3, line: 575, column: 7)
!5145 = !DILocation(line: 575, column: 11, scope: !5144)
!5146 = !DILocation(line: 575, column: 16, scope: !5144)
!5147 = !DILocation(line: 575, column: 19, scope: !5144)
!5148 = !DILocation(line: 575, column: 23, scope: !5144)
!5149 = !DILocation(line: 575, column: 27, scope: !5144)
!5150 = !DILocation(line: 575, column: 35, scope: !5144)
!5151 = !DILocation(line: 576, column: 7, scope: !5144)
!5152 = !DILocation(line: 576, column: 11, scope: !5144)
!5153 = !DILocation(line: 576, column: 30, scope: !5144)
!5154 = !DILocation(line: 576, column: 34, scope: !5144)
!5155 = !DILocation(line: 575, column: 7, scope: !5140)
!5156 = !DILocation(line: 577, column: 4, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5144, file: !3, line: 576, column: 47)
!5158 = !DILocation(line: 577, column: 8, scope: !5157)
!5159 = !DILocation(line: 577, column: 27, scope: !5157)
!5160 = !DILocation(line: 577, column: 31, scope: !5157)
!5161 = !DILocation(line: 578, column: 10, scope: !5157)
!5162 = !DILocation(line: 578, column: 14, scope: !5157)
!5163 = !DILocation(line: 578, column: 18, scope: !5157)
!5164 = !DILocation(line: 578, column: 26, scope: !5157)
!5165 = !DILocation(line: 578, column: 8, scope: !5157)
!5166 = !DILocation(line: 579, column: 4, scope: !5157)
!5167 = !DILocation(line: 579, column: 8, scope: !5157)
!5168 = !DILocation(line: 579, column: 27, scope: !5157)
!5169 = !DILocation(line: 579, column: 31, scope: !5157)
!5170 = !DILocation(line: 580, column: 3, scope: !5157)
!5171 = !DILocation(line: 582, column: 6, scope: !5172)
!5172 = distinct !DILexicalBlock(scope: !5119, file: !3, line: 582, column: 6)
!5173 = !DILocation(line: 582, column: 10, scope: !5172)
!5174 = !DILocation(line: 582, column: 6, scope: !5119)
!5175 = !DILocation(line: 583, column: 3, scope: !5172)
!5176 = !DILocation(line: 586, column: 9, scope: !5119)
!5177 = !DILocation(line: 586, column: 2, scope: !5119)
!5178 = distinct !DISubprogram(name: "tc90522_set_frontend", scope: !3, file: !3, line: 477, type: !387, scopeLine: 478, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!5179 = !DILocalVariable(name: "fe", arg: 1, scope: !5178, file: !3, line: 477, type: !337)
!5180 = !DILocation(line: 477, column: 54, scope: !5178)
!5181 = !DILocalVariable(name: "state", scope: !5178, file: !3, line: 479, type: !329)
!5182 = !DILocation(line: 479, column: 24, scope: !5178)
!5183 = !DILocalVariable(name: "ret", scope: !5178, file: !3, line: 480, type: !328)
!5184 = !DILocation(line: 480, column: 6, scope: !5178)
!5185 = !DILocation(line: 482, column: 10, scope: !5178)
!5186 = !DILocation(line: 482, column: 14, scope: !5178)
!5187 = !DILocation(line: 482, column: 8, scope: !5178)
!5188 = !DILocation(line: 484, column: 6, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5178, file: !3, line: 484, column: 6)
!5190 = !DILocation(line: 484, column: 10, scope: !5189)
!5191 = !DILocation(line: 484, column: 14, scope: !5189)
!5192 = !DILocation(line: 484, column: 24, scope: !5189)
!5193 = !DILocation(line: 484, column: 6, scope: !5178)
!5194 = !DILocation(line: 485, column: 9, scope: !5189)
!5195 = !DILocation(line: 485, column: 13, scope: !5189)
!5196 = !DILocation(line: 485, column: 17, scope: !5189)
!5197 = !DILocation(line: 485, column: 27, scope: !5189)
!5198 = !DILocation(line: 485, column: 38, scope: !5189)
!5199 = !DILocation(line: 485, column: 7, scope: !5189)
!5200 = !DILocation(line: 485, column: 3, scope: !5189)
!5201 = !DILocation(line: 487, column: 7, scope: !5189)
!5202 = !DILocation(line: 488, column: 6, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5178, file: !3, line: 488, column: 6)
!5204 = !DILocation(line: 488, column: 10, scope: !5203)
!5205 = !DILocation(line: 488, column: 6, scope: !5178)
!5206 = !DILocation(line: 489, column: 3, scope: !5203)
!5207 = !DILocation(line: 491, column: 6, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5178, file: !3, line: 491, column: 6)
!5209 = !DILocation(line: 491, column: 10, scope: !5208)
!5210 = !DILocation(line: 491, column: 14, scope: !5208)
!5211 = !DILocation(line: 491, column: 24, scope: !5208)
!5212 = !DILocation(line: 491, column: 6, scope: !5178)
!5213 = !DILocation(line: 492, column: 27, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5208, file: !3, line: 491, column: 38)
!5215 = !DILocation(line: 492, column: 9, scope: !5214)
!5216 = !DILocation(line: 492, column: 7, scope: !5214)
!5217 = !DILocation(line: 493, column: 7, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5214, file: !3, line: 493, column: 7)
!5219 = !DILocation(line: 493, column: 11, scope: !5218)
!5220 = !DILocation(line: 493, column: 7, scope: !5214)
!5221 = !DILocation(line: 494, column: 4, scope: !5218)
!5222 = !DILocation(line: 495, column: 19, scope: !5214)
!5223 = !DILocation(line: 495, column: 9, scope: !5214)
!5224 = !DILocation(line: 495, column: 7, scope: !5214)
!5225 = !DILocation(line: 496, column: 2, scope: !5214)
!5226 = !DILocation(line: 497, column: 29, scope: !5227)
!5227 = distinct !DILexicalBlock(scope: !5208, file: !3, line: 496, column: 9)
!5228 = !DILocation(line: 497, column: 9, scope: !5227)
!5229 = !DILocation(line: 497, column: 7, scope: !5227)
!5230 = !DILocation(line: 498, column: 7, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5227, file: !3, line: 498, column: 7)
!5232 = !DILocation(line: 498, column: 11, scope: !5231)
!5233 = !DILocation(line: 498, column: 7, scope: !5227)
!5234 = !DILocation(line: 499, column: 4, scope: !5231)
!5235 = !DILocation(line: 500, column: 19, scope: !5227)
!5236 = !DILocation(line: 500, column: 9, scope: !5227)
!5237 = !DILocation(line: 500, column: 7, scope: !5227)
!5238 = !DILocation(line: 502, column: 6, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5178, file: !3, line: 502, column: 6)
!5240 = !DILocation(line: 502, column: 10, scope: !5239)
!5241 = !DILocation(line: 502, column: 6, scope: !5178)
!5242 = !DILocation(line: 503, column: 3, scope: !5239)
!5243 = !DILocation(line: 505, column: 2, scope: !5178)
!5244 = !DILabel(scope: !5178, name: "failed", file: !3, line: 507)
!5245 = !DILocation(line: 507, column: 1, scope: !5178)
!5246 = !DILocation(line: 508, column: 2, scope: !5178)
!5247 = !DILocation(line: 510, column: 9, scope: !5178)
!5248 = !DILocation(line: 510, column: 2, scope: !5178)
!5249 = !DILocation(line: 511, column: 1, scope: !5178)
!5250 = distinct !DISubprogram(name: "tc90522_get_tune_settings", scope: !3, file: !3, line: 513, type: !411, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!5251 = !DILocalVariable(name: "fe", arg: 1, scope: !5250, file: !3, line: 513, type: !337)
!5252 = !DILocation(line: 513, column: 59, scope: !5250)
!5253 = !DILocalVariable(name: "settings", arg: 2, scope: !5250, file: !3, line: 514, type: !413)
!5254 = !DILocation(line: 514, column: 37, scope: !5250)
!5255 = !DILocation(line: 516, column: 6, scope: !5256)
!5256 = distinct !DILexicalBlock(scope: !5250, file: !3, line: 516, column: 6)
!5257 = !DILocation(line: 516, column: 10, scope: !5256)
!5258 = !DILocation(line: 516, column: 14, scope: !5256)
!5259 = !DILocation(line: 516, column: 24, scope: !5256)
!5260 = !DILocation(line: 516, column: 6, scope: !5250)
!5261 = !DILocation(line: 517, column: 3, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 516, column: 38)
!5263 = !DILocation(line: 517, column: 13, scope: !5262)
!5264 = !DILocation(line: 517, column: 26, scope: !5262)
!5265 = !DILocation(line: 518, column: 3, scope: !5262)
!5266 = !DILocation(line: 518, column: 13, scope: !5262)
!5267 = !DILocation(line: 518, column: 23, scope: !5262)
!5268 = !DILocation(line: 519, column: 25, scope: !5262)
!5269 = !DILocation(line: 519, column: 35, scope: !5262)
!5270 = !DILocation(line: 519, column: 45, scope: !5262)
!5271 = !DILocation(line: 519, column: 3, scope: !5262)
!5272 = !DILocation(line: 519, column: 13, scope: !5262)
!5273 = !DILocation(line: 519, column: 23, scope: !5262)
!5274 = !DILocation(line: 520, column: 2, scope: !5262)
!5275 = !DILocation(line: 521, column: 3, scope: !5276)
!5276 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 520, column: 9)
!5277 = !DILocation(line: 521, column: 13, scope: !5276)
!5278 = !DILocation(line: 521, column: 26, scope: !5276)
!5279 = !DILocation(line: 522, column: 3, scope: !5276)
!5280 = !DILocation(line: 522, column: 13, scope: !5276)
!5281 = !DILocation(line: 522, column: 23, scope: !5276)
!5282 = !DILocation(line: 523, column: 25, scope: !5276)
!5283 = !DILocation(line: 523, column: 35, scope: !5276)
!5284 = !DILocation(line: 523, column: 3, scope: !5276)
!5285 = !DILocation(line: 523, column: 13, scope: !5276)
!5286 = !DILocation(line: 523, column: 23, scope: !5276)
!5287 = !DILocation(line: 525, column: 2, scope: !5250)
!5288 = distinct !DISubprogram(name: "tc90522s_get_frontend", scope: !3, file: !3, line: 195, type: !421, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!5289 = !DILocalVariable(name: "fe", arg: 1, scope: !5288, file: !3, line: 195, type: !337)
!5290 = !DILocation(line: 195, column: 55, scope: !5288)
!5291 = !DILocalVariable(name: "c", arg: 2, scope: !5288, file: !3, line: 196, type: !423)
!5292 = !DILocation(line: 196, column: 38, scope: !5288)
!5293 = !DILocalVariable(name: "state", scope: !5288, file: !3, line: 198, type: !329)
!5294 = !DILocation(line: 198, column: 24, scope: !5288)
!5295 = !DILocalVariable(name: "stats", scope: !5288, file: !3, line: 199, type: !5296)
!5296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!5297 = !DILocation(line: 199, column: 23, scope: !5288)
!5298 = !DILocalVariable(name: "ret", scope: !5288, file: !3, line: 200, type: !328)
!5299 = !DILocation(line: 200, column: 6, scope: !5288)
!5300 = !DILocalVariable(name: "i", scope: !5288, file: !3, line: 200, type: !328)
!5301 = !DILocation(line: 200, column: 11, scope: !5288)
!5302 = !DILocalVariable(name: "layers", scope: !5288, file: !3, line: 201, type: !328)
!5303 = !DILocation(line: 201, column: 6, scope: !5288)
!5304 = !DILocalVariable(name: "val", scope: !5288, file: !3, line: 202, type: !5305)
!5305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 80, elements: !5306)
!5306 = !{!5307}
!5307 = !DISubrange(count: 10)
!5308 = !DILocation(line: 202, column: 5, scope: !5288)
!5309 = !DILocalVariable(name: "cndat", scope: !5288, file: !3, line: 203, type: !366)
!5310 = !DILocation(line: 203, column: 6, scope: !5288)
!5311 = !DILocation(line: 205, column: 10, scope: !5288)
!5312 = !DILocation(line: 205, column: 14, scope: !5288)
!5313 = !DILocation(line: 205, column: 8, scope: !5288)
!5314 = !DILocation(line: 206, column: 2, scope: !5288)
!5315 = !DILocation(line: 206, column: 5, scope: !5288)
!5316 = !DILocation(line: 206, column: 21, scope: !5288)
!5317 = !DILocation(line: 207, column: 2, scope: !5288)
!5318 = !DILocation(line: 207, column: 5, scope: !5288)
!5319 = !DILocation(line: 207, column: 17, scope: !5288)
!5320 = !DILocation(line: 209, column: 9, scope: !5288)
!5321 = !DILocation(line: 210, column: 17, scope: !5288)
!5322 = !DILocation(line: 210, column: 30, scope: !5288)
!5323 = !DILocation(line: 210, column: 8, scope: !5288)
!5324 = !DILocation(line: 210, column: 6, scope: !5288)
!5325 = !DILocation(line: 211, column: 6, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5288, file: !3, line: 211, column: 6)
!5327 = !DILocation(line: 211, column: 10, scope: !5326)
!5328 = !DILocation(line: 211, column: 6, scope: !5288)
!5329 = !DILocalVariable(name: "v", scope: !5330, file: !3, line: 212, type: !323)
!5330 = distinct !DILexicalBlock(scope: !5326, file: !3, line: 211, column: 16)
!5331 = !DILocation(line: 212, column: 6, scope: !5330)
!5332 = !DILocation(line: 214, column: 18, scope: !5330)
!5333 = !DILocation(line: 214, column: 25, scope: !5330)
!5334 = !DILocation(line: 214, column: 32, scope: !5330)
!5335 = !DILocation(line: 214, column: 30, scope: !5330)
!5336 = !DILocation(line: 214, column: 3, scope: !5330)
!5337 = !DILocation(line: 214, column: 6, scope: !5330)
!5338 = !DILocation(line: 214, column: 16, scope: !5330)
!5339 = !DILocation(line: 217, column: 8, scope: !5330)
!5340 = !DILocation(line: 217, column: 15, scope: !5330)
!5341 = !DILocation(line: 217, column: 23, scope: !5330)
!5342 = !DILocation(line: 217, column: 7, scope: !5330)
!5343 = !DILocation(line: 217, column: 5, scope: !5330)
!5344 = !DILocation(line: 218, column: 20, scope: !5330)
!5345 = !DILocation(line: 218, column: 22, scope: !5330)
!5346 = !DILocation(line: 218, column: 19, scope: !5330)
!5347 = !DILocation(line: 218, column: 3, scope: !5330)
!5348 = !DILocation(line: 218, column: 6, scope: !5330)
!5349 = !DILocation(line: 218, column: 17, scope: !5330)
!5350 = !DILocation(line: 219, column: 31, scope: !5330)
!5351 = !DILocation(line: 219, column: 18, scope: !5330)
!5352 = !DILocation(line: 219, column: 3, scope: !5330)
!5353 = !DILocation(line: 219, column: 6, scope: !5330)
!5354 = !DILocation(line: 219, column: 16, scope: !5330)
!5355 = !DILocation(line: 220, column: 21, scope: !5330)
!5356 = !DILocation(line: 220, column: 24, scope: !5330)
!5357 = !DILocation(line: 220, column: 3, scope: !5330)
!5358 = !DILocation(line: 220, column: 6, scope: !5330)
!5359 = !DILocation(line: 220, column: 15, scope: !5330)
!5360 = !DILocation(line: 220, column: 19, scope: !5330)
!5361 = !DILocation(line: 221, column: 28, scope: !5330)
!5362 = !DILocation(line: 221, column: 31, scope: !5330)
!5363 = !DILocation(line: 221, column: 3, scope: !5330)
!5364 = !DILocation(line: 221, column: 6, scope: !5330)
!5365 = !DILocation(line: 221, column: 15, scope: !5330)
!5366 = !DILocation(line: 221, column: 26, scope: !5330)
!5367 = !DILocation(line: 222, column: 31, scope: !5330)
!5368 = !DILocation(line: 222, column: 38, scope: !5330)
!5369 = !DILocation(line: 222, column: 3, scope: !5330)
!5370 = !DILocation(line: 222, column: 6, scope: !5330)
!5371 = !DILocation(line: 222, column: 15, scope: !5330)
!5372 = !DILocation(line: 222, column: 29, scope: !5330)
!5373 = !DILocation(line: 225, column: 8, scope: !5330)
!5374 = !DILocation(line: 225, column: 15, scope: !5330)
!5375 = !DILocation(line: 225, column: 7, scope: !5330)
!5376 = !DILocation(line: 225, column: 5, scope: !5330)
!5377 = !DILocation(line: 226, column: 34, scope: !5330)
!5378 = !DILocation(line: 226, column: 21, scope: !5330)
!5379 = !DILocation(line: 226, column: 3, scope: !5330)
!5380 = !DILocation(line: 226, column: 6, scope: !5330)
!5381 = !DILocation(line: 226, column: 15, scope: !5330)
!5382 = !DILocation(line: 226, column: 19, scope: !5330)
!5383 = !DILocation(line: 227, column: 7, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5330, file: !3, line: 227, column: 7)
!5385 = !DILocation(line: 227, column: 9, scope: !5384)
!5386 = !DILocation(line: 227, column: 7, scope: !5330)
!5387 = !DILocation(line: 228, column: 4, scope: !5384)
!5388 = !DILocation(line: 228, column: 7, scope: !5384)
!5389 = !DILocation(line: 228, column: 16, scope: !5384)
!5390 = !DILocation(line: 228, column: 30, scope: !5384)
!5391 = !DILocation(line: 230, column: 32, scope: !5384)
!5392 = !DILocation(line: 230, column: 39, scope: !5384)
!5393 = !DILocation(line: 230, column: 4, scope: !5384)
!5394 = !DILocation(line: 230, column: 7, scope: !5384)
!5395 = !DILocation(line: 230, column: 16, scope: !5384)
!5396 = !DILocation(line: 230, column: 30, scope: !5384)
!5397 = !DILocation(line: 235, column: 3, scope: !5330)
!5398 = !DILocation(line: 235, column: 6, scope: !5330)
!5399 = !DILocation(line: 235, column: 15, scope: !5330)
!5400 = !DILocation(line: 235, column: 26, scope: !5330)
!5401 = !DILocation(line: 236, column: 13, scope: !5330)
!5402 = !DILocation(line: 236, column: 15, scope: !5330)
!5403 = !DILocation(line: 236, column: 12, scope: !5330)
!5404 = !DILocation(line: 236, column: 10, scope: !5330)
!5405 = !DILocation(line: 237, column: 2, scope: !5330)
!5406 = !DILocation(line: 241, column: 11, scope: !5288)
!5407 = !DILocation(line: 241, column: 14, scope: !5288)
!5408 = !DILocation(line: 241, column: 8, scope: !5288)
!5409 = !DILocation(line: 242, column: 2, scope: !5288)
!5410 = !DILocation(line: 242, column: 9, scope: !5288)
!5411 = !DILocation(line: 242, column: 13, scope: !5288)
!5412 = !DILocation(line: 244, column: 6, scope: !5413)
!5413 = distinct !DILexicalBlock(scope: !5288, file: !3, line: 244, column: 6)
!5414 = !DILocation(line: 244, column: 10, scope: !5413)
!5415 = !DILocation(line: 244, column: 14, scope: !5413)
!5416 = !DILocation(line: 244, column: 24, scope: !5413)
!5417 = !DILocation(line: 244, column: 6, scope: !5288)
!5418 = !DILocalVariable(name: "dummy", scope: !5419, file: !3, line: 245, type: !518)
!5419 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 244, column: 41)
!5420 = !DILocation(line: 245, column: 7, scope: !5419)
!5421 = !DILocation(line: 247, column: 3, scope: !5419)
!5422 = !DILocation(line: 247, column: 7, scope: !5419)
!5423 = !DILocation(line: 247, column: 11, scope: !5419)
!5424 = !DILocation(line: 247, column: 21, scope: !5419)
!5425 = !DILocation(line: 247, column: 37, scope: !5419)
!5426 = !DILocation(line: 248, column: 2, scope: !5419)
!5427 = !DILocation(line: 250, column: 11, scope: !5288)
!5428 = !DILocation(line: 250, column: 14, scope: !5288)
!5429 = !DILocation(line: 250, column: 8, scope: !5288)
!5430 = !DILocation(line: 251, column: 2, scope: !5288)
!5431 = !DILocation(line: 251, column: 9, scope: !5288)
!5432 = !DILocation(line: 251, column: 13, scope: !5288)
!5433 = !DILocation(line: 252, column: 2, scope: !5288)
!5434 = !DILocation(line: 252, column: 9, scope: !5288)
!5435 = !DILocation(line: 252, column: 17, scope: !5288)
!5436 = !DILocation(line: 252, column: 23, scope: !5288)
!5437 = !DILocation(line: 253, column: 8, scope: !5288)
!5438 = !DILocation(line: 254, column: 17, scope: !5288)
!5439 = !DILocation(line: 254, column: 30, scope: !5288)
!5440 = !DILocation(line: 254, column: 8, scope: !5288)
!5441 = !DILocation(line: 254, column: 6, scope: !5288)
!5442 = !DILocation(line: 255, column: 6, scope: !5443)
!5443 = distinct !DILexicalBlock(scope: !5288, file: !3, line: 255, column: 6)
!5444 = !DILocation(line: 255, column: 10, scope: !5443)
!5445 = !DILocation(line: 255, column: 6, scope: !5288)
!5446 = !DILocation(line: 256, column: 11, scope: !5443)
!5447 = !DILocation(line: 256, column: 18, scope: !5443)
!5448 = !DILocation(line: 256, column: 25, scope: !5443)
!5449 = !DILocation(line: 256, column: 23, scope: !5443)
!5450 = !DILocation(line: 256, column: 9, scope: !5443)
!5451 = !DILocation(line: 256, column: 3, scope: !5443)
!5452 = !DILocation(line: 257, column: 6, scope: !5453)
!5453 = distinct !DILexicalBlock(scope: !5288, file: !3, line: 257, column: 6)
!5454 = !DILocation(line: 257, column: 12, scope: !5453)
!5455 = !DILocation(line: 257, column: 6, scope: !5288)
!5456 = !DILocalVariable(name: "p", scope: !5457, file: !3, line: 258, type: !366)
!5457 = distinct !DILexicalBlock(scope: !5453, file: !3, line: 257, column: 21)
!5458 = !DILocation(line: 258, column: 7, scope: !5457)
!5459 = !DILocalVariable(name: "p4", scope: !5457, file: !3, line: 258, type: !366)
!5460 = !DILocation(line: 258, column: 10, scope: !5457)
!5461 = !DILocalVariable(name: "cn", scope: !5457, file: !3, line: 259, type: !1212)
!5462 = !DILocation(line: 259, column: 7, scope: !5457)
!5463 = !DILocation(line: 261, column: 9, scope: !5457)
!5464 = !DILocation(line: 269, column: 16, scope: !5457)
!5465 = !DILocation(line: 269, column: 22, scope: !5457)
!5466 = !DILocation(line: 269, column: 7, scope: !5457)
!5467 = !DILocation(line: 269, column: 5, scope: !5457)
!5468 = !DILocation(line: 270, column: 8, scope: !5457)
!5469 = !DILocation(line: 270, column: 16, scope: !5457)
!5470 = !DILocation(line: 270, column: 14, scope: !5457)
!5471 = !DILocation(line: 270, column: 6, scope: !5457)
!5472 = !DILocation(line: 271, column: 29, scope: !5457)
!5473 = !DILocation(line: 271, column: 27, scope: !5457)
!5474 = !DILocation(line: 271, column: 34, scope: !5457)
!5475 = !DILocation(line: 271, column: 32, scope: !5457)
!5476 = !DILocation(line: 271, column: 8, scope: !5457)
!5477 = !DILocation(line: 271, column: 41, scope: !5457)
!5478 = !DILocation(line: 271, column: 6, scope: !5457)
!5479 = !DILocation(line: 272, column: 20, scope: !5457)
!5480 = !DILocation(line: 272, column: 18, scope: !5457)
!5481 = !DILocation(line: 272, column: 24, scope: !5457)
!5482 = !DILocation(line: 272, column: 6, scope: !5457)
!5483 = !DILocation(line: 273, column: 20, scope: !5457)
!5484 = !DILocation(line: 273, column: 18, scope: !5457)
!5485 = !DILocation(line: 273, column: 28, scope: !5457)
!5486 = !DILocation(line: 273, column: 26, scope: !5457)
!5487 = !DILocation(line: 273, column: 31, scope: !5457)
!5488 = !DILocation(line: 273, column: 6, scope: !5457)
!5489 = !DILocation(line: 274, column: 20, scope: !5457)
!5490 = !DILocation(line: 274, column: 18, scope: !5457)
!5491 = !DILocation(line: 274, column: 27, scope: !5457)
!5492 = !DILocation(line: 274, column: 6, scope: !5457)
!5493 = !DILocation(line: 275, column: 20, scope: !5457)
!5494 = !DILocation(line: 275, column: 18, scope: !5457)
!5495 = !DILocation(line: 275, column: 23, scope: !5457)
!5496 = !DILocation(line: 275, column: 6, scope: !5457)
!5497 = !DILocation(line: 276, column: 6, scope: !5457)
!5498 = !DILocation(line: 277, column: 27, scope: !5457)
!5499 = !DILocation(line: 277, column: 30, scope: !5457)
!5500 = !DILocation(line: 277, column: 3, scope: !5457)
!5501 = !DILocation(line: 277, column: 10, scope: !5457)
!5502 = !DILocation(line: 277, column: 18, scope: !5457)
!5503 = !DILocation(line: 277, column: 25, scope: !5457)
!5504 = !DILocation(line: 278, column: 3, scope: !5457)
!5505 = !DILocation(line: 278, column: 10, scope: !5457)
!5506 = !DILocation(line: 278, column: 18, scope: !5457)
!5507 = !DILocation(line: 278, column: 24, scope: !5457)
!5508 = !DILocation(line: 279, column: 2, scope: !5457)
!5509 = !DILocation(line: 282, column: 11, scope: !5288)
!5510 = !DILocation(line: 282, column: 14, scope: !5288)
!5511 = !DILocation(line: 282, column: 8, scope: !5288)
!5512 = !DILocation(line: 283, column: 9, scope: !5288)
!5513 = !DILocation(line: 283, column: 2, scope: !5288)
!5514 = !DILocation(line: 284, column: 15, scope: !5288)
!5515 = !DILocation(line: 284, column: 2, scope: !5288)
!5516 = !DILocation(line: 284, column: 9, scope: !5288)
!5517 = !DILocation(line: 284, column: 13, scope: !5288)
!5518 = !DILocation(line: 285, column: 17, scope: !5288)
!5519 = !DILocation(line: 285, column: 30, scope: !5288)
!5520 = !DILocation(line: 285, column: 8, scope: !5288)
!5521 = !DILocation(line: 285, column: 6, scope: !5288)
!5522 = !DILocation(line: 286, column: 6, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5288, file: !3, line: 286, column: 6)
!5524 = !DILocation(line: 286, column: 10, scope: !5523)
!5525 = !DILocation(line: 286, column: 6, scope: !5288)
!5526 = !DILocation(line: 287, column: 10, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5523, file: !3, line: 287, column: 3)
!5528 = !DILocation(line: 287, column: 8, scope: !5527)
!5529 = !DILocation(line: 287, column: 15, scope: !5530)
!5530 = distinct !DILexicalBlock(scope: !5527, file: !3, line: 287, column: 3)
!5531 = !DILocation(line: 287, column: 19, scope: !5530)
!5532 = !DILocation(line: 287, column: 17, scope: !5530)
!5533 = !DILocation(line: 287, column: 3, scope: !5527)
!5534 = !DILocation(line: 288, column: 4, scope: !5530)
!5535 = !DILocation(line: 288, column: 11, scope: !5530)
!5536 = !DILocation(line: 288, column: 16, scope: !5530)
!5537 = !DILocation(line: 288, column: 19, scope: !5530)
!5538 = !DILocation(line: 288, column: 25, scope: !5530)
!5539 = !DILocation(line: 287, column: 28, scope: !5530)
!5540 = !DILocation(line: 287, column: 3, scope: !5530)
!5541 = distinct !{!5541, !5533, !5542}
!5542 = !DILocation(line: 288, column: 27, scope: !5527)
!5543 = !DILocation(line: 290, column: 10, scope: !5544)
!5544 = distinct !DILexicalBlock(scope: !5545, file: !3, line: 290, column: 3)
!5545 = distinct !DILexicalBlock(scope: !5523, file: !3, line: 289, column: 7)
!5546 = !DILocation(line: 290, column: 8, scope: !5544)
!5547 = !DILocation(line: 290, column: 15, scope: !5548)
!5548 = distinct !DILexicalBlock(scope: !5544, file: !3, line: 290, column: 3)
!5549 = !DILocation(line: 290, column: 19, scope: !5548)
!5550 = !DILocation(line: 290, column: 17, scope: !5548)
!5551 = !DILocation(line: 290, column: 3, scope: !5544)
!5552 = !DILocation(line: 291, column: 4, scope: !5553)
!5553 = distinct !DILexicalBlock(scope: !5548, file: !3, line: 290, column: 32)
!5554 = !DILocation(line: 291, column: 11, scope: !5553)
!5555 = !DILocation(line: 291, column: 16, scope: !5553)
!5556 = !DILocation(line: 291, column: 19, scope: !5553)
!5557 = !DILocation(line: 291, column: 25, scope: !5553)
!5558 = !DILocation(line: 292, column: 32, scope: !5553)
!5559 = !DILocation(line: 292, column: 34, scope: !5553)
!5560 = !DILocation(line: 292, column: 28, scope: !5553)
!5561 = !DILocation(line: 292, column: 39, scope: !5553)
!5562 = !DILocation(line: 293, column: 11, scope: !5553)
!5563 = !DILocation(line: 293, column: 13, scope: !5553)
!5564 = !DILocation(line: 293, column: 17, scope: !5553)
!5565 = !DILocation(line: 293, column: 7, scope: !5553)
!5566 = !DILocation(line: 293, column: 22, scope: !5553)
!5567 = !DILocation(line: 293, column: 5, scope: !5553)
!5568 = !DILocation(line: 293, column: 33, scope: !5553)
!5569 = !DILocation(line: 293, column: 35, scope: !5553)
!5570 = !DILocation(line: 293, column: 39, scope: !5553)
!5571 = !DILocation(line: 293, column: 29, scope: !5553)
!5572 = !DILocation(line: 293, column: 27, scope: !5553)
!5573 = !DILocation(line: 292, column: 4, scope: !5553)
!5574 = !DILocation(line: 292, column: 11, scope: !5553)
!5575 = !DILocation(line: 292, column: 16, scope: !5553)
!5576 = !DILocation(line: 292, column: 19, scope: !5553)
!5577 = !DILocation(line: 292, column: 26, scope: !5553)
!5578 = !DILocation(line: 294, column: 3, scope: !5553)
!5579 = !DILocation(line: 290, column: 28, scope: !5548)
!5580 = !DILocation(line: 290, column: 3, scope: !5548)
!5581 = distinct !{!5581, !5551, !5582}
!5582 = !DILocation(line: 294, column: 3, scope: !5544)
!5583 = !DILocation(line: 296, column: 11, scope: !5288)
!5584 = !DILocation(line: 296, column: 14, scope: !5288)
!5585 = !DILocation(line: 296, column: 8, scope: !5288)
!5586 = !DILocation(line: 297, column: 9, scope: !5288)
!5587 = !DILocation(line: 297, column: 2, scope: !5288)
!5588 = !DILocation(line: 298, column: 15, scope: !5288)
!5589 = !DILocation(line: 298, column: 2, scope: !5288)
!5590 = !DILocation(line: 298, column: 9, scope: !5288)
!5591 = !DILocation(line: 298, column: 13, scope: !5288)
!5592 = !DILocation(line: 299, column: 6, scope: !5593)
!5593 = distinct !DILexicalBlock(scope: !5288, file: !3, line: 299, column: 6)
!5594 = !DILocation(line: 299, column: 10, scope: !5593)
!5595 = !DILocation(line: 299, column: 6, scope: !5288)
!5596 = !DILocation(line: 300, column: 10, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5593, file: !3, line: 300, column: 3)
!5598 = !DILocation(line: 300, column: 8, scope: !5597)
!5599 = !DILocation(line: 300, column: 15, scope: !5600)
!5600 = distinct !DILexicalBlock(scope: !5597, file: !3, line: 300, column: 3)
!5601 = !DILocation(line: 300, column: 19, scope: !5600)
!5602 = !DILocation(line: 300, column: 17, scope: !5600)
!5603 = !DILocation(line: 300, column: 3, scope: !5597)
!5604 = !DILocation(line: 301, column: 4, scope: !5600)
!5605 = !DILocation(line: 301, column: 11, scope: !5600)
!5606 = !DILocation(line: 301, column: 16, scope: !5600)
!5607 = !DILocation(line: 301, column: 19, scope: !5600)
!5608 = !DILocation(line: 301, column: 25, scope: !5600)
!5609 = !DILocation(line: 300, column: 28, scope: !5600)
!5610 = !DILocation(line: 300, column: 3, scope: !5600)
!5611 = distinct !{!5611, !5603, !5612}
!5612 = !DILocation(line: 301, column: 27, scope: !5597)
!5613 = !DILocation(line: 303, column: 10, scope: !5614)
!5614 = distinct !DILexicalBlock(scope: !5615, file: !3, line: 303, column: 3)
!5615 = distinct !DILexicalBlock(scope: !5593, file: !3, line: 302, column: 7)
!5616 = !DILocation(line: 303, column: 8, scope: !5614)
!5617 = !DILocation(line: 303, column: 15, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5614, file: !3, line: 303, column: 3)
!5619 = !DILocation(line: 303, column: 19, scope: !5618)
!5620 = !DILocation(line: 303, column: 17, scope: !5618)
!5621 = !DILocation(line: 303, column: 3, scope: !5614)
!5622 = !DILocation(line: 304, column: 4, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !5618, file: !3, line: 303, column: 32)
!5624 = !DILocation(line: 304, column: 11, scope: !5623)
!5625 = !DILocation(line: 304, column: 16, scope: !5623)
!5626 = !DILocation(line: 304, column: 19, scope: !5623)
!5627 = !DILocation(line: 304, column: 25, scope: !5623)
!5628 = !DILocation(line: 306, column: 9, scope: !5623)
!5629 = !DILocation(line: 306, column: 11, scope: !5623)
!5630 = !DILocation(line: 306, column: 15, scope: !5623)
!5631 = !DILocation(line: 306, column: 5, scope: !5623)
!5632 = !DILocation(line: 306, column: 20, scope: !5623)
!5633 = !DILocation(line: 306, column: 31, scope: !5623)
!5634 = !DILocation(line: 306, column: 33, scope: !5623)
!5635 = !DILocation(line: 306, column: 37, scope: !5623)
!5636 = !DILocation(line: 306, column: 27, scope: !5623)
!5637 = !DILocation(line: 306, column: 25, scope: !5623)
!5638 = !DILocation(line: 305, column: 4, scope: !5623)
!5639 = !DILocation(line: 305, column: 11, scope: !5623)
!5640 = !DILocation(line: 305, column: 16, scope: !5623)
!5641 = !DILocation(line: 305, column: 19, scope: !5623)
!5642 = !DILocation(line: 305, column: 26, scope: !5623)
!5643 = !DILocation(line: 307, column: 4, scope: !5623)
!5644 = !DILocation(line: 307, column: 11, scope: !5623)
!5645 = !DILocation(line: 307, column: 16, scope: !5623)
!5646 = !DILocation(line: 307, column: 19, scope: !5623)
!5647 = !DILocation(line: 307, column: 26, scope: !5623)
!5648 = !DILocation(line: 308, column: 3, scope: !5623)
!5649 = !DILocation(line: 303, column: 28, scope: !5618)
!5650 = !DILocation(line: 303, column: 3, scope: !5618)
!5651 = distinct !{!5651, !5621, !5652}
!5652 = !DILocation(line: 308, column: 3, scope: !5614)
!5653 = !DILocation(line: 311, column: 2, scope: !5288)
!5654 = distinct !DISubprogram(name: "tc90522s_read_status", scope: !3, file: !3, line: 124, type: !506, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!5655 = !DILocalVariable(name: "fe", arg: 1, scope: !5654, file: !3, line: 124, type: !337)
!5656 = !DILocation(line: 124, column: 54, scope: !5654)
!5657 = !DILocalVariable(name: "status", arg: 2, scope: !5654, file: !3, line: 124, type: !403)
!5658 = !DILocation(line: 124, column: 74, scope: !5654)
!5659 = !DILocalVariable(name: "state", scope: !5654, file: !3, line: 126, type: !329)
!5660 = !DILocation(line: 126, column: 24, scope: !5654)
!5661 = !DILocalVariable(name: "ret", scope: !5654, file: !3, line: 127, type: !328)
!5662 = !DILocation(line: 127, column: 6, scope: !5654)
!5663 = !DILocalVariable(name: "reg", scope: !5654, file: !3, line: 128, type: !323)
!5664 = !DILocation(line: 128, column: 5, scope: !5654)
!5665 = !DILocation(line: 130, column: 10, scope: !5654)
!5666 = !DILocation(line: 130, column: 14, scope: !5654)
!5667 = !DILocation(line: 130, column: 8, scope: !5654)
!5668 = !DILocation(line: 131, column: 17, scope: !5654)
!5669 = !DILocation(line: 131, column: 8, scope: !5654)
!5670 = !DILocation(line: 131, column: 6, scope: !5654)
!5671 = !DILocation(line: 132, column: 6, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5654, file: !3, line: 132, column: 6)
!5673 = !DILocation(line: 132, column: 10, scope: !5672)
!5674 = !DILocation(line: 132, column: 6, scope: !5654)
!5675 = !DILocation(line: 133, column: 10, scope: !5672)
!5676 = !DILocation(line: 133, column: 3, scope: !5672)
!5677 = !DILocation(line: 135, column: 3, scope: !5654)
!5678 = !DILocation(line: 135, column: 10, scope: !5654)
!5679 = !DILocation(line: 136, column: 6, scope: !5680)
!5680 = distinct !DILexicalBlock(scope: !5654, file: !3, line: 136, column: 6)
!5681 = !DILocation(line: 136, column: 10, scope: !5680)
!5682 = !DILocation(line: 136, column: 6, scope: !5654)
!5683 = !DILocation(line: 137, column: 3, scope: !5680)
!5684 = !DILocation(line: 138, column: 3, scope: !5654)
!5685 = !DILocation(line: 138, column: 10, scope: !5654)
!5686 = !DILocation(line: 140, column: 6, scope: !5687)
!5687 = distinct !DILexicalBlock(scope: !5654, file: !3, line: 140, column: 6)
!5688 = !DILocation(line: 140, column: 10, scope: !5687)
!5689 = !DILocation(line: 140, column: 6, scope: !5654)
!5690 = !DILocation(line: 141, column: 3, scope: !5687)
!5691 = !DILocation(line: 142, column: 3, scope: !5654)
!5692 = !DILocation(line: 142, column: 10, scope: !5654)
!5693 = !DILocation(line: 144, column: 6, scope: !5694)
!5694 = distinct !DILexicalBlock(scope: !5654, file: !3, line: 144, column: 6)
!5695 = !DILocation(line: 144, column: 10, scope: !5694)
!5696 = !DILocation(line: 144, column: 6, scope: !5654)
!5697 = !DILocation(line: 145, column: 3, scope: !5694)
!5698 = !DILocation(line: 146, column: 15, scope: !5699)
!5699 = distinct !DILexicalBlock(scope: !5654, file: !3, line: 146, column: 6)
!5700 = !DILocation(line: 146, column: 6, scope: !5699)
!5701 = !DILocation(line: 146, column: 37, scope: !5699)
!5702 = !DILocation(line: 146, column: 41, scope: !5699)
!5703 = !DILocation(line: 146, column: 46, scope: !5699)
!5704 = !DILocation(line: 146, column: 50, scope: !5699)
!5705 = !DILocation(line: 146, column: 6, scope: !5654)
!5706 = !DILocation(line: 147, column: 3, scope: !5699)
!5707 = !DILocation(line: 148, column: 3, scope: !5654)
!5708 = !DILocation(line: 148, column: 10, scope: !5654)
!5709 = !DILocation(line: 149, column: 2, scope: !5654)
!5710 = !DILocation(line: 150, column: 1, scope: !5654)
!5711 = distinct !DISubprogram(name: "reg_write", scope: !3, file: !3, line: 46, type: !5712, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!5712 = !DISubroutineType(types: !5713)
!5713 = !{!328, !329, !5714, !328}
!5714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!5715 = !DILocalVariable(name: "state", arg: 1, scope: !5711, file: !3, line: 46, type: !329)
!5716 = !DILocation(line: 46, column: 33, scope: !5711)
!5717 = !DILocalVariable(name: "regs", arg: 2, scope: !5711, file: !3, line: 46, type: !5714)
!5718 = !DILocation(line: 46, column: 62, scope: !5711)
!5719 = !DILocalVariable(name: "num", arg: 3, scope: !5711, file: !3, line: 46, type: !328)
!5720 = !DILocation(line: 46, column: 72, scope: !5711)
!5721 = !DILocalVariable(name: "i", scope: !5711, file: !3, line: 48, type: !328)
!5722 = !DILocation(line: 48, column: 6, scope: !5711)
!5723 = !DILocalVariable(name: "ret", scope: !5711, file: !3, line: 48, type: !328)
!5724 = !DILocation(line: 48, column: 9, scope: !5711)
!5725 = !DILocalVariable(name: "msg", scope: !5711, file: !3, line: 49, type: !4258)
!5726 = !DILocation(line: 49, column: 17, scope: !5711)
!5727 = !DILocation(line: 51, column: 6, scope: !5711)
!5728 = !DILocation(line: 52, column: 13, scope: !5711)
!5729 = !DILocation(line: 52, column: 20, scope: !5711)
!5730 = !DILocation(line: 52, column: 32, scope: !5711)
!5731 = !DILocation(line: 52, column: 6, scope: !5711)
!5732 = !DILocation(line: 52, column: 11, scope: !5711)
!5733 = !DILocation(line: 53, column: 6, scope: !5711)
!5734 = !DILocation(line: 53, column: 12, scope: !5711)
!5735 = !DILocation(line: 54, column: 6, scope: !5711)
!5736 = !DILocation(line: 54, column: 10, scope: !5711)
!5737 = !DILocation(line: 55, column: 9, scope: !5738)
!5738 = distinct !DILexicalBlock(scope: !5711, file: !3, line: 55, column: 2)
!5739 = !DILocation(line: 55, column: 7, scope: !5738)
!5740 = !DILocation(line: 55, column: 14, scope: !5741)
!5741 = distinct !DILexicalBlock(scope: !5738, file: !3, line: 55, column: 2)
!5742 = !DILocation(line: 55, column: 18, scope: !5741)
!5743 = !DILocation(line: 55, column: 16, scope: !5741)
!5744 = !DILocation(line: 55, column: 2, scope: !5738)
!5745 = !DILocation(line: 56, column: 20, scope: !5746)
!5746 = distinct !DILexicalBlock(scope: !5741, file: !3, line: 55, column: 28)
!5747 = !DILocation(line: 56, column: 25, scope: !5746)
!5748 = !DILocation(line: 56, column: 13, scope: !5746)
!5749 = !DILocation(line: 56, column: 7, scope: !5746)
!5750 = !DILocation(line: 56, column: 11, scope: !5746)
!5751 = !DILocation(line: 57, column: 22, scope: !5746)
!5752 = !DILocation(line: 57, column: 29, scope: !5746)
!5753 = !DILocation(line: 57, column: 41, scope: !5746)
!5754 = !DILocation(line: 57, column: 9, scope: !5746)
!5755 = !DILocation(line: 57, column: 7, scope: !5746)
!5756 = !DILocation(line: 58, column: 7, scope: !5757)
!5757 = distinct !DILexicalBlock(scope: !5746, file: !3, line: 58, column: 7)
!5758 = !DILocation(line: 58, column: 11, scope: !5757)
!5759 = !DILocation(line: 58, column: 7, scope: !5746)
!5760 = !DILocation(line: 59, column: 8, scope: !5757)
!5761 = !DILocation(line: 59, column: 4, scope: !5757)
!5762 = !DILocation(line: 60, column: 7, scope: !5763)
!5763 = distinct !DILexicalBlock(scope: !5746, file: !3, line: 60, column: 7)
!5764 = !DILocation(line: 60, column: 11, scope: !5763)
!5765 = !DILocation(line: 60, column: 7, scope: !5746)
!5766 = !DILocation(line: 61, column: 11, scope: !5763)
!5767 = !DILocation(line: 61, column: 4, scope: !5763)
!5768 = !DILocation(line: 62, column: 2, scope: !5746)
!5769 = !DILocation(line: 55, column: 24, scope: !5741)
!5770 = !DILocation(line: 55, column: 2, scope: !5741)
!5771 = distinct !{!5771, !5744, !5772}
!5772 = !DILocation(line: 62, column: 2, scope: !5738)
!5773 = !DILocation(line: 63, column: 2, scope: !5711)
!5774 = !DILocation(line: 64, column: 1, scope: !5711)
!5775 = distinct !DISubprogram(name: "tc90522_set_if_agc", scope: !3, file: !3, line: 528, type: !5776, scopeLine: 529, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!5776 = !DISubroutineType(types: !5777)
!5777 = !{!328, !337, !400}
!5778 = !DILocalVariable(name: "fe", arg: 1, scope: !5775, file: !3, line: 528, type: !337)
!5779 = !DILocation(line: 528, column: 52, scope: !5775)
!5780 = !DILocalVariable(name: "on", arg: 2, scope: !5775, file: !3, line: 528, type: !400)
!5781 = !DILocation(line: 528, column: 61, scope: !5775)
!5782 = !DILocalVariable(name: "agc_sat", scope: !5775, file: !3, line: 530, type: !5783)
!5783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4506, size: 64, elements: !495)
!5784 = !DILocation(line: 530, column: 17, scope: !5775)
!5785 = !DILocalVariable(name: "agc_ter", scope: !5775, file: !3, line: 536, type: !5786)
!5786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4506, size: 48, elements: !457)
!5787 = !DILocation(line: 536, column: 17, scope: !5775)
!5788 = !DILocalVariable(name: "state", scope: !5775, file: !3, line: 541, type: !329)
!5789 = !DILocation(line: 541, column: 24, scope: !5775)
!5790 = !DILocalVariable(name: "rv", scope: !5775, file: !3, line: 542, type: !5791)
!5791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!5792 = !DILocation(line: 542, column: 18, scope: !5775)
!5793 = !DILocalVariable(name: "num", scope: !5775, file: !3, line: 543, type: !328)
!5794 = !DILocation(line: 543, column: 6, scope: !5775)
!5795 = !DILocation(line: 545, column: 10, scope: !5775)
!5796 = !DILocation(line: 545, column: 14, scope: !5775)
!5797 = !DILocation(line: 545, column: 8, scope: !5775)
!5798 = !DILocation(line: 546, column: 6, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5775, file: !3, line: 546, column: 6)
!5800 = !DILocation(line: 546, column: 10, scope: !5799)
!5801 = !DILocation(line: 546, column: 14, scope: !5799)
!5802 = !DILocation(line: 546, column: 24, scope: !5799)
!5803 = !DILocation(line: 546, column: 6, scope: !5775)
!5804 = !DILocation(line: 547, column: 20, scope: !5805)
!5805 = distinct !DILexicalBlock(scope: !5799, file: !3, line: 546, column: 38)
!5806 = !DILocation(line: 547, column: 3, scope: !5805)
!5807 = !DILocation(line: 547, column: 14, scope: !5805)
!5808 = !DILocation(line: 547, column: 18, scope: !5805)
!5809 = !DILocation(line: 548, column: 3, scope: !5805)
!5810 = !DILocation(line: 548, column: 14, scope: !5805)
!5811 = !DILocation(line: 548, column: 18, scope: !5805)
!5812 = !DILocation(line: 549, column: 21, scope: !5805)
!5813 = !DILocation(line: 549, column: 3, scope: !5805)
!5814 = !DILocation(line: 549, column: 14, scope: !5805)
!5815 = !DILocation(line: 549, column: 18, scope: !5805)
!5816 = !DILocation(line: 550, column: 21, scope: !5805)
!5817 = !DILocation(line: 550, column: 3, scope: !5805)
!5818 = !DILocation(line: 550, column: 14, scope: !5805)
!5819 = !DILocation(line: 550, column: 18, scope: !5805)
!5820 = !DILocation(line: 551, column: 8, scope: !5805)
!5821 = !DILocation(line: 551, column: 6, scope: !5805)
!5822 = !DILocation(line: 552, column: 7, scope: !5805)
!5823 = !DILocation(line: 553, column: 2, scope: !5805)
!5824 = !DILocation(line: 554, column: 20, scope: !5825)
!5825 = distinct !DILexicalBlock(scope: !5799, file: !3, line: 553, column: 9)
!5826 = !DILocation(line: 554, column: 3, scope: !5825)
!5827 = !DILocation(line: 554, column: 14, scope: !5825)
!5828 = !DILocation(line: 554, column: 18, scope: !5825)
!5829 = !DILocation(line: 555, column: 21, scope: !5825)
!5830 = !DILocation(line: 555, column: 3, scope: !5825)
!5831 = !DILocation(line: 555, column: 14, scope: !5825)
!5832 = !DILocation(line: 555, column: 18, scope: !5825)
!5833 = !DILocation(line: 556, column: 8, scope: !5825)
!5834 = !DILocation(line: 556, column: 6, scope: !5825)
!5835 = !DILocation(line: 557, column: 7, scope: !5825)
!5836 = !DILocation(line: 559, column: 19, scope: !5775)
!5837 = !DILocation(line: 559, column: 26, scope: !5775)
!5838 = !DILocation(line: 559, column: 30, scope: !5775)
!5839 = !DILocation(line: 559, column: 9, scope: !5775)
!5840 = !DILocation(line: 559, column: 2, scope: !5775)
!5841 = distinct !DISubprogram(name: "tc90522s_set_tsid", scope: !3, file: !3, line: 98, type: !387, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!5842 = !DILocalVariable(name: "fe", arg: 1, scope: !5841, file: !3, line: 98, type: !337)
!5843 = !DILocation(line: 98, column: 51, scope: !5841)
!5844 = !DILocalVariable(name: "set_tsid", scope: !5841, file: !3, line: 100, type: !5845)
!5845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4506, size: 32, elements: !1913)
!5846 = !DILocation(line: 100, column: 17, scope: !5841)
!5847 = !DILocation(line: 105, column: 21, scope: !5841)
!5848 = !DILocation(line: 105, column: 25, scope: !5841)
!5849 = !DILocation(line: 105, column: 44, scope: !5841)
!5850 = !DILocation(line: 105, column: 54, scope: !5841)
!5851 = !DILocation(line: 105, column: 64, scope: !5841)
!5852 = !DILocation(line: 105, column: 20, scope: !5841)
!5853 = !DILocation(line: 105, column: 2, scope: !5841)
!5854 = !DILocation(line: 105, column: 14, scope: !5841)
!5855 = !DILocation(line: 105, column: 18, scope: !5841)
!5856 = !DILocation(line: 106, column: 20, scope: !5841)
!5857 = !DILocation(line: 106, column: 24, scope: !5841)
!5858 = !DILocation(line: 106, column: 43, scope: !5841)
!5859 = !DILocation(line: 106, column: 53, scope: !5841)
!5860 = !DILocation(line: 106, column: 2, scope: !5841)
!5861 = !DILocation(line: 106, column: 14, scope: !5841)
!5862 = !DILocation(line: 106, column: 18, scope: !5841)
!5863 = !DILocation(line: 107, column: 19, scope: !5841)
!5864 = !DILocation(line: 107, column: 23, scope: !5841)
!5865 = !DILocation(line: 107, column: 41, scope: !5841)
!5866 = !DILocation(line: 107, column: 9, scope: !5841)
!5867 = !DILocation(line: 107, column: 2, scope: !5841)
!5868 = distinct !DISubprogram(name: "tc90522t_set_layers", scope: !3, file: !3, line: 110, type: !387, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!5869 = !DILocalVariable(name: "fe", arg: 1, scope: !5868, file: !3, line: 110, type: !337)
!5870 = !DILocation(line: 110, column: 53, scope: !5868)
!5871 = !DILocalVariable(name: "rv", scope: !5868, file: !3, line: 112, type: !4506)
!5872 = !DILocation(line: 112, column: 17, scope: !5868)
!5873 = !DILocalVariable(name: "laysel", scope: !5868, file: !3, line: 113, type: !323)
!5874 = !DILocation(line: 113, column: 5, scope: !5868)
!5875 = !DILocation(line: 115, column: 12, scope: !5868)
!5876 = !DILocation(line: 115, column: 16, scope: !5868)
!5877 = !DILocation(line: 115, column: 35, scope: !5868)
!5878 = !DILocation(line: 115, column: 11, scope: !5868)
!5879 = !DILocation(line: 115, column: 55, scope: !5868)
!5880 = !DILocation(line: 115, column: 9, scope: !5868)
!5881 = !DILocation(line: 116, column: 12, scope: !5868)
!5882 = !DILocation(line: 116, column: 19, scope: !5868)
!5883 = !DILocation(line: 116, column: 27, scope: !5868)
!5884 = !DILocation(line: 116, column: 35, scope: !5868)
!5885 = !DILocation(line: 116, column: 42, scope: !5868)
!5886 = !DILocation(line: 116, column: 32, scope: !5868)
!5887 = !DILocation(line: 116, column: 53, scope: !5868)
!5888 = !DILocation(line: 116, column: 60, scope: !5868)
!5889 = !DILocation(line: 116, column: 68, scope: !5868)
!5890 = !DILocation(line: 116, column: 50, scope: !5868)
!5891 = !DILocation(line: 116, column: 11, scope: !5868)
!5892 = !DILocation(line: 116, column: 9, scope: !5868)
!5893 = !DILocation(line: 117, column: 5, scope: !5868)
!5894 = !DILocation(line: 117, column: 9, scope: !5868)
!5895 = !DILocation(line: 118, column: 11, scope: !5868)
!5896 = !DILocation(line: 118, column: 5, scope: !5868)
!5897 = !DILocation(line: 118, column: 9, scope: !5868)
!5898 = !DILocation(line: 119, column: 19, scope: !5868)
!5899 = !DILocation(line: 119, column: 23, scope: !5868)
!5900 = !DILocation(line: 119, column: 9, scope: !5868)
!5901 = !DILocation(line: 119, column: 2, scope: !5868)
!5902 = distinct !DISubprogram(name: "reg_read", scope: !3, file: !3, line: 66, type: !5903, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!5903 = !DISubroutineType(types: !5904)
!5904 = !{!328, !329, !323, !322, !323}
!5905 = !DILocalVariable(name: "state", arg: 1, scope: !5902, file: !3, line: 66, type: !329)
!5906 = !DILocation(line: 66, column: 43, scope: !5902)
!5907 = !DILocalVariable(name: "reg", arg: 2, scope: !5902, file: !3, line: 66, type: !323)
!5908 = !DILocation(line: 66, column: 53, scope: !5902)
!5909 = !DILocalVariable(name: "val", arg: 3, scope: !5902, file: !3, line: 66, type: !322)
!5910 = !DILocation(line: 66, column: 62, scope: !5902)
!5911 = !DILocalVariable(name: "len", arg: 4, scope: !5902, file: !3, line: 66, type: !323)
!5912 = !DILocation(line: 66, column: 70, scope: !5902)
!5913 = !DILocalVariable(name: "msgs", scope: !5902, file: !3, line: 68, type: !5914)
!5914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4258, size: 256, elements: !1913)
!5915 = !DILocation(line: 68, column: 17, scope: !5902)
!5916 = !DILocation(line: 68, column: 27, scope: !5902)
!5917 = !DILocation(line: 69, column: 3, scope: !5902)
!5918 = !DILocation(line: 70, column: 12, scope: !5902)
!5919 = !DILocation(line: 70, column: 19, scope: !5902)
!5920 = !DILocation(line: 70, column: 31, scope: !5902)
!5921 = !DILocation(line: 75, column: 3, scope: !5902)
!5922 = !DILocation(line: 76, column: 12, scope: !5902)
!5923 = !DILocation(line: 76, column: 19, scope: !5902)
!5924 = !DILocation(line: 76, column: 31, scope: !5902)
!5925 = !DILocation(line: 79, column: 11, scope: !5902)
!5926 = !DILocation(line: 78, column: 11, scope: !5902)
!5927 = !DILocalVariable(name: "ret", scope: !5902, file: !3, line: 82, type: !328)
!5928 = !DILocation(line: 82, column: 6, scope: !5902)
!5929 = !DILocation(line: 84, column: 21, scope: !5902)
!5930 = !DILocation(line: 84, column: 28, scope: !5902)
!5931 = !DILocation(line: 84, column: 40, scope: !5902)
!5932 = !DILocation(line: 84, column: 49, scope: !5902)
!5933 = !DILocation(line: 84, column: 8, scope: !5902)
!5934 = !DILocation(line: 84, column: 6, scope: !5902)
!5935 = !DILocation(line: 85, column: 6, scope: !5936)
!5936 = distinct !DILexicalBlock(scope: !5902, file: !3, line: 85, column: 6)
!5937 = !DILocation(line: 85, column: 10, scope: !5936)
!5938 = !DILocation(line: 85, column: 6, scope: !5902)
!5939 = !DILocation(line: 86, column: 7, scope: !5936)
!5940 = !DILocation(line: 86, column: 3, scope: !5936)
!5941 = !DILocation(line: 87, column: 11, scope: !5942)
!5942 = distinct !DILexicalBlock(scope: !5936, file: !3, line: 87, column: 11)
!5943 = !DILocation(line: 87, column: 15, scope: !5942)
!5944 = !DILocation(line: 87, column: 11, scope: !5936)
!5945 = !DILocation(line: 88, column: 7, scope: !5942)
!5946 = !DILocation(line: 88, column: 3, scope: !5942)
!5947 = !DILocation(line: 89, column: 9, scope: !5902)
!5948 = !DILocation(line: 89, column: 2, scope: !5902)
!5949 = distinct !DISubprogram(name: "div64_s64", scope: !5950, file: !5950, line: 78, type: !5951, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!5950 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/lizy2001/genbc/linux")
!5951 = !DISubroutineType(types: !5952)
!5952 = !{!1212, !1212, !1212}
!5953 = !DILocalVariable(name: "dividend", arg: 1, scope: !5949, file: !5950, line: 78, type: !1212)
!5954 = !DILocation(line: 78, column: 33, scope: !5949)
!5955 = !DILocalVariable(name: "divisor", arg: 2, scope: !5949, file: !5950, line: 78, type: !1212)
!5956 = !DILocation(line: 78, column: 47, scope: !5949)
!5957 = !DILocation(line: 80, column: 9, scope: !5949)
!5958 = !DILocation(line: 80, column: 20, scope: !5949)
!5959 = !DILocation(line: 80, column: 18, scope: !5949)
!5960 = !DILocation(line: 80, column: 2, scope: !5949)
!5961 = distinct !DISubprogram(name: "tc90522t_get_frontend", scope: !3, file: !3, line: 330, type: !421, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!5962 = !DILocalVariable(name: "fe", arg: 1, scope: !5961, file: !3, line: 330, type: !337)
!5963 = !DILocation(line: 330, column: 55, scope: !5961)
!5964 = !DILocalVariable(name: "c", arg: 2, scope: !5961, file: !3, line: 331, type: !423)
!5965 = !DILocation(line: 331, column: 38, scope: !5961)
!5966 = !DILocalVariable(name: "state", scope: !5961, file: !3, line: 333, type: !329)
!5967 = !DILocation(line: 333, column: 24, scope: !5961)
!5968 = !DILocalVariable(name: "stats", scope: !5961, file: !3, line: 334, type: !5296)
!5969 = !DILocation(line: 334, column: 23, scope: !5961)
!5970 = !DILocalVariable(name: "ret", scope: !5961, file: !3, line: 335, type: !328)
!5971 = !DILocation(line: 335, column: 6, scope: !5961)
!5972 = !DILocalVariable(name: "i", scope: !5961, file: !3, line: 335, type: !328)
!5973 = !DILocation(line: 335, column: 11, scope: !5961)
!5974 = !DILocalVariable(name: "layers", scope: !5961, file: !3, line: 336, type: !328)
!5975 = !DILocation(line: 336, column: 6, scope: !5961)
!5976 = !DILocalVariable(name: "val", scope: !5961, file: !3, line: 337, type: !5977)
!5977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 120, elements: !5978)
!5978 = !{!5979}
!5979 = !DISubrange(count: 15)
!5980 = !DILocation(line: 337, column: 5, scope: !5961)
!5981 = !DILocalVariable(name: "mode", scope: !5961, file: !3, line: 337, type: !323)
!5982 = !DILocation(line: 337, column: 14, scope: !5961)
!5983 = !DILocalVariable(name: "cndat", scope: !5961, file: !3, line: 338, type: !366)
!5984 = !DILocation(line: 338, column: 6, scope: !5961)
!5985 = !DILocation(line: 340, column: 10, scope: !5961)
!5986 = !DILocation(line: 340, column: 14, scope: !5961)
!5987 = !DILocation(line: 340, column: 8, scope: !5961)
!5988 = !DILocation(line: 341, column: 2, scope: !5961)
!5989 = !DILocation(line: 341, column: 5, scope: !5961)
!5990 = !DILocation(line: 341, column: 21, scope: !5961)
!5991 = !DILocation(line: 342, column: 2, scope: !5961)
!5992 = !DILocation(line: 342, column: 5, scope: !5961)
!5993 = !DILocation(line: 342, column: 18, scope: !5961)
!5994 = !DILocation(line: 343, column: 7, scope: !5961)
!5995 = !DILocation(line: 344, column: 17, scope: !5961)
!5996 = !DILocation(line: 344, column: 30, scope: !5961)
!5997 = !DILocation(line: 344, column: 8, scope: !5961)
!5998 = !DILocation(line: 344, column: 6, scope: !5961)
!5999 = !DILocation(line: 345, column: 6, scope: !6000)
!6000 = distinct !DILexicalBlock(scope: !5961, file: !3, line: 345, column: 6)
!6001 = !DILocation(line: 345, column: 10, scope: !6000)
!6002 = !DILocation(line: 345, column: 6, scope: !5961)
!6003 = !DILocation(line: 346, column: 11, scope: !6004)
!6004 = distinct !DILexicalBlock(scope: !6000, file: !3, line: 345, column: 16)
!6005 = !DILocation(line: 346, column: 18, scope: !6004)
!6006 = !DILocation(line: 346, column: 26, scope: !6004)
!6007 = !DILocation(line: 346, column: 10, scope: !6004)
!6008 = !DILocation(line: 346, column: 8, scope: !6004)
!6009 = !DILocation(line: 347, column: 34, scope: !6004)
!6010 = !DILocation(line: 347, column: 26, scope: !6004)
!6011 = !DILocation(line: 347, column: 3, scope: !6004)
!6012 = !DILocation(line: 347, column: 6, scope: !6004)
!6013 = !DILocation(line: 347, column: 24, scope: !6004)
!6014 = !DILocation(line: 348, column: 24, scope: !6004)
!6015 = !DILocation(line: 348, column: 31, scope: !6004)
!6016 = !DILocation(line: 348, column: 39, scope: !6004)
!6017 = !DILocation(line: 348, column: 3, scope: !6004)
!6018 = !DILocation(line: 348, column: 6, scope: !6004)
!6019 = !DILocation(line: 348, column: 21, scope: !6004)
!6020 = !DILocation(line: 349, column: 2, scope: !6004)
!6021 = !DILocation(line: 351, column: 17, scope: !5961)
!6022 = !DILocation(line: 351, column: 30, scope: !5961)
!6023 = !DILocation(line: 351, column: 8, scope: !5961)
!6024 = !DILocation(line: 351, column: 6, scope: !5961)
!6025 = !DILocation(line: 352, column: 9, scope: !5961)
!6026 = !DILocation(line: 353, column: 6, scope: !6027)
!6027 = distinct !DILexicalBlock(scope: !5961, file: !3, line: 353, column: 6)
!6028 = !DILocation(line: 353, column: 10, scope: !6027)
!6029 = !DILocation(line: 353, column: 6, scope: !5961)
!6030 = !DILocalVariable(name: "v", scope: !6031, file: !3, line: 354, type: !323)
!6031 = distinct !DILexicalBlock(scope: !6027, file: !3, line: 353, column: 16)
!6032 = !DILocation(line: 354, column: 6, scope: !6031)
!6033 = !DILocation(line: 356, column: 32, scope: !6031)
!6034 = !DILocation(line: 356, column: 39, scope: !6031)
!6035 = !DILocation(line: 356, column: 3, scope: !6031)
!6036 = !DILocation(line: 356, column: 6, scope: !6031)
!6037 = !DILocation(line: 356, column: 30, scope: !6031)
!6038 = !DILocation(line: 357, column: 23, scope: !6031)
!6039 = !DILocation(line: 357, column: 30, scope: !6031)
!6040 = !DILocation(line: 357, column: 38, scope: !6031)
!6041 = !DILocation(line: 357, column: 22, scope: !6031)
!6042 = !DILocation(line: 357, column: 3, scope: !6031)
!6043 = !DILocation(line: 357, column: 6, scope: !6031)
!6044 = !DILocation(line: 357, column: 20, scope: !6031)
!6045 = !DILocation(line: 360, column: 8, scope: !6031)
!6046 = !DILocation(line: 360, column: 15, scope: !6031)
!6047 = !DILocation(line: 360, column: 23, scope: !6031)
!6048 = !DILocation(line: 360, column: 7, scope: !6031)
!6049 = !DILocation(line: 360, column: 5, scope: !6031)
!6050 = !DILocation(line: 361, column: 7, scope: !6051)
!6051 = distinct !DILexicalBlock(scope: !6031, file: !3, line: 361, column: 7)
!6052 = !DILocation(line: 361, column: 9, scope: !6051)
!6053 = !DILocation(line: 361, column: 7, scope: !6031)
!6054 = !DILocation(line: 362, column: 4, scope: !6051)
!6055 = !DILocation(line: 362, column: 7, scope: !6051)
!6056 = !DILocation(line: 362, column: 16, scope: !6051)
!6057 = !DILocation(line: 362, column: 30, scope: !6051)
!6058 = !DILocation(line: 364, column: 10, scope: !6059)
!6059 = distinct !DILexicalBlock(scope: !6051, file: !3, line: 363, column: 8)
!6060 = !DILocation(line: 365, column: 32, scope: !6059)
!6061 = !DILocation(line: 365, column: 4, scope: !6059)
!6062 = !DILocation(line: 365, column: 7, scope: !6059)
!6063 = !DILocation(line: 365, column: 16, scope: !6059)
!6064 = !DILocation(line: 365, column: 30, scope: !6059)
!6065 = !DILocation(line: 366, column: 36, scope: !6059)
!6066 = !DILocation(line: 366, column: 43, scope: !6059)
!6067 = !DILocation(line: 366, column: 51, scope: !6059)
!6068 = !DILocation(line: 366, column: 22, scope: !6059)
!6069 = !DILocation(line: 366, column: 4, scope: !6059)
!6070 = !DILocation(line: 366, column: 7, scope: !6059)
!6071 = !DILocation(line: 366, column: 16, scope: !6059)
!6072 = !DILocation(line: 366, column: 20, scope: !6059)
!6073 = !DILocation(line: 367, column: 39, scope: !6059)
!6074 = !DILocation(line: 367, column: 46, scope: !6059)
!6075 = !DILocation(line: 367, column: 54, scope: !6059)
!6076 = !DILocation(line: 367, column: 29, scope: !6059)
!6077 = !DILocation(line: 367, column: 4, scope: !6059)
!6078 = !DILocation(line: 367, column: 7, scope: !6059)
!6079 = !DILocation(line: 367, column: 16, scope: !6059)
!6080 = !DILocation(line: 367, column: 27, scope: !6059)
!6081 = !DILocation(line: 368, column: 9, scope: !6059)
!6082 = !DILocation(line: 368, column: 16, scope: !6059)
!6083 = !DILocation(line: 368, column: 24, scope: !6059)
!6084 = !DILocation(line: 368, column: 32, scope: !6059)
!6085 = !DILocation(line: 368, column: 39, scope: !6059)
!6086 = !DILocation(line: 368, column: 47, scope: !6059)
!6087 = !DILocation(line: 368, column: 29, scope: !6059)
!6088 = !DILocation(line: 368, column: 8, scope: !6059)
!6089 = !DILocation(line: 368, column: 6, scope: !6059)
!6090 = !DILocation(line: 369, column: 31, scope: !6059)
!6091 = !DILocation(line: 369, column: 4, scope: !6059)
!6092 = !DILocation(line: 369, column: 7, scope: !6059)
!6093 = !DILocation(line: 369, column: 16, scope: !6059)
!6094 = !DILocation(line: 369, column: 29, scope: !6059)
!6095 = !DILocation(line: 373, column: 8, scope: !6031)
!6096 = !DILocation(line: 373, column: 15, scope: !6031)
!6097 = !DILocation(line: 373, column: 23, scope: !6031)
!6098 = !DILocation(line: 373, column: 31, scope: !6031)
!6099 = !DILocation(line: 373, column: 38, scope: !6031)
!6100 = !DILocation(line: 373, column: 46, scope: !6031)
!6101 = !DILocation(line: 373, column: 28, scope: !6031)
!6102 = !DILocation(line: 373, column: 7, scope: !6031)
!6103 = !DILocation(line: 373, column: 5, scope: !6031)
!6104 = !DILocation(line: 374, column: 7, scope: !6105)
!6105 = distinct !DILexicalBlock(scope: !6031, file: !3, line: 374, column: 7)
!6106 = !DILocation(line: 374, column: 9, scope: !6105)
!6107 = !DILocation(line: 374, column: 7, scope: !6031)
!6108 = !DILocation(line: 375, column: 4, scope: !6105)
!6109 = !DILocation(line: 375, column: 7, scope: !6105)
!6110 = !DILocation(line: 375, column: 16, scope: !6105)
!6111 = !DILocation(line: 375, column: 30, scope: !6105)
!6112 = !DILocation(line: 377, column: 10, scope: !6113)
!6113 = distinct !DILexicalBlock(scope: !6105, file: !3, line: 376, column: 8)
!6114 = !DILocation(line: 378, column: 32, scope: !6113)
!6115 = !DILocation(line: 378, column: 4, scope: !6113)
!6116 = !DILocation(line: 378, column: 7, scope: !6113)
!6117 = !DILocation(line: 378, column: 16, scope: !6113)
!6118 = !DILocation(line: 378, column: 30, scope: !6113)
!6119 = !DILocation(line: 379, column: 36, scope: !6113)
!6120 = !DILocation(line: 379, column: 43, scope: !6113)
!6121 = !DILocation(line: 379, column: 51, scope: !6113)
!6122 = !DILocation(line: 379, column: 22, scope: !6113)
!6123 = !DILocation(line: 379, column: 4, scope: !6113)
!6124 = !DILocation(line: 379, column: 7, scope: !6113)
!6125 = !DILocation(line: 379, column: 16, scope: !6113)
!6126 = !DILocation(line: 379, column: 20, scope: !6113)
!6127 = !DILocation(line: 380, column: 39, scope: !6113)
!6128 = !DILocation(line: 380, column: 46, scope: !6113)
!6129 = !DILocation(line: 380, column: 29, scope: !6113)
!6130 = !DILocation(line: 380, column: 4, scope: !6113)
!6131 = !DILocation(line: 380, column: 7, scope: !6113)
!6132 = !DILocation(line: 380, column: 16, scope: !6113)
!6133 = !DILocation(line: 380, column: 27, scope: !6113)
!6134 = !DILocation(line: 381, column: 32, scope: !6113)
!6135 = !DILocation(line: 381, column: 39, scope: !6113)
!6136 = !DILocation(line: 381, column: 47, scope: !6113)
!6137 = !DILocation(line: 381, column: 31, scope: !6113)
!6138 = !DILocation(line: 381, column: 4, scope: !6113)
!6139 = !DILocation(line: 381, column: 7, scope: !6113)
!6140 = !DILocation(line: 381, column: 16, scope: !6113)
!6141 = !DILocation(line: 381, column: 29, scope: !6113)
!6142 = !DILocation(line: 385, column: 8, scope: !6031)
!6143 = !DILocation(line: 385, column: 15, scope: !6031)
!6144 = !DILocation(line: 385, column: 23, scope: !6031)
!6145 = !DILocation(line: 385, column: 7, scope: !6031)
!6146 = !DILocation(line: 385, column: 5, scope: !6031)
!6147 = !DILocation(line: 386, column: 7, scope: !6148)
!6148 = distinct !DILexicalBlock(scope: !6031, file: !3, line: 386, column: 7)
!6149 = !DILocation(line: 386, column: 9, scope: !6148)
!6150 = !DILocation(line: 386, column: 7, scope: !6031)
!6151 = !DILocation(line: 387, column: 4, scope: !6148)
!6152 = !DILocation(line: 387, column: 7, scope: !6148)
!6153 = !DILocation(line: 387, column: 16, scope: !6148)
!6154 = !DILocation(line: 387, column: 30, scope: !6148)
!6155 = !DILocation(line: 389, column: 10, scope: !6156)
!6156 = distinct !DILexicalBlock(scope: !6148, file: !3, line: 388, column: 8)
!6157 = !DILocation(line: 390, column: 32, scope: !6156)
!6158 = !DILocation(line: 390, column: 4, scope: !6156)
!6159 = !DILocation(line: 390, column: 7, scope: !6156)
!6160 = !DILocation(line: 390, column: 16, scope: !6156)
!6161 = !DILocation(line: 390, column: 30, scope: !6156)
!6162 = !DILocation(line: 391, column: 36, scope: !6156)
!6163 = !DILocation(line: 391, column: 43, scope: !6156)
!6164 = !DILocation(line: 391, column: 22, scope: !6156)
!6165 = !DILocation(line: 391, column: 4, scope: !6156)
!6166 = !DILocation(line: 391, column: 7, scope: !6156)
!6167 = !DILocation(line: 391, column: 16, scope: !6156)
!6168 = !DILocation(line: 391, column: 20, scope: !6156)
!6169 = !DILocation(line: 392, column: 39, scope: !6156)
!6170 = !DILocation(line: 392, column: 46, scope: !6156)
!6171 = !DILocation(line: 392, column: 54, scope: !6156)
!6172 = !DILocation(line: 392, column: 29, scope: !6156)
!6173 = !DILocation(line: 392, column: 4, scope: !6156)
!6174 = !DILocation(line: 392, column: 7, scope: !6156)
!6175 = !DILocation(line: 392, column: 16, scope: !6156)
!6176 = !DILocation(line: 392, column: 27, scope: !6156)
!6177 = !DILocation(line: 393, column: 32, scope: !6156)
!6178 = !DILocation(line: 393, column: 39, scope: !6156)
!6179 = !DILocation(line: 393, column: 47, scope: !6156)
!6180 = !DILocation(line: 393, column: 31, scope: !6156)
!6181 = !DILocation(line: 393, column: 4, scope: !6156)
!6182 = !DILocation(line: 393, column: 7, scope: !6156)
!6183 = !DILocation(line: 393, column: 16, scope: !6156)
!6184 = !DILocation(line: 393, column: 29, scope: !6156)
!6185 = !DILocation(line: 395, column: 2, scope: !6031)
!6186 = !DILocation(line: 399, column: 11, scope: !5961)
!6187 = !DILocation(line: 399, column: 14, scope: !5961)
!6188 = !DILocation(line: 399, column: 8, scope: !5961)
!6189 = !DILocation(line: 400, column: 2, scope: !5961)
!6190 = !DILocation(line: 400, column: 9, scope: !5961)
!6191 = !DILocation(line: 400, column: 13, scope: !5961)
!6192 = !DILocation(line: 402, column: 6, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !5961, file: !3, line: 402, column: 6)
!6194 = !DILocation(line: 402, column: 10, scope: !6193)
!6195 = !DILocation(line: 402, column: 14, scope: !6193)
!6196 = !DILocation(line: 402, column: 24, scope: !6193)
!6197 = !DILocation(line: 402, column: 6, scope: !5961)
!6198 = !DILocalVariable(name: "dummy", scope: !6199, file: !3, line: 403, type: !518)
!6199 = distinct !DILexicalBlock(scope: !6193, file: !3, line: 402, column: 41)
!6200 = !DILocation(line: 403, column: 7, scope: !6199)
!6201 = !DILocation(line: 405, column: 3, scope: !6199)
!6202 = !DILocation(line: 405, column: 7, scope: !6199)
!6203 = !DILocation(line: 405, column: 11, scope: !6199)
!6204 = !DILocation(line: 405, column: 21, scope: !6199)
!6205 = !DILocation(line: 405, column: 37, scope: !6199)
!6206 = !DILocation(line: 406, column: 2, scope: !6199)
!6207 = !DILocation(line: 408, column: 11, scope: !5961)
!6208 = !DILocation(line: 408, column: 14, scope: !5961)
!6209 = !DILocation(line: 408, column: 8, scope: !5961)
!6210 = !DILocation(line: 409, column: 2, scope: !5961)
!6211 = !DILocation(line: 409, column: 9, scope: !5961)
!6212 = !DILocation(line: 409, column: 13, scope: !5961)
!6213 = !DILocation(line: 410, column: 2, scope: !5961)
!6214 = !DILocation(line: 410, column: 9, scope: !5961)
!6215 = !DILocation(line: 410, column: 17, scope: !5961)
!6216 = !DILocation(line: 410, column: 23, scope: !5961)
!6217 = !DILocation(line: 411, column: 8, scope: !5961)
!6218 = !DILocation(line: 412, column: 17, scope: !5961)
!6219 = !DILocation(line: 412, column: 30, scope: !5961)
!6220 = !DILocation(line: 412, column: 8, scope: !5961)
!6221 = !DILocation(line: 412, column: 6, scope: !5961)
!6222 = !DILocation(line: 413, column: 6, scope: !6223)
!6223 = distinct !DILexicalBlock(scope: !5961, file: !3, line: 413, column: 6)
!6224 = !DILocation(line: 413, column: 10, scope: !6223)
!6225 = !DILocation(line: 413, column: 6, scope: !5961)
!6226 = !DILocation(line: 414, column: 11, scope: !6223)
!6227 = !DILocation(line: 414, column: 18, scope: !6223)
!6228 = !DILocation(line: 414, column: 26, scope: !6223)
!6229 = !DILocation(line: 414, column: 33, scope: !6223)
!6230 = !DILocation(line: 414, column: 24, scope: !6223)
!6231 = !DILocation(line: 414, column: 40, scope: !6223)
!6232 = !DILocation(line: 414, column: 38, scope: !6223)
!6233 = !DILocation(line: 414, column: 9, scope: !6223)
!6234 = !DILocation(line: 414, column: 3, scope: !6223)
!6235 = !DILocation(line: 415, column: 6, scope: !6236)
!6236 = distinct !DILexicalBlock(scope: !5961, file: !3, line: 415, column: 6)
!6237 = !DILocation(line: 415, column: 12, scope: !6236)
!6238 = !DILocation(line: 415, column: 6, scope: !5961)
!6239 = !DILocalVariable(name: "p", scope: !6240, file: !3, line: 416, type: !366)
!6240 = distinct !DILexicalBlock(scope: !6236, file: !3, line: 415, column: 18)
!6241 = !DILocation(line: 416, column: 7, scope: !6240)
!6242 = !DILocalVariable(name: "tmp", scope: !6240, file: !3, line: 416, type: !366)
!6243 = !DILocation(line: 416, column: 10, scope: !6240)
!6244 = !DILocalVariable(name: "cn", scope: !6240, file: !3, line: 417, type: !1212)
!6245 = !DILocation(line: 417, column: 7, scope: !6240)
!6246 = !DILocation(line: 425, column: 7, scope: !6240)
!6247 = !DILocation(line: 425, column: 36, scope: !6240)
!6248 = !DILocation(line: 425, column: 27, scope: !6240)
!6249 = !DILocation(line: 425, column: 25, scope: !6240)
!6250 = !DILocation(line: 425, column: 5, scope: !6240)
!6251 = !DILocation(line: 426, column: 5, scope: !6240)
!6252 = !DILocation(line: 428, column: 6, scope: !6240)
!6253 = !DILocation(line: 429, column: 29, scope: !6240)
!6254 = !DILocation(line: 429, column: 27, scope: !6240)
!6255 = !DILocation(line: 429, column: 9, scope: !6240)
!6256 = !DILocation(line: 429, column: 36, scope: !6240)
!6257 = !DILocation(line: 429, column: 6, scope: !6240)
!6258 = !DILocation(line: 430, column: 9, scope: !6240)
!6259 = !DILocation(line: 430, column: 11, scope: !6240)
!6260 = !DILocation(line: 430, column: 7, scope: !6240)
!6261 = !DILocation(line: 431, column: 28, scope: !6240)
!6262 = !DILocation(line: 431, column: 26, scope: !6240)
!6263 = !DILocation(line: 431, column: 34, scope: !6240)
!6264 = !DILocation(line: 431, column: 32, scope: !6240)
!6265 = !DILocation(line: 431, column: 9, scope: !6240)
!6266 = !DILocation(line: 431, column: 43, scope: !6240)
!6267 = !DILocation(line: 431, column: 6, scope: !6240)
!6268 = !DILocation(line: 432, column: 9, scope: !6240)
!6269 = !DILocation(line: 432, column: 11, scope: !6240)
!6270 = !DILocation(line: 432, column: 7, scope: !6240)
!6271 = !DILocation(line: 433, column: 27, scope: !6240)
!6272 = !DILocation(line: 433, column: 25, scope: !6240)
!6273 = !DILocation(line: 433, column: 33, scope: !6240)
!6274 = !DILocation(line: 433, column: 31, scope: !6240)
!6275 = !DILocation(line: 433, column: 39, scope: !6240)
!6276 = !DILocation(line: 433, column: 37, scope: !6240)
!6277 = !DILocation(line: 433, column: 9, scope: !6240)
!6278 = !DILocation(line: 433, column: 48, scope: !6240)
!6279 = !DILocation(line: 433, column: 6, scope: !6240)
!6280 = !DILocation(line: 434, column: 9, scope: !6240)
!6281 = !DILocation(line: 434, column: 11, scope: !6240)
!6282 = !DILocation(line: 434, column: 7, scope: !6240)
!6283 = !DILocation(line: 435, column: 27, scope: !6240)
!6284 = !DILocation(line: 435, column: 25, scope: !6240)
!6285 = !DILocation(line: 435, column: 33, scope: !6240)
!6286 = !DILocation(line: 435, column: 31, scope: !6240)
!6287 = !DILocation(line: 435, column: 39, scope: !6240)
!6288 = !DILocation(line: 435, column: 37, scope: !6240)
!6289 = !DILocation(line: 435, column: 45, scope: !6240)
!6290 = !DILocation(line: 435, column: 43, scope: !6240)
!6291 = !DILocation(line: 435, column: 9, scope: !6240)
!6292 = !DILocation(line: 435, column: 56, scope: !6240)
!6293 = !DILocation(line: 435, column: 6, scope: !6240)
!6294 = !DILocation(line: 437, column: 27, scope: !6240)
!6295 = !DILocation(line: 437, column: 30, scope: !6240)
!6296 = !DILocation(line: 437, column: 3, scope: !6240)
!6297 = !DILocation(line: 437, column: 10, scope: !6240)
!6298 = !DILocation(line: 437, column: 18, scope: !6240)
!6299 = !DILocation(line: 437, column: 25, scope: !6240)
!6300 = !DILocation(line: 438, column: 3, scope: !6240)
!6301 = !DILocation(line: 438, column: 10, scope: !6240)
!6302 = !DILocation(line: 438, column: 18, scope: !6240)
!6303 = !DILocation(line: 438, column: 24, scope: !6240)
!6304 = !DILocation(line: 439, column: 2, scope: !6240)
!6305 = !DILocation(line: 442, column: 11, scope: !5961)
!6306 = !DILocation(line: 442, column: 14, scope: !5961)
!6307 = !DILocation(line: 442, column: 8, scope: !5961)
!6308 = !DILocation(line: 443, column: 9, scope: !5961)
!6309 = !DILocation(line: 443, column: 2, scope: !5961)
!6310 = !DILocation(line: 444, column: 15, scope: !5961)
!6311 = !DILocation(line: 444, column: 2, scope: !5961)
!6312 = !DILocation(line: 444, column: 9, scope: !5961)
!6313 = !DILocation(line: 444, column: 13, scope: !5961)
!6314 = !DILocation(line: 445, column: 17, scope: !5961)
!6315 = !DILocation(line: 445, column: 30, scope: !5961)
!6316 = !DILocation(line: 445, column: 8, scope: !5961)
!6317 = !DILocation(line: 445, column: 6, scope: !5961)
!6318 = !DILocation(line: 446, column: 6, scope: !6319)
!6319 = distinct !DILexicalBlock(scope: !5961, file: !3, line: 446, column: 6)
!6320 = !DILocation(line: 446, column: 10, scope: !6319)
!6321 = !DILocation(line: 446, column: 6, scope: !5961)
!6322 = !DILocation(line: 447, column: 10, scope: !6323)
!6323 = distinct !DILexicalBlock(scope: !6319, file: !3, line: 447, column: 3)
!6324 = !DILocation(line: 447, column: 8, scope: !6323)
!6325 = !DILocation(line: 447, column: 15, scope: !6326)
!6326 = distinct !DILexicalBlock(scope: !6323, file: !3, line: 447, column: 3)
!6327 = !DILocation(line: 447, column: 19, scope: !6326)
!6328 = !DILocation(line: 447, column: 17, scope: !6326)
!6329 = !DILocation(line: 447, column: 3, scope: !6323)
!6330 = !DILocation(line: 448, column: 4, scope: !6326)
!6331 = !DILocation(line: 448, column: 11, scope: !6326)
!6332 = !DILocation(line: 448, column: 16, scope: !6326)
!6333 = !DILocation(line: 448, column: 19, scope: !6326)
!6334 = !DILocation(line: 448, column: 25, scope: !6326)
!6335 = !DILocation(line: 447, column: 28, scope: !6326)
!6336 = !DILocation(line: 447, column: 3, scope: !6326)
!6337 = distinct !{!6337, !6329, !6338}
!6338 = !DILocation(line: 448, column: 27, scope: !6323)
!6339 = !DILocation(line: 450, column: 10, scope: !6340)
!6340 = distinct !DILexicalBlock(scope: !6341, file: !3, line: 450, column: 3)
!6341 = distinct !DILexicalBlock(scope: !6319, file: !3, line: 449, column: 7)
!6342 = !DILocation(line: 450, column: 8, scope: !6340)
!6343 = !DILocation(line: 450, column: 15, scope: !6344)
!6344 = distinct !DILexicalBlock(scope: !6340, file: !3, line: 450, column: 3)
!6345 = !DILocation(line: 450, column: 19, scope: !6344)
!6346 = !DILocation(line: 450, column: 17, scope: !6344)
!6347 = !DILocation(line: 450, column: 3, scope: !6340)
!6348 = !DILocation(line: 451, column: 4, scope: !6349)
!6349 = distinct !DILexicalBlock(scope: !6344, file: !3, line: 450, column: 32)
!6350 = !DILocation(line: 451, column: 11, scope: !6349)
!6351 = !DILocation(line: 451, column: 16, scope: !6349)
!6352 = !DILocation(line: 451, column: 19, scope: !6349)
!6353 = !DILocation(line: 451, column: 25, scope: !6349)
!6354 = !DILocation(line: 452, column: 32, scope: !6349)
!6355 = !DILocation(line: 452, column: 34, scope: !6349)
!6356 = !DILocation(line: 452, column: 28, scope: !6349)
!6357 = !DILocation(line: 452, column: 39, scope: !6349)
!6358 = !DILocation(line: 453, column: 11, scope: !6349)
!6359 = !DILocation(line: 453, column: 13, scope: !6349)
!6360 = !DILocation(line: 453, column: 17, scope: !6349)
!6361 = !DILocation(line: 453, column: 7, scope: !6349)
!6362 = !DILocation(line: 453, column: 22, scope: !6349)
!6363 = !DILocation(line: 453, column: 5, scope: !6349)
!6364 = !DILocation(line: 453, column: 33, scope: !6349)
!6365 = !DILocation(line: 453, column: 35, scope: !6349)
!6366 = !DILocation(line: 453, column: 39, scope: !6349)
!6367 = !DILocation(line: 453, column: 29, scope: !6349)
!6368 = !DILocation(line: 453, column: 27, scope: !6349)
!6369 = !DILocation(line: 452, column: 4, scope: !6349)
!6370 = !DILocation(line: 452, column: 11, scope: !6349)
!6371 = !DILocation(line: 452, column: 16, scope: !6349)
!6372 = !DILocation(line: 452, column: 19, scope: !6349)
!6373 = !DILocation(line: 452, column: 26, scope: !6349)
!6374 = !DILocation(line: 454, column: 3, scope: !6349)
!6375 = !DILocation(line: 450, column: 28, scope: !6344)
!6376 = !DILocation(line: 450, column: 3, scope: !6344)
!6377 = distinct !{!6377, !6347, !6378}
!6378 = !DILocation(line: 454, column: 3, scope: !6340)
!6379 = !DILocation(line: 456, column: 11, scope: !5961)
!6380 = !DILocation(line: 456, column: 14, scope: !5961)
!6381 = !DILocation(line: 456, column: 8, scope: !5961)
!6382 = !DILocation(line: 457, column: 9, scope: !5961)
!6383 = !DILocation(line: 457, column: 2, scope: !5961)
!6384 = !DILocation(line: 458, column: 15, scope: !5961)
!6385 = !DILocation(line: 458, column: 2, scope: !5961)
!6386 = !DILocation(line: 458, column: 9, scope: !5961)
!6387 = !DILocation(line: 458, column: 13, scope: !5961)
!6388 = !DILocation(line: 459, column: 6, scope: !6389)
!6389 = distinct !DILexicalBlock(scope: !5961, file: !3, line: 459, column: 6)
!6390 = !DILocation(line: 459, column: 10, scope: !6389)
!6391 = !DILocation(line: 459, column: 6, scope: !5961)
!6392 = !DILocation(line: 460, column: 10, scope: !6393)
!6393 = distinct !DILexicalBlock(scope: !6389, file: !3, line: 460, column: 3)
!6394 = !DILocation(line: 460, column: 8, scope: !6393)
!6395 = !DILocation(line: 460, column: 15, scope: !6396)
!6396 = distinct !DILexicalBlock(scope: !6393, file: !3, line: 460, column: 3)
!6397 = !DILocation(line: 460, column: 19, scope: !6396)
!6398 = !DILocation(line: 460, column: 17, scope: !6396)
!6399 = !DILocation(line: 460, column: 3, scope: !6393)
!6400 = !DILocation(line: 461, column: 4, scope: !6396)
!6401 = !DILocation(line: 461, column: 11, scope: !6396)
!6402 = !DILocation(line: 461, column: 16, scope: !6396)
!6403 = !DILocation(line: 461, column: 19, scope: !6396)
!6404 = !DILocation(line: 461, column: 25, scope: !6396)
!6405 = !DILocation(line: 460, column: 28, scope: !6396)
!6406 = !DILocation(line: 460, column: 3, scope: !6396)
!6407 = distinct !{!6407, !6399, !6408}
!6408 = !DILocation(line: 461, column: 27, scope: !6393)
!6409 = !DILocation(line: 463, column: 10, scope: !6410)
!6410 = distinct !DILexicalBlock(scope: !6411, file: !3, line: 463, column: 3)
!6411 = distinct !DILexicalBlock(scope: !6389, file: !3, line: 462, column: 7)
!6412 = !DILocation(line: 463, column: 8, scope: !6410)
!6413 = !DILocation(line: 463, column: 15, scope: !6414)
!6414 = distinct !DILexicalBlock(scope: !6410, file: !3, line: 463, column: 3)
!6415 = !DILocation(line: 463, column: 19, scope: !6414)
!6416 = !DILocation(line: 463, column: 17, scope: !6414)
!6417 = !DILocation(line: 463, column: 3, scope: !6410)
!6418 = !DILocation(line: 464, column: 4, scope: !6419)
!6419 = distinct !DILexicalBlock(scope: !6414, file: !3, line: 463, column: 32)
!6420 = !DILocation(line: 464, column: 11, scope: !6419)
!6421 = !DILocation(line: 464, column: 16, scope: !6419)
!6422 = !DILocation(line: 464, column: 19, scope: !6419)
!6423 = !DILocation(line: 464, column: 25, scope: !6419)
!6424 = !DILocation(line: 466, column: 13, scope: !6419)
!6425 = !DILocation(line: 466, column: 15, scope: !6419)
!6426 = !DILocation(line: 466, column: 11, scope: !6419)
!6427 = !DILocation(line: 466, column: 5, scope: !6419)
!6428 = !DILocation(line: 466, column: 20, scope: !6419)
!6429 = !DILocation(line: 466, column: 35, scope: !6419)
!6430 = !DILocation(line: 466, column: 37, scope: !6419)
!6431 = !DILocation(line: 466, column: 33, scope: !6419)
!6432 = !DILocation(line: 466, column: 41, scope: !6419)
!6433 = !DILocation(line: 466, column: 27, scope: !6419)
!6434 = !DILocation(line: 466, column: 25, scope: !6419)
!6435 = !DILocation(line: 465, column: 4, scope: !6419)
!6436 = !DILocation(line: 465, column: 11, scope: !6419)
!6437 = !DILocation(line: 465, column: 16, scope: !6419)
!6438 = !DILocation(line: 465, column: 19, scope: !6419)
!6439 = !DILocation(line: 465, column: 26, scope: !6419)
!6440 = !DILocation(line: 467, column: 4, scope: !6419)
!6441 = !DILocation(line: 467, column: 11, scope: !6419)
!6442 = !DILocation(line: 467, column: 16, scope: !6419)
!6443 = !DILocation(line: 467, column: 19, scope: !6419)
!6444 = !DILocation(line: 467, column: 26, scope: !6419)
!6445 = !DILocation(line: 468, column: 3, scope: !6419)
!6446 = !DILocation(line: 463, column: 28, scope: !6414)
!6447 = !DILocation(line: 463, column: 3, scope: !6414)
!6448 = distinct !{!6448, !6417, !6449}
!6449 = !DILocation(line: 468, column: 3, scope: !6410)
!6450 = !DILocation(line: 471, column: 2, scope: !5961)
!6451 = distinct !DISubprogram(name: "tc90522t_read_status", scope: !3, file: !3, line: 152, type: !506, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!6452 = !DILocalVariable(name: "fe", arg: 1, scope: !6451, file: !3, line: 152, type: !337)
!6453 = !DILocation(line: 152, column: 54, scope: !6451)
!6454 = !DILocalVariable(name: "status", arg: 2, scope: !6451, file: !3, line: 152, type: !403)
!6455 = !DILocation(line: 152, column: 74, scope: !6451)
!6456 = !DILocalVariable(name: "state", scope: !6451, file: !3, line: 154, type: !329)
!6457 = !DILocation(line: 154, column: 24, scope: !6451)
!6458 = !DILocalVariable(name: "ret", scope: !6451, file: !3, line: 155, type: !328)
!6459 = !DILocation(line: 155, column: 6, scope: !6451)
!6460 = !DILocalVariable(name: "reg", scope: !6451, file: !3, line: 156, type: !323)
!6461 = !DILocation(line: 156, column: 5, scope: !6451)
!6462 = !DILocation(line: 158, column: 10, scope: !6451)
!6463 = !DILocation(line: 158, column: 14, scope: !6451)
!6464 = !DILocation(line: 158, column: 8, scope: !6451)
!6465 = !DILocation(line: 159, column: 17, scope: !6451)
!6466 = !DILocation(line: 159, column: 8, scope: !6451)
!6467 = !DILocation(line: 159, column: 6, scope: !6451)
!6468 = !DILocation(line: 160, column: 6, scope: !6469)
!6469 = distinct !DILexicalBlock(scope: !6451, file: !3, line: 160, column: 6)
!6470 = !DILocation(line: 160, column: 10, scope: !6469)
!6471 = !DILocation(line: 160, column: 6, scope: !6451)
!6472 = !DILocation(line: 161, column: 10, scope: !6469)
!6473 = !DILocation(line: 161, column: 3, scope: !6469)
!6474 = !DILocation(line: 163, column: 3, scope: !6451)
!6475 = !DILocation(line: 163, column: 10, scope: !6451)
!6476 = !DILocation(line: 164, column: 6, scope: !6477)
!6477 = distinct !DILexicalBlock(scope: !6451, file: !3, line: 164, column: 6)
!6478 = !DILocation(line: 164, column: 10, scope: !6477)
!6479 = !DILocation(line: 164, column: 6, scope: !6451)
!6480 = !DILocation(line: 165, column: 4, scope: !6481)
!6481 = distinct !DILexicalBlock(scope: !6477, file: !3, line: 164, column: 18)
!6482 = !DILocation(line: 165, column: 11, scope: !6481)
!6483 = !DILocation(line: 167, column: 3, scope: !6481)
!6484 = !DILocation(line: 170, column: 17, scope: !6451)
!6485 = !DILocation(line: 170, column: 8, scope: !6451)
!6486 = !DILocation(line: 170, column: 6, scope: !6451)
!6487 = !DILocation(line: 171, column: 6, scope: !6488)
!6488 = distinct !DILexicalBlock(scope: !6451, file: !3, line: 171, column: 6)
!6489 = !DILocation(line: 171, column: 10, scope: !6488)
!6490 = !DILocation(line: 171, column: 6, scope: !6451)
!6491 = !DILocation(line: 172, column: 10, scope: !6488)
!6492 = !DILocation(line: 172, column: 3, scope: !6488)
!6493 = !DILocation(line: 174, column: 6, scope: !6494)
!6494 = distinct !DILexicalBlock(scope: !6451, file: !3, line: 174, column: 6)
!6495 = !DILocation(line: 174, column: 10, scope: !6494)
!6496 = !DILocation(line: 174, column: 6, scope: !6451)
!6497 = !DILocation(line: 175, column: 3, scope: !6494)
!6498 = !DILocation(line: 176, column: 3, scope: !6451)
!6499 = !DILocation(line: 176, column: 10, scope: !6451)
!6500 = !DILocation(line: 178, column: 6, scope: !6501)
!6501 = distinct !DILexicalBlock(scope: !6451, file: !3, line: 178, column: 6)
!6502 = !DILocation(line: 178, column: 10, scope: !6501)
!6503 = !DILocation(line: 178, column: 6, scope: !6451)
!6504 = !DILocation(line: 179, column: 3, scope: !6501)
!6505 = !DILocation(line: 180, column: 3, scope: !6451)
!6506 = !DILocation(line: 180, column: 10, scope: !6451)
!6507 = !DILocation(line: 182, column: 6, scope: !6508)
!6508 = distinct !DILexicalBlock(scope: !6451, file: !3, line: 182, column: 6)
!6509 = !DILocation(line: 182, column: 10, scope: !6508)
!6510 = !DILocation(line: 182, column: 6, scope: !6451)
!6511 = !DILocation(line: 183, column: 3, scope: !6508)
!6512 = !DILocation(line: 184, column: 3, scope: !6451)
!6513 = !DILocation(line: 184, column: 10, scope: !6451)
!6514 = !DILocation(line: 185, column: 2, scope: !6451)
!6515 = !DILocation(line: 186, column: 1, scope: !6451)
!6516 = distinct !DISubprogram(name: "tc90522_master_xfer", scope: !3, file: !3, line: 634, type: !4255, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!6517 = !DILocalVariable(name: "adap", arg: 1, scope: !6516, file: !3, line: 634, type: !4243)
!6518 = !DILocation(line: 634, column: 41, scope: !6516)
!6519 = !DILocalVariable(name: "msgs", arg: 2, scope: !6516, file: !3, line: 634, type: !4257)
!6520 = !DILocation(line: 634, column: 63, scope: !6516)
!6521 = !DILocalVariable(name: "num", arg: 3, scope: !6516, file: !3, line: 634, type: !328)
!6522 = !DILocation(line: 634, column: 73, scope: !6516)
!6523 = !DILocalVariable(name: "state", scope: !6516, file: !3, line: 636, type: !329)
!6524 = !DILocation(line: 636, column: 24, scope: !6516)
!6525 = !DILocalVariable(name: "new_msgs", scope: !6516, file: !3, line: 637, type: !4257)
!6526 = !DILocation(line: 637, column: 18, scope: !6516)
!6527 = !DILocalVariable(name: "i", scope: !6516, file: !3, line: 638, type: !328)
!6528 = !DILocation(line: 638, column: 6, scope: !6516)
!6529 = !DILocalVariable(name: "j", scope: !6516, file: !3, line: 638, type: !328)
!6530 = !DILocation(line: 638, column: 9, scope: !6516)
!6531 = !DILocalVariable(name: "ret", scope: !6516, file: !3, line: 639, type: !328)
!6532 = !DILocation(line: 639, column: 6, scope: !6516)
!6533 = !DILocalVariable(name: "rd_num", scope: !6516, file: !3, line: 639, type: !328)
!6534 = !DILocation(line: 639, column: 11, scope: !6516)
!6535 = !DILocalVariable(name: "wbuf", scope: !6516, file: !3, line: 640, type: !6536)
!6536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 2048, elements: !6537)
!6537 = !{!6538}
!6538 = !DISubrange(count: 256)
!6539 = !DILocation(line: 640, column: 5, scope: !6516)
!6540 = !DILocalVariable(name: "p", scope: !6516, file: !3, line: 641, type: !322)
!6541 = !DILocation(line: 641, column: 6, scope: !6516)
!6542 = !DILocalVariable(name: "bufend", scope: !6516, file: !3, line: 641, type: !322)
!6543 = !DILocation(line: 641, column: 10, scope: !6516)
!6544 = !DILocation(line: 643, column: 6, scope: !6545)
!6545 = distinct !DILexicalBlock(scope: !6516, file: !3, line: 643, column: 6)
!6546 = !DILocation(line: 643, column: 10, scope: !6545)
!6547 = !DILocation(line: 643, column: 6, scope: !6516)
!6548 = !DILocation(line: 644, column: 3, scope: !6545)
!6549 = !DILocation(line: 646, column: 9, scope: !6516)
!6550 = !DILocation(line: 647, column: 9, scope: !6551)
!6551 = distinct !DILexicalBlock(scope: !6516, file: !3, line: 647, column: 2)
!6552 = !DILocation(line: 647, column: 7, scope: !6551)
!6553 = !DILocation(line: 647, column: 14, scope: !6554)
!6554 = distinct !DILexicalBlock(scope: !6551, file: !3, line: 647, column: 2)
!6555 = !DILocation(line: 647, column: 18, scope: !6554)
!6556 = !DILocation(line: 647, column: 16, scope: !6554)
!6557 = !DILocation(line: 647, column: 2, scope: !6551)
!6558 = !DILocation(line: 648, column: 7, scope: !6559)
!6559 = distinct !DILexicalBlock(scope: !6554, file: !3, line: 648, column: 7)
!6560 = !DILocation(line: 648, column: 12, scope: !6559)
!6561 = !DILocation(line: 648, column: 15, scope: !6559)
!6562 = !DILocation(line: 648, column: 21, scope: !6559)
!6563 = !DILocation(line: 648, column: 7, scope: !6554)
!6564 = !DILocation(line: 649, column: 10, scope: !6559)
!6565 = !DILocation(line: 649, column: 4, scope: !6559)
!6566 = !DILocation(line: 648, column: 23, scope: !6559)
!6567 = !DILocation(line: 647, column: 24, scope: !6554)
!6568 = !DILocation(line: 647, column: 2, scope: !6554)
!6569 = distinct !{!6569, !6557, !6570}
!6570 = !DILocation(line: 649, column: 10, scope: !6551)
!6571 = !DILocation(line: 650, column: 27, scope: !6516)
!6572 = !DILocation(line: 650, column: 33, scope: !6516)
!6573 = !DILocation(line: 650, column: 31, scope: !6516)
!6574 = !DILocation(line: 650, column: 13, scope: !6516)
!6575 = !DILocation(line: 650, column: 11, scope: !6516)
!6576 = !DILocation(line: 651, column: 7, scope: !6577)
!6577 = distinct !DILexicalBlock(scope: !6516, file: !3, line: 651, column: 6)
!6578 = !DILocation(line: 651, column: 6, scope: !6516)
!6579 = !DILocation(line: 652, column: 3, scope: !6577)
!6580 = !DILocation(line: 654, column: 27, scope: !6516)
!6581 = !DILocation(line: 654, column: 10, scope: !6516)
!6582 = !DILocation(line: 654, column: 8, scope: !6516)
!6583 = !DILocation(line: 655, column: 6, scope: !6516)
!6584 = !DILocation(line: 655, column: 4, scope: !6516)
!6585 = !DILocation(line: 656, column: 11, scope: !6516)
!6586 = !DILocation(line: 656, column: 16, scope: !6516)
!6587 = !DILocation(line: 656, column: 9, scope: !6516)
!6588 = !DILocation(line: 657, column: 9, scope: !6589)
!6589 = distinct !DILexicalBlock(scope: !6516, file: !3, line: 657, column: 2)
!6590 = !DILocation(line: 657, column: 16, scope: !6589)
!6591 = !DILocation(line: 657, column: 7, scope: !6589)
!6592 = !DILocation(line: 657, column: 21, scope: !6593)
!6593 = distinct !DILexicalBlock(scope: !6589, file: !3, line: 657, column: 2)
!6594 = !DILocation(line: 657, column: 25, scope: !6593)
!6595 = !DILocation(line: 657, column: 23, scope: !6593)
!6596 = !DILocation(line: 657, column: 2, scope: !6589)
!6597 = !DILocation(line: 658, column: 22, scope: !6598)
!6598 = distinct !DILexicalBlock(scope: !6593, file: !3, line: 657, column: 40)
!6599 = !DILocation(line: 658, column: 29, scope: !6598)
!6600 = !DILocation(line: 658, column: 41, scope: !6598)
!6601 = !DILocation(line: 658, column: 3, scope: !6598)
!6602 = !DILocation(line: 658, column: 12, scope: !6598)
!6603 = !DILocation(line: 658, column: 15, scope: !6598)
!6604 = !DILocation(line: 658, column: 20, scope: !6598)
!6605 = !DILocation(line: 659, column: 23, scope: !6598)
!6606 = !DILocation(line: 659, column: 28, scope: !6598)
!6607 = !DILocation(line: 659, column: 31, scope: !6598)
!6608 = !DILocation(line: 659, column: 3, scope: !6598)
!6609 = !DILocation(line: 659, column: 12, scope: !6598)
!6610 = !DILocation(line: 659, column: 15, scope: !6598)
!6611 = !DILocation(line: 659, column: 21, scope: !6598)
!6612 = !DILocation(line: 661, column: 7, scope: !6613)
!6613 = distinct !DILexicalBlock(scope: !6598, file: !3, line: 661, column: 7)
!6614 = !DILocation(line: 661, column: 12, scope: !6613)
!6615 = !DILocation(line: 661, column: 15, scope: !6613)
!6616 = !DILocation(line: 661, column: 21, scope: !6613)
!6617 = !DILocation(line: 661, column: 7, scope: !6598)
!6618 = !DILocation(line: 662, column: 4, scope: !6619)
!6619 = distinct !DILexicalBlock(scope: !6613, file: !3, line: 661, column: 33)
!6620 = !DILocation(line: 662, column: 13, scope: !6619)
!6621 = !DILocation(line: 662, column: 16, scope: !6619)
!6622 = !DILocation(line: 662, column: 22, scope: !6619)
!6623 = !DILocation(line: 663, column: 8, scope: !6624)
!6624 = distinct !DILexicalBlock(scope: !6619, file: !3, line: 663, column: 8)
!6625 = !DILocation(line: 663, column: 10, scope: !6624)
!6626 = !DILocation(line: 663, column: 16, scope: !6624)
!6627 = !DILocation(line: 663, column: 14, scope: !6624)
!6628 = !DILocation(line: 663, column: 8, scope: !6619)
!6629 = !DILocation(line: 664, column: 5, scope: !6624)
!6630 = !DILocation(line: 665, column: 4, scope: !6619)
!6631 = !DILocation(line: 665, column: 9, scope: !6619)
!6632 = !DILocation(line: 666, column: 11, scope: !6619)
!6633 = !DILocation(line: 666, column: 16, scope: !6619)
!6634 = !DILocation(line: 666, column: 19, scope: !6619)
!6635 = !DILocation(line: 666, column: 24, scope: !6619)
!6636 = !DILocation(line: 666, column: 29, scope: !6619)
!6637 = !DILocation(line: 666, column: 4, scope: !6619)
!6638 = !DILocation(line: 666, column: 9, scope: !6619)
!6639 = !DILocation(line: 667, column: 22, scope: !6619)
!6640 = !DILocation(line: 667, column: 4, scope: !6619)
!6641 = !DILocation(line: 667, column: 13, scope: !6619)
!6642 = !DILocation(line: 667, column: 16, scope: !6619)
!6643 = !DILocation(line: 667, column: 20, scope: !6619)
!6644 = !DILocation(line: 668, column: 4, scope: !6619)
!6645 = !DILocation(line: 668, column: 13, scope: !6619)
!6646 = !DILocation(line: 668, column: 16, scope: !6619)
!6647 = !DILocation(line: 668, column: 20, scope: !6619)
!6648 = !DILocation(line: 669, column: 6, scope: !6619)
!6649 = !DILocation(line: 670, column: 5, scope: !6619)
!6650 = !DILocation(line: 671, column: 23, scope: !6619)
!6651 = !DILocation(line: 671, column: 30, scope: !6619)
!6652 = !DILocation(line: 671, column: 42, scope: !6619)
!6653 = !DILocation(line: 671, column: 4, scope: !6619)
!6654 = !DILocation(line: 671, column: 13, scope: !6619)
!6655 = !DILocation(line: 671, column: 16, scope: !6619)
!6656 = !DILocation(line: 671, column: 21, scope: !6619)
!6657 = !DILocation(line: 672, column: 24, scope: !6619)
!6658 = !DILocation(line: 672, column: 29, scope: !6619)
!6659 = !DILocation(line: 672, column: 32, scope: !6619)
!6660 = !DILocation(line: 672, column: 4, scope: !6619)
!6661 = !DILocation(line: 672, column: 13, scope: !6619)
!6662 = !DILocation(line: 672, column: 16, scope: !6619)
!6663 = !DILocation(line: 672, column: 22, scope: !6619)
!6664 = !DILocation(line: 673, column: 22, scope: !6619)
!6665 = !DILocation(line: 673, column: 27, scope: !6619)
!6666 = !DILocation(line: 673, column: 30, scope: !6619)
!6667 = !DILocation(line: 673, column: 4, scope: !6619)
!6668 = !DILocation(line: 673, column: 13, scope: !6619)
!6669 = !DILocation(line: 673, column: 16, scope: !6619)
!6670 = !DILocation(line: 673, column: 20, scope: !6619)
!6671 = !DILocation(line: 674, column: 22, scope: !6619)
!6672 = !DILocation(line: 674, column: 27, scope: !6619)
!6673 = !DILocation(line: 674, column: 30, scope: !6619)
!6674 = !DILocation(line: 674, column: 4, scope: !6619)
!6675 = !DILocation(line: 674, column: 13, scope: !6619)
!6676 = !DILocation(line: 674, column: 16, scope: !6619)
!6677 = !DILocation(line: 674, column: 20, scope: !6619)
!6678 = !DILocation(line: 675, column: 4, scope: !6619)
!6679 = !DILocation(line: 678, column: 7, scope: !6680)
!6680 = distinct !DILexicalBlock(scope: !6598, file: !3, line: 678, column: 7)
!6681 = !DILocation(line: 678, column: 11, scope: !6680)
!6682 = !DILocation(line: 678, column: 16, scope: !6680)
!6683 = !DILocation(line: 678, column: 19, scope: !6680)
!6684 = !DILocation(line: 678, column: 9, scope: !6680)
!6685 = !DILocation(line: 678, column: 23, scope: !6680)
!6686 = !DILocation(line: 678, column: 29, scope: !6680)
!6687 = !DILocation(line: 678, column: 27, scope: !6680)
!6688 = !DILocation(line: 678, column: 7, scope: !6598)
!6689 = !DILocation(line: 679, column: 4, scope: !6680)
!6690 = !DILocation(line: 680, column: 3, scope: !6598)
!6691 = !DILocation(line: 680, column: 8, scope: !6598)
!6692 = !DILocation(line: 681, column: 10, scope: !6598)
!6693 = !DILocation(line: 681, column: 15, scope: !6598)
!6694 = !DILocation(line: 681, column: 18, scope: !6598)
!6695 = !DILocation(line: 681, column: 23, scope: !6598)
!6696 = !DILocation(line: 681, column: 3, scope: !6598)
!6697 = !DILocation(line: 681, column: 8, scope: !6598)
!6698 = !DILocation(line: 682, column: 10, scope: !6598)
!6699 = !DILocation(line: 682, column: 12, scope: !6598)
!6700 = !DILocation(line: 682, column: 17, scope: !6598)
!6701 = !DILocation(line: 682, column: 22, scope: !6598)
!6702 = !DILocation(line: 682, column: 25, scope: !6598)
!6703 = !DILocation(line: 682, column: 30, scope: !6598)
!6704 = !DILocation(line: 682, column: 35, scope: !6598)
!6705 = !DILocation(line: 682, column: 38, scope: !6598)
!6706 = !DILocation(line: 682, column: 3, scope: !6598)
!6707 = !DILocation(line: 683, column: 21, scope: !6598)
!6708 = !DILocation(line: 683, column: 3, scope: !6598)
!6709 = !DILocation(line: 683, column: 12, scope: !6598)
!6710 = !DILocation(line: 683, column: 15, scope: !6598)
!6711 = !DILocation(line: 683, column: 19, scope: !6598)
!6712 = !DILocation(line: 684, column: 21, scope: !6598)
!6713 = !DILocation(line: 684, column: 26, scope: !6598)
!6714 = !DILocation(line: 684, column: 29, scope: !6598)
!6715 = !DILocation(line: 684, column: 33, scope: !6598)
!6716 = !DILocation(line: 684, column: 3, scope: !6598)
!6717 = !DILocation(line: 684, column: 12, scope: !6598)
!6718 = !DILocation(line: 684, column: 15, scope: !6598)
!6719 = !DILocation(line: 684, column: 19, scope: !6598)
!6720 = !DILocation(line: 685, column: 8, scope: !6598)
!6721 = !DILocation(line: 685, column: 17, scope: !6598)
!6722 = !DILocation(line: 685, column: 20, scope: !6598)
!6723 = !DILocation(line: 685, column: 5, scope: !6598)
!6724 = !DILocation(line: 686, column: 2, scope: !6598)
!6725 = !DILocation(line: 657, column: 31, scope: !6593)
!6726 = !DILocation(line: 657, column: 36, scope: !6593)
!6727 = !DILocation(line: 657, column: 2, scope: !6593)
!6728 = distinct !{!6728, !6596, !6729}
!6729 = !DILocation(line: 686, column: 2, scope: !6589)
!6730 = !DILocation(line: 688, column: 6, scope: !6731)
!6731 = distinct !DILexicalBlock(scope: !6516, file: !3, line: 688, column: 6)
!6732 = !DILocation(line: 688, column: 10, scope: !6731)
!6733 = !DILocation(line: 688, column: 8, scope: !6731)
!6734 = !DILocation(line: 688, column: 6, scope: !6516)
!6735 = !DILocation(line: 689, column: 7, scope: !6736)
!6736 = distinct !DILexicalBlock(scope: !6731, file: !3, line: 688, column: 15)
!6737 = !DILocation(line: 690, column: 2, scope: !6736)
!6738 = !DILocation(line: 690, column: 14, scope: !6739)
!6739 = distinct !DILexicalBlock(scope: !6731, file: !3, line: 690, column: 13)
!6740 = !DILocation(line: 690, column: 21, scope: !6739)
!6741 = !DILocation(line: 690, column: 25, scope: !6739)
!6742 = !DILocation(line: 690, column: 46, scope: !6739)
!6743 = !DILocation(line: 690, column: 49, scope: !6739)
!6744 = !DILocation(line: 690, column: 56, scope: !6739)
!6745 = !DILocation(line: 690, column: 13, scope: !6731)
!6746 = !DILocation(line: 691, column: 22, scope: !6747)
!6747 = distinct !DILexicalBlock(scope: !6739, file: !3, line: 690, column: 62)
!6748 = !DILocation(line: 691, column: 29, scope: !6747)
!6749 = !DILocation(line: 691, column: 41, scope: !6747)
!6750 = !DILocation(line: 691, column: 50, scope: !6747)
!6751 = !DILocation(line: 691, column: 60, scope: !6747)
!6752 = !DILocation(line: 691, column: 9, scope: !6747)
!6753 = !DILocation(line: 691, column: 7, scope: !6747)
!6754 = !DILocation(line: 692, column: 2, scope: !6747)
!6755 = !DILocalVariable(name: "from", scope: !6756, file: !3, line: 698, type: !328)
!6756 = distinct !DILexicalBlock(scope: !6739, file: !3, line: 692, column: 9)
!6757 = !DILocation(line: 698, column: 7, scope: !6756)
!6758 = !DILocalVariable(name: "to", scope: !6756, file: !3, line: 698, type: !328)
!6759 = !DILocation(line: 698, column: 13, scope: !6756)
!6760 = !DILocation(line: 700, column: 7, scope: !6756)
!6761 = !DILocation(line: 701, column: 8, scope: !6756)
!6762 = !DILocation(line: 702, column: 3, scope: !6756)
!6763 = !DILocalVariable(name: "r", scope: !6764, file: !3, line: 703, type: !328)
!6764 = distinct !DILexicalBlock(scope: !6756, file: !3, line: 702, column: 6)
!6765 = !DILocation(line: 703, column: 8, scope: !6764)
!6766 = !DILocation(line: 705, column: 9, scope: !6764)
!6767 = !DILocation(line: 705, column: 14, scope: !6764)
!6768 = !DILocation(line: 705, column: 7, scope: !6764)
!6769 = !DILocation(line: 706, column: 4, scope: !6764)
!6770 = !DILocation(line: 706, column: 11, scope: !6764)
!6771 = !DILocation(line: 706, column: 16, scope: !6764)
!6772 = !DILocation(line: 706, column: 14, scope: !6764)
!6773 = !DILocation(line: 706, column: 18, scope: !6764)
!6774 = !DILocation(line: 706, column: 23, scope: !6764)
!6775 = !DILocation(line: 706, column: 32, scope: !6764)
!6776 = !DILocation(line: 706, column: 36, scope: !6764)
!6777 = !DILocation(line: 706, column: 42, scope: !6764)
!6778 = !DILocation(line: 706, column: 21, scope: !6764)
!6779 = !DILocation(line: 0, scope: !6764)
!6780 = !DILocation(line: 707, column: 7, scope: !6764)
!6781 = distinct !{!6781, !6769, !6780}
!6782 = !DILocation(line: 708, column: 21, scope: !6764)
!6783 = !DILocation(line: 708, column: 28, scope: !6764)
!6784 = !DILocation(line: 708, column: 40, scope: !6764)
!6785 = !DILocation(line: 709, column: 8, scope: !6764)
!6786 = !DILocation(line: 709, column: 17, scope: !6764)
!6787 = !DILocation(line: 709, column: 24, scope: !6764)
!6788 = !DILocation(line: 709, column: 29, scope: !6764)
!6789 = !DILocation(line: 709, column: 27, scope: !6764)
!6790 = !DILocation(line: 708, column: 8, scope: !6764)
!6791 = !DILocation(line: 708, column: 6, scope: !6764)
!6792 = !DILocation(line: 710, column: 11, scope: !6764)
!6793 = !DILocation(line: 710, column: 13, scope: !6764)
!6794 = !DILocation(line: 710, column: 10, scope: !6764)
!6795 = !DILocation(line: 710, column: 21, scope: !6764)
!6796 = !DILocation(line: 710, column: 25, scope: !6764)
!6797 = !DILocation(line: 710, column: 31, scope: !6764)
!6798 = !DILocation(line: 710, column: 29, scope: !6764)
!6799 = !DILocation(line: 710, column: 8, scope: !6764)
!6800 = !DILocation(line: 711, column: 11, scope: !6764)
!6801 = !DILocation(line: 711, column: 9, scope: !6764)
!6802 = !DILocation(line: 712, column: 3, scope: !6764)
!6803 = !DILocation(line: 712, column: 12, scope: !6756)
!6804 = !DILocation(line: 712, column: 19, scope: !6756)
!6805 = !DILocation(line: 712, column: 17, scope: !6756)
!6806 = !DILocation(line: 712, column: 21, scope: !6756)
!6807 = !DILocation(line: 712, column: 24, scope: !6756)
!6808 = !DILocation(line: 712, column: 28, scope: !6756)
!6809 = !DILocation(line: 0, scope: !6756)
!6810 = distinct !{!6810, !6762, !6811}
!6811 = !DILocation(line: 712, column: 31, scope: !6756)
!6812 = !DILocation(line: 715, column: 6, scope: !6813)
!6813 = distinct !DILexicalBlock(scope: !6516, file: !3, line: 715, column: 6)
!6814 = !DILocation(line: 715, column: 10, scope: !6813)
!6815 = !DILocation(line: 715, column: 15, scope: !6813)
!6816 = !DILocation(line: 715, column: 18, scope: !6813)
!6817 = !DILocation(line: 715, column: 24, scope: !6813)
!6818 = !DILocation(line: 715, column: 22, scope: !6813)
!6819 = !DILocation(line: 715, column: 6, scope: !6516)
!6820 = !DILocation(line: 716, column: 7, scope: !6813)
!6821 = !DILocation(line: 716, column: 3, scope: !6813)
!6822 = !DILocation(line: 717, column: 8, scope: !6516)
!6823 = !DILocation(line: 717, column: 2, scope: !6516)
!6824 = !DILocation(line: 718, column: 10, scope: !6516)
!6825 = !DILocation(line: 718, column: 17, scope: !6516)
!6826 = !DILocation(line: 718, column: 14, scope: !6516)
!6827 = !DILocation(line: 718, column: 9, scope: !6516)
!6828 = !DILocation(line: 718, column: 22, scope: !6516)
!6829 = !DILocation(line: 718, column: 28, scope: !6516)
!6830 = !DILocation(line: 718, column: 2, scope: !6516)
!6831 = !DILocation(line: 719, column: 1, scope: !6516)
!6832 = distinct !DISubprogram(name: "tc90522_functionality", scope: !3, file: !3, line: 721, type: !4283, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!6833 = !DILocalVariable(name: "adap", arg: 1, scope: !6832, file: !3, line: 721, type: !4243)
!6834 = !DILocation(line: 721, column: 54, scope: !6832)
!6835 = !DILocation(line: 723, column: 2, scope: !6832)
!6836 = distinct !DISubprogram(name: "kmalloc_array", scope: !298, file: !298, line: 584, type: !6837, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!6837 = !DISubroutineType(types: !6838)
!6838 = !{!321, !773, !773, !319}
!6839 = !DILocation(line: 445, column: 72, scope: !4680, inlinedAt: !6840)
!6840 = distinct !DILocation(line: 552, column: 10, scope: !4685, inlinedAt: !6841)
!6841 = distinct !DILocation(line: 591, column: 10, scope: !6842)
!6842 = distinct !DILexicalBlock(scope: !6836, file: !298, line: 590, column: 6)
!6843 = !DILocation(line: 446, column: 9, scope: !4680, inlinedAt: !6840)
!6844 = !DILocation(line: 446, column: 23, scope: !4680, inlinedAt: !6840)
!6845 = !DILocation(line: 448, column: 8, scope: !4680, inlinedAt: !6840)
!6846 = !DILocation(line: 318, column: 67, scope: !4696, inlinedAt: !6847)
!6847 = distinct !DILocation(line: 553, column: 20, scope: !4685, inlinedAt: !6841)
!6848 = !DILocation(line: 346, column: 58, scope: !4702, inlinedAt: !6849)
!6849 = distinct !DILocation(line: 547, column: 11, scope: !4685, inlinedAt: !6841)
!6850 = !DILocation(line: 472, column: 28, scope: !4708, inlinedAt: !6851)
!6851 = distinct !DILocation(line: 481, column: 9, scope: !4713, inlinedAt: !6852)
!6852 = distinct !DILocation(line: 545, column: 11, scope: !4715, inlinedAt: !6841)
!6853 = !DILocation(line: 472, column: 40, scope: !4708, inlinedAt: !6851)
!6854 = !DILocation(line: 472, column: 60, scope: !4708, inlinedAt: !6851)
!6855 = !DILocation(line: 478, column: 51, scope: !4713, inlinedAt: !6852)
!6856 = !DILocation(line: 478, column: 63, scope: !4713, inlinedAt: !6852)
!6857 = !DILocation(line: 480, column: 15, scope: !4713, inlinedAt: !6852)
!6858 = !DILocation(line: 538, column: 45, scope: !4687, inlinedAt: !6841)
!6859 = !DILocation(line: 538, column: 57, scope: !4687, inlinedAt: !6841)
!6860 = !DILocation(line: 542, column: 16, scope: !4685, inlinedAt: !6841)
!6861 = !DILocalVariable(name: "n", arg: 1, scope: !6836, file: !298, line: 584, type: !773)
!6862 = !DILocation(line: 584, column: 42, scope: !6836)
!6863 = !DILocalVariable(name: "size", arg: 2, scope: !6836, file: !298, line: 584, type: !773)
!6864 = !DILocation(line: 584, column: 52, scope: !6836)
!6865 = !DILocalVariable(name: "flags", arg: 3, scope: !6836, file: !298, line: 584, type: !319)
!6866 = !DILocation(line: 584, column: 64, scope: !6836)
!6867 = !DILocalVariable(name: "bytes", scope: !6836, file: !298, line: 586, type: !773)
!6868 = !DILocation(line: 586, column: 9, scope: !6836)
!6869 = !DILocalVariable(name: "__a", scope: !6870, file: !298, line: 588, type: !773)
!6870 = distinct !DILexicalBlock(scope: !6871, file: !298, line: 588, column: 6)
!6871 = distinct !DILexicalBlock(scope: !6836, file: !298, line: 588, column: 6)
!6872 = !DILocation(line: 588, column: 6, scope: !6870)
!6873 = !DILocalVariable(name: "__b", scope: !6870, file: !298, line: 588, type: !773)
!6874 = !DILocalVariable(name: "__d", scope: !6870, file: !298, line: 588, type: !6875)
!6875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!6876 = !DILocation(line: 588, column: 6, scope: !6871)
!6877 = !DILocation(line: 588, column: 6, scope: !6836)
!6878 = !DILocation(line: 589, column: 3, scope: !6871)
!6879 = !DILocation(line: 590, column: 27, scope: !6842)
!6880 = !DILocation(line: 590, column: 6, scope: !6842)
!6881 = !DILocation(line: 590, column: 30, scope: !6842)
!6882 = !DILocation(line: 590, column: 54, scope: !6842)
!6883 = !DILocation(line: 590, column: 33, scope: !6842)
!6884 = !DILocation(line: 590, column: 6, scope: !6836)
!6885 = !DILocation(line: 591, column: 18, scope: !6842)
!6886 = !DILocation(line: 591, column: 25, scope: !6842)
!6887 = !DILocation(line: 540, column: 27, scope: !4686, inlinedAt: !6841)
!6888 = !DILocation(line: 540, column: 6, scope: !4686, inlinedAt: !6841)
!6889 = !DILocation(line: 540, column: 6, scope: !4687, inlinedAt: !6841)
!6890 = !DILocation(line: 544, column: 7, scope: !4715, inlinedAt: !6841)
!6891 = !DILocation(line: 544, column: 12, scope: !4715, inlinedAt: !6841)
!6892 = !DILocation(line: 544, column: 7, scope: !4685, inlinedAt: !6841)
!6893 = !DILocation(line: 545, column: 25, scope: !4715, inlinedAt: !6841)
!6894 = !DILocation(line: 545, column: 31, scope: !4715, inlinedAt: !6841)
!6895 = !DILocation(line: 480, column: 33, scope: !4713, inlinedAt: !6852)
!6896 = !DILocation(line: 480, column: 23, scope: !4713, inlinedAt: !6852)
!6897 = !DILocation(line: 481, column: 29, scope: !4713, inlinedAt: !6852)
!6898 = !DILocation(line: 481, column: 35, scope: !4713, inlinedAt: !6852)
!6899 = !DILocation(line: 481, column: 42, scope: !4713, inlinedAt: !6852)
!6900 = !DILocation(line: 474, column: 23, scope: !4708, inlinedAt: !6851)
!6901 = !DILocation(line: 474, column: 29, scope: !4708, inlinedAt: !6851)
!6902 = !DILocation(line: 474, column: 36, scope: !4708, inlinedAt: !6851)
!6903 = !DILocation(line: 474, column: 9, scope: !4708, inlinedAt: !6851)
!6904 = !DILocation(line: 545, column: 4, scope: !4715, inlinedAt: !6841)
!6905 = !DILocation(line: 547, column: 25, scope: !4685, inlinedAt: !6841)
!6906 = !DILocation(line: 348, column: 7, scope: !4759, inlinedAt: !6849)
!6907 = !DILocation(line: 348, column: 6, scope: !4702, inlinedAt: !6849)
!6908 = !DILocation(line: 349, column: 3, scope: !4759, inlinedAt: !6849)
!6909 = !DILocation(line: 351, column: 6, scope: !4763, inlinedAt: !6849)
!6910 = !DILocation(line: 351, column: 11, scope: !4763, inlinedAt: !6849)
!6911 = !DILocation(line: 351, column: 6, scope: !4702, inlinedAt: !6849)
!6912 = !DILocation(line: 352, column: 3, scope: !4763, inlinedAt: !6849)
!6913 = !DILocation(line: 354, column: 32, scope: !4768, inlinedAt: !6849)
!6914 = !DILocation(line: 354, column: 37, scope: !4768, inlinedAt: !6849)
!6915 = !DILocation(line: 354, column: 42, scope: !4768, inlinedAt: !6849)
!6916 = !DILocation(line: 354, column: 45, scope: !4768, inlinedAt: !6849)
!6917 = !DILocation(line: 354, column: 50, scope: !4768, inlinedAt: !6849)
!6918 = !DILocation(line: 354, column: 6, scope: !4702, inlinedAt: !6849)
!6919 = !DILocation(line: 355, column: 3, scope: !4768, inlinedAt: !6849)
!6920 = !DILocation(line: 356, column: 32, scope: !4776, inlinedAt: !6849)
!6921 = !DILocation(line: 356, column: 37, scope: !4776, inlinedAt: !6849)
!6922 = !DILocation(line: 356, column: 43, scope: !4776, inlinedAt: !6849)
!6923 = !DILocation(line: 356, column: 46, scope: !4776, inlinedAt: !6849)
!6924 = !DILocation(line: 356, column: 51, scope: !4776, inlinedAt: !6849)
!6925 = !DILocation(line: 356, column: 6, scope: !4702, inlinedAt: !6849)
!6926 = !DILocation(line: 357, column: 3, scope: !4776, inlinedAt: !6849)
!6927 = !DILocation(line: 358, column: 6, scope: !4784, inlinedAt: !6849)
!6928 = !DILocation(line: 358, column: 11, scope: !4784, inlinedAt: !6849)
!6929 = !DILocation(line: 358, column: 6, scope: !4702, inlinedAt: !6849)
!6930 = !DILocation(line: 358, column: 26, scope: !4784, inlinedAt: !6849)
!6931 = !DILocation(line: 359, column: 6, scope: !4789, inlinedAt: !6849)
!6932 = !DILocation(line: 359, column: 11, scope: !4789, inlinedAt: !6849)
!6933 = !DILocation(line: 359, column: 6, scope: !4702, inlinedAt: !6849)
!6934 = !DILocation(line: 359, column: 26, scope: !4789, inlinedAt: !6849)
!6935 = !DILocation(line: 360, column: 6, scope: !4794, inlinedAt: !6849)
!6936 = !DILocation(line: 360, column: 11, scope: !4794, inlinedAt: !6849)
!6937 = !DILocation(line: 360, column: 6, scope: !4702, inlinedAt: !6849)
!6938 = !DILocation(line: 360, column: 26, scope: !4794, inlinedAt: !6849)
!6939 = !DILocation(line: 361, column: 6, scope: !4799, inlinedAt: !6849)
!6940 = !DILocation(line: 361, column: 11, scope: !4799, inlinedAt: !6849)
!6941 = !DILocation(line: 361, column: 6, scope: !4702, inlinedAt: !6849)
!6942 = !DILocation(line: 361, column: 26, scope: !4799, inlinedAt: !6849)
!6943 = !DILocation(line: 362, column: 6, scope: !4804, inlinedAt: !6849)
!6944 = !DILocation(line: 362, column: 11, scope: !4804, inlinedAt: !6849)
!6945 = !DILocation(line: 362, column: 6, scope: !4702, inlinedAt: !6849)
!6946 = !DILocation(line: 362, column: 26, scope: !4804, inlinedAt: !6849)
!6947 = !DILocation(line: 363, column: 6, scope: !4809, inlinedAt: !6849)
!6948 = !DILocation(line: 363, column: 11, scope: !4809, inlinedAt: !6849)
!6949 = !DILocation(line: 363, column: 6, scope: !4702, inlinedAt: !6849)
!6950 = !DILocation(line: 363, column: 26, scope: !4809, inlinedAt: !6849)
!6951 = !DILocation(line: 364, column: 6, scope: !4814, inlinedAt: !6849)
!6952 = !DILocation(line: 364, column: 11, scope: !4814, inlinedAt: !6849)
!6953 = !DILocation(line: 364, column: 6, scope: !4702, inlinedAt: !6849)
!6954 = !DILocation(line: 364, column: 26, scope: !4814, inlinedAt: !6849)
!6955 = !DILocation(line: 365, column: 6, scope: !4819, inlinedAt: !6849)
!6956 = !DILocation(line: 365, column: 11, scope: !4819, inlinedAt: !6849)
!6957 = !DILocation(line: 365, column: 6, scope: !4702, inlinedAt: !6849)
!6958 = !DILocation(line: 365, column: 26, scope: !4819, inlinedAt: !6849)
!6959 = !DILocation(line: 366, column: 6, scope: !4824, inlinedAt: !6849)
!6960 = !DILocation(line: 366, column: 11, scope: !4824, inlinedAt: !6849)
!6961 = !DILocation(line: 366, column: 6, scope: !4702, inlinedAt: !6849)
!6962 = !DILocation(line: 366, column: 26, scope: !4824, inlinedAt: !6849)
!6963 = !DILocation(line: 367, column: 6, scope: !4829, inlinedAt: !6849)
!6964 = !DILocation(line: 367, column: 11, scope: !4829, inlinedAt: !6849)
!6965 = !DILocation(line: 367, column: 6, scope: !4702, inlinedAt: !6849)
!6966 = !DILocation(line: 367, column: 26, scope: !4829, inlinedAt: !6849)
!6967 = !DILocation(line: 368, column: 6, scope: !4834, inlinedAt: !6849)
!6968 = !DILocation(line: 368, column: 11, scope: !4834, inlinedAt: !6849)
!6969 = !DILocation(line: 368, column: 6, scope: !4702, inlinedAt: !6849)
!6970 = !DILocation(line: 368, column: 26, scope: !4834, inlinedAt: !6849)
!6971 = !DILocation(line: 369, column: 6, scope: !4839, inlinedAt: !6849)
!6972 = !DILocation(line: 369, column: 11, scope: !4839, inlinedAt: !6849)
!6973 = !DILocation(line: 369, column: 6, scope: !4702, inlinedAt: !6849)
!6974 = !DILocation(line: 369, column: 26, scope: !4839, inlinedAt: !6849)
!6975 = !DILocation(line: 370, column: 6, scope: !4844, inlinedAt: !6849)
!6976 = !DILocation(line: 370, column: 11, scope: !4844, inlinedAt: !6849)
!6977 = !DILocation(line: 370, column: 6, scope: !4702, inlinedAt: !6849)
!6978 = !DILocation(line: 370, column: 26, scope: !4844, inlinedAt: !6849)
!6979 = !DILocation(line: 371, column: 6, scope: !4849, inlinedAt: !6849)
!6980 = !DILocation(line: 371, column: 11, scope: !4849, inlinedAt: !6849)
!6981 = !DILocation(line: 371, column: 6, scope: !4702, inlinedAt: !6849)
!6982 = !DILocation(line: 371, column: 26, scope: !4849, inlinedAt: !6849)
!6983 = !DILocation(line: 372, column: 6, scope: !4854, inlinedAt: !6849)
!6984 = !DILocation(line: 372, column: 11, scope: !4854, inlinedAt: !6849)
!6985 = !DILocation(line: 372, column: 6, scope: !4702, inlinedAt: !6849)
!6986 = !DILocation(line: 372, column: 26, scope: !4854, inlinedAt: !6849)
!6987 = !DILocation(line: 373, column: 6, scope: !4859, inlinedAt: !6849)
!6988 = !DILocation(line: 373, column: 11, scope: !4859, inlinedAt: !6849)
!6989 = !DILocation(line: 373, column: 6, scope: !4702, inlinedAt: !6849)
!6990 = !DILocation(line: 373, column: 26, scope: !4859, inlinedAt: !6849)
!6991 = !DILocation(line: 374, column: 6, scope: !4864, inlinedAt: !6849)
!6992 = !DILocation(line: 374, column: 11, scope: !4864, inlinedAt: !6849)
!6993 = !DILocation(line: 374, column: 6, scope: !4702, inlinedAt: !6849)
!6994 = !DILocation(line: 374, column: 26, scope: !4864, inlinedAt: !6849)
!6995 = !DILocation(line: 375, column: 6, scope: !4869, inlinedAt: !6849)
!6996 = !DILocation(line: 375, column: 11, scope: !4869, inlinedAt: !6849)
!6997 = !DILocation(line: 375, column: 6, scope: !4702, inlinedAt: !6849)
!6998 = !DILocation(line: 375, column: 27, scope: !4869, inlinedAt: !6849)
!6999 = !DILocation(line: 376, column: 6, scope: !4874, inlinedAt: !6849)
!7000 = !DILocation(line: 376, column: 11, scope: !4874, inlinedAt: !6849)
!7001 = !DILocation(line: 376, column: 6, scope: !4702, inlinedAt: !6849)
!7002 = !DILocation(line: 376, column: 32, scope: !4874, inlinedAt: !6849)
!7003 = !DILocation(line: 377, column: 6, scope: !4879, inlinedAt: !6849)
!7004 = !DILocation(line: 377, column: 11, scope: !4879, inlinedAt: !6849)
!7005 = !DILocation(line: 377, column: 6, scope: !4702, inlinedAt: !6849)
!7006 = !DILocation(line: 377, column: 32, scope: !4879, inlinedAt: !6849)
!7007 = !DILocation(line: 378, column: 6, scope: !4884, inlinedAt: !6849)
!7008 = !DILocation(line: 378, column: 11, scope: !4884, inlinedAt: !6849)
!7009 = !DILocation(line: 378, column: 6, scope: !4702, inlinedAt: !6849)
!7010 = !DILocation(line: 378, column: 32, scope: !4884, inlinedAt: !6849)
!7011 = !DILocation(line: 379, column: 6, scope: !4889, inlinedAt: !6849)
!7012 = !DILocation(line: 379, column: 11, scope: !4889, inlinedAt: !6849)
!7013 = !DILocation(line: 379, column: 6, scope: !4702, inlinedAt: !6849)
!7014 = !DILocation(line: 379, column: 33, scope: !4889, inlinedAt: !6849)
!7015 = !DILocation(line: 380, column: 6, scope: !4894, inlinedAt: !6849)
!7016 = !DILocation(line: 380, column: 11, scope: !4894, inlinedAt: !6849)
!7017 = !DILocation(line: 380, column: 6, scope: !4702, inlinedAt: !6849)
!7018 = !DILocation(line: 380, column: 33, scope: !4894, inlinedAt: !6849)
!7019 = !DILocation(line: 381, column: 6, scope: !4899, inlinedAt: !6849)
!7020 = !DILocation(line: 381, column: 11, scope: !4899, inlinedAt: !6849)
!7021 = !DILocation(line: 381, column: 6, scope: !4702, inlinedAt: !6849)
!7022 = !DILocation(line: 381, column: 33, scope: !4899, inlinedAt: !6849)
!7023 = !DILocation(line: 382, column: 2, scope: !4904, inlinedAt: !6849)
!7024 = !DILocation(line: 382, column: 2, scope: !4908, inlinedAt: !6849)
!7025 = !DILocation(line: 382, column: 2, scope: !4909, inlinedAt: !6849)
!7026 = !DILocation(line: 386, column: 1, scope: !4702, inlinedAt: !6849)
!7027 = !DILocation(line: 547, column: 9, scope: !4685, inlinedAt: !6841)
!7028 = !DILocation(line: 549, column: 8, scope: !4915, inlinedAt: !6841)
!7029 = !DILocation(line: 549, column: 7, scope: !4685, inlinedAt: !6841)
!7030 = !DILocation(line: 550, column: 4, scope: !4915, inlinedAt: !6841)
!7031 = !DILocation(line: 553, column: 33, scope: !4685, inlinedAt: !6841)
!7032 = !DILocation(line: 325, column: 6, scope: !4920, inlinedAt: !6847)
!7033 = !DILocation(line: 325, column: 6, scope: !4696, inlinedAt: !6847)
!7034 = !DILocation(line: 326, column: 3, scope: !4920, inlinedAt: !6847)
!7035 = !DILocation(line: 332, column: 9, scope: !4696, inlinedAt: !6847)
!7036 = !DILocation(line: 332, column: 15, scope: !4696, inlinedAt: !6847)
!7037 = !DILocation(line: 332, column: 2, scope: !4696, inlinedAt: !6847)
!7038 = !DILocation(line: 336, column: 1, scope: !4696, inlinedAt: !6847)
!7039 = !DILocation(line: 553, column: 5, scope: !4685, inlinedAt: !6841)
!7040 = !DILocation(line: 553, column: 41, scope: !4685, inlinedAt: !6841)
!7041 = !DILocation(line: 554, column: 5, scope: !4685, inlinedAt: !6841)
!7042 = !DILocation(line: 554, column: 12, scope: !4685, inlinedAt: !6841)
!7043 = !DILocation(line: 448, column: 31, scope: !4680, inlinedAt: !6840)
!7044 = !DILocation(line: 448, column: 34, scope: !4680, inlinedAt: !6840)
!7045 = !DILocation(line: 448, column: 14, scope: !4680, inlinedAt: !6840)
!7046 = !DILocation(line: 450, column: 22, scope: !4680, inlinedAt: !6840)
!7047 = !DILocation(line: 450, column: 25, scope: !4680, inlinedAt: !6840)
!7048 = !DILocation(line: 450, column: 30, scope: !4680, inlinedAt: !6840)
!7049 = !DILocation(line: 450, column: 36, scope: !4680, inlinedAt: !6840)
!7050 = !DILocation(line: 450, column: 8, scope: !4680, inlinedAt: !6840)
!7051 = !DILocation(line: 450, column: 6, scope: !4680, inlinedAt: !6840)
!7052 = !DILocation(line: 451, column: 9, scope: !4680, inlinedAt: !6840)
!7053 = !DILocation(line: 552, column: 3, scope: !4685, inlinedAt: !6841)
!7054 = !DILocation(line: 557, column: 19, scope: !4687, inlinedAt: !6841)
!7055 = !DILocation(line: 557, column: 25, scope: !4687, inlinedAt: !6841)
!7056 = !DILocation(line: 557, column: 9, scope: !4687, inlinedAt: !6841)
!7057 = !DILocation(line: 557, column: 2, scope: !4687, inlinedAt: !6841)
!7058 = !DILocation(line: 558, column: 1, scope: !4687, inlinedAt: !6841)
!7059 = !DILocation(line: 591, column: 3, scope: !6842)
!7060 = !DILocation(line: 592, column: 19, scope: !6836)
!7061 = !DILocation(line: 592, column: 26, scope: !6836)
!7062 = !DILocation(line: 592, column: 9, scope: !6836)
!7063 = !DILocation(line: 592, column: 2, scope: !6836)
!7064 = !DILocation(line: 593, column: 1, scope: !6836)
!7065 = distinct !DISubprogram(name: "i2c_get_adapdata", scope: !95, file: !95, line: 727, type: !7066, scopeLine: 728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!7066 = !DISubroutineType(types: !7067)
!7067 = !{!321, !7068}
!7068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7069, size: 64)
!7069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4244)
!7070 = !DILocalVariable(name: "adap", arg: 1, scope: !7065, file: !95, line: 727, type: !7068)
!7071 = !DILocation(line: 727, column: 64, scope: !7065)
!7072 = !DILocation(line: 729, column: 26, scope: !7065)
!7073 = !DILocation(line: 729, column: 32, scope: !7065)
!7074 = !DILocation(line: 729, column: 9, scope: !7065)
!7075 = !DILocation(line: 729, column: 2, scope: !7065)
!7076 = distinct !DISubprogram(name: "__must_check_overflow", scope: !7077, file: !7077, line: 52, type: !7078, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!7077 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!7078 = !DISubroutineType(types: !7079)
!7079 = !{!400, !400}
!7080 = !DILocalVariable(name: "overflow", arg: 1, scope: !7076, file: !7077, line: 52, type: !400)
!7081 = !DILocation(line: 52, column: 60, scope: !7076)
!7082 = !DILocation(line: 54, column: 9, scope: !7076)
!7083 = !DILocation(line: 54, column: 2, scope: !7076)
!7084 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !60, file: !60, line: 655, type: !7085, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!7085 = !DISubroutineType(types: !7086)
!7086 = !{!321, !3992}
!7087 = !DILocalVariable(name: "dev", arg: 1, scope: !7084, file: !60, line: 655, type: !3992)
!7088 = !DILocation(line: 655, column: 58, scope: !7084)
!7089 = !DILocation(line: 657, column: 9, scope: !7084)
!7090 = !DILocation(line: 657, column: 14, scope: !7084)
!7091 = !DILocation(line: 657, column: 2, scope: !7084)
!7092 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !60, file: !60, line: 660, type: !7093, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!7093 = !DISubroutineType(types: !7094)
!7094 = !{null, !673, !321}
!7095 = !DILocalVariable(name: "dev", arg: 1, scope: !7092, file: !60, line: 660, type: !673)
!7096 = !DILocation(line: 660, column: 51, scope: !7092)
!7097 = !DILocalVariable(name: "data", arg: 2, scope: !7092, file: !60, line: 660, type: !321)
!7098 = !DILocation(line: 660, column: 62, scope: !7092)
!7099 = !DILocation(line: 662, column: 21, scope: !7092)
!7100 = !DILocation(line: 662, column: 2, scope: !7092)
!7101 = !DILocation(line: 662, column: 7, scope: !7092)
!7102 = !DILocation(line: 662, column: 19, scope: !7092)
!7103 = !DILocation(line: 663, column: 1, scope: !7092)
!7104 = distinct !DISubprogram(name: "cfg_to_state", scope: !3, file: !3, line: 92, type: !7105, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!7105 = !DISubroutineType(types: !7106)
!7106 = !{!329, !4560}
!7107 = !DILocalVariable(name: "c", arg: 1, scope: !7104, file: !3, line: 92, type: !4560)
!7108 = !DILocation(line: 92, column: 66, scope: !7104)
!7109 = !DILocalVariable(name: "__mptr", scope: !7110, file: !3, line: 94, type: !321)
!7110 = distinct !DILexicalBlock(scope: !7104, file: !3, line: 94, column: 9)
!7111 = !DILocation(line: 94, column: 9, scope: !7110)
!7112 = !DILocation(line: 94, column: 9, scope: !7113)
!7113 = distinct !DILexicalBlock(scope: !7110, file: !3, line: 94, column: 9)
!7114 = !DILocation(line: 94, column: 2, scope: !7104)
!7115 = distinct !DISubprogram(name: "i2c_get_clientdata", scope: !95, file: !95, line: 351, type: !7116, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !704)
!7116 = !DISubroutineType(types: !7117)
!7117 = !{!321, !7118}
!7118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7119, size: 64)
!7119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4368)
!7120 = !DILocalVariable(name: "client", arg: 1, scope: !7115, file: !95, line: 351, type: !7118)
!7121 = !DILocation(line: 351, column: 65, scope: !7115)
!7122 = !DILocation(line: 353, column: 26, scope: !7115)
!7123 = !DILocation(line: 353, column: 34, scope: !7115)
!7124 = !DILocation(line: 353, column: 9, scope: !7115)
!7125 = !DILocation(line: 353, column: 2, scope: !7115)
