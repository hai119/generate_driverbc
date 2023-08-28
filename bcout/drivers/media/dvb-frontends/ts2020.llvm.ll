; ModuleID = '../bcout/drivers/media/dvb-frontends/ts2020.llvm.bc'
source_filename = "drivers/media/dvb-frontends/ts2020.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_ts2020_driver_init6:\09\09\09"
module asm ".long\09ts2020_driver_init - .\09\09\09"
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.47, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.17, [0 x i64] }
%struct.anon.17 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.18, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.18 = type { %struct.rb_node, i64 }
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
%struct.file = type { %union.anon.0, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.63, %struct.list_head, %struct.list_head, %union.anon.64 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.1, i8* }
%union.anon.1 = type { i64 }
%struct.lockref = type { %union.anon.61 }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { %struct.spinlock, i32 }
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
%struct.page = type { i64, %union.anon.3, %union.anon.53, %struct.atomic_t, [8 x i8] }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.53 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.54, i32 }
%union.anon.54 = type { %struct.kuid_t }
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
%union.anon.63 = type { %struct.list_head }
%union.anon.64 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.55, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.56, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.57, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.60, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.55 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.56 = type { %struct.callback_head }
%union.anon.57 = type { %struct.file_operations* }
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
%union.anon.60 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.58 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.58 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.32 = type { %struct.callback_head }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.24, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.25, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.26, %union.anon.30, %struct.key_restriction* }
%union.anon.24 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.25 = type { i64 }
%union.anon.26 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.27, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.27 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.30 = type { %union.key_payload }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.33, %union.anon.34, i32 }
%struct.request_queue = type opaque
%union.anon.33 = type { %struct.list_head }
%union.anon.34 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.35 }
%struct.anon.35 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.39 }
%struct.anon.39 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.46, i32, [12 x i8] }
%union.anon.46 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.47 = type { %struct.callback_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.48, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.51 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i64, i64 }
%union.anon.51 = type { [12 x i32] }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.65, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.65 = type { %struct.kernfs_elem_attr }
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
%struct.property_entry = type { i8*, i64, i8, i32, %union.anon.66 }
%union.anon.66 = type { i8* }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, void (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, %struct.analog_parameters*)*, i32 (%struct.dvb_frontend*, i8*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i8*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)* }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, %struct.dvb_adapter*, i8*, i8*, i8*, i8*, i8*, %struct.dtv_frontend_properties, i32 (i8*, i32, i32, i32)*, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, i8*, i32)*, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)*, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)*, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i64)*, i32 (%struct.dvb_frontend*, i64)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.dvb_diseqc_slave_reply = type { [4 x i8], i8, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, void (%struct.dvb_frontend*, %struct.analog_parameters*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i8*)* }
%struct.analog_demod_info = type { i8* }
%struct.analog_parameters = type { i32, i32, i32, i64 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, i8*, [6 x i8], i8*, %struct.device*, %struct.module*, i32, %struct.dvb_device*, %struct.mutex }
%struct.dvb_device = type { %struct.list_head, %struct.file_operations*, %struct.dvb_adapter*, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, i32 (%struct.file*, i32, i8*)*, i8* }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.kmem_cache = type opaque
%struct.ts2020_reg_val = type { i8, i8 }
%struct.ts2020_config = type { i8, i32, i16, %struct.dvb_frontend*, i8, i32 (%struct.dvb_frontend*, i8*)* }
%struct.ts2020_priv = type { %struct.i2c_client*, %struct.mutex, %struct.regmap_config, %struct.regmap*, %struct.dvb_frontend*, %struct.delayed_work, i32 (%struct.dvb_frontend*, i8*)*, %struct.i2c_adapter*, i32, i16, i32, i32, i8 }
%struct.regmap_config = type { i8*, i32, i32, i32, i32, i1 (%struct.device*, i32)*, i1 (%struct.device*, i32)*, i1 (%struct.device*, i32)*, i1 (%struct.device*, i32)*, i1 (%struct.device*, i32)*, i1 (%struct.device*, i32)*, i8, void (i8*)*, void (i8*)*, i8*, i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32)*, i8, i32, %struct.regmap_access_table*, %struct.regmap_access_table*, %struct.regmap_access_table*, %struct.regmap_access_table*, %struct.regmap_access_table*, %struct.regmap_access_table*, %struct.reg_default*, i32, i32, i8*, i32, i64, i64, i8, i8, i8, i8, i32, i32, %struct.regmap_range_cfg*, i32, i8, i32, i32, i8 }
%struct.regmap_access_table = type { %struct.regmap_range*, i32, %struct.regmap_range*, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.regmap_range_cfg = type { i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.regmap = type opaque
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"ts2020\00", align 1
@__UNIQUE_ID___addressable_ts2020_driver_init253 = internal global i8* bitcast (i32 ()* @ts2020_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@ts2020_driver = internal global %struct.i2c_driver { i32 0, i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ts2020_probe, i32 (%struct.i2c_client*)* @ts2020_remove, i32 (%struct.i2c_client*)* null, void (%struct.i2c_client*)* null, void (%struct.i2c_client*, i32, i32)* null, i32 (%struct.i2c_client*, i32, i8*)* null, %struct.device_driver { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* null, %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* null, void (%struct.device*)* null, %struct.driver_private* null }, %struct.i2c_device_id* getelementptr inbounds ([3 x %struct.i2c_device_id], [3 x %struct.i2c_device_id]* @ts2020_id_table, i32 0, i32 0), i32 (%struct.i2c_client*, %struct.i2c_board_info*)* null, i16* null, %struct.list_head zeroinitializer }, align 8, !dbg !4558
@__exitcall_ts2020_driver_exit = internal global void ()* @ts2020_driver_exit, section ".exitcall.exit", align 8, !dbg !4533
@__UNIQUE_ID_author254 = internal constant [61 x i8] c"ts2020.author=Konstantin Dimitrov <kosio.dimitrov@gmail.com>\00", section ".modinfo", align 1, !dbg !4538
@__UNIQUE_ID_description255 = internal constant [75 x i8] c"ts2020.description=Montage Technology TS2020 - Silicon tuner driver module\00", section ".modinfo", align 1, !dbg !4543
@__UNIQUE_ID_file256 = internal constant [47 x i8] c"ts2020.file=drivers/media/dvb-frontends/ts2020\00", section ".modinfo", align 1, !dbg !4548
@__UNIQUE_ID_license257 = internal constant [19 x i8] c"ts2020.license=GPL\00", section ".modinfo", align 1, !dbg !4553
@ts2020_id_table = internal constant [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ts2020\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0 }, %struct.i2c_device_id { [20 x i8] c"ts2022\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0 }, %struct.i2c_device_id zeroinitializer], align 16, !dbg !4670
@ts2020_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4653
@.str.1 = private unnamed_addr constant [19 x i8] c"&dev->regmap_mutex\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"TS2020\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"TS2022\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Montage Technology %s successfully identified\0A\00", align 1
@ts2020_tuner_ops = internal constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"TS2020\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 0, i32 0, i32 0, i32 0 }, void (%struct.dvb_frontend*)* @ts2020_release, i32 (%struct.dvb_frontend*)* @ts2020_init, i32 (%struct.dvb_frontend*)* @ts2020_sleep, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @ts2020_set_params, i32 (%struct.dvb_frontend*, %struct.analog_parameters*)* null, i32 (%struct.dvb_frontend*, i8*)* null, i32 (%struct.dvb_frontend*, i32*)* @ts2020_get_frequency, i32 (%struct.dvb_frontend*, i32*)* null, i32 (%struct.dvb_frontend*, i32*)* @ts2020_get_if_frequency, i32 (%struct.dvb_frontend*, i32*)* null, i32 (%struct.dvb_frontend*, i16*)* @ts2020_read_signal_strength, i32 (%struct.dvb_frontend*, i32*)* null, i32 (%struct.dvb_frontend*, i8*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null }, align 8, !dbg !4656
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@system_wq = external dso_local global %struct.workqueue_struct*, align 8
@ts2020_init.reg_vals = internal constant [11 x %struct.ts2020_reg_val] [%struct.ts2020_reg_val { i8 125, i8 -99 }, %struct.ts2020_reg_val { i8 124, i8 -102 }, %struct.ts2020_reg_val { i8 122, i8 118 }, %struct.ts2020_reg_val { i8 59, i8 1 }, %struct.ts2020_reg_val { i8 99, i8 -120 }, %struct.ts2020_reg_val { i8 97, i8 -123 }, %struct.ts2020_reg_val { i8 34, i8 48 }, %struct.ts2020_reg_val { i8 48, i8 64 }, %struct.ts2020_reg_val { i8 32, i8 35 }, %struct.ts2020_reg_val { i8 36, i8 2 }, %struct.ts2020_reg_val { i8 18, i8 -96 }], align 16, !dbg !4659
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_ts2020_driver_init253 to i8*), i8* bitcast (void ()* @ts2020_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_ts2020_driver_exit to i8*), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__UNIQUE_ID_author254, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @__UNIQUE_ID_description255, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__UNIQUE_ID_file256, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__UNIQUE_ID_license257, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dvb_frontend* @ts2020_attach(%struct.dvb_frontend* %fe, %struct.ts2020_config* %config, %struct.i2c_adapter* %i2c) #0 !dbg !4678 {
entry:
  %retval = alloca %struct.dvb_frontend*, align 8
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %config.addr = alloca %struct.ts2020_config*, align 8
  %i2c.addr = alloca %struct.i2c_adapter*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %board_info = alloca %struct.i2c_board_info, align 8
  %pdata = alloca %struct.ts2020_config, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4695, metadata !DIExpression()), !dbg !4696
  store %struct.ts2020_config* %config, %struct.ts2020_config** %config.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ts2020_config** %config.addr, metadata !4697, metadata !DIExpression()), !dbg !4698
  store %struct.i2c_adapter* %i2c, %struct.i2c_adapter** %i2c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c.addr, metadata !4699, metadata !DIExpression()), !dbg !4700
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !4701, metadata !DIExpression()), !dbg !4702
  call void @llvm.dbg.declare(metadata %struct.i2c_board_info* %board_info, metadata !4703, metadata !DIExpression()), !dbg !4704
  call void @llvm.dbg.declare(metadata %struct.ts2020_config* %pdata, metadata !4705, metadata !DIExpression()), !dbg !4706
  %0 = bitcast %struct.ts2020_config* %pdata to i8*, !dbg !4707
  %1 = load %struct.ts2020_config*, %struct.ts2020_config** %config.addr, align 8, !dbg !4708
  %2 = bitcast %struct.ts2020_config* %1 to i8*, !dbg !4707
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %2, i64 40, i1 false), !dbg !4707
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4709
  %fe1 = getelementptr inbounds %struct.ts2020_config, %struct.ts2020_config* %pdata, i32 0, i32 3, !dbg !4710
  store %struct.dvb_frontend* %3, %struct.dvb_frontend** %fe1, align 8, !dbg !4711
  %attach_in_use = getelementptr inbounds %struct.ts2020_config, %struct.ts2020_config* %pdata, i32 0, i32 4, !dbg !4712
  %bf.load = load i8, i8* %attach_in_use, align 8, !dbg !4713
  %bf.clear = and i8 %bf.load, -2, !dbg !4713
  %bf.set = or i8 %bf.clear, 1, !dbg !4713
  store i8 %bf.set, i8* %attach_in_use, align 8, !dbg !4713
  %4 = bitcast %struct.i2c_board_info* %board_info to i8*, !dbg !4714
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 80, i1 false), !dbg !4714
  %type = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %board_info, i32 0, i32 0, !dbg !4715
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %type, i64 0, i64 0, !dbg !4716
  %call = call i64 @strscpy(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 20) #9, !dbg !4717
  %5 = load %struct.ts2020_config*, %struct.ts2020_config** %config.addr, align 8, !dbg !4718
  %tuner_address = getelementptr inbounds %struct.ts2020_config, %struct.ts2020_config* %5, i32 0, i32 0, !dbg !4719
  %6 = load i8, i8* %tuner_address, align 8, !dbg !4719
  %conv = zext i8 %6 to i16, !dbg !4718
  %addr = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %board_info, i32 0, i32 2, !dbg !4720
  store i16 %conv, i16* %addr, align 2, !dbg !4721
  %7 = bitcast %struct.ts2020_config* %pdata to i8*, !dbg !4722
  %platform_data = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %board_info, i32 0, i32 4, !dbg !4723
  store i8* %7, i8** %platform_data, align 8, !dbg !4724
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c.addr, align 8, !dbg !4725
  %call2 = call %struct.i2c_client* @i2c_new_client_device(%struct.i2c_adapter* %8, %struct.i2c_board_info* %board_info) #9, !dbg !4726
  store %struct.i2c_client* %call2, %struct.i2c_client** %client, align 8, !dbg !4727
  %9 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !4728
  %call3 = call zeroext i1 @i2c_client_has_driver(%struct.i2c_client* %9) #9, !dbg !4730
  br i1 %call3, label %if.end, label %if.then, !dbg !4731

if.then:                                          ; preds = %entry
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4732
  br label %return, !dbg !4732

if.end:                                           ; preds = %entry
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4733
  store %struct.dvb_frontend* %10, %struct.dvb_frontend** %retval, align 8, !dbg !4734
  br label %return, !dbg !4734

return:                                           ; preds = %if.end, %if.then
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %retval, align 8, !dbg !4735
  ret %struct.dvb_frontend* %11, !dbg !4735
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local i64 @strscpy(i8*, i8*, i64) #3

; Function Attrs: noredzone
declare dso_local %struct.i2c_client* @i2c_new_client_device(%struct.i2c_adapter*, %struct.i2c_board_info*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @i2c_client_has_driver(%struct.i2c_client* %client) #0 !dbg !4736 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !4739, metadata !DIExpression()), !dbg !4740
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4741
  %1 = bitcast %struct.i2c_client* %0 to i8*, !dbg !4741
  %call = call zeroext i1 @IS_ERR_OR_NULL(i8* %1) #9, !dbg !4742
  br i1 %call, label %land.end, label %land.rhs, !dbg !4743

land.rhs:                                         ; preds = %entry
  %2 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4744
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %2, i32 0, i32 4, !dbg !4745
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 6, !dbg !4746
  %3 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !4746
  %tobool = icmp ne %struct.device_driver* %3, null, !dbg !4743
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ], !dbg !4747
  ret i1 %4, !dbg !4748
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @ts2020_driver_init() #4 section ".init.text" !dbg !4749 {
entry:
  %call = call i32 @i2c_register_driver(%struct.module* null, %struct.i2c_driver* @ts2020_driver) #9, !dbg !4752
  ret i32 %call, !dbg !4752
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @ts2020_driver_exit() #4 section ".exit.text" !dbg !4753 {
entry:
  call void @i2c_del_driver(%struct.i2c_driver* @ts2020_driver) #9, !dbg !4754
  ret void, !dbg !4754
}

; Function Attrs: noredzone
declare dso_local void @i2c_del_driver(%struct.i2c_driver*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(i8* %ptr) #0 !dbg !4755 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4759, metadata !DIExpression()), !dbg !4760
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4761
  %tobool = icmp ne i8* %0, null, !dbg !4761
  %lnot = xor i1 %tobool, true, !dbg !4761
  %lnot1 = xor i1 %lnot, true, !dbg !4761
  %lnot2 = xor i1 %lnot1, true, !dbg !4761
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4761
  %conv = sext i32 %lnot.ext to i64, !dbg !4761
  %tobool3 = icmp ne i64 %conv, 0, !dbg !4761
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !4762

lor.rhs:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !4763
  %2 = ptrtoint i8* %1 to i64, !dbg !4763
  %3 = inttoptr i64 %2 to i8*, !dbg !4763
  %4 = ptrtoint i8* %3 to i64, !dbg !4763
  %cmp = icmp uge i64 %4, -4095, !dbg !4763
  %lnot5 = xor i1 %cmp, true, !dbg !4763
  %lnot7 = xor i1 %lnot5, true, !dbg !4763
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !4763
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !4763
  %tobool10 = icmp ne i64 %conv9, 0, !dbg !4762
  br label %lor.end, !dbg !4762

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool10, %lor.rhs ]
  ret i1 %5, !dbg !4764
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_register_driver(%struct.module*, %struct.i2c_driver*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ts2020_probe(%struct.i2c_client* %client, %struct.i2c_device_id* %id) #0 !dbg !4655 {
entry:
  %retval = alloca i32, align 4
  %client.addr = alloca %struct.i2c_client*, align 8
  %id.addr = alloca %struct.i2c_device_id*, align 8
  %pdata = alloca %struct.ts2020_config*, align 8
  %fe = alloca %struct.dvb_frontend*, align 8
  %dev2 = alloca %struct.ts2020_priv*, align 8
  %ret = alloca i32, align 4
  %u8tmp = alloca i8, align 1
  %utmp = alloca i32, align 4
  %chip_str = alloca i8*, align 8
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !4765, metadata !DIExpression()), !dbg !4766
  store %struct.i2c_device_id* %id, %struct.i2c_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_device_id** %id.addr, metadata !4767, metadata !DIExpression()), !dbg !4768
  call void @llvm.dbg.declare(metadata %struct.ts2020_config** %pdata, metadata !4769, metadata !DIExpression()), !dbg !4771
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4772
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %0, i32 0, i32 4, !dbg !4773
  %platform_data = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 7, !dbg !4774
  %1 = load i8*, i8** %platform_data, align 8, !dbg !4774
  %2 = bitcast i8* %1 to %struct.ts2020_config*, !dbg !4772
  store %struct.ts2020_config* %2, %struct.ts2020_config** %pdata, align 8, !dbg !4771
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe, metadata !4775, metadata !DIExpression()), !dbg !4776
  %3 = load %struct.ts2020_config*, %struct.ts2020_config** %pdata, align 8, !dbg !4777
  %fe1 = getelementptr inbounds %struct.ts2020_config, %struct.ts2020_config* %3, i32 0, i32 3, !dbg !4778
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe1, align 8, !dbg !4778
  store %struct.dvb_frontend* %4, %struct.dvb_frontend** %fe, align 8, !dbg !4776
  call void @llvm.dbg.declare(metadata %struct.ts2020_priv** %dev2, metadata !4779, metadata !DIExpression()), !dbg !4780
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4781, metadata !DIExpression()), !dbg !4782
  call void @llvm.dbg.declare(metadata i8* %u8tmp, metadata !4783, metadata !DIExpression()), !dbg !4784
  call void @llvm.dbg.declare(metadata i32* %utmp, metadata !4785, metadata !DIExpression()), !dbg !4786
  call void @llvm.dbg.declare(metadata i8** %chip_str, metadata !4787, metadata !DIExpression()), !dbg !4788
  %call = call i8* @kzalloc(i64 448, i32 3264) #9, !dbg !4789
  %5 = bitcast i8* %call to %struct.ts2020_priv*, !dbg !4789
  store %struct.ts2020_priv* %5, %struct.ts2020_priv** %dev2, align 8, !dbg !4790
  %6 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4791
  %tobool = icmp ne %struct.ts2020_priv* %6, null, !dbg !4791
  br i1 %tobool, label %if.end, label %if.then, !dbg !4793

if.then:                                          ; preds = %entry
  store i32 -12, i32* %ret, align 4, !dbg !4794
  br label %err, !dbg !4796

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4797

do.body:                                          ; preds = %if.end
  %7 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4798
  %regmap_mutex = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %7, i32 0, i32 1, !dbg !4798
  call void @__mutex_init(%struct.mutex* %regmap_mutex, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), %struct.lock_class_key* @ts2020_probe.__key) #9, !dbg !4798
  br label %do.end, !dbg !4798

do.end:                                           ; preds = %do.body
  %8 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4800
  %regmap_config = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %8, i32 0, i32 2, !dbg !4801
  %reg_bits = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %regmap_config, i32 0, i32 1, !dbg !4802
  store i32 8, i32* %reg_bits, align 8, !dbg !4803
  %9 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4804
  %regmap_config3 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %9, i32 0, i32 2, !dbg !4805
  %val_bits = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %regmap_config3, i32 0, i32 4, !dbg !4806
  store i32 8, i32* %val_bits, align 4, !dbg !4807
  %10 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4808
  %regmap_config4 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %10, i32 0, i32 2, !dbg !4809
  %lock = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %regmap_config4, i32 0, i32 12, !dbg !4810
  store void (i8*)* @ts2020_regmap_lock, void (i8*)** %lock, align 8, !dbg !4811
  %11 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4812
  %regmap_config5 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %11, i32 0, i32 2, !dbg !4813
  %unlock = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %regmap_config5, i32 0, i32 13, !dbg !4814
  store void (i8*)* @ts2020_regmap_unlock, void (i8*)** %unlock, align 8, !dbg !4815
  %12 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4816
  %13 = bitcast %struct.ts2020_priv* %12 to i8*, !dbg !4816
  %14 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4817
  %regmap_config6 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %14, i32 0, i32 2, !dbg !4818
  %lock_arg = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %regmap_config6, i32 0, i32 14, !dbg !4819
  store i8* %13, i8** %lock_arg, align 8, !dbg !4820
  %15 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4821
  %16 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4821
  %regmap_config7 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %16, i32 0, i32 2, !dbg !4821
  %call8 = call %struct.regmap* @__regmap_init_i2c(%struct.i2c_client* %15, %struct.regmap_config* %regmap_config7, %struct.lock_class_key* null, i8* null) #9, !dbg !4821
  %17 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4822
  %regmap = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %17, i32 0, i32 3, !dbg !4823
  store %struct.regmap* %call8, %struct.regmap** %regmap, align 8, !dbg !4824
  %18 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4825
  %regmap9 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %18, i32 0, i32 3, !dbg !4827
  %19 = load %struct.regmap*, %struct.regmap** %regmap9, align 8, !dbg !4827
  %20 = bitcast %struct.regmap* %19 to i8*, !dbg !4825
  %call10 = call zeroext i1 @IS_ERR(i8* %20) #9, !dbg !4828
  br i1 %call10, label %if.then11, label %if.end14, !dbg !4829

if.then11:                                        ; preds = %do.end
  %21 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4830
  %regmap12 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %21, i32 0, i32 3, !dbg !4832
  %22 = load %struct.regmap*, %struct.regmap** %regmap12, align 8, !dbg !4832
  %23 = bitcast %struct.regmap* %22 to i8*, !dbg !4830
  %call13 = call i64 @PTR_ERR(i8* %23) #9, !dbg !4833
  %conv = trunc i64 %call13 to i32, !dbg !4833
  store i32 %conv, i32* %ret, align 4, !dbg !4834
  br label %err_kfree, !dbg !4835

if.end14:                                         ; preds = %do.end
  %24 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4836
  %adapter = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 3, !dbg !4837
  %25 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !4837
  %26 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4838
  %i2c = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %26, i32 0, i32 7, !dbg !4839
  store %struct.i2c_adapter* %25, %struct.i2c_adapter** %i2c, align 8, !dbg !4840
  %27 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4841
  %addr = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 1, !dbg !4842
  %28 = load i16, i16* %addr, align 2, !dbg !4842
  %conv15 = zext i16 %28 to i32, !dbg !4841
  %29 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4843
  %i2c_address = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %29, i32 0, i32 8, !dbg !4844
  store i32 %conv15, i32* %i2c_address, align 8, !dbg !4845
  %30 = load %struct.ts2020_config*, %struct.ts2020_config** %pdata, align 8, !dbg !4846
  %loop_through = getelementptr inbounds %struct.ts2020_config, %struct.ts2020_config* %30, i32 0, i32 2, !dbg !4847
  %bf.load = load i16, i16* %loop_through, align 8, !dbg !4847
  %bf.clear = and i16 %bf.load, 1, !dbg !4847
  %bf.cast = trunc i16 %bf.clear to i1, !dbg !4847
  %31 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4848
  %loop_through16 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %31, i32 0, i32 9, !dbg !4849
  %32 = zext i1 %bf.cast to i16, !dbg !4850
  %bf.load17 = load i16, i16* %loop_through16, align 4, !dbg !4850
  %bf.clear18 = and i16 %bf.load17, -2, !dbg !4850
  %bf.set = or i16 %bf.clear18, %32, !dbg !4850
  store i16 %bf.set, i16* %loop_through16, align 4, !dbg !4850
  %bf.result.cast = trunc i16 %32 to i8, !dbg !4850
  %tobool19 = trunc i8 %bf.result.cast to i1, !dbg !4850
  %33 = load %struct.ts2020_config*, %struct.ts2020_config** %pdata, align 8, !dbg !4851
  %clk_out = getelementptr inbounds %struct.ts2020_config, %struct.ts2020_config* %33, i32 0, i32 2, !dbg !4852
  %bf.load20 = load i16, i16* %clk_out, align 8, !dbg !4852
  %bf.lshr = lshr i16 %bf.load20, 1, !dbg !4852
  %bf.clear21 = and i16 %bf.lshr, 3, !dbg !4852
  %bf.cast22 = trunc i16 %bf.clear21 to i8, !dbg !4852
  %34 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4853
  %clk_out23 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %34, i32 0, i32 9, !dbg !4854
  %35 = zext i8 %bf.cast22 to i16, !dbg !4855
  %bf.load24 = load i16, i16* %clk_out23, align 4, !dbg !4855
  %bf.value = and i16 %35, 3, !dbg !4855
  %bf.shl = shl i16 %bf.value, 1, !dbg !4855
  %bf.clear25 = and i16 %bf.load24, -7, !dbg !4855
  %bf.set26 = or i16 %bf.clear25, %bf.shl, !dbg !4855
  store i16 %bf.set26, i16* %clk_out23, align 4, !dbg !4855
  %bf.result.cast27 = trunc i16 %bf.value to i8, !dbg !4855
  %36 = load %struct.ts2020_config*, %struct.ts2020_config** %pdata, align 8, !dbg !4856
  %clk_out_div = getelementptr inbounds %struct.ts2020_config, %struct.ts2020_config* %36, i32 0, i32 2, !dbg !4857
  %bf.load28 = load i16, i16* %clk_out_div, align 8, !dbg !4857
  %bf.lshr29 = lshr i16 %bf.load28, 3, !dbg !4857
  %bf.clear30 = and i16 %bf.lshr29, 31, !dbg !4857
  %bf.cast31 = trunc i16 %bf.clear30 to i8, !dbg !4857
  %37 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4858
  %clk_out_div32 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %37, i32 0, i32 9, !dbg !4859
  %38 = zext i8 %bf.cast31 to i16, !dbg !4860
  %bf.load33 = load i16, i16* %clk_out_div32, align 4, !dbg !4860
  %bf.value34 = and i16 %38, 31, !dbg !4860
  %bf.shl35 = shl i16 %bf.value34, 3, !dbg !4860
  %bf.clear36 = and i16 %bf.load33, -249, !dbg !4860
  %bf.set37 = or i16 %bf.clear36, %bf.shl35, !dbg !4860
  store i16 %bf.set37, i16* %clk_out_div32, align 4, !dbg !4860
  %bf.result.cast38 = trunc i16 %bf.value34 to i8, !dbg !4860
  %39 = load %struct.ts2020_config*, %struct.ts2020_config** %pdata, align 8, !dbg !4861
  %dont_poll = getelementptr inbounds %struct.ts2020_config, %struct.ts2020_config* %39, i32 0, i32 2, !dbg !4862
  %bf.load39 = load i16, i16* %dont_poll, align 8, !dbg !4862
  %bf.lshr40 = lshr i16 %bf.load39, 8, !dbg !4862
  %bf.clear41 = and i16 %bf.lshr40, 1, !dbg !4862
  %bf.cast42 = trunc i16 %bf.clear41 to i1, !dbg !4862
  %40 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4863
  %dont_poll43 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %40, i32 0, i32 9, !dbg !4864
  %41 = zext i1 %bf.cast42 to i16, !dbg !4865
  %bf.load44 = load i16, i16* %dont_poll43, align 4, !dbg !4865
  %bf.shl45 = shl i16 %41, 8, !dbg !4865
  %bf.clear46 = and i16 %bf.load44, -257, !dbg !4865
  %bf.set47 = or i16 %bf.clear46, %bf.shl45, !dbg !4865
  store i16 %bf.set47, i16* %dont_poll43, align 4, !dbg !4865
  %bf.result.cast48 = trunc i16 %41 to i8, !dbg !4865
  %tobool49 = trunc i8 %bf.result.cast48 to i1, !dbg !4865
  %42 = load %struct.ts2020_config*, %struct.ts2020_config** %pdata, align 8, !dbg !4866
  %frequency_div = getelementptr inbounds %struct.ts2020_config, %struct.ts2020_config* %42, i32 0, i32 1, !dbg !4867
  %43 = load i32, i32* %frequency_div, align 4, !dbg !4867
  %44 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4868
  %frequency_div50 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %44, i32 0, i32 10, !dbg !4869
  store i32 %43, i32* %frequency_div50, align 8, !dbg !4870
  %45 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe, align 8, !dbg !4871
  %46 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4872
  %fe51 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %46, i32 0, i32 4, !dbg !4873
  store %struct.dvb_frontend* %45, %struct.dvb_frontend** %fe51, align 8, !dbg !4874
  %47 = load %struct.ts2020_config*, %struct.ts2020_config** %pdata, align 8, !dbg !4875
  %get_agc_pwm = getelementptr inbounds %struct.ts2020_config, %struct.ts2020_config* %47, i32 0, i32 5, !dbg !4876
  %48 = load i32 (%struct.dvb_frontend*, i8*)*, i32 (%struct.dvb_frontend*, i8*)** %get_agc_pwm, align 8, !dbg !4876
  %49 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4877
  %get_agc_pwm52 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %49, i32 0, i32 6, !dbg !4878
  store i32 (%struct.dvb_frontend*, i8*)* %48, i32 (%struct.dvb_frontend*, i8*)** %get_agc_pwm52, align 8, !dbg !4879
  %50 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4880
  %51 = bitcast %struct.ts2020_priv* %50 to i8*, !dbg !4880
  %52 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe, align 8, !dbg !4881
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %52, i32 0, i32 4, !dbg !4882
  store i8* %51, i8** %tuner_priv, align 8, !dbg !4883
  %53 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4884
  %54 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4885
  %client53 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %54, i32 0, i32 0, !dbg !4886
  store %struct.i2c_client* %53, %struct.i2c_client** %client53, align 8, !dbg !4887
  br label %do.body54, !dbg !4888

do.body54:                                        ; preds = %if.end14
  br label %do.body55, !dbg !4889

do.body55:                                        ; preds = %do.body54
  %55 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4891
  %stat_work = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %55, i32 0, i32 5, !dbg !4891
  %work = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %stat_work, i32 0, i32 0, !dbg !4891
  call void @__init_work(%struct.work_struct* %work, i32 0) #9, !dbg !4891
  %56 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4891
  %stat_work56 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %56, i32 0, i32 5, !dbg !4891
  %work57 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %stat_work56, i32 0, i32 0, !dbg !4891
  %data = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work57, i32 0, i32 0, !dbg !4891
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %.compoundliteral, i32 0, i32 0, !dbg !4891
  store i64 68719476704, i64* %counter, align 8, !dbg !4891
  %57 = bitcast %struct.atomic64_t* %data to i8*, !dbg !4891
  %58 = bitcast %struct.atomic64_t* %.compoundliteral to i8*, !dbg !4891
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 8, i1 false), !dbg !4891
  %59 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4891
  %stat_work58 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %59, i32 0, i32 5, !dbg !4891
  %work59 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %stat_work58, i32 0, i32 0, !dbg !4891
  %entry60 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work59, i32 0, i32 1, !dbg !4891
  call void @INIT_LIST_HEAD(%struct.list_head* %entry60) #9, !dbg !4891
  %60 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4891
  %stat_work61 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %60, i32 0, i32 5, !dbg !4891
  %work62 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %stat_work61, i32 0, i32 0, !dbg !4891
  %func = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work62, i32 0, i32 2, !dbg !4891
  store void (%struct.work_struct*)* @ts2020_stat_work, void (%struct.work_struct*)** %func, align 8, !dbg !4891
  br label %do.end63, !dbg !4891

do.end63:                                         ; preds = %do.body55
  %61 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4889
  %stat_work64 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %61, i32 0, i32 5, !dbg !4889
  %timer = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %stat_work64, i32 0, i32 1, !dbg !4889
  call void @init_timer_key(%struct.timer_list* %timer, void (%struct.timer_list*)* @delayed_work_timer_fn, i32 2097152, i8* null, %struct.lock_class_key* null) #9, !dbg !4889
  br label %do.end65, !dbg !4889

do.end65:                                         ; preds = %do.end63
  %62 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4893
  %regmap66 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %62, i32 0, i32 3, !dbg !4894
  %63 = load %struct.regmap*, %struct.regmap** %regmap66, align 8, !dbg !4894
  %call67 = call i32 @regmap_read(%struct.regmap* %63, i32 0, i32* %utmp) #9, !dbg !4895
  store i32 %call67, i32* %ret, align 4, !dbg !4896
  %64 = load i32, i32* %ret, align 4, !dbg !4897
  %tobool68 = icmp ne i32 %64, 0, !dbg !4897
  br i1 %tobool68, label %if.then69, label %if.end70, !dbg !4899

if.then69:                                        ; preds = %do.end65
  br label %err_regmap_exit, !dbg !4900

if.end70:                                         ; preds = %do.end65
  %65 = load i32, i32* %utmp, align 4, !dbg !4901
  %and = and i32 %65, 3, !dbg !4903
  %cmp = icmp eq i32 %and, 0, !dbg !4904
  br i1 %cmp, label %if.then72, label %if.end78, !dbg !4905

if.then72:                                        ; preds = %if.end70
  %66 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4906
  %regmap73 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %66, i32 0, i32 3, !dbg !4908
  %67 = load %struct.regmap*, %struct.regmap** %regmap73, align 8, !dbg !4908
  %call74 = call i32 @regmap_write(%struct.regmap* %67, i32 0, i32 1) #9, !dbg !4909
  store i32 %call74, i32* %ret, align 4, !dbg !4910
  %68 = load i32, i32* %ret, align 4, !dbg !4911
  %tobool75 = icmp ne i32 %68, 0, !dbg !4911
  br i1 %tobool75, label %if.then76, label %if.end77, !dbg !4913

if.then76:                                        ; preds = %if.then72
  br label %err_regmap_exit, !dbg !4914

if.end77:                                         ; preds = %if.then72
  call void @usleep_range(i64 2000, i64 50000) #9, !dbg !4915
  br label %if.end78, !dbg !4916

if.end78:                                         ; preds = %if.end77, %if.end70
  %69 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4917
  %regmap79 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %69, i32 0, i32 3, !dbg !4918
  %70 = load %struct.regmap*, %struct.regmap** %regmap79, align 8, !dbg !4918
  %call80 = call i32 @regmap_write(%struct.regmap* %70, i32 0, i32 3) #9, !dbg !4919
  store i32 %call80, i32* %ret, align 4, !dbg !4920
  %71 = load i32, i32* %ret, align 4, !dbg !4921
  %tobool81 = icmp ne i32 %71, 0, !dbg !4921
  br i1 %tobool81, label %if.then82, label %if.end83, !dbg !4923

if.then82:                                        ; preds = %if.end78
  br label %err_regmap_exit, !dbg !4924

if.end83:                                         ; preds = %if.end78
  call void @usleep_range(i64 2000, i64 50000) #9, !dbg !4925
  %72 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4926
  %regmap84 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %72, i32 0, i32 3, !dbg !4927
  %73 = load %struct.regmap*, %struct.regmap** %regmap84, align 8, !dbg !4927
  %call85 = call i32 @regmap_read(%struct.regmap* %73, i32 0, i32* %utmp) #9, !dbg !4928
  store i32 %call85, i32* %ret, align 4, !dbg !4929
  %74 = load i32, i32* %ret, align 4, !dbg !4930
  %tobool86 = icmp ne i32 %74, 0, !dbg !4930
  br i1 %tobool86, label %if.then87, label %if.end88, !dbg !4932

if.then87:                                        ; preds = %if.end83
  br label %err_regmap_exit, !dbg !4933

if.end88:                                         ; preds = %if.end83
  %75 = load i32, i32* %utmp, align 4, !dbg !4934
  switch i32 %75, label %sw.default [
    i32 1, label %sw.bb
    i32 65, label %sw.bb
    i32 129, label %sw.bb
    i32 195, label %sw.bb94
    i32 131, label %sw.bb94
  ], !dbg !4935

sw.bb:                                            ; preds = %if.end88, %if.end88, %if.end88
  %76 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4936
  %tuner = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %76, i32 0, i32 12, !dbg !4938
  store i8 0, i8* %tuner, align 8, !dbg !4939
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %chip_str, align 8, !dbg !4940
  %77 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4941
  %frequency_div89 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %77, i32 0, i32 10, !dbg !4943
  %78 = load i32, i32* %frequency_div89, align 8, !dbg !4943
  %tobool90 = icmp ne i32 %78, 0, !dbg !4941
  br i1 %tobool90, label %if.end93, label %if.then91, !dbg !4944

if.then91:                                        ; preds = %sw.bb
  %79 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4945
  %frequency_div92 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %79, i32 0, i32 10, !dbg !4946
  store i32 1060000, i32* %frequency_div92, align 8, !dbg !4947
  br label %if.end93, !dbg !4945

if.end93:                                         ; preds = %if.then91, %sw.bb
  br label %sw.epilog, !dbg !4948

sw.bb94:                                          ; preds = %if.end88, %if.end88
  %80 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4949
  %tuner95 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %80, i32 0, i32 12, !dbg !4950
  store i8 1, i8* %tuner95, align 8, !dbg !4951
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %chip_str, align 8, !dbg !4952
  %81 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4953
  %frequency_div96 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %81, i32 0, i32 10, !dbg !4955
  %82 = load i32, i32* %frequency_div96, align 8, !dbg !4955
  %tobool97 = icmp ne i32 %82, 0, !dbg !4953
  br i1 %tobool97, label %if.end100, label %if.then98, !dbg !4956

if.then98:                                        ; preds = %sw.bb94
  %83 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4957
  %frequency_div99 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %83, i32 0, i32 10, !dbg !4958
  store i32 1103000, i32* %frequency_div99, align 8, !dbg !4959
  br label %if.end100, !dbg !4957

if.end100:                                        ; preds = %if.then98, %sw.bb94
  br label %sw.epilog, !dbg !4960

sw.default:                                       ; preds = %if.end88
  store i32 -19, i32* %ret, align 4, !dbg !4961
  br label %err_regmap_exit, !dbg !4962

sw.epilog:                                        ; preds = %if.end100, %if.end93
  %84 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4963
  %tuner101 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %84, i32 0, i32 12, !dbg !4965
  %85 = load i8, i8* %tuner101, align 8, !dbg !4965
  %conv102 = zext i8 %85 to i32, !dbg !4963
  %cmp103 = icmp eq i32 %conv102, 1, !dbg !4966
  br i1 %cmp103, label %if.then105, label %if.end146, !dbg !4967

if.then105:                                       ; preds = %sw.epilog
  %86 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4968
  %clk_out106 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %86, i32 0, i32 9, !dbg !4970
  %bf.load107 = load i16, i16* %clk_out106, align 4, !dbg !4970
  %bf.lshr108 = lshr i16 %bf.load107, 1, !dbg !4970
  %bf.clear109 = and i16 %bf.lshr108, 3, !dbg !4970
  %bf.cast110 = trunc i16 %bf.clear109 to i8, !dbg !4970
  %conv111 = zext i8 %bf.cast110 to i32, !dbg !4968
  switch i32 %conv111, label %sw.default126 [
    i32 0, label %sw.bb112
    i32 1, label %sw.bb113
    i32 2, label %sw.bb125
  ], !dbg !4971

sw.bb112:                                         ; preds = %if.then105
  store i8 96, i8* %u8tmp, align 1, !dbg !4972
  br label %sw.epilog127, !dbg !4974

sw.bb113:                                         ; preds = %if.then105
  store i8 112, i8* %u8tmp, align 1, !dbg !4975
  %87 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4976
  %regmap114 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %87, i32 0, i32 3, !dbg !4977
  %88 = load %struct.regmap*, %struct.regmap** %regmap114, align 8, !dbg !4977
  %89 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4978
  %clk_out_div115 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %89, i32 0, i32 9, !dbg !4979
  %bf.load116 = load i16, i16* %clk_out_div115, align 4, !dbg !4979
  %bf.lshr117 = lshr i16 %bf.load116, 3, !dbg !4979
  %bf.clear118 = and i16 %bf.lshr117, 31, !dbg !4979
  %bf.cast119 = trunc i16 %bf.clear118 to i8, !dbg !4979
  %conv120 = zext i8 %bf.cast119 to i32, !dbg !4978
  %call121 = call i32 @regmap_write(%struct.regmap* %88, i32 5, i32 %conv120) #9, !dbg !4980
  store i32 %call121, i32* %ret, align 4, !dbg !4981
  %90 = load i32, i32* %ret, align 4, !dbg !4982
  %tobool122 = icmp ne i32 %90, 0, !dbg !4982
  br i1 %tobool122, label %if.then123, label %if.end124, !dbg !4984

if.then123:                                       ; preds = %sw.bb113
  br label %err_regmap_exit, !dbg !4985

if.end124:                                        ; preds = %sw.bb113
  br label %sw.epilog127, !dbg !4986

sw.bb125:                                         ; preds = %if.then105
  store i8 108, i8* %u8tmp, align 1, !dbg !4987
  br label %sw.epilog127, !dbg !4988

sw.default126:                                    ; preds = %if.then105
  store i32 -22, i32* %ret, align 4, !dbg !4989
  br label %err_regmap_exit, !dbg !4990

sw.epilog127:                                     ; preds = %sw.bb125, %if.end124, %sw.bb112
  %91 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !4991
  %regmap128 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %91, i32 0, i32 3, !dbg !4992
  %92 = load %struct.regmap*, %struct.regmap** %regmap128, align 8, !dbg !4992
  %93 = load i8, i8* %u8tmp, align 1, !dbg !4993
  %conv129 = zext i8 %93 to i32, !dbg !4993
  %call130 = call i32 @regmap_write(%struct.regmap* %92, i32 66, i32 %conv129) #9, !dbg !4994
  store i32 %call130, i32* %ret, align 4, !dbg !4995
  %94 = load i32, i32* %ret, align 4, !dbg !4996
  %tobool131 = icmp ne i32 %94, 0, !dbg !4996
  br i1 %tobool131, label %if.then132, label %if.end133, !dbg !4998

if.then132:                                       ; preds = %sw.epilog127
  br label %err_regmap_exit, !dbg !4999

if.end133:                                        ; preds = %sw.epilog127
  %95 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !5000
  %loop_through134 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %95, i32 0, i32 9, !dbg !5002
  %bf.load135 = load i16, i16* %loop_through134, align 4, !dbg !5002
  %bf.clear136 = and i16 %bf.load135, 1, !dbg !5002
  %bf.cast137 = trunc i16 %bf.clear136 to i1, !dbg !5002
  br i1 %bf.cast137, label %if.then138, label %if.else, !dbg !5003

if.then138:                                       ; preds = %if.end133
  store i8 -20, i8* %u8tmp, align 1, !dbg !5004
  br label %if.end139, !dbg !5005

if.else:                                          ; preds = %if.end133
  store i8 108, i8* %u8tmp, align 1, !dbg !5006
  br label %if.end139

if.end139:                                        ; preds = %if.else, %if.then138
  %96 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !5007
  %regmap140 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %96, i32 0, i32 3, !dbg !5008
  %97 = load %struct.regmap*, %struct.regmap** %regmap140, align 8, !dbg !5008
  %98 = load i8, i8* %u8tmp, align 1, !dbg !5009
  %conv141 = zext i8 %98 to i32, !dbg !5009
  %call142 = call i32 @regmap_write(%struct.regmap* %97, i32 98, i32 %conv141) #9, !dbg !5010
  store i32 %call142, i32* %ret, align 4, !dbg !5011
  %99 = load i32, i32* %ret, align 4, !dbg !5012
  %tobool143 = icmp ne i32 %99, 0, !dbg !5012
  br i1 %tobool143, label %if.then144, label %if.end145, !dbg !5014

if.then144:                                       ; preds = %if.end139
  br label %err_regmap_exit, !dbg !5015

if.end145:                                        ; preds = %if.end139
  br label %if.end146, !dbg !5016

if.end146:                                        ; preds = %if.end145, %sw.epilog
  %100 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !5017
  %regmap147 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %100, i32 0, i32 3, !dbg !5018
  %101 = load %struct.regmap*, %struct.regmap** %regmap147, align 8, !dbg !5018
  %call148 = call i32 @regmap_write(%struct.regmap* %101, i32 0, i32 0) #9, !dbg !5019
  store i32 %call148, i32* %ret, align 4, !dbg !5020
  %102 = load i32, i32* %ret, align 4, !dbg !5021
  %tobool149 = icmp ne i32 %102, 0, !dbg !5021
  br i1 %tobool149, label %if.then150, label %if.end151, !dbg !5023

if.then150:                                       ; preds = %if.end146
  br label %err_regmap_exit, !dbg !5024

if.end151:                                        ; preds = %if.end146
  %103 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5025
  %dev152 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %103, i32 0, i32 4, !dbg !5025
  %104 = load i8*, i8** %chip_str, align 8, !dbg !5025
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev152, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* %104) #10, !dbg !5025
  %105 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe, align 8, !dbg !5026
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %105, i32 0, i32 1, !dbg !5027
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !5028
  %106 = bitcast %struct.dvb_tuner_ops* %tuner_ops to i8*, !dbg !5029
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %106, i8* align 8 getelementptr inbounds (%struct.dvb_tuner_ops, %struct.dvb_tuner_ops* @ts2020_tuner_ops, i32 0, i32 0, i32 0, i32 0), i64 288, i1 false), !dbg !5029
  %107 = load %struct.ts2020_config*, %struct.ts2020_config** %pdata, align 8, !dbg !5030
  %attach_in_use = getelementptr inbounds %struct.ts2020_config, %struct.ts2020_config* %107, i32 0, i32 4, !dbg !5032
  %bf.load153 = load i8, i8* %attach_in_use, align 8, !dbg !5032
  %bf.clear154 = and i8 %bf.load153, 1, !dbg !5032
  %tobool155 = icmp ne i8 %bf.clear154, 0, !dbg !5030
  br i1 %tobool155, label %if.end159, label %if.then156, !dbg !5033

if.then156:                                       ; preds = %if.end151
  %108 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe, align 8, !dbg !5034
  %ops157 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %108, i32 0, i32 1, !dbg !5035
  %tuner_ops158 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops157, i32 0, i32 30, !dbg !5036
  %release = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops158, i32 0, i32 1, !dbg !5037
  store void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)** %release, align 8, !dbg !5038
  br label %if.end159, !dbg !5034

if.end159:                                        ; preds = %if.then156, %if.end151
  %109 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5039
  %110 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !5040
  %111 = bitcast %struct.ts2020_priv* %110 to i8*, !dbg !5040
  call void @i2c_set_clientdata(%struct.i2c_client* %109, i8* %111) #9, !dbg !5041
  store i32 0, i32* %retval, align 4, !dbg !5042
  br label %return, !dbg !5042

err_regmap_exit:                                  ; preds = %if.then150, %if.then144, %if.then132, %sw.default126, %if.then123, %sw.default, %if.then87, %if.then82, %if.then76, %if.then69
  call void @llvm.dbg.label(metadata !5043), !dbg !5044
  %112 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !5045
  %regmap160 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %112, i32 0, i32 3, !dbg !5046
  %113 = load %struct.regmap*, %struct.regmap** %regmap160, align 8, !dbg !5046
  call void @regmap_exit(%struct.regmap* %113) #9, !dbg !5047
  br label %err_kfree, !dbg !5047

err_kfree:                                        ; preds = %err_regmap_exit, %if.then11
  call void @llvm.dbg.label(metadata !5048), !dbg !5049
  %114 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev2, align 8, !dbg !5050
  %115 = bitcast %struct.ts2020_priv* %114 to i8*, !dbg !5050
  call void @kfree(i8* %115) #9, !dbg !5051
  br label %err, !dbg !5051

err:                                              ; preds = %err_kfree, %if.then
  call void @llvm.dbg.label(metadata !5052), !dbg !5053
  %116 = load i32, i32* %ret, align 4, !dbg !5054
  store i32 %116, i32* %retval, align 4, !dbg !5055
  br label %return, !dbg !5055

return:                                           ; preds = %err, %if.end159
  %117 = load i32, i32* %retval, align 4, !dbg !5056
  ret i32 %117, !dbg !5056
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ts2020_remove(%struct.i2c_client* %client) #0 !dbg !5057 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %dev = alloca %struct.ts2020_priv*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !5058, metadata !DIExpression()), !dbg !5059
  call void @llvm.dbg.declare(metadata %struct.ts2020_priv** %dev, metadata !5060, metadata !DIExpression()), !dbg !5061
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5062
  %call = call i8* @i2c_get_clientdata(%struct.i2c_client* %0) #9, !dbg !5063
  %1 = bitcast i8* %call to %struct.ts2020_priv*, !dbg !5063
  store %struct.ts2020_priv* %1, %struct.ts2020_priv** %dev, align 8, !dbg !5061
  %2 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev, align 8, !dbg !5064
  %dont_poll = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %2, i32 0, i32 9, !dbg !5066
  %bf.load = load i16, i16* %dont_poll, align 4, !dbg !5066
  %bf.lshr = lshr i16 %bf.load, 8, !dbg !5066
  %bf.clear = and i16 %bf.lshr, 1, !dbg !5066
  %bf.cast = trunc i16 %bf.clear to i1, !dbg !5066
  br i1 %bf.cast, label %if.end, label %if.then, !dbg !5067

if.then:                                          ; preds = %entry
  %3 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev, align 8, !dbg !5068
  %stat_work = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %3, i32 0, i32 5, !dbg !5069
  %call1 = call zeroext i1 @cancel_delayed_work_sync(%struct.delayed_work* %stat_work) #9, !dbg !5070
  br label %if.end, !dbg !5070

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev, align 8, !dbg !5071
  %regmap = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %4, i32 0, i32 3, !dbg !5072
  %5 = load %struct.regmap*, %struct.regmap** %regmap, align 8, !dbg !5072
  call void @regmap_exit(%struct.regmap* %5) #9, !dbg !5073
  %6 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev, align 8, !dbg !5074
  %7 = bitcast %struct.ts2020_priv* %6 to i8*, !dbg !5074
  call void @kfree(i8* %7) #9, !dbg !5075
  ret i32 0, !dbg !5076
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !5077 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5080, metadata !DIExpression()), !dbg !5084
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5090, metadata !DIExpression()), !dbg !5091
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5092, metadata !DIExpression()), !dbg !5093
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5094, metadata !DIExpression()), !dbg !5095
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5096, metadata !DIExpression()), !dbg !5100
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5102, metadata !DIExpression()), !dbg !5106
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5108, metadata !DIExpression()), !dbg !5112
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5117, metadata !DIExpression()), !dbg !5118
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5119, metadata !DIExpression()), !dbg !5120
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5121, metadata !DIExpression()), !dbg !5122
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5123, metadata !DIExpression()), !dbg !5124
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5125, metadata !DIExpression()), !dbg !5126
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5127, metadata !DIExpression()), !dbg !5128
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5129, metadata !DIExpression()), !dbg !5130
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5131, metadata !DIExpression()), !dbg !5132
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5133, metadata !DIExpression()), !dbg !5134
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5135, metadata !DIExpression()), !dbg !5136
  %0 = load i64, i64* %size.addr, align 8, !dbg !5137
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5138
  %or = or i32 %1, 256, !dbg !5139
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5140
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #11, !dbg !5141
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5142

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5143
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5144
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5145

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5146
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5147
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5148
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !5149
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5126
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5150
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5151
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5152
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5153
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5154
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5155
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !5156
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5156
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5156
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5156
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !5156
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5157
  br label %kmalloc.exit, !dbg !5157

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5158
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5159
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5159
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5161

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5162
  br label %kmalloc_index.exit.i, !dbg !5162

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5163
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5165
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5166

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5167
  br label %kmalloc_index.exit.i, !dbg !5167

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5168
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5170
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5171

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5172
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5173
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5174

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5175
  br label %kmalloc_index.exit.i, !dbg !5175

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5176
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5178
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5179

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5180
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5181
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5182

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5183
  br label %kmalloc_index.exit.i, !dbg !5183

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5184
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5186
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5187

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5188
  br label %kmalloc_index.exit.i, !dbg !5188

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5189
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5191
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5192

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5193
  br label %kmalloc_index.exit.i, !dbg !5193

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5194
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5196
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5197

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5198
  br label %kmalloc_index.exit.i, !dbg !5198

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5199
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5201
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5202

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5203
  br label %kmalloc_index.exit.i, !dbg !5203

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5204
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5206
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5207

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5208
  br label %kmalloc_index.exit.i, !dbg !5208

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5209
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5211
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5212

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5213
  br label %kmalloc_index.exit.i, !dbg !5213

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5214
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5216
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5217

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5218
  br label %kmalloc_index.exit.i, !dbg !5218

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5219
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5221
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5222

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5223
  br label %kmalloc_index.exit.i, !dbg !5223

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5224
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5226
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5227

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5228
  br label %kmalloc_index.exit.i, !dbg !5228

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5229
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5231
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5232

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5233
  br label %kmalloc_index.exit.i, !dbg !5233

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5234
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5236
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5237

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5238
  br label %kmalloc_index.exit.i, !dbg !5238

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5239
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5241
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5242

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5243
  br label %kmalloc_index.exit.i, !dbg !5243

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5244
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5246
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5247

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5248
  br label %kmalloc_index.exit.i, !dbg !5248

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5249
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5251
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5252

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5253
  br label %kmalloc_index.exit.i, !dbg !5253

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5254
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5256
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5257

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5258
  br label %kmalloc_index.exit.i, !dbg !5258

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5259
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5261
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5262

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5263
  br label %kmalloc_index.exit.i, !dbg !5263

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5264
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5266
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5267

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5268
  br label %kmalloc_index.exit.i, !dbg !5268

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5269
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5271
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5272

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5273
  br label %kmalloc_index.exit.i, !dbg !5273

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5274
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5276
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5277

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5278
  br label %kmalloc_index.exit.i, !dbg !5278

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5279
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5281
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5282

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5283
  br label %kmalloc_index.exit.i, !dbg !5283

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5284
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5286
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5287

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5288
  br label %kmalloc_index.exit.i, !dbg !5288

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5289
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5291
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5292

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5293
  br label %kmalloc_index.exit.i, !dbg !5293

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5294
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5296
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5297

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5298
  br label %kmalloc_index.exit.i, !dbg !5298

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5299
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5301
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5302

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5303
  br label %kmalloc_index.exit.i, !dbg !5303

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !5304, !srcloc !5307
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #11, !dbg !5308, !srcloc !5311
  unreachable, !dbg !5312

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5313
  store i32 %45, i32* %index.i, align 4, !dbg !5314
  %46 = load i32, i32* %index.i, align 4, !dbg !5315
  %tobool.i = icmp ne i32 %46, 0, !dbg !5315
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5317

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5318
  br label %kmalloc.exit, !dbg !5318

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5319
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5320
  %and.i.i = and i32 %48, 17, !dbg !5320
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5320
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5320
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5320
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5320
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5322

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5323
  br label %kmalloc_type.exit.i, !dbg !5323

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5324
  %and2.i.i = and i32 %49, 1, !dbg !5325
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5324
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5324
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5324
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5326
  br label %kmalloc_type.exit.i, !dbg !5326

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5327
  %idxprom.i = zext i32 %51 to i64, !dbg !5328
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5328
  %52 = load i32, i32* %index.i, align 4, !dbg !5329
  %idxprom6.i = zext i32 %52 to i64, !dbg !5328
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5328
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5328
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5330
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5331
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5332
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5333
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !5334
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5334
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5334
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5334
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !5334
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5095
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5335
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5336
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5337
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5338
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !5339
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5340
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5341
  store i8* %62, i8** %retval.i, align 8, !dbg !5342
  br label %kmalloc.exit, !dbg !5342

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5343
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5344
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !5345
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5345
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5345
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5345
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !5345
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5346
  br label %kmalloc.exit, !dbg !5346

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5347
  ret i8* %65, !dbg !5348
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ts2020_regmap_lock(i8* %__dev) #0 !dbg !5349 {
entry:
  %__dev.addr = alloca i8*, align 8
  %dev = alloca %struct.ts2020_priv*, align 8
  store i8* %__dev, i8** %__dev.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__dev.addr, metadata !5350, metadata !DIExpression()), !dbg !5351
  call void @llvm.dbg.declare(metadata %struct.ts2020_priv** %dev, metadata !5352, metadata !DIExpression()), !dbg !5353
  %0 = load i8*, i8** %__dev.addr, align 8, !dbg !5354
  %1 = bitcast i8* %0 to %struct.ts2020_priv*, !dbg !5354
  store %struct.ts2020_priv* %1, %struct.ts2020_priv** %dev, align 8, !dbg !5353
  %2 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev, align 8, !dbg !5355
  %regmap_mutex = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %2, i32 0, i32 1, !dbg !5356
  call void @mutex_lock(%struct.mutex* %regmap_mutex) #9, !dbg !5357
  %3 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev, align 8, !dbg !5358
  %fe = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %3, i32 0, i32 4, !dbg !5360
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe, align 8, !dbg !5360
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %4, i32 0, i32 1, !dbg !5361
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 26, !dbg !5362
  %5 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl, align 8, !dbg !5362
  %tobool = icmp ne i32 (%struct.dvb_frontend*, i32)* %5, null, !dbg !5358
  br i1 %tobool, label %if.then, label %if.end, !dbg !5363

if.then:                                          ; preds = %entry
  %6 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev, align 8, !dbg !5364
  %fe1 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %6, i32 0, i32 4, !dbg !5365
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe1, align 8, !dbg !5365
  %ops2 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 1, !dbg !5366
  %i2c_gate_ctrl3 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops2, i32 0, i32 26, !dbg !5367
  %8 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl3, align 8, !dbg !5367
  %9 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev, align 8, !dbg !5368
  %fe4 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %9, i32 0, i32 4, !dbg !5369
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe4, align 8, !dbg !5369
  %call = call i32 %8(%struct.dvb_frontend* %10, i32 1) #9, !dbg !5364
  br label %if.end, !dbg !5364

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5370
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ts2020_regmap_unlock(i8* %__dev) #0 !dbg !5371 {
entry:
  %__dev.addr = alloca i8*, align 8
  %dev = alloca %struct.ts2020_priv*, align 8
  store i8* %__dev, i8** %__dev.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__dev.addr, metadata !5372, metadata !DIExpression()), !dbg !5373
  call void @llvm.dbg.declare(metadata %struct.ts2020_priv** %dev, metadata !5374, metadata !DIExpression()), !dbg !5375
  %0 = load i8*, i8** %__dev.addr, align 8, !dbg !5376
  %1 = bitcast i8* %0 to %struct.ts2020_priv*, !dbg !5376
  store %struct.ts2020_priv* %1, %struct.ts2020_priv** %dev, align 8, !dbg !5375
  %2 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev, align 8, !dbg !5377
  %fe = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %2, i32 0, i32 4, !dbg !5379
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe, align 8, !dbg !5379
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %3, i32 0, i32 1, !dbg !5380
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 26, !dbg !5381
  %4 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl, align 8, !dbg !5381
  %tobool = icmp ne i32 (%struct.dvb_frontend*, i32)* %4, null, !dbg !5377
  br i1 %tobool, label %if.then, label %if.end, !dbg !5382

if.then:                                          ; preds = %entry
  %5 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev, align 8, !dbg !5383
  %fe1 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %5, i32 0, i32 4, !dbg !5384
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe1, align 8, !dbg !5384
  %ops2 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 1, !dbg !5385
  %i2c_gate_ctrl3 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops2, i32 0, i32 26, !dbg !5386
  %7 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl3, align 8, !dbg !5386
  %8 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev, align 8, !dbg !5387
  %fe4 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %8, i32 0, i32 4, !dbg !5388
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe4, align 8, !dbg !5388
  %call = call i32 %7(%struct.dvb_frontend* %9, i32 0) #9, !dbg !5383
  br label %if.end, !dbg !5383

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev, align 8, !dbg !5389
  %regmap_mutex = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %10, i32 0, i32 1, !dbg !5390
  call void @mutex_unlock(%struct.mutex* %regmap_mutex) #9, !dbg !5391
  ret void, !dbg !5392
}

; Function Attrs: noredzone
declare dso_local %struct.regmap* @__regmap_init_i2c(%struct.i2c_client*, %struct.regmap_config*, %struct.lock_class_key*, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !5393 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5394, metadata !DIExpression()), !dbg !5395
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5396
  %1 = ptrtoint i8* %0 to i64, !dbg !5396
  %2 = inttoptr i64 %1 to i8*, !dbg !5396
  %3 = ptrtoint i8* %2 to i64, !dbg !5396
  %cmp = icmp uge i64 %3, -4095, !dbg !5396
  %lnot = xor i1 %cmp, true, !dbg !5396
  %lnot1 = xor i1 %lnot, true, !dbg !5396
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5396
  %conv = sext i32 %lnot.ext to i64, !dbg !5396
  %tobool = icmp ne i64 %conv, 0, !dbg !5396
  ret i1 %tobool, !dbg !5397
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !5398 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5401, metadata !DIExpression()), !dbg !5402
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5403
  %1 = ptrtoint i8* %0 to i64, !dbg !5404
  ret i64 %1, !dbg !5405
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_work(%struct.work_struct* %work, i32 %onstack) #0 !dbg !5406 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %onstack.addr = alloca i32, align 4
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !5409, metadata !DIExpression()), !dbg !5410
  store i32 %onstack, i32* %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %onstack.addr, metadata !5411, metadata !DIExpression()), !dbg !5412
  ret void, !dbg !5413
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !5414 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !5418, metadata !DIExpression()), !dbg !5419
  br label %do.body, !dbg !5420

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5421

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5423

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5421

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5425
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5425
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5425
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !5425
  br label %do.end3, !dbg !5425

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5421

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5427
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5428
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !5429
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !5430
  ret void, !dbg !5431
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ts2020_stat_work(%struct.work_struct* %work) #0 !dbg !5432 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !5433, metadata !DIExpression()), !dbg !5438
  %work.addr = alloca %struct.work_struct*, align 8
  %priv = alloca %struct.ts2020_priv*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ts2020_priv*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  %ret = alloca i32, align 4
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !5441, metadata !DIExpression()), !dbg !5442
  call void @llvm.dbg.declare(metadata %struct.ts2020_priv** %priv, metadata !5443, metadata !DIExpression()), !dbg !5444
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5445, metadata !DIExpression()), !dbg !5447
  %0 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !5447
  %1 = bitcast %struct.work_struct* %0 to i8*, !dbg !5447
  store i8* %1, i8** %__mptr, align 8, !dbg !5447
  br label %do.body, !dbg !5447

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5448

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5447
  %add.ptr = getelementptr i8, i8* %2, i64 -320, !dbg !5447
  %3 = bitcast i8* %add.ptr to %struct.ts2020_priv*, !dbg !5447
  store %struct.ts2020_priv* %3, %struct.ts2020_priv** %tmp, align 8, !dbg !5448
  %4 = load %struct.ts2020_priv*, %struct.ts2020_priv** %tmp, align 8, !dbg !5447
  store %struct.ts2020_priv* %4, %struct.ts2020_priv** %priv, align 8, !dbg !5444
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !5450, metadata !DIExpression()), !dbg !5451
  %5 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !5452
  %client1 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %5, i32 0, i32 0, !dbg !5453
  %6 = load %struct.i2c_client*, %struct.i2c_client** %client1, align 8, !dbg !5453
  store %struct.i2c_client* %6, %struct.i2c_client** %client, align 8, !dbg !5451
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !5454, metadata !DIExpression()), !dbg !5455
  %7 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !5456
  %fe = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %7, i32 0, i32 4, !dbg !5457
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe, align 8, !dbg !5457
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 8, !dbg !5458
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !5455
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5459, metadata !DIExpression()), !dbg !5460
  %9 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !5461
  %fe2 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %9, i32 0, i32 4, !dbg !5462
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe2, align 8, !dbg !5462
  %11 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5463
  %strength = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %11, i32 0, i32 42, !dbg !5464
  %stat = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %strength, i32 0, i32 1, !dbg !5465
  %arrayidx = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat, i64 0, i64 0, !dbg !5463
  %12 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx, i32 0, i32 1, !dbg !5466
  %svalue = bitcast %union.anon* %12 to i64*, !dbg !5466
  %call = call i32 @ts2020_get_tuner_gain(%struct.dvb_frontend* %10, i64* %svalue) #9, !dbg !5467
  store i32 %call, i32* %ret, align 4, !dbg !5468
  %13 = load i32, i32* %ret, align 4, !dbg !5469
  %cmp = icmp slt i32 %13, 0, !dbg !5471
  br i1 %cmp, label %if.then, label %if.end, !dbg !5472

if.then:                                          ; preds = %do.end
  br label %err, !dbg !5473

if.end:                                           ; preds = %do.end
  %14 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5474
  %strength3 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %14, i32 0, i32 42, !dbg !5475
  %stat4 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %strength3, i32 0, i32 1, !dbg !5476
  %arrayidx5 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat4, i64 0, i64 0, !dbg !5474
  %scale = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx5, i32 0, i32 0, !dbg !5477
  store i8 1, i8* %scale, align 1, !dbg !5478
  %15 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !5479
  %dont_poll = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %15, i32 0, i32 9, !dbg !5480
  %bf.load = load i16, i16* %dont_poll, align 4, !dbg !5480
  %bf.lshr = lshr i16 %bf.load, 8, !dbg !5480
  %bf.clear = and i16 %bf.lshr, 1, !dbg !5480
  %bf.cast = trunc i16 %bf.clear to i1, !dbg !5480
  br i1 %bf.cast, label %if.end9, label %if.then6, !dbg !5481

if.then6:                                         ; preds = %if.end
  %16 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !5482
  %stat_work = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %16, i32 0, i32 5, !dbg !5483
  store i32 2000, i32* %m.addr.i, align 4
  %17 = load i32, i32* %m.addr.i, align 4, !dbg !5484
  %18 = call i1 @llvm.is.constant.i32(i32 %17) #11, !dbg !5486
  br i1 %18, label %if.then.i, label %if.else.i, !dbg !5487

if.then.i:                                        ; preds = %if.then6
  %19 = load i32, i32* %m.addr.i, align 4, !dbg !5488
  %cmp.i = icmp slt i32 %19, 0, !dbg !5491
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5492

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !5493
  br label %msecs_to_jiffies.exit, !dbg !5493

if.end.i:                                         ; preds = %if.then.i
  %20 = load i32, i32* %m.addr.i, align 4, !dbg !5494
  %call.i = call i64 @_msecs_to_jiffies(i32 %20) #13, !dbg !5495
  store i64 %call.i, i64* %retval.i, align 8, !dbg !5496
  br label %msecs_to_jiffies.exit, !dbg !5496

if.else.i:                                        ; preds = %if.then6
  %21 = load i32, i32* %m.addr.i, align 4, !dbg !5497
  %call2.i = call i64 @__msecs_to_jiffies(i32 %21) #13, !dbg !5499
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !5500
  br label %msecs_to_jiffies.exit, !dbg !5500

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %22 = load i64, i64* %retval.i, align 8, !dbg !5501
  %call8 = call zeroext i1 @schedule_delayed_work(%struct.delayed_work* %stat_work, i64 %22) #9, !dbg !5502
  br label %if.end9, !dbg !5502

if.end9:                                          ; preds = %msecs_to_jiffies.exit, %if.end
  br label %return, !dbg !5503

err:                                              ; preds = %if.then
  call void @llvm.dbg.label(metadata !5504), !dbg !5505
  br label %return, !dbg !5506

return:                                           ; preds = %err, %if.end9
  ret void, !dbg !5506
}

; Function Attrs: noredzone
declare dso_local void @init_timer_key(%struct.timer_list*, void (%struct.timer_list*)*, i32, i8*, %struct.lock_class_key*) #3

; Function Attrs: noredzone
declare dso_local void @delayed_work_timer_fn(%struct.timer_list*) #3

; Function Attrs: noredzone
declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #3

; Function Attrs: noredzone
declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #3

; Function Attrs: noredzone
declare dso_local void @usleep_range(i64, i64) #3

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_set_clientdata(%struct.i2c_client* %client, i8* %data) #0 !dbg !5507 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !5510, metadata !DIExpression()), !dbg !5511
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5512, metadata !DIExpression()), !dbg !5513
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5514
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %0, i32 0, i32 4, !dbg !5515
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5516
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #9, !dbg !5517
  ret void, !dbg !5518
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @regmap_exit(%struct.regmap*) #3

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !5519 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5523, metadata !DIExpression()), !dbg !5528
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5530, metadata !DIExpression()), !dbg !5531
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5532, metadata !DIExpression()), !dbg !5533
  %0 = load i64, i64* %size.addr, align 8, !dbg !5534
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5536
  br i1 %1, label %if.then, label %if.end447, !dbg !5537

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5538
  %tobool = icmp ne i64 %2, 0, !dbg !5538
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5541

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5542
  br label %return, !dbg !5542

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5543
  %cmp = icmp ult i64 %3, 4096, !dbg !5545
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5546

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5547
  br label %return, !dbg !5547

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub = sub i64 %4, 1, !dbg !5548
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5548
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5548

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub4 = sub i64 %6, 1, !dbg !5548
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5548
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5548

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub6 = sub i64 %8, 1, !dbg !5548
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5548
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5548

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5548

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub9 = sub i64 %9, 1, !dbg !5548
  %and = and i64 %sub9, -9223372036854775808, !dbg !5548
  %tobool10 = icmp ne i64 %and, 0, !dbg !5548
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5548

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5548

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub13 = sub i64 %10, 1, !dbg !5548
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5548
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5548
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5548

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5548

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub18 = sub i64 %11, 1, !dbg !5548
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5548
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5548
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5548

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5548

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub23 = sub i64 %12, 1, !dbg !5548
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5548
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5548
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5548

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5548

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub28 = sub i64 %13, 1, !dbg !5548
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5548
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5548
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5548

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5548

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub33 = sub i64 %14, 1, !dbg !5548
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5548
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5548
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5548

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5548

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub38 = sub i64 %15, 1, !dbg !5548
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5548
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5548
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5548

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5548

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub43 = sub i64 %16, 1, !dbg !5548
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5548
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5548
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5548

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5548

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub48 = sub i64 %17, 1, !dbg !5548
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5548
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5548
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5548

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5548

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub53 = sub i64 %18, 1, !dbg !5548
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5548
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5548
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5548

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5548

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub58 = sub i64 %19, 1, !dbg !5548
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5548
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5548
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5548

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5548

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub63 = sub i64 %20, 1, !dbg !5548
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5548
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5548
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5548

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5548

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub68 = sub i64 %21, 1, !dbg !5548
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5548
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5548
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5548

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5548

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub73 = sub i64 %22, 1, !dbg !5548
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5548
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5548
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5548

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5548

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub78 = sub i64 %23, 1, !dbg !5548
  %and79 = and i64 %sub78, 562949953421312, !dbg !5548
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5548
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5548

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5548

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub83 = sub i64 %24, 1, !dbg !5548
  %and84 = and i64 %sub83, 281474976710656, !dbg !5548
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5548
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5548

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5548

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub88 = sub i64 %25, 1, !dbg !5548
  %and89 = and i64 %sub88, 140737488355328, !dbg !5548
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5548
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5548

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5548

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub93 = sub i64 %26, 1, !dbg !5548
  %and94 = and i64 %sub93, 70368744177664, !dbg !5548
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5548
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5548

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5548

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub98 = sub i64 %27, 1, !dbg !5548
  %and99 = and i64 %sub98, 35184372088832, !dbg !5548
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5548
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5548

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5548

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub103 = sub i64 %28, 1, !dbg !5548
  %and104 = and i64 %sub103, 17592186044416, !dbg !5548
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5548
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5548

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5548

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub108 = sub i64 %29, 1, !dbg !5548
  %and109 = and i64 %sub108, 8796093022208, !dbg !5548
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5548
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5548

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5548

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub113 = sub i64 %30, 1, !dbg !5548
  %and114 = and i64 %sub113, 4398046511104, !dbg !5548
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5548
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5548

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5548

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub118 = sub i64 %31, 1, !dbg !5548
  %and119 = and i64 %sub118, 2199023255552, !dbg !5548
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5548
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5548

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5548

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub123 = sub i64 %32, 1, !dbg !5548
  %and124 = and i64 %sub123, 1099511627776, !dbg !5548
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5548
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5548

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5548

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub128 = sub i64 %33, 1, !dbg !5548
  %and129 = and i64 %sub128, 549755813888, !dbg !5548
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5548
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5548

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5548

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub133 = sub i64 %34, 1, !dbg !5548
  %and134 = and i64 %sub133, 274877906944, !dbg !5548
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5548
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5548

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5548

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub138 = sub i64 %35, 1, !dbg !5548
  %and139 = and i64 %sub138, 137438953472, !dbg !5548
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5548
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5548

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5548

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub143 = sub i64 %36, 1, !dbg !5548
  %and144 = and i64 %sub143, 68719476736, !dbg !5548
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5548
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5548

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5548

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub148 = sub i64 %37, 1, !dbg !5548
  %and149 = and i64 %sub148, 34359738368, !dbg !5548
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5548
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5548

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5548

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub153 = sub i64 %38, 1, !dbg !5548
  %and154 = and i64 %sub153, 17179869184, !dbg !5548
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5548
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5548

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5548

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub158 = sub i64 %39, 1, !dbg !5548
  %and159 = and i64 %sub158, 8589934592, !dbg !5548
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5548
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5548

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5548

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub163 = sub i64 %40, 1, !dbg !5548
  %and164 = and i64 %sub163, 4294967296, !dbg !5548
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5548
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5548

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5548

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub168 = sub i64 %41, 1, !dbg !5548
  %and169 = and i64 %sub168, 2147483648, !dbg !5548
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5548
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5548

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5548

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub173 = sub i64 %42, 1, !dbg !5548
  %and174 = and i64 %sub173, 1073741824, !dbg !5548
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5548
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5548

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5548

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub178 = sub i64 %43, 1, !dbg !5548
  %and179 = and i64 %sub178, 536870912, !dbg !5548
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5548
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5548

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5548

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub183 = sub i64 %44, 1, !dbg !5548
  %and184 = and i64 %sub183, 268435456, !dbg !5548
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5548
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5548

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5548

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub188 = sub i64 %45, 1, !dbg !5548
  %and189 = and i64 %sub188, 134217728, !dbg !5548
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5548
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5548

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5548

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub193 = sub i64 %46, 1, !dbg !5548
  %and194 = and i64 %sub193, 67108864, !dbg !5548
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5548
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5548

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5548

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub198 = sub i64 %47, 1, !dbg !5548
  %and199 = and i64 %sub198, 33554432, !dbg !5548
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5548
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5548

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5548

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub203 = sub i64 %48, 1, !dbg !5548
  %and204 = and i64 %sub203, 16777216, !dbg !5548
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5548
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5548

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5548

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub208 = sub i64 %49, 1, !dbg !5548
  %and209 = and i64 %sub208, 8388608, !dbg !5548
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5548
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5548

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5548

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub213 = sub i64 %50, 1, !dbg !5548
  %and214 = and i64 %sub213, 4194304, !dbg !5548
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5548
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5548

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5548

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub218 = sub i64 %51, 1, !dbg !5548
  %and219 = and i64 %sub218, 2097152, !dbg !5548
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5548
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5548

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5548

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub223 = sub i64 %52, 1, !dbg !5548
  %and224 = and i64 %sub223, 1048576, !dbg !5548
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5548
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5548

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5548

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub228 = sub i64 %53, 1, !dbg !5548
  %and229 = and i64 %sub228, 524288, !dbg !5548
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5548
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5548

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5548

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub233 = sub i64 %54, 1, !dbg !5548
  %and234 = and i64 %sub233, 262144, !dbg !5548
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5548
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5548

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5548

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub238 = sub i64 %55, 1, !dbg !5548
  %and239 = and i64 %sub238, 131072, !dbg !5548
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5548
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5548

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5548

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub243 = sub i64 %56, 1, !dbg !5548
  %and244 = and i64 %sub243, 65536, !dbg !5548
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5548
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5548

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5548

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub248 = sub i64 %57, 1, !dbg !5548
  %and249 = and i64 %sub248, 32768, !dbg !5548
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5548
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5548

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5548

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub253 = sub i64 %58, 1, !dbg !5548
  %and254 = and i64 %sub253, 16384, !dbg !5548
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5548
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5548

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5548

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub258 = sub i64 %59, 1, !dbg !5548
  %and259 = and i64 %sub258, 8192, !dbg !5548
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5548
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5548

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5548

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub263 = sub i64 %60, 1, !dbg !5548
  %and264 = and i64 %sub263, 4096, !dbg !5548
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5548
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5548

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5548

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub268 = sub i64 %61, 1, !dbg !5548
  %and269 = and i64 %sub268, 2048, !dbg !5548
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5548
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5548

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5548

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub273 = sub i64 %62, 1, !dbg !5548
  %and274 = and i64 %sub273, 1024, !dbg !5548
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5548
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5548

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5548

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub278 = sub i64 %63, 1, !dbg !5548
  %and279 = and i64 %sub278, 512, !dbg !5548
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5548
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5548

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5548

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub283 = sub i64 %64, 1, !dbg !5548
  %and284 = and i64 %sub283, 256, !dbg !5548
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5548
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5548

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5548

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub288 = sub i64 %65, 1, !dbg !5548
  %and289 = and i64 %sub288, 128, !dbg !5548
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5548
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5548

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5548

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub293 = sub i64 %66, 1, !dbg !5548
  %and294 = and i64 %sub293, 64, !dbg !5548
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5548
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5548

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5548

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub298 = sub i64 %67, 1, !dbg !5548
  %and299 = and i64 %sub298, 32, !dbg !5548
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5548
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5548

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5548

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub303 = sub i64 %68, 1, !dbg !5548
  %and304 = and i64 %sub303, 16, !dbg !5548
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5548
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5548

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5548

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub308 = sub i64 %69, 1, !dbg !5548
  %and309 = and i64 %sub308, 8, !dbg !5548
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5548
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5548

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5548

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub313 = sub i64 %70, 1, !dbg !5548
  %and314 = and i64 %sub313, 4, !dbg !5548
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5548
  %71 = zext i1 %tobool315 to i64, !dbg !5548
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5548
  br label %cond.end, !dbg !5548

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5548
  br label %cond.end317, !dbg !5548

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5548
  br label %cond.end319, !dbg !5548

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5548
  br label %cond.end321, !dbg !5548

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5548
  br label %cond.end323, !dbg !5548

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5548
  br label %cond.end325, !dbg !5548

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5548
  br label %cond.end327, !dbg !5548

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5548
  br label %cond.end329, !dbg !5548

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5548
  br label %cond.end331, !dbg !5548

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5548
  br label %cond.end333, !dbg !5548

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5548
  br label %cond.end335, !dbg !5548

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5548
  br label %cond.end337, !dbg !5548

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5548
  br label %cond.end339, !dbg !5548

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5548
  br label %cond.end341, !dbg !5548

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5548
  br label %cond.end343, !dbg !5548

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5548
  br label %cond.end345, !dbg !5548

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5548
  br label %cond.end347, !dbg !5548

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5548
  br label %cond.end349, !dbg !5548

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5548
  br label %cond.end351, !dbg !5548

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5548
  br label %cond.end353, !dbg !5548

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5548
  br label %cond.end355, !dbg !5548

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5548
  br label %cond.end357, !dbg !5548

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5548
  br label %cond.end359, !dbg !5548

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5548
  br label %cond.end361, !dbg !5548

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5548
  br label %cond.end363, !dbg !5548

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5548
  br label %cond.end365, !dbg !5548

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5548
  br label %cond.end367, !dbg !5548

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5548
  br label %cond.end369, !dbg !5548

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5548
  br label %cond.end371, !dbg !5548

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5548
  br label %cond.end373, !dbg !5548

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5548
  br label %cond.end375, !dbg !5548

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5548
  br label %cond.end377, !dbg !5548

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5548
  br label %cond.end379, !dbg !5548

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5548
  br label %cond.end381, !dbg !5548

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5548
  br label %cond.end383, !dbg !5548

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5548
  br label %cond.end385, !dbg !5548

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5548
  br label %cond.end387, !dbg !5548

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5548
  br label %cond.end389, !dbg !5548

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5548
  br label %cond.end391, !dbg !5548

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5548
  br label %cond.end393, !dbg !5548

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5548
  br label %cond.end395, !dbg !5548

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5548
  br label %cond.end397, !dbg !5548

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5548
  br label %cond.end399, !dbg !5548

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5548
  br label %cond.end401, !dbg !5548

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5548
  br label %cond.end403, !dbg !5548

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5548
  br label %cond.end405, !dbg !5548

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5548
  br label %cond.end407, !dbg !5548

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5548
  br label %cond.end409, !dbg !5548

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5548
  br label %cond.end411, !dbg !5548

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5548
  br label %cond.end413, !dbg !5548

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5548
  br label %cond.end415, !dbg !5548

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5548
  br label %cond.end417, !dbg !5548

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5548
  br label %cond.end419, !dbg !5548

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5548
  br label %cond.end421, !dbg !5548

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5548
  br label %cond.end423, !dbg !5548

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5548
  br label %cond.end425, !dbg !5548

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5548
  br label %cond.end427, !dbg !5548

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5548
  br label %cond.end429, !dbg !5548

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5548
  br label %cond.end431, !dbg !5548

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5548
  br label %cond.end433, !dbg !5548

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5548
  br label %cond.end435, !dbg !5548

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5548
  br label %cond.end437, !dbg !5548

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5548
  br label %cond.end440, !dbg !5548

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5548

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5548
  br label %cond.end444, !dbg !5548

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5548
  %sub443 = sub i64 %72, 1, !dbg !5548
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !5548
  br label %cond.end444, !dbg !5548

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5548
  %sub446 = sub i32 %cond445, 12, !dbg !5549
  %add = add i32 %sub446, 1, !dbg !5550
  store i32 %add, i32* %retval, align 4, !dbg !5551
  br label %return, !dbg !5551

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5552
  %dec = add i64 %73, -1, !dbg !5552
  store i64 %dec, i64* %size.addr, align 8, !dbg !5552
  %74 = load i64, i64* %size.addr, align 8, !dbg !5553
  %shr = lshr i64 %74, 12, !dbg !5553
  store i64 %shr, i64* %size.addr, align 8, !dbg !5553
  %75 = load i64, i64* %size.addr, align 8, !dbg !5554
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5531
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5555
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5556
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !5555, !srcloc !5557
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5555
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5558
  %add.i = add i32 %79, 1, !dbg !5559
  store i32 %add.i, i32* %retval, align 4, !dbg !5560
  br label %return, !dbg !5560

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5561
  ret i32 %80, !dbg !5561
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !5562 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5523, metadata !DIExpression()), !dbg !5566
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5530, metadata !DIExpression()), !dbg !5568
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5569, metadata !DIExpression()), !dbg !5570
  %0 = load i64, i64* %n.addr, align 8, !dbg !5571
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5568
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5572
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5573
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !5572, !srcloc !5557
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5572
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5574
  %add.i = add i32 %4, 1, !dbg !5575
  %sub = sub i32 %add.i, 1, !dbg !5576
  ret i32 %sub, !dbg !5577
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5578 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5582, metadata !DIExpression()), !dbg !5583
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5584, metadata !DIExpression()), !dbg !5585
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5586, metadata !DIExpression()), !dbg !5587
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5588, metadata !DIExpression()), !dbg !5589
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5590
  ret i8* %0, !dbg !5591
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #3

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ts2020_get_tuner_gain(%struct.dvb_frontend* %fe, i64* %_gain) #0 !dbg !5592 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %_gain.addr = alloca i64*, align 8
  %priv = alloca %struct.ts2020_priv*, align 8
  %v_agc = alloca i32, align 4
  %ret = alloca i32, align 4
  %agc_pwm = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5596, metadata !DIExpression()), !dbg !5597
  store i64* %_gain, i64** %_gain.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %_gain.addr, metadata !5598, metadata !DIExpression()), !dbg !5599
  call void @llvm.dbg.declare(metadata %struct.ts2020_priv** %priv, metadata !5600, metadata !DIExpression()), !dbg !5601
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5602
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5603
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5603
  %2 = bitcast i8* %1 to %struct.ts2020_priv*, !dbg !5602
  store %struct.ts2020_priv* %2, %struct.ts2020_priv** %priv, align 8, !dbg !5601
  call void @llvm.dbg.declare(metadata i32* %v_agc, metadata !5604, metadata !DIExpression()), !dbg !5605
  store i32 0, i32* %v_agc, align 4, !dbg !5605
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5606, metadata !DIExpression()), !dbg !5607
  call void @llvm.dbg.declare(metadata i8* %agc_pwm, metadata !5608, metadata !DIExpression()), !dbg !5609
  %3 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !5610
  %get_agc_pwm = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %3, i32 0, i32 6, !dbg !5612
  %4 = load i32 (%struct.dvb_frontend*, i8*)*, i32 (%struct.dvb_frontend*, i8*)** %get_agc_pwm, align 8, !dbg !5612
  %tobool = icmp ne i32 (%struct.dvb_frontend*, i8*)* %4, null, !dbg !5610
  br i1 %tobool, label %if.then, label %if.end12, !dbg !5613

if.then:                                          ; preds = %entry
  %5 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !5614
  %get_agc_pwm1 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %5, i32 0, i32 6, !dbg !5616
  %6 = load i32 (%struct.dvb_frontend*, i8*)*, i32 (%struct.dvb_frontend*, i8*)** %get_agc_pwm1, align 8, !dbg !5616
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5617
  %call = call i32 %6(%struct.dvb_frontend* %7, i8* %agc_pwm) #9, !dbg !5614
  store i32 %call, i32* %ret, align 4, !dbg !5618
  %8 = load i32, i32* %ret, align 4, !dbg !5619
  %cmp = icmp slt i32 %8, 0, !dbg !5621
  br i1 %cmp, label %if.then2, label %if.end, !dbg !5622

if.then2:                                         ; preds = %if.then
  %9 = load i32, i32* %ret, align 4, !dbg !5623
  store i32 %9, i32* %retval, align 4, !dbg !5624
  br label %return, !dbg !5624

if.end:                                           ; preds = %if.then
  %10 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !5625
  %tuner = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %10, i32 0, i32 12, !dbg !5626
  %11 = load i8, i8* %tuner, align 8, !dbg !5626
  %conv = zext i8 %11 to i32, !dbg !5625
  switch i32 %conv, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ], !dbg !5627

sw.bb:                                            ; preds = %if.end
  %12 = load i8, i8* %agc_pwm, align 1, !dbg !5628
  %conv3 = zext i8 %12 to i32, !dbg !5630
  %mul = mul i32 %conv3, 20, !dbg !5631
  %sub = sub i32 %mul, 1166, !dbg !5632
  store i32 %sub, i32* %v_agc, align 4, !dbg !5633
  br label %sw.epilog, !dbg !5634

sw.bb4:                                           ; preds = %if.end
  %13 = load i8, i8* %agc_pwm, align 1, !dbg !5635
  %conv5 = zext i8 %13 to i32, !dbg !5636
  %mul6 = mul i32 %conv5, 16, !dbg !5637
  %sub7 = sub i32 %mul6, 670, !dbg !5638
  store i32 %sub7, i32* %v_agc, align 4, !dbg !5639
  br label %sw.epilog, !dbg !5640

sw.epilog:                                        ; preds = %if.end, %sw.bb4, %sw.bb
  %14 = load i32, i32* %v_agc, align 4, !dbg !5641
  %cmp8 = icmp slt i32 %14, 0, !dbg !5643
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !5644

if.then10:                                        ; preds = %sw.epilog
  store i32 0, i32* %v_agc, align 4, !dbg !5645
  br label %if.end11, !dbg !5646

if.end11:                                         ; preds = %if.then10, %sw.epilog
  br label %if.end12, !dbg !5647

if.end12:                                         ; preds = %if.end11, %entry
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5648
  %16 = load i32, i32* %v_agc, align 4, !dbg !5649
  %17 = load i64*, i64** %_gain.addr, align 8, !dbg !5650
  %call13 = call i32 @ts2020_read_tuner_gain(%struct.dvb_frontend* %15, i32 %16, i64* %17) #9, !dbg !5651
  store i32 %call13, i32* %retval, align 4, !dbg !5652
  br label %return, !dbg !5652

return:                                           ; preds = %if.end12, %if.then2
  %18 = load i32, i32* %retval, align 4, !dbg !5653
  ret i32 %18, !dbg !5653
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @schedule_delayed_work(%struct.delayed_work* %dwork, i64 %delay) #0 !dbg !5654 {
entry:
  %dwork.addr = alloca %struct.delayed_work*, align 8
  %delay.addr = alloca i64, align 8
  store %struct.delayed_work* %dwork, %struct.delayed_work** %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.delayed_work** %dwork.addr, metadata !5658, metadata !DIExpression()), !dbg !5659
  store i64 %delay, i64* %delay.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delay.addr, metadata !5660, metadata !DIExpression()), !dbg !5661
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8, !dbg !5662
  %1 = load %struct.delayed_work*, %struct.delayed_work** %dwork.addr, align 8, !dbg !5663
  %2 = load i64, i64* %delay.addr, align 8, !dbg !5664
  %call = call zeroext i1 @queue_delayed_work(%struct.workqueue_struct* %0, %struct.delayed_work* %1, i64 %2) #9, !dbg !5665
  ret i1 %call, !dbg !5666
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ts2020_read_tuner_gain(%struct.dvb_frontend* %fe, i32 %v_agc, i64* %_gain) #0 !dbg !5667 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %v_agc.addr = alloca i32, align 4
  %_gain.addr = alloca i64*, align 8
  %priv = alloca %struct.ts2020_priv*, align 8
  %gain1 = alloca i64, align 8
  %gain2 = alloca i64, align 8
  %gain3 = alloca i64, align 8
  %utmp = alloca i32, align 4
  %ret = alloca i32, align 4
  %__UNIQUE_ID___x226 = alloca i64, align 8
  %__UNIQUE_ID___x224 = alloca i64, align 8
  %__UNIQUE_ID___y225 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___y227 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %__UNIQUE_ID___x230 = alloca i64, align 8
  %__UNIQUE_ID___x228 = alloca i64, align 8
  %__UNIQUE_ID___y229 = alloca i64, align 8
  %tmp19 = alloca i64, align 8
  %__UNIQUE_ID___y231 = alloca i64, align 8
  %tmp26 = alloca i64, align 8
  %__UNIQUE_ID___x234 = alloca i64, align 8
  %__UNIQUE_ID___x232 = alloca i64, align 8
  %__UNIQUE_ID___y233 = alloca i64, align 8
  %tmp34 = alloca i64, align 8
  %__UNIQUE_ID___y235 = alloca i64, align 8
  %tmp41 = alloca i64, align 8
  %__UNIQUE_ID___x238 = alloca i64, align 8
  %__UNIQUE_ID___x236 = alloca i64, align 8
  %__UNIQUE_ID___y237 = alloca i64, align 8
  %tmp64 = alloca i64, align 8
  %__UNIQUE_ID___y239 = alloca i64, align 8
  %tmp71 = alloca i64, align 8
  %__UNIQUE_ID___x242 = alloca i64, align 8
  %__UNIQUE_ID___x240 = alloca i64, align 8
  %__UNIQUE_ID___y241 = alloca i64, align 8
  %tmp78 = alloca i64, align 8
  %__UNIQUE_ID___y243 = alloca i64, align 8
  %tmp85 = alloca i64, align 8
  %__UNIQUE_ID___x246 = alloca i64, align 8
  %__UNIQUE_ID___x244 = alloca i64, align 8
  %__UNIQUE_ID___y245 = alloca i64, align 8
  %tmp92 = alloca i64, align 8
  %__UNIQUE_ID___y247 = alloca i64, align 8
  %tmp99 = alloca i64, align 8
  %__UNIQUE_ID___x250 = alloca i64, align 8
  %__UNIQUE_ID___x248 = alloca i64, align 8
  %__UNIQUE_ID___y249 = alloca i64, align 8
  %tmp107 = alloca i64, align 8
  %__UNIQUE_ID___y251 = alloca i64, align 8
  %tmp114 = alloca i64, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5670, metadata !DIExpression()), !dbg !5671
  store i32 %v_agc, i32* %v_agc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %v_agc.addr, metadata !5672, metadata !DIExpression()), !dbg !5673
  store i64* %_gain, i64** %_gain.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %_gain.addr, metadata !5674, metadata !DIExpression()), !dbg !5675
  call void @llvm.dbg.declare(metadata %struct.ts2020_priv** %priv, metadata !5676, metadata !DIExpression()), !dbg !5677
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5678
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5679
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5679
  %2 = bitcast i8* %1 to %struct.ts2020_priv*, !dbg !5678
  store %struct.ts2020_priv* %2, %struct.ts2020_priv** %priv, align 8, !dbg !5677
  call void @llvm.dbg.declare(metadata i64* %gain1, metadata !5680, metadata !DIExpression()), !dbg !5681
  call void @llvm.dbg.declare(metadata i64* %gain2, metadata !5682, metadata !DIExpression()), !dbg !5683
  call void @llvm.dbg.declare(metadata i64* %gain3, metadata !5684, metadata !DIExpression()), !dbg !5685
  call void @llvm.dbg.declare(metadata i32* %utmp, metadata !5686, metadata !DIExpression()), !dbg !5687
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5688, metadata !DIExpression()), !dbg !5689
  %3 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !5690
  %regmap = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %3, i32 0, i32 3, !dbg !5691
  %4 = load %struct.regmap*, %struct.regmap** %regmap, align 8, !dbg !5691
  %call = call i32 @regmap_read(%struct.regmap* %4, i32 61, i32* %utmp) #9, !dbg !5692
  store i32 %call, i32* %ret, align 4, !dbg !5693
  %5 = load i32, i32* %ret, align 4, !dbg !5694
  %cmp = icmp slt i32 %5, 0, !dbg !5696
  br i1 %cmp, label %if.then, label %if.end, !dbg !5697

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %ret, align 4, !dbg !5698
  store i32 %6, i32* %retval, align 4, !dbg !5699
  br label %return, !dbg !5699

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %utmp, align 4, !dbg !5700
  %and = and i32 %7, 31, !dbg !5701
  %conv = zext i32 %and to i64, !dbg !5700
  store i64 %conv, i64* %gain1, align 8, !dbg !5702
  %8 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !5703
  %regmap1 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %8, i32 0, i32 3, !dbg !5704
  %9 = load %struct.regmap*, %struct.regmap** %regmap1, align 8, !dbg !5704
  %call2 = call i32 @regmap_read(%struct.regmap* %9, i32 33, i32* %utmp) #9, !dbg !5705
  store i32 %call2, i32* %ret, align 4, !dbg !5706
  %10 = load i32, i32* %ret, align 4, !dbg !5707
  %cmp3 = icmp slt i32 %10, 0, !dbg !5709
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !5710

if.then5:                                         ; preds = %if.end
  %11 = load i32, i32* %ret, align 4, !dbg !5711
  store i32 %11, i32* %retval, align 4, !dbg !5712
  br label %return, !dbg !5712

if.end6:                                          ; preds = %if.end
  %12 = load i32, i32* %utmp, align 4, !dbg !5713
  %and7 = and i32 %12, 31, !dbg !5714
  %conv8 = zext i32 %and7 to i64, !dbg !5713
  store i64 %conv8, i64* %gain2, align 8, !dbg !5715
  %13 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !5716
  %tuner = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %13, i32 0, i32 12, !dbg !5717
  %14 = load i8, i8* %tuner, align 8, !dbg !5717
  %conv9 = zext i8 %14 to i32, !dbg !5716
  switch i32 %conv9, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb55
  ], !dbg !5718

sw.bb:                                            ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x226, metadata !5719, metadata !DIExpression()), !dbg !5722
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x224, metadata !5723, metadata !DIExpression()), !dbg !5725
  %15 = load i64, i64* %gain1, align 8, !dbg !5725
  store i64 %15, i64* %__UNIQUE_ID___x224, align 8, !dbg !5725
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y225, metadata !5726, metadata !DIExpression()), !dbg !5725
  store i64 0, i64* %__UNIQUE_ID___y225, align 8, !dbg !5725
  %16 = load i64, i64* %__UNIQUE_ID___x224, align 8, !dbg !5725
  %17 = load i64, i64* %__UNIQUE_ID___y225, align 8, !dbg !5725
  %cmp10 = icmp sgt i64 %16, %17, !dbg !5725
  br i1 %cmp10, label %cond.true, label %cond.false, !dbg !5725

cond.true:                                        ; preds = %sw.bb
  %18 = load i64, i64* %__UNIQUE_ID___x224, align 8, !dbg !5725
  br label %cond.end, !dbg !5725

cond.false:                                       ; preds = %sw.bb
  %19 = load i64, i64* %__UNIQUE_ID___y225, align 8, !dbg !5725
  br label %cond.end, !dbg !5725

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %18, %cond.true ], [ %19, %cond.false ], !dbg !5725
  store i64 %cond, i64* %tmp, align 8, !dbg !5725
  %20 = load i64, i64* %tmp, align 8, !dbg !5725
  store i64 %20, i64* %__UNIQUE_ID___x226, align 8, !dbg !5722
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y227, metadata !5727, metadata !DIExpression()), !dbg !5722
  store i64 15, i64* %__UNIQUE_ID___y227, align 8, !dbg !5722
  %21 = load i64, i64* %__UNIQUE_ID___x226, align 8, !dbg !5722
  %22 = load i64, i64* %__UNIQUE_ID___y227, align 8, !dbg !5722
  %cmp13 = icmp slt i64 %21, %22, !dbg !5722
  br i1 %cmp13, label %cond.true15, label %cond.false16, !dbg !5722

cond.true15:                                      ; preds = %cond.end
  %23 = load i64, i64* %__UNIQUE_ID___x226, align 8, !dbg !5722
  br label %cond.end17, !dbg !5722

cond.false16:                                     ; preds = %cond.end
  %24 = load i64, i64* %__UNIQUE_ID___y227, align 8, !dbg !5722
  br label %cond.end17, !dbg !5722

cond.end17:                                       ; preds = %cond.false16, %cond.true15
  %cond18 = phi i64 [ %23, %cond.true15 ], [ %24, %cond.false16 ], !dbg !5722
  store i64 %cond18, i64* %tmp12, align 8, !dbg !5722
  %25 = load i64, i64* %tmp12, align 8, !dbg !5722
  store i64 %25, i64* %gain1, align 8, !dbg !5728
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x230, metadata !5729, metadata !DIExpression()), !dbg !5731
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x228, metadata !5732, metadata !DIExpression()), !dbg !5734
  %26 = load i64, i64* %gain2, align 8, !dbg !5734
  store i64 %26, i64* %__UNIQUE_ID___x228, align 8, !dbg !5734
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y229, metadata !5735, metadata !DIExpression()), !dbg !5734
  store i64 0, i64* %__UNIQUE_ID___y229, align 8, !dbg !5734
  %27 = load i64, i64* %__UNIQUE_ID___x228, align 8, !dbg !5734
  %28 = load i64, i64* %__UNIQUE_ID___y229, align 8, !dbg !5734
  %cmp20 = icmp sgt i64 %27, %28, !dbg !5734
  br i1 %cmp20, label %cond.true22, label %cond.false23, !dbg !5734

cond.true22:                                      ; preds = %cond.end17
  %29 = load i64, i64* %__UNIQUE_ID___x228, align 8, !dbg !5734
  br label %cond.end24, !dbg !5734

cond.false23:                                     ; preds = %cond.end17
  %30 = load i64, i64* %__UNIQUE_ID___y229, align 8, !dbg !5734
  br label %cond.end24, !dbg !5734

cond.end24:                                       ; preds = %cond.false23, %cond.true22
  %cond25 = phi i64 [ %29, %cond.true22 ], [ %30, %cond.false23 ], !dbg !5734
  store i64 %cond25, i64* %tmp19, align 8, !dbg !5734
  %31 = load i64, i64* %tmp19, align 8, !dbg !5734
  store i64 %31, i64* %__UNIQUE_ID___x230, align 8, !dbg !5731
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y231, metadata !5736, metadata !DIExpression()), !dbg !5731
  store i64 13, i64* %__UNIQUE_ID___y231, align 8, !dbg !5731
  %32 = load i64, i64* %__UNIQUE_ID___x230, align 8, !dbg !5731
  %33 = load i64, i64* %__UNIQUE_ID___y231, align 8, !dbg !5731
  %cmp27 = icmp slt i64 %32, %33, !dbg !5731
  br i1 %cmp27, label %cond.true29, label %cond.false30, !dbg !5731

cond.true29:                                      ; preds = %cond.end24
  %34 = load i64, i64* %__UNIQUE_ID___x230, align 8, !dbg !5731
  br label %cond.end31, !dbg !5731

cond.false30:                                     ; preds = %cond.end24
  %35 = load i64, i64* %__UNIQUE_ID___y231, align 8, !dbg !5731
  br label %cond.end31, !dbg !5731

cond.end31:                                       ; preds = %cond.false30, %cond.true29
  %cond32 = phi i64 [ %34, %cond.true29 ], [ %35, %cond.false30 ], !dbg !5731
  store i64 %cond32, i64* %tmp26, align 8, !dbg !5731
  %36 = load i64, i64* %tmp26, align 8, !dbg !5731
  store i64 %36, i64* %gain2, align 8, !dbg !5737
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x234, metadata !5738, metadata !DIExpression()), !dbg !5740
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x232, metadata !5741, metadata !DIExpression()), !dbg !5743
  %37 = load i32, i32* %v_agc.addr, align 4, !dbg !5743
  %conv33 = zext i32 %37 to i64, !dbg !5743
  store i64 %conv33, i64* %__UNIQUE_ID___x232, align 8, !dbg !5743
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y233, metadata !5744, metadata !DIExpression()), !dbg !5743
  store i64 400, i64* %__UNIQUE_ID___y233, align 8, !dbg !5743
  %38 = load i64, i64* %__UNIQUE_ID___x232, align 8, !dbg !5743
  %39 = load i64, i64* %__UNIQUE_ID___y233, align 8, !dbg !5743
  %cmp35 = icmp sgt i64 %38, %39, !dbg !5743
  br i1 %cmp35, label %cond.true37, label %cond.false38, !dbg !5743

cond.true37:                                      ; preds = %cond.end31
  %40 = load i64, i64* %__UNIQUE_ID___x232, align 8, !dbg !5743
  br label %cond.end39, !dbg !5743

cond.false38:                                     ; preds = %cond.end31
  %41 = load i64, i64* %__UNIQUE_ID___y233, align 8, !dbg !5743
  br label %cond.end39, !dbg !5743

cond.end39:                                       ; preds = %cond.false38, %cond.true37
  %cond40 = phi i64 [ %40, %cond.true37 ], [ %41, %cond.false38 ], !dbg !5743
  store i64 %cond40, i64* %tmp34, align 8, !dbg !5743
  %42 = load i64, i64* %tmp34, align 8, !dbg !5743
  store i64 %42, i64* %__UNIQUE_ID___x234, align 8, !dbg !5740
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y235, metadata !5745, metadata !DIExpression()), !dbg !5740
  store i64 1100, i64* %__UNIQUE_ID___y235, align 8, !dbg !5740
  %43 = load i64, i64* %__UNIQUE_ID___x234, align 8, !dbg !5740
  %44 = load i64, i64* %__UNIQUE_ID___y235, align 8, !dbg !5740
  %cmp42 = icmp slt i64 %43, %44, !dbg !5740
  br i1 %cmp42, label %cond.true44, label %cond.false45, !dbg !5740

cond.true44:                                      ; preds = %cond.end39
  %45 = load i64, i64* %__UNIQUE_ID___x234, align 8, !dbg !5740
  br label %cond.end46, !dbg !5740

cond.false45:                                     ; preds = %cond.end39
  %46 = load i64, i64* %__UNIQUE_ID___y235, align 8, !dbg !5740
  br label %cond.end46, !dbg !5740

cond.end46:                                       ; preds = %cond.false45, %cond.true44
  %cond47 = phi i64 [ %45, %cond.true44 ], [ %46, %cond.false45 ], !dbg !5740
  store i64 %cond47, i64* %tmp41, align 8, !dbg !5740
  %47 = load i64, i64* %tmp41, align 8, !dbg !5740
  %conv48 = trunc i64 %47 to i32, !dbg !5746
  store i32 %conv48, i32* %v_agc.addr, align 4, !dbg !5747
  %48 = load i64, i64* %gain1, align 8, !dbg !5748
  %mul = mul i64 %48, 2330, !dbg !5749
  %49 = load i64, i64* %gain2, align 8, !dbg !5750
  %mul49 = mul i64 %49, 3500, !dbg !5751
  %add = add i64 %mul, %mul49, !dbg !5752
  %50 = load i32, i32* %v_agc.addr, align 4, !dbg !5753
  %mul50 = mul i32 %50, 24, !dbg !5754
  %div = udiv i32 %mul50, 10, !dbg !5755
  %mul51 = mul i32 %div, 10, !dbg !5756
  %conv52 = zext i32 %mul51 to i64, !dbg !5753
  %add53 = add i64 %add, %conv52, !dbg !5757
  %add54 = add i64 %add53, 10000, !dbg !5758
  %sub = sub i64 0, %add54, !dbg !5759
  %51 = load i64*, i64** %_gain.addr, align 8, !dbg !5760
  store i64 %sub, i64* %51, align 8, !dbg !5761
  br label %sw.epilog, !dbg !5762

sw.bb55:                                          ; preds = %if.end6
  %52 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !5763
  %regmap56 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %52, i32 0, i32 3, !dbg !5764
  %53 = load %struct.regmap*, %struct.regmap** %regmap56, align 8, !dbg !5764
  %call57 = call i32 @regmap_read(%struct.regmap* %53, i32 102, i32* %utmp) #9, !dbg !5765
  store i32 %call57, i32* %ret, align 4, !dbg !5766
  %54 = load i32, i32* %ret, align 4, !dbg !5767
  %cmp58 = icmp slt i32 %54, 0, !dbg !5769
  br i1 %cmp58, label %if.then60, label %if.end61, !dbg !5770

if.then60:                                        ; preds = %sw.bb55
  %55 = load i32, i32* %ret, align 4, !dbg !5771
  store i32 %55, i32* %retval, align 4, !dbg !5772
  br label %return, !dbg !5772

if.end61:                                         ; preds = %sw.bb55
  %56 = load i32, i32* %utmp, align 4, !dbg !5773
  %shr = lshr i32 %56, 3, !dbg !5774
  %and62 = and i32 %shr, 7, !dbg !5775
  %conv63 = zext i32 %and62 to i64, !dbg !5776
  store i64 %conv63, i64* %gain3, align 8, !dbg !5777
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x238, metadata !5778, metadata !DIExpression()), !dbg !5780
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x236, metadata !5781, metadata !DIExpression()), !dbg !5783
  %57 = load i64, i64* %gain1, align 8, !dbg !5783
  store i64 %57, i64* %__UNIQUE_ID___x236, align 8, !dbg !5783
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y237, metadata !5784, metadata !DIExpression()), !dbg !5783
  store i64 0, i64* %__UNIQUE_ID___y237, align 8, !dbg !5783
  %58 = load i64, i64* %__UNIQUE_ID___x236, align 8, !dbg !5783
  %59 = load i64, i64* %__UNIQUE_ID___y237, align 8, !dbg !5783
  %cmp65 = icmp sgt i64 %58, %59, !dbg !5783
  br i1 %cmp65, label %cond.true67, label %cond.false68, !dbg !5783

cond.true67:                                      ; preds = %if.end61
  %60 = load i64, i64* %__UNIQUE_ID___x236, align 8, !dbg !5783
  br label %cond.end69, !dbg !5783

cond.false68:                                     ; preds = %if.end61
  %61 = load i64, i64* %__UNIQUE_ID___y237, align 8, !dbg !5783
  br label %cond.end69, !dbg !5783

cond.end69:                                       ; preds = %cond.false68, %cond.true67
  %cond70 = phi i64 [ %60, %cond.true67 ], [ %61, %cond.false68 ], !dbg !5783
  store i64 %cond70, i64* %tmp64, align 8, !dbg !5783
  %62 = load i64, i64* %tmp64, align 8, !dbg !5783
  store i64 %62, i64* %__UNIQUE_ID___x238, align 8, !dbg !5780
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y239, metadata !5785, metadata !DIExpression()), !dbg !5780
  store i64 15, i64* %__UNIQUE_ID___y239, align 8, !dbg !5780
  %63 = load i64, i64* %__UNIQUE_ID___x238, align 8, !dbg !5780
  %64 = load i64, i64* %__UNIQUE_ID___y239, align 8, !dbg !5780
  %cmp72 = icmp slt i64 %63, %64, !dbg !5780
  br i1 %cmp72, label %cond.true74, label %cond.false75, !dbg !5780

cond.true74:                                      ; preds = %cond.end69
  %65 = load i64, i64* %__UNIQUE_ID___x238, align 8, !dbg !5780
  br label %cond.end76, !dbg !5780

cond.false75:                                     ; preds = %cond.end69
  %66 = load i64, i64* %__UNIQUE_ID___y239, align 8, !dbg !5780
  br label %cond.end76, !dbg !5780

cond.end76:                                       ; preds = %cond.false75, %cond.true74
  %cond77 = phi i64 [ %65, %cond.true74 ], [ %66, %cond.false75 ], !dbg !5780
  store i64 %cond77, i64* %tmp71, align 8, !dbg !5780
  %67 = load i64, i64* %tmp71, align 8, !dbg !5780
  store i64 %67, i64* %gain1, align 8, !dbg !5786
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x242, metadata !5787, metadata !DIExpression()), !dbg !5789
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x240, metadata !5790, metadata !DIExpression()), !dbg !5792
  %68 = load i64, i64* %gain2, align 8, !dbg !5792
  store i64 %68, i64* %__UNIQUE_ID___x240, align 8, !dbg !5792
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y241, metadata !5793, metadata !DIExpression()), !dbg !5792
  store i64 2, i64* %__UNIQUE_ID___y241, align 8, !dbg !5792
  %69 = load i64, i64* %__UNIQUE_ID___x240, align 8, !dbg !5792
  %70 = load i64, i64* %__UNIQUE_ID___y241, align 8, !dbg !5792
  %cmp79 = icmp sgt i64 %69, %70, !dbg !5792
  br i1 %cmp79, label %cond.true81, label %cond.false82, !dbg !5792

cond.true81:                                      ; preds = %cond.end76
  %71 = load i64, i64* %__UNIQUE_ID___x240, align 8, !dbg !5792
  br label %cond.end83, !dbg !5792

cond.false82:                                     ; preds = %cond.end76
  %72 = load i64, i64* %__UNIQUE_ID___y241, align 8, !dbg !5792
  br label %cond.end83, !dbg !5792

cond.end83:                                       ; preds = %cond.false82, %cond.true81
  %cond84 = phi i64 [ %71, %cond.true81 ], [ %72, %cond.false82 ], !dbg !5792
  store i64 %cond84, i64* %tmp78, align 8, !dbg !5792
  %73 = load i64, i64* %tmp78, align 8, !dbg !5792
  store i64 %73, i64* %__UNIQUE_ID___x242, align 8, !dbg !5789
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y243, metadata !5794, metadata !DIExpression()), !dbg !5789
  store i64 16, i64* %__UNIQUE_ID___y243, align 8, !dbg !5789
  %74 = load i64, i64* %__UNIQUE_ID___x242, align 8, !dbg !5789
  %75 = load i64, i64* %__UNIQUE_ID___y243, align 8, !dbg !5789
  %cmp86 = icmp slt i64 %74, %75, !dbg !5789
  br i1 %cmp86, label %cond.true88, label %cond.false89, !dbg !5789

cond.true88:                                      ; preds = %cond.end83
  %76 = load i64, i64* %__UNIQUE_ID___x242, align 8, !dbg !5789
  br label %cond.end90, !dbg !5789

cond.false89:                                     ; preds = %cond.end83
  %77 = load i64, i64* %__UNIQUE_ID___y243, align 8, !dbg !5789
  br label %cond.end90, !dbg !5789

cond.end90:                                       ; preds = %cond.false89, %cond.true88
  %cond91 = phi i64 [ %76, %cond.true88 ], [ %77, %cond.false89 ], !dbg !5789
  store i64 %cond91, i64* %tmp85, align 8, !dbg !5789
  %78 = load i64, i64* %tmp85, align 8, !dbg !5789
  store i64 %78, i64* %gain2, align 8, !dbg !5795
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x246, metadata !5796, metadata !DIExpression()), !dbg !5798
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x244, metadata !5799, metadata !DIExpression()), !dbg !5801
  %79 = load i64, i64* %gain3, align 8, !dbg !5801
  store i64 %79, i64* %__UNIQUE_ID___x244, align 8, !dbg !5801
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y245, metadata !5802, metadata !DIExpression()), !dbg !5801
  store i64 0, i64* %__UNIQUE_ID___y245, align 8, !dbg !5801
  %80 = load i64, i64* %__UNIQUE_ID___x244, align 8, !dbg !5801
  %81 = load i64, i64* %__UNIQUE_ID___y245, align 8, !dbg !5801
  %cmp93 = icmp sgt i64 %80, %81, !dbg !5801
  br i1 %cmp93, label %cond.true95, label %cond.false96, !dbg !5801

cond.true95:                                      ; preds = %cond.end90
  %82 = load i64, i64* %__UNIQUE_ID___x244, align 8, !dbg !5801
  br label %cond.end97, !dbg !5801

cond.false96:                                     ; preds = %cond.end90
  %83 = load i64, i64* %__UNIQUE_ID___y245, align 8, !dbg !5801
  br label %cond.end97, !dbg !5801

cond.end97:                                       ; preds = %cond.false96, %cond.true95
  %cond98 = phi i64 [ %82, %cond.true95 ], [ %83, %cond.false96 ], !dbg !5801
  store i64 %cond98, i64* %tmp92, align 8, !dbg !5801
  %84 = load i64, i64* %tmp92, align 8, !dbg !5801
  store i64 %84, i64* %__UNIQUE_ID___x246, align 8, !dbg !5798
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y247, metadata !5803, metadata !DIExpression()), !dbg !5798
  store i64 6, i64* %__UNIQUE_ID___y247, align 8, !dbg !5798
  %85 = load i64, i64* %__UNIQUE_ID___x246, align 8, !dbg !5798
  %86 = load i64, i64* %__UNIQUE_ID___y247, align 8, !dbg !5798
  %cmp100 = icmp slt i64 %85, %86, !dbg !5798
  br i1 %cmp100, label %cond.true102, label %cond.false103, !dbg !5798

cond.true102:                                     ; preds = %cond.end97
  %87 = load i64, i64* %__UNIQUE_ID___x246, align 8, !dbg !5798
  br label %cond.end104, !dbg !5798

cond.false103:                                    ; preds = %cond.end97
  %88 = load i64, i64* %__UNIQUE_ID___y247, align 8, !dbg !5798
  br label %cond.end104, !dbg !5798

cond.end104:                                      ; preds = %cond.false103, %cond.true102
  %cond105 = phi i64 [ %87, %cond.true102 ], [ %88, %cond.false103 ], !dbg !5798
  store i64 %cond105, i64* %tmp99, align 8, !dbg !5798
  %89 = load i64, i64* %tmp99, align 8, !dbg !5798
  store i64 %89, i64* %gain3, align 8, !dbg !5804
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x250, metadata !5805, metadata !DIExpression()), !dbg !5807
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x248, metadata !5808, metadata !DIExpression()), !dbg !5810
  %90 = load i32, i32* %v_agc.addr, align 4, !dbg !5810
  %conv106 = zext i32 %90 to i64, !dbg !5810
  store i64 %conv106, i64* %__UNIQUE_ID___x248, align 8, !dbg !5810
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y249, metadata !5811, metadata !DIExpression()), !dbg !5810
  store i64 600, i64* %__UNIQUE_ID___y249, align 8, !dbg !5810
  %91 = load i64, i64* %__UNIQUE_ID___x248, align 8, !dbg !5810
  %92 = load i64, i64* %__UNIQUE_ID___y249, align 8, !dbg !5810
  %cmp108 = icmp sgt i64 %91, %92, !dbg !5810
  br i1 %cmp108, label %cond.true110, label %cond.false111, !dbg !5810

cond.true110:                                     ; preds = %cond.end104
  %93 = load i64, i64* %__UNIQUE_ID___x248, align 8, !dbg !5810
  br label %cond.end112, !dbg !5810

cond.false111:                                    ; preds = %cond.end104
  %94 = load i64, i64* %__UNIQUE_ID___y249, align 8, !dbg !5810
  br label %cond.end112, !dbg !5810

cond.end112:                                      ; preds = %cond.false111, %cond.true110
  %cond113 = phi i64 [ %93, %cond.true110 ], [ %94, %cond.false111 ], !dbg !5810
  store i64 %cond113, i64* %tmp107, align 8, !dbg !5810
  %95 = load i64, i64* %tmp107, align 8, !dbg !5810
  store i64 %95, i64* %__UNIQUE_ID___x250, align 8, !dbg !5807
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y251, metadata !5812, metadata !DIExpression()), !dbg !5807
  store i64 1600, i64* %__UNIQUE_ID___y251, align 8, !dbg !5807
  %96 = load i64, i64* %__UNIQUE_ID___x250, align 8, !dbg !5807
  %97 = load i64, i64* %__UNIQUE_ID___y251, align 8, !dbg !5807
  %cmp115 = icmp slt i64 %96, %97, !dbg !5807
  br i1 %cmp115, label %cond.true117, label %cond.false118, !dbg !5807

cond.true117:                                     ; preds = %cond.end112
  %98 = load i64, i64* %__UNIQUE_ID___x250, align 8, !dbg !5807
  br label %cond.end119, !dbg !5807

cond.false118:                                    ; preds = %cond.end112
  %99 = load i64, i64* %__UNIQUE_ID___y251, align 8, !dbg !5807
  br label %cond.end119, !dbg !5807

cond.end119:                                      ; preds = %cond.false118, %cond.true117
  %cond120 = phi i64 [ %98, %cond.true117 ], [ %99, %cond.false118 ], !dbg !5807
  store i64 %cond120, i64* %tmp114, align 8, !dbg !5807
  %100 = load i64, i64* %tmp114, align 8, !dbg !5807
  %conv121 = trunc i64 %100 to i32, !dbg !5813
  store i32 %conv121, i32* %v_agc.addr, align 4, !dbg !5814
  %101 = load i64, i64* %gain1, align 8, !dbg !5815
  %mul122 = mul i64 %101, 2650, !dbg !5816
  %102 = load i64, i64* %gain2, align 8, !dbg !5817
  %mul123 = mul i64 %102, 3380, !dbg !5818
  %add124 = add i64 %mul122, %mul123, !dbg !5819
  %103 = load i64, i64* %gain3, align 8, !dbg !5820
  %mul125 = mul i64 %103, 2850, !dbg !5821
  %add126 = add i64 %add124, %mul125, !dbg !5822
  %104 = load i32, i32* %v_agc.addr, align 4, !dbg !5823
  %mul127 = mul i32 %104, 176, !dbg !5824
  %div128 = udiv i32 %mul127, 100, !dbg !5825
  %mul129 = mul i32 %div128, 10, !dbg !5826
  %conv130 = zext i32 %mul129 to i64, !dbg !5823
  %add131 = add i64 %add126, %conv130, !dbg !5827
  %sub132 = sub i64 %add131, 30000, !dbg !5828
  %sub133 = sub i64 0, %sub132, !dbg !5829
  %105 = load i64*, i64** %_gain.addr, align 8, !dbg !5830
  store i64 %sub133, i64* %105, align 8, !dbg !5831
  br label %sw.epilog, !dbg !5832

sw.epilog:                                        ; preds = %if.end6, %cond.end119, %cond.end46
  store i32 0, i32* %retval, align 4, !dbg !5833
  br label %return, !dbg !5833

return:                                           ; preds = %sw.epilog, %if.then60, %if.then5, %if.then
  %106 = load i32, i32* %retval, align 4, !dbg !5834
  ret i32 %106, !dbg !5834
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @queue_delayed_work(%struct.workqueue_struct* %wq, %struct.delayed_work* %dwork, i64 %delay) #0 !dbg !5835 {
entry:
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %dwork.addr = alloca %struct.delayed_work*, align 8
  %delay.addr = alloca i64, align 8
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.workqueue_struct** %wq.addr, metadata !5838, metadata !DIExpression()), !dbg !5839
  store %struct.delayed_work* %dwork, %struct.delayed_work** %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.delayed_work** %dwork.addr, metadata !5840, metadata !DIExpression()), !dbg !5841
  store i64 %delay, i64* %delay.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delay.addr, metadata !5842, metadata !DIExpression()), !dbg !5843
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq.addr, align 8, !dbg !5844
  %1 = load %struct.delayed_work*, %struct.delayed_work** %dwork.addr, align 8, !dbg !5845
  %2 = load i64, i64* %delay.addr, align 8, !dbg !5846
  %call = call zeroext i1 @queue_delayed_work_on(i32 1, %struct.workqueue_struct* %0, %struct.delayed_work* %1, i64 %2) #9, !dbg !5847
  ret i1 %call, !dbg !5848
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @queue_delayed_work_on(i32, %struct.workqueue_struct*, %struct.delayed_work*, i64) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #0 !dbg !5849 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !5850, metadata !DIExpression()), !dbg !5851
  %0 = load i32, i32* %m.addr, align 4, !dbg !5852
  %conv = zext i32 %0 to i64, !dbg !5852
  %add = add i64 %conv, 4, !dbg !5853
  %sub = sub i64 %add, 1, !dbg !5854
  %div = sdiv i64 %sub, 4, !dbg !5855
  ret i64 %div, !dbg !5856
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ts2020_release(%struct.dvb_frontend* %fe) #0 !dbg !5857 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %priv = alloca %struct.ts2020_priv*, align 8
  %client = alloca %struct.i2c_client*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5858, metadata !DIExpression()), !dbg !5859
  call void @llvm.dbg.declare(metadata %struct.ts2020_priv** %priv, metadata !5860, metadata !DIExpression()), !dbg !5861
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5862
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5863
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5863
  %2 = bitcast i8* %1 to %struct.ts2020_priv*, !dbg !5862
  store %struct.ts2020_priv* %2, %struct.ts2020_priv** %priv, align 8, !dbg !5861
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !5864, metadata !DIExpression()), !dbg !5865
  %3 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !5866
  %client1 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %3, i32 0, i32 0, !dbg !5867
  %4 = load %struct.i2c_client*, %struct.i2c_client** %client1, align 8, !dbg !5867
  store %struct.i2c_client* %4, %struct.i2c_client** %client, align 8, !dbg !5865
  %5 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5868
  call void @i2c_unregister_device(%struct.i2c_client* %5) #9, !dbg !5869
  ret void, !dbg !5870
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ts2020_init(%struct.dvb_frontend* %fe) #0 !dbg !4661 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  %priv = alloca %struct.ts2020_priv*, align 8
  %i = alloca i32, align 4
  %u8tmp = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5871, metadata !DIExpression()), !dbg !5872
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !5873, metadata !DIExpression()), !dbg !5874
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5875
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 8, !dbg !5876
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !5874
  call void @llvm.dbg.declare(metadata %struct.ts2020_priv** %priv, metadata !5877, metadata !DIExpression()), !dbg !5878
  %1 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5879
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %1, i32 0, i32 4, !dbg !5880
  %2 = load i8*, i8** %tuner_priv, align 8, !dbg !5880
  %3 = bitcast i8* %2 to %struct.ts2020_priv*, !dbg !5879
  store %struct.ts2020_priv* %3, %struct.ts2020_priv** %priv, align 8, !dbg !5878
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5881, metadata !DIExpression()), !dbg !5882
  call void @llvm.dbg.declare(metadata i8* %u8tmp, metadata !5883, metadata !DIExpression()), !dbg !5884
  %4 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !5885
  %tuner = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %4, i32 0, i32 12, !dbg !5887
  %5 = load i8, i8* %tuner, align 8, !dbg !5887
  %conv = zext i8 %5 to i32, !dbg !5885
  %cmp = icmp eq i32 %conv, 0, !dbg !5888
  br i1 %cmp, label %if.then, label %if.else, !dbg !5889

if.then:                                          ; preds = %entry
  %6 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !5890
  %regmap = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %6, i32 0, i32 3, !dbg !5892
  %7 = load %struct.regmap*, %struct.regmap** %regmap, align 8, !dbg !5892
  %call = call i32 @regmap_write(%struct.regmap* %7, i32 66, i32 115) #9, !dbg !5893
  %8 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !5894
  %regmap2 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %8, i32 0, i32 3, !dbg !5895
  %9 = load %struct.regmap*, %struct.regmap** %regmap2, align 8, !dbg !5895
  %10 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !5896
  %clk_out_div = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %10, i32 0, i32 9, !dbg !5897
  %bf.load = load i16, i16* %clk_out_div, align 4, !dbg !5897
  %bf.lshr = lshr i16 %bf.load, 3, !dbg !5897
  %bf.clear = and i16 %bf.lshr, 31, !dbg !5897
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !5897
  %conv3 = zext i8 %bf.cast to i32, !dbg !5896
  %call4 = call i32 @regmap_write(%struct.regmap* %9, i32 5, i32 %conv3) #9, !dbg !5898
  %11 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !5899
  %regmap5 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %11, i32 0, i32 3, !dbg !5900
  %12 = load %struct.regmap*, %struct.regmap** %regmap5, align 8, !dbg !5900
  %call6 = call i32 @regmap_write(%struct.regmap* %12, i32 32, i32 39) #9, !dbg !5901
  %13 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !5902
  %regmap7 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %13, i32 0, i32 3, !dbg !5903
  %14 = load %struct.regmap*, %struct.regmap** %regmap7, align 8, !dbg !5903
  %call8 = call i32 @regmap_write(%struct.regmap* %14, i32 7, i32 2) #9, !dbg !5904
  %15 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !5905
  %regmap9 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %15, i32 0, i32 3, !dbg !5906
  %16 = load %struct.regmap*, %struct.regmap** %regmap9, align 8, !dbg !5906
  %call10 = call i32 @regmap_write(%struct.regmap* %16, i32 17, i32 255) #9, !dbg !5907
  %17 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !5908
  %regmap11 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %17, i32 0, i32 3, !dbg !5909
  %18 = load %struct.regmap*, %struct.regmap** %regmap11, align 8, !dbg !5909
  %call12 = call i32 @regmap_write(%struct.regmap* %18, i32 96, i32 249) #9, !dbg !5910
  %19 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !5911
  %regmap13 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %19, i32 0, i32 3, !dbg !5912
  %20 = load %struct.regmap*, %struct.regmap** %regmap13, align 8, !dbg !5912
  %call14 = call i32 @regmap_write(%struct.regmap* %20, i32 8, i32 1) #9, !dbg !5913
  %21 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !5914
  %regmap15 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %21, i32 0, i32 3, !dbg !5915
  %22 = load %struct.regmap*, %struct.regmap** %regmap15, align 8, !dbg !5915
  %call16 = call i32 @regmap_write(%struct.regmap* %22, i32 0, i32 65) #9, !dbg !5916
  br label %if.end56, !dbg !5917

if.else:                                          ; preds = %entry
  %23 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !5918
  %regmap17 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %23, i32 0, i32 3, !dbg !5920
  %24 = load %struct.regmap*, %struct.regmap** %regmap17, align 8, !dbg !5920
  %call18 = call i32 @regmap_write(%struct.regmap* %24, i32 0, i32 1) #9, !dbg !5921
  %25 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !5922
  %regmap19 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %25, i32 0, i32 3, !dbg !5923
  %26 = load %struct.regmap*, %struct.regmap** %regmap19, align 8, !dbg !5923
  %call20 = call i32 @regmap_write(%struct.regmap* %26, i32 0, i32 3) #9, !dbg !5924
  %27 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !5925
  %clk_out = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %27, i32 0, i32 9, !dbg !5926
  %bf.load21 = load i16, i16* %clk_out, align 4, !dbg !5926
  %bf.lshr22 = lshr i16 %bf.load21, 1, !dbg !5926
  %bf.clear23 = and i16 %bf.lshr22, 3, !dbg !5926
  %bf.cast24 = trunc i16 %bf.clear23 to i8, !dbg !5926
  %conv25 = zext i8 %bf.cast24 to i32, !dbg !5925
  switch i32 %conv25, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb26
    i32 2, label %sw.bb35
  ], !dbg !5927

sw.bb:                                            ; preds = %if.else
  store i8 96, i8* %u8tmp, align 1, !dbg !5928
  br label %sw.epilog, !dbg !5930

sw.bb26:                                          ; preds = %if.else
  store i8 112, i8* %u8tmp, align 1, !dbg !5931
  %28 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !5932
  %regmap27 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %28, i32 0, i32 3, !dbg !5933
  %29 = load %struct.regmap*, %struct.regmap** %regmap27, align 8, !dbg !5933
  %30 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !5934
  %clk_out_div28 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %30, i32 0, i32 9, !dbg !5935
  %bf.load29 = load i16, i16* %clk_out_div28, align 4, !dbg !5935
  %bf.lshr30 = lshr i16 %bf.load29, 3, !dbg !5935
  %bf.clear31 = and i16 %bf.lshr30, 31, !dbg !5935
  %bf.cast32 = trunc i16 %bf.clear31 to i8, !dbg !5935
  %conv33 = zext i8 %bf.cast32 to i32, !dbg !5934
  %call34 = call i32 @regmap_write(%struct.regmap* %29, i32 5, i32 %conv33) #9, !dbg !5936
  br label %sw.epilog, !dbg !5937

sw.bb35:                                          ; preds = %if.else
  store i8 108, i8* %u8tmp, align 1, !dbg !5938
  br label %sw.epilog, !dbg !5939

sw.default:                                       ; preds = %if.else
  store i8 96, i8* %u8tmp, align 1, !dbg !5940
  br label %sw.epilog, !dbg !5941

sw.epilog:                                        ; preds = %sw.default, %sw.bb35, %sw.bb26, %sw.bb
  %31 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !5942
  %regmap36 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %31, i32 0, i32 3, !dbg !5943
  %32 = load %struct.regmap*, %struct.regmap** %regmap36, align 8, !dbg !5943
  %33 = load i8, i8* %u8tmp, align 1, !dbg !5944
  %conv37 = zext i8 %33 to i32, !dbg !5944
  %call38 = call i32 @regmap_write(%struct.regmap* %32, i32 66, i32 %conv37) #9, !dbg !5945
  %34 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !5946
  %loop_through = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %34, i32 0, i32 9, !dbg !5948
  %bf.load39 = load i16, i16* %loop_through, align 4, !dbg !5948
  %bf.clear40 = and i16 %bf.load39, 1, !dbg !5948
  %bf.cast41 = trunc i16 %bf.clear40 to i1, !dbg !5948
  br i1 %bf.cast41, label %if.then42, label %if.else43, !dbg !5949

if.then42:                                        ; preds = %sw.epilog
  store i8 -20, i8* %u8tmp, align 1, !dbg !5950
  br label %if.end, !dbg !5951

if.else43:                                        ; preds = %sw.epilog
  store i8 108, i8* %u8tmp, align 1, !dbg !5952
  br label %if.end

if.end:                                           ; preds = %if.else43, %if.then42
  %35 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !5953
  %regmap44 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %35, i32 0, i32 3, !dbg !5954
  %36 = load %struct.regmap*, %struct.regmap** %regmap44, align 8, !dbg !5954
  %37 = load i8, i8* %u8tmp, align 1, !dbg !5955
  %conv45 = zext i8 %37 to i32, !dbg !5955
  %call46 = call i32 @regmap_write(%struct.regmap* %36, i32 98, i32 %conv45) #9, !dbg !5956
  store i32 0, i32* %i, align 4, !dbg !5957
  br label %for.cond, !dbg !5959

for.cond:                                         ; preds = %for.inc, %if.end
  %38 = load i32, i32* %i, align 4, !dbg !5960
  %conv47 = sext i32 %38 to i64, !dbg !5960
  %cmp48 = icmp ult i64 %conv47, 11, !dbg !5962
  br i1 %cmp48, label %for.body, label %for.end, !dbg !5963

for.body:                                         ; preds = %for.cond
  %39 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !5964
  %regmap50 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %39, i32 0, i32 3, !dbg !5965
  %40 = load %struct.regmap*, %struct.regmap** %regmap50, align 8, !dbg !5965
  %41 = load i32, i32* %i, align 4, !dbg !5966
  %idxprom = sext i32 %41 to i64, !dbg !5967
  %arrayidx = getelementptr [11 x %struct.ts2020_reg_val], [11 x %struct.ts2020_reg_val]* @ts2020_init.reg_vals, i64 0, i64 %idxprom, !dbg !5967
  %reg = getelementptr inbounds %struct.ts2020_reg_val, %struct.ts2020_reg_val* %arrayidx, i32 0, i32 0, !dbg !5968
  %42 = load i8, i8* %reg, align 2, !dbg !5968
  %conv51 = zext i8 %42 to i32, !dbg !5967
  %43 = load i32, i32* %i, align 4, !dbg !5969
  %idxprom52 = sext i32 %43 to i64, !dbg !5970
  %arrayidx53 = getelementptr [11 x %struct.ts2020_reg_val], [11 x %struct.ts2020_reg_val]* @ts2020_init.reg_vals, i64 0, i64 %idxprom52, !dbg !5970
  %val = getelementptr inbounds %struct.ts2020_reg_val, %struct.ts2020_reg_val* %arrayidx53, i32 0, i32 1, !dbg !5971
  %44 = load i8, i8* %val, align 1, !dbg !5971
  %conv54 = zext i8 %44 to i32, !dbg !5970
  %call55 = call i32 @regmap_write(%struct.regmap* %40, i32 %conv51, i32 %conv54) #9, !dbg !5972
  br label %for.inc, !dbg !5972

for.inc:                                          ; preds = %for.body
  %45 = load i32, i32* %i, align 4, !dbg !5973
  %inc = add i32 %45, 1, !dbg !5973
  store i32 %inc, i32* %i, align 4, !dbg !5973
  br label %for.cond, !dbg !5974, !llvm.loop !5975

for.end:                                          ; preds = %for.cond
  br label %if.end56

if.end56:                                         ; preds = %for.end, %if.then
  %46 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5977
  %strength = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %46, i32 0, i32 42, !dbg !5978
  %len = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %strength, i32 0, i32 0, !dbg !5979
  store i8 1, i8* %len, align 4, !dbg !5980
  %47 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5981
  %strength57 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %47, i32 0, i32 42, !dbg !5982
  %stat = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %strength57, i32 0, i32 1, !dbg !5983
  %arrayidx58 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat, i64 0, i64 0, !dbg !5981
  %scale = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx58, i32 0, i32 0, !dbg !5984
  store i8 1, i8* %scale, align 1, !dbg !5985
  %48 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5986
  %strength59 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %48, i32 0, i32 42, !dbg !5987
  %stat60 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %strength59, i32 0, i32 1, !dbg !5988
  %arrayidx61 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat60, i64 0, i64 0, !dbg !5986
  %49 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx61, i32 0, i32 1, !dbg !5989
  %uvalue = bitcast %union.anon* %49 to i64*, !dbg !5989
  store i64 0, i64* %uvalue, align 1, !dbg !5990
  %50 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !5991
  %stat_work = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %50, i32 0, i32 5, !dbg !5992
  %work = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %stat_work, i32 0, i32 0, !dbg !5993
  call void @ts2020_stat_work(%struct.work_struct* %work) #9, !dbg !5994
  ret i32 0, !dbg !5995
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ts2020_sleep(%struct.dvb_frontend* %fe) #0 !dbg !5996 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %priv = alloca %struct.ts2020_priv*, align 8
  %ret = alloca i32, align 4
  %u8tmp = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5997, metadata !DIExpression()), !dbg !5998
  call void @llvm.dbg.declare(metadata %struct.ts2020_priv** %priv, metadata !5999, metadata !DIExpression()), !dbg !6000
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6001
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !6002
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !6002
  %2 = bitcast i8* %1 to %struct.ts2020_priv*, !dbg !6001
  store %struct.ts2020_priv* %2, %struct.ts2020_priv** %priv, align 8, !dbg !6000
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6003, metadata !DIExpression()), !dbg !6004
  call void @llvm.dbg.declare(metadata i8* %u8tmp, metadata !6005, metadata !DIExpression()), !dbg !6006
  %3 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !6007
  %tuner = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %3, i32 0, i32 12, !dbg !6009
  %4 = load i8, i8* %tuner, align 8, !dbg !6009
  %conv = zext i8 %4 to i32, !dbg !6007
  %cmp = icmp eq i32 %conv, 0, !dbg !6010
  br i1 %cmp, label %if.then, label %if.else, !dbg !6011

if.then:                                          ; preds = %entry
  store i8 10, i8* %u8tmp, align 1, !dbg !6012
  br label %if.end, !dbg !6013

if.else:                                          ; preds = %entry
  store i8 0, i8* %u8tmp, align 1, !dbg !6014
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !6015
  %regmap = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %5, i32 0, i32 3, !dbg !6016
  %6 = load %struct.regmap*, %struct.regmap** %regmap, align 8, !dbg !6016
  %7 = load i8, i8* %u8tmp, align 1, !dbg !6017
  %conv2 = zext i8 %7 to i32, !dbg !6017
  %call = call i32 @regmap_write(%struct.regmap* %6, i32 %conv2, i32 0) #9, !dbg !6018
  store i32 %call, i32* %ret, align 4, !dbg !6019
  %8 = load i32, i32* %ret, align 4, !dbg !6020
  %cmp3 = icmp slt i32 %8, 0, !dbg !6022
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !6023

if.then5:                                         ; preds = %if.end
  %9 = load i32, i32* %ret, align 4, !dbg !6024
  store i32 %9, i32* %retval, align 4, !dbg !6025
  br label %return, !dbg !6025

if.end6:                                          ; preds = %if.end
  %10 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !6026
  %dont_poll = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %10, i32 0, i32 9, !dbg !6028
  %bf.load = load i16, i16* %dont_poll, align 4, !dbg !6028
  %bf.lshr = lshr i16 %bf.load, 8, !dbg !6028
  %bf.clear = and i16 %bf.lshr, 1, !dbg !6028
  %bf.cast = trunc i16 %bf.clear to i1, !dbg !6028
  br i1 %bf.cast, label %if.end9, label %if.then7, !dbg !6029

if.then7:                                         ; preds = %if.end6
  %11 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !6030
  %stat_work = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %11, i32 0, i32 5, !dbg !6031
  %call8 = call zeroext i1 @cancel_delayed_work_sync(%struct.delayed_work* %stat_work) #9, !dbg !6032
  br label %if.end9, !dbg !6032

if.end9:                                          ; preds = %if.then7, %if.end6
  store i32 0, i32* %retval, align 4, !dbg !6033
  br label %return, !dbg !6033

return:                                           ; preds = %if.end9, %if.then5
  %12 = load i32, i32* %retval, align 4, !dbg !6034
  ret i32 %12, !dbg !6034
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ts2020_set_params(%struct.dvb_frontend* %fe) #0 !dbg !6035 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  %priv = alloca %struct.ts2020_priv*, align 8
  %ret = alloca i32, align 4
  %utmp = alloca i32, align 4
  %f3db = alloca i32, align 4
  %gdiv28 = alloca i32, align 4
  %u16tmp = alloca i16, align 2
  %value = alloca i16, align 2
  %lpf_coeff = alloca i16, align 2
  %buf = alloca [3 x i8], align 1
  %reg10 = alloca i8, align 1
  %lpf_mxdiv = alloca i8, align 1
  %mlpf_max = alloca i8, align 1
  %mlpf_min = alloca i8, align 1
  %nlpf = alloca i8, align 1
  %f_ref_khz = alloca i32, align 4
  %f_vco_khz = alloca i32, align 4
  %div_ref = alloca i32, align 4
  %div_out = alloca i32, align 4
  %pll_n = alloca i32, align 4
  %frequency_khz = alloca i32, align 4
  %__x = alloca i32, align 4
  %__d = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %__UNIQUE_ID___x222 = alloca i32, align 4
  %__UNIQUE_ID___x220 = alloca i32, align 4
  %__UNIQUE_ID___y221 = alloca i32, align 4
  %tmp107 = alloca i32, align 4
  %__UNIQUE_ID___y223 = alloca i32, align 4
  %tmp110 = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6036, metadata !DIExpression()), !dbg !6037
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !6038, metadata !DIExpression()), !dbg !6039
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6040
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 8, !dbg !6041
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !6039
  call void @llvm.dbg.declare(metadata %struct.ts2020_priv** %priv, metadata !6042, metadata !DIExpression()), !dbg !6043
  %1 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6044
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %1, i32 0, i32 4, !dbg !6045
  %2 = load i8*, i8** %tuner_priv, align 8, !dbg !6045
  %3 = bitcast i8* %2 to %struct.ts2020_priv*, !dbg !6044
  store %struct.ts2020_priv* %3, %struct.ts2020_priv** %priv, align 8, !dbg !6043
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6046, metadata !DIExpression()), !dbg !6047
  call void @llvm.dbg.declare(metadata i32* %utmp, metadata !6048, metadata !DIExpression()), !dbg !6049
  call void @llvm.dbg.declare(metadata i32* %f3db, metadata !6050, metadata !DIExpression()), !dbg !6051
  call void @llvm.dbg.declare(metadata i32* %gdiv28, metadata !6052, metadata !DIExpression()), !dbg !6053
  call void @llvm.dbg.declare(metadata i16* %u16tmp, metadata !6054, metadata !DIExpression()), !dbg !6055
  call void @llvm.dbg.declare(metadata i16* %value, metadata !6056, metadata !DIExpression()), !dbg !6057
  call void @llvm.dbg.declare(metadata i16* %lpf_coeff, metadata !6058, metadata !DIExpression()), !dbg !6059
  call void @llvm.dbg.declare(metadata [3 x i8]* %buf, metadata !6060, metadata !DIExpression()), !dbg !6062
  call void @llvm.dbg.declare(metadata i8* %reg10, metadata !6063, metadata !DIExpression()), !dbg !6064
  call void @llvm.dbg.declare(metadata i8* %lpf_mxdiv, metadata !6065, metadata !DIExpression()), !dbg !6066
  call void @llvm.dbg.declare(metadata i8* %mlpf_max, metadata !6067, metadata !DIExpression()), !dbg !6068
  call void @llvm.dbg.declare(metadata i8* %mlpf_min, metadata !6069, metadata !DIExpression()), !dbg !6070
  call void @llvm.dbg.declare(metadata i8* %nlpf, metadata !6071, metadata !DIExpression()), !dbg !6072
  call void @llvm.dbg.declare(metadata i32* %f_ref_khz, metadata !6073, metadata !DIExpression()), !dbg !6074
  call void @llvm.dbg.declare(metadata i32* %f_vco_khz, metadata !6075, metadata !DIExpression()), !dbg !6076
  call void @llvm.dbg.declare(metadata i32* %div_ref, metadata !6077, metadata !DIExpression()), !dbg !6078
  call void @llvm.dbg.declare(metadata i32* %div_out, metadata !6079, metadata !DIExpression()), !dbg !6080
  call void @llvm.dbg.declare(metadata i32* %pll_n, metadata !6081, metadata !DIExpression()), !dbg !6082
  call void @llvm.dbg.declare(metadata i32* %frequency_khz, metadata !6083, metadata !DIExpression()), !dbg !6084
  %4 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6085
  %frequency = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %4, i32 0, i32 0, !dbg !6086
  %5 = load i32, i32* %frequency, align 4, !dbg !6086
  store i32 %5, i32* %frequency_khz, align 4, !dbg !6084
  store i32 27000, i32* %f_ref_khz, align 4, !dbg !6087
  call void @llvm.dbg.declare(metadata i32* %__x, metadata !6088, metadata !DIExpression()), !dbg !6090
  %6 = load i32, i32* %f_ref_khz, align 4, !dbg !6090
  store i32 %6, i32* %__x, align 4, !dbg !6090
  call void @llvm.dbg.declare(metadata i32* %__d, metadata !6091, metadata !DIExpression()), !dbg !6090
  store i32 2000, i32* %__d, align 4, !dbg !6090
  %7 = load i32, i32* %__x, align 4, !dbg !6090
  %8 = load i32, i32* %__d, align 4, !dbg !6090
  %div = sdiv i32 %8, 2, !dbg !6090
  %add = add i32 %7, %div, !dbg !6090
  %9 = load i32, i32* %__d, align 4, !dbg !6090
  %div1 = udiv i32 %add, %9, !dbg !6090
  store i32 %div1, i32* %tmp, align 4, !dbg !6090
  %10 = load i32, i32* %tmp, align 4, !dbg !6090
  store i32 %10, i32* %div_ref, align 4, !dbg !6092
  %11 = load i32, i32* %frequency_khz, align 4, !dbg !6093
  %12 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !6095
  %frequency_div = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %12, i32 0, i32 10, !dbg !6096
  %13 = load i32, i32* %frequency_div, align 8, !dbg !6096
  %cmp = icmp ult i32 %11, %13, !dbg !6097
  br i1 %cmp, label %if.then, label %if.else, !dbg !6098

if.then:                                          ; preds = %entry
  store i32 4, i32* %div_out, align 4, !dbg !6099
  store i8 16, i8* %reg10, align 1, !dbg !6101
  br label %if.end, !dbg !6102

if.else:                                          ; preds = %entry
  store i32 2, i32* %div_out, align 4, !dbg !6103
  store i8 0, i8* %reg10, align 1, !dbg !6105
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load i32, i32* %frequency_khz, align 4, !dbg !6106
  %15 = load i32, i32* %div_out, align 4, !dbg !6107
  %mul = mul i32 %14, %15, !dbg !6108
  store i32 %mul, i32* %f_vco_khz, align 4, !dbg !6109
  %16 = load i32, i32* %f_vco_khz, align 4, !dbg !6110
  %17 = load i32, i32* %div_ref, align 4, !dbg !6111
  %mul2 = mul i32 %16, %17, !dbg !6112
  %18 = load i32, i32* %f_ref_khz, align 4, !dbg !6113
  %div3 = udiv i32 %mul2, %18, !dbg !6114
  store i32 %div3, i32* %pll_n, align 4, !dbg !6115
  %19 = load i32, i32* %pll_n, align 4, !dbg !6116
  %rem = urem i32 %19, 2, !dbg !6117
  %20 = load i32, i32* %pll_n, align 4, !dbg !6118
  %add4 = add i32 %20, %rem, !dbg !6118
  store i32 %add4, i32* %pll_n, align 4, !dbg !6118
  %21 = load i32, i32* %pll_n, align 4, !dbg !6119
  %22 = load i32, i32* %f_ref_khz, align 4, !dbg !6120
  %mul5 = mul i32 %21, %22, !dbg !6121
  %23 = load i32, i32* %div_ref, align 4, !dbg !6122
  %div6 = udiv i32 %mul5, %23, !dbg !6123
  %24 = load i32, i32* %div_out, align 4, !dbg !6124
  %div7 = udiv i32 %div6, %24, !dbg !6125
  %25 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !6126
  %frequency_khz8 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %25, i32 0, i32 11, !dbg !6127
  store i32 %div7, i32* %frequency_khz8, align 4, !dbg !6128
  store i32 0, i32* %tmp9, align 4, !dbg !6129
  %26 = load i32, i32* %tmp9, align 4, !dbg !6132
  %27 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !6133
  %tuner = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %27, i32 0, i32 12, !dbg !6135
  %28 = load i8, i8* %tuner, align 8, !dbg !6135
  %conv = zext i8 %28 to i32, !dbg !6133
  %cmp10 = icmp eq i32 %conv, 0, !dbg !6136
  br i1 %cmp10, label %if.then12, label %if.else16, !dbg !6137

if.then12:                                        ; preds = %if.end
  store i16 2766, i16* %lpf_coeff, align 2, !dbg !6138
  %29 = load i8, i8* %reg10, align 1, !dbg !6140
  %conv13 = zext i8 %29 to i32, !dbg !6140
  %or = or i32 %conv13, 1, !dbg !6140
  %conv14 = trunc i32 %or to i8, !dbg !6140
  store i8 %conv14, i8* %reg10, align 1, !dbg !6140
  %30 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !6141
  %regmap = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %30, i32 0, i32 3, !dbg !6142
  %31 = load %struct.regmap*, %struct.regmap** %regmap, align 8, !dbg !6142
  %32 = load i8, i8* %reg10, align 1, !dbg !6143
  %conv15 = zext i8 %32 to i32, !dbg !6143
  %call = call i32 @regmap_write(%struct.regmap* %31, i32 16, i32 %conv15) #9, !dbg !6144
  store i32 %call, i32* %ret, align 4, !dbg !6145
  br label %if.end26, !dbg !6146

if.else16:                                        ; preds = %if.end
  store i16 3200, i16* %lpf_coeff, align 2, !dbg !6147
  %33 = load i8, i8* %reg10, align 1, !dbg !6149
  %conv17 = zext i8 %33 to i32, !dbg !6149
  %or18 = or i32 %conv17, 11, !dbg !6149
  %conv19 = trunc i32 %or18 to i8, !dbg !6149
  store i8 %conv19, i8* %reg10, align 1, !dbg !6149
  %34 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !6150
  %regmap20 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %34, i32 0, i32 3, !dbg !6151
  %35 = load %struct.regmap*, %struct.regmap** %regmap20, align 8, !dbg !6151
  %36 = load i8, i8* %reg10, align 1, !dbg !6152
  %conv21 = zext i8 %36 to i32, !dbg !6152
  %call22 = call i32 @regmap_write(%struct.regmap* %35, i32 16, i32 %conv21) #9, !dbg !6153
  store i32 %call22, i32* %ret, align 4, !dbg !6154
  %37 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !6155
  %regmap23 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %37, i32 0, i32 3, !dbg !6156
  %38 = load %struct.regmap*, %struct.regmap** %regmap23, align 8, !dbg !6156
  %call24 = call i32 @regmap_write(%struct.regmap* %38, i32 17, i32 64) #9, !dbg !6157
  %39 = load i32, i32* %ret, align 4, !dbg !6158
  %or25 = or i32 %39, %call24, !dbg !6158
  store i32 %or25, i32* %ret, align 4, !dbg !6158
  br label %if.end26

if.end26:                                         ; preds = %if.else16, %if.then12
  %40 = load i32, i32* %pll_n, align 4, !dbg !6159
  %sub = sub i32 %40, 1024, !dbg !6160
  %conv27 = trunc i32 %sub to i16, !dbg !6159
  store i16 %conv27, i16* %u16tmp, align 2, !dbg !6161
  %41 = load i16, i16* %u16tmp, align 2, !dbg !6162
  %conv28 = zext i16 %41 to i32, !dbg !6162
  %shr = ashr i32 %conv28, 8, !dbg !6163
  %and = and i32 %shr, 255, !dbg !6164
  %conv29 = trunc i32 %and to i8, !dbg !6165
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6166
  store i8 %conv29, i8* %arrayidx, align 1, !dbg !6167
  %42 = load i16, i16* %u16tmp, align 2, !dbg !6168
  %conv30 = zext i16 %42 to i32, !dbg !6168
  %shr31 = ashr i32 %conv30, 0, !dbg !6169
  %and32 = and i32 %shr31, 255, !dbg !6170
  %conv33 = trunc i32 %and32 to i8, !dbg !6171
  %arrayidx34 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 1, !dbg !6172
  store i8 %conv33, i8* %arrayidx34, align 1, !dbg !6173
  %43 = load i32, i32* %div_ref, align 4, !dbg !6174
  %sub35 = sub i32 %43, 8, !dbg !6175
  %conv36 = trunc i32 %sub35 to i8, !dbg !6174
  %arrayidx37 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 2, !dbg !6176
  store i8 %conv36, i8* %arrayidx37, align 1, !dbg !6177
  %44 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !6178
  %regmap38 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %44, i32 0, i32 3, !dbg !6179
  %45 = load %struct.regmap*, %struct.regmap** %regmap38, align 8, !dbg !6179
  %arrayidx39 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6180
  %46 = load i8, i8* %arrayidx39, align 1, !dbg !6180
  %conv40 = zext i8 %46 to i32, !dbg !6180
  %call41 = call i32 @regmap_write(%struct.regmap* %45, i32 1, i32 %conv40) #9, !dbg !6181
  %47 = load i32, i32* %ret, align 4, !dbg !6182
  %or42 = or i32 %47, %call41, !dbg !6182
  store i32 %or42, i32* %ret, align 4, !dbg !6182
  %48 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !6183
  %regmap43 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %48, i32 0, i32 3, !dbg !6184
  %49 = load %struct.regmap*, %struct.regmap** %regmap43, align 8, !dbg !6184
  %arrayidx44 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 1, !dbg !6185
  %50 = load i8, i8* %arrayidx44, align 1, !dbg !6185
  %conv45 = zext i8 %50 to i32, !dbg !6185
  %call46 = call i32 @regmap_write(%struct.regmap* %49, i32 2, i32 %conv45) #9, !dbg !6186
  %51 = load i32, i32* %ret, align 4, !dbg !6187
  %or47 = or i32 %51, %call46, !dbg !6187
  store i32 %or47, i32* %ret, align 4, !dbg !6187
  %52 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !6188
  %regmap48 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %52, i32 0, i32 3, !dbg !6189
  %53 = load %struct.regmap*, %struct.regmap** %regmap48, align 8, !dbg !6189
  %arrayidx49 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 2, !dbg !6190
  %54 = load i8, i8* %arrayidx49, align 1, !dbg !6190
  %conv50 = zext i8 %54 to i32, !dbg !6190
  %call51 = call i32 @regmap_write(%struct.regmap* %53, i32 3, i32 %conv50) #9, !dbg !6191
  %55 = load i32, i32* %ret, align 4, !dbg !6192
  %or52 = or i32 %55, %call51, !dbg !6192
  store i32 %or52, i32* %ret, align 4, !dbg !6192
  %56 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6193
  %call53 = call i32 @ts2020_tuner_gate_ctrl(%struct.dvb_frontend* %56, i8 zeroext 16) #9, !dbg !6194
  %57 = load i32, i32* %ret, align 4, !dbg !6195
  %or54 = or i32 %57, %call53, !dbg !6195
  store i32 %or54, i32* %ret, align 4, !dbg !6195
  %58 = load i32, i32* %ret, align 4, !dbg !6196
  %cmp55 = icmp slt i32 %58, 0, !dbg !6198
  br i1 %cmp55, label %if.then57, label %if.end58, !dbg !6199

if.then57:                                        ; preds = %if.end26
  store i32 -19, i32* %retval, align 4, !dbg !6200
  br label %return, !dbg !6200

if.end58:                                         ; preds = %if.end26
  %59 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6201
  %call59 = call i32 @ts2020_tuner_gate_ctrl(%struct.dvb_frontend* %59, i8 zeroext 8) #9, !dbg !6202
  %60 = load i32, i32* %ret, align 4, !dbg !6203
  %or60 = or i32 %60, %call59, !dbg !6203
  store i32 %or60, i32* %ret, align 4, !dbg !6203
  %61 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !6204
  %tuner61 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %61, i32 0, i32 12, !dbg !6206
  %62 = load i8, i8* %tuner61, align 8, !dbg !6206
  %conv62 = zext i8 %62 to i32, !dbg !6204
  %cmp63 = icmp eq i32 %conv62, 0, !dbg !6207
  br i1 %cmp63, label %if.then65, label %if.end68, !dbg !6208

if.then65:                                        ; preds = %if.end58
  %63 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6209
  %call66 = call i32 @ts2020_set_tuner_rf(%struct.dvb_frontend* %63) #9, !dbg !6210
  %64 = load i32, i32* %ret, align 4, !dbg !6211
  %or67 = or i32 %64, %call66, !dbg !6211
  store i32 %or67, i32* %ret, align 4, !dbg !6211
  br label %if.end68, !dbg !6212

if.end68:                                         ; preds = %if.then65, %if.end58
  store i32 46, i32* %gdiv28, align 4, !dbg !6213
  %65 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !6214
  %regmap69 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %65, i32 0, i32 3, !dbg !6215
  %66 = load %struct.regmap*, %struct.regmap** %regmap69, align 8, !dbg !6215
  %67 = load i32, i32* %gdiv28, align 4, !dbg !6216
  %and70 = and i32 %67, 255, !dbg !6217
  %call71 = call i32 @regmap_write(%struct.regmap* %66, i32 4, i32 %and70) #9, !dbg !6218
  %68 = load i32, i32* %ret, align 4, !dbg !6219
  %or72 = or i32 %68, %call71, !dbg !6219
  store i32 %or72, i32* %ret, align 4, !dbg !6219
  %69 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6220
  %call73 = call i32 @ts2020_tuner_gate_ctrl(%struct.dvb_frontend* %69, i8 zeroext 4) #9, !dbg !6221
  %70 = load i32, i32* %ret, align 4, !dbg !6222
  %or74 = or i32 %70, %call73, !dbg !6222
  store i32 %or74, i32* %ret, align 4, !dbg !6222
  %71 = load i32, i32* %ret, align 4, !dbg !6223
  %cmp75 = icmp slt i32 %71, 0, !dbg !6225
  br i1 %cmp75, label %if.then77, label %if.end78, !dbg !6226

if.then77:                                        ; preds = %if.end68
  store i32 -19, i32* %retval, align 4, !dbg !6227
  br label %return, !dbg !6227

if.end78:                                         ; preds = %if.end68
  %72 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !6228
  %tuner79 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %72, i32 0, i32 12, !dbg !6230
  %73 = load i8, i8* %tuner79, align 8, !dbg !6230
  %conv80 = zext i8 %73 to i32, !dbg !6228
  %cmp81 = icmp eq i32 %conv80, 1, !dbg !6231
  br i1 %cmp81, label %if.then83, label %if.end99, !dbg !6232

if.then83:                                        ; preds = %if.end78
  %74 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !6233
  %regmap84 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %74, i32 0, i32 3, !dbg !6235
  %75 = load %struct.regmap*, %struct.regmap** %regmap84, align 8, !dbg !6235
  %call85 = call i32 @regmap_write(%struct.regmap* %75, i32 37, i32 0) #9, !dbg !6236
  store i32 %call85, i32* %ret, align 4, !dbg !6237
  %76 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !6238
  %regmap86 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %76, i32 0, i32 3, !dbg !6239
  %77 = load %struct.regmap*, %struct.regmap** %regmap86, align 8, !dbg !6239
  %call87 = call i32 @regmap_write(%struct.regmap* %77, i32 39, i32 112) #9, !dbg !6240
  %78 = load i32, i32* %ret, align 4, !dbg !6241
  %or88 = or i32 %78, %call87, !dbg !6241
  store i32 %or88, i32* %ret, align 4, !dbg !6241
  %79 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !6242
  %regmap89 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %79, i32 0, i32 3, !dbg !6243
  %80 = load %struct.regmap*, %struct.regmap** %regmap89, align 8, !dbg !6243
  %call90 = call i32 @regmap_write(%struct.regmap* %80, i32 65, i32 9) #9, !dbg !6244
  %81 = load i32, i32* %ret, align 4, !dbg !6245
  %or91 = or i32 %81, %call90, !dbg !6245
  store i32 %or91, i32* %ret, align 4, !dbg !6245
  %82 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !6246
  %regmap92 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %82, i32 0, i32 3, !dbg !6247
  %83 = load %struct.regmap*, %struct.regmap** %regmap92, align 8, !dbg !6247
  %call93 = call i32 @regmap_write(%struct.regmap* %83, i32 8, i32 11) #9, !dbg !6248
  %84 = load i32, i32* %ret, align 4, !dbg !6249
  %or94 = or i32 %84, %call93, !dbg !6249
  store i32 %or94, i32* %ret, align 4, !dbg !6249
  %85 = load i32, i32* %ret, align 4, !dbg !6250
  %cmp95 = icmp slt i32 %85, 0, !dbg !6252
  br i1 %cmp95, label %if.then97, label %if.end98, !dbg !6253

if.then97:                                        ; preds = %if.then83
  store i32 -19, i32* %retval, align 4, !dbg !6254
  br label %return, !dbg !6254

if.end98:                                         ; preds = %if.then83
  br label %if.end99, !dbg !6255

if.end99:                                         ; preds = %if.end98, %if.end78
  %86 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !6256
  %regmap100 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %86, i32 0, i32 3, !dbg !6257
  %87 = load %struct.regmap*, %struct.regmap** %regmap100, align 8, !dbg !6257
  %call101 = call i32 @regmap_read(%struct.regmap* %87, i32 38, i32* %utmp) #9, !dbg !6258
  %88 = load i32, i32* %utmp, align 4, !dbg !6259
  %conv102 = trunc i32 %88 to i16, !dbg !6259
  store i16 %conv102, i16* %value, align 2, !dbg !6260
  %89 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6261
  %bandwidth_hz = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %89, i32 0, i32 7, !dbg !6262
  %90 = load i32, i32* %bandwidth_hz, align 4, !dbg !6262
  %div103 = udiv i32 %90, 1000, !dbg !6263
  %div104 = udiv i32 %div103, 2, !dbg !6264
  %add105 = add i32 %div104, 2000, !dbg !6265
  store i32 %add105, i32* %f3db, align 4, !dbg !6266
  %91 = load i32, i32* %f3db, align 4, !dbg !6267
  %add106 = add i32 %91, 3000, !dbg !6267
  store i32 %add106, i32* %f3db, align 4, !dbg !6267
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x222, metadata !6268, metadata !DIExpression()), !dbg !6270
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x220, metadata !6271, metadata !DIExpression()), !dbg !6273
  %92 = load i32, i32* %f3db, align 4, !dbg !6273
  store i32 %92, i32* %__UNIQUE_ID___x220, align 4, !dbg !6273
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y221, metadata !6274, metadata !DIExpression()), !dbg !6273
  store i32 7000, i32* %__UNIQUE_ID___y221, align 4, !dbg !6273
  %93 = load i32, i32* %__UNIQUE_ID___x220, align 4, !dbg !6273
  %94 = load i32, i32* %__UNIQUE_ID___y221, align 4, !dbg !6273
  %cmp108 = icmp ugt i32 %93, %94, !dbg !6273
  br i1 %cmp108, label %cond.true, label %cond.false, !dbg !6273

cond.true:                                        ; preds = %if.end99
  %95 = load i32, i32* %__UNIQUE_ID___x220, align 4, !dbg !6273
  br label %cond.end, !dbg !6273

cond.false:                                       ; preds = %if.end99
  %96 = load i32, i32* %__UNIQUE_ID___y221, align 4, !dbg !6273
  br label %cond.end, !dbg !6273

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %95, %cond.true ], [ %96, %cond.false ], !dbg !6273
  store i32 %cond, i32* %tmp107, align 4, !dbg !6273
  %97 = load i32, i32* %tmp107, align 4, !dbg !6273
  store i32 %97, i32* %__UNIQUE_ID___x222, align 4, !dbg !6270
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y223, metadata !6275, metadata !DIExpression()), !dbg !6270
  store i32 40000, i32* %__UNIQUE_ID___y223, align 4, !dbg !6270
  %98 = load i32, i32* %__UNIQUE_ID___x222, align 4, !dbg !6270
  %99 = load i32, i32* %__UNIQUE_ID___y223, align 4, !dbg !6270
  %cmp111 = icmp ult i32 %98, %99, !dbg !6270
  br i1 %cmp111, label %cond.true113, label %cond.false114, !dbg !6270

cond.true113:                                     ; preds = %cond.end
  %100 = load i32, i32* %__UNIQUE_ID___x222, align 4, !dbg !6270
  br label %cond.end115, !dbg !6270

cond.false114:                                    ; preds = %cond.end
  %101 = load i32, i32* %__UNIQUE_ID___y223, align 4, !dbg !6270
  br label %cond.end115, !dbg !6270

cond.end115:                                      ; preds = %cond.false114, %cond.true113
  %cond116 = phi i32 [ %100, %cond.true113 ], [ %101, %cond.false114 ], !dbg !6270
  store i32 %cond116, i32* %tmp110, align 4, !dbg !6270
  %102 = load i32, i32* %tmp110, align 4, !dbg !6270
  store i32 %102, i32* %f3db, align 4, !dbg !6276
  %103 = load i32, i32* %gdiv28, align 4, !dbg !6277
  %mul117 = mul i32 %103, 207, !dbg !6278
  %104 = load i16, i16* %value, align 2, !dbg !6279
  %conv118 = zext i16 %104 to i32, !dbg !6279
  %mul119 = mul i32 %conv118, 2, !dbg !6280
  %add120 = add i32 %mul119, 151, !dbg !6281
  %div121 = udiv i32 %mul117, %add120, !dbg !6282
  store i32 %div121, i32* %gdiv28, align 4, !dbg !6283
  %105 = load i32, i32* %gdiv28, align 4, !dbg !6284
  %mul122 = mul i32 %105, 135, !dbg !6285
  %div123 = udiv i32 %mul122, 100, !dbg !6286
  %conv124 = trunc i32 %div123 to i8, !dbg !6284
  store i8 %conv124, i8* %mlpf_max, align 1, !dbg !6287
  %106 = load i32, i32* %gdiv28, align 4, !dbg !6288
  %mul125 = mul i32 %106, 78, !dbg !6289
  %div126 = udiv i32 %mul125, 100, !dbg !6290
  %conv127 = trunc i32 %div126 to i8, !dbg !6288
  store i8 %conv127, i8* %mlpf_min, align 1, !dbg !6291
  %107 = load i8, i8* %mlpf_max, align 1, !dbg !6292
  %conv128 = zext i8 %107 to i32, !dbg !6292
  %cmp129 = icmp sgt i32 %conv128, 63, !dbg !6294
  br i1 %cmp129, label %if.then131, label %if.end132, !dbg !6295

if.then131:                                       ; preds = %cond.end115
  store i8 63, i8* %mlpf_max, align 1, !dbg !6296
  br label %if.end132, !dbg !6297

if.end132:                                        ; preds = %if.then131, %cond.end115
  %108 = load i32, i32* %f3db, align 4, !dbg !6298
  %109 = load i32, i32* %gdiv28, align 4, !dbg !6299
  %mul133 = mul i32 %108, %109, !dbg !6300
  %mul134 = mul i32 %mul133, 2, !dbg !6301
  %110 = load i16, i16* %lpf_coeff, align 2, !dbg !6302
  %conv135 = zext i16 %110 to i32, !dbg !6302
  %div136 = udiv i32 %mul134, %conv135, !dbg !6303
  %div137 = udiv i32 %div136, 27, !dbg !6304
  %add138 = add i32 %div137, 1, !dbg !6305
  %div139 = udiv i32 %add138, 2, !dbg !6306
  %conv140 = trunc i32 %div139 to i8, !dbg !6307
  store i8 %conv140, i8* %nlpf, align 1, !dbg !6308
  %111 = load i8, i8* %nlpf, align 1, !dbg !6309
  %conv141 = zext i8 %111 to i32, !dbg !6309
  %cmp142 = icmp sgt i32 %conv141, 23, !dbg !6311
  br i1 %cmp142, label %if.then144, label %if.end145, !dbg !6312

if.then144:                                       ; preds = %if.end132
  store i8 23, i8* %nlpf, align 1, !dbg !6313
  br label %if.end145, !dbg !6314

if.end145:                                        ; preds = %if.then144, %if.end132
  %112 = load i8, i8* %nlpf, align 1, !dbg !6315
  %conv146 = zext i8 %112 to i32, !dbg !6315
  %cmp147 = icmp slt i32 %conv146, 1, !dbg !6317
  br i1 %cmp147, label %if.then149, label %if.end150, !dbg !6318

if.then149:                                       ; preds = %if.end145
  store i8 1, i8* %nlpf, align 1, !dbg !6319
  br label %if.end150, !dbg !6320

if.end150:                                        ; preds = %if.then149, %if.end145
  %113 = load i8, i8* %nlpf, align 1, !dbg !6321
  %conv151 = zext i8 %113 to i32, !dbg !6321
  %mul152 = mul i32 %conv151, 27, !dbg !6322
  %114 = load i16, i16* %lpf_coeff, align 2, !dbg !6323
  %conv153 = zext i16 %114 to i32, !dbg !6323
  %mul154 = mul i32 %mul152, %conv153, !dbg !6324
  %mul155 = mul i32 %mul154, 2, !dbg !6325
  %115 = load i32, i32* %f3db, align 4, !dbg !6326
  %div156 = udiv i32 %mul155, %115, !dbg !6327
  %add157 = add i32 %div156, 1, !dbg !6328
  %div158 = udiv i32 %add157, 2, !dbg !6329
  %conv159 = trunc i32 %div158 to i8, !dbg !6330
  store i8 %conv159, i8* %lpf_mxdiv, align 1, !dbg !6331
  %116 = load i8, i8* %lpf_mxdiv, align 1, !dbg !6332
  %conv160 = zext i8 %116 to i32, !dbg !6332
  %117 = load i8, i8* %mlpf_min, align 1, !dbg !6334
  %conv161 = zext i8 %117 to i32, !dbg !6334
  %cmp162 = icmp slt i32 %conv160, %conv161, !dbg !6335
  br i1 %cmp162, label %if.then164, label %if.end174, !dbg !6336

if.then164:                                       ; preds = %if.end150
  %118 = load i8, i8* %nlpf, align 1, !dbg !6337
  %inc = add i8 %118, 1, !dbg !6337
  store i8 %inc, i8* %nlpf, align 1, !dbg !6337
  %119 = load i8, i8* %nlpf, align 1, !dbg !6339
  %conv165 = zext i8 %119 to i32, !dbg !6339
  %mul166 = mul i32 %conv165, 27, !dbg !6340
  %120 = load i16, i16* %lpf_coeff, align 2, !dbg !6341
  %conv167 = zext i16 %120 to i32, !dbg !6341
  %mul168 = mul i32 %mul166, %conv167, !dbg !6342
  %mul169 = mul i32 %mul168, 2, !dbg !6343
  %121 = load i32, i32* %f3db, align 4, !dbg !6344
  %div170 = udiv i32 %mul169, %121, !dbg !6345
  %add171 = add i32 %div170, 1, !dbg !6346
  %div172 = udiv i32 %add171, 2, !dbg !6347
  %conv173 = trunc i32 %div172 to i8, !dbg !6348
  store i8 %conv173, i8* %lpf_mxdiv, align 1, !dbg !6349
  br label %if.end174, !dbg !6350

if.end174:                                        ; preds = %if.then164, %if.end150
  %122 = load i8, i8* %lpf_mxdiv, align 1, !dbg !6351
  %conv175 = zext i8 %122 to i32, !dbg !6351
  %123 = load i8, i8* %mlpf_max, align 1, !dbg !6353
  %conv176 = zext i8 %123 to i32, !dbg !6353
  %cmp177 = icmp sgt i32 %conv175, %conv176, !dbg !6354
  br i1 %cmp177, label %if.then179, label %if.end180, !dbg !6355

if.then179:                                       ; preds = %if.end174
  %124 = load i8, i8* %mlpf_max, align 1, !dbg !6356
  store i8 %124, i8* %lpf_mxdiv, align 1, !dbg !6357
  br label %if.end180, !dbg !6358

if.end180:                                        ; preds = %if.then179, %if.end174
  %125 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !6359
  %regmap181 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %125, i32 0, i32 3, !dbg !6360
  %126 = load %struct.regmap*, %struct.regmap** %regmap181, align 8, !dbg !6360
  %127 = load i8, i8* %lpf_mxdiv, align 1, !dbg !6361
  %conv182 = zext i8 %127 to i32, !dbg !6361
  %call183 = call i32 @regmap_write(%struct.regmap* %126, i32 4, i32 %conv182) #9, !dbg !6362
  store i32 %call183, i32* %ret, align 4, !dbg !6363
  %128 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !6364
  %regmap184 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %128, i32 0, i32 3, !dbg !6365
  %129 = load %struct.regmap*, %struct.regmap** %regmap184, align 8, !dbg !6365
  %130 = load i8, i8* %nlpf, align 1, !dbg !6366
  %conv185 = zext i8 %130 to i32, !dbg !6366
  %call186 = call i32 @regmap_write(%struct.regmap* %129, i32 6, i32 %conv185) #9, !dbg !6367
  %131 = load i32, i32* %ret, align 4, !dbg !6368
  %or187 = or i32 %131, %call186, !dbg !6368
  store i32 %or187, i32* %ret, align 4, !dbg !6368
  %132 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6369
  %call188 = call i32 @ts2020_tuner_gate_ctrl(%struct.dvb_frontend* %132, i8 zeroext 4) #9, !dbg !6370
  %133 = load i32, i32* %ret, align 4, !dbg !6371
  %or189 = or i32 %133, %call188, !dbg !6371
  store i32 %or189, i32* %ret, align 4, !dbg !6371
  %134 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6372
  %call190 = call i32 @ts2020_tuner_gate_ctrl(%struct.dvb_frontend* %134, i8 zeroext 1) #9, !dbg !6373
  %135 = load i32, i32* %ret, align 4, !dbg !6374
  %or191 = or i32 %135, %call190, !dbg !6374
  store i32 %or191, i32* %ret, align 4, !dbg !6374
  call void @msleep(i32 80) #9, !dbg !6375
  %136 = load i32, i32* %ret, align 4, !dbg !6376
  %cmp192 = icmp slt i32 %136, 0, !dbg !6377
  %137 = zext i1 %cmp192 to i64, !dbg !6378
  %cond194 = select i1 %cmp192, i32 -22, i32 0, !dbg !6378
  store i32 %cond194, i32* %retval, align 4, !dbg !6379
  br label %return, !dbg !6379

return:                                           ; preds = %if.end180, %if.then97, %if.then77, %if.then57
  %138 = load i32, i32* %retval, align 4, !dbg !6380
  ret i32 %138, !dbg !6380
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ts2020_get_frequency(%struct.dvb_frontend* %fe, i32* %frequency) #0 !dbg !6381 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %frequency.addr = alloca i32*, align 8
  %priv = alloca %struct.ts2020_priv*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6382, metadata !DIExpression()), !dbg !6383
  store i32* %frequency, i32** %frequency.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %frequency.addr, metadata !6384, metadata !DIExpression()), !dbg !6385
  call void @llvm.dbg.declare(metadata %struct.ts2020_priv** %priv, metadata !6386, metadata !DIExpression()), !dbg !6387
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6388
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !6389
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !6389
  %2 = bitcast i8* %1 to %struct.ts2020_priv*, !dbg !6388
  store %struct.ts2020_priv* %2, %struct.ts2020_priv** %priv, align 8, !dbg !6387
  %3 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !6390
  %frequency_khz = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %3, i32 0, i32 11, !dbg !6391
  %4 = load i32, i32* %frequency_khz, align 4, !dbg !6391
  %5 = load i32*, i32** %frequency.addr, align 8, !dbg !6392
  store i32 %4, i32* %5, align 4, !dbg !6393
  ret i32 0, !dbg !6394
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ts2020_get_if_frequency(%struct.dvb_frontend* %fe, i32* %frequency) #0 !dbg !6395 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %frequency.addr = alloca i32*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6396, metadata !DIExpression()), !dbg !6397
  store i32* %frequency, i32** %frequency.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %frequency.addr, metadata !6398, metadata !DIExpression()), !dbg !6399
  %0 = load i32*, i32** %frequency.addr, align 8, !dbg !6400
  store i32 0, i32* %0, align 4, !dbg !6401
  ret i32 0, !dbg !6402
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ts2020_read_signal_strength(%struct.dvb_frontend* %fe, i16* %_signal_strength) #0 !dbg !6403 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %_signal_strength.addr = alloca i16*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  %priv = alloca %struct.ts2020_priv*, align 8
  %strength = alloca i32, align 4
  %gain = alloca i64, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6404, metadata !DIExpression()), !dbg !6405
  store i16* %_signal_strength, i16** %_signal_strength.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %_signal_strength.addr, metadata !6406, metadata !DIExpression()), !dbg !6407
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !6408, metadata !DIExpression()), !dbg !6409
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6410
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 8, !dbg !6411
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !6409
  call void @llvm.dbg.declare(metadata %struct.ts2020_priv** %priv, metadata !6412, metadata !DIExpression()), !dbg !6413
  %1 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6414
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %1, i32 0, i32 4, !dbg !6415
  %2 = load i8*, i8** %tuner_priv, align 8, !dbg !6415
  %3 = bitcast i8* %2 to %struct.ts2020_priv*, !dbg !6414
  store %struct.ts2020_priv* %3, %struct.ts2020_priv** %priv, align 8, !dbg !6413
  call void @llvm.dbg.declare(metadata i32* %strength, metadata !6416, metadata !DIExpression()), !dbg !6417
  call void @llvm.dbg.declare(metadata i64* %gain, metadata !6418, metadata !DIExpression()), !dbg !6419
  %4 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !6420
  %dont_poll = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %4, i32 0, i32 9, !dbg !6422
  %bf.load = load i16, i16* %dont_poll, align 4, !dbg !6422
  %bf.lshr = lshr i16 %bf.load, 8, !dbg !6422
  %bf.clear = and i16 %bf.lshr, 1, !dbg !6422
  %bf.cast = trunc i16 %bf.clear to i1, !dbg !6422
  br i1 %bf.cast, label %if.then, label %if.end, !dbg !6423

if.then:                                          ; preds = %entry
  %5 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !6424
  %stat_work = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %5, i32 0, i32 5, !dbg !6425
  %work = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %stat_work, i32 0, i32 0, !dbg !6426
  call void @ts2020_stat_work(%struct.work_struct* %work) #9, !dbg !6427
  br label %if.end, !dbg !6427

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6428
  %strength1 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %6, i32 0, i32 42, !dbg !6430
  %stat = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %strength1, i32 0, i32 1, !dbg !6431
  %arrayidx = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat, i64 0, i64 0, !dbg !6428
  %scale = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx, i32 0, i32 0, !dbg !6432
  %7 = load i8, i8* %scale, align 1, !dbg !6432
  %conv = zext i8 %7 to i32, !dbg !6428
  %cmp = icmp eq i32 %conv, 0, !dbg !6433
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !6434

if.then3:                                         ; preds = %if.end
  %8 = load i16*, i16** %_signal_strength.addr, align 8, !dbg !6435
  store i16 0, i16* %8, align 2, !dbg !6437
  store i32 0, i32* %retval, align 4, !dbg !6438
  br label %return, !dbg !6438

if.end4:                                          ; preds = %if.end
  %9 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6439
  %strength5 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %9, i32 0, i32 42, !dbg !6440
  %stat6 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %strength5, i32 0, i32 1, !dbg !6441
  %arrayidx7 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat6, i64 0, i64 0, !dbg !6439
  %10 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx7, i32 0, i32 1, !dbg !6442
  %svalue = bitcast %union.anon* %10 to i64*, !dbg !6442
  %11 = load i64, i64* %svalue, align 1, !dbg !6442
  store i64 %11, i64* %gain, align 8, !dbg !6443
  %12 = load i64, i64* %gain, align 8, !dbg !6444
  %cmp8 = icmp slt i64 %12, -85000, !dbg !6446
  br i1 %cmp8, label %if.then10, label %if.else, !dbg !6447

if.then10:                                        ; preds = %if.end4
  store i32 0, i32* %strength, align 4, !dbg !6448
  br label %if.end32, !dbg !6449

if.else:                                          ; preds = %if.end4
  %13 = load i64, i64* %gain, align 8, !dbg !6450
  %cmp11 = icmp slt i64 %13, -65000, !dbg !6452
  br i1 %cmp11, label %if.then13, label %if.else16, !dbg !6453

if.then13:                                        ; preds = %if.else
  %14 = load i64, i64* %gain, align 8, !dbg !6454
  %add = add i64 85000, %14, !dbg !6455
  %mul = mul i64 %add, 3, !dbg !6456
  %call = call i64 @div64_s64(i64 %mul, i64 1000) #9, !dbg !6457
  %add14 = add i64 0, %call, !dbg !6458
  %conv15 = trunc i64 %add14 to i32, !dbg !6459
  store i32 %conv15, i32* %strength, align 4, !dbg !6460
  br label %if.end31, !dbg !6461

if.else16:                                        ; preds = %if.else
  %15 = load i64, i64* %gain, align 8, !dbg !6462
  %cmp17 = icmp slt i64 %15, -45000, !dbg !6464
  br i1 %cmp17, label %if.then19, label %if.else25, !dbg !6465

if.then19:                                        ; preds = %if.else16
  %16 = load i64, i64* %gain, align 8, !dbg !6466
  %add20 = add i64 65000, %16, !dbg !6467
  %mul21 = mul i64 %add20, 3, !dbg !6468
  %call22 = call i64 @div64_s64(i64 %mul21, i64 2000) #9, !dbg !6469
  %add23 = add i64 60, %call22, !dbg !6470
  %conv24 = trunc i64 %add23 to i32, !dbg !6471
  store i32 %conv24, i32* %strength, align 4, !dbg !6472
  br label %if.end30, !dbg !6473

if.else25:                                        ; preds = %if.else16
  %17 = load i64, i64* %gain, align 8, !dbg !6474
  %add26 = add i64 45000, %17, !dbg !6475
  %call27 = call i64 @div64_s64(i64 %add26, i64 5000) #9, !dbg !6476
  %add28 = add i64 90, %call27, !dbg !6477
  %conv29 = trunc i64 %add28 to i32, !dbg !6478
  store i32 %conv29, i32* %strength, align 4, !dbg !6479
  br label %if.end30

if.end30:                                         ; preds = %if.else25, %if.then19
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then13
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then10
  %18 = load i32, i32* %strength, align 4, !dbg !6480
  %mul33 = mul i32 %18, 65535, !dbg !6481
  %div = udiv i32 %mul33, 100, !dbg !6482
  %conv34 = trunc i32 %div to i16, !dbg !6480
  %19 = load i16*, i16** %_signal_strength.addr, align 8, !dbg !6483
  store i16 %conv34, i16* %19, align 2, !dbg !6484
  store i32 0, i32* %retval, align 4, !dbg !6485
  br label %return, !dbg !6485

return:                                           ; preds = %if.end32, %if.then3
  %20 = load i32, i32* %retval, align 4, !dbg !6486
  ret i32 %20, !dbg !6486
}

; Function Attrs: noredzone
declare dso_local void @i2c_unregister_device(%struct.i2c_client*) #3

; Function Attrs: noredzone
declare dso_local zeroext i1 @cancel_delayed_work_sync(%struct.delayed_work*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ts2020_tuner_gate_ctrl(%struct.dvb_frontend* %fe, i8 zeroext %offset) #0 !dbg !6487 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %offset.addr = alloca i8, align 1
  %priv = alloca %struct.ts2020_priv*, align 8
  %ret = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6490, metadata !DIExpression()), !dbg !6491
  store i8 %offset, i8* %offset.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %offset.addr, metadata !6492, metadata !DIExpression()), !dbg !6493
  call void @llvm.dbg.declare(metadata %struct.ts2020_priv** %priv, metadata !6494, metadata !DIExpression()), !dbg !6495
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6496
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !6497
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !6497
  %2 = bitcast i8* %1 to %struct.ts2020_priv*, !dbg !6496
  store %struct.ts2020_priv* %2, %struct.ts2020_priv** %priv, align 8, !dbg !6495
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6498, metadata !DIExpression()), !dbg !6499
  %3 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !6500
  %regmap = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %3, i32 0, i32 3, !dbg !6501
  %4 = load %struct.regmap*, %struct.regmap** %regmap, align 8, !dbg !6501
  %5 = load i8, i8* %offset.addr, align 1, !dbg !6502
  %conv = zext i8 %5 to i32, !dbg !6502
  %sub = sub i32 31, %conv, !dbg !6503
  %call = call i32 @regmap_write(%struct.regmap* %4, i32 81, i32 %sub) #9, !dbg !6504
  store i32 %call, i32* %ret, align 4, !dbg !6505
  %6 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !6506
  %regmap1 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %6, i32 0, i32 3, !dbg !6507
  %7 = load %struct.regmap*, %struct.regmap** %regmap1, align 8, !dbg !6507
  %call2 = call i32 @regmap_write(%struct.regmap* %7, i32 81, i32 31) #9, !dbg !6508
  %8 = load i32, i32* %ret, align 4, !dbg !6509
  %or = or i32 %8, %call2, !dbg !6509
  store i32 %or, i32* %ret, align 4, !dbg !6509
  %9 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !6510
  %regmap3 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %9, i32 0, i32 3, !dbg !6511
  %10 = load %struct.regmap*, %struct.regmap** %regmap3, align 8, !dbg !6511
  %11 = load i8, i8* %offset.addr, align 1, !dbg !6512
  %conv4 = zext i8 %11 to i32, !dbg !6512
  %call5 = call i32 @regmap_write(%struct.regmap* %10, i32 80, i32 %conv4) #9, !dbg !6513
  %12 = load i32, i32* %ret, align 4, !dbg !6514
  %or6 = or i32 %12, %call5, !dbg !6514
  store i32 %or6, i32* %ret, align 4, !dbg !6514
  %13 = load %struct.ts2020_priv*, %struct.ts2020_priv** %priv, align 8, !dbg !6515
  %regmap7 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %13, i32 0, i32 3, !dbg !6516
  %14 = load %struct.regmap*, %struct.regmap** %regmap7, align 8, !dbg !6516
  %call8 = call i32 @regmap_write(%struct.regmap* %14, i32 80, i32 0) #9, !dbg !6517
  %15 = load i32, i32* %ret, align 4, !dbg !6518
  %or9 = or i32 %15, %call8, !dbg !6518
  store i32 %or9, i32* %ret, align 4, !dbg !6518
  call void @msleep(i32 20) #9, !dbg !6519
  %16 = load i32, i32* %ret, align 4, !dbg !6520
  ret i32 %16, !dbg !6521
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ts2020_set_tuner_rf(%struct.dvb_frontend* %fe) #0 !dbg !6522 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %dev = alloca %struct.ts2020_priv*, align 8
  %ret = alloca i32, align 4
  %utmp = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6523, metadata !DIExpression()), !dbg !6524
  call void @llvm.dbg.declare(metadata %struct.ts2020_priv** %dev, metadata !6525, metadata !DIExpression()), !dbg !6526
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6527
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !6528
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !6528
  %2 = bitcast i8* %1 to %struct.ts2020_priv*, !dbg !6527
  store %struct.ts2020_priv* %2, %struct.ts2020_priv** %dev, align 8, !dbg !6526
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6529, metadata !DIExpression()), !dbg !6530
  call void @llvm.dbg.declare(metadata i32* %utmp, metadata !6531, metadata !DIExpression()), !dbg !6532
  %3 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev, align 8, !dbg !6533
  %regmap = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %3, i32 0, i32 3, !dbg !6534
  %4 = load %struct.regmap*, %struct.regmap** %regmap, align 8, !dbg !6534
  %call = call i32 @regmap_read(%struct.regmap* %4, i32 61, i32* %utmp) #9, !dbg !6535
  store i32 %call, i32* %ret, align 4, !dbg !6536
  %5 = load i32, i32* %ret, align 4, !dbg !6537
  %tobool = icmp ne i32 %5, 0, !dbg !6537
  br i1 %tobool, label %if.then, label %if.end, !dbg !6539

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %ret, align 4, !dbg !6540
  store i32 %6, i32* %retval, align 4, !dbg !6541
  br label %return, !dbg !6541

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %utmp, align 4, !dbg !6542
  %and = and i32 %7, 127, !dbg !6542
  store i32 %and, i32* %utmp, align 4, !dbg !6542
  %8 = load i32, i32* %utmp, align 4, !dbg !6543
  %cmp = icmp ult i32 %8, 22, !dbg !6545
  br i1 %cmp, label %if.then1, label %if.else, !dbg !6546

if.then1:                                         ; preds = %if.end
  store i32 161, i32* %utmp, align 4, !dbg !6547
  br label %if.end6, !dbg !6548

if.else:                                          ; preds = %if.end
  %9 = load i32, i32* %utmp, align 4, !dbg !6549
  %cmp2 = icmp eq i32 %9, 22, !dbg !6551
  br i1 %cmp2, label %if.then3, label %if.else4, !dbg !6552

if.then3:                                         ; preds = %if.else
  store i32 153, i32* %utmp, align 4, !dbg !6553
  br label %if.end5, !dbg !6554

if.else4:                                         ; preds = %if.else
  store i32 249, i32* %utmp, align 4, !dbg !6555
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.then3
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.then1
  %10 = load %struct.ts2020_priv*, %struct.ts2020_priv** %dev, align 8, !dbg !6556
  %regmap7 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %10, i32 0, i32 3, !dbg !6557
  %11 = load %struct.regmap*, %struct.regmap** %regmap7, align 8, !dbg !6557
  %12 = load i32, i32* %utmp, align 4, !dbg !6558
  %call8 = call i32 @regmap_write(%struct.regmap* %11, i32 96, i32 %12) #9, !dbg !6559
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6560
  %call9 = call i32 @ts2020_tuner_gate_ctrl(%struct.dvb_frontend* %13, i8 zeroext 8) #9, !dbg !6561
  store i32 %call9, i32* %ret, align 4, !dbg !6562
  %14 = load i32, i32* %ret, align 4, !dbg !6563
  store i32 %14, i32* %retval, align 4, !dbg !6564
  br label %return, !dbg !6564

return:                                           ; preds = %if.end6, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !6565
  ret i32 %15, !dbg !6565
}

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @div64_s64(i64 %dividend, i64 %divisor) #0 !dbg !6566 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i64, align 8
  store i64 %dividend, i64* %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dividend.addr, metadata !6570, metadata !DIExpression()), !dbg !6571
  store i64 %divisor, i64* %divisor.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %divisor.addr, metadata !6572, metadata !DIExpression()), !dbg !6573
  %0 = load i64, i64* %dividend.addr, align 8, !dbg !6574
  %1 = load i64, i64* %divisor.addr, align 8, !dbg !6575
  %div = sdiv i64 %0, %1, !dbg !6576
  ret i64 %div, !dbg !6577
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #0 !dbg !6578 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6581, metadata !DIExpression()), !dbg !6582
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6583, metadata !DIExpression()), !dbg !6584
  %0 = load i8*, i8** %data.addr, align 8, !dbg !6585
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6586
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !6587
  store i8* %0, i8** %driver_data, align 8, !dbg !6588
  ret void, !dbg !6589
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @i2c_get_clientdata(%struct.i2c_client* %client) #0 !dbg !6590 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !6595, metadata !DIExpression()), !dbg !6596
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !6597
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %0, i32 0, i32 4, !dbg !6598
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #9, !dbg !6599
  ret i8* %call, !dbg !6600
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !6601 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6604, metadata !DIExpression()), !dbg !6605
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6606
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !6607
  %1 = load i8*, i8** %driver_data, align 8, !dbg !6607
  ret i8* %1, !dbg !6608
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!llvm.module.flags = !{!4673, !4674, !4675, !4676}
!llvm.ident = !{!4677}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ts2020_driver_init253", scope: !2, file: !3, line: 730, type: !363, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !361, globals: !4532, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/dvb-frontends/ts2020.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !40, !50, !57, !73, !78, !82, !87, !102, !113, !126, !133, !138, !144, !165, !171, !175, !183, !190, !195, !201, !207, !216, !224, !230, !236, !243, !251, !257, !271, !283, !292, !297, !302, !309, !315, !348, !355}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_caps", file: !6, line: 72, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/uapi/linux/dvb/frontend.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39}
!9 = !DIEnumerator(name: "FE_IS_STUPID", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "FE_CAN_INVERSION_AUTO", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "FE_CAN_FEC_1_2", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "FE_CAN_FEC_2_3", value: 4, isUnsigned: true)
!13 = !DIEnumerator(name: "FE_CAN_FEC_3_4", value: 8, isUnsigned: true)
!14 = !DIEnumerator(name: "FE_CAN_FEC_4_5", value: 16, isUnsigned: true)
!15 = !DIEnumerator(name: "FE_CAN_FEC_5_6", value: 32, isUnsigned: true)
!16 = !DIEnumerator(name: "FE_CAN_FEC_6_7", value: 64, isUnsigned: true)
!17 = !DIEnumerator(name: "FE_CAN_FEC_7_8", value: 128, isUnsigned: true)
!18 = !DIEnumerator(name: "FE_CAN_FEC_8_9", value: 256, isUnsigned: true)
!19 = !DIEnumerator(name: "FE_CAN_FEC_AUTO", value: 512, isUnsigned: true)
!20 = !DIEnumerator(name: "FE_CAN_QPSK", value: 1024, isUnsigned: true)
!21 = !DIEnumerator(name: "FE_CAN_QAM_16", value: 2048, isUnsigned: true)
!22 = !DIEnumerator(name: "FE_CAN_QAM_32", value: 4096, isUnsigned: true)
!23 = !DIEnumerator(name: "FE_CAN_QAM_64", value: 8192, isUnsigned: true)
!24 = !DIEnumerator(name: "FE_CAN_QAM_128", value: 16384, isUnsigned: true)
!25 = !DIEnumerator(name: "FE_CAN_QAM_256", value: 32768, isUnsigned: true)
!26 = !DIEnumerator(name: "FE_CAN_QAM_AUTO", value: 65536, isUnsigned: true)
!27 = !DIEnumerator(name: "FE_CAN_TRANSMISSION_MODE_AUTO", value: 131072, isUnsigned: true)
!28 = !DIEnumerator(name: "FE_CAN_BANDWIDTH_AUTO", value: 262144, isUnsigned: true)
!29 = !DIEnumerator(name: "FE_CAN_GUARD_INTERVAL_AUTO", value: 524288, isUnsigned: true)
!30 = !DIEnumerator(name: "FE_CAN_HIERARCHY_AUTO", value: 1048576, isUnsigned: true)
!31 = !DIEnumerator(name: "FE_CAN_8VSB", value: 2097152, isUnsigned: true)
!32 = !DIEnumerator(name: "FE_CAN_16VSB", value: 4194304, isUnsigned: true)
!33 = !DIEnumerator(name: "FE_HAS_EXTENDED_CAPS", value: 8388608, isUnsigned: true)
!34 = !DIEnumerator(name: "FE_CAN_MULTISTREAM", value: 67108864, isUnsigned: true)
!35 = !DIEnumerator(name: "FE_CAN_TURBO_FEC", value: 134217728, isUnsigned: true)
!36 = !DIEnumerator(name: "FE_CAN_2G_MODULATION", value: 268435456, isUnsigned: true)
!37 = !DIEnumerator(name: "FE_NEEDS_BENDING", value: 536870912, isUnsigned: true)
!38 = !DIEnumerator(name: "FE_CAN_RECOVER", value: 1073741824, isUnsigned: true)
!39 = !DIEnumerator(name: "FE_CAN_MUTE_TS", value: 2147483648, isUnsigned: true)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_status", file: !6, line: 252, baseType: !7, size: 32, elements: !41)
!41 = !{!42, !43, !44, !45, !46, !47, !48, !49}
!42 = !DIEnumerator(name: "FE_NONE", value: 0, isUnsigned: true)
!43 = !DIEnumerator(name: "FE_HAS_SIGNAL", value: 1, isUnsigned: true)
!44 = !DIEnumerator(name: "FE_HAS_CARRIER", value: 2, isUnsigned: true)
!45 = !DIEnumerator(name: "FE_HAS_VITERBI", value: 4, isUnsigned: true)
!46 = !DIEnumerator(name: "FE_HAS_SYNC", value: 8, isUnsigned: true)
!47 = !DIEnumerator(name: "FE_HAS_LOCK", value: 16, isUnsigned: true)
!48 = !DIEnumerator(name: "FE_TIMEDOUT", value: 32, isUnsigned: true)
!49 = !DIEnumerator(name: "FE_REINIT", value: 64, isUnsigned: true)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dvbfe_algo", file: !51, line: 144, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/media/dvb_frontend.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55, !56}
!53 = !DIEnumerator(name: "DVBFE_ALGO_HW", value: 1, isUnsigned: true)
!54 = !DIEnumerator(name: "DVBFE_ALGO_SW", value: 2, isUnsigned: true)
!55 = !DIEnumerator(name: "DVBFE_ALGO_CUSTOM", value: 4, isUnsigned: true)
!56 = !DIEnumerator(name: "DVBFE_ALGO_RECOVERY", value: 2147483648, isUnsigned: true)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_modulation", file: !6, line: 338, baseType: !7, size: 32, elements: !58)
!58 = !{!59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72}
!59 = !DIEnumerator(name: "QPSK", value: 0, isUnsigned: true)
!60 = !DIEnumerator(name: "QAM_16", value: 1, isUnsigned: true)
!61 = !DIEnumerator(name: "QAM_32", value: 2, isUnsigned: true)
!62 = !DIEnumerator(name: "QAM_64", value: 3, isUnsigned: true)
!63 = !DIEnumerator(name: "QAM_128", value: 4, isUnsigned: true)
!64 = !DIEnumerator(name: "QAM_256", value: 5, isUnsigned: true)
!65 = !DIEnumerator(name: "QAM_AUTO", value: 6, isUnsigned: true)
!66 = !DIEnumerator(name: "VSB_8", value: 7, isUnsigned: true)
!67 = !DIEnumerator(name: "VSB_16", value: 8, isUnsigned: true)
!68 = !DIEnumerator(name: "PSK_8", value: 9, isUnsigned: true)
!69 = !DIEnumerator(name: "APSK_16", value: 10, isUnsigned: true)
!70 = !DIEnumerator(name: "APSK_32", value: 11, isUnsigned: true)
!71 = !DIEnumerator(name: "DQPSK", value: 12, isUnsigned: true)
!72 = !DIEnumerator(name: "QAM_4_NR", value: 13, isUnsigned: true)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_sec_voltage", file: !6, line: 208, baseType: !7, size: 32, elements: !74)
!74 = !{!75, !76, !77}
!75 = !DIEnumerator(name: "SEC_VOLTAGE_13", value: 0, isUnsigned: true)
!76 = !DIEnumerator(name: "SEC_VOLTAGE_18", value: 1, isUnsigned: true)
!77 = !DIEnumerator(name: "SEC_VOLTAGE_OFF", value: 2, isUnsigned: true)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_sec_tone_mode", file: !6, line: 220, baseType: !7, size: 32, elements: !79)
!79 = !{!80, !81}
!80 = !DIEnumerator(name: "SEC_TONE_ON", value: 0, isUnsigned: true)
!81 = !DIEnumerator(name: "SEC_TONE_OFF", value: 1, isUnsigned: true)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_spectral_inversion", file: !6, line: 276, baseType: !7, size: 32, elements: !83)
!83 = !{!84, !85, !86}
!84 = !DIEnumerator(name: "INVERSION_OFF", value: 0, isUnsigned: true)
!85 = !DIEnumerator(name: "INVERSION_ON", value: 1, isUnsigned: true)
!86 = !DIEnumerator(name: "INVERSION_AUTO", value: 2, isUnsigned: true)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_code_rate", file: !6, line: 302, baseType: !7, size: 32, elements: !88)
!88 = !{!89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101}
!89 = !DIEnumerator(name: "FEC_NONE", value: 0, isUnsigned: true)
!90 = !DIEnumerator(name: "FEC_1_2", value: 1, isUnsigned: true)
!91 = !DIEnumerator(name: "FEC_2_3", value: 2, isUnsigned: true)
!92 = !DIEnumerator(name: "FEC_3_4", value: 3, isUnsigned: true)
!93 = !DIEnumerator(name: "FEC_4_5", value: 4, isUnsigned: true)
!94 = !DIEnumerator(name: "FEC_5_6", value: 5, isUnsigned: true)
!95 = !DIEnumerator(name: "FEC_6_7", value: 6, isUnsigned: true)
!96 = !DIEnumerator(name: "FEC_7_8", value: 7, isUnsigned: true)
!97 = !DIEnumerator(name: "FEC_8_9", value: 8, isUnsigned: true)
!98 = !DIEnumerator(name: "FEC_AUTO", value: 9, isUnsigned: true)
!99 = !DIEnumerator(name: "FEC_3_5", value: 10, isUnsigned: true)
!100 = !DIEnumerator(name: "FEC_9_10", value: 11, isUnsigned: true)
!101 = !DIEnumerator(name: "FEC_2_5", value: 12, isUnsigned: true)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_transmit_mode", file: !6, line: 381, baseType: !7, size: 32, elements: !103)
!103 = !{!104, !105, !106, !107, !108, !109, !110, !111, !112}
!104 = !DIEnumerator(name: "TRANSMISSION_MODE_2K", value: 0, isUnsigned: true)
!105 = !DIEnumerator(name: "TRANSMISSION_MODE_8K", value: 1, isUnsigned: true)
!106 = !DIEnumerator(name: "TRANSMISSION_MODE_AUTO", value: 2, isUnsigned: true)
!107 = !DIEnumerator(name: "TRANSMISSION_MODE_4K", value: 3, isUnsigned: true)
!108 = !DIEnumerator(name: "TRANSMISSION_MODE_1K", value: 4, isUnsigned: true)
!109 = !DIEnumerator(name: "TRANSMISSION_MODE_16K", value: 5, isUnsigned: true)
!110 = !DIEnumerator(name: "TRANSMISSION_MODE_32K", value: 6, isUnsigned: true)
!111 = !DIEnumerator(name: "TRANSMISSION_MODE_C1", value: 7, isUnsigned: true)
!112 = !DIEnumerator(name: "TRANSMISSION_MODE_C3780", value: 8, isUnsigned: true)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_guard_interval", file: !6, line: 410, baseType: !7, size: 32, elements: !114)
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125}
!115 = !DIEnumerator(name: "GUARD_INTERVAL_1_32", value: 0, isUnsigned: true)
!116 = !DIEnumerator(name: "GUARD_INTERVAL_1_16", value: 1, isUnsigned: true)
!117 = !DIEnumerator(name: "GUARD_INTERVAL_1_8", value: 2, isUnsigned: true)
!118 = !DIEnumerator(name: "GUARD_INTERVAL_1_4", value: 3, isUnsigned: true)
!119 = !DIEnumerator(name: "GUARD_INTERVAL_AUTO", value: 4, isUnsigned: true)
!120 = !DIEnumerator(name: "GUARD_INTERVAL_1_128", value: 5, isUnsigned: true)
!121 = !DIEnumerator(name: "GUARD_INTERVAL_19_128", value: 6, isUnsigned: true)
!122 = !DIEnumerator(name: "GUARD_INTERVAL_19_256", value: 7, isUnsigned: true)
!123 = !DIEnumerator(name: "GUARD_INTERVAL_PN420", value: 8, isUnsigned: true)
!124 = !DIEnumerator(name: "GUARD_INTERVAL_PN595", value: 9, isUnsigned: true)
!125 = !DIEnumerator(name: "GUARD_INTERVAL_PN945", value: 10, isUnsigned: true)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_hierarchy", file: !6, line: 434, baseType: !7, size: 32, elements: !127)
!127 = !{!128, !129, !130, !131, !132}
!128 = !DIEnumerator(name: "HIERARCHY_NONE", value: 0, isUnsigned: true)
!129 = !DIEnumerator(name: "HIERARCHY_1", value: 1, isUnsigned: true)
!130 = !DIEnumerator(name: "HIERARCHY_2", value: 2, isUnsigned: true)
!131 = !DIEnumerator(name: "HIERARCHY_4", value: 3, isUnsigned: true)
!132 = !DIEnumerator(name: "HIERARCHY_AUTO", value: 4, isUnsigned: true)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_pilot", file: !6, line: 562, baseType: !7, size: 32, elements: !134)
!134 = !{!135, !136, !137}
!135 = !DIEnumerator(name: "PILOT_ON", value: 0, isUnsigned: true)
!136 = !DIEnumerator(name: "PILOT_OFF", value: 1, isUnsigned: true)
!137 = !DIEnumerator(name: "PILOT_AUTO", value: 2, isUnsigned: true)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_rolloff", file: !6, line: 579, baseType: !7, size: 32, elements: !139)
!139 = !{!140, !141, !142, !143}
!140 = !DIEnumerator(name: "ROLLOFF_35", value: 0, isUnsigned: true)
!141 = !DIEnumerator(name: "ROLLOFF_20", value: 1, isUnsigned: true)
!142 = !DIEnumerator(name: "ROLLOFF_25", value: 2, isUnsigned: true)
!143 = !DIEnumerator(name: "ROLLOFF_AUTO", value: 3, isUnsigned: true)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_delivery_system", file: !6, line: 628, baseType: !7, size: 32, elements: !145)
!145 = !{!146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164}
!146 = !DIEnumerator(name: "SYS_UNDEFINED", value: 0, isUnsigned: true)
!147 = !DIEnumerator(name: "SYS_DVBC_ANNEX_A", value: 1, isUnsigned: true)
!148 = !DIEnumerator(name: "SYS_DVBC_ANNEX_B", value: 2, isUnsigned: true)
!149 = !DIEnumerator(name: "SYS_DVBT", value: 3, isUnsigned: true)
!150 = !DIEnumerator(name: "SYS_DSS", value: 4, isUnsigned: true)
!151 = !DIEnumerator(name: "SYS_DVBS", value: 5, isUnsigned: true)
!152 = !DIEnumerator(name: "SYS_DVBS2", value: 6, isUnsigned: true)
!153 = !DIEnumerator(name: "SYS_DVBH", value: 7, isUnsigned: true)
!154 = !DIEnumerator(name: "SYS_ISDBT", value: 8, isUnsigned: true)
!155 = !DIEnumerator(name: "SYS_ISDBS", value: 9, isUnsigned: true)
!156 = !DIEnumerator(name: "SYS_ISDBC", value: 10, isUnsigned: true)
!157 = !DIEnumerator(name: "SYS_ATSC", value: 11, isUnsigned: true)
!158 = !DIEnumerator(name: "SYS_ATSCMH", value: 12, isUnsigned: true)
!159 = !DIEnumerator(name: "SYS_DTMB", value: 13, isUnsigned: true)
!160 = !DIEnumerator(name: "SYS_CMMB", value: 14, isUnsigned: true)
!161 = !DIEnumerator(name: "SYS_DAB", value: 15, isUnsigned: true)
!162 = !DIEnumerator(name: "SYS_DVBT2", value: 16, isUnsigned: true)
!163 = !DIEnumerator(name: "SYS_TURBO", value: 17, isUnsigned: true)
!164 = !DIEnumerator(name: "SYS_DVBC_ANNEX_C", value: 18, isUnsigned: true)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_interleaving", file: !6, line: 451, baseType: !7, size: 32, elements: !166)
!166 = !{!167, !168, !169, !170}
!167 = !DIEnumerator(name: "INTERLEAVING_NONE", value: 0, isUnsigned: true)
!168 = !DIEnumerator(name: "INTERLEAVING_AUTO", value: 1, isUnsigned: true)
!169 = !DIEnumerator(name: "INTERLEAVING_240", value: 2, isUnsigned: true)
!170 = !DIEnumerator(name: "INTERLEAVING_720", value: 3, isUnsigned: true)
!171 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_sec_mini_cmd", file: !6, line: 233, baseType: !7, size: 32, elements: !172)
!172 = !{!173, !174}
!173 = !DIEnumerator(name: "SEC_MINI_A", value: 0, isUnsigned: true)
!174 = !DIEnumerator(name: "SEC_MINI_B", value: 1, isUnsigned: true)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dvbfe_search", file: !51, line: 173, baseType: !7, size: 32, elements: !176)
!176 = !{!177, !178, !179, !180, !181, !182}
!177 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_SUCCESS", value: 1, isUnsigned: true)
!178 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_ASLEEP", value: 2, isUnsigned: true)
!179 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_FAILED", value: 4, isUnsigned: true)
!180 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_INVALID", value: 8, isUnsigned: true)
!181 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_AGAIN", value: 16, isUnsigned: true)
!182 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_ERROR", value: 2147483648, isUnsigned: true)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !184, line: 15, baseType: !7, size: 32, elements: !185)
!184 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!185 = !{!186, !187, !188, !189}
!186 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!187 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!188 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!189 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !191, line: 65, baseType: !7, size: 32, elements: !192)
!191 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!192 = !{!193, !194}
!193 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!194 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!195 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !196, line: 16, baseType: !7, size: 32, elements: !197)
!196 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!197 = !{!198, !199, !200}
!198 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!199 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!200 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !202, line: 54, baseType: !7, size: 32, elements: !203)
!202 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!203 = !{!204, !205, !206}
!204 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!205 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!206 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !208, line: 296, baseType: !7, size: 32, elements: !209)
!208 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!209 = !{!210, !211, !212, !213, !214, !215}
!210 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!211 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!212 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!213 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!214 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!215 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!216 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !217, line: 9, baseType: !7, size: 32, elements: !218)
!217 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!218 = !{!219, !220, !221, !222, !223}
!219 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!220 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!221 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!222 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!223 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !225, line: 26, baseType: !7, size: 32, elements: !226)
!225 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!226 = !{!227, !228, !229}
!227 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!228 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!229 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!230 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !231, line: 44, baseType: !7, size: 32, elements: !232)
!231 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!232 = !{!233, !234, !235}
!233 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!234 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!235 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!236 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !237, line: 343, baseType: !7, size: 32, elements: !238)
!237 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!238 = !{!239, !240, !241, !242}
!239 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!240 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!241 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!242 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !244, line: 524, baseType: !7, size: 32, elements: !245)
!244 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!245 = !{!246, !247, !248, !249, !250}
!246 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!247 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!248 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!249 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!250 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!251 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !244, line: 502, baseType: !7, size: 32, elements: !252)
!252 = !{!253, !254, !255, !256}
!253 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!254 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!255 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!256 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!257 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !258, line: 76, baseType: !7, size: 32, elements: !259)
!258 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!259 = !{!260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270}
!260 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!261 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!262 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!263 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!264 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!265 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!266 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!267 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!268 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!269 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!270 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!271 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dvb_device_type", file: !272, line: 57, baseType: !7, size: 32, elements: !273)
!272 = !DIFile(filename: "./include/media/dvbdev.h", directory: "/home/lizy2001/genbc/linux")
!273 = !{!274, !275, !276, !277, !278, !279, !280, !281, !282}
!274 = !DIEnumerator(name: "DVB_DEVICE_SEC", value: 0, isUnsigned: true)
!275 = !DIEnumerator(name: "DVB_DEVICE_FRONTEND", value: 1, isUnsigned: true)
!276 = !DIEnumerator(name: "DVB_DEVICE_DEMUX", value: 2, isUnsigned: true)
!277 = !DIEnumerator(name: "DVB_DEVICE_DVR", value: 3, isUnsigned: true)
!278 = !DIEnumerator(name: "DVB_DEVICE_CA", value: 4, isUnsigned: true)
!279 = !DIEnumerator(name: "DVB_DEVICE_NET", value: 5, isUnsigned: true)
!280 = !DIEnumerator(name: "DVB_DEVICE_VIDEO", value: 6, isUnsigned: true)
!281 = !DIEnumerator(name: "DVB_DEVICE_AUDIO", value: 7, isUnsigned: true)
!282 = !DIEnumerator(name: "DVB_DEVICE_OSD", value: 8, isUnsigned: true)
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_prop_type", file: !284, line: 19, baseType: !7, size: 32, elements: !285)
!284 = !DIFile(filename: "./include/linux/property.h", directory: "/home/lizy2001/genbc/linux")
!285 = !{!286, !287, !288, !289, !290, !291}
!286 = !DIEnumerator(name: "DEV_PROP_U8", value: 0, isUnsigned: true)
!287 = !DIEnumerator(name: "DEV_PROP_U16", value: 1, isUnsigned: true)
!288 = !DIEnumerator(name: "DEV_PROP_U32", value: 2, isUnsigned: true)
!289 = !DIEnumerator(name: "DEV_PROP_U64", value: 3, isUnsigned: true)
!290 = !DIEnumerator(name: "DEV_PROP_STRING", value: 4, isUnsigned: true)
!291 = !DIEnumerator(name: "DEV_PROP_REF", value: 5, isUnsigned: true)
!292 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !293, line: 10, baseType: !7, size: 32, elements: !294)
!293 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!294 = !{!295, !296}
!295 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!296 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!297 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "i2c_alert_protocol", file: !298, line: 215, baseType: !7, size: 32, elements: !299)
!298 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!299 = !{!300, !301}
!300 = !DIEnumerator(name: "I2C_PROTOCOL_SMBUS_ALERT", value: 0, isUnsigned: true)
!301 = !DIEnumerator(name: "I2C_PROTOCOL_SMBUS_HOST_NOTIFY", value: 1, isUnsigned: true)
!302 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "regcache_type", file: !303, line: 40, baseType: !7, size: 32, elements: !304)
!303 = !DIFile(filename: "./include/linux/regmap.h", directory: "/home/lizy2001/genbc/linux")
!304 = !{!305, !306, !307, !308}
!305 = !DIEnumerator(name: "REGCACHE_NONE", value: 0, isUnsigned: true)
!306 = !DIEnumerator(name: "REGCACHE_RBTREE", value: 1, isUnsigned: true)
!307 = !DIEnumerator(name: "REGCACHE_COMPRESSED", value: 2, isUnsigned: true)
!308 = !DIEnumerator(name: "REGCACHE_FLAT", value: 3, isUnsigned: true)
!309 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "regmap_endian", file: !303, line: 184, baseType: !7, size: 32, elements: !310)
!310 = !{!311, !312, !313, !314}
!311 = !DIEnumerator(name: "REGMAP_ENDIAN_DEFAULT", value: 0, isUnsigned: true)
!312 = !DIEnumerator(name: "REGMAP_ENDIAN_BIG", value: 1, isUnsigned: true)
!313 = !DIEnumerator(name: "REGMAP_ENDIAN_LITTLE", value: 2, isUnsigned: true)
!314 = !DIEnumerator(name: "REGMAP_ENDIAN_NATIVE", value: 3, isUnsigned: true)
!315 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !316, line: 30, baseType: !317, size: 64, elements: !318)
!316 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!317 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!318 = !{!319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347}
!319 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!320 = !DIEnumerator(name: "WORK_STRUCT_DELAYED_BIT", value: 1)
!321 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!322 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!323 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!324 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!325 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!326 = !DIEnumerator(name: "WORK_STRUCT_DELAYED", value: 2)
!327 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!328 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!329 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!330 = !DIEnumerator(name: "WORK_NR_COLORS", value: 15)
!331 = !DIEnumerator(name: "WORK_NO_COLOR", value: 15)
!332 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 1)
!333 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!334 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!335 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!336 = !DIEnumerator(name: "WORK_OFFQ_CANCELING", value: 16)
!337 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!338 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!339 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!340 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!341 = !DIEnumerator(name: "WORK_OFFQ_POOL_NONE", value: 2147483647)
!342 = !DIEnumerator(name: "WORK_STRUCT_FLAG_MASK", value: 255)
!343 = !DIEnumerator(name: "WORK_STRUCT_WQ_DATA_MASK", value: -256)
!344 = !DIEnumerator(name: "WORK_STRUCT_NO_POOL", value: 68719476704)
!345 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!346 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!347 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 24)
!348 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !349, line: 305, baseType: !7, size: 32, elements: !350)
!349 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!350 = !{!351, !352, !353, !354}
!351 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!352 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!353 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!354 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!355 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fecap_scale_params", file: !6, line: 752, baseType: !7, size: 32, elements: !356)
!356 = !{!357, !358, !359, !360}
!357 = !DIEnumerator(name: "FE_SCALE_NOT_AVAILABLE", value: 0, isUnsigned: true)
!358 = !DIEnumerator(name: "FE_SCALE_DECIBEL", value: 1, isUnsigned: true)
!359 = !DIEnumerator(name: "FE_SCALE_RELATIVE", value: 2, isUnsigned: true)
!360 = !DIEnumerator(name: "FE_SCALE_COUNTER", value: 3, isUnsigned: true)
!361 = !{!362, !363, !364, !367, !317, !369, !376, !406, !566, !442}
!362 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !366, line: 76, flags: DIFlagFwdDecl)
!366 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !368, line: 148, baseType: !7)
!368 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !368, line: 178, size: 128, elements: !373)
!373 = !{!374, !375}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !372, file: !368, line: 179, baseType: !371, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !372, file: !368, line: 179, baseType: !371, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ts2020_priv", file: !3, line: 18, size: 3584, elements: !378)
!378 = !{!379, !4097, !4098, !4188, !4191, !4512, !4519, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "client", scope: !377, file: !3, line: 19, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_client", file: !298, line: 314, size: 6016, elements: !382)
!382 = !{!383, !385, !386, !391, !4093, !4094, !4095, !4096}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !381, file: !298, line: 315, baseType: !384, size: 16)
!384 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !381, file: !298, line: 325, baseType: !384, size: 16, offset: 16)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !381, file: !298, line: 328, baseType: !387, size: 160, offset: 32)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 160, elements: !389)
!388 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!389 = !{!390}
!390 = !DISubrange(count: 20)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !381, file: !298, line: 329, baseType: !392, size: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !298, line: 695, size: 7552, elements: !394)
!394 = !{!395, !396, !397, !444, !445, !459, !3486, !3487, !3488, !3489, !4040, !4041, !4042, !4046, !4047, !4048, !4049, !4081, !4092}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !393, file: !298, line: 696, baseType: !364, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !393, file: !298, line: 697, baseType: !7, size: 32, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !393, file: !298, line: 698, baseType: !398, size: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !298, line: 519, size: 320, elements: !401)
!401 = !{!402, !420, !421, !437, !438}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !400, file: !298, line: 529, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!406, !392, !407, !406}
!406 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !409, line: 69, size: 128, elements: !410)
!409 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!410 = !{!411, !414, !415, !416}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !408, file: !409, line: 70, baseType: !412, size: 16)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !413, line: 24, baseType: !384)
!413 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !408, file: !409, line: 71, baseType: !412, size: 16, offset: 16)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !408, file: !409, line: 84, baseType: !412, size: 16, offset: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !408, file: !409, line: 85, baseType: !417, size: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !413, line: 21, baseType: !419)
!419 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !400, file: !298, line: 531, baseType: !403, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !400, file: !298, line: 533, baseType: !422, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!406, !392, !425, !384, !388, !427, !406, !428}
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !426, line: 19, baseType: !412)
!426 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !426, line: 17, baseType: !418)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !409, line: 135, size: 272, elements: !430)
!430 = !{!431, !432, !433}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !429, file: !409, line: 136, baseType: !418, size: 8)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !429, file: !409, line: 137, baseType: !412, size: 16)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !429, file: !409, line: 138, baseType: !434, size: 272)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 272, elements: !435)
!435 = !{!436}
!436 = !DISubrange(count: 34)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !400, file: !298, line: 536, baseType: !422, size: 64, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !400, file: !298, line: 541, baseType: !439, size: 64, offset: 256)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!442, !392}
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !426, line: 21, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !413, line: 27, baseType: !7)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !393, file: !298, line: 699, baseType: !363, size: 64, offset: 192)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !393, file: !298, line: 702, baseType: !446, size: 64, offset: 256)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !298, line: 557, size: 192, elements: !449)
!449 = !{!450, !454, !458}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !448, file: !298, line: 558, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !392, !7}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !448, file: !298, line: 559, baseType: !455, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!406, !392, !7}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !448, file: !298, line: 560, baseType: !451, size: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !393, file: !298, line: 703, baseType: !460, size: 192, offset: 320)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !461, line: 30, size: 192, elements: !462)
!461 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!462 = !{!463, !473, !488}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !460, file: !461, line: 31, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !465, line: 29, baseType: !466)
!465 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !465, line: 20, elements: !467)
!467 = !{!468}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !466, file: !465, line: 21, baseType: !469)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !470, line: 25, baseType: !471)
!470 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !470, line: 25, elements: !472)
!472 = !{}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !460, file: !461, line: 32, baseType: !474, size: 128)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !475, line: 125, size: 128, elements: !476)
!475 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!476 = !{!477, !487}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !474, file: !475, line: 126, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !475, line: 31, size: 64, elements: !479)
!479 = !{!480}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !478, file: !475, line: 32, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !475, line: 24, size: 192, align: 64, elements: !483)
!483 = !{!484, !485, !486}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !482, file: !475, line: 25, baseType: !362, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !482, file: !475, line: 26, baseType: !481, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !482, file: !475, line: 27, baseType: !481, size: 64, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !474, file: !475, line: 127, baseType: !481, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !460, file: !461, line: 33, baseType: !489, size: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !491, line: 640, size: 48640, elements: !492)
!491 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!492 = !{!493, !499, !501, !502, !512, !513, !514, !515, !516, !517, !518, !519, !523, !544, !555, !647, !648, !649, !660, !661, !663, !664, !2791, !2792, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2874, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2889, !2890, !2891, !2893, !2894, !2895, !2896, !2897, !2898, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2922, !2927, !2928, !2929, !2930, !2931, !2933, !2936, !2939, !2942, !2945, !2948, !3049, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3095, !3096, !3097, !3098, !3099, !3104, !3105, !3106, !3109, !3110, !3113, !3116, !3119, !3120, !3152, !3155, !3156, !3235, !3236, !3239, !3240, !3243, !3244, !3245, !3249, !3250, !3251, !3264, !3265, !3266, !3276, !3281, !3282, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !490, file: !491, line: 646, baseType: !494, size: 128)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !495, line: 56, size: 128, elements: !496)
!495 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!496 = !{!497, !498}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !494, file: !495, line: 57, baseType: !362, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !494, file: !495, line: 58, baseType: !442, size: 32, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !490, file: !491, line: 649, baseType: !500, size: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !317)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !490, file: !491, line: 657, baseType: !363, size: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !490, file: !491, line: 658, baseType: !503, size: 32, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !504, line: 113, baseType: !505)
!504 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !504, line: 111, size: 32, elements: !506)
!506 = !{!507}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !505, file: !504, line: 112, baseType: !508, size: 32)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !368, line: 168, baseType: !509)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !368, line: 166, size: 32, elements: !510)
!510 = !{!511}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !509, file: !368, line: 167, baseType: !406, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !490, file: !491, line: 660, baseType: !7, size: 32, offset: 288)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !490, file: !491, line: 661, baseType: !7, size: 32, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !490, file: !491, line: 684, baseType: !406, size: 32, offset: 352)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !490, file: !491, line: 686, baseType: !406, size: 32, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !490, file: !491, line: 687, baseType: !406, size: 32, offset: 416)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !490, file: !491, line: 688, baseType: !406, size: 32, offset: 448)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !490, file: !491, line: 689, baseType: !7, size: 32, offset: 480)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !490, file: !491, line: 691, baseType: !520, size: 64, offset: 512)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !522)
!522 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !491, line: 691, flags: DIFlagFwdDecl)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !490, file: !491, line: 692, baseType: !524, size: 832, offset: 576)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !491, line: 451, size: 832, elements: !525)
!525 = !{!526, !531, !532, !533, !534, !538, !539, !540, !541, !542}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !524, file: !491, line: 453, baseType: !527, size: 128)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !491, line: 325, size: 128, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !527, file: !491, line: 326, baseType: !362, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !527, file: !491, line: 327, baseType: !442, size: 32, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !524, file: !491, line: 454, baseType: !482, size: 192, align: 64, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !524, file: !491, line: 455, baseType: !372, size: 128, offset: 320)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !524, file: !491, line: 456, baseType: !7, size: 32, offset: 448)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !524, file: !491, line: 458, baseType: !535, size: 64, offset: 512)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !426, line: 23, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !413, line: 31, baseType: !537)
!537 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !524, file: !491, line: 459, baseType: !535, size: 64, offset: 576)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !524, file: !491, line: 460, baseType: !535, size: 64, offset: 640)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !524, file: !491, line: 461, baseType: !535, size: 64, offset: 704)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !524, file: !491, line: 463, baseType: !535, size: 64, offset: 768)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !524, file: !491, line: 465, baseType: !543, offset: 832)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !491, line: 415, elements: !472)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !490, file: !491, line: 693, baseType: !545, size: 384, offset: 1408)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !491, line: 489, size: 384, elements: !546)
!546 = !{!547, !548, !549, !550, !551, !552, !553}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !545, file: !491, line: 490, baseType: !372, size: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !545, file: !491, line: 491, baseType: !362, size: 64, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !545, file: !491, line: 492, baseType: !362, size: 64, offset: 192)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !545, file: !491, line: 493, baseType: !7, size: 32, offset: 256)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !545, file: !491, line: 494, baseType: !384, size: 16, offset: 288)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !545, file: !491, line: 495, baseType: !384, size: 16, offset: 304)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !545, file: !491, line: 497, baseType: !554, size: 64, offset: 320)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !490, file: !491, line: 697, baseType: !556, size: 1792, offset: 1792)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !491, line: 507, size: 1792, elements: !557)
!557 = !{!558, !559, !560, !561, !562, !563, !564, !568, !569, !570, !571, !572, !573, !574, !644, !645}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !556, file: !491, line: 508, baseType: !482, size: 192, align: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !556, file: !491, line: 515, baseType: !535, size: 64, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !556, file: !491, line: 516, baseType: !535, size: 64, offset: 256)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !556, file: !491, line: 517, baseType: !535, size: 64, offset: 320)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !556, file: !491, line: 518, baseType: !535, size: 64, offset: 384)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !556, file: !491, line: 519, baseType: !535, size: 64, offset: 448)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !556, file: !491, line: 526, baseType: !565, size: 64, offset: 512)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !426, line: 22, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !413, line: 30, baseType: !567)
!567 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !556, file: !491, line: 527, baseType: !535, size: 64, offset: 576)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !556, file: !491, line: 528, baseType: !7, size: 32, offset: 640)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !556, file: !491, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !556, file: !491, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !556, file: !491, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !556, file: !491, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !556, file: !491, line: 563, baseType: !575, size: 512, offset: 704)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !191, line: 118, size: 512, elements: !576)
!576 = !{!577, !585, !586, !591, !640, !641, !642, !643}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !575, file: !191, line: 119, baseType: !578, size: 256)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !579, line: 9, size: 256, elements: !580)
!579 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!580 = !{!581, !582}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !578, file: !579, line: 10, baseType: !482, size: 192, align: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !578, file: !579, line: 11, baseType: !583, size: 64, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !584, line: 29, baseType: !565)
!584 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !575, file: !191, line: 120, baseType: !583, size: 64, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !575, file: !191, line: 121, baseType: !587, size: 64, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!190, !590}
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !575, file: !191, line: 122, baseType: !592, size: 64, offset: 384)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !191, line: 159, size: 512, align: 512, elements: !594)
!594 = !{!595, !615, !616, !620, !630, !631, !635, !639}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !593, file: !191, line: 160, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !191, line: 214, size: 4608, align: 512, elements: !598)
!598 = !{!599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !597, file: !191, line: 215, baseType: !464)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !597, file: !191, line: 216, baseType: !7, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !597, file: !191, line: 217, baseType: !7, size: 32, offset: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !597, file: !191, line: 218, baseType: !7, size: 32, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !597, file: !191, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !597, file: !191, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !597, file: !191, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !597, file: !191, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !597, file: !191, line: 233, baseType: !583, size: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !597, file: !191, line: 234, baseType: !590, size: 64, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !597, file: !191, line: 235, baseType: !583, size: 64, offset: 256)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !597, file: !191, line: 236, baseType: !590, size: 64, offset: 320)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !597, file: !191, line: 237, baseType: !612, size: 4096, offset: 512)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !593, size: 4096, elements: !613)
!613 = !{!614}
!614 = !DISubrange(count: 8)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !593, file: !191, line: 161, baseType: !7, size: 32, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !593, file: !191, line: 162, baseType: !617, size: 32, offset: 96)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !368, line: 27, baseType: !618)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !619, line: 96, baseType: !406)
!619 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!620 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !593, file: !191, line: 163, baseType: !621, size: 32, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !622, line: 276, baseType: !623)
!622 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !622, line: 276, size: 32, elements: !624)
!624 = !{!625}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !623, file: !622, line: 276, baseType: !626, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !622, line: 70, baseType: !627)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !622, line: 65, size: 32, elements: !628)
!628 = !{!629}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !627, file: !622, line: 66, baseType: !7, size: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !593, file: !191, line: 164, baseType: !590, size: 64, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !593, file: !191, line: 165, baseType: !632, size: 128, offset: 256)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !579, line: 14, size: 128, elements: !633)
!633 = !{!634}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !632, file: !579, line: 15, baseType: !474, size: 128)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !593, file: !191, line: 166, baseType: !636, size: 64, offset: 384)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!583}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !593, file: !191, line: 167, baseType: !583, size: 64, offset: 448)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !575, file: !191, line: 123, baseType: !427, size: 8, offset: 448)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !575, file: !191, line: 124, baseType: !427, size: 8, offset: 456)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !575, file: !191, line: 125, baseType: !427, size: 8, offset: 464)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !575, file: !191, line: 126, baseType: !427, size: 8, offset: 472)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !556, file: !491, line: 572, baseType: !575, size: 512, offset: 1216)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !556, file: !491, line: 580, baseType: !646, size: 64, offset: 1728)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !490, file: !491, line: 721, baseType: !7, size: 32, offset: 3584)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !490, file: !491, line: 722, baseType: !406, size: 32, offset: 3616)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !490, file: !491, line: 723, baseType: !650, size: 64, offset: 3648)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !652)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !653, line: 17, baseType: !654)
!653 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !653, line: 17, size: 64, elements: !655)
!655 = !{!656}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !654, file: !653, line: 17, baseType: !657, size: 64)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 64, elements: !658)
!658 = !{!659}
!659 = !DISubrange(count: 1)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !490, file: !491, line: 724, baseType: !652, size: 64, offset: 3712)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !490, file: !491, line: 749, baseType: !662, offset: 3776)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !491, line: 290, elements: !472)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !490, file: !491, line: 751, baseType: !372, size: 128, offset: 3776)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !490, file: !491, line: 757, baseType: !665, size: 64, offset: 3904)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !667, line: 388, size: 7296, elements: !668)
!667 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!668 = !{!669, !2787}
!669 = !DIDerivedType(tag: DW_TAG_member, scope: !666, file: !667, line: 389, baseType: !670, size: 7296)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !666, file: !667, line: 389, size: 7296, elements: !671)
!671 = !{!672, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2700, !2706, !2709, !2748, !2749, !2771, !2772, !2775, !2776, !2777, !2780, !2781, !2782, !2785, !2786}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !670, file: !667, line: 390, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !667, line: 305, size: 1472, elements: !675)
!675 = !{!676, !677, !678, !679, !680, !681, !682, !683, !691, !692, !697, !698, !701, !705, !706, !2648, !2649, !2650}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !674, file: !667, line: 308, baseType: !362, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !674, file: !667, line: 309, baseType: !362, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !674, file: !667, line: 313, baseType: !673, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !674, file: !667, line: 313, baseType: !673, size: 64, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !674, file: !667, line: 315, baseType: !482, size: 192, align: 64, offset: 256)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !674, file: !667, line: 323, baseType: !362, size: 64, offset: 448)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !674, file: !667, line: 327, baseType: !665, size: 64, offset: 512)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !674, file: !667, line: 333, baseType: !684, size: 64, offset: 576)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !685, line: 284, baseType: !686)
!685 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !685, line: 284, size: 64, elements: !687)
!687 = !{!688}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !686, file: !685, line: 284, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !690, line: 19, baseType: !362)
!690 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!691 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !674, file: !667, line: 334, baseType: !362, size: 64, offset: 640)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !674, file: !667, line: 343, baseType: !693, size: 256, offset: 704)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !674, file: !667, line: 340, size: 256, elements: !694)
!694 = !{!695, !696}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !693, file: !667, line: 341, baseType: !482, size: 192, align: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !693, file: !667, line: 342, baseType: !362, size: 64, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !674, file: !667, line: 351, baseType: !372, size: 128, offset: 960)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !674, file: !667, line: 353, baseType: !699, size: 64, offset: 1088)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !667, line: 353, flags: DIFlagFwdDecl)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !674, file: !667, line: 356, baseType: !702, size: 64, offset: 1152)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !704)
!704 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !667, line: 356, flags: DIFlagFwdDecl)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !674, file: !667, line: 359, baseType: !362, size: 64, offset: 1216)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !674, file: !667, line: 361, baseType: !707, size: 64, offset: 1280)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !208, line: 916, size: 1856, align: 32, elements: !709)
!709 = !{!710, !728, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2447, !2632, !2641, !2642, !2643, !2644, !2645, !2646, !2647}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !708, file: !208, line: 920, baseType: !711, size: 128)
!711 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !708, file: !208, line: 917, size: 128, elements: !712)
!712 = !{!713, !719}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !711, file: !208, line: 918, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !715, line: 58, size: 64, elements: !716)
!715 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!716 = !{!717}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !714, file: !715, line: 59, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !711, file: !208, line: 919, baseType: !720, size: 128, align: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !368, line: 216, size: 128, align: 64, elements: !721)
!721 = !{!722, !724}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !720, file: !368, line: 217, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !720, file: !368, line: 218, baseType: !725, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{null, !723}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !708, file: !208, line: 921, baseType: !729, size: 128, offset: 128)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !730, line: 8, size: 128, elements: !731)
!730 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!731 = !{!732, !736}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !729, file: !730, line: 9, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !735, line: 18, flags: DIFlagFwdDecl)
!735 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!736 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !729, file: !730, line: 10, baseType: !737, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !735, line: 89, size: 1536, elements: !739)
!739 = !{!740, !741, !746, !754, !755, !770, !2377, !2379, !2391, !2392, !2393, !2394, !2395, !2400, !2401, !2402}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !738, file: !735, line: 91, baseType: !7, size: 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !738, file: !735, line: 92, baseType: !742, size: 32, offset: 32)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !622, line: 277, baseType: !743)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !622, line: 277, size: 32, elements: !744)
!744 = !{!745}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !743, file: !622, line: 277, baseType: !626, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !738, file: !735, line: 93, baseType: !747, size: 128, offset: 64)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !748, line: 38, size: 128, elements: !749)
!748 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!749 = !{!750, !752}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !747, file: !748, line: 39, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !747, file: !748, line: 39, baseType: !753, size: 64, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !738, file: !735, line: 94, baseType: !737, size: 64, offset: 192)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !738, file: !735, line: 95, baseType: !756, size: 128, offset: 256)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !735, line: 47, size: 128, elements: !757)
!757 = !{!758, !767}
!758 = !DIDerivedType(tag: DW_TAG_member, scope: !756, file: !735, line: 48, baseType: !759, size: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !756, file: !735, line: 48, size: 64, elements: !760)
!760 = !{!761, !766}
!761 = !DIDerivedType(tag: DW_TAG_member, scope: !759, file: !735, line: 49, baseType: !762, size: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !759, file: !735, line: 49, size: 64, elements: !763)
!763 = !{!764, !765}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !762, file: !735, line: 50, baseType: !442, size: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !762, file: !735, line: 50, baseType: !442, size: 32, offset: 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !759, file: !735, line: 52, baseType: !535, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !756, file: !735, line: 54, baseType: !768, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !738, file: !735, line: 96, baseType: !771, size: 64, offset: 384)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !208, line: 610, size: 4224, elements: !773)
!773 = !{!774, !776, !777, !785, !792, !793, !948, !1766, !1767, !1768, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !2045, !2053, !2054, !2055, !2373, !2374, !2375, !2376}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !772, file: !208, line: 611, baseType: !775, size: 16)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !368, line: 19, baseType: !384)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !772, file: !208, line: 612, baseType: !384, size: 16, offset: 16)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !772, file: !208, line: 613, baseType: !778, size: 32, offset: 32)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !779, line: 23, baseType: !780)
!779 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !779, line: 21, size: 32, elements: !781)
!781 = !{!782}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !780, file: !779, line: 22, baseType: !783, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !368, line: 32, baseType: !784)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !619, line: 49, baseType: !7)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !772, file: !208, line: 614, baseType: !786, size: 32, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !779, line: 28, baseType: !787)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !779, line: 26, size: 32, elements: !788)
!788 = !{!789}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !787, file: !779, line: 27, baseType: !790, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !368, line: 33, baseType: !791)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !619, line: 50, baseType: !7)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !772, file: !208, line: 615, baseType: !7, size: 32, offset: 96)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !772, file: !208, line: 622, baseType: !794, size: 64, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !796)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !208, line: 1864, size: 1536, align: 512, elements: !797)
!797 = !{!798, !802, !817, !821, !827, !832, !838, !842, !846, !850, !854, !855, !861, !865, !889, !918, !928, !934, !939, !943, !944}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !796, file: !208, line: 1865, baseType: !799, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{!737, !771, !737, !7}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !796, file: !208, line: 1866, baseType: !803, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!806, !737, !771, !808}
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !810, line: 10, size: 128, elements: !811)
!810 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!811 = !{!812, !816}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !809, file: !810, line: 11, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{null, !363}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !809, file: !810, line: 12, baseType: !363, size: 64, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !796, file: !208, line: 1867, baseType: !818, size: 64, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!406, !771, !406}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !796, file: !208, line: 1868, baseType: !822, size: 64, offset: 192)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!825, !771, !406}
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !208, line: 581, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !796, file: !208, line: 1870, baseType: !828, size: 64, offset: 256)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!406, !737, !831, !406}
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !796, file: !208, line: 1872, baseType: !833, size: 64, offset: 320)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!406, !771, !737, !775, !836}
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !368, line: 30, baseType: !837)
!837 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !796, file: !208, line: 1873, baseType: !839, size: 64, offset: 384)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!406, !737, !771, !737}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !796, file: !208, line: 1874, baseType: !843, size: 64, offset: 448)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!406, !771, !737}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !796, file: !208, line: 1875, baseType: !847, size: 64, offset: 512)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!406, !771, !737, !806}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !796, file: !208, line: 1876, baseType: !851, size: 64, offset: 576)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!406, !771, !737, !775}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !796, file: !208, line: 1877, baseType: !843, size: 64, offset: 640)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !796, file: !208, line: 1878, baseType: !856, size: 64, offset: 704)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{!406, !771, !737, !775, !859}
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !368, line: 16, baseType: !860)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !368, line: 13, baseType: !442)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !796, file: !208, line: 1879, baseType: !862, size: 64, offset: 768)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{!406, !771, !737, !771, !737, !7}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !796, file: !208, line: 1881, baseType: !866, size: 64, offset: 832)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!406, !737, !869}
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !208, line: 219, size: 640, elements: !871)
!871 = !{!872, !873, !874, !875, !876, !879, !886, !887, !888}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !870, file: !208, line: 220, baseType: !7, size: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !870, file: !208, line: 221, baseType: !775, size: 16, offset: 32)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !870, file: !208, line: 222, baseType: !778, size: 32, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !870, file: !208, line: 223, baseType: !786, size: 32, offset: 96)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !870, file: !208, line: 224, baseType: !877, size: 64, offset: 128)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !368, line: 46, baseType: !878)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !619, line: 88, baseType: !567)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !870, file: !208, line: 225, baseType: !880, size: 128, offset: 192)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !881, line: 13, size: 128, elements: !882)
!881 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!882 = !{!883, !885}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !880, file: !881, line: 14, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !881, line: 8, baseType: !566)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !880, file: !881, line: 15, baseType: !317, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !870, file: !208, line: 226, baseType: !880, size: 128, offset: 320)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !870, file: !208, line: 227, baseType: !880, size: 128, offset: 448)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !870, file: !208, line: 234, baseType: !707, size: 64, offset: 576)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !796, file: !208, line: 1882, baseType: !890, size: 64, offset: 896)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!406, !893, !895, !442, !7}
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !729)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !897, line: 22, size: 1152, elements: !898)
!897 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!898 = !{!899, !900, !901, !902, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !896, file: !897, line: 23, baseType: !442, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !896, file: !897, line: 24, baseType: !775, size: 16, offset: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !896, file: !897, line: 25, baseType: !7, size: 32, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !896, file: !897, line: 26, baseType: !903, size: 32, offset: 96)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !368, line: 104, baseType: !442)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !896, file: !897, line: 27, baseType: !535, size: 64, offset: 128)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !896, file: !897, line: 28, baseType: !535, size: 64, offset: 192)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !896, file: !897, line: 37, baseType: !535, size: 64, offset: 256)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !896, file: !897, line: 38, baseType: !859, size: 32, offset: 320)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !896, file: !897, line: 39, baseType: !859, size: 32, offset: 352)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !896, file: !897, line: 40, baseType: !778, size: 32, offset: 384)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !896, file: !897, line: 41, baseType: !786, size: 32, offset: 416)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !896, file: !897, line: 42, baseType: !877, size: 64, offset: 448)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !896, file: !897, line: 43, baseType: !880, size: 128, offset: 512)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !896, file: !897, line: 44, baseType: !880, size: 128, offset: 640)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !896, file: !897, line: 45, baseType: !880, size: 128, offset: 768)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !896, file: !897, line: 46, baseType: !880, size: 128, offset: 896)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !896, file: !897, line: 47, baseType: !535, size: 64, offset: 1024)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !896, file: !897, line: 48, baseType: !535, size: 64, offset: 1088)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !796, file: !208, line: 1883, baseType: !919, size: 64, offset: 960)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{!922, !737, !831, !925}
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !368, line: 60, baseType: !923)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !619, line: 73, baseType: !924)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !619, line: 15, baseType: !317)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !368, line: 55, baseType: !926)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !619, line: 72, baseType: !927)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !619, line: 16, baseType: !362)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !796, file: !208, line: 1884, baseType: !929, size: 64, offset: 1024)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{!406, !771, !932, !535, !535}
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !208, line: 50, flags: DIFlagFwdDecl)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !796, file: !208, line: 1886, baseType: !935, size: 64, offset: 1088)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{!406, !771, !938, !406}
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !796, file: !208, line: 1887, baseType: !940, size: 64, offset: 1152)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{!406, !771, !737, !707, !7, !775}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !796, file: !208, line: 1890, baseType: !851, size: 64, offset: 1216)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !796, file: !208, line: 1891, baseType: !945, size: 64, offset: 1280)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!406, !771, !825, !406}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !772, file: !208, line: 623, baseType: !949, size: 64, offset: 192)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !208, line: 1416, size: 9472, elements: !951)
!951 = !{!952, !953, !954, !955, !956, !957, !1006, !1343, !1431, !1514, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1530, !1534, !1535, !1538, !1541, !1544, !1545, !1546, !1587, !1620, !1621, !1622, !1623, !1624, !1625, !1628, !1632, !1641, !1642, !1644, !1645, !1646, !1705, !1706, !1721, !1722, !1723, !1724, !1725, !1728, !1729, !1732, !1747, !1748, !1749, !1760, !1761, !1762, !1763, !1764, !1765}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !950, file: !208, line: 1417, baseType: !372, size: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !950, file: !208, line: 1418, baseType: !859, size: 32, offset: 128)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !950, file: !208, line: 1419, baseType: !419, size: 8, offset: 160)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !950, file: !208, line: 1420, baseType: !362, size: 64, offset: 192)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !950, file: !208, line: 1421, baseType: !877, size: 64, offset: 256)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !950, file: !208, line: 1422, baseType: !958, size: 64, offset: 320)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !208, line: 2228, size: 576, elements: !960)
!960 = !{!961, !962, !963, !970, !974, !978, !982, !983, !984, !994, !997, !998, !999, !1003, !1004, !1005}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !959, file: !208, line: 2229, baseType: !806, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !959, file: !208, line: 2230, baseType: !406, size: 32, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !959, file: !208, line: 2238, baseType: !964, size: 64, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{!406, !967}
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !969, line: 28, flags: DIFlagFwdDecl)
!969 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!970 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !959, file: !208, line: 2239, baseType: !971, size: 64, offset: 192)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !973)
!973 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !208, line: 70, flags: DIFlagFwdDecl)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !959, file: !208, line: 2240, baseType: !975, size: 64, offset: 256)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{!737, !958, !406, !806, !363}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !959, file: !208, line: 2242, baseType: !979, size: 64, offset: 320)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{null, !949}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !959, file: !208, line: 2243, baseType: !364, size: 64, offset: 384)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !959, file: !208, line: 2244, baseType: !958, size: 64, offset: 448)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !959, file: !208, line: 2245, baseType: !985, size: 64, offset: 512)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !368, line: 182, size: 64, elements: !986)
!986 = !{!987}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !985, file: !368, line: 183, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !368, line: 186, size: 128, elements: !990)
!990 = !{!991, !992}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !989, file: !368, line: 187, baseType: !988, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !989, file: !368, line: 187, baseType: !993, size: 64, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !959, file: !208, line: 2247, baseType: !995, offset: 576)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !996, line: 187, elements: !472)
!996 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!997 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !959, file: !208, line: 2248, baseType: !995, offset: 576)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !959, file: !208, line: 2249, baseType: !995, offset: 576)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !959, file: !208, line: 2250, baseType: !1000, offset: 576)
!1000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !995, elements: !1001)
!1001 = !{!1002}
!1002 = !DISubrange(count: 3)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !959, file: !208, line: 2252, baseType: !995, offset: 576)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !959, file: !208, line: 2253, baseType: !995, offset: 576)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !959, file: !208, line: 2254, baseType: !995, offset: 576)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !950, file: !208, line: 1423, baseType: !1007, size: 64, offset: 384)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1009)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !208, line: 1935, size: 1472, elements: !1010)
!1010 = !{!1011, !1015, !1019, !1020, !1024, !1030, !1034, !1035, !1036, !1040, !1044, !1045, !1046, !1047, !1053, !1058, !1059, !1065, !1066, !1067, !1068, !1327, !1342}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1009, file: !208, line: 1936, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!771, !949}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1009, file: !208, line: 1937, baseType: !1016, size: 64, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{null, !771}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1009, file: !208, line: 1938, baseType: !1016, size: 64, offset: 128)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1009, file: !208, line: 1940, baseType: !1021, size: 64, offset: 192)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{null, !771, !406}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1009, file: !208, line: 1941, baseType: !1025, size: 64, offset: 256)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!406, !771, !1028}
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !208, line: 289, flags: DIFlagFwdDecl)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1009, file: !208, line: 1942, baseType: !1031, size: 64, offset: 320)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!406, !771}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1009, file: !208, line: 1943, baseType: !1016, size: 64, offset: 384)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1009, file: !208, line: 1944, baseType: !979, size: 64, offset: 448)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1009, file: !208, line: 1945, baseType: !1037, size: 64, offset: 512)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!406, !949, !406}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1009, file: !208, line: 1946, baseType: !1041, size: 64, offset: 576)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!406, !949}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1009, file: !208, line: 1947, baseType: !1041, size: 64, offset: 640)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1009, file: !208, line: 1948, baseType: !1041, size: 64, offset: 704)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1009, file: !208, line: 1949, baseType: !1041, size: 64, offset: 768)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1009, file: !208, line: 1950, baseType: !1048, size: 64, offset: 832)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!406, !737, !1051}
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !208, line: 57, flags: DIFlagFwdDecl)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1009, file: !208, line: 1951, baseType: !1054, size: 64, offset: 896)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!406, !949, !1057, !831}
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1009, file: !208, line: 1952, baseType: !979, size: 64, offset: 960)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1009, file: !208, line: 1954, baseType: !1060, size: 64, offset: 1024)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!406, !1063, !737}
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !685, line: 539, flags: DIFlagFwdDecl)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1009, file: !208, line: 1955, baseType: !1060, size: 64, offset: 1088)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1009, file: !208, line: 1956, baseType: !1060, size: 64, offset: 1152)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1009, file: !208, line: 1957, baseType: !1060, size: 64, offset: 1216)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !1009, file: !208, line: 1963, baseType: !1069, size: 64, offset: 1280)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!406, !949, !1072, !367}
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !667, line: 68, size: 512, align: 128, elements: !1074)
!1074 = !{!1075, !1076, !1319, !1326}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1073, file: !667, line: 69, baseType: !362, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, scope: !1073, file: !667, line: 77, baseType: !1077, size: 320, offset: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1073, file: !667, line: 77, size: 320, elements: !1078)
!1078 = !{!1079, !1251, !1256, !1284, !1292, !1298, !1311, !1318}
!1079 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !667, line: 78, baseType: !1080, size: 320)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1077, file: !667, line: 78, size: 320, elements: !1081)
!1081 = !{!1082, !1083, !1249, !1250}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1080, file: !667, line: 84, baseType: !372, size: 128)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1080, file: !667, line: 86, baseType: !1084, size: 64, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !208, line: 451, size: 1216, align: 64, elements: !1086)
!1086 = !{!1087, !1088, !1102, !1103, !1104, !1105, !1119, !1120, !1121, !1122, !1242, !1243, !1246, !1247, !1248}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1085, file: !208, line: 452, baseType: !771, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1085, file: !208, line: 453, baseType: !1089, size: 128, offset: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1090, line: 292, size: 128, elements: !1091)
!1090 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1091 = !{!1092, !1100, !1101}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1089, file: !1090, line: 293, baseType: !1093)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !465, line: 83, baseType: !1094)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !465, line: 71, elements: !1095)
!1095 = !{!1096}
!1096 = !DIDerivedType(tag: DW_TAG_member, scope: !1094, file: !465, line: 72, baseType: !1097)
!1097 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1094, file: !465, line: 72, elements: !1098)
!1098 = !{!1099}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !1097, file: !465, line: 73, baseType: !466)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1089, file: !1090, line: 295, baseType: !367, size: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1089, file: !1090, line: 296, baseType: !363, size: 64, offset: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1085, file: !208, line: 454, baseType: !367, size: 32, offset: 192)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1085, file: !208, line: 455, baseType: !508, size: 32, offset: 224)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1085, file: !208, line: 460, baseType: !474, size: 128, offset: 256)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1085, file: !208, line: 461, baseType: !1106, size: 256, offset: 384)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1107, line: 35, size: 256, elements: !1108)
!1107 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1108 = !{!1109, !1116, !1117, !1118}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1106, file: !1107, line: 36, baseType: !1110, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1111, line: 13, baseType: !1112)
!1111 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !368, line: 175, baseType: !1113)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !368, line: 173, size: 64, elements: !1114)
!1114 = !{!1115}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1113, file: !368, line: 174, baseType: !565, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1106, file: !1107, line: 42, baseType: !1110, size: 64, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1106, file: !1107, line: 46, baseType: !464, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1106, file: !1107, line: 47, baseType: !372, size: 128, offset: 128)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1085, file: !208, line: 462, baseType: !362, size: 64, offset: 640)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !1085, file: !208, line: 463, baseType: !362, size: 64, offset: 704)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1085, file: !208, line: 464, baseType: !362, size: 64, offset: 768)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1085, file: !208, line: 465, baseType: !1123, size: 64, offset: 832)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1125)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !208, line: 367, size: 1408, elements: !1126)
!1126 = !{!1127, !1131, !1135, !1139, !1143, !1147, !1153, !1159, !1163, !1168, !1172, !1176, !1180, !1206, !1210, !1216, !1217, !1218, !1222, !1227, !1231, !1238}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1125, file: !208, line: 368, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!406, !1072, !1028}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1125, file: !208, line: 369, baseType: !1132, size: 64, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!406, !707, !1072}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1125, file: !208, line: 372, baseType: !1136, size: 64, offset: 128)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!406, !1084, !1028}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1125, file: !208, line: 375, baseType: !1140, size: 64, offset: 192)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!406, !1072}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1125, file: !208, line: 381, baseType: !1144, size: 64, offset: 256)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!406, !707, !1084, !371, !7}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1125, file: !208, line: 383, baseType: !1148, size: 64, offset: 320)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{null, !1151}
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !208, line: 290, flags: DIFlagFwdDecl)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1125, file: !208, line: 385, baseType: !1154, size: 64, offset: 384)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!406, !707, !1084, !877, !7, !7, !1157, !1158}
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1125, file: !208, line: 388, baseType: !1160, size: 64, offset: 448)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!406, !707, !1084, !877, !7, !7, !1072, !363}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1125, file: !208, line: 393, baseType: !1164, size: 64, offset: 512)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!1167, !1084, !1167}
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !368, line: 125, baseType: !535)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1125, file: !208, line: 394, baseType: !1169, size: 64, offset: 576)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{null, !1072, !7, !7}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1125, file: !208, line: 395, baseType: !1173, size: 64, offset: 640)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!406, !1072, !367}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1125, file: !208, line: 396, baseType: !1177, size: 64, offset: 704)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{null, !1072}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1125, file: !208, line: 397, baseType: !1181, size: 64, offset: 768)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!922, !1184, !1204}
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !208, line: 320, size: 384, elements: !1186)
!1186 = !{!1187, !1188, !1189, !1193, !1194, !1195, !1196, !1197}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1185, file: !208, line: 321, baseType: !707, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1185, file: !208, line: 326, baseType: !877, size: 64, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1185, file: !208, line: 327, baseType: !1190, size: 64, offset: 128)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{null, !1184, !317, !317}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1185, file: !208, line: 328, baseType: !363, size: 64, offset: 192)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1185, file: !208, line: 329, baseType: !406, size: 32, offset: 256)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1185, file: !208, line: 330, baseType: !425, size: 16, offset: 288)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1185, file: !208, line: 331, baseType: !425, size: 16, offset: 304)
!1197 = !DIDerivedType(tag: DW_TAG_member, scope: !1185, file: !208, line: 332, baseType: !1198, size: 64, offset: 320)
!1198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1185, file: !208, line: 332, size: 64, elements: !1199)
!1199 = !{!1200, !1201}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1198, file: !208, line: 333, baseType: !7, size: 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1198, file: !208, line: 334, baseType: !1202, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !208, line: 334, flags: DIFlagFwdDecl)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !208, line: 64, flags: DIFlagFwdDecl)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1125, file: !208, line: 402, baseType: !1207, size: 64, offset: 832)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!406, !1084, !1072, !1072, !183}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1125, file: !208, line: 404, baseType: !1211, size: 64, offset: 896)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!836, !1072, !1214}
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1215, line: 305, baseType: !7)
!1215 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1125, file: !208, line: 405, baseType: !1177, size: 64, offset: 960)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1125, file: !208, line: 406, baseType: !1140, size: 64, offset: 1024)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1125, file: !208, line: 407, baseType: !1219, size: 64, offset: 1088)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!406, !1072, !362, !362}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1125, file: !208, line: 409, baseType: !1223, size: 64, offset: 1152)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{null, !1072, !1226, !1226}
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1125, file: !208, line: 410, baseType: !1228, size: 64, offset: 1216)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!406, !1084, !1072}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1125, file: !208, line: 413, baseType: !1232, size: 64, offset: 1280)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!406, !1235, !707, !1237}
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !208, line: 61, flags: DIFlagFwdDecl)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1125, file: !208, line: 415, baseType: !1239, size: 64, offset: 1344)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{null, !707}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1085, file: !208, line: 466, baseType: !362, size: 64, offset: 896)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1085, file: !208, line: 467, baseType: !1244, size: 32, offset: 960)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1245, line: 8, baseType: !442)
!1245 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1085, file: !208, line: 468, baseType: !1093, offset: 992)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1085, file: !208, line: 469, baseType: !372, size: 128, offset: 1024)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1085, file: !208, line: 470, baseType: !363, size: 64, offset: 1152)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1080, file: !667, line: 87, baseType: !362, size: 64, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1080, file: !667, line: 94, baseType: !362, size: 64, offset: 256)
!1251 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !667, line: 96, baseType: !1252, size: 64)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1077, file: !667, line: 96, size: 64, elements: !1253)
!1253 = !{!1254}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1252, file: !667, line: 101, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !368, line: 143, baseType: !535)
!1256 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !667, line: 103, baseType: !1257, size: 320)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1077, file: !667, line: 103, size: 320, elements: !1258)
!1258 = !{!1259, !1269, !1272, !1273}
!1259 = !DIDerivedType(tag: DW_TAG_member, scope: !1257, file: !667, line: 104, baseType: !1260, size: 128)
!1260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1257, file: !667, line: 104, size: 128, elements: !1261)
!1261 = !{!1262, !1263}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1260, file: !667, line: 105, baseType: !372, size: 128)
!1263 = !DIDerivedType(tag: DW_TAG_member, scope: !1260, file: !667, line: 106, baseType: !1264, size: 128)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1260, file: !667, line: 106, size: 128, elements: !1265)
!1265 = !{!1266, !1267, !1268}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1264, file: !667, line: 107, baseType: !1072, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1264, file: !667, line: 109, baseType: !406, size: 32, offset: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1264, file: !667, line: 110, baseType: !406, size: 32, offset: 96)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1257, file: !667, line: 117, baseType: !1270, size: 64, offset: 128)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !667, line: 117, flags: DIFlagFwdDecl)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1257, file: !667, line: 119, baseType: !363, size: 64, offset: 192)
!1273 = !DIDerivedType(tag: DW_TAG_member, scope: !1257, file: !667, line: 120, baseType: !1274, size: 64, offset: 256)
!1274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1257, file: !667, line: 120, size: 64, elements: !1275)
!1275 = !{!1276, !1277, !1278}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1274, file: !667, line: 121, baseType: !363, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1274, file: !667, line: 122, baseType: !362, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, scope: !1274, file: !667, line: 123, baseType: !1279, size: 32)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1274, file: !667, line: 123, size: 32, elements: !1280)
!1280 = !{!1281, !1282, !1283}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1279, file: !667, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1279, file: !667, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1279, file: !667, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1284 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !667, line: 130, baseType: !1285, size: 192)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1077, file: !667, line: 130, size: 192, elements: !1286)
!1286 = !{!1287, !1288, !1289, !1290, !1291}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1285, file: !667, line: 131, baseType: !362, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1285, file: !667, line: 134, baseType: !419, size: 8, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1285, file: !667, line: 135, baseType: !419, size: 8, offset: 72)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1285, file: !667, line: 136, baseType: !508, size: 32, offset: 96)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1285, file: !667, line: 137, baseType: !7, size: 32, offset: 128)
!1292 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !667, line: 139, baseType: !1293, size: 256)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1077, file: !667, line: 139, size: 256, elements: !1294)
!1294 = !{!1295, !1296, !1297}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1293, file: !667, line: 140, baseType: !362, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1293, file: !667, line: 141, baseType: !508, size: 32, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1293, file: !667, line: 143, baseType: !372, size: 128, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !667, line: 145, baseType: !1299, size: 256)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1077, file: !667, line: 145, size: 256, elements: !1300)
!1300 = !{!1301, !1302, !1304, !1305, !1310}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1299, file: !667, line: 146, baseType: !362, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1299, file: !667, line: 147, baseType: !1303, size: 64, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !685, line: 509, baseType: !1072)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1299, file: !667, line: 148, baseType: !362, size: 64, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, scope: !1299, file: !667, line: 149, baseType: !1306, size: 64, offset: 192)
!1306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1299, file: !667, line: 149, size: 64, elements: !1307)
!1307 = !{!1308, !1309}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1306, file: !667, line: 150, baseType: !665, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1306, file: !667, line: 151, baseType: !508, size: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1299, file: !667, line: 156, baseType: !1093, offset: 256)
!1311 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !667, line: 159, baseType: !1312, size: 128)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1077, file: !667, line: 159, size: 128, elements: !1313)
!1313 = !{!1314, !1317}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1312, file: !667, line: 161, baseType: !1315, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !667, line: 161, flags: DIFlagFwdDecl)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1312, file: !667, line: 162, baseType: !363, size: 64, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1077, file: !667, line: 176, baseType: !720, size: 128, align: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, scope: !1073, file: !667, line: 179, baseType: !1320, size: 32, offset: 384)
!1320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1073, file: !667, line: 179, size: 32, elements: !1321)
!1321 = !{!1322, !1323, !1324, !1325}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1320, file: !667, line: 184, baseType: !508, size: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1320, file: !667, line: 192, baseType: !7, size: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1320, file: !667, line: 194, baseType: !7, size: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1320, file: !667, line: 195, baseType: !406, size: 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1073, file: !667, line: 199, baseType: !508, size: 32, offset: 416)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1009, file: !208, line: 1964, baseType: !1328, size: 64, offset: 1344)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!317, !949, !1331}
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1333, line: 12, size: 256, elements: !1334)
!1333 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!1334 = !{!1335, !1336, !1337, !1338, !1339}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1332, file: !1333, line: 13, baseType: !367, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1332, file: !1333, line: 16, baseType: !406, size: 32, offset: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1332, file: !1333, line: 23, baseType: !362, size: 64, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1332, file: !1333, line: 30, baseType: !362, size: 64, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1332, file: !1333, line: 33, baseType: !1340, size: 64, offset: 192)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !667, line: 27, flags: DIFlagFwdDecl)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1009, file: !208, line: 1966, baseType: !1328, size: 64, offset: 1408)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !950, file: !208, line: 1424, baseType: !1344, size: 64, offset: 448)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1346)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !202, line: 322, size: 704, elements: !1347)
!1347 = !{!1348, !1400, !1404, !1408, !1409, !1410, !1411, !1412, !1417, !1422, !1426}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1346, file: !202, line: 323, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!406, !1352}
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !202, line: 294, size: 1600, elements: !1354)
!1354 = !{!1355, !1356, !1357, !1358, !1359, !1366, !1367, !1368, !1369, !1385, !1386, !1387}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1353, file: !202, line: 295, baseType: !989, size: 128)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1353, file: !202, line: 296, baseType: !372, size: 128, offset: 128)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1353, file: !202, line: 297, baseType: !372, size: 128, offset: 256)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1353, file: !202, line: 298, baseType: !372, size: 128, offset: 384)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1353, file: !202, line: 299, baseType: !1360, size: 192, offset: 512)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1361, line: 53, size: 192, elements: !1362)
!1361 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1362 = !{!1363, !1364, !1365}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1360, file: !1361, line: 54, baseType: !1110, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1360, file: !1361, line: 55, baseType: !1093, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1360, file: !1361, line: 59, baseType: !372, size: 128, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1353, file: !202, line: 300, baseType: !1093, offset: 704)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1353, file: !202, line: 301, baseType: !508, size: 32, offset: 704)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1353, file: !202, line: 302, baseType: !949, size: 64, offset: 768)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1353, file: !202, line: 303, baseType: !1370, size: 64, offset: 832)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !202, line: 68, size: 64, elements: !1371)
!1371 = !{!1372, !1384}
!1372 = !DIDerivedType(tag: DW_TAG_member, scope: !1370, file: !202, line: 69, baseType: !1373, size: 32)
!1373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1370, file: !202, line: 69, size: 32, elements: !1374)
!1374 = !{!1375, !1376, !1377}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1373, file: !202, line: 70, baseType: !778, size: 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1373, file: !202, line: 71, baseType: !786, size: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1373, file: !202, line: 72, baseType: !1378, size: 32)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1379, line: 24, baseType: !1380)
!1379 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1379, line: 22, size: 32, elements: !1381)
!1381 = !{!1382}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1380, file: !1379, line: 23, baseType: !1383, size: 32)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1379, line: 20, baseType: !784)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1370, file: !202, line: 74, baseType: !201, size: 32, offset: 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1353, file: !202, line: 304, baseType: !877, size: 64, offset: 896)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1353, file: !202, line: 305, baseType: !362, size: 64, offset: 960)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1353, file: !202, line: 306, baseType: !1388, size: 576, offset: 1024)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !202, line: 205, size: 576, elements: !1389)
!1389 = !{!1390, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1388, file: !202, line: 206, baseType: !1391, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !202, line: 66, baseType: !567)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1388, file: !202, line: 207, baseType: !1391, size: 64, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1388, file: !202, line: 208, baseType: !1391, size: 64, offset: 128)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1388, file: !202, line: 209, baseType: !1391, size: 64, offset: 192)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1388, file: !202, line: 210, baseType: !1391, size: 64, offset: 256)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1388, file: !202, line: 211, baseType: !1391, size: 64, offset: 320)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1388, file: !202, line: 212, baseType: !1391, size: 64, offset: 384)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1388, file: !202, line: 213, baseType: !884, size: 64, offset: 448)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1388, file: !202, line: 214, baseType: !884, size: 64, offset: 512)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1346, file: !202, line: 324, baseType: !1401, size: 64, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!1352, !949, !406}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1346, file: !202, line: 325, baseType: !1405, size: 64, offset: 128)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{null, !1352}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1346, file: !202, line: 326, baseType: !1349, size: 64, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1346, file: !202, line: 327, baseType: !1349, size: 64, offset: 256)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1346, file: !202, line: 328, baseType: !1349, size: 64, offset: 320)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1346, file: !202, line: 329, baseType: !1037, size: 64, offset: 384)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1346, file: !202, line: 332, baseType: !1413, size: 64, offset: 448)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!1416, !771}
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1346, file: !202, line: 333, baseType: !1418, size: 64, offset: 512)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!406, !771, !1421}
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1346, file: !202, line: 335, baseType: !1423, size: 64, offset: 576)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!406, !771, !1416}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1346, file: !202, line: 337, baseType: !1427, size: 64, offset: 640)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!406, !949, !1430}
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !950, file: !208, line: 1425, baseType: !1432, size: 64, offset: 512)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1434)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !202, line: 428, size: 704, elements: !1435)
!1435 = !{!1436, !1440, !1441, !1445, !1446, !1447, !1462, !1485, !1489, !1490, !1513}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1434, file: !202, line: 429, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!406, !949, !406, !406, !893}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1434, file: !202, line: 430, baseType: !1037, size: 64, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1434, file: !202, line: 431, baseType: !1442, size: 64, offset: 128)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!406, !949, !7}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1434, file: !202, line: 432, baseType: !1442, size: 64, offset: 192)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1434, file: !202, line: 433, baseType: !1037, size: 64, offset: 256)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1434, file: !202, line: 434, baseType: !1448, size: 64, offset: 320)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!406, !949, !406, !1451}
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !202, line: 415, size: 256, elements: !1453)
!1453 = !{!1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1452, file: !202, line: 416, baseType: !406, size: 32)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1452, file: !202, line: 417, baseType: !7, size: 32, offset: 32)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1452, file: !202, line: 418, baseType: !7, size: 32, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1452, file: !202, line: 420, baseType: !7, size: 32, offset: 96)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1452, file: !202, line: 421, baseType: !7, size: 32, offset: 128)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1452, file: !202, line: 422, baseType: !7, size: 32, offset: 160)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1452, file: !202, line: 423, baseType: !7, size: 32, offset: 192)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1452, file: !202, line: 424, baseType: !7, size: 32, offset: 224)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1434, file: !202, line: 435, baseType: !1463, size: 64, offset: 384)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!406, !949, !1370, !1466}
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !202, line: 343, size: 960, elements: !1468)
!1468 = !{!1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1467, file: !202, line: 344, baseType: !406, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1467, file: !202, line: 345, baseType: !535, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1467, file: !202, line: 346, baseType: !535, size: 64, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1467, file: !202, line: 347, baseType: !535, size: 64, offset: 192)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1467, file: !202, line: 348, baseType: !535, size: 64, offset: 256)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1467, file: !202, line: 349, baseType: !535, size: 64, offset: 320)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1467, file: !202, line: 350, baseType: !535, size: 64, offset: 384)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1467, file: !202, line: 351, baseType: !565, size: 64, offset: 448)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1467, file: !202, line: 353, baseType: !565, size: 64, offset: 512)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1467, file: !202, line: 354, baseType: !406, size: 32, offset: 576)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1467, file: !202, line: 355, baseType: !406, size: 32, offset: 608)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1467, file: !202, line: 356, baseType: !535, size: 64, offset: 640)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1467, file: !202, line: 357, baseType: !535, size: 64, offset: 704)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1467, file: !202, line: 358, baseType: !535, size: 64, offset: 768)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1467, file: !202, line: 359, baseType: !565, size: 64, offset: 832)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1467, file: !202, line: 360, baseType: !406, size: 32, offset: 896)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1434, file: !202, line: 436, baseType: !1486, size: 64, offset: 448)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!406, !949, !1430, !1466}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1434, file: !202, line: 438, baseType: !1463, size: 64, offset: 512)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1434, file: !202, line: 439, baseType: !1491, size: 64, offset: 576)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!406, !949, !1494}
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !202, line: 409, size: 1408, elements: !1496)
!1496 = !{!1497, !1498}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1495, file: !202, line: 410, baseType: !7, size: 32)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1495, file: !202, line: 411, baseType: !1499, size: 1344, offset: 64)
!1499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1500, size: 1344, elements: !1001)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !202, line: 395, size: 448, elements: !1501)
!1501 = !{!1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1512}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1500, file: !202, line: 396, baseType: !7, size: 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1500, file: !202, line: 397, baseType: !7, size: 32, offset: 32)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1500, file: !202, line: 399, baseType: !7, size: 32, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1500, file: !202, line: 400, baseType: !7, size: 32, offset: 96)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1500, file: !202, line: 401, baseType: !7, size: 32, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1500, file: !202, line: 402, baseType: !7, size: 32, offset: 160)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1500, file: !202, line: 403, baseType: !7, size: 32, offset: 192)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1500, file: !202, line: 404, baseType: !537, size: 64, offset: 256)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1500, file: !202, line: 405, baseType: !1511, size: 64, offset: 320)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !368, line: 126, baseType: !535)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1500, file: !202, line: 406, baseType: !1511, size: 64, offset: 384)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1434, file: !202, line: 440, baseType: !1442, size: 64, offset: 640)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !950, file: !208, line: 1426, baseType: !1515, size: 64, offset: 576)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1517)
!1517 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !208, line: 49, flags: DIFlagFwdDecl)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !950, file: !208, line: 1427, baseType: !362, size: 64, offset: 640)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !950, file: !208, line: 1428, baseType: !362, size: 64, offset: 704)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !950, file: !208, line: 1429, baseType: !362, size: 64, offset: 768)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !950, file: !208, line: 1430, baseType: !737, size: 64, offset: 832)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !950, file: !208, line: 1431, baseType: !1106, size: 256, offset: 896)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !950, file: !208, line: 1432, baseType: !406, size: 32, offset: 1152)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !950, file: !208, line: 1433, baseType: !508, size: 32, offset: 1184)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !950, file: !208, line: 1437, baseType: !1526, size: 64, offset: 1216)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1529)
!1529 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !208, line: 1437, flags: DIFlagFwdDecl)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !950, file: !208, line: 1449, baseType: !1531, size: 64, offset: 1280)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !748, line: 34, size: 64, elements: !1532)
!1532 = !{!1533}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1531, file: !748, line: 35, baseType: !751, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !950, file: !208, line: 1450, baseType: !372, size: 128, offset: 1344)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !950, file: !208, line: 1451, baseType: !1536, size: 64, offset: 1472)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !208, line: 699, flags: DIFlagFwdDecl)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !950, file: !208, line: 1452, baseType: !1539, size: 64, offset: 1536)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !491, line: 40, flags: DIFlagFwdDecl)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !950, file: !208, line: 1453, baseType: !1542, size: 64, offset: 1600)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !208, line: 1453, flags: DIFlagFwdDecl)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !950, file: !208, line: 1454, baseType: !989, size: 128, offset: 1664)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !950, file: !208, line: 1455, baseType: !7, size: 32, offset: 1792)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !950, file: !208, line: 1456, baseType: !1547, size: 2432, offset: 1856)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !202, line: 518, size: 2432, elements: !1548)
!1548 = !{!1549, !1550, !1551, !1553, !1585}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1547, file: !202, line: 519, baseType: !7, size: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1547, file: !202, line: 520, baseType: !1106, size: 256, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1547, file: !202, line: 521, baseType: !1552, size: 192, offset: 320)
!1552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !771, size: 192, elements: !1001)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1547, file: !202, line: 522, baseType: !1554, size: 1728, offset: 512)
!1554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1555, size: 1728, elements: !1001)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !202, line: 222, size: 576, elements: !1556)
!1556 = !{!1557, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1555, file: !202, line: 223, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !202, line: 443, size: 256, elements: !1560)
!1560 = !{!1561, !1562, !1575, !1576}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1559, file: !202, line: 444, baseType: !406, size: 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1559, file: !202, line: 445, baseType: !1563, size: 64, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1565)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !202, line: 310, size: 512, elements: !1566)
!1566 = !{!1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1565, file: !202, line: 311, baseType: !1037, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1565, file: !202, line: 312, baseType: !1037, size: 64, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1565, file: !202, line: 313, baseType: !1037, size: 64, offset: 128)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1565, file: !202, line: 314, baseType: !1037, size: 64, offset: 192)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1565, file: !202, line: 315, baseType: !1349, size: 64, offset: 256)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1565, file: !202, line: 316, baseType: !1349, size: 64, offset: 320)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1565, file: !202, line: 317, baseType: !1349, size: 64, offset: 384)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1565, file: !202, line: 318, baseType: !1427, size: 64, offset: 448)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1559, file: !202, line: 446, baseType: !364, size: 64, offset: 128)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1559, file: !202, line: 447, baseType: !1558, size: 64, offset: 192)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1555, file: !202, line: 224, baseType: !406, size: 32, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1555, file: !202, line: 226, baseType: !372, size: 128, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1555, file: !202, line: 227, baseType: !362, size: 64, offset: 256)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1555, file: !202, line: 228, baseType: !7, size: 32, offset: 320)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1555, file: !202, line: 229, baseType: !7, size: 32, offset: 352)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1555, file: !202, line: 230, baseType: !1391, size: 64, offset: 384)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1555, file: !202, line: 231, baseType: !1391, size: 64, offset: 448)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1555, file: !202, line: 232, baseType: !363, size: 64, offset: 512)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1547, file: !202, line: 523, baseType: !1586, size: 192, offset: 2240)
!1586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1563, size: 192, elements: !1001)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !950, file: !208, line: 1458, baseType: !1588, size: 2112, offset: 4288)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !208, line: 1410, size: 2112, elements: !1589)
!1589 = !{!1590, !1591, !1598}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1588, file: !208, line: 1411, baseType: !406, size: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !1588, file: !208, line: 1412, baseType: !1592, size: 128, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1593, line: 40, baseType: !1594)
!1593 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1593, line: 36, size: 128, elements: !1595)
!1595 = !{!1596, !1597}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1594, file: !1593, line: 37, baseType: !1093)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1594, file: !1593, line: 38, baseType: !372, size: 128)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1588, file: !208, line: 1413, baseType: !1599, size: 1920, offset: 192)
!1599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1600, size: 1920, elements: !1001)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1601, line: 12, size: 640, elements: !1602)
!1601 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1602 = !{!1603, !1611, !1613, !1618, !1619}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1600, file: !1601, line: 13, baseType: !1604, size: 320)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1605, line: 17, size: 320, elements: !1606)
!1605 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!1606 = !{!1607, !1608, !1609, !1610}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1604, file: !1605, line: 18, baseType: !406, size: 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1604, file: !1605, line: 19, baseType: !406, size: 32, offset: 32)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1604, file: !1605, line: 20, baseType: !1592, size: 128, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1604, file: !1605, line: 22, baseType: !720, size: 128, align: 64, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1600, file: !1601, line: 14, baseType: !1612, size: 64, offset: 320)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1600, file: !1601, line: 15, baseType: !1614, size: 64, offset: 384)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1615, line: 16, size: 64, elements: !1616)
!1615 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!1616 = !{!1617}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1614, file: !1615, line: 17, baseType: !489, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1600, file: !1601, line: 16, baseType: !1592, size: 128, offset: 448)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1600, file: !1601, line: 17, baseType: !508, size: 32, offset: 576)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !950, file: !208, line: 1465, baseType: !363, size: 64, offset: 6400)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !950, file: !208, line: 1468, baseType: !442, size: 32, offset: 6464)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !950, file: !208, line: 1470, baseType: !884, size: 64, offset: 6528)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !950, file: !208, line: 1471, baseType: !884, size: 64, offset: 6592)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !950, file: !208, line: 1473, baseType: !443, size: 32, offset: 6656)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !950, file: !208, line: 1474, baseType: !1626, size: 64, offset: 6720)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !208, line: 603, flags: DIFlagFwdDecl)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !950, file: !208, line: 1477, baseType: !1629, size: 256, offset: 6784)
!1629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 256, elements: !1630)
!1630 = !{!1631}
!1631 = !DISubrange(count: 32)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !950, file: !208, line: 1478, baseType: !1633, size: 128, offset: 7040)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1634, line: 18, baseType: !1635)
!1634 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1634, line: 16, size: 128, elements: !1636)
!1636 = !{!1637}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1635, file: !1634, line: 17, baseType: !1638, size: 128)
!1638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 128, elements: !1639)
!1639 = !{!1640}
!1640 = !DISubrange(count: 16)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !950, file: !208, line: 1480, baseType: !7, size: 32, offset: 7168)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !950, file: !208, line: 1481, baseType: !1643, size: 32, offset: 7200)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !368, line: 150, baseType: !7)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !950, file: !208, line: 1487, baseType: !1360, size: 192, offset: 7232)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !950, file: !208, line: 1493, baseType: !806, size: 64, offset: 7424)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !950, file: !208, line: 1495, baseType: !1647, size: 64, offset: 7488)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1649)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !735, line: 135, size: 1024, align: 512, elements: !1650)
!1650 = !{!1651, !1655, !1656, !1663, !1669, !1673, !1677, !1681, !1682, !1686, !1690, !1695, !1699}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1649, file: !735, line: 136, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!406, !737, !7}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1649, file: !735, line: 137, baseType: !1652, size: 64, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1649, file: !735, line: 138, baseType: !1657, size: 64, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!406, !1660, !1662}
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !738)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1649, file: !735, line: 139, baseType: !1664, size: 64, offset: 192)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!406, !1660, !7, !806, !1667}
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !756)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1649, file: !735, line: 141, baseType: !1670, size: 64, offset: 256)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!406, !1660}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1649, file: !735, line: 142, baseType: !1674, size: 64, offset: 320)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!406, !737}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1649, file: !735, line: 143, baseType: !1678, size: 64, offset: 384)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{null, !737}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1649, file: !735, line: 144, baseType: !1678, size: 64, offset: 448)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1649, file: !735, line: 145, baseType: !1683, size: 64, offset: 512)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{null, !737, !771}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1649, file: !735, line: 146, baseType: !1687, size: 64, offset: 576)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!831, !737, !831, !406}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1649, file: !735, line: 147, baseType: !1691, size: 64, offset: 640)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!733, !1694}
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1649, file: !735, line: 148, baseType: !1696, size: 64, offset: 704)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!406, !893, !836}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1649, file: !735, line: 149, baseType: !1700, size: 64, offset: 768)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!737, !737, !1703}
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !772)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !950, file: !208, line: 1500, baseType: !406, size: 32, offset: 7552)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !950, file: !208, line: 1502, baseType: !1707, size: 448, offset: 7616)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1333, line: 60, size: 448, elements: !1708)
!1708 = !{!1709, !1714, !1715, !1716, !1717, !1718, !1719}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1707, file: !1333, line: 61, baseType: !1710, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!362, !1713, !1331}
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1707, file: !1333, line: 63, baseType: !1710, size: 64, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1707, file: !1333, line: 66, baseType: !317, size: 64, offset: 128)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1707, file: !1333, line: 67, baseType: !406, size: 32, offset: 192)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1707, file: !1333, line: 68, baseType: !7, size: 32, offset: 224)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1707, file: !1333, line: 71, baseType: !372, size: 128, offset: 256)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1707, file: !1333, line: 77, baseType: !1720, size: 64, offset: 384)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !950, file: !208, line: 1505, baseType: !1110, size: 64, offset: 8064)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !950, file: !208, line: 1508, baseType: !1110, size: 64, offset: 8128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !950, file: !208, line: 1511, baseType: !406, size: 32, offset: 8192)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !950, file: !208, line: 1514, baseType: !1244, size: 32, offset: 8224)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !950, file: !208, line: 1517, baseType: !1726, size: 64, offset: 8256)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !316, line: 18, flags: DIFlagFwdDecl)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !950, file: !208, line: 1518, baseType: !985, size: 64, offset: 8320)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !950, file: !208, line: 1525, baseType: !1730, size: 64, offset: 8384)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !779, line: 18, flags: DIFlagFwdDecl)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !950, file: !208, line: 1532, baseType: !1733, size: 64, offset: 8448)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1734, line: 52, size: 64, elements: !1735)
!1734 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!1735 = !{!1736}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1733, file: !1734, line: 53, baseType: !1737, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1734, line: 40, size: 256, elements: !1739)
!1739 = !{!1740, !1741, !1746}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1738, file: !1734, line: 42, baseType: !1093)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1738, file: !1734, line: 44, baseType: !1742, size: 192)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1734, line: 28, size: 192, elements: !1743)
!1743 = !{!1744, !1745}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1742, file: !1734, line: 29, baseType: !372, size: 128)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1742, file: !1734, line: 31, baseType: !317, size: 64, offset: 128)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1738, file: !1734, line: 49, baseType: !317, size: 64, offset: 192)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !950, file: !208, line: 1533, baseType: !1733, size: 64, offset: 8512)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !950, file: !208, line: 1534, baseType: !720, size: 128, align: 64, offset: 8576)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !950, file: !208, line: 1535, baseType: !1750, size: 256, offset: 8704)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !316, line: 102, size: 256, elements: !1751)
!1751 = !{!1752, !1753, !1754}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1750, file: !316, line: 103, baseType: !1110, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1750, file: !316, line: 104, baseType: !372, size: 128, offset: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1750, file: !316, line: 105, baseType: !1755, size: 64, offset: 192)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !316, line: 21, baseType: !1756)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{null, !1759}
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !950, file: !208, line: 1537, baseType: !1360, size: 192, offset: 8960)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !950, file: !208, line: 1542, baseType: !406, size: 32, offset: 9152)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !950, file: !208, line: 1545, baseType: !1093, offset: 9184)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !950, file: !208, line: 1546, baseType: !372, size: 128, offset: 9216)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !950, file: !208, line: 1548, baseType: !1093, offset: 9344)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !950, file: !208, line: 1549, baseType: !372, size: 128, offset: 9344)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !772, file: !208, line: 624, baseType: !1084, size: 64, offset: 256)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !772, file: !208, line: 631, baseType: !362, size: 64, offset: 320)
!1768 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !208, line: 639, baseType: !1769, size: 32, offset: 384)
!1769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !772, file: !208, line: 639, size: 32, elements: !1770)
!1770 = !{!1771, !1773}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !1769, file: !208, line: 640, baseType: !1772, size: 32)
!1772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !1769, file: !208, line: 641, baseType: !7, size: 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !772, file: !208, line: 643, baseType: !859, size: 32, offset: 416)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !772, file: !208, line: 644, baseType: !877, size: 64, offset: 448)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !772, file: !208, line: 645, baseType: !880, size: 128, offset: 512)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !772, file: !208, line: 646, baseType: !880, size: 128, offset: 640)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !772, file: !208, line: 647, baseType: !880, size: 128, offset: 768)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !772, file: !208, line: 648, baseType: !1093, offset: 896)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !772, file: !208, line: 649, baseType: !384, size: 16, offset: 896)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !772, file: !208, line: 650, baseType: !427, size: 8, offset: 912)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !772, file: !208, line: 651, baseType: !427, size: 8, offset: 920)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !772, file: !208, line: 652, baseType: !1511, size: 64, offset: 960)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !772, file: !208, line: 659, baseType: !362, size: 64, offset: 1024)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !772, file: !208, line: 660, baseType: !1106, size: 256, offset: 1088)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !772, file: !208, line: 662, baseType: !362, size: 64, offset: 1344)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !772, file: !208, line: 663, baseType: !362, size: 64, offset: 1408)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !772, file: !208, line: 665, baseType: !989, size: 128, offset: 1472)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !772, file: !208, line: 666, baseType: !372, size: 128, offset: 1600)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !772, file: !208, line: 675, baseType: !372, size: 128, offset: 1728)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !772, file: !208, line: 676, baseType: !372, size: 128, offset: 1856)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !772, file: !208, line: 677, baseType: !372, size: 128, offset: 1984)
!1793 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !208, line: 678, baseType: !1794, size: 128, offset: 2112)
!1794 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !772, file: !208, line: 678, size: 128, elements: !1795)
!1795 = !{!1796, !1797}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !1794, file: !208, line: 679, baseType: !985, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !1794, file: !208, line: 680, baseType: !720, size: 128, align: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !772, file: !208, line: 682, baseType: !1112, size: 64, offset: 2240)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !772, file: !208, line: 683, baseType: !1112, size: 64, offset: 2304)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !772, file: !208, line: 684, baseType: !508, size: 32, offset: 2368)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !772, file: !208, line: 685, baseType: !508, size: 32, offset: 2400)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !772, file: !208, line: 686, baseType: !508, size: 32, offset: 2432)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !772, file: !208, line: 688, baseType: !508, size: 32, offset: 2464)
!1804 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !208, line: 690, baseType: !1805, size: 64, offset: 2496)
!1805 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !772, file: !208, line: 690, size: 64, elements: !1806)
!1806 = !{!1807, !2044}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !1805, file: !208, line: 691, baseType: !1808, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1810)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !208, line: 1822, size: 2048, elements: !1811)
!1811 = !{!1812, !1813, !1817, !1822, !1826, !1827, !1828, !1832, !1845, !1846, !1863, !1867, !1868, !1872, !1873, !1877, !1882, !1883, !1887, !1891, !1999, !2003, !2007, !2011, !2012, !2018, !2022, !2027, !2031, !2035, !2039, !2043}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1810, file: !208, line: 1823, baseType: !364, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1810, file: !208, line: 1824, baseType: !1814, size: 64, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!877, !707, !877, !406}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1810, file: !208, line: 1825, baseType: !1818, size: 64, offset: 128)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!922, !707, !831, !925, !1821}
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1810, file: !208, line: 1826, baseType: !1823, size: 64, offset: 192)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!922, !707, !806, !925, !1821}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1810, file: !208, line: 1827, baseType: !1181, size: 64, offset: 256)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1810, file: !208, line: 1828, baseType: !1181, size: 64, offset: 320)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1810, file: !208, line: 1829, baseType: !1829, size: 64, offset: 384)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!406, !1184, !836}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1810, file: !208, line: 1830, baseType: !1833, size: 64, offset: 448)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!406, !707, !1836}
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !208, line: 1776, size: 128, elements: !1838)
!1838 = !{!1839, !1844}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1837, file: !208, line: 1777, baseType: !1840, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !208, line: 1773, baseType: !1841)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!406, !1836, !806, !406, !877, !535, !7}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1837, file: !208, line: 1778, baseType: !877, size: 64, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1810, file: !208, line: 1831, baseType: !1833, size: 64, offset: 512)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1810, file: !208, line: 1832, baseType: !1847, size: 64, offset: 576)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!1850, !707, !1852}
!1850 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1851, line: 52, baseType: !7)
!1851 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1854, line: 43, size: 128, elements: !1855)
!1854 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!1855 = !{!1856, !1862}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1853, file: !1854, line: 44, baseType: !1857, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1854, line: 37, baseType: !1858)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{null, !707, !1861, !1852}
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1853, file: !1854, line: 45, baseType: !1850, size: 32, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1810, file: !208, line: 1833, baseType: !1864, size: 64, offset: 640)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!317, !707, !7, !362}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1810, file: !208, line: 1834, baseType: !1864, size: 64, offset: 704)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1810, file: !208, line: 1835, baseType: !1869, size: 64, offset: 768)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!406, !707, !673}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1810, file: !208, line: 1836, baseType: !362, size: 64, offset: 832)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1810, file: !208, line: 1837, baseType: !1874, size: 64, offset: 896)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!406, !771, !707}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1810, file: !208, line: 1838, baseType: !1878, size: 64, offset: 960)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!406, !707, !1881}
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !208, line: 1007, baseType: !363)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1810, file: !208, line: 1839, baseType: !1874, size: 64, offset: 1024)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1810, file: !208, line: 1840, baseType: !1884, size: 64, offset: 1088)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!406, !707, !877, !877, !406}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1810, file: !208, line: 1841, baseType: !1888, size: 64, offset: 1152)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!406, !406, !707, !406}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1810, file: !208, line: 1842, baseType: !1892, size: 64, offset: 1216)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!406, !707, !406, !1895}
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !208, line: 1062, size: 1664, elements: !1897)
!1897 = !{!1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1929, !1930, !1931, !1944, !1975}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1896, file: !208, line: 1063, baseType: !1895, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1896, file: !208, line: 1064, baseType: !372, size: 128, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1896, file: !208, line: 1065, baseType: !989, size: 128, offset: 192)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1896, file: !208, line: 1066, baseType: !372, size: 128, offset: 320)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1896, file: !208, line: 1069, baseType: !372, size: 128, offset: 448)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1896, file: !208, line: 1072, baseType: !1881, size: 64, offset: 576)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1896, file: !208, line: 1073, baseType: !7, size: 32, offset: 640)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1896, file: !208, line: 1074, baseType: !419, size: 8, offset: 672)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1896, file: !208, line: 1075, baseType: !7, size: 32, offset: 704)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1896, file: !208, line: 1076, baseType: !406, size: 32, offset: 736)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1896, file: !208, line: 1077, baseType: !1592, size: 128, offset: 768)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1896, file: !208, line: 1078, baseType: !707, size: 64, offset: 896)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1896, file: !208, line: 1079, baseType: !877, size: 64, offset: 960)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1896, file: !208, line: 1080, baseType: !877, size: 64, offset: 1024)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1896, file: !208, line: 1082, baseType: !1913, size: 64, offset: 1088)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !208, line: 1314, size: 320, elements: !1915)
!1915 = !{!1916, !1924, !1925, !1926, !1927, !1928}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1914, file: !208, line: 1315, baseType: !1917)
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1918, line: 20, baseType: !1919)
!1918 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1918, line: 11, elements: !1920)
!1920 = !{!1921}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1919, file: !1918, line: 12, baseType: !1922)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !470, line: 33, baseType: !1923)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !470, line: 31, elements: !472)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1914, file: !208, line: 1316, baseType: !406, size: 32)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1914, file: !208, line: 1317, baseType: !406, size: 32, offset: 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1914, file: !208, line: 1318, baseType: !1913, size: 64, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1914, file: !208, line: 1319, baseType: !707, size: 64, offset: 128)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1914, file: !208, line: 1320, baseType: !720, size: 128, align: 64, offset: 192)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1896, file: !208, line: 1084, baseType: !362, size: 64, offset: 1152)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1896, file: !208, line: 1085, baseType: !362, size: 64, offset: 1216)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1896, file: !208, line: 1087, baseType: !1932, size: 64, offset: 1280)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1934)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !208, line: 1011, size: 128, elements: !1935)
!1935 = !{!1936, !1940}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1934, file: !208, line: 1012, baseType: !1937, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{null, !1895, !1895}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1934, file: !208, line: 1013, baseType: !1941, size: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{null, !1895}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1896, file: !208, line: 1088, baseType: !1945, size: 64, offset: 1344)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1947)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !208, line: 1016, size: 512, elements: !1948)
!1948 = !{!1949, !1953, !1957, !1958, !1962, !1966, !1970, !1974}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1947, file: !208, line: 1017, baseType: !1950, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!1881, !1881}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1947, file: !208, line: 1018, baseType: !1954, size: 64, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{null, !1881}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1947, file: !208, line: 1019, baseType: !1941, size: 64, offset: 128)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1947, file: !208, line: 1020, baseType: !1959, size: 64, offset: 192)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!406, !1895, !406}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1947, file: !208, line: 1021, baseType: !1963, size: 64, offset: 256)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!836, !1895}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1947, file: !208, line: 1022, baseType: !1967, size: 64, offset: 320)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!406, !1895, !406, !371}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1947, file: !208, line: 1023, baseType: !1971, size: 64, offset: 384)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{null, !1895, !1158}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1947, file: !208, line: 1024, baseType: !1963, size: 64, offset: 448)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1896, file: !208, line: 1097, baseType: !1976, size: 256, offset: 1408)
!1976 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1896, file: !208, line: 1089, size: 256, elements: !1977)
!1977 = !{!1978, !1987, !1993}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1976, file: !208, line: 1090, baseType: !1979, size: 256)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1980, line: 10, size: 256, elements: !1981)
!1980 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!1981 = !{!1982, !1983, !1986}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1979, file: !1980, line: 11, baseType: !442, size: 32)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1979, file: !1980, line: 12, baseType: !1984, size: 64, offset: 64)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1980, line: 5, flags: DIFlagFwdDecl)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1979, file: !1980, line: 13, baseType: !372, size: 128, offset: 128)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1976, file: !208, line: 1091, baseType: !1988, size: 64)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1980, line: 17, size: 64, elements: !1989)
!1989 = !{!1990}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1988, file: !1980, line: 18, baseType: !1991, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1980, line: 16, flags: DIFlagFwdDecl)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1976, file: !208, line: 1096, baseType: !1994, size: 192)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1976, file: !208, line: 1092, size: 192, elements: !1995)
!1995 = !{!1996, !1997, !1998}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1994, file: !208, line: 1093, baseType: !372, size: 128)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1994, file: !208, line: 1094, baseType: !406, size: 32, offset: 128)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1994, file: !208, line: 1095, baseType: !7, size: 32, offset: 160)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1810, file: !208, line: 1843, baseType: !2000, size: 64, offset: 1280)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!922, !707, !1072, !406, !925, !1821, !406}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1810, file: !208, line: 1844, baseType: !2004, size: 64, offset: 1344)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!362, !707, !362, !362, !362, !362}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1810, file: !208, line: 1845, baseType: !2008, size: 64, offset: 1408)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!406, !406}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1810, file: !208, line: 1846, baseType: !1892, size: 64, offset: 1472)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1810, file: !208, line: 1847, baseType: !2013, size: 64, offset: 1536)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!922, !2016, !707, !1821, !925, !7}
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !491, line: 53, flags: DIFlagFwdDecl)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1810, file: !208, line: 1848, baseType: !2019, size: 64, offset: 1600)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!922, !707, !1821, !2016, !925, !7}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1810, file: !208, line: 1849, baseType: !2023, size: 64, offset: 1664)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!406, !707, !317, !2026, !1158}
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1810, file: !208, line: 1850, baseType: !2028, size: 64, offset: 1728)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!317, !707, !406, !877, !877}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1810, file: !208, line: 1852, baseType: !2032, size: 64, offset: 1792)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{null, !1063, !707}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1810, file: !208, line: 1856, baseType: !2036, size: 64, offset: 1856)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!922, !707, !877, !707, !877, !925, !7}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1810, file: !208, line: 1858, baseType: !2040, size: 64, offset: 1920)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!877, !707, !877, !707, !877, !877, !7}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1810, file: !208, line: 1861, baseType: !1884, size: 64, offset: 1984)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1805, file: !208, line: 692, baseType: !1016, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !772, file: !208, line: 694, baseType: !2046, size: 64, offset: 2560)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !208, line: 1100, size: 384, elements: !2048)
!2048 = !{!2049, !2050, !2051, !2052}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2047, file: !208, line: 1101, baseType: !1093)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2047, file: !208, line: 1102, baseType: !372, size: 128)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2047, file: !208, line: 1103, baseType: !372, size: 128, offset: 128)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2047, file: !208, line: 1104, baseType: !372, size: 128, offset: 256)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !772, file: !208, line: 695, baseType: !1085, size: 1216, align: 64, offset: 2624)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !772, file: !208, line: 696, baseType: !372, size: 128, offset: 3840)
!2055 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !208, line: 697, baseType: !2056, size: 64, offset: 3968)
!2056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !772, file: !208, line: 697, size: 64, elements: !2057)
!2057 = !{!2058, !2059, !2060, !2371, !2372}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2056, file: !208, line: 698, baseType: !2016, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2056, file: !208, line: 699, baseType: !1536, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2056, file: !208, line: 700, baseType: !2061, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !2063, line: 14, size: 832, elements: !2064)
!2063 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!2064 = !{!2065, !2366, !2367, !2368, !2369, !2370}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2062, file: !2063, line: 15, baseType: !2066, size: 512)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !2067, line: 64, size: 512, elements: !2068)
!2067 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!2068 = !{!2069, !2070, !2071, !2073, !2115, !2217, !2356, !2361, !2362, !2363, !2364, !2365}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2066, file: !2067, line: 65, baseType: !806, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2066, file: !2067, line: 66, baseType: !372, size: 128, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2066, file: !2067, line: 67, baseType: !2072, size: 64, offset: 192)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !2066, file: !2067, line: 68, baseType: !2074, size: 64, offset: 256)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !2067, line: 192, size: 704, elements: !2076)
!2076 = !{!2077, !2078, !2079, !2080}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2075, file: !2067, line: 193, baseType: !372, size: 128)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2075, file: !2067, line: 194, baseType: !1093, offset: 128)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2075, file: !2067, line: 195, baseType: !2066, size: 512, offset: 128)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !2075, file: !2067, line: 196, baseType: !2081, size: 64, offset: 640)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2083)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !2067, line: 156, size: 192, elements: !2084)
!2084 = !{!2085, !2090, !2095}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2083, file: !2067, line: 157, baseType: !2086, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2087)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!406, !2074, !2072}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2083, file: !2067, line: 158, baseType: !2091, size: 64, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2092)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!806, !2074, !2072}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2083, file: !2067, line: 159, baseType: !2096, size: 64, offset: 128)
!2096 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2097)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!406, !2074, !2072, !2100}
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !2067, line: 148, size: 20736, elements: !2102)
!2102 = !{!2103, !2105, !2109, !2110, !2114}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2101, file: !2067, line: 149, baseType: !2104, size: 192)
!2104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !831, size: 192, elements: !1001)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !2101, file: !2067, line: 150, baseType: !2106, size: 4096, offset: 192)
!2106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !831, size: 4096, elements: !2107)
!2107 = !{!2108}
!2108 = !DISubrange(count: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !2101, file: !2067, line: 151, baseType: !406, size: 32, offset: 4288)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2101, file: !2067, line: 152, baseType: !2111, size: 16384, offset: 4320)
!2111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 16384, elements: !2112)
!2112 = !{!2113}
!2113 = !DISubrange(count: 2048)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !2101, file: !2067, line: 153, baseType: !406, size: 32, offset: 20704)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !2066, file: !2067, line: 69, baseType: !2116, size: 64, offset: 320)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !2067, line: 138, size: 448, elements: !2118)
!2118 = !{!2119, !2123, !2142, !2144, !2177, !2207, !2211}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2117, file: !2067, line: 139, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{null, !2072}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !2117, file: !2067, line: 140, baseType: !2124, size: 64, offset: 64)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2126)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2127, line: 230, size: 128, elements: !2128)
!2127 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!2128 = !{!2129, !2138}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2126, file: !2127, line: 231, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!922, !2072, !2133, !831}
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2127, line: 30, size: 128, elements: !2135)
!2135 = !{!2136, !2137}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2134, file: !2127, line: 31, baseType: !806, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2134, file: !2127, line: 32, baseType: !775, size: 16, offset: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2126, file: !2127, line: 232, baseType: !2139, size: 64, offset: 64)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!922, !2072, !2133, !806, !925}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !2117, file: !2067, line: 141, baseType: !2143, size: 64, offset: 128)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !2117, file: !2067, line: 142, baseType: !2145, size: 64, offset: 192)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2148)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2127, line: 84, size: 320, elements: !2149)
!2149 = !{!2150, !2151, !2155, !2174, !2175}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2148, file: !2127, line: 85, baseType: !806, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2148, file: !2127, line: 86, baseType: !2152, size: 64, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!775, !2072, !2133, !406}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2148, file: !2127, line: 88, baseType: !2156, size: 64, offset: 128)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!775, !2072, !2159, !406}
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2127, line: 168, size: 448, elements: !2161)
!2161 = !{!2162, !2163, !2164, !2165, !2169, !2170}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2160, file: !2127, line: 169, baseType: !2134, size: 128)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2160, file: !2127, line: 170, baseType: !925, size: 64, offset: 128)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2160, file: !2127, line: 171, baseType: !363, size: 64, offset: 192)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2160, file: !2127, line: 172, baseType: !2166, size: 64, offset: 256)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!922, !707, !2072, !2159, !831, !877, !925}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2160, file: !2127, line: 174, baseType: !2166, size: 64, offset: 320)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2160, file: !2127, line: 176, baseType: !2171, size: 64, offset: 384)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!406, !707, !2072, !2159, !673}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2148, file: !2127, line: 90, baseType: !2143, size: 64, offset: 192)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2148, file: !2127, line: 91, baseType: !2176, size: 64, offset: 256)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !2117, file: !2067, line: 143, baseType: !2178, size: 64, offset: 256)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!2181, !2072}
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2183)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !225, line: 39, size: 384, elements: !2184)
!2184 = !{!2185, !2186, !2190, !2194, !2202, !2206}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2183, file: !225, line: 40, baseType: !224, size: 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2183, file: !225, line: 41, baseType: !2187, size: 64, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!836}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2183, file: !225, line: 42, baseType: !2191, size: 64, offset: 128)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!363}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2183, file: !225, line: 43, baseType: !2195, size: 64, offset: 192)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!2198, !2200}
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !225, line: 19, flags: DIFlagFwdDecl)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2183, file: !225, line: 44, baseType: !2203, size: 64, offset: 256)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!2198}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2183, file: !225, line: 45, baseType: !813, size: 64, offset: 320)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2117, file: !2067, line: 144, baseType: !2208, size: 64, offset: 320)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!2198, !2072}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2117, file: !2067, line: 145, baseType: !2212, size: 64, offset: 384)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{null, !2072, !2215, !2216}
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !2066, file: !2067, line: 70, baseType: !2218, size: 64, offset: 384)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !969, line: 123, size: 1024, elements: !2220)
!2220 = !{!2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2349, !2350, !2351, !2352, !2353}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2219, file: !969, line: 124, baseType: !508, size: 32)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2219, file: !969, line: 125, baseType: !508, size: 32, offset: 32)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2219, file: !969, line: 135, baseType: !2218, size: 64, offset: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2219, file: !969, line: 136, baseType: !806, size: 64, offset: 128)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2219, file: !969, line: 138, baseType: !482, size: 192, align: 64, offset: 192)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2219, file: !969, line: 140, baseType: !2198, size: 64, offset: 384)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2219, file: !969, line: 141, baseType: !7, size: 32, offset: 448)
!2228 = !DIDerivedType(tag: DW_TAG_member, scope: !2219, file: !969, line: 142, baseType: !2229, size: 256, offset: 512)
!2229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2219, file: !969, line: 142, size: 256, elements: !2230)
!2230 = !{!2231, !2277, !2281}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2229, file: !969, line: 143, baseType: !2232, size: 192)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !969, line: 91, size: 192, elements: !2233)
!2233 = !{!2234, !2235, !2236}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2232, file: !969, line: 92, baseType: !362, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2232, file: !969, line: 94, baseType: !478, size: 64, offset: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2232, file: !969, line: 100, baseType: !2237, size: 64, offset: 128)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !969, line: 180, size: 704, elements: !2239)
!2239 = !{!2240, !2241, !2242, !2249, !2250, !2251, !2275, !2276}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2238, file: !969, line: 182, baseType: !2218, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2238, file: !969, line: 183, baseType: !7, size: 32, offset: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !2238, file: !969, line: 186, baseType: !2243, size: 192, offset: 128)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !2244, line: 19, size: 192, elements: !2245)
!2244 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!2245 = !{!2246, !2247, !2248}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !2243, file: !2244, line: 20, baseType: !1089, size: 128)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !2243, file: !2244, line: 21, baseType: !7, size: 32, offset: 128)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !2243, file: !2244, line: 22, baseType: !7, size: 32, offset: 160)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !2238, file: !969, line: 187, baseType: !442, size: 32, offset: 320)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !2238, file: !969, line: 188, baseType: !442, size: 32, offset: 352)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !2238, file: !969, line: 189, baseType: !2252, size: 64, offset: 384)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !969, line: 168, size: 320, elements: !2254)
!2254 = !{!2255, !2259, !2263, !2267, !2271}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2253, file: !969, line: 169, baseType: !2256, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!406, !1063, !2237}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !2253, file: !969, line: 171, baseType: !2260, size: 64, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!406, !2218, !806, !775}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !2253, file: !969, line: 173, baseType: !2264, size: 64, offset: 128)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!406, !2218}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !2253, file: !969, line: 174, baseType: !2268, size: 64, offset: 192)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!406, !2218, !2218, !806}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2253, file: !969, line: 176, baseType: !2272, size: 64, offset: 256)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!406, !1063, !2218, !2237}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !2238, file: !969, line: 192, baseType: !372, size: 128, offset: 448)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !2238, file: !969, line: 194, baseType: !1592, size: 128, offset: 576)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2229, file: !969, line: 144, baseType: !2278, size: 64)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !969, line: 103, size: 64, elements: !2279)
!2279 = !{!2280}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2278, file: !969, line: 104, baseType: !2218, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2229, file: !969, line: 145, baseType: !2282, size: 256)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !969, line: 107, size: 256, elements: !2283)
!2283 = !{!2284, !2344, !2347, !2348}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2282, file: !969, line: 108, baseType: !2285, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2287)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !969, line: 217, size: 768, elements: !2288)
!2288 = !{!2289, !2309, !2313, !2317, !2321, !2325, !2329, !2333, !2334, !2335, !2336, !2340}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2287, file: !969, line: 222, baseType: !2290, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!406, !2293}
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !969, line: 197, size: 1088, elements: !2295)
!2295 = !{!2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2294, file: !969, line: 199, baseType: !2218, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2294, file: !969, line: 200, baseType: !707, size: 64, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2294, file: !969, line: 201, baseType: !1063, size: 64, offset: 128)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2294, file: !969, line: 202, baseType: !363, size: 64, offset: 192)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2294, file: !969, line: 205, baseType: !1360, size: 192, offset: 256)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2294, file: !969, line: 206, baseType: !1360, size: 192, offset: 448)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2294, file: !969, line: 207, baseType: !406, size: 32, offset: 640)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2294, file: !969, line: 208, baseType: !372, size: 128, offset: 704)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2294, file: !969, line: 209, baseType: !831, size: 64, offset: 832)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2294, file: !969, line: 211, baseType: !925, size: 64, offset: 896)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2294, file: !969, line: 212, baseType: !836, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2294, file: !969, line: 213, baseType: !836, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2294, file: !969, line: 214, baseType: !702, size: 64, offset: 1024)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2287, file: !969, line: 223, baseType: !2310, size: 64, offset: 64)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{null, !2293}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2287, file: !969, line: 236, baseType: !2314, size: 64, offset: 128)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!406, !1063, !363}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2287, file: !969, line: 238, baseType: !2318, size: 64, offset: 192)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!363, !1063, !1821}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2287, file: !969, line: 239, baseType: !2322, size: 64, offset: 256)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!363, !1063, !363, !1821}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2287, file: !969, line: 240, baseType: !2326, size: 64, offset: 320)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{null, !1063, !363}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2287, file: !969, line: 242, baseType: !2330, size: 64, offset: 384)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!922, !2293, !831, !925, !877}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2287, file: !969, line: 252, baseType: !925, size: 64, offset: 448)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2287, file: !969, line: 259, baseType: !836, size: 8, offset: 512)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2287, file: !969, line: 260, baseType: !2330, size: 64, offset: 576)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2287, file: !969, line: 263, baseType: !2337, size: 64, offset: 640)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!1850, !2293, !1852}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2287, file: !969, line: 266, baseType: !2341, size: 64, offset: 704)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!406, !2293, !673}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2282, file: !969, line: 109, baseType: !2345, size: 64, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !969, line: 31, flags: DIFlagFwdDecl)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2282, file: !969, line: 110, baseType: !877, size: 64, offset: 128)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2282, file: !969, line: 111, baseType: !2218, size: 64, offset: 192)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2219, file: !969, line: 148, baseType: !363, size: 64, offset: 768)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2219, file: !969, line: 154, baseType: !535, size: 64, offset: 832)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2219, file: !969, line: 156, baseType: !384, size: 16, offset: 896)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2219, file: !969, line: 157, baseType: !775, size: 16, offset: 912)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2219, file: !969, line: 158, baseType: !2354, size: 64, offset: 960)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !969, line: 32, flags: DIFlagFwdDecl)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2066, file: !2067, line: 71, baseType: !2357, size: 32, offset: 448)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2358, line: 19, size: 32, elements: !2359)
!2358 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!2359 = !{!2360}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2357, file: !2358, line: 20, baseType: !503, size: 32)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !2066, file: !2067, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !2066, file: !2067, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !2066, file: !2067, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !2066, file: !2067, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !2066, file: !2067, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2062, file: !2063, line: 16, baseType: !364, size: 64, offset: 512)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2062, file: !2063, line: 17, baseType: !1808, size: 64, offset: 576)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2062, file: !2063, line: 18, baseType: !372, size: 128, offset: 640)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2062, file: !2063, line: 19, baseType: !859, size: 32, offset: 768)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2062, file: !2063, line: 20, baseType: !7, size: 32, offset: 800)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2056, file: !208, line: 701, baseType: !831, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2056, file: !208, line: 702, baseType: !7, size: 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !772, file: !208, line: 705, baseType: !443, size: 32, offset: 4032)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !772, file: !208, line: 708, baseType: !443, size: 32, offset: 4064)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !772, file: !208, line: 709, baseType: !1626, size: 64, offset: 4096)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !772, file: !208, line: 720, baseType: !363, size: 64, offset: 4160)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !738, file: !735, line: 98, baseType: !2378, size: 256, offset: 448)
!2378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 256, elements: !1630)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !738, file: !735, line: 101, baseType: !2380, size: 32, offset: 704)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2381, line: 25, size: 32, elements: !2382)
!2381 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2382 = !{!2383}
!2383 = !DIDerivedType(tag: DW_TAG_member, scope: !2380, file: !2381, line: 26, baseType: !2384, size: 32)
!2384 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2380, file: !2381, line: 26, size: 32, elements: !2385)
!2385 = !{!2386}
!2386 = !DIDerivedType(tag: DW_TAG_member, scope: !2384, file: !2381, line: 30, baseType: !2387, size: 32)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2384, file: !2381, line: 30, size: 32, elements: !2388)
!2388 = !{!2389, !2390}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2387, file: !2381, line: 31, baseType: !1093)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2387, file: !2381, line: 32, baseType: !406, size: 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !738, file: !735, line: 102, baseType: !1647, size: 64, offset: 768)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !738, file: !735, line: 103, baseType: !949, size: 64, offset: 832)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !738, file: !735, line: 104, baseType: !362, size: 64, offset: 896)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !738, file: !735, line: 105, baseType: !363, size: 64, offset: 960)
!2395 = !DIDerivedType(tag: DW_TAG_member, scope: !738, file: !735, line: 107, baseType: !2396, size: 128, offset: 1024)
!2396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !738, file: !735, line: 107, size: 128, elements: !2397)
!2397 = !{!2398, !2399}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2396, file: !735, line: 108, baseType: !372, size: 128)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2396, file: !735, line: 109, baseType: !1861, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !738, file: !735, line: 111, baseType: !372, size: 128, offset: 1152)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !738, file: !735, line: 112, baseType: !372, size: 128, offset: 1280)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !738, file: !735, line: 120, baseType: !2403, size: 128, offset: 1408)
!2403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !738, file: !735, line: 116, size: 128, elements: !2404)
!2404 = !{!2405, !2406, !2407}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2403, file: !735, line: 117, baseType: !989, size: 128)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2403, file: !735, line: 118, baseType: !747, size: 128)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2403, file: !735, line: 119, baseType: !720, size: 128, align: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !708, file: !208, line: 922, baseType: !771, size: 64, offset: 256)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !708, file: !208, line: 923, baseType: !1808, size: 64, offset: 320)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !708, file: !208, line: 929, baseType: !1093, offset: 384)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !708, file: !208, line: 930, baseType: !207, size: 32, offset: 384)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !708, file: !208, line: 931, baseType: !1110, size: 64, offset: 448)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !708, file: !208, line: 932, baseType: !7, size: 32, offset: 512)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !708, file: !208, line: 933, baseType: !1643, size: 32, offset: 544)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !708, file: !208, line: 934, baseType: !1360, size: 192, offset: 576)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !708, file: !208, line: 935, baseType: !877, size: 64, offset: 768)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !708, file: !208, line: 936, baseType: !2418, size: 192, offset: 832)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !208, line: 885, size: 192, elements: !2419)
!2419 = !{!2420, !2421, !2443, !2444, !2445, !2446}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2418, file: !208, line: 886, baseType: !1917)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2418, file: !208, line: 887, baseType: !2422, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !217, line: 59, size: 768, elements: !2424)
!2424 = !{!2425, !2426, !2427, !2428, !2432, !2433, !2434, !2435}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2423, file: !217, line: 61, baseType: !503, size: 32)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2423, file: !217, line: 62, baseType: !7, size: 32, offset: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2423, file: !217, line: 63, baseType: !1093, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2423, file: !217, line: 65, baseType: !2429, size: 256, offset: 64)
!2429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !985, size: 256, elements: !2430)
!2430 = !{!2431}
!2431 = !DISubrange(count: 4)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2423, file: !217, line: 66, baseType: !985, size: 64, offset: 320)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !2423, file: !217, line: 68, baseType: !1592, size: 128, offset: 384)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2423, file: !217, line: 69, baseType: !720, size: 128, align: 64, offset: 512)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !2423, file: !217, line: 70, baseType: !2436, size: 128, offset: 640)
!2436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2437, size: 128, elements: !658)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !217, line: 54, size: 128, elements: !2438)
!2438 = !{!2439, !2440}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2437, file: !217, line: 55, baseType: !406, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2437, file: !217, line: 56, baseType: !2441, size: 64, offset: 64)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !217, line: 56, flags: DIFlagFwdDecl)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2418, file: !208, line: 888, baseType: !216, size: 32, offset: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2418, file: !208, line: 889, baseType: !778, size: 32, offset: 96)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2418, file: !208, line: 889, baseType: !778, size: 32, offset: 128)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2418, file: !208, line: 890, baseType: !406, size: 32, offset: 160)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !708, file: !208, line: 937, baseType: !2448, size: 64, offset: 1024)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2450)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2451, line: 111, size: 1280, elements: !2452)
!2451 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!2452 = !{!2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2472, !2473, !2474, !2475, !2476, !2477, !2587, !2588, !2589, !2590, !2616, !2617, !2627}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2450, file: !2451, line: 112, baseType: !508, size: 32)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2450, file: !2451, line: 120, baseType: !778, size: 32, offset: 32)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2450, file: !2451, line: 121, baseType: !786, size: 32, offset: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2450, file: !2451, line: 122, baseType: !778, size: 32, offset: 96)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2450, file: !2451, line: 123, baseType: !786, size: 32, offset: 128)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2450, file: !2451, line: 124, baseType: !778, size: 32, offset: 160)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2450, file: !2451, line: 125, baseType: !786, size: 32, offset: 192)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2450, file: !2451, line: 126, baseType: !778, size: 32, offset: 224)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2450, file: !2451, line: 127, baseType: !786, size: 32, offset: 256)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2450, file: !2451, line: 128, baseType: !7, size: 32, offset: 288)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2450, file: !2451, line: 129, baseType: !2464, size: 64, offset: 320)
!2464 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2465, line: 26, baseType: !2466)
!2465 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !2465, line: 24, size: 64, elements: !2467)
!2467 = !{!2468}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !2466, file: !2465, line: 25, baseType: !2469, size: 64)
!2469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 64, elements: !2470)
!2470 = !{!2471}
!2471 = !DISubrange(count: 2)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2450, file: !2451, line: 130, baseType: !2464, size: 64, offset: 384)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2450, file: !2451, line: 131, baseType: !2464, size: 64, offset: 448)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2450, file: !2451, line: 132, baseType: !2464, size: 64, offset: 512)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2450, file: !2451, line: 133, baseType: !2464, size: 64, offset: 576)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2450, file: !2451, line: 135, baseType: !419, size: 8, offset: 640)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2450, file: !2451, line: 137, baseType: !2478, size: 64, offset: 704)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2480, line: 189, size: 1664, elements: !2481)
!2480 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!2481 = !{!2482, !2483, !2488, !2493, !2494, !2497, !2498, !2503, !2504, !2505, !2506, !2508, !2509, !2510, !2512, !2513, !2551, !2572}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2479, file: !2480, line: 190, baseType: !503, size: 32)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2479, file: !2480, line: 191, baseType: !2484, size: 32, offset: 32)
!2484 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2480, line: 28, baseType: !2485)
!2485 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !368, line: 98, baseType: !2486)
!2486 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !426, line: 20, baseType: !2487)
!2487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !413, line: 26, baseType: !406)
!2488 = !DIDerivedType(tag: DW_TAG_member, scope: !2479, file: !2480, line: 192, baseType: !2489, size: 192, offset: 64)
!2489 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2479, file: !2480, line: 192, size: 192, elements: !2490)
!2490 = !{!2491, !2492}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2489, file: !2480, line: 193, baseType: !372, size: 128)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2489, file: !2480, line: 194, baseType: !482, size: 192, align: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2479, file: !2480, line: 199, baseType: !1106, size: 256, offset: 256)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2479, file: !2480, line: 200, baseType: !2495, size: 64, offset: 512)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2480, line: 200, flags: DIFlagFwdDecl)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2479, file: !2480, line: 201, baseType: !363, size: 64, offset: 576)
!2498 = !DIDerivedType(tag: DW_TAG_member, scope: !2479, file: !2480, line: 202, baseType: !2499, size: 64, offset: 640)
!2499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2479, file: !2480, line: 202, size: 64, elements: !2500)
!2500 = !{!2501, !2502}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2499, file: !2480, line: 203, baseType: !884, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2499, file: !2480, line: 204, baseType: !884, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2479, file: !2480, line: 206, baseType: !884, size: 64, offset: 704)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2479, file: !2480, line: 207, baseType: !778, size: 32, offset: 768)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2479, file: !2480, line: 208, baseType: !786, size: 32, offset: 800)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2479, file: !2480, line: 209, baseType: !2507, size: 32, offset: 832)
!2507 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2480, line: 31, baseType: !903)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2479, file: !2480, line: 210, baseType: !384, size: 16, offset: 864)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2479, file: !2480, line: 211, baseType: !384, size: 16, offset: 880)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2479, file: !2480, line: 215, baseType: !2511, size: 16, offset: 896)
!2511 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2479, file: !2480, line: 222, baseType: !362, size: 64, offset: 960)
!2513 = !DIDerivedType(tag: DW_TAG_member, scope: !2479, file: !2480, line: 239, baseType: !2514, size: 320, offset: 1024)
!2514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2479, file: !2480, line: 239, size: 320, elements: !2515)
!2515 = !{!2516, !2543}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2514, file: !2480, line: 240, baseType: !2517, size: 320)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2480, line: 108, size: 320, elements: !2518)
!2518 = !{!2519, !2520, !2532, !2535, !2542}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2517, file: !2480, line: 110, baseType: !362, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, scope: !2517, file: !2480, line: 111, baseType: !2521, size: 64, offset: 64)
!2521 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2517, file: !2480, line: 111, size: 64, elements: !2522)
!2522 = !{!2523, !2531}
!2523 = !DIDerivedType(tag: DW_TAG_member, scope: !2521, file: !2480, line: 112, baseType: !2524, size: 64)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2521, file: !2480, line: 112, size: 64, elements: !2525)
!2525 = !{!2526, !2527}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2524, file: !2480, line: 114, baseType: !425, size: 16)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2524, file: !2480, line: 115, baseType: !2528, size: 48, offset: 16)
!2528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 48, elements: !2529)
!2529 = !{!2530}
!2530 = !DISubrange(count: 6)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2521, file: !2480, line: 121, baseType: !362, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2517, file: !2480, line: 123, baseType: !2533, size: 64, offset: 128)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2480, line: 96, flags: DIFlagFwdDecl)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2517, file: !2480, line: 124, baseType: !2536, size: 64, offset: 192)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2480, line: 102, size: 192, elements: !2538)
!2538 = !{!2539, !2540, !2541}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2537, file: !2480, line: 103, baseType: !720, size: 128, align: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2537, file: !2480, line: 104, baseType: !503, size: 32, offset: 128)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2537, file: !2480, line: 105, baseType: !836, size: 8, offset: 160)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2517, file: !2480, line: 125, baseType: !806, size: 64, offset: 256)
!2543 = !DIDerivedType(tag: DW_TAG_member, scope: !2514, file: !2480, line: 241, baseType: !2544, size: 320)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2514, file: !2480, line: 241, size: 320, elements: !2545)
!2545 = !{!2546, !2547, !2548, !2549, !2550}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2544, file: !2480, line: 242, baseType: !362, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2544, file: !2480, line: 243, baseType: !362, size: 64, offset: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2544, file: !2480, line: 244, baseType: !2533, size: 64, offset: 128)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2544, file: !2480, line: 245, baseType: !2536, size: 64, offset: 192)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2544, file: !2480, line: 246, baseType: !831, size: 64, offset: 256)
!2551 = !DIDerivedType(tag: DW_TAG_member, scope: !2479, file: !2480, line: 254, baseType: !2552, size: 256, offset: 1344)
!2552 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2479, file: !2480, line: 254, size: 256, elements: !2553)
!2553 = !{!2554, !2560}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2552, file: !2480, line: 255, baseType: !2555, size: 256)
!2555 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2480, line: 128, size: 256, elements: !2556)
!2556 = !{!2557, !2558}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2555, file: !2480, line: 129, baseType: !363, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2555, file: !2480, line: 130, baseType: !2559, size: 256)
!2559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 256, elements: !2430)
!2560 = !DIDerivedType(tag: DW_TAG_member, scope: !2552, file: !2480, line: 256, baseType: !2561, size: 256)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2552, file: !2480, line: 256, size: 256, elements: !2562)
!2562 = !{!2563, !2564}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2561, file: !2480, line: 258, baseType: !372, size: 128)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2561, file: !2480, line: 259, baseType: !2565, size: 128, offset: 128)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2566, line: 22, size: 128, elements: !2567)
!2566 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!2567 = !{!2568, !2571}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2565, file: !2566, line: 23, baseType: !2569, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2566, line: 23, flags: DIFlagFwdDecl)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2565, file: !2566, line: 24, baseType: !362, size: 64, offset: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2479, file: !2480, line: 274, baseType: !2573, size: 64, offset: 1600)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2480, line: 170, size: 192, elements: !2575)
!2575 = !{!2576, !2585, !2586}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2574, file: !2480, line: 171, baseType: !2577, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2480, line: 165, baseType: !2578)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!406, !2478, !2581, !2583, !2478}
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2534)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2555)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2574, file: !2480, line: 172, baseType: !2478, size: 64, offset: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2574, file: !2480, line: 173, baseType: !2533, size: 64, offset: 128)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2450, file: !2451, line: 138, baseType: !2478, size: 64, offset: 768)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2450, file: !2451, line: 139, baseType: !2478, size: 64, offset: 832)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2450, file: !2451, line: 140, baseType: !2478, size: 64, offset: 896)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2450, file: !2451, line: 145, baseType: !2591, size: 64, offset: 960)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2593, line: 13, size: 896, elements: !2594)
!2593 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!2594 = !{!2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2592, file: !2593, line: 14, baseType: !503, size: 32)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2592, file: !2593, line: 15, baseType: !508, size: 32, offset: 32)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2592, file: !2593, line: 16, baseType: !508, size: 32, offset: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2592, file: !2593, line: 21, baseType: !1110, size: 64, offset: 128)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2592, file: !2593, line: 27, baseType: !362, size: 64, offset: 192)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2592, file: !2593, line: 28, baseType: !362, size: 64, offset: 256)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2592, file: !2593, line: 29, baseType: !1110, size: 64, offset: 320)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2592, file: !2593, line: 32, baseType: !989, size: 128, offset: 384)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2592, file: !2593, line: 33, baseType: !778, size: 32, offset: 512)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2592, file: !2593, line: 37, baseType: !1110, size: 64, offset: 576)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2592, file: !2593, line: 44, baseType: !2606, size: 256, offset: 640)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2607, line: 15, size: 256, elements: !2608)
!2607 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2608 = !{!2609, !2610, !2611, !2612, !2613, !2614, !2615}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2606, file: !2607, line: 16, baseType: !464)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2606, file: !2607, line: 18, baseType: !406, size: 32)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2606, file: !2607, line: 19, baseType: !406, size: 32, offset: 32)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2606, file: !2607, line: 20, baseType: !406, size: 32, offset: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2606, file: !2607, line: 21, baseType: !406, size: 32, offset: 96)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2606, file: !2607, line: 22, baseType: !362, size: 64, offset: 128)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2606, file: !2607, line: 23, baseType: !362, size: 64, offset: 192)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2450, file: !2451, line: 146, baseType: !1730, size: 64, offset: 1024)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2450, file: !2451, line: 147, baseType: !2618, size: 64, offset: 1088)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2451, line: 25, size: 64, elements: !2620)
!2620 = !{!2621, !2622, !2623}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2619, file: !2451, line: 26, baseType: !508, size: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2619, file: !2451, line: 27, baseType: !406, size: 32, offset: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2619, file: !2451, line: 28, baseType: !2624, offset: 64)
!2624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !786, elements: !2625)
!2625 = !{!2626}
!2626 = !DISubrange(count: 0)
!2627 = !DIDerivedType(tag: DW_TAG_member, scope: !2450, file: !2451, line: 149, baseType: !2628, size: 128, offset: 1152)
!2628 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2450, file: !2451, line: 149, size: 128, elements: !2629)
!2629 = !{!2630, !2631}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2628, file: !2451, line: 150, baseType: !406, size: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2628, file: !2451, line: 151, baseType: !720, size: 128, align: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !708, file: !208, line: 938, baseType: !2633, size: 256, offset: 1088)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !208, line: 896, size: 256, elements: !2634)
!2634 = !{!2635, !2636, !2637, !2638, !2639, !2640}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2633, file: !208, line: 897, baseType: !362, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2633, file: !208, line: 898, baseType: !7, size: 32, offset: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2633, file: !208, line: 899, baseType: !7, size: 32, offset: 96)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2633, file: !208, line: 902, baseType: !7, size: 32, offset: 128)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2633, file: !208, line: 903, baseType: !7, size: 32, offset: 160)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2633, file: !208, line: 904, baseType: !877, size: 64, offset: 192)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !708, file: !208, line: 940, baseType: !535, size: 64, offset: 1344)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !708, file: !208, line: 945, baseType: !363, size: 64, offset: 1408)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !708, file: !208, line: 949, baseType: !372, size: 128, offset: 1472)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !708, file: !208, line: 950, baseType: !372, size: 128, offset: 1600)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !708, file: !208, line: 952, baseType: !1084, size: 64, offset: 1728)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !708, file: !208, line: 953, baseType: !1244, size: 32, offset: 1792)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !708, file: !208, line: 954, baseType: !1244, size: 32, offset: 1824)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !674, file: !667, line: 362, baseType: !363, size: 64, offset: 1344)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !674, file: !667, line: 365, baseType: !1110, size: 64, offset: 1408)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !674, file: !667, line: 373, baseType: !2651, offset: 1472)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !667, line: 296, elements: !472)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !670, file: !667, line: 391, baseType: !478, size: 64, offset: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !670, file: !667, line: 392, baseType: !535, size: 64, offset: 128)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !670, file: !667, line: 394, baseType: !2004, size: 64, offset: 192)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !670, file: !667, line: 398, baseType: !362, size: 64, offset: 256)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !670, file: !667, line: 399, baseType: !362, size: 64, offset: 320)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !670, file: !667, line: 405, baseType: !362, size: 64, offset: 384)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !670, file: !667, line: 406, baseType: !362, size: 64, offset: 448)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !670, file: !667, line: 407, baseType: !2660, size: 64, offset: 512)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !685, line: 286, baseType: !2662)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !685, line: 286, size: 64, elements: !2663)
!2663 = !{!2664}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2662, file: !685, line: 286, baseType: !2665, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !690, line: 18, baseType: !362)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !670, file: !667, line: 416, baseType: !508, size: 32, offset: 576)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !670, file: !667, line: 428, baseType: !508, size: 32, offset: 608)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !670, file: !667, line: 437, baseType: !508, size: 32, offset: 640)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !670, file: !667, line: 447, baseType: !508, size: 32, offset: 672)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !670, file: !667, line: 450, baseType: !1110, size: 64, offset: 704)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !670, file: !667, line: 452, baseType: !406, size: 32, offset: 768)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !670, file: !667, line: 454, baseType: !1093, offset: 800)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !670, file: !667, line: 457, baseType: !1106, size: 256, offset: 832)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !670, file: !667, line: 459, baseType: !372, size: 128, offset: 1088)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !670, file: !667, line: 466, baseType: !362, size: 64, offset: 1216)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !670, file: !667, line: 467, baseType: !362, size: 64, offset: 1280)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !670, file: !667, line: 469, baseType: !362, size: 64, offset: 1344)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !670, file: !667, line: 470, baseType: !362, size: 64, offset: 1408)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !670, file: !667, line: 471, baseType: !1112, size: 64, offset: 1472)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !670, file: !667, line: 472, baseType: !362, size: 64, offset: 1536)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !670, file: !667, line: 473, baseType: !362, size: 64, offset: 1600)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !670, file: !667, line: 474, baseType: !362, size: 64, offset: 1664)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !670, file: !667, line: 475, baseType: !362, size: 64, offset: 1728)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !670, file: !667, line: 477, baseType: !1093, offset: 1792)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !670, file: !667, line: 478, baseType: !362, size: 64, offset: 1792)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !670, file: !667, line: 478, baseType: !362, size: 64, offset: 1856)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !670, file: !667, line: 478, baseType: !362, size: 64, offset: 1920)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !670, file: !667, line: 478, baseType: !362, size: 64, offset: 1984)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !670, file: !667, line: 479, baseType: !362, size: 64, offset: 2048)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !670, file: !667, line: 479, baseType: !362, size: 64, offset: 2112)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !670, file: !667, line: 479, baseType: !362, size: 64, offset: 2176)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !670, file: !667, line: 480, baseType: !362, size: 64, offset: 2240)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !670, file: !667, line: 480, baseType: !362, size: 64, offset: 2304)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !670, file: !667, line: 480, baseType: !362, size: 64, offset: 2368)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !670, file: !667, line: 480, baseType: !362, size: 64, offset: 2432)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !670, file: !667, line: 482, baseType: !2697, size: 2816, offset: 2496)
!2697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 2816, elements: !2698)
!2698 = !{!2699}
!2699 = !DISubrange(count: 44)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !670, file: !667, line: 488, baseType: !2701, size: 256, offset: 5312)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2702, line: 60, size: 256, elements: !2703)
!2702 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2703 = !{!2704}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2701, file: !2702, line: 61, baseType: !2705, size: 256)
!2705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1110, size: 256, elements: !2430)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !670, file: !667, line: 490, baseType: !2707, size: 64, offset: 5568)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !667, line: 490, flags: DIFlagFwdDecl)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !670, file: !667, line: 493, baseType: !2710, size: 896, offset: 5632)
!2710 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2711, line: 53, baseType: !2712)
!2711 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2711, line: 13, size: 896, elements: !2713)
!2713 = !{!2714, !2715, !2716, !2717, !2720, !2721, !2722, !2723, !2743, !2744, !2745}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2712, file: !2711, line: 18, baseType: !535, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2712, file: !2711, line: 28, baseType: !1112, size: 64, offset: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2712, file: !2711, line: 31, baseType: !1106, size: 256, offset: 128)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2712, file: !2711, line: 32, baseType: !2718, size: 64, offset: 384)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2711, line: 32, flags: DIFlagFwdDecl)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2712, file: !2711, line: 37, baseType: !384, size: 16, offset: 448)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2712, file: !2711, line: 40, baseType: !1360, size: 192, offset: 512)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2712, file: !2711, line: 41, baseType: !363, size: 64, offset: 704)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2712, file: !2711, line: 42, baseType: !2724, size: 64, offset: 768)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2726)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2727, line: 13, size: 896, elements: !2728)
!2727 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!2728 = !{!2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2726, file: !2727, line: 14, baseType: !363, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2726, file: !2727, line: 15, baseType: !362, size: 64, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2726, file: !2727, line: 17, baseType: !362, size: 64, offset: 128)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2726, file: !2727, line: 17, baseType: !362, size: 64, offset: 192)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2726, file: !2727, line: 19, baseType: !317, size: 64, offset: 256)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2726, file: !2727, line: 21, baseType: !317, size: 64, offset: 320)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2726, file: !2727, line: 22, baseType: !317, size: 64, offset: 384)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2726, file: !2727, line: 23, baseType: !317, size: 64, offset: 448)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2726, file: !2727, line: 24, baseType: !317, size: 64, offset: 512)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2726, file: !2727, line: 25, baseType: !317, size: 64, offset: 576)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2726, file: !2727, line: 26, baseType: !317, size: 64, offset: 640)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2726, file: !2727, line: 27, baseType: !317, size: 64, offset: 704)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2726, file: !2727, line: 28, baseType: !317, size: 64, offset: 768)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2726, file: !2727, line: 29, baseType: !317, size: 64, offset: 832)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2712, file: !2711, line: 44, baseType: !508, size: 32, offset: 832)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2712, file: !2711, line: 50, baseType: !425, size: 16, offset: 864)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2712, file: !2711, line: 51, baseType: !2746, size: 16, offset: 880)
!2746 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !426, line: 18, baseType: !2747)
!2747 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !413, line: 23, baseType: !2511)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !670, file: !667, line: 495, baseType: !362, size: 64, offset: 6528)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !670, file: !667, line: 497, baseType: !2750, size: 64, offset: 6592)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !667, line: 381, size: 384, elements: !2752)
!2752 = !{!2753, !2754, !2760}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2751, file: !667, line: 382, baseType: !508, size: 32)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2751, file: !667, line: 383, baseType: !2755, size: 128, offset: 64)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !667, line: 376, size: 128, elements: !2756)
!2756 = !{!2757, !2758}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2755, file: !667, line: 377, baseType: !489, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2755, file: !667, line: 378, baseType: !2759, size: 64, offset: 64)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2751, file: !667, line: 384, baseType: !2761, size: 192, offset: 192)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2762, line: 26, size: 192, elements: !2763)
!2762 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2763 = !{!2764, !2765}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2761, file: !2762, line: 27, baseType: !7, size: 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2761, file: !2762, line: 28, baseType: !2766, size: 128, offset: 64)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2767, line: 43, size: 128, elements: !2768)
!2767 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2768 = !{!2769, !2770}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2766, file: !2767, line: 44, baseType: !464)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2766, file: !2767, line: 45, baseType: !372, size: 128)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !670, file: !667, line: 500, baseType: !1093, offset: 6656)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !670, file: !667, line: 501, baseType: !2773, size: 64, offset: 6656)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !667, line: 387, flags: DIFlagFwdDecl)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !670, file: !667, line: 516, baseType: !1730, size: 64, offset: 6720)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !670, file: !667, line: 519, baseType: !707, size: 64, offset: 6784)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !670, file: !667, line: 521, baseType: !2778, size: 64, offset: 6848)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !667, line: 521, flags: DIFlagFwdDecl)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !670, file: !667, line: 545, baseType: !508, size: 32, offset: 6912)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !670, file: !667, line: 548, baseType: !836, size: 8, offset: 6944)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !670, file: !667, line: 550, baseType: !2783, offset: 6952)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2784, line: 142, elements: !472)
!2784 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !670, file: !667, line: 554, baseType: !1750, size: 256, offset: 6976)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !670, file: !667, line: 557, baseType: !442, size: 32, offset: 7232)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !666, file: !667, line: 565, baseType: !2788, offset: 7296)
!2788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, elements: !2789)
!2789 = !{!2790}
!2790 = !DISubrange(count: -1)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !490, file: !491, line: 758, baseType: !665, size: 64, offset: 3968)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !490, file: !491, line: 761, baseType: !2793, size: 320, offset: 4032)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2702, line: 34, size: 320, elements: !2794)
!2794 = !{!2795, !2796}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2793, file: !2702, line: 35, baseType: !535, size: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2793, file: !2702, line: 36, baseType: !2797, size: 256, offset: 64)
!2797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, size: 256, elements: !2430)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !490, file: !491, line: 766, baseType: !406, size: 32, offset: 4352)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !490, file: !491, line: 767, baseType: !406, size: 32, offset: 4384)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !490, file: !491, line: 768, baseType: !406, size: 32, offset: 4416)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !490, file: !491, line: 770, baseType: !406, size: 32, offset: 4448)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !490, file: !491, line: 772, baseType: !362, size: 64, offset: 4480)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !490, file: !491, line: 775, baseType: !7, size: 32, offset: 4544)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !490, file: !491, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !490, file: !491, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !490, file: !491, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !490, file: !491, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !490, file: !491, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !490, file: !491, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !490, file: !491, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !490, file: !491, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !490, file: !491, line: 831, baseType: !362, size: 64, offset: 4672)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !490, file: !491, line: 833, baseType: !2814, size: 384, offset: 4736)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !196, line: 25, size: 384, elements: !2815)
!2815 = !{!2816, !2821}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2814, file: !196, line: 26, baseType: !2817, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!317, !2820}
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, scope: !2814, file: !196, line: 27, baseType: !2822, size: 320, offset: 64)
!2822 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2814, file: !196, line: 27, size: 320, elements: !2823)
!2823 = !{!2824, !2834, !2859}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2822, file: !196, line: 36, baseType: !2825, size: 320)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2822, file: !196, line: 29, size: 320, elements: !2826)
!2826 = !{!2827, !2829, !2830, !2831, !2832, !2833}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2825, file: !196, line: 30, baseType: !2828, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2825, file: !196, line: 31, baseType: !442, size: 32, offset: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2825, file: !196, line: 32, baseType: !442, size: 32, offset: 96)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2825, file: !196, line: 33, baseType: !442, size: 32, offset: 128)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2825, file: !196, line: 34, baseType: !535, size: 64, offset: 192)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2825, file: !196, line: 35, baseType: !2828, size: 64, offset: 256)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2822, file: !196, line: 46, baseType: !2835, size: 192)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2822, file: !196, line: 38, size: 192, elements: !2836)
!2836 = !{!2837, !2838, !2839, !2858}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2835, file: !196, line: 39, baseType: !617, size: 32)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2835, file: !196, line: 40, baseType: !195, size: 32, offset: 32)
!2839 = !DIDerivedType(tag: DW_TAG_member, scope: !2835, file: !196, line: 41, baseType: !2840, size: 64, offset: 64)
!2840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2835, file: !196, line: 41, size: 64, elements: !2841)
!2841 = !{!2842, !2850}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2840, file: !196, line: 42, baseType: !2843, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2845, line: 7, size: 128, elements: !2846)
!2845 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2846 = !{!2847, !2849}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2844, file: !2845, line: 8, baseType: !2848, size: 64)
!2848 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !619, line: 93, baseType: !567)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2844, file: !2845, line: 9, baseType: !567, size: 64, offset: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2840, file: !196, line: 43, baseType: !2851, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2853, line: 7, size: 64, elements: !2854)
!2853 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2854 = !{!2855, !2857}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2852, file: !2853, line: 8, baseType: !2856, size: 32)
!2856 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2853, line: 5, baseType: !2486)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2852, file: !2853, line: 9, baseType: !2486, size: 32, offset: 32)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2835, file: !196, line: 45, baseType: !535, size: 64, offset: 128)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2822, file: !196, line: 54, baseType: !2860, size: 256)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2822, file: !196, line: 48, size: 256, elements: !2861)
!2861 = !{!2862, !2870, !2871, !2872, !2873}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2860, file: !196, line: 49, baseType: !2863, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2865, line: 36, size: 64, elements: !2866)
!2865 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!2866 = !{!2867, !2868, !2869}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2864, file: !2865, line: 37, baseType: !406, size: 32)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2864, file: !2865, line: 38, baseType: !2511, size: 16, offset: 32)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2864, file: !2865, line: 39, baseType: !2511, size: 16, offset: 48)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2860, file: !196, line: 50, baseType: !406, size: 32, offset: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2860, file: !196, line: 51, baseType: !406, size: 32, offset: 96)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2860, file: !196, line: 52, baseType: !362, size: 64, offset: 128)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2860, file: !196, line: 53, baseType: !362, size: 64, offset: 192)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !490, file: !491, line: 835, baseType: !2875, size: 32, offset: 5120)
!2875 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !368, line: 22, baseType: !2876)
!2876 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !619, line: 28, baseType: !406)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !490, file: !491, line: 836, baseType: !2875, size: 32, offset: 5152)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !490, file: !491, line: 840, baseType: !362, size: 64, offset: 5184)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !490, file: !491, line: 849, baseType: !489, size: 64, offset: 5248)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !490, file: !491, line: 852, baseType: !489, size: 64, offset: 5312)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !490, file: !491, line: 857, baseType: !372, size: 128, offset: 5376)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !490, file: !491, line: 858, baseType: !372, size: 128, offset: 5504)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !490, file: !491, line: 859, baseType: !489, size: 64, offset: 5632)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !490, file: !491, line: 867, baseType: !372, size: 128, offset: 5696)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !490, file: !491, line: 868, baseType: !372, size: 128, offset: 5824)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !490, file: !491, line: 871, baseType: !2422, size: 64, offset: 5952)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !490, file: !491, line: 872, baseType: !2888, size: 512, offset: 6016)
!2888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !989, size: 512, elements: !2430)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !490, file: !491, line: 873, baseType: !372, size: 128, offset: 6528)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !490, file: !491, line: 874, baseType: !372, size: 128, offset: 6656)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !490, file: !491, line: 876, baseType: !2892, size: 64, offset: 6784)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !490, file: !491, line: 879, baseType: !1057, size: 64, offset: 6848)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !490, file: !491, line: 882, baseType: !1057, size: 64, offset: 6912)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !490, file: !491, line: 884, baseType: !535, size: 64, offset: 6976)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !490, file: !491, line: 885, baseType: !535, size: 64, offset: 7040)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !490, file: !491, line: 890, baseType: !535, size: 64, offset: 7104)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !490, file: !491, line: 891, baseType: !2899, size: 128, offset: 7168)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !491, line: 242, size: 128, elements: !2900)
!2900 = !{!2901, !2902, !2903}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2899, file: !491, line: 244, baseType: !535, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2899, file: !491, line: 245, baseType: !535, size: 64, offset: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2899, file: !491, line: 246, baseType: !464, offset: 128)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !490, file: !491, line: 900, baseType: !362, size: 64, offset: 7296)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !490, file: !491, line: 901, baseType: !362, size: 64, offset: 7360)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !490, file: !491, line: 904, baseType: !535, size: 64, offset: 7424)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !490, file: !491, line: 907, baseType: !535, size: 64, offset: 7488)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !490, file: !491, line: 910, baseType: !362, size: 64, offset: 7552)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !490, file: !491, line: 911, baseType: !362, size: 64, offset: 7616)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !490, file: !491, line: 914, baseType: !2911, size: 640, offset: 7680)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2912, line: 123, size: 640, elements: !2913)
!2912 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2913 = !{!2914, !2920, !2921}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2911, file: !2912, line: 124, baseType: !2915, size: 576)
!2915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2916, size: 576, elements: !1001)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2912, line: 108, size: 192, elements: !2917)
!2917 = !{!2918, !2919}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2916, file: !2912, line: 109, baseType: !535, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2916, file: !2912, line: 110, baseType: !632, size: 128, offset: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2911, file: !2912, line: 125, baseType: !7, size: 32, offset: 576)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2911, file: !2912, line: 126, baseType: !7, size: 32, offset: 608)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !490, file: !491, line: 917, baseType: !2923, size: 192, offset: 8320)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2912, line: 134, size: 192, elements: !2924)
!2924 = !{!2925, !2926}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2923, file: !2912, line: 135, baseType: !720, size: 128, align: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2923, file: !2912, line: 136, baseType: !7, size: 32, offset: 128)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !490, file: !491, line: 923, baseType: !2448, size: 64, offset: 8512)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !490, file: !491, line: 926, baseType: !2448, size: 64, offset: 8576)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !490, file: !491, line: 929, baseType: !2448, size: 64, offset: 8640)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !490, file: !491, line: 933, baseType: !2478, size: 64, offset: 8704)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !490, file: !491, line: 943, baseType: !2932, size: 128, offset: 8768)
!2932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 128, elements: !1639)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !490, file: !491, line: 945, baseType: !2934, size: 64, offset: 8896)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !491, line: 49, flags: DIFlagFwdDecl)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !490, file: !491, line: 956, baseType: !2937, size: 64, offset: 8960)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !491, line: 45, flags: DIFlagFwdDecl)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !490, file: !491, line: 959, baseType: !2940, size: 64, offset: 9024)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !491, line: 959, flags: DIFlagFwdDecl)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !490, file: !491, line: 962, baseType: !2943, size: 64, offset: 9088)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !491, line: 66, flags: DIFlagFwdDecl)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !490, file: !491, line: 966, baseType: !2946, size: 64, offset: 9152)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !491, line: 50, flags: DIFlagFwdDecl)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !490, file: !491, line: 969, baseType: !2949, size: 64, offset: 9216)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2951, line: 82, size: 7296, elements: !2952)
!2951 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2952 = !{!2953, !2954, !2955, !2956, !2957, !2958, !2959, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2988, !2997, !2998, !3000, !3001, !3002, !3005, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3035, !3036, !3043, !3044, !3045, !3046, !3047, !3048}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2950, file: !2951, line: 83, baseType: !503, size: 32)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2950, file: !2951, line: 84, baseType: !508, size: 32, offset: 32)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2950, file: !2951, line: 85, baseType: !406, size: 32, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2950, file: !2951, line: 86, baseType: !372, size: 128, offset: 128)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2950, file: !2951, line: 88, baseType: !1592, size: 128, offset: 256)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2950, file: !2951, line: 91, baseType: !489, size: 64, offset: 384)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2950, file: !2951, line: 94, baseType: !2960, size: 192, offset: 448)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2961, line: 30, size: 192, elements: !2962)
!2961 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2962 = !{!2963, !2964}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2960, file: !2961, line: 31, baseType: !372, size: 128)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2960, file: !2961, line: 32, baseType: !2965, size: 64, offset: 128)
!2965 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2966, line: 25, baseType: !2967)
!2966 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2966, line: 23, size: 64, elements: !2968)
!2968 = !{!2969}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2967, file: !2966, line: 24, baseType: !657, size: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2950, file: !2951, line: 97, baseType: !985, size: 64, offset: 640)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2950, file: !2951, line: 100, baseType: !406, size: 32, offset: 704)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2950, file: !2951, line: 106, baseType: !406, size: 32, offset: 736)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2950, file: !2951, line: 107, baseType: !489, size: 64, offset: 768)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2950, file: !2951, line: 110, baseType: !406, size: 32, offset: 832)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2950, file: !2951, line: 111, baseType: !7, size: 32, offset: 864)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2950, file: !2951, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2950, file: !2951, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2950, file: !2951, line: 128, baseType: !406, size: 32, offset: 928)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2950, file: !2951, line: 129, baseType: !372, size: 128, offset: 960)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2950, file: !2951, line: 132, baseType: !575, size: 512, offset: 1088)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2950, file: !2951, line: 133, baseType: !583, size: 64, offset: 1600)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2950, file: !2951, line: 140, baseType: !2983, size: 256, offset: 1664)
!2983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2984, size: 256, elements: !2470)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2951, line: 38, size: 128, elements: !2985)
!2985 = !{!2986, !2987}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2984, file: !2951, line: 39, baseType: !535, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2984, file: !2951, line: 40, baseType: !535, size: 64, offset: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2950, file: !2951, line: 146, baseType: !2989, size: 192, offset: 1920)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2951, line: 66, size: 192, elements: !2990)
!2990 = !{!2991}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2989, file: !2951, line: 67, baseType: !2992, size: 192)
!2992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2951, line: 47, size: 192, elements: !2993)
!2993 = !{!2994, !2995, !2996}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2992, file: !2951, line: 48, baseType: !1112, size: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2992, file: !2951, line: 49, baseType: !1112, size: 64, offset: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2992, file: !2951, line: 50, baseType: !1112, size: 64, offset: 128)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2950, file: !2951, line: 150, baseType: !2911, size: 640, offset: 2112)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2950, file: !2951, line: 153, baseType: !2999, size: 256, offset: 2752)
!2999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2422, size: 256, elements: !2430)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2950, file: !2951, line: 159, baseType: !2422, size: 64, offset: 3008)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2950, file: !2951, line: 162, baseType: !406, size: 32, offset: 3072)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2950, file: !2951, line: 164, baseType: !3003, size: 64, offset: 3136)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2951, line: 164, flags: DIFlagFwdDecl)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2950, file: !2951, line: 175, baseType: !3006, size: 32, offset: 3200)
!3006 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !622, line: 805, baseType: !3007)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !622, line: 798, size: 32, elements: !3008)
!3008 = !{!3009, !3010}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3007, file: !622, line: 803, baseType: !742, size: 32)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3007, file: !622, line: 804, baseType: !1093, offset: 32)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2950, file: !2951, line: 176, baseType: !535, size: 64, offset: 3264)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2950, file: !2951, line: 176, baseType: !535, size: 64, offset: 3328)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2950, file: !2951, line: 176, baseType: !535, size: 64, offset: 3392)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2950, file: !2951, line: 176, baseType: !535, size: 64, offset: 3456)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2950, file: !2951, line: 177, baseType: !535, size: 64, offset: 3520)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2950, file: !2951, line: 178, baseType: !535, size: 64, offset: 3584)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2950, file: !2951, line: 179, baseType: !2899, size: 128, offset: 3648)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2950, file: !2951, line: 180, baseType: !362, size: 64, offset: 3776)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2950, file: !2951, line: 180, baseType: !362, size: 64, offset: 3840)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2950, file: !2951, line: 180, baseType: !362, size: 64, offset: 3904)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2950, file: !2951, line: 180, baseType: !362, size: 64, offset: 3968)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2950, file: !2951, line: 181, baseType: !362, size: 64, offset: 4032)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2950, file: !2951, line: 181, baseType: !362, size: 64, offset: 4096)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2950, file: !2951, line: 181, baseType: !362, size: 64, offset: 4160)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2950, file: !2951, line: 181, baseType: !362, size: 64, offset: 4224)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2950, file: !2951, line: 182, baseType: !362, size: 64, offset: 4288)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2950, file: !2951, line: 182, baseType: !362, size: 64, offset: 4352)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2950, file: !2951, line: 182, baseType: !362, size: 64, offset: 4416)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2950, file: !2951, line: 182, baseType: !362, size: 64, offset: 4480)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2950, file: !2951, line: 183, baseType: !362, size: 64, offset: 4544)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2950, file: !2951, line: 183, baseType: !362, size: 64, offset: 4608)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2950, file: !2951, line: 184, baseType: !3033, offset: 4672)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3034, line: 12, elements: !472)
!3034 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2950, file: !2951, line: 192, baseType: !537, size: 64, offset: 4672)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2950, file: !2951, line: 203, baseType: !3037, size: 2048, offset: 4736)
!3037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3038, size: 2048, elements: !1639)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3039, line: 43, size: 128, elements: !3040)
!3039 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!3040 = !{!3041, !3042}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3038, file: !3039, line: 44, baseType: !927, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3038, file: !3039, line: 45, baseType: !927, size: 64, offset: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2950, file: !2951, line: 220, baseType: !836, size: 8, offset: 6784)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2950, file: !2951, line: 221, baseType: !2511, size: 16, offset: 6800)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2950, file: !2951, line: 222, baseType: !2511, size: 16, offset: 6816)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2950, file: !2951, line: 224, baseType: !665, size: 64, offset: 6848)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2950, file: !2951, line: 227, baseType: !1360, size: 192, offset: 6912)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2950, file: !2951, line: 233, baseType: !1360, size: 192, offset: 7104)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !490, file: !491, line: 970, baseType: !3050, size: 64, offset: 9280)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2951, line: 20, size: 16576, elements: !3052)
!3052 = !{!3053, !3054, !3055, !3056}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3051, file: !2951, line: 21, baseType: !1093)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3051, file: !2951, line: 22, baseType: !503, size: 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3051, file: !2951, line: 23, baseType: !1592, size: 128, offset: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3051, file: !2951, line: 24, baseType: !3057, size: 16384, offset: 192)
!3057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3058, size: 16384, elements: !2107)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2961, line: 49, size: 256, elements: !3059)
!3059 = !{!3060}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3058, file: !2961, line: 50, baseType: !3061, size: 256)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2961, line: 35, size: 256, elements: !3062)
!3062 = !{!3063, !3070, !3071, !3077}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3061, file: !2961, line: 37, baseType: !3064, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3065, line: 19, baseType: !3066)
!3065 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3065, line: 18, baseType: !3068)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{null, !406}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3061, file: !2961, line: 38, baseType: !362, size: 64, offset: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3061, file: !2961, line: 44, baseType: !3072, size: 64, offset: 128)
!3072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3065, line: 22, baseType: !3073)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3065, line: 21, baseType: !3075)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{null}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3061, file: !2961, line: 46, baseType: !2965, size: 64, offset: 192)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !490, file: !491, line: 971, baseType: !2965, size: 64, offset: 9344)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !490, file: !491, line: 972, baseType: !2965, size: 64, offset: 9408)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !490, file: !491, line: 974, baseType: !2965, size: 64, offset: 9472)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !490, file: !491, line: 975, baseType: !2960, size: 192, offset: 9536)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !490, file: !491, line: 976, baseType: !362, size: 64, offset: 9728)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !490, file: !491, line: 977, baseType: !925, size: 64, offset: 9792)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !490, file: !491, line: 978, baseType: !7, size: 32, offset: 9856)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !490, file: !491, line: 980, baseType: !723, size: 64, offset: 9920)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !490, file: !491, line: 989, baseType: !3087, size: 128, offset: 9984)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3088, line: 35, size: 128, elements: !3089)
!3088 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!3089 = !{!3090, !3091, !3092}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3087, file: !3088, line: 36, baseType: !406, size: 32)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3087, file: !3088, line: 37, baseType: !508, size: 32, offset: 32)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3087, file: !3088, line: 38, baseType: !3093, size: 64, offset: 64)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3088, line: 23, flags: DIFlagFwdDecl)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !490, file: !491, line: 992, baseType: !535, size: 64, offset: 10112)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !490, file: !491, line: 993, baseType: !535, size: 64, offset: 10176)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !490, file: !491, line: 996, baseType: !1093, offset: 10240)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !490, file: !491, line: 999, baseType: !464, offset: 10240)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !490, file: !491, line: 1001, baseType: !3100, size: 64, offset: 10240)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !491, line: 636, size: 64, elements: !3101)
!3101 = !{!3102}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3100, file: !491, line: 637, baseType: !3103, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !490, file: !491, line: 1005, baseType: !474, size: 128, offset: 10304)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !490, file: !491, line: 1007, baseType: !489, size: 64, offset: 10432)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !490, file: !491, line: 1009, baseType: !3107, size: 64, offset: 10496)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !491, line: 1009, flags: DIFlagFwdDecl)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !490, file: !491, line: 1043, baseType: !363, size: 64, offset: 10560)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !490, file: !491, line: 1046, baseType: !3111, size: 64, offset: 10624)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !491, line: 41, flags: DIFlagFwdDecl)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !490, file: !491, line: 1050, baseType: !3114, size: 64, offset: 10688)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !491, line: 42, flags: DIFlagFwdDecl)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !490, file: !491, line: 1054, baseType: !3117, size: 64, offset: 10752)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !491, line: 55, flags: DIFlagFwdDecl)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !490, file: !491, line: 1056, baseType: !1539, size: 64, offset: 10816)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !490, file: !491, line: 1058, baseType: !3121, size: 64, offset: 10880)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3123, line: 99, size: 704, elements: !3124)
!3123 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!3124 = !{!3125, !3126, !3127, !3128, !3129, !3130, !3131, !3150, !3151}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3122, file: !3123, line: 100, baseType: !1110, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3122, file: !3123, line: 101, baseType: !508, size: 32, offset: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3122, file: !3123, line: 102, baseType: !508, size: 32, offset: 96)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3122, file: !3123, line: 105, baseType: !1093, offset: 128)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3122, file: !3123, line: 107, baseType: !384, size: 16, offset: 128)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !3122, file: !3123, line: 109, baseType: !1089, size: 128, offset: 192)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !3122, file: !3123, line: 110, baseType: !3132, size: 64, offset: 320)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !3123, line: 73, size: 448, elements: !3134)
!3134 = !{!3135, !3138, !3139, !3144, !3149}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3133, file: !3123, line: 74, baseType: !3136, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !3123, line: 74, flags: DIFlagFwdDecl)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !3133, file: !3123, line: 75, baseType: !3121, size: 64, offset: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, scope: !3133, file: !3123, line: 83, baseType: !3140, size: 128, offset: 128)
!3140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3133, file: !3123, line: 83, size: 128, elements: !3141)
!3141 = !{!3142, !3143}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !3140, file: !3123, line: 84, baseType: !372, size: 128)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !3140, file: !3123, line: 85, baseType: !1270, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, scope: !3133, file: !3123, line: 87, baseType: !3145, size: 128, offset: 256)
!3145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3133, file: !3123, line: 87, size: 128, elements: !3146)
!3146 = !{!3147, !3148}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !3145, file: !3123, line: 88, baseType: !989, size: 128)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !3145, file: !3123, line: 89, baseType: !720, size: 128, align: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3133, file: !3123, line: 92, baseType: !7, size: 32, offset: 384)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !3122, file: !3123, line: 111, baseType: !985, size: 64, offset: 384)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !3122, file: !3123, line: 113, baseType: !1750, size: 256, offset: 448)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !490, file: !491, line: 1061, baseType: !3153, size: 64, offset: 10944)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !491, line: 43, flags: DIFlagFwdDecl)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !490, file: !491, line: 1064, baseType: !362, size: 64, offset: 11008)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !490, file: !491, line: 1065, baseType: !3157, size: 64, offset: 11072)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2961, line: 14, baseType: !3159)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2961, line: 12, size: 384, elements: !3160)
!3160 = !{!3161}
!3161 = !DIDerivedType(tag: DW_TAG_member, scope: !3159, file: !2961, line: 13, baseType: !3162, size: 384)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3159, file: !2961, line: 13, size: 384, elements: !3163)
!3163 = !{!3164, !3165, !3166, !3167}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3162, file: !2961, line: 13, baseType: !406, size: 32)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3162, file: !2961, line: 13, baseType: !406, size: 32, offset: 32)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3162, file: !2961, line: 13, baseType: !406, size: 32, offset: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3162, file: !2961, line: 13, baseType: !3168, size: 256, offset: 128)
!3168 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3169, line: 32, size: 256, elements: !3170)
!3169 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!3170 = !{!3171, !3176, !3189, !3195, !3204, !3224, !3229}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3168, file: !3169, line: 37, baseType: !3172, size: 64)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3168, file: !3169, line: 34, size: 64, elements: !3173)
!3173 = !{!3174, !3175}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3172, file: !3169, line: 35, baseType: !2876, size: 32)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3172, file: !3169, line: 36, baseType: !784, size: 32, offset: 32)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3168, file: !3169, line: 45, baseType: !3177, size: 192)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3168, file: !3169, line: 40, size: 192, elements: !3178)
!3178 = !{!3179, !3181, !3182, !3188}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3177, file: !3169, line: 41, baseType: !3180, size: 32)
!3180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !619, line: 95, baseType: !406)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3177, file: !3169, line: 42, baseType: !406, size: 32, offset: 32)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3177, file: !3169, line: 43, baseType: !3183, size: 64, offset: 64)
!3183 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3169, line: 11, baseType: !3184)
!3184 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3169, line: 8, size: 64, elements: !3185)
!3185 = !{!3186, !3187}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3184, file: !3169, line: 9, baseType: !406, size: 32)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3184, file: !3169, line: 10, baseType: !363, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3177, file: !3169, line: 44, baseType: !406, size: 32, offset: 128)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3168, file: !3169, line: 52, baseType: !3190, size: 128)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3168, file: !3169, line: 48, size: 128, elements: !3191)
!3191 = !{!3192, !3193, !3194}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3190, file: !3169, line: 49, baseType: !2876, size: 32)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3190, file: !3169, line: 50, baseType: !784, size: 32, offset: 32)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3190, file: !3169, line: 51, baseType: !3183, size: 64, offset: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3168, file: !3169, line: 61, baseType: !3196, size: 256)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3168, file: !3169, line: 55, size: 256, elements: !3197)
!3197 = !{!3198, !3199, !3200, !3201, !3203}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3196, file: !3169, line: 56, baseType: !2876, size: 32)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3196, file: !3169, line: 57, baseType: !784, size: 32, offset: 32)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3196, file: !3169, line: 58, baseType: !406, size: 32, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3196, file: !3169, line: 59, baseType: !3202, size: 64, offset: 128)
!3202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !619, line: 94, baseType: !924)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3196, file: !3169, line: 60, baseType: !3202, size: 64, offset: 192)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3168, file: !3169, line: 95, baseType: !3205, size: 256)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3168, file: !3169, line: 64, size: 256, elements: !3206)
!3206 = !{!3207, !3208}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3205, file: !3169, line: 65, baseType: !363, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, scope: !3205, file: !3169, line: 77, baseType: !3209, size: 192, offset: 64)
!3209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3205, file: !3169, line: 77, size: 192, elements: !3210)
!3210 = !{!3211, !3212, !3219}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3209, file: !3169, line: 82, baseType: !2511, size: 16)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3209, file: !3169, line: 88, baseType: !3213, size: 192)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3209, file: !3169, line: 84, size: 192, elements: !3214)
!3214 = !{!3215, !3217, !3218}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3213, file: !3169, line: 85, baseType: !3216, size: 64)
!3216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 64, elements: !613)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3213, file: !3169, line: 86, baseType: !363, size: 64, offset: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3213, file: !3169, line: 87, baseType: !363, size: 64, offset: 128)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3209, file: !3169, line: 93, baseType: !3220, size: 96)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3209, file: !3169, line: 90, size: 96, elements: !3221)
!3221 = !{!3222, !3223}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3220, file: !3169, line: 91, baseType: !3216, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3220, file: !3169, line: 92, baseType: !443, size: 32, offset: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3168, file: !3169, line: 101, baseType: !3225, size: 128)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3168, file: !3169, line: 98, size: 128, elements: !3226)
!3226 = !{!3227, !3228}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3225, file: !3169, line: 99, baseType: !317, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3225, file: !3169, line: 100, baseType: !406, size: 32, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3168, file: !3169, line: 108, baseType: !3230, size: 128)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3168, file: !3169, line: 104, size: 128, elements: !3231)
!3231 = !{!3232, !3233, !3234}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3230, file: !3169, line: 105, baseType: !363, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3230, file: !3169, line: 106, baseType: !406, size: 32, offset: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3230, file: !3169, line: 107, baseType: !7, size: 32, offset: 96)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !490, file: !491, line: 1067, baseType: !3033, offset: 11136)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !490, file: !491, line: 1099, baseType: !3237, size: 64, offset: 11136)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !491, line: 56, flags: DIFlagFwdDecl)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !490, file: !491, line: 1103, baseType: !372, size: 128, offset: 11200)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !490, file: !491, line: 1104, baseType: !3241, size: 64, offset: 11328)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !491, line: 46, flags: DIFlagFwdDecl)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !490, file: !491, line: 1105, baseType: !1360, size: 192, offset: 11392)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !490, file: !491, line: 1106, baseType: !7, size: 32, offset: 11584)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !490, file: !491, line: 1109, baseType: !3246, size: 128, offset: 11648)
!3246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3247, size: 128, elements: !2470)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !491, line: 51, flags: DIFlagFwdDecl)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !490, file: !491, line: 1110, baseType: !1360, size: 192, offset: 11776)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !490, file: !491, line: 1111, baseType: !372, size: 128, offset: 11968)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !490, file: !491, line: 1173, baseType: !3252, size: 64, offset: 12096)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3254, line: 62, size: 256, align: 256, elements: !3255)
!3254 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!3255 = !{!3256, !3257, !3258, !3263}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3253, file: !3254, line: 75, baseType: !443, size: 32)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3253, file: !3254, line: 90, baseType: !443, size: 32, offset: 32)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3253, file: !3254, line: 124, baseType: !3259, size: 64, offset: 64)
!3259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3253, file: !3254, line: 109, size: 64, elements: !3260)
!3260 = !{!3261, !3262}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !3259, file: !3254, line: 110, baseType: !536, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3259, file: !3254, line: 112, baseType: !536, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3253, file: !3254, line: 144, baseType: !443, size: 32, offset: 128)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !490, file: !491, line: 1174, baseType: !442, size: 32, offset: 12160)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !490, file: !491, line: 1179, baseType: !362, size: 64, offset: 12224)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !490, file: !491, line: 1182, baseType: !3267, size: 128, offset: 12288)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2702, line: 76, size: 128, elements: !3268)
!3268 = !{!3269, !3274, !3275}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3267, file: !2702, line: 85, baseType: !3270, size: 64)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3271, line: 7, size: 64, elements: !3272)
!3271 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!3272 = !{!3273}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3270, file: !3271, line: 12, baseType: !654, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3267, file: !2702, line: 88, baseType: !836, size: 8, offset: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3267, file: !2702, line: 95, baseType: !836, size: 8, offset: 72)
!3276 = !DIDerivedType(tag: DW_TAG_member, scope: !490, file: !491, line: 1184, baseType: !3277, size: 128, offset: 12416)
!3277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !490, file: !491, line: 1184, size: 128, elements: !3278)
!3278 = !{!3279, !3280}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3277, file: !491, line: 1185, baseType: !503, size: 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3277, file: !491, line: 1186, baseType: !720, size: 128, align: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !490, file: !491, line: 1190, baseType: !2016, size: 64, offset: 12544)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !490, file: !491, line: 1192, baseType: !3283, size: 128, offset: 12608)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2702, line: 64, size: 128, elements: !3284)
!3284 = !{!3285, !3286, !3287}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3283, file: !2702, line: 65, baseType: !1072, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3283, file: !2702, line: 67, baseType: !443, size: 32, offset: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3283, file: !2702, line: 68, baseType: !443, size: 32, offset: 96)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !490, file: !491, line: 1206, baseType: !406, size: 32, offset: 12736)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !490, file: !491, line: 1207, baseType: !406, size: 32, offset: 12768)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !490, file: !491, line: 1209, baseType: !362, size: 64, offset: 12800)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !490, file: !491, line: 1219, baseType: !535, size: 64, offset: 12864)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !490, file: !491, line: 1220, baseType: !535, size: 64, offset: 12928)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !490, file: !491, line: 1317, baseType: !406, size: 32, offset: 12992)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !490, file: !491, line: 1319, baseType: !489, size: 64, offset: 13056)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !490, file: !491, line: 1322, baseType: !3296, size: 64, offset: 13120)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3298, line: 56, size: 512, elements: !3299)
!3298 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!3299 = !{!3300, !3301, !3302, !3303, !3304, !3305, !3306, !3308}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3297, file: !3298, line: 57, baseType: !3296, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3297, file: !3298, line: 58, baseType: !363, size: 64, offset: 64)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3297, file: !3298, line: 59, baseType: !362, size: 64, offset: 128)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3297, file: !3298, line: 60, baseType: !362, size: 64, offset: 192)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3297, file: !3298, line: 61, baseType: !1157, size: 64, offset: 256)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3297, file: !3298, line: 62, baseType: !7, size: 32, offset: 320)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3297, file: !3298, line: 63, baseType: !3307, size: 64, offset: 384)
!3307 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !368, line: 153, baseType: !535)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3297, file: !3298, line: 64, baseType: !2198, size: 64, offset: 448)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !490, file: !491, line: 1326, baseType: !503, size: 32, offset: 13184)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !490, file: !491, line: 1342, baseType: !363, size: 64, offset: 13248)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !490, file: !491, line: 1343, baseType: !536, size: 64, offset: 13312)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !490, file: !491, line: 1344, baseType: !535, size: 64, offset: 13376)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !490, file: !491, line: 1345, baseType: !536, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !490, file: !491, line: 1346, baseType: !536, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !490, file: !491, line: 1347, baseType: !536, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !490, file: !491, line: 1348, baseType: !720, size: 128, align: 64, offset: 13504)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !490, file: !491, line: 1358, baseType: !3318, size: 34816, offset: 13824)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3319, line: 485, size: 34816, elements: !3320)
!3319 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3320 = !{!3321, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3350, !3351, !3352, !3353, !3354, !3355, !3358, !3359, !3360}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3318, file: !3319, line: 487, baseType: !3322, size: 192)
!3322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3323, size: 192, elements: !1001)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3324, line: 16, size: 64, elements: !3325)
!3324 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!3325 = !{!3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3323, file: !3324, line: 17, baseType: !425, size: 16)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3323, file: !3324, line: 18, baseType: !425, size: 16, offset: 16)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3323, file: !3324, line: 19, baseType: !425, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3323, file: !3324, line: 19, baseType: !425, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3323, file: !3324, line: 19, baseType: !425, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3323, file: !3324, line: 19, baseType: !425, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3323, file: !3324, line: 19, baseType: !425, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3323, file: !3324, line: 20, baseType: !425, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3323, file: !3324, line: 20, baseType: !425, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3323, file: !3324, line: 20, baseType: !425, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3323, file: !3324, line: 20, baseType: !425, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3323, file: !3324, line: 20, baseType: !425, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3323, file: !3324, line: 20, baseType: !425, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3318, file: !3319, line: 491, baseType: !362, size: 64, offset: 192)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3318, file: !3319, line: 495, baseType: !384, size: 16, offset: 256)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3318, file: !3319, line: 496, baseType: !384, size: 16, offset: 272)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3318, file: !3319, line: 497, baseType: !384, size: 16, offset: 288)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3318, file: !3319, line: 498, baseType: !384, size: 16, offset: 304)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3318, file: !3319, line: 502, baseType: !362, size: 64, offset: 320)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3318, file: !3319, line: 503, baseType: !362, size: 64, offset: 384)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3318, file: !3319, line: 514, baseType: !3347, size: 256, offset: 448)
!3347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3348, size: 256, elements: !2430)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3319, line: 483, flags: DIFlagFwdDecl)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3318, file: !3319, line: 516, baseType: !362, size: 64, offset: 704)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3318, file: !3319, line: 518, baseType: !362, size: 64, offset: 768)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3318, file: !3319, line: 520, baseType: !362, size: 64, offset: 832)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3318, file: !3319, line: 521, baseType: !362, size: 64, offset: 896)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3318, file: !3319, line: 522, baseType: !362, size: 64, offset: 960)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3318, file: !3319, line: 528, baseType: !3356, size: 64, offset: 1024)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3319, line: 10, flags: DIFlagFwdDecl)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3318, file: !3319, line: 535, baseType: !362, size: 64, offset: 1088)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3318, file: !3319, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3318, file: !3319, line: 540, baseType: !3361, size: 33280, offset: 1536)
!3361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3362, line: 317, size: 33280, elements: !3363)
!3362 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!3363 = !{!3364, !3365, !3366}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3361, file: !3362, line: 330, baseType: !7, size: 32)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3361, file: !3362, line: 337, baseType: !362, size: 64, offset: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3361, file: !3362, line: 348, baseType: !3367, size: 32768, offset: 512)
!3367 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3362, line: 304, size: 32768, elements: !3368)
!3368 = !{!3369, !3382, !3419, !3469, !3482}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3367, file: !3362, line: 305, baseType: !3370, size: 896)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3362, line: 12, size: 896, elements: !3371)
!3371 = !{!3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3381}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3370, file: !3362, line: 13, baseType: !442, size: 32)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3370, file: !3362, line: 14, baseType: !442, size: 32, offset: 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3370, file: !3362, line: 15, baseType: !442, size: 32, offset: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3370, file: !3362, line: 16, baseType: !442, size: 32, offset: 96)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3370, file: !3362, line: 17, baseType: !442, size: 32, offset: 128)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3370, file: !3362, line: 18, baseType: !442, size: 32, offset: 160)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3370, file: !3362, line: 19, baseType: !442, size: 32, offset: 192)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3370, file: !3362, line: 22, baseType: !3380, size: 640, offset: 224)
!3380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 640, elements: !389)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3370, file: !3362, line: 25, baseType: !442, size: 32, offset: 864)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3367, file: !3362, line: 306, baseType: !3383, size: 4096, align: 128)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3362, line: 34, size: 4096, align: 128, elements: !3384)
!3384 = !{!3385, !3386, !3387, !3388, !3389, !3404, !3405, !3406, !3408, !3410, !3414}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3383, file: !3362, line: 35, baseType: !425, size: 16)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3383, file: !3362, line: 36, baseType: !425, size: 16, offset: 16)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3383, file: !3362, line: 37, baseType: !425, size: 16, offset: 32)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3383, file: !3362, line: 38, baseType: !425, size: 16, offset: 48)
!3389 = !DIDerivedType(tag: DW_TAG_member, scope: !3383, file: !3362, line: 39, baseType: !3390, size: 128, offset: 64)
!3390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3383, file: !3362, line: 39, size: 128, elements: !3391)
!3391 = !{!3392, !3397}
!3392 = !DIDerivedType(tag: DW_TAG_member, scope: !3390, file: !3362, line: 40, baseType: !3393, size: 128)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3390, file: !3362, line: 40, size: 128, elements: !3394)
!3394 = !{!3395, !3396}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3393, file: !3362, line: 41, baseType: !535, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3393, file: !3362, line: 42, baseType: !535, size: 64, offset: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, scope: !3390, file: !3362, line: 44, baseType: !3398, size: 128)
!3398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3390, file: !3362, line: 44, size: 128, elements: !3399)
!3399 = !{!3400, !3401, !3402, !3403}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3398, file: !3362, line: 45, baseType: !442, size: 32)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3398, file: !3362, line: 46, baseType: !442, size: 32, offset: 32)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3398, file: !3362, line: 47, baseType: !442, size: 32, offset: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3398, file: !3362, line: 48, baseType: !442, size: 32, offset: 96)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3383, file: !3362, line: 51, baseType: !442, size: 32, offset: 192)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3383, file: !3362, line: 52, baseType: !442, size: 32, offset: 224)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3383, file: !3362, line: 55, baseType: !3407, size: 1024, offset: 256)
!3407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 1024, elements: !1630)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3383, file: !3362, line: 58, baseType: !3409, size: 2048, offset: 1280)
!3409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 2048, elements: !2107)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3383, file: !3362, line: 60, baseType: !3411, size: 384, offset: 3328)
!3411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 384, elements: !3412)
!3412 = !{!3413}
!3413 = !DISubrange(count: 12)
!3414 = !DIDerivedType(tag: DW_TAG_member, scope: !3383, file: !3362, line: 62, baseType: !3415, size: 384, offset: 3712)
!3415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3383, file: !3362, line: 62, size: 384, elements: !3416)
!3416 = !{!3417, !3418}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3415, file: !3362, line: 63, baseType: !3411, size: 384)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3415, file: !3362, line: 64, baseType: !3411, size: 384)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3367, file: !3362, line: 307, baseType: !3420, size: 1088)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3362, line: 79, size: 1088, elements: !3421)
!3421 = !{!3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3468}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3420, file: !3362, line: 80, baseType: !442, size: 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3420, file: !3362, line: 81, baseType: !442, size: 32, offset: 32)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3420, file: !3362, line: 82, baseType: !442, size: 32, offset: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3420, file: !3362, line: 83, baseType: !442, size: 32, offset: 96)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3420, file: !3362, line: 84, baseType: !442, size: 32, offset: 128)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3420, file: !3362, line: 85, baseType: !442, size: 32, offset: 160)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3420, file: !3362, line: 86, baseType: !442, size: 32, offset: 192)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3420, file: !3362, line: 88, baseType: !3380, size: 640, offset: 224)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3420, file: !3362, line: 89, baseType: !427, size: 8, offset: 864)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3420, file: !3362, line: 90, baseType: !427, size: 8, offset: 872)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3420, file: !3362, line: 91, baseType: !427, size: 8, offset: 880)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3420, file: !3362, line: 92, baseType: !427, size: 8, offset: 888)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3420, file: !3362, line: 93, baseType: !427, size: 8, offset: 896)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3420, file: !3362, line: 94, baseType: !427, size: 8, offset: 904)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3420, file: !3362, line: 95, baseType: !3437, size: 64, offset: 960)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3439, line: 11, size: 128, elements: !3440)
!3439 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3440 = !{!3441, !3442}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3438, file: !3439, line: 12, baseType: !317, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3438, file: !3439, line: 13, baseType: !3443, size: 64, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3445, line: 56, size: 1344, elements: !3446)
!3445 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3446 = !{!3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3444, file: !3445, line: 61, baseType: !362, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3444, file: !3445, line: 62, baseType: !362, size: 64, offset: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3444, file: !3445, line: 63, baseType: !362, size: 64, offset: 128)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3444, file: !3445, line: 64, baseType: !362, size: 64, offset: 192)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3444, file: !3445, line: 65, baseType: !362, size: 64, offset: 256)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3444, file: !3445, line: 66, baseType: !362, size: 64, offset: 320)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3444, file: !3445, line: 68, baseType: !362, size: 64, offset: 384)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3444, file: !3445, line: 69, baseType: !362, size: 64, offset: 448)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3444, file: !3445, line: 70, baseType: !362, size: 64, offset: 512)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3444, file: !3445, line: 71, baseType: !362, size: 64, offset: 576)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3444, file: !3445, line: 72, baseType: !362, size: 64, offset: 640)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3444, file: !3445, line: 73, baseType: !362, size: 64, offset: 704)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3444, file: !3445, line: 74, baseType: !362, size: 64, offset: 768)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3444, file: !3445, line: 75, baseType: !362, size: 64, offset: 832)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3444, file: !3445, line: 76, baseType: !362, size: 64, offset: 896)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3444, file: !3445, line: 81, baseType: !362, size: 64, offset: 960)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3444, file: !3445, line: 83, baseType: !362, size: 64, offset: 1024)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3444, file: !3445, line: 84, baseType: !362, size: 64, offset: 1088)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3444, file: !3445, line: 85, baseType: !362, size: 64, offset: 1152)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3444, file: !3445, line: 86, baseType: !362, size: 64, offset: 1216)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3444, file: !3445, line: 87, baseType: !362, size: 64, offset: 1280)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3420, file: !3362, line: 96, baseType: !442, size: 32, offset: 1024)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3367, file: !3362, line: 308, baseType: !3470, size: 4608, align: 512)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3362, line: 289, size: 4608, align: 512, elements: !3471)
!3471 = !{!3472, !3473, !3480}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3470, file: !3362, line: 290, baseType: !3383, size: 4096, align: 128)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3470, file: !3362, line: 291, baseType: !3474, size: 512, offset: 4096)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3362, line: 268, size: 512, elements: !3475)
!3475 = !{!3476, !3477, !3478}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3474, file: !3362, line: 269, baseType: !535, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3474, file: !3362, line: 270, baseType: !535, size: 64, offset: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3474, file: !3362, line: 271, baseType: !3479, size: 384, offset: 128)
!3479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !535, size: 384, elements: !2529)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3470, file: !3362, line: 292, baseType: !3481, offset: 4608)
!3481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, elements: !2625)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3367, file: !3362, line: 309, baseType: !3483, size: 32768)
!3483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 32768, elements: !3484)
!3484 = !{!3485}
!3485 = !DISubrange(count: 4096)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !393, file: !298, line: 704, baseType: !460, size: 192, offset: 512)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !393, file: !298, line: 706, baseType: !406, size: 32, offset: 704)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !393, file: !298, line: 707, baseType: !406, size: 32, offset: 736)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !393, file: !298, line: 708, baseType: !3490, size: 5568, offset: 768)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !237, line: 461, size: 5568, elements: !3491)
!3491 = !{!3492, !3493, !3495, !3498, !3499, !3550, !3641, !3642, !3643, !3644, !3645, !3654, !3759, !3772, !3967, !3968, !3972, !3974, !3975, !3976, !3980, !3986, !3987, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !4028, !4029, !4030, !4033, !4036, !4037, !4038, !4039}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3490, file: !237, line: 462, baseType: !2066, size: 512)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3490, file: !237, line: 463, baseType: !3494, size: 64, offset: 512)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3490, file: !237, line: 465, baseType: !3496, size: 64, offset: 576)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !237, line: 36, flags: DIFlagFwdDecl)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3490, file: !237, line: 467, baseType: !806, size: 64, offset: 640)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3490, file: !237, line: 468, baseType: !3500, size: 64, offset: 704)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3502)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !237, line: 87, size: 384, elements: !3503)
!3503 = !{!3504, !3505, !3506, !3510, !3515, !3519}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3502, file: !237, line: 88, baseType: !806, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3502, file: !237, line: 89, baseType: !2145, size: 64, offset: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3502, file: !237, line: 90, baseType: !3507, size: 64, offset: 128)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!406, !3494, !2100}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3502, file: !237, line: 91, baseType: !3511, size: 64, offset: 192)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!831, !3494, !3514, !2215, !2216}
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3502, file: !237, line: 93, baseType: !3516, size: 64, offset: 256)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{null, !3494}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3502, file: !237, line: 95, baseType: !3520, size: 64, offset: 320)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3522)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !244, line: 278, size: 1472, elements: !3523)
!3523 = !{!3524, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3522, file: !244, line: 279, baseType: !3525, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!406, !3494}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3522, file: !244, line: 280, baseType: !3516, size: 64, offset: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3522, file: !244, line: 281, baseType: !3525, size: 64, offset: 128)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3522, file: !244, line: 282, baseType: !3525, size: 64, offset: 192)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3522, file: !244, line: 283, baseType: !3525, size: 64, offset: 256)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3522, file: !244, line: 284, baseType: !3525, size: 64, offset: 320)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3522, file: !244, line: 285, baseType: !3525, size: 64, offset: 384)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3522, file: !244, line: 286, baseType: !3525, size: 64, offset: 448)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3522, file: !244, line: 287, baseType: !3525, size: 64, offset: 512)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3522, file: !244, line: 288, baseType: !3525, size: 64, offset: 576)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3522, file: !244, line: 289, baseType: !3525, size: 64, offset: 640)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3522, file: !244, line: 290, baseType: !3525, size: 64, offset: 704)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3522, file: !244, line: 291, baseType: !3525, size: 64, offset: 768)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3522, file: !244, line: 292, baseType: !3525, size: 64, offset: 832)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3522, file: !244, line: 293, baseType: !3525, size: 64, offset: 896)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3522, file: !244, line: 294, baseType: !3525, size: 64, offset: 960)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3522, file: !244, line: 295, baseType: !3525, size: 64, offset: 1024)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3522, file: !244, line: 296, baseType: !3525, size: 64, offset: 1088)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3522, file: !244, line: 297, baseType: !3525, size: 64, offset: 1152)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3522, file: !244, line: 298, baseType: !3525, size: 64, offset: 1216)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3522, file: !244, line: 299, baseType: !3525, size: 64, offset: 1280)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3522, file: !244, line: 300, baseType: !3525, size: 64, offset: 1344)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3522, file: !244, line: 301, baseType: !3525, size: 64, offset: 1408)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3490, file: !237, line: 470, baseType: !3551, size: 64, offset: 768)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3553, line: 82, size: 1408, elements: !3554)
!3553 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3554 = !{!3555, !3556, !3557, !3558, !3559, !3560, !3561, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3636, !3639, !3640}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3552, file: !3553, line: 83, baseType: !806, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3552, file: !3553, line: 84, baseType: !806, size: 64, offset: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3552, file: !3553, line: 85, baseType: !3494, size: 64, offset: 128)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3552, file: !3553, line: 86, baseType: !2145, size: 64, offset: 192)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3552, file: !3553, line: 87, baseType: !2145, size: 64, offset: 256)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3552, file: !3553, line: 88, baseType: !2145, size: 64, offset: 320)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3552, file: !3553, line: 90, baseType: !3562, size: 64, offset: 384)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!406, !3494, !3565}
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !231, line: 95, size: 1152, elements: !3567)
!3567 = !{!3568, !3569, !3570, !3571, !3572, !3573, !3574, !3587, !3600, !3601, !3602, !3603, !3604, !3612, !3613, !3614, !3615, !3616, !3617}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3566, file: !231, line: 96, baseType: !806, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3566, file: !231, line: 97, baseType: !3551, size: 64, offset: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3566, file: !231, line: 99, baseType: !364, size: 64, offset: 128)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3566, file: !231, line: 100, baseType: !806, size: 64, offset: 192)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3566, file: !231, line: 102, baseType: !836, size: 8, offset: 256)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3566, file: !231, line: 103, baseType: !230, size: 32, offset: 288)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3566, file: !231, line: 105, baseType: !3575, size: 64, offset: 320)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3577)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3578, line: 262, size: 1600, elements: !3579)
!3578 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3579 = !{!3580, !3581, !3582, !3586}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3577, file: !3578, line: 263, baseType: !1629, size: 256)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3577, file: !3578, line: 264, baseType: !1629, size: 256, offset: 256)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3577, file: !3578, line: 265, baseType: !3583, size: 1024, offset: 512)
!3583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 1024, elements: !3584)
!3584 = !{!3585}
!3585 = !DISubrange(count: 128)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3577, file: !3578, line: 266, baseType: !2198, size: 64, offset: 1536)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3566, file: !231, line: 106, baseType: !3588, size: 64, offset: 384)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3590)
!3590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3578, line: 210, size: 256, elements: !3591)
!3591 = !{!3592, !3596, !3598, !3599}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3590, file: !3578, line: 211, baseType: !3593, size: 72)
!3593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 72, elements: !3594)
!3594 = !{!3595}
!3595 = !DISubrange(count: 9)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3590, file: !3578, line: 212, baseType: !3597, size: 64, offset: 128)
!3597 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3578, line: 14, baseType: !362)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3590, file: !3578, line: 213, baseType: !443, size: 32, offset: 192)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3590, file: !3578, line: 214, baseType: !443, size: 32, offset: 224)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3566, file: !231, line: 108, baseType: !3525, size: 64, offset: 448)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3566, file: !231, line: 109, baseType: !3516, size: 64, offset: 512)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3566, file: !231, line: 110, baseType: !3525, size: 64, offset: 576)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3566, file: !231, line: 111, baseType: !3516, size: 64, offset: 640)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3566, file: !231, line: 112, baseType: !3605, size: 64, offset: 704)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!406, !3494, !3608}
!3608 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !244, line: 52, baseType: !3609)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !244, line: 50, size: 32, elements: !3610)
!3610 = !{!3611}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3609, file: !244, line: 51, baseType: !406, size: 32)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3566, file: !231, line: 113, baseType: !3525, size: 64, offset: 768)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3566, file: !231, line: 114, baseType: !2145, size: 64, offset: 832)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3566, file: !231, line: 115, baseType: !2145, size: 64, offset: 896)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3566, file: !231, line: 117, baseType: !3520, size: 64, offset: 960)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3566, file: !231, line: 118, baseType: !3516, size: 64, offset: 1024)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3566, file: !231, line: 120, baseType: !3618, size: 64, offset: 1088)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !231, line: 120, flags: DIFlagFwdDecl)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3552, file: !3553, line: 91, baseType: !3507, size: 64, offset: 448)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3552, file: !3553, line: 92, baseType: !3525, size: 64, offset: 512)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3552, file: !3553, line: 93, baseType: !3516, size: 64, offset: 576)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3552, file: !3553, line: 94, baseType: !3525, size: 64, offset: 640)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3552, file: !3553, line: 95, baseType: !3516, size: 64, offset: 704)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3552, file: !3553, line: 97, baseType: !3525, size: 64, offset: 768)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3552, file: !3553, line: 98, baseType: !3525, size: 64, offset: 832)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3552, file: !3553, line: 100, baseType: !3605, size: 64, offset: 896)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3552, file: !3553, line: 101, baseType: !3525, size: 64, offset: 960)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3552, file: !3553, line: 103, baseType: !3525, size: 64, offset: 1024)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3552, file: !3553, line: 105, baseType: !3525, size: 64, offset: 1088)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3552, file: !3553, line: 107, baseType: !3520, size: 64, offset: 1152)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3552, file: !3553, line: 109, baseType: !3633, size: 64, offset: 1216)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3635)
!3635 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3553, line: 109, flags: DIFlagFwdDecl)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3552, file: !3553, line: 111, baseType: !3637, size: 64, offset: 1280)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3553, line: 111, flags: DIFlagFwdDecl)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3552, file: !3553, line: 112, baseType: !995, offset: 1344)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3552, file: !3553, line: 114, baseType: !836, size: 8, offset: 1344)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3490, file: !237, line: 471, baseType: !3565, size: 64, offset: 832)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3490, file: !237, line: 473, baseType: !363, size: 64, offset: 896)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3490, file: !237, line: 475, baseType: !363, size: 64, offset: 960)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3490, file: !237, line: 480, baseType: !1360, size: 192, offset: 1024)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3490, file: !237, line: 484, baseType: !3646, size: 576, offset: 1216)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !237, line: 361, size: 576, elements: !3647)
!3647 = !{!3648, !3649, !3650, !3651, !3652, !3653}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3646, file: !237, line: 362, baseType: !372, size: 128)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3646, file: !237, line: 363, baseType: !372, size: 128, offset: 128)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3646, file: !237, line: 364, baseType: !372, size: 128, offset: 256)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3646, file: !237, line: 365, baseType: !372, size: 128, offset: 384)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3646, file: !237, line: 366, baseType: !836, size: 8, offset: 512)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3646, file: !237, line: 367, baseType: !236, size: 32, offset: 544)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3490, file: !237, line: 485, baseType: !3655, size: 2304, offset: 1792)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !244, line: 565, size: 2304, elements: !3656)
!3656 = !{!3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3752, !3756}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3655, file: !244, line: 566, baseType: !3608, size: 32)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3655, file: !244, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3655, file: !244, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3655, file: !244, line: 569, baseType: !836, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3655, file: !244, line: 570, baseType: !836, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3655, file: !244, line: 571, baseType: !836, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3655, file: !244, line: 572, baseType: !836, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3655, file: !244, line: 573, baseType: !836, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3655, file: !244, line: 574, baseType: !836, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3655, file: !244, line: 575, baseType: !836, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3655, file: !244, line: 576, baseType: !836, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3655, file: !244, line: 577, baseType: !442, size: 32, offset: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3655, file: !244, line: 578, baseType: !1093, offset: 96)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3655, file: !244, line: 580, baseType: !372, size: 128, offset: 128)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3655, file: !244, line: 581, baseType: !2761, size: 192, offset: 256)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3655, file: !244, line: 582, baseType: !3673, size: 64, offset: 448)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3675, line: 43, size: 1472, elements: !3676)
!3675 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3676 = !{!3677, !3678, !3679, !3680, !3681, !3684, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3674, file: !3675, line: 44, baseType: !806, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3674, file: !3675, line: 45, baseType: !406, size: 32, offset: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3674, file: !3675, line: 46, baseType: !372, size: 128, offset: 128)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3674, file: !3675, line: 47, baseType: !1093, offset: 256)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3674, file: !3675, line: 48, baseType: !3682, size: 64, offset: 256)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !244, line: 533, flags: DIFlagFwdDecl)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3674, file: !3675, line: 49, baseType: !3685, size: 320, offset: 320)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3686, line: 11, size: 320, elements: !3687)
!3686 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3687 = !{!3688, !3689, !3690, !3695}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3685, file: !3686, line: 16, baseType: !989, size: 128)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3685, file: !3686, line: 17, baseType: !362, size: 64, offset: 128)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3685, file: !3686, line: 18, baseType: !3691, size: 64, offset: 192)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{null, !3694}
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3685, file: !3686, line: 19, baseType: !442, size: 32, offset: 256)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3674, file: !3675, line: 50, baseType: !362, size: 64, offset: 640)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3674, file: !3675, line: 51, baseType: !583, size: 64, offset: 704)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3674, file: !3675, line: 52, baseType: !583, size: 64, offset: 768)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3674, file: !3675, line: 53, baseType: !583, size: 64, offset: 832)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3674, file: !3675, line: 54, baseType: !583, size: 64, offset: 896)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3674, file: !3675, line: 55, baseType: !583, size: 64, offset: 960)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3674, file: !3675, line: 56, baseType: !362, size: 64, offset: 1024)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3674, file: !3675, line: 57, baseType: !362, size: 64, offset: 1088)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3674, file: !3675, line: 58, baseType: !362, size: 64, offset: 1152)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3674, file: !3675, line: 59, baseType: !362, size: 64, offset: 1216)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3674, file: !3675, line: 60, baseType: !362, size: 64, offset: 1280)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3674, file: !3675, line: 61, baseType: !3494, size: 64, offset: 1344)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3674, file: !3675, line: 62, baseType: !836, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3674, file: !3675, line: 63, baseType: !836, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3655, file: !244, line: 583, baseType: !836, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3655, file: !244, line: 584, baseType: !836, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3655, file: !244, line: 585, baseType: !836, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3655, file: !244, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3655, file: !244, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3655, file: !244, line: 592, baseType: !575, size: 512, offset: 576)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3655, file: !244, line: 593, baseType: !535, size: 64, offset: 1088)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3655, file: !244, line: 594, baseType: !1750, size: 256, offset: 1152)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3655, file: !244, line: 595, baseType: !1592, size: 128, offset: 1408)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3655, file: !244, line: 596, baseType: !3682, size: 64, offset: 1536)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3655, file: !244, line: 597, baseType: !508, size: 32, offset: 1600)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3655, file: !244, line: 598, baseType: !508, size: 32, offset: 1632)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3655, file: !244, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3655, file: !244, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3655, file: !244, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3655, file: !244, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3655, file: !244, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3655, file: !244, line: 604, baseType: !836, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3655, file: !244, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3655, file: !244, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3655, file: !244, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3655, file: !244, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3655, file: !244, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3655, file: !244, line: 610, baseType: !7, size: 32, offset: 1696)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3655, file: !244, line: 611, baseType: !243, size: 32, offset: 1728)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3655, file: !244, line: 612, baseType: !251, size: 32, offset: 1760)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3655, file: !244, line: 613, baseType: !406, size: 32, offset: 1792)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3655, file: !244, line: 614, baseType: !406, size: 32, offset: 1824)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3655, file: !244, line: 615, baseType: !535, size: 64, offset: 1856)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3655, file: !244, line: 616, baseType: !535, size: 64, offset: 1920)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3655, file: !244, line: 617, baseType: !535, size: 64, offset: 1984)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3655, file: !244, line: 618, baseType: !535, size: 64, offset: 2048)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3655, file: !244, line: 620, baseType: !3743, size: 64, offset: 2112)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !244, line: 536, size: 256, elements: !3745)
!3745 = !{!3746, !3747, !3748, !3749}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3744, file: !244, line: 537, baseType: !1093)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3744, file: !244, line: 538, baseType: !7, size: 32)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3744, file: !244, line: 540, baseType: !372, size: 128, offset: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3744, file: !244, line: 543, baseType: !3750, size: 64, offset: 192)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !244, line: 534, flags: DIFlagFwdDecl)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3655, file: !244, line: 621, baseType: !3753, size: 64, offset: 2176)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{null, !3494, !2486}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3655, file: !244, line: 622, baseType: !3757, size: 64, offset: 2240)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !244, line: 622, flags: DIFlagFwdDecl)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3490, file: !237, line: 486, baseType: !3760, size: 64, offset: 4096)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !244, line: 642, size: 1792, elements: !3762)
!3762 = !{!3763, !3764, !3765, !3769, !3770, !3771}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3761, file: !244, line: 643, baseType: !3522, size: 1472)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3761, file: !244, line: 644, baseType: !3525, size: 64, offset: 1472)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3761, file: !244, line: 645, baseType: !3766, size: 64, offset: 1536)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{null, !3494, !836}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3761, file: !244, line: 646, baseType: !3525, size: 64, offset: 1600)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3761, file: !244, line: 647, baseType: !3516, size: 64, offset: 1664)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3761, file: !244, line: 648, baseType: !3516, size: 64, offset: 1728)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3490, file: !237, line: 493, baseType: !3773, size: 64, offset: 4160)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !258, line: 162, size: 1088, elements: !3775)
!3775 = !{!3776, !3777, !3778, !3951, !3952, !3953, !3954, !3955, !3956, !3959, !3960, !3961, !3962, !3963, !3964, !3965}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3774, file: !258, line: 163, baseType: !372, size: 128)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3774, file: !258, line: 164, baseType: !806, size: 64, offset: 128)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3774, file: !258, line: 165, baseType: !3779, size: 64, offset: 192)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3781)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !258, line: 105, size: 640, elements: !3782)
!3782 = !{!3783, !3901, !3912, !3917, !3921, !3928, !3932, !3936, !3943, !3947}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3781, file: !258, line: 106, baseType: !3784, size: 64)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!406, !3773, !3787, !257}
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3789, line: 51, size: 1344, elements: !3790)
!3789 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3790 = !{!3791, !3792, !3794, !3795, !3885, !3894, !3895, !3896, !3897, !3898, !3899, !3900}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3788, file: !3789, line: 52, baseType: !806, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3788, file: !3789, line: 53, baseType: !3793, size: 32, offset: 64)
!3793 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3789, line: 28, baseType: !442)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3788, file: !3789, line: 54, baseType: !806, size: 64, offset: 128)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3788, file: !3789, line: 55, baseType: !3796, size: 192, offset: 192)
!3796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3797, line: 17, size: 192, elements: !3798)
!3797 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3798 = !{!3799, !3801, !3884}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3796, file: !3797, line: 18, baseType: !3800, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3796, file: !3797, line: 19, baseType: !3802, size: 64, offset: 64)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3804)
!3804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3797, line: 110, size: 1152, elements: !3805)
!3805 = !{!3806, !3810, !3814, !3820, !3826, !3830, !3834, !3839, !3843, !3844, !3848, !3852, !3856, !3867, !3868, !3869, !3870, !3880}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3804, file: !3797, line: 111, baseType: !3807, size: 64)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!3800, !3800}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3804, file: !3797, line: 112, baseType: !3811, size: 64, offset: 64)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{null, !3800}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3804, file: !3797, line: 113, baseType: !3815, size: 64, offset: 128)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!836, !3818}
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3796)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3804, file: !3797, line: 114, baseType: !3821, size: 64, offset: 192)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!2198, !3818, !3824}
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3490)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3804, file: !3797, line: 116, baseType: !3827, size: 64, offset: 256)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!836, !3818, !806}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3804, file: !3797, line: 118, baseType: !3831, size: 64, offset: 320)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!406, !3818, !806, !7, !363, !925}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3804, file: !3797, line: 123, baseType: !3835, size: 64, offset: 384)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!406, !3818, !806, !3838, !925}
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3804, file: !3797, line: 126, baseType: !3840, size: 64, offset: 448)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!806, !3818}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3804, file: !3797, line: 127, baseType: !3840, size: 64, offset: 512)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3804, file: !3797, line: 128, baseType: !3845, size: 64, offset: 576)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!3800, !3818}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3804, file: !3797, line: 130, baseType: !3849, size: 64, offset: 640)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!3800, !3818, !3800}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3804, file: !3797, line: 133, baseType: !3853, size: 64, offset: 704)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!3800, !3818, !806}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3804, file: !3797, line: 135, baseType: !3857, size: 64, offset: 768)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!406, !3818, !806, !806, !7, !7, !3860}
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3797, line: 43, size: 640, elements: !3862)
!3862 = !{!3863, !3864, !3865}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3861, file: !3797, line: 44, baseType: !3800, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3861, file: !3797, line: 45, baseType: !7, size: 32, offset: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3861, file: !3797, line: 46, baseType: !3866, size: 512, offset: 128)
!3866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !535, size: 512, elements: !613)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3804, file: !3797, line: 140, baseType: !3849, size: 64, offset: 832)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3804, file: !3797, line: 143, baseType: !3845, size: 64, offset: 896)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3804, file: !3797, line: 145, baseType: !3807, size: 64, offset: 960)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3804, file: !3797, line: 146, baseType: !3871, size: 64, offset: 1024)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!406, !3818, !3874}
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3797, line: 29, size: 128, elements: !3876)
!3876 = !{!3877, !3878, !3879}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3875, file: !3797, line: 30, baseType: !7, size: 32)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3875, file: !3797, line: 31, baseType: !7, size: 32, offset: 32)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3875, file: !3797, line: 32, baseType: !3818, size: 64, offset: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3804, file: !3797, line: 148, baseType: !3881, size: 64, offset: 1088)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!406, !3818, !3494}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3796, file: !3797, line: 20, baseType: !3494, size: 64, offset: 128)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3788, file: !3789, line: 57, baseType: !3886, size: 64, offset: 384)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3789, line: 31, size: 704, elements: !3888)
!3888 = !{!3889, !3890, !3891, !3892, !3893}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3887, file: !3789, line: 32, baseType: !831, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3887, file: !3789, line: 33, baseType: !406, size: 32, offset: 64)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3887, file: !3789, line: 34, baseType: !363, size: 64, offset: 128)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3887, file: !3789, line: 35, baseType: !3886, size: 64, offset: 192)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3887, file: !3789, line: 43, baseType: !2160, size: 448, offset: 256)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3788, file: !3789, line: 58, baseType: !3886, size: 64, offset: 448)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3788, file: !3789, line: 59, baseType: !3787, size: 64, offset: 512)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3788, file: !3789, line: 60, baseType: !3787, size: 64, offset: 576)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3788, file: !3789, line: 61, baseType: !3787, size: 64, offset: 640)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3788, file: !3789, line: 63, baseType: !2066, size: 512, offset: 704)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3788, file: !3789, line: 65, baseType: !362, size: 64, offset: 1216)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3788, file: !3789, line: 66, baseType: !363, size: 64, offset: 1280)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3781, file: !258, line: 108, baseType: !3902, size: 64, offset: 64)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!406, !3773, !3905, !257}
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !258, line: 63, size: 640, elements: !3907)
!3907 = !{!3908, !3909, !3910}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3906, file: !258, line: 64, baseType: !3800, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3906, file: !258, line: 65, baseType: !406, size: 32, offset: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3906, file: !258, line: 66, baseType: !3911, size: 512, offset: 96)
!3911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 512, elements: !1639)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3781, file: !258, line: 110, baseType: !3913, size: 64, offset: 128)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!406, !3773, !7, !3916}
!3916 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !368, line: 164, baseType: !362)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3781, file: !258, line: 111, baseType: !3918, size: 64, offset: 192)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{null, !3773, !7}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3781, file: !258, line: 112, baseType: !3922, size: 64, offset: 256)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!406, !3773, !3787, !3925, !7, !3927, !1612}
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !442)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3781, file: !258, line: 117, baseType: !3929, size: 64, offset: 320)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!406, !3773, !7, !7, !363}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3781, file: !258, line: 119, baseType: !3933, size: 64, offset: 384)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{null, !3773, !7, !7}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3781, file: !258, line: 121, baseType: !3937, size: 64, offset: 448)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{!406, !3773, !3940, !836}
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3942, line: 11, flags: DIFlagFwdDecl)
!3942 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3781, file: !258, line: 122, baseType: !3944, size: 64, offset: 512)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{null, !3773, !3940}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3781, file: !258, line: 123, baseType: !3948, size: 64, offset: 576)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!406, !3773, !3905, !3927, !1612}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3774, file: !258, line: 166, baseType: !363, size: 64, offset: 256)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3774, file: !258, line: 167, baseType: !7, size: 32, offset: 320)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3774, file: !258, line: 168, baseType: !7, size: 32, offset: 352)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3774, file: !258, line: 171, baseType: !3800, size: 64, offset: 384)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3774, file: !258, line: 172, baseType: !257, size: 32, offset: 448)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3774, file: !258, line: 173, baseType: !3957, size: 64, offset: 512)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !258, line: 134, flags: DIFlagFwdDecl)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3774, file: !258, line: 175, baseType: !3773, size: 64, offset: 576)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3774, file: !258, line: 182, baseType: !3916, size: 64, offset: 640)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3774, file: !258, line: 183, baseType: !7, size: 32, offset: 704)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3774, file: !258, line: 184, baseType: !7, size: 32, offset: 736)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3774, file: !258, line: 185, baseType: !1089, size: 128, offset: 768)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3774, file: !258, line: 186, baseType: !1360, size: 192, offset: 896)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3774, file: !258, line: 187, baseType: !3966, offset: 1088)
!3966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2789)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3490, file: !237, line: 499, baseType: !372, size: 128, offset: 4224)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3490, file: !237, line: 502, baseType: !3969, size: 64, offset: 4352)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3971)
!3971 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !237, line: 502, flags: DIFlagFwdDecl)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3490, file: !237, line: 504, baseType: !3973, size: 64, offset: 4416)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3490, file: !237, line: 505, baseType: !535, size: 64, offset: 4480)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3490, file: !237, line: 510, baseType: !535, size: 64, offset: 4544)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3490, file: !237, line: 511, baseType: !3977, size: 64, offset: 4608)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3979)
!3979 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !237, line: 511, flags: DIFlagFwdDecl)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3490, file: !237, line: 513, baseType: !3981, size: 64, offset: 4672)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !237, line: 288, size: 128, elements: !3983)
!3983 = !{!3984, !3985}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3982, file: !237, line: 293, baseType: !7, size: 32)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3982, file: !237, line: 294, baseType: !362, size: 64, offset: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3490, file: !237, line: 515, baseType: !372, size: 128, offset: 4736)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3490, file: !237, line: 526, baseType: !3988, offset: 4864)
!3988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3989, line: 5, elements: !472)
!3989 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3490, file: !237, line: 528, baseType: !3787, size: 64, offset: 4864)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3490, file: !237, line: 529, baseType: !3800, size: 64, offset: 4928)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3490, file: !237, line: 534, baseType: !859, size: 32, offset: 4992)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3490, file: !237, line: 535, baseType: !442, size: 32, offset: 5024)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3490, file: !237, line: 537, baseType: !1093, offset: 5056)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3490, file: !237, line: 538, baseType: !372, size: 128, offset: 5056)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3490, file: !237, line: 540, baseType: !3997, size: 64, offset: 5184)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3999, line: 54, size: 960, elements: !4000)
!3999 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4000 = !{!4001, !4002, !4003, !4004, !4005, !4006, !4007, !4011, !4015, !4016, !4017, !4018, !4022, !4026, !4027}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3998, file: !3999, line: 55, baseType: !806, size: 64)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3998, file: !3999, line: 56, baseType: !364, size: 64, offset: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3998, file: !3999, line: 58, baseType: !2145, size: 64, offset: 128)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3998, file: !3999, line: 59, baseType: !2145, size: 64, offset: 192)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3998, file: !3999, line: 60, baseType: !2072, size: 64, offset: 256)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3998, file: !3999, line: 62, baseType: !3507, size: 64, offset: 320)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3998, file: !3999, line: 63, baseType: !4008, size: 64, offset: 384)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!831, !3494, !3514}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3998, file: !3999, line: 65, baseType: !4012, size: 64, offset: 448)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{null, !3997}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3998, file: !3999, line: 66, baseType: !3516, size: 64, offset: 512)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3998, file: !3999, line: 68, baseType: !3525, size: 64, offset: 576)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3998, file: !3999, line: 70, baseType: !2181, size: 64, offset: 640)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3998, file: !3999, line: 71, baseType: !4019, size: 64, offset: 704)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!2198, !3494}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3998, file: !3999, line: 73, baseType: !4023, size: 64, offset: 768)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{null, !3494, !2215, !2216}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3998, file: !3999, line: 75, baseType: !3520, size: 64, offset: 832)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3998, file: !3999, line: 77, baseType: !3637, size: 64, offset: 896)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3490, file: !237, line: 541, baseType: !2145, size: 64, offset: 5248)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3490, file: !237, line: 543, baseType: !3516, size: 64, offset: 5312)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3490, file: !237, line: 544, baseType: !4031, size: 64, offset: 5376)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !237, line: 45, flags: DIFlagFwdDecl)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3490, file: !237, line: 545, baseType: !4034, size: 64, offset: 5440)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !237, line: 47, flags: DIFlagFwdDecl)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3490, file: !237, line: 547, baseType: !836, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3490, file: !237, line: 548, baseType: !836, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3490, file: !237, line: 549, baseType: !836, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3490, file: !237, line: 550, baseType: !836, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !393, file: !298, line: 709, baseType: !362, size: 64, offset: 6336)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !393, file: !298, line: 713, baseType: !406, size: 32, offset: 6400)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !393, file: !298, line: 714, baseType: !4043, size: 384, offset: 6432)
!4043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 384, elements: !4044)
!4044 = !{!4045}
!4045 = !DISubrange(count: 48)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !393, file: !298, line: 715, baseType: !2761, size: 192, offset: 6848)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !393, file: !298, line: 717, baseType: !1360, size: 192, offset: 7040)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !393, file: !298, line: 718, baseType: !372, size: 128, offset: 7232)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !393, file: !298, line: 720, baseType: !4050, size: 64, offset: 7360)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !298, line: 618, size: 832, elements: !4052)
!4052 = !{!4053, !4057, !4058, !4062, !4063, !4064, !4065, !4069, !4070, !4073, !4074, !4077, !4080}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4051, file: !298, line: 619, baseType: !4054, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!406, !392}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4051, file: !298, line: 621, baseType: !4054, size: 64, offset: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4051, file: !298, line: 622, baseType: !4059, size: 64, offset: 128)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{null, !392, !406}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4051, file: !298, line: 623, baseType: !4054, size: 64, offset: 192)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4051, file: !298, line: 624, baseType: !4059, size: 64, offset: 256)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4051, file: !298, line: 625, baseType: !4054, size: 64, offset: 320)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4051, file: !298, line: 627, baseType: !4066, size: 64, offset: 384)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{null, !392}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4051, file: !298, line: 628, baseType: !4066, size: 64, offset: 448)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4051, file: !298, line: 631, baseType: !4071, size: 64, offset: 512)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !298, line: 631, flags: DIFlagFwdDecl)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4051, file: !298, line: 632, baseType: !4071, size: 64, offset: 576)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4051, file: !298, line: 633, baseType: !4075, size: 64, offset: 640)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !298, line: 633, flags: DIFlagFwdDecl)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4051, file: !298, line: 634, baseType: !4078, size: 64, offset: 704)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !298, line: 634, flags: DIFlagFwdDecl)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4051, file: !298, line: 635, baseType: !4078, size: 64, offset: 768)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !393, file: !298, line: 721, baseType: !4082, size: 64, offset: 7424)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4084)
!4084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !298, line: 664, size: 192, elements: !4085)
!4085 = !{!4086, !4087, !4088, !4089, !4090, !4091}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4084, file: !298, line: 665, baseType: !535, size: 64)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4084, file: !298, line: 666, baseType: !406, size: 32, offset: 64)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4084, file: !298, line: 667, baseType: !425, size: 16, offset: 96)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4084, file: !298, line: 668, baseType: !425, size: 16, offset: 112)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4084, file: !298, line: 669, baseType: !425, size: 16, offset: 128)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4084, file: !298, line: 670, baseType: !425, size: 16, offset: 144)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !393, file: !298, line: 723, baseType: !3773, size: 64, offset: 7488)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !381, file: !298, line: 330, baseType: !3490, size: 5568, offset: 256)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "init_irq", scope: !381, file: !298, line: 331, baseType: !406, size: 32, offset: 5824)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !381, file: !298, line: 332, baseType: !406, size: 32, offset: 5856)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "detected", scope: !381, file: !298, line: 333, baseType: !372, size: 128, offset: 5888)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "regmap_mutex", scope: !377, file: !3, line: 20, baseType: !1360, size: 192, offset: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "regmap_config", scope: !377, file: !3, line: 21, baseType: !4099, size: 2176, offset: 256)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_config", file: !303, line: 347, size: 2176, elements: !4100)
!4100 = !{!4101, !4102, !4103, !4104, !4105, !4106, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4118, !4120, !4121, !4125, !4129, !4130, !4131, !4146, !4147, !4148, !4149, !4150, !4151, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4183, !4184, !4185, !4186, !4187}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4099, file: !303, line: 348, baseType: !806, size: 64)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "reg_bits", scope: !4099, file: !303, line: 350, baseType: !406, size: 32, offset: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "reg_stride", scope: !4099, file: !303, line: 351, baseType: !406, size: 32, offset: 96)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "pad_bits", scope: !4099, file: !303, line: 352, baseType: !406, size: 32, offset: 128)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "val_bits", scope: !4099, file: !303, line: 353, baseType: !406, size: 32, offset: 160)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "writeable_reg", scope: !4099, file: !303, line: 355, baseType: !4107, size: 64, offset: 192)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!836, !3494, !7}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "readable_reg", scope: !4099, file: !303, line: 356, baseType: !4107, size: 64, offset: 256)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_reg", scope: !4099, file: !303, line: 357, baseType: !4107, size: 64, offset: 320)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "precious_reg", scope: !4099, file: !303, line: 358, baseType: !4107, size: 64, offset: 384)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "writeable_noinc_reg", scope: !4099, file: !303, line: 359, baseType: !4107, size: 64, offset: 448)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "readable_noinc_reg", scope: !4099, file: !303, line: 360, baseType: !4107, size: 64, offset: 512)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "disable_locking", scope: !4099, file: !303, line: 362, baseType: !836, size: 8, offset: 576)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4099, file: !303, line: 363, baseType: !4117, size: 64, offset: 640)
!4117 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_lock", file: !303, line: 226, baseType: !813)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "unlock", scope: !4099, file: !303, line: 364, baseType: !4119, size: 64, offset: 704)
!4119 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_unlock", file: !303, line: 227, baseType: !813)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "lock_arg", scope: !4099, file: !303, line: 365, baseType: !363, size: 64, offset: 768)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "reg_read", scope: !4099, file: !303, line: 367, baseType: !4122, size: 64, offset: 832)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!406, !363, !7, !1612}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "reg_write", scope: !4099, file: !303, line: 368, baseType: !4126, size: 64, offset: 896)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!406, !363, !7, !7}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "fast_io", scope: !4099, file: !303, line: 370, baseType: !836, size: 8, offset: 960)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "max_register", scope: !4099, file: !303, line: 372, baseType: !7, size: 32, offset: 992)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "wr_table", scope: !4099, file: !303, line: 373, baseType: !4132, size: 64, offset: 1024)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4134)
!4134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_access_table", file: !303, line: 219, size: 256, elements: !4135)
!4135 = !{!4136, !4143, !4144, !4145}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "yes_ranges", scope: !4134, file: !303, line: 220, baseType: !4137, size: 64)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4139)
!4139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_range", file: !303, line: 199, size: 64, elements: !4140)
!4140 = !{!4141, !4142}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "range_min", scope: !4139, file: !303, line: 200, baseType: !7, size: 32)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "range_max", scope: !4139, file: !303, line: 201, baseType: !7, size: 32, offset: 32)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "n_yes_ranges", scope: !4134, file: !303, line: 221, baseType: !7, size: 32, offset: 64)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "no_ranges", scope: !4134, file: !303, line: 222, baseType: !4137, size: 64, offset: 128)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "n_no_ranges", scope: !4134, file: !303, line: 223, baseType: !7, size: 32, offset: 192)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "rd_table", scope: !4099, file: !303, line: 374, baseType: !4132, size: 64, offset: 1088)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_table", scope: !4099, file: !303, line: 375, baseType: !4132, size: 64, offset: 1152)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "precious_table", scope: !4099, file: !303, line: 376, baseType: !4132, size: 64, offset: 1216)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "wr_noinc_table", scope: !4099, file: !303, line: 377, baseType: !4132, size: 64, offset: 1280)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "rd_noinc_table", scope: !4099, file: !303, line: 378, baseType: !4132, size: 64, offset: 1344)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "reg_defaults", scope: !4099, file: !303, line: 379, baseType: !4152, size: 64, offset: 1408)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4154)
!4154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_default", file: !303, line: 56, size: 64, elements: !4155)
!4155 = !{!4156, !4157}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !4154, file: !303, line: 57, baseType: !7, size: 32)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !4154, file: !303, line: 58, baseType: !7, size: 32, offset: 32)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "num_reg_defaults", scope: !4099, file: !303, line: 380, baseType: !7, size: 32, offset: 1472)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "cache_type", scope: !4099, file: !303, line: 381, baseType: !302, size: 32, offset: 1504)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "reg_defaults_raw", scope: !4099, file: !303, line: 382, baseType: !2198, size: 64, offset: 1536)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "num_reg_defaults_raw", scope: !4099, file: !303, line: 383, baseType: !7, size: 32, offset: 1600)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "read_flag_mask", scope: !4099, file: !303, line: 385, baseType: !362, size: 64, offset: 1664)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "write_flag_mask", scope: !4099, file: !303, line: 386, baseType: !362, size: 64, offset: 1728)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "zero_flag_mask", scope: !4099, file: !303, line: 387, baseType: !836, size: 8, offset: 1792)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "use_single_read", scope: !4099, file: !303, line: 389, baseType: !836, size: 8, offset: 1800)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "use_single_write", scope: !4099, file: !303, line: 390, baseType: !836, size: 8, offset: 1808)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "can_multi_write", scope: !4099, file: !303, line: 391, baseType: !836, size: 8, offset: 1816)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "reg_format_endian", scope: !4099, file: !303, line: 393, baseType: !309, size: 32, offset: 1824)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "val_format_endian", scope: !4099, file: !303, line: 394, baseType: !309, size: 32, offset: 1856)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4099, file: !303, line: 396, baseType: !4171, size: 64, offset: 1920)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4173)
!4173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_range_cfg", file: !303, line: 426, size: 320, elements: !4174)
!4174 = !{!4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4173, file: !303, line: 427, baseType: !806, size: 64)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "range_min", scope: !4173, file: !303, line: 430, baseType: !7, size: 32, offset: 64)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "range_max", scope: !4173, file: !303, line: 431, baseType: !7, size: 32, offset: 96)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "selector_reg", scope: !4173, file: !303, line: 434, baseType: !7, size: 32, offset: 128)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "selector_mask", scope: !4173, file: !303, line: 435, baseType: !7, size: 32, offset: 160)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "selector_shift", scope: !4173, file: !303, line: 436, baseType: !406, size: 32, offset: 192)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "window_start", scope: !4173, file: !303, line: 439, baseType: !7, size: 32, offset: 224)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "window_len", scope: !4173, file: !303, line: 440, baseType: !7, size: 32, offset: 256)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "num_ranges", scope: !4099, file: !303, line: 397, baseType: !7, size: 32, offset: 1984)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "use_hwlock", scope: !4099, file: !303, line: 399, baseType: !836, size: 8, offset: 2016)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "hwlock_id", scope: !4099, file: !303, line: 400, baseType: !7, size: 32, offset: 2048)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "hwlock_mode", scope: !4099, file: !303, line: 401, baseType: !7, size: 32, offset: 2080)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "can_sleep", scope: !4099, file: !303, line: 403, baseType: !836, size: 8, offset: 2112)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "regmap", scope: !377, file: !3, line: 22, baseType: !4189, size: 64, offset: 2432)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DICompositeType(tag: DW_TAG_structure_type, name: "regmap", file: !303, line: 33, flags: DIFlagFwdDecl)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "fe", scope: !377, file: !3, line: 23, baseType: !4192, size: 64, offset: 2496)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend", file: !51, line: 686, size: 10240, elements: !4194)
!4194 = !{!4195, !4196, !4466, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4510, !4511}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4193, file: !51, line: 687, baseType: !2357, size: 32)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4193, file: !51, line: 688, baseType: !4197, size: 6016, offset: 64)
!4197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_ops", file: !51, line: 435, size: 6016, elements: !4198)
!4198 = !{!4199, !4211, !4213, !4217, !4218, !4219, !4223, !4224, !4230, !4235, !4239, !4240, !4250, !4327, !4331, !4335, !4340, !4341, !4342, !4343, !4353, !4364, !4368, !4372, !4376, !4380, !4384, !4388, !4389, !4390, !4394, !4448}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4197, file: !51, line: 436, baseType: !4200, size: 1280)
!4200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_internal_info", file: !51, line: 338, size: 1280, elements: !4201)
!4201 = !{!4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4200, file: !51, line: 339, baseType: !3583, size: 1024)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4200, file: !51, line: 340, baseType: !442, size: 32, offset: 1024)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4200, file: !51, line: 341, baseType: !442, size: 32, offset: 1056)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_stepsize_hz", scope: !4200, file: !51, line: 342, baseType: !442, size: 32, offset: 1088)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_tolerance_hz", scope: !4200, file: !51, line: 343, baseType: !442, size: 32, offset: 1120)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_min", scope: !4200, file: !51, line: 344, baseType: !442, size: 32, offset: 1152)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_max", scope: !4200, file: !51, line: 345, baseType: !442, size: 32, offset: 1184)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_tolerance", scope: !4200, file: !51, line: 346, baseType: !442, size: 32, offset: 1216)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !4200, file: !51, line: 347, baseType: !5, size: 32, offset: 1248)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "delsys", scope: !4197, file: !51, line: 438, baseType: !4212, size: 64, offset: 1280)
!4212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 64, elements: !613)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4197, file: !51, line: 440, baseType: !4214, size: 64, offset: 1344)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{null, !4192}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4197, file: !51, line: 441, baseType: !4214, size: 64, offset: 1408)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "release_sec", scope: !4197, file: !51, line: 442, baseType: !4214, size: 64, offset: 1472)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4197, file: !51, line: 444, baseType: !4220, size: 64, offset: 1536)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{!406, !4192}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4197, file: !51, line: 445, baseType: !4220, size: 64, offset: 1600)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4197, file: !51, line: 447, baseType: !4225, size: 64, offset: 1664)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!406, !4192, !4228, !406}
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !4197, file: !51, line: 450, baseType: !4231, size: 64, offset: 1728)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!406, !4192, !836, !7, !1612, !4234}
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend_algo", scope: !4197, file: !51, line: 457, baseType: !4236, size: 64, offset: 1792)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!50, !4192}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "set_frontend", scope: !4197, file: !51, line: 460, baseType: !4220, size: 64, offset: 1856)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "get_tune_settings", scope: !4197, file: !51, line: 461, baseType: !4241, size: 64, offset: 1920)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{!406, !4192, !4244}
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_tune_settings", file: !51, line: 69, size: 96, elements: !4246)
!4246 = !{!4247, !4248, !4249}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !4245, file: !51, line: 70, baseType: !406, size: 32)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !4245, file: !51, line: 71, baseType: !406, size: 32, offset: 32)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "max_drift", scope: !4245, file: !51, line: 72, baseType: !406, size: 32, offset: 64)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend", scope: !4197, file: !51, line: 463, baseType: !4251, size: 64, offset: 1984)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!406, !4192, !4254}
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_frontend_properties", file: !51, line: 586, size: 3648, elements: !4256)
!4256 = !{!4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4320, !4321, !4322, !4323, !4324, !4325, !4326}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4255, file: !51, line: 587, baseType: !442, size: 32)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4255, file: !51, line: 588, baseType: !57, size: 32, offset: 32)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !4255, file: !51, line: 590, baseType: !73, size: 32, offset: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "sectone", scope: !4255, file: !51, line: 591, baseType: !78, size: 32, offset: 96)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !4255, file: !51, line: 592, baseType: !82, size: 32, offset: 128)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !4255, file: !51, line: 593, baseType: !87, size: 32, offset: 160)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "transmission_mode", scope: !4255, file: !51, line: 594, baseType: !102, size: 32, offset: 192)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_hz", scope: !4255, file: !51, line: 595, baseType: !442, size: 32, offset: 224)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "guard_interval", scope: !4255, file: !51, line: 596, baseType: !113, size: 32, offset: 256)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy", scope: !4255, file: !51, line: 597, baseType: !126, size: 32, offset: 288)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !4255, file: !51, line: 598, baseType: !442, size: 32, offset: 320)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_HP", scope: !4255, file: !51, line: 599, baseType: !87, size: 32, offset: 352)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_LP", scope: !4255, file: !51, line: 600, baseType: !87, size: 32, offset: 384)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "pilot", scope: !4255, file: !51, line: 602, baseType: !133, size: 32, offset: 416)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "rolloff", scope: !4255, file: !51, line: 603, baseType: !138, size: 32, offset: 448)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !4255, file: !51, line: 605, baseType: !144, size: 32, offset: 480)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4255, file: !51, line: 607, baseType: !165, size: 32, offset: 512)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_partial_reception", scope: !4255, file: !51, line: 610, baseType: !427, size: 8, offset: 544)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_mode", scope: !4255, file: !51, line: 611, baseType: !427, size: 8, offset: 552)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_subchannel", scope: !4255, file: !51, line: 612, baseType: !427, size: 8, offset: 560)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_idx", scope: !4255, file: !51, line: 613, baseType: !442, size: 32, offset: 576)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_count", scope: !4255, file: !51, line: 614, baseType: !442, size: 32, offset: 608)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_layer_enabled", scope: !4255, file: !51, line: 615, baseType: !427, size: 8, offset: 640)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "layer", scope: !4255, file: !51, line: 621, baseType: !4281, size: 384, offset: 672)
!4281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4282, size: 384, elements: !1001)
!4282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4255, file: !51, line: 616, size: 128, elements: !4283)
!4283 = !{!4284, !4285, !4286, !4287}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "segment_count", scope: !4282, file: !51, line: 617, baseType: !427, size: 8)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "fec", scope: !4282, file: !51, line: 618, baseType: !87, size: 32, offset: 32)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4282, file: !51, line: 619, baseType: !57, size: 32, offset: 64)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4282, file: !51, line: 620, baseType: !427, size: 8, offset: 96)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4255, file: !51, line: 624, baseType: !442, size: 32, offset: 1056)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling_sequence_index", scope: !4255, file: !51, line: 627, baseType: !442, size: 32, offset: 1088)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_fic_ver", scope: !4255, file: !51, line: 630, baseType: !427, size: 8, offset: 1120)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_parade_id", scope: !4255, file: !51, line: 631, baseType: !427, size: 8, offset: 1128)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_nog", scope: !4255, file: !51, line: 632, baseType: !427, size: 8, offset: 1136)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_tnog", scope: !4255, file: !51, line: 633, baseType: !427, size: 8, offset: 1144)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sgn", scope: !4255, file: !51, line: 634, baseType: !427, size: 8, offset: 1152)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_prc", scope: !4255, file: !51, line: 635, baseType: !427, size: 8, offset: 1160)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_mode", scope: !4255, file: !51, line: 637, baseType: !427, size: 8, offset: 1168)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_ensemble", scope: !4255, file: !51, line: 638, baseType: !427, size: 8, offset: 1176)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_pri", scope: !4255, file: !51, line: 639, baseType: !427, size: 8, offset: 1184)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_sec", scope: !4255, file: !51, line: 640, baseType: !427, size: 8, offset: 1192)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_block_mode", scope: !4255, file: !51, line: 641, baseType: !427, size: 8, offset: 1200)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_a", scope: !4255, file: !51, line: 642, baseType: !427, size: 8, offset: 1208)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_b", scope: !4255, file: !51, line: 643, baseType: !427, size: 8, offset: 1216)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_c", scope: !4255, file: !51, line: 644, baseType: !427, size: 8, offset: 1224)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_d", scope: !4255, file: !51, line: 645, baseType: !427, size: 8, offset: 1232)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !4255, file: !51, line: 647, baseType: !442, size: 32, offset: 1248)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !4255, file: !51, line: 650, baseType: !4307, size: 296, offset: 1280)
!4307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_fe_stats", file: !6, line: 825, size: 296, elements: !4308)
!4308 = !{!4309, !4310}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4307, file: !6, line: 826, baseType: !418, size: 8)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4307, file: !6, line: 827, baseType: !4311, size: 288, offset: 8)
!4311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4312, size: 288, elements: !2430)
!4312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_stats", file: !6, line: 803, size: 72, elements: !4313)
!4313 = !{!4314, !4315}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !4312, file: !6, line: 804, baseType: !418, size: 8)
!4315 = !DIDerivedType(tag: DW_TAG_member, scope: !4312, file: !6, line: 805, baseType: !4316, size: 64, offset: 8)
!4316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4312, file: !6, line: 805, size: 64, elements: !4317)
!4317 = !{!4318, !4319}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !4316, file: !6, line: 806, baseType: !536, size: 64)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !4316, file: !6, line: 807, baseType: !566, size: 64)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "cnr", scope: !4255, file: !51, line: 651, baseType: !4307, size: 296, offset: 1576)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_error", scope: !4255, file: !51, line: 652, baseType: !4307, size: 296, offset: 1872)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_count", scope: !4255, file: !51, line: 653, baseType: !4307, size: 296, offset: 2168)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !4255, file: !51, line: 654, baseType: !4307, size: 296, offset: 2464)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !4255, file: !51, line: 655, baseType: !4307, size: 296, offset: 2760)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "block_error", scope: !4255, file: !51, line: 656, baseType: !4307, size: 296, offset: 3056)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !4255, file: !51, line: 657, baseType: !4307, size: 296, offset: 3352)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !4197, file: !51, line: 466, baseType: !4328, size: 64, offset: 2048)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = !DISubroutineType(types: !4330)
!4330 = !{!406, !4192, !4234}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "read_ber", scope: !4197, file: !51, line: 467, baseType: !4332, size: 64, offset: 2112)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{!406, !4192, !2828}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "read_signal_strength", scope: !4197, file: !51, line: 468, baseType: !4336, size: 64, offset: 2176)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!406, !4192, !4339}
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "read_snr", scope: !4197, file: !51, line: 469, baseType: !4336, size: 64, offset: 2240)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "read_ucblocks", scope: !4197, file: !51, line: 470, baseType: !4332, size: 64, offset: 2304)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_reset_overload", scope: !4197, file: !51, line: 472, baseType: !4220, size: 64, offset: 2368)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_master_cmd", scope: !4197, file: !51, line: 473, baseType: !4344, size: 64, offset: 2432)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!406, !4192, !4347}
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_master_cmd", file: !6, line: 173, size: 56, elements: !4349)
!4349 = !{!4350, !4352}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4348, file: !6, line: 174, baseType: !4351, size: 48)
!4351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 48, elements: !2529)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4348, file: !6, line: 175, baseType: !418, size: 8, offset: 48)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_recv_slave_reply", scope: !4197, file: !51, line: 474, baseType: !4354, size: 64, offset: 2496)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{!406, !4192, !4357}
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_slave_reply", file: !6, line: 195, size: 96, elements: !4359)
!4359 = !{!4360, !4362, !4363}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4358, file: !6, line: 196, baseType: !4361, size: 32)
!4361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 32, elements: !2430)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4358, file: !6, line: 197, baseType: !418, size: 8, offset: 32)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4358, file: !6, line: 198, baseType: !406, size: 32, offset: 64)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_burst", scope: !4197, file: !51, line: 475, baseType: !4365, size: 64, offset: 2560)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{!406, !4192, !171}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "set_tone", scope: !4197, file: !51, line: 477, baseType: !4369, size: 64, offset: 2624)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = !DISubroutineType(types: !4371)
!4371 = !{!406, !4192, !78}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltage", scope: !4197, file: !51, line: 478, baseType: !4373, size: 64, offset: 2688)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = !DISubroutineType(types: !4375)
!4375 = !{!406, !4192, !73}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "enable_high_lnb_voltage", scope: !4197, file: !51, line: 480, baseType: !4377, size: 64, offset: 2752)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{!406, !4192, !317}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "dishnetwork_send_legacy_command", scope: !4197, file: !51, line: 481, baseType: !4381, size: 64, offset: 2816)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{!406, !4192, !362}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4197, file: !51, line: 482, baseType: !4385, size: 64, offset: 2880)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{!406, !4192, !406}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "ts_bus_ctrl", scope: !4197, file: !51, line: 483, baseType: !4385, size: 64, offset: 2944)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "set_lna", scope: !4197, file: !51, line: 484, baseType: !4220, size: 64, offset: 3008)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !4197, file: !51, line: 490, baseType: !4391, size: 64, offset: 3072)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DISubroutineType(types: !4393)
!4393 = !{!175, !4192}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_ops", scope: !4197, file: !51, line: 492, baseType: !4395, size: 2304, offset: 3136)
!4395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_ops", file: !51, line: 226, size: 2304, elements: !4396)
!4396 = !{!4397, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4424, !4428, !4429, !4430, !4431, !4432, !4433, !4438, !4443, !4447}
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4395, file: !51, line: 228, baseType: !4398, size: 1216)
!4398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_info", file: !51, line: 88, size: 1216, elements: !4399)
!4399 = !{!4400, !4401, !4402, !4403, !4404, !4405, !4406}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4398, file: !51, line: 89, baseType: !3583, size: 1024)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4398, file: !51, line: 91, baseType: !442, size: 32, offset: 1024)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4398, file: !51, line: 92, baseType: !442, size: 32, offset: 1056)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_step_hz", scope: !4398, file: !51, line: 93, baseType: !442, size: 32, offset: 1088)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_min", scope: !4398, file: !51, line: 95, baseType: !442, size: 32, offset: 1120)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_max", scope: !4398, file: !51, line: 96, baseType: !442, size: 32, offset: 1152)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_step", scope: !4398, file: !51, line: 97, baseType: !442, size: 32, offset: 1184)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4395, file: !51, line: 230, baseType: !4214, size: 64, offset: 1216)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4395, file: !51, line: 231, baseType: !4220, size: 64, offset: 1280)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4395, file: !51, line: 232, baseType: !4220, size: 64, offset: 1344)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4395, file: !51, line: 233, baseType: !4220, size: 64, offset: 1408)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4395, file: !51, line: 234, baseType: !4220, size: 64, offset: 1472)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4395, file: !51, line: 237, baseType: !4220, size: 64, offset: 1536)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "set_analog_params", scope: !4395, file: !51, line: 238, baseType: !4414, size: 64, offset: 1600)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = !DISubroutineType(types: !4416)
!4416 = !{!406, !4192, !4417}
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_parameters", file: !51, line: 114, size: 192, elements: !4419)
!4419 = !{!4420, !4421, !4422, !4423}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4418, file: !51, line: 115, baseType: !7, size: 32)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4418, file: !51, line: 116, baseType: !7, size: 32, offset: 32)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !4418, file: !51, line: 117, baseType: !7, size: 32, offset: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !4418, file: !51, line: 118, baseType: !535, size: 64, offset: 128)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4395, file: !51, line: 240, baseType: !4425, size: 64, offset: 1664)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{!406, !4192, !363}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "get_frequency", scope: !4395, file: !51, line: 242, baseType: !4332, size: 64, offset: 1728)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "get_bandwidth", scope: !4395, file: !51, line: 243, baseType: !4332, size: 64, offset: 1792)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "get_if_frequency", scope: !4395, file: !51, line: 244, baseType: !4332, size: 64, offset: 1856)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !4395, file: !51, line: 248, baseType: !4332, size: 64, offset: 1920)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "get_rf_strength", scope: !4395, file: !51, line: 249, baseType: !4336, size: 64, offset: 1984)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4395, file: !51, line: 250, baseType: !4434, size: 64, offset: 2048)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{!406, !4192, !4437}
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "calc_regs", scope: !4395, file: !51, line: 258, baseType: !4439, size: 64, offset: 2112)
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{!406, !4192, !4442, !406}
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "set_frequency", scope: !4395, file: !51, line: 267, baseType: !4444, size: 64, offset: 2176)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!406, !4192, !442}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "set_bandwidth", scope: !4395, file: !51, line: 268, baseType: !4444, size: 64, offset: 2240)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "analog_ops", scope: !4197, file: !51, line: 493, baseType: !4449, size: 576, offset: 5440)
!4449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_ops", file: !51, line: 302, size: 576, elements: !4450)
!4450 = !{!4451, !4455, !4459, !4460, !4461, !4462, !4463, !4464, !4465}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4449, file: !51, line: 304, baseType: !4452, size: 64)
!4452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_info", file: !51, line: 276, size: 64, elements: !4453)
!4453 = !{!4454}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4452, file: !51, line: 277, baseType: !831, size: 64)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4449, file: !51, line: 306, baseType: !4456, size: 64, offset: 64)
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{null, !4192, !4417}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "has_signal", scope: !4449, file: !51, line: 308, baseType: !4336, size: 64, offset: 128)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4449, file: !51, line: 309, baseType: !4434, size: 64, offset: 192)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_status", scope: !4449, file: !51, line: 310, baseType: !4214, size: 64, offset: 256)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !4449, file: !51, line: 311, baseType: !4214, size: 64, offset: 320)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4449, file: !51, line: 312, baseType: !4214, size: 64, offset: 384)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4449, file: !51, line: 313, baseType: !4385, size: 64, offset: 448)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4449, file: !51, line: 316, baseType: !4425, size: 64, offset: 512)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "dvb", scope: !4193, file: !51, line: 689, baseType: !4467, size: 64, offset: 6080)
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !272, line: 101, size: 960, elements: !4469)
!4469 = !{!4470, !4471, !4472, !4473, !4474, !4476, !4477, !4478, !4479, !4480, !4499}
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4468, file: !272, line: 102, baseType: !406, size: 32)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4468, file: !272, line: 103, baseType: !372, size: 128, offset: 64)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !4468, file: !272, line: 104, baseType: !372, size: 128, offset: 192)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4468, file: !272, line: 105, baseType: !806, size: 64, offset: 320)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !4468, file: !272, line: 106, baseType: !4475, size: 48, offset: 384)
!4475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 48, elements: !2529)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4468, file: !272, line: 107, baseType: !363, size: 64, offset: 448)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4468, file: !272, line: 109, baseType: !3494, size: 64, offset: 512)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4468, file: !272, line: 111, baseType: !364, size: 64, offset: 576)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !4468, file: !272, line: 113, baseType: !406, size: 32, offset: 640)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !4468, file: !272, line: 114, baseType: !4481, size: 64, offset: 704)
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !272, line: 157, size: 704, elements: !4483)
!4483 = !{!4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4498}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4482, file: !272, line: 158, baseType: !372, size: 128)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4482, file: !272, line: 159, baseType: !1808, size: 64, offset: 128)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4482, file: !272, line: 160, baseType: !4467, size: 64, offset: 192)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4482, file: !272, line: 161, baseType: !271, size: 32, offset: 256)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4482, file: !272, line: 162, baseType: !406, size: 32, offset: 288)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4482, file: !272, line: 163, baseType: !442, size: 32, offset: 320)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !4482, file: !272, line: 167, baseType: !406, size: 32, offset: 352)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !4482, file: !272, line: 168, baseType: !406, size: 32, offset: 384)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4482, file: !272, line: 169, baseType: !406, size: 32, offset: 416)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4482, file: !272, line: 171, baseType: !1592, size: 128, offset: 448)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !4482, file: !272, line: 173, baseType: !4495, size: 64, offset: 576)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!406, !707, !7, !363}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4482, file: !272, line: 187, baseType: !363, size: 64, offset: 640)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !4468, file: !272, line: 115, baseType: !1360, size: 192, offset: 768)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "demodulator_priv", scope: !4193, file: !51, line: 690, baseType: !363, size: 64, offset: 6144)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_priv", scope: !4193, file: !51, line: 691, baseType: !363, size: 64, offset: 6208)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "frontend_priv", scope: !4193, file: !51, line: 692, baseType: !363, size: 64, offset: 6272)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "sec_priv", scope: !4193, file: !51, line: 693, baseType: !363, size: 64, offset: 6336)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "analog_demod_priv", scope: !4193, file: !51, line: 694, baseType: !363, size: 64, offset: 6400)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "dtv_property_cache", scope: !4193, file: !51, line: 695, baseType: !4255, size: 3648, offset: 6464)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4193, file: !51, line: 698, baseType: !4507, size: 64, offset: 10112)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DISubroutineType(types: !4509)
!4509 = !{!406, !363, !406, !406, !406}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4193, file: !51, line: 699, baseType: !406, size: 32, offset: 10176)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4193, file: !51, line: 700, baseType: !7, size: 32, offset: 10208)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "stat_work", scope: !377, file: !3, line: 24, baseType: !4513, size: 704, offset: 2560)
!4513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !316, line: 115, size: 704, elements: !4514)
!4514 = !{!4515, !4516, !4517, !4518}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4513, file: !316, line: 116, baseType: !1750, size: 256)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4513, file: !316, line: 117, baseType: !3685, size: 320, offset: 256)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4513, file: !316, line: 120, baseType: !1726, size: 64, offset: 576)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4513, file: !316, line: 121, baseType: !406, size: 32, offset: 640)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "get_agc_pwm", scope: !377, file: !3, line: 25, baseType: !4520, size: 64, offset: 3264)
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4521, size: 64)
!4521 = !DISubroutineType(types: !4522)
!4522 = !{!406, !4192, !4442}
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "i2c", scope: !377, file: !3, line: 27, baseType: !392, size: 64, offset: 3328)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_address", scope: !377, file: !3, line: 28, baseType: !406, size: 32, offset: 3392)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "loop_through", scope: !377, file: !3, line: 29, baseType: !836, size: 1, offset: 3424, flags: DIFlagBitField, extraData: i64 3424)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "clk_out", scope: !377, file: !3, line: 30, baseType: !427, size: 2, offset: 3425, flags: DIFlagBitField, extraData: i64 3424)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "clk_out_div", scope: !377, file: !3, line: 31, baseType: !427, size: 5, offset: 3427, flags: DIFlagBitField, extraData: i64 3424)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "dont_poll", scope: !377, file: !3, line: 32, baseType: !836, size: 1, offset: 3432, flags: DIFlagBitField, extraData: i64 3424)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_div", scope: !377, file: !3, line: 33, baseType: !442, size: 32, offset: 3456)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_khz", scope: !377, file: !3, line: 34, baseType: !442, size: 32, offset: 3488)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "tuner", scope: !377, file: !3, line: 37, baseType: !427, size: 8, offset: 3520)
!4532 = !{!0, !4533, !4538, !4543, !4548, !4553, !4558, !4653, !4656, !4659, !4670}
!4533 = !DIGlobalVariableExpression(var: !4534, expr: !DIExpression())
!4534 = distinct !DIGlobalVariable(name: "__exitcall_ts2020_driver_exit", scope: !2, file: !3, line: 730, type: !4535, isLocal: true, isDefinition: true)
!4535 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4536, line: 117, baseType: !4537)
!4536 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!4538 = !DIGlobalVariableExpression(var: !4539, expr: !DIExpression())
!4539 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author254", scope: !2, file: !3, line: 732, type: !4540, isLocal: true, isDefinition: true, align: 8)
!4540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !807, size: 488, elements: !4541)
!4541 = !{!4542}
!4542 = !DISubrange(count: 61)
!4543 = !DIGlobalVariableExpression(var: !4544, expr: !DIExpression())
!4544 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description255", scope: !2, file: !3, line: 733, type: !4545, isLocal: true, isDefinition: true, align: 8)
!4545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !807, size: 600, elements: !4546)
!4546 = !{!4547}
!4547 = !DISubrange(count: 75)
!4548 = !DIGlobalVariableExpression(var: !4549, expr: !DIExpression())
!4549 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file256", scope: !2, file: !3, line: 734, type: !4550, isLocal: true, isDefinition: true, align: 8)
!4550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !807, size: 376, elements: !4551)
!4551 = !{!4552}
!4552 = !DISubrange(count: 47)
!4553 = !DIGlobalVariableExpression(var: !4554, expr: !DIExpression())
!4554 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license257", scope: !2, file: !3, line: 734, type: !4555, isLocal: true, isDefinition: true, align: 8)
!4555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !807, size: 152, elements: !4556)
!4556 = !{!4557}
!4557 = !DISubrange(count: 19)
!4558 = !DIGlobalVariableExpression(var: !4559, expr: !DIExpression())
!4559 = distinct !DIGlobalVariable(name: "ts2020_driver", scope: !2, file: !3, line: 721, type: !4560, isLocal: true, isDefinition: true)
!4560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_driver", file: !298, line: 255, size: 1920, elements: !4561)
!4561 = !{!4562, !4563, !4573, !4577, !4578, !4582, !4586, !4590, !4591, !4592, !4649, !4652}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4560, file: !298, line: 256, baseType: !7, size: 32)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4560, file: !298, line: 259, baseType: !4564, size: 64, offset: 64)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{!406, !380, !4567}
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4569)
!4569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_device_id", file: !3578, line: 457, size: 256, elements: !4570)
!4570 = !{!4571, !4572}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4569, file: !3578, line: 458, baseType: !387, size: 160)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4569, file: !3578, line: 459, baseType: !3597, size: 64, offset: 192)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4560, file: !298, line: 260, baseType: !4574, size: 64, offset: 128)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{!406, !380}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "probe_new", scope: !4560, file: !298, line: 265, baseType: !4574, size: 64, offset: 192)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4560, file: !298, line: 268, baseType: !4579, size: 64, offset: 256)
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{null, !380}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "alert", scope: !4560, file: !298, line: 277, baseType: !4583, size: 64, offset: 320)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{null, !380, !297, !7}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !4560, file: !298, line: 283, baseType: !4587, size: 64, offset: 384)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{!406, !380, !7, !363}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4560, file: !298, line: 285, baseType: !3566, size: 1152, offset: 448)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4560, file: !298, line: 286, baseType: !4567, size: 64, offset: 1600)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !4560, file: !298, line: 289, baseType: !4593, size: 64, offset: 1664)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!406, !380, !4596}
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_board_info", file: !298, line: 410, size: 640, elements: !4598)
!4598 = !{!4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4631, !4647, !4648}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4597, file: !298, line: 411, baseType: !387, size: 160)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4597, file: !298, line: 412, baseType: !384, size: 16, offset: 160)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4597, file: !298, line: 413, baseType: !384, size: 16, offset: 176)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4597, file: !298, line: 414, baseType: !806, size: 64, offset: 192)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4597, file: !298, line: 415, baseType: !363, size: 64, offset: 256)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4597, file: !298, line: 416, baseType: !3787, size: 64, offset: 320)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4597, file: !298, line: 417, baseType: !3800, size: 64, offset: 384)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4597, file: !298, line: 418, baseType: !4607, size: 64, offset: 448)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4609)
!4609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property_entry", file: !284, line: 263, size: 256, elements: !4610)
!4610 = !{!4611, !4612, !4613, !4614, !4615}
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4609, file: !284, line: 264, baseType: !806, size: 64)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4609, file: !284, line: 265, baseType: !925, size: 64, offset: 64)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "is_inline", scope: !4609, file: !284, line: 266, baseType: !836, size: 8, offset: 128)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4609, file: !284, line: 267, baseType: !283, size: 32, offset: 160)
!4615 = !DIDerivedType(tag: DW_TAG_member, scope: !4609, file: !284, line: 268, baseType: !4616, size: 64, offset: 192)
!4616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4609, file: !284, line: 268, size: 64, elements: !4617)
!4617 = !{!4618, !4619}
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4616, file: !284, line: 269, baseType: !2198, size: 64)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4616, file: !284, line: 276, baseType: !4620, size: 64)
!4620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4616, file: !284, line: 270, size: 64, elements: !4621)
!4621 = !{!4622, !4623, !4625, !4627, !4629}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "u8_data", scope: !4620, file: !284, line: 271, baseType: !4212, size: 64)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "u16_data", scope: !4620, file: !284, line: 272, baseType: !4624, size: 64)
!4624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 64, elements: !2430)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "u32_data", scope: !4620, file: !284, line: 273, baseType: !4626, size: 64)
!4626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 64, elements: !2470)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "u64_data", scope: !4620, file: !284, line: 274, baseType: !4628, size: 64)
!4628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !535, size: 64, elements: !658)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4620, file: !284, line: 275, baseType: !4630, size: 64)
!4630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, size: 64, elements: !658)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4597, file: !298, line: 419, baseType: !4632, size: 64, offset: 512)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4634)
!4634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4635, line: 20, size: 512, elements: !4636)
!4635 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4636 = !{!4637, !4639, !4640, !4641, !4642, !4643, !4645, !4646}
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4634, file: !4635, line: 21, baseType: !4638, size: 64)
!4638 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !368, line: 158, baseType: !3307)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4634, file: !4635, line: 22, baseType: !4638, size: 64, offset: 64)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4634, file: !4635, line: 23, baseType: !806, size: 64, offset: 128)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4634, file: !4635, line: 24, baseType: !362, size: 64, offset: 192)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4634, file: !4635, line: 25, baseType: !362, size: 64, offset: 256)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4634, file: !4635, line: 26, baseType: !4644, size: 64, offset: 320)
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4634, file: !4635, line: 26, baseType: !4644, size: 64, offset: 384)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4634, file: !4635, line: 26, baseType: !4644, size: 64, offset: 448)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !4597, file: !298, line: 420, baseType: !7, size: 32, offset: 576)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4597, file: !298, line: 421, baseType: !406, size: 32, offset: 608)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "address_list", scope: !4560, file: !298, line: 290, baseType: !4650, size: 64, offset: 1728)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "clients", scope: !4560, file: !298, line: 291, baseType: !372, size: 128, offset: 1792)
!4653 = !DIGlobalVariableExpression(var: !4654, expr: !DIExpression())
!4654 = distinct !DIGlobalVariable(name: "__key", scope: !4655, file: !3, line: 571, type: !995, isLocal: true, isDefinition: true)
!4655 = distinct !DISubprogram(name: "ts2020_probe", scope: !3, file: !3, line: 553, type: !4565, scopeLine: 555, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!4656 = !DIGlobalVariableExpression(var: !4657, expr: !DIExpression())
!4657 = distinct !DIGlobalVariable(name: "ts2020_tuner_ops", scope: !2, file: !3, line: 489, type: !4658, isLocal: true, isDefinition: true)
!4658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4395)
!4659 = !DIGlobalVariableExpression(var: !4660, expr: !DIExpression())
!4660 = distinct !DIGlobalVariable(name: "reg_vals", scope: !4661, file: !3, line: 95, type: !4662, isLocal: true, isDefinition: true)
!4661 = distinct !DISubprogram(name: "ts2020_init", scope: !3, file: !3, line: 78, type: !4221, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!4662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4663, size: 176, elements: !4668)
!4663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4664)
!4664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ts2020_reg_val", file: !3, line: 40, size: 16, elements: !4665)
!4665 = !{!4666, !4667}
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !4664, file: !3, line: 41, baseType: !427, size: 8)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4664, file: !3, line: 42, baseType: !427, size: 8, offset: 8)
!4668 = !{!4669}
!4669 = !DISubrange(count: 11)
!4670 = !DIGlobalVariableExpression(var: !4671, expr: !DIExpression())
!4671 = distinct !DIGlobalVariable(name: "ts2020_id_table", scope: !2, file: !3, line: 714, type: !4672, isLocal: true, isDefinition: true)
!4672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4568, size: 768, elements: !1001)
!4673 = !{i32 7, !"Dwarf Version", i32 4}
!4674 = !{i32 2, !"Debug Info Version", i32 3}
!4675 = !{i32 1, !"wchar_size", i32 2}
!4676 = !{i32 1, !"Code Model", i32 2}
!4677 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4678 = distinct !DISubprogram(name: "ts2020_attach", scope: !3, file: !3, line: 504, type: !4679, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !472)
!4679 = !DISubroutineType(types: !4680)
!4680 = !{!4192, !4192, !4681, !392}
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 64)
!4682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4683)
!4683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ts2020_config", file: !4684, line: 15, size: 320, elements: !4685)
!4684 = !DIFile(filename: "drivers/media/dvb-frontends/ts2020.h", directory: "/home/lizy2001/genbc/linux")
!4685 = !{!4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_address", scope: !4683, file: !4684, line: 16, baseType: !427, size: 8)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_div", scope: !4683, file: !4684, line: 17, baseType: !442, size: 32, offset: 32)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "loop_through", scope: !4683, file: !4684, line: 22, baseType: !836, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "clk_out", scope: !4683, file: !4684, line: 30, baseType: !427, size: 2, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "clk_out_div", scope: !4683, file: !4684, line: 36, baseType: !427, size: 5, offset: 67, flags: DIFlagBitField, extraData: i64 64)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "dont_poll", scope: !4683, file: !4684, line: 39, baseType: !836, size: 1, offset: 72, flags: DIFlagBitField, extraData: i64 64)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "fe", scope: !4683, file: !4684, line: 44, baseType: !4192, size: 64, offset: 128)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "attach_in_use", scope: !4683, file: !4684, line: 49, baseType: !427, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "get_agc_pwm", scope: !4683, file: !4684, line: 54, baseType: !4520, size: 64, offset: 256)
!4695 = !DILocalVariable(name: "fe", arg: 1, scope: !4678, file: !3, line: 504, type: !4192)
!4696 = !DILocation(line: 504, column: 57, scope: !4678)
!4697 = !DILocalVariable(name: "config", arg: 2, scope: !4678, file: !3, line: 505, type: !4681)
!4698 = !DILocation(line: 505, column: 34, scope: !4678)
!4699 = !DILocalVariable(name: "i2c", arg: 3, scope: !4678, file: !3, line: 506, type: !392)
!4700 = !DILocation(line: 506, column: 26, scope: !4678)
!4701 = !DILocalVariable(name: "client", scope: !4678, file: !3, line: 508, type: !380)
!4702 = !DILocation(line: 508, column: 21, scope: !4678)
!4703 = !DILocalVariable(name: "board_info", scope: !4678, file: !3, line: 509, type: !4597)
!4704 = !DILocation(line: 509, column: 24, scope: !4678)
!4705 = !DILocalVariable(name: "pdata", scope: !4678, file: !3, line: 512, type: !4683)
!4706 = !DILocation(line: 512, column: 23, scope: !4678)
!4707 = !DILocation(line: 514, column: 2, scope: !4678)
!4708 = !DILocation(line: 514, column: 17, scope: !4678)
!4709 = !DILocation(line: 515, column: 13, scope: !4678)
!4710 = !DILocation(line: 515, column: 8, scope: !4678)
!4711 = !DILocation(line: 515, column: 11, scope: !4678)
!4712 = !DILocation(line: 516, column: 8, scope: !4678)
!4713 = !DILocation(line: 516, column: 22, scope: !4678)
!4714 = !DILocation(line: 518, column: 2, scope: !4678)
!4715 = !DILocation(line: 519, column: 21, scope: !4678)
!4716 = !DILocation(line: 519, column: 10, scope: !4678)
!4717 = !DILocation(line: 519, column: 2, scope: !4678)
!4718 = !DILocation(line: 520, column: 20, scope: !4678)
!4719 = !DILocation(line: 520, column: 28, scope: !4678)
!4720 = !DILocation(line: 520, column: 13, scope: !4678)
!4721 = !DILocation(line: 520, column: 18, scope: !4678)
!4722 = !DILocation(line: 521, column: 29, scope: !4678)
!4723 = !DILocation(line: 521, column: 13, scope: !4678)
!4724 = !DILocation(line: 521, column: 27, scope: !4678)
!4725 = !DILocation(line: 522, column: 33, scope: !4678)
!4726 = !DILocation(line: 522, column: 11, scope: !4678)
!4727 = !DILocation(line: 522, column: 9, scope: !4678)
!4728 = !DILocation(line: 523, column: 29, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4678, file: !3, line: 523, column: 6)
!4730 = !DILocation(line: 523, column: 7, scope: !4729)
!4731 = !DILocation(line: 523, column: 6, scope: !4678)
!4732 = !DILocation(line: 524, column: 3, scope: !4729)
!4733 = !DILocation(line: 526, column: 9, scope: !4678)
!4734 = !DILocation(line: 526, column: 2, scope: !4678)
!4735 = !DILocation(line: 527, column: 1, scope: !4678)
!4736 = distinct !DISubprogram(name: "i2c_client_has_driver", scope: !298, file: !298, line: 857, type: !4737, scopeLine: 858, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!4737 = !DISubroutineType(types: !4738)
!4738 = !{!836, !380}
!4739 = !DILocalVariable(name: "client", arg: 1, scope: !4736, file: !298, line: 857, type: !380)
!4740 = !DILocation(line: 857, column: 61, scope: !4736)
!4741 = !DILocation(line: 859, column: 25, scope: !4736)
!4742 = !DILocation(line: 859, column: 10, scope: !4736)
!4743 = !DILocation(line: 859, column: 33, scope: !4736)
!4744 = !DILocation(line: 859, column: 36, scope: !4736)
!4745 = !DILocation(line: 859, column: 44, scope: !4736)
!4746 = !DILocation(line: 859, column: 48, scope: !4736)
!4747 = !DILocation(line: 0, scope: !4736)
!4748 = !DILocation(line: 859, column: 2, scope: !4736)
!4749 = distinct !DISubprogram(name: "ts2020_driver_init", scope: !3, file: !3, line: 730, type: !4750, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!4750 = !DISubroutineType(types: !4751)
!4751 = !{!406}
!4752 = !DILocation(line: 730, column: 1, scope: !4749)
!4753 = distinct !DISubprogram(name: "ts2020_driver_exit", scope: !3, file: !3, line: 730, type: !3075, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!4754 = !DILocation(line: 730, column: 1, scope: !4753)
!4755 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !4756, file: !4756, line: 39, type: !4757, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!4756 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!4757 = !DISubroutineType(types: !4758)
!4758 = !{!836, !2198}
!4759 = !DILocalVariable(name: "ptr", arg: 1, scope: !4755, file: !4756, line: 39, type: !2198)
!4760 = !DILocation(line: 39, column: 68, scope: !4755)
!4761 = !DILocation(line: 41, column: 9, scope: !4755)
!4762 = !DILocation(line: 41, column: 24, scope: !4755)
!4763 = !DILocation(line: 41, column: 27, scope: !4755)
!4764 = !DILocation(line: 41, column: 2, scope: !4755)
!4765 = !DILocalVariable(name: "client", arg: 1, scope: !4655, file: !3, line: 553, type: !380)
!4766 = !DILocation(line: 553, column: 44, scope: !4655)
!4767 = !DILocalVariable(name: "id", arg: 2, scope: !4655, file: !3, line: 554, type: !4567)
!4768 = !DILocation(line: 554, column: 31, scope: !4655)
!4769 = !DILocalVariable(name: "pdata", scope: !4655, file: !3, line: 556, type: !4770)
!4770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4771 = !DILocation(line: 556, column: 24, scope: !4655)
!4772 = !DILocation(line: 556, column: 32, scope: !4655)
!4773 = !DILocation(line: 556, column: 40, scope: !4655)
!4774 = !DILocation(line: 556, column: 44, scope: !4655)
!4775 = !DILocalVariable(name: "fe", scope: !4655, file: !3, line: 557, type: !4192)
!4776 = !DILocation(line: 557, column: 23, scope: !4655)
!4777 = !DILocation(line: 557, column: 28, scope: !4655)
!4778 = !DILocation(line: 557, column: 35, scope: !4655)
!4779 = !DILocalVariable(name: "dev", scope: !4655, file: !3, line: 558, type: !376)
!4780 = !DILocation(line: 558, column: 22, scope: !4655)
!4781 = !DILocalVariable(name: "ret", scope: !4655, file: !3, line: 559, type: !406)
!4782 = !DILocation(line: 559, column: 6, scope: !4655)
!4783 = !DILocalVariable(name: "u8tmp", scope: !4655, file: !3, line: 560, type: !427)
!4784 = !DILocation(line: 560, column: 5, scope: !4655)
!4785 = !DILocalVariable(name: "utmp", scope: !4655, file: !3, line: 561, type: !7)
!4786 = !DILocation(line: 561, column: 15, scope: !4655)
!4787 = !DILocalVariable(name: "chip_str", scope: !4655, file: !3, line: 562, type: !831)
!4788 = !DILocation(line: 562, column: 8, scope: !4655)
!4789 = !DILocation(line: 564, column: 8, scope: !4655)
!4790 = !DILocation(line: 564, column: 6, scope: !4655)
!4791 = !DILocation(line: 565, column: 7, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 565, column: 6)
!4793 = !DILocation(line: 565, column: 6, scope: !4655)
!4794 = !DILocation(line: 566, column: 7, scope: !4795)
!4795 = distinct !DILexicalBlock(scope: !4792, file: !3, line: 565, column: 12)
!4796 = !DILocation(line: 567, column: 3, scope: !4795)
!4797 = !DILocation(line: 571, column: 2, scope: !4655)
!4798 = !DILocation(line: 571, column: 2, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 571, column: 2)
!4800 = !DILocation(line: 572, column: 2, scope: !4655)
!4801 = !DILocation(line: 572, column: 7, scope: !4655)
!4802 = !DILocation(line: 572, column: 21, scope: !4655)
!4803 = !DILocation(line: 572, column: 30, scope: !4655)
!4804 = !DILocation(line: 573, column: 2, scope: !4655)
!4805 = !DILocation(line: 573, column: 7, scope: !4655)
!4806 = !DILocation(line: 573, column: 21, scope: !4655)
!4807 = !DILocation(line: 573, column: 30, scope: !4655)
!4808 = !DILocation(line: 574, column: 2, scope: !4655)
!4809 = !DILocation(line: 574, column: 7, scope: !4655)
!4810 = !DILocation(line: 574, column: 21, scope: !4655)
!4811 = !DILocation(line: 574, column: 26, scope: !4655)
!4812 = !DILocation(line: 575, column: 2, scope: !4655)
!4813 = !DILocation(line: 575, column: 7, scope: !4655)
!4814 = !DILocation(line: 575, column: 21, scope: !4655)
!4815 = !DILocation(line: 575, column: 28, scope: !4655)
!4816 = !DILocation(line: 576, column: 32, scope: !4655)
!4817 = !DILocation(line: 576, column: 2, scope: !4655)
!4818 = !DILocation(line: 576, column: 7, scope: !4655)
!4819 = !DILocation(line: 576, column: 21, scope: !4655)
!4820 = !DILocation(line: 576, column: 30, scope: !4655)
!4821 = !DILocation(line: 577, column: 16, scope: !4655)
!4822 = !DILocation(line: 577, column: 2, scope: !4655)
!4823 = !DILocation(line: 577, column: 7, scope: !4655)
!4824 = !DILocation(line: 577, column: 14, scope: !4655)
!4825 = !DILocation(line: 578, column: 13, scope: !4826)
!4826 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 578, column: 6)
!4827 = !DILocation(line: 578, column: 18, scope: !4826)
!4828 = !DILocation(line: 578, column: 6, scope: !4826)
!4829 = !DILocation(line: 578, column: 6, scope: !4655)
!4830 = !DILocation(line: 579, column: 17, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4826, file: !3, line: 578, column: 27)
!4832 = !DILocation(line: 579, column: 22, scope: !4831)
!4833 = !DILocation(line: 579, column: 9, scope: !4831)
!4834 = !DILocation(line: 579, column: 7, scope: !4831)
!4835 = !DILocation(line: 580, column: 3, scope: !4831)
!4836 = !DILocation(line: 583, column: 13, scope: !4655)
!4837 = !DILocation(line: 583, column: 21, scope: !4655)
!4838 = !DILocation(line: 583, column: 2, scope: !4655)
!4839 = !DILocation(line: 583, column: 7, scope: !4655)
!4840 = !DILocation(line: 583, column: 11, scope: !4655)
!4841 = !DILocation(line: 584, column: 21, scope: !4655)
!4842 = !DILocation(line: 584, column: 29, scope: !4655)
!4843 = !DILocation(line: 584, column: 2, scope: !4655)
!4844 = !DILocation(line: 584, column: 7, scope: !4655)
!4845 = !DILocation(line: 584, column: 19, scope: !4655)
!4846 = !DILocation(line: 585, column: 22, scope: !4655)
!4847 = !DILocation(line: 585, column: 29, scope: !4655)
!4848 = !DILocation(line: 585, column: 2, scope: !4655)
!4849 = !DILocation(line: 585, column: 7, scope: !4655)
!4850 = !DILocation(line: 585, column: 20, scope: !4655)
!4851 = !DILocation(line: 586, column: 17, scope: !4655)
!4852 = !DILocation(line: 586, column: 24, scope: !4655)
!4853 = !DILocation(line: 586, column: 2, scope: !4655)
!4854 = !DILocation(line: 586, column: 7, scope: !4655)
!4855 = !DILocation(line: 586, column: 15, scope: !4655)
!4856 = !DILocation(line: 587, column: 21, scope: !4655)
!4857 = !DILocation(line: 587, column: 28, scope: !4655)
!4858 = !DILocation(line: 587, column: 2, scope: !4655)
!4859 = !DILocation(line: 587, column: 7, scope: !4655)
!4860 = !DILocation(line: 587, column: 19, scope: !4655)
!4861 = !DILocation(line: 588, column: 19, scope: !4655)
!4862 = !DILocation(line: 588, column: 26, scope: !4655)
!4863 = !DILocation(line: 588, column: 2, scope: !4655)
!4864 = !DILocation(line: 588, column: 7, scope: !4655)
!4865 = !DILocation(line: 588, column: 17, scope: !4655)
!4866 = !DILocation(line: 589, column: 23, scope: !4655)
!4867 = !DILocation(line: 589, column: 30, scope: !4655)
!4868 = !DILocation(line: 589, column: 2, scope: !4655)
!4869 = !DILocation(line: 589, column: 7, scope: !4655)
!4870 = !DILocation(line: 589, column: 21, scope: !4655)
!4871 = !DILocation(line: 590, column: 12, scope: !4655)
!4872 = !DILocation(line: 590, column: 2, scope: !4655)
!4873 = !DILocation(line: 590, column: 7, scope: !4655)
!4874 = !DILocation(line: 590, column: 10, scope: !4655)
!4875 = !DILocation(line: 591, column: 21, scope: !4655)
!4876 = !DILocation(line: 591, column: 28, scope: !4655)
!4877 = !DILocation(line: 591, column: 2, scope: !4655)
!4878 = !DILocation(line: 591, column: 7, scope: !4655)
!4879 = !DILocation(line: 591, column: 19, scope: !4655)
!4880 = !DILocation(line: 592, column: 19, scope: !4655)
!4881 = !DILocation(line: 592, column: 2, scope: !4655)
!4882 = !DILocation(line: 592, column: 6, scope: !4655)
!4883 = !DILocation(line: 592, column: 17, scope: !4655)
!4884 = !DILocation(line: 593, column: 16, scope: !4655)
!4885 = !DILocation(line: 593, column: 2, scope: !4655)
!4886 = !DILocation(line: 593, column: 7, scope: !4655)
!4887 = !DILocation(line: 593, column: 14, scope: !4655)
!4888 = !DILocation(line: 594, column: 2, scope: !4655)
!4889 = !DILocation(line: 594, column: 2, scope: !4890)
!4890 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 594, column: 2)
!4891 = !DILocation(line: 594, column: 2, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 594, column: 2)
!4893 = !DILocation(line: 597, column: 20, scope: !4655)
!4894 = !DILocation(line: 597, column: 25, scope: !4655)
!4895 = !DILocation(line: 597, column: 8, scope: !4655)
!4896 = !DILocation(line: 597, column: 6, scope: !4655)
!4897 = !DILocation(line: 598, column: 6, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 598, column: 6)
!4899 = !DILocation(line: 598, column: 6, scope: !4655)
!4900 = !DILocation(line: 599, column: 3, scope: !4898)
!4901 = !DILocation(line: 601, column: 7, scope: !4902)
!4902 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 601, column: 6)
!4903 = !DILocation(line: 601, column: 12, scope: !4902)
!4904 = !DILocation(line: 601, column: 20, scope: !4902)
!4905 = !DILocation(line: 601, column: 6, scope: !4655)
!4906 = !DILocation(line: 602, column: 22, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4902, file: !3, line: 601, column: 29)
!4908 = !DILocation(line: 602, column: 27, scope: !4907)
!4909 = !DILocation(line: 602, column: 9, scope: !4907)
!4910 = !DILocation(line: 602, column: 7, scope: !4907)
!4911 = !DILocation(line: 603, column: 7, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4907, file: !3, line: 603, column: 7)
!4913 = !DILocation(line: 603, column: 7, scope: !4907)
!4914 = !DILocation(line: 604, column: 4, scope: !4912)
!4915 = !DILocation(line: 606, column: 3, scope: !4907)
!4916 = !DILocation(line: 607, column: 2, scope: !4907)
!4917 = !DILocation(line: 609, column: 21, scope: !4655)
!4918 = !DILocation(line: 609, column: 26, scope: !4655)
!4919 = !DILocation(line: 609, column: 8, scope: !4655)
!4920 = !DILocation(line: 609, column: 6, scope: !4655)
!4921 = !DILocation(line: 610, column: 6, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 610, column: 6)
!4923 = !DILocation(line: 610, column: 6, scope: !4655)
!4924 = !DILocation(line: 611, column: 3, scope: !4922)
!4925 = !DILocation(line: 613, column: 2, scope: !4655)
!4926 = !DILocation(line: 615, column: 20, scope: !4655)
!4927 = !DILocation(line: 615, column: 25, scope: !4655)
!4928 = !DILocation(line: 615, column: 8, scope: !4655)
!4929 = !DILocation(line: 615, column: 6, scope: !4655)
!4930 = !DILocation(line: 616, column: 6, scope: !4931)
!4931 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 616, column: 6)
!4932 = !DILocation(line: 616, column: 6, scope: !4655)
!4933 = !DILocation(line: 617, column: 3, scope: !4931)
!4934 = !DILocation(line: 621, column: 10, scope: !4655)
!4935 = !DILocation(line: 621, column: 2, scope: !4655)
!4936 = !DILocation(line: 625, column: 3, scope: !4937)
!4937 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 621, column: 16)
!4938 = !DILocation(line: 625, column: 8, scope: !4937)
!4939 = !DILocation(line: 625, column: 14, scope: !4937)
!4940 = !DILocation(line: 626, column: 12, scope: !4937)
!4941 = !DILocation(line: 627, column: 8, scope: !4942)
!4942 = distinct !DILexicalBlock(scope: !4937, file: !3, line: 627, column: 7)
!4943 = !DILocation(line: 627, column: 13, scope: !4942)
!4944 = !DILocation(line: 627, column: 7, scope: !4937)
!4945 = !DILocation(line: 628, column: 4, scope: !4942)
!4946 = !DILocation(line: 628, column: 9, scope: !4942)
!4947 = !DILocation(line: 628, column: 23, scope: !4942)
!4948 = !DILocation(line: 629, column: 3, scope: !4937)
!4949 = !DILocation(line: 632, column: 3, scope: !4937)
!4950 = !DILocation(line: 632, column: 8, scope: !4937)
!4951 = !DILocation(line: 632, column: 14, scope: !4937)
!4952 = !DILocation(line: 633, column: 12, scope: !4937)
!4953 = !DILocation(line: 634, column: 8, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4937, file: !3, line: 634, column: 7)
!4955 = !DILocation(line: 634, column: 13, scope: !4954)
!4956 = !DILocation(line: 634, column: 7, scope: !4937)
!4957 = !DILocation(line: 635, column: 4, scope: !4954)
!4958 = !DILocation(line: 635, column: 9, scope: !4954)
!4959 = !DILocation(line: 635, column: 23, scope: !4954)
!4960 = !DILocation(line: 636, column: 3, scope: !4937)
!4961 = !DILocation(line: 638, column: 7, scope: !4937)
!4962 = !DILocation(line: 639, column: 3, scope: !4937)
!4963 = !DILocation(line: 642, column: 6, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 642, column: 6)
!4965 = !DILocation(line: 642, column: 11, scope: !4964)
!4966 = !DILocation(line: 642, column: 17, scope: !4964)
!4967 = !DILocation(line: 642, column: 6, scope: !4655)
!4968 = !DILocation(line: 643, column: 11, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 642, column: 38)
!4970 = !DILocation(line: 643, column: 16, scope: !4969)
!4971 = !DILocation(line: 643, column: 3, scope: !4969)
!4972 = !DILocation(line: 645, column: 10, scope: !4973)
!4973 = distinct !DILexicalBlock(scope: !4969, file: !3, line: 643, column: 25)
!4974 = !DILocation(line: 646, column: 4, scope: !4973)
!4975 = !DILocation(line: 648, column: 10, scope: !4973)
!4976 = !DILocation(line: 649, column: 23, scope: !4973)
!4977 = !DILocation(line: 649, column: 28, scope: !4973)
!4978 = !DILocation(line: 649, column: 42, scope: !4973)
!4979 = !DILocation(line: 649, column: 47, scope: !4973)
!4980 = !DILocation(line: 649, column: 10, scope: !4973)
!4981 = !DILocation(line: 649, column: 8, scope: !4973)
!4982 = !DILocation(line: 650, column: 8, scope: !4983)
!4983 = distinct !DILexicalBlock(scope: !4973, file: !3, line: 650, column: 8)
!4984 = !DILocation(line: 650, column: 8, scope: !4973)
!4985 = !DILocation(line: 651, column: 5, scope: !4983)
!4986 = !DILocation(line: 652, column: 4, scope: !4973)
!4987 = !DILocation(line: 654, column: 10, scope: !4973)
!4988 = !DILocation(line: 655, column: 4, scope: !4973)
!4989 = !DILocation(line: 657, column: 8, scope: !4973)
!4990 = !DILocation(line: 658, column: 4, scope: !4973)
!4991 = !DILocation(line: 661, column: 22, scope: !4969)
!4992 = !DILocation(line: 661, column: 27, scope: !4969)
!4993 = !DILocation(line: 661, column: 41, scope: !4969)
!4994 = !DILocation(line: 661, column: 9, scope: !4969)
!4995 = !DILocation(line: 661, column: 7, scope: !4969)
!4996 = !DILocation(line: 662, column: 7, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4969, file: !3, line: 662, column: 7)
!4998 = !DILocation(line: 662, column: 7, scope: !4969)
!4999 = !DILocation(line: 663, column: 4, scope: !4997)
!5000 = !DILocation(line: 665, column: 7, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !4969, file: !3, line: 665, column: 7)
!5002 = !DILocation(line: 665, column: 12, scope: !5001)
!5003 = !DILocation(line: 665, column: 7, scope: !4969)
!5004 = !DILocation(line: 666, column: 10, scope: !5001)
!5005 = !DILocation(line: 666, column: 4, scope: !5001)
!5006 = !DILocation(line: 668, column: 10, scope: !5001)
!5007 = !DILocation(line: 670, column: 22, scope: !4969)
!5008 = !DILocation(line: 670, column: 27, scope: !4969)
!5009 = !DILocation(line: 670, column: 41, scope: !4969)
!5010 = !DILocation(line: 670, column: 9, scope: !4969)
!5011 = !DILocation(line: 670, column: 7, scope: !4969)
!5012 = !DILocation(line: 671, column: 7, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !4969, file: !3, line: 671, column: 7)
!5014 = !DILocation(line: 671, column: 7, scope: !4969)
!5015 = !DILocation(line: 672, column: 4, scope: !5013)
!5016 = !DILocation(line: 673, column: 2, scope: !4969)
!5017 = !DILocation(line: 676, column: 21, scope: !4655)
!5018 = !DILocation(line: 676, column: 26, scope: !4655)
!5019 = !DILocation(line: 676, column: 8, scope: !4655)
!5020 = !DILocation(line: 676, column: 6, scope: !4655)
!5021 = !DILocation(line: 677, column: 6, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 677, column: 6)
!5023 = !DILocation(line: 677, column: 6, scope: !4655)
!5024 = !DILocation(line: 678, column: 3, scope: !5022)
!5025 = !DILocation(line: 680, column: 2, scope: !4655)
!5026 = !DILocation(line: 683, column: 10, scope: !4655)
!5027 = !DILocation(line: 683, column: 14, scope: !4655)
!5028 = !DILocation(line: 683, column: 18, scope: !4655)
!5029 = !DILocation(line: 683, column: 2, scope: !4655)
!5030 = !DILocation(line: 685, column: 7, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 685, column: 6)
!5032 = !DILocation(line: 685, column: 14, scope: !5031)
!5033 = !DILocation(line: 685, column: 6, scope: !4655)
!5034 = !DILocation(line: 686, column: 3, scope: !5031)
!5035 = !DILocation(line: 686, column: 7, scope: !5031)
!5036 = !DILocation(line: 686, column: 11, scope: !5031)
!5037 = !DILocation(line: 686, column: 21, scope: !5031)
!5038 = !DILocation(line: 686, column: 29, scope: !5031)
!5039 = !DILocation(line: 688, column: 21, scope: !4655)
!5040 = !DILocation(line: 688, column: 29, scope: !4655)
!5041 = !DILocation(line: 688, column: 2, scope: !4655)
!5042 = !DILocation(line: 689, column: 2, scope: !4655)
!5043 = !DILabel(scope: !4655, name: "err_regmap_exit", file: !3, line: 690)
!5044 = !DILocation(line: 690, column: 1, scope: !4655)
!5045 = !DILocation(line: 691, column: 14, scope: !4655)
!5046 = !DILocation(line: 691, column: 19, scope: !4655)
!5047 = !DILocation(line: 691, column: 2, scope: !4655)
!5048 = !DILabel(scope: !4655, name: "err_kfree", file: !3, line: 692)
!5049 = !DILocation(line: 692, column: 1, scope: !4655)
!5050 = !DILocation(line: 693, column: 8, scope: !4655)
!5051 = !DILocation(line: 693, column: 2, scope: !4655)
!5052 = !DILabel(scope: !4655, name: "err", file: !3, line: 694)
!5053 = !DILocation(line: 694, column: 1, scope: !4655)
!5054 = !DILocation(line: 696, column: 9, scope: !4655)
!5055 = !DILocation(line: 696, column: 2, scope: !4655)
!5056 = !DILocation(line: 697, column: 1, scope: !4655)
!5057 = distinct !DISubprogram(name: "ts2020_remove", scope: !3, file: !3, line: 699, type: !4575, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!5058 = !DILocalVariable(name: "client", arg: 1, scope: !5057, file: !3, line: 699, type: !380)
!5059 = !DILocation(line: 699, column: 45, scope: !5057)
!5060 = !DILocalVariable(name: "dev", scope: !5057, file: !3, line: 701, type: !376)
!5061 = !DILocation(line: 701, column: 22, scope: !5057)
!5062 = !DILocation(line: 701, column: 47, scope: !5057)
!5063 = !DILocation(line: 701, column: 28, scope: !5057)
!5064 = !DILocation(line: 706, column: 7, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5057, file: !3, line: 706, column: 6)
!5066 = !DILocation(line: 706, column: 12, scope: !5065)
!5067 = !DILocation(line: 706, column: 6, scope: !5057)
!5068 = !DILocation(line: 707, column: 29, scope: !5065)
!5069 = !DILocation(line: 707, column: 34, scope: !5065)
!5070 = !DILocation(line: 707, column: 3, scope: !5065)
!5071 = !DILocation(line: 709, column: 14, scope: !5057)
!5072 = !DILocation(line: 709, column: 19, scope: !5057)
!5073 = !DILocation(line: 709, column: 2, scope: !5057)
!5074 = !DILocation(line: 710, column: 8, scope: !5057)
!5075 = !DILocation(line: 710, column: 2, scope: !5057)
!5076 = !DILocation(line: 711, column: 2, scope: !5057)
!5077 = distinct !DISubprogram(name: "kzalloc", scope: !349, file: !349, line: 662, type: !5078, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!5078 = !DISubroutineType(types: !5079)
!5079 = !{!363, !925, !367}
!5080 = !DILocalVariable(name: "s", arg: 1, scope: !5081, file: !349, line: 445, type: !1270)
!5081 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !349, file: !349, line: 445, type: !5082, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!5082 = !DISubroutineType(types: !5083)
!5083 = !{!363, !1270, !367, !925}
!5084 = !DILocation(line: 445, column: 72, scope: !5081, inlinedAt: !5085)
!5085 = distinct !DILocation(line: 552, column: 10, scope: !5086, inlinedAt: !5089)
!5086 = distinct !DILexicalBlock(scope: !5087, file: !349, line: 540, column: 34)
!5087 = distinct !DILexicalBlock(scope: !5088, file: !349, line: 540, column: 6)
!5088 = distinct !DISubprogram(name: "kmalloc", scope: !349, file: !349, line: 538, type: !5078, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!5089 = distinct !DILocation(line: 664, column: 9, scope: !5077)
!5090 = !DILocalVariable(name: "flags", arg: 2, scope: !5081, file: !349, line: 446, type: !367)
!5091 = !DILocation(line: 446, column: 9, scope: !5081, inlinedAt: !5085)
!5092 = !DILocalVariable(name: "size", arg: 3, scope: !5081, file: !349, line: 446, type: !925)
!5093 = !DILocation(line: 446, column: 23, scope: !5081, inlinedAt: !5085)
!5094 = !DILocalVariable(name: "ret", scope: !5081, file: !349, line: 448, type: !363)
!5095 = !DILocation(line: 448, column: 8, scope: !5081, inlinedAt: !5085)
!5096 = !DILocalVariable(name: "flags", arg: 1, scope: !5097, file: !349, line: 318, type: !367)
!5097 = distinct !DISubprogram(name: "kmalloc_type", scope: !349, file: !349, line: 318, type: !5098, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!5098 = !DISubroutineType(types: !5099)
!5099 = !{!348, !367}
!5100 = !DILocation(line: 318, column: 67, scope: !5097, inlinedAt: !5101)
!5101 = distinct !DILocation(line: 553, column: 20, scope: !5086, inlinedAt: !5089)
!5102 = !DILocalVariable(name: "size", arg: 1, scope: !5103, file: !349, line: 346, type: !925)
!5103 = distinct !DISubprogram(name: "kmalloc_index", scope: !349, file: !349, line: 346, type: !5104, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!5104 = !DISubroutineType(types: !5105)
!5105 = !{!7, !925}
!5106 = !DILocation(line: 346, column: 58, scope: !5103, inlinedAt: !5107)
!5107 = distinct !DILocation(line: 547, column: 11, scope: !5086, inlinedAt: !5089)
!5108 = !DILocalVariable(name: "size", arg: 1, scope: !5109, file: !349, line: 472, type: !925)
!5109 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !349, file: !349, line: 472, type: !5110, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!5110 = !DISubroutineType(types: !5111)
!5111 = !{!363, !925, !367, !7}
!5112 = !DILocation(line: 472, column: 28, scope: !5109, inlinedAt: !5113)
!5113 = distinct !DILocation(line: 481, column: 9, scope: !5114, inlinedAt: !5115)
!5114 = distinct !DISubprogram(name: "kmalloc_large", scope: !349, file: !349, line: 478, type: !5078, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!5115 = distinct !DILocation(line: 545, column: 11, scope: !5116, inlinedAt: !5089)
!5116 = distinct !DILexicalBlock(scope: !5086, file: !349, line: 544, column: 7)
!5117 = !DILocalVariable(name: "flags", arg: 2, scope: !5109, file: !349, line: 472, type: !367)
!5118 = !DILocation(line: 472, column: 40, scope: !5109, inlinedAt: !5113)
!5119 = !DILocalVariable(name: "order", arg: 3, scope: !5109, file: !349, line: 472, type: !7)
!5120 = !DILocation(line: 472, column: 60, scope: !5109, inlinedAt: !5113)
!5121 = !DILocalVariable(name: "size", arg: 1, scope: !5114, file: !349, line: 478, type: !925)
!5122 = !DILocation(line: 478, column: 51, scope: !5114, inlinedAt: !5115)
!5123 = !DILocalVariable(name: "flags", arg: 2, scope: !5114, file: !349, line: 478, type: !367)
!5124 = !DILocation(line: 478, column: 63, scope: !5114, inlinedAt: !5115)
!5125 = !DILocalVariable(name: "order", scope: !5114, file: !349, line: 480, type: !7)
!5126 = !DILocation(line: 480, column: 15, scope: !5114, inlinedAt: !5115)
!5127 = !DILocalVariable(name: "size", arg: 1, scope: !5088, file: !349, line: 538, type: !925)
!5128 = !DILocation(line: 538, column: 45, scope: !5088, inlinedAt: !5089)
!5129 = !DILocalVariable(name: "flags", arg: 2, scope: !5088, file: !349, line: 538, type: !367)
!5130 = !DILocation(line: 538, column: 57, scope: !5088, inlinedAt: !5089)
!5131 = !DILocalVariable(name: "index", scope: !5086, file: !349, line: 542, type: !7)
!5132 = !DILocation(line: 542, column: 16, scope: !5086, inlinedAt: !5089)
!5133 = !DILocalVariable(name: "size", arg: 1, scope: !5077, file: !349, line: 662, type: !925)
!5134 = !DILocation(line: 662, column: 36, scope: !5077)
!5135 = !DILocalVariable(name: "flags", arg: 2, scope: !5077, file: !349, line: 662, type: !367)
!5136 = !DILocation(line: 662, column: 48, scope: !5077)
!5137 = !DILocation(line: 664, column: 17, scope: !5077)
!5138 = !DILocation(line: 664, column: 23, scope: !5077)
!5139 = !DILocation(line: 664, column: 29, scope: !5077)
!5140 = !DILocation(line: 540, column: 27, scope: !5087, inlinedAt: !5089)
!5141 = !DILocation(line: 540, column: 6, scope: !5087, inlinedAt: !5089)
!5142 = !DILocation(line: 540, column: 6, scope: !5088, inlinedAt: !5089)
!5143 = !DILocation(line: 544, column: 7, scope: !5116, inlinedAt: !5089)
!5144 = !DILocation(line: 544, column: 12, scope: !5116, inlinedAt: !5089)
!5145 = !DILocation(line: 544, column: 7, scope: !5086, inlinedAt: !5089)
!5146 = !DILocation(line: 545, column: 25, scope: !5116, inlinedAt: !5089)
!5147 = !DILocation(line: 545, column: 31, scope: !5116, inlinedAt: !5089)
!5148 = !DILocation(line: 480, column: 33, scope: !5114, inlinedAt: !5115)
!5149 = !DILocation(line: 480, column: 23, scope: !5114, inlinedAt: !5115)
!5150 = !DILocation(line: 481, column: 29, scope: !5114, inlinedAt: !5115)
!5151 = !DILocation(line: 481, column: 35, scope: !5114, inlinedAt: !5115)
!5152 = !DILocation(line: 481, column: 42, scope: !5114, inlinedAt: !5115)
!5153 = !DILocation(line: 474, column: 23, scope: !5109, inlinedAt: !5113)
!5154 = !DILocation(line: 474, column: 29, scope: !5109, inlinedAt: !5113)
!5155 = !DILocation(line: 474, column: 36, scope: !5109, inlinedAt: !5113)
!5156 = !DILocation(line: 474, column: 9, scope: !5109, inlinedAt: !5113)
!5157 = !DILocation(line: 545, column: 4, scope: !5116, inlinedAt: !5089)
!5158 = !DILocation(line: 547, column: 25, scope: !5086, inlinedAt: !5089)
!5159 = !DILocation(line: 348, column: 7, scope: !5160, inlinedAt: !5107)
!5160 = distinct !DILexicalBlock(scope: !5103, file: !349, line: 348, column: 6)
!5161 = !DILocation(line: 348, column: 6, scope: !5103, inlinedAt: !5107)
!5162 = !DILocation(line: 349, column: 3, scope: !5160, inlinedAt: !5107)
!5163 = !DILocation(line: 351, column: 6, scope: !5164, inlinedAt: !5107)
!5164 = distinct !DILexicalBlock(scope: !5103, file: !349, line: 351, column: 6)
!5165 = !DILocation(line: 351, column: 11, scope: !5164, inlinedAt: !5107)
!5166 = !DILocation(line: 351, column: 6, scope: !5103, inlinedAt: !5107)
!5167 = !DILocation(line: 352, column: 3, scope: !5164, inlinedAt: !5107)
!5168 = !DILocation(line: 354, column: 32, scope: !5169, inlinedAt: !5107)
!5169 = distinct !DILexicalBlock(scope: !5103, file: !349, line: 354, column: 6)
!5170 = !DILocation(line: 354, column: 37, scope: !5169, inlinedAt: !5107)
!5171 = !DILocation(line: 354, column: 42, scope: !5169, inlinedAt: !5107)
!5172 = !DILocation(line: 354, column: 45, scope: !5169, inlinedAt: !5107)
!5173 = !DILocation(line: 354, column: 50, scope: !5169, inlinedAt: !5107)
!5174 = !DILocation(line: 354, column: 6, scope: !5103, inlinedAt: !5107)
!5175 = !DILocation(line: 355, column: 3, scope: !5169, inlinedAt: !5107)
!5176 = !DILocation(line: 356, column: 32, scope: !5177, inlinedAt: !5107)
!5177 = distinct !DILexicalBlock(scope: !5103, file: !349, line: 356, column: 6)
!5178 = !DILocation(line: 356, column: 37, scope: !5177, inlinedAt: !5107)
!5179 = !DILocation(line: 356, column: 43, scope: !5177, inlinedAt: !5107)
!5180 = !DILocation(line: 356, column: 46, scope: !5177, inlinedAt: !5107)
!5181 = !DILocation(line: 356, column: 51, scope: !5177, inlinedAt: !5107)
!5182 = !DILocation(line: 356, column: 6, scope: !5103, inlinedAt: !5107)
!5183 = !DILocation(line: 357, column: 3, scope: !5177, inlinedAt: !5107)
!5184 = !DILocation(line: 358, column: 6, scope: !5185, inlinedAt: !5107)
!5185 = distinct !DILexicalBlock(scope: !5103, file: !349, line: 358, column: 6)
!5186 = !DILocation(line: 358, column: 11, scope: !5185, inlinedAt: !5107)
!5187 = !DILocation(line: 358, column: 6, scope: !5103, inlinedAt: !5107)
!5188 = !DILocation(line: 358, column: 26, scope: !5185, inlinedAt: !5107)
!5189 = !DILocation(line: 359, column: 6, scope: !5190, inlinedAt: !5107)
!5190 = distinct !DILexicalBlock(scope: !5103, file: !349, line: 359, column: 6)
!5191 = !DILocation(line: 359, column: 11, scope: !5190, inlinedAt: !5107)
!5192 = !DILocation(line: 359, column: 6, scope: !5103, inlinedAt: !5107)
!5193 = !DILocation(line: 359, column: 26, scope: !5190, inlinedAt: !5107)
!5194 = !DILocation(line: 360, column: 6, scope: !5195, inlinedAt: !5107)
!5195 = distinct !DILexicalBlock(scope: !5103, file: !349, line: 360, column: 6)
!5196 = !DILocation(line: 360, column: 11, scope: !5195, inlinedAt: !5107)
!5197 = !DILocation(line: 360, column: 6, scope: !5103, inlinedAt: !5107)
!5198 = !DILocation(line: 360, column: 26, scope: !5195, inlinedAt: !5107)
!5199 = !DILocation(line: 361, column: 6, scope: !5200, inlinedAt: !5107)
!5200 = distinct !DILexicalBlock(scope: !5103, file: !349, line: 361, column: 6)
!5201 = !DILocation(line: 361, column: 11, scope: !5200, inlinedAt: !5107)
!5202 = !DILocation(line: 361, column: 6, scope: !5103, inlinedAt: !5107)
!5203 = !DILocation(line: 361, column: 26, scope: !5200, inlinedAt: !5107)
!5204 = !DILocation(line: 362, column: 6, scope: !5205, inlinedAt: !5107)
!5205 = distinct !DILexicalBlock(scope: !5103, file: !349, line: 362, column: 6)
!5206 = !DILocation(line: 362, column: 11, scope: !5205, inlinedAt: !5107)
!5207 = !DILocation(line: 362, column: 6, scope: !5103, inlinedAt: !5107)
!5208 = !DILocation(line: 362, column: 26, scope: !5205, inlinedAt: !5107)
!5209 = !DILocation(line: 363, column: 6, scope: !5210, inlinedAt: !5107)
!5210 = distinct !DILexicalBlock(scope: !5103, file: !349, line: 363, column: 6)
!5211 = !DILocation(line: 363, column: 11, scope: !5210, inlinedAt: !5107)
!5212 = !DILocation(line: 363, column: 6, scope: !5103, inlinedAt: !5107)
!5213 = !DILocation(line: 363, column: 26, scope: !5210, inlinedAt: !5107)
!5214 = !DILocation(line: 364, column: 6, scope: !5215, inlinedAt: !5107)
!5215 = distinct !DILexicalBlock(scope: !5103, file: !349, line: 364, column: 6)
!5216 = !DILocation(line: 364, column: 11, scope: !5215, inlinedAt: !5107)
!5217 = !DILocation(line: 364, column: 6, scope: !5103, inlinedAt: !5107)
!5218 = !DILocation(line: 364, column: 26, scope: !5215, inlinedAt: !5107)
!5219 = !DILocation(line: 365, column: 6, scope: !5220, inlinedAt: !5107)
!5220 = distinct !DILexicalBlock(scope: !5103, file: !349, line: 365, column: 6)
!5221 = !DILocation(line: 365, column: 11, scope: !5220, inlinedAt: !5107)
!5222 = !DILocation(line: 365, column: 6, scope: !5103, inlinedAt: !5107)
!5223 = !DILocation(line: 365, column: 26, scope: !5220, inlinedAt: !5107)
!5224 = !DILocation(line: 366, column: 6, scope: !5225, inlinedAt: !5107)
!5225 = distinct !DILexicalBlock(scope: !5103, file: !349, line: 366, column: 6)
!5226 = !DILocation(line: 366, column: 11, scope: !5225, inlinedAt: !5107)
!5227 = !DILocation(line: 366, column: 6, scope: !5103, inlinedAt: !5107)
!5228 = !DILocation(line: 366, column: 26, scope: !5225, inlinedAt: !5107)
!5229 = !DILocation(line: 367, column: 6, scope: !5230, inlinedAt: !5107)
!5230 = distinct !DILexicalBlock(scope: !5103, file: !349, line: 367, column: 6)
!5231 = !DILocation(line: 367, column: 11, scope: !5230, inlinedAt: !5107)
!5232 = !DILocation(line: 367, column: 6, scope: !5103, inlinedAt: !5107)
!5233 = !DILocation(line: 367, column: 26, scope: !5230, inlinedAt: !5107)
!5234 = !DILocation(line: 368, column: 6, scope: !5235, inlinedAt: !5107)
!5235 = distinct !DILexicalBlock(scope: !5103, file: !349, line: 368, column: 6)
!5236 = !DILocation(line: 368, column: 11, scope: !5235, inlinedAt: !5107)
!5237 = !DILocation(line: 368, column: 6, scope: !5103, inlinedAt: !5107)
!5238 = !DILocation(line: 368, column: 26, scope: !5235, inlinedAt: !5107)
!5239 = !DILocation(line: 369, column: 6, scope: !5240, inlinedAt: !5107)
!5240 = distinct !DILexicalBlock(scope: !5103, file: !349, line: 369, column: 6)
!5241 = !DILocation(line: 369, column: 11, scope: !5240, inlinedAt: !5107)
!5242 = !DILocation(line: 369, column: 6, scope: !5103, inlinedAt: !5107)
!5243 = !DILocation(line: 369, column: 26, scope: !5240, inlinedAt: !5107)
!5244 = !DILocation(line: 370, column: 6, scope: !5245, inlinedAt: !5107)
!5245 = distinct !DILexicalBlock(scope: !5103, file: !349, line: 370, column: 6)
!5246 = !DILocation(line: 370, column: 11, scope: !5245, inlinedAt: !5107)
!5247 = !DILocation(line: 370, column: 6, scope: !5103, inlinedAt: !5107)
!5248 = !DILocation(line: 370, column: 26, scope: !5245, inlinedAt: !5107)
!5249 = !DILocation(line: 371, column: 6, scope: !5250, inlinedAt: !5107)
!5250 = distinct !DILexicalBlock(scope: !5103, file: !349, line: 371, column: 6)
!5251 = !DILocation(line: 371, column: 11, scope: !5250, inlinedAt: !5107)
!5252 = !DILocation(line: 371, column: 6, scope: !5103, inlinedAt: !5107)
!5253 = !DILocation(line: 371, column: 26, scope: !5250, inlinedAt: !5107)
!5254 = !DILocation(line: 372, column: 6, scope: !5255, inlinedAt: !5107)
!5255 = distinct !DILexicalBlock(scope: !5103, file: !349, line: 372, column: 6)
!5256 = !DILocation(line: 372, column: 11, scope: !5255, inlinedAt: !5107)
!5257 = !DILocation(line: 372, column: 6, scope: !5103, inlinedAt: !5107)
!5258 = !DILocation(line: 372, column: 26, scope: !5255, inlinedAt: !5107)
!5259 = !DILocation(line: 373, column: 6, scope: !5260, inlinedAt: !5107)
!5260 = distinct !DILexicalBlock(scope: !5103, file: !349, line: 373, column: 6)
!5261 = !DILocation(line: 373, column: 11, scope: !5260, inlinedAt: !5107)
!5262 = !DILocation(line: 373, column: 6, scope: !5103, inlinedAt: !5107)
!5263 = !DILocation(line: 373, column: 26, scope: !5260, inlinedAt: !5107)
!5264 = !DILocation(line: 374, column: 6, scope: !5265, inlinedAt: !5107)
!5265 = distinct !DILexicalBlock(scope: !5103, file: !349, line: 374, column: 6)
!5266 = !DILocation(line: 374, column: 11, scope: !5265, inlinedAt: !5107)
!5267 = !DILocation(line: 374, column: 6, scope: !5103, inlinedAt: !5107)
!5268 = !DILocation(line: 374, column: 26, scope: !5265, inlinedAt: !5107)
!5269 = !DILocation(line: 375, column: 6, scope: !5270, inlinedAt: !5107)
!5270 = distinct !DILexicalBlock(scope: !5103, file: !349, line: 375, column: 6)
!5271 = !DILocation(line: 375, column: 11, scope: !5270, inlinedAt: !5107)
!5272 = !DILocation(line: 375, column: 6, scope: !5103, inlinedAt: !5107)
!5273 = !DILocation(line: 375, column: 27, scope: !5270, inlinedAt: !5107)
!5274 = !DILocation(line: 376, column: 6, scope: !5275, inlinedAt: !5107)
!5275 = distinct !DILexicalBlock(scope: !5103, file: !349, line: 376, column: 6)
!5276 = !DILocation(line: 376, column: 11, scope: !5275, inlinedAt: !5107)
!5277 = !DILocation(line: 376, column: 6, scope: !5103, inlinedAt: !5107)
!5278 = !DILocation(line: 376, column: 32, scope: !5275, inlinedAt: !5107)
!5279 = !DILocation(line: 377, column: 6, scope: !5280, inlinedAt: !5107)
!5280 = distinct !DILexicalBlock(scope: !5103, file: !349, line: 377, column: 6)
!5281 = !DILocation(line: 377, column: 11, scope: !5280, inlinedAt: !5107)
!5282 = !DILocation(line: 377, column: 6, scope: !5103, inlinedAt: !5107)
!5283 = !DILocation(line: 377, column: 32, scope: !5280, inlinedAt: !5107)
!5284 = !DILocation(line: 378, column: 6, scope: !5285, inlinedAt: !5107)
!5285 = distinct !DILexicalBlock(scope: !5103, file: !349, line: 378, column: 6)
!5286 = !DILocation(line: 378, column: 11, scope: !5285, inlinedAt: !5107)
!5287 = !DILocation(line: 378, column: 6, scope: !5103, inlinedAt: !5107)
!5288 = !DILocation(line: 378, column: 32, scope: !5285, inlinedAt: !5107)
!5289 = !DILocation(line: 379, column: 6, scope: !5290, inlinedAt: !5107)
!5290 = distinct !DILexicalBlock(scope: !5103, file: !349, line: 379, column: 6)
!5291 = !DILocation(line: 379, column: 11, scope: !5290, inlinedAt: !5107)
!5292 = !DILocation(line: 379, column: 6, scope: !5103, inlinedAt: !5107)
!5293 = !DILocation(line: 379, column: 33, scope: !5290, inlinedAt: !5107)
!5294 = !DILocation(line: 380, column: 6, scope: !5295, inlinedAt: !5107)
!5295 = distinct !DILexicalBlock(scope: !5103, file: !349, line: 380, column: 6)
!5296 = !DILocation(line: 380, column: 11, scope: !5295, inlinedAt: !5107)
!5297 = !DILocation(line: 380, column: 6, scope: !5103, inlinedAt: !5107)
!5298 = !DILocation(line: 380, column: 33, scope: !5295, inlinedAt: !5107)
!5299 = !DILocation(line: 381, column: 6, scope: !5300, inlinedAt: !5107)
!5300 = distinct !DILexicalBlock(scope: !5103, file: !349, line: 381, column: 6)
!5301 = !DILocation(line: 381, column: 11, scope: !5300, inlinedAt: !5107)
!5302 = !DILocation(line: 381, column: 6, scope: !5103, inlinedAt: !5107)
!5303 = !DILocation(line: 381, column: 33, scope: !5300, inlinedAt: !5107)
!5304 = !DILocation(line: 382, column: 2, scope: !5305, inlinedAt: !5107)
!5305 = distinct !DILexicalBlock(scope: !5306, file: !349, line: 382, column: 2)
!5306 = distinct !DILexicalBlock(scope: !5103, file: !349, line: 382, column: 2)
!5307 = !{i32 -2143657483, i32 -2143657454, i32 -2143657408, i32 -2143657350, i32 -2143657296, i32 -2143657242, i32 -2143657187, i32 -2143657156}
!5308 = !DILocation(line: 382, column: 2, scope: !5309, inlinedAt: !5107)
!5309 = distinct !DILexicalBlock(scope: !5310, file: !349, line: 382, column: 2)
!5310 = distinct !DILexicalBlock(scope: !5306, file: !349, line: 382, column: 2)
!5311 = !{i32 -2143656713, i32 -2143656706, i32 -2143656652, i32 -2143656621, i32 -2143656591}
!5312 = !DILocation(line: 382, column: 2, scope: !5310, inlinedAt: !5107)
!5313 = !DILocation(line: 386, column: 1, scope: !5103, inlinedAt: !5107)
!5314 = !DILocation(line: 547, column: 9, scope: !5086, inlinedAt: !5089)
!5315 = !DILocation(line: 549, column: 8, scope: !5316, inlinedAt: !5089)
!5316 = distinct !DILexicalBlock(scope: !5086, file: !349, line: 549, column: 7)
!5317 = !DILocation(line: 549, column: 7, scope: !5086, inlinedAt: !5089)
!5318 = !DILocation(line: 550, column: 4, scope: !5316, inlinedAt: !5089)
!5319 = !DILocation(line: 553, column: 33, scope: !5086, inlinedAt: !5089)
!5320 = !DILocation(line: 325, column: 6, scope: !5321, inlinedAt: !5101)
!5321 = distinct !DILexicalBlock(scope: !5097, file: !349, line: 325, column: 6)
!5322 = !DILocation(line: 325, column: 6, scope: !5097, inlinedAt: !5101)
!5323 = !DILocation(line: 326, column: 3, scope: !5321, inlinedAt: !5101)
!5324 = !DILocation(line: 332, column: 9, scope: !5097, inlinedAt: !5101)
!5325 = !DILocation(line: 332, column: 15, scope: !5097, inlinedAt: !5101)
!5326 = !DILocation(line: 332, column: 2, scope: !5097, inlinedAt: !5101)
!5327 = !DILocation(line: 336, column: 1, scope: !5097, inlinedAt: !5101)
!5328 = !DILocation(line: 553, column: 5, scope: !5086, inlinedAt: !5089)
!5329 = !DILocation(line: 553, column: 41, scope: !5086, inlinedAt: !5089)
!5330 = !DILocation(line: 554, column: 5, scope: !5086, inlinedAt: !5089)
!5331 = !DILocation(line: 554, column: 12, scope: !5086, inlinedAt: !5089)
!5332 = !DILocation(line: 448, column: 31, scope: !5081, inlinedAt: !5085)
!5333 = !DILocation(line: 448, column: 34, scope: !5081, inlinedAt: !5085)
!5334 = !DILocation(line: 448, column: 14, scope: !5081, inlinedAt: !5085)
!5335 = !DILocation(line: 450, column: 22, scope: !5081, inlinedAt: !5085)
!5336 = !DILocation(line: 450, column: 25, scope: !5081, inlinedAt: !5085)
!5337 = !DILocation(line: 450, column: 30, scope: !5081, inlinedAt: !5085)
!5338 = !DILocation(line: 450, column: 36, scope: !5081, inlinedAt: !5085)
!5339 = !DILocation(line: 450, column: 8, scope: !5081, inlinedAt: !5085)
!5340 = !DILocation(line: 450, column: 6, scope: !5081, inlinedAt: !5085)
!5341 = !DILocation(line: 451, column: 9, scope: !5081, inlinedAt: !5085)
!5342 = !DILocation(line: 552, column: 3, scope: !5086, inlinedAt: !5089)
!5343 = !DILocation(line: 557, column: 19, scope: !5088, inlinedAt: !5089)
!5344 = !DILocation(line: 557, column: 25, scope: !5088, inlinedAt: !5089)
!5345 = !DILocation(line: 557, column: 9, scope: !5088, inlinedAt: !5089)
!5346 = !DILocation(line: 557, column: 2, scope: !5088, inlinedAt: !5089)
!5347 = !DILocation(line: 558, column: 1, scope: !5088, inlinedAt: !5089)
!5348 = !DILocation(line: 664, column: 2, scope: !5077)
!5349 = distinct !DISubprogram(name: "ts2020_regmap_lock", scope: !3, file: !3, line: 535, type: !814, scopeLine: 536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!5350 = !DILocalVariable(name: "__dev", arg: 1, scope: !5349, file: !3, line: 535, type: !363)
!5351 = !DILocation(line: 535, column: 38, scope: !5349)
!5352 = !DILocalVariable(name: "dev", scope: !5349, file: !3, line: 537, type: !376)
!5353 = !DILocation(line: 537, column: 22, scope: !5349)
!5354 = !DILocation(line: 537, column: 28, scope: !5349)
!5355 = !DILocation(line: 539, column: 14, scope: !5349)
!5356 = !DILocation(line: 539, column: 19, scope: !5349)
!5357 = !DILocation(line: 539, column: 2, scope: !5349)
!5358 = !DILocation(line: 540, column: 6, scope: !5359)
!5359 = distinct !DILexicalBlock(scope: !5349, file: !3, line: 540, column: 6)
!5360 = !DILocation(line: 540, column: 11, scope: !5359)
!5361 = !DILocation(line: 540, column: 15, scope: !5359)
!5362 = !DILocation(line: 540, column: 19, scope: !5359)
!5363 = !DILocation(line: 540, column: 6, scope: !5349)
!5364 = !DILocation(line: 541, column: 3, scope: !5359)
!5365 = !DILocation(line: 541, column: 8, scope: !5359)
!5366 = !DILocation(line: 541, column: 12, scope: !5359)
!5367 = !DILocation(line: 541, column: 16, scope: !5359)
!5368 = !DILocation(line: 541, column: 30, scope: !5359)
!5369 = !DILocation(line: 541, column: 35, scope: !5359)
!5370 = !DILocation(line: 542, column: 1, scope: !5349)
!5371 = distinct !DISubprogram(name: "ts2020_regmap_unlock", scope: !3, file: !3, line: 544, type: !814, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!5372 = !DILocalVariable(name: "__dev", arg: 1, scope: !5371, file: !3, line: 544, type: !363)
!5373 = !DILocation(line: 544, column: 40, scope: !5371)
!5374 = !DILocalVariable(name: "dev", scope: !5371, file: !3, line: 546, type: !376)
!5375 = !DILocation(line: 546, column: 22, scope: !5371)
!5376 = !DILocation(line: 546, column: 28, scope: !5371)
!5377 = !DILocation(line: 548, column: 6, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5371, file: !3, line: 548, column: 6)
!5379 = !DILocation(line: 548, column: 11, scope: !5378)
!5380 = !DILocation(line: 548, column: 15, scope: !5378)
!5381 = !DILocation(line: 548, column: 19, scope: !5378)
!5382 = !DILocation(line: 548, column: 6, scope: !5371)
!5383 = !DILocation(line: 549, column: 3, scope: !5378)
!5384 = !DILocation(line: 549, column: 8, scope: !5378)
!5385 = !DILocation(line: 549, column: 12, scope: !5378)
!5386 = !DILocation(line: 549, column: 16, scope: !5378)
!5387 = !DILocation(line: 549, column: 30, scope: !5378)
!5388 = !DILocation(line: 549, column: 35, scope: !5378)
!5389 = !DILocation(line: 550, column: 16, scope: !5371)
!5390 = !DILocation(line: 550, column: 21, scope: !5371)
!5391 = !DILocation(line: 550, column: 2, scope: !5371)
!5392 = !DILocation(line: 551, column: 1, scope: !5371)
!5393 = distinct !DISubprogram(name: "IS_ERR", scope: !4756, file: !4756, line: 34, type: !4757, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!5394 = !DILocalVariable(name: "ptr", arg: 1, scope: !5393, file: !4756, line: 34, type: !2198)
!5395 = !DILocation(line: 34, column: 60, scope: !5393)
!5396 = !DILocation(line: 36, column: 9, scope: !5393)
!5397 = !DILocation(line: 36, column: 2, scope: !5393)
!5398 = distinct !DISubprogram(name: "PTR_ERR", scope: !4756, file: !4756, line: 29, type: !5399, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!5399 = !DISubroutineType(types: !5400)
!5400 = !{!317, !2198}
!5401 = !DILocalVariable(name: "ptr", arg: 1, scope: !5398, file: !4756, line: 29, type: !2198)
!5402 = !DILocation(line: 29, column: 61, scope: !5398)
!5403 = !DILocation(line: 31, column: 16, scope: !5398)
!5404 = !DILocation(line: 31, column: 9, scope: !5398)
!5405 = !DILocation(line: 31, column: 2, scope: !5398)
!5406 = distinct !DISubprogram(name: "__init_work", scope: !316, file: !316, line: 215, type: !5407, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!5407 = !DISubroutineType(types: !5408)
!5408 = !{null, !1759, !406}
!5409 = !DILocalVariable(name: "work", arg: 1, scope: !5406, file: !316, line: 215, type: !1759)
!5410 = !DILocation(line: 215, column: 52, scope: !5406)
!5411 = !DILocalVariable(name: "onstack", arg: 2, scope: !5406, file: !316, line: 215, type: !406)
!5412 = !DILocation(line: 215, column: 62, scope: !5406)
!5413 = !DILocation(line: 215, column: 73, scope: !5406)
!5414 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5415, file: !5415, line: 33, type: !5416, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!5415 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!5416 = !DISubroutineType(types: !5417)
!5417 = !{null, !371}
!5418 = !DILocalVariable(name: "list", arg: 1, scope: !5414, file: !5415, line: 33, type: !371)
!5419 = !DILocation(line: 33, column: 53, scope: !5414)
!5420 = !DILocation(line: 35, column: 2, scope: !5414)
!5421 = !DILocation(line: 35, column: 2, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5414, file: !5415, line: 35, column: 2)
!5423 = !DILocation(line: 35, column: 2, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5422, file: !5415, line: 35, column: 2)
!5425 = !DILocation(line: 35, column: 2, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5422, file: !5415, line: 35, column: 2)
!5427 = !DILocation(line: 36, column: 15, scope: !5414)
!5428 = !DILocation(line: 36, column: 2, scope: !5414)
!5429 = !DILocation(line: 36, column: 8, scope: !5414)
!5430 = !DILocation(line: 36, column: 13, scope: !5414)
!5431 = !DILocation(line: 37, column: 1, scope: !5414)
!5432 = distinct !DISubprogram(name: "ts2020_stat_work", scope: !3, file: !3, line: 427, type: !1757, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!5433 = !DILocalVariable(name: "m", arg: 1, scope: !5434, file: !5435, line: 363, type: !1772)
!5434 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !5435, file: !5435, line: 363, type: !5436, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!5435 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!5436 = !DISubroutineType(types: !5437)
!5437 = !{!362, !1772}
!5438 = !DILocation(line: 363, column: 74, scope: !5434, inlinedAt: !5439)
!5439 = distinct !DILocation(line: 444, column: 43, scope: !5440)
!5440 = distinct !DILexicalBlock(scope: !5432, file: !3, line: 443, column: 6)
!5441 = !DILocalVariable(name: "work", arg: 1, scope: !5432, file: !3, line: 427, type: !1759)
!5442 = !DILocation(line: 427, column: 50, scope: !5432)
!5443 = !DILocalVariable(name: "priv", scope: !5432, file: !3, line: 429, type: !376)
!5444 = !DILocation(line: 429, column: 22, scope: !5432)
!5445 = !DILocalVariable(name: "__mptr", scope: !5446, file: !3, line: 429, type: !363)
!5446 = distinct !DILexicalBlock(scope: !5432, file: !3, line: 429, column: 29)
!5447 = !DILocation(line: 429, column: 29, scope: !5446)
!5448 = !DILocation(line: 429, column: 29, scope: !5449)
!5449 = distinct !DILexicalBlock(scope: !5446, file: !3, line: 429, column: 29)
!5450 = !DILocalVariable(name: "client", scope: !5432, file: !3, line: 431, type: !380)
!5451 = !DILocation(line: 431, column: 21, scope: !5432)
!5452 = !DILocation(line: 431, column: 30, scope: !5432)
!5453 = !DILocation(line: 431, column: 36, scope: !5432)
!5454 = !DILocalVariable(name: "c", scope: !5432, file: !3, line: 432, type: !4254)
!5455 = !DILocation(line: 432, column: 34, scope: !5432)
!5456 = !DILocation(line: 432, column: 39, scope: !5432)
!5457 = !DILocation(line: 432, column: 45, scope: !5432)
!5458 = !DILocation(line: 432, column: 49, scope: !5432)
!5459 = !DILocalVariable(name: "ret", scope: !5432, file: !3, line: 433, type: !406)
!5460 = !DILocation(line: 433, column: 6, scope: !5432)
!5461 = !DILocation(line: 437, column: 30, scope: !5432)
!5462 = !DILocation(line: 437, column: 36, scope: !5432)
!5463 = !DILocation(line: 437, column: 41, scope: !5432)
!5464 = !DILocation(line: 437, column: 44, scope: !5432)
!5465 = !DILocation(line: 437, column: 53, scope: !5432)
!5466 = !DILocation(line: 437, column: 61, scope: !5432)
!5467 = !DILocation(line: 437, column: 8, scope: !5432)
!5468 = !DILocation(line: 437, column: 6, scope: !5432)
!5469 = !DILocation(line: 438, column: 6, scope: !5470)
!5470 = distinct !DILexicalBlock(scope: !5432, file: !3, line: 438, column: 6)
!5471 = !DILocation(line: 438, column: 10, scope: !5470)
!5472 = !DILocation(line: 438, column: 6, scope: !5432)
!5473 = !DILocation(line: 439, column: 3, scope: !5470)
!5474 = !DILocation(line: 441, column: 2, scope: !5432)
!5475 = !DILocation(line: 441, column: 5, scope: !5432)
!5476 = !DILocation(line: 441, column: 14, scope: !5432)
!5477 = !DILocation(line: 441, column: 22, scope: !5432)
!5478 = !DILocation(line: 441, column: 28, scope: !5432)
!5479 = !DILocation(line: 443, column: 7, scope: !5440)
!5480 = !DILocation(line: 443, column: 13, scope: !5440)
!5481 = !DILocation(line: 443, column: 6, scope: !5432)
!5482 = !DILocation(line: 444, column: 26, scope: !5440)
!5483 = !DILocation(line: 444, column: 32, scope: !5440)
!5484 = !DILocation(line: 365, column: 27, scope: !5485, inlinedAt: !5439)
!5485 = distinct !DILexicalBlock(scope: !5434, file: !5435, line: 365, column: 6)
!5486 = !DILocation(line: 365, column: 6, scope: !5485, inlinedAt: !5439)
!5487 = !DILocation(line: 365, column: 6, scope: !5434, inlinedAt: !5439)
!5488 = !DILocation(line: 366, column: 12, scope: !5489, inlinedAt: !5439)
!5489 = distinct !DILexicalBlock(scope: !5490, file: !5435, line: 366, column: 7)
!5490 = distinct !DILexicalBlock(scope: !5485, file: !5435, line: 365, column: 31)
!5491 = !DILocation(line: 366, column: 14, scope: !5489, inlinedAt: !5439)
!5492 = !DILocation(line: 366, column: 7, scope: !5490, inlinedAt: !5439)
!5493 = !DILocation(line: 367, column: 4, scope: !5489, inlinedAt: !5439)
!5494 = !DILocation(line: 368, column: 28, scope: !5490, inlinedAt: !5439)
!5495 = !DILocation(line: 368, column: 10, scope: !5490, inlinedAt: !5439)
!5496 = !DILocation(line: 368, column: 3, scope: !5490, inlinedAt: !5439)
!5497 = !DILocation(line: 370, column: 29, scope: !5498, inlinedAt: !5439)
!5498 = distinct !DILexicalBlock(scope: !5485, file: !5435, line: 369, column: 9)
!5499 = !DILocation(line: 370, column: 10, scope: !5498, inlinedAt: !5439)
!5500 = !DILocation(line: 370, column: 3, scope: !5498, inlinedAt: !5439)
!5501 = !DILocation(line: 372, column: 1, scope: !5434, inlinedAt: !5439)
!5502 = !DILocation(line: 444, column: 3, scope: !5440)
!5503 = !DILocation(line: 445, column: 2, scope: !5432)
!5504 = !DILabel(scope: !5432, name: "err", file: !3, line: 446)
!5505 = !DILocation(line: 446, column: 1, scope: !5432)
!5506 = !DILocation(line: 448, column: 1, scope: !5432)
!5507 = distinct !DISubprogram(name: "i2c_set_clientdata", scope: !298, file: !298, line: 356, type: !5508, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!5508 = !DISubroutineType(types: !5509)
!5509 = !{null, !380, !363}
!5510 = !DILocalVariable(name: "client", arg: 1, scope: !5507, file: !298, line: 356, type: !380)
!5511 = !DILocation(line: 356, column: 58, scope: !5507)
!5512 = !DILocalVariable(name: "data", arg: 2, scope: !5507, file: !298, line: 356, type: !363)
!5513 = !DILocation(line: 356, column: 72, scope: !5507)
!5514 = !DILocation(line: 358, column: 19, scope: !5507)
!5515 = !DILocation(line: 358, column: 27, scope: !5507)
!5516 = !DILocation(line: 358, column: 32, scope: !5507)
!5517 = !DILocation(line: 358, column: 2, scope: !5507)
!5518 = !DILocation(line: 359, column: 1, scope: !5507)
!5519 = distinct !DISubprogram(name: "get_order", scope: !5520, file: !5520, line: 29, type: !5521, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!5520 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5521 = !DISubroutineType(types: !5522)
!5522 = !{!406, !362}
!5523 = !DILocalVariable(name: "x", arg: 1, scope: !5524, file: !5525, line: 366, type: !536)
!5524 = distinct !DISubprogram(name: "fls64", scope: !5525, file: !5525, line: 366, type: !5526, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!5525 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5526 = !DISubroutineType(types: !5527)
!5527 = !{!406, !536}
!5528 = !DILocation(line: 366, column: 40, scope: !5524, inlinedAt: !5529)
!5529 = distinct !DILocation(line: 46, column: 9, scope: !5519)
!5530 = !DILocalVariable(name: "bitpos", scope: !5524, file: !5525, line: 368, type: !406)
!5531 = !DILocation(line: 368, column: 6, scope: !5524, inlinedAt: !5529)
!5532 = !DILocalVariable(name: "size", arg: 1, scope: !5519, file: !5520, line: 29, type: !362)
!5533 = !DILocation(line: 29, column: 63, scope: !5519)
!5534 = !DILocation(line: 31, column: 27, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5519, file: !5520, line: 31, column: 6)
!5536 = !DILocation(line: 31, column: 6, scope: !5535)
!5537 = !DILocation(line: 31, column: 6, scope: !5519)
!5538 = !DILocation(line: 32, column: 8, scope: !5539)
!5539 = distinct !DILexicalBlock(scope: !5540, file: !5520, line: 32, column: 7)
!5540 = distinct !DILexicalBlock(scope: !5535, file: !5520, line: 31, column: 34)
!5541 = !DILocation(line: 32, column: 7, scope: !5540)
!5542 = !DILocation(line: 33, column: 4, scope: !5539)
!5543 = !DILocation(line: 35, column: 7, scope: !5544)
!5544 = distinct !DILexicalBlock(scope: !5540, file: !5520, line: 35, column: 7)
!5545 = !DILocation(line: 35, column: 12, scope: !5544)
!5546 = !DILocation(line: 35, column: 7, scope: !5540)
!5547 = !DILocation(line: 36, column: 4, scope: !5544)
!5548 = !DILocation(line: 38, column: 10, scope: !5540)
!5549 = !DILocation(line: 38, column: 28, scope: !5540)
!5550 = !DILocation(line: 38, column: 41, scope: !5540)
!5551 = !DILocation(line: 38, column: 3, scope: !5540)
!5552 = !DILocation(line: 41, column: 6, scope: !5519)
!5553 = !DILocation(line: 42, column: 7, scope: !5519)
!5554 = !DILocation(line: 46, column: 15, scope: !5519)
!5555 = !DILocation(line: 374, column: 2, scope: !5524, inlinedAt: !5529)
!5556 = !DILocation(line: 376, column: 14, scope: !5524, inlinedAt: !5529)
!5557 = !{i32 370250}
!5558 = !DILocation(line: 377, column: 9, scope: !5524, inlinedAt: !5529)
!5559 = !DILocation(line: 377, column: 16, scope: !5524, inlinedAt: !5529)
!5560 = !DILocation(line: 46, column: 2, scope: !5519)
!5561 = !DILocation(line: 48, column: 1, scope: !5519)
!5562 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5563, file: !5563, line: 30, type: !5564, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!5563 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5564 = !DISubroutineType(types: !5565)
!5565 = !{!406, !535}
!5566 = !DILocation(line: 366, column: 40, scope: !5524, inlinedAt: !5567)
!5567 = distinct !DILocation(line: 32, column: 9, scope: !5562)
!5568 = !DILocation(line: 368, column: 6, scope: !5524, inlinedAt: !5567)
!5569 = !DILocalVariable(name: "n", arg: 1, scope: !5562, file: !5563, line: 30, type: !535)
!5570 = !DILocation(line: 30, column: 21, scope: !5562)
!5571 = !DILocation(line: 32, column: 15, scope: !5562)
!5572 = !DILocation(line: 374, column: 2, scope: !5524, inlinedAt: !5567)
!5573 = !DILocation(line: 376, column: 14, scope: !5524, inlinedAt: !5567)
!5574 = !DILocation(line: 377, column: 9, scope: !5524, inlinedAt: !5567)
!5575 = !DILocation(line: 377, column: 16, scope: !5524, inlinedAt: !5567)
!5576 = !DILocation(line: 32, column: 18, scope: !5562)
!5577 = !DILocation(line: 32, column: 2, scope: !5562)
!5578 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5579, file: !5579, line: 137, type: !5580, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!5579 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5580 = !DISubroutineType(types: !5581)
!5581 = !{!363, !1270, !2198, !925, !367}
!5582 = !DILocalVariable(name: "s", arg: 1, scope: !5578, file: !5579, line: 137, type: !1270)
!5583 = !DILocation(line: 137, column: 54, scope: !5578)
!5584 = !DILocalVariable(name: "object", arg: 2, scope: !5578, file: !5579, line: 137, type: !2198)
!5585 = !DILocation(line: 137, column: 69, scope: !5578)
!5586 = !DILocalVariable(name: "size", arg: 3, scope: !5578, file: !5579, line: 138, type: !925)
!5587 = !DILocation(line: 138, column: 12, scope: !5578)
!5588 = !DILocalVariable(name: "flags", arg: 4, scope: !5578, file: !5579, line: 138, type: !367)
!5589 = !DILocation(line: 138, column: 24, scope: !5578)
!5590 = !DILocation(line: 140, column: 17, scope: !5578)
!5591 = !DILocation(line: 140, column: 2, scope: !5578)
!5592 = distinct !DISubprogram(name: "ts2020_get_tuner_gain", scope: !3, file: !3, line: 396, type: !5593, scopeLine: 397, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!5593 = !DISubroutineType(types: !5594)
!5594 = !{!406, !4192, !5595}
!5595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!5596 = !DILocalVariable(name: "fe", arg: 1, scope: !5592, file: !3, line: 396, type: !4192)
!5597 = !DILocation(line: 396, column: 55, scope: !5592)
!5598 = !DILocalVariable(name: "_gain", arg: 2, scope: !5592, file: !3, line: 396, type: !5595)
!5599 = !DILocation(line: 396, column: 66, scope: !5592)
!5600 = !DILocalVariable(name: "priv", scope: !5592, file: !3, line: 398, type: !376)
!5601 = !DILocation(line: 398, column: 22, scope: !5592)
!5602 = !DILocation(line: 398, column: 29, scope: !5592)
!5603 = !DILocation(line: 398, column: 33, scope: !5592)
!5604 = !DILocalVariable(name: "v_agc", scope: !5592, file: !3, line: 399, type: !406)
!5605 = !DILocation(line: 399, column: 6, scope: !5592)
!5606 = !DILocalVariable(name: "ret", scope: !5592, file: !3, line: 399, type: !406)
!5607 = !DILocation(line: 399, column: 17, scope: !5592)
!5608 = !DILocalVariable(name: "agc_pwm", scope: !5592, file: !3, line: 400, type: !427)
!5609 = !DILocation(line: 400, column: 5, scope: !5592)
!5610 = !DILocation(line: 403, column: 6, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5592, file: !3, line: 403, column: 6)
!5612 = !DILocation(line: 403, column: 12, scope: !5611)
!5613 = !DILocation(line: 403, column: 6, scope: !5592)
!5614 = !DILocation(line: 404, column: 9, scope: !5615)
!5615 = distinct !DILexicalBlock(scope: !5611, file: !3, line: 403, column: 25)
!5616 = !DILocation(line: 404, column: 15, scope: !5615)
!5617 = !DILocation(line: 404, column: 27, scope: !5615)
!5618 = !DILocation(line: 404, column: 7, scope: !5615)
!5619 = !DILocation(line: 405, column: 7, scope: !5620)
!5620 = distinct !DILexicalBlock(scope: !5615, file: !3, line: 405, column: 7)
!5621 = !DILocation(line: 405, column: 11, scope: !5620)
!5622 = !DILocation(line: 405, column: 7, scope: !5615)
!5623 = !DILocation(line: 406, column: 11, scope: !5620)
!5624 = !DILocation(line: 406, column: 4, scope: !5620)
!5625 = !DILocation(line: 408, column: 11, scope: !5615)
!5626 = !DILocation(line: 408, column: 17, scope: !5615)
!5627 = !DILocation(line: 408, column: 3, scope: !5615)
!5628 = !DILocation(line: 410, column: 17, scope: !5629)
!5629 = distinct !DILexicalBlock(scope: !5615, file: !3, line: 408, column: 24)
!5630 = !DILocation(line: 410, column: 12, scope: !5629)
!5631 = !DILocation(line: 410, column: 25, scope: !5629)
!5632 = !DILocation(line: 410, column: 30, scope: !5629)
!5633 = !DILocation(line: 410, column: 10, scope: !5629)
!5634 = !DILocation(line: 411, column: 4, scope: !5629)
!5635 = !DILocation(line: 413, column: 17, scope: !5629)
!5636 = !DILocation(line: 413, column: 12, scope: !5629)
!5637 = !DILocation(line: 413, column: 25, scope: !5629)
!5638 = !DILocation(line: 413, column: 30, scope: !5629)
!5639 = !DILocation(line: 413, column: 10, scope: !5629)
!5640 = !DILocation(line: 414, column: 4, scope: !5629)
!5641 = !DILocation(line: 417, column: 7, scope: !5642)
!5642 = distinct !DILexicalBlock(scope: !5615, file: !3, line: 417, column: 7)
!5643 = !DILocation(line: 417, column: 13, scope: !5642)
!5644 = !DILocation(line: 417, column: 7, scope: !5615)
!5645 = !DILocation(line: 418, column: 10, scope: !5642)
!5646 = !DILocation(line: 418, column: 4, scope: !5642)
!5647 = !DILocation(line: 419, column: 2, scope: !5615)
!5648 = !DILocation(line: 421, column: 32, scope: !5592)
!5649 = !DILocation(line: 421, column: 36, scope: !5592)
!5650 = !DILocation(line: 421, column: 43, scope: !5592)
!5651 = !DILocation(line: 421, column: 9, scope: !5592)
!5652 = !DILocation(line: 421, column: 2, scope: !5592)
!5653 = !DILocation(line: 422, column: 1, scope: !5592)
!5654 = distinct !DISubprogram(name: "schedule_delayed_work", scope: !316, file: !316, line: 623, type: !5655, scopeLine: 625, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!5655 = !DISubroutineType(types: !5656)
!5656 = !{!836, !5657, !362}
!5657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!5658 = !DILocalVariable(name: "dwork", arg: 1, scope: !5654, file: !316, line: 623, type: !5657)
!5659 = !DILocation(line: 623, column: 63, scope: !5654)
!5660 = !DILocalVariable(name: "delay", arg: 2, scope: !5654, file: !316, line: 624, type: !362)
!5661 = !DILocation(line: 624, column: 21, scope: !5654)
!5662 = !DILocation(line: 626, column: 28, scope: !5654)
!5663 = !DILocation(line: 626, column: 39, scope: !5654)
!5664 = !DILocation(line: 626, column: 46, scope: !5654)
!5665 = !DILocation(line: 626, column: 9, scope: !5654)
!5666 = !DILocation(line: 626, column: 2, scope: !5654)
!5667 = distinct !DISubprogram(name: "ts2020_read_tuner_gain", scope: !3, file: !3, line: 336, type: !5668, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!5668 = !DISubroutineType(types: !5669)
!5669 = !{!406, !4192, !7, !5595}
!5670 = !DILocalVariable(name: "fe", arg: 1, scope: !5667, file: !3, line: 336, type: !4192)
!5671 = !DILocation(line: 336, column: 56, scope: !5667)
!5672 = !DILocalVariable(name: "v_agc", arg: 2, scope: !5667, file: !3, line: 336, type: !7)
!5673 = !DILocation(line: 336, column: 69, scope: !5667)
!5674 = !DILocalVariable(name: "_gain", arg: 3, scope: !5667, file: !3, line: 337, type: !5595)
!5675 = !DILocation(line: 337, column: 14, scope: !5667)
!5676 = !DILocalVariable(name: "priv", scope: !5667, file: !3, line: 339, type: !376)
!5677 = !DILocation(line: 339, column: 22, scope: !5667)
!5678 = !DILocation(line: 339, column: 29, scope: !5667)
!5679 = !DILocation(line: 339, column: 33, scope: !5667)
!5680 = !DILocalVariable(name: "gain1", scope: !5667, file: !3, line: 340, type: !362)
!5681 = !DILocation(line: 340, column: 16, scope: !5667)
!5682 = !DILocalVariable(name: "gain2", scope: !5667, file: !3, line: 340, type: !362)
!5683 = !DILocation(line: 340, column: 23, scope: !5667)
!5684 = !DILocalVariable(name: "gain3", scope: !5667, file: !3, line: 340, type: !362)
!5685 = !DILocation(line: 340, column: 30, scope: !5667)
!5686 = !DILocalVariable(name: "utmp", scope: !5667, file: !3, line: 341, type: !7)
!5687 = !DILocation(line: 341, column: 11, scope: !5667)
!5688 = !DILocalVariable(name: "ret", scope: !5667, file: !3, line: 342, type: !406)
!5689 = !DILocation(line: 342, column: 6, scope: !5667)
!5690 = !DILocation(line: 345, column: 20, scope: !5667)
!5691 = !DILocation(line: 345, column: 26, scope: !5667)
!5692 = !DILocation(line: 345, column: 8, scope: !5667)
!5693 = !DILocation(line: 345, column: 6, scope: !5667)
!5694 = !DILocation(line: 346, column: 6, scope: !5695)
!5695 = distinct !DILexicalBlock(scope: !5667, file: !3, line: 346, column: 6)
!5696 = !DILocation(line: 346, column: 10, scope: !5695)
!5697 = !DILocation(line: 346, column: 6, scope: !5667)
!5698 = !DILocation(line: 347, column: 10, scope: !5695)
!5699 = !DILocation(line: 347, column: 3, scope: !5695)
!5700 = !DILocation(line: 348, column: 10, scope: !5667)
!5701 = !DILocation(line: 348, column: 15, scope: !5667)
!5702 = !DILocation(line: 348, column: 8, scope: !5667)
!5703 = !DILocation(line: 351, column: 20, scope: !5667)
!5704 = !DILocation(line: 351, column: 26, scope: !5667)
!5705 = !DILocation(line: 351, column: 8, scope: !5667)
!5706 = !DILocation(line: 351, column: 6, scope: !5667)
!5707 = !DILocation(line: 352, column: 6, scope: !5708)
!5708 = distinct !DILexicalBlock(scope: !5667, file: !3, line: 352, column: 6)
!5709 = !DILocation(line: 352, column: 10, scope: !5708)
!5710 = !DILocation(line: 352, column: 6, scope: !5667)
!5711 = !DILocation(line: 353, column: 10, scope: !5708)
!5712 = !DILocation(line: 353, column: 3, scope: !5708)
!5713 = !DILocation(line: 354, column: 10, scope: !5667)
!5714 = !DILocation(line: 354, column: 15, scope: !5667)
!5715 = !DILocation(line: 354, column: 8, scope: !5667)
!5716 = !DILocation(line: 356, column: 10, scope: !5667)
!5717 = !DILocation(line: 356, column: 16, scope: !5667)
!5718 = !DILocation(line: 356, column: 2, scope: !5667)
!5719 = !DILocalVariable(name: "__UNIQUE_ID___x226", scope: !5720, file: !3, line: 358, type: !317)
!5720 = distinct !DILexicalBlock(scope: !5721, file: !3, line: 358, column: 11)
!5721 = distinct !DILexicalBlock(scope: !5667, file: !3, line: 356, column: 23)
!5722 = !DILocation(line: 358, column: 11, scope: !5720)
!5723 = !DILocalVariable(name: "__UNIQUE_ID___x224", scope: !5724, file: !3, line: 358, type: !317)
!5724 = distinct !DILexicalBlock(scope: !5720, file: !3, line: 358, column: 11)
!5725 = !DILocation(line: 358, column: 11, scope: !5724)
!5726 = !DILocalVariable(name: "__UNIQUE_ID___y225", scope: !5724, file: !3, line: 358, type: !317)
!5727 = !DILocalVariable(name: "__UNIQUE_ID___y227", scope: !5720, file: !3, line: 358, type: !317)
!5728 = !DILocation(line: 358, column: 9, scope: !5721)
!5729 = !DILocalVariable(name: "__UNIQUE_ID___x230", scope: !5730, file: !3, line: 359, type: !317)
!5730 = distinct !DILexicalBlock(scope: !5721, file: !3, line: 359, column: 11)
!5731 = !DILocation(line: 359, column: 11, scope: !5730)
!5732 = !DILocalVariable(name: "__UNIQUE_ID___x228", scope: !5733, file: !3, line: 359, type: !317)
!5733 = distinct !DILexicalBlock(scope: !5730, file: !3, line: 359, column: 11)
!5734 = !DILocation(line: 359, column: 11, scope: !5733)
!5735 = !DILocalVariable(name: "__UNIQUE_ID___y229", scope: !5733, file: !3, line: 359, type: !317)
!5736 = !DILocalVariable(name: "__UNIQUE_ID___y231", scope: !5730, file: !3, line: 359, type: !317)
!5737 = !DILocation(line: 359, column: 9, scope: !5721)
!5738 = !DILocalVariable(name: "__UNIQUE_ID___x234", scope: !5739, file: !3, line: 360, type: !317)
!5739 = distinct !DILexicalBlock(scope: !5721, file: !3, line: 360, column: 11)
!5740 = !DILocation(line: 360, column: 11, scope: !5739)
!5741 = !DILocalVariable(name: "__UNIQUE_ID___x232", scope: !5742, file: !3, line: 360, type: !317)
!5742 = distinct !DILexicalBlock(scope: !5739, file: !3, line: 360, column: 11)
!5743 = !DILocation(line: 360, column: 11, scope: !5742)
!5744 = !DILocalVariable(name: "__UNIQUE_ID___y233", scope: !5742, file: !3, line: 360, type: !317)
!5745 = !DILocalVariable(name: "__UNIQUE_ID___y235", scope: !5739, file: !3, line: 360, type: !317)
!5746 = !DILocation(line: 360, column: 11, scope: !5721)
!5747 = !DILocation(line: 360, column: 9, scope: !5721)
!5748 = !DILocation(line: 362, column: 21, scope: !5721)
!5749 = !DILocation(line: 362, column: 27, scope: !5721)
!5750 = !DILocation(line: 363, column: 7, scope: !5721)
!5751 = !DILocation(line: 363, column: 13, scope: !5721)
!5752 = !DILocation(line: 362, column: 34, scope: !5721)
!5753 = !DILocation(line: 364, column: 7, scope: !5721)
!5754 = !DILocation(line: 364, column: 13, scope: !5721)
!5755 = !DILocation(line: 364, column: 18, scope: !5721)
!5756 = !DILocation(line: 364, column: 23, scope: !5721)
!5757 = !DILocation(line: 363, column: 20, scope: !5721)
!5758 = !DILocation(line: 364, column: 28, scope: !5721)
!5759 = !DILocation(line: 362, column: 12, scope: !5721)
!5760 = !DILocation(line: 362, column: 4, scope: !5721)
!5761 = !DILocation(line: 362, column: 10, scope: !5721)
!5762 = !DILocation(line: 367, column: 3, scope: !5721)
!5763 = !DILocation(line: 370, column: 21, scope: !5721)
!5764 = !DILocation(line: 370, column: 27, scope: !5721)
!5765 = !DILocation(line: 370, column: 9, scope: !5721)
!5766 = !DILocation(line: 370, column: 7, scope: !5721)
!5767 = !DILocation(line: 371, column: 7, scope: !5768)
!5768 = distinct !DILexicalBlock(scope: !5721, file: !3, line: 371, column: 7)
!5769 = !DILocation(line: 371, column: 11, scope: !5768)
!5770 = !DILocation(line: 371, column: 7, scope: !5721)
!5771 = !DILocation(line: 372, column: 11, scope: !5768)
!5772 = !DILocation(line: 372, column: 4, scope: !5768)
!5773 = !DILocation(line: 373, column: 12, scope: !5721)
!5774 = !DILocation(line: 373, column: 17, scope: !5721)
!5775 = !DILocation(line: 373, column: 23, scope: !5721)
!5776 = !DILocation(line: 373, column: 11, scope: !5721)
!5777 = !DILocation(line: 373, column: 9, scope: !5721)
!5778 = !DILocalVariable(name: "__UNIQUE_ID___x238", scope: !5779, file: !3, line: 375, type: !317)
!5779 = distinct !DILexicalBlock(scope: !5721, file: !3, line: 375, column: 11)
!5780 = !DILocation(line: 375, column: 11, scope: !5779)
!5781 = !DILocalVariable(name: "__UNIQUE_ID___x236", scope: !5782, file: !3, line: 375, type: !317)
!5782 = distinct !DILexicalBlock(scope: !5779, file: !3, line: 375, column: 11)
!5783 = !DILocation(line: 375, column: 11, scope: !5782)
!5784 = !DILocalVariable(name: "__UNIQUE_ID___y237", scope: !5782, file: !3, line: 375, type: !317)
!5785 = !DILocalVariable(name: "__UNIQUE_ID___y239", scope: !5779, file: !3, line: 375, type: !317)
!5786 = !DILocation(line: 375, column: 9, scope: !5721)
!5787 = !DILocalVariable(name: "__UNIQUE_ID___x242", scope: !5788, file: !3, line: 376, type: !317)
!5788 = distinct !DILexicalBlock(scope: !5721, file: !3, line: 376, column: 11)
!5789 = !DILocation(line: 376, column: 11, scope: !5788)
!5790 = !DILocalVariable(name: "__UNIQUE_ID___x240", scope: !5791, file: !3, line: 376, type: !317)
!5791 = distinct !DILexicalBlock(scope: !5788, file: !3, line: 376, column: 11)
!5792 = !DILocation(line: 376, column: 11, scope: !5791)
!5793 = !DILocalVariable(name: "__UNIQUE_ID___y241", scope: !5791, file: !3, line: 376, type: !317)
!5794 = !DILocalVariable(name: "__UNIQUE_ID___y243", scope: !5788, file: !3, line: 376, type: !317)
!5795 = !DILocation(line: 376, column: 9, scope: !5721)
!5796 = !DILocalVariable(name: "__UNIQUE_ID___x246", scope: !5797, file: !3, line: 377, type: !317)
!5797 = distinct !DILexicalBlock(scope: !5721, file: !3, line: 377, column: 11)
!5798 = !DILocation(line: 377, column: 11, scope: !5797)
!5799 = !DILocalVariable(name: "__UNIQUE_ID___x244", scope: !5800, file: !3, line: 377, type: !317)
!5800 = distinct !DILexicalBlock(scope: !5797, file: !3, line: 377, column: 11)
!5801 = !DILocation(line: 377, column: 11, scope: !5800)
!5802 = !DILocalVariable(name: "__UNIQUE_ID___y245", scope: !5800, file: !3, line: 377, type: !317)
!5803 = !DILocalVariable(name: "__UNIQUE_ID___y247", scope: !5797, file: !3, line: 377, type: !317)
!5804 = !DILocation(line: 377, column: 9, scope: !5721)
!5805 = !DILocalVariable(name: "__UNIQUE_ID___x250", scope: !5806, file: !3, line: 378, type: !317)
!5806 = distinct !DILexicalBlock(scope: !5721, file: !3, line: 378, column: 11)
!5807 = !DILocation(line: 378, column: 11, scope: !5806)
!5808 = !DILocalVariable(name: "__UNIQUE_ID___x248", scope: !5809, file: !3, line: 378, type: !317)
!5809 = distinct !DILexicalBlock(scope: !5806, file: !3, line: 378, column: 11)
!5810 = !DILocation(line: 378, column: 11, scope: !5809)
!5811 = !DILocalVariable(name: "__UNIQUE_ID___y249", scope: !5809, file: !3, line: 378, type: !317)
!5812 = !DILocalVariable(name: "__UNIQUE_ID___y251", scope: !5806, file: !3, line: 378, type: !317)
!5813 = !DILocation(line: 378, column: 11, scope: !5721)
!5814 = !DILocation(line: 378, column: 9, scope: !5721)
!5815 = !DILocation(line: 380, column: 21, scope: !5721)
!5816 = !DILocation(line: 380, column: 27, scope: !5721)
!5817 = !DILocation(line: 381, column: 7, scope: !5721)
!5818 = !DILocation(line: 381, column: 13, scope: !5721)
!5819 = !DILocation(line: 380, column: 34, scope: !5721)
!5820 = !DILocation(line: 382, column: 7, scope: !5721)
!5821 = !DILocation(line: 382, column: 13, scope: !5721)
!5822 = !DILocation(line: 381, column: 20, scope: !5721)
!5823 = !DILocation(line: 383, column: 7, scope: !5721)
!5824 = !DILocation(line: 383, column: 13, scope: !5721)
!5825 = !DILocation(line: 383, column: 19, scope: !5721)
!5826 = !DILocation(line: 383, column: 25, scope: !5721)
!5827 = !DILocation(line: 382, column: 20, scope: !5721)
!5828 = !DILocation(line: 383, column: 30, scope: !5721)
!5829 = !DILocation(line: 380, column: 12, scope: !5721)
!5830 = !DILocation(line: 380, column: 4, scope: !5721)
!5831 = !DILocation(line: 380, column: 10, scope: !5721)
!5832 = !DILocation(line: 386, column: 3, scope: !5721)
!5833 = !DILocation(line: 389, column: 2, scope: !5667)
!5834 = !DILocation(line: 390, column: 1, scope: !5667)
!5835 = distinct !DISubprogram(name: "queue_delayed_work", scope: !316, file: !316, line: 518, type: !5836, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!5836 = !DISubroutineType(types: !5837)
!5837 = !{!836, !1726, !5657, !362}
!5838 = !DILocalVariable(name: "wq", arg: 1, scope: !5835, file: !316, line: 518, type: !1726)
!5839 = !DILocation(line: 518, column: 64, scope: !5835)
!5840 = !DILocalVariable(name: "dwork", arg: 2, scope: !5835, file: !316, line: 519, type: !5657)
!5841 = !DILocation(line: 519, column: 32, scope: !5835)
!5842 = !DILocalVariable(name: "delay", arg: 3, scope: !5835, file: !316, line: 520, type: !362)
!5843 = !DILocation(line: 520, column: 25, scope: !5835)
!5844 = !DILocation(line: 522, column: 49, scope: !5835)
!5845 = !DILocation(line: 522, column: 53, scope: !5835)
!5846 = !DILocation(line: 522, column: 60, scope: !5835)
!5847 = !DILocation(line: 522, column: 9, scope: !5835)
!5848 = !DILocation(line: 522, column: 2, scope: !5835)
!5849 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !5435, file: !5435, line: 308, type: !5436, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!5850 = !DILocalVariable(name: "m", arg: 1, scope: !5849, file: !5435, line: 308, type: !1772)
!5851 = !DILocation(line: 308, column: 66, scope: !5849)
!5852 = !DILocation(line: 310, column: 10, scope: !5849)
!5853 = !DILocation(line: 310, column: 12, scope: !5849)
!5854 = !DILocation(line: 310, column: 34, scope: !5849)
!5855 = !DILocation(line: 310, column: 39, scope: !5849)
!5856 = !DILocation(line: 310, column: 2, scope: !5849)
!5857 = distinct !DISubprogram(name: "ts2020_release", scope: !3, file: !3, line: 47, type: !4215, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!5858 = !DILocalVariable(name: "fe", arg: 1, scope: !5857, file: !3, line: 47, type: !4192)
!5859 = !DILocation(line: 47, column: 49, scope: !5857)
!5860 = !DILocalVariable(name: "priv", scope: !5857, file: !3, line: 49, type: !376)
!5861 = !DILocation(line: 49, column: 22, scope: !5857)
!5862 = !DILocation(line: 49, column: 29, scope: !5857)
!5863 = !DILocation(line: 49, column: 33, scope: !5857)
!5864 = !DILocalVariable(name: "client", scope: !5857, file: !3, line: 50, type: !380)
!5865 = !DILocation(line: 50, column: 21, scope: !5857)
!5866 = !DILocation(line: 50, column: 30, scope: !5857)
!5867 = !DILocation(line: 50, column: 36, scope: !5857)
!5868 = !DILocation(line: 54, column: 24, scope: !5857)
!5869 = !DILocation(line: 54, column: 2, scope: !5857)
!5870 = !DILocation(line: 55, column: 1, scope: !5857)
!5871 = !DILocalVariable(name: "fe", arg: 1, scope: !4661, file: !3, line: 78, type: !4192)
!5872 = !DILocation(line: 78, column: 45, scope: !4661)
!5873 = !DILocalVariable(name: "c", scope: !4661, file: !3, line: 80, type: !4254)
!5874 = !DILocation(line: 80, column: 34, scope: !4661)
!5875 = !DILocation(line: 80, column: 39, scope: !4661)
!5876 = !DILocation(line: 80, column: 43, scope: !4661)
!5877 = !DILocalVariable(name: "priv", scope: !4661, file: !3, line: 81, type: !376)
!5878 = !DILocation(line: 81, column: 22, scope: !4661)
!5879 = !DILocation(line: 81, column: 29, scope: !4661)
!5880 = !DILocation(line: 81, column: 33, scope: !4661)
!5881 = !DILocalVariable(name: "i", scope: !4661, file: !3, line: 82, type: !406)
!5882 = !DILocation(line: 82, column: 6, scope: !4661)
!5883 = !DILocalVariable(name: "u8tmp", scope: !4661, file: !3, line: 83, type: !427)
!5884 = !DILocation(line: 83, column: 5, scope: !4661)
!5885 = !DILocation(line: 85, column: 6, scope: !5886)
!5886 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 85, column: 6)
!5887 = !DILocation(line: 85, column: 12, scope: !5886)
!5888 = !DILocation(line: 85, column: 18, scope: !5886)
!5889 = !DILocation(line: 85, column: 6, scope: !4661)
!5890 = !DILocation(line: 86, column: 16, scope: !5891)
!5891 = distinct !DILexicalBlock(scope: !5886, file: !3, line: 85, column: 39)
!5892 = !DILocation(line: 86, column: 22, scope: !5891)
!5893 = !DILocation(line: 86, column: 3, scope: !5891)
!5894 = !DILocation(line: 87, column: 16, scope: !5891)
!5895 = !DILocation(line: 87, column: 22, scope: !5891)
!5896 = !DILocation(line: 87, column: 36, scope: !5891)
!5897 = !DILocation(line: 87, column: 42, scope: !5891)
!5898 = !DILocation(line: 87, column: 3, scope: !5891)
!5899 = !DILocation(line: 88, column: 16, scope: !5891)
!5900 = !DILocation(line: 88, column: 22, scope: !5891)
!5901 = !DILocation(line: 88, column: 3, scope: !5891)
!5902 = !DILocation(line: 89, column: 16, scope: !5891)
!5903 = !DILocation(line: 89, column: 22, scope: !5891)
!5904 = !DILocation(line: 89, column: 3, scope: !5891)
!5905 = !DILocation(line: 90, column: 16, scope: !5891)
!5906 = !DILocation(line: 90, column: 22, scope: !5891)
!5907 = !DILocation(line: 90, column: 3, scope: !5891)
!5908 = !DILocation(line: 91, column: 16, scope: !5891)
!5909 = !DILocation(line: 91, column: 22, scope: !5891)
!5910 = !DILocation(line: 91, column: 3, scope: !5891)
!5911 = !DILocation(line: 92, column: 16, scope: !5891)
!5912 = !DILocation(line: 92, column: 22, scope: !5891)
!5913 = !DILocation(line: 92, column: 3, scope: !5891)
!5914 = !DILocation(line: 93, column: 16, scope: !5891)
!5915 = !DILocation(line: 93, column: 22, scope: !5891)
!5916 = !DILocation(line: 93, column: 3, scope: !5891)
!5917 = !DILocation(line: 94, column: 2, scope: !5891)
!5918 = !DILocation(line: 109, column: 16, scope: !5919)
!5919 = distinct !DILexicalBlock(scope: !5886, file: !3, line: 94, column: 9)
!5920 = !DILocation(line: 109, column: 22, scope: !5919)
!5921 = !DILocation(line: 109, column: 3, scope: !5919)
!5922 = !DILocation(line: 110, column: 16, scope: !5919)
!5923 = !DILocation(line: 110, column: 22, scope: !5919)
!5924 = !DILocation(line: 110, column: 3, scope: !5919)
!5925 = !DILocation(line: 112, column: 11, scope: !5919)
!5926 = !DILocation(line: 112, column: 17, scope: !5919)
!5927 = !DILocation(line: 112, column: 3, scope: !5919)
!5928 = !DILocation(line: 114, column: 10, scope: !5929)
!5929 = distinct !DILexicalBlock(scope: !5919, file: !3, line: 112, column: 26)
!5930 = !DILocation(line: 115, column: 4, scope: !5929)
!5931 = !DILocation(line: 117, column: 10, scope: !5929)
!5932 = !DILocation(line: 118, column: 17, scope: !5929)
!5933 = !DILocation(line: 118, column: 23, scope: !5929)
!5934 = !DILocation(line: 118, column: 37, scope: !5929)
!5935 = !DILocation(line: 118, column: 43, scope: !5929)
!5936 = !DILocation(line: 118, column: 4, scope: !5929)
!5937 = !DILocation(line: 119, column: 4, scope: !5929)
!5938 = !DILocation(line: 121, column: 10, scope: !5929)
!5939 = !DILocation(line: 122, column: 4, scope: !5929)
!5940 = !DILocation(line: 124, column: 10, scope: !5929)
!5941 = !DILocation(line: 125, column: 4, scope: !5929)
!5942 = !DILocation(line: 128, column: 16, scope: !5919)
!5943 = !DILocation(line: 128, column: 22, scope: !5919)
!5944 = !DILocation(line: 128, column: 36, scope: !5919)
!5945 = !DILocation(line: 128, column: 3, scope: !5919)
!5946 = !DILocation(line: 130, column: 7, scope: !5947)
!5947 = distinct !DILexicalBlock(scope: !5919, file: !3, line: 130, column: 7)
!5948 = !DILocation(line: 130, column: 13, scope: !5947)
!5949 = !DILocation(line: 130, column: 7, scope: !5919)
!5950 = !DILocation(line: 131, column: 10, scope: !5947)
!5951 = !DILocation(line: 131, column: 4, scope: !5947)
!5952 = !DILocation(line: 133, column: 10, scope: !5947)
!5953 = !DILocation(line: 135, column: 16, scope: !5919)
!5954 = !DILocation(line: 135, column: 22, scope: !5919)
!5955 = !DILocation(line: 135, column: 36, scope: !5919)
!5956 = !DILocation(line: 135, column: 3, scope: !5919)
!5957 = !DILocation(line: 137, column: 10, scope: !5958)
!5958 = distinct !DILexicalBlock(scope: !5919, file: !3, line: 137, column: 3)
!5959 = !DILocation(line: 137, column: 8, scope: !5958)
!5960 = !DILocation(line: 137, column: 15, scope: !5961)
!5961 = distinct !DILexicalBlock(scope: !5958, file: !3, line: 137, column: 3)
!5962 = !DILocation(line: 137, column: 17, scope: !5961)
!5963 = !DILocation(line: 137, column: 3, scope: !5958)
!5964 = !DILocation(line: 138, column: 17, scope: !5961)
!5965 = !DILocation(line: 138, column: 23, scope: !5961)
!5966 = !DILocation(line: 138, column: 40, scope: !5961)
!5967 = !DILocation(line: 138, column: 31, scope: !5961)
!5968 = !DILocation(line: 138, column: 43, scope: !5961)
!5969 = !DILocation(line: 139, column: 19, scope: !5961)
!5970 = !DILocation(line: 139, column: 10, scope: !5961)
!5971 = !DILocation(line: 139, column: 22, scope: !5961)
!5972 = !DILocation(line: 138, column: 4, scope: !5961)
!5973 = !DILocation(line: 137, column: 42, scope: !5961)
!5974 = !DILocation(line: 137, column: 3, scope: !5961)
!5975 = distinct !{!5975, !5963, !5976}
!5976 = !DILocation(line: 139, column: 25, scope: !5958)
!5977 = !DILocation(line: 143, column: 2, scope: !4661)
!5978 = !DILocation(line: 143, column: 5, scope: !4661)
!5979 = !DILocation(line: 143, column: 14, scope: !4661)
!5980 = !DILocation(line: 143, column: 18, scope: !4661)
!5981 = !DILocation(line: 144, column: 2, scope: !4661)
!5982 = !DILocation(line: 144, column: 5, scope: !4661)
!5983 = !DILocation(line: 144, column: 14, scope: !4661)
!5984 = !DILocation(line: 144, column: 22, scope: !4661)
!5985 = !DILocation(line: 144, column: 28, scope: !4661)
!5986 = !DILocation(line: 145, column: 2, scope: !4661)
!5987 = !DILocation(line: 145, column: 5, scope: !4661)
!5988 = !DILocation(line: 145, column: 14, scope: !4661)
!5989 = !DILocation(line: 145, column: 22, scope: !4661)
!5990 = !DILocation(line: 145, column: 29, scope: !4661)
!5991 = !DILocation(line: 148, column: 20, scope: !4661)
!5992 = !DILocation(line: 148, column: 26, scope: !4661)
!5993 = !DILocation(line: 148, column: 36, scope: !4661)
!5994 = !DILocation(line: 148, column: 2, scope: !4661)
!5995 = !DILocation(line: 149, column: 2, scope: !4661)
!5996 = distinct !DISubprogram(name: "ts2020_sleep", scope: !3, file: !3, line: 57, type: !4221, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!5997 = !DILocalVariable(name: "fe", arg: 1, scope: !5996, file: !3, line: 57, type: !4192)
!5998 = !DILocation(line: 57, column: 46, scope: !5996)
!5999 = !DILocalVariable(name: "priv", scope: !5996, file: !3, line: 59, type: !376)
!6000 = !DILocation(line: 59, column: 22, scope: !5996)
!6001 = !DILocation(line: 59, column: 29, scope: !5996)
!6002 = !DILocation(line: 59, column: 33, scope: !5996)
!6003 = !DILocalVariable(name: "ret", scope: !5996, file: !3, line: 60, type: !406)
!6004 = !DILocation(line: 60, column: 6, scope: !5996)
!6005 = !DILocalVariable(name: "u8tmp", scope: !5996, file: !3, line: 61, type: !427)
!6006 = !DILocation(line: 61, column: 5, scope: !5996)
!6007 = !DILocation(line: 63, column: 6, scope: !6008)
!6008 = distinct !DILexicalBlock(scope: !5996, file: !3, line: 63, column: 6)
!6009 = !DILocation(line: 63, column: 12, scope: !6008)
!6010 = !DILocation(line: 63, column: 18, scope: !6008)
!6011 = !DILocation(line: 63, column: 6, scope: !5996)
!6012 = !DILocation(line: 64, column: 9, scope: !6008)
!6013 = !DILocation(line: 64, column: 3, scope: !6008)
!6014 = !DILocation(line: 66, column: 9, scope: !6008)
!6015 = !DILocation(line: 68, column: 21, scope: !5996)
!6016 = !DILocation(line: 68, column: 27, scope: !5996)
!6017 = !DILocation(line: 68, column: 35, scope: !5996)
!6018 = !DILocation(line: 68, column: 8, scope: !5996)
!6019 = !DILocation(line: 68, column: 6, scope: !5996)
!6020 = !DILocation(line: 69, column: 6, scope: !6021)
!6021 = distinct !DILexicalBlock(scope: !5996, file: !3, line: 69, column: 6)
!6022 = !DILocation(line: 69, column: 10, scope: !6021)
!6023 = !DILocation(line: 69, column: 6, scope: !5996)
!6024 = !DILocation(line: 70, column: 10, scope: !6021)
!6025 = !DILocation(line: 70, column: 3, scope: !6021)
!6026 = !DILocation(line: 73, column: 7, scope: !6027)
!6027 = distinct !DILexicalBlock(scope: !5996, file: !3, line: 73, column: 6)
!6028 = !DILocation(line: 73, column: 13, scope: !6027)
!6029 = !DILocation(line: 73, column: 6, scope: !5996)
!6030 = !DILocation(line: 74, column: 29, scope: !6027)
!6031 = !DILocation(line: 74, column: 35, scope: !6027)
!6032 = !DILocation(line: 74, column: 3, scope: !6027)
!6033 = !DILocation(line: 75, column: 2, scope: !5996)
!6034 = !DILocation(line: 76, column: 1, scope: !5996)
!6035 = distinct !DISubprogram(name: "ts2020_set_params", scope: !3, file: !3, line: 188, type: !4221, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!6036 = !DILocalVariable(name: "fe", arg: 1, scope: !6035, file: !3, line: 188, type: !4192)
!6037 = !DILocation(line: 188, column: 51, scope: !6035)
!6038 = !DILocalVariable(name: "c", scope: !6035, file: !3, line: 190, type: !4254)
!6039 = !DILocation(line: 190, column: 34, scope: !6035)
!6040 = !DILocation(line: 190, column: 39, scope: !6035)
!6041 = !DILocation(line: 190, column: 43, scope: !6035)
!6042 = !DILocalVariable(name: "priv", scope: !6035, file: !3, line: 191, type: !376)
!6043 = !DILocation(line: 191, column: 22, scope: !6035)
!6044 = !DILocation(line: 191, column: 29, scope: !6035)
!6045 = !DILocation(line: 191, column: 33, scope: !6035)
!6046 = !DILocalVariable(name: "ret", scope: !6035, file: !3, line: 192, type: !406)
!6047 = !DILocation(line: 192, column: 6, scope: !6035)
!6048 = !DILocalVariable(name: "utmp", scope: !6035, file: !3, line: 193, type: !7)
!6049 = !DILocation(line: 193, column: 15, scope: !6035)
!6050 = !DILocalVariable(name: "f3db", scope: !6035, file: !3, line: 194, type: !442)
!6051 = !DILocation(line: 194, column: 6, scope: !6035)
!6052 = !DILocalVariable(name: "gdiv28", scope: !6035, file: !3, line: 194, type: !442)
!6053 = !DILocation(line: 194, column: 12, scope: !6035)
!6054 = !DILocalVariable(name: "u16tmp", scope: !6035, file: !3, line: 195, type: !425)
!6055 = !DILocation(line: 195, column: 6, scope: !6035)
!6056 = !DILocalVariable(name: "value", scope: !6035, file: !3, line: 195, type: !425)
!6057 = !DILocation(line: 195, column: 14, scope: !6035)
!6058 = !DILocalVariable(name: "lpf_coeff", scope: !6035, file: !3, line: 195, type: !425)
!6059 = !DILocation(line: 195, column: 21, scope: !6035)
!6060 = !DILocalVariable(name: "buf", scope: !6035, file: !3, line: 196, type: !6061)
!6061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 24, elements: !1001)
!6062 = !DILocation(line: 196, column: 5, scope: !6035)
!6063 = !DILocalVariable(name: "reg10", scope: !6035, file: !3, line: 196, type: !427)
!6064 = !DILocation(line: 196, column: 13, scope: !6035)
!6065 = !DILocalVariable(name: "lpf_mxdiv", scope: !6035, file: !3, line: 196, type: !427)
!6066 = !DILocation(line: 196, column: 20, scope: !6035)
!6067 = !DILocalVariable(name: "mlpf_max", scope: !6035, file: !3, line: 196, type: !427)
!6068 = !DILocation(line: 196, column: 31, scope: !6035)
!6069 = !DILocalVariable(name: "mlpf_min", scope: !6035, file: !3, line: 196, type: !427)
!6070 = !DILocation(line: 196, column: 41, scope: !6035)
!6071 = !DILocalVariable(name: "nlpf", scope: !6035, file: !3, line: 196, type: !427)
!6072 = !DILocation(line: 196, column: 51, scope: !6035)
!6073 = !DILocalVariable(name: "f_ref_khz", scope: !6035, file: !3, line: 197, type: !7)
!6074 = !DILocation(line: 197, column: 15, scope: !6035)
!6075 = !DILocalVariable(name: "f_vco_khz", scope: !6035, file: !3, line: 197, type: !7)
!6076 = !DILocation(line: 197, column: 26, scope: !6035)
!6077 = !DILocalVariable(name: "div_ref", scope: !6035, file: !3, line: 197, type: !7)
!6078 = !DILocation(line: 197, column: 37, scope: !6035)
!6079 = !DILocalVariable(name: "div_out", scope: !6035, file: !3, line: 197, type: !7)
!6080 = !DILocation(line: 197, column: 46, scope: !6035)
!6081 = !DILocalVariable(name: "pll_n", scope: !6035, file: !3, line: 197, type: !7)
!6082 = !DILocation(line: 197, column: 55, scope: !6035)
!6083 = !DILocalVariable(name: "frequency_khz", scope: !6035, file: !3, line: 198, type: !7)
!6084 = !DILocation(line: 198, column: 15, scope: !6035)
!6085 = !DILocation(line: 198, column: 31, scope: !6035)
!6086 = !DILocation(line: 198, column: 34, scope: !6035)
!6087 = !DILocation(line: 204, column: 12, scope: !6035)
!6088 = !DILocalVariable(name: "__x", scope: !6089, file: !3, line: 205, type: !7)
!6089 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 205, column: 12)
!6090 = !DILocation(line: 205, column: 12, scope: !6089)
!6091 = !DILocalVariable(name: "__d", scope: !6089, file: !3, line: 205, type: !406)
!6092 = !DILocation(line: 205, column: 10, scope: !6035)
!6093 = !DILocation(line: 208, column: 6, scope: !6094)
!6094 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 208, column: 6)
!6095 = !DILocation(line: 208, column: 22, scope: !6094)
!6096 = !DILocation(line: 208, column: 28, scope: !6094)
!6097 = !DILocation(line: 208, column: 20, scope: !6094)
!6098 = !DILocation(line: 208, column: 6, scope: !6035)
!6099 = !DILocation(line: 209, column: 11, scope: !6100)
!6100 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 208, column: 43)
!6101 = !DILocation(line: 210, column: 9, scope: !6100)
!6102 = !DILocation(line: 211, column: 2, scope: !6100)
!6103 = !DILocation(line: 212, column: 11, scope: !6104)
!6104 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 211, column: 9)
!6105 = !DILocation(line: 213, column: 9, scope: !6104)
!6106 = !DILocation(line: 216, column: 14, scope: !6035)
!6107 = !DILocation(line: 216, column: 30, scope: !6035)
!6108 = !DILocation(line: 216, column: 28, scope: !6035)
!6109 = !DILocation(line: 216, column: 12, scope: !6035)
!6110 = !DILocation(line: 217, column: 10, scope: !6035)
!6111 = !DILocation(line: 217, column: 22, scope: !6035)
!6112 = !DILocation(line: 217, column: 20, scope: !6035)
!6113 = !DILocation(line: 217, column: 32, scope: !6035)
!6114 = !DILocation(line: 217, column: 30, scope: !6035)
!6115 = !DILocation(line: 217, column: 8, scope: !6035)
!6116 = !DILocation(line: 218, column: 11, scope: !6035)
!6117 = !DILocation(line: 218, column: 17, scope: !6035)
!6118 = !DILocation(line: 218, column: 8, scope: !6035)
!6119 = !DILocation(line: 219, column: 24, scope: !6035)
!6120 = !DILocation(line: 219, column: 32, scope: !6035)
!6121 = !DILocation(line: 219, column: 30, scope: !6035)
!6122 = !DILocation(line: 219, column: 44, scope: !6035)
!6123 = !DILocation(line: 219, column: 42, scope: !6035)
!6124 = !DILocation(line: 219, column: 54, scope: !6035)
!6125 = !DILocation(line: 219, column: 52, scope: !6035)
!6126 = !DILocation(line: 219, column: 2, scope: !6035)
!6127 = !DILocation(line: 219, column: 8, scope: !6035)
!6128 = !DILocation(line: 219, column: 22, scope: !6035)
!6129 = !DILocation(line: 221, column: 2, scope: !6130)
!6130 = distinct !DILexicalBlock(scope: !6131, file: !3, line: 221, column: 2)
!6131 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 221, column: 2)
!6132 = !DILocation(line: 221, column: 2, scope: !6131)
!6133 = !DILocation(line: 225, column: 6, scope: !6134)
!6134 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 225, column: 6)
!6135 = !DILocation(line: 225, column: 12, scope: !6134)
!6136 = !DILocation(line: 225, column: 18, scope: !6134)
!6137 = !DILocation(line: 225, column: 6, scope: !6035)
!6138 = !DILocation(line: 226, column: 13, scope: !6139)
!6139 = distinct !DILexicalBlock(scope: !6134, file: !3, line: 225, column: 39)
!6140 = !DILocation(line: 227, column: 9, scope: !6139)
!6141 = !DILocation(line: 228, column: 22, scope: !6139)
!6142 = !DILocation(line: 228, column: 28, scope: !6139)
!6143 = !DILocation(line: 228, column: 42, scope: !6139)
!6144 = !DILocation(line: 228, column: 9, scope: !6139)
!6145 = !DILocation(line: 228, column: 7, scope: !6139)
!6146 = !DILocation(line: 229, column: 2, scope: !6139)
!6147 = !DILocation(line: 230, column: 13, scope: !6148)
!6148 = distinct !DILexicalBlock(scope: !6134, file: !3, line: 229, column: 9)
!6149 = !DILocation(line: 231, column: 9, scope: !6148)
!6150 = !DILocation(line: 232, column: 22, scope: !6148)
!6151 = !DILocation(line: 232, column: 28, scope: !6148)
!6152 = !DILocation(line: 232, column: 42, scope: !6148)
!6153 = !DILocation(line: 232, column: 9, scope: !6148)
!6154 = !DILocation(line: 232, column: 7, scope: !6148)
!6155 = !DILocation(line: 233, column: 23, scope: !6148)
!6156 = !DILocation(line: 233, column: 29, scope: !6148)
!6157 = !DILocation(line: 233, column: 10, scope: !6148)
!6158 = !DILocation(line: 233, column: 7, scope: !6148)
!6159 = !DILocation(line: 236, column: 11, scope: !6035)
!6160 = !DILocation(line: 236, column: 17, scope: !6035)
!6161 = !DILocation(line: 236, column: 9, scope: !6035)
!6162 = !DILocation(line: 237, column: 12, scope: !6035)
!6163 = !DILocation(line: 237, column: 19, scope: !6035)
!6164 = !DILocation(line: 237, column: 25, scope: !6035)
!6165 = !DILocation(line: 237, column: 11, scope: !6035)
!6166 = !DILocation(line: 237, column: 2, scope: !6035)
!6167 = !DILocation(line: 237, column: 9, scope: !6035)
!6168 = !DILocation(line: 238, column: 12, scope: !6035)
!6169 = !DILocation(line: 238, column: 19, scope: !6035)
!6170 = !DILocation(line: 238, column: 25, scope: !6035)
!6171 = !DILocation(line: 238, column: 11, scope: !6035)
!6172 = !DILocation(line: 238, column: 2, scope: !6035)
!6173 = !DILocation(line: 238, column: 9, scope: !6035)
!6174 = !DILocation(line: 239, column: 11, scope: !6035)
!6175 = !DILocation(line: 239, column: 19, scope: !6035)
!6176 = !DILocation(line: 239, column: 2, scope: !6035)
!6177 = !DILocation(line: 239, column: 9, scope: !6035)
!6178 = !DILocation(line: 241, column: 22, scope: !6035)
!6179 = !DILocation(line: 241, column: 28, scope: !6035)
!6180 = !DILocation(line: 241, column: 42, scope: !6035)
!6181 = !DILocation(line: 241, column: 9, scope: !6035)
!6182 = !DILocation(line: 241, column: 6, scope: !6035)
!6183 = !DILocation(line: 242, column: 22, scope: !6035)
!6184 = !DILocation(line: 242, column: 28, scope: !6035)
!6185 = !DILocation(line: 242, column: 42, scope: !6035)
!6186 = !DILocation(line: 242, column: 9, scope: !6035)
!6187 = !DILocation(line: 242, column: 6, scope: !6035)
!6188 = !DILocation(line: 243, column: 22, scope: !6035)
!6189 = !DILocation(line: 243, column: 28, scope: !6035)
!6190 = !DILocation(line: 243, column: 42, scope: !6035)
!6191 = !DILocation(line: 243, column: 9, scope: !6035)
!6192 = !DILocation(line: 243, column: 6, scope: !6035)
!6193 = !DILocation(line: 245, column: 32, scope: !6035)
!6194 = !DILocation(line: 245, column: 9, scope: !6035)
!6195 = !DILocation(line: 245, column: 6, scope: !6035)
!6196 = !DILocation(line: 246, column: 6, scope: !6197)
!6197 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 246, column: 6)
!6198 = !DILocation(line: 246, column: 10, scope: !6197)
!6199 = !DILocation(line: 246, column: 6, scope: !6035)
!6200 = !DILocation(line: 247, column: 3, scope: !6197)
!6201 = !DILocation(line: 249, column: 32, scope: !6035)
!6202 = !DILocation(line: 249, column: 9, scope: !6035)
!6203 = !DILocation(line: 249, column: 6, scope: !6035)
!6204 = !DILocation(line: 252, column: 6, scope: !6205)
!6205 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 252, column: 6)
!6206 = !DILocation(line: 252, column: 12, scope: !6205)
!6207 = !DILocation(line: 252, column: 18, scope: !6205)
!6208 = !DILocation(line: 252, column: 6, scope: !6035)
!6209 = !DILocation(line: 253, column: 30, scope: !6205)
!6210 = !DILocation(line: 253, column: 10, scope: !6205)
!6211 = !DILocation(line: 253, column: 7, scope: !6205)
!6212 = !DILocation(line: 253, column: 3, scope: !6205)
!6213 = !DILocation(line: 255, column: 9, scope: !6035)
!6214 = !DILocation(line: 256, column: 22, scope: !6035)
!6215 = !DILocation(line: 256, column: 28, scope: !6035)
!6216 = !DILocation(line: 256, column: 42, scope: !6035)
!6217 = !DILocation(line: 256, column: 49, scope: !6035)
!6218 = !DILocation(line: 256, column: 9, scope: !6035)
!6219 = !DILocation(line: 256, column: 6, scope: !6035)
!6220 = !DILocation(line: 257, column: 32, scope: !6035)
!6221 = !DILocation(line: 257, column: 9, scope: !6035)
!6222 = !DILocation(line: 257, column: 6, scope: !6035)
!6223 = !DILocation(line: 258, column: 6, scope: !6224)
!6224 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 258, column: 6)
!6225 = !DILocation(line: 258, column: 10, scope: !6224)
!6226 = !DILocation(line: 258, column: 6, scope: !6035)
!6227 = !DILocation(line: 259, column: 3, scope: !6224)
!6228 = !DILocation(line: 261, column: 6, scope: !6229)
!6229 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 261, column: 6)
!6230 = !DILocation(line: 261, column: 12, scope: !6229)
!6231 = !DILocation(line: 261, column: 18, scope: !6229)
!6232 = !DILocation(line: 261, column: 6, scope: !6035)
!6233 = !DILocation(line: 262, column: 22, scope: !6234)
!6234 = distinct !DILexicalBlock(scope: !6229, file: !3, line: 261, column: 39)
!6235 = !DILocation(line: 262, column: 28, scope: !6234)
!6236 = !DILocation(line: 262, column: 9, scope: !6234)
!6237 = !DILocation(line: 262, column: 7, scope: !6234)
!6238 = !DILocation(line: 263, column: 23, scope: !6234)
!6239 = !DILocation(line: 263, column: 29, scope: !6234)
!6240 = !DILocation(line: 263, column: 10, scope: !6234)
!6241 = !DILocation(line: 263, column: 7, scope: !6234)
!6242 = !DILocation(line: 264, column: 23, scope: !6234)
!6243 = !DILocation(line: 264, column: 29, scope: !6234)
!6244 = !DILocation(line: 264, column: 10, scope: !6234)
!6245 = !DILocation(line: 264, column: 7, scope: !6234)
!6246 = !DILocation(line: 265, column: 23, scope: !6234)
!6247 = !DILocation(line: 265, column: 29, scope: !6234)
!6248 = !DILocation(line: 265, column: 10, scope: !6234)
!6249 = !DILocation(line: 265, column: 7, scope: !6234)
!6250 = !DILocation(line: 266, column: 7, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6234, file: !3, line: 266, column: 7)
!6252 = !DILocation(line: 266, column: 11, scope: !6251)
!6253 = !DILocation(line: 266, column: 7, scope: !6234)
!6254 = !DILocation(line: 267, column: 4, scope: !6251)
!6255 = !DILocation(line: 268, column: 2, scope: !6234)
!6256 = !DILocation(line: 270, column: 14, scope: !6035)
!6257 = !DILocation(line: 270, column: 20, scope: !6035)
!6258 = !DILocation(line: 270, column: 2, scope: !6035)
!6259 = !DILocation(line: 271, column: 10, scope: !6035)
!6260 = !DILocation(line: 271, column: 8, scope: !6035)
!6261 = !DILocation(line: 273, column: 10, scope: !6035)
!6262 = !DILocation(line: 273, column: 13, scope: !6035)
!6263 = !DILocation(line: 273, column: 26, scope: !6035)
!6264 = !DILocation(line: 273, column: 33, scope: !6035)
!6265 = !DILocation(line: 273, column: 38, scope: !6035)
!6266 = !DILocation(line: 273, column: 7, scope: !6035)
!6267 = !DILocation(line: 274, column: 7, scope: !6035)
!6268 = !DILocalVariable(name: "__UNIQUE_ID___x222", scope: !6269, file: !3, line: 275, type: !442)
!6269 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 275, column: 9)
!6270 = !DILocation(line: 275, column: 9, scope: !6269)
!6271 = !DILocalVariable(name: "__UNIQUE_ID___x220", scope: !6272, file: !3, line: 275, type: !442)
!6272 = distinct !DILexicalBlock(scope: !6269, file: !3, line: 275, column: 9)
!6273 = !DILocation(line: 275, column: 9, scope: !6272)
!6274 = !DILocalVariable(name: "__UNIQUE_ID___y221", scope: !6272, file: !3, line: 275, type: !7)
!6275 = !DILocalVariable(name: "__UNIQUE_ID___y223", scope: !6269, file: !3, line: 275, type: !7)
!6276 = !DILocation(line: 275, column: 7, scope: !6035)
!6277 = !DILocation(line: 277, column: 11, scope: !6035)
!6278 = !DILocation(line: 277, column: 18, scope: !6035)
!6279 = !DILocation(line: 277, column: 27, scope: !6035)
!6280 = !DILocation(line: 277, column: 33, scope: !6035)
!6281 = !DILocation(line: 277, column: 37, scope: !6035)
!6282 = !DILocation(line: 277, column: 24, scope: !6035)
!6283 = !DILocation(line: 277, column: 9, scope: !6035)
!6284 = !DILocation(line: 278, column: 13, scope: !6035)
!6285 = !DILocation(line: 278, column: 20, scope: !6035)
!6286 = !DILocation(line: 278, column: 26, scope: !6035)
!6287 = !DILocation(line: 278, column: 11, scope: !6035)
!6288 = !DILocation(line: 279, column: 13, scope: !6035)
!6289 = !DILocation(line: 279, column: 20, scope: !6035)
!6290 = !DILocation(line: 279, column: 25, scope: !6035)
!6291 = !DILocation(line: 279, column: 11, scope: !6035)
!6292 = !DILocation(line: 280, column: 6, scope: !6293)
!6293 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 280, column: 6)
!6294 = !DILocation(line: 280, column: 15, scope: !6293)
!6295 = !DILocation(line: 280, column: 6, scope: !6035)
!6296 = !DILocation(line: 281, column: 12, scope: !6293)
!6297 = !DILocation(line: 281, column: 3, scope: !6293)
!6298 = !DILocation(line: 283, column: 10, scope: !6035)
!6299 = !DILocation(line: 283, column: 17, scope: !6035)
!6300 = !DILocation(line: 283, column: 15, scope: !6035)
!6301 = !DILocation(line: 283, column: 24, scope: !6035)
!6302 = !DILocation(line: 283, column: 30, scope: !6035)
!6303 = !DILocation(line: 283, column: 28, scope: !6035)
!6304 = !DILocation(line: 283, column: 40, scope: !6035)
!6305 = !DILocation(line: 284, column: 30, scope: !6035)
!6306 = !DILocation(line: 284, column: 35, scope: !6035)
!6307 = !DILocation(line: 283, column: 9, scope: !6035)
!6308 = !DILocation(line: 283, column: 7, scope: !6035)
!6309 = !DILocation(line: 285, column: 6, scope: !6310)
!6310 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 285, column: 6)
!6311 = !DILocation(line: 285, column: 11, scope: !6310)
!6312 = !DILocation(line: 285, column: 6, scope: !6035)
!6313 = !DILocation(line: 286, column: 8, scope: !6310)
!6314 = !DILocation(line: 286, column: 3, scope: !6310)
!6315 = !DILocation(line: 287, column: 6, scope: !6316)
!6316 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 287, column: 6)
!6317 = !DILocation(line: 287, column: 11, scope: !6316)
!6318 = !DILocation(line: 287, column: 6, scope: !6035)
!6319 = !DILocation(line: 288, column: 8, scope: !6316)
!6320 = !DILocation(line: 288, column: 3, scope: !6316)
!6321 = !DILocation(line: 290, column: 15, scope: !6035)
!6322 = !DILocation(line: 290, column: 20, scope: !6035)
!6323 = !DILocation(line: 291, column: 5, scope: !6035)
!6324 = !DILocation(line: 291, column: 3, scope: !6035)
!6325 = !DILocation(line: 291, column: 15, scope: !6035)
!6326 = !DILocation(line: 291, column: 22, scope: !6035)
!6327 = !DILocation(line: 291, column: 20, scope: !6035)
!6328 = !DILocation(line: 291, column: 27, scope: !6035)
!6329 = !DILocation(line: 291, column: 32, scope: !6035)
!6330 = !DILocation(line: 290, column: 14, scope: !6035)
!6331 = !DILocation(line: 290, column: 12, scope: !6035)
!6332 = !DILocation(line: 293, column: 6, scope: !6333)
!6333 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 293, column: 6)
!6334 = !DILocation(line: 293, column: 18, scope: !6333)
!6335 = !DILocation(line: 293, column: 16, scope: !6333)
!6336 = !DILocation(line: 293, column: 6, scope: !6035)
!6337 = !DILocation(line: 294, column: 7, scope: !6338)
!6338 = distinct !DILexicalBlock(scope: !6333, file: !3, line: 293, column: 28)
!6339 = !DILocation(line: 295, column: 16, scope: !6338)
!6340 = !DILocation(line: 295, column: 21, scope: !6338)
!6341 = !DILocation(line: 296, column: 6, scope: !6338)
!6342 = !DILocation(line: 296, column: 4, scope: !6338)
!6343 = !DILocation(line: 296, column: 16, scope: !6338)
!6344 = !DILocation(line: 296, column: 23, scope: !6338)
!6345 = !DILocation(line: 296, column: 21, scope: !6338)
!6346 = !DILocation(line: 296, column: 28, scope: !6338)
!6347 = !DILocation(line: 296, column: 33, scope: !6338)
!6348 = !DILocation(line: 295, column: 15, scope: !6338)
!6349 = !DILocation(line: 295, column: 13, scope: !6338)
!6350 = !DILocation(line: 297, column: 2, scope: !6338)
!6351 = !DILocation(line: 299, column: 6, scope: !6352)
!6352 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 299, column: 6)
!6353 = !DILocation(line: 299, column: 18, scope: !6352)
!6354 = !DILocation(line: 299, column: 16, scope: !6352)
!6355 = !DILocation(line: 299, column: 6, scope: !6035)
!6356 = !DILocation(line: 300, column: 15, scope: !6352)
!6357 = !DILocation(line: 300, column: 13, scope: !6352)
!6358 = !DILocation(line: 300, column: 3, scope: !6352)
!6359 = !DILocation(line: 302, column: 21, scope: !6035)
!6360 = !DILocation(line: 302, column: 27, scope: !6035)
!6361 = !DILocation(line: 302, column: 41, scope: !6035)
!6362 = !DILocation(line: 302, column: 8, scope: !6035)
!6363 = !DILocation(line: 302, column: 6, scope: !6035)
!6364 = !DILocation(line: 303, column: 22, scope: !6035)
!6365 = !DILocation(line: 303, column: 28, scope: !6035)
!6366 = !DILocation(line: 303, column: 42, scope: !6035)
!6367 = !DILocation(line: 303, column: 9, scope: !6035)
!6368 = !DILocation(line: 303, column: 6, scope: !6035)
!6369 = !DILocation(line: 305, column: 32, scope: !6035)
!6370 = !DILocation(line: 305, column: 9, scope: !6035)
!6371 = !DILocation(line: 305, column: 6, scope: !6035)
!6372 = !DILocation(line: 307, column: 32, scope: !6035)
!6373 = !DILocation(line: 307, column: 9, scope: !6035)
!6374 = !DILocation(line: 307, column: 6, scope: !6035)
!6375 = !DILocation(line: 309, column: 2, scope: !6035)
!6376 = !DILocation(line: 311, column: 10, scope: !6035)
!6377 = !DILocation(line: 311, column: 14, scope: !6035)
!6378 = !DILocation(line: 311, column: 9, scope: !6035)
!6379 = !DILocation(line: 311, column: 2, scope: !6035)
!6380 = !DILocation(line: 312, column: 1, scope: !6035)
!6381 = distinct !DISubprogram(name: "ts2020_get_frequency", scope: !3, file: !3, line: 314, type: !4333, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!6382 = !DILocalVariable(name: "fe", arg: 1, scope: !6381, file: !3, line: 314, type: !4192)
!6383 = !DILocation(line: 314, column: 54, scope: !6381)
!6384 = !DILocalVariable(name: "frequency", arg: 2, scope: !6381, file: !3, line: 314, type: !2828)
!6385 = !DILocation(line: 314, column: 63, scope: !6381)
!6386 = !DILocalVariable(name: "priv", scope: !6381, file: !3, line: 316, type: !376)
!6387 = !DILocation(line: 316, column: 22, scope: !6381)
!6388 = !DILocation(line: 316, column: 29, scope: !6381)
!6389 = !DILocation(line: 316, column: 33, scope: !6381)
!6390 = !DILocation(line: 318, column: 15, scope: !6381)
!6391 = !DILocation(line: 318, column: 21, scope: !6381)
!6392 = !DILocation(line: 318, column: 3, scope: !6381)
!6393 = !DILocation(line: 318, column: 13, scope: !6381)
!6394 = !DILocation(line: 319, column: 2, scope: !6381)
!6395 = distinct !DISubprogram(name: "ts2020_get_if_frequency", scope: !3, file: !3, line: 322, type: !4333, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!6396 = !DILocalVariable(name: "fe", arg: 1, scope: !6395, file: !3, line: 322, type: !4192)
!6397 = !DILocation(line: 322, column: 57, scope: !6395)
!6398 = !DILocalVariable(name: "frequency", arg: 2, scope: !6395, file: !3, line: 322, type: !2828)
!6399 = !DILocation(line: 322, column: 66, scope: !6395)
!6400 = !DILocation(line: 324, column: 3, scope: !6395)
!6401 = !DILocation(line: 324, column: 13, scope: !6395)
!6402 = !DILocation(line: 325, column: 2, scope: !6395)
!6403 = distinct !DISubprogram(name: "ts2020_read_signal_strength", scope: !3, file: !3, line: 453, type: !4337, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!6404 = !DILocalVariable(name: "fe", arg: 1, scope: !6403, file: !3, line: 453, type: !4192)
!6405 = !DILocation(line: 453, column: 61, scope: !6403)
!6406 = !DILocalVariable(name: "_signal_strength", arg: 2, scope: !6403, file: !3, line: 454, type: !4339)
!6407 = !DILocation(line: 454, column: 17, scope: !6403)
!6408 = !DILocalVariable(name: "c", scope: !6403, file: !3, line: 456, type: !4254)
!6409 = !DILocation(line: 456, column: 34, scope: !6403)
!6410 = !DILocation(line: 456, column: 39, scope: !6403)
!6411 = !DILocation(line: 456, column: 43, scope: !6403)
!6412 = !DILocalVariable(name: "priv", scope: !6403, file: !3, line: 457, type: !376)
!6413 = !DILocation(line: 457, column: 22, scope: !6403)
!6414 = !DILocation(line: 457, column: 29, scope: !6403)
!6415 = !DILocation(line: 457, column: 33, scope: !6403)
!6416 = !DILocalVariable(name: "strength", scope: !6403, file: !3, line: 458, type: !7)
!6417 = !DILocation(line: 458, column: 11, scope: !6403)
!6418 = !DILocalVariable(name: "gain", scope: !6403, file: !3, line: 459, type: !566)
!6419 = !DILocation(line: 459, column: 8, scope: !6403)
!6420 = !DILocation(line: 461, column: 6, scope: !6421)
!6421 = distinct !DILexicalBlock(scope: !6403, file: !3, line: 461, column: 6)
!6422 = !DILocation(line: 461, column: 12, scope: !6421)
!6423 = !DILocation(line: 461, column: 6, scope: !6403)
!6424 = !DILocation(line: 462, column: 21, scope: !6421)
!6425 = !DILocation(line: 462, column: 27, scope: !6421)
!6426 = !DILocation(line: 462, column: 37, scope: !6421)
!6427 = !DILocation(line: 462, column: 3, scope: !6421)
!6428 = !DILocation(line: 464, column: 6, scope: !6429)
!6429 = distinct !DILexicalBlock(scope: !6403, file: !3, line: 464, column: 6)
!6430 = !DILocation(line: 464, column: 9, scope: !6429)
!6431 = !DILocation(line: 464, column: 18, scope: !6429)
!6432 = !DILocation(line: 464, column: 26, scope: !6429)
!6433 = !DILocation(line: 464, column: 32, scope: !6429)
!6434 = !DILocation(line: 464, column: 6, scope: !6403)
!6435 = !DILocation(line: 465, column: 4, scope: !6436)
!6436 = distinct !DILexicalBlock(scope: !6429, file: !3, line: 464, column: 59)
!6437 = !DILocation(line: 465, column: 21, scope: !6436)
!6438 = !DILocation(line: 466, column: 3, scope: !6436)
!6439 = !DILocation(line: 469, column: 9, scope: !6403)
!6440 = !DILocation(line: 469, column: 12, scope: !6403)
!6441 = !DILocation(line: 469, column: 21, scope: !6403)
!6442 = !DILocation(line: 469, column: 29, scope: !6403)
!6443 = !DILocation(line: 469, column: 7, scope: !6403)
!6444 = !DILocation(line: 472, column: 6, scope: !6445)
!6445 = distinct !DILexicalBlock(scope: !6403, file: !3, line: 472, column: 6)
!6446 = !DILocation(line: 472, column: 11, scope: !6445)
!6447 = !DILocation(line: 472, column: 6, scope: !6403)
!6448 = !DILocation(line: 474, column: 12, scope: !6445)
!6449 = !DILocation(line: 474, column: 3, scope: !6445)
!6450 = !DILocation(line: 475, column: 11, scope: !6451)
!6451 = distinct !DILexicalBlock(scope: !6445, file: !3, line: 475, column: 11)
!6452 = !DILocation(line: 475, column: 16, scope: !6451)
!6453 = !DILocation(line: 475, column: 11, scope: !6445)
!6454 = !DILocation(line: 477, column: 37, scope: !6451)
!6455 = !DILocation(line: 477, column: 35, scope: !6451)
!6456 = !DILocation(line: 477, column: 43, scope: !6451)
!6457 = !DILocation(line: 477, column: 18, scope: !6451)
!6458 = !DILocation(line: 477, column: 16, scope: !6451)
!6459 = !DILocation(line: 477, column: 14, scope: !6451)
!6460 = !DILocation(line: 477, column: 12, scope: !6451)
!6461 = !DILocation(line: 477, column: 3, scope: !6451)
!6462 = !DILocation(line: 478, column: 11, scope: !6463)
!6463 = distinct !DILexicalBlock(scope: !6451, file: !3, line: 478, column: 11)
!6464 = !DILocation(line: 478, column: 16, scope: !6463)
!6465 = !DILocation(line: 478, column: 11, scope: !6451)
!6466 = !DILocation(line: 480, column: 38, scope: !6463)
!6467 = !DILocation(line: 480, column: 36, scope: !6463)
!6468 = !DILocation(line: 480, column: 44, scope: !6463)
!6469 = !DILocation(line: 480, column: 19, scope: !6463)
!6470 = !DILocation(line: 480, column: 17, scope: !6463)
!6471 = !DILocation(line: 480, column: 14, scope: !6463)
!6472 = !DILocation(line: 480, column: 12, scope: !6463)
!6473 = !DILocation(line: 480, column: 3, scope: !6463)
!6474 = !DILocation(line: 483, column: 38, scope: !6463)
!6475 = !DILocation(line: 483, column: 36, scope: !6463)
!6476 = !DILocation(line: 483, column: 19, scope: !6463)
!6477 = !DILocation(line: 483, column: 17, scope: !6463)
!6478 = !DILocation(line: 483, column: 14, scope: !6463)
!6479 = !DILocation(line: 483, column: 12, scope: !6463)
!6480 = !DILocation(line: 485, column: 22, scope: !6403)
!6481 = !DILocation(line: 485, column: 31, scope: !6403)
!6482 = !DILocation(line: 485, column: 39, scope: !6403)
!6483 = !DILocation(line: 485, column: 3, scope: !6403)
!6484 = !DILocation(line: 485, column: 20, scope: !6403)
!6485 = !DILocation(line: 486, column: 2, scope: !6403)
!6486 = !DILocation(line: 487, column: 1, scope: !6403)
!6487 = distinct !DISubprogram(name: "ts2020_tuner_gate_ctrl", scope: !3, file: !3, line: 152, type: !6488, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!6488 = !DISubroutineType(types: !6489)
!6489 = !{!406, !4192, !427}
!6490 = !DILocalVariable(name: "fe", arg: 1, scope: !6487, file: !3, line: 152, type: !4192)
!6491 = !DILocation(line: 152, column: 56, scope: !6487)
!6492 = !DILocalVariable(name: "offset", arg: 2, scope: !6487, file: !3, line: 152, type: !427)
!6493 = !DILocation(line: 152, column: 63, scope: !6487)
!6494 = !DILocalVariable(name: "priv", scope: !6487, file: !3, line: 154, type: !376)
!6495 = !DILocation(line: 154, column: 22, scope: !6487)
!6496 = !DILocation(line: 154, column: 29, scope: !6487)
!6497 = !DILocation(line: 154, column: 33, scope: !6487)
!6498 = !DILocalVariable(name: "ret", scope: !6487, file: !3, line: 155, type: !406)
!6499 = !DILocation(line: 155, column: 6, scope: !6487)
!6500 = !DILocation(line: 156, column: 21, scope: !6487)
!6501 = !DILocation(line: 156, column: 27, scope: !6487)
!6502 = !DILocation(line: 156, column: 48, scope: !6487)
!6503 = !DILocation(line: 156, column: 46, scope: !6487)
!6504 = !DILocation(line: 156, column: 8, scope: !6487)
!6505 = !DILocation(line: 156, column: 6, scope: !6487)
!6506 = !DILocation(line: 157, column: 22, scope: !6487)
!6507 = !DILocation(line: 157, column: 28, scope: !6487)
!6508 = !DILocation(line: 157, column: 9, scope: !6487)
!6509 = !DILocation(line: 157, column: 6, scope: !6487)
!6510 = !DILocation(line: 158, column: 22, scope: !6487)
!6511 = !DILocation(line: 158, column: 28, scope: !6487)
!6512 = !DILocation(line: 158, column: 42, scope: !6487)
!6513 = !DILocation(line: 158, column: 9, scope: !6487)
!6514 = !DILocation(line: 158, column: 6, scope: !6487)
!6515 = !DILocation(line: 159, column: 22, scope: !6487)
!6516 = !DILocation(line: 159, column: 28, scope: !6487)
!6517 = !DILocation(line: 159, column: 9, scope: !6487)
!6518 = !DILocation(line: 159, column: 6, scope: !6487)
!6519 = !DILocation(line: 160, column: 2, scope: !6487)
!6520 = !DILocation(line: 161, column: 9, scope: !6487)
!6521 = !DILocation(line: 161, column: 2, scope: !6487)
!6522 = distinct !DISubprogram(name: "ts2020_set_tuner_rf", scope: !3, file: !3, line: 164, type: !4221, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!6523 = !DILocalVariable(name: "fe", arg: 1, scope: !6522, file: !3, line: 164, type: !4192)
!6524 = !DILocation(line: 164, column: 53, scope: !6522)
!6525 = !DILocalVariable(name: "dev", scope: !6522, file: !3, line: 166, type: !376)
!6526 = !DILocation(line: 166, column: 22, scope: !6522)
!6527 = !DILocation(line: 166, column: 28, scope: !6522)
!6528 = !DILocation(line: 166, column: 32, scope: !6522)
!6529 = !DILocalVariable(name: "ret", scope: !6522, file: !3, line: 167, type: !406)
!6530 = !DILocation(line: 167, column: 6, scope: !6522)
!6531 = !DILocalVariable(name: "utmp", scope: !6522, file: !3, line: 168, type: !7)
!6532 = !DILocation(line: 168, column: 15, scope: !6522)
!6533 = !DILocation(line: 170, column: 20, scope: !6522)
!6534 = !DILocation(line: 170, column: 25, scope: !6522)
!6535 = !DILocation(line: 170, column: 8, scope: !6522)
!6536 = !DILocation(line: 170, column: 6, scope: !6522)
!6537 = !DILocation(line: 171, column: 6, scope: !6538)
!6538 = distinct !DILexicalBlock(scope: !6522, file: !3, line: 171, column: 6)
!6539 = !DILocation(line: 171, column: 6, scope: !6522)
!6540 = !DILocation(line: 172, column: 10, scope: !6538)
!6541 = !DILocation(line: 172, column: 3, scope: !6538)
!6542 = !DILocation(line: 174, column: 7, scope: !6522)
!6543 = !DILocation(line: 175, column: 6, scope: !6544)
!6544 = distinct !DILexicalBlock(scope: !6522, file: !3, line: 175, column: 6)
!6545 = !DILocation(line: 175, column: 11, scope: !6544)
!6546 = !DILocation(line: 175, column: 6, scope: !6522)
!6547 = !DILocation(line: 176, column: 8, scope: !6544)
!6548 = !DILocation(line: 176, column: 3, scope: !6544)
!6549 = !DILocation(line: 177, column: 11, scope: !6550)
!6550 = distinct !DILexicalBlock(scope: !6544, file: !3, line: 177, column: 11)
!6551 = !DILocation(line: 177, column: 16, scope: !6550)
!6552 = !DILocation(line: 177, column: 11, scope: !6544)
!6553 = !DILocation(line: 178, column: 8, scope: !6550)
!6554 = !DILocation(line: 178, column: 3, scope: !6550)
!6555 = !DILocation(line: 180, column: 8, scope: !6550)
!6556 = !DILocation(line: 182, column: 15, scope: !6522)
!6557 = !DILocation(line: 182, column: 20, scope: !6522)
!6558 = !DILocation(line: 182, column: 34, scope: !6522)
!6559 = !DILocation(line: 182, column: 2, scope: !6522)
!6560 = !DILocation(line: 183, column: 31, scope: !6522)
!6561 = !DILocation(line: 183, column: 8, scope: !6522)
!6562 = !DILocation(line: 183, column: 6, scope: !6522)
!6563 = !DILocation(line: 185, column: 9, scope: !6522)
!6564 = !DILocation(line: 185, column: 2, scope: !6522)
!6565 = !DILocation(line: 186, column: 1, scope: !6522)
!6566 = distinct !DISubprogram(name: "div64_s64", scope: !6567, file: !6567, line: 78, type: !6568, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!6567 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/lizy2001/genbc/linux")
!6568 = !DISubroutineType(types: !6569)
!6569 = !{!565, !565, !565}
!6570 = !DILocalVariable(name: "dividend", arg: 1, scope: !6566, file: !6567, line: 78, type: !565)
!6571 = !DILocation(line: 78, column: 33, scope: !6566)
!6572 = !DILocalVariable(name: "divisor", arg: 2, scope: !6566, file: !6567, line: 78, type: !565)
!6573 = !DILocation(line: 78, column: 47, scope: !6566)
!6574 = !DILocation(line: 80, column: 9, scope: !6566)
!6575 = !DILocation(line: 80, column: 20, scope: !6566)
!6576 = !DILocation(line: 80, column: 18, scope: !6566)
!6577 = !DILocation(line: 80, column: 2, scope: !6566)
!6578 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !237, file: !237, line: 660, type: !6579, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!6579 = !DISubroutineType(types: !6580)
!6580 = !{null, !3494, !363}
!6581 = !DILocalVariable(name: "dev", arg: 1, scope: !6578, file: !237, line: 660, type: !3494)
!6582 = !DILocation(line: 660, column: 51, scope: !6578)
!6583 = !DILocalVariable(name: "data", arg: 2, scope: !6578, file: !237, line: 660, type: !363)
!6584 = !DILocation(line: 660, column: 62, scope: !6578)
!6585 = !DILocation(line: 662, column: 21, scope: !6578)
!6586 = !DILocation(line: 662, column: 2, scope: !6578)
!6587 = !DILocation(line: 662, column: 7, scope: !6578)
!6588 = !DILocation(line: 662, column: 19, scope: !6578)
!6589 = !DILocation(line: 663, column: 1, scope: !6578)
!6590 = distinct !DISubprogram(name: "i2c_get_clientdata", scope: !298, file: !298, line: 351, type: !6591, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!6591 = !DISubroutineType(types: !6592)
!6592 = !{!363, !6593}
!6593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6594, size: 64)
!6594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!6595 = !DILocalVariable(name: "client", arg: 1, scope: !6590, file: !298, line: 351, type: !6593)
!6596 = !DILocation(line: 351, column: 65, scope: !6590)
!6597 = !DILocation(line: 353, column: 26, scope: !6590)
!6598 = !DILocation(line: 353, column: 34, scope: !6590)
!6599 = !DILocation(line: 353, column: 9, scope: !6590)
!6600 = !DILocation(line: 353, column: 2, scope: !6590)
!6601 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !237, file: !237, line: 655, type: !6602, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !472)
!6602 = !DISubroutineType(types: !6603)
!6603 = !{!363, !3824}
!6604 = !DILocalVariable(name: "dev", arg: 1, scope: !6601, file: !237, line: 655, type: !3824)
!6605 = !DILocation(line: 655, column: 58, scope: !6601)
!6606 = !DILocation(line: 657, column: 9, scope: !6601)
!6607 = !DILocation(line: 657, column: 14, scope: !6601)
!6608 = !DILocation(line: 657, column: 2, scope: !6601)
