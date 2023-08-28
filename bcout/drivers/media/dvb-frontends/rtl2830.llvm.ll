; ModuleID = '../bcout/drivers/media/dvb-frontends/rtl2830.llvm.bc'
source_filename = "drivers/media/dvb-frontends/rtl2830.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_rtl2830_driver_init6:\09\09\09"
module asm ".long\09rtl2830_driver_init - .\09\09\09"
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
%struct.regmap_bus = type { i8, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64, i8*, i64)*, i32 (i8*, i8*, i64, i8*, i64, %struct.regmap_async*)*, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32, i32)*, i32 (i8*, i8*, i64, i8*, i64)*, i32 (i8*, i32, i32*)*, void (i8*)*, %struct.regmap_async* ()*, i8, i32, i32, i64, i64 }
%struct.regmap_async = type opaque
%struct.regmap_range_cfg = type { i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.regmap_config = type { i8*, i32, i32, i32, i32, i1 (%struct.device*, i32)*, i1 (%struct.device*, i32)*, i1 (%struct.device*, i32)*, i1 (%struct.device*, i32)*, i1 (%struct.device*, i32)*, i1 (%struct.device*, i32)*, i8, void (i8*)*, void (i8*)*, i8*, i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32)*, i8, i32, %struct.regmap_access_table*, %struct.regmap_access_table*, %struct.regmap_access_table*, %struct.regmap_access_table*, %struct.regmap_access_table*, %struct.regmap_access_table*, %struct.reg_default*, i32, i32, i8*, i32, i64, i64, i8, i8, i8, i8, i32, i32, %struct.regmap_range_cfg*, i32, i8, i32, i32, i8 }
%struct.regmap_access_table = type { %struct.regmap_range*, i32, %struct.regmap_range*, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.reg_default = type { i32, i32 }
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
%struct.rtl2830_platform_data = type { i32, i8, i8, i8, i8, %struct.dvb_frontend* (%struct.i2c_client*)*, %struct.i2c_adapter* (%struct.i2c_client*)*, i32 (%struct.dvb_frontend*, i8, i16, i32)*, i32 (%struct.dvb_frontend*, i32)* }
%struct.rtl2830_dev = type { %struct.rtl2830_platform_data*, %struct.i2c_client*, %struct.regmap*, %struct.i2c_mux_core*, %struct.dvb_frontend, i8, i64, i32, i64, i64, i64 }
%struct.regmap = type opaque
%struct.i2c_mux_core = type { %struct.i2c_adapter*, %struct.device*, i8, i8*, i32 (%struct.i2c_mux_core*, i32)*, i32 (%struct.i2c_mux_core*, i32)*, i32, i32, [0 x %struct.i2c_adapter*] }
%struct.rtl2830_reg_val_mask = type { i16, i8, i8 }

@__UNIQUE_ID___addressable_rtl2830_driver_init224 = internal global i8* bitcast (i32 ()* @rtl2830_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@rtl2830_driver = internal global %struct.i2c_driver { i32 0, i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @rtl2830_probe, i32 (%struct.i2c_client*)* @rtl2830_remove, i32 (%struct.i2c_client*)* null, void (%struct.i2c_client*)* null, void (%struct.i2c_client*, i32, i32)* null, i32 (%struct.i2c_client*, i32, i8*)* null, %struct.device_driver { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 1, i32 0, %struct.of_device_id* null, %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* null, void (%struct.device*)* null, %struct.driver_private* null }, %struct.i2c_device_id* getelementptr inbounds ([2 x %struct.i2c_device_id], [2 x %struct.i2c_device_id]* @rtl2830_id_table, i32 0, i32 0), i32 (%struct.i2c_client*, %struct.i2c_board_info*)* null, i16* null, %struct.list_head zeroinitializer }, align 8, !dbg !381
@__exitcall_rtl2830_driver_exit = internal global void ()* @rtl2830_driver_exit, section ".exitcall.exit", align 8, !dbg !353
@__UNIQUE_ID_author225 = internal constant [46 x i8] c"rtl2830.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1, !dbg !360
@__UNIQUE_ID_description226 = internal constant [61 x i8] c"rtl2830.description=Realtek RTL2830 DVB-T demodulator driver\00", section ".modinfo", align 1, !dbg !366
@__UNIQUE_ID_file227 = internal constant [49 x i8] c"rtl2830.file=drivers/media/dvb-frontends/rtl2830\00", section ".modinfo", align 1, !dbg !371
@__UNIQUE_ID_license228 = internal constant [20 x i8] c"rtl2830.license=GPL\00", section ".modinfo", align 1, !dbg !376
@.str = private unnamed_addr constant [8 x i8] c"rtl2830\00", align 1
@rtl2830_id_table = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rtl2830\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0 }, %struct.i2c_device_id zeroinitializer], align 16, !dbg !4664
@rtl2830_probe.regmap_bus = internal constant %struct.regmap_bus { i8 0, i32 (i8*, i8*, i64)* @rtl2830_regmap_write, i32 (i8*, i8*, i64, i8*, i64)* @rtl2830_regmap_gather_write, i32 (i8*, i8*, i64, i8*, i64, %struct.regmap_async*)* null, i32 (i8*, i32, i32)* null, i32 (i8*, i32, i32, i32)* null, i32 (i8*, i8*, i64, i8*, i64)* @rtl2830_regmap_read, i32 (i8*, i32, i32*)* null, void (i8*)* null, %struct.regmap_async* ()* null, i8 0, i32 0, i32 3, i64 0, i64 0 }, align 8, !dbg !4186
@rtl2830_probe.regmap_range_cfg = internal constant [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { i8* null, i32 0, i32 1280, i32 0, i32 255, i32 0, i32 0, i32 256 }], align 16, !dbg !4242
@rtl2830_probe.regmap_config = internal constant %struct.regmap_config { i8* null, i32 8, i32 0, i32 0, i32 8, i1 (%struct.device*, i32)* null, i1 (%struct.device*, i32)* null, i1 (%struct.device*, i32)* null, i1 (%struct.device*, i32)* null, i1 (%struct.device*, i32)* null, i1 (%struct.device*, i32)* null, i8 0, void (i8*)* null, void (i8*)* null, i8* null, i32 (i8*, i32, i32*)* null, i32 (i8*, i32, i32)* null, i8 0, i32 1280, %struct.regmap_access_table* null, %struct.regmap_access_table* null, %struct.regmap_access_table* null, %struct.regmap_access_table* null, %struct.regmap_access_table* null, %struct.regmap_access_table* null, %struct.reg_default* null, i32 0, i32 0, i8* null, i32 0, i64 0, i64 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, %struct.regmap_range_cfg* getelementptr inbounds ([1 x %struct.regmap_range_cfg], [1 x %struct.regmap_range_cfg]* @rtl2830_probe.regmap_range_cfg, i32 0, i32 0), i32 1, i8 0, i32 0, i32 0, i8 0 }, align 8, !dbg !4256
@rtl2830_ops = internal constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Realtek RTL2830 (DVB-T)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1071960402 }, [8 x i8] c"\03\00\00\00\00\00\00\00", void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @rtl2830_init, i32 (%struct.dvb_frontend*)* @rtl2830_sleep, i32 (%struct.dvb_frontend*, i8*, i32)* null, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @rtl2830_set_frontend, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* @rtl2830_get_tune_settings, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @rtl2830_get_frontend, i32 (%struct.dvb_frontend*, i32*)* @rtl2830_read_status, i32 (%struct.dvb_frontend*, i32*)* @rtl2830_read_ber, i32 (%struct.dvb_frontend*, i16*)* @rtl2830_read_signal_strength, i32 (%struct.dvb_frontend*, i16*)* @rtl2830_read_snr, i32 (%struct.dvb_frontend*, i32*)* @rtl2830_read_ucblocks, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 8, !dbg !4331
@.str.1 = private unnamed_addr constant [39 x i8] c"Realtek RTL2830 successfully attached\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"i2c reg write failed %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"i2c reg read failed %d\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"(\00\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"\04\06\0A\12\0A\12\1E(\00", align 1
@rtl2830_set_frontend.bw_params1 = internal constant [3 x [34 x i8]] [[34 x i8] c"\1F\F0\1F\F0\1F\FA\00\17\00A\00d\00g\008\1F\DE\1Fz\1FG\1F|\000\01K\02\82\03s\03\CF", [34 x i8] c"\1F\FA\1F\DA\1F\C1\1F\B3\1F\CA\00\07\00M\00m\00@\1F\CA\1FM\1F*\1F\B2\00\EC\02~\03\D0\04S", [34 x i8] c"\00\10\00\0E\1F\F7\1F\C9\1F\A0\1F\A6\1F\EC\00N\00}\00:\1F\98\1F\10\1F@\00u\02_\04$\04\DB"], align 16, !dbg !4650
@rtl2830_set_frontend.bw_params2 = internal constant [3 x [6 x i8]] [[6 x i8] c"\C3\0CD330", [6 x i8] c"\B8\E3\93\99\99\98", [6 x i8] c"\AE\BA\F3&fd"], align 16, !dbg !4655
@.str.7 = private unnamed_addr constant [25 x i8] c"invalid bandwidth_hz %u\0A\00", align 1
@rtl2830_read_status.constant = internal constant [3 x [4 x i32]] [[4 x i32] [i32 70705899, i32 70705899, i32 70705899, i32 70705899], [4 x i32] [i32 82433173, i32 82433173, i32 87483115, i32 94445660], [4 x i32] [i32 92888734, i32 92888734, i32 95487525, i32 99770748]], align 16, !dbg !4659
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_rtl2830_driver_init224 to i8*), i8* bitcast (void ()* @rtl2830_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_rtl2830_driver_exit to i8*), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__UNIQUE_ID_author225, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__UNIQUE_ID_description226, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_file227, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license228, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @rtl2830_driver_init() #0 section ".init.text" !dbg !4672 {
entry:
  %call = call i32 @i2c_register_driver(%struct.module* null, %struct.i2c_driver* @rtl2830_driver) #9, !dbg !4675
  ret i32 %call, !dbg !4675
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @rtl2830_driver_exit() #0 section ".exit.text" !dbg !4676 {
entry:
  call void @i2c_del_driver(%struct.i2c_driver* @rtl2830_driver) #9, !dbg !4677
  ret void, !dbg !4677
}

; Function Attrs: noredzone
declare dso_local void @i2c_del_driver(%struct.i2c_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @i2c_register_driver(%struct.module*, %struct.i2c_driver*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtl2830_probe(%struct.i2c_client* %client, %struct.i2c_device_id* %id) #2 !dbg !4188 {
entry:
  %retval = alloca i32, align 4
  %client.addr = alloca %struct.i2c_client*, align 8
  %id.addr = alloca %struct.i2c_device_id*, align 8
  %pdata = alloca %struct.rtl2830_platform_data*, align 8
  %dev1 = alloca %struct.rtl2830_dev*, align 8
  %ret = alloca i32, align 4
  %u8tmp = alloca i8, align 1
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !4678, metadata !DIExpression()), !dbg !4679
  store %struct.i2c_device_id* %id, %struct.i2c_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_device_id** %id.addr, metadata !4680, metadata !DIExpression()), !dbg !4681
  call void @llvm.dbg.declare(metadata %struct.rtl2830_platform_data** %pdata, metadata !4682, metadata !DIExpression()), !dbg !4705
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4706
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %0, i32 0, i32 4, !dbg !4707
  %platform_data = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 7, !dbg !4708
  %1 = load i8*, i8** %platform_data, align 8, !dbg !4708
  %2 = bitcast i8* %1 to %struct.rtl2830_platform_data*, !dbg !4706
  store %struct.rtl2830_platform_data* %2, %struct.rtl2830_platform_data** %pdata, align 8, !dbg !4705
  call void @llvm.dbg.declare(metadata %struct.rtl2830_dev** %dev1, metadata !4709, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4747, metadata !DIExpression()), !dbg !4748
  call void @llvm.dbg.declare(metadata i8* %u8tmp, metadata !4749, metadata !DIExpression()), !dbg !4750
  %3 = load %struct.rtl2830_platform_data*, %struct.rtl2830_platform_data** %pdata, align 8, !dbg !4751
  %cmp = icmp eq %struct.rtl2830_platform_data* %3, null, !dbg !4753
  br i1 %cmp, label %if.then, label %if.end, !dbg !4754

if.then:                                          ; preds = %entry
  store i32 -22, i32* %ret, align 4, !dbg !4755
  br label %err, !dbg !4757

if.end:                                           ; preds = %entry
  %call = call i8* @kzalloc(i64 1360, i32 3264) #9, !dbg !4758
  %4 = bitcast i8* %call to %struct.rtl2830_dev*, !dbg !4758
  store %struct.rtl2830_dev* %4, %struct.rtl2830_dev** %dev1, align 8, !dbg !4759
  %5 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev1, align 8, !dbg !4760
  %cmp2 = icmp eq %struct.rtl2830_dev* %5, null, !dbg !4762
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !4763

if.then3:                                         ; preds = %if.end
  store i32 -12, i32* %ret, align 4, !dbg !4764
  br label %err, !dbg !4766

if.end4:                                          ; preds = %if.end
  %6 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4767
  %7 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev1, align 8, !dbg !4768
  %8 = bitcast %struct.rtl2830_dev* %7 to i8*, !dbg !4768
  call void @i2c_set_clientdata(%struct.i2c_client* %6, i8* %8) #9, !dbg !4769
  %9 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4770
  %10 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev1, align 8, !dbg !4771
  %client5 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %10, i32 0, i32 1, !dbg !4772
  store %struct.i2c_client* %9, %struct.i2c_client** %client5, align 8, !dbg !4773
  %11 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4774
  %dev6 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 4, !dbg !4775
  %platform_data7 = getelementptr inbounds %struct.device, %struct.device* %dev6, i32 0, i32 7, !dbg !4776
  %12 = load i8*, i8** %platform_data7, align 8, !dbg !4776
  %13 = bitcast i8* %12 to %struct.rtl2830_platform_data*, !dbg !4774
  %14 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev1, align 8, !dbg !4777
  %pdata8 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %14, i32 0, i32 0, !dbg !4778
  store %struct.rtl2830_platform_data* %13, %struct.rtl2830_platform_data** %pdata8, align 8, !dbg !4779
  %15 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev1, align 8, !dbg !4780
  %sleeping = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %15, i32 0, i32 5, !dbg !4781
  store i8 1, i8* %sleeping, align 8, !dbg !4782
  %16 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4783
  %dev9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 4, !dbg !4783
  %17 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4783
  %18 = bitcast %struct.i2c_client* %17 to i8*, !dbg !4783
  %call10 = call %struct.regmap* @__regmap_init(%struct.device* %dev9, %struct.regmap_bus* @rtl2830_probe.regmap_bus, i8* %18, %struct.regmap_config* @rtl2830_probe.regmap_config, %struct.lock_class_key* null, i8* null) #9, !dbg !4783
  %19 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev1, align 8, !dbg !4784
  %regmap = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %19, i32 0, i32 2, !dbg !4785
  store %struct.regmap* %call10, %struct.regmap** %regmap, align 8, !dbg !4786
  %20 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev1, align 8, !dbg !4787
  %regmap11 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %20, i32 0, i32 2, !dbg !4789
  %21 = load %struct.regmap*, %struct.regmap** %regmap11, align 8, !dbg !4789
  %22 = bitcast %struct.regmap* %21 to i8*, !dbg !4787
  %call12 = call zeroext i1 @IS_ERR(i8* %22) #9, !dbg !4790
  br i1 %call12, label %if.then13, label %if.end16, !dbg !4791

if.then13:                                        ; preds = %if.end4
  %23 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev1, align 8, !dbg !4792
  %regmap14 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %23, i32 0, i32 2, !dbg !4794
  %24 = load %struct.regmap*, %struct.regmap** %regmap14, align 8, !dbg !4794
  %25 = bitcast %struct.regmap* %24 to i8*, !dbg !4792
  %call15 = call i64 @PTR_ERR(i8* %25) #9, !dbg !4795
  %conv = trunc i64 %call15 to i32, !dbg !4795
  store i32 %conv, i32* %ret, align 4, !dbg !4796
  br label %err_kfree, !dbg !4797

if.end16:                                         ; preds = %if.end4
  %26 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4798
  %call17 = call i32 @rtl2830_bulk_read(%struct.i2c_client* %26, i32 0, i8* %u8tmp, i64 1) #9, !dbg !4799
  store i32 %call17, i32* %ret, align 4, !dbg !4800
  %27 = load i32, i32* %ret, align 4, !dbg !4801
  %tobool = icmp ne i32 %27, 0, !dbg !4801
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !4803

if.then18:                                        ; preds = %if.end16
  br label %err_regmap_exit, !dbg !4804

if.end19:                                         ; preds = %if.end16
  %28 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4805
  %adapter = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 3, !dbg !4806
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !4806
  %30 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4807
  %dev20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 4, !dbg !4808
  %call21 = call %struct.i2c_mux_core* @i2c_mux_alloc(%struct.i2c_adapter* %29, %struct.device* %dev20, i32 1, i32 0, i32 0, i32 (%struct.i2c_mux_core*, i32)* @rtl2830_select, i32 (%struct.i2c_mux_core*, i32)* null) #9, !dbg !4809
  %31 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev1, align 8, !dbg !4810
  %muxc = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %31, i32 0, i32 3, !dbg !4811
  store %struct.i2c_mux_core* %call21, %struct.i2c_mux_core** %muxc, align 8, !dbg !4812
  %32 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev1, align 8, !dbg !4813
  %muxc22 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %32, i32 0, i32 3, !dbg !4815
  %33 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc22, align 8, !dbg !4815
  %tobool23 = icmp ne %struct.i2c_mux_core* %33, null, !dbg !4813
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !4816

if.then24:                                        ; preds = %if.end19
  store i32 -12, i32* %ret, align 4, !dbg !4817
  br label %err_regmap_exit, !dbg !4819

if.end25:                                         ; preds = %if.end19
  %34 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4820
  %35 = bitcast %struct.i2c_client* %34 to i8*, !dbg !4820
  %36 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev1, align 8, !dbg !4821
  %muxc26 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %36, i32 0, i32 3, !dbg !4822
  %37 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc26, align 8, !dbg !4822
  %priv = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %37, i32 0, i32 3, !dbg !4823
  store i8* %35, i8** %priv, align 8, !dbg !4824
  %38 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev1, align 8, !dbg !4825
  %muxc27 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %38, i32 0, i32 3, !dbg !4826
  %39 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc27, align 8, !dbg !4826
  %call28 = call i32 @i2c_mux_add_adapter(%struct.i2c_mux_core* %39, i32 0, i32 0, i32 0) #9, !dbg !4827
  store i32 %call28, i32* %ret, align 4, !dbg !4828
  %40 = load i32, i32* %ret, align 4, !dbg !4829
  %tobool29 = icmp ne i32 %40, 0, !dbg !4829
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !4831

if.then30:                                        ; preds = %if.end25
  br label %err_regmap_exit, !dbg !4832

if.end31:                                         ; preds = %if.end25
  %41 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev1, align 8, !dbg !4833
  %fe = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %41, i32 0, i32 4, !dbg !4834
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %fe, i32 0, i32 1, !dbg !4835
  %42 = bitcast %struct.dvb_frontend_ops* %ops to i8*, !dbg !4836
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 getelementptr inbounds (%struct.dvb_frontend_ops, %struct.dvb_frontend_ops* @rtl2830_ops, i32 0, i32 0, i32 0, i32 0), i64 752, i1 false), !dbg !4836
  %43 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4837
  %44 = bitcast %struct.i2c_client* %43 to i8*, !dbg !4837
  %45 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev1, align 8, !dbg !4838
  %fe32 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %45, i32 0, i32 4, !dbg !4839
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %fe32, i32 0, i32 3, !dbg !4840
  store i8* %44, i8** %demodulator_priv, align 8, !dbg !4841
  %46 = load %struct.rtl2830_platform_data*, %struct.rtl2830_platform_data** %pdata, align 8, !dbg !4842
  %get_dvb_frontend = getelementptr inbounds %struct.rtl2830_platform_data, %struct.rtl2830_platform_data* %46, i32 0, i32 5, !dbg !4843
  store %struct.dvb_frontend* (%struct.i2c_client*)* @rtl2830_get_dvb_frontend, %struct.dvb_frontend* (%struct.i2c_client*)** %get_dvb_frontend, align 8, !dbg !4844
  %47 = load %struct.rtl2830_platform_data*, %struct.rtl2830_platform_data** %pdata, align 8, !dbg !4845
  %get_i2c_adapter = getelementptr inbounds %struct.rtl2830_platform_data, %struct.rtl2830_platform_data* %47, i32 0, i32 6, !dbg !4846
  store %struct.i2c_adapter* (%struct.i2c_client*)* @rtl2830_get_i2c_adapter, %struct.i2c_adapter* (%struct.i2c_client*)** %get_i2c_adapter, align 8, !dbg !4847
  %48 = load %struct.rtl2830_platform_data*, %struct.rtl2830_platform_data** %pdata, align 8, !dbg !4848
  %pid_filter = getelementptr inbounds %struct.rtl2830_platform_data, %struct.rtl2830_platform_data* %48, i32 0, i32 7, !dbg !4849
  store i32 (%struct.dvb_frontend*, i8, i16, i32)* @rtl2830_pid_filter, i32 (%struct.dvb_frontend*, i8, i16, i32)** %pid_filter, align 8, !dbg !4850
  %49 = load %struct.rtl2830_platform_data*, %struct.rtl2830_platform_data** %pdata, align 8, !dbg !4851
  %pid_filter_ctrl = getelementptr inbounds %struct.rtl2830_platform_data, %struct.rtl2830_platform_data* %49, i32 0, i32 8, !dbg !4852
  store i32 (%struct.dvb_frontend*, i32)* @rtl2830_pid_filter_ctrl, i32 (%struct.dvb_frontend*, i32)** %pid_filter_ctrl, align 8, !dbg !4853
  %50 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4854
  %dev33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 4, !dbg !4854
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0)) #10, !dbg !4854
  store i32 0, i32* %retval, align 4, !dbg !4855
  br label %return, !dbg !4855

err_regmap_exit:                                  ; preds = %if.then30, %if.then24, %if.then18
  call void @llvm.dbg.label(metadata !4856), !dbg !4857
  %51 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev1, align 8, !dbg !4858
  %regmap34 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %51, i32 0, i32 2, !dbg !4859
  %52 = load %struct.regmap*, %struct.regmap** %regmap34, align 8, !dbg !4859
  call void @regmap_exit(%struct.regmap* %52) #9, !dbg !4860
  br label %err_kfree, !dbg !4860

err_kfree:                                        ; preds = %err_regmap_exit, %if.then13
  call void @llvm.dbg.label(metadata !4861), !dbg !4862
  %53 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev1, align 8, !dbg !4863
  %54 = bitcast %struct.rtl2830_dev* %53 to i8*, !dbg !4863
  call void @kfree(i8* %54) #9, !dbg !4864
  br label %err, !dbg !4864

err:                                              ; preds = %err_kfree, %if.then3, %if.then
  call void @llvm.dbg.label(metadata !4865), !dbg !4866
  %55 = load i32, i32* %ret, align 4, !dbg !4867
  store i32 %55, i32* %retval, align 4, !dbg !4868
  br label %return, !dbg !4868

return:                                           ; preds = %err, %if.end31
  %56 = load i32, i32* %retval, align 4, !dbg !4869
  ret i32 %56, !dbg !4869
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtl2830_remove(%struct.i2c_client* %client) #2 !dbg !4870 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %dev = alloca %struct.rtl2830_dev*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !4871, metadata !DIExpression()), !dbg !4872
  call void @llvm.dbg.declare(metadata %struct.rtl2830_dev** %dev, metadata !4873, metadata !DIExpression()), !dbg !4874
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4875
  %call = call i8* @i2c_get_clientdata(%struct.i2c_client* %0) #9, !dbg !4876
  %1 = bitcast i8* %call to %struct.rtl2830_dev*, !dbg !4876
  store %struct.rtl2830_dev* %1, %struct.rtl2830_dev** %dev, align 8, !dbg !4874
  %2 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !4877
  %muxc = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %2, i32 0, i32 3, !dbg !4878
  %3 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !4878
  call void @i2c_mux_del_adapters(%struct.i2c_mux_core* %3) #9, !dbg !4879
  %4 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !4880
  %regmap = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %4, i32 0, i32 2, !dbg !4881
  %5 = load %struct.regmap*, %struct.regmap** %regmap, align 8, !dbg !4881
  call void @regmap_exit(%struct.regmap* %5) #9, !dbg !4882
  %6 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !4883
  %7 = bitcast %struct.rtl2830_dev* %6 to i8*, !dbg !4883
  call void @kfree(i8* %7) #9, !dbg !4884
  ret i32 0, !dbg !4885
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtl2830_regmap_write(i8* %context, i8* %data, i64 %count) #2 !dbg !4886 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %client = alloca %struct.i2c_client*, align 8
  %ret = alloca i32, align 4
  %msg = alloca [1 x %struct.i2c_msg], align 16
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !4887, metadata !DIExpression()), !dbg !4888
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4889, metadata !DIExpression()), !dbg !4890
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4891, metadata !DIExpression()), !dbg !4892
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !4893, metadata !DIExpression()), !dbg !4894
  %0 = load i8*, i8** %context.addr, align 8, !dbg !4895
  %1 = bitcast i8* %0 to %struct.i2c_client*, !dbg !4895
  store %struct.i2c_client* %1, %struct.i2c_client** %client, align 8, !dbg !4894
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4896, metadata !DIExpression()), !dbg !4897
  call void @llvm.dbg.declare(metadata [1 x %struct.i2c_msg]* %msg, metadata !4898, metadata !DIExpression()), !dbg !4900
  %arrayinit.begin = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4901
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 0, !dbg !4902
  %2 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !4903
  %addr1 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %2, i32 0, i32 1, !dbg !4904
  %3 = load i16, i16* %addr1, align 2, !dbg !4904
  store i16 %3, i16* %addr, align 16, !dbg !4902
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 1, !dbg !4902
  store i16 0, i16* %flags, align 2, !dbg !4902
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 2, !dbg !4902
  %4 = load i64, i64* %count.addr, align 8, !dbg !4905
  %conv = trunc i64 %4 to i16, !dbg !4905
  store i16 %conv, i16* %len, align 4, !dbg !4902
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 3, !dbg !4902
  %5 = load i8*, i8** %data.addr, align 8, !dbg !4906
  store i8* %5, i8** %buf, align 8, !dbg !4902
  %6 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !4907
  %adapter = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 3, !dbg !4908
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !4908
  %arraydecay = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4909
  %call = call i32 @__i2c_transfer(%struct.i2c_adapter* %7, %struct.i2c_msg* %arraydecay, i32 1) #9, !dbg !4910
  store i32 %call, i32* %ret, align 4, !dbg !4911
  %8 = load i32, i32* %ret, align 4, !dbg !4912
  %cmp = icmp ne i32 %8, 1, !dbg !4914
  br i1 %cmp, label %if.then, label %if.end6, !dbg !4915

if.then:                                          ; preds = %entry
  %9 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !4916
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 4, !dbg !4916
  %10 = load i32, i32* %ret, align 4, !dbg !4916
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %10) #10, !dbg !4916
  %11 = load i32, i32* %ret, align 4, !dbg !4918
  %cmp3 = icmp sge i32 %11, 0, !dbg !4920
  br i1 %cmp3, label %if.then5, label %if.end, !dbg !4921

if.then5:                                         ; preds = %if.then
  store i32 -121, i32* %ret, align 4, !dbg !4922
  br label %if.end, !dbg !4923

if.end:                                           ; preds = %if.then5, %if.then
  %12 = load i32, i32* %ret, align 4, !dbg !4924
  store i32 %12, i32* %retval, align 4, !dbg !4925
  br label %return, !dbg !4925

if.end6:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4926
  br label %return, !dbg !4926

return:                                           ; preds = %if.end6, %if.end
  %13 = load i32, i32* %retval, align 4, !dbg !4927
  ret i32 %13, !dbg !4927
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtl2830_regmap_gather_write(i8* %context, i8* %reg, i64 %reg_len, i8* %val, i64 %val_len) #2 !dbg !4928 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca i8*, align 8
  %reg.addr = alloca i8*, align 8
  %reg_len.addr = alloca i64, align 8
  %val.addr = alloca i8*, align 8
  %val_len.addr = alloca i64, align 8
  %client = alloca %struct.i2c_client*, align 8
  %ret = alloca i32, align 4
  %buf = alloca [256 x i8], align 16
  %msg = alloca [1 x %struct.i2c_msg], align 16
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !4929, metadata !DIExpression()), !dbg !4930
  store i8* %reg, i8** %reg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %reg.addr, metadata !4931, metadata !DIExpression()), !dbg !4932
  store i64 %reg_len, i64* %reg_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %reg_len.addr, metadata !4933, metadata !DIExpression()), !dbg !4934
  store i8* %val, i8** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %val.addr, metadata !4935, metadata !DIExpression()), !dbg !4936
  store i64 %val_len, i64* %val_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %val_len.addr, metadata !4937, metadata !DIExpression()), !dbg !4938
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !4939, metadata !DIExpression()), !dbg !4940
  %0 = load i8*, i8** %context.addr, align 8, !dbg !4941
  %1 = bitcast i8* %0 to %struct.i2c_client*, !dbg !4941
  store %struct.i2c_client* %1, %struct.i2c_client** %client, align 8, !dbg !4940
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4942, metadata !DIExpression()), !dbg !4943
  call void @llvm.dbg.declare(metadata [256 x i8]* %buf, metadata !4944, metadata !DIExpression()), !dbg !4948
  call void @llvm.dbg.declare(metadata [1 x %struct.i2c_msg]* %msg, metadata !4949, metadata !DIExpression()), !dbg !4950
  %arrayinit.begin = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4951
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 0, !dbg !4952
  %2 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !4953
  %addr1 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %2, i32 0, i32 1, !dbg !4954
  %3 = load i16, i16* %addr1, align 2, !dbg !4954
  store i16 %3, i16* %addr, align 16, !dbg !4952
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 1, !dbg !4952
  store i16 0, i16* %flags, align 2, !dbg !4952
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 2, !dbg !4952
  %4 = load i64, i64* %val_len.addr, align 8, !dbg !4955
  %add = add i64 1, %4, !dbg !4956
  %conv = trunc i64 %add to i16, !dbg !4957
  store i16 %conv, i16* %len, align 4, !dbg !4952
  %buf2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 3, !dbg !4952
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 0, !dbg !4958
  store i8* %arraydecay, i8** %buf2, align 8, !dbg !4952
  %5 = load i8*, i8** %reg.addr, align 8, !dbg !4959
  %6 = load i8, i8* %5, align 1, !dbg !4960
  %arrayidx = getelementptr [256 x i8], [256 x i8]* %buf, i64 0, i64 0, !dbg !4961
  store i8 %6, i8* %arrayidx, align 16, !dbg !4962
  %arrayidx3 = getelementptr [256 x i8], [256 x i8]* %buf, i64 0, i64 1, !dbg !4963
  %7 = load i8*, i8** %val.addr, align 8, !dbg !4964
  %8 = load i64, i64* %val_len.addr, align 8, !dbg !4965
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx3, i8* align 1 %7, i64 %8, i1 false), !dbg !4966
  %9 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !4967
  %adapter = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 3, !dbg !4968
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !4968
  %arraydecay4 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4969
  %call = call i32 @__i2c_transfer(%struct.i2c_adapter* %10, %struct.i2c_msg* %arraydecay4, i32 1) #9, !dbg !4970
  store i32 %call, i32* %ret, align 4, !dbg !4971
  %11 = load i32, i32* %ret, align 4, !dbg !4972
  %cmp = icmp ne i32 %11, 1, !dbg !4974
  br i1 %cmp, label %if.then, label %if.end9, !dbg !4975

if.then:                                          ; preds = %entry
  %12 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !4976
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 4, !dbg !4976
  %13 = load i32, i32* %ret, align 4, !dbg !4976
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %13) #10, !dbg !4976
  %14 = load i32, i32* %ret, align 4, !dbg !4978
  %cmp6 = icmp sge i32 %14, 0, !dbg !4980
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !4981

if.then8:                                         ; preds = %if.then
  store i32 -121, i32* %ret, align 4, !dbg !4982
  br label %if.end, !dbg !4983

if.end:                                           ; preds = %if.then8, %if.then
  %15 = load i32, i32* %ret, align 4, !dbg !4984
  store i32 %15, i32* %retval, align 4, !dbg !4985
  br label %return, !dbg !4985

if.end9:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4986
  br label %return, !dbg !4986

return:                                           ; preds = %if.end9, %if.end
  %16 = load i32, i32* %retval, align 4, !dbg !4987
  ret i32 %16, !dbg !4987
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtl2830_regmap_read(i8* %context, i8* %reg_buf, i64 %reg_size, i8* %val_buf, i64 %val_size) #2 !dbg !4988 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca i8*, align 8
  %reg_buf.addr = alloca i8*, align 8
  %reg_size.addr = alloca i64, align 8
  %val_buf.addr = alloca i8*, align 8
  %val_size.addr = alloca i64, align 8
  %client = alloca %struct.i2c_client*, align 8
  %ret = alloca i32, align 4
  %msg = alloca [2 x %struct.i2c_msg], align 16
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !4989, metadata !DIExpression()), !dbg !4990
  store i8* %reg_buf, i8** %reg_buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %reg_buf.addr, metadata !4991, metadata !DIExpression()), !dbg !4992
  store i64 %reg_size, i64* %reg_size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %reg_size.addr, metadata !4993, metadata !DIExpression()), !dbg !4994
  store i8* %val_buf, i8** %val_buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %val_buf.addr, metadata !4995, metadata !DIExpression()), !dbg !4996
  store i64 %val_size, i64* %val_size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %val_size.addr, metadata !4997, metadata !DIExpression()), !dbg !4998
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !4999, metadata !DIExpression()), !dbg !5000
  %0 = load i8*, i8** %context.addr, align 8, !dbg !5001
  %1 = bitcast i8* %0 to %struct.i2c_client*, !dbg !5001
  store %struct.i2c_client* %1, %struct.i2c_client** %client, align 8, !dbg !5000
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5002, metadata !DIExpression()), !dbg !5003
  call void @llvm.dbg.declare(metadata [2 x %struct.i2c_msg]* %msg, metadata !5004, metadata !DIExpression()), !dbg !5006
  %arrayinit.begin = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !5007
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 0, !dbg !5008
  %2 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5009
  %addr1 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %2, i32 0, i32 1, !dbg !5010
  %3 = load i16, i16* %addr1, align 2, !dbg !5010
  store i16 %3, i16* %addr, align 16, !dbg !5008
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 1, !dbg !5008
  store i16 0, i16* %flags, align 2, !dbg !5008
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 2, !dbg !5008
  %4 = load i64, i64* %reg_size.addr, align 8, !dbg !5011
  %conv = trunc i64 %4 to i16, !dbg !5011
  store i16 %conv, i16* %len, align 4, !dbg !5008
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 3, !dbg !5008
  %5 = load i8*, i8** %reg_buf.addr, align 8, !dbg !5012
  store i8* %5, i8** %buf, align 8, !dbg !5008
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i64 1, !dbg !5007
  %addr2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 0, !dbg !5013
  %6 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5014
  %addr3 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 1, !dbg !5015
  %7 = load i16, i16* %addr3, align 2, !dbg !5015
  store i16 %7, i16* %addr2, align 16, !dbg !5013
  %flags4 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 1, !dbg !5013
  store i16 1, i16* %flags4, align 2, !dbg !5013
  %len5 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 2, !dbg !5013
  %8 = load i64, i64* %val_size.addr, align 8, !dbg !5016
  %conv6 = trunc i64 %8 to i16, !dbg !5016
  store i16 %conv6, i16* %len5, align 4, !dbg !5013
  %buf7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 3, !dbg !5013
  %9 = load i8*, i8** %val_buf.addr, align 8, !dbg !5017
  store i8* %9, i8** %buf7, align 8, !dbg !5013
  %10 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5018
  %adapter = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 3, !dbg !5019
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !5019
  %arraydecay = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !5020
  %call = call i32 @__i2c_transfer(%struct.i2c_adapter* %11, %struct.i2c_msg* %arraydecay, i32 2) #9, !dbg !5021
  store i32 %call, i32* %ret, align 4, !dbg !5022
  %12 = load i32, i32* %ret, align 4, !dbg !5023
  %cmp = icmp ne i32 %12, 2, !dbg !5025
  br i1 %cmp, label %if.then, label %if.end12, !dbg !5026

if.then:                                          ; preds = %entry
  %13 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5027
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 4, !dbg !5027
  %14 = load i32, i32* %ret, align 4, !dbg !5027
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %14) #10, !dbg !5027
  %15 = load i32, i32* %ret, align 4, !dbg !5029
  %cmp9 = icmp sge i32 %15, 0, !dbg !5031
  br i1 %cmp9, label %if.then11, label %if.end, !dbg !5032

if.then11:                                        ; preds = %if.then
  store i32 -121, i32* %ret, align 4, !dbg !5033
  br label %if.end, !dbg !5034

if.end:                                           ; preds = %if.then11, %if.then
  %16 = load i32, i32* %ret, align 4, !dbg !5035
  store i32 %16, i32* %retval, align 4, !dbg !5036
  br label %return, !dbg !5036

if.end12:                                         ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5037
  br label %return, !dbg !5037

return:                                           ; preds = %if.end12, %if.end
  %17 = load i32, i32* %retval, align 4, !dbg !5038
  ret i32 %17, !dbg !5038
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !5039 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5042, metadata !DIExpression()), !dbg !5046
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5052, metadata !DIExpression()), !dbg !5053
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5054, metadata !DIExpression()), !dbg !5055
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5056, metadata !DIExpression()), !dbg !5057
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5058, metadata !DIExpression()), !dbg !5062
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5064, metadata !DIExpression()), !dbg !5068
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5070, metadata !DIExpression()), !dbg !5074
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5079, metadata !DIExpression()), !dbg !5080
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5081, metadata !DIExpression()), !dbg !5082
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5083, metadata !DIExpression()), !dbg !5084
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5085, metadata !DIExpression()), !dbg !5086
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5087, metadata !DIExpression()), !dbg !5088
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5089, metadata !DIExpression()), !dbg !5090
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5091, metadata !DIExpression()), !dbg !5092
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5093, metadata !DIExpression()), !dbg !5094
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5095, metadata !DIExpression()), !dbg !5096
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5097, metadata !DIExpression()), !dbg !5098
  %0 = load i64, i64* %size.addr, align 8, !dbg !5099
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5100
  %or = or i32 %1, 256, !dbg !5101
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5102
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #11, !dbg !5103
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5104

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5105
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5106
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5107

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5108
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5109
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5110
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !5111
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5088
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5112
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5113
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5114
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5115
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5116
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5117
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !5118
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5118
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5118
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5118
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !5118
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5119
  br label %kmalloc.exit, !dbg !5119

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5120
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5121
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5121
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5123

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5124
  br label %kmalloc_index.exit.i, !dbg !5124

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5125
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5127
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5128

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5129
  br label %kmalloc_index.exit.i, !dbg !5129

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5130
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5132
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5133

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5134
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5135
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5136

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5137
  br label %kmalloc_index.exit.i, !dbg !5137

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5138
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5140
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5141

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5142
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5143
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5144

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5145
  br label %kmalloc_index.exit.i, !dbg !5145

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5146
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5148
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5149

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5150
  br label %kmalloc_index.exit.i, !dbg !5150

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5151
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5153
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5154

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5155
  br label %kmalloc_index.exit.i, !dbg !5155

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5156
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5158
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5159

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5160
  br label %kmalloc_index.exit.i, !dbg !5160

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5161
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5163
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5164

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5165
  br label %kmalloc_index.exit.i, !dbg !5165

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5166
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5168
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5169

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5170
  br label %kmalloc_index.exit.i, !dbg !5170

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5171
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5173
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5174

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5175
  br label %kmalloc_index.exit.i, !dbg !5175

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5176
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5178
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5179

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5180
  br label %kmalloc_index.exit.i, !dbg !5180

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5181
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5183
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5184

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5185
  br label %kmalloc_index.exit.i, !dbg !5185

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5186
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5188
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5189

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5190
  br label %kmalloc_index.exit.i, !dbg !5190

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5191
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5193
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5194

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5195
  br label %kmalloc_index.exit.i, !dbg !5195

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5196
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5198
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5199

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5200
  br label %kmalloc_index.exit.i, !dbg !5200

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5201
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5203
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5204

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5205
  br label %kmalloc_index.exit.i, !dbg !5205

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5206
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5208
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5209

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5210
  br label %kmalloc_index.exit.i, !dbg !5210

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5211
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5213
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5214

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5215
  br label %kmalloc_index.exit.i, !dbg !5215

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5216
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5218
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5219

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5220
  br label %kmalloc_index.exit.i, !dbg !5220

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5221
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5223
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5224

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5225
  br label %kmalloc_index.exit.i, !dbg !5225

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5226
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5228
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5229

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5230
  br label %kmalloc_index.exit.i, !dbg !5230

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5231
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5233
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5234

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5235
  br label %kmalloc_index.exit.i, !dbg !5235

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5236
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5238
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5239

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5240
  br label %kmalloc_index.exit.i, !dbg !5240

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5241
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5243
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5244

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5245
  br label %kmalloc_index.exit.i, !dbg !5245

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5246
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5248
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5249

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5250
  br label %kmalloc_index.exit.i, !dbg !5250

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5251
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5253
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5254

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5255
  br label %kmalloc_index.exit.i, !dbg !5255

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5256
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5258
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5259

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5260
  br label %kmalloc_index.exit.i, !dbg !5260

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5261
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5263
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5264

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5265
  br label %kmalloc_index.exit.i, !dbg !5265

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !5266, !srcloc !5269
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #11, !dbg !5270, !srcloc !5273
  unreachable, !dbg !5274

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5275
  store i32 %45, i32* %index.i, align 4, !dbg !5276
  %46 = load i32, i32* %index.i, align 4, !dbg !5277
  %tobool.i = icmp ne i32 %46, 0, !dbg !5277
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5279

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5280
  br label %kmalloc.exit, !dbg !5280

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5281
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5282
  %and.i.i = and i32 %48, 17, !dbg !5282
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5282
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5282
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5282
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5282
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5284

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5285
  br label %kmalloc_type.exit.i, !dbg !5285

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5286
  %and2.i.i = and i32 %49, 1, !dbg !5287
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5286
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5286
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5286
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5288
  br label %kmalloc_type.exit.i, !dbg !5288

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5289
  %idxprom.i = zext i32 %51 to i64, !dbg !5290
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5290
  %52 = load i32, i32* %index.i, align 4, !dbg !5291
  %idxprom6.i = zext i32 %52 to i64, !dbg !5290
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5290
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5290
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5292
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5293
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5294
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5295
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !5296
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5296
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5296
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5296
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !5296
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5057
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5297
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5298
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5299
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5300
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !5301
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5302
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5303
  store i8* %62, i8** %retval.i, align 8, !dbg !5304
  br label %kmalloc.exit, !dbg !5304

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5305
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5306
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !5307
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5307
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5307
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5307
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !5307
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5308
  br label %kmalloc.exit, !dbg !5308

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5309
  ret i8* %65, !dbg !5310
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_set_clientdata(%struct.i2c_client* %client, i8* %data) #2 !dbg !5311 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !5314, metadata !DIExpression()), !dbg !5315
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5316, metadata !DIExpression()), !dbg !5317
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5318
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %0, i32 0, i32 4, !dbg !5319
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5320
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #9, !dbg !5321
  ret void, !dbg !5322
}

; Function Attrs: noredzone
declare dso_local %struct.regmap* @__regmap_init(%struct.device*, %struct.regmap_bus*, i8*, %struct.regmap_config*, %struct.lock_class_key*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !5323 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5327, metadata !DIExpression()), !dbg !5328
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5329
  %1 = ptrtoint i8* %0 to i64, !dbg !5329
  %2 = inttoptr i64 %1 to i8*, !dbg !5329
  %3 = ptrtoint i8* %2 to i64, !dbg !5329
  %cmp = icmp uge i64 %3, -4095, !dbg !5329
  %lnot = xor i1 %cmp, true, !dbg !5329
  %lnot1 = xor i1 %lnot, true, !dbg !5329
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5329
  %conv = sext i32 %lnot.ext to i64, !dbg !5329
  %tobool = icmp ne i64 %conv, 0, !dbg !5329
  ret i1 %tobool, !dbg !5330
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !5331 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5334, metadata !DIExpression()), !dbg !5335
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5336
  %1 = ptrtoint i8* %0 to i64, !dbg !5337
  ret i64 %1, !dbg !5338
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtl2830_bulk_read(%struct.i2c_client* %client, i32 %reg, i8* %val, i64 %val_count) #2 !dbg !5339 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %reg.addr = alloca i32, align 4
  %val.addr = alloca i8*, align 8
  %val_count.addr = alloca i64, align 8
  %dev = alloca %struct.rtl2830_dev*, align 8
  %ret = alloca i32, align 4
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !5342, metadata !DIExpression()), !dbg !5343
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !5344, metadata !DIExpression()), !dbg !5345
  store i8* %val, i8** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %val.addr, metadata !5346, metadata !DIExpression()), !dbg !5347
  store i64 %val_count, i64* %val_count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %val_count.addr, metadata !5348, metadata !DIExpression()), !dbg !5349
  call void @llvm.dbg.declare(metadata %struct.rtl2830_dev** %dev, metadata !5350, metadata !DIExpression()), !dbg !5351
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5352
  %call = call i8* @i2c_get_clientdata(%struct.i2c_client* %0) #9, !dbg !5353
  %1 = bitcast i8* %call to %struct.rtl2830_dev*, !dbg !5353
  store %struct.rtl2830_dev* %1, %struct.rtl2830_dev** %dev, align 8, !dbg !5351
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5354, metadata !DIExpression()), !dbg !5355
  %2 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5356
  %adapter = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %2, i32 0, i32 3, !dbg !5357
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !5357
  call void @i2c_lock_bus(%struct.i2c_adapter* %3, i32 2) #9, !dbg !5358
  %4 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !5359
  %regmap = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %4, i32 0, i32 2, !dbg !5360
  %5 = load %struct.regmap*, %struct.regmap** %regmap, align 8, !dbg !5360
  %6 = load i32, i32* %reg.addr, align 4, !dbg !5361
  %7 = load i8*, i8** %val.addr, align 8, !dbg !5362
  %8 = load i64, i64* %val_count.addr, align 8, !dbg !5363
  %call1 = call i32 @regmap_bulk_read(%struct.regmap* %5, i32 %6, i8* %7, i64 %8) #9, !dbg !5364
  store i32 %call1, i32* %ret, align 4, !dbg !5365
  %9 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5366
  %adapter2 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 3, !dbg !5367
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter2, align 8, !dbg !5367
  call void @i2c_unlock_bus(%struct.i2c_adapter* %10, i32 2) #9, !dbg !5368
  %11 = load i32, i32* %ret, align 4, !dbg !5369
  ret i32 %11, !dbg !5370
}

; Function Attrs: noredzone
declare dso_local %struct.i2c_mux_core* @i2c_mux_alloc(%struct.i2c_adapter*, %struct.device*, i32, i32, i32, i32 (%struct.i2c_mux_core*, i32)*, i32 (%struct.i2c_mux_core*, i32)*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtl2830_select(%struct.i2c_mux_core* %muxc, i32 %chan_id) #2 !dbg !5371 {
entry:
  %retval = alloca i32, align 4
  %muxc.addr = alloca %struct.i2c_mux_core*, align 8
  %chan_id.addr = alloca i32, align 4
  %client = alloca %struct.i2c_client*, align 8
  %dev = alloca %struct.rtl2830_dev*, align 8
  %ret = alloca i32, align 4
  store %struct.i2c_mux_core* %muxc, %struct.i2c_mux_core** %muxc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_mux_core** %muxc.addr, metadata !5372, metadata !DIExpression()), !dbg !5373
  store i32 %chan_id, i32* %chan_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan_id.addr, metadata !5374, metadata !DIExpression()), !dbg !5375
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !5376, metadata !DIExpression()), !dbg !5377
  %0 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc.addr, align 8, !dbg !5378
  %call = call i8* @i2c_mux_priv(%struct.i2c_mux_core* %0) #9, !dbg !5379
  %1 = bitcast i8* %call to %struct.i2c_client*, !dbg !5379
  store %struct.i2c_client* %1, %struct.i2c_client** %client, align 8, !dbg !5377
  call void @llvm.dbg.declare(metadata %struct.rtl2830_dev** %dev, metadata !5380, metadata !DIExpression()), !dbg !5381
  %2 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5382
  %call1 = call i8* @i2c_get_clientdata(%struct.i2c_client* %2) #9, !dbg !5383
  %3 = bitcast i8* %call1 to %struct.rtl2830_dev*, !dbg !5383
  store %struct.rtl2830_dev* %3, %struct.rtl2830_dev** %dev, align 8, !dbg !5381
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5384, metadata !DIExpression()), !dbg !5385
  %4 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !5386
  %regmap = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %4, i32 0, i32 2, !dbg !5387
  %5 = load %struct.regmap*, %struct.regmap** %regmap, align 8, !dbg !5387
  %call2 = call i32 @regmap_update_bits(%struct.regmap* %5, i32 257, i32 8, i32 8) #9, !dbg !5388
  store i32 %call2, i32* %ret, align 4, !dbg !5389
  %6 = load i32, i32* %ret, align 4, !dbg !5390
  %tobool = icmp ne i32 %6, 0, !dbg !5390
  br i1 %tobool, label %if.then, label %if.end, !dbg !5392

if.then:                                          ; preds = %entry
  br label %err, !dbg !5393

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5394
  br label %return, !dbg !5394

err:                                              ; preds = %if.then
  call void @llvm.dbg.label(metadata !5395), !dbg !5396
  %7 = load i32, i32* %ret, align 4, !dbg !5397
  store i32 %7, i32* %retval, align 4, !dbg !5398
  br label %return, !dbg !5398

return:                                           ; preds = %err, %if.end
  %8 = load i32, i32* %retval, align 4, !dbg !5399
  ret i32 %8, !dbg !5399
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_mux_add_adapter(%struct.i2c_mux_core*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.dvb_frontend* @rtl2830_get_dvb_frontend(%struct.i2c_client* %client) #2 !dbg !5400 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %dev = alloca %struct.rtl2830_dev*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !5401, metadata !DIExpression()), !dbg !5402
  call void @llvm.dbg.declare(metadata %struct.rtl2830_dev** %dev, metadata !5403, metadata !DIExpression()), !dbg !5404
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5405
  %call = call i8* @i2c_get_clientdata(%struct.i2c_client* %0) #9, !dbg !5406
  %1 = bitcast i8* %call to %struct.rtl2830_dev*, !dbg !5406
  store %struct.rtl2830_dev* %1, %struct.rtl2830_dev** %dev, align 8, !dbg !5404
  %2 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !5407
  %fe = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %2, i32 0, i32 4, !dbg !5408
  ret %struct.dvb_frontend* %fe, !dbg !5409
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.i2c_adapter* @rtl2830_get_i2c_adapter(%struct.i2c_client* %client) #2 !dbg !5410 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %dev = alloca %struct.rtl2830_dev*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !5411, metadata !DIExpression()), !dbg !5412
  call void @llvm.dbg.declare(metadata %struct.rtl2830_dev** %dev, metadata !5413, metadata !DIExpression()), !dbg !5414
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5415
  %call = call i8* @i2c_get_clientdata(%struct.i2c_client* %0) #9, !dbg !5416
  %1 = bitcast i8* %call to %struct.rtl2830_dev*, !dbg !5416
  store %struct.rtl2830_dev* %1, %struct.rtl2830_dev** %dev, align 8, !dbg !5414
  %2 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !5417
  %muxc = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %2, i32 0, i32 3, !dbg !5418
  %3 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !5418
  %adapter = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %3, i32 0, i32 8, !dbg !5419
  %arrayidx = getelementptr [0 x %struct.i2c_adapter*], [0 x %struct.i2c_adapter*]* %adapter, i64 0, i64 0, !dbg !5417
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %arrayidx, align 8, !dbg !5417
  ret %struct.i2c_adapter* %4, !dbg !5420
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtl2830_pid_filter(%struct.dvb_frontend* %fe, i8 zeroext %index, i16 zeroext %pid, i32 %onoff) #2 !dbg !5421 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %index.addr = alloca i8, align 1
  %pid.addr = alloca i16, align 2
  %onoff.addr = alloca i32, align 4
  %client = alloca %struct.i2c_client*, align 8
  %dev = alloca %struct.rtl2830_dev*, align 8
  %ret = alloca i32, align 4
  %buf = alloca [4 x i8], align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5422, metadata !DIExpression()), !dbg !5423
  store i8 %index, i8* %index.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %index.addr, metadata !5424, metadata !DIExpression()), !dbg !5425
  store i16 %pid, i16* %pid.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %pid.addr, metadata !5426, metadata !DIExpression()), !dbg !5427
  store i32 %onoff, i32* %onoff.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %onoff.addr, metadata !5428, metadata !DIExpression()), !dbg !5429
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !5430, metadata !DIExpression()), !dbg !5431
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5432
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5433
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5433
  %2 = bitcast i8* %1 to %struct.i2c_client*, !dbg !5432
  store %struct.i2c_client* %2, %struct.i2c_client** %client, align 8, !dbg !5431
  call void @llvm.dbg.declare(metadata %struct.rtl2830_dev** %dev, metadata !5434, metadata !DIExpression()), !dbg !5435
  %3 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5436
  %call = call i8* @i2c_get_clientdata(%struct.i2c_client* %3) #9, !dbg !5437
  %4 = bitcast i8* %call to %struct.rtl2830_dev*, !dbg !5437
  store %struct.rtl2830_dev* %4, %struct.rtl2830_dev** %dev, align 8, !dbg !5435
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5438, metadata !DIExpression()), !dbg !5439
  call void @llvm.dbg.declare(metadata [4 x i8]* %buf, metadata !5440, metadata !DIExpression()), !dbg !5442
  %5 = load i16, i16* %pid.addr, align 2, !dbg !5443
  %conv = zext i16 %5 to i32, !dbg !5443
  %cmp = icmp sgt i32 %conv, 8191, !dbg !5445
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5446

lor.lhs.false:                                    ; preds = %entry
  %6 = load i8, i8* %index.addr, align 1, !dbg !5447
  %conv2 = zext i8 %6 to i32, !dbg !5447
  %cmp3 = icmp sgt i32 %conv2, 32, !dbg !5448
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5449

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !5450
  br label %return, !dbg !5450

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i32, i32* %onoff.addr, align 4, !dbg !5451
  %tobool = icmp ne i32 %7, 0, !dbg !5451
  br i1 %tobool, label %if.then5, label %if.else, !dbg !5453

if.then5:                                         ; preds = %if.end
  %8 = load i8, i8* %index.addr, align 1, !dbg !5454
  %conv6 = zext i8 %8 to i64, !dbg !5454
  %9 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !5455
  %filters = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %9, i32 0, i32 6, !dbg !5456
  call void @set_bit(i64 %conv6, i64* %filters) #9, !dbg !5457
  br label %if.end9, !dbg !5457

if.else:                                          ; preds = %if.end
  %10 = load i8, i8* %index.addr, align 1, !dbg !5458
  %conv7 = zext i8 %10 to i64, !dbg !5458
  %11 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !5459
  %filters8 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %11, i32 0, i32 6, !dbg !5460
  call void @clear_bit(i64 %conv7, i64* %filters8) #9, !dbg !5461
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then5
  %12 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !5462
  %filters10 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %12, i32 0, i32 6, !dbg !5463
  %13 = load i64, i64* %filters10, align 8, !dbg !5463
  %shr = lshr i64 %13, 0, !dbg !5464
  %and = and i64 %shr, 255, !dbg !5465
  %conv11 = trunc i64 %and to i8, !dbg !5466
  %arrayidx = getelementptr [4 x i8], [4 x i8]* %buf, i64 0, i64 0, !dbg !5467
  store i8 %conv11, i8* %arrayidx, align 1, !dbg !5468
  %14 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !5469
  %filters12 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %14, i32 0, i32 6, !dbg !5470
  %15 = load i64, i64* %filters12, align 8, !dbg !5470
  %shr13 = lshr i64 %15, 8, !dbg !5471
  %and14 = and i64 %shr13, 255, !dbg !5472
  %conv15 = trunc i64 %and14 to i8, !dbg !5473
  %arrayidx16 = getelementptr [4 x i8], [4 x i8]* %buf, i64 0, i64 1, !dbg !5474
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !5475
  %16 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !5476
  %filters17 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %16, i32 0, i32 6, !dbg !5477
  %17 = load i64, i64* %filters17, align 8, !dbg !5477
  %shr18 = lshr i64 %17, 16, !dbg !5478
  %and19 = and i64 %shr18, 255, !dbg !5479
  %conv20 = trunc i64 %and19 to i8, !dbg !5480
  %arrayidx21 = getelementptr [4 x i8], [4 x i8]* %buf, i64 0, i64 2, !dbg !5481
  store i8 %conv20, i8* %arrayidx21, align 1, !dbg !5482
  %18 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !5483
  %filters22 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %18, i32 0, i32 6, !dbg !5484
  %19 = load i64, i64* %filters22, align 8, !dbg !5484
  %shr23 = lshr i64 %19, 24, !dbg !5485
  %and24 = and i64 %shr23, 255, !dbg !5486
  %conv25 = trunc i64 %and24 to i8, !dbg !5487
  %arrayidx26 = getelementptr [4 x i8], [4 x i8]* %buf, i64 0, i64 3, !dbg !5488
  store i8 %conv25, i8* %arrayidx26, align 1, !dbg !5489
  %20 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5490
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i64 0, i64 0, !dbg !5491
  %call27 = call i32 @rtl2830_bulk_write(%struct.i2c_client* %20, i32 98, i8* %arraydecay, i64 4) #9, !dbg !5492
  store i32 %call27, i32* %ret, align 4, !dbg !5493
  %21 = load i32, i32* %ret, align 4, !dbg !5494
  %tobool28 = icmp ne i32 %21, 0, !dbg !5494
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !5496

if.then29:                                        ; preds = %if.end9
  br label %err, !dbg !5497

if.end30:                                         ; preds = %if.end9
  %22 = load i16, i16* %pid.addr, align 2, !dbg !5498
  %conv31 = zext i16 %22 to i32, !dbg !5498
  %shr32 = ashr i32 %conv31, 8, !dbg !5499
  %and33 = and i32 %shr32, 255, !dbg !5500
  %conv34 = trunc i32 %and33 to i8, !dbg !5501
  %arrayidx35 = getelementptr [4 x i8], [4 x i8]* %buf, i64 0, i64 0, !dbg !5502
  store i8 %conv34, i8* %arrayidx35, align 1, !dbg !5503
  %23 = load i16, i16* %pid.addr, align 2, !dbg !5504
  %conv36 = zext i16 %23 to i32, !dbg !5504
  %shr37 = ashr i32 %conv36, 0, !dbg !5505
  %and38 = and i32 %shr37, 255, !dbg !5506
  %conv39 = trunc i32 %and38 to i8, !dbg !5507
  %arrayidx40 = getelementptr [4 x i8], [4 x i8]* %buf, i64 0, i64 1, !dbg !5508
  store i8 %conv39, i8* %arrayidx40, align 1, !dbg !5509
  %24 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5510
  %25 = load i8, i8* %index.addr, align 1, !dbg !5511
  %conv41 = zext i8 %25 to i32, !dbg !5511
  %mul = mul i32 2, %conv41, !dbg !5512
  %add = add i32 102, %mul, !dbg !5513
  %arraydecay42 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i64 0, i64 0, !dbg !5514
  %call43 = call i32 @rtl2830_bulk_write(%struct.i2c_client* %24, i32 %add, i8* %arraydecay42, i64 2) #9, !dbg !5515
  store i32 %call43, i32* %ret, align 4, !dbg !5516
  %26 = load i32, i32* %ret, align 4, !dbg !5517
  %tobool44 = icmp ne i32 %26, 0, !dbg !5517
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !5519

if.then45:                                        ; preds = %if.end30
  br label %err, !dbg !5520

if.end46:                                         ; preds = %if.end30
  store i32 0, i32* %retval, align 4, !dbg !5521
  br label %return, !dbg !5521

err:                                              ; preds = %if.then45, %if.then29
  call void @llvm.dbg.label(metadata !5522), !dbg !5523
  %27 = load i32, i32* %ret, align 4, !dbg !5524
  store i32 %27, i32* %retval, align 4, !dbg !5525
  br label %return, !dbg !5525

return:                                           ; preds = %err, %if.end46, %if.then
  %28 = load i32, i32* %retval, align 4, !dbg !5526
  ret i32 %28, !dbg !5526
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtl2830_pid_filter_ctrl(%struct.dvb_frontend* %fe, i32 %onoff) #2 !dbg !5527 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %onoff.addr = alloca i32, align 4
  %client = alloca %struct.i2c_client*, align 8
  %ret = alloca i32, align 4
  %u8tmp = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5528, metadata !DIExpression()), !dbg !5529
  store i32 %onoff, i32* %onoff.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %onoff.addr, metadata !5530, metadata !DIExpression()), !dbg !5531
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !5532, metadata !DIExpression()), !dbg !5533
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5534
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5535
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5535
  %2 = bitcast i8* %1 to %struct.i2c_client*, !dbg !5534
  store %struct.i2c_client* %2, %struct.i2c_client** %client, align 8, !dbg !5533
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5536, metadata !DIExpression()), !dbg !5537
  call void @llvm.dbg.declare(metadata i8* %u8tmp, metadata !5538, metadata !DIExpression()), !dbg !5539
  %3 = load i32, i32* %onoff.addr, align 4, !dbg !5540
  %tobool = icmp ne i32 %3, 0, !dbg !5540
  br i1 %tobool, label %if.then, label %if.else, !dbg !5542

if.then:                                          ; preds = %entry
  store i8 -128, i8* %u8tmp, align 1, !dbg !5543
  br label %if.end, !dbg !5544

if.else:                                          ; preds = %entry
  store i8 0, i8* %u8tmp, align 1, !dbg !5545
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5546
  %5 = load i8, i8* %u8tmp, align 1, !dbg !5547
  %conv = zext i8 %5 to i32, !dbg !5547
  %call = call i32 @rtl2830_update_bits(%struct.i2c_client* %4, i32 97, i32 128, i32 %conv) #9, !dbg !5548
  store i32 %call, i32* %ret, align 4, !dbg !5549
  %6 = load i32, i32* %ret, align 4, !dbg !5550
  %tobool1 = icmp ne i32 %6, 0, !dbg !5550
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !5552

if.then2:                                         ; preds = %if.end
  br label %err, !dbg !5553

if.end3:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5554
  br label %return, !dbg !5554

err:                                              ; preds = %if.then2
  call void @llvm.dbg.label(metadata !5555), !dbg !5556
  %7 = load i32, i32* %ret, align 4, !dbg !5557
  store i32 %7, i32* %retval, align 4, !dbg !5558
  br label %return, !dbg !5558

return:                                           ; preds = %err, %if.end3
  %8 = load i32, i32* %retval, align 4, !dbg !5559
  ret i32 %8, !dbg !5559
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #5

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @regmap_exit(%struct.regmap*) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noredzone
declare dso_local i32 @__i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #5

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !5560 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5564, metadata !DIExpression()), !dbg !5569
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5571, metadata !DIExpression()), !dbg !5572
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5573, metadata !DIExpression()), !dbg !5574
  %0 = load i64, i64* %size.addr, align 8, !dbg !5575
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5577
  br i1 %1, label %if.then, label %if.end447, !dbg !5578

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5579
  %tobool = icmp ne i64 %2, 0, !dbg !5579
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5582

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5583
  br label %return, !dbg !5583

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5584
  %cmp = icmp ult i64 %3, 4096, !dbg !5586
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5587

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5588
  br label %return, !dbg !5588

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub = sub i64 %4, 1, !dbg !5589
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5589
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5589

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub4 = sub i64 %6, 1, !dbg !5589
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5589
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5589

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub6 = sub i64 %8, 1, !dbg !5589
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5589
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5589

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5589

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub9 = sub i64 %9, 1, !dbg !5589
  %and = and i64 %sub9, -9223372036854775808, !dbg !5589
  %tobool10 = icmp ne i64 %and, 0, !dbg !5589
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5589

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5589

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub13 = sub i64 %10, 1, !dbg !5589
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5589
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5589
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5589

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5589

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub18 = sub i64 %11, 1, !dbg !5589
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5589
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5589
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5589

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5589

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub23 = sub i64 %12, 1, !dbg !5589
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5589
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5589
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5589

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5589

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub28 = sub i64 %13, 1, !dbg !5589
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5589
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5589
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5589

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5589

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub33 = sub i64 %14, 1, !dbg !5589
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5589
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5589
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5589

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5589

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub38 = sub i64 %15, 1, !dbg !5589
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5589
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5589
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5589

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5589

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub43 = sub i64 %16, 1, !dbg !5589
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5589
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5589
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5589

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5589

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub48 = sub i64 %17, 1, !dbg !5589
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5589
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5589
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5589

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5589

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub53 = sub i64 %18, 1, !dbg !5589
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5589
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5589
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5589

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5589

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub58 = sub i64 %19, 1, !dbg !5589
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5589
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5589
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5589

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5589

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub63 = sub i64 %20, 1, !dbg !5589
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5589
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5589
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5589

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5589

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub68 = sub i64 %21, 1, !dbg !5589
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5589
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5589
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5589

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5589

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub73 = sub i64 %22, 1, !dbg !5589
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5589
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5589
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5589

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5589

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub78 = sub i64 %23, 1, !dbg !5589
  %and79 = and i64 %sub78, 562949953421312, !dbg !5589
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5589
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5589

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5589

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub83 = sub i64 %24, 1, !dbg !5589
  %and84 = and i64 %sub83, 281474976710656, !dbg !5589
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5589
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5589

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5589

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub88 = sub i64 %25, 1, !dbg !5589
  %and89 = and i64 %sub88, 140737488355328, !dbg !5589
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5589
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5589

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5589

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub93 = sub i64 %26, 1, !dbg !5589
  %and94 = and i64 %sub93, 70368744177664, !dbg !5589
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5589
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5589

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5589

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub98 = sub i64 %27, 1, !dbg !5589
  %and99 = and i64 %sub98, 35184372088832, !dbg !5589
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5589
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5589

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5589

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub103 = sub i64 %28, 1, !dbg !5589
  %and104 = and i64 %sub103, 17592186044416, !dbg !5589
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5589
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5589

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5589

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub108 = sub i64 %29, 1, !dbg !5589
  %and109 = and i64 %sub108, 8796093022208, !dbg !5589
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5589
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5589

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5589

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub113 = sub i64 %30, 1, !dbg !5589
  %and114 = and i64 %sub113, 4398046511104, !dbg !5589
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5589
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5589

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5589

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub118 = sub i64 %31, 1, !dbg !5589
  %and119 = and i64 %sub118, 2199023255552, !dbg !5589
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5589
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5589

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5589

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub123 = sub i64 %32, 1, !dbg !5589
  %and124 = and i64 %sub123, 1099511627776, !dbg !5589
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5589
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5589

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5589

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub128 = sub i64 %33, 1, !dbg !5589
  %and129 = and i64 %sub128, 549755813888, !dbg !5589
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5589
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5589

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5589

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub133 = sub i64 %34, 1, !dbg !5589
  %and134 = and i64 %sub133, 274877906944, !dbg !5589
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5589
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5589

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5589

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub138 = sub i64 %35, 1, !dbg !5589
  %and139 = and i64 %sub138, 137438953472, !dbg !5589
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5589
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5589

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5589

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub143 = sub i64 %36, 1, !dbg !5589
  %and144 = and i64 %sub143, 68719476736, !dbg !5589
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5589
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5589

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5589

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub148 = sub i64 %37, 1, !dbg !5589
  %and149 = and i64 %sub148, 34359738368, !dbg !5589
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5589
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5589

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5589

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub153 = sub i64 %38, 1, !dbg !5589
  %and154 = and i64 %sub153, 17179869184, !dbg !5589
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5589
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5589

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5589

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub158 = sub i64 %39, 1, !dbg !5589
  %and159 = and i64 %sub158, 8589934592, !dbg !5589
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5589
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5589

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5589

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub163 = sub i64 %40, 1, !dbg !5589
  %and164 = and i64 %sub163, 4294967296, !dbg !5589
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5589
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5589

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5589

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub168 = sub i64 %41, 1, !dbg !5589
  %and169 = and i64 %sub168, 2147483648, !dbg !5589
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5589
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5589

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5589

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub173 = sub i64 %42, 1, !dbg !5589
  %and174 = and i64 %sub173, 1073741824, !dbg !5589
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5589
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5589

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5589

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub178 = sub i64 %43, 1, !dbg !5589
  %and179 = and i64 %sub178, 536870912, !dbg !5589
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5589
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5589

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5589

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub183 = sub i64 %44, 1, !dbg !5589
  %and184 = and i64 %sub183, 268435456, !dbg !5589
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5589
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5589

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5589

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub188 = sub i64 %45, 1, !dbg !5589
  %and189 = and i64 %sub188, 134217728, !dbg !5589
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5589
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5589

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5589

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub193 = sub i64 %46, 1, !dbg !5589
  %and194 = and i64 %sub193, 67108864, !dbg !5589
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5589
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5589

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5589

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub198 = sub i64 %47, 1, !dbg !5589
  %and199 = and i64 %sub198, 33554432, !dbg !5589
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5589
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5589

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5589

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub203 = sub i64 %48, 1, !dbg !5589
  %and204 = and i64 %sub203, 16777216, !dbg !5589
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5589
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5589

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5589

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub208 = sub i64 %49, 1, !dbg !5589
  %and209 = and i64 %sub208, 8388608, !dbg !5589
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5589
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5589

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5589

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub213 = sub i64 %50, 1, !dbg !5589
  %and214 = and i64 %sub213, 4194304, !dbg !5589
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5589
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5589

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5589

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub218 = sub i64 %51, 1, !dbg !5589
  %and219 = and i64 %sub218, 2097152, !dbg !5589
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5589
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5589

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5589

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub223 = sub i64 %52, 1, !dbg !5589
  %and224 = and i64 %sub223, 1048576, !dbg !5589
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5589
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5589

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5589

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub228 = sub i64 %53, 1, !dbg !5589
  %and229 = and i64 %sub228, 524288, !dbg !5589
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5589
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5589

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5589

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub233 = sub i64 %54, 1, !dbg !5589
  %and234 = and i64 %sub233, 262144, !dbg !5589
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5589
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5589

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5589

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub238 = sub i64 %55, 1, !dbg !5589
  %and239 = and i64 %sub238, 131072, !dbg !5589
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5589
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5589

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5589

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub243 = sub i64 %56, 1, !dbg !5589
  %and244 = and i64 %sub243, 65536, !dbg !5589
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5589
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5589

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5589

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub248 = sub i64 %57, 1, !dbg !5589
  %and249 = and i64 %sub248, 32768, !dbg !5589
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5589
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5589

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5589

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub253 = sub i64 %58, 1, !dbg !5589
  %and254 = and i64 %sub253, 16384, !dbg !5589
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5589
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5589

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5589

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub258 = sub i64 %59, 1, !dbg !5589
  %and259 = and i64 %sub258, 8192, !dbg !5589
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5589
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5589

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5589

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub263 = sub i64 %60, 1, !dbg !5589
  %and264 = and i64 %sub263, 4096, !dbg !5589
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5589
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5589

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5589

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub268 = sub i64 %61, 1, !dbg !5589
  %and269 = and i64 %sub268, 2048, !dbg !5589
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5589
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5589

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5589

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub273 = sub i64 %62, 1, !dbg !5589
  %and274 = and i64 %sub273, 1024, !dbg !5589
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5589
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5589

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5589

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub278 = sub i64 %63, 1, !dbg !5589
  %and279 = and i64 %sub278, 512, !dbg !5589
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5589
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5589

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5589

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub283 = sub i64 %64, 1, !dbg !5589
  %and284 = and i64 %sub283, 256, !dbg !5589
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5589
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5589

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5589

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub288 = sub i64 %65, 1, !dbg !5589
  %and289 = and i64 %sub288, 128, !dbg !5589
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5589
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5589

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5589

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub293 = sub i64 %66, 1, !dbg !5589
  %and294 = and i64 %sub293, 64, !dbg !5589
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5589
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5589

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5589

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub298 = sub i64 %67, 1, !dbg !5589
  %and299 = and i64 %sub298, 32, !dbg !5589
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5589
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5589

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5589

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub303 = sub i64 %68, 1, !dbg !5589
  %and304 = and i64 %sub303, 16, !dbg !5589
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5589
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5589

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5589

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub308 = sub i64 %69, 1, !dbg !5589
  %and309 = and i64 %sub308, 8, !dbg !5589
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5589
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5589

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5589

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub313 = sub i64 %70, 1, !dbg !5589
  %and314 = and i64 %sub313, 4, !dbg !5589
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5589
  %71 = zext i1 %tobool315 to i64, !dbg !5589
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5589
  br label %cond.end, !dbg !5589

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5589
  br label %cond.end317, !dbg !5589

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5589
  br label %cond.end319, !dbg !5589

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5589
  br label %cond.end321, !dbg !5589

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5589
  br label %cond.end323, !dbg !5589

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5589
  br label %cond.end325, !dbg !5589

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5589
  br label %cond.end327, !dbg !5589

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5589
  br label %cond.end329, !dbg !5589

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5589
  br label %cond.end331, !dbg !5589

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5589
  br label %cond.end333, !dbg !5589

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5589
  br label %cond.end335, !dbg !5589

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5589
  br label %cond.end337, !dbg !5589

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5589
  br label %cond.end339, !dbg !5589

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5589
  br label %cond.end341, !dbg !5589

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5589
  br label %cond.end343, !dbg !5589

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5589
  br label %cond.end345, !dbg !5589

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5589
  br label %cond.end347, !dbg !5589

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5589
  br label %cond.end349, !dbg !5589

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5589
  br label %cond.end351, !dbg !5589

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5589
  br label %cond.end353, !dbg !5589

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5589
  br label %cond.end355, !dbg !5589

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5589
  br label %cond.end357, !dbg !5589

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5589
  br label %cond.end359, !dbg !5589

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5589
  br label %cond.end361, !dbg !5589

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5589
  br label %cond.end363, !dbg !5589

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5589
  br label %cond.end365, !dbg !5589

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5589
  br label %cond.end367, !dbg !5589

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5589
  br label %cond.end369, !dbg !5589

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5589
  br label %cond.end371, !dbg !5589

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5589
  br label %cond.end373, !dbg !5589

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5589
  br label %cond.end375, !dbg !5589

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5589
  br label %cond.end377, !dbg !5589

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5589
  br label %cond.end379, !dbg !5589

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5589
  br label %cond.end381, !dbg !5589

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5589
  br label %cond.end383, !dbg !5589

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5589
  br label %cond.end385, !dbg !5589

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5589
  br label %cond.end387, !dbg !5589

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5589
  br label %cond.end389, !dbg !5589

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5589
  br label %cond.end391, !dbg !5589

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5589
  br label %cond.end393, !dbg !5589

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5589
  br label %cond.end395, !dbg !5589

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5589
  br label %cond.end397, !dbg !5589

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5589
  br label %cond.end399, !dbg !5589

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5589
  br label %cond.end401, !dbg !5589

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5589
  br label %cond.end403, !dbg !5589

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5589
  br label %cond.end405, !dbg !5589

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5589
  br label %cond.end407, !dbg !5589

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5589
  br label %cond.end409, !dbg !5589

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5589
  br label %cond.end411, !dbg !5589

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5589
  br label %cond.end413, !dbg !5589

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5589
  br label %cond.end415, !dbg !5589

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5589
  br label %cond.end417, !dbg !5589

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5589
  br label %cond.end419, !dbg !5589

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5589
  br label %cond.end421, !dbg !5589

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5589
  br label %cond.end423, !dbg !5589

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5589
  br label %cond.end425, !dbg !5589

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5589
  br label %cond.end427, !dbg !5589

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5589
  br label %cond.end429, !dbg !5589

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5589
  br label %cond.end431, !dbg !5589

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5589
  br label %cond.end433, !dbg !5589

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5589
  br label %cond.end435, !dbg !5589

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5589
  br label %cond.end437, !dbg !5589

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5589
  br label %cond.end440, !dbg !5589

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5589

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5589
  br label %cond.end444, !dbg !5589

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub443 = sub i64 %72, 1, !dbg !5589
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !5589
  br label %cond.end444, !dbg !5589

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5589
  %sub446 = sub i32 %cond445, 12, !dbg !5590
  %add = add i32 %sub446, 1, !dbg !5591
  store i32 %add, i32* %retval, align 4, !dbg !5592
  br label %return, !dbg !5592

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5593
  %dec = add i64 %73, -1, !dbg !5593
  store i64 %dec, i64* %size.addr, align 8, !dbg !5593
  %74 = load i64, i64* %size.addr, align 8, !dbg !5594
  %shr = lshr i64 %74, 12, !dbg !5594
  store i64 %shr, i64* %size.addr, align 8, !dbg !5594
  %75 = load i64, i64* %size.addr, align 8, !dbg !5595
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5572
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5596
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5597
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !5596, !srcloc !5598
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5596
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5599
  %add.i = add i32 %79, 1, !dbg !5600
  store i32 %add.i, i32* %retval, align 4, !dbg !5601
  br label %return, !dbg !5601

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5602
  ret i32 %80, !dbg !5602
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !5603 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5564, metadata !DIExpression()), !dbg !5607
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5571, metadata !DIExpression()), !dbg !5609
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5610, metadata !DIExpression()), !dbg !5611
  %0 = load i64, i64* %n.addr, align 8, !dbg !5612
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5609
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5613
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5614
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !5613, !srcloc !5598
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5613
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5615
  %add.i = add i32 %4, 1, !dbg !5616
  %sub = sub i32 %add.i, 1, !dbg !5617
  ret i32 %sub, !dbg !5618
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !5619 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5623, metadata !DIExpression()), !dbg !5624
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5625, metadata !DIExpression()), !dbg !5626
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5627, metadata !DIExpression()), !dbg !5628
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5629, metadata !DIExpression()), !dbg !5630
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5631
  ret i8* %0, !dbg !5632
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !5633 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5636, metadata !DIExpression()), !dbg !5637
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5638, metadata !DIExpression()), !dbg !5639
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5640
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5641
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5642
  store i8* %0, i8** %driver_data, align 8, !dbg !5643
  ret void, !dbg !5644
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @i2c_get_clientdata(%struct.i2c_client* %client) #2 !dbg !5645 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !5650, metadata !DIExpression()), !dbg !5651
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5652
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %0, i32 0, i32 4, !dbg !5653
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #9, !dbg !5654
  ret i8* %call, !dbg !5655
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_lock_bus(%struct.i2c_adapter* %adapter, i32 %flags) #2 !dbg !5656 {
entry:
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !5657, metadata !DIExpression()), !dbg !5658
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5659, metadata !DIExpression()), !dbg !5660
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !5661
  %lock_ops = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 4, !dbg !5662
  %1 = load %struct.i2c_lock_operations*, %struct.i2c_lock_operations** %lock_ops, align 8, !dbg !5662
  %lock_bus = getelementptr inbounds %struct.i2c_lock_operations, %struct.i2c_lock_operations* %1, i32 0, i32 0, !dbg !5663
  %2 = load void (%struct.i2c_adapter*, i32)*, void (%struct.i2c_adapter*, i32)** %lock_bus, align 8, !dbg !5663
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !5664
  %4 = load i32, i32* %flags.addr, align 4, !dbg !5665
  call void %2(%struct.i2c_adapter* %3, i32 %4) #9, !dbg !5661
  ret void, !dbg !5666
}

; Function Attrs: noredzone
declare dso_local i32 @regmap_bulk_read(%struct.regmap*, i32, i8*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_unlock_bus(%struct.i2c_adapter* %adapter, i32 %flags) #2 !dbg !5667 {
entry:
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !5668, metadata !DIExpression()), !dbg !5669
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5670, metadata !DIExpression()), !dbg !5671
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !5672
  %lock_ops = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 4, !dbg !5673
  %1 = load %struct.i2c_lock_operations*, %struct.i2c_lock_operations** %lock_ops, align 8, !dbg !5673
  %unlock_bus = getelementptr inbounds %struct.i2c_lock_operations, %struct.i2c_lock_operations* %1, i32 0, i32 2, !dbg !5674
  %2 = load void (%struct.i2c_adapter*, i32)*, void (%struct.i2c_adapter*, i32)** %unlock_bus, align 8, !dbg !5674
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !5675
  %4 = load i32, i32* %flags.addr, align 4, !dbg !5676
  call void %2(%struct.i2c_adapter* %3, i32 %4) #9, !dbg !5672
  ret void, !dbg !5677
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !5678 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5681, metadata !DIExpression()), !dbg !5682
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5683
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5684
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5684
  ret i8* %1, !dbg !5685
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @i2c_mux_priv(%struct.i2c_mux_core* %muxc) #2 !dbg !5686 {
entry:
  %muxc.addr = alloca %struct.i2c_mux_core*, align 8
  store %struct.i2c_mux_core* %muxc, %struct.i2c_mux_core** %muxc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_mux_core** %muxc.addr, metadata !5689, metadata !DIExpression()), !dbg !5690
  %0 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc.addr, align 8, !dbg !5691
  %priv = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %0, i32 0, i32 3, !dbg !5692
  %1 = load i8*, i8** %priv, align 8, !dbg !5692
  ret i8* %1, !dbg !5693
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @regmap_update_bits(%struct.regmap* %map, i32 %reg, i32 %mask, i32 %val) #2 !dbg !5694 {
entry:
  %map.addr = alloca %struct.regmap*, align 8
  %reg.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store %struct.regmap* %map, %struct.regmap** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regmap** %map.addr, metadata !5697, metadata !DIExpression()), !dbg !5698
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !5699, metadata !DIExpression()), !dbg !5700
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !5701, metadata !DIExpression()), !dbg !5702
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5703, metadata !DIExpression()), !dbg !5704
  %0 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5705
  %1 = load i32, i32* %reg.addr, align 4, !dbg !5706
  %2 = load i32, i32* %mask.addr, align 4, !dbg !5707
  %3 = load i32, i32* %val.addr, align 4, !dbg !5708
  %call = call i32 @regmap_update_bits_base(%struct.regmap* %0, i32 %1, i32 %2, i32 %3, i8* null, i1 zeroext false, i1 zeroext false) #9, !dbg !5709
  ret i32 %call, !dbg !5710
}

; Function Attrs: noredzone
declare dso_local i32 @regmap_update_bits_base(%struct.regmap*, i32, i32, i32, i8*, i1 zeroext, i1 zeroext) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtl2830_init(%struct.dvb_frontend* %fe) #2 !dbg !5711 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %dev = alloca %struct.rtl2830_dev*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %tab = alloca [36 x %struct.rtl2830_reg_val_mask], align 16
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5712, metadata !DIExpression()), !dbg !5713
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !5714, metadata !DIExpression()), !dbg !5715
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5716
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5717
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5717
  %2 = bitcast i8* %1 to %struct.i2c_client*, !dbg !5716
  store %struct.i2c_client* %2, %struct.i2c_client** %client, align 8, !dbg !5715
  call void @llvm.dbg.declare(metadata %struct.rtl2830_dev** %dev, metadata !5718, metadata !DIExpression()), !dbg !5719
  %3 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5720
  %call = call i8* @i2c_get_clientdata(%struct.i2c_client* %3) #9, !dbg !5721
  %4 = bitcast i8* %call to %struct.rtl2830_dev*, !dbg !5721
  store %struct.rtl2830_dev* %4, %struct.rtl2830_dev** %dev, align 8, !dbg !5719
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !5722, metadata !DIExpression()), !dbg !5723
  %5 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !5724
  %fe1 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %5, i32 0, i32 4, !dbg !5725
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %fe1, i32 0, i32 8, !dbg !5726
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !5723
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5727, metadata !DIExpression()), !dbg !5728
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5729, metadata !DIExpression()), !dbg !5730
  call void @llvm.dbg.declare(metadata [36 x %struct.rtl2830_reg_val_mask]* %tab, metadata !5731, metadata !DIExpression()), !dbg !5740
  %arrayinit.begin = getelementptr inbounds [36 x %struct.rtl2830_reg_val_mask], [36 x %struct.rtl2830_reg_val_mask]* %tab, i64 0, i64 0, !dbg !5741
  %reg = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.begin, i32 0, i32 0, !dbg !5742
  store i16 13, i16* %reg, align 4, !dbg !5742
  %val = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.begin, i32 0, i32 1, !dbg !5742
  store i8 1, i8* %val, align 2, !dbg !5742
  %mask = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.begin, i32 0, i32 2, !dbg !5742
  store i8 3, i8* %mask, align 1, !dbg !5742
  %arrayinit.element = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.begin, i64 1, !dbg !5741
  %reg2 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element, i32 0, i32 0, !dbg !5743
  store i16 13, i16* %reg2, align 4, !dbg !5743
  %val3 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element, i32 0, i32 1, !dbg !5743
  store i8 16, i8* %val3, align 2, !dbg !5743
  %mask4 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element, i32 0, i32 2, !dbg !5743
  store i8 16, i8* %mask4, align 1, !dbg !5743
  %arrayinit.element5 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element, i64 1, !dbg !5741
  %reg6 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element5, i32 0, i32 0, !dbg !5744
  store i16 260, i16* %reg6, align 4, !dbg !5744
  %val7 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element5, i32 0, i32 1, !dbg !5744
  store i8 0, i8* %val7, align 2, !dbg !5744
  %mask8 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element5, i32 0, i32 2, !dbg !5744
  store i8 30, i8* %mask8, align 1, !dbg !5744
  %arrayinit.element9 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element5, i64 1, !dbg !5741
  %reg10 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element9, i32 0, i32 0, !dbg !5745
  store i16 261, i16* %reg10, align 4, !dbg !5745
  %val11 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element9, i32 0, i32 1, !dbg !5745
  store i8 -128, i8* %val11, align 2, !dbg !5745
  %mask12 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element9, i32 0, i32 2, !dbg !5745
  store i8 -128, i8* %mask12, align 1, !dbg !5745
  %arrayinit.element13 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element9, i64 1, !dbg !5741
  %reg14 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element13, i32 0, i32 0, !dbg !5746
  store i16 272, i16* %reg14, align 4, !dbg !5746
  %val15 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element13, i32 0, i32 1, !dbg !5746
  store i8 2, i8* %val15, align 2, !dbg !5746
  %mask16 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element13, i32 0, i32 2, !dbg !5746
  store i8 3, i8* %mask16, align 1, !dbg !5746
  %arrayinit.element17 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element13, i64 1, !dbg !5741
  %reg18 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element17, i32 0, i32 0, !dbg !5747
  store i16 272, i16* %reg18, align 4, !dbg !5747
  %val19 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element17, i32 0, i32 1, !dbg !5747
  store i8 8, i8* %val19, align 2, !dbg !5747
  %mask20 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element17, i32 0, i32 2, !dbg !5747
  store i8 12, i8* %mask20, align 1, !dbg !5747
  %arrayinit.element21 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element17, i64 1, !dbg !5741
  %reg22 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element21, i32 0, i32 0, !dbg !5748
  store i16 379, i16* %reg22, align 4, !dbg !5748
  %val23 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element21, i32 0, i32 1, !dbg !5748
  store i8 0, i8* %val23, align 2, !dbg !5748
  %mask24 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element21, i32 0, i32 2, !dbg !5748
  store i8 64, i8* %mask24, align 1, !dbg !5748
  %arrayinit.element25 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element21, i64 1, !dbg !5741
  %reg26 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element25, i32 0, i32 0, !dbg !5749
  store i16 381, i16* %reg26, align 4, !dbg !5749
  %val27 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element25, i32 0, i32 1, !dbg !5749
  store i8 5, i8* %val27, align 2, !dbg !5749
  %mask28 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element25, i32 0, i32 2, !dbg !5749
  store i8 15, i8* %mask28, align 1, !dbg !5749
  %arrayinit.element29 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element25, i64 1, !dbg !5741
  %reg30 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element29, i32 0, i32 0, !dbg !5750
  store i16 381, i16* %reg30, align 4, !dbg !5750
  %val31 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element29, i32 0, i32 1, !dbg !5750
  store i8 80, i8* %val31, align 2, !dbg !5750
  %mask32 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element29, i32 0, i32 2, !dbg !5750
  store i8 -16, i8* %mask32, align 1, !dbg !5750
  %arrayinit.element33 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element29, i64 1, !dbg !5741
  %reg34 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element33, i32 0, i32 0, !dbg !5751
  store i16 396, i16* %reg34, align 4, !dbg !5751
  %val35 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element33, i32 0, i32 1, !dbg !5751
  store i8 8, i8* %val35, align 2, !dbg !5751
  %mask36 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element33, i32 0, i32 2, !dbg !5751
  store i8 15, i8* %mask36, align 1, !dbg !5751
  %arrayinit.element37 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element33, i64 1, !dbg !5741
  %reg38 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element37, i32 0, i32 0, !dbg !5752
  store i16 397, i16* %reg38, align 4, !dbg !5752
  %val39 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element37, i32 0, i32 1, !dbg !5752
  store i8 0, i8* %val39, align 2, !dbg !5752
  %mask40 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element37, i32 0, i32 2, !dbg !5752
  store i8 -64, i8* %mask40, align 1, !dbg !5752
  %arrayinit.element41 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element37, i64 1, !dbg !5741
  %reg42 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element41, i32 0, i32 0, !dbg !5753
  store i16 392, i16* %reg42, align 4, !dbg !5753
  %val43 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element41, i32 0, i32 1, !dbg !5753
  store i8 5, i8* %val43, align 2, !dbg !5753
  %mask44 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element41, i32 0, i32 2, !dbg !5753
  store i8 15, i8* %mask44, align 1, !dbg !5753
  %arrayinit.element45 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element41, i64 1, !dbg !5741
  %reg46 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element45, i32 0, i32 0, !dbg !5754
  store i16 393, i16* %reg46, align 4, !dbg !5754
  %val47 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element45, i32 0, i32 1, !dbg !5754
  store i8 0, i8* %val47, align 2, !dbg !5754
  %mask48 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element45, i32 0, i32 2, !dbg !5754
  store i8 -4, i8* %mask48, align 1, !dbg !5754
  %arrayinit.element49 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element45, i64 1, !dbg !5741
  %reg50 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element49, i32 0, i32 0, !dbg !5755
  store i16 725, i16* %reg50, align 4, !dbg !5755
  %val51 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element49, i32 0, i32 1, !dbg !5755
  store i8 2, i8* %val51, align 2, !dbg !5755
  %mask52 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element49, i32 0, i32 2, !dbg !5755
  store i8 2, i8* %mask52, align 1, !dbg !5755
  %arrayinit.element53 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element49, i64 1, !dbg !5741
  %reg54 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element53, i32 0, i32 0, !dbg !5756
  store i16 753, i16* %reg54, align 4, !dbg !5756
  %val55 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element53, i32 0, i32 1, !dbg !5756
  store i8 2, i8* %val55, align 2, !dbg !5756
  %mask56 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element53, i32 0, i32 2, !dbg !5756
  store i8 6, i8* %mask56, align 1, !dbg !5756
  %arrayinit.element57 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element53, i64 1, !dbg !5741
  %reg58 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element57, i32 0, i32 0, !dbg !5757
  store i16 753, i16* %reg58, align 4, !dbg !5757
  %val59 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element57, i32 0, i32 1, !dbg !5757
  store i8 32, i8* %val59, align 2, !dbg !5757
  %mask60 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element57, i32 0, i32 2, !dbg !5757
  store i8 -8, i8* %mask60, align 1, !dbg !5757
  %arrayinit.element61 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element57, i64 1, !dbg !5741
  %reg62 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element61, i32 0, i32 0, !dbg !5758
  store i16 365, i16* %reg62, align 4, !dbg !5758
  %val63 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element61, i32 0, i32 1, !dbg !5758
  store i8 0, i8* %val63, align 2, !dbg !5758
  %mask64 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element61, i32 0, i32 2, !dbg !5758
  store i8 1, i8* %mask64, align 1, !dbg !5758
  %arrayinit.element65 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element61, i64 1, !dbg !5741
  %reg66 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element65, i32 0, i32 0, !dbg !5759
  store i16 422, i16* %reg66, align 4, !dbg !5759
  %val67 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element65, i32 0, i32 1, !dbg !5759
  store i8 0, i8* %val67, align 2, !dbg !5759
  %mask68 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element65, i32 0, i32 2, !dbg !5759
  store i8 -128, i8* %mask68, align 1, !dbg !5759
  %arrayinit.element69 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element65, i64 1, !dbg !5741
  %reg70 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element69, i32 0, i32 0, !dbg !5760
  store i16 262, i16* %reg70, align 4, !dbg !5760
  %val71 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element69, i32 0, i32 1, !dbg !5760
  %6 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !5761
  %pdata = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %6, i32 0, i32 0, !dbg !5762
  %7 = load %struct.rtl2830_platform_data*, %struct.rtl2830_platform_data** %pdata, align 8, !dbg !5762
  %vtop = getelementptr inbounds %struct.rtl2830_platform_data, %struct.rtl2830_platform_data* %7, i32 0, i32 2, !dbg !5763
  %8 = load i8, i8* %vtop, align 1, !dbg !5763
  store i8 %8, i8* %val71, align 2, !dbg !5760
  %mask72 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element69, i32 0, i32 2, !dbg !5760
  store i8 63, i8* %mask72, align 1, !dbg !5760
  %arrayinit.element73 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element69, i64 1, !dbg !5741
  %reg74 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element73, i32 0, i32 0, !dbg !5764
  store i16 263, i16* %reg74, align 4, !dbg !5764
  %val75 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element73, i32 0, i32 1, !dbg !5764
  %9 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !5765
  %pdata76 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %9, i32 0, i32 0, !dbg !5766
  %10 = load %struct.rtl2830_platform_data*, %struct.rtl2830_platform_data** %pdata76, align 8, !dbg !5766
  %krf = getelementptr inbounds %struct.rtl2830_platform_data, %struct.rtl2830_platform_data* %10, i32 0, i32 3, !dbg !5767
  %11 = load i8, i8* %krf, align 2, !dbg !5767
  store i8 %11, i8* %val75, align 2, !dbg !5764
  %mask77 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element73, i32 0, i32 2, !dbg !5764
  store i8 63, i8* %mask77, align 1, !dbg !5764
  %arrayinit.element78 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element73, i64 1, !dbg !5741
  %reg79 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element78, i32 0, i32 0, !dbg !5768
  store i16 274, i16* %reg79, align 4, !dbg !5768
  %val80 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element78, i32 0, i32 1, !dbg !5768
  store i8 40, i8* %val80, align 2, !dbg !5768
  %mask81 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element78, i32 0, i32 2, !dbg !5768
  store i8 -1, i8* %mask81, align 1, !dbg !5768
  %arrayinit.element82 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element78, i64 1, !dbg !5741
  %reg83 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element82, i32 0, i32 0, !dbg !5769
  store i16 259, i16* %reg83, align 4, !dbg !5769
  %val84 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element82, i32 0, i32 1, !dbg !5769
  %12 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !5770
  %pdata85 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %12, i32 0, i32 0, !dbg !5771
  %13 = load %struct.rtl2830_platform_data*, %struct.rtl2830_platform_data** %pdata85, align 8, !dbg !5771
  %agc_targ_val = getelementptr inbounds %struct.rtl2830_platform_data, %struct.rtl2830_platform_data* %13, i32 0, i32 4, !dbg !5772
  %14 = load i8, i8* %agc_targ_val, align 1, !dbg !5772
  store i8 %14, i8* %val84, align 2, !dbg !5769
  %mask86 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element82, i32 0, i32 2, !dbg !5769
  store i8 -1, i8* %mask86, align 1, !dbg !5769
  %arrayinit.element87 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element82, i64 1, !dbg !5741
  %reg88 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element87, i32 0, i32 0, !dbg !5773
  store i16 10, i16* %reg88, align 4, !dbg !5773
  %val89 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element87, i32 0, i32 1, !dbg !5773
  store i8 2, i8* %val89, align 2, !dbg !5773
  %mask90 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element87, i32 0, i32 2, !dbg !5773
  store i8 7, i8* %mask90, align 1, !dbg !5773
  %arrayinit.element91 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element87, i64 1, !dbg !5741
  %reg92 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element91, i32 0, i32 0, !dbg !5774
  store i16 320, i16* %reg92, align 4, !dbg !5774
  %val93 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element91, i32 0, i32 1, !dbg !5774
  store i8 12, i8* %val93, align 2, !dbg !5774
  %mask94 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element91, i32 0, i32 2, !dbg !5774
  store i8 60, i8* %mask94, align 1, !dbg !5774
  %arrayinit.element95 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element91, i64 1, !dbg !5741
  %reg96 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element95, i32 0, i32 0, !dbg !5775
  store i16 320, i16* %reg96, align 4, !dbg !5775
  %val97 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element95, i32 0, i32 1, !dbg !5775
  store i8 64, i8* %val97, align 2, !dbg !5775
  %mask98 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element95, i32 0, i32 2, !dbg !5775
  store i8 -64, i8* %mask98, align 1, !dbg !5775
  %arrayinit.element99 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element95, i64 1, !dbg !5741
  %reg100 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element99, i32 0, i32 0, !dbg !5776
  store i16 347, i16* %reg100, align 4, !dbg !5776
  %val101 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element99, i32 0, i32 1, !dbg !5776
  store i8 5, i8* %val101, align 2, !dbg !5776
  %mask102 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element99, i32 0, i32 2, !dbg !5776
  store i8 7, i8* %mask102, align 1, !dbg !5776
  %arrayinit.element103 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element99, i64 1, !dbg !5741
  %reg104 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element103, i32 0, i32 0, !dbg !5777
  store i16 347, i16* %reg104, align 4, !dbg !5777
  %val105 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element103, i32 0, i32 1, !dbg !5777
  store i8 40, i8* %val105, align 2, !dbg !5777
  %mask106 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element103, i32 0, i32 2, !dbg !5777
  store i8 56, i8* %mask106, align 1, !dbg !5777
  %arrayinit.element107 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element103, i64 1, !dbg !5741
  %reg108 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element107, i32 0, i32 0, !dbg !5778
  store i16 348, i16* %reg108, align 4, !dbg !5778
  %val109 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element107, i32 0, i32 1, !dbg !5778
  store i8 5, i8* %val109, align 2, !dbg !5778
  %mask110 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element107, i32 0, i32 2, !dbg !5778
  store i8 7, i8* %mask110, align 1, !dbg !5778
  %arrayinit.element111 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element107, i64 1, !dbg !5741
  %reg112 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element111, i32 0, i32 0, !dbg !5779
  store i16 348, i16* %reg112, align 4, !dbg !5779
  %val113 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element111, i32 0, i32 1, !dbg !5779
  store i8 40, i8* %val113, align 2, !dbg !5779
  %mask114 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element111, i32 0, i32 2, !dbg !5779
  store i8 56, i8* %mask114, align 1, !dbg !5779
  %arrayinit.element115 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element111, i64 1, !dbg !5741
  %reg116 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element115, i32 0, i32 0, !dbg !5780
  store i16 277, i16* %reg116, align 4, !dbg !5780
  %val117 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element115, i32 0, i32 1, !dbg !5780
  %15 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !5781
  %pdata118 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %15, i32 0, i32 0, !dbg !5782
  %16 = load %struct.rtl2830_platform_data*, %struct.rtl2830_platform_data** %pdata118, align 8, !dbg !5782
  %spec_inv = getelementptr inbounds %struct.rtl2830_platform_data, %struct.rtl2830_platform_data* %16, i32 0, i32 1, !dbg !5783
  %17 = load i8, i8* %spec_inv, align 4, !dbg !5783
  %tobool = trunc i8 %17 to i1, !dbg !5783
  %conv = zext i1 %tobool to i8, !dbg !5781
  store i8 %conv, i8* %val117, align 2, !dbg !5780
  %mask119 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element115, i32 0, i32 2, !dbg !5780
  store i8 1, i8* %mask119, align 1, !dbg !5780
  %arrayinit.element120 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element115, i64 1, !dbg !5741
  %reg121 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element120, i32 0, i32 0, !dbg !5784
  store i16 367, i16* %reg121, align 4, !dbg !5784
  %val122 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element120, i32 0, i32 1, !dbg !5784
  store i8 1, i8* %val122, align 2, !dbg !5784
  %mask123 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element120, i32 0, i32 2, !dbg !5784
  store i8 7, i8* %mask123, align 1, !dbg !5784
  %arrayinit.element124 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element120, i64 1, !dbg !5741
  %reg125 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element124, i32 0, i32 0, !dbg !5785
  store i16 368, i16* %reg125, align 4, !dbg !5785
  %val126 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element124, i32 0, i32 1, !dbg !5785
  store i8 24, i8* %val126, align 2, !dbg !5785
  %mask127 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element124, i32 0, i32 2, !dbg !5785
  store i8 56, i8* %mask127, align 1, !dbg !5785
  %arrayinit.element128 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element124, i64 1, !dbg !5741
  %reg129 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element128, i32 0, i32 0, !dbg !5786
  store i16 370, i16* %reg129, align 4, !dbg !5786
  %val130 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element128, i32 0, i32 1, !dbg !5786
  store i8 15, i8* %val130, align 2, !dbg !5786
  %mask131 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element128, i32 0, i32 2, !dbg !5786
  store i8 15, i8* %mask131, align 1, !dbg !5786
  %arrayinit.element132 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element128, i64 1, !dbg !5741
  %reg133 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element132, i32 0, i32 0, !dbg !5787
  store i16 371, i16* %reg133, align 4, !dbg !5787
  %val134 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element132, i32 0, i32 1, !dbg !5787
  store i8 8, i8* %val134, align 2, !dbg !5787
  %mask135 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element132, i32 0, i32 2, !dbg !5787
  store i8 56, i8* %mask135, align 1, !dbg !5787
  %arrayinit.element136 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element132, i64 1, !dbg !5741
  %reg137 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element136, i32 0, i32 0, !dbg !5788
  store i16 373, i16* %reg137, align 4, !dbg !5788
  %val138 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element136, i32 0, i32 1, !dbg !5788
  store i8 1, i8* %val138, align 2, !dbg !5788
  %mask139 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element136, i32 0, i32 2, !dbg !5788
  store i8 7, i8* %mask139, align 1, !dbg !5788
  %arrayinit.element140 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element136, i64 1, !dbg !5741
  %reg141 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element140, i32 0, i32 0, !dbg !5789
  store i16 374, i16* %reg141, align 4, !dbg !5789
  %val142 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element140, i32 0, i32 1, !dbg !5789
  store i8 0, i8* %val142, align 2, !dbg !5789
  %mask143 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayinit.element140, i32 0, i32 2, !dbg !5789
  store i8 -64, i8* %mask143, align 1, !dbg !5789
  store i32 0, i32* %i, align 4, !dbg !5790
  br label %for.cond, !dbg !5792

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i32, i32* %i, align 4, !dbg !5793
  %conv144 = sext i32 %18 to i64, !dbg !5793
  %cmp = icmp ult i64 %conv144, 36, !dbg !5795
  br i1 %cmp, label %for.body, label %for.end, !dbg !5796

for.body:                                         ; preds = %for.cond
  %19 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5797
  %20 = load i32, i32* %i, align 4, !dbg !5799
  %idxprom = sext i32 %20 to i64, !dbg !5800
  %arrayidx = getelementptr [36 x %struct.rtl2830_reg_val_mask], [36 x %struct.rtl2830_reg_val_mask]* %tab, i64 0, i64 %idxprom, !dbg !5800
  %reg146 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayidx, i32 0, i32 0, !dbg !5801
  %21 = load i16, i16* %reg146, align 4, !dbg !5801
  %conv147 = zext i16 %21 to i32, !dbg !5800
  %22 = load i32, i32* %i, align 4, !dbg !5802
  %idxprom148 = sext i32 %22 to i64, !dbg !5803
  %arrayidx149 = getelementptr [36 x %struct.rtl2830_reg_val_mask], [36 x %struct.rtl2830_reg_val_mask]* %tab, i64 0, i64 %idxprom148, !dbg !5803
  %mask150 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayidx149, i32 0, i32 2, !dbg !5804
  %23 = load i8, i8* %mask150, align 1, !dbg !5804
  %conv151 = zext i8 %23 to i32, !dbg !5803
  %24 = load i32, i32* %i, align 4, !dbg !5805
  %idxprom152 = sext i32 %24 to i64, !dbg !5806
  %arrayidx153 = getelementptr [36 x %struct.rtl2830_reg_val_mask], [36 x %struct.rtl2830_reg_val_mask]* %tab, i64 0, i64 %idxprom152, !dbg !5806
  %val154 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %arrayidx153, i32 0, i32 1, !dbg !5807
  %25 = load i8, i8* %val154, align 2, !dbg !5807
  %conv155 = zext i8 %25 to i32, !dbg !5806
  %call156 = call i32 @rtl2830_update_bits(%struct.i2c_client* %19, i32 %conv147, i32 %conv151, i32 %conv155) #9, !dbg !5808
  store i32 %call156, i32* %ret, align 4, !dbg !5809
  %26 = load i32, i32* %ret, align 4, !dbg !5810
  %tobool157 = icmp ne i32 %26, 0, !dbg !5810
  br i1 %tobool157, label %if.then, label %if.end, !dbg !5812

if.then:                                          ; preds = %for.body
  br label %err, !dbg !5813

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5814

for.inc:                                          ; preds = %if.end
  %27 = load i32, i32* %i, align 4, !dbg !5815
  %inc = add i32 %27, 1, !dbg !5815
  store i32 %inc, i32* %i, align 4, !dbg !5815
  br label %for.cond, !dbg !5816, !llvm.loop !5817

for.end:                                          ; preds = %for.cond
  %28 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5819
  %call158 = call i32 @rtl2830_bulk_write(%struct.i2c_client* %28, i32 399, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64 2) #9, !dbg !5820
  store i32 %call158, i32* %ret, align 4, !dbg !5821
  %29 = load i32, i32* %ret, align 4, !dbg !5822
  %tobool159 = icmp ne i32 %29, 0, !dbg !5822
  br i1 %tobool159, label %if.then160, label %if.end161, !dbg !5824

if.then160:                                       ; preds = %for.end
  br label %err, !dbg !5825

if.end161:                                        ; preds = %for.end
  %30 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5826
  %call162 = call i32 @rtl2830_bulk_write(%struct.i2c_client* %30, i32 405, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i64 8) #9, !dbg !5827
  store i32 %call162, i32* %ret, align 4, !dbg !5828
  %31 = load i32, i32* %ret, align 4, !dbg !5829
  %tobool163 = icmp ne i32 %31, 0, !dbg !5829
  br i1 %tobool163, label %if.then164, label %if.end165, !dbg !5831

if.then164:                                       ; preds = %if.end161
  br label %err, !dbg !5832

if.end165:                                        ; preds = %if.end161
  %32 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5833
  %call166 = call i32 @rtl2830_update_bits(%struct.i2c_client* %32, i32 257, i32 4, i32 4) #9, !dbg !5834
  store i32 %call166, i32* %ret, align 4, !dbg !5835
  %33 = load i32, i32* %ret, align 4, !dbg !5836
  %tobool167 = icmp ne i32 %33, 0, !dbg !5836
  br i1 %tobool167, label %if.then168, label %if.end169, !dbg !5838

if.then168:                                       ; preds = %if.end165
  br label %err, !dbg !5839

if.end169:                                        ; preds = %if.end165
  %34 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5840
  %call170 = call i32 @rtl2830_update_bits(%struct.i2c_client* %34, i32 257, i32 4, i32 0) #9, !dbg !5841
  store i32 %call170, i32* %ret, align 4, !dbg !5842
  %35 = load i32, i32* %ret, align 4, !dbg !5843
  %tobool171 = icmp ne i32 %35, 0, !dbg !5843
  br i1 %tobool171, label %if.then172, label %if.end173, !dbg !5845

if.then172:                                       ; preds = %if.end169
  br label %err, !dbg !5846

if.end173:                                        ; preds = %if.end169
  %36 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5847
  %strength = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %36, i32 0, i32 42, !dbg !5848
  %len = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %strength, i32 0, i32 0, !dbg !5849
  store i8 1, i8* %len, align 4, !dbg !5850
  %37 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5851
  %strength174 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %37, i32 0, i32 42, !dbg !5852
  %stat = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %strength174, i32 0, i32 1, !dbg !5853
  %arrayidx175 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat, i64 0, i64 0, !dbg !5851
  %scale = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx175, i32 0, i32 0, !dbg !5854
  store i8 0, i8* %scale, align 1, !dbg !5855
  %38 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5856
  %cnr = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %38, i32 0, i32 43, !dbg !5857
  %len176 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %cnr, i32 0, i32 0, !dbg !5858
  store i8 1, i8* %len176, align 1, !dbg !5859
  %39 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5860
  %cnr177 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %39, i32 0, i32 43, !dbg !5861
  %stat178 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %cnr177, i32 0, i32 1, !dbg !5862
  %arrayidx179 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat178, i64 0, i64 0, !dbg !5860
  %scale180 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx179, i32 0, i32 0, !dbg !5863
  store i8 0, i8* %scale180, align 1, !dbg !5864
  %40 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5865
  %post_bit_error = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %40, i32 0, i32 46, !dbg !5866
  %len181 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %post_bit_error, i32 0, i32 0, !dbg !5867
  store i8 1, i8* %len181, align 4, !dbg !5868
  %41 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5869
  %post_bit_error182 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %41, i32 0, i32 46, !dbg !5870
  %stat183 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %post_bit_error182, i32 0, i32 1, !dbg !5871
  %arrayidx184 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat183, i64 0, i64 0, !dbg !5869
  %scale185 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx184, i32 0, i32 0, !dbg !5872
  store i8 0, i8* %scale185, align 1, !dbg !5873
  %42 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5874
  %post_bit_count = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %42, i32 0, i32 47, !dbg !5875
  %len186 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %post_bit_count, i32 0, i32 0, !dbg !5876
  store i8 1, i8* %len186, align 1, !dbg !5877
  %43 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5878
  %post_bit_count187 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %43, i32 0, i32 47, !dbg !5879
  %stat188 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %post_bit_count187, i32 0, i32 1, !dbg !5880
  %arrayidx189 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat188, i64 0, i64 0, !dbg !5878
  %scale190 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx189, i32 0, i32 0, !dbg !5881
  store i8 0, i8* %scale190, align 1, !dbg !5882
  %44 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !5883
  %sleeping = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %44, i32 0, i32 5, !dbg !5884
  store i8 0, i8* %sleeping, align 8, !dbg !5885
  %45 = load i32, i32* %ret, align 4, !dbg !5886
  store i32 %45, i32* %retval, align 4, !dbg !5887
  br label %return, !dbg !5887

err:                                              ; preds = %if.then172, %if.then168, %if.then164, %if.then160, %if.then
  call void @llvm.dbg.label(metadata !5888), !dbg !5889
  %46 = load i32, i32* %ret, align 4, !dbg !5890
  store i32 %46, i32* %retval, align 4, !dbg !5891
  br label %return, !dbg !5891

return:                                           ; preds = %err, %if.end173
  %47 = load i32, i32* %retval, align 4, !dbg !5892
  ret i32 %47, !dbg !5892
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtl2830_sleep(%struct.dvb_frontend* %fe) #2 !dbg !5893 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %dev = alloca %struct.rtl2830_dev*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5894, metadata !DIExpression()), !dbg !5895
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !5896, metadata !DIExpression()), !dbg !5897
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5898
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5899
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5899
  %2 = bitcast i8* %1 to %struct.i2c_client*, !dbg !5898
  store %struct.i2c_client* %2, %struct.i2c_client** %client, align 8, !dbg !5897
  call void @llvm.dbg.declare(metadata %struct.rtl2830_dev** %dev, metadata !5900, metadata !DIExpression()), !dbg !5901
  %3 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5902
  %call = call i8* @i2c_get_clientdata(%struct.i2c_client* %3) #9, !dbg !5903
  %4 = bitcast i8* %call to %struct.rtl2830_dev*, !dbg !5903
  store %struct.rtl2830_dev* %4, %struct.rtl2830_dev** %dev, align 8, !dbg !5901
  %5 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !5904
  %sleeping = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %5, i32 0, i32 5, !dbg !5905
  store i8 1, i8* %sleeping, align 8, !dbg !5906
  %6 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !5907
  %fe_status = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %6, i32 0, i32 7, !dbg !5908
  store i32 0, i32* %fe_status, align 8, !dbg !5909
  ret i32 0, !dbg !5910
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtl2830_set_frontend(%struct.dvb_frontend* %fe) #2 !dbg !4652 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %dev = alloca %struct.rtl2830_dev*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %num = alloca i64, align 8
  %buf = alloca [3 x i8], align 1
  %u8tmp = alloca i8, align 1
  %if_ctl = alloca i32, align 4
  %if_frequency = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5911, metadata !DIExpression()), !dbg !5912
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !5913, metadata !DIExpression()), !dbg !5914
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5915
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5916
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5916
  %2 = bitcast i8* %1 to %struct.i2c_client*, !dbg !5915
  store %struct.i2c_client* %2, %struct.i2c_client** %client, align 8, !dbg !5914
  call void @llvm.dbg.declare(metadata %struct.rtl2830_dev** %dev, metadata !5917, metadata !DIExpression()), !dbg !5918
  %3 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5919
  %call = call i8* @i2c_get_clientdata(%struct.i2c_client* %3) #9, !dbg !5920
  %4 = bitcast i8* %call to %struct.rtl2830_dev*, !dbg !5920
  store %struct.rtl2830_dev* %4, %struct.rtl2830_dev** %dev, align 8, !dbg !5918
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !5921, metadata !DIExpression()), !dbg !5922
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5923
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 8, !dbg !5924
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !5922
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5925, metadata !DIExpression()), !dbg !5926
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5927, metadata !DIExpression()), !dbg !5928
  call void @llvm.dbg.declare(metadata i64* %num, metadata !5929, metadata !DIExpression()), !dbg !5930
  call void @llvm.dbg.declare(metadata [3 x i8]* %buf, metadata !5931, metadata !DIExpression()), !dbg !5933
  call void @llvm.dbg.declare(metadata i8* %u8tmp, metadata !5934, metadata !DIExpression()), !dbg !5935
  call void @llvm.dbg.declare(metadata i32* %if_ctl, metadata !5936, metadata !DIExpression()), !dbg !5937
  call void @llvm.dbg.declare(metadata i32* %if_frequency, metadata !5938, metadata !DIExpression()), !dbg !5939
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5940
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 1, !dbg !5942
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !5943
  %set_params = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops, i32 0, i32 6, !dbg !5944
  %7 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params, align 8, !dbg !5944
  %tobool = icmp ne i32 (%struct.dvb_frontend*)* %7, null, !dbg !5940
  br i1 %tobool, label %if.then, label %if.end, !dbg !5945

if.then:                                          ; preds = %entry
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5946
  %ops1 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 1, !dbg !5947
  %tuner_ops2 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops1, i32 0, i32 30, !dbg !5948
  %set_params3 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops2, i32 0, i32 6, !dbg !5949
  %9 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params3, align 8, !dbg !5949
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5950
  %call4 = call i32 %9(%struct.dvb_frontend* %10) #9, !dbg !5946
  br label %if.end, !dbg !5946

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5951
  %bandwidth_hz = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %11, i32 0, i32 7, !dbg !5952
  %12 = load i32, i32* %bandwidth_hz, align 4, !dbg !5952
  switch i32 %12, label %sw.default [
    i32 6000000, label %sw.bb
    i32 7000000, label %sw.bb5
    i32 8000000, label %sw.bb6
  ], !dbg !5953

sw.bb:                                            ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !5954
  br label %sw.epilog, !dbg !5956

sw.bb5:                                           ; preds = %if.end
  store i32 1, i32* %i, align 4, !dbg !5957
  br label %sw.epilog, !dbg !5958

sw.bb6:                                           ; preds = %if.end
  store i32 2, i32* %i, align 4, !dbg !5959
  br label %sw.epilog, !dbg !5960

sw.default:                                       ; preds = %if.end
  %13 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5961
  %dev7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 4, !dbg !5961
  %14 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5961
  %bandwidth_hz8 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %14, i32 0, i32 7, !dbg !5961
  %15 = load i32, i32* %bandwidth_hz8, align 4, !dbg !5961
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %15) #10, !dbg !5961
  store i32 -22, i32* %retval, align 4, !dbg !5962
  br label %return, !dbg !5962

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %sw.bb
  %16 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5963
  %17 = load i32, i32* %i, align 4, !dbg !5964
  %shl = shl i32 %17, 1, !dbg !5965
  %call9 = call i32 @rtl2830_update_bits(%struct.i2c_client* %16, i32 8, i32 6, i32 %shl) #9, !dbg !5966
  store i32 %call9, i32* %ret, align 4, !dbg !5967
  %18 = load i32, i32* %ret, align 4, !dbg !5968
  %tobool10 = icmp ne i32 %18, 0, !dbg !5968
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !5970

if.then11:                                        ; preds = %sw.epilog
  br label %err, !dbg !5971

if.end12:                                         ; preds = %sw.epilog
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5972
  %ops13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %19, i32 0, i32 1, !dbg !5974
  %tuner_ops14 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops13, i32 0, i32 30, !dbg !5975
  %get_if_frequency = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops14, i32 0, i32 11, !dbg !5976
  %20 = load i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)** %get_if_frequency, align 8, !dbg !5976
  %tobool15 = icmp ne i32 (%struct.dvb_frontend*, i32*)* %20, null, !dbg !5972
  br i1 %tobool15, label %if.then16, label %if.else, !dbg !5977

if.then16:                                        ; preds = %if.end12
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5978
  %ops17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %21, i32 0, i32 1, !dbg !5979
  %tuner_ops18 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops17, i32 0, i32 30, !dbg !5980
  %get_if_frequency19 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops18, i32 0, i32 11, !dbg !5981
  %22 = load i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)** %get_if_frequency19, align 8, !dbg !5981
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5982
  %call20 = call i32 %22(%struct.dvb_frontend* %23, i32* %if_frequency) #9, !dbg !5978
  store i32 %call20, i32* %ret, align 4, !dbg !5983
  br label %if.end21, !dbg !5984

if.else:                                          ; preds = %if.end12
  store i32 -22, i32* %ret, align 4, !dbg !5985
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then16
  %24 = load i32, i32* %ret, align 4, !dbg !5986
  %tobool22 = icmp ne i32 %24, 0, !dbg !5986
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !5988

if.then23:                                        ; preds = %if.end21
  br label %err, !dbg !5989

if.end24:                                         ; preds = %if.end21
  %25 = load i32, i32* %if_frequency, align 4, !dbg !5990
  %26 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !5991
  %pdata = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %26, i32 0, i32 0, !dbg !5992
  %27 = load %struct.rtl2830_platform_data*, %struct.rtl2830_platform_data** %pdata, align 8, !dbg !5992
  %clk = getelementptr inbounds %struct.rtl2830_platform_data, %struct.rtl2830_platform_data* %27, i32 0, i32 0, !dbg !5993
  %28 = load i32, i32* %clk, align 8, !dbg !5993
  %rem = urem i32 %25, %28, !dbg !5994
  %conv = zext i32 %rem to i64, !dbg !5990
  store i64 %conv, i64* %num, align 8, !dbg !5995
  %29 = load i64, i64* %num, align 8, !dbg !5996
  %mul = mul i64 %29, 4194304, !dbg !5996
  store i64 %mul, i64* %num, align 8, !dbg !5996
  %30 = load i64, i64* %num, align 8, !dbg !5997
  %31 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !5998
  %pdata25 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %31, i32 0, i32 0, !dbg !5999
  %32 = load %struct.rtl2830_platform_data*, %struct.rtl2830_platform_data** %pdata25, align 8, !dbg !5999
  %clk26 = getelementptr inbounds %struct.rtl2830_platform_data, %struct.rtl2830_platform_data* %32, i32 0, i32 0, !dbg !6000
  %33 = load i32, i32* %clk26, align 8, !dbg !6000
  %call27 = call i64 @div_u64(i64 %30, i32 %33) #9, !dbg !6001
  store i64 %call27, i64* %num, align 8, !dbg !6002
  %34 = load i64, i64* %num, align 8, !dbg !6003
  %sub = sub i64 0, %34, !dbg !6004
  store i64 %sub, i64* %num, align 8, !dbg !6005
  %35 = load i64, i64* %num, align 8, !dbg !6006
  %and = and i64 %35, 4194303, !dbg !6007
  %conv28 = trunc i64 %and to i32, !dbg !6006
  store i32 %conv28, i32* %if_ctl, align 4, !dbg !6008
  %36 = load i32, i32* %if_ctl, align 4, !dbg !6009
  %shr = lshr i32 %36, 16, !dbg !6010
  %and29 = and i32 %shr, 63, !dbg !6011
  %conv30 = trunc i32 %and29 to i8, !dbg !6012
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6013
  store i8 %conv30, i8* %arrayidx, align 1, !dbg !6014
  %37 = load i32, i32* %if_ctl, align 4, !dbg !6015
  %shr31 = lshr i32 %37, 8, !dbg !6016
  %and32 = and i32 %shr31, 255, !dbg !6017
  %conv33 = trunc i32 %and32 to i8, !dbg !6018
  %arrayidx34 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 1, !dbg !6019
  store i8 %conv33, i8* %arrayidx34, align 1, !dbg !6020
  %38 = load i32, i32* %if_ctl, align 4, !dbg !6021
  %shr35 = lshr i32 %38, 0, !dbg !6022
  %and36 = and i32 %shr35, 255, !dbg !6023
  %conv37 = trunc i32 %and36 to i8, !dbg !6024
  %arrayidx38 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 2, !dbg !6025
  store i8 %conv37, i8* %arrayidx38, align 1, !dbg !6026
  %39 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6027
  %call39 = call i32 @rtl2830_bulk_read(%struct.i2c_client* %39, i32 281, i8* %u8tmp, i64 1) #9, !dbg !6028
  store i32 %call39, i32* %ret, align 4, !dbg !6029
  %40 = load i32, i32* %ret, align 4, !dbg !6030
  %tobool40 = icmp ne i32 %40, 0, !dbg !6030
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !6032

if.then41:                                        ; preds = %if.end24
  br label %err, !dbg !6033

if.end42:                                         ; preds = %if.end24
  %41 = load i8, i8* %u8tmp, align 1, !dbg !6034
  %conv43 = zext i8 %41 to i32, !dbg !6034
  %and44 = and i32 %conv43, 192, !dbg !6035
  %arrayidx45 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6036
  %42 = load i8, i8* %arrayidx45, align 1, !dbg !6037
  %conv46 = zext i8 %42 to i32, !dbg !6037
  %or = or i32 %conv46, %and44, !dbg !6037
  %conv47 = trunc i32 %or to i8, !dbg !6037
  store i8 %conv47, i8* %arrayidx45, align 1, !dbg !6037
  %43 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6038
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6039
  %call48 = call i32 @rtl2830_bulk_write(%struct.i2c_client* %43, i32 281, i8* %arraydecay, i64 3) #9, !dbg !6040
  store i32 %call48, i32* %ret, align 4, !dbg !6041
  %44 = load i32, i32* %ret, align 4, !dbg !6042
  %tobool49 = icmp ne i32 %44, 0, !dbg !6042
  br i1 %tobool49, label %if.then50, label %if.end51, !dbg !6044

if.then50:                                        ; preds = %if.end42
  br label %err, !dbg !6045

if.end51:                                         ; preds = %if.end42
  %45 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6046
  %46 = load i32, i32* %i, align 4, !dbg !6047
  %idxprom = sext i32 %46 to i64, !dbg !6048
  %arrayidx52 = getelementptr [3 x [34 x i8]], [3 x [34 x i8]]* @rtl2830_set_frontend.bw_params1, i64 0, i64 %idxprom, !dbg !6048
  %arrayidx53 = getelementptr [34 x i8], [34 x i8]* %arrayidx52, i64 0, i64 0, !dbg !6048
  %call54 = call i32 @rtl2830_bulk_write(%struct.i2c_client* %45, i32 284, i8* %arrayidx53, i64 17) #9, !dbg !6049
  store i32 %call54, i32* %ret, align 4, !dbg !6050
  %47 = load i32, i32* %ret, align 4, !dbg !6051
  %tobool55 = icmp ne i32 %47, 0, !dbg !6051
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !6053

if.then56:                                        ; preds = %if.end51
  br label %err, !dbg !6054

if.end57:                                         ; preds = %if.end51
  %48 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6055
  %49 = load i32, i32* %i, align 4, !dbg !6056
  %idxprom58 = sext i32 %49 to i64, !dbg !6057
  %arrayidx59 = getelementptr [3 x [34 x i8]], [3 x [34 x i8]]* @rtl2830_set_frontend.bw_params1, i64 0, i64 %idxprom58, !dbg !6057
  %arrayidx60 = getelementptr [34 x i8], [34 x i8]* %arrayidx59, i64 0, i64 17, !dbg !6057
  %call61 = call i32 @rtl2830_bulk_write(%struct.i2c_client* %48, i32 301, i8* %arrayidx60, i64 17) #9, !dbg !6058
  store i32 %call61, i32* %ret, align 4, !dbg !6059
  %50 = load i32, i32* %ret, align 4, !dbg !6060
  %tobool62 = icmp ne i32 %50, 0, !dbg !6060
  br i1 %tobool62, label %if.then63, label %if.end64, !dbg !6062

if.then63:                                        ; preds = %if.end57
  br label %err, !dbg !6063

if.end64:                                         ; preds = %if.end57
  %51 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6064
  %52 = load i32, i32* %i, align 4, !dbg !6065
  %idxprom65 = sext i32 %52 to i64, !dbg !6066
  %arrayidx66 = getelementptr [3 x [6 x i8]], [3 x [6 x i8]]* @rtl2830_set_frontend.bw_params2, i64 0, i64 %idxprom65, !dbg !6066
  %arraydecay67 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx66, i64 0, i64 0, !dbg !6066
  %call68 = call i32 @rtl2830_bulk_write(%struct.i2c_client* %51, i32 413, i8* %arraydecay67, i64 6) #9, !dbg !6067
  store i32 %call68, i32* %ret, align 4, !dbg !6068
  %53 = load i32, i32* %ret, align 4, !dbg !6069
  %tobool69 = icmp ne i32 %53, 0, !dbg !6069
  br i1 %tobool69, label %if.then70, label %if.end71, !dbg !6071

if.then70:                                        ; preds = %if.end64
  br label %err, !dbg !6072

if.end71:                                         ; preds = %if.end64
  %54 = load i32, i32* %ret, align 4, !dbg !6073
  store i32 %54, i32* %retval, align 4, !dbg !6074
  br label %return, !dbg !6074

err:                                              ; preds = %if.then70, %if.then63, %if.then56, %if.then50, %if.then41, %if.then23, %if.then11
  call void @llvm.dbg.label(metadata !6075), !dbg !6076
  %55 = load i32, i32* %ret, align 4, !dbg !6077
  store i32 %55, i32* %retval, align 4, !dbg !6078
  br label %return, !dbg !6078

return:                                           ; preds = %err, %if.end71, %sw.default
  %56 = load i32, i32* %retval, align 4, !dbg !6079
  ret i32 %56, !dbg !6079
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtl2830_get_tune_settings(%struct.dvb_frontend* %fe, %struct.dvb_frontend_tune_settings* %s) #2 !dbg !6080 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %s.addr = alloca %struct.dvb_frontend_tune_settings*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6081, metadata !DIExpression()), !dbg !6082
  store %struct.dvb_frontend_tune_settings* %s, %struct.dvb_frontend_tune_settings** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend_tune_settings** %s.addr, metadata !6083, metadata !DIExpression()), !dbg !6084
  %0 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %s.addr, align 8, !dbg !6085
  %min_delay_ms = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %0, i32 0, i32 0, !dbg !6086
  store i32 500, i32* %min_delay_ms, align 4, !dbg !6087
  %1 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6088
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %1, i32 0, i32 1, !dbg !6089
  %info = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 0, !dbg !6090
  %frequency_stepsize_hz = getelementptr inbounds %struct.dvb_frontend_internal_info, %struct.dvb_frontend_internal_info* %info, i32 0, i32 3, !dbg !6091
  %2 = load i32, i32* %frequency_stepsize_hz, align 8, !dbg !6091
  %mul = mul i32 %2, 2, !dbg !6092
  %3 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %s.addr, align 8, !dbg !6093
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %3, i32 0, i32 1, !dbg !6094
  store i32 %mul, i32* %step_size, align 4, !dbg !6095
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6096
  %ops1 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %4, i32 0, i32 1, !dbg !6097
  %info2 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops1, i32 0, i32 0, !dbg !6098
  %frequency_stepsize_hz3 = getelementptr inbounds %struct.dvb_frontend_internal_info, %struct.dvb_frontend_internal_info* %info2, i32 0, i32 3, !dbg !6099
  %5 = load i32, i32* %frequency_stepsize_hz3, align 8, !dbg !6099
  %mul4 = mul i32 %5, 2, !dbg !6100
  %add = add i32 %mul4, 1, !dbg !6101
  %6 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %s.addr, align 8, !dbg !6102
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %6, i32 0, i32 2, !dbg !6103
  store i32 %add, i32* %max_drift, align 4, !dbg !6104
  ret i32 0, !dbg !6105
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtl2830_get_frontend(%struct.dvb_frontend* %fe, %struct.dtv_frontend_properties* %c) #2 !dbg !6106 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %c.addr = alloca %struct.dtv_frontend_properties*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %dev = alloca %struct.rtl2830_dev*, align 8
  %ret = alloca i32, align 4
  %buf = alloca [3 x i8], align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6107, metadata !DIExpression()), !dbg !6108
  store %struct.dtv_frontend_properties* %c, %struct.dtv_frontend_properties** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c.addr, metadata !6109, metadata !DIExpression()), !dbg !6110
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !6111, metadata !DIExpression()), !dbg !6112
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6113
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6114
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6114
  %2 = bitcast i8* %1 to %struct.i2c_client*, !dbg !6113
  store %struct.i2c_client* %2, %struct.i2c_client** %client, align 8, !dbg !6112
  call void @llvm.dbg.declare(metadata %struct.rtl2830_dev** %dev, metadata !6115, metadata !DIExpression()), !dbg !6116
  %3 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6117
  %call = call i8* @i2c_get_clientdata(%struct.i2c_client* %3) #9, !dbg !6118
  %4 = bitcast i8* %call to %struct.rtl2830_dev*, !dbg !6118
  store %struct.rtl2830_dev* %4, %struct.rtl2830_dev** %dev, align 8, !dbg !6116
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6119, metadata !DIExpression()), !dbg !6120
  call void @llvm.dbg.declare(metadata [3 x i8]* %buf, metadata !6121, metadata !DIExpression()), !dbg !6122
  %5 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !6123
  %sleeping = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %5, i32 0, i32 5, !dbg !6125
  %6 = load i8, i8* %sleeping, align 8, !dbg !6125
  %tobool = trunc i8 %6 to i1, !dbg !6125
  br i1 %tobool, label %if.then, label %if.end, !dbg !6126

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6127
  br label %return, !dbg !6127

if.end:                                           ; preds = %entry
  %7 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6128
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6129
  %call1 = call i32 @rtl2830_bulk_read(%struct.i2c_client* %7, i32 828, i8* %arraydecay, i64 2) #9, !dbg !6130
  store i32 %call1, i32* %ret, align 4, !dbg !6131
  %8 = load i32, i32* %ret, align 4, !dbg !6132
  %tobool2 = icmp ne i32 %8, 0, !dbg !6132
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !6134

if.then3:                                         ; preds = %if.end
  br label %err, !dbg !6135

if.end4:                                          ; preds = %if.end
  %9 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6136
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 2, !dbg !6137
  %call5 = call i32 @rtl2830_bulk_read(%struct.i2c_client* %9, i32 849, i8* %arrayidx, i64 1) #9, !dbg !6138
  store i32 %call5, i32* %ret, align 4, !dbg !6139
  %10 = load i32, i32* %ret, align 4, !dbg !6140
  %tobool6 = icmp ne i32 %10, 0, !dbg !6140
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !6142

if.then7:                                         ; preds = %if.end4
  br label %err, !dbg !6143

if.end8:                                          ; preds = %if.end4
  %arrayidx9 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6144
  %11 = load i8, i8* %arrayidx9, align 1, !dbg !6144
  %conv = zext i8 %11 to i32, !dbg !6144
  %shr = ashr i32 %conv, 2, !dbg !6145
  %and = and i32 %shr, 3, !dbg !6146
  switch i32 %and, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %sw.bb12
  ], !dbg !6147

sw.bb:                                            ; preds = %if.end8
  %12 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6148
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %12, i32 0, i32 1, !dbg !6150
  store i32 0, i32* %modulation, align 4, !dbg !6151
  br label %sw.epilog, !dbg !6152

sw.bb10:                                          ; preds = %if.end8
  %13 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6153
  %modulation11 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %13, i32 0, i32 1, !dbg !6154
  store i32 1, i32* %modulation11, align 4, !dbg !6155
  br label %sw.epilog, !dbg !6156

sw.bb12:                                          ; preds = %if.end8
  %14 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6157
  %modulation13 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %14, i32 0, i32 1, !dbg !6158
  store i32 3, i32* %modulation13, align 4, !dbg !6159
  br label %sw.epilog, !dbg !6160

sw.epilog:                                        ; preds = %if.end8, %sw.bb12, %sw.bb10, %sw.bb
  %arrayidx14 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 2, !dbg !6161
  %15 = load i8, i8* %arrayidx14, align 1, !dbg !6161
  %conv15 = zext i8 %15 to i32, !dbg !6161
  %shr16 = ashr i32 %conv15, 2, !dbg !6162
  %and17 = and i32 %shr16, 1, !dbg !6163
  switch i32 %and17, label %sw.epilog21 [
    i32 0, label %sw.bb18
    i32 1, label %sw.bb19
  ], !dbg !6164

sw.bb18:                                          ; preds = %sw.epilog
  %16 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6165
  %transmission_mode = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %16, i32 0, i32 6, !dbg !6167
  store i32 0, i32* %transmission_mode, align 4, !dbg !6168
  br label %sw.epilog21, !dbg !6169

sw.bb19:                                          ; preds = %sw.epilog
  %17 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6170
  %transmission_mode20 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %17, i32 0, i32 6, !dbg !6171
  store i32 1, i32* %transmission_mode20, align 4, !dbg !6172
  br label %sw.epilog21, !dbg !6173

sw.epilog21:                                      ; preds = %sw.bb19, %sw.epilog, %sw.bb18
  %arrayidx22 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 2, !dbg !6174
  %18 = load i8, i8* %arrayidx22, align 1, !dbg !6174
  %conv23 = zext i8 %18 to i32, !dbg !6174
  %shr24 = ashr i32 %conv23, 0, !dbg !6175
  %and25 = and i32 %shr24, 3, !dbg !6176
  switch i32 %and25, label %sw.epilog33 [
    i32 0, label %sw.bb26
    i32 1, label %sw.bb27
    i32 2, label %sw.bb29
    i32 3, label %sw.bb31
  ], !dbg !6177

sw.bb26:                                          ; preds = %sw.epilog21
  %19 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6178
  %guard_interval = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %19, i32 0, i32 8, !dbg !6180
  store i32 0, i32* %guard_interval, align 4, !dbg !6181
  br label %sw.epilog33, !dbg !6182

sw.bb27:                                          ; preds = %sw.epilog21
  %20 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6183
  %guard_interval28 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %20, i32 0, i32 8, !dbg !6184
  store i32 1, i32* %guard_interval28, align 4, !dbg !6185
  br label %sw.epilog33, !dbg !6186

sw.bb29:                                          ; preds = %sw.epilog21
  %21 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6187
  %guard_interval30 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %21, i32 0, i32 8, !dbg !6188
  store i32 2, i32* %guard_interval30, align 4, !dbg !6189
  br label %sw.epilog33, !dbg !6190

sw.bb31:                                          ; preds = %sw.epilog21
  %22 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6191
  %guard_interval32 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %22, i32 0, i32 8, !dbg !6192
  store i32 3, i32* %guard_interval32, align 4, !dbg !6193
  br label %sw.epilog33, !dbg !6194

sw.epilog33:                                      ; preds = %sw.epilog21, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb26
  %arrayidx34 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6195
  %23 = load i8, i8* %arrayidx34, align 1, !dbg !6195
  %conv35 = zext i8 %23 to i32, !dbg !6195
  %shr36 = ashr i32 %conv35, 4, !dbg !6196
  %and37 = and i32 %shr36, 7, !dbg !6197
  switch i32 %and37, label %sw.epilog45 [
    i32 0, label %sw.bb38
    i32 1, label %sw.bb39
    i32 2, label %sw.bb41
    i32 3, label %sw.bb43
  ], !dbg !6198

sw.bb38:                                          ; preds = %sw.epilog33
  %24 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6199
  %hierarchy = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %24, i32 0, i32 9, !dbg !6201
  store i32 0, i32* %hierarchy, align 4, !dbg !6202
  br label %sw.epilog45, !dbg !6203

sw.bb39:                                          ; preds = %sw.epilog33
  %25 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6204
  %hierarchy40 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %25, i32 0, i32 9, !dbg !6205
  store i32 1, i32* %hierarchy40, align 4, !dbg !6206
  br label %sw.epilog45, !dbg !6207

sw.bb41:                                          ; preds = %sw.epilog33
  %26 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6208
  %hierarchy42 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %26, i32 0, i32 9, !dbg !6209
  store i32 2, i32* %hierarchy42, align 4, !dbg !6210
  br label %sw.epilog45, !dbg !6211

sw.bb43:                                          ; preds = %sw.epilog33
  %27 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6212
  %hierarchy44 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %27, i32 0, i32 9, !dbg !6213
  store i32 3, i32* %hierarchy44, align 4, !dbg !6214
  br label %sw.epilog45, !dbg !6215

sw.epilog45:                                      ; preds = %sw.epilog33, %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb38
  %arrayidx46 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 1, !dbg !6216
  %28 = load i8, i8* %arrayidx46, align 1, !dbg !6216
  %conv47 = zext i8 %28 to i32, !dbg !6216
  %shr48 = ashr i32 %conv47, 3, !dbg !6217
  %and49 = and i32 %shr48, 7, !dbg !6218
  switch i32 %and49, label %sw.epilog59 [
    i32 0, label %sw.bb50
    i32 1, label %sw.bb51
    i32 2, label %sw.bb53
    i32 3, label %sw.bb55
    i32 4, label %sw.bb57
  ], !dbg !6219

sw.bb50:                                          ; preds = %sw.epilog45
  %29 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6220
  %code_rate_HP = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %29, i32 0, i32 11, !dbg !6222
  store i32 1, i32* %code_rate_HP, align 4, !dbg !6223
  br label %sw.epilog59, !dbg !6224

sw.bb51:                                          ; preds = %sw.epilog45
  %30 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6225
  %code_rate_HP52 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %30, i32 0, i32 11, !dbg !6226
  store i32 2, i32* %code_rate_HP52, align 4, !dbg !6227
  br label %sw.epilog59, !dbg !6228

sw.bb53:                                          ; preds = %sw.epilog45
  %31 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6229
  %code_rate_HP54 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %31, i32 0, i32 11, !dbg !6230
  store i32 3, i32* %code_rate_HP54, align 4, !dbg !6231
  br label %sw.epilog59, !dbg !6232

sw.bb55:                                          ; preds = %sw.epilog45
  %32 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6233
  %code_rate_HP56 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %32, i32 0, i32 11, !dbg !6234
  store i32 5, i32* %code_rate_HP56, align 4, !dbg !6235
  br label %sw.epilog59, !dbg !6236

sw.bb57:                                          ; preds = %sw.epilog45
  %33 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6237
  %code_rate_HP58 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %33, i32 0, i32 11, !dbg !6238
  store i32 7, i32* %code_rate_HP58, align 4, !dbg !6239
  br label %sw.epilog59, !dbg !6240

sw.epilog59:                                      ; preds = %sw.epilog45, %sw.bb57, %sw.bb55, %sw.bb53, %sw.bb51, %sw.bb50
  %arrayidx60 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 1, !dbg !6241
  %34 = load i8, i8* %arrayidx60, align 1, !dbg !6241
  %conv61 = zext i8 %34 to i32, !dbg !6241
  %shr62 = ashr i32 %conv61, 0, !dbg !6242
  %and63 = and i32 %shr62, 7, !dbg !6243
  switch i32 %and63, label %sw.epilog73 [
    i32 0, label %sw.bb64
    i32 1, label %sw.bb65
    i32 2, label %sw.bb67
    i32 3, label %sw.bb69
    i32 4, label %sw.bb71
  ], !dbg !6244

sw.bb64:                                          ; preds = %sw.epilog59
  %35 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6245
  %code_rate_LP = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %35, i32 0, i32 12, !dbg !6247
  store i32 1, i32* %code_rate_LP, align 4, !dbg !6248
  br label %sw.epilog73, !dbg !6249

sw.bb65:                                          ; preds = %sw.epilog59
  %36 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6250
  %code_rate_LP66 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %36, i32 0, i32 12, !dbg !6251
  store i32 2, i32* %code_rate_LP66, align 4, !dbg !6252
  br label %sw.epilog73, !dbg !6253

sw.bb67:                                          ; preds = %sw.epilog59
  %37 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6254
  %code_rate_LP68 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %37, i32 0, i32 12, !dbg !6255
  store i32 3, i32* %code_rate_LP68, align 4, !dbg !6256
  br label %sw.epilog73, !dbg !6257

sw.bb69:                                          ; preds = %sw.epilog59
  %38 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6258
  %code_rate_LP70 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %38, i32 0, i32 12, !dbg !6259
  store i32 5, i32* %code_rate_LP70, align 4, !dbg !6260
  br label %sw.epilog73, !dbg !6261

sw.bb71:                                          ; preds = %sw.epilog59
  %39 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !6262
  %code_rate_LP72 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %39, i32 0, i32 12, !dbg !6263
  store i32 7, i32* %code_rate_LP72, align 4, !dbg !6264
  br label %sw.epilog73, !dbg !6265

sw.epilog73:                                      ; preds = %sw.epilog59, %sw.bb71, %sw.bb69, %sw.bb67, %sw.bb65, %sw.bb64
  store i32 0, i32* %retval, align 4, !dbg !6266
  br label %return, !dbg !6266

err:                                              ; preds = %if.then7, %if.then3
  call void @llvm.dbg.label(metadata !6267), !dbg !6268
  %40 = load i32, i32* %ret, align 4, !dbg !6269
  store i32 %40, i32* %retval, align 4, !dbg !6270
  br label %return, !dbg !6270

return:                                           ; preds = %err, %sw.epilog73, %if.then
  %41 = load i32, i32* %retval, align 4, !dbg !6271
  ret i32 %41, !dbg !6271
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtl2830_read_status(%struct.dvb_frontend* %fe, i32* %status) #2 !dbg !4661 {
entry:
  %value.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr.i, metadata !6272, metadata !DIExpression()), !dbg !6277
  %index.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr.i, metadata !6281, metadata !DIExpression()), !dbg !6282
  %shift.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %shift.i, metadata !6283, metadata !DIExpression()), !dbg !6284
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %status.addr = alloca i32*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %dev = alloca %struct.rtl2830_dev*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  %ret = alloca i32, align 4
  %stmp = alloca i32, align 4
  %utmp = alloca i32, align 4
  %u8tmp = alloca i8, align 1
  %buf = alloca [2 x i8], align 1
  %__UNIQUE_ID___x222 = alloca i32, align 4
  %__UNIQUE_ID___x220 = alloca i32, align 4
  %__UNIQUE_ID___y221 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___y223 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %hierarchy = alloca i32, align 4
  %constellation = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6285, metadata !DIExpression()), !dbg !6286
  store i32* %status, i32** %status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %status.addr, metadata !6287, metadata !DIExpression()), !dbg !6288
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !6289, metadata !DIExpression()), !dbg !6290
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6291
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6292
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6292
  %2 = bitcast i8* %1 to %struct.i2c_client*, !dbg !6291
  store %struct.i2c_client* %2, %struct.i2c_client** %client, align 8, !dbg !6290
  call void @llvm.dbg.declare(metadata %struct.rtl2830_dev** %dev, metadata !6293, metadata !DIExpression()), !dbg !6294
  %3 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6295
  %call = call i8* @i2c_get_clientdata(%struct.i2c_client* %3) #9, !dbg !6296
  %4 = bitcast i8* %call to %struct.rtl2830_dev*, !dbg !6296
  store %struct.rtl2830_dev* %4, %struct.rtl2830_dev** %dev, align 8, !dbg !6294
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !6297, metadata !DIExpression()), !dbg !6298
  %5 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !6299
  %fe1 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %5, i32 0, i32 4, !dbg !6300
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %fe1, i32 0, i32 8, !dbg !6301
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !6298
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6302, metadata !DIExpression()), !dbg !6303
  call void @llvm.dbg.declare(metadata i32* %stmp, metadata !6304, metadata !DIExpression()), !dbg !6305
  call void @llvm.dbg.declare(metadata i32* %utmp, metadata !6306, metadata !DIExpression()), !dbg !6307
  call void @llvm.dbg.declare(metadata i8* %u8tmp, metadata !6308, metadata !DIExpression()), !dbg !6309
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf, metadata !6310, metadata !DIExpression()), !dbg !6312
  %6 = load i32*, i32** %status.addr, align 8, !dbg !6313
  store i32 0, i32* %6, align 4, !dbg !6314
  %7 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !6315
  %sleeping = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %7, i32 0, i32 5, !dbg !6317
  %8 = load i8, i8* %sleeping, align 8, !dbg !6317
  %tobool = trunc i8 %8 to i1, !dbg !6317
  br i1 %tobool, label %if.then, label %if.end, !dbg !6318

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6319
  br label %return, !dbg !6319

if.end:                                           ; preds = %entry
  %9 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6320
  %call2 = call i32 @rtl2830_bulk_read(%struct.i2c_client* %9, i32 849, i8* %u8tmp, i64 1) #9, !dbg !6321
  store i32 %call2, i32* %ret, align 4, !dbg !6322
  %10 = load i32, i32* %ret, align 4, !dbg !6323
  %tobool3 = icmp ne i32 %10, 0, !dbg !6323
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6325

if.then4:                                         ; preds = %if.end
  br label %err, !dbg !6326

if.end5:                                          ; preds = %if.end
  %11 = load i8, i8* %u8tmp, align 1, !dbg !6327
  %conv = zext i8 %11 to i32, !dbg !6327
  %shr = ashr i32 %conv, 3, !dbg !6328
  %and = and i32 %shr, 15, !dbg !6329
  %conv6 = trunc i32 %and to i8, !dbg !6330
  store i8 %conv6, i8* %u8tmp, align 1, !dbg !6331
  %12 = load i8, i8* %u8tmp, align 1, !dbg !6332
  %conv7 = zext i8 %12 to i32, !dbg !6332
  %cmp = icmp eq i32 %conv7, 11, !dbg !6334
  br i1 %cmp, label %if.then9, label %if.else, !dbg !6335

if.then9:                                         ; preds = %if.end5
  %13 = load i32*, i32** %status.addr, align 8, !dbg !6336
  %14 = load i32, i32* %13, align 4, !dbg !6338
  %or = or i32 %14, 31, !dbg !6338
  store i32 %or, i32* %13, align 4, !dbg !6338
  br label %if.end16, !dbg !6339

if.else:                                          ; preds = %if.end5
  %15 = load i8, i8* %u8tmp, align 1, !dbg !6340
  %conv10 = zext i8 %15 to i32, !dbg !6340
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !6342
  br i1 %cmp11, label %if.then13, label %if.end15, !dbg !6343

if.then13:                                        ; preds = %if.else
  %16 = load i32*, i32** %status.addr, align 8, !dbg !6344
  %17 = load i32, i32* %16, align 4, !dbg !6346
  %or14 = or i32 %17, 7, !dbg !6346
  store i32 %or14, i32* %16, align 4, !dbg !6346
  br label %if.end15, !dbg !6347

if.end15:                                         ; preds = %if.then13, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then9
  %18 = load i32*, i32** %status.addr, align 8, !dbg !6348
  %19 = load i32, i32* %18, align 4, !dbg !6349
  %20 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !6350
  %fe_status = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %20, i32 0, i32 7, !dbg !6351
  store i32 %19, i32* %fe_status, align 8, !dbg !6352
  %21 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !6353
  %fe_status17 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %21, i32 0, i32 7, !dbg !6354
  %22 = load i32, i32* %fe_status17, align 8, !dbg !6354
  %and18 = and i32 %22, 1, !dbg !6355
  %tobool19 = icmp ne i32 %and18, 0, !dbg !6355
  br i1 %tobool19, label %if.then20, label %if.else45, !dbg !6356

if.then20:                                        ; preds = %if.end16
  %23 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6357
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !6358
  %call21 = call i32 @rtl2830_bulk_read(%struct.i2c_client* %23, i32 857, i8* %arraydecay, i64 2) #9, !dbg !6359
  store i32 %call21, i32* %ret, align 4, !dbg !6360
  %24 = load i32, i32* %ret, align 4, !dbg !6361
  %tobool22 = icmp ne i32 %24, 0, !dbg !6361
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !6363

if.then23:                                        ; preds = %if.then20
  br label %err, !dbg !6364

if.end24:                                         ; preds = %if.then20
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !6365
  %25 = load i8, i8* %arrayidx, align 1, !dbg !6365
  %conv25 = zext i8 %25 to i32, !dbg !6365
  %shl = shl i32 %conv25, 8, !dbg !6366
  %arrayidx26 = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 1, !dbg !6367
  %26 = load i8, i8* %arrayidx26, align 1, !dbg !6367
  %conv27 = zext i8 %26 to i32, !dbg !6367
  %shl28 = shl i32 %conv27, 0, !dbg !6368
  %or29 = or i32 %shl, %shl28, !dbg !6369
  store i32 %or29, i32* %stmp, align 4, !dbg !6370
  %27 = load i32, i32* %stmp, align 4, !dbg !6371
  store i32 %27, i32* %value.addr.i, align 4
  store i32 13, i32* %index.addr.i, align 4
  %28 = load i32, i32* %index.addr.i, align 4, !dbg !6372
  %sub.i = sub i32 31, %28, !dbg !6373
  %conv.i = trunc i32 %sub.i to i8, !dbg !6374
  store i8 %conv.i, i8* %shift.i, align 1, !dbg !6284
  %29 = load i32, i32* %value.addr.i, align 4, !dbg !6375
  %30 = load i8, i8* %shift.i, align 1, !dbg !6376
  %conv1.i = zext i8 %30 to i32, !dbg !6376
  %shl.i = shl i32 %29, %conv1.i, !dbg !6377
  %31 = load i8, i8* %shift.i, align 1, !dbg !6378
  %conv2.i = zext i8 %31 to i32, !dbg !6378
  %shr.i = ashr i32 %shl.i, %conv2.i, !dbg !6379
  store i32 %shr.i, i32* %stmp, align 4, !dbg !6380
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x222, metadata !6381, metadata !DIExpression()), !dbg !6383
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x220, metadata !6384, metadata !DIExpression()), !dbg !6386
  %32 = load i32, i32* %stmp, align 4, !dbg !6386
  %mul = mul i32 -4, %32, !dbg !6386
  %add = add i32 %mul, 32767, !dbg !6386
  store i32 %add, i32* %__UNIQUE_ID___x220, align 4, !dbg !6386
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y221, metadata !6387, metadata !DIExpression()), !dbg !6386
  store i32 0, i32* %__UNIQUE_ID___y221, align 4, !dbg !6386
  %33 = load i32, i32* %__UNIQUE_ID___x220, align 4, !dbg !6386
  %34 = load i32, i32* %__UNIQUE_ID___y221, align 4, !dbg !6386
  %cmp31 = icmp sgt i32 %33, %34, !dbg !6386
  br i1 %cmp31, label %cond.true, label %cond.false, !dbg !6386

cond.true:                                        ; preds = %if.end24
  %35 = load i32, i32* %__UNIQUE_ID___x220, align 4, !dbg !6386
  br label %cond.end, !dbg !6386

cond.false:                                       ; preds = %if.end24
  %36 = load i32, i32* %__UNIQUE_ID___y221, align 4, !dbg !6386
  br label %cond.end, !dbg !6386

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %35, %cond.true ], [ %36, %cond.false ], !dbg !6386
  store i32 %cond, i32* %tmp, align 4, !dbg !6386
  %37 = load i32, i32* %tmp, align 4, !dbg !6386
  store i32 %37, i32* %__UNIQUE_ID___x222, align 4, !dbg !6383
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y223, metadata !6388, metadata !DIExpression()), !dbg !6383
  store i32 65535, i32* %__UNIQUE_ID___y223, align 4, !dbg !6383
  %38 = load i32, i32* %__UNIQUE_ID___x222, align 4, !dbg !6383
  %39 = load i32, i32* %__UNIQUE_ID___y223, align 4, !dbg !6383
  %cmp34 = icmp slt i32 %38, %39, !dbg !6383
  br i1 %cmp34, label %cond.true36, label %cond.false37, !dbg !6383

cond.true36:                                      ; preds = %cond.end
  %40 = load i32, i32* %__UNIQUE_ID___x222, align 4, !dbg !6383
  br label %cond.end38, !dbg !6383

cond.false37:                                     ; preds = %cond.end
  %41 = load i32, i32* %__UNIQUE_ID___y223, align 4, !dbg !6383
  br label %cond.end38, !dbg !6383

cond.end38:                                       ; preds = %cond.false37, %cond.true36
  %cond39 = phi i32 [ %40, %cond.true36 ], [ %41, %cond.false37 ], !dbg !6383
  store i32 %cond39, i32* %tmp33, align 4, !dbg !6383
  %42 = load i32, i32* %tmp33, align 4, !dbg !6383
  store i32 %42, i32* %utmp, align 4, !dbg !6389
  %43 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6390
  %strength = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %43, i32 0, i32 42, !dbg !6391
  %stat = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %strength, i32 0, i32 1, !dbg !6392
  %arrayidx40 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat, i64 0, i64 0, !dbg !6390
  %scale = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx40, i32 0, i32 0, !dbg !6393
  store i8 2, i8* %scale, align 1, !dbg !6394
  %44 = load i32, i32* %utmp, align 4, !dbg !6395
  %conv41 = zext i32 %44 to i64, !dbg !6395
  %45 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6396
  %strength42 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %45, i32 0, i32 42, !dbg !6397
  %stat43 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %strength42, i32 0, i32 1, !dbg !6398
  %arrayidx44 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat43, i64 0, i64 0, !dbg !6396
  %46 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx44, i32 0, i32 1, !dbg !6399
  %uvalue = bitcast %union.anon.67* %46 to i64*, !dbg !6399
  store i64 %conv41, i64* %uvalue, align 1, !dbg !6400
  br label %if.end50, !dbg !6401

if.else45:                                        ; preds = %if.end16
  %47 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6402
  %strength46 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %47, i32 0, i32 42, !dbg !6404
  %stat47 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %strength46, i32 0, i32 1, !dbg !6405
  %arrayidx48 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat47, i64 0, i64 0, !dbg !6402
  %scale49 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx48, i32 0, i32 0, !dbg !6406
  store i8 0, i8* %scale49, align 1, !dbg !6407
  br label %if.end50

if.end50:                                         ; preds = %if.else45, %cond.end38
  %48 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !6408
  %fe_status51 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %48, i32 0, i32 7, !dbg !6410
  %49 = load i32, i32* %fe_status51, align 8, !dbg !6410
  %and52 = and i32 %49, 4, !dbg !6411
  %tobool53 = icmp ne i32 %and52, 0, !dbg !6411
  br i1 %tobool53, label %if.then54, label %if.else100, !dbg !6412

if.then54:                                        ; preds = %if.end50
  call void @llvm.dbg.declare(metadata i32* %hierarchy, metadata !6413, metadata !DIExpression()), !dbg !6415
  call void @llvm.dbg.declare(metadata i32* %constellation, metadata !6416, metadata !DIExpression()), !dbg !6417
  %50 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6418
  %call55 = call i32 @rtl2830_bulk_read(%struct.i2c_client* %50, i32 828, i8* %u8tmp, i64 1) #9, !dbg !6419
  store i32 %call55, i32* %ret, align 4, !dbg !6420
  %51 = load i32, i32* %ret, align 4, !dbg !6421
  %tobool56 = icmp ne i32 %51, 0, !dbg !6421
  br i1 %tobool56, label %if.then57, label %if.end58, !dbg !6423

if.then57:                                        ; preds = %if.then54
  br label %err, !dbg !6424

if.end58:                                         ; preds = %if.then54
  %52 = load i8, i8* %u8tmp, align 1, !dbg !6425
  %conv59 = zext i8 %52 to i32, !dbg !6425
  %shr60 = ashr i32 %conv59, 2, !dbg !6426
  %and61 = and i32 %shr60, 3, !dbg !6427
  store i32 %and61, i32* %constellation, align 4, !dbg !6428
  %53 = load i32, i32* %constellation, align 4, !dbg !6429
  %cmp62 = icmp ugt i32 %53, 2, !dbg !6431
  br i1 %cmp62, label %if.then64, label %if.end65, !dbg !6432

if.then64:                                        ; preds = %if.end58
  br label %err, !dbg !6433

if.end65:                                         ; preds = %if.end58
  %54 = load i8, i8* %u8tmp, align 1, !dbg !6434
  %conv66 = zext i8 %54 to i32, !dbg !6434
  %shr67 = ashr i32 %conv66, 4, !dbg !6435
  %and68 = and i32 %shr67, 7, !dbg !6436
  store i32 %and68, i32* %hierarchy, align 4, !dbg !6437
  %55 = load i32, i32* %hierarchy, align 4, !dbg !6438
  %cmp69 = icmp ugt i32 %55, 3, !dbg !6440
  br i1 %cmp69, label %if.then71, label %if.end72, !dbg !6441

if.then71:                                        ; preds = %if.end65
  br label %err, !dbg !6442

if.end72:                                         ; preds = %if.end65
  %56 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6443
  %arraydecay73 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !6444
  %call74 = call i32 @rtl2830_bulk_read(%struct.i2c_client* %56, i32 1036, i8* %arraydecay73, i64 2) #9, !dbg !6445
  store i32 %call74, i32* %ret, align 4, !dbg !6446
  %57 = load i32, i32* %ret, align 4, !dbg !6447
  %tobool75 = icmp ne i32 %57, 0, !dbg !6447
  br i1 %tobool75, label %if.then76, label %if.end77, !dbg !6449

if.then76:                                        ; preds = %if.end72
  br label %err, !dbg !6450

if.end77:                                         ; preds = %if.end72
  %arrayidx78 = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !6451
  %58 = load i8, i8* %arrayidx78, align 1, !dbg !6451
  %conv79 = zext i8 %58 to i32, !dbg !6451
  %shl80 = shl i32 %conv79, 8, !dbg !6452
  %arrayidx81 = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 1, !dbg !6453
  %59 = load i8, i8* %arrayidx81, align 1, !dbg !6453
  %conv82 = zext i8 %59 to i32, !dbg !6453
  %shl83 = shl i32 %conv82, 0, !dbg !6454
  %or84 = or i32 %shl80, %shl83, !dbg !6455
  store i32 %or84, i32* %utmp, align 4, !dbg !6456
  %60 = load i32, i32* %utmp, align 4, !dbg !6457
  %tobool85 = icmp ne i32 %60, 0, !dbg !6457
  br i1 %tobool85, label %if.then86, label %if.else91, !dbg !6459

if.then86:                                        ; preds = %if.end77
  %61 = load i32, i32* %constellation, align 4, !dbg !6460
  %idxprom = zext i32 %61 to i64, !dbg !6461
  %arrayidx87 = getelementptr [3 x [4 x i32]], [3 x [4 x i32]]* @rtl2830_read_status.constant, i64 0, i64 %idxprom, !dbg !6461
  %62 = load i32, i32* %hierarchy, align 4, !dbg !6462
  %idxprom88 = zext i32 %62 to i64, !dbg !6461
  %arrayidx89 = getelementptr [4 x i32], [4 x i32]* %arrayidx87, i64 0, i64 %idxprom88, !dbg !6461
  %63 = load i32, i32* %arrayidx89, align 4, !dbg !6461
  %64 = load i32, i32* %utmp, align 4, !dbg !6463
  %call90 = call i32 @intlog10(i32 %64) #9, !dbg !6464
  %sub = sub i32 %63, %call90, !dbg !6465
  %div = udiv i32 %sub, 1677, !dbg !6466
  store i32 %div, i32* %stmp, align 4, !dbg !6467
  br label %if.end92, !dbg !6468

if.else91:                                        ; preds = %if.end77
  store i32 0, i32* %stmp, align 4, !dbg !6469
  br label %if.end92

if.end92:                                         ; preds = %if.else91, %if.then86
  %65 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6470
  %cnr = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %65, i32 0, i32 43, !dbg !6471
  %stat93 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %cnr, i32 0, i32 1, !dbg !6472
  %arrayidx94 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat93, i64 0, i64 0, !dbg !6470
  %scale95 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx94, i32 0, i32 0, !dbg !6473
  store i8 1, i8* %scale95, align 1, !dbg !6474
  %66 = load i32, i32* %stmp, align 4, !dbg !6475
  %conv96 = sext i32 %66 to i64, !dbg !6475
  %67 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6476
  %cnr97 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %67, i32 0, i32 43, !dbg !6477
  %stat98 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %cnr97, i32 0, i32 1, !dbg !6478
  %arrayidx99 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat98, i64 0, i64 0, !dbg !6476
  %68 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx99, i32 0, i32 1, !dbg !6479
  %svalue = bitcast %union.anon.67* %68 to i64*, !dbg !6479
  store i64 %conv96, i64* %svalue, align 1, !dbg !6480
  br label %if.end105, !dbg !6481

if.else100:                                       ; preds = %if.end50
  %69 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6482
  %cnr101 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %69, i32 0, i32 43, !dbg !6484
  %stat102 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %cnr101, i32 0, i32 1, !dbg !6485
  %arrayidx103 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat102, i64 0, i64 0, !dbg !6482
  %scale104 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx103, i32 0, i32 0, !dbg !6486
  store i8 0, i8* %scale104, align 1, !dbg !6487
  br label %if.end105

if.end105:                                        ; preds = %if.else100, %if.end92
  %70 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !6488
  %fe_status106 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %70, i32 0, i32 7, !dbg !6490
  %71 = load i32, i32* %fe_status106, align 8, !dbg !6490
  %and107 = and i32 %71, 16, !dbg !6491
  %tobool108 = icmp ne i32 %and107, 0, !dbg !6491
  br i1 %tobool108, label %if.then109, label %if.else143, !dbg !6492

if.then109:                                       ; preds = %if.end105
  %72 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6493
  %arraydecay110 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !6495
  %call111 = call i32 @rtl2830_bulk_read(%struct.i2c_client* %72, i32 846, i8* %arraydecay110, i64 2) #9, !dbg !6496
  store i32 %call111, i32* %ret, align 4, !dbg !6497
  %73 = load i32, i32* %ret, align 4, !dbg !6498
  %tobool112 = icmp ne i32 %73, 0, !dbg !6498
  br i1 %tobool112, label %if.then113, label %if.end114, !dbg !6500

if.then113:                                       ; preds = %if.then109
  br label %err, !dbg !6501

if.end114:                                        ; preds = %if.then109
  %arrayidx115 = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !6502
  %74 = load i8, i8* %arrayidx115, align 1, !dbg !6502
  %conv116 = zext i8 %74 to i32, !dbg !6502
  %shl117 = shl i32 %conv116, 8, !dbg !6503
  %arrayidx118 = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 1, !dbg !6504
  %75 = load i8, i8* %arrayidx118, align 1, !dbg !6504
  %conv119 = zext i8 %75 to i32, !dbg !6504
  %shl120 = shl i32 %conv119, 0, !dbg !6505
  %or121 = or i32 %shl117, %shl120, !dbg !6506
  store i32 %or121, i32* %utmp, align 4, !dbg !6507
  %76 = load i32, i32* %utmp, align 4, !dbg !6508
  %conv122 = zext i32 %76 to i64, !dbg !6508
  %77 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !6509
  %post_bit_error = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %77, i32 0, i32 9, !dbg !6510
  %78 = load i64, i64* %post_bit_error, align 8, !dbg !6511
  %add123 = add i64 %78, %conv122, !dbg !6511
  store i64 %add123, i64* %post_bit_error, align 8, !dbg !6511
  %79 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !6512
  %post_bit_count = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %79, i32 0, i32 10, !dbg !6513
  %80 = load i64, i64* %post_bit_count, align 8, !dbg !6514
  %add124 = add i64 %80, 1000000, !dbg !6514
  store i64 %add124, i64* %post_bit_count, align 8, !dbg !6514
  %81 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6515
  %post_bit_error125 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %81, i32 0, i32 46, !dbg !6516
  %stat126 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %post_bit_error125, i32 0, i32 1, !dbg !6517
  %arrayidx127 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat126, i64 0, i64 0, !dbg !6515
  %scale128 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx127, i32 0, i32 0, !dbg !6518
  store i8 3, i8* %scale128, align 1, !dbg !6519
  %82 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !6520
  %post_bit_error129 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %82, i32 0, i32 9, !dbg !6521
  %83 = load i64, i64* %post_bit_error129, align 8, !dbg !6521
  %84 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6522
  %post_bit_error130 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %84, i32 0, i32 46, !dbg !6523
  %stat131 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %post_bit_error130, i32 0, i32 1, !dbg !6524
  %arrayidx132 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat131, i64 0, i64 0, !dbg !6522
  %85 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx132, i32 0, i32 1, !dbg !6525
  %uvalue133 = bitcast %union.anon.67* %85 to i64*, !dbg !6525
  store i64 %83, i64* %uvalue133, align 1, !dbg !6526
  %86 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6527
  %post_bit_count134 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %86, i32 0, i32 47, !dbg !6528
  %stat135 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %post_bit_count134, i32 0, i32 1, !dbg !6529
  %arrayidx136 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat135, i64 0, i64 0, !dbg !6527
  %scale137 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx136, i32 0, i32 0, !dbg !6530
  store i8 3, i8* %scale137, align 1, !dbg !6531
  %87 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !6532
  %post_bit_count138 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %87, i32 0, i32 10, !dbg !6533
  %88 = load i64, i64* %post_bit_count138, align 8, !dbg !6533
  %89 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6534
  %post_bit_count139 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %89, i32 0, i32 47, !dbg !6535
  %stat140 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %post_bit_count139, i32 0, i32 1, !dbg !6536
  %arrayidx141 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat140, i64 0, i64 0, !dbg !6534
  %90 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx141, i32 0, i32 1, !dbg !6537
  %uvalue142 = bitcast %union.anon.67* %90 to i64*, !dbg !6537
  store i64 %88, i64* %uvalue142, align 1, !dbg !6538
  br label %if.end152, !dbg !6539

if.else143:                                       ; preds = %if.end105
  %91 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6540
  %post_bit_error144 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %91, i32 0, i32 46, !dbg !6542
  %stat145 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %post_bit_error144, i32 0, i32 1, !dbg !6543
  %arrayidx146 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat145, i64 0, i64 0, !dbg !6540
  %scale147 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx146, i32 0, i32 0, !dbg !6544
  store i8 0, i8* %scale147, align 1, !dbg !6545
  %92 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6546
  %post_bit_count148 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %92, i32 0, i32 47, !dbg !6547
  %stat149 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %post_bit_count148, i32 0, i32 1, !dbg !6548
  %arrayidx150 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat149, i64 0, i64 0, !dbg !6546
  %scale151 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx150, i32 0, i32 0, !dbg !6549
  store i8 0, i8* %scale151, align 1, !dbg !6550
  br label %if.end152

if.end152:                                        ; preds = %if.else143, %if.end114
  %93 = load i32, i32* %ret, align 4, !dbg !6551
  store i32 %93, i32* %retval, align 4, !dbg !6552
  br label %return, !dbg !6552

err:                                              ; preds = %if.then113, %if.then76, %if.then71, %if.then64, %if.then57, %if.then23, %if.then4
  call void @llvm.dbg.label(metadata !6553), !dbg !6554
  %94 = load i32, i32* %ret, align 4, !dbg !6555
  store i32 %94, i32* %retval, align 4, !dbg !6556
  br label %return, !dbg !6556

return:                                           ; preds = %err, %if.end152, %if.then
  %95 = load i32, i32* %retval, align 4, !dbg !6557
  ret i32 %95, !dbg !6557
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtl2830_read_ber(%struct.dvb_frontend* %fe, i32* %ber) #2 !dbg !6558 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ber.addr = alloca i32*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %dev = alloca %struct.rtl2830_dev*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6559, metadata !DIExpression()), !dbg !6560
  store i32* %ber, i32** %ber.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ber.addr, metadata !6561, metadata !DIExpression()), !dbg !6562
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !6563, metadata !DIExpression()), !dbg !6564
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6565
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6566
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6566
  %2 = bitcast i8* %1 to %struct.i2c_client*, !dbg !6565
  store %struct.i2c_client* %2, %struct.i2c_client** %client, align 8, !dbg !6564
  call void @llvm.dbg.declare(metadata %struct.rtl2830_dev** %dev, metadata !6567, metadata !DIExpression()), !dbg !6568
  %3 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6569
  %call = call i8* @i2c_get_clientdata(%struct.i2c_client* %3) #9, !dbg !6570
  %4 = bitcast i8* %call to %struct.rtl2830_dev*, !dbg !6570
  store %struct.rtl2830_dev* %4, %struct.rtl2830_dev** %dev, align 8, !dbg !6568
  %5 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !6571
  %post_bit_error = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %5, i32 0, i32 9, !dbg !6572
  %6 = load i64, i64* %post_bit_error, align 8, !dbg !6572
  %7 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !6573
  %post_bit_error_prev = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %7, i32 0, i32 8, !dbg !6574
  %8 = load i64, i64* %post_bit_error_prev, align 8, !dbg !6574
  %sub = sub i64 %6, %8, !dbg !6575
  %conv = trunc i64 %sub to i32, !dbg !6576
  %9 = load i32*, i32** %ber.addr, align 8, !dbg !6577
  store i32 %conv, i32* %9, align 4, !dbg !6578
  %10 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !6579
  %post_bit_error1 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %10, i32 0, i32 9, !dbg !6580
  %11 = load i64, i64* %post_bit_error1, align 8, !dbg !6580
  %12 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !6581
  %post_bit_error_prev2 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %12, i32 0, i32 8, !dbg !6582
  store i64 %11, i64* %post_bit_error_prev2, align 8, !dbg !6583
  ret i32 0, !dbg !6584
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtl2830_read_signal_strength(%struct.dvb_frontend* %fe, i16* %strength) #2 !dbg !6585 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %strength.addr = alloca i16*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6586, metadata !DIExpression()), !dbg !6587
  store i16* %strength, i16** %strength.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %strength.addr, metadata !6588, metadata !DIExpression()), !dbg !6589
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !6590, metadata !DIExpression()), !dbg !6591
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6592
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 8, !dbg !6593
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !6591
  %1 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6594
  %strength1 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %1, i32 0, i32 42, !dbg !6596
  %stat = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %strength1, i32 0, i32 1, !dbg !6597
  %arrayidx = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat, i64 0, i64 0, !dbg !6594
  %scale = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx, i32 0, i32 0, !dbg !6598
  %2 = load i8, i8* %scale, align 1, !dbg !6598
  %conv = zext i8 %2 to i32, !dbg !6594
  %cmp = icmp eq i32 %conv, 2, !dbg !6599
  br i1 %cmp, label %if.then, label %if.else, !dbg !6600

if.then:                                          ; preds = %entry
  %3 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6601
  %strength3 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %3, i32 0, i32 42, !dbg !6602
  %stat4 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %strength3, i32 0, i32 1, !dbg !6603
  %arrayidx5 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat4, i64 0, i64 0, !dbg !6601
  %4 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx5, i32 0, i32 1, !dbg !6604
  %uvalue = bitcast %union.anon.67* %4 to i64*, !dbg !6604
  %5 = load i64, i64* %uvalue, align 1, !dbg !6604
  %conv6 = trunc i64 %5 to i16, !dbg !6601
  %6 = load i16*, i16** %strength.addr, align 8, !dbg !6605
  store i16 %conv6, i16* %6, align 2, !dbg !6606
  br label %if.end, !dbg !6607

if.else:                                          ; preds = %entry
  %7 = load i16*, i16** %strength.addr, align 8, !dbg !6608
  store i16 0, i16* %7, align 2, !dbg !6609
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0, !dbg !6610
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtl2830_read_snr(%struct.dvb_frontend* %fe, i16* %snr) #2 !dbg !6611 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %snr.addr = alloca i16*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6612, metadata !DIExpression()), !dbg !6613
  store i16* %snr, i16** %snr.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %snr.addr, metadata !6614, metadata !DIExpression()), !dbg !6615
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !6616, metadata !DIExpression()), !dbg !6617
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6618
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 8, !dbg !6619
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !6617
  %1 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6620
  %cnr = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %1, i32 0, i32 43, !dbg !6622
  %stat = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %cnr, i32 0, i32 1, !dbg !6623
  %arrayidx = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat, i64 0, i64 0, !dbg !6620
  %scale = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx, i32 0, i32 0, !dbg !6624
  %2 = load i8, i8* %scale, align 1, !dbg !6624
  %conv = zext i8 %2 to i32, !dbg !6620
  %cmp = icmp eq i32 %conv, 1, !dbg !6625
  br i1 %cmp, label %if.then, label %if.else, !dbg !6626

if.then:                                          ; preds = %entry
  %3 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6627
  %cnr2 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %3, i32 0, i32 43, !dbg !6628
  %stat3 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %cnr2, i32 0, i32 1, !dbg !6629
  %arrayidx4 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat3, i64 0, i64 0, !dbg !6627
  %4 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx4, i32 0, i32 1, !dbg !6630
  %svalue = bitcast %union.anon.67* %4 to i64*, !dbg !6630
  %5 = load i64, i64* %svalue, align 1, !dbg !6630
  %call = call i64 @div_s64(i64 %5, i32 100) #9, !dbg !6631
  %conv5 = trunc i64 %call to i16, !dbg !6631
  %6 = load i16*, i16** %snr.addr, align 8, !dbg !6632
  store i16 %conv5, i16* %6, align 2, !dbg !6633
  br label %if.end, !dbg !6634

if.else:                                          ; preds = %entry
  %7 = load i16*, i16** %snr.addr, align 8, !dbg !6635
  store i16 0, i16* %7, align 2, !dbg !6636
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0, !dbg !6637
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtl2830_read_ucblocks(%struct.dvb_frontend* %fe, i32* %ucblocks) #2 !dbg !6638 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ucblocks.addr = alloca i32*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6639, metadata !DIExpression()), !dbg !6640
  store i32* %ucblocks, i32** %ucblocks.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ucblocks.addr, metadata !6641, metadata !DIExpression()), !dbg !6642
  %0 = load i32*, i32** %ucblocks.addr, align 8, !dbg !6643
  store i32 0, i32* %0, align 4, !dbg !6644
  ret i32 0, !dbg !6645
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtl2830_update_bits(%struct.i2c_client* %client, i32 %reg, i32 %mask, i32 %val) #2 !dbg !6646 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %reg.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %dev = alloca %struct.rtl2830_dev*, align 8
  %ret = alloca i32, align 4
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !6649, metadata !DIExpression()), !dbg !6650
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !6651, metadata !DIExpression()), !dbg !6652
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !6653, metadata !DIExpression()), !dbg !6654
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !6655, metadata !DIExpression()), !dbg !6656
  call void @llvm.dbg.declare(metadata %struct.rtl2830_dev** %dev, metadata !6657, metadata !DIExpression()), !dbg !6658
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !6659
  %call = call i8* @i2c_get_clientdata(%struct.i2c_client* %0) #9, !dbg !6660
  %1 = bitcast i8* %call to %struct.rtl2830_dev*, !dbg !6660
  store %struct.rtl2830_dev* %1, %struct.rtl2830_dev** %dev, align 8, !dbg !6658
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6661, metadata !DIExpression()), !dbg !6662
  %2 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !6663
  %adapter = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %2, i32 0, i32 3, !dbg !6664
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !6664
  call void @i2c_lock_bus(%struct.i2c_adapter* %3, i32 2) #9, !dbg !6665
  %4 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !6666
  %regmap = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %4, i32 0, i32 2, !dbg !6667
  %5 = load %struct.regmap*, %struct.regmap** %regmap, align 8, !dbg !6667
  %6 = load i32, i32* %reg.addr, align 4, !dbg !6668
  %7 = load i32, i32* %mask.addr, align 4, !dbg !6669
  %8 = load i32, i32* %val.addr, align 4, !dbg !6670
  %call1 = call i32 @regmap_update_bits(%struct.regmap* %5, i32 %6, i32 %7, i32 %8) #9, !dbg !6671
  store i32 %call1, i32* %ret, align 4, !dbg !6672
  %9 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !6673
  %adapter2 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 3, !dbg !6674
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter2, align 8, !dbg !6674
  call void @i2c_unlock_bus(%struct.i2c_adapter* %10, i32 2) #9, !dbg !6675
  %11 = load i32, i32* %ret, align 4, !dbg !6676
  ret i32 %11, !dbg !6677
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtl2830_bulk_write(%struct.i2c_client* %client, i32 %reg, i8* %val, i64 %val_count) #2 !dbg !6678 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %reg.addr = alloca i32, align 4
  %val.addr = alloca i8*, align 8
  %val_count.addr = alloca i64, align 8
  %dev = alloca %struct.rtl2830_dev*, align 8
  %ret = alloca i32, align 4
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !6681, metadata !DIExpression()), !dbg !6682
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !6683, metadata !DIExpression()), !dbg !6684
  store i8* %val, i8** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %val.addr, metadata !6685, metadata !DIExpression()), !dbg !6686
  store i64 %val_count, i64* %val_count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %val_count.addr, metadata !6687, metadata !DIExpression()), !dbg !6688
  call void @llvm.dbg.declare(metadata %struct.rtl2830_dev** %dev, metadata !6689, metadata !DIExpression()), !dbg !6690
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !6691
  %call = call i8* @i2c_get_clientdata(%struct.i2c_client* %0) #9, !dbg !6692
  %1 = bitcast i8* %call to %struct.rtl2830_dev*, !dbg !6692
  store %struct.rtl2830_dev* %1, %struct.rtl2830_dev** %dev, align 8, !dbg !6690
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6693, metadata !DIExpression()), !dbg !6694
  %2 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !6695
  %adapter = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %2, i32 0, i32 3, !dbg !6696
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !6696
  call void @i2c_lock_bus(%struct.i2c_adapter* %3, i32 2) #9, !dbg !6697
  %4 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %dev, align 8, !dbg !6698
  %regmap = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %4, i32 0, i32 2, !dbg !6699
  %5 = load %struct.regmap*, %struct.regmap** %regmap, align 8, !dbg !6699
  %6 = load i32, i32* %reg.addr, align 4, !dbg !6700
  %7 = load i8*, i8** %val.addr, align 8, !dbg !6701
  %8 = load i64, i64* %val_count.addr, align 8, !dbg !6702
  %call1 = call i32 @regmap_bulk_write(%struct.regmap* %5, i32 %6, i8* %7, i64 %8) #9, !dbg !6703
  store i32 %call1, i32* %ret, align 4, !dbg !6704
  %9 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !6705
  %adapter2 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 3, !dbg !6706
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter2, align 8, !dbg !6706
  call void @i2c_unlock_bus(%struct.i2c_adapter* %10, i32 2) #9, !dbg !6707
  %11 = load i32, i32* %ret, align 4, !dbg !6708
  ret i32 %11, !dbg !6709
}

; Function Attrs: noredzone
declare dso_local i32 @regmap_bulk_write(%struct.regmap*, i32, i8*, i64) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @div_u64(i64 %dividend, i32 %divisor) #2 !dbg !6710 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder = alloca i32, align 4
  store i64 %dividend, i64* %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dividend.addr, metadata !6714, metadata !DIExpression()), !dbg !6715
  store i32 %divisor, i32* %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %divisor.addr, metadata !6716, metadata !DIExpression()), !dbg !6717
  call void @llvm.dbg.declare(metadata i32* %remainder, metadata !6718, metadata !DIExpression()), !dbg !6719
  %0 = load i64, i64* %dividend.addr, align 8, !dbg !6720
  %1 = load i32, i32* %divisor.addr, align 4, !dbg !6721
  %call = call i64 @div_u64_rem(i64 %0, i32 %1, i32* %remainder) #9, !dbg !6722
  ret i64 %call, !dbg !6723
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @div_u64_rem(i64 %dividend, i32 %divisor, i32* %remainder) #2 !dbg !6724 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca i32*, align 8
  store i64 %dividend, i64* %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dividend.addr, metadata !6727, metadata !DIExpression()), !dbg !6728
  store i32 %divisor, i32* %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %divisor.addr, metadata !6729, metadata !DIExpression()), !dbg !6730
  store i32* %remainder, i32** %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %remainder.addr, metadata !6731, metadata !DIExpression()), !dbg !6732
  %0 = load i64, i64* %dividend.addr, align 8, !dbg !6733
  %1 = load i32, i32* %divisor.addr, align 4, !dbg !6734
  %conv = zext i32 %1 to i64, !dbg !6734
  %rem = urem i64 %0, %conv, !dbg !6735
  %conv1 = trunc i64 %rem to i32, !dbg !6733
  %2 = load i32*, i32** %remainder.addr, align 8, !dbg !6736
  store i32 %conv1, i32* %2, align 4, !dbg !6737
  %3 = load i64, i64* %dividend.addr, align 8, !dbg !6738
  %4 = load i32, i32* %divisor.addr, align 4, !dbg !6739
  %conv2 = zext i32 %4 to i64, !dbg !6739
  %div = udiv i64 %3, %conv2, !dbg !6740
  ret i64 %div, !dbg !6741
}

; Function Attrs: noredzone
declare dso_local i32 @intlog10(i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @div_s64(i64 %dividend, i32 %divisor) #2 !dbg !6742 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder = alloca i32, align 4
  store i64 %dividend, i64* %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dividend.addr, metadata !6745, metadata !DIExpression()), !dbg !6746
  store i32 %divisor, i32* %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %divisor.addr, metadata !6747, metadata !DIExpression()), !dbg !6748
  call void @llvm.dbg.declare(metadata i32* %remainder, metadata !6749, metadata !DIExpression()), !dbg !6750
  %0 = load i64, i64* %dividend.addr, align 8, !dbg !6751
  %1 = load i32, i32* %divisor.addr, align 4, !dbg !6752
  %call = call i64 @div_s64_rem(i64 %0, i32 %1, i32* %remainder) #9, !dbg !6753
  ret i64 %call, !dbg !6754
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @div_s64_rem(i64 %dividend, i32 %divisor, i32* %remainder) #2 !dbg !6755 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca i32*, align 8
  store i64 %dividend, i64* %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dividend.addr, metadata !6758, metadata !DIExpression()), !dbg !6759
  store i32 %divisor, i32* %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %divisor.addr, metadata !6760, metadata !DIExpression()), !dbg !6761
  store i32* %remainder, i32** %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %remainder.addr, metadata !6762, metadata !DIExpression()), !dbg !6763
  %0 = load i64, i64* %dividend.addr, align 8, !dbg !6764
  %1 = load i32, i32* %divisor.addr, align 4, !dbg !6765
  %conv = sext i32 %1 to i64, !dbg !6765
  %rem = srem i64 %0, %conv, !dbg !6766
  %conv1 = trunc i64 %rem to i32, !dbg !6764
  %2 = load i32*, i32** %remainder.addr, align 8, !dbg !6767
  store i32 %conv1, i32* %2, align 4, !dbg !6768
  %3 = load i64, i64* %dividend.addr, align 8, !dbg !6769
  %4 = load i32, i32* %divisor.addr, align 4, !dbg !6770
  %conv2 = sext i32 %4 to i64, !dbg !6770
  %div = sdiv i64 %3, %conv2, !dbg !6771
  ret i64 %div, !dbg !6772
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #2 !dbg !6773 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !6779, metadata !DIExpression()), !dbg !6781
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !6783, metadata !DIExpression()), !dbg !6784
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !6785, metadata !DIExpression()), !dbg !6793
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !6795, metadata !DIExpression()), !dbg !6796
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !6797, metadata !DIExpression()), !dbg !6798
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !6799, metadata !DIExpression()), !dbg !6800
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !6801
  %1 = load i64, i64* %nr.addr, align 8, !dbg !6802
  %div = sdiv i64 %1, 64, !dbg !6802
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !6803
  %2 = bitcast i64* %add.ptr to i8*, !dbg !6801
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !6804
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !6805
  %conv.i = trunc i64 %4 to i32, !dbg !6805
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #13, !dbg !6806
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !6807
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !6807
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #13, !dbg !6807
  %7 = load i64, i64* %nr.addr, align 8, !dbg !6808
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !6809
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !6810
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #11, !dbg !6812
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !6813

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !6814
  %12 = bitcast i64* %11 to i8*, !dbg !6814
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !6814
  %shr.i = ashr i64 %13, 3, !dbg !6814
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !6814
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !6816
  %and.i = and i64 %14, 7, !dbg !6816
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !6816
  %shl.i = shl i32 1, %sh_prom.i, !dbg !6816
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #11, !dbg !6817, !srcloc !6818
  br label %arch_set_bit.exit, !dbg !6819

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !6820
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !6822
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #11, !dbg !6823, !srcloc !6824
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !6825
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_bit(i64 %nr, i64* %addr) #2 !dbg !6826 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !6827, metadata !DIExpression()), !dbg !6829
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !6831, metadata !DIExpression()), !dbg !6832
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !6785, metadata !DIExpression()), !dbg !6833
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !6795, metadata !DIExpression()), !dbg !6835
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !6836, metadata !DIExpression()), !dbg !6837
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !6838, metadata !DIExpression()), !dbg !6839
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !6840
  %1 = load i64, i64* %nr.addr, align 8, !dbg !6841
  %div = sdiv i64 %1, 64, !dbg !6841
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !6842
  %2 = bitcast i64* %add.ptr to i8*, !dbg !6840
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !6843
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !6844
  %conv.i = trunc i64 %4 to i32, !dbg !6844
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #13, !dbg !6845
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !6846
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !6846
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #13, !dbg !6846
  %7 = load i64, i64* %nr.addr, align 8, !dbg !6847
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !6848
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !6849
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #11, !dbg !6851
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !6852

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !6853
  %12 = bitcast i64* %11 to i8*, !dbg !6853
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !6853
  %shr.i = ashr i64 %13, 3, !dbg !6853
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !6853
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !6855
  %and.i = and i64 %14, 7, !dbg !6855
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !6855
  %shl.i = shl i32 1, %sh_prom.i, !dbg !6855
  %neg.i = xor i32 %shl.i, -1, !dbg !6856
  call void asm sideeffect "andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %neg.i, i8* %add.ptr.i) #11, !dbg !6857, !srcloc !6858
  br label %arch_clear_bit.exit, !dbg !6859

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !6860
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !6862
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #11, !dbg !6863, !srcloc !6864
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %if.then.i, %if.else.i
  ret void, !dbg !6865
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #2 !dbg !6866 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !6870, metadata !DIExpression()), !dbg !6871
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6872, metadata !DIExpression()), !dbg !6873
  ret i1 true, !dbg !6874
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !6875 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6879, metadata !DIExpression()), !dbg !6880
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6881, metadata !DIExpression()), !dbg !6882
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !6883, metadata !DIExpression()), !dbg !6884
  ret void, !dbg !6885
}

; Function Attrs: noredzone
declare dso_local void @i2c_mux_del_adapters(%struct.i2c_mux_core*) #1

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
!llvm.module.flags = !{!4667, !4668, !4669, !4670}
!llvm.ident = !{!4671}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rtl2830_driver_init224", scope: !2, file: !3, line: 897, type: !332, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !328, globals: !352, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/dvb-frontends/rtl2830.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !18, !24, !30, !39, !47, !53, !59, !66, !74, !80, !94, !99, !108, !142, !152, !159, !175, !180, !184, !189, !204, !215, !228, !235, !240, !246, !267, !273, !277, !285, !297, !304, !310, !315, !322}
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
!297 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "regmap_endian", file: !298, line: 184, baseType: !7, size: 32, elements: !299)
!298 = !DIFile(filename: "./include/linux/regmap.h", directory: "/home/lizy2001/genbc/linux")
!299 = !{!300, !301, !302, !303}
!300 = !DIEnumerator(name: "REGMAP_ENDIAN_DEFAULT", value: 0, isUnsigned: true)
!301 = !DIEnumerator(name: "REGMAP_ENDIAN_BIG", value: 1, isUnsigned: true)
!302 = !DIEnumerator(name: "REGMAP_ENDIAN_LITTLE", value: 2, isUnsigned: true)
!303 = !DIEnumerator(name: "REGMAP_ENDIAN_NATIVE", value: 3, isUnsigned: true)
!304 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "regcache_type", file: !298, line: 40, baseType: !7, size: 32, elements: !305)
!305 = !{!306, !307, !308, !309}
!306 = !DIEnumerator(name: "REGCACHE_NONE", value: 0, isUnsigned: true)
!307 = !DIEnumerator(name: "REGCACHE_RBTREE", value: 1, isUnsigned: true)
!308 = !DIEnumerator(name: "REGCACHE_COMPRESSED", value: 2, isUnsigned: true)
!309 = !DIEnumerator(name: "REGCACHE_FLAT", value: 3, isUnsigned: true)
!310 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !311, line: 10, baseType: !7, size: 32, elements: !312)
!311 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!312 = !{!313, !314}
!313 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!314 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!315 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !316, line: 305, baseType: !7, size: 32, elements: !317)
!316 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!317 = !{!318, !319, !320, !321}
!318 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!319 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!320 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!321 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!322 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fecap_scale_params", file: !109, line: 752, baseType: !7, size: 32, elements: !323)
!323 = !{!324, !325, !326, !327}
!324 = !DIEnumerator(name: "FE_SCALE_NOT_AVAILABLE", value: 0, isUnsigned: true)
!325 = !DIEnumerator(name: "FE_SCALE_DECIBEL", value: 1, isUnsigned: true)
!326 = !DIEnumerator(name: "FE_SCALE_RELATIVE", value: 2, isUnsigned: true)
!327 = !DIEnumerator(name: "FE_SCALE_COUNTER", value: 3, isUnsigned: true)
!328 = !{!329, !332, !333, !335, !341, !343, !344, !345, !346, !347, !350}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !331, line: 76, flags: DIFlagFwdDecl)
!331 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !334, line: 148, baseType: !7)
!334 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !337, line: 17, baseType: !338)
!337 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !339, line: 21, baseType: !340)
!339 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!340 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!343 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!344 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!345 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !339, line: 26, baseType: !345)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !349)
!349 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !344)
!352 = !{!0, !353, !360, !366, !371, !376, !381, !4186, !4242, !4256, !4331, !4650, !4655, !4659, !4664}
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(name: "__exitcall_rtl2830_driver_exit", scope: !2, file: !3, line: 897, type: !355, isLocal: true, isDefinition: true)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !356, line: 117, baseType: !357)
!356 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{null}
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author225", scope: !2, file: !3, line: 899, type: !362, isLocal: true, isDefinition: true, align: 8)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 368, elements: !364)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!364 = !{!365}
!365 = !DISubrange(count: 46)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description226", scope: !2, file: !3, line: 900, type: !368, isLocal: true, isDefinition: true, align: 8)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 488, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 61)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file227", scope: !2, file: !3, line: 901, type: !373, isLocal: true, isDefinition: true, align: 8)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 392, elements: !374)
!374 = !{!375}
!375 = !DISubrange(count: 49)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license228", scope: !2, file: !3, line: 901, type: !378, isLocal: true, isDefinition: true, align: 8)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 160, elements: !379)
!379 = !{!380}
!380 = !DISubrange(count: 20)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(name: "rtl2830_driver", scope: !2, file: !3, line: 887, type: !383, isLocal: true, isDefinition: true)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_driver", file: !95, line: 255, size: 1920, elements: !384)
!384 = !{!385, !386, !4105, !4109, !4110, !4114, !4118, !4122, !4123, !4124, !4182, !4185}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !383, file: !95, line: 256, baseType: !7, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !383, file: !95, line: 259, baseType: !387, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{!345, !390, !4099}
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_client", file: !95, line: 314, size: 6016, elements: !392)
!392 = !{!393, !395, !396, !398, !4095, !4096, !4097, !4098}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !391, file: !95, line: 315, baseType: !394, size: 16)
!394 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !391, file: !95, line: 325, baseType: !394, size: 16, offset: 16)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !391, file: !95, line: 328, baseType: !397, size: 160, offset: 32)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 160, elements: !379)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !391, file: !95, line: 329, baseType: !399, size: 64, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !95, line: 695, size: 7552, elements: !401)
!401 = !{!402, !403, !404, !445, !446, !460, !3488, !3489, !3490, !3491, !4042, !4043, !4044, !4048, !4049, !4050, !4051, !4083, !4094}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !400, file: !95, line: 696, baseType: !329, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !400, file: !95, line: 697, baseType: !7, size: 32, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !400, file: !95, line: 698, baseType: !405, size: 64, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !95, line: 519, size: 320, elements: !408)
!408 = !{!409, !423, !424, !438, !439}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !407, file: !95, line: 529, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!345, !399, !413, !345}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !415, line: 69, size: 128, elements: !416)
!415 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!416 = !{!417, !419, !420, !421}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !414, file: !415, line: 70, baseType: !418, size: 16)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !339, line: 24, baseType: !394)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !414, file: !415, line: 71, baseType: !418, size: 16, offset: 16)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !414, file: !415, line: 84, baseType: !418, size: 16, offset: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !414, file: !415, line: 85, baseType: !422, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !407, file: !95, line: 531, baseType: !410, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !407, file: !95, line: 533, baseType: !425, size: 64, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!345, !399, !428, !394, !349, !336, !345, !429}
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !337, line: 19, baseType: !418)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !415, line: 135, size: 272, elements: !431)
!431 = !{!432, !433, !434}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !430, file: !415, line: 136, baseType: !338, size: 8)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !430, file: !415, line: 137, baseType: !418, size: 16)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !430, file: !415, line: 138, baseType: !435, size: 272)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 272, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 34)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !407, file: !95, line: 536, baseType: !425, size: 64, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !407, file: !95, line: 541, baseType: !440, size: 64, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!443, !399}
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !337, line: 21, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !339, line: 27, baseType: !7)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !400, file: !95, line: 699, baseType: !332, size: 64, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !400, file: !95, line: 702, baseType: !447, size: 64, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !95, line: 557, size: 192, elements: !450)
!450 = !{!451, !455, !459}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !449, file: !95, line: 558, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !399, !7}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !449, file: !95, line: 559, baseType: !456, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!345, !399, !7}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !449, file: !95, line: 560, baseType: !452, size: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !400, file: !95, line: 703, baseType: !461, size: 192, offset: 320)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !462, line: 30, size: 192, elements: !463)
!462 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!463 = !{!464, !474, !489}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !461, file: !462, line: 31, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !466, line: 29, baseType: !467)
!466 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !466, line: 20, elements: !468)
!468 = !{!469}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !467, file: !466, line: 21, baseType: !470)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !471, line: 25, baseType: !472)
!471 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !471, line: 25, elements: !473)
!473 = !{}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !461, file: !462, line: 32, baseType: !475, size: 128)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !476, line: 125, size: 128, elements: !477)
!476 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!477 = !{!478, !488}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !475, file: !476, line: 126, baseType: !479, size: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !476, line: 31, size: 64, elements: !480)
!480 = !{!481}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !479, file: !476, line: 32, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !476, line: 24, size: 192, align: 64, elements: !484)
!484 = !{!485, !486, !487}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !483, file: !476, line: 25, baseType: !343, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !483, file: !476, line: 26, baseType: !482, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !483, file: !476, line: 27, baseType: !482, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !475, file: !476, line: 127, baseType: !482, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !461, file: !462, line: 33, baseType: !490, size: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !492, line: 640, size: 48640, elements: !493)
!492 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!493 = !{!494, !500, !501, !502, !512, !513, !514, !515, !516, !517, !518, !519, !523, !549, !560, !652, !653, !654, !665, !666, !668, !669, !2795, !2796, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2878, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2893, !2894, !2895, !2897, !2898, !2899, !2900, !2901, !2902, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2926, !2931, !2932, !2933, !2934, !2935, !2937, !2940, !2943, !2946, !2949, !2952, !3053, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3097, !3098, !3099, !3100, !3101, !3106, !3107, !3108, !3111, !3112, !3115, !3118, !3121, !3122, !3154, !3157, !3158, !3237, !3238, !3241, !3242, !3245, !3246, !3247, !3251, !3252, !3253, !3266, !3267, !3268, !3278, !3283, !3284, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !491, file: !492, line: 646, baseType: !495, size: 128)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !496, line: 56, size: 128, elements: !497)
!496 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!497 = !{!498, !499}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !495, file: !496, line: 57, baseType: !343, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !495, file: !496, line: 58, baseType: !443, size: 32, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !491, file: !492, line: 649, baseType: !351, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !491, file: !492, line: 657, baseType: !332, size: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !491, file: !492, line: 658, baseType: !503, size: 32, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !504, line: 113, baseType: !505)
!504 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !504, line: 111, size: 32, elements: !506)
!506 = !{!507}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !505, file: !504, line: 112, baseType: !508, size: 32)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !334, line: 168, baseType: !509)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !334, line: 166, size: 32, elements: !510)
!510 = !{!511}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !509, file: !334, line: 167, baseType: !345, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !491, file: !492, line: 660, baseType: !7, size: 32, offset: 288)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !491, file: !492, line: 661, baseType: !7, size: 32, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !491, file: !492, line: 684, baseType: !345, size: 32, offset: 352)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !491, file: !492, line: 686, baseType: !345, size: 32, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !491, file: !492, line: 687, baseType: !345, size: 32, offset: 416)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !491, file: !492, line: 688, baseType: !345, size: 32, offset: 448)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !491, file: !492, line: 689, baseType: !7, size: 32, offset: 480)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !491, file: !492, line: 691, baseType: !520, size: 64, offset: 512)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !522)
!522 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !492, line: 691, flags: DIFlagFwdDecl)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !491, file: !492, line: 692, baseType: !524, size: 832, offset: 576)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !492, line: 451, size: 832, elements: !525)
!525 = !{!526, !531, !532, !538, !539, !543, !544, !545, !546, !547}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !524, file: !492, line: 453, baseType: !527, size: 128)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !492, line: 325, size: 128, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !527, file: !492, line: 326, baseType: !343, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !527, file: !492, line: 327, baseType: !443, size: 32, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !524, file: !492, line: 454, baseType: !483, size: 192, align: 64, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !524, file: !492, line: 455, baseType: !533, size: 128, offset: 320)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !334, line: 178, size: 128, elements: !534)
!534 = !{!535, !537}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !533, file: !334, line: 179, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !533, file: !334, line: 179, baseType: !536, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !524, file: !492, line: 456, baseType: !7, size: 32, offset: 448)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !524, file: !492, line: 458, baseType: !540, size: 64, offset: 512)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !337, line: 23, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !339, line: 31, baseType: !542)
!542 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !524, file: !492, line: 459, baseType: !540, size: 64, offset: 576)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !524, file: !492, line: 460, baseType: !540, size: 64, offset: 640)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !524, file: !492, line: 461, baseType: !540, size: 64, offset: 704)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !524, file: !492, line: 463, baseType: !540, size: 64, offset: 768)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !524, file: !492, line: 465, baseType: !548, offset: 832)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !492, line: 415, elements: !473)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !491, file: !492, line: 693, baseType: !550, size: 384, offset: 1408)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !492, line: 489, size: 384, elements: !551)
!551 = !{!552, !553, !554, !555, !556, !557, !558}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !550, file: !492, line: 490, baseType: !533, size: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !550, file: !492, line: 491, baseType: !343, size: 64, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !550, file: !492, line: 492, baseType: !343, size: 64, offset: 192)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !550, file: !492, line: 493, baseType: !7, size: 32, offset: 256)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !550, file: !492, line: 494, baseType: !394, size: 16, offset: 288)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !550, file: !492, line: 495, baseType: !394, size: 16, offset: 304)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !550, file: !492, line: 497, baseType: !559, size: 64, offset: 320)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !491, file: !492, line: 697, baseType: !561, size: 1792, offset: 1792)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !492, line: 507, size: 1792, elements: !562)
!562 = !{!563, !564, !565, !566, !567, !568, !569, !573, !574, !575, !576, !577, !578, !579, !649, !650}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !561, file: !492, line: 508, baseType: !483, size: 192, align: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !561, file: !492, line: 515, baseType: !540, size: 64, offset: 192)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !561, file: !492, line: 516, baseType: !540, size: 64, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !561, file: !492, line: 517, baseType: !540, size: 64, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !561, file: !492, line: 518, baseType: !540, size: 64, offset: 384)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !561, file: !492, line: 519, baseType: !540, size: 64, offset: 448)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !561, file: !492, line: 526, baseType: !570, size: 64, offset: 512)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !337, line: 22, baseType: !571)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !339, line: 30, baseType: !572)
!572 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !561, file: !492, line: 527, baseType: !540, size: 64, offset: 576)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !561, file: !492, line: 528, baseType: !7, size: 32, offset: 640)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !561, file: !492, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !561, file: !492, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !561, file: !492, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !561, file: !492, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !561, file: !492, line: 563, baseType: !580, size: 512, offset: 704)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !581)
!581 = !{!582, !590, !591, !596, !645, !646, !647, !648}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !580, file: !6, line: 119, baseType: !583, size: 256)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !584, line: 9, size: 256, elements: !585)
!584 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!585 = !{!586, !587}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !583, file: !584, line: 10, baseType: !483, size: 192, align: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !583, file: !584, line: 11, baseType: !588, size: 64, offset: 192)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !589, line: 29, baseType: !570)
!589 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !580, file: !6, line: 120, baseType: !588, size: 64, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !580, file: !6, line: 121, baseType: !592, size: 64, offset: 320)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!5, !595}
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !580, file: !6, line: 122, baseType: !597, size: 64, offset: 384)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !599)
!599 = !{!600, !620, !621, !625, !635, !636, !640, !644}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !598, file: !6, line: 160, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !602, file: !6, line: 215, baseType: !465)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !602, file: !6, line: 216, baseType: !7, size: 32)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !602, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !602, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !602, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !602, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !602, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !602, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !602, file: !6, line: 233, baseType: !588, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !602, file: !6, line: 234, baseType: !595, size: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !602, file: !6, line: 235, baseType: !588, size: 64, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !602, file: !6, line: 236, baseType: !595, size: 64, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !602, file: !6, line: 237, baseType: !617, size: 4096, offset: 512)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, size: 4096, elements: !618)
!618 = !{!619}
!619 = !DISubrange(count: 8)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !598, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !598, file: !6, line: 162, baseType: !622, size: 32, offset: 96)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !334, line: 27, baseType: !623)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !624, line: 96, baseType: !345)
!624 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!625 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !598, file: !6, line: 163, baseType: !626, size: 32, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !627, line: 276, baseType: !628)
!627 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !627, line: 276, size: 32, elements: !629)
!629 = !{!630}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !628, file: !627, line: 276, baseType: !631, size: 32)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !627, line: 70, baseType: !632)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !627, line: 65, size: 32, elements: !633)
!633 = !{!634}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !632, file: !627, line: 66, baseType: !7, size: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !598, file: !6, line: 164, baseType: !595, size: 64, offset: 192)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !598, file: !6, line: 165, baseType: !637, size: 128, offset: 256)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !584, line: 14, size: 128, elements: !638)
!638 = !{!639}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !637, file: !584, line: 15, baseType: !475, size: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !598, file: !6, line: 166, baseType: !641, size: 64, offset: 384)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!588}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !598, file: !6, line: 167, baseType: !588, size: 64, offset: 448)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !580, file: !6, line: 123, baseType: !336, size: 8, offset: 448)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !580, file: !6, line: 124, baseType: !336, size: 8, offset: 456)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !580, file: !6, line: 125, baseType: !336, size: 8, offset: 464)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !580, file: !6, line: 126, baseType: !336, size: 8, offset: 472)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !561, file: !492, line: 572, baseType: !580, size: 512, offset: 1216)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !561, file: !492, line: 580, baseType: !651, size: 64, offset: 1728)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !491, file: !492, line: 721, baseType: !7, size: 32, offset: 3584)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !491, file: !492, line: 722, baseType: !345, size: 32, offset: 3616)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !491, file: !492, line: 723, baseType: !655, size: 64, offset: 3648)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !657)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !658, line: 17, baseType: !659)
!658 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !658, line: 17, size: 64, elements: !660)
!660 = !{!661}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !659, file: !658, line: 17, baseType: !662, size: 64)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 64, elements: !663)
!663 = !{!664}
!664 = !DISubrange(count: 1)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !491, file: !492, line: 724, baseType: !657, size: 64, offset: 3712)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !491, file: !492, line: 749, baseType: !667, offset: 3776)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !492, line: 290, elements: !473)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !491, file: !492, line: 751, baseType: !533, size: 128, offset: 3776)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !491, file: !492, line: 757, baseType: !670, size: 64, offset: 3904)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !672, line: 388, size: 7296, elements: !673)
!672 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!673 = !{!674, !2791}
!674 = !DIDerivedType(tag: DW_TAG_member, scope: !671, file: !672, line: 389, baseType: !675, size: 7296)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !671, file: !672, line: 389, size: 7296, elements: !676)
!676 = !{!677, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2704, !2710, !2713, !2752, !2753, !2775, !2776, !2779, !2780, !2781, !2784, !2785, !2786, !2789, !2790}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !675, file: !672, line: 390, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !672, line: 305, size: 1472, elements: !680)
!680 = !{!681, !682, !683, !684, !685, !686, !687, !688, !696, !697, !702, !703, !706, !710, !711, !2652, !2653, !2654}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !679, file: !672, line: 308, baseType: !343, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !679, file: !672, line: 309, baseType: !343, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !679, file: !672, line: 313, baseType: !678, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !679, file: !672, line: 313, baseType: !678, size: 64, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !679, file: !672, line: 315, baseType: !483, size: 192, align: 64, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !679, file: !672, line: 323, baseType: !343, size: 64, offset: 448)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !679, file: !672, line: 327, baseType: !670, size: 64, offset: 512)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !679, file: !672, line: 333, baseType: !689, size: 64, offset: 576)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !690, line: 284, baseType: !691)
!690 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !690, line: 284, size: 64, elements: !692)
!692 = !{!693}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !691, file: !690, line: 284, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !695, line: 19, baseType: !343)
!695 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!696 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !679, file: !672, line: 334, baseType: !343, size: 64, offset: 640)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !679, file: !672, line: 343, baseType: !698, size: 256, offset: 704)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !679, file: !672, line: 340, size: 256, elements: !699)
!699 = !{!700, !701}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !698, file: !672, line: 341, baseType: !483, size: 192, align: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !698, file: !672, line: 342, baseType: !343, size: 64, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !679, file: !672, line: 351, baseType: !533, size: 128, offset: 960)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !679, file: !672, line: 353, baseType: !704, size: 64, offset: 1088)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !672, line: 353, flags: DIFlagFwdDecl)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !679, file: !672, line: 356, baseType: !707, size: 64, offset: 1152)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !709)
!709 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !672, line: 356, flags: DIFlagFwdDecl)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !679, file: !672, line: 359, baseType: !343, size: 64, offset: 1216)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !679, file: !672, line: 361, baseType: !712, size: 64, offset: 1280)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 916, size: 1856, align: 32, elements: !714)
!714 = !{!715, !733, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2452, !2636, !2645, !2646, !2647, !2648, !2649, !2650, !2651}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !713, file: !31, line: 920, baseType: !716, size: 128)
!716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !713, file: !31, line: 917, size: 128, elements: !717)
!717 = !{!718, !724}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !716, file: !31, line: 918, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !720, line: 58, size: 64, elements: !721)
!720 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!721 = !{!722}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !719, file: !720, line: 59, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !716, file: !31, line: 919, baseType: !725, size: 128, align: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !334, line: 216, size: 128, align: 64, elements: !726)
!726 = !{!727, !729}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !725, file: !334, line: 217, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !725, file: !334, line: 218, baseType: !730, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{null, !728}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !713, file: !31, line: 921, baseType: !734, size: 128, offset: 128)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !735, line: 8, size: 128, elements: !736)
!735 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!736 = !{!737, !741}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !734, file: !735, line: 9, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !740, line: 18, flags: DIFlagFwdDecl)
!740 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!741 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !734, file: !735, line: 10, baseType: !742, size: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !740, line: 89, size: 1536, elements: !744)
!744 = !{!745, !746, !751, !759, !760, !775, !2382, !2384, !2396, !2397, !2398, !2399, !2400, !2405, !2406, !2407}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !743, file: !740, line: 91, baseType: !7, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !743, file: !740, line: 92, baseType: !747, size: 32, offset: 32)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !627, line: 277, baseType: !748)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !627, line: 277, size: 32, elements: !749)
!749 = !{!750}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !748, file: !627, line: 277, baseType: !631, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !743, file: !740, line: 93, baseType: !752, size: 128, offset: 64)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !753, line: 38, size: 128, elements: !754)
!753 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!754 = !{!755, !757}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !752, file: !753, line: 39, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !752, file: !753, line: 39, baseType: !758, size: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !743, file: !740, line: 94, baseType: !742, size: 64, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !743, file: !740, line: 95, baseType: !761, size: 128, offset: 256)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !740, line: 47, size: 128, elements: !762)
!762 = !{!763, !772}
!763 = !DIDerivedType(tag: DW_TAG_member, scope: !761, file: !740, line: 48, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !761, file: !740, line: 48, size: 64, elements: !765)
!765 = !{!766, !771}
!766 = !DIDerivedType(tag: DW_TAG_member, scope: !764, file: !740, line: 49, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !764, file: !740, line: 49, size: 64, elements: !768)
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !767, file: !740, line: 50, baseType: !443, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !767, file: !740, line: 50, baseType: !443, size: 32, offset: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !764, file: !740, line: 52, baseType: !540, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !761, file: !740, line: 54, baseType: !773, size: 64, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !743, file: !740, line: 96, baseType: !776, size: 64, offset: 384)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 610, size: 4224, elements: !778)
!778 = !{!779, !781, !782, !790, !797, !798, !952, !1771, !1772, !1773, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !2050, !2058, !2059, !2060, !2378, !2379, !2380, !2381}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !777, file: !31, line: 611, baseType: !780, size: 16)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !334, line: 19, baseType: !394)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !777, file: !31, line: 612, baseType: !394, size: 16, offset: 16)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !777, file: !31, line: 613, baseType: !783, size: 32, offset: 32)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !784, line: 23, baseType: !785)
!784 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !784, line: 21, size: 32, elements: !786)
!786 = !{!787}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !785, file: !784, line: 22, baseType: !788, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !334, line: 32, baseType: !789)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !624, line: 49, baseType: !7)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !777, file: !31, line: 614, baseType: !791, size: 32, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !784, line: 28, baseType: !792)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !784, line: 26, size: 32, elements: !793)
!793 = !{!794}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !792, file: !784, line: 27, baseType: !795, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !334, line: 33, baseType: !796)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !624, line: 50, baseType: !7)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !777, file: !31, line: 615, baseType: !7, size: 32, offset: 96)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !777, file: !31, line: 622, baseType: !799, size: 64, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !801)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1864, size: 1536, align: 512, elements: !802)
!802 = !{!803, !807, !821, !825, !831, !836, !842, !846, !850, !854, !858, !859, !865, !869, !893, !922, !932, !938, !943, !947, !948}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !801, file: !31, line: 1865, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!742, !776, !742, !7}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !801, file: !31, line: 1866, baseType: !808, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!811, !742, !776, !812}
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !814, line: 10, size: 128, elements: !815)
!814 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!815 = !{!816, !820}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !813, file: !814, line: 11, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{null, !332}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !813, file: !814, line: 12, baseType: !332, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !801, file: !31, line: 1867, baseType: !822, size: 64, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!345, !776, !345}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !801, file: !31, line: 1868, baseType: !826, size: 64, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{!829, !776, !345}
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 581, flags: DIFlagFwdDecl)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !801, file: !31, line: 1870, baseType: !832, size: 64, offset: 256)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!345, !742, !835, !345}
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !801, file: !31, line: 1872, baseType: !837, size: 64, offset: 320)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!345, !776, !742, !780, !840}
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !334, line: 30, baseType: !841)
!841 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !801, file: !31, line: 1873, baseType: !843, size: 64, offset: 384)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!345, !742, !776, !742}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !801, file: !31, line: 1874, baseType: !847, size: 64, offset: 448)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!345, !776, !742}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !801, file: !31, line: 1875, baseType: !851, size: 64, offset: 512)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!345, !776, !742, !811}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !801, file: !31, line: 1876, baseType: !855, size: 64, offset: 576)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!345, !776, !742, !780}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !801, file: !31, line: 1877, baseType: !847, size: 64, offset: 640)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !801, file: !31, line: 1878, baseType: !860, size: 64, offset: 704)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!345, !776, !742, !780, !863}
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !334, line: 16, baseType: !864)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !334, line: 13, baseType: !443)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !801, file: !31, line: 1879, baseType: !866, size: 64, offset: 768)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!345, !776, !742, !776, !742, !7}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !801, file: !31, line: 1881, baseType: !870, size: 64, offset: 832)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!345, !742, !873}
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 219, size: 640, elements: !875)
!875 = !{!876, !877, !878, !879, !880, !883, !890, !891, !892}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !874, file: !31, line: 220, baseType: !7, size: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !874, file: !31, line: 221, baseType: !780, size: 16, offset: 32)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !874, file: !31, line: 222, baseType: !783, size: 32, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !874, file: !31, line: 223, baseType: !791, size: 32, offset: 96)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !874, file: !31, line: 224, baseType: !881, size: 64, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !334, line: 46, baseType: !882)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !624, line: 88, baseType: !572)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !874, file: !31, line: 225, baseType: !884, size: 128, offset: 192)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !885, line: 13, size: 128, elements: !886)
!885 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!886 = !{!887, !889}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !884, file: !885, line: 14, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !885, line: 8, baseType: !571)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !884, file: !885, line: 15, baseType: !344, size: 64, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !874, file: !31, line: 226, baseType: !884, size: 128, offset: 320)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !874, file: !31, line: 227, baseType: !884, size: 128, offset: 448)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !874, file: !31, line: 234, baseType: !712, size: 64, offset: 576)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !801, file: !31, line: 1882, baseType: !894, size: 64, offset: 896)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{!345, !897, !899, !443, !7}
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !734)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !901, line: 22, size: 1152, elements: !902)
!901 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!902 = !{!903, !904, !905, !906, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !900, file: !901, line: 23, baseType: !443, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !900, file: !901, line: 24, baseType: !780, size: 16, offset: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !900, file: !901, line: 25, baseType: !7, size: 32, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !900, file: !901, line: 26, baseType: !907, size: 32, offset: 96)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !334, line: 104, baseType: !443)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !900, file: !901, line: 27, baseType: !540, size: 64, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !900, file: !901, line: 28, baseType: !540, size: 64, offset: 192)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !900, file: !901, line: 37, baseType: !540, size: 64, offset: 256)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !900, file: !901, line: 38, baseType: !863, size: 32, offset: 320)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !900, file: !901, line: 39, baseType: !863, size: 32, offset: 352)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !900, file: !901, line: 40, baseType: !783, size: 32, offset: 384)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !900, file: !901, line: 41, baseType: !791, size: 32, offset: 416)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !900, file: !901, line: 42, baseType: !881, size: 64, offset: 448)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !900, file: !901, line: 43, baseType: !884, size: 128, offset: 512)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !900, file: !901, line: 44, baseType: !884, size: 128, offset: 640)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !900, file: !901, line: 45, baseType: !884, size: 128, offset: 768)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !900, file: !901, line: 46, baseType: !884, size: 128, offset: 896)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !900, file: !901, line: 47, baseType: !540, size: 64, offset: 1024)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !900, file: !901, line: 48, baseType: !540, size: 64, offset: 1088)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !801, file: !31, line: 1883, baseType: !923, size: 64, offset: 960)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!926, !742, !835, !929}
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !334, line: 60, baseType: !927)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !624, line: 73, baseType: !928)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !624, line: 15, baseType: !344)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !334, line: 55, baseType: !930)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !624, line: 72, baseType: !931)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !624, line: 16, baseType: !343)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !801, file: !31, line: 1884, baseType: !933, size: 64, offset: 1024)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{!345, !776, !936, !540, !540}
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 50, flags: DIFlagFwdDecl)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !801, file: !31, line: 1886, baseType: !939, size: 64, offset: 1088)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{!345, !776, !942, !345}
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !801, file: !31, line: 1887, baseType: !944, size: 64, offset: 1152)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!345, !776, !742, !712, !7, !780}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !801, file: !31, line: 1890, baseType: !855, size: 64, offset: 1216)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !801, file: !31, line: 1891, baseType: !949, size: 64, offset: 1280)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{!345, !776, !829, !345}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !777, file: !31, line: 623, baseType: !953, size: 64, offset: 192)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1416, size: 9472, elements: !955)
!955 = !{!956, !957, !958, !959, !960, !961, !1010, !1347, !1435, !1518, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1534, !1538, !1539, !1542, !1545, !1548, !1549, !1550, !1591, !1624, !1625, !1626, !1627, !1628, !1629, !1632, !1636, !1645, !1646, !1648, !1649, !1650, !1709, !1710, !1725, !1726, !1727, !1728, !1729, !1733, !1734, !1737, !1752, !1753, !1754, !1765, !1766, !1767, !1768, !1769, !1770}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !954, file: !31, line: 1417, baseType: !533, size: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !954, file: !31, line: 1418, baseType: !863, size: 32, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !954, file: !31, line: 1419, baseType: !340, size: 8, offset: 160)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !954, file: !31, line: 1420, baseType: !343, size: 64, offset: 192)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !954, file: !31, line: 1421, baseType: !881, size: 64, offset: 256)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !954, file: !31, line: 1422, baseType: !962, size: 64, offset: 320)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2228, size: 576, elements: !964)
!964 = !{!965, !966, !967, !974, !978, !982, !986, !987, !988, !998, !1001, !1002, !1003, !1007, !1008, !1009}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !963, file: !31, line: 2229, baseType: !811, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !963, file: !31, line: 2230, baseType: !345, size: 32, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !963, file: !31, line: 2238, baseType: !968, size: 64, offset: 128)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DISubroutineType(types: !970)
!970 = !{!345, !971}
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !973, line: 28, flags: DIFlagFwdDecl)
!973 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!974 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !963, file: !31, line: 2239, baseType: !975, size: 64, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !977)
!977 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 70, flags: DIFlagFwdDecl)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !963, file: !31, line: 2240, baseType: !979, size: 64, offset: 256)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{!742, !962, !345, !811, !332}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !963, file: !31, line: 2242, baseType: !983, size: 64, offset: 320)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{null, !953}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !963, file: !31, line: 2243, baseType: !329, size: 64, offset: 384)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !963, file: !31, line: 2244, baseType: !962, size: 64, offset: 448)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !963, file: !31, line: 2245, baseType: !989, size: 64, offset: 512)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !334, line: 182, size: 64, elements: !990)
!990 = !{!991}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !989, file: !334, line: 183, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !334, line: 186, size: 128, elements: !994)
!994 = !{!995, !996}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !993, file: !334, line: 187, baseType: !992, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !993, file: !334, line: 187, baseType: !997, size: 64, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !963, file: !31, line: 2247, baseType: !999, offset: 576)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1000, line: 187, elements: !473)
!1000 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !963, file: !31, line: 2248, baseType: !999, offset: 576)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !963, file: !31, line: 2249, baseType: !999, offset: 576)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !963, file: !31, line: 2250, baseType: !1004, offset: 576)
!1004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !999, elements: !1005)
!1005 = !{!1006}
!1006 = !DISubrange(count: 3)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !963, file: !31, line: 2252, baseType: !999, offset: 576)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !963, file: !31, line: 2253, baseType: !999, offset: 576)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !963, file: !31, line: 2254, baseType: !999, offset: 576)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !954, file: !31, line: 1423, baseType: !1011, size: 64, offset: 384)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1013)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 1935, size: 1472, elements: !1014)
!1014 = !{!1015, !1019, !1023, !1024, !1028, !1034, !1038, !1039, !1040, !1044, !1048, !1049, !1050, !1051, !1057, !1062, !1063, !1069, !1070, !1071, !1072, !1331, !1346}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1013, file: !31, line: 1936, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!776, !953}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1013, file: !31, line: 1937, baseType: !1020, size: 64, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{null, !776}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1013, file: !31, line: 1938, baseType: !1020, size: 64, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1013, file: !31, line: 1940, baseType: !1025, size: 64, offset: 192)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{null, !776, !345}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1013, file: !31, line: 1941, baseType: !1029, size: 64, offset: 256)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!345, !776, !1032}
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !31, line: 289, flags: DIFlagFwdDecl)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1013, file: !31, line: 1942, baseType: !1035, size: 64, offset: 320)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!345, !776}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1013, file: !31, line: 1943, baseType: !1020, size: 64, offset: 384)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1013, file: !31, line: 1944, baseType: !983, size: 64, offset: 448)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1013, file: !31, line: 1945, baseType: !1041, size: 64, offset: 512)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!345, !953, !345}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1013, file: !31, line: 1946, baseType: !1045, size: 64, offset: 576)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!345, !953}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1013, file: !31, line: 1947, baseType: !1045, size: 64, offset: 640)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1013, file: !31, line: 1948, baseType: !1045, size: 64, offset: 704)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1013, file: !31, line: 1949, baseType: !1045, size: 64, offset: 768)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1013, file: !31, line: 1950, baseType: !1052, size: 64, offset: 832)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!345, !742, !1055}
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 57, flags: DIFlagFwdDecl)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1013, file: !31, line: 1951, baseType: !1058, size: 64, offset: 896)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!345, !953, !1061, !835}
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1013, file: !31, line: 1952, baseType: !983, size: 64, offset: 960)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1013, file: !31, line: 1954, baseType: !1064, size: 64, offset: 1024)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!345, !1067, !742}
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !690, line: 539, flags: DIFlagFwdDecl)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1013, file: !31, line: 1955, baseType: !1064, size: 64, offset: 1088)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1013, file: !31, line: 1956, baseType: !1064, size: 64, offset: 1152)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1013, file: !31, line: 1957, baseType: !1064, size: 64, offset: 1216)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !1013, file: !31, line: 1963, baseType: !1073, size: 64, offset: 1280)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!345, !953, !1076, !333}
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !672, line: 68, size: 512, align: 128, elements: !1078)
!1078 = !{!1079, !1080, !1323, !1330}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1077, file: !672, line: 69, baseType: !343, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !672, line: 77, baseType: !1081, size: 320, offset: 64)
!1081 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1077, file: !672, line: 77, size: 320, elements: !1082)
!1082 = !{!1083, !1255, !1260, !1288, !1296, !1302, !1315, !1322}
!1083 = !DIDerivedType(tag: DW_TAG_member, scope: !1081, file: !672, line: 78, baseType: !1084, size: 320)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1081, file: !672, line: 78, size: 320, elements: !1085)
!1085 = !{!1086, !1087, !1253, !1254}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1084, file: !672, line: 84, baseType: !533, size: 128)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1084, file: !672, line: 86, baseType: !1088, size: 64, offset: 128)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 451, size: 1216, align: 64, elements: !1090)
!1090 = !{!1091, !1092, !1106, !1107, !1108, !1109, !1123, !1124, !1125, !1126, !1246, !1247, !1250, !1251, !1252}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1089, file: !31, line: 452, baseType: !776, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1089, file: !31, line: 453, baseType: !1093, size: 128, offset: 64)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1094, line: 292, size: 128, elements: !1095)
!1094 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1095 = !{!1096, !1104, !1105}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1093, file: !1094, line: 293, baseType: !1097)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !466, line: 83, baseType: !1098)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !466, line: 71, elements: !1099)
!1099 = !{!1100}
!1100 = !DIDerivedType(tag: DW_TAG_member, scope: !1098, file: !466, line: 72, baseType: !1101)
!1101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1098, file: !466, line: 72, elements: !1102)
!1102 = !{!1103}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !1101, file: !466, line: 73, baseType: !467)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1093, file: !1094, line: 295, baseType: !333, size: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1093, file: !1094, line: 296, baseType: !332, size: 64, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1089, file: !31, line: 454, baseType: !333, size: 32, offset: 192)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1089, file: !31, line: 455, baseType: !508, size: 32, offset: 224)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1089, file: !31, line: 460, baseType: !475, size: 128, offset: 256)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1089, file: !31, line: 461, baseType: !1110, size: 256, offset: 384)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1111, line: 35, size: 256, elements: !1112)
!1111 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1112 = !{!1113, !1120, !1121, !1122}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1110, file: !1111, line: 36, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1115, line: 13, baseType: !1116)
!1115 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !334, line: 175, baseType: !1117)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !334, line: 173, size: 64, elements: !1118)
!1118 = !{!1119}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1117, file: !334, line: 174, baseType: !570, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1110, file: !1111, line: 42, baseType: !1114, size: 64, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1110, file: !1111, line: 46, baseType: !465, offset: 128)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1110, file: !1111, line: 47, baseType: !533, size: 128, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1089, file: !31, line: 462, baseType: !343, size: 64, offset: 640)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !1089, file: !31, line: 463, baseType: !343, size: 64, offset: 704)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1089, file: !31, line: 464, baseType: !343, size: 64, offset: 768)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1089, file: !31, line: 465, baseType: !1127, size: 64, offset: 832)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1129)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 367, size: 1408, elements: !1130)
!1130 = !{!1131, !1135, !1139, !1143, !1147, !1151, !1157, !1163, !1167, !1172, !1176, !1180, !1184, !1210, !1214, !1220, !1221, !1222, !1226, !1231, !1235, !1242}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1129, file: !31, line: 368, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!345, !1076, !1032}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1129, file: !31, line: 369, baseType: !1136, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!345, !712, !1076}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1129, file: !31, line: 372, baseType: !1140, size: 64, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!345, !1088, !1032}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1129, file: !31, line: 375, baseType: !1144, size: 64, offset: 192)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!345, !1076}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1129, file: !31, line: 381, baseType: !1148, size: 64, offset: 256)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!345, !712, !1088, !536, !7}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1129, file: !31, line: 383, baseType: !1152, size: 64, offset: 320)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{null, !1155}
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !31, line: 290, flags: DIFlagFwdDecl)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1129, file: !31, line: 385, baseType: !1158, size: 64, offset: 384)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!345, !712, !1088, !881, !7, !7, !1161, !1162}
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1129, file: !31, line: 388, baseType: !1164, size: 64, offset: 448)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!345, !712, !1088, !881, !7, !7, !1076, !332}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1129, file: !31, line: 393, baseType: !1168, size: 64, offset: 512)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!1171, !1088, !1171}
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !334, line: 125, baseType: !540)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1129, file: !31, line: 394, baseType: !1173, size: 64, offset: 576)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{null, !1076, !7, !7}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1129, file: !31, line: 395, baseType: !1177, size: 64, offset: 640)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!345, !1076, !333}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1129, file: !31, line: 396, baseType: !1181, size: 64, offset: 704)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{null, !1076}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1129, file: !31, line: 397, baseType: !1185, size: 64, offset: 768)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!926, !1188, !1208}
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 320, size: 384, elements: !1190)
!1190 = !{!1191, !1192, !1193, !1197, !1198, !1199, !1200, !1201}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1189, file: !31, line: 321, baseType: !712, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1189, file: !31, line: 326, baseType: !881, size: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1189, file: !31, line: 327, baseType: !1194, size: 64, offset: 128)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{null, !1188, !344, !344}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1189, file: !31, line: 328, baseType: !332, size: 64, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1189, file: !31, line: 329, baseType: !345, size: 32, offset: 256)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1189, file: !31, line: 330, baseType: !428, size: 16, offset: 288)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1189, file: !31, line: 331, baseType: !428, size: 16, offset: 304)
!1201 = !DIDerivedType(tag: DW_TAG_member, scope: !1189, file: !31, line: 332, baseType: !1202, size: 64, offset: 320)
!1202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1189, file: !31, line: 332, size: 64, elements: !1203)
!1203 = !{!1204, !1205}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1202, file: !31, line: 333, baseType: !7, size: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1202, file: !31, line: 334, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !31, line: 334, flags: DIFlagFwdDecl)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !31, line: 64, flags: DIFlagFwdDecl)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1129, file: !31, line: 402, baseType: !1211, size: 64, offset: 832)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!345, !1088, !1076, !1076, !11}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1129, file: !31, line: 404, baseType: !1215, size: 64, offset: 896)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!840, !1076, !1218}
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1219, line: 305, baseType: !7)
!1219 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1129, file: !31, line: 405, baseType: !1181, size: 64, offset: 960)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1129, file: !31, line: 406, baseType: !1144, size: 64, offset: 1024)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1129, file: !31, line: 407, baseType: !1223, size: 64, offset: 1088)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!345, !1076, !343, !343}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1129, file: !31, line: 409, baseType: !1227, size: 64, offset: 1152)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{null, !1076, !1230, !1230}
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1129, file: !31, line: 410, baseType: !1232, size: 64, offset: 1216)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!345, !1088, !1076}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1129, file: !31, line: 413, baseType: !1236, size: 64, offset: 1280)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!345, !1239, !712, !1241}
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !31, line: 61, flags: DIFlagFwdDecl)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1129, file: !31, line: 415, baseType: !1243, size: 64, offset: 1344)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{null, !712}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1089, file: !31, line: 466, baseType: !343, size: 64, offset: 896)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1089, file: !31, line: 467, baseType: !1248, size: 32, offset: 960)
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1249, line: 8, baseType: !443)
!1249 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1089, file: !31, line: 468, baseType: !1097, offset: 992)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1089, file: !31, line: 469, baseType: !533, size: 128, offset: 1024)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1089, file: !31, line: 470, baseType: !332, size: 64, offset: 1152)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1084, file: !672, line: 87, baseType: !343, size: 64, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1084, file: !672, line: 94, baseType: !343, size: 64, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_member, scope: !1081, file: !672, line: 96, baseType: !1256, size: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1081, file: !672, line: 96, size: 64, elements: !1257)
!1257 = !{!1258}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1256, file: !672, line: 101, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !334, line: 143, baseType: !540)
!1260 = !DIDerivedType(tag: DW_TAG_member, scope: !1081, file: !672, line: 103, baseType: !1261, size: 320)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1081, file: !672, line: 103, size: 320, elements: !1262)
!1262 = !{!1263, !1273, !1276, !1277}
!1263 = !DIDerivedType(tag: DW_TAG_member, scope: !1261, file: !672, line: 104, baseType: !1264, size: 128)
!1264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1261, file: !672, line: 104, size: 128, elements: !1265)
!1265 = !{!1266, !1267}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1264, file: !672, line: 105, baseType: !533, size: 128)
!1267 = !DIDerivedType(tag: DW_TAG_member, scope: !1264, file: !672, line: 106, baseType: !1268, size: 128)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1264, file: !672, line: 106, size: 128, elements: !1269)
!1269 = !{!1270, !1271, !1272}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1268, file: !672, line: 107, baseType: !1076, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1268, file: !672, line: 109, baseType: !345, size: 32, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1268, file: !672, line: 110, baseType: !345, size: 32, offset: 96)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1261, file: !672, line: 117, baseType: !1274, size: 64, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !672, line: 117, flags: DIFlagFwdDecl)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1261, file: !672, line: 119, baseType: !332, size: 64, offset: 192)
!1277 = !DIDerivedType(tag: DW_TAG_member, scope: !1261, file: !672, line: 120, baseType: !1278, size: 64, offset: 256)
!1278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1261, file: !672, line: 120, size: 64, elements: !1279)
!1279 = !{!1280, !1281, !1282}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1278, file: !672, line: 121, baseType: !332, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1278, file: !672, line: 122, baseType: !343, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, scope: !1278, file: !672, line: 123, baseType: !1283, size: 32)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1278, file: !672, line: 123, size: 32, elements: !1284)
!1284 = !{!1285, !1286, !1287}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1283, file: !672, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1283, file: !672, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1283, file: !672, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1288 = !DIDerivedType(tag: DW_TAG_member, scope: !1081, file: !672, line: 130, baseType: !1289, size: 192)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1081, file: !672, line: 130, size: 192, elements: !1290)
!1290 = !{!1291, !1292, !1293, !1294, !1295}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1289, file: !672, line: 131, baseType: !343, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1289, file: !672, line: 134, baseType: !340, size: 8, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1289, file: !672, line: 135, baseType: !340, size: 8, offset: 72)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1289, file: !672, line: 136, baseType: !508, size: 32, offset: 96)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1289, file: !672, line: 137, baseType: !7, size: 32, offset: 128)
!1296 = !DIDerivedType(tag: DW_TAG_member, scope: !1081, file: !672, line: 139, baseType: !1297, size: 256)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1081, file: !672, line: 139, size: 256, elements: !1298)
!1298 = !{!1299, !1300, !1301}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1297, file: !672, line: 140, baseType: !343, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1297, file: !672, line: 141, baseType: !508, size: 32, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1297, file: !672, line: 143, baseType: !533, size: 128, offset: 128)
!1302 = !DIDerivedType(tag: DW_TAG_member, scope: !1081, file: !672, line: 145, baseType: !1303, size: 256)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1081, file: !672, line: 145, size: 256, elements: !1304)
!1304 = !{!1305, !1306, !1308, !1309, !1314}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1303, file: !672, line: 146, baseType: !343, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1303, file: !672, line: 147, baseType: !1307, size: 64, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !690, line: 509, baseType: !1076)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1303, file: !672, line: 148, baseType: !343, size: 64, offset: 128)
!1309 = !DIDerivedType(tag: DW_TAG_member, scope: !1303, file: !672, line: 149, baseType: !1310, size: 64, offset: 192)
!1310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1303, file: !672, line: 149, size: 64, elements: !1311)
!1311 = !{!1312, !1313}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1310, file: !672, line: 150, baseType: !670, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1310, file: !672, line: 151, baseType: !508, size: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1303, file: !672, line: 156, baseType: !1097, offset: 256)
!1315 = !DIDerivedType(tag: DW_TAG_member, scope: !1081, file: !672, line: 159, baseType: !1316, size: 128)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1081, file: !672, line: 159, size: 128, elements: !1317)
!1317 = !{!1318, !1321}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1316, file: !672, line: 161, baseType: !1319, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !672, line: 161, flags: DIFlagFwdDecl)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1316, file: !672, line: 162, baseType: !332, size: 64, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1081, file: !672, line: 176, baseType: !725, size: 128, align: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !672, line: 179, baseType: !1324, size: 32, offset: 384)
!1324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1077, file: !672, line: 179, size: 32, elements: !1325)
!1325 = !{!1326, !1327, !1328, !1329}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1324, file: !672, line: 184, baseType: !508, size: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1324, file: !672, line: 192, baseType: !7, size: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1324, file: !672, line: 194, baseType: !7, size: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1324, file: !672, line: 195, baseType: !345, size: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1077, file: !672, line: 199, baseType: !508, size: 32, offset: 416)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1013, file: !31, line: 1964, baseType: !1332, size: 64, offset: 1344)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!344, !953, !1335}
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1337, line: 12, size: 256, elements: !1338)
!1337 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!1338 = !{!1339, !1340, !1341, !1342, !1343}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1336, file: !1337, line: 13, baseType: !333, size: 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1336, file: !1337, line: 16, baseType: !345, size: 32, offset: 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1336, file: !1337, line: 23, baseType: !343, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1336, file: !1337, line: 30, baseType: !343, size: 64, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1336, file: !1337, line: 33, baseType: !1344, size: 64, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !672, line: 27, flags: DIFlagFwdDecl)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1013, file: !31, line: 1966, baseType: !1332, size: 64, offset: 1408)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !954, file: !31, line: 1424, baseType: !1348, size: 64, offset: 448)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1350)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 322, size: 704, elements: !1351)
!1351 = !{!1352, !1404, !1408, !1412, !1413, !1414, !1415, !1416, !1421, !1426, !1430}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1350, file: !19, line: 323, baseType: !1353, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!345, !1356}
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 294, size: 1600, elements: !1358)
!1358 = !{!1359, !1360, !1361, !1362, !1363, !1370, !1371, !1372, !1373, !1389, !1390, !1391}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1357, file: !19, line: 295, baseType: !993, size: 128)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1357, file: !19, line: 296, baseType: !533, size: 128, offset: 128)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1357, file: !19, line: 297, baseType: !533, size: 128, offset: 256)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1357, file: !19, line: 298, baseType: !533, size: 128, offset: 384)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1357, file: !19, line: 299, baseType: !1364, size: 192, offset: 512)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1365, line: 53, size: 192, elements: !1366)
!1365 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1366 = !{!1367, !1368, !1369}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1364, file: !1365, line: 54, baseType: !1114, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1364, file: !1365, line: 55, baseType: !1097, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1364, file: !1365, line: 59, baseType: !533, size: 128, offset: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1357, file: !19, line: 300, baseType: !1097, offset: 704)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1357, file: !19, line: 301, baseType: !508, size: 32, offset: 704)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1357, file: !19, line: 302, baseType: !953, size: 64, offset: 768)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1357, file: !19, line: 303, baseType: !1374, size: 64, offset: 832)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1375)
!1375 = !{!1376, !1388}
!1376 = !DIDerivedType(tag: DW_TAG_member, scope: !1374, file: !19, line: 69, baseType: !1377, size: 32)
!1377 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1374, file: !19, line: 69, size: 32, elements: !1378)
!1378 = !{!1379, !1380, !1381}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1377, file: !19, line: 70, baseType: !783, size: 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1377, file: !19, line: 71, baseType: !791, size: 32)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1377, file: !19, line: 72, baseType: !1382, size: 32)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1383, line: 24, baseType: !1384)
!1383 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1383, line: 22, size: 32, elements: !1385)
!1385 = !{!1386}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1384, file: !1383, line: 23, baseType: !1387, size: 32)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1383, line: 20, baseType: !789)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1374, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1357, file: !19, line: 304, baseType: !881, size: 64, offset: 896)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1357, file: !19, line: 305, baseType: !343, size: 64, offset: 960)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1357, file: !19, line: 306, baseType: !1392, size: 576, offset: 1024)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1393)
!1393 = !{!1394, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1392, file: !19, line: 206, baseType: !1395, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !572)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1392, file: !19, line: 207, baseType: !1395, size: 64, offset: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1392, file: !19, line: 208, baseType: !1395, size: 64, offset: 128)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1392, file: !19, line: 209, baseType: !1395, size: 64, offset: 192)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1392, file: !19, line: 210, baseType: !1395, size: 64, offset: 256)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1392, file: !19, line: 211, baseType: !1395, size: 64, offset: 320)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1392, file: !19, line: 212, baseType: !1395, size: 64, offset: 384)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1392, file: !19, line: 213, baseType: !888, size: 64, offset: 448)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1392, file: !19, line: 214, baseType: !888, size: 64, offset: 512)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1350, file: !19, line: 324, baseType: !1405, size: 64, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!1356, !953, !345}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1350, file: !19, line: 325, baseType: !1409, size: 64, offset: 128)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{null, !1356}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1350, file: !19, line: 326, baseType: !1353, size: 64, offset: 192)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1350, file: !19, line: 327, baseType: !1353, size: 64, offset: 256)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1350, file: !19, line: 328, baseType: !1353, size: 64, offset: 320)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1350, file: !19, line: 329, baseType: !1041, size: 64, offset: 384)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1350, file: !19, line: 332, baseType: !1417, size: 64, offset: 448)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!1420, !776}
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1350, file: !19, line: 333, baseType: !1422, size: 64, offset: 512)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!345, !776, !1425}
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1350, file: !19, line: 335, baseType: !1427, size: 64, offset: 576)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!345, !776, !1420}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1350, file: !19, line: 337, baseType: !1431, size: 64, offset: 640)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!345, !953, !1434}
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !954, file: !31, line: 1425, baseType: !1436, size: 64, offset: 512)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1438)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 428, size: 704, elements: !1439)
!1439 = !{!1440, !1444, !1445, !1449, !1450, !1451, !1466, !1489, !1493, !1494, !1517}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1438, file: !19, line: 429, baseType: !1441, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!345, !953, !345, !345, !897}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1438, file: !19, line: 430, baseType: !1041, size: 64, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1438, file: !19, line: 431, baseType: !1446, size: 64, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!345, !953, !7}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1438, file: !19, line: 432, baseType: !1446, size: 64, offset: 192)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1438, file: !19, line: 433, baseType: !1041, size: 64, offset: 256)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1438, file: !19, line: 434, baseType: !1452, size: 64, offset: 320)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!345, !953, !345, !1455}
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 415, size: 256, elements: !1457)
!1457 = !{!1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1456, file: !19, line: 416, baseType: !345, size: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1456, file: !19, line: 417, baseType: !7, size: 32, offset: 32)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1456, file: !19, line: 418, baseType: !7, size: 32, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1456, file: !19, line: 420, baseType: !7, size: 32, offset: 96)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1456, file: !19, line: 421, baseType: !7, size: 32, offset: 128)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1456, file: !19, line: 422, baseType: !7, size: 32, offset: 160)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1456, file: !19, line: 423, baseType: !7, size: 32, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1456, file: !19, line: 424, baseType: !7, size: 32, offset: 224)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1438, file: !19, line: 435, baseType: !1467, size: 64, offset: 384)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!345, !953, !1374, !1470}
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 343, size: 960, elements: !1472)
!1472 = !{!1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1471, file: !19, line: 344, baseType: !345, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1471, file: !19, line: 345, baseType: !540, size: 64, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1471, file: !19, line: 346, baseType: !540, size: 64, offset: 128)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1471, file: !19, line: 347, baseType: !540, size: 64, offset: 192)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1471, file: !19, line: 348, baseType: !540, size: 64, offset: 256)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1471, file: !19, line: 349, baseType: !540, size: 64, offset: 320)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1471, file: !19, line: 350, baseType: !540, size: 64, offset: 384)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1471, file: !19, line: 351, baseType: !570, size: 64, offset: 448)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1471, file: !19, line: 353, baseType: !570, size: 64, offset: 512)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1471, file: !19, line: 354, baseType: !345, size: 32, offset: 576)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1471, file: !19, line: 355, baseType: !345, size: 32, offset: 608)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1471, file: !19, line: 356, baseType: !540, size: 64, offset: 640)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1471, file: !19, line: 357, baseType: !540, size: 64, offset: 704)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1471, file: !19, line: 358, baseType: !540, size: 64, offset: 768)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1471, file: !19, line: 359, baseType: !570, size: 64, offset: 832)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1471, file: !19, line: 360, baseType: !345, size: 32, offset: 896)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1438, file: !19, line: 436, baseType: !1490, size: 64, offset: 448)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!345, !953, !1434, !1470}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1438, file: !19, line: 438, baseType: !1467, size: 64, offset: 512)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1438, file: !19, line: 439, baseType: !1495, size: 64, offset: 576)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!345, !953, !1498}
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 409, size: 1408, elements: !1500)
!1500 = !{!1501, !1502}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1499, file: !19, line: 410, baseType: !7, size: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1499, file: !19, line: 411, baseType: !1503, size: 1344, offset: 64)
!1503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1504, size: 1344, elements: !1005)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 395, size: 448, elements: !1505)
!1505 = !{!1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1516}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1504, file: !19, line: 396, baseType: !7, size: 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1504, file: !19, line: 397, baseType: !7, size: 32, offset: 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1504, file: !19, line: 399, baseType: !7, size: 32, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1504, file: !19, line: 400, baseType: !7, size: 32, offset: 96)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1504, file: !19, line: 401, baseType: !7, size: 32, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1504, file: !19, line: 402, baseType: !7, size: 32, offset: 160)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1504, file: !19, line: 403, baseType: !7, size: 32, offset: 192)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1504, file: !19, line: 404, baseType: !542, size: 64, offset: 256)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1504, file: !19, line: 405, baseType: !1515, size: 64, offset: 320)
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !334, line: 126, baseType: !540)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1504, file: !19, line: 406, baseType: !1515, size: 64, offset: 384)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1438, file: !19, line: 440, baseType: !1446, size: 64, offset: 640)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !954, file: !31, line: 1426, baseType: !1519, size: 64, offset: 576)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1521)
!1521 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 49, flags: DIFlagFwdDecl)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !954, file: !31, line: 1427, baseType: !343, size: 64, offset: 640)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !954, file: !31, line: 1428, baseType: !343, size: 64, offset: 704)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !954, file: !31, line: 1429, baseType: !343, size: 64, offset: 768)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !954, file: !31, line: 1430, baseType: !742, size: 64, offset: 832)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !954, file: !31, line: 1431, baseType: !1110, size: 256, offset: 896)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !954, file: !31, line: 1432, baseType: !345, size: 32, offset: 1152)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !954, file: !31, line: 1433, baseType: !508, size: 32, offset: 1184)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !954, file: !31, line: 1437, baseType: !1530, size: 64, offset: 1216)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1533)
!1533 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1437, flags: DIFlagFwdDecl)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !954, file: !31, line: 1449, baseType: !1535, size: 64, offset: 1280)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !753, line: 34, size: 64, elements: !1536)
!1536 = !{!1537}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1535, file: !753, line: 35, baseType: !756, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !954, file: !31, line: 1450, baseType: !533, size: 128, offset: 1344)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !954, file: !31, line: 1451, baseType: !1540, size: 64, offset: 1472)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !31, line: 699, flags: DIFlagFwdDecl)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !954, file: !31, line: 1452, baseType: !1543, size: 64, offset: 1536)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !492, line: 40, flags: DIFlagFwdDecl)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !954, file: !31, line: 1453, baseType: !1546, size: 64, offset: 1600)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1453, flags: DIFlagFwdDecl)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !954, file: !31, line: 1454, baseType: !993, size: 128, offset: 1664)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !954, file: !31, line: 1455, baseType: !7, size: 32, offset: 1792)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !954, file: !31, line: 1456, baseType: !1551, size: 2432, offset: 1856)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 518, size: 2432, elements: !1552)
!1552 = !{!1553, !1554, !1555, !1557, !1589}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1551, file: !19, line: 519, baseType: !7, size: 32)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1551, file: !19, line: 520, baseType: !1110, size: 256, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1551, file: !19, line: 521, baseType: !1556, size: 192, offset: 320)
!1556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !776, size: 192, elements: !1005)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1551, file: !19, line: 522, baseType: !1558, size: 1728, offset: 512)
!1558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1559, size: 1728, elements: !1005)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1560)
!1560 = !{!1561, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1559, file: !19, line: 223, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 443, size: 256, elements: !1564)
!1564 = !{!1565, !1566, !1579, !1580}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1563, file: !19, line: 444, baseType: !345, size: 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1563, file: !19, line: 445, baseType: !1567, size: 64, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1569)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 310, size: 512, elements: !1570)
!1570 = !{!1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1569, file: !19, line: 311, baseType: !1041, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1569, file: !19, line: 312, baseType: !1041, size: 64, offset: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1569, file: !19, line: 313, baseType: !1041, size: 64, offset: 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1569, file: !19, line: 314, baseType: !1041, size: 64, offset: 192)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1569, file: !19, line: 315, baseType: !1353, size: 64, offset: 256)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1569, file: !19, line: 316, baseType: !1353, size: 64, offset: 320)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1569, file: !19, line: 317, baseType: !1353, size: 64, offset: 384)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1569, file: !19, line: 318, baseType: !1431, size: 64, offset: 448)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1563, file: !19, line: 446, baseType: !329, size: 64, offset: 128)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1563, file: !19, line: 447, baseType: !1562, size: 64, offset: 192)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1559, file: !19, line: 224, baseType: !345, size: 32, offset: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1559, file: !19, line: 226, baseType: !533, size: 128, offset: 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1559, file: !19, line: 227, baseType: !343, size: 64, offset: 256)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1559, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1559, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1559, file: !19, line: 230, baseType: !1395, size: 64, offset: 384)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1559, file: !19, line: 231, baseType: !1395, size: 64, offset: 448)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1559, file: !19, line: 232, baseType: !332, size: 64, offset: 512)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1551, file: !19, line: 523, baseType: !1590, size: 192, offset: 2240)
!1590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1567, size: 192, elements: !1005)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !954, file: !31, line: 1458, baseType: !1592, size: 2112, offset: 4288)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1410, size: 2112, elements: !1593)
!1593 = !{!1594, !1595, !1602}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1592, file: !31, line: 1411, baseType: !345, size: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !1592, file: !31, line: 1412, baseType: !1596, size: 128, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1597, line: 40, baseType: !1598)
!1597 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1597, line: 36, size: 128, elements: !1599)
!1599 = !{!1600, !1601}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1598, file: !1597, line: 37, baseType: !1097)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1598, file: !1597, line: 38, baseType: !533, size: 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1592, file: !31, line: 1413, baseType: !1603, size: 1920, offset: 192)
!1603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1604, size: 1920, elements: !1005)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1605, line: 12, size: 640, elements: !1606)
!1605 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1606 = !{!1607, !1615, !1617, !1622, !1623}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1604, file: !1605, line: 13, baseType: !1608, size: 320)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1609, line: 17, size: 320, elements: !1610)
!1609 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!1610 = !{!1611, !1612, !1613, !1614}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1608, file: !1609, line: 18, baseType: !345, size: 32)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1608, file: !1609, line: 19, baseType: !345, size: 32, offset: 32)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1608, file: !1609, line: 20, baseType: !1596, size: 128, offset: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1608, file: !1609, line: 22, baseType: !725, size: 128, align: 64, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1604, file: !1605, line: 14, baseType: !1616, size: 64, offset: 320)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1604, file: !1605, line: 15, baseType: !1618, size: 64, offset: 384)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1619, line: 16, size: 64, elements: !1620)
!1619 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!1620 = !{!1621}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1618, file: !1619, line: 17, baseType: !490, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1604, file: !1605, line: 16, baseType: !1596, size: 128, offset: 448)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1604, file: !1605, line: 17, baseType: !508, size: 32, offset: 576)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !954, file: !31, line: 1465, baseType: !332, size: 64, offset: 6400)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !954, file: !31, line: 1468, baseType: !443, size: 32, offset: 6464)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !954, file: !31, line: 1470, baseType: !888, size: 64, offset: 6528)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !954, file: !31, line: 1471, baseType: !888, size: 64, offset: 6592)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !954, file: !31, line: 1473, baseType: !444, size: 32, offset: 6656)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !954, file: !31, line: 1474, baseType: !1630, size: 64, offset: 6720)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 603, flags: DIFlagFwdDecl)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !954, file: !31, line: 1477, baseType: !1633, size: 256, offset: 6784)
!1633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 256, elements: !1634)
!1634 = !{!1635}
!1635 = !DISubrange(count: 32)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !954, file: !31, line: 1478, baseType: !1637, size: 128, offset: 7040)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1638, line: 18, baseType: !1639)
!1638 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1638, line: 16, size: 128, elements: !1640)
!1640 = !{!1641}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1639, file: !1638, line: 17, baseType: !1642, size: 128)
!1642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 128, elements: !1643)
!1643 = !{!1644}
!1644 = !DISubrange(count: 16)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !954, file: !31, line: 1480, baseType: !7, size: 32, offset: 7168)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !954, file: !31, line: 1481, baseType: !1647, size: 32, offset: 7200)
!1647 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !334, line: 150, baseType: !7)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !954, file: !31, line: 1487, baseType: !1364, size: 192, offset: 7232)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !954, file: !31, line: 1493, baseType: !811, size: 64, offset: 7424)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !954, file: !31, line: 1495, baseType: !1651, size: 64, offset: 7488)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1653)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !740, line: 135, size: 1024, align: 512, elements: !1654)
!1654 = !{!1655, !1659, !1660, !1667, !1673, !1677, !1681, !1685, !1686, !1690, !1694, !1699, !1703}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1653, file: !740, line: 136, baseType: !1656, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!345, !742, !7}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1653, file: !740, line: 137, baseType: !1656, size: 64, offset: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1653, file: !740, line: 138, baseType: !1661, size: 64, offset: 128)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!345, !1664, !1666}
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !743)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1653, file: !740, line: 139, baseType: !1668, size: 64, offset: 192)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!345, !1664, !7, !811, !1671}
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !761)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1653, file: !740, line: 141, baseType: !1674, size: 64, offset: 256)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!345, !1664}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1653, file: !740, line: 142, baseType: !1678, size: 64, offset: 320)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!345, !742}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1653, file: !740, line: 143, baseType: !1682, size: 64, offset: 384)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{null, !742}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1653, file: !740, line: 144, baseType: !1682, size: 64, offset: 448)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1653, file: !740, line: 145, baseType: !1687, size: 64, offset: 512)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{null, !742, !776}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1653, file: !740, line: 146, baseType: !1691, size: 64, offset: 576)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!835, !742, !835, !345}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1653, file: !740, line: 147, baseType: !1695, size: 64, offset: 640)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!738, !1698}
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1653, file: !740, line: 148, baseType: !1700, size: 64, offset: 704)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!345, !897, !840}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1653, file: !740, line: 149, baseType: !1704, size: 64, offset: 768)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!742, !742, !1707}
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !777)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !954, file: !31, line: 1500, baseType: !345, size: 32, offset: 7552)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !954, file: !31, line: 1502, baseType: !1711, size: 448, offset: 7616)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1337, line: 60, size: 448, elements: !1712)
!1712 = !{!1713, !1718, !1719, !1720, !1721, !1722, !1723}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1711, file: !1337, line: 61, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!343, !1717, !1335}
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1711, file: !1337, line: 63, baseType: !1714, size: 64, offset: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1711, file: !1337, line: 66, baseType: !344, size: 64, offset: 128)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1711, file: !1337, line: 67, baseType: !345, size: 32, offset: 192)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1711, file: !1337, line: 68, baseType: !7, size: 32, offset: 224)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1711, file: !1337, line: 71, baseType: !533, size: 128, offset: 256)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1711, file: !1337, line: 77, baseType: !1724, size: 64, offset: 384)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !954, file: !31, line: 1505, baseType: !1114, size: 64, offset: 8064)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !954, file: !31, line: 1508, baseType: !1114, size: 64, offset: 8128)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !954, file: !31, line: 1511, baseType: !345, size: 32, offset: 8192)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !954, file: !31, line: 1514, baseType: !1248, size: 32, offset: 8224)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !954, file: !31, line: 1517, baseType: !1730, size: 64, offset: 8256)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1732, line: 18, flags: DIFlagFwdDecl)
!1732 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !954, file: !31, line: 1518, baseType: !989, size: 64, offset: 8320)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !954, file: !31, line: 1525, baseType: !1735, size: 64, offset: 8384)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !784, line: 18, flags: DIFlagFwdDecl)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !954, file: !31, line: 1532, baseType: !1738, size: 64, offset: 8448)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1739, line: 52, size: 64, elements: !1740)
!1739 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!1740 = !{!1741}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1738, file: !1739, line: 53, baseType: !1742, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1739, line: 40, size: 256, elements: !1744)
!1744 = !{!1745, !1746, !1751}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1743, file: !1739, line: 42, baseType: !1097)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1743, file: !1739, line: 44, baseType: !1747, size: 192)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1739, line: 28, size: 192, elements: !1748)
!1748 = !{!1749, !1750}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1747, file: !1739, line: 29, baseType: !533, size: 128)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1747, file: !1739, line: 31, baseType: !344, size: 64, offset: 128)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1743, file: !1739, line: 49, baseType: !344, size: 64, offset: 192)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !954, file: !31, line: 1533, baseType: !1738, size: 64, offset: 8512)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !954, file: !31, line: 1534, baseType: !725, size: 128, align: 64, offset: 8576)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !954, file: !31, line: 1535, baseType: !1755, size: 256, offset: 8704)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1732, line: 102, size: 256, elements: !1756)
!1756 = !{!1757, !1758, !1759}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1755, file: !1732, line: 103, baseType: !1114, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1755, file: !1732, line: 104, baseType: !533, size: 128, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1755, file: !1732, line: 105, baseType: !1760, size: 64, offset: 192)
!1760 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1732, line: 21, baseType: !1761)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{null, !1764}
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !954, file: !31, line: 1537, baseType: !1364, size: 192, offset: 8960)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !954, file: !31, line: 1542, baseType: !345, size: 32, offset: 9152)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !954, file: !31, line: 1545, baseType: !1097, offset: 9184)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !954, file: !31, line: 1546, baseType: !533, size: 128, offset: 9216)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !954, file: !31, line: 1548, baseType: !1097, offset: 9344)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !954, file: !31, line: 1549, baseType: !533, size: 128, offset: 9344)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !777, file: !31, line: 624, baseType: !1088, size: 64, offset: 256)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !777, file: !31, line: 631, baseType: !343, size: 64, offset: 320)
!1773 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !31, line: 639, baseType: !1774, size: 32, offset: 384)
!1774 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !777, file: !31, line: 639, size: 32, elements: !1775)
!1775 = !{!1776, !1778}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !1774, file: !31, line: 640, baseType: !1777, size: 32)
!1777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !1774, file: !31, line: 641, baseType: !7, size: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !777, file: !31, line: 643, baseType: !863, size: 32, offset: 416)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !777, file: !31, line: 644, baseType: !881, size: 64, offset: 448)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !777, file: !31, line: 645, baseType: !884, size: 128, offset: 512)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !777, file: !31, line: 646, baseType: !884, size: 128, offset: 640)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !777, file: !31, line: 647, baseType: !884, size: 128, offset: 768)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !777, file: !31, line: 648, baseType: !1097, offset: 896)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !777, file: !31, line: 649, baseType: !394, size: 16, offset: 896)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !777, file: !31, line: 650, baseType: !336, size: 8, offset: 912)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !777, file: !31, line: 651, baseType: !336, size: 8, offset: 920)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !777, file: !31, line: 652, baseType: !1515, size: 64, offset: 960)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !777, file: !31, line: 659, baseType: !343, size: 64, offset: 1024)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !777, file: !31, line: 660, baseType: !1110, size: 256, offset: 1088)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !777, file: !31, line: 662, baseType: !343, size: 64, offset: 1344)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !777, file: !31, line: 663, baseType: !343, size: 64, offset: 1408)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !777, file: !31, line: 665, baseType: !993, size: 128, offset: 1472)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !777, file: !31, line: 666, baseType: !533, size: 128, offset: 1600)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !777, file: !31, line: 675, baseType: !533, size: 128, offset: 1728)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !777, file: !31, line: 676, baseType: !533, size: 128, offset: 1856)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !777, file: !31, line: 677, baseType: !533, size: 128, offset: 1984)
!1798 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !31, line: 678, baseType: !1799, size: 128, offset: 2112)
!1799 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !777, file: !31, line: 678, size: 128, elements: !1800)
!1800 = !{!1801, !1802}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !1799, file: !31, line: 679, baseType: !989, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !1799, file: !31, line: 680, baseType: !725, size: 128, align: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !777, file: !31, line: 682, baseType: !1116, size: 64, offset: 2240)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !777, file: !31, line: 683, baseType: !1116, size: 64, offset: 2304)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !777, file: !31, line: 684, baseType: !508, size: 32, offset: 2368)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !777, file: !31, line: 685, baseType: !508, size: 32, offset: 2400)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !777, file: !31, line: 686, baseType: !508, size: 32, offset: 2432)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !777, file: !31, line: 688, baseType: !508, size: 32, offset: 2464)
!1809 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !31, line: 690, baseType: !1810, size: 64, offset: 2496)
!1810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !777, file: !31, line: 690, size: 64, elements: !1811)
!1811 = !{!1812, !2049}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !1810, file: !31, line: 691, baseType: !1813, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1815)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1822, size: 2048, elements: !1816)
!1816 = !{!1817, !1818, !1822, !1827, !1831, !1832, !1833, !1837, !1850, !1851, !1868, !1872, !1873, !1877, !1878, !1882, !1887, !1888, !1892, !1896, !2004, !2008, !2012, !2016, !2017, !2023, !2027, !2032, !2036, !2040, !2044, !2048}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1815, file: !31, line: 1823, baseType: !329, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1815, file: !31, line: 1824, baseType: !1819, size: 64, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!881, !712, !881, !345}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1815, file: !31, line: 1825, baseType: !1823, size: 64, offset: 128)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!926, !712, !835, !929, !1826}
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1815, file: !31, line: 1826, baseType: !1828, size: 64, offset: 192)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!926, !712, !811, !929, !1826}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1815, file: !31, line: 1827, baseType: !1185, size: 64, offset: 256)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1815, file: !31, line: 1828, baseType: !1185, size: 64, offset: 320)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1815, file: !31, line: 1829, baseType: !1834, size: 64, offset: 384)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!345, !1188, !840}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1815, file: !31, line: 1830, baseType: !1838, size: 64, offset: 448)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!345, !712, !1841}
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1776, size: 128, elements: !1843)
!1843 = !{!1844, !1849}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1842, file: !31, line: 1777, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1773, baseType: !1846)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!345, !1841, !811, !345, !881, !540, !7}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1842, file: !31, line: 1778, baseType: !881, size: 64, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1815, file: !31, line: 1831, baseType: !1838, size: 64, offset: 512)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1815, file: !31, line: 1832, baseType: !1852, size: 64, offset: 576)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!1855, !712, !1857}
!1855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1856, line: 52, baseType: !7)
!1856 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1859, line: 43, size: 128, elements: !1860)
!1859 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!1860 = !{!1861, !1867}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1858, file: !1859, line: 44, baseType: !1862, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1859, line: 37, baseType: !1863)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{null, !712, !1866, !1857}
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1858, file: !1859, line: 45, baseType: !1855, size: 32, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1815, file: !31, line: 1833, baseType: !1869, size: 64, offset: 640)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!344, !712, !7, !343}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1815, file: !31, line: 1834, baseType: !1869, size: 64, offset: 704)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1815, file: !31, line: 1835, baseType: !1874, size: 64, offset: 768)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!345, !712, !678}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1815, file: !31, line: 1836, baseType: !343, size: 64, offset: 832)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1815, file: !31, line: 1837, baseType: !1879, size: 64, offset: 896)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!345, !776, !712}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1815, file: !31, line: 1838, baseType: !1883, size: 64, offset: 960)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!345, !712, !1886}
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1007, baseType: !332)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1815, file: !31, line: 1839, baseType: !1879, size: 64, offset: 1024)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1815, file: !31, line: 1840, baseType: !1889, size: 64, offset: 1088)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!345, !712, !881, !881, !345}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1815, file: !31, line: 1841, baseType: !1893, size: 64, offset: 1152)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!345, !345, !712, !345}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1815, file: !31, line: 1842, baseType: !1897, size: 64, offset: 1216)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!345, !712, !345, !1900}
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1062, size: 1664, elements: !1902)
!1902 = !{!1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1934, !1935, !1936, !1949, !1980}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1901, file: !31, line: 1063, baseType: !1900, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1901, file: !31, line: 1064, baseType: !533, size: 128, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1901, file: !31, line: 1065, baseType: !993, size: 128, offset: 192)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1901, file: !31, line: 1066, baseType: !533, size: 128, offset: 320)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1901, file: !31, line: 1069, baseType: !533, size: 128, offset: 448)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1901, file: !31, line: 1072, baseType: !1886, size: 64, offset: 576)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1901, file: !31, line: 1073, baseType: !7, size: 32, offset: 640)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1901, file: !31, line: 1074, baseType: !340, size: 8, offset: 672)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1901, file: !31, line: 1075, baseType: !7, size: 32, offset: 704)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1901, file: !31, line: 1076, baseType: !345, size: 32, offset: 736)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1901, file: !31, line: 1077, baseType: !1596, size: 128, offset: 768)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1901, file: !31, line: 1078, baseType: !712, size: 64, offset: 896)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1901, file: !31, line: 1079, baseType: !881, size: 64, offset: 960)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1901, file: !31, line: 1080, baseType: !881, size: 64, offset: 1024)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1901, file: !31, line: 1082, baseType: !1918, size: 64, offset: 1088)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !31, line: 1314, size: 320, elements: !1920)
!1920 = !{!1921, !1929, !1930, !1931, !1932, !1933}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1919, file: !31, line: 1315, baseType: !1922)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1923, line: 20, baseType: !1924)
!1923 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1923, line: 11, elements: !1925)
!1925 = !{!1926}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1924, file: !1923, line: 12, baseType: !1927)
!1927 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !471, line: 33, baseType: !1928)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !471, line: 31, elements: !473)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1919, file: !31, line: 1316, baseType: !345, size: 32)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1919, file: !31, line: 1317, baseType: !345, size: 32, offset: 32)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1919, file: !31, line: 1318, baseType: !1918, size: 64, offset: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1919, file: !31, line: 1319, baseType: !712, size: 64, offset: 128)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1919, file: !31, line: 1320, baseType: !725, size: 128, align: 64, offset: 192)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1901, file: !31, line: 1084, baseType: !343, size: 64, offset: 1152)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1901, file: !31, line: 1085, baseType: !343, size: 64, offset: 1216)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1901, file: !31, line: 1087, baseType: !1937, size: 64, offset: 1280)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1939)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !31, line: 1011, size: 128, elements: !1940)
!1940 = !{!1941, !1945}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1939, file: !31, line: 1012, baseType: !1942, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{null, !1900, !1900}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1939, file: !31, line: 1013, baseType: !1946, size: 64, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{null, !1900}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1901, file: !31, line: 1088, baseType: !1950, size: 64, offset: 1344)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1952)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !31, line: 1016, size: 512, elements: !1953)
!1953 = !{!1954, !1958, !1962, !1963, !1967, !1971, !1975, !1979}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1952, file: !31, line: 1017, baseType: !1955, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!1886, !1886}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1952, file: !31, line: 1018, baseType: !1959, size: 64, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{null, !1886}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1952, file: !31, line: 1019, baseType: !1946, size: 64, offset: 128)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1952, file: !31, line: 1020, baseType: !1964, size: 64, offset: 192)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!345, !1900, !345}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1952, file: !31, line: 1021, baseType: !1968, size: 64, offset: 256)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!840, !1900}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1952, file: !31, line: 1022, baseType: !1972, size: 64, offset: 320)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!345, !1900, !345, !536}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1952, file: !31, line: 1023, baseType: !1976, size: 64, offset: 384)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{null, !1900, !1162}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1952, file: !31, line: 1024, baseType: !1968, size: 64, offset: 448)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1901, file: !31, line: 1097, baseType: !1981, size: 256, offset: 1408)
!1981 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1901, file: !31, line: 1089, size: 256, elements: !1982)
!1982 = !{!1983, !1992, !1998}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1981, file: !31, line: 1090, baseType: !1984, size: 256)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1985, line: 10, size: 256, elements: !1986)
!1985 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!1986 = !{!1987, !1988, !1991}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1984, file: !1985, line: 11, baseType: !443, size: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1984, file: !1985, line: 12, baseType: !1989, size: 64, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1985, line: 5, flags: DIFlagFwdDecl)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1984, file: !1985, line: 13, baseType: !533, size: 128, offset: 128)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1981, file: !31, line: 1091, baseType: !1993, size: 64)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1985, line: 17, size: 64, elements: !1994)
!1994 = !{!1995}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1993, file: !1985, line: 18, baseType: !1996, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1985, line: 16, flags: DIFlagFwdDecl)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1981, file: !31, line: 1096, baseType: !1999, size: 192)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1981, file: !31, line: 1092, size: 192, elements: !2000)
!2000 = !{!2001, !2002, !2003}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1999, file: !31, line: 1093, baseType: !533, size: 128)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1999, file: !31, line: 1094, baseType: !345, size: 32, offset: 128)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1999, file: !31, line: 1095, baseType: !7, size: 32, offset: 160)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1815, file: !31, line: 1843, baseType: !2005, size: 64, offset: 1280)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!926, !712, !1076, !345, !929, !1826, !345}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1815, file: !31, line: 1844, baseType: !2009, size: 64, offset: 1344)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!343, !712, !343, !343, !343, !343}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1815, file: !31, line: 1845, baseType: !2013, size: 64, offset: 1408)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!345, !345}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1815, file: !31, line: 1846, baseType: !1897, size: 64, offset: 1472)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1815, file: !31, line: 1847, baseType: !2018, size: 64, offset: 1536)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!926, !2021, !712, !1826, !929, !7}
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !492, line: 53, flags: DIFlagFwdDecl)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1815, file: !31, line: 1848, baseType: !2024, size: 64, offset: 1600)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!926, !712, !1826, !2021, !929, !7}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1815, file: !31, line: 1849, baseType: !2028, size: 64, offset: 1664)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!345, !712, !344, !2031, !1162}
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1815, file: !31, line: 1850, baseType: !2033, size: 64, offset: 1728)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!344, !712, !345, !881, !881}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1815, file: !31, line: 1852, baseType: !2037, size: 64, offset: 1792)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{null, !1067, !712}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1815, file: !31, line: 1856, baseType: !2041, size: 64, offset: 1856)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!926, !712, !881, !712, !881, !929, !7}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1815, file: !31, line: 1858, baseType: !2045, size: 64, offset: 1920)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!881, !712, !881, !712, !881, !881, !7}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1815, file: !31, line: 1861, baseType: !1889, size: 64, offset: 1984)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1810, file: !31, line: 692, baseType: !1020, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !777, file: !31, line: 694, baseType: !2051, size: 64, offset: 2560)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 1100, size: 384, elements: !2053)
!2053 = !{!2054, !2055, !2056, !2057}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2052, file: !31, line: 1101, baseType: !1097)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2052, file: !31, line: 1102, baseType: !533, size: 128)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2052, file: !31, line: 1103, baseType: !533, size: 128, offset: 128)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2052, file: !31, line: 1104, baseType: !533, size: 128, offset: 256)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !777, file: !31, line: 695, baseType: !1089, size: 1216, align: 64, offset: 2624)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !777, file: !31, line: 696, baseType: !533, size: 128, offset: 3840)
!2060 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !31, line: 697, baseType: !2061, size: 64, offset: 3968)
!2061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !777, file: !31, line: 697, size: 64, elements: !2062)
!2062 = !{!2063, !2064, !2065, !2376, !2377}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2061, file: !31, line: 698, baseType: !2021, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2061, file: !31, line: 699, baseType: !1540, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2061, file: !31, line: 700, baseType: !2066, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !2068, line: 14, size: 832, elements: !2069)
!2068 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!2069 = !{!2070, !2371, !2372, !2373, !2374, !2375}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2067, file: !2068, line: 15, baseType: !2071, size: 512)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !2072, line: 64, size: 512, elements: !2073)
!2072 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!2073 = !{!2074, !2075, !2076, !2078, !2120, !2222, !2361, !2366, !2367, !2368, !2369, !2370}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2071, file: !2072, line: 65, baseType: !811, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2071, file: !2072, line: 66, baseType: !533, size: 128, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2071, file: !2072, line: 67, baseType: !2077, size: 64, offset: 192)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !2071, file: !2072, line: 68, baseType: !2079, size: 64, offset: 256)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !2072, line: 192, size: 704, elements: !2081)
!2081 = !{!2082, !2083, !2084, !2085}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2080, file: !2072, line: 193, baseType: !533, size: 128)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2080, file: !2072, line: 194, baseType: !1097, offset: 128)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2080, file: !2072, line: 195, baseType: !2071, size: 512, offset: 128)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !2080, file: !2072, line: 196, baseType: !2086, size: 64, offset: 640)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2088)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !2072, line: 156, size: 192, elements: !2089)
!2089 = !{!2090, !2095, !2100}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2088, file: !2072, line: 157, baseType: !2091, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2092)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!345, !2079, !2077}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2088, file: !2072, line: 158, baseType: !2096, size: 64, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2097)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!811, !2079, !2077}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2088, file: !2072, line: 159, baseType: !2101, size: 64, offset: 128)
!2101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2102)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!345, !2079, !2077, !2105}
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !2072, line: 148, size: 20736, elements: !2107)
!2107 = !{!2108, !2110, !2114, !2115, !2119}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2106, file: !2072, line: 149, baseType: !2109, size: 192)
!2109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !835, size: 192, elements: !1005)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !2106, file: !2072, line: 150, baseType: !2111, size: 4096, offset: 192)
!2111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !835, size: 4096, elements: !2112)
!2112 = !{!2113}
!2113 = !DISubrange(count: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !2106, file: !2072, line: 151, baseType: !345, size: 32, offset: 4288)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2106, file: !2072, line: 152, baseType: !2116, size: 16384, offset: 4320)
!2116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 16384, elements: !2117)
!2117 = !{!2118}
!2118 = !DISubrange(count: 2048)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !2106, file: !2072, line: 153, baseType: !345, size: 32, offset: 20704)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !2071, file: !2072, line: 69, baseType: !2121, size: 64, offset: 320)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !2072, line: 138, size: 448, elements: !2123)
!2123 = !{!2124, !2128, !2147, !2149, !2182, !2212, !2216}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2122, file: !2072, line: 139, baseType: !2125, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{null, !2077}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !2122, file: !2072, line: 140, baseType: !2129, size: 64, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2131)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2132, line: 230, size: 128, elements: !2133)
!2132 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!2133 = !{!2134, !2143}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2131, file: !2132, line: 231, baseType: !2135, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!926, !2077, !2138, !835}
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2132, line: 30, size: 128, elements: !2140)
!2140 = !{!2141, !2142}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2139, file: !2132, line: 31, baseType: !811, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2139, file: !2132, line: 32, baseType: !780, size: 16, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2131, file: !2132, line: 232, baseType: !2144, size: 64, offset: 64)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!926, !2077, !2138, !811, !929}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !2122, file: !2072, line: 141, baseType: !2148, size: 64, offset: 128)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !2122, file: !2072, line: 142, baseType: !2150, size: 64, offset: 192)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2153)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2132, line: 84, size: 320, elements: !2154)
!2154 = !{!2155, !2156, !2160, !2179, !2180}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2153, file: !2132, line: 85, baseType: !811, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2153, file: !2132, line: 86, baseType: !2157, size: 64, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!780, !2077, !2138, !345}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2153, file: !2132, line: 88, baseType: !2161, size: 64, offset: 128)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!780, !2077, !2164, !345}
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2132, line: 168, size: 448, elements: !2166)
!2166 = !{!2167, !2168, !2169, !2170, !2174, !2175}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2165, file: !2132, line: 169, baseType: !2139, size: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2165, file: !2132, line: 170, baseType: !929, size: 64, offset: 128)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2165, file: !2132, line: 171, baseType: !332, size: 64, offset: 192)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2165, file: !2132, line: 172, baseType: !2171, size: 64, offset: 256)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!926, !712, !2077, !2164, !835, !881, !929}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2165, file: !2132, line: 174, baseType: !2171, size: 64, offset: 320)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2165, file: !2132, line: 176, baseType: !2176, size: 64, offset: 384)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!345, !712, !2077, !2164, !678}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2153, file: !2132, line: 90, baseType: !2148, size: 64, offset: 192)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2153, file: !2132, line: 91, baseType: !2181, size: 64, offset: 256)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !2122, file: !2072, line: 143, baseType: !2183, size: 64, offset: 256)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!2186, !2077}
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2188)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !25, line: 39, size: 384, elements: !2189)
!2189 = !{!2190, !2191, !2195, !2199, !2207, !2211}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2188, file: !25, line: 40, baseType: !24, size: 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2188, file: !25, line: 41, baseType: !2192, size: 64, offset: 64)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!840}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2188, file: !25, line: 42, baseType: !2196, size: 64, offset: 128)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!332}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2188, file: !25, line: 43, baseType: !2200, size: 64, offset: 192)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!2203, !2205}
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !25, line: 19, flags: DIFlagFwdDecl)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2188, file: !25, line: 44, baseType: !2208, size: 64, offset: 256)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!2203}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2188, file: !25, line: 45, baseType: !817, size: 64, offset: 320)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2122, file: !2072, line: 144, baseType: !2213, size: 64, offset: 320)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!2203, !2077}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2122, file: !2072, line: 145, baseType: !2217, size: 64, offset: 384)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{null, !2077, !2220, !2221}
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !2071, file: !2072, line: 70, baseType: !2223, size: 64, offset: 384)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !973, line: 123, size: 1024, elements: !2225)
!2225 = !{!2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2354, !2355, !2356, !2357, !2358}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2224, file: !973, line: 124, baseType: !508, size: 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2224, file: !973, line: 125, baseType: !508, size: 32, offset: 32)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2224, file: !973, line: 135, baseType: !2223, size: 64, offset: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2224, file: !973, line: 136, baseType: !811, size: 64, offset: 128)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2224, file: !973, line: 138, baseType: !483, size: 192, align: 64, offset: 192)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2224, file: !973, line: 140, baseType: !2203, size: 64, offset: 384)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2224, file: !973, line: 141, baseType: !7, size: 32, offset: 448)
!2233 = !DIDerivedType(tag: DW_TAG_member, scope: !2224, file: !973, line: 142, baseType: !2234, size: 256, offset: 512)
!2234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2224, file: !973, line: 142, size: 256, elements: !2235)
!2235 = !{!2236, !2282, !2286}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2234, file: !973, line: 143, baseType: !2237, size: 192)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !973, line: 91, size: 192, elements: !2238)
!2238 = !{!2239, !2240, !2241}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2237, file: !973, line: 92, baseType: !343, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2237, file: !973, line: 94, baseType: !479, size: 64, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2237, file: !973, line: 100, baseType: !2242, size: 64, offset: 128)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !973, line: 180, size: 704, elements: !2244)
!2244 = !{!2245, !2246, !2247, !2254, !2255, !2256, !2280, !2281}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2243, file: !973, line: 182, baseType: !2223, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2243, file: !973, line: 183, baseType: !7, size: 32, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !2243, file: !973, line: 186, baseType: !2248, size: 192, offset: 128)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !2249, line: 19, size: 192, elements: !2250)
!2249 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!2250 = !{!2251, !2252, !2253}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !2248, file: !2249, line: 20, baseType: !1093, size: 128)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !2248, file: !2249, line: 21, baseType: !7, size: 32, offset: 128)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !2248, file: !2249, line: 22, baseType: !7, size: 32, offset: 160)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !2243, file: !973, line: 187, baseType: !443, size: 32, offset: 320)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !2243, file: !973, line: 188, baseType: !443, size: 32, offset: 352)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !2243, file: !973, line: 189, baseType: !2257, size: 64, offset: 384)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !973, line: 168, size: 320, elements: !2259)
!2259 = !{!2260, !2264, !2268, !2272, !2276}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2258, file: !973, line: 169, baseType: !2261, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!345, !1067, !2242}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !2258, file: !973, line: 171, baseType: !2265, size: 64, offset: 64)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!345, !2223, !811, !780}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !2258, file: !973, line: 173, baseType: !2269, size: 64, offset: 128)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!345, !2223}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !2258, file: !973, line: 174, baseType: !2273, size: 64, offset: 192)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!345, !2223, !2223, !811}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2258, file: !973, line: 176, baseType: !2277, size: 64, offset: 256)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!345, !1067, !2223, !2242}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !2243, file: !973, line: 192, baseType: !533, size: 128, offset: 448)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !2243, file: !973, line: 194, baseType: !1596, size: 128, offset: 576)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2234, file: !973, line: 144, baseType: !2283, size: 64)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !973, line: 103, size: 64, elements: !2284)
!2284 = !{!2285}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2283, file: !973, line: 104, baseType: !2223, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2234, file: !973, line: 145, baseType: !2287, size: 256)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !973, line: 107, size: 256, elements: !2288)
!2288 = !{!2289, !2349, !2352, !2353}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2287, file: !973, line: 108, baseType: !2290, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2292)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !973, line: 217, size: 768, elements: !2293)
!2293 = !{!2294, !2314, !2318, !2322, !2326, !2330, !2334, !2338, !2339, !2340, !2341, !2345}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2292, file: !973, line: 222, baseType: !2295, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!345, !2298}
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !973, line: 197, size: 1088, elements: !2300)
!2300 = !{!2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2299, file: !973, line: 199, baseType: !2223, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2299, file: !973, line: 200, baseType: !712, size: 64, offset: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2299, file: !973, line: 201, baseType: !1067, size: 64, offset: 128)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2299, file: !973, line: 202, baseType: !332, size: 64, offset: 192)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2299, file: !973, line: 205, baseType: !1364, size: 192, offset: 256)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2299, file: !973, line: 206, baseType: !1364, size: 192, offset: 448)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2299, file: !973, line: 207, baseType: !345, size: 32, offset: 640)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2299, file: !973, line: 208, baseType: !533, size: 128, offset: 704)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2299, file: !973, line: 209, baseType: !835, size: 64, offset: 832)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2299, file: !973, line: 211, baseType: !929, size: 64, offset: 896)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2299, file: !973, line: 212, baseType: !840, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2299, file: !973, line: 213, baseType: !840, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2299, file: !973, line: 214, baseType: !707, size: 64, offset: 1024)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2292, file: !973, line: 223, baseType: !2315, size: 64, offset: 64)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{null, !2298}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2292, file: !973, line: 236, baseType: !2319, size: 64, offset: 128)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!345, !1067, !332}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2292, file: !973, line: 238, baseType: !2323, size: 64, offset: 192)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!332, !1067, !1826}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2292, file: !973, line: 239, baseType: !2327, size: 64, offset: 256)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!332, !1067, !332, !1826}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2292, file: !973, line: 240, baseType: !2331, size: 64, offset: 320)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{null, !1067, !332}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2292, file: !973, line: 242, baseType: !2335, size: 64, offset: 384)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!926, !2298, !835, !929, !881}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2292, file: !973, line: 252, baseType: !929, size: 64, offset: 448)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2292, file: !973, line: 259, baseType: !840, size: 8, offset: 512)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2292, file: !973, line: 260, baseType: !2335, size: 64, offset: 576)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2292, file: !973, line: 263, baseType: !2342, size: 64, offset: 640)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!1855, !2298, !1857}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2292, file: !973, line: 266, baseType: !2346, size: 64, offset: 704)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!345, !2298, !678}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2287, file: !973, line: 109, baseType: !2350, size: 64, offset: 64)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !973, line: 31, flags: DIFlagFwdDecl)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2287, file: !973, line: 110, baseType: !881, size: 64, offset: 128)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2287, file: !973, line: 111, baseType: !2223, size: 64, offset: 192)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2224, file: !973, line: 148, baseType: !332, size: 64, offset: 768)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2224, file: !973, line: 154, baseType: !540, size: 64, offset: 832)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2224, file: !973, line: 156, baseType: !394, size: 16, offset: 896)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2224, file: !973, line: 157, baseType: !780, size: 16, offset: 912)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2224, file: !973, line: 158, baseType: !2359, size: 64, offset: 960)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !973, line: 32, flags: DIFlagFwdDecl)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2071, file: !2072, line: 71, baseType: !2362, size: 32, offset: 448)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2363, line: 19, size: 32, elements: !2364)
!2363 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!2364 = !{!2365}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2362, file: !2363, line: 20, baseType: !503, size: 32)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !2071, file: !2072, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !2071, file: !2072, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !2071, file: !2072, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !2071, file: !2072, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !2071, file: !2072, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2067, file: !2068, line: 16, baseType: !329, size: 64, offset: 512)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2067, file: !2068, line: 17, baseType: !1813, size: 64, offset: 576)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2067, file: !2068, line: 18, baseType: !533, size: 128, offset: 640)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2067, file: !2068, line: 19, baseType: !863, size: 32, offset: 768)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2067, file: !2068, line: 20, baseType: !7, size: 32, offset: 800)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2061, file: !31, line: 701, baseType: !835, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2061, file: !31, line: 702, baseType: !7, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !777, file: !31, line: 705, baseType: !444, size: 32, offset: 4032)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !777, file: !31, line: 708, baseType: !444, size: 32, offset: 4064)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !777, file: !31, line: 709, baseType: !1630, size: 64, offset: 4096)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !777, file: !31, line: 720, baseType: !332, size: 64, offset: 4160)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !743, file: !740, line: 98, baseType: !2383, size: 256, offset: 448)
!2383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 256, elements: !1634)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !743, file: !740, line: 101, baseType: !2385, size: 32, offset: 704)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2386, line: 25, size: 32, elements: !2387)
!2386 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2387 = !{!2388}
!2388 = !DIDerivedType(tag: DW_TAG_member, scope: !2385, file: !2386, line: 26, baseType: !2389, size: 32)
!2389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2385, file: !2386, line: 26, size: 32, elements: !2390)
!2390 = !{!2391}
!2391 = !DIDerivedType(tag: DW_TAG_member, scope: !2389, file: !2386, line: 30, baseType: !2392, size: 32)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2389, file: !2386, line: 30, size: 32, elements: !2393)
!2393 = !{!2394, !2395}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2392, file: !2386, line: 31, baseType: !1097)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2392, file: !2386, line: 32, baseType: !345, size: 32)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !743, file: !740, line: 102, baseType: !1651, size: 64, offset: 768)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !743, file: !740, line: 103, baseType: !953, size: 64, offset: 832)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !743, file: !740, line: 104, baseType: !343, size: 64, offset: 896)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !743, file: !740, line: 105, baseType: !332, size: 64, offset: 960)
!2400 = !DIDerivedType(tag: DW_TAG_member, scope: !743, file: !740, line: 107, baseType: !2401, size: 128, offset: 1024)
!2401 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !743, file: !740, line: 107, size: 128, elements: !2402)
!2402 = !{!2403, !2404}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2401, file: !740, line: 108, baseType: !533, size: 128)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2401, file: !740, line: 109, baseType: !1866, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !743, file: !740, line: 111, baseType: !533, size: 128, offset: 1152)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !743, file: !740, line: 112, baseType: !533, size: 128, offset: 1280)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !743, file: !740, line: 120, baseType: !2408, size: 128, offset: 1408)
!2408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !743, file: !740, line: 116, size: 128, elements: !2409)
!2409 = !{!2410, !2411, !2412}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2408, file: !740, line: 117, baseType: !993, size: 128)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2408, file: !740, line: 118, baseType: !752, size: 128)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2408, file: !740, line: 119, baseType: !725, size: 128, align: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !713, file: !31, line: 922, baseType: !776, size: 64, offset: 256)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !713, file: !31, line: 923, baseType: !1813, size: 64, offset: 320)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !713, file: !31, line: 929, baseType: !1097, offset: 384)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !713, file: !31, line: 930, baseType: !30, size: 32, offset: 384)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !713, file: !31, line: 931, baseType: !1114, size: 64, offset: 448)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !713, file: !31, line: 932, baseType: !7, size: 32, offset: 512)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !713, file: !31, line: 933, baseType: !1647, size: 32, offset: 544)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !713, file: !31, line: 934, baseType: !1364, size: 192, offset: 576)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !713, file: !31, line: 935, baseType: !881, size: 64, offset: 768)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !713, file: !31, line: 936, baseType: !2423, size: 192, offset: 832)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 885, size: 192, elements: !2424)
!2424 = !{!2425, !2426, !2448, !2449, !2450, !2451}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2423, file: !31, line: 886, baseType: !1922)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2423, file: !31, line: 887, baseType: !2427, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !40, line: 59, size: 768, elements: !2429)
!2429 = !{!2430, !2431, !2432, !2433, !2437, !2438, !2439, !2440}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2428, file: !40, line: 61, baseType: !503, size: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2428, file: !40, line: 62, baseType: !7, size: 32, offset: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2428, file: !40, line: 63, baseType: !1097, offset: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2428, file: !40, line: 65, baseType: !2434, size: 256, offset: 64)
!2434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !989, size: 256, elements: !2435)
!2435 = !{!2436}
!2436 = !DISubrange(count: 4)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2428, file: !40, line: 66, baseType: !989, size: 64, offset: 320)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !2428, file: !40, line: 68, baseType: !1596, size: 128, offset: 384)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2428, file: !40, line: 69, baseType: !725, size: 128, align: 64, offset: 512)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !2428, file: !40, line: 70, baseType: !2441, size: 128, offset: 640)
!2441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2442, size: 128, elements: !663)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !40, line: 54, size: 128, elements: !2443)
!2443 = !{!2444, !2445}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2442, file: !40, line: 55, baseType: !345, size: 32)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2442, file: !40, line: 56, baseType: !2446, size: 64, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !40, line: 56, flags: DIFlagFwdDecl)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2423, file: !31, line: 888, baseType: !39, size: 32, offset: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2423, file: !31, line: 889, baseType: !783, size: 32, offset: 96)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2423, file: !31, line: 889, baseType: !783, size: 32, offset: 128)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2423, file: !31, line: 890, baseType: !345, size: 32, offset: 160)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !713, file: !31, line: 937, baseType: !2453, size: 64, offset: 1024)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2455)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2456, line: 111, size: 1280, elements: !2457)
!2456 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!2457 = !{!2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2477, !2478, !2479, !2480, !2481, !2482, !2591, !2592, !2593, !2594, !2620, !2621, !2631}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2455, file: !2456, line: 112, baseType: !508, size: 32)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2455, file: !2456, line: 120, baseType: !783, size: 32, offset: 32)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2455, file: !2456, line: 121, baseType: !791, size: 32, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2455, file: !2456, line: 122, baseType: !783, size: 32, offset: 96)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2455, file: !2456, line: 123, baseType: !791, size: 32, offset: 128)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2455, file: !2456, line: 124, baseType: !783, size: 32, offset: 160)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2455, file: !2456, line: 125, baseType: !791, size: 32, offset: 192)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2455, file: !2456, line: 126, baseType: !783, size: 32, offset: 224)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2455, file: !2456, line: 127, baseType: !791, size: 32, offset: 256)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2455, file: !2456, line: 128, baseType: !7, size: 32, offset: 288)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2455, file: !2456, line: 129, baseType: !2469, size: 64, offset: 320)
!2469 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2470, line: 26, baseType: !2471)
!2470 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !2470, line: 24, size: 64, elements: !2472)
!2472 = !{!2473}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !2471, file: !2470, line: 25, baseType: !2474, size: 64)
!2474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 64, elements: !2475)
!2475 = !{!2476}
!2476 = !DISubrange(count: 2)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2455, file: !2456, line: 130, baseType: !2469, size: 64, offset: 384)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2455, file: !2456, line: 131, baseType: !2469, size: 64, offset: 448)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2455, file: !2456, line: 132, baseType: !2469, size: 64, offset: 512)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2455, file: !2456, line: 133, baseType: !2469, size: 64, offset: 576)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2455, file: !2456, line: 135, baseType: !340, size: 8, offset: 640)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2455, file: !2456, line: 137, baseType: !2483, size: 64, offset: 704)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2485, line: 189, size: 1664, elements: !2486)
!2485 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!2486 = !{!2487, !2488, !2492, !2497, !2498, !2501, !2502, !2507, !2508, !2509, !2510, !2512, !2513, !2514, !2516, !2517, !2555, !2576}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2484, file: !2485, line: 190, baseType: !503, size: 32)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2484, file: !2485, line: 191, baseType: !2489, size: 32, offset: 32)
!2489 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2485, line: 28, baseType: !2490)
!2490 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !334, line: 98, baseType: !2491)
!2491 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !337, line: 20, baseType: !346)
!2492 = !DIDerivedType(tag: DW_TAG_member, scope: !2484, file: !2485, line: 192, baseType: !2493, size: 192, offset: 64)
!2493 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2484, file: !2485, line: 192, size: 192, elements: !2494)
!2494 = !{!2495, !2496}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2493, file: !2485, line: 193, baseType: !533, size: 128)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2493, file: !2485, line: 194, baseType: !483, size: 192, align: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2484, file: !2485, line: 199, baseType: !1110, size: 256, offset: 256)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2484, file: !2485, line: 200, baseType: !2499, size: 64, offset: 512)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2485, line: 200, flags: DIFlagFwdDecl)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2484, file: !2485, line: 201, baseType: !332, size: 64, offset: 576)
!2502 = !DIDerivedType(tag: DW_TAG_member, scope: !2484, file: !2485, line: 202, baseType: !2503, size: 64, offset: 640)
!2503 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2484, file: !2485, line: 202, size: 64, elements: !2504)
!2504 = !{!2505, !2506}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2503, file: !2485, line: 203, baseType: !888, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2503, file: !2485, line: 204, baseType: !888, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2484, file: !2485, line: 206, baseType: !888, size: 64, offset: 704)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2484, file: !2485, line: 207, baseType: !783, size: 32, offset: 768)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2484, file: !2485, line: 208, baseType: !791, size: 32, offset: 800)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2484, file: !2485, line: 209, baseType: !2511, size: 32, offset: 832)
!2511 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2485, line: 31, baseType: !907)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2484, file: !2485, line: 210, baseType: !394, size: 16, offset: 864)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2484, file: !2485, line: 211, baseType: !394, size: 16, offset: 880)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2484, file: !2485, line: 215, baseType: !2515, size: 16, offset: 896)
!2515 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2484, file: !2485, line: 222, baseType: !343, size: 64, offset: 960)
!2517 = !DIDerivedType(tag: DW_TAG_member, scope: !2484, file: !2485, line: 239, baseType: !2518, size: 320, offset: 1024)
!2518 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2484, file: !2485, line: 239, size: 320, elements: !2519)
!2519 = !{!2520, !2547}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2518, file: !2485, line: 240, baseType: !2521, size: 320)
!2521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2485, line: 108, size: 320, elements: !2522)
!2522 = !{!2523, !2524, !2536, !2539, !2546}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2521, file: !2485, line: 110, baseType: !343, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, scope: !2521, file: !2485, line: 111, baseType: !2525, size: 64, offset: 64)
!2525 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2521, file: !2485, line: 111, size: 64, elements: !2526)
!2526 = !{!2527, !2535}
!2527 = !DIDerivedType(tag: DW_TAG_member, scope: !2525, file: !2485, line: 112, baseType: !2528, size: 64)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2525, file: !2485, line: 112, size: 64, elements: !2529)
!2529 = !{!2530, !2531}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2528, file: !2485, line: 114, baseType: !428, size: 16)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2528, file: !2485, line: 115, baseType: !2532, size: 48, offset: 16)
!2532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 48, elements: !2533)
!2533 = !{!2534}
!2534 = !DISubrange(count: 6)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2525, file: !2485, line: 121, baseType: !343, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2521, file: !2485, line: 123, baseType: !2537, size: 64, offset: 128)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2485, line: 96, flags: DIFlagFwdDecl)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2521, file: !2485, line: 124, baseType: !2540, size: 64, offset: 192)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2485, line: 102, size: 192, elements: !2542)
!2542 = !{!2543, !2544, !2545}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2541, file: !2485, line: 103, baseType: !725, size: 128, align: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2541, file: !2485, line: 104, baseType: !503, size: 32, offset: 128)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2541, file: !2485, line: 105, baseType: !840, size: 8, offset: 160)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2521, file: !2485, line: 125, baseType: !811, size: 64, offset: 256)
!2547 = !DIDerivedType(tag: DW_TAG_member, scope: !2518, file: !2485, line: 241, baseType: !2548, size: 320)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2518, file: !2485, line: 241, size: 320, elements: !2549)
!2549 = !{!2550, !2551, !2552, !2553, !2554}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2548, file: !2485, line: 242, baseType: !343, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2548, file: !2485, line: 243, baseType: !343, size: 64, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2548, file: !2485, line: 244, baseType: !2537, size: 64, offset: 128)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2548, file: !2485, line: 245, baseType: !2540, size: 64, offset: 192)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2548, file: !2485, line: 246, baseType: !835, size: 64, offset: 256)
!2555 = !DIDerivedType(tag: DW_TAG_member, scope: !2484, file: !2485, line: 254, baseType: !2556, size: 256, offset: 1344)
!2556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2484, file: !2485, line: 254, size: 256, elements: !2557)
!2557 = !{!2558, !2564}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2556, file: !2485, line: 255, baseType: !2559, size: 256)
!2559 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2485, line: 128, size: 256, elements: !2560)
!2560 = !{!2561, !2562}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2559, file: !2485, line: 129, baseType: !332, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2559, file: !2485, line: 130, baseType: !2563, size: 256)
!2563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 256, elements: !2435)
!2564 = !DIDerivedType(tag: DW_TAG_member, scope: !2556, file: !2485, line: 256, baseType: !2565, size: 256)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2556, file: !2485, line: 256, size: 256, elements: !2566)
!2566 = !{!2567, !2568}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2565, file: !2485, line: 258, baseType: !533, size: 128)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2565, file: !2485, line: 259, baseType: !2569, size: 128, offset: 128)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2570, line: 22, size: 128, elements: !2571)
!2570 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!2571 = !{!2572, !2575}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2569, file: !2570, line: 23, baseType: !2573, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2570, line: 23, flags: DIFlagFwdDecl)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2569, file: !2570, line: 24, baseType: !343, size: 64, offset: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2484, file: !2485, line: 274, baseType: !2577, size: 64, offset: 1600)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2485, line: 170, size: 192, elements: !2579)
!2579 = !{!2580, !2589, !2590}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2578, file: !2485, line: 171, baseType: !2581, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2485, line: 165, baseType: !2582)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!345, !2483, !2585, !2587, !2483}
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2538)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2559)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2578, file: !2485, line: 172, baseType: !2483, size: 64, offset: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2578, file: !2485, line: 173, baseType: !2537, size: 64, offset: 128)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2455, file: !2456, line: 138, baseType: !2483, size: 64, offset: 768)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2455, file: !2456, line: 139, baseType: !2483, size: 64, offset: 832)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2455, file: !2456, line: 140, baseType: !2483, size: 64, offset: 896)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2455, file: !2456, line: 145, baseType: !2595, size: 64, offset: 960)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2597, line: 13, size: 896, elements: !2598)
!2597 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!2598 = !{!2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2596, file: !2597, line: 14, baseType: !503, size: 32)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2596, file: !2597, line: 15, baseType: !508, size: 32, offset: 32)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2596, file: !2597, line: 16, baseType: !508, size: 32, offset: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2596, file: !2597, line: 21, baseType: !1114, size: 64, offset: 128)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2596, file: !2597, line: 27, baseType: !343, size: 64, offset: 192)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2596, file: !2597, line: 28, baseType: !343, size: 64, offset: 256)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2596, file: !2597, line: 29, baseType: !1114, size: 64, offset: 320)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2596, file: !2597, line: 32, baseType: !993, size: 128, offset: 384)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2596, file: !2597, line: 33, baseType: !783, size: 32, offset: 512)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2596, file: !2597, line: 37, baseType: !1114, size: 64, offset: 576)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2596, file: !2597, line: 44, baseType: !2610, size: 256, offset: 640)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2611, line: 15, size: 256, elements: !2612)
!2611 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2612 = !{!2613, !2614, !2615, !2616, !2617, !2618, !2619}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2610, file: !2611, line: 16, baseType: !465)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2610, file: !2611, line: 18, baseType: !345, size: 32)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2610, file: !2611, line: 19, baseType: !345, size: 32, offset: 32)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2610, file: !2611, line: 20, baseType: !345, size: 32, offset: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2610, file: !2611, line: 21, baseType: !345, size: 32, offset: 96)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2610, file: !2611, line: 22, baseType: !343, size: 64, offset: 128)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2610, file: !2611, line: 23, baseType: !343, size: 64, offset: 192)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2455, file: !2456, line: 146, baseType: !1735, size: 64, offset: 1024)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2455, file: !2456, line: 147, baseType: !2622, size: 64, offset: 1088)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2456, line: 25, size: 64, elements: !2624)
!2624 = !{!2625, !2626, !2627}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2623, file: !2456, line: 26, baseType: !508, size: 32)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2623, file: !2456, line: 27, baseType: !345, size: 32, offset: 32)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2623, file: !2456, line: 28, baseType: !2628, offset: 64)
!2628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !791, elements: !2629)
!2629 = !{!2630}
!2630 = !DISubrange(count: 0)
!2631 = !DIDerivedType(tag: DW_TAG_member, scope: !2455, file: !2456, line: 149, baseType: !2632, size: 128, offset: 1152)
!2632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2455, file: !2456, line: 149, size: 128, elements: !2633)
!2633 = !{!2634, !2635}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2632, file: !2456, line: 150, baseType: !345, size: 32)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2632, file: !2456, line: 151, baseType: !725, size: 128, align: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !713, file: !31, line: 938, baseType: !2637, size: 256, offset: 1088)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 896, size: 256, elements: !2638)
!2638 = !{!2639, !2640, !2641, !2642, !2643, !2644}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2637, file: !31, line: 897, baseType: !343, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2637, file: !31, line: 898, baseType: !7, size: 32, offset: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2637, file: !31, line: 899, baseType: !7, size: 32, offset: 96)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2637, file: !31, line: 902, baseType: !7, size: 32, offset: 128)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2637, file: !31, line: 903, baseType: !7, size: 32, offset: 160)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2637, file: !31, line: 904, baseType: !881, size: 64, offset: 192)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !713, file: !31, line: 940, baseType: !540, size: 64, offset: 1344)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !713, file: !31, line: 945, baseType: !332, size: 64, offset: 1408)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !713, file: !31, line: 949, baseType: !533, size: 128, offset: 1472)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !713, file: !31, line: 950, baseType: !533, size: 128, offset: 1600)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !713, file: !31, line: 952, baseType: !1088, size: 64, offset: 1728)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !713, file: !31, line: 953, baseType: !1248, size: 32, offset: 1792)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !713, file: !31, line: 954, baseType: !1248, size: 32, offset: 1824)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !679, file: !672, line: 362, baseType: !332, size: 64, offset: 1344)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !679, file: !672, line: 365, baseType: !1114, size: 64, offset: 1408)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !679, file: !672, line: 373, baseType: !2655, offset: 1472)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !672, line: 296, elements: !473)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !675, file: !672, line: 391, baseType: !479, size: 64, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !675, file: !672, line: 392, baseType: !540, size: 64, offset: 128)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !675, file: !672, line: 394, baseType: !2009, size: 64, offset: 192)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !675, file: !672, line: 398, baseType: !343, size: 64, offset: 256)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !675, file: !672, line: 399, baseType: !343, size: 64, offset: 320)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !675, file: !672, line: 405, baseType: !343, size: 64, offset: 384)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !675, file: !672, line: 406, baseType: !343, size: 64, offset: 448)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !675, file: !672, line: 407, baseType: !2664, size: 64, offset: 512)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !690, line: 286, baseType: !2666)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !690, line: 286, size: 64, elements: !2667)
!2667 = !{!2668}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2666, file: !690, line: 286, baseType: !2669, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !695, line: 18, baseType: !343)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !675, file: !672, line: 416, baseType: !508, size: 32, offset: 576)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !675, file: !672, line: 428, baseType: !508, size: 32, offset: 608)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !675, file: !672, line: 437, baseType: !508, size: 32, offset: 640)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !675, file: !672, line: 447, baseType: !508, size: 32, offset: 672)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !675, file: !672, line: 450, baseType: !1114, size: 64, offset: 704)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !675, file: !672, line: 452, baseType: !345, size: 32, offset: 768)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !675, file: !672, line: 454, baseType: !1097, offset: 800)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !675, file: !672, line: 457, baseType: !1110, size: 256, offset: 832)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !675, file: !672, line: 459, baseType: !533, size: 128, offset: 1088)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !675, file: !672, line: 466, baseType: !343, size: 64, offset: 1216)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !675, file: !672, line: 467, baseType: !343, size: 64, offset: 1280)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !675, file: !672, line: 469, baseType: !343, size: 64, offset: 1344)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !675, file: !672, line: 470, baseType: !343, size: 64, offset: 1408)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !675, file: !672, line: 471, baseType: !1116, size: 64, offset: 1472)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !675, file: !672, line: 472, baseType: !343, size: 64, offset: 1536)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !675, file: !672, line: 473, baseType: !343, size: 64, offset: 1600)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !675, file: !672, line: 474, baseType: !343, size: 64, offset: 1664)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !675, file: !672, line: 475, baseType: !343, size: 64, offset: 1728)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !675, file: !672, line: 477, baseType: !1097, offset: 1792)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !675, file: !672, line: 478, baseType: !343, size: 64, offset: 1792)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !675, file: !672, line: 478, baseType: !343, size: 64, offset: 1856)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !675, file: !672, line: 478, baseType: !343, size: 64, offset: 1920)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !675, file: !672, line: 478, baseType: !343, size: 64, offset: 1984)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !675, file: !672, line: 479, baseType: !343, size: 64, offset: 2048)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !675, file: !672, line: 479, baseType: !343, size: 64, offset: 2112)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !675, file: !672, line: 479, baseType: !343, size: 64, offset: 2176)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !675, file: !672, line: 480, baseType: !343, size: 64, offset: 2240)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !675, file: !672, line: 480, baseType: !343, size: 64, offset: 2304)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !675, file: !672, line: 480, baseType: !343, size: 64, offset: 2368)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !675, file: !672, line: 480, baseType: !343, size: 64, offset: 2432)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !675, file: !672, line: 482, baseType: !2701, size: 2816, offset: 2496)
!2701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 2816, elements: !2702)
!2702 = !{!2703}
!2703 = !DISubrange(count: 44)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !675, file: !672, line: 488, baseType: !2705, size: 256, offset: 5312)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2706, line: 60, size: 256, elements: !2707)
!2706 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2707 = !{!2708}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2705, file: !2706, line: 61, baseType: !2709, size: 256)
!2709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1114, size: 256, elements: !2435)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !675, file: !672, line: 490, baseType: !2711, size: 64, offset: 5568)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !672, line: 490, flags: DIFlagFwdDecl)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !675, file: !672, line: 493, baseType: !2714, size: 896, offset: 5632)
!2714 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2715, line: 53, baseType: !2716)
!2715 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2715, line: 13, size: 896, elements: !2717)
!2717 = !{!2718, !2719, !2720, !2721, !2724, !2725, !2726, !2727, !2747, !2748, !2749}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2716, file: !2715, line: 18, baseType: !540, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2716, file: !2715, line: 28, baseType: !1116, size: 64, offset: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2716, file: !2715, line: 31, baseType: !1110, size: 256, offset: 128)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2716, file: !2715, line: 32, baseType: !2722, size: 64, offset: 384)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2715, line: 32, flags: DIFlagFwdDecl)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2716, file: !2715, line: 37, baseType: !394, size: 16, offset: 448)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2716, file: !2715, line: 40, baseType: !1364, size: 192, offset: 512)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2716, file: !2715, line: 41, baseType: !332, size: 64, offset: 704)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2716, file: !2715, line: 42, baseType: !2728, size: 64, offset: 768)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2730)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2731, line: 13, size: 896, elements: !2732)
!2731 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!2732 = !{!2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2730, file: !2731, line: 14, baseType: !332, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2730, file: !2731, line: 15, baseType: !343, size: 64, offset: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2730, file: !2731, line: 17, baseType: !343, size: 64, offset: 128)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2730, file: !2731, line: 17, baseType: !343, size: 64, offset: 192)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2730, file: !2731, line: 19, baseType: !344, size: 64, offset: 256)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2730, file: !2731, line: 21, baseType: !344, size: 64, offset: 320)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2730, file: !2731, line: 22, baseType: !344, size: 64, offset: 384)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2730, file: !2731, line: 23, baseType: !344, size: 64, offset: 448)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2730, file: !2731, line: 24, baseType: !344, size: 64, offset: 512)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2730, file: !2731, line: 25, baseType: !344, size: 64, offset: 576)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2730, file: !2731, line: 26, baseType: !344, size: 64, offset: 640)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2730, file: !2731, line: 27, baseType: !344, size: 64, offset: 704)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2730, file: !2731, line: 28, baseType: !344, size: 64, offset: 768)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2730, file: !2731, line: 29, baseType: !344, size: 64, offset: 832)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2716, file: !2715, line: 44, baseType: !508, size: 32, offset: 832)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2716, file: !2715, line: 50, baseType: !428, size: 16, offset: 864)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2716, file: !2715, line: 51, baseType: !2750, size: 16, offset: 880)
!2750 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !337, line: 18, baseType: !2751)
!2751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !339, line: 23, baseType: !2515)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !675, file: !672, line: 495, baseType: !343, size: 64, offset: 6528)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !675, file: !672, line: 497, baseType: !2754, size: 64, offset: 6592)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !672, line: 381, size: 384, elements: !2756)
!2756 = !{!2757, !2758, !2764}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2755, file: !672, line: 382, baseType: !508, size: 32)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2755, file: !672, line: 383, baseType: !2759, size: 128, offset: 64)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !672, line: 376, size: 128, elements: !2760)
!2760 = !{!2761, !2762}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2759, file: !672, line: 377, baseType: !490, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2759, file: !672, line: 378, baseType: !2763, size: 64, offset: 64)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2755, file: !672, line: 384, baseType: !2765, size: 192, offset: 192)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2766, line: 26, size: 192, elements: !2767)
!2766 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2767 = !{!2768, !2769}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2765, file: !2766, line: 27, baseType: !7, size: 32)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2765, file: !2766, line: 28, baseType: !2770, size: 128, offset: 64)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2771, line: 43, size: 128, elements: !2772)
!2771 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2772 = !{!2773, !2774}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2770, file: !2771, line: 44, baseType: !465)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2770, file: !2771, line: 45, baseType: !533, size: 128)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !675, file: !672, line: 500, baseType: !1097, offset: 6656)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !675, file: !672, line: 501, baseType: !2777, size: 64, offset: 6656)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !672, line: 387, flags: DIFlagFwdDecl)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !675, file: !672, line: 516, baseType: !1735, size: 64, offset: 6720)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !675, file: !672, line: 519, baseType: !712, size: 64, offset: 6784)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !675, file: !672, line: 521, baseType: !2782, size: 64, offset: 6848)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !672, line: 521, flags: DIFlagFwdDecl)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !675, file: !672, line: 545, baseType: !508, size: 32, offset: 6912)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !675, file: !672, line: 548, baseType: !840, size: 8, offset: 6944)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !675, file: !672, line: 550, baseType: !2787, offset: 6952)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2788, line: 142, elements: !473)
!2788 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !675, file: !672, line: 554, baseType: !1755, size: 256, offset: 6976)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !675, file: !672, line: 557, baseType: !443, size: 32, offset: 7232)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !671, file: !672, line: 565, baseType: !2792, offset: 7296)
!2792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, elements: !2793)
!2793 = !{!2794}
!2794 = !DISubrange(count: -1)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !491, file: !492, line: 758, baseType: !670, size: 64, offset: 3968)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !491, file: !492, line: 761, baseType: !2797, size: 320, offset: 4032)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2706, line: 34, size: 320, elements: !2798)
!2798 = !{!2799, !2800}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2797, file: !2706, line: 35, baseType: !540, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2797, file: !2706, line: 36, baseType: !2801, size: 256, offset: 64)
!2801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !678, size: 256, elements: !2435)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !491, file: !492, line: 766, baseType: !345, size: 32, offset: 4352)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !491, file: !492, line: 767, baseType: !345, size: 32, offset: 4384)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !491, file: !492, line: 768, baseType: !345, size: 32, offset: 4416)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !491, file: !492, line: 770, baseType: !345, size: 32, offset: 4448)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !491, file: !492, line: 772, baseType: !343, size: 64, offset: 4480)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !491, file: !492, line: 775, baseType: !7, size: 32, offset: 4544)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !491, file: !492, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !491, file: !492, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !491, file: !492, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !491, file: !492, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !491, file: !492, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !491, file: !492, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !491, file: !492, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !491, file: !492, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !491, file: !492, line: 831, baseType: !343, size: 64, offset: 4672)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !491, file: !492, line: 833, baseType: !2818, size: 384, offset: 4736)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !48, line: 25, size: 384, elements: !2819)
!2819 = !{!2820, !2825}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2818, file: !48, line: 26, baseType: !2821, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!344, !2824}
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, scope: !2818, file: !48, line: 27, baseType: !2826, size: 320, offset: 64)
!2826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2818, file: !48, line: 27, size: 320, elements: !2827)
!2827 = !{!2828, !2838, !2863}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2826, file: !48, line: 36, baseType: !2829, size: 320)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2826, file: !48, line: 29, size: 320, elements: !2830)
!2830 = !{!2831, !2833, !2834, !2835, !2836, !2837}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2829, file: !48, line: 30, baseType: !2832, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2829, file: !48, line: 31, baseType: !443, size: 32, offset: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2829, file: !48, line: 32, baseType: !443, size: 32, offset: 96)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2829, file: !48, line: 33, baseType: !443, size: 32, offset: 128)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2829, file: !48, line: 34, baseType: !540, size: 64, offset: 192)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2829, file: !48, line: 35, baseType: !2832, size: 64, offset: 256)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2826, file: !48, line: 46, baseType: !2839, size: 192)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2826, file: !48, line: 38, size: 192, elements: !2840)
!2840 = !{!2841, !2842, !2843, !2862}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2839, file: !48, line: 39, baseType: !622, size: 32)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2839, file: !48, line: 40, baseType: !47, size: 32, offset: 32)
!2843 = !DIDerivedType(tag: DW_TAG_member, scope: !2839, file: !48, line: 41, baseType: !2844, size: 64, offset: 64)
!2844 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2839, file: !48, line: 41, size: 64, elements: !2845)
!2845 = !{!2846, !2854}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2844, file: !48, line: 42, baseType: !2847, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2849, line: 7, size: 128, elements: !2850)
!2849 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2850 = !{!2851, !2853}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2848, file: !2849, line: 8, baseType: !2852, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !624, line: 93, baseType: !572)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2848, file: !2849, line: 9, baseType: !572, size: 64, offset: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2844, file: !48, line: 43, baseType: !2855, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2857, line: 7, size: 64, elements: !2858)
!2857 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2858 = !{!2859, !2861}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2856, file: !2857, line: 8, baseType: !2860, size: 32)
!2860 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2857, line: 5, baseType: !2491)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2856, file: !2857, line: 9, baseType: !2491, size: 32, offset: 32)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2839, file: !48, line: 45, baseType: !540, size: 64, offset: 128)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2826, file: !48, line: 54, baseType: !2864, size: 256)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2826, file: !48, line: 48, size: 256, elements: !2865)
!2865 = !{!2866, !2874, !2875, !2876, !2877}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2864, file: !48, line: 49, baseType: !2867, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2869, line: 36, size: 64, elements: !2870)
!2869 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!2870 = !{!2871, !2872, !2873}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2868, file: !2869, line: 37, baseType: !345, size: 32)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2868, file: !2869, line: 38, baseType: !2515, size: 16, offset: 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2868, file: !2869, line: 39, baseType: !2515, size: 16, offset: 48)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2864, file: !48, line: 50, baseType: !345, size: 32, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2864, file: !48, line: 51, baseType: !345, size: 32, offset: 96)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2864, file: !48, line: 52, baseType: !343, size: 64, offset: 128)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2864, file: !48, line: 53, baseType: !343, size: 64, offset: 192)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !491, file: !492, line: 835, baseType: !2879, size: 32, offset: 5120)
!2879 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !334, line: 22, baseType: !2880)
!2880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !624, line: 28, baseType: !345)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !491, file: !492, line: 836, baseType: !2879, size: 32, offset: 5152)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !491, file: !492, line: 840, baseType: !343, size: 64, offset: 5184)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !491, file: !492, line: 849, baseType: !490, size: 64, offset: 5248)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !491, file: !492, line: 852, baseType: !490, size: 64, offset: 5312)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !491, file: !492, line: 857, baseType: !533, size: 128, offset: 5376)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !491, file: !492, line: 858, baseType: !533, size: 128, offset: 5504)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !491, file: !492, line: 859, baseType: !490, size: 64, offset: 5632)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !491, file: !492, line: 867, baseType: !533, size: 128, offset: 5696)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !491, file: !492, line: 868, baseType: !533, size: 128, offset: 5824)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !491, file: !492, line: 871, baseType: !2427, size: 64, offset: 5952)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !491, file: !492, line: 872, baseType: !2892, size: 512, offset: 6016)
!2892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !993, size: 512, elements: !2435)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !491, file: !492, line: 873, baseType: !533, size: 128, offset: 6528)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !491, file: !492, line: 874, baseType: !533, size: 128, offset: 6656)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !491, file: !492, line: 876, baseType: !2896, size: 64, offset: 6784)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !491, file: !492, line: 879, baseType: !1061, size: 64, offset: 6848)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !491, file: !492, line: 882, baseType: !1061, size: 64, offset: 6912)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !491, file: !492, line: 884, baseType: !540, size: 64, offset: 6976)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !491, file: !492, line: 885, baseType: !540, size: 64, offset: 7040)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !491, file: !492, line: 890, baseType: !540, size: 64, offset: 7104)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !491, file: !492, line: 891, baseType: !2903, size: 128, offset: 7168)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !492, line: 242, size: 128, elements: !2904)
!2904 = !{!2905, !2906, !2907}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2903, file: !492, line: 244, baseType: !540, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2903, file: !492, line: 245, baseType: !540, size: 64, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2903, file: !492, line: 246, baseType: !465, offset: 128)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !491, file: !492, line: 900, baseType: !343, size: 64, offset: 7296)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !491, file: !492, line: 901, baseType: !343, size: 64, offset: 7360)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !491, file: !492, line: 904, baseType: !540, size: 64, offset: 7424)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !491, file: !492, line: 907, baseType: !540, size: 64, offset: 7488)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !491, file: !492, line: 910, baseType: !343, size: 64, offset: 7552)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !491, file: !492, line: 911, baseType: !343, size: 64, offset: 7616)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !491, file: !492, line: 914, baseType: !2915, size: 640, offset: 7680)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2916, line: 123, size: 640, elements: !2917)
!2916 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2917 = !{!2918, !2924, !2925}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2915, file: !2916, line: 124, baseType: !2919, size: 576)
!2919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2920, size: 576, elements: !1005)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2916, line: 108, size: 192, elements: !2921)
!2921 = !{!2922, !2923}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2920, file: !2916, line: 109, baseType: !540, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2920, file: !2916, line: 110, baseType: !637, size: 128, offset: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2915, file: !2916, line: 125, baseType: !7, size: 32, offset: 576)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2915, file: !2916, line: 126, baseType: !7, size: 32, offset: 608)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !491, file: !492, line: 917, baseType: !2927, size: 192, offset: 8320)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2916, line: 134, size: 192, elements: !2928)
!2928 = !{!2929, !2930}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2927, file: !2916, line: 135, baseType: !725, size: 128, align: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2927, file: !2916, line: 136, baseType: !7, size: 32, offset: 128)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !491, file: !492, line: 923, baseType: !2453, size: 64, offset: 8512)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !491, file: !492, line: 926, baseType: !2453, size: 64, offset: 8576)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !491, file: !492, line: 929, baseType: !2453, size: 64, offset: 8640)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !491, file: !492, line: 933, baseType: !2483, size: 64, offset: 8704)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !491, file: !492, line: 943, baseType: !2936, size: 128, offset: 8768)
!2936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 128, elements: !1643)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !491, file: !492, line: 945, baseType: !2938, size: 64, offset: 8896)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !492, line: 49, flags: DIFlagFwdDecl)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !491, file: !492, line: 956, baseType: !2941, size: 64, offset: 8960)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !492, line: 45, flags: DIFlagFwdDecl)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !491, file: !492, line: 959, baseType: !2944, size: 64, offset: 9024)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !492, line: 959, flags: DIFlagFwdDecl)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !491, file: !492, line: 962, baseType: !2947, size: 64, offset: 9088)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !492, line: 66, flags: DIFlagFwdDecl)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !491, file: !492, line: 966, baseType: !2950, size: 64, offset: 9152)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !492, line: 50, flags: DIFlagFwdDecl)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !491, file: !492, line: 969, baseType: !2953, size: 64, offset: 9216)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2955, line: 82, size: 7296, elements: !2956)
!2955 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2956 = !{!2957, !2958, !2959, !2960, !2961, !2962, !2963, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2992, !3001, !3002, !3004, !3005, !3006, !3009, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3039, !3040, !3047, !3048, !3049, !3050, !3051, !3052}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2954, file: !2955, line: 83, baseType: !503, size: 32)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2954, file: !2955, line: 84, baseType: !508, size: 32, offset: 32)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2954, file: !2955, line: 85, baseType: !345, size: 32, offset: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2954, file: !2955, line: 86, baseType: !533, size: 128, offset: 128)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2954, file: !2955, line: 88, baseType: !1596, size: 128, offset: 256)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2954, file: !2955, line: 91, baseType: !490, size: 64, offset: 384)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2954, file: !2955, line: 94, baseType: !2964, size: 192, offset: 448)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2965, line: 30, size: 192, elements: !2966)
!2965 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2966 = !{!2967, !2968}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2964, file: !2965, line: 31, baseType: !533, size: 128)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2964, file: !2965, line: 32, baseType: !2969, size: 64, offset: 128)
!2969 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2970, line: 25, baseType: !2971)
!2970 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2970, line: 23, size: 64, elements: !2972)
!2972 = !{!2973}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2971, file: !2970, line: 24, baseType: !662, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2954, file: !2955, line: 97, baseType: !989, size: 64, offset: 640)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2954, file: !2955, line: 100, baseType: !345, size: 32, offset: 704)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2954, file: !2955, line: 106, baseType: !345, size: 32, offset: 736)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2954, file: !2955, line: 107, baseType: !490, size: 64, offset: 768)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2954, file: !2955, line: 110, baseType: !345, size: 32, offset: 832)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2954, file: !2955, line: 111, baseType: !7, size: 32, offset: 864)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2954, file: !2955, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2954, file: !2955, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2954, file: !2955, line: 128, baseType: !345, size: 32, offset: 928)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2954, file: !2955, line: 129, baseType: !533, size: 128, offset: 960)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2954, file: !2955, line: 132, baseType: !580, size: 512, offset: 1088)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2954, file: !2955, line: 133, baseType: !588, size: 64, offset: 1600)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2954, file: !2955, line: 140, baseType: !2987, size: 256, offset: 1664)
!2987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2988, size: 256, elements: !2475)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2955, line: 38, size: 128, elements: !2989)
!2989 = !{!2990, !2991}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2988, file: !2955, line: 39, baseType: !540, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2988, file: !2955, line: 40, baseType: !540, size: 64, offset: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2954, file: !2955, line: 146, baseType: !2993, size: 192, offset: 1920)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2955, line: 66, size: 192, elements: !2994)
!2994 = !{!2995}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2993, file: !2955, line: 67, baseType: !2996, size: 192)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2955, line: 47, size: 192, elements: !2997)
!2997 = !{!2998, !2999, !3000}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2996, file: !2955, line: 48, baseType: !1116, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2996, file: !2955, line: 49, baseType: !1116, size: 64, offset: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2996, file: !2955, line: 50, baseType: !1116, size: 64, offset: 128)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2954, file: !2955, line: 150, baseType: !2915, size: 640, offset: 2112)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2954, file: !2955, line: 153, baseType: !3003, size: 256, offset: 2752)
!3003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2427, size: 256, elements: !2435)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2954, file: !2955, line: 159, baseType: !2427, size: 64, offset: 3008)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2954, file: !2955, line: 162, baseType: !345, size: 32, offset: 3072)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2954, file: !2955, line: 164, baseType: !3007, size: 64, offset: 3136)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2955, line: 164, flags: DIFlagFwdDecl)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2954, file: !2955, line: 175, baseType: !3010, size: 32, offset: 3200)
!3010 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !627, line: 805, baseType: !3011)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !627, line: 798, size: 32, elements: !3012)
!3012 = !{!3013, !3014}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3011, file: !627, line: 803, baseType: !747, size: 32)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3011, file: !627, line: 804, baseType: !1097, offset: 32)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2954, file: !2955, line: 176, baseType: !540, size: 64, offset: 3264)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2954, file: !2955, line: 176, baseType: !540, size: 64, offset: 3328)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2954, file: !2955, line: 176, baseType: !540, size: 64, offset: 3392)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2954, file: !2955, line: 176, baseType: !540, size: 64, offset: 3456)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2954, file: !2955, line: 177, baseType: !540, size: 64, offset: 3520)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2954, file: !2955, line: 178, baseType: !540, size: 64, offset: 3584)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2954, file: !2955, line: 179, baseType: !2903, size: 128, offset: 3648)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2954, file: !2955, line: 180, baseType: !343, size: 64, offset: 3776)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2954, file: !2955, line: 180, baseType: !343, size: 64, offset: 3840)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2954, file: !2955, line: 180, baseType: !343, size: 64, offset: 3904)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2954, file: !2955, line: 180, baseType: !343, size: 64, offset: 3968)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2954, file: !2955, line: 181, baseType: !343, size: 64, offset: 4032)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2954, file: !2955, line: 181, baseType: !343, size: 64, offset: 4096)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2954, file: !2955, line: 181, baseType: !343, size: 64, offset: 4160)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2954, file: !2955, line: 181, baseType: !343, size: 64, offset: 4224)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2954, file: !2955, line: 182, baseType: !343, size: 64, offset: 4288)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2954, file: !2955, line: 182, baseType: !343, size: 64, offset: 4352)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2954, file: !2955, line: 182, baseType: !343, size: 64, offset: 4416)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2954, file: !2955, line: 182, baseType: !343, size: 64, offset: 4480)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2954, file: !2955, line: 183, baseType: !343, size: 64, offset: 4544)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2954, file: !2955, line: 183, baseType: !343, size: 64, offset: 4608)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2954, file: !2955, line: 184, baseType: !3037, offset: 4672)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3038, line: 12, elements: !473)
!3038 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2954, file: !2955, line: 192, baseType: !542, size: 64, offset: 4672)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2954, file: !2955, line: 203, baseType: !3041, size: 2048, offset: 4736)
!3041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3042, size: 2048, elements: !1643)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3043, line: 43, size: 128, elements: !3044)
!3043 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!3044 = !{!3045, !3046}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3042, file: !3043, line: 44, baseType: !931, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3042, file: !3043, line: 45, baseType: !931, size: 64, offset: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2954, file: !2955, line: 220, baseType: !840, size: 8, offset: 6784)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2954, file: !2955, line: 221, baseType: !2515, size: 16, offset: 6800)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2954, file: !2955, line: 222, baseType: !2515, size: 16, offset: 6816)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2954, file: !2955, line: 224, baseType: !670, size: 64, offset: 6848)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2954, file: !2955, line: 227, baseType: !1364, size: 192, offset: 6912)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2954, file: !2955, line: 233, baseType: !1364, size: 192, offset: 7104)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !491, file: !492, line: 970, baseType: !3054, size: 64, offset: 9280)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2955, line: 20, size: 16576, elements: !3056)
!3056 = !{!3057, !3058, !3059, !3060}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3055, file: !2955, line: 21, baseType: !1097)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3055, file: !2955, line: 22, baseType: !503, size: 32)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3055, file: !2955, line: 23, baseType: !1596, size: 128, offset: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3055, file: !2955, line: 24, baseType: !3061, size: 16384, offset: 192)
!3061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3062, size: 16384, elements: !2112)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2965, line: 49, size: 256, elements: !3063)
!3063 = !{!3064}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3062, file: !2965, line: 50, baseType: !3065, size: 256)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2965, line: 35, size: 256, elements: !3066)
!3066 = !{!3067, !3074, !3075, !3079}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3065, file: !2965, line: 37, baseType: !3068, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3069, line: 19, baseType: !3070)
!3069 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3069, line: 18, baseType: !3072)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{null, !345}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3065, file: !2965, line: 38, baseType: !343, size: 64, offset: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3065, file: !2965, line: 44, baseType: !3076, size: 64, offset: 128)
!3076 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3069, line: 22, baseType: !3077)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3069, line: 21, baseType: !358)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3065, file: !2965, line: 46, baseType: !2969, size: 64, offset: 192)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !491, file: !492, line: 971, baseType: !2969, size: 64, offset: 9344)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !491, file: !492, line: 972, baseType: !2969, size: 64, offset: 9408)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !491, file: !492, line: 974, baseType: !2969, size: 64, offset: 9472)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !491, file: !492, line: 975, baseType: !2964, size: 192, offset: 9536)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !491, file: !492, line: 976, baseType: !343, size: 64, offset: 9728)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !491, file: !492, line: 977, baseType: !929, size: 64, offset: 9792)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !491, file: !492, line: 978, baseType: !7, size: 32, offset: 9856)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !491, file: !492, line: 980, baseType: !728, size: 64, offset: 9920)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !491, file: !492, line: 989, baseType: !3089, size: 128, offset: 9984)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3090, line: 35, size: 128, elements: !3091)
!3090 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!3091 = !{!3092, !3093, !3094}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3089, file: !3090, line: 36, baseType: !345, size: 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3089, file: !3090, line: 37, baseType: !508, size: 32, offset: 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3089, file: !3090, line: 38, baseType: !3095, size: 64, offset: 64)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3090, line: 23, flags: DIFlagFwdDecl)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !491, file: !492, line: 992, baseType: !540, size: 64, offset: 10112)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !491, file: !492, line: 993, baseType: !540, size: 64, offset: 10176)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !491, file: !492, line: 996, baseType: !1097, offset: 10240)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !491, file: !492, line: 999, baseType: !465, offset: 10240)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !491, file: !492, line: 1001, baseType: !3102, size: 64, offset: 10240)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !492, line: 636, size: 64, elements: !3103)
!3103 = !{!3104}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3102, file: !492, line: 637, baseType: !3105, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !491, file: !492, line: 1005, baseType: !475, size: 128, offset: 10304)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !491, file: !492, line: 1007, baseType: !490, size: 64, offset: 10432)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !491, file: !492, line: 1009, baseType: !3109, size: 64, offset: 10496)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !492, line: 1009, flags: DIFlagFwdDecl)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !491, file: !492, line: 1043, baseType: !332, size: 64, offset: 10560)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !491, file: !492, line: 1046, baseType: !3113, size: 64, offset: 10624)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !492, line: 41, flags: DIFlagFwdDecl)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !491, file: !492, line: 1050, baseType: !3116, size: 64, offset: 10688)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !492, line: 42, flags: DIFlagFwdDecl)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !491, file: !492, line: 1054, baseType: !3119, size: 64, offset: 10752)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !492, line: 55, flags: DIFlagFwdDecl)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !491, file: !492, line: 1056, baseType: !1543, size: 64, offset: 10816)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !491, file: !492, line: 1058, baseType: !3123, size: 64, offset: 10880)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3125, line: 99, size: 704, elements: !3126)
!3125 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!3126 = !{!3127, !3128, !3129, !3130, !3131, !3132, !3133, !3152, !3153}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3124, file: !3125, line: 100, baseType: !1114, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3124, file: !3125, line: 101, baseType: !508, size: 32, offset: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3124, file: !3125, line: 102, baseType: !508, size: 32, offset: 96)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3124, file: !3125, line: 105, baseType: !1097, offset: 128)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3124, file: !3125, line: 107, baseType: !394, size: 16, offset: 128)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !3124, file: !3125, line: 109, baseType: !1093, size: 128, offset: 192)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !3124, file: !3125, line: 110, baseType: !3134, size: 64, offset: 320)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !3125, line: 73, size: 448, elements: !3136)
!3136 = !{!3137, !3140, !3141, !3146, !3151}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3135, file: !3125, line: 74, baseType: !3138, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !3125, line: 74, flags: DIFlagFwdDecl)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !3135, file: !3125, line: 75, baseType: !3123, size: 64, offset: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, scope: !3135, file: !3125, line: 83, baseType: !3142, size: 128, offset: 128)
!3142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3135, file: !3125, line: 83, size: 128, elements: !3143)
!3143 = !{!3144, !3145}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !3142, file: !3125, line: 84, baseType: !533, size: 128)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !3142, file: !3125, line: 85, baseType: !1274, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, scope: !3135, file: !3125, line: 87, baseType: !3147, size: 128, offset: 256)
!3147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3135, file: !3125, line: 87, size: 128, elements: !3148)
!3148 = !{!3149, !3150}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !3147, file: !3125, line: 88, baseType: !993, size: 128)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !3147, file: !3125, line: 89, baseType: !725, size: 128, align: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3135, file: !3125, line: 92, baseType: !7, size: 32, offset: 384)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !3124, file: !3125, line: 111, baseType: !989, size: 64, offset: 384)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !3124, file: !3125, line: 113, baseType: !1755, size: 256, offset: 448)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !491, file: !492, line: 1061, baseType: !3155, size: 64, offset: 10944)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !492, line: 43, flags: DIFlagFwdDecl)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !491, file: !492, line: 1064, baseType: !343, size: 64, offset: 11008)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !491, file: !492, line: 1065, baseType: !3159, size: 64, offset: 11072)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2965, line: 14, baseType: !3161)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2965, line: 12, size: 384, elements: !3162)
!3162 = !{!3163}
!3163 = !DIDerivedType(tag: DW_TAG_member, scope: !3161, file: !2965, line: 13, baseType: !3164, size: 384)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3161, file: !2965, line: 13, size: 384, elements: !3165)
!3165 = !{!3166, !3167, !3168, !3169}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3164, file: !2965, line: 13, baseType: !345, size: 32)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3164, file: !2965, line: 13, baseType: !345, size: 32, offset: 32)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3164, file: !2965, line: 13, baseType: !345, size: 32, offset: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3164, file: !2965, line: 13, baseType: !3170, size: 256, offset: 128)
!3170 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3171, line: 32, size: 256, elements: !3172)
!3171 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!3172 = !{!3173, !3178, !3191, !3197, !3206, !3226, !3231}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3170, file: !3171, line: 37, baseType: !3174, size: 64)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3170, file: !3171, line: 34, size: 64, elements: !3175)
!3175 = !{!3176, !3177}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3174, file: !3171, line: 35, baseType: !2880, size: 32)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3174, file: !3171, line: 36, baseType: !789, size: 32, offset: 32)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3170, file: !3171, line: 45, baseType: !3179, size: 192)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3170, file: !3171, line: 40, size: 192, elements: !3180)
!3180 = !{!3181, !3183, !3184, !3190}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3179, file: !3171, line: 41, baseType: !3182, size: 32)
!3182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !624, line: 95, baseType: !345)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3179, file: !3171, line: 42, baseType: !345, size: 32, offset: 32)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3179, file: !3171, line: 43, baseType: !3185, size: 64, offset: 64)
!3185 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3171, line: 11, baseType: !3186)
!3186 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3171, line: 8, size: 64, elements: !3187)
!3187 = !{!3188, !3189}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3186, file: !3171, line: 9, baseType: !345, size: 32)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3186, file: !3171, line: 10, baseType: !332, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3179, file: !3171, line: 44, baseType: !345, size: 32, offset: 128)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3170, file: !3171, line: 52, baseType: !3192, size: 128)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3170, file: !3171, line: 48, size: 128, elements: !3193)
!3193 = !{!3194, !3195, !3196}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3192, file: !3171, line: 49, baseType: !2880, size: 32)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3192, file: !3171, line: 50, baseType: !789, size: 32, offset: 32)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3192, file: !3171, line: 51, baseType: !3185, size: 64, offset: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3170, file: !3171, line: 61, baseType: !3198, size: 256)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3170, file: !3171, line: 55, size: 256, elements: !3199)
!3199 = !{!3200, !3201, !3202, !3203, !3205}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3198, file: !3171, line: 56, baseType: !2880, size: 32)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3198, file: !3171, line: 57, baseType: !789, size: 32, offset: 32)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3198, file: !3171, line: 58, baseType: !345, size: 32, offset: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3198, file: !3171, line: 59, baseType: !3204, size: 64, offset: 128)
!3204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !624, line: 94, baseType: !928)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3198, file: !3171, line: 60, baseType: !3204, size: 64, offset: 192)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3170, file: !3171, line: 95, baseType: !3207, size: 256)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3170, file: !3171, line: 64, size: 256, elements: !3208)
!3208 = !{!3209, !3210}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3207, file: !3171, line: 65, baseType: !332, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, scope: !3207, file: !3171, line: 77, baseType: !3211, size: 192, offset: 64)
!3211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3207, file: !3171, line: 77, size: 192, elements: !3212)
!3212 = !{!3213, !3214, !3221}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3211, file: !3171, line: 82, baseType: !2515, size: 16)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3211, file: !3171, line: 88, baseType: !3215, size: 192)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3211, file: !3171, line: 84, size: 192, elements: !3216)
!3216 = !{!3217, !3219, !3220}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3215, file: !3171, line: 85, baseType: !3218, size: 64)
!3218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 64, elements: !618)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3215, file: !3171, line: 86, baseType: !332, size: 64, offset: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3215, file: !3171, line: 87, baseType: !332, size: 64, offset: 128)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3211, file: !3171, line: 93, baseType: !3222, size: 96)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3211, file: !3171, line: 90, size: 96, elements: !3223)
!3223 = !{!3224, !3225}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3222, file: !3171, line: 91, baseType: !3218, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3222, file: !3171, line: 92, baseType: !444, size: 32, offset: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3170, file: !3171, line: 101, baseType: !3227, size: 128)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3170, file: !3171, line: 98, size: 128, elements: !3228)
!3228 = !{!3229, !3230}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3227, file: !3171, line: 99, baseType: !344, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3227, file: !3171, line: 100, baseType: !345, size: 32, offset: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3170, file: !3171, line: 108, baseType: !3232, size: 128)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3170, file: !3171, line: 104, size: 128, elements: !3233)
!3233 = !{!3234, !3235, !3236}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3232, file: !3171, line: 105, baseType: !332, size: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3232, file: !3171, line: 106, baseType: !345, size: 32, offset: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3232, file: !3171, line: 107, baseType: !7, size: 32, offset: 96)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !491, file: !492, line: 1067, baseType: !3037, offset: 11136)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !491, file: !492, line: 1099, baseType: !3239, size: 64, offset: 11136)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !492, line: 56, flags: DIFlagFwdDecl)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !491, file: !492, line: 1103, baseType: !533, size: 128, offset: 11200)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !491, file: !492, line: 1104, baseType: !3243, size: 64, offset: 11328)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !492, line: 46, flags: DIFlagFwdDecl)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !491, file: !492, line: 1105, baseType: !1364, size: 192, offset: 11392)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !491, file: !492, line: 1106, baseType: !7, size: 32, offset: 11584)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !491, file: !492, line: 1109, baseType: !3248, size: 128, offset: 11648)
!3248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3249, size: 128, elements: !2475)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !492, line: 51, flags: DIFlagFwdDecl)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !491, file: !492, line: 1110, baseType: !1364, size: 192, offset: 11776)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !491, file: !492, line: 1111, baseType: !533, size: 128, offset: 11968)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !491, file: !492, line: 1173, baseType: !3254, size: 64, offset: 12096)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3256, line: 62, size: 256, align: 256, elements: !3257)
!3256 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!3257 = !{!3258, !3259, !3260, !3265}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3255, file: !3256, line: 75, baseType: !444, size: 32)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3255, file: !3256, line: 90, baseType: !444, size: 32, offset: 32)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3255, file: !3256, line: 124, baseType: !3261, size: 64, offset: 64)
!3261 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3255, file: !3256, line: 109, size: 64, elements: !3262)
!3262 = !{!3263, !3264}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !3261, file: !3256, line: 110, baseType: !541, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3261, file: !3256, line: 112, baseType: !541, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3255, file: !3256, line: 144, baseType: !444, size: 32, offset: 128)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !491, file: !492, line: 1174, baseType: !443, size: 32, offset: 12160)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !491, file: !492, line: 1179, baseType: !343, size: 64, offset: 12224)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !491, file: !492, line: 1182, baseType: !3269, size: 128, offset: 12288)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2706, line: 76, size: 128, elements: !3270)
!3270 = !{!3271, !3276, !3277}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3269, file: !2706, line: 85, baseType: !3272, size: 64)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3273, line: 7, size: 64, elements: !3274)
!3273 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!3274 = !{!3275}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3272, file: !3273, line: 12, baseType: !659, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3269, file: !2706, line: 88, baseType: !840, size: 8, offset: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3269, file: !2706, line: 95, baseType: !840, size: 8, offset: 72)
!3278 = !DIDerivedType(tag: DW_TAG_member, scope: !491, file: !492, line: 1184, baseType: !3279, size: 128, offset: 12416)
!3279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !491, file: !492, line: 1184, size: 128, elements: !3280)
!3280 = !{!3281, !3282}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3279, file: !492, line: 1185, baseType: !503, size: 32)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3279, file: !492, line: 1186, baseType: !725, size: 128, align: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !491, file: !492, line: 1190, baseType: !2021, size: 64, offset: 12544)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !491, file: !492, line: 1192, baseType: !3285, size: 128, offset: 12608)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2706, line: 64, size: 128, elements: !3286)
!3286 = !{!3287, !3288, !3289}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3285, file: !2706, line: 65, baseType: !1076, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3285, file: !2706, line: 67, baseType: !444, size: 32, offset: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3285, file: !2706, line: 68, baseType: !444, size: 32, offset: 96)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !491, file: !492, line: 1206, baseType: !345, size: 32, offset: 12736)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !491, file: !492, line: 1207, baseType: !345, size: 32, offset: 12768)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !491, file: !492, line: 1209, baseType: !343, size: 64, offset: 12800)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !491, file: !492, line: 1219, baseType: !540, size: 64, offset: 12864)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !491, file: !492, line: 1220, baseType: !540, size: 64, offset: 12928)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !491, file: !492, line: 1317, baseType: !345, size: 32, offset: 12992)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !491, file: !492, line: 1319, baseType: !490, size: 64, offset: 13056)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !491, file: !492, line: 1322, baseType: !3298, size: 64, offset: 13120)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3300, line: 56, size: 512, elements: !3301)
!3300 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!3301 = !{!3302, !3303, !3304, !3305, !3306, !3307, !3308, !3310}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3299, file: !3300, line: 57, baseType: !3298, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3299, file: !3300, line: 58, baseType: !332, size: 64, offset: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3299, file: !3300, line: 59, baseType: !343, size: 64, offset: 128)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3299, file: !3300, line: 60, baseType: !343, size: 64, offset: 192)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3299, file: !3300, line: 61, baseType: !1161, size: 64, offset: 256)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3299, file: !3300, line: 62, baseType: !7, size: 32, offset: 320)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3299, file: !3300, line: 63, baseType: !3309, size: 64, offset: 384)
!3309 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !334, line: 153, baseType: !540)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3299, file: !3300, line: 64, baseType: !2203, size: 64, offset: 448)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !491, file: !492, line: 1326, baseType: !503, size: 32, offset: 13184)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !491, file: !492, line: 1342, baseType: !332, size: 64, offset: 13248)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !491, file: !492, line: 1343, baseType: !541, size: 64, offset: 13312)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !491, file: !492, line: 1344, baseType: !540, size: 64, offset: 13376)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !491, file: !492, line: 1345, baseType: !541, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !491, file: !492, line: 1346, baseType: !541, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !491, file: !492, line: 1347, baseType: !541, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !491, file: !492, line: 1348, baseType: !725, size: 128, align: 64, offset: 13504)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !491, file: !492, line: 1358, baseType: !3320, size: 34816, offset: 13824)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3321, line: 485, size: 34816, elements: !3322)
!3321 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3322 = !{!3323, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3352, !3353, !3354, !3355, !3356, !3357, !3360, !3361, !3362}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3320, file: !3321, line: 487, baseType: !3324, size: 192)
!3324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3325, size: 192, elements: !1005)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3326, line: 16, size: 64, elements: !3327)
!3326 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!3327 = !{!3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3325, file: !3326, line: 17, baseType: !428, size: 16)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3325, file: !3326, line: 18, baseType: !428, size: 16, offset: 16)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3325, file: !3326, line: 19, baseType: !428, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3325, file: !3326, line: 19, baseType: !428, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3325, file: !3326, line: 19, baseType: !428, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3325, file: !3326, line: 19, baseType: !428, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3325, file: !3326, line: 19, baseType: !428, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3325, file: !3326, line: 20, baseType: !428, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3325, file: !3326, line: 20, baseType: !428, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3325, file: !3326, line: 20, baseType: !428, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3325, file: !3326, line: 20, baseType: !428, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3325, file: !3326, line: 20, baseType: !428, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3325, file: !3326, line: 20, baseType: !428, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3320, file: !3321, line: 491, baseType: !343, size: 64, offset: 192)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3320, file: !3321, line: 495, baseType: !394, size: 16, offset: 256)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3320, file: !3321, line: 496, baseType: !394, size: 16, offset: 272)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3320, file: !3321, line: 497, baseType: !394, size: 16, offset: 288)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3320, file: !3321, line: 498, baseType: !394, size: 16, offset: 304)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3320, file: !3321, line: 502, baseType: !343, size: 64, offset: 320)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3320, file: !3321, line: 503, baseType: !343, size: 64, offset: 384)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3320, file: !3321, line: 514, baseType: !3349, size: 256, offset: 448)
!3349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3350, size: 256, elements: !2435)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3321, line: 483, flags: DIFlagFwdDecl)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3320, file: !3321, line: 516, baseType: !343, size: 64, offset: 704)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3320, file: !3321, line: 518, baseType: !343, size: 64, offset: 768)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3320, file: !3321, line: 520, baseType: !343, size: 64, offset: 832)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3320, file: !3321, line: 521, baseType: !343, size: 64, offset: 896)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3320, file: !3321, line: 522, baseType: !343, size: 64, offset: 960)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3320, file: !3321, line: 528, baseType: !3358, size: 64, offset: 1024)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3321, line: 10, flags: DIFlagFwdDecl)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3320, file: !3321, line: 535, baseType: !343, size: 64, offset: 1088)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3320, file: !3321, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3320, file: !3321, line: 540, baseType: !3363, size: 33280, offset: 1536)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3364, line: 317, size: 33280, elements: !3365)
!3364 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!3365 = !{!3366, !3367, !3368}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3363, file: !3364, line: 330, baseType: !7, size: 32)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3363, file: !3364, line: 337, baseType: !343, size: 64, offset: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3363, file: !3364, line: 348, baseType: !3369, size: 32768, offset: 512)
!3369 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3364, line: 304, size: 32768, elements: !3370)
!3370 = !{!3371, !3384, !3421, !3471, !3484}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3369, file: !3364, line: 305, baseType: !3372, size: 896)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3364, line: 12, size: 896, elements: !3373)
!3373 = !{!3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3383}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3372, file: !3364, line: 13, baseType: !443, size: 32)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3372, file: !3364, line: 14, baseType: !443, size: 32, offset: 32)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3372, file: !3364, line: 15, baseType: !443, size: 32, offset: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3372, file: !3364, line: 16, baseType: !443, size: 32, offset: 96)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3372, file: !3364, line: 17, baseType: !443, size: 32, offset: 128)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3372, file: !3364, line: 18, baseType: !443, size: 32, offset: 160)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3372, file: !3364, line: 19, baseType: !443, size: 32, offset: 192)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3372, file: !3364, line: 22, baseType: !3382, size: 640, offset: 224)
!3382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 640, elements: !379)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3372, file: !3364, line: 25, baseType: !443, size: 32, offset: 864)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3369, file: !3364, line: 306, baseType: !3385, size: 4096, align: 128)
!3385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3364, line: 34, size: 4096, align: 128, elements: !3386)
!3386 = !{!3387, !3388, !3389, !3390, !3391, !3406, !3407, !3408, !3410, !3412, !3416}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3385, file: !3364, line: 35, baseType: !428, size: 16)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3385, file: !3364, line: 36, baseType: !428, size: 16, offset: 16)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3385, file: !3364, line: 37, baseType: !428, size: 16, offset: 32)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3385, file: !3364, line: 38, baseType: !428, size: 16, offset: 48)
!3391 = !DIDerivedType(tag: DW_TAG_member, scope: !3385, file: !3364, line: 39, baseType: !3392, size: 128, offset: 64)
!3392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3385, file: !3364, line: 39, size: 128, elements: !3393)
!3393 = !{!3394, !3399}
!3394 = !DIDerivedType(tag: DW_TAG_member, scope: !3392, file: !3364, line: 40, baseType: !3395, size: 128)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3392, file: !3364, line: 40, size: 128, elements: !3396)
!3396 = !{!3397, !3398}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3395, file: !3364, line: 41, baseType: !540, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3395, file: !3364, line: 42, baseType: !540, size: 64, offset: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, scope: !3392, file: !3364, line: 44, baseType: !3400, size: 128)
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3392, file: !3364, line: 44, size: 128, elements: !3401)
!3401 = !{!3402, !3403, !3404, !3405}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3400, file: !3364, line: 45, baseType: !443, size: 32)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3400, file: !3364, line: 46, baseType: !443, size: 32, offset: 32)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3400, file: !3364, line: 47, baseType: !443, size: 32, offset: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3400, file: !3364, line: 48, baseType: !443, size: 32, offset: 96)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3385, file: !3364, line: 51, baseType: !443, size: 32, offset: 192)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3385, file: !3364, line: 52, baseType: !443, size: 32, offset: 224)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3385, file: !3364, line: 55, baseType: !3409, size: 1024, offset: 256)
!3409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 1024, elements: !1634)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3385, file: !3364, line: 58, baseType: !3411, size: 2048, offset: 1280)
!3411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 2048, elements: !2112)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3385, file: !3364, line: 60, baseType: !3413, size: 384, offset: 3328)
!3413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 384, elements: !3414)
!3414 = !{!3415}
!3415 = !DISubrange(count: 12)
!3416 = !DIDerivedType(tag: DW_TAG_member, scope: !3385, file: !3364, line: 62, baseType: !3417, size: 384, offset: 3712)
!3417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3385, file: !3364, line: 62, size: 384, elements: !3418)
!3418 = !{!3419, !3420}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3417, file: !3364, line: 63, baseType: !3413, size: 384)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3417, file: !3364, line: 64, baseType: !3413, size: 384)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3369, file: !3364, line: 307, baseType: !3422, size: 1088)
!3422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3364, line: 79, size: 1088, elements: !3423)
!3423 = !{!3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3470}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3422, file: !3364, line: 80, baseType: !443, size: 32)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3422, file: !3364, line: 81, baseType: !443, size: 32, offset: 32)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3422, file: !3364, line: 82, baseType: !443, size: 32, offset: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3422, file: !3364, line: 83, baseType: !443, size: 32, offset: 96)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3422, file: !3364, line: 84, baseType: !443, size: 32, offset: 128)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3422, file: !3364, line: 85, baseType: !443, size: 32, offset: 160)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3422, file: !3364, line: 86, baseType: !443, size: 32, offset: 192)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3422, file: !3364, line: 88, baseType: !3382, size: 640, offset: 224)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3422, file: !3364, line: 89, baseType: !336, size: 8, offset: 864)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3422, file: !3364, line: 90, baseType: !336, size: 8, offset: 872)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3422, file: !3364, line: 91, baseType: !336, size: 8, offset: 880)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3422, file: !3364, line: 92, baseType: !336, size: 8, offset: 888)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3422, file: !3364, line: 93, baseType: !336, size: 8, offset: 896)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3422, file: !3364, line: 94, baseType: !336, size: 8, offset: 904)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3422, file: !3364, line: 95, baseType: !3439, size: 64, offset: 960)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3441, line: 11, size: 128, elements: !3442)
!3441 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3442 = !{!3443, !3444}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3440, file: !3441, line: 12, baseType: !344, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3440, file: !3441, line: 13, baseType: !3445, size: 64, offset: 64)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3447, line: 56, size: 1344, elements: !3448)
!3447 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3448 = !{!3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3446, file: !3447, line: 61, baseType: !343, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3446, file: !3447, line: 62, baseType: !343, size: 64, offset: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3446, file: !3447, line: 63, baseType: !343, size: 64, offset: 128)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3446, file: !3447, line: 64, baseType: !343, size: 64, offset: 192)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3446, file: !3447, line: 65, baseType: !343, size: 64, offset: 256)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3446, file: !3447, line: 66, baseType: !343, size: 64, offset: 320)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3446, file: !3447, line: 68, baseType: !343, size: 64, offset: 384)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3446, file: !3447, line: 69, baseType: !343, size: 64, offset: 448)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3446, file: !3447, line: 70, baseType: !343, size: 64, offset: 512)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3446, file: !3447, line: 71, baseType: !343, size: 64, offset: 576)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3446, file: !3447, line: 72, baseType: !343, size: 64, offset: 640)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3446, file: !3447, line: 73, baseType: !343, size: 64, offset: 704)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3446, file: !3447, line: 74, baseType: !343, size: 64, offset: 768)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3446, file: !3447, line: 75, baseType: !343, size: 64, offset: 832)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3446, file: !3447, line: 76, baseType: !343, size: 64, offset: 896)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3446, file: !3447, line: 81, baseType: !343, size: 64, offset: 960)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3446, file: !3447, line: 83, baseType: !343, size: 64, offset: 1024)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3446, file: !3447, line: 84, baseType: !343, size: 64, offset: 1088)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3446, file: !3447, line: 85, baseType: !343, size: 64, offset: 1152)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3446, file: !3447, line: 86, baseType: !343, size: 64, offset: 1216)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3446, file: !3447, line: 87, baseType: !343, size: 64, offset: 1280)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3422, file: !3364, line: 96, baseType: !443, size: 32, offset: 1024)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3369, file: !3364, line: 308, baseType: !3472, size: 4608, align: 512)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3364, line: 289, size: 4608, align: 512, elements: !3473)
!3473 = !{!3474, !3475, !3482}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3472, file: !3364, line: 290, baseType: !3385, size: 4096, align: 128)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3472, file: !3364, line: 291, baseType: !3476, size: 512, offset: 4096)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3364, line: 268, size: 512, elements: !3477)
!3477 = !{!3478, !3479, !3480}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3476, file: !3364, line: 269, baseType: !540, size: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3476, file: !3364, line: 270, baseType: !540, size: 64, offset: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3476, file: !3364, line: 271, baseType: !3481, size: 384, offset: 128)
!3481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 384, elements: !2533)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3472, file: !3364, line: 292, baseType: !3483, offset: 4608)
!3483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, elements: !2629)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3369, file: !3364, line: 309, baseType: !3485, size: 32768)
!3485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 32768, elements: !3486)
!3486 = !{!3487}
!3487 = !DISubrange(count: 4096)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !400, file: !95, line: 704, baseType: !461, size: 192, offset: 512)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !400, file: !95, line: 706, baseType: !345, size: 32, offset: 704)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !400, file: !95, line: 707, baseType: !345, size: 32, offset: 736)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !400, file: !95, line: 708, baseType: !3492, size: 5568, offset: 768)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !60, line: 461, size: 5568, elements: !3493)
!3493 = !{!3494, !3495, !3497, !3500, !3501, !3552, !3643, !3644, !3645, !3646, !3647, !3656, !3761, !3774, !3969, !3970, !3974, !3976, !3977, !3978, !3982, !3988, !3989, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !4030, !4031, !4032, !4035, !4038, !4039, !4040, !4041}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3492, file: !60, line: 462, baseType: !2071, size: 512)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3492, file: !60, line: 463, baseType: !3496, size: 64, offset: 512)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3492, file: !60, line: 465, baseType: !3498, size: 64, offset: 576)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !60, line: 36, flags: DIFlagFwdDecl)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3492, file: !60, line: 467, baseType: !811, size: 64, offset: 640)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3492, file: !60, line: 468, baseType: !3502, size: 64, offset: 704)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3504)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !60, line: 87, size: 384, elements: !3505)
!3505 = !{!3506, !3507, !3508, !3512, !3517, !3521}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3504, file: !60, line: 88, baseType: !811, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3504, file: !60, line: 89, baseType: !2150, size: 64, offset: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3504, file: !60, line: 90, baseType: !3509, size: 64, offset: 128)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!345, !3496, !2105}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3504, file: !60, line: 91, baseType: !3513, size: 64, offset: 192)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!835, !3496, !3516, !2220, !2221}
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3504, file: !60, line: 93, baseType: !3518, size: 64, offset: 256)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{null, !3496}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3504, file: !60, line: 95, baseType: !3522, size: 64, offset: 320)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3524)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !67, line: 278, size: 1472, elements: !3525)
!3525 = !{!3526, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3524, file: !67, line: 279, baseType: !3527, size: 64)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!345, !3496}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3524, file: !67, line: 280, baseType: !3518, size: 64, offset: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3524, file: !67, line: 281, baseType: !3527, size: 64, offset: 128)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3524, file: !67, line: 282, baseType: !3527, size: 64, offset: 192)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3524, file: !67, line: 283, baseType: !3527, size: 64, offset: 256)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3524, file: !67, line: 284, baseType: !3527, size: 64, offset: 320)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3524, file: !67, line: 285, baseType: !3527, size: 64, offset: 384)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3524, file: !67, line: 286, baseType: !3527, size: 64, offset: 448)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3524, file: !67, line: 287, baseType: !3527, size: 64, offset: 512)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3524, file: !67, line: 288, baseType: !3527, size: 64, offset: 576)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3524, file: !67, line: 289, baseType: !3527, size: 64, offset: 640)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3524, file: !67, line: 290, baseType: !3527, size: 64, offset: 704)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3524, file: !67, line: 291, baseType: !3527, size: 64, offset: 768)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3524, file: !67, line: 292, baseType: !3527, size: 64, offset: 832)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3524, file: !67, line: 293, baseType: !3527, size: 64, offset: 896)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3524, file: !67, line: 294, baseType: !3527, size: 64, offset: 960)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3524, file: !67, line: 295, baseType: !3527, size: 64, offset: 1024)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3524, file: !67, line: 296, baseType: !3527, size: 64, offset: 1088)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3524, file: !67, line: 297, baseType: !3527, size: 64, offset: 1152)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3524, file: !67, line: 298, baseType: !3527, size: 64, offset: 1216)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3524, file: !67, line: 299, baseType: !3527, size: 64, offset: 1280)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3524, file: !67, line: 300, baseType: !3527, size: 64, offset: 1344)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3524, file: !67, line: 301, baseType: !3527, size: 64, offset: 1408)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3492, file: !60, line: 470, baseType: !3553, size: 64, offset: 768)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3555, line: 82, size: 1408, elements: !3556)
!3555 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3556 = !{!3557, !3558, !3559, !3560, !3561, !3562, !3563, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3638, !3641, !3642}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3554, file: !3555, line: 83, baseType: !811, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3554, file: !3555, line: 84, baseType: !811, size: 64, offset: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3554, file: !3555, line: 85, baseType: !3496, size: 64, offset: 128)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3554, file: !3555, line: 86, baseType: !2150, size: 64, offset: 192)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3554, file: !3555, line: 87, baseType: !2150, size: 64, offset: 256)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3554, file: !3555, line: 88, baseType: !2150, size: 64, offset: 320)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3554, file: !3555, line: 90, baseType: !3564, size: 64, offset: 384)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{!345, !3496, !3567}
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !54, line: 95, size: 1152, elements: !3569)
!3569 = !{!3570, !3571, !3572, !3573, !3574, !3575, !3576, !3589, !3602, !3603, !3604, !3605, !3606, !3614, !3615, !3616, !3617, !3618, !3619}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3568, file: !54, line: 96, baseType: !811, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3568, file: !54, line: 97, baseType: !3553, size: 64, offset: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3568, file: !54, line: 99, baseType: !329, size: 64, offset: 128)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3568, file: !54, line: 100, baseType: !811, size: 64, offset: 192)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3568, file: !54, line: 102, baseType: !840, size: 8, offset: 256)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3568, file: !54, line: 103, baseType: !53, size: 32, offset: 288)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3568, file: !54, line: 105, baseType: !3577, size: 64, offset: 320)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3579)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3580, line: 262, size: 1600, elements: !3581)
!3580 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3581 = !{!3582, !3583, !3584, !3588}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3579, file: !3580, line: 263, baseType: !1633, size: 256)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3579, file: !3580, line: 264, baseType: !1633, size: 256, offset: 256)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3579, file: !3580, line: 265, baseType: !3585, size: 1024, offset: 512)
!3585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 1024, elements: !3586)
!3586 = !{!3587}
!3587 = !DISubrange(count: 128)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3579, file: !3580, line: 266, baseType: !2203, size: 64, offset: 1536)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3568, file: !54, line: 106, baseType: !3590, size: 64, offset: 384)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3592)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3580, line: 210, size: 256, elements: !3593)
!3593 = !{!3594, !3598, !3600, !3601}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3592, file: !3580, line: 211, baseType: !3595, size: 72)
!3595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 72, elements: !3596)
!3596 = !{!3597}
!3597 = !DISubrange(count: 9)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3592, file: !3580, line: 212, baseType: !3599, size: 64, offset: 128)
!3599 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3580, line: 14, baseType: !343)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3592, file: !3580, line: 213, baseType: !444, size: 32, offset: 192)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3592, file: !3580, line: 214, baseType: !444, size: 32, offset: 224)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3568, file: !54, line: 108, baseType: !3527, size: 64, offset: 448)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3568, file: !54, line: 109, baseType: !3518, size: 64, offset: 512)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3568, file: !54, line: 110, baseType: !3527, size: 64, offset: 576)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3568, file: !54, line: 111, baseType: !3518, size: 64, offset: 640)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3568, file: !54, line: 112, baseType: !3607, size: 64, offset: 704)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!345, !3496, !3610}
!3610 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !67, line: 52, baseType: !3611)
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !67, line: 50, size: 32, elements: !3612)
!3612 = !{!3613}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3611, file: !67, line: 51, baseType: !345, size: 32)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3568, file: !54, line: 113, baseType: !3527, size: 64, offset: 768)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3568, file: !54, line: 114, baseType: !2150, size: 64, offset: 832)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3568, file: !54, line: 115, baseType: !2150, size: 64, offset: 896)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3568, file: !54, line: 117, baseType: !3522, size: 64, offset: 960)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3568, file: !54, line: 118, baseType: !3518, size: 64, offset: 1024)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3568, file: !54, line: 120, baseType: !3620, size: 64, offset: 1088)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !54, line: 120, flags: DIFlagFwdDecl)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3554, file: !3555, line: 91, baseType: !3509, size: 64, offset: 448)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3554, file: !3555, line: 92, baseType: !3527, size: 64, offset: 512)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3554, file: !3555, line: 93, baseType: !3518, size: 64, offset: 576)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3554, file: !3555, line: 94, baseType: !3527, size: 64, offset: 640)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3554, file: !3555, line: 95, baseType: !3518, size: 64, offset: 704)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3554, file: !3555, line: 97, baseType: !3527, size: 64, offset: 768)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3554, file: !3555, line: 98, baseType: !3527, size: 64, offset: 832)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3554, file: !3555, line: 100, baseType: !3607, size: 64, offset: 896)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3554, file: !3555, line: 101, baseType: !3527, size: 64, offset: 960)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3554, file: !3555, line: 103, baseType: !3527, size: 64, offset: 1024)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3554, file: !3555, line: 105, baseType: !3527, size: 64, offset: 1088)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3554, file: !3555, line: 107, baseType: !3522, size: 64, offset: 1152)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3554, file: !3555, line: 109, baseType: !3635, size: 64, offset: 1216)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3637)
!3637 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3555, line: 109, flags: DIFlagFwdDecl)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3554, file: !3555, line: 111, baseType: !3639, size: 64, offset: 1280)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3555, line: 111, flags: DIFlagFwdDecl)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3554, file: !3555, line: 112, baseType: !999, offset: 1344)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3554, file: !3555, line: 114, baseType: !840, size: 8, offset: 1344)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3492, file: !60, line: 471, baseType: !3567, size: 64, offset: 832)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3492, file: !60, line: 473, baseType: !332, size: 64, offset: 896)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3492, file: !60, line: 475, baseType: !332, size: 64, offset: 960)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3492, file: !60, line: 480, baseType: !1364, size: 192, offset: 1024)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3492, file: !60, line: 484, baseType: !3648, size: 576, offset: 1216)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !60, line: 361, size: 576, elements: !3649)
!3649 = !{!3650, !3651, !3652, !3653, !3654, !3655}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3648, file: !60, line: 362, baseType: !533, size: 128)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3648, file: !60, line: 363, baseType: !533, size: 128, offset: 128)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3648, file: !60, line: 364, baseType: !533, size: 128, offset: 256)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3648, file: !60, line: 365, baseType: !533, size: 128, offset: 384)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3648, file: !60, line: 366, baseType: !840, size: 8, offset: 512)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3648, file: !60, line: 367, baseType: !59, size: 32, offset: 544)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3492, file: !60, line: 485, baseType: !3657, size: 2304, offset: 1792)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !67, line: 565, size: 2304, elements: !3658)
!3658 = !{!3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3754, !3758}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3657, file: !67, line: 566, baseType: !3610, size: 32)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3657, file: !67, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3657, file: !67, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3657, file: !67, line: 569, baseType: !840, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3657, file: !67, line: 570, baseType: !840, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3657, file: !67, line: 571, baseType: !840, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3657, file: !67, line: 572, baseType: !840, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3657, file: !67, line: 573, baseType: !840, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3657, file: !67, line: 574, baseType: !840, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3657, file: !67, line: 575, baseType: !840, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3657, file: !67, line: 576, baseType: !840, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3657, file: !67, line: 577, baseType: !443, size: 32, offset: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3657, file: !67, line: 578, baseType: !1097, offset: 96)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3657, file: !67, line: 580, baseType: !533, size: 128, offset: 128)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3657, file: !67, line: 581, baseType: !2765, size: 192, offset: 256)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3657, file: !67, line: 582, baseType: !3675, size: 64, offset: 448)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3677, line: 43, size: 1472, elements: !3678)
!3677 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3678 = !{!3679, !3680, !3681, !3682, !3683, !3686, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3676, file: !3677, line: 44, baseType: !811, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3676, file: !3677, line: 45, baseType: !345, size: 32, offset: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3676, file: !3677, line: 46, baseType: !533, size: 128, offset: 128)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3676, file: !3677, line: 47, baseType: !1097, offset: 256)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3676, file: !3677, line: 48, baseType: !3684, size: 64, offset: 256)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !67, line: 533, flags: DIFlagFwdDecl)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3676, file: !3677, line: 49, baseType: !3687, size: 320, offset: 320)
!3687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3688, line: 11, size: 320, elements: !3689)
!3688 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3689 = !{!3690, !3691, !3692, !3697}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3687, file: !3688, line: 16, baseType: !993, size: 128)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3687, file: !3688, line: 17, baseType: !343, size: 64, offset: 128)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3687, file: !3688, line: 18, baseType: !3693, size: 64, offset: 192)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{null, !3696}
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3687, file: !3688, line: 19, baseType: !443, size: 32, offset: 256)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3676, file: !3677, line: 50, baseType: !343, size: 64, offset: 640)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3676, file: !3677, line: 51, baseType: !588, size: 64, offset: 704)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3676, file: !3677, line: 52, baseType: !588, size: 64, offset: 768)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3676, file: !3677, line: 53, baseType: !588, size: 64, offset: 832)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3676, file: !3677, line: 54, baseType: !588, size: 64, offset: 896)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3676, file: !3677, line: 55, baseType: !588, size: 64, offset: 960)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3676, file: !3677, line: 56, baseType: !343, size: 64, offset: 1024)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3676, file: !3677, line: 57, baseType: !343, size: 64, offset: 1088)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3676, file: !3677, line: 58, baseType: !343, size: 64, offset: 1152)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3676, file: !3677, line: 59, baseType: !343, size: 64, offset: 1216)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3676, file: !3677, line: 60, baseType: !343, size: 64, offset: 1280)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3676, file: !3677, line: 61, baseType: !3496, size: 64, offset: 1344)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3676, file: !3677, line: 62, baseType: !840, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3676, file: !3677, line: 63, baseType: !840, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3657, file: !67, line: 583, baseType: !840, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3657, file: !67, line: 584, baseType: !840, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3657, file: !67, line: 585, baseType: !840, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3657, file: !67, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3657, file: !67, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3657, file: !67, line: 592, baseType: !580, size: 512, offset: 576)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3657, file: !67, line: 593, baseType: !540, size: 64, offset: 1088)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3657, file: !67, line: 594, baseType: !1755, size: 256, offset: 1152)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3657, file: !67, line: 595, baseType: !1596, size: 128, offset: 1408)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3657, file: !67, line: 596, baseType: !3684, size: 64, offset: 1536)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3657, file: !67, line: 597, baseType: !508, size: 32, offset: 1600)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3657, file: !67, line: 598, baseType: !508, size: 32, offset: 1632)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3657, file: !67, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3657, file: !67, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3657, file: !67, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3657, file: !67, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3657, file: !67, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3657, file: !67, line: 604, baseType: !840, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3657, file: !67, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3657, file: !67, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3657, file: !67, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3657, file: !67, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3657, file: !67, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3657, file: !67, line: 610, baseType: !7, size: 32, offset: 1696)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3657, file: !67, line: 611, baseType: !66, size: 32, offset: 1728)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3657, file: !67, line: 612, baseType: !74, size: 32, offset: 1760)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3657, file: !67, line: 613, baseType: !345, size: 32, offset: 1792)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3657, file: !67, line: 614, baseType: !345, size: 32, offset: 1824)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3657, file: !67, line: 615, baseType: !540, size: 64, offset: 1856)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3657, file: !67, line: 616, baseType: !540, size: 64, offset: 1920)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3657, file: !67, line: 617, baseType: !540, size: 64, offset: 1984)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3657, file: !67, line: 618, baseType: !540, size: 64, offset: 2048)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3657, file: !67, line: 620, baseType: !3745, size: 64, offset: 2112)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !67, line: 536, size: 256, elements: !3747)
!3747 = !{!3748, !3749, !3750, !3751}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3746, file: !67, line: 537, baseType: !1097)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3746, file: !67, line: 538, baseType: !7, size: 32)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3746, file: !67, line: 540, baseType: !533, size: 128, offset: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3746, file: !67, line: 543, baseType: !3752, size: 64, offset: 192)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !67, line: 534, flags: DIFlagFwdDecl)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3657, file: !67, line: 621, baseType: !3755, size: 64, offset: 2176)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{null, !3496, !2491}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3657, file: !67, line: 622, baseType: !3759, size: 64, offset: 2240)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !67, line: 622, flags: DIFlagFwdDecl)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3492, file: !60, line: 486, baseType: !3762, size: 64, offset: 4096)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !67, line: 642, size: 1792, elements: !3764)
!3764 = !{!3765, !3766, !3767, !3771, !3772, !3773}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3763, file: !67, line: 643, baseType: !3524, size: 1472)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3763, file: !67, line: 644, baseType: !3527, size: 64, offset: 1472)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3763, file: !67, line: 645, baseType: !3768, size: 64, offset: 1536)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{null, !3496, !840}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3763, file: !67, line: 646, baseType: !3527, size: 64, offset: 1600)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3763, file: !67, line: 647, baseType: !3518, size: 64, offset: 1664)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3763, file: !67, line: 648, baseType: !3518, size: 64, offset: 1728)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3492, file: !60, line: 493, baseType: !3775, size: 64, offset: 4160)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !81, line: 162, size: 1088, elements: !3777)
!3777 = !{!3778, !3779, !3780, !3953, !3954, !3955, !3956, !3957, !3958, !3961, !3962, !3963, !3964, !3965, !3966, !3967}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3776, file: !81, line: 163, baseType: !533, size: 128)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3776, file: !81, line: 164, baseType: !811, size: 64, offset: 128)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3776, file: !81, line: 165, baseType: !3781, size: 64, offset: 192)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3783)
!3783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !81, line: 105, size: 640, elements: !3784)
!3784 = !{!3785, !3903, !3914, !3919, !3923, !3930, !3934, !3938, !3945, !3949}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3783, file: !81, line: 106, baseType: !3786, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!345, !3775, !3789, !80}
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3791, line: 51, size: 1344, elements: !3792)
!3791 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3792 = !{!3793, !3794, !3796, !3797, !3887, !3896, !3897, !3898, !3899, !3900, !3901, !3902}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3790, file: !3791, line: 52, baseType: !811, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3790, file: !3791, line: 53, baseType: !3795, size: 32, offset: 64)
!3795 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3791, line: 28, baseType: !443)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3790, file: !3791, line: 54, baseType: !811, size: 64, offset: 128)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3790, file: !3791, line: 55, baseType: !3798, size: 192, offset: 192)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3799, line: 17, size: 192, elements: !3800)
!3799 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3800 = !{!3801, !3803, !3886}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3798, file: !3799, line: 18, baseType: !3802, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3798, file: !3799, line: 19, baseType: !3804, size: 64, offset: 64)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3806)
!3806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3799, line: 110, size: 1152, elements: !3807)
!3807 = !{!3808, !3812, !3816, !3822, !3828, !3832, !3836, !3841, !3845, !3846, !3850, !3854, !3858, !3869, !3870, !3871, !3872, !3882}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3806, file: !3799, line: 111, baseType: !3809, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!3802, !3802}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3806, file: !3799, line: 112, baseType: !3813, size: 64, offset: 64)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{null, !3802}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3806, file: !3799, line: 113, baseType: !3817, size: 64, offset: 128)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!840, !3820}
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3798)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3806, file: !3799, line: 114, baseType: !3823, size: 64, offset: 192)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!2203, !3820, !3826}
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3492)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3806, file: !3799, line: 116, baseType: !3829, size: 64, offset: 256)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!840, !3820, !811}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3806, file: !3799, line: 118, baseType: !3833, size: 64, offset: 320)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!345, !3820, !811, !7, !332, !929}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3806, file: !3799, line: 123, baseType: !3837, size: 64, offset: 384)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!345, !3820, !811, !3840, !929}
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3806, file: !3799, line: 126, baseType: !3842, size: 64, offset: 448)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!811, !3820}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3806, file: !3799, line: 127, baseType: !3842, size: 64, offset: 512)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3806, file: !3799, line: 128, baseType: !3847, size: 64, offset: 576)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!3802, !3820}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3806, file: !3799, line: 130, baseType: !3851, size: 64, offset: 640)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!3802, !3820, !3802}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3806, file: !3799, line: 133, baseType: !3855, size: 64, offset: 704)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!3802, !3820, !811}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3806, file: !3799, line: 135, baseType: !3859, size: 64, offset: 768)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!345, !3820, !811, !811, !7, !7, !3862}
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3799, line: 43, size: 640, elements: !3864)
!3864 = !{!3865, !3866, !3867}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3863, file: !3799, line: 44, baseType: !3802, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3863, file: !3799, line: 45, baseType: !7, size: 32, offset: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3863, file: !3799, line: 46, baseType: !3868, size: 512, offset: 128)
!3868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 512, elements: !618)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3806, file: !3799, line: 140, baseType: !3851, size: 64, offset: 832)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3806, file: !3799, line: 143, baseType: !3847, size: 64, offset: 896)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3806, file: !3799, line: 145, baseType: !3809, size: 64, offset: 960)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3806, file: !3799, line: 146, baseType: !3873, size: 64, offset: 1024)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!345, !3820, !3876}
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3799, line: 29, size: 128, elements: !3878)
!3878 = !{!3879, !3880, !3881}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3877, file: !3799, line: 30, baseType: !7, size: 32)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3877, file: !3799, line: 31, baseType: !7, size: 32, offset: 32)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3877, file: !3799, line: 32, baseType: !3820, size: 64, offset: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3806, file: !3799, line: 148, baseType: !3883, size: 64, offset: 1088)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!345, !3820, !3496}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3798, file: !3799, line: 20, baseType: !3496, size: 64, offset: 128)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3790, file: !3791, line: 57, baseType: !3888, size: 64, offset: 384)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3791, line: 31, size: 704, elements: !3890)
!3890 = !{!3891, !3892, !3893, !3894, !3895}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3889, file: !3791, line: 32, baseType: !835, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3889, file: !3791, line: 33, baseType: !345, size: 32, offset: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3889, file: !3791, line: 34, baseType: !332, size: 64, offset: 128)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3889, file: !3791, line: 35, baseType: !3888, size: 64, offset: 192)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3889, file: !3791, line: 43, baseType: !2165, size: 448, offset: 256)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3790, file: !3791, line: 58, baseType: !3888, size: 64, offset: 448)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3790, file: !3791, line: 59, baseType: !3789, size: 64, offset: 512)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3790, file: !3791, line: 60, baseType: !3789, size: 64, offset: 576)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3790, file: !3791, line: 61, baseType: !3789, size: 64, offset: 640)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3790, file: !3791, line: 63, baseType: !2071, size: 512, offset: 704)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3790, file: !3791, line: 65, baseType: !343, size: 64, offset: 1216)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3790, file: !3791, line: 66, baseType: !332, size: 64, offset: 1280)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3783, file: !81, line: 108, baseType: !3904, size: 64, offset: 64)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!345, !3775, !3907, !80}
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !81, line: 63, size: 640, elements: !3909)
!3909 = !{!3910, !3911, !3912}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3908, file: !81, line: 64, baseType: !3802, size: 64)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3908, file: !81, line: 65, baseType: !345, size: 32, offset: 64)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3908, file: !81, line: 66, baseType: !3913, size: 512, offset: 96)
!3913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 512, elements: !1643)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3783, file: !81, line: 110, baseType: !3915, size: 64, offset: 128)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!345, !3775, !7, !3918}
!3918 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !334, line: 164, baseType: !343)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3783, file: !81, line: 111, baseType: !3920, size: 64, offset: 192)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{null, !3775, !7}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3783, file: !81, line: 112, baseType: !3924, size: 64, offset: 256)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!345, !3775, !3789, !3927, !7, !3929, !1616}
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3783, file: !81, line: 117, baseType: !3931, size: 64, offset: 320)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!345, !3775, !7, !7, !332}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3783, file: !81, line: 119, baseType: !3935, size: 64, offset: 384)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{null, !3775, !7, !7}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3783, file: !81, line: 121, baseType: !3939, size: 64, offset: 448)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{!345, !3775, !3942, !840}
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3944, line: 11, flags: DIFlagFwdDecl)
!3944 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3783, file: !81, line: 122, baseType: !3946, size: 64, offset: 512)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{null, !3775, !3942}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3783, file: !81, line: 123, baseType: !3950, size: 64, offset: 576)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!345, !3775, !3907, !3929, !1616}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3776, file: !81, line: 166, baseType: !332, size: 64, offset: 256)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3776, file: !81, line: 167, baseType: !7, size: 32, offset: 320)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3776, file: !81, line: 168, baseType: !7, size: 32, offset: 352)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3776, file: !81, line: 171, baseType: !3802, size: 64, offset: 384)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3776, file: !81, line: 172, baseType: !80, size: 32, offset: 448)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3776, file: !81, line: 173, baseType: !3959, size: 64, offset: 512)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !81, line: 134, flags: DIFlagFwdDecl)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3776, file: !81, line: 175, baseType: !3775, size: 64, offset: 576)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3776, file: !81, line: 182, baseType: !3918, size: 64, offset: 640)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3776, file: !81, line: 183, baseType: !7, size: 32, offset: 704)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3776, file: !81, line: 184, baseType: !7, size: 32, offset: 736)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3776, file: !81, line: 185, baseType: !1093, size: 128, offset: 768)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3776, file: !81, line: 186, baseType: !1364, size: 192, offset: 896)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3776, file: !81, line: 187, baseType: !3968, offset: 1088)
!3968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2793)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3492, file: !60, line: 499, baseType: !533, size: 128, offset: 4224)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3492, file: !60, line: 502, baseType: !3971, size: 64, offset: 4352)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3973)
!3973 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !60, line: 502, flags: DIFlagFwdDecl)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3492, file: !60, line: 504, baseType: !3975, size: 64, offset: 4416)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3492, file: !60, line: 505, baseType: !540, size: 64, offset: 4480)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3492, file: !60, line: 510, baseType: !540, size: 64, offset: 4544)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3492, file: !60, line: 511, baseType: !3979, size: 64, offset: 4608)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3981)
!3981 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !60, line: 511, flags: DIFlagFwdDecl)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3492, file: !60, line: 513, baseType: !3983, size: 64, offset: 4672)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !60, line: 288, size: 128, elements: !3985)
!3985 = !{!3986, !3987}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3984, file: !60, line: 293, baseType: !7, size: 32)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3984, file: !60, line: 294, baseType: !343, size: 64, offset: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3492, file: !60, line: 515, baseType: !533, size: 128, offset: 4736)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3492, file: !60, line: 526, baseType: !3990, offset: 4864)
!3990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3991, line: 5, elements: !473)
!3991 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3492, file: !60, line: 528, baseType: !3789, size: 64, offset: 4864)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3492, file: !60, line: 529, baseType: !3802, size: 64, offset: 4928)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3492, file: !60, line: 534, baseType: !863, size: 32, offset: 4992)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3492, file: !60, line: 535, baseType: !443, size: 32, offset: 5024)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3492, file: !60, line: 537, baseType: !1097, offset: 5056)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3492, file: !60, line: 538, baseType: !533, size: 128, offset: 5056)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3492, file: !60, line: 540, baseType: !3999, size: 64, offset: 5184)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4001, line: 54, size: 960, elements: !4002)
!4001 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4002 = !{!4003, !4004, !4005, !4006, !4007, !4008, !4009, !4013, !4017, !4018, !4019, !4020, !4024, !4028, !4029}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4000, file: !4001, line: 55, baseType: !811, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4000, file: !4001, line: 56, baseType: !329, size: 64, offset: 64)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4000, file: !4001, line: 58, baseType: !2150, size: 64, offset: 128)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4000, file: !4001, line: 59, baseType: !2150, size: 64, offset: 192)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4000, file: !4001, line: 60, baseType: !2077, size: 64, offset: 256)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4000, file: !4001, line: 62, baseType: !3509, size: 64, offset: 320)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4000, file: !4001, line: 63, baseType: !4010, size: 64, offset: 384)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!835, !3496, !3516}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4000, file: !4001, line: 65, baseType: !4014, size: 64, offset: 448)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{null, !3999}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4000, file: !4001, line: 66, baseType: !3518, size: 64, offset: 512)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4000, file: !4001, line: 68, baseType: !3527, size: 64, offset: 576)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4000, file: !4001, line: 70, baseType: !2186, size: 64, offset: 640)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4000, file: !4001, line: 71, baseType: !4021, size: 64, offset: 704)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!2203, !3496}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4000, file: !4001, line: 73, baseType: !4025, size: 64, offset: 768)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{null, !3496, !2220, !2221}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4000, file: !4001, line: 75, baseType: !3522, size: 64, offset: 832)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4000, file: !4001, line: 77, baseType: !3639, size: 64, offset: 896)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3492, file: !60, line: 541, baseType: !2150, size: 64, offset: 5248)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3492, file: !60, line: 543, baseType: !3518, size: 64, offset: 5312)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3492, file: !60, line: 544, baseType: !4033, size: 64, offset: 5376)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !60, line: 45, flags: DIFlagFwdDecl)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3492, file: !60, line: 545, baseType: !4036, size: 64, offset: 5440)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !60, line: 47, flags: DIFlagFwdDecl)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3492, file: !60, line: 547, baseType: !840, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3492, file: !60, line: 548, baseType: !840, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3492, file: !60, line: 549, baseType: !840, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3492, file: !60, line: 550, baseType: !840, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !400, file: !95, line: 709, baseType: !343, size: 64, offset: 6336)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !400, file: !95, line: 713, baseType: !345, size: 32, offset: 6400)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !400, file: !95, line: 714, baseType: !4045, size: 384, offset: 6432)
!4045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 384, elements: !4046)
!4046 = !{!4047}
!4047 = !DISubrange(count: 48)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !400, file: !95, line: 715, baseType: !2765, size: 192, offset: 6848)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !400, file: !95, line: 717, baseType: !1364, size: 192, offset: 7040)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !400, file: !95, line: 718, baseType: !533, size: 128, offset: 7232)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !400, file: !95, line: 720, baseType: !4052, size: 64, offset: 7360)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !95, line: 618, size: 832, elements: !4054)
!4054 = !{!4055, !4059, !4060, !4064, !4065, !4066, !4067, !4071, !4072, !4075, !4076, !4079, !4082}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4053, file: !95, line: 619, baseType: !4056, size: 64)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!345, !399}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4053, file: !95, line: 621, baseType: !4056, size: 64, offset: 64)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4053, file: !95, line: 622, baseType: !4061, size: 64, offset: 128)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{null, !399, !345}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4053, file: !95, line: 623, baseType: !4056, size: 64, offset: 192)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4053, file: !95, line: 624, baseType: !4061, size: 64, offset: 256)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4053, file: !95, line: 625, baseType: !4056, size: 64, offset: 320)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4053, file: !95, line: 627, baseType: !4068, size: 64, offset: 384)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{null, !399}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4053, file: !95, line: 628, baseType: !4068, size: 64, offset: 448)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4053, file: !95, line: 631, baseType: !4073, size: 64, offset: 512)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !95, line: 631, flags: DIFlagFwdDecl)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4053, file: !95, line: 632, baseType: !4073, size: 64, offset: 576)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4053, file: !95, line: 633, baseType: !4077, size: 64, offset: 640)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !95, line: 633, flags: DIFlagFwdDecl)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4053, file: !95, line: 634, baseType: !4080, size: 64, offset: 704)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !95, line: 634, flags: DIFlagFwdDecl)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4053, file: !95, line: 635, baseType: !4080, size: 64, offset: 768)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !400, file: !95, line: 721, baseType: !4084, size: 64, offset: 7424)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4086)
!4086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !95, line: 664, size: 192, elements: !4087)
!4087 = !{!4088, !4089, !4090, !4091, !4092, !4093}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4086, file: !95, line: 665, baseType: !540, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4086, file: !95, line: 666, baseType: !345, size: 32, offset: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4086, file: !95, line: 667, baseType: !428, size: 16, offset: 96)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4086, file: !95, line: 668, baseType: !428, size: 16, offset: 112)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4086, file: !95, line: 669, baseType: !428, size: 16, offset: 128)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4086, file: !95, line: 670, baseType: !428, size: 16, offset: 144)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !400, file: !95, line: 723, baseType: !3775, size: 64, offset: 7488)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !391, file: !95, line: 330, baseType: !3492, size: 5568, offset: 256)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "init_irq", scope: !391, file: !95, line: 331, baseType: !345, size: 32, offset: 5824)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !391, file: !95, line: 332, baseType: !345, size: 32, offset: 5856)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "detected", scope: !391, file: !95, line: 333, baseType: !533, size: 128, offset: 5888)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4101)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_device_id", file: !3580, line: 457, size: 256, elements: !4102)
!4102 = !{!4103, !4104}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4101, file: !3580, line: 458, baseType: !397, size: 160)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4101, file: !3580, line: 459, baseType: !3599, size: 64, offset: 192)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !383, file: !95, line: 260, baseType: !4106, size: 64, offset: 128)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!345, !390}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "probe_new", scope: !383, file: !95, line: 265, baseType: !4106, size: 64, offset: 192)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !383, file: !95, line: 268, baseType: !4111, size: 64, offset: 256)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{null, !390}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "alert", scope: !383, file: !95, line: 277, baseType: !4115, size: 64, offset: 320)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{null, !390, !94, !7}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !383, file: !95, line: 283, baseType: !4119, size: 64, offset: 384)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!345, !390, !7, !332}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !383, file: !95, line: 285, baseType: !3568, size: 1152, offset: 448)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !383, file: !95, line: 286, baseType: !4099, size: 64, offset: 1600)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !383, file: !95, line: 289, baseType: !4125, size: 64, offset: 1664)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!345, !390, !4128}
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_board_info", file: !95, line: 410, size: 640, elements: !4130)
!4130 = !{!4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4164, !4180, !4181}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4129, file: !95, line: 411, baseType: !397, size: 160)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4129, file: !95, line: 412, baseType: !394, size: 16, offset: 160)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4129, file: !95, line: 413, baseType: !394, size: 16, offset: 176)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4129, file: !95, line: 414, baseType: !811, size: 64, offset: 192)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4129, file: !95, line: 415, baseType: !332, size: 64, offset: 256)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4129, file: !95, line: 416, baseType: !3789, size: 64, offset: 320)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4129, file: !95, line: 417, baseType: !3802, size: 64, offset: 384)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4129, file: !95, line: 418, baseType: !4139, size: 64, offset: 448)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4141)
!4141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property_entry", file: !100, line: 263, size: 256, elements: !4142)
!4142 = !{!4143, !4144, !4145, !4146, !4147}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4141, file: !100, line: 264, baseType: !811, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4141, file: !100, line: 265, baseType: !929, size: 64, offset: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "is_inline", scope: !4141, file: !100, line: 266, baseType: !840, size: 8, offset: 128)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4141, file: !100, line: 267, baseType: !99, size: 32, offset: 160)
!4147 = !DIDerivedType(tag: DW_TAG_member, scope: !4141, file: !100, line: 268, baseType: !4148, size: 64, offset: 192)
!4148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4141, file: !100, line: 268, size: 64, elements: !4149)
!4149 = !{!4150, !4151}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4148, file: !100, line: 269, baseType: !2203, size: 64)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4148, file: !100, line: 276, baseType: !4152, size: 64)
!4152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4148, file: !100, line: 270, size: 64, elements: !4153)
!4153 = !{!4154, !4156, !4158, !4160, !4162}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "u8_data", scope: !4152, file: !100, line: 271, baseType: !4155, size: 64)
!4155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 64, elements: !618)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "u16_data", scope: !4152, file: !100, line: 272, baseType: !4157, size: 64)
!4157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 64, elements: !2435)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "u32_data", scope: !4152, file: !100, line: 273, baseType: !4159, size: 64)
!4159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 64, elements: !2475)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "u64_data", scope: !4152, file: !100, line: 274, baseType: !4161, size: 64)
!4161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 64, elements: !663)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4152, file: !100, line: 275, baseType: !4163, size: 64)
!4163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !811, size: 64, elements: !663)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4129, file: !95, line: 419, baseType: !4165, size: 64, offset: 512)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4167)
!4167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4168, line: 20, size: 512, elements: !4169)
!4168 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4169 = !{!4170, !4172, !4173, !4174, !4175, !4176, !4178, !4179}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4167, file: !4168, line: 21, baseType: !4171, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !334, line: 158, baseType: !3309)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4167, file: !4168, line: 22, baseType: !4171, size: 64, offset: 64)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4167, file: !4168, line: 23, baseType: !811, size: 64, offset: 128)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4167, file: !4168, line: 24, baseType: !343, size: 64, offset: 192)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4167, file: !4168, line: 25, baseType: !343, size: 64, offset: 256)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4167, file: !4168, line: 26, baseType: !4177, size: 64, offset: 320)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4167, file: !4168, line: 26, baseType: !4177, size: 64, offset: 384)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4167, file: !4168, line: 26, baseType: !4177, size: 64, offset: 448)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !4129, file: !95, line: 420, baseType: !7, size: 32, offset: 576)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4129, file: !95, line: 421, baseType: !345, size: 32, offset: 608)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "address_list", scope: !383, file: !95, line: 290, baseType: !4183, size: 64, offset: 1728)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "clients", scope: !383, file: !95, line: 291, baseType: !533, size: 128, offset: 1792)
!4186 = !DIGlobalVariableExpression(var: !4187, expr: !DIExpression())
!4187 = distinct !DIGlobalVariable(name: "regmap_bus", scope: !4188, file: !3, line: 778, type: !4189, isLocal: true, isDefinition: true)
!4188 = distinct !DISubprogram(name: "rtl2830_probe", scope: !3, file: !3, line: 771, type: !388, scopeLine: 773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4190)
!4190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_bus", file: !298, line: 501, size: 896, elements: !4191)
!4191 = !{!4192, !4193, !4198, !4203, !4210, !4215, !4220, !4225, !4230, !4232, !4237, !4238, !4239, !4240, !4241}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "fast_io", scope: !4190, file: !298, line: 502, baseType: !840, size: 8)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4190, file: !298, line: 503, baseType: !4194, size: 64, offset: 64)
!4194 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_write", file: !298, line: 445, baseType: !4195)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!345, !332, !2203, !929}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "gather_write", scope: !4190, file: !298, line: 504, baseType: !4199, size: 64, offset: 128)
!4199 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_gather_write", file: !298, line: 447, baseType: !4200)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!345, !332, !2203, !929, !2203, !929}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "async_write", scope: !4190, file: !298, line: 505, baseType: !4204, size: 64, offset: 192)
!4204 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_async_write", file: !298, line: 450, baseType: !4205)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!345, !332, !2203, !929, !2203, !929, !4208}
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_async", file: !298, line: 443, flags: DIFlagFwdDecl)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "reg_write", scope: !4190, file: !298, line: 506, baseType: !4211, size: 64, offset: 256)
!4211 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_reg_write", file: !298, line: 459, baseType: !4212)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!345, !332, !7, !7}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "reg_update_bits", scope: !4190, file: !298, line: 507, baseType: !4216, size: 64, offset: 320)
!4216 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_reg_update_bits", file: !298, line: 461, baseType: !4217)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{!345, !332, !7, !7, !7}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4190, file: !298, line: 508, baseType: !4221, size: 64, offset: 384)
!4221 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_read", file: !298, line: 454, baseType: !4222)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!345, !332, !2203, !929, !332, !929}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "reg_read", scope: !4190, file: !298, line: 509, baseType: !4226, size: 64, offset: 448)
!4226 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_reg_read", file: !298, line: 457, baseType: !4227)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DISubroutineType(types: !4229)
!4229 = !{!345, !332, !7, !1616}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "free_context", scope: !4190, file: !298, line: 510, baseType: !4231, size: 64, offset: 512)
!4231 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_free_context", file: !298, line: 464, baseType: !817)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "async_alloc", scope: !4190, file: !298, line: 511, baseType: !4233, size: 64, offset: 576)
!4233 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_async_alloc", file: !298, line: 463, baseType: !4234)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!4208}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "read_flag_mask", scope: !4190, file: !298, line: 512, baseType: !336, size: 8, offset: 640)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "reg_format_endian_default", scope: !4190, file: !298, line: 513, baseType: !297, size: 32, offset: 672)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "val_format_endian_default", scope: !4190, file: !298, line: 514, baseType: !297, size: 32, offset: 704)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "max_raw_read", scope: !4190, file: !298, line: 515, baseType: !929, size: 64, offset: 768)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "max_raw_write", scope: !4190, file: !298, line: 516, baseType: !929, size: 64, offset: 832)
!4242 = !DIGlobalVariableExpression(var: !4243, expr: !DIExpression())
!4243 = distinct !DIGlobalVariable(name: "regmap_range_cfg", scope: !4188, file: !3, line: 784, type: !4244, isLocal: true, isDefinition: true)
!4244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4245, size: 320, elements: !663)
!4245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4246)
!4246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_range_cfg", file: !298, line: 426, size: 320, elements: !4247)
!4247 = !{!4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4246, file: !298, line: 427, baseType: !811, size: 64)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "range_min", scope: !4246, file: !298, line: 430, baseType: !7, size: 32, offset: 64)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "range_max", scope: !4246, file: !298, line: 431, baseType: !7, size: 32, offset: 96)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "selector_reg", scope: !4246, file: !298, line: 434, baseType: !7, size: 32, offset: 128)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "selector_mask", scope: !4246, file: !298, line: 435, baseType: !7, size: 32, offset: 160)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "selector_shift", scope: !4246, file: !298, line: 436, baseType: !345, size: 32, offset: 192)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "window_start", scope: !4246, file: !298, line: 439, baseType: !7, size: 32, offset: 224)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "window_len", scope: !4246, file: !298, line: 440, baseType: !7, size: 32, offset: 256)
!4256 = !DIGlobalVariableExpression(var: !4257, expr: !DIExpression())
!4257 = distinct !DIGlobalVariable(name: "regmap_config", scope: !4188, file: !3, line: 795, type: !4258, isLocal: true, isDefinition: true)
!4258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4259)
!4259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_config", file: !298, line: 347, size: 2176, elements: !4260)
!4260 = !{!4261, !4262, !4263, !4264, !4265, !4266, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4278, !4280, !4281, !4282, !4283, !4284, !4285, !4300, !4301, !4302, !4303, !4304, !4305, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4326, !4327, !4328, !4329, !4330}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4259, file: !298, line: 348, baseType: !811, size: 64)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "reg_bits", scope: !4259, file: !298, line: 350, baseType: !345, size: 32, offset: 64)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "reg_stride", scope: !4259, file: !298, line: 351, baseType: !345, size: 32, offset: 96)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "pad_bits", scope: !4259, file: !298, line: 352, baseType: !345, size: 32, offset: 128)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "val_bits", scope: !4259, file: !298, line: 353, baseType: !345, size: 32, offset: 160)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "writeable_reg", scope: !4259, file: !298, line: 355, baseType: !4267, size: 64, offset: 192)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!840, !3496, !7}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "readable_reg", scope: !4259, file: !298, line: 356, baseType: !4267, size: 64, offset: 256)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_reg", scope: !4259, file: !298, line: 357, baseType: !4267, size: 64, offset: 320)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "precious_reg", scope: !4259, file: !298, line: 358, baseType: !4267, size: 64, offset: 384)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "writeable_noinc_reg", scope: !4259, file: !298, line: 359, baseType: !4267, size: 64, offset: 448)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "readable_noinc_reg", scope: !4259, file: !298, line: 360, baseType: !4267, size: 64, offset: 512)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "disable_locking", scope: !4259, file: !298, line: 362, baseType: !840, size: 8, offset: 576)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4259, file: !298, line: 363, baseType: !4277, size: 64, offset: 640)
!4277 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_lock", file: !298, line: 226, baseType: !817)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "unlock", scope: !4259, file: !298, line: 364, baseType: !4279, size: 64, offset: 704)
!4279 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_unlock", file: !298, line: 227, baseType: !817)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "lock_arg", scope: !4259, file: !298, line: 365, baseType: !332, size: 64, offset: 768)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "reg_read", scope: !4259, file: !298, line: 367, baseType: !4227, size: 64, offset: 832)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "reg_write", scope: !4259, file: !298, line: 368, baseType: !4212, size: 64, offset: 896)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "fast_io", scope: !4259, file: !298, line: 370, baseType: !840, size: 8, offset: 960)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "max_register", scope: !4259, file: !298, line: 372, baseType: !7, size: 32, offset: 992)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "wr_table", scope: !4259, file: !298, line: 373, baseType: !4286, size: 64, offset: 1024)
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4288)
!4288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_access_table", file: !298, line: 219, size: 256, elements: !4289)
!4289 = !{!4290, !4297, !4298, !4299}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "yes_ranges", scope: !4288, file: !298, line: 220, baseType: !4291, size: 64)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4293)
!4293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_range", file: !298, line: 199, size: 64, elements: !4294)
!4294 = !{!4295, !4296}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "range_min", scope: !4293, file: !298, line: 200, baseType: !7, size: 32)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "range_max", scope: !4293, file: !298, line: 201, baseType: !7, size: 32, offset: 32)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "n_yes_ranges", scope: !4288, file: !298, line: 221, baseType: !7, size: 32, offset: 64)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "no_ranges", scope: !4288, file: !298, line: 222, baseType: !4291, size: 64, offset: 128)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "n_no_ranges", scope: !4288, file: !298, line: 223, baseType: !7, size: 32, offset: 192)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "rd_table", scope: !4259, file: !298, line: 374, baseType: !4286, size: 64, offset: 1088)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_table", scope: !4259, file: !298, line: 375, baseType: !4286, size: 64, offset: 1152)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "precious_table", scope: !4259, file: !298, line: 376, baseType: !4286, size: 64, offset: 1216)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "wr_noinc_table", scope: !4259, file: !298, line: 377, baseType: !4286, size: 64, offset: 1280)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "rd_noinc_table", scope: !4259, file: !298, line: 378, baseType: !4286, size: 64, offset: 1344)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "reg_defaults", scope: !4259, file: !298, line: 379, baseType: !4306, size: 64, offset: 1408)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4308)
!4308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_default", file: !298, line: 56, size: 64, elements: !4309)
!4309 = !{!4310, !4311}
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !4308, file: !298, line: 57, baseType: !7, size: 32)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !4308, file: !298, line: 58, baseType: !7, size: 32, offset: 32)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "num_reg_defaults", scope: !4259, file: !298, line: 380, baseType: !7, size: 32, offset: 1472)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "cache_type", scope: !4259, file: !298, line: 381, baseType: !304, size: 32, offset: 1504)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "reg_defaults_raw", scope: !4259, file: !298, line: 382, baseType: !2203, size: 64, offset: 1536)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "num_reg_defaults_raw", scope: !4259, file: !298, line: 383, baseType: !7, size: 32, offset: 1600)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "read_flag_mask", scope: !4259, file: !298, line: 385, baseType: !343, size: 64, offset: 1664)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "write_flag_mask", scope: !4259, file: !298, line: 386, baseType: !343, size: 64, offset: 1728)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "zero_flag_mask", scope: !4259, file: !298, line: 387, baseType: !840, size: 8, offset: 1792)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "use_single_read", scope: !4259, file: !298, line: 389, baseType: !840, size: 8, offset: 1800)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "use_single_write", scope: !4259, file: !298, line: 390, baseType: !840, size: 8, offset: 1808)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "can_multi_write", scope: !4259, file: !298, line: 391, baseType: !840, size: 8, offset: 1816)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "reg_format_endian", scope: !4259, file: !298, line: 393, baseType: !297, size: 32, offset: 1824)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "val_format_endian", scope: !4259, file: !298, line: 394, baseType: !297, size: 32, offset: 1856)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4259, file: !298, line: 396, baseType: !4325, size: 64, offset: 1920)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "num_ranges", scope: !4259, file: !298, line: 397, baseType: !7, size: 32, offset: 1984)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "use_hwlock", scope: !4259, file: !298, line: 399, baseType: !840, size: 8, offset: 2016)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "hwlock_id", scope: !4259, file: !298, line: 400, baseType: !7, size: 32, offset: 2048)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "hwlock_mode", scope: !4259, file: !298, line: 401, baseType: !7, size: 32, offset: 2080)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "can_sleep", scope: !4259, file: !298, line: 403, baseType: !840, size: 8, offset: 2112)
!4331 = !DIGlobalVariableExpression(var: !4332, expr: !DIExpression())
!4332 = distinct !DIGlobalVariable(name: "rtl2830_ops", scope: !2, file: !3, line: 541, type: !4333, isLocal: true, isDefinition: true)
!4333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4334)
!4334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_ops", file: !153, line: 435, size: 6016, elements: !4335)
!4335 = !{!4336, !4348, !4349, !4476, !4477, !4478, !4482, !4483, !4487, !4492, !4496, !4497, !4507, !4512, !4516, !4520, !4525, !4526, !4527, !4528, !4538, !4549, !4553, !4557, !4561, !4565, !4569, !4573, !4574, !4575, !4579, !4632}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4334, file: !153, line: 436, baseType: !4337, size: 1280)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_internal_info", file: !153, line: 338, size: 1280, elements: !4338)
!4338 = !{!4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4337, file: !153, line: 339, baseType: !3585, size: 1024)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4337, file: !153, line: 340, baseType: !443, size: 32, offset: 1024)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4337, file: !153, line: 341, baseType: !443, size: 32, offset: 1056)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_stepsize_hz", scope: !4337, file: !153, line: 342, baseType: !443, size: 32, offset: 1088)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_tolerance_hz", scope: !4337, file: !153, line: 343, baseType: !443, size: 32, offset: 1120)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_min", scope: !4337, file: !153, line: 344, baseType: !443, size: 32, offset: 1152)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_max", scope: !4337, file: !153, line: 345, baseType: !443, size: 32, offset: 1184)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_tolerance", scope: !4337, file: !153, line: 346, baseType: !443, size: 32, offset: 1216)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !4337, file: !153, line: 347, baseType: !108, size: 32, offset: 1248)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "delsys", scope: !4334, file: !153, line: 438, baseType: !4155, size: 64, offset: 1280)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4334, file: !153, line: 440, baseType: !4350, size: 64, offset: 1344)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = !DISubroutineType(types: !4352)
!4352 = !{null, !4353}
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4354, size: 64)
!4354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend", file: !153, line: 686, size: 10240, elements: !4355)
!4355 = !{!4356, !4357, !4358, !4392, !4393, !4394, !4395, !4396, !4397, !4470, !4474, !4475}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4354, file: !153, line: 687, baseType: !2362, size: 32)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4354, file: !153, line: 688, baseType: !4334, size: 6016, offset: 64)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "dvb", scope: !4354, file: !153, line: 689, baseType: !4359, size: 64, offset: 6080)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !286, line: 101, size: 960, elements: !4361)
!4361 = !{!4362, !4363, !4364, !4365, !4366, !4368, !4369, !4370, !4371, !4372, !4391}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4360, file: !286, line: 102, baseType: !345, size: 32)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4360, file: !286, line: 103, baseType: !533, size: 128, offset: 64)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !4360, file: !286, line: 104, baseType: !533, size: 128, offset: 192)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4360, file: !286, line: 105, baseType: !811, size: 64, offset: 320)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !4360, file: !286, line: 106, baseType: !4367, size: 48, offset: 384)
!4367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 48, elements: !2533)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4360, file: !286, line: 107, baseType: !332, size: 64, offset: 448)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4360, file: !286, line: 109, baseType: !3496, size: 64, offset: 512)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4360, file: !286, line: 111, baseType: !329, size: 64, offset: 576)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !4360, file: !286, line: 113, baseType: !345, size: 32, offset: 640)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !4360, file: !286, line: 114, baseType: !4373, size: 64, offset: 704)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !286, line: 157, size: 704, elements: !4375)
!4375 = !{!4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4390}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4374, file: !286, line: 158, baseType: !533, size: 128)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4374, file: !286, line: 159, baseType: !1813, size: 64, offset: 128)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4374, file: !286, line: 160, baseType: !4359, size: 64, offset: 192)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4374, file: !286, line: 161, baseType: !285, size: 32, offset: 256)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4374, file: !286, line: 162, baseType: !345, size: 32, offset: 288)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4374, file: !286, line: 163, baseType: !443, size: 32, offset: 320)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !4374, file: !286, line: 167, baseType: !345, size: 32, offset: 352)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !4374, file: !286, line: 168, baseType: !345, size: 32, offset: 384)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4374, file: !286, line: 169, baseType: !345, size: 32, offset: 416)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4374, file: !286, line: 171, baseType: !1596, size: 128, offset: 448)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !4374, file: !286, line: 173, baseType: !4387, size: 64, offset: 576)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DISubroutineType(types: !4389)
!4389 = !{!345, !712, !7, !332}
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4374, file: !286, line: 187, baseType: !332, size: 64, offset: 640)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !4360, file: !286, line: 115, baseType: !1364, size: 192, offset: 768)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "demodulator_priv", scope: !4354, file: !153, line: 690, baseType: !332, size: 64, offset: 6144)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_priv", scope: !4354, file: !153, line: 691, baseType: !332, size: 64, offset: 6208)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "frontend_priv", scope: !4354, file: !153, line: 692, baseType: !332, size: 64, offset: 6272)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "sec_priv", scope: !4354, file: !153, line: 693, baseType: !332, size: 64, offset: 6336)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "analog_demod_priv", scope: !4354, file: !153, line: 694, baseType: !332, size: 64, offset: 6400)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "dtv_property_cache", scope: !4354, file: !153, line: 695, baseType: !4398, size: 3648, offset: 6464)
!4398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_frontend_properties", file: !153, line: 586, size: 3648, elements: !4399)
!4399 = !{!4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4463, !4464, !4465, !4466, !4467, !4468, !4469}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4398, file: !153, line: 587, baseType: !443, size: 32)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4398, file: !153, line: 588, baseType: !159, size: 32, offset: 32)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !4398, file: !153, line: 590, baseType: !175, size: 32, offset: 64)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "sectone", scope: !4398, file: !153, line: 591, baseType: !180, size: 32, offset: 96)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !4398, file: !153, line: 592, baseType: !184, size: 32, offset: 128)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !4398, file: !153, line: 593, baseType: !189, size: 32, offset: 160)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "transmission_mode", scope: !4398, file: !153, line: 594, baseType: !204, size: 32, offset: 192)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_hz", scope: !4398, file: !153, line: 595, baseType: !443, size: 32, offset: 224)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "guard_interval", scope: !4398, file: !153, line: 596, baseType: !215, size: 32, offset: 256)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy", scope: !4398, file: !153, line: 597, baseType: !228, size: 32, offset: 288)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !4398, file: !153, line: 598, baseType: !443, size: 32, offset: 320)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_HP", scope: !4398, file: !153, line: 599, baseType: !189, size: 32, offset: 352)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_LP", scope: !4398, file: !153, line: 600, baseType: !189, size: 32, offset: 384)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "pilot", scope: !4398, file: !153, line: 602, baseType: !235, size: 32, offset: 416)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "rolloff", scope: !4398, file: !153, line: 603, baseType: !240, size: 32, offset: 448)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !4398, file: !153, line: 605, baseType: !246, size: 32, offset: 480)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4398, file: !153, line: 607, baseType: !267, size: 32, offset: 512)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_partial_reception", scope: !4398, file: !153, line: 610, baseType: !336, size: 8, offset: 544)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_mode", scope: !4398, file: !153, line: 611, baseType: !336, size: 8, offset: 552)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_subchannel", scope: !4398, file: !153, line: 612, baseType: !336, size: 8, offset: 560)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_idx", scope: !4398, file: !153, line: 613, baseType: !443, size: 32, offset: 576)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_count", scope: !4398, file: !153, line: 614, baseType: !443, size: 32, offset: 608)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_layer_enabled", scope: !4398, file: !153, line: 615, baseType: !336, size: 8, offset: 640)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "layer", scope: !4398, file: !153, line: 621, baseType: !4424, size: 384, offset: 672)
!4424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4425, size: 384, elements: !1005)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4398, file: !153, line: 616, size: 128, elements: !4426)
!4426 = !{!4427, !4428, !4429, !4430}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "segment_count", scope: !4425, file: !153, line: 617, baseType: !336, size: 8)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "fec", scope: !4425, file: !153, line: 618, baseType: !189, size: 32, offset: 32)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4425, file: !153, line: 619, baseType: !159, size: 32, offset: 64)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4425, file: !153, line: 620, baseType: !336, size: 8, offset: 96)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4398, file: !153, line: 624, baseType: !443, size: 32, offset: 1056)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling_sequence_index", scope: !4398, file: !153, line: 627, baseType: !443, size: 32, offset: 1088)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_fic_ver", scope: !4398, file: !153, line: 630, baseType: !336, size: 8, offset: 1120)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_parade_id", scope: !4398, file: !153, line: 631, baseType: !336, size: 8, offset: 1128)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_nog", scope: !4398, file: !153, line: 632, baseType: !336, size: 8, offset: 1136)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_tnog", scope: !4398, file: !153, line: 633, baseType: !336, size: 8, offset: 1144)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sgn", scope: !4398, file: !153, line: 634, baseType: !336, size: 8, offset: 1152)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_prc", scope: !4398, file: !153, line: 635, baseType: !336, size: 8, offset: 1160)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_mode", scope: !4398, file: !153, line: 637, baseType: !336, size: 8, offset: 1168)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_ensemble", scope: !4398, file: !153, line: 638, baseType: !336, size: 8, offset: 1176)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_pri", scope: !4398, file: !153, line: 639, baseType: !336, size: 8, offset: 1184)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_sec", scope: !4398, file: !153, line: 640, baseType: !336, size: 8, offset: 1192)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_block_mode", scope: !4398, file: !153, line: 641, baseType: !336, size: 8, offset: 1200)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_a", scope: !4398, file: !153, line: 642, baseType: !336, size: 8, offset: 1208)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_b", scope: !4398, file: !153, line: 643, baseType: !336, size: 8, offset: 1216)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_c", scope: !4398, file: !153, line: 644, baseType: !336, size: 8, offset: 1224)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_d", scope: !4398, file: !153, line: 645, baseType: !336, size: 8, offset: 1232)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !4398, file: !153, line: 647, baseType: !443, size: 32, offset: 1248)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !4398, file: !153, line: 650, baseType: !4450, size: 296, offset: 1280)
!4450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_fe_stats", file: !109, line: 825, size: 296, elements: !4451)
!4451 = !{!4452, !4453}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4450, file: !109, line: 826, baseType: !338, size: 8)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4450, file: !109, line: 827, baseType: !4454, size: 288, offset: 8)
!4454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4455, size: 288, elements: !2435)
!4455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_stats", file: !109, line: 803, size: 72, elements: !4456)
!4456 = !{!4457, !4458}
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !4455, file: !109, line: 804, baseType: !338, size: 8)
!4458 = !DIDerivedType(tag: DW_TAG_member, scope: !4455, file: !109, line: 805, baseType: !4459, size: 64, offset: 8)
!4459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4455, file: !109, line: 805, size: 64, elements: !4460)
!4460 = !{!4461, !4462}
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !4459, file: !109, line: 806, baseType: !541, size: 64)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !4459, file: !109, line: 807, baseType: !571, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "cnr", scope: !4398, file: !153, line: 651, baseType: !4450, size: 296, offset: 1576)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_error", scope: !4398, file: !153, line: 652, baseType: !4450, size: 296, offset: 1872)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_count", scope: !4398, file: !153, line: 653, baseType: !4450, size: 296, offset: 2168)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !4398, file: !153, line: 654, baseType: !4450, size: 296, offset: 2464)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !4398, file: !153, line: 655, baseType: !4450, size: 296, offset: 2760)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "block_error", scope: !4398, file: !153, line: 656, baseType: !4450, size: 296, offset: 3056)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !4398, file: !153, line: 657, baseType: !4450, size: 296, offset: 3352)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4354, file: !153, line: 698, baseType: !4471, size: 64, offset: 10112)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = !DISubroutineType(types: !4473)
!4473 = !{!345, !332, !345, !345, !345}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4354, file: !153, line: 699, baseType: !345, size: 32, offset: 10176)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4354, file: !153, line: 700, baseType: !7, size: 32, offset: 10208)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4334, file: !153, line: 441, baseType: !4350, size: 64, offset: 1408)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "release_sec", scope: !4334, file: !153, line: 442, baseType: !4350, size: 64, offset: 1472)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4334, file: !153, line: 444, baseType: !4479, size: 64, offset: 1536)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{!345, !4353}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4334, file: !153, line: 445, baseType: !4479, size: 64, offset: 1600)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4334, file: !153, line: 447, baseType: !4484, size: 64, offset: 1664)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = !DISubroutineType(types: !4486)
!4486 = !{!345, !4353, !341, !345}
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !4334, file: !153, line: 450, baseType: !4488, size: 64, offset: 1728)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!345, !4353, !840, !7, !1616, !4491}
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend_algo", scope: !4334, file: !153, line: 457, baseType: !4493, size: 64, offset: 1792)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{!152, !4353}
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "set_frontend", scope: !4334, file: !153, line: 460, baseType: !4479, size: 64, offset: 1856)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "get_tune_settings", scope: !4334, file: !153, line: 461, baseType: !4498, size: 64, offset: 1920)
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = !DISubroutineType(types: !4500)
!4500 = !{!345, !4353, !4501}
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_tune_settings", file: !153, line: 69, size: 96, elements: !4503)
!4503 = !{!4504, !4505, !4506}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !4502, file: !153, line: 70, baseType: !345, size: 32)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !4502, file: !153, line: 71, baseType: !345, size: 32, offset: 32)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "max_drift", scope: !4502, file: !153, line: 72, baseType: !345, size: 32, offset: 64)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend", scope: !4334, file: !153, line: 463, baseType: !4508, size: 64, offset: 1984)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = !DISubroutineType(types: !4510)
!4510 = !{!345, !4353, !4511}
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !4334, file: !153, line: 466, baseType: !4513, size: 64, offset: 2048)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = !DISubroutineType(types: !4515)
!4515 = !{!345, !4353, !4491}
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "read_ber", scope: !4334, file: !153, line: 467, baseType: !4517, size: 64, offset: 2112)
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4518, size: 64)
!4518 = !DISubroutineType(types: !4519)
!4519 = !{!345, !4353, !2832}
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "read_signal_strength", scope: !4334, file: !153, line: 468, baseType: !4521, size: 64, offset: 2176)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{!345, !4353, !4524}
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "read_snr", scope: !4334, file: !153, line: 469, baseType: !4521, size: 64, offset: 2240)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "read_ucblocks", scope: !4334, file: !153, line: 470, baseType: !4517, size: 64, offset: 2304)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_reset_overload", scope: !4334, file: !153, line: 472, baseType: !4479, size: 64, offset: 2368)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_master_cmd", scope: !4334, file: !153, line: 473, baseType: !4529, size: 64, offset: 2432)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DISubroutineType(types: !4531)
!4531 = !{!345, !4353, !4532}
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!4533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_master_cmd", file: !109, line: 173, size: 56, elements: !4534)
!4534 = !{!4535, !4537}
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4533, file: !109, line: 174, baseType: !4536, size: 48)
!4536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 48, elements: !2533)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4533, file: !109, line: 175, baseType: !338, size: 8, offset: 48)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_recv_slave_reply", scope: !4334, file: !153, line: 474, baseType: !4539, size: 64, offset: 2496)
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{!345, !4353, !4542}
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_slave_reply", file: !109, line: 195, size: 96, elements: !4544)
!4544 = !{!4545, !4547, !4548}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4543, file: !109, line: 196, baseType: !4546, size: 32)
!4546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 32, elements: !2435)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4543, file: !109, line: 197, baseType: !338, size: 8, offset: 32)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4543, file: !109, line: 198, baseType: !345, size: 32, offset: 64)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_burst", scope: !4334, file: !153, line: 475, baseType: !4550, size: 64, offset: 2560)
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4551 = !DISubroutineType(types: !4552)
!4552 = !{!345, !4353, !273}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "set_tone", scope: !4334, file: !153, line: 477, baseType: !4554, size: 64, offset: 2624)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!345, !4353, !180}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltage", scope: !4334, file: !153, line: 478, baseType: !4558, size: 64, offset: 2688)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{!345, !4353, !175}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "enable_high_lnb_voltage", scope: !4334, file: !153, line: 480, baseType: !4562, size: 64, offset: 2752)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4563, size: 64)
!4563 = !DISubroutineType(types: !4564)
!4564 = !{!345, !4353, !344}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "dishnetwork_send_legacy_command", scope: !4334, file: !153, line: 481, baseType: !4566, size: 64, offset: 2816)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!345, !4353, !343}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4334, file: !153, line: 482, baseType: !4570, size: 64, offset: 2880)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!345, !4353, !345}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "ts_bus_ctrl", scope: !4334, file: !153, line: 483, baseType: !4570, size: 64, offset: 2944)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "set_lna", scope: !4334, file: !153, line: 484, baseType: !4479, size: 64, offset: 3008)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !4334, file: !153, line: 490, baseType: !4576, size: 64, offset: 3072)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{!277, !4353}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_ops", scope: !4334, file: !153, line: 492, baseType: !4580, size: 2304, offset: 3136)
!4580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_ops", file: !153, line: 226, size: 2304, elements: !4581)
!4581 = !{!4582, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4609, !4613, !4614, !4615, !4616, !4617, !4618, !4623, !4627, !4631}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4580, file: !153, line: 228, baseType: !4583, size: 1216)
!4583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_info", file: !153, line: 88, size: 1216, elements: !4584)
!4584 = !{!4585, !4586, !4587, !4588, !4589, !4590, !4591}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4583, file: !153, line: 89, baseType: !3585, size: 1024)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4583, file: !153, line: 91, baseType: !443, size: 32, offset: 1024)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4583, file: !153, line: 92, baseType: !443, size: 32, offset: 1056)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_step_hz", scope: !4583, file: !153, line: 93, baseType: !443, size: 32, offset: 1088)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_min", scope: !4583, file: !153, line: 95, baseType: !443, size: 32, offset: 1120)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_max", scope: !4583, file: !153, line: 96, baseType: !443, size: 32, offset: 1152)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_step", scope: !4583, file: !153, line: 97, baseType: !443, size: 32, offset: 1184)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4580, file: !153, line: 230, baseType: !4350, size: 64, offset: 1216)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4580, file: !153, line: 231, baseType: !4479, size: 64, offset: 1280)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4580, file: !153, line: 232, baseType: !4479, size: 64, offset: 1344)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4580, file: !153, line: 233, baseType: !4479, size: 64, offset: 1408)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4580, file: !153, line: 234, baseType: !4479, size: 64, offset: 1472)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4580, file: !153, line: 237, baseType: !4479, size: 64, offset: 1536)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "set_analog_params", scope: !4580, file: !153, line: 238, baseType: !4599, size: 64, offset: 1600)
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = !DISubroutineType(types: !4601)
!4601 = !{!345, !4353, !4602}
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_parameters", file: !153, line: 114, size: 192, elements: !4604)
!4604 = !{!4605, !4606, !4607, !4608}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4603, file: !153, line: 115, baseType: !7, size: 32)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4603, file: !153, line: 116, baseType: !7, size: 32, offset: 32)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !4603, file: !153, line: 117, baseType: !7, size: 32, offset: 64)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !4603, file: !153, line: 118, baseType: !540, size: 64, offset: 128)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4580, file: !153, line: 240, baseType: !4610, size: 64, offset: 1664)
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!345, !4353, !332}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "get_frequency", scope: !4580, file: !153, line: 242, baseType: !4517, size: 64, offset: 1728)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "get_bandwidth", scope: !4580, file: !153, line: 243, baseType: !4517, size: 64, offset: 1792)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "get_if_frequency", scope: !4580, file: !153, line: 244, baseType: !4517, size: 64, offset: 1856)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !4580, file: !153, line: 248, baseType: !4517, size: 64, offset: 1920)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "get_rf_strength", scope: !4580, file: !153, line: 249, baseType: !4521, size: 64, offset: 1984)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4580, file: !153, line: 250, baseType: !4619, size: 64, offset: 2048)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!345, !4353, !4622}
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "calc_regs", scope: !4580, file: !153, line: 258, baseType: !4624, size: 64, offset: 2112)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{!345, !4353, !335, !345}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "set_frequency", scope: !4580, file: !153, line: 267, baseType: !4628, size: 64, offset: 2176)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{!345, !4353, !443}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "set_bandwidth", scope: !4580, file: !153, line: 268, baseType: !4628, size: 64, offset: 2240)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "analog_ops", scope: !4334, file: !153, line: 493, baseType: !4633, size: 576, offset: 5440)
!4633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_ops", file: !153, line: 302, size: 576, elements: !4634)
!4634 = !{!4635, !4639, !4643, !4644, !4645, !4646, !4647, !4648, !4649}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4633, file: !153, line: 304, baseType: !4636, size: 64)
!4636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_info", file: !153, line: 276, size: 64, elements: !4637)
!4637 = !{!4638}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4636, file: !153, line: 277, baseType: !835, size: 64)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4633, file: !153, line: 306, baseType: !4640, size: 64, offset: 64)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = !DISubroutineType(types: !4642)
!4642 = !{null, !4353, !4602}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "has_signal", scope: !4633, file: !153, line: 308, baseType: !4521, size: 64, offset: 128)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4633, file: !153, line: 309, baseType: !4619, size: 64, offset: 192)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_status", scope: !4633, file: !153, line: 310, baseType: !4350, size: 64, offset: 256)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !4633, file: !153, line: 311, baseType: !4350, size: 64, offset: 320)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4633, file: !153, line: 312, baseType: !4350, size: 64, offset: 384)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4633, file: !153, line: 313, baseType: !4570, size: 64, offset: 448)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4633, file: !153, line: 316, baseType: !4610, size: 64, offset: 512)
!4650 = !DIGlobalVariableExpression(var: !4651, expr: !DIExpression())
!4651 = distinct !DIGlobalVariable(name: "bw_params1", scope: !4652, file: !3, line: 167, type: !4653, isLocal: true, isDefinition: true)
!4652 = distinct !DISubprogram(name: "rtl2830_set_frontend", scope: !3, file: !3, line: 158, type: !4480, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 816, elements: !4654)
!4654 = !{!1006, !437}
!4655 = !DIGlobalVariableExpression(var: !4656, expr: !DIExpression())
!4656 = distinct !DIGlobalVariable(name: "bw_params2", scope: !4652, file: !3, line: 185, type: !4657, isLocal: true, isDefinition: true)
!4657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 144, elements: !4658)
!4658 = !{!1006, !2534}
!4659 = !DIGlobalVariableExpression(var: !4660, expr: !DIExpression())
!4660 = distinct !DIGlobalVariable(name: "constant", scope: !4661, file: !3, line: 434, type: !4662, isLocal: true, isDefinition: true)
!4661 = distinct !DISubprogram(name: "rtl2830_read_status", scope: !3, file: !3, line: 381, type: !4514, scopeLine: 382, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3928, size: 384, elements: !4663)
!4663 = !{!1006, !2436}
!4664 = !DIGlobalVariableExpression(var: !4665, expr: !DIExpression())
!4665 = distinct !DIGlobalVariable(name: "rtl2830_id_table", scope: !2, file: !3, line: 881, type: !4666, isLocal: true, isDefinition: true)
!4666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4100, size: 512, elements: !2475)
!4667 = !{i32 7, !"Dwarf Version", i32 4}
!4668 = !{i32 2, !"Debug Info Version", i32 3}
!4669 = !{i32 1, !"wchar_size", i32 2}
!4670 = !{i32 1, !"Code Model", i32 2}
!4671 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4672 = distinct !DISubprogram(name: "rtl2830_driver_init", scope: !3, file: !3, line: 897, type: !4673, scopeLine: 897, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4673 = !DISubroutineType(types: !4674)
!4674 = !{!345}
!4675 = !DILocation(line: 897, column: 1, scope: !4672)
!4676 = distinct !DISubprogram(name: "rtl2830_driver_exit", scope: !3, file: !3, line: 897, type: !358, scopeLine: 897, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4677 = !DILocation(line: 897, column: 1, scope: !4676)
!4678 = !DILocalVariable(name: "client", arg: 1, scope: !4188, file: !3, line: 771, type: !390)
!4679 = !DILocation(line: 771, column: 45, scope: !4188)
!4680 = !DILocalVariable(name: "id", arg: 2, scope: !4188, file: !3, line: 772, type: !4099)
!4681 = !DILocation(line: 772, column: 33, scope: !4188)
!4682 = !DILocalVariable(name: "pdata", scope: !4188, file: !3, line: 774, type: !4683)
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 64)
!4684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl2830_platform_data", file: !4685, line: 25, size: 320, elements: !4686)
!4685 = !DIFile(filename: "drivers/media/dvb-frontends/rtl2830.h", directory: "/home/lizy2001/genbc/linux")
!4686 = !{!4687, !4688, !4689, !4690, !4691, !4692, !4696, !4700, !4704}
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !4684, file: !4685, line: 26, baseType: !443, size: 32)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "spec_inv", scope: !4684, file: !4685, line: 27, baseType: !840, size: 8, offset: 32)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "vtop", scope: !4684, file: !4685, line: 28, baseType: !336, size: 8, offset: 40)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "krf", scope: !4684, file: !4685, line: 29, baseType: !336, size: 8, offset: 48)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "agc_targ_val", scope: !4684, file: !4685, line: 30, baseType: !336, size: 8, offset: 56)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "get_dvb_frontend", scope: !4684, file: !4685, line: 32, baseType: !4693, size: 64, offset: 64)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = !DISubroutineType(types: !4695)
!4695 = !{!4353, !390}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "get_i2c_adapter", scope: !4684, file: !4685, line: 33, baseType: !4697, size: 64, offset: 128)
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = !DISubroutineType(types: !4699)
!4699 = !{!399, !390}
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "pid_filter", scope: !4684, file: !4685, line: 34, baseType: !4701, size: 64, offset: 192)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{!345, !4353, !336, !428, !345}
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "pid_filter_ctrl", scope: !4684, file: !4685, line: 35, baseType: !4570, size: 64, offset: 256)
!4705 = !DILocation(line: 774, column: 32, scope: !4188)
!4706 = !DILocation(line: 774, column: 40, scope: !4188)
!4707 = !DILocation(line: 774, column: 48, scope: !4188)
!4708 = !DILocation(line: 774, column: 52, scope: !4188)
!4709 = !DILocalVariable(name: "dev", scope: !4188, file: !3, line: 775, type: !4710)
!4710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4711, size: 64)
!4711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl2830_dev", file: !4712, line: 19, size: 10880, elements: !4713)
!4712 = !DIFile(filename: "drivers/media/dvb-frontends/rtl2830_priv.h", directory: "/home/lizy2001/genbc/linux")
!4713 = !{!4714, !4715, !4716, !4719, !4739, !4740, !4741, !4742, !4743, !4744, !4745}
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "pdata", scope: !4711, file: !4712, line: 20, baseType: !4683, size: 64)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "client", scope: !4711, file: !4712, line: 21, baseType: !390, size: 64, offset: 64)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "regmap", scope: !4711, file: !4712, line: 22, baseType: !4717, size: 64, offset: 128)
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4718, size: 64)
!4718 = !DICompositeType(tag: DW_TAG_structure_type, name: "regmap", file: !298, line: 33, flags: DIFlagFwdDecl)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "muxc", scope: !4711, file: !4712, line: 23, baseType: !4720, size: 64, offset: 192)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_mux_core", file: !4722, line: 18, size: 448, elements: !4723)
!4722 = !DIFile(filename: "./include/linux/i2c-mux.h", directory: "/home/lizy2001/genbc/linux")
!4723 = !{!4724, !4725, !4726, !4727, !4728, !4729, !4730, !4734, !4735, !4736, !4737}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4721, file: !4722, line: 19, baseType: !399, size: 64)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4721, file: !4722, line: 20, baseType: !3496, size: 64, offset: 64)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "mux_locked", scope: !4721, file: !4722, line: 21, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "arbitrator", scope: !4721, file: !4722, line: 22, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !4721, file: !4722, line: 23, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4721, file: !4722, line: 25, baseType: !332, size: 64, offset: 192)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !4721, file: !4722, line: 27, baseType: !4731, size: 64, offset: 256)
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4732, size: 64)
!4732 = !DISubroutineType(types: !4733)
!4733 = !{!345, !4720, !443}
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "deselect", scope: !4721, file: !4722, line: 28, baseType: !4731, size: 64, offset: 320)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "num_adapters", scope: !4721, file: !4722, line: 30, baseType: !345, size: 32, offset: 384)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "max_adapters", scope: !4721, file: !4722, line: 31, baseType: !345, size: 32, offset: 416)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4721, file: !4722, line: 32, baseType: !4738, offset: 448)
!4738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, elements: !2793)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "fe", scope: !4711, file: !4712, line: 24, baseType: !4354, size: 10240, offset: 256)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "sleeping", scope: !4711, file: !4712, line: 25, baseType: !840, size: 8, offset: 10496)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "filters", scope: !4711, file: !4712, line: 26, baseType: !343, size: 64, offset: 10560)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "fe_status", scope: !4711, file: !4712, line: 27, baseType: !142, size: 32, offset: 10624)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error_prev", scope: !4711, file: !4712, line: 28, baseType: !540, size: 64, offset: 10688)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !4711, file: !4712, line: 29, baseType: !540, size: 64, offset: 10752)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !4711, file: !4712, line: 30, baseType: !540, size: 64, offset: 10816)
!4746 = !DILocation(line: 775, column: 22, scope: !4188)
!4747 = !DILocalVariable(name: "ret", scope: !4188, file: !3, line: 776, type: !345)
!4748 = !DILocation(line: 776, column: 6, scope: !4188)
!4749 = !DILocalVariable(name: "u8tmp", scope: !4188, file: !3, line: 777, type: !336)
!4750 = !DILocation(line: 777, column: 5, scope: !4188)
!4751 = !DILocation(line: 805, column: 6, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4188, file: !3, line: 805, column: 6)
!4753 = !DILocation(line: 805, column: 12, scope: !4752)
!4754 = !DILocation(line: 805, column: 6, scope: !4188)
!4755 = !DILocation(line: 806, column: 7, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4752, file: !3, line: 805, column: 21)
!4757 = !DILocation(line: 807, column: 3, scope: !4756)
!4758 = !DILocation(line: 811, column: 8, scope: !4188)
!4759 = !DILocation(line: 811, column: 6, scope: !4188)
!4760 = !DILocation(line: 812, column: 6, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4188, file: !3, line: 812, column: 6)
!4762 = !DILocation(line: 812, column: 10, scope: !4761)
!4763 = !DILocation(line: 812, column: 6, scope: !4188)
!4764 = !DILocation(line: 813, column: 7, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4761, file: !3, line: 812, column: 19)
!4766 = !DILocation(line: 814, column: 3, scope: !4765)
!4767 = !DILocation(line: 818, column: 21, scope: !4188)
!4768 = !DILocation(line: 818, column: 29, scope: !4188)
!4769 = !DILocation(line: 818, column: 2, scope: !4188)
!4770 = !DILocation(line: 819, column: 16, scope: !4188)
!4771 = !DILocation(line: 819, column: 2, scope: !4188)
!4772 = !DILocation(line: 819, column: 7, scope: !4188)
!4773 = !DILocation(line: 819, column: 14, scope: !4188)
!4774 = !DILocation(line: 820, column: 15, scope: !4188)
!4775 = !DILocation(line: 820, column: 23, scope: !4188)
!4776 = !DILocation(line: 820, column: 27, scope: !4188)
!4777 = !DILocation(line: 820, column: 2, scope: !4188)
!4778 = !DILocation(line: 820, column: 7, scope: !4188)
!4779 = !DILocation(line: 820, column: 13, scope: !4188)
!4780 = !DILocation(line: 821, column: 2, scope: !4188)
!4781 = !DILocation(line: 821, column: 7, scope: !4188)
!4782 = !DILocation(line: 821, column: 16, scope: !4188)
!4783 = !DILocation(line: 822, column: 16, scope: !4188)
!4784 = !DILocation(line: 822, column: 2, scope: !4188)
!4785 = !DILocation(line: 822, column: 7, scope: !4188)
!4786 = !DILocation(line: 822, column: 14, scope: !4188)
!4787 = !DILocation(line: 824, column: 13, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4188, file: !3, line: 824, column: 6)
!4789 = !DILocation(line: 824, column: 18, scope: !4788)
!4790 = !DILocation(line: 824, column: 6, scope: !4788)
!4791 = !DILocation(line: 824, column: 6, scope: !4188)
!4792 = !DILocation(line: 825, column: 17, scope: !4793)
!4793 = distinct !DILexicalBlock(scope: !4788, file: !3, line: 824, column: 27)
!4794 = !DILocation(line: 825, column: 22, scope: !4793)
!4795 = !DILocation(line: 825, column: 9, scope: !4793)
!4796 = !DILocation(line: 825, column: 7, scope: !4793)
!4797 = !DILocation(line: 826, column: 3, scope: !4793)
!4798 = !DILocation(line: 830, column: 26, scope: !4188)
!4799 = !DILocation(line: 830, column: 8, scope: !4188)
!4800 = !DILocation(line: 830, column: 6, scope: !4188)
!4801 = !DILocation(line: 831, column: 6, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4188, file: !3, line: 831, column: 6)
!4803 = !DILocation(line: 831, column: 6, scope: !4188)
!4804 = !DILocation(line: 832, column: 3, scope: !4802)
!4805 = !DILocation(line: 835, column: 28, scope: !4188)
!4806 = !DILocation(line: 835, column: 36, scope: !4188)
!4807 = !DILocation(line: 835, column: 46, scope: !4188)
!4808 = !DILocation(line: 835, column: 54, scope: !4188)
!4809 = !DILocation(line: 835, column: 14, scope: !4188)
!4810 = !DILocation(line: 835, column: 2, scope: !4188)
!4811 = !DILocation(line: 835, column: 7, scope: !4188)
!4812 = !DILocation(line: 835, column: 12, scope: !4188)
!4813 = !DILocation(line: 837, column: 7, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4188, file: !3, line: 837, column: 6)
!4815 = !DILocation(line: 837, column: 12, scope: !4814)
!4816 = !DILocation(line: 837, column: 6, scope: !4188)
!4817 = !DILocation(line: 838, column: 7, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4814, file: !3, line: 837, column: 18)
!4819 = !DILocation(line: 839, column: 3, scope: !4818)
!4820 = !DILocation(line: 841, column: 20, scope: !4188)
!4821 = !DILocation(line: 841, column: 2, scope: !4188)
!4822 = !DILocation(line: 841, column: 7, scope: !4188)
!4823 = !DILocation(line: 841, column: 13, scope: !4188)
!4824 = !DILocation(line: 841, column: 18, scope: !4188)
!4825 = !DILocation(line: 842, column: 28, scope: !4188)
!4826 = !DILocation(line: 842, column: 33, scope: !4188)
!4827 = !DILocation(line: 842, column: 8, scope: !4188)
!4828 = !DILocation(line: 842, column: 6, scope: !4188)
!4829 = !DILocation(line: 843, column: 6, scope: !4830)
!4830 = distinct !DILexicalBlock(scope: !4188, file: !3, line: 843, column: 6)
!4831 = !DILocation(line: 843, column: 6, scope: !4188)
!4832 = !DILocation(line: 844, column: 3, scope: !4830)
!4833 = !DILocation(line: 847, column: 10, scope: !4188)
!4834 = !DILocation(line: 847, column: 15, scope: !4188)
!4835 = !DILocation(line: 847, column: 18, scope: !4188)
!4836 = !DILocation(line: 847, column: 2, scope: !4188)
!4837 = !DILocation(line: 848, column: 29, scope: !4188)
!4838 = !DILocation(line: 848, column: 2, scope: !4188)
!4839 = !DILocation(line: 848, column: 7, scope: !4188)
!4840 = !DILocation(line: 848, column: 10, scope: !4188)
!4841 = !DILocation(line: 848, column: 27, scope: !4188)
!4842 = !DILocation(line: 851, column: 2, scope: !4188)
!4843 = !DILocation(line: 851, column: 9, scope: !4188)
!4844 = !DILocation(line: 851, column: 26, scope: !4188)
!4845 = !DILocation(line: 852, column: 2, scope: !4188)
!4846 = !DILocation(line: 852, column: 9, scope: !4188)
!4847 = !DILocation(line: 852, column: 25, scope: !4188)
!4848 = !DILocation(line: 853, column: 2, scope: !4188)
!4849 = !DILocation(line: 853, column: 9, scope: !4188)
!4850 = !DILocation(line: 853, column: 20, scope: !4188)
!4851 = !DILocation(line: 854, column: 2, scope: !4188)
!4852 = !DILocation(line: 854, column: 9, scope: !4188)
!4853 = !DILocation(line: 854, column: 25, scope: !4188)
!4854 = !DILocation(line: 856, column: 2, scope: !4188)
!4855 = !DILocation(line: 858, column: 2, scope: !4188)
!4856 = !DILabel(scope: !4188, name: "err_regmap_exit", file: !3, line: 859)
!4857 = !DILocation(line: 859, column: 1, scope: !4188)
!4858 = !DILocation(line: 860, column: 14, scope: !4188)
!4859 = !DILocation(line: 860, column: 19, scope: !4188)
!4860 = !DILocation(line: 860, column: 2, scope: !4188)
!4861 = !DILabel(scope: !4188, name: "err_kfree", file: !3, line: 861)
!4862 = !DILocation(line: 861, column: 1, scope: !4188)
!4863 = !DILocation(line: 862, column: 8, scope: !4188)
!4864 = !DILocation(line: 862, column: 2, scope: !4188)
!4865 = !DILabel(scope: !4188, name: "err", file: !3, line: 863)
!4866 = !DILocation(line: 863, column: 1, scope: !4188)
!4867 = !DILocation(line: 865, column: 9, scope: !4188)
!4868 = !DILocation(line: 865, column: 2, scope: !4188)
!4869 = !DILocation(line: 866, column: 1, scope: !4188)
!4870 = distinct !DISubprogram(name: "rtl2830_remove", scope: !3, file: !3, line: 868, type: !4107, scopeLine: 869, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4871 = !DILocalVariable(name: "client", arg: 1, scope: !4870, file: !3, line: 868, type: !390)
!4872 = !DILocation(line: 868, column: 46, scope: !4870)
!4873 = !DILocalVariable(name: "dev", scope: !4870, file: !3, line: 870, type: !4710)
!4874 = !DILocation(line: 870, column: 22, scope: !4870)
!4875 = !DILocation(line: 870, column: 47, scope: !4870)
!4876 = !DILocation(line: 870, column: 28, scope: !4870)
!4877 = !DILocation(line: 874, column: 23, scope: !4870)
!4878 = !DILocation(line: 874, column: 28, scope: !4870)
!4879 = !DILocation(line: 874, column: 2, scope: !4870)
!4880 = !DILocation(line: 875, column: 14, scope: !4870)
!4881 = !DILocation(line: 875, column: 19, scope: !4870)
!4882 = !DILocation(line: 875, column: 2, scope: !4870)
!4883 = !DILocation(line: 876, column: 8, scope: !4870)
!4884 = !DILocation(line: 876, column: 2, scope: !4870)
!4885 = !DILocation(line: 878, column: 2, scope: !4870)
!4886 = distinct !DISubprogram(name: "rtl2830_regmap_write", scope: !3, file: !3, line: 719, type: !4196, scopeLine: 720, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4887 = !DILocalVariable(name: "context", arg: 1, scope: !4886, file: !3, line: 719, type: !332)
!4888 = !DILocation(line: 719, column: 39, scope: !4886)
!4889 = !DILocalVariable(name: "data", arg: 2, scope: !4886, file: !3, line: 719, type: !2203)
!4890 = !DILocation(line: 719, column: 60, scope: !4886)
!4891 = !DILocalVariable(name: "count", arg: 3, scope: !4886, file: !3, line: 719, type: !929)
!4892 = !DILocation(line: 719, column: 73, scope: !4886)
!4893 = !DILocalVariable(name: "client", scope: !4886, file: !3, line: 721, type: !390)
!4894 = !DILocation(line: 721, column: 21, scope: !4886)
!4895 = !DILocation(line: 721, column: 30, scope: !4886)
!4896 = !DILocalVariable(name: "ret", scope: !4886, file: !3, line: 722, type: !345)
!4897 = !DILocation(line: 722, column: 6, scope: !4886)
!4898 = !DILocalVariable(name: "msg", scope: !4886, file: !3, line: 723, type: !4899)
!4899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 128, elements: !663)
!4900 = !DILocation(line: 723, column: 17, scope: !4886)
!4901 = !DILocation(line: 723, column: 26, scope: !4886)
!4902 = !DILocation(line: 724, column: 3, scope: !4886)
!4903 = !DILocation(line: 725, column: 12, scope: !4886)
!4904 = !DILocation(line: 725, column: 20, scope: !4886)
!4905 = !DILocation(line: 727, column: 11, scope: !4886)
!4906 = !DILocation(line: 728, column: 17, scope: !4886)
!4907 = !DILocation(line: 732, column: 23, scope: !4886)
!4908 = !DILocation(line: 732, column: 31, scope: !4886)
!4909 = !DILocation(line: 732, column: 40, scope: !4886)
!4910 = !DILocation(line: 732, column: 8, scope: !4886)
!4911 = !DILocation(line: 732, column: 6, scope: !4886)
!4912 = !DILocation(line: 733, column: 6, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4886, file: !3, line: 733, column: 6)
!4914 = !DILocation(line: 733, column: 10, scope: !4913)
!4915 = !DILocation(line: 733, column: 6, scope: !4886)
!4916 = !DILocation(line: 734, column: 3, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4913, file: !3, line: 733, column: 16)
!4918 = !DILocation(line: 735, column: 7, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !4917, file: !3, line: 735, column: 7)
!4920 = !DILocation(line: 735, column: 11, scope: !4919)
!4921 = !DILocation(line: 735, column: 7, scope: !4917)
!4922 = !DILocation(line: 736, column: 8, scope: !4919)
!4923 = !DILocation(line: 736, column: 4, scope: !4919)
!4924 = !DILocation(line: 737, column: 10, scope: !4917)
!4925 = !DILocation(line: 737, column: 3, scope: !4917)
!4926 = !DILocation(line: 739, column: 2, scope: !4886)
!4927 = !DILocation(line: 740, column: 1, scope: !4886)
!4928 = distinct !DISubprogram(name: "rtl2830_regmap_gather_write", scope: !3, file: !3, line: 742, type: !4201, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4929 = !DILocalVariable(name: "context", arg: 1, scope: !4928, file: !3, line: 742, type: !332)
!4930 = !DILocation(line: 742, column: 46, scope: !4928)
!4931 = !DILocalVariable(name: "reg", arg: 2, scope: !4928, file: !3, line: 742, type: !2203)
!4932 = !DILocation(line: 742, column: 67, scope: !4928)
!4933 = !DILocalVariable(name: "reg_len", arg: 3, scope: !4928, file: !3, line: 743, type: !929)
!4934 = !DILocation(line: 743, column: 19, scope: !4928)
!4935 = !DILocalVariable(name: "val", arg: 4, scope: !4928, file: !3, line: 743, type: !2203)
!4936 = !DILocation(line: 743, column: 40, scope: !4928)
!4937 = !DILocalVariable(name: "val_len", arg: 5, scope: !4928, file: !3, line: 744, type: !929)
!4938 = !DILocation(line: 744, column: 19, scope: !4928)
!4939 = !DILocalVariable(name: "client", scope: !4928, file: !3, line: 746, type: !390)
!4940 = !DILocation(line: 746, column: 21, scope: !4928)
!4941 = !DILocation(line: 746, column: 30, scope: !4928)
!4942 = !DILocalVariable(name: "ret", scope: !4928, file: !3, line: 747, type: !345)
!4943 = !DILocation(line: 747, column: 6, scope: !4928)
!4944 = !DILocalVariable(name: "buf", scope: !4928, file: !3, line: 748, type: !4945)
!4945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 2048, elements: !4946)
!4946 = !{!4947}
!4947 = !DISubrange(count: 256)
!4948 = !DILocation(line: 748, column: 5, scope: !4928)
!4949 = !DILocalVariable(name: "msg", scope: !4928, file: !3, line: 749, type: !4899)
!4950 = !DILocation(line: 749, column: 17, scope: !4928)
!4951 = !DILocation(line: 749, column: 26, scope: !4928)
!4952 = !DILocation(line: 750, column: 3, scope: !4928)
!4953 = !DILocation(line: 751, column: 12, scope: !4928)
!4954 = !DILocation(line: 751, column: 20, scope: !4928)
!4955 = !DILocation(line: 753, column: 15, scope: !4928)
!4956 = !DILocation(line: 753, column: 13, scope: !4928)
!4957 = !DILocation(line: 753, column: 11, scope: !4928)
!4958 = !DILocation(line: 754, column: 11, scope: !4928)
!4959 = !DILocation(line: 758, column: 24, scope: !4928)
!4960 = !DILocation(line: 758, column: 11, scope: !4928)
!4961 = !DILocation(line: 758, column: 2, scope: !4928)
!4962 = !DILocation(line: 758, column: 9, scope: !4928)
!4963 = !DILocation(line: 759, column: 10, scope: !4928)
!4964 = !DILocation(line: 759, column: 18, scope: !4928)
!4965 = !DILocation(line: 759, column: 23, scope: !4928)
!4966 = !DILocation(line: 759, column: 2, scope: !4928)
!4967 = !DILocation(line: 761, column: 23, scope: !4928)
!4968 = !DILocation(line: 761, column: 31, scope: !4928)
!4969 = !DILocation(line: 761, column: 40, scope: !4928)
!4970 = !DILocation(line: 761, column: 8, scope: !4928)
!4971 = !DILocation(line: 761, column: 6, scope: !4928)
!4972 = !DILocation(line: 762, column: 6, scope: !4973)
!4973 = distinct !DILexicalBlock(scope: !4928, file: !3, line: 762, column: 6)
!4974 = !DILocation(line: 762, column: 10, scope: !4973)
!4975 = !DILocation(line: 762, column: 6, scope: !4928)
!4976 = !DILocation(line: 763, column: 3, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4973, file: !3, line: 762, column: 16)
!4978 = !DILocation(line: 764, column: 7, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4977, file: !3, line: 764, column: 7)
!4980 = !DILocation(line: 764, column: 11, scope: !4979)
!4981 = !DILocation(line: 764, column: 7, scope: !4977)
!4982 = !DILocation(line: 765, column: 8, scope: !4979)
!4983 = !DILocation(line: 765, column: 4, scope: !4979)
!4984 = !DILocation(line: 766, column: 10, scope: !4977)
!4985 = !DILocation(line: 766, column: 3, scope: !4977)
!4986 = !DILocation(line: 768, column: 2, scope: !4928)
!4987 = !DILocation(line: 769, column: 1, scope: !4928)
!4988 = distinct !DISubprogram(name: "rtl2830_regmap_read", scope: !3, file: !3, line: 690, type: !4223, scopeLine: 692, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4989 = !DILocalVariable(name: "context", arg: 1, scope: !4988, file: !3, line: 690, type: !332)
!4990 = !DILocation(line: 690, column: 38, scope: !4988)
!4991 = !DILocalVariable(name: "reg_buf", arg: 2, scope: !4988, file: !3, line: 690, type: !2203)
!4992 = !DILocation(line: 690, column: 59, scope: !4988)
!4993 = !DILocalVariable(name: "reg_size", arg: 3, scope: !4988, file: !3, line: 691, type: !929)
!4994 = !DILocation(line: 691, column: 18, scope: !4988)
!4995 = !DILocalVariable(name: "val_buf", arg: 4, scope: !4988, file: !3, line: 691, type: !332)
!4996 = !DILocation(line: 691, column: 34, scope: !4988)
!4997 = !DILocalVariable(name: "val_size", arg: 5, scope: !4988, file: !3, line: 691, type: !929)
!4998 = !DILocation(line: 691, column: 50, scope: !4988)
!4999 = !DILocalVariable(name: "client", scope: !4988, file: !3, line: 693, type: !390)
!5000 = !DILocation(line: 693, column: 21, scope: !4988)
!5001 = !DILocation(line: 693, column: 30, scope: !4988)
!5002 = !DILocalVariable(name: "ret", scope: !4988, file: !3, line: 694, type: !345)
!5003 = !DILocation(line: 694, column: 6, scope: !4988)
!5004 = !DILocalVariable(name: "msg", scope: !4988, file: !3, line: 695, type: !5005)
!5005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 256, elements: !2475)
!5006 = !DILocation(line: 695, column: 17, scope: !4988)
!5007 = !DILocation(line: 695, column: 26, scope: !4988)
!5008 = !DILocation(line: 696, column: 3, scope: !4988)
!5009 = !DILocation(line: 697, column: 12, scope: !4988)
!5010 = !DILocation(line: 697, column: 20, scope: !4988)
!5011 = !DILocation(line: 699, column: 11, scope: !4988)
!5012 = !DILocation(line: 700, column: 17, scope: !4988)
!5013 = !DILocation(line: 701, column: 6, scope: !4988)
!5014 = !DILocation(line: 702, column: 12, scope: !4988)
!5015 = !DILocation(line: 702, column: 20, scope: !4988)
!5016 = !DILocation(line: 704, column: 11, scope: !4988)
!5017 = !DILocation(line: 705, column: 11, scope: !4988)
!5018 = !DILocation(line: 709, column: 23, scope: !4988)
!5019 = !DILocation(line: 709, column: 31, scope: !4988)
!5020 = !DILocation(line: 709, column: 40, scope: !4988)
!5021 = !DILocation(line: 709, column: 8, scope: !4988)
!5022 = !DILocation(line: 709, column: 6, scope: !4988)
!5023 = !DILocation(line: 710, column: 6, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !4988, file: !3, line: 710, column: 6)
!5025 = !DILocation(line: 710, column: 10, scope: !5024)
!5026 = !DILocation(line: 710, column: 6, scope: !4988)
!5027 = !DILocation(line: 711, column: 3, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !5024, file: !3, line: 710, column: 16)
!5029 = !DILocation(line: 712, column: 7, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !5028, file: !3, line: 712, column: 7)
!5031 = !DILocation(line: 712, column: 11, scope: !5030)
!5032 = !DILocation(line: 712, column: 7, scope: !5028)
!5033 = !DILocation(line: 713, column: 8, scope: !5030)
!5034 = !DILocation(line: 713, column: 4, scope: !5030)
!5035 = !DILocation(line: 714, column: 10, scope: !5028)
!5036 = !DILocation(line: 714, column: 3, scope: !5028)
!5037 = !DILocation(line: 716, column: 2, scope: !4988)
!5038 = !DILocation(line: 717, column: 1, scope: !4988)
!5039 = distinct !DISubprogram(name: "kzalloc", scope: !316, file: !316, line: 662, type: !5040, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5040 = !DISubroutineType(types: !5041)
!5041 = !{!332, !929, !333}
!5042 = !DILocalVariable(name: "s", arg: 1, scope: !5043, file: !316, line: 445, type: !1274)
!5043 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !316, file: !316, line: 445, type: !5044, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5044 = !DISubroutineType(types: !5045)
!5045 = !{!332, !1274, !333, !929}
!5046 = !DILocation(line: 445, column: 72, scope: !5043, inlinedAt: !5047)
!5047 = distinct !DILocation(line: 552, column: 10, scope: !5048, inlinedAt: !5051)
!5048 = distinct !DILexicalBlock(scope: !5049, file: !316, line: 540, column: 34)
!5049 = distinct !DILexicalBlock(scope: !5050, file: !316, line: 540, column: 6)
!5050 = distinct !DISubprogram(name: "kmalloc", scope: !316, file: !316, line: 538, type: !5040, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5051 = distinct !DILocation(line: 664, column: 9, scope: !5039)
!5052 = !DILocalVariable(name: "flags", arg: 2, scope: !5043, file: !316, line: 446, type: !333)
!5053 = !DILocation(line: 446, column: 9, scope: !5043, inlinedAt: !5047)
!5054 = !DILocalVariable(name: "size", arg: 3, scope: !5043, file: !316, line: 446, type: !929)
!5055 = !DILocation(line: 446, column: 23, scope: !5043, inlinedAt: !5047)
!5056 = !DILocalVariable(name: "ret", scope: !5043, file: !316, line: 448, type: !332)
!5057 = !DILocation(line: 448, column: 8, scope: !5043, inlinedAt: !5047)
!5058 = !DILocalVariable(name: "flags", arg: 1, scope: !5059, file: !316, line: 318, type: !333)
!5059 = distinct !DISubprogram(name: "kmalloc_type", scope: !316, file: !316, line: 318, type: !5060, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5060 = !DISubroutineType(types: !5061)
!5061 = !{!315, !333}
!5062 = !DILocation(line: 318, column: 67, scope: !5059, inlinedAt: !5063)
!5063 = distinct !DILocation(line: 553, column: 20, scope: !5048, inlinedAt: !5051)
!5064 = !DILocalVariable(name: "size", arg: 1, scope: !5065, file: !316, line: 346, type: !929)
!5065 = distinct !DISubprogram(name: "kmalloc_index", scope: !316, file: !316, line: 346, type: !5066, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5066 = !DISubroutineType(types: !5067)
!5067 = !{!7, !929}
!5068 = !DILocation(line: 346, column: 58, scope: !5065, inlinedAt: !5069)
!5069 = distinct !DILocation(line: 547, column: 11, scope: !5048, inlinedAt: !5051)
!5070 = !DILocalVariable(name: "size", arg: 1, scope: !5071, file: !316, line: 472, type: !929)
!5071 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !316, file: !316, line: 472, type: !5072, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5072 = !DISubroutineType(types: !5073)
!5073 = !{!332, !929, !333, !7}
!5074 = !DILocation(line: 472, column: 28, scope: !5071, inlinedAt: !5075)
!5075 = distinct !DILocation(line: 481, column: 9, scope: !5076, inlinedAt: !5077)
!5076 = distinct !DISubprogram(name: "kmalloc_large", scope: !316, file: !316, line: 478, type: !5040, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5077 = distinct !DILocation(line: 545, column: 11, scope: !5078, inlinedAt: !5051)
!5078 = distinct !DILexicalBlock(scope: !5048, file: !316, line: 544, column: 7)
!5079 = !DILocalVariable(name: "flags", arg: 2, scope: !5071, file: !316, line: 472, type: !333)
!5080 = !DILocation(line: 472, column: 40, scope: !5071, inlinedAt: !5075)
!5081 = !DILocalVariable(name: "order", arg: 3, scope: !5071, file: !316, line: 472, type: !7)
!5082 = !DILocation(line: 472, column: 60, scope: !5071, inlinedAt: !5075)
!5083 = !DILocalVariable(name: "size", arg: 1, scope: !5076, file: !316, line: 478, type: !929)
!5084 = !DILocation(line: 478, column: 51, scope: !5076, inlinedAt: !5077)
!5085 = !DILocalVariable(name: "flags", arg: 2, scope: !5076, file: !316, line: 478, type: !333)
!5086 = !DILocation(line: 478, column: 63, scope: !5076, inlinedAt: !5077)
!5087 = !DILocalVariable(name: "order", scope: !5076, file: !316, line: 480, type: !7)
!5088 = !DILocation(line: 480, column: 15, scope: !5076, inlinedAt: !5077)
!5089 = !DILocalVariable(name: "size", arg: 1, scope: !5050, file: !316, line: 538, type: !929)
!5090 = !DILocation(line: 538, column: 45, scope: !5050, inlinedAt: !5051)
!5091 = !DILocalVariable(name: "flags", arg: 2, scope: !5050, file: !316, line: 538, type: !333)
!5092 = !DILocation(line: 538, column: 57, scope: !5050, inlinedAt: !5051)
!5093 = !DILocalVariable(name: "index", scope: !5048, file: !316, line: 542, type: !7)
!5094 = !DILocation(line: 542, column: 16, scope: !5048, inlinedAt: !5051)
!5095 = !DILocalVariable(name: "size", arg: 1, scope: !5039, file: !316, line: 662, type: !929)
!5096 = !DILocation(line: 662, column: 36, scope: !5039)
!5097 = !DILocalVariable(name: "flags", arg: 2, scope: !5039, file: !316, line: 662, type: !333)
!5098 = !DILocation(line: 662, column: 48, scope: !5039)
!5099 = !DILocation(line: 664, column: 17, scope: !5039)
!5100 = !DILocation(line: 664, column: 23, scope: !5039)
!5101 = !DILocation(line: 664, column: 29, scope: !5039)
!5102 = !DILocation(line: 540, column: 27, scope: !5049, inlinedAt: !5051)
!5103 = !DILocation(line: 540, column: 6, scope: !5049, inlinedAt: !5051)
!5104 = !DILocation(line: 540, column: 6, scope: !5050, inlinedAt: !5051)
!5105 = !DILocation(line: 544, column: 7, scope: !5078, inlinedAt: !5051)
!5106 = !DILocation(line: 544, column: 12, scope: !5078, inlinedAt: !5051)
!5107 = !DILocation(line: 544, column: 7, scope: !5048, inlinedAt: !5051)
!5108 = !DILocation(line: 545, column: 25, scope: !5078, inlinedAt: !5051)
!5109 = !DILocation(line: 545, column: 31, scope: !5078, inlinedAt: !5051)
!5110 = !DILocation(line: 480, column: 33, scope: !5076, inlinedAt: !5077)
!5111 = !DILocation(line: 480, column: 23, scope: !5076, inlinedAt: !5077)
!5112 = !DILocation(line: 481, column: 29, scope: !5076, inlinedAt: !5077)
!5113 = !DILocation(line: 481, column: 35, scope: !5076, inlinedAt: !5077)
!5114 = !DILocation(line: 481, column: 42, scope: !5076, inlinedAt: !5077)
!5115 = !DILocation(line: 474, column: 23, scope: !5071, inlinedAt: !5075)
!5116 = !DILocation(line: 474, column: 29, scope: !5071, inlinedAt: !5075)
!5117 = !DILocation(line: 474, column: 36, scope: !5071, inlinedAt: !5075)
!5118 = !DILocation(line: 474, column: 9, scope: !5071, inlinedAt: !5075)
!5119 = !DILocation(line: 545, column: 4, scope: !5078, inlinedAt: !5051)
!5120 = !DILocation(line: 547, column: 25, scope: !5048, inlinedAt: !5051)
!5121 = !DILocation(line: 348, column: 7, scope: !5122, inlinedAt: !5069)
!5122 = distinct !DILexicalBlock(scope: !5065, file: !316, line: 348, column: 6)
!5123 = !DILocation(line: 348, column: 6, scope: !5065, inlinedAt: !5069)
!5124 = !DILocation(line: 349, column: 3, scope: !5122, inlinedAt: !5069)
!5125 = !DILocation(line: 351, column: 6, scope: !5126, inlinedAt: !5069)
!5126 = distinct !DILexicalBlock(scope: !5065, file: !316, line: 351, column: 6)
!5127 = !DILocation(line: 351, column: 11, scope: !5126, inlinedAt: !5069)
!5128 = !DILocation(line: 351, column: 6, scope: !5065, inlinedAt: !5069)
!5129 = !DILocation(line: 352, column: 3, scope: !5126, inlinedAt: !5069)
!5130 = !DILocation(line: 354, column: 32, scope: !5131, inlinedAt: !5069)
!5131 = distinct !DILexicalBlock(scope: !5065, file: !316, line: 354, column: 6)
!5132 = !DILocation(line: 354, column: 37, scope: !5131, inlinedAt: !5069)
!5133 = !DILocation(line: 354, column: 42, scope: !5131, inlinedAt: !5069)
!5134 = !DILocation(line: 354, column: 45, scope: !5131, inlinedAt: !5069)
!5135 = !DILocation(line: 354, column: 50, scope: !5131, inlinedAt: !5069)
!5136 = !DILocation(line: 354, column: 6, scope: !5065, inlinedAt: !5069)
!5137 = !DILocation(line: 355, column: 3, scope: !5131, inlinedAt: !5069)
!5138 = !DILocation(line: 356, column: 32, scope: !5139, inlinedAt: !5069)
!5139 = distinct !DILexicalBlock(scope: !5065, file: !316, line: 356, column: 6)
!5140 = !DILocation(line: 356, column: 37, scope: !5139, inlinedAt: !5069)
!5141 = !DILocation(line: 356, column: 43, scope: !5139, inlinedAt: !5069)
!5142 = !DILocation(line: 356, column: 46, scope: !5139, inlinedAt: !5069)
!5143 = !DILocation(line: 356, column: 51, scope: !5139, inlinedAt: !5069)
!5144 = !DILocation(line: 356, column: 6, scope: !5065, inlinedAt: !5069)
!5145 = !DILocation(line: 357, column: 3, scope: !5139, inlinedAt: !5069)
!5146 = !DILocation(line: 358, column: 6, scope: !5147, inlinedAt: !5069)
!5147 = distinct !DILexicalBlock(scope: !5065, file: !316, line: 358, column: 6)
!5148 = !DILocation(line: 358, column: 11, scope: !5147, inlinedAt: !5069)
!5149 = !DILocation(line: 358, column: 6, scope: !5065, inlinedAt: !5069)
!5150 = !DILocation(line: 358, column: 26, scope: !5147, inlinedAt: !5069)
!5151 = !DILocation(line: 359, column: 6, scope: !5152, inlinedAt: !5069)
!5152 = distinct !DILexicalBlock(scope: !5065, file: !316, line: 359, column: 6)
!5153 = !DILocation(line: 359, column: 11, scope: !5152, inlinedAt: !5069)
!5154 = !DILocation(line: 359, column: 6, scope: !5065, inlinedAt: !5069)
!5155 = !DILocation(line: 359, column: 26, scope: !5152, inlinedAt: !5069)
!5156 = !DILocation(line: 360, column: 6, scope: !5157, inlinedAt: !5069)
!5157 = distinct !DILexicalBlock(scope: !5065, file: !316, line: 360, column: 6)
!5158 = !DILocation(line: 360, column: 11, scope: !5157, inlinedAt: !5069)
!5159 = !DILocation(line: 360, column: 6, scope: !5065, inlinedAt: !5069)
!5160 = !DILocation(line: 360, column: 26, scope: !5157, inlinedAt: !5069)
!5161 = !DILocation(line: 361, column: 6, scope: !5162, inlinedAt: !5069)
!5162 = distinct !DILexicalBlock(scope: !5065, file: !316, line: 361, column: 6)
!5163 = !DILocation(line: 361, column: 11, scope: !5162, inlinedAt: !5069)
!5164 = !DILocation(line: 361, column: 6, scope: !5065, inlinedAt: !5069)
!5165 = !DILocation(line: 361, column: 26, scope: !5162, inlinedAt: !5069)
!5166 = !DILocation(line: 362, column: 6, scope: !5167, inlinedAt: !5069)
!5167 = distinct !DILexicalBlock(scope: !5065, file: !316, line: 362, column: 6)
!5168 = !DILocation(line: 362, column: 11, scope: !5167, inlinedAt: !5069)
!5169 = !DILocation(line: 362, column: 6, scope: !5065, inlinedAt: !5069)
!5170 = !DILocation(line: 362, column: 26, scope: !5167, inlinedAt: !5069)
!5171 = !DILocation(line: 363, column: 6, scope: !5172, inlinedAt: !5069)
!5172 = distinct !DILexicalBlock(scope: !5065, file: !316, line: 363, column: 6)
!5173 = !DILocation(line: 363, column: 11, scope: !5172, inlinedAt: !5069)
!5174 = !DILocation(line: 363, column: 6, scope: !5065, inlinedAt: !5069)
!5175 = !DILocation(line: 363, column: 26, scope: !5172, inlinedAt: !5069)
!5176 = !DILocation(line: 364, column: 6, scope: !5177, inlinedAt: !5069)
!5177 = distinct !DILexicalBlock(scope: !5065, file: !316, line: 364, column: 6)
!5178 = !DILocation(line: 364, column: 11, scope: !5177, inlinedAt: !5069)
!5179 = !DILocation(line: 364, column: 6, scope: !5065, inlinedAt: !5069)
!5180 = !DILocation(line: 364, column: 26, scope: !5177, inlinedAt: !5069)
!5181 = !DILocation(line: 365, column: 6, scope: !5182, inlinedAt: !5069)
!5182 = distinct !DILexicalBlock(scope: !5065, file: !316, line: 365, column: 6)
!5183 = !DILocation(line: 365, column: 11, scope: !5182, inlinedAt: !5069)
!5184 = !DILocation(line: 365, column: 6, scope: !5065, inlinedAt: !5069)
!5185 = !DILocation(line: 365, column: 26, scope: !5182, inlinedAt: !5069)
!5186 = !DILocation(line: 366, column: 6, scope: !5187, inlinedAt: !5069)
!5187 = distinct !DILexicalBlock(scope: !5065, file: !316, line: 366, column: 6)
!5188 = !DILocation(line: 366, column: 11, scope: !5187, inlinedAt: !5069)
!5189 = !DILocation(line: 366, column: 6, scope: !5065, inlinedAt: !5069)
!5190 = !DILocation(line: 366, column: 26, scope: !5187, inlinedAt: !5069)
!5191 = !DILocation(line: 367, column: 6, scope: !5192, inlinedAt: !5069)
!5192 = distinct !DILexicalBlock(scope: !5065, file: !316, line: 367, column: 6)
!5193 = !DILocation(line: 367, column: 11, scope: !5192, inlinedAt: !5069)
!5194 = !DILocation(line: 367, column: 6, scope: !5065, inlinedAt: !5069)
!5195 = !DILocation(line: 367, column: 26, scope: !5192, inlinedAt: !5069)
!5196 = !DILocation(line: 368, column: 6, scope: !5197, inlinedAt: !5069)
!5197 = distinct !DILexicalBlock(scope: !5065, file: !316, line: 368, column: 6)
!5198 = !DILocation(line: 368, column: 11, scope: !5197, inlinedAt: !5069)
!5199 = !DILocation(line: 368, column: 6, scope: !5065, inlinedAt: !5069)
!5200 = !DILocation(line: 368, column: 26, scope: !5197, inlinedAt: !5069)
!5201 = !DILocation(line: 369, column: 6, scope: !5202, inlinedAt: !5069)
!5202 = distinct !DILexicalBlock(scope: !5065, file: !316, line: 369, column: 6)
!5203 = !DILocation(line: 369, column: 11, scope: !5202, inlinedAt: !5069)
!5204 = !DILocation(line: 369, column: 6, scope: !5065, inlinedAt: !5069)
!5205 = !DILocation(line: 369, column: 26, scope: !5202, inlinedAt: !5069)
!5206 = !DILocation(line: 370, column: 6, scope: !5207, inlinedAt: !5069)
!5207 = distinct !DILexicalBlock(scope: !5065, file: !316, line: 370, column: 6)
!5208 = !DILocation(line: 370, column: 11, scope: !5207, inlinedAt: !5069)
!5209 = !DILocation(line: 370, column: 6, scope: !5065, inlinedAt: !5069)
!5210 = !DILocation(line: 370, column: 26, scope: !5207, inlinedAt: !5069)
!5211 = !DILocation(line: 371, column: 6, scope: !5212, inlinedAt: !5069)
!5212 = distinct !DILexicalBlock(scope: !5065, file: !316, line: 371, column: 6)
!5213 = !DILocation(line: 371, column: 11, scope: !5212, inlinedAt: !5069)
!5214 = !DILocation(line: 371, column: 6, scope: !5065, inlinedAt: !5069)
!5215 = !DILocation(line: 371, column: 26, scope: !5212, inlinedAt: !5069)
!5216 = !DILocation(line: 372, column: 6, scope: !5217, inlinedAt: !5069)
!5217 = distinct !DILexicalBlock(scope: !5065, file: !316, line: 372, column: 6)
!5218 = !DILocation(line: 372, column: 11, scope: !5217, inlinedAt: !5069)
!5219 = !DILocation(line: 372, column: 6, scope: !5065, inlinedAt: !5069)
!5220 = !DILocation(line: 372, column: 26, scope: !5217, inlinedAt: !5069)
!5221 = !DILocation(line: 373, column: 6, scope: !5222, inlinedAt: !5069)
!5222 = distinct !DILexicalBlock(scope: !5065, file: !316, line: 373, column: 6)
!5223 = !DILocation(line: 373, column: 11, scope: !5222, inlinedAt: !5069)
!5224 = !DILocation(line: 373, column: 6, scope: !5065, inlinedAt: !5069)
!5225 = !DILocation(line: 373, column: 26, scope: !5222, inlinedAt: !5069)
!5226 = !DILocation(line: 374, column: 6, scope: !5227, inlinedAt: !5069)
!5227 = distinct !DILexicalBlock(scope: !5065, file: !316, line: 374, column: 6)
!5228 = !DILocation(line: 374, column: 11, scope: !5227, inlinedAt: !5069)
!5229 = !DILocation(line: 374, column: 6, scope: !5065, inlinedAt: !5069)
!5230 = !DILocation(line: 374, column: 26, scope: !5227, inlinedAt: !5069)
!5231 = !DILocation(line: 375, column: 6, scope: !5232, inlinedAt: !5069)
!5232 = distinct !DILexicalBlock(scope: !5065, file: !316, line: 375, column: 6)
!5233 = !DILocation(line: 375, column: 11, scope: !5232, inlinedAt: !5069)
!5234 = !DILocation(line: 375, column: 6, scope: !5065, inlinedAt: !5069)
!5235 = !DILocation(line: 375, column: 27, scope: !5232, inlinedAt: !5069)
!5236 = !DILocation(line: 376, column: 6, scope: !5237, inlinedAt: !5069)
!5237 = distinct !DILexicalBlock(scope: !5065, file: !316, line: 376, column: 6)
!5238 = !DILocation(line: 376, column: 11, scope: !5237, inlinedAt: !5069)
!5239 = !DILocation(line: 376, column: 6, scope: !5065, inlinedAt: !5069)
!5240 = !DILocation(line: 376, column: 32, scope: !5237, inlinedAt: !5069)
!5241 = !DILocation(line: 377, column: 6, scope: !5242, inlinedAt: !5069)
!5242 = distinct !DILexicalBlock(scope: !5065, file: !316, line: 377, column: 6)
!5243 = !DILocation(line: 377, column: 11, scope: !5242, inlinedAt: !5069)
!5244 = !DILocation(line: 377, column: 6, scope: !5065, inlinedAt: !5069)
!5245 = !DILocation(line: 377, column: 32, scope: !5242, inlinedAt: !5069)
!5246 = !DILocation(line: 378, column: 6, scope: !5247, inlinedAt: !5069)
!5247 = distinct !DILexicalBlock(scope: !5065, file: !316, line: 378, column: 6)
!5248 = !DILocation(line: 378, column: 11, scope: !5247, inlinedAt: !5069)
!5249 = !DILocation(line: 378, column: 6, scope: !5065, inlinedAt: !5069)
!5250 = !DILocation(line: 378, column: 32, scope: !5247, inlinedAt: !5069)
!5251 = !DILocation(line: 379, column: 6, scope: !5252, inlinedAt: !5069)
!5252 = distinct !DILexicalBlock(scope: !5065, file: !316, line: 379, column: 6)
!5253 = !DILocation(line: 379, column: 11, scope: !5252, inlinedAt: !5069)
!5254 = !DILocation(line: 379, column: 6, scope: !5065, inlinedAt: !5069)
!5255 = !DILocation(line: 379, column: 33, scope: !5252, inlinedAt: !5069)
!5256 = !DILocation(line: 380, column: 6, scope: !5257, inlinedAt: !5069)
!5257 = distinct !DILexicalBlock(scope: !5065, file: !316, line: 380, column: 6)
!5258 = !DILocation(line: 380, column: 11, scope: !5257, inlinedAt: !5069)
!5259 = !DILocation(line: 380, column: 6, scope: !5065, inlinedAt: !5069)
!5260 = !DILocation(line: 380, column: 33, scope: !5257, inlinedAt: !5069)
!5261 = !DILocation(line: 381, column: 6, scope: !5262, inlinedAt: !5069)
!5262 = distinct !DILexicalBlock(scope: !5065, file: !316, line: 381, column: 6)
!5263 = !DILocation(line: 381, column: 11, scope: !5262, inlinedAt: !5069)
!5264 = !DILocation(line: 381, column: 6, scope: !5065, inlinedAt: !5069)
!5265 = !DILocation(line: 381, column: 33, scope: !5262, inlinedAt: !5069)
!5266 = !DILocation(line: 382, column: 2, scope: !5267, inlinedAt: !5069)
!5267 = distinct !DILexicalBlock(scope: !5268, file: !316, line: 382, column: 2)
!5268 = distinct !DILexicalBlock(scope: !5065, file: !316, line: 382, column: 2)
!5269 = !{i32 -2143653166, i32 -2143653137, i32 -2143653091, i32 -2143653033, i32 -2143652979, i32 -2143652925, i32 -2143652870, i32 -2143652839}
!5270 = !DILocation(line: 382, column: 2, scope: !5271, inlinedAt: !5069)
!5271 = distinct !DILexicalBlock(scope: !5272, file: !316, line: 382, column: 2)
!5272 = distinct !DILexicalBlock(scope: !5268, file: !316, line: 382, column: 2)
!5273 = !{i32 -2143652396, i32 -2143652389, i32 -2143652335, i32 -2143652304, i32 -2143652274}
!5274 = !DILocation(line: 382, column: 2, scope: !5272, inlinedAt: !5069)
!5275 = !DILocation(line: 386, column: 1, scope: !5065, inlinedAt: !5069)
!5276 = !DILocation(line: 547, column: 9, scope: !5048, inlinedAt: !5051)
!5277 = !DILocation(line: 549, column: 8, scope: !5278, inlinedAt: !5051)
!5278 = distinct !DILexicalBlock(scope: !5048, file: !316, line: 549, column: 7)
!5279 = !DILocation(line: 549, column: 7, scope: !5048, inlinedAt: !5051)
!5280 = !DILocation(line: 550, column: 4, scope: !5278, inlinedAt: !5051)
!5281 = !DILocation(line: 553, column: 33, scope: !5048, inlinedAt: !5051)
!5282 = !DILocation(line: 325, column: 6, scope: !5283, inlinedAt: !5063)
!5283 = distinct !DILexicalBlock(scope: !5059, file: !316, line: 325, column: 6)
!5284 = !DILocation(line: 325, column: 6, scope: !5059, inlinedAt: !5063)
!5285 = !DILocation(line: 326, column: 3, scope: !5283, inlinedAt: !5063)
!5286 = !DILocation(line: 332, column: 9, scope: !5059, inlinedAt: !5063)
!5287 = !DILocation(line: 332, column: 15, scope: !5059, inlinedAt: !5063)
!5288 = !DILocation(line: 332, column: 2, scope: !5059, inlinedAt: !5063)
!5289 = !DILocation(line: 336, column: 1, scope: !5059, inlinedAt: !5063)
!5290 = !DILocation(line: 553, column: 5, scope: !5048, inlinedAt: !5051)
!5291 = !DILocation(line: 553, column: 41, scope: !5048, inlinedAt: !5051)
!5292 = !DILocation(line: 554, column: 5, scope: !5048, inlinedAt: !5051)
!5293 = !DILocation(line: 554, column: 12, scope: !5048, inlinedAt: !5051)
!5294 = !DILocation(line: 448, column: 31, scope: !5043, inlinedAt: !5047)
!5295 = !DILocation(line: 448, column: 34, scope: !5043, inlinedAt: !5047)
!5296 = !DILocation(line: 448, column: 14, scope: !5043, inlinedAt: !5047)
!5297 = !DILocation(line: 450, column: 22, scope: !5043, inlinedAt: !5047)
!5298 = !DILocation(line: 450, column: 25, scope: !5043, inlinedAt: !5047)
!5299 = !DILocation(line: 450, column: 30, scope: !5043, inlinedAt: !5047)
!5300 = !DILocation(line: 450, column: 36, scope: !5043, inlinedAt: !5047)
!5301 = !DILocation(line: 450, column: 8, scope: !5043, inlinedAt: !5047)
!5302 = !DILocation(line: 450, column: 6, scope: !5043, inlinedAt: !5047)
!5303 = !DILocation(line: 451, column: 9, scope: !5043, inlinedAt: !5047)
!5304 = !DILocation(line: 552, column: 3, scope: !5048, inlinedAt: !5051)
!5305 = !DILocation(line: 557, column: 19, scope: !5050, inlinedAt: !5051)
!5306 = !DILocation(line: 557, column: 25, scope: !5050, inlinedAt: !5051)
!5307 = !DILocation(line: 557, column: 9, scope: !5050, inlinedAt: !5051)
!5308 = !DILocation(line: 557, column: 2, scope: !5050, inlinedAt: !5051)
!5309 = !DILocation(line: 558, column: 1, scope: !5050, inlinedAt: !5051)
!5310 = !DILocation(line: 664, column: 2, scope: !5039)
!5311 = distinct !DISubprogram(name: "i2c_set_clientdata", scope: !95, file: !95, line: 356, type: !5312, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5312 = !DISubroutineType(types: !5313)
!5313 = !{null, !390, !332}
!5314 = !DILocalVariable(name: "client", arg: 1, scope: !5311, file: !95, line: 356, type: !390)
!5315 = !DILocation(line: 356, column: 58, scope: !5311)
!5316 = !DILocalVariable(name: "data", arg: 2, scope: !5311, file: !95, line: 356, type: !332)
!5317 = !DILocation(line: 356, column: 72, scope: !5311)
!5318 = !DILocation(line: 358, column: 19, scope: !5311)
!5319 = !DILocation(line: 358, column: 27, scope: !5311)
!5320 = !DILocation(line: 358, column: 32, scope: !5311)
!5321 = !DILocation(line: 358, column: 2, scope: !5311)
!5322 = !DILocation(line: 359, column: 1, scope: !5311)
!5323 = distinct !DISubprogram(name: "IS_ERR", scope: !5324, file: !5324, line: 34, type: !5325, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5324 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!5325 = !DISubroutineType(types: !5326)
!5326 = !{!840, !2203}
!5327 = !DILocalVariable(name: "ptr", arg: 1, scope: !5323, file: !5324, line: 34, type: !2203)
!5328 = !DILocation(line: 34, column: 60, scope: !5323)
!5329 = !DILocation(line: 36, column: 9, scope: !5323)
!5330 = !DILocation(line: 36, column: 2, scope: !5323)
!5331 = distinct !DISubprogram(name: "PTR_ERR", scope: !5324, file: !5324, line: 29, type: !5332, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5332 = !DISubroutineType(types: !5333)
!5333 = !{!344, !2203}
!5334 = !DILocalVariable(name: "ptr", arg: 1, scope: !5331, file: !5324, line: 29, type: !2203)
!5335 = !DILocation(line: 29, column: 61, scope: !5331)
!5336 = !DILocation(line: 31, column: 16, scope: !5331)
!5337 = !DILocation(line: 31, column: 9, scope: !5331)
!5338 = !DILocation(line: 31, column: 2, scope: !5331)
!5339 = distinct !DISubprogram(name: "rtl2830_bulk_read", scope: !3, file: !3, line: 35, type: !5340, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5340 = !DISubroutineType(types: !5341)
!5341 = !{!345, !390, !7, !332, !929}
!5342 = !DILocalVariable(name: "client", arg: 1, scope: !5339, file: !3, line: 35, type: !390)
!5343 = !DILocation(line: 35, column: 49, scope: !5339)
!5344 = !DILocalVariable(name: "reg", arg: 2, scope: !5339, file: !3, line: 35, type: !7)
!5345 = !DILocation(line: 35, column: 70, scope: !5339)
!5346 = !DILocalVariable(name: "val", arg: 3, scope: !5339, file: !3, line: 36, type: !332)
!5347 = !DILocation(line: 36, column: 15, scope: !5339)
!5348 = !DILocalVariable(name: "val_count", arg: 4, scope: !5339, file: !3, line: 36, type: !929)
!5349 = !DILocation(line: 36, column: 27, scope: !5339)
!5350 = !DILocalVariable(name: "dev", scope: !5339, file: !3, line: 38, type: !4710)
!5351 = !DILocation(line: 38, column: 22, scope: !5339)
!5352 = !DILocation(line: 38, column: 47, scope: !5339)
!5353 = !DILocation(line: 38, column: 28, scope: !5339)
!5354 = !DILocalVariable(name: "ret", scope: !5339, file: !3, line: 39, type: !345)
!5355 = !DILocation(line: 39, column: 6, scope: !5339)
!5356 = !DILocation(line: 41, column: 15, scope: !5339)
!5357 = !DILocation(line: 41, column: 23, scope: !5339)
!5358 = !DILocation(line: 41, column: 2, scope: !5339)
!5359 = !DILocation(line: 42, column: 25, scope: !5339)
!5360 = !DILocation(line: 42, column: 30, scope: !5339)
!5361 = !DILocation(line: 42, column: 38, scope: !5339)
!5362 = !DILocation(line: 42, column: 43, scope: !5339)
!5363 = !DILocation(line: 42, column: 48, scope: !5339)
!5364 = !DILocation(line: 42, column: 8, scope: !5339)
!5365 = !DILocation(line: 42, column: 6, scope: !5339)
!5366 = !DILocation(line: 43, column: 17, scope: !5339)
!5367 = !DILocation(line: 43, column: 25, scope: !5339)
!5368 = !DILocation(line: 43, column: 2, scope: !5339)
!5369 = !DILocation(line: 44, column: 9, scope: !5339)
!5370 = !DILocation(line: 44, column: 2, scope: !5339)
!5371 = distinct !DISubprogram(name: "rtl2830_select", scope: !3, file: !3, line: 648, type: !4732, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5372 = !DILocalVariable(name: "muxc", arg: 1, scope: !5371, file: !3, line: 648, type: !4720)
!5373 = !DILocation(line: 648, column: 48, scope: !5371)
!5374 = !DILocalVariable(name: "chan_id", arg: 2, scope: !5371, file: !3, line: 648, type: !443)
!5375 = !DILocation(line: 648, column: 58, scope: !5371)
!5376 = !DILocalVariable(name: "client", scope: !5371, file: !3, line: 650, type: !390)
!5377 = !DILocation(line: 650, column: 21, scope: !5371)
!5378 = !DILocation(line: 650, column: 43, scope: !5371)
!5379 = !DILocation(line: 650, column: 30, scope: !5371)
!5380 = !DILocalVariable(name: "dev", scope: !5371, file: !3, line: 651, type: !4710)
!5381 = !DILocation(line: 651, column: 22, scope: !5371)
!5382 = !DILocation(line: 651, column: 47, scope: !5371)
!5383 = !DILocation(line: 651, column: 28, scope: !5371)
!5384 = !DILocalVariable(name: "ret", scope: !5371, file: !3, line: 652, type: !345)
!5385 = !DILocation(line: 652, column: 6, scope: !5371)
!5386 = !DILocation(line: 658, column: 27, scope: !5371)
!5387 = !DILocation(line: 658, column: 32, scope: !5371)
!5388 = !DILocation(line: 658, column: 8, scope: !5371)
!5389 = !DILocation(line: 658, column: 6, scope: !5371)
!5390 = !DILocation(line: 659, column: 6, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5371, file: !3, line: 659, column: 6)
!5392 = !DILocation(line: 659, column: 6, scope: !5371)
!5393 = !DILocation(line: 660, column: 3, scope: !5391)
!5394 = !DILocation(line: 662, column: 2, scope: !5371)
!5395 = !DILabel(scope: !5371, name: "err", file: !3, line: 663)
!5396 = !DILocation(line: 663, column: 1, scope: !5371)
!5397 = !DILocation(line: 665, column: 9, scope: !5371)
!5398 = !DILocation(line: 665, column: 2, scope: !5371)
!5399 = !DILocation(line: 666, column: 1, scope: !5371)
!5400 = distinct !DISubprogram(name: "rtl2830_get_dvb_frontend", scope: !3, file: !3, line: 668, type: !4694, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5401 = !DILocalVariable(name: "client", arg: 1, scope: !5400, file: !3, line: 668, type: !390)
!5402 = !DILocation(line: 668, column: 73, scope: !5400)
!5403 = !DILocalVariable(name: "dev", scope: !5400, file: !3, line: 670, type: !4710)
!5404 = !DILocation(line: 670, column: 22, scope: !5400)
!5405 = !DILocation(line: 670, column: 47, scope: !5400)
!5406 = !DILocation(line: 670, column: 28, scope: !5400)
!5407 = !DILocation(line: 674, column: 10, scope: !5400)
!5408 = !DILocation(line: 674, column: 15, scope: !5400)
!5409 = !DILocation(line: 674, column: 2, scope: !5400)
!5410 = distinct !DISubprogram(name: "rtl2830_get_i2c_adapter", scope: !3, file: !3, line: 677, type: !4698, scopeLine: 678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5411 = !DILocalVariable(name: "client", arg: 1, scope: !5410, file: !3, line: 677, type: !390)
!5412 = !DILocation(line: 677, column: 71, scope: !5410)
!5413 = !DILocalVariable(name: "dev", scope: !5410, file: !3, line: 679, type: !4710)
!5414 = !DILocation(line: 679, column: 22, scope: !5410)
!5415 = !DILocation(line: 679, column: 47, scope: !5410)
!5416 = !DILocation(line: 679, column: 28, scope: !5410)
!5417 = !DILocation(line: 683, column: 9, scope: !5410)
!5418 = !DILocation(line: 683, column: 14, scope: !5410)
!5419 = !DILocation(line: 683, column: 20, scope: !5410)
!5420 = !DILocation(line: 683, column: 2, scope: !5410)
!5421 = distinct !DISubprogram(name: "rtl2830_pid_filter", scope: !3, file: !3, line: 601, type: !4702, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5422 = !DILocalVariable(name: "fe", arg: 1, scope: !5421, file: !3, line: 601, type: !4353)
!5423 = !DILocation(line: 601, column: 52, scope: !5421)
!5424 = !DILocalVariable(name: "index", arg: 2, scope: !5421, file: !3, line: 601, type: !336)
!5425 = !DILocation(line: 601, column: 59, scope: !5421)
!5426 = !DILocalVariable(name: "pid", arg: 3, scope: !5421, file: !3, line: 601, type: !428)
!5427 = !DILocation(line: 601, column: 70, scope: !5421)
!5428 = !DILocalVariable(name: "onoff", arg: 4, scope: !5421, file: !3, line: 601, type: !345)
!5429 = !DILocation(line: 601, column: 79, scope: !5421)
!5430 = !DILocalVariable(name: "client", scope: !5421, file: !3, line: 603, type: !390)
!5431 = !DILocation(line: 603, column: 21, scope: !5421)
!5432 = !DILocation(line: 603, column: 30, scope: !5421)
!5433 = !DILocation(line: 603, column: 34, scope: !5421)
!5434 = !DILocalVariable(name: "dev", scope: !5421, file: !3, line: 604, type: !4710)
!5435 = !DILocation(line: 604, column: 22, scope: !5421)
!5436 = !DILocation(line: 604, column: 47, scope: !5421)
!5437 = !DILocation(line: 604, column: 28, scope: !5421)
!5438 = !DILocalVariable(name: "ret", scope: !5421, file: !3, line: 605, type: !345)
!5439 = !DILocation(line: 605, column: 6, scope: !5421)
!5440 = !DILocalVariable(name: "buf", scope: !5421, file: !3, line: 606, type: !5441)
!5441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 32, elements: !2435)
!5442 = !DILocation(line: 606, column: 5, scope: !5421)
!5443 = !DILocation(line: 612, column: 6, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5421, file: !3, line: 612, column: 6)
!5445 = !DILocation(line: 612, column: 10, scope: !5444)
!5446 = !DILocation(line: 612, column: 19, scope: !5444)
!5447 = !DILocation(line: 612, column: 22, scope: !5444)
!5448 = !DILocation(line: 612, column: 28, scope: !5444)
!5449 = !DILocation(line: 612, column: 6, scope: !5421)
!5450 = !DILocation(line: 613, column: 3, scope: !5444)
!5451 = !DILocation(line: 615, column: 6, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !5421, file: !3, line: 615, column: 6)
!5453 = !DILocation(line: 615, column: 6, scope: !5421)
!5454 = !DILocation(line: 616, column: 11, scope: !5452)
!5455 = !DILocation(line: 616, column: 19, scope: !5452)
!5456 = !DILocation(line: 616, column: 24, scope: !5452)
!5457 = !DILocation(line: 616, column: 3, scope: !5452)
!5458 = !DILocation(line: 618, column: 13, scope: !5452)
!5459 = !DILocation(line: 618, column: 21, scope: !5452)
!5460 = !DILocation(line: 618, column: 26, scope: !5452)
!5461 = !DILocation(line: 618, column: 3, scope: !5452)
!5462 = !DILocation(line: 621, column: 12, scope: !5421)
!5463 = !DILocation(line: 621, column: 17, scope: !5421)
!5464 = !DILocation(line: 621, column: 25, scope: !5421)
!5465 = !DILocation(line: 621, column: 32, scope: !5421)
!5466 = !DILocation(line: 621, column: 11, scope: !5421)
!5467 = !DILocation(line: 621, column: 2, scope: !5421)
!5468 = !DILocation(line: 621, column: 9, scope: !5421)
!5469 = !DILocation(line: 622, column: 12, scope: !5421)
!5470 = !DILocation(line: 622, column: 17, scope: !5421)
!5471 = !DILocation(line: 622, column: 25, scope: !5421)
!5472 = !DILocation(line: 622, column: 32, scope: !5421)
!5473 = !DILocation(line: 622, column: 11, scope: !5421)
!5474 = !DILocation(line: 622, column: 2, scope: !5421)
!5475 = !DILocation(line: 622, column: 9, scope: !5421)
!5476 = !DILocation(line: 623, column: 12, scope: !5421)
!5477 = !DILocation(line: 623, column: 17, scope: !5421)
!5478 = !DILocation(line: 623, column: 25, scope: !5421)
!5479 = !DILocation(line: 623, column: 32, scope: !5421)
!5480 = !DILocation(line: 623, column: 11, scope: !5421)
!5481 = !DILocation(line: 623, column: 2, scope: !5421)
!5482 = !DILocation(line: 623, column: 9, scope: !5421)
!5483 = !DILocation(line: 624, column: 12, scope: !5421)
!5484 = !DILocation(line: 624, column: 17, scope: !5421)
!5485 = !DILocation(line: 624, column: 25, scope: !5421)
!5486 = !DILocation(line: 624, column: 32, scope: !5421)
!5487 = !DILocation(line: 624, column: 11, scope: !5421)
!5488 = !DILocation(line: 624, column: 2, scope: !5421)
!5489 = !DILocation(line: 624, column: 9, scope: !5421)
!5490 = !DILocation(line: 625, column: 27, scope: !5421)
!5491 = !DILocation(line: 625, column: 42, scope: !5421)
!5492 = !DILocation(line: 625, column: 8, scope: !5421)
!5493 = !DILocation(line: 625, column: 6, scope: !5421)
!5494 = !DILocation(line: 626, column: 6, scope: !5495)
!5495 = distinct !DILexicalBlock(scope: !5421, file: !3, line: 626, column: 6)
!5496 = !DILocation(line: 626, column: 6, scope: !5421)
!5497 = !DILocation(line: 627, column: 3, scope: !5495)
!5498 = !DILocation(line: 630, column: 12, scope: !5421)
!5499 = !DILocation(line: 630, column: 16, scope: !5421)
!5500 = !DILocation(line: 630, column: 22, scope: !5421)
!5501 = !DILocation(line: 630, column: 11, scope: !5421)
!5502 = !DILocation(line: 630, column: 2, scope: !5421)
!5503 = !DILocation(line: 630, column: 9, scope: !5421)
!5504 = !DILocation(line: 631, column: 12, scope: !5421)
!5505 = !DILocation(line: 631, column: 16, scope: !5421)
!5506 = !DILocation(line: 631, column: 22, scope: !5421)
!5507 = !DILocation(line: 631, column: 11, scope: !5421)
!5508 = !DILocation(line: 631, column: 2, scope: !5421)
!5509 = !DILocation(line: 631, column: 9, scope: !5421)
!5510 = !DILocation(line: 632, column: 27, scope: !5421)
!5511 = !DILocation(line: 632, column: 47, scope: !5421)
!5512 = !DILocation(line: 632, column: 45, scope: !5421)
!5513 = !DILocation(line: 632, column: 41, scope: !5421)
!5514 = !DILocation(line: 632, column: 54, scope: !5421)
!5515 = !DILocation(line: 632, column: 8, scope: !5421)
!5516 = !DILocation(line: 632, column: 6, scope: !5421)
!5517 = !DILocation(line: 633, column: 6, scope: !5518)
!5518 = distinct !DILexicalBlock(scope: !5421, file: !3, line: 633, column: 6)
!5519 = !DILocation(line: 633, column: 6, scope: !5421)
!5520 = !DILocation(line: 634, column: 3, scope: !5518)
!5521 = !DILocation(line: 636, column: 2, scope: !5421)
!5522 = !DILabel(scope: !5421, name: "err", file: !3, line: 637)
!5523 = !DILocation(line: 637, column: 1, scope: !5421)
!5524 = !DILocation(line: 639, column: 9, scope: !5421)
!5525 = !DILocation(line: 639, column: 2, scope: !5421)
!5526 = !DILocation(line: 640, column: 1, scope: !5421)
!5527 = distinct !DISubprogram(name: "rtl2830_pid_filter_ctrl", scope: !3, file: !3, line: 577, type: !4571, scopeLine: 578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5528 = !DILocalVariable(name: "fe", arg: 1, scope: !5527, file: !3, line: 577, type: !4353)
!5529 = !DILocation(line: 577, column: 57, scope: !5527)
!5530 = !DILocalVariable(name: "onoff", arg: 2, scope: !5527, file: !3, line: 577, type: !345)
!5531 = !DILocation(line: 577, column: 65, scope: !5527)
!5532 = !DILocalVariable(name: "client", scope: !5527, file: !3, line: 579, type: !390)
!5533 = !DILocation(line: 579, column: 21, scope: !5527)
!5534 = !DILocation(line: 579, column: 30, scope: !5527)
!5535 = !DILocation(line: 579, column: 34, scope: !5527)
!5536 = !DILocalVariable(name: "ret", scope: !5527, file: !3, line: 580, type: !345)
!5537 = !DILocation(line: 580, column: 6, scope: !5527)
!5538 = !DILocalVariable(name: "u8tmp", scope: !5527, file: !3, line: 581, type: !336)
!5539 = !DILocation(line: 581, column: 5, scope: !5527)
!5540 = !DILocation(line: 586, column: 6, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5527, file: !3, line: 586, column: 6)
!5542 = !DILocation(line: 586, column: 6, scope: !5527)
!5543 = !DILocation(line: 587, column: 9, scope: !5541)
!5544 = !DILocation(line: 587, column: 3, scope: !5541)
!5545 = !DILocation(line: 589, column: 9, scope: !5541)
!5546 = !DILocation(line: 591, column: 28, scope: !5527)
!5547 = !DILocation(line: 591, column: 49, scope: !5527)
!5548 = !DILocation(line: 591, column: 8, scope: !5527)
!5549 = !DILocation(line: 591, column: 6, scope: !5527)
!5550 = !DILocation(line: 592, column: 6, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5527, file: !3, line: 592, column: 6)
!5552 = !DILocation(line: 592, column: 6, scope: !5527)
!5553 = !DILocation(line: 593, column: 3, scope: !5551)
!5554 = !DILocation(line: 595, column: 2, scope: !5527)
!5555 = !DILabel(scope: !5527, name: "err", file: !3, line: 596)
!5556 = !DILocation(line: 596, column: 1, scope: !5527)
!5557 = !DILocation(line: 598, column: 9, scope: !5527)
!5558 = !DILocation(line: 598, column: 2, scope: !5527)
!5559 = !DILocation(line: 599, column: 1, scope: !5527)
!5560 = distinct !DISubprogram(name: "get_order", scope: !5561, file: !5561, line: 29, type: !5562, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5561 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5562 = !DISubroutineType(types: !5563)
!5563 = !{!345, !343}
!5564 = !DILocalVariable(name: "x", arg: 1, scope: !5565, file: !5566, line: 366, type: !541)
!5565 = distinct !DISubprogram(name: "fls64", scope: !5566, file: !5566, line: 366, type: !5567, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5566 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5567 = !DISubroutineType(types: !5568)
!5568 = !{!345, !541}
!5569 = !DILocation(line: 366, column: 40, scope: !5565, inlinedAt: !5570)
!5570 = distinct !DILocation(line: 46, column: 9, scope: !5560)
!5571 = !DILocalVariable(name: "bitpos", scope: !5565, file: !5566, line: 368, type: !345)
!5572 = !DILocation(line: 368, column: 6, scope: !5565, inlinedAt: !5570)
!5573 = !DILocalVariable(name: "size", arg: 1, scope: !5560, file: !5561, line: 29, type: !343)
!5574 = !DILocation(line: 29, column: 63, scope: !5560)
!5575 = !DILocation(line: 31, column: 27, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5560, file: !5561, line: 31, column: 6)
!5577 = !DILocation(line: 31, column: 6, scope: !5576)
!5578 = !DILocation(line: 31, column: 6, scope: !5560)
!5579 = !DILocation(line: 32, column: 8, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5581, file: !5561, line: 32, column: 7)
!5581 = distinct !DILexicalBlock(scope: !5576, file: !5561, line: 31, column: 34)
!5582 = !DILocation(line: 32, column: 7, scope: !5581)
!5583 = !DILocation(line: 33, column: 4, scope: !5580)
!5584 = !DILocation(line: 35, column: 7, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5581, file: !5561, line: 35, column: 7)
!5586 = !DILocation(line: 35, column: 12, scope: !5585)
!5587 = !DILocation(line: 35, column: 7, scope: !5581)
!5588 = !DILocation(line: 36, column: 4, scope: !5585)
!5589 = !DILocation(line: 38, column: 10, scope: !5581)
!5590 = !DILocation(line: 38, column: 28, scope: !5581)
!5591 = !DILocation(line: 38, column: 41, scope: !5581)
!5592 = !DILocation(line: 38, column: 3, scope: !5581)
!5593 = !DILocation(line: 41, column: 6, scope: !5560)
!5594 = !DILocation(line: 42, column: 7, scope: !5560)
!5595 = !DILocation(line: 46, column: 15, scope: !5560)
!5596 = !DILocation(line: 374, column: 2, scope: !5565, inlinedAt: !5570)
!5597 = !DILocation(line: 376, column: 14, scope: !5565, inlinedAt: !5570)
!5598 = !{i32 374567}
!5599 = !DILocation(line: 377, column: 9, scope: !5565, inlinedAt: !5570)
!5600 = !DILocation(line: 377, column: 16, scope: !5565, inlinedAt: !5570)
!5601 = !DILocation(line: 46, column: 2, scope: !5560)
!5602 = !DILocation(line: 48, column: 1, scope: !5560)
!5603 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5604, file: !5604, line: 30, type: !5605, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5604 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5605 = !DISubroutineType(types: !5606)
!5606 = !{!345, !540}
!5607 = !DILocation(line: 366, column: 40, scope: !5565, inlinedAt: !5608)
!5608 = distinct !DILocation(line: 32, column: 9, scope: !5603)
!5609 = !DILocation(line: 368, column: 6, scope: !5565, inlinedAt: !5608)
!5610 = !DILocalVariable(name: "n", arg: 1, scope: !5603, file: !5604, line: 30, type: !540)
!5611 = !DILocation(line: 30, column: 21, scope: !5603)
!5612 = !DILocation(line: 32, column: 15, scope: !5603)
!5613 = !DILocation(line: 374, column: 2, scope: !5565, inlinedAt: !5608)
!5614 = !DILocation(line: 376, column: 14, scope: !5565, inlinedAt: !5608)
!5615 = !DILocation(line: 377, column: 9, scope: !5565, inlinedAt: !5608)
!5616 = !DILocation(line: 377, column: 16, scope: !5565, inlinedAt: !5608)
!5617 = !DILocation(line: 32, column: 18, scope: !5603)
!5618 = !DILocation(line: 32, column: 2, scope: !5603)
!5619 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5620, file: !5620, line: 137, type: !5621, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5620 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5621 = !DISubroutineType(types: !5622)
!5622 = !{!332, !1274, !2203, !929, !333}
!5623 = !DILocalVariable(name: "s", arg: 1, scope: !5619, file: !5620, line: 137, type: !1274)
!5624 = !DILocation(line: 137, column: 54, scope: !5619)
!5625 = !DILocalVariable(name: "object", arg: 2, scope: !5619, file: !5620, line: 137, type: !2203)
!5626 = !DILocation(line: 137, column: 69, scope: !5619)
!5627 = !DILocalVariable(name: "size", arg: 3, scope: !5619, file: !5620, line: 138, type: !929)
!5628 = !DILocation(line: 138, column: 12, scope: !5619)
!5629 = !DILocalVariable(name: "flags", arg: 4, scope: !5619, file: !5620, line: 138, type: !333)
!5630 = !DILocation(line: 138, column: 24, scope: !5619)
!5631 = !DILocation(line: 140, column: 17, scope: !5619)
!5632 = !DILocation(line: 140, column: 2, scope: !5619)
!5633 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !60, file: !60, line: 660, type: !5634, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5634 = !DISubroutineType(types: !5635)
!5635 = !{null, !3496, !332}
!5636 = !DILocalVariable(name: "dev", arg: 1, scope: !5633, file: !60, line: 660, type: !3496)
!5637 = !DILocation(line: 660, column: 51, scope: !5633)
!5638 = !DILocalVariable(name: "data", arg: 2, scope: !5633, file: !60, line: 660, type: !332)
!5639 = !DILocation(line: 660, column: 62, scope: !5633)
!5640 = !DILocation(line: 662, column: 21, scope: !5633)
!5641 = !DILocation(line: 662, column: 2, scope: !5633)
!5642 = !DILocation(line: 662, column: 7, scope: !5633)
!5643 = !DILocation(line: 662, column: 19, scope: !5633)
!5644 = !DILocation(line: 663, column: 1, scope: !5633)
!5645 = distinct !DISubprogram(name: "i2c_get_clientdata", scope: !95, file: !95, line: 351, type: !5646, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5646 = !DISubroutineType(types: !5647)
!5647 = !{!332, !5648}
!5648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5649, size: 64)
!5649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!5650 = !DILocalVariable(name: "client", arg: 1, scope: !5645, file: !95, line: 351, type: !5648)
!5651 = !DILocation(line: 351, column: 65, scope: !5645)
!5652 = !DILocation(line: 353, column: 26, scope: !5645)
!5653 = !DILocation(line: 353, column: 34, scope: !5645)
!5654 = !DILocation(line: 353, column: 9, scope: !5645)
!5655 = !DILocation(line: 353, column: 2, scope: !5645)
!5656 = distinct !DISubprogram(name: "i2c_lock_bus", scope: !95, file: !95, line: 763, type: !453, scopeLine: 764, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5657 = !DILocalVariable(name: "adapter", arg: 1, scope: !5656, file: !95, line: 763, type: !399)
!5658 = !DILocation(line: 763, column: 34, scope: !5656)
!5659 = !DILocalVariable(name: "flags", arg: 2, scope: !5656, file: !95, line: 763, type: !7)
!5660 = !DILocation(line: 763, column: 56, scope: !5656)
!5661 = !DILocation(line: 765, column: 2, scope: !5656)
!5662 = !DILocation(line: 765, column: 11, scope: !5656)
!5663 = !DILocation(line: 765, column: 21, scope: !5656)
!5664 = !DILocation(line: 765, column: 30, scope: !5656)
!5665 = !DILocation(line: 765, column: 39, scope: !5656)
!5666 = !DILocation(line: 766, column: 1, scope: !5656)
!5667 = distinct !DISubprogram(name: "i2c_unlock_bus", scope: !95, file: !95, line: 789, type: !453, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5668 = !DILocalVariable(name: "adapter", arg: 1, scope: !5667, file: !95, line: 789, type: !399)
!5669 = !DILocation(line: 789, column: 36, scope: !5667)
!5670 = !DILocalVariable(name: "flags", arg: 2, scope: !5667, file: !95, line: 789, type: !7)
!5671 = !DILocation(line: 789, column: 58, scope: !5667)
!5672 = !DILocation(line: 791, column: 2, scope: !5667)
!5673 = !DILocation(line: 791, column: 11, scope: !5667)
!5674 = !DILocation(line: 791, column: 21, scope: !5667)
!5675 = !DILocation(line: 791, column: 32, scope: !5667)
!5676 = !DILocation(line: 791, column: 41, scope: !5667)
!5677 = !DILocation(line: 792, column: 1, scope: !5667)
!5678 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !60, file: !60, line: 655, type: !5679, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5679 = !DISubroutineType(types: !5680)
!5680 = !{!332, !3826}
!5681 = !DILocalVariable(name: "dev", arg: 1, scope: !5678, file: !60, line: 655, type: !3826)
!5682 = !DILocation(line: 655, column: 58, scope: !5678)
!5683 = !DILocation(line: 657, column: 9, scope: !5678)
!5684 = !DILocation(line: 657, column: 14, scope: !5678)
!5685 = !DILocation(line: 657, column: 2, scope: !5678)
!5686 = distinct !DISubprogram(name: "i2c_mux_priv", scope: !4722, file: !4722, line: 46, type: !5687, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5687 = !DISubroutineType(types: !5688)
!5688 = !{!332, !4720}
!5689 = !DILocalVariable(name: "muxc", arg: 1, scope: !5686, file: !4722, line: 46, type: !4720)
!5690 = !DILocation(line: 46, column: 55, scope: !5686)
!5691 = !DILocation(line: 48, column: 9, scope: !5686)
!5692 = !DILocation(line: 48, column: 15, scope: !5686)
!5693 = !DILocation(line: 48, column: 2, scope: !5686)
!5694 = distinct !DISubprogram(name: "regmap_update_bits", scope: !298, file: !298, line: 1068, type: !5695, scopeLine: 1070, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5695 = !DISubroutineType(types: !5696)
!5696 = !{!345, !4717, !7, !7, !7}
!5697 = !DILocalVariable(name: "map", arg: 1, scope: !5694, file: !298, line: 1068, type: !4717)
!5698 = !DILocation(line: 1068, column: 53, scope: !5694)
!5699 = !DILocalVariable(name: "reg", arg: 2, scope: !5694, file: !298, line: 1068, type: !7)
!5700 = !DILocation(line: 1068, column: 71, scope: !5694)
!5701 = !DILocalVariable(name: "mask", arg: 3, scope: !5694, file: !298, line: 1069, type: !7)
!5702 = !DILocation(line: 1069, column: 23, scope: !5694)
!5703 = !DILocalVariable(name: "val", arg: 4, scope: !5694, file: !298, line: 1069, type: !7)
!5704 = !DILocation(line: 1069, column: 42, scope: !5694)
!5705 = !DILocation(line: 1071, column: 33, scope: !5694)
!5706 = !DILocation(line: 1071, column: 38, scope: !5694)
!5707 = !DILocation(line: 1071, column: 43, scope: !5694)
!5708 = !DILocation(line: 1071, column: 49, scope: !5694)
!5709 = !DILocation(line: 1071, column: 9, scope: !5694)
!5710 = !DILocation(line: 1071, column: 2, scope: !5694)
!5711 = distinct !DISubprogram(name: "rtl2830_init", scope: !3, file: !3, line: 47, type: !4480, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5712 = !DILocalVariable(name: "fe", arg: 1, scope: !5711, file: !3, line: 47, type: !4353)
!5713 = !DILocation(line: 47, column: 46, scope: !5711)
!5714 = !DILocalVariable(name: "client", scope: !5711, file: !3, line: 49, type: !390)
!5715 = !DILocation(line: 49, column: 21, scope: !5711)
!5716 = !DILocation(line: 49, column: 30, scope: !5711)
!5717 = !DILocation(line: 49, column: 34, scope: !5711)
!5718 = !DILocalVariable(name: "dev", scope: !5711, file: !3, line: 50, type: !4710)
!5719 = !DILocation(line: 50, column: 22, scope: !5711)
!5720 = !DILocation(line: 50, column: 47, scope: !5711)
!5721 = !DILocation(line: 50, column: 28, scope: !5711)
!5722 = !DILocalVariable(name: "c", scope: !5711, file: !3, line: 51, type: !4511)
!5723 = !DILocation(line: 51, column: 34, scope: !5711)
!5724 = !DILocation(line: 51, column: 39, scope: !5711)
!5725 = !DILocation(line: 51, column: 44, scope: !5711)
!5726 = !DILocation(line: 51, column: 47, scope: !5711)
!5727 = !DILocalVariable(name: "ret", scope: !5711, file: !3, line: 52, type: !345)
!5728 = !DILocation(line: 52, column: 6, scope: !5711)
!5729 = !DILocalVariable(name: "i", scope: !5711, file: !3, line: 52, type: !345)
!5730 = !DILocation(line: 52, column: 11, scope: !5711)
!5731 = !DILocalVariable(name: "tab", scope: !5711, file: !3, line: 53, type: !5732)
!5732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5733, size: 1152, elements: !5738)
!5733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl2830_reg_val_mask", file: !4712, line: 33, size: 32, elements: !5734)
!5734 = !{!5735, !5736, !5737}
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !5733, file: !4712, line: 34, baseType: !428, size: 16)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5733, file: !4712, line: 35, baseType: !336, size: 8, offset: 16)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !5733, file: !4712, line: 36, baseType: !336, size: 8, offset: 24)
!5738 = !{!5739}
!5739 = !DISubrange(count: 36)
!5740 = !DILocation(line: 53, column: 30, scope: !5711)
!5741 = !DILocation(line: 53, column: 38, scope: !5711)
!5742 = !DILocation(line: 54, column: 3, scope: !5711)
!5743 = !DILocation(line: 55, column: 3, scope: !5711)
!5744 = !DILocation(line: 56, column: 3, scope: !5711)
!5745 = !DILocation(line: 57, column: 3, scope: !5711)
!5746 = !DILocation(line: 58, column: 3, scope: !5711)
!5747 = !DILocation(line: 59, column: 3, scope: !5711)
!5748 = !DILocation(line: 60, column: 3, scope: !5711)
!5749 = !DILocation(line: 61, column: 3, scope: !5711)
!5750 = !DILocation(line: 62, column: 3, scope: !5711)
!5751 = !DILocation(line: 63, column: 3, scope: !5711)
!5752 = !DILocation(line: 64, column: 3, scope: !5711)
!5753 = !DILocation(line: 65, column: 3, scope: !5711)
!5754 = !DILocation(line: 66, column: 3, scope: !5711)
!5755 = !DILocation(line: 67, column: 3, scope: !5711)
!5756 = !DILocation(line: 68, column: 3, scope: !5711)
!5757 = !DILocation(line: 69, column: 3, scope: !5711)
!5758 = !DILocation(line: 70, column: 3, scope: !5711)
!5759 = !DILocation(line: 71, column: 3, scope: !5711)
!5760 = !DILocation(line: 72, column: 3, scope: !5711)
!5761 = !DILocation(line: 72, column: 11, scope: !5711)
!5762 = !DILocation(line: 72, column: 16, scope: !5711)
!5763 = !DILocation(line: 72, column: 23, scope: !5711)
!5764 = !DILocation(line: 73, column: 3, scope: !5711)
!5765 = !DILocation(line: 73, column: 11, scope: !5711)
!5766 = !DILocation(line: 73, column: 16, scope: !5711)
!5767 = !DILocation(line: 73, column: 23, scope: !5711)
!5768 = !DILocation(line: 74, column: 3, scope: !5711)
!5769 = !DILocation(line: 75, column: 3, scope: !5711)
!5770 = !DILocation(line: 75, column: 11, scope: !5711)
!5771 = !DILocation(line: 75, column: 16, scope: !5711)
!5772 = !DILocation(line: 75, column: 23, scope: !5711)
!5773 = !DILocation(line: 76, column: 3, scope: !5711)
!5774 = !DILocation(line: 77, column: 3, scope: !5711)
!5775 = !DILocation(line: 78, column: 3, scope: !5711)
!5776 = !DILocation(line: 79, column: 3, scope: !5711)
!5777 = !DILocation(line: 80, column: 3, scope: !5711)
!5778 = !DILocation(line: 81, column: 3, scope: !5711)
!5779 = !DILocation(line: 82, column: 3, scope: !5711)
!5780 = !DILocation(line: 83, column: 3, scope: !5711)
!5781 = !DILocation(line: 83, column: 11, scope: !5711)
!5782 = !DILocation(line: 83, column: 16, scope: !5711)
!5783 = !DILocation(line: 83, column: 23, scope: !5711)
!5784 = !DILocation(line: 84, column: 3, scope: !5711)
!5785 = !DILocation(line: 85, column: 3, scope: !5711)
!5786 = !DILocation(line: 86, column: 3, scope: !5711)
!5787 = !DILocation(line: 87, column: 3, scope: !5711)
!5788 = !DILocation(line: 88, column: 3, scope: !5711)
!5789 = !DILocation(line: 89, column: 3, scope: !5711)
!5790 = !DILocation(line: 92, column: 9, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5711, file: !3, line: 92, column: 2)
!5792 = !DILocation(line: 92, column: 7, scope: !5791)
!5793 = !DILocation(line: 92, column: 14, scope: !5794)
!5794 = distinct !DILexicalBlock(scope: !5791, file: !3, line: 92, column: 2)
!5795 = !DILocation(line: 92, column: 16, scope: !5794)
!5796 = !DILocation(line: 92, column: 2, scope: !5791)
!5797 = !DILocation(line: 93, column: 29, scope: !5798)
!5798 = distinct !DILexicalBlock(scope: !5794, file: !3, line: 92, column: 40)
!5799 = !DILocation(line: 93, column: 41, scope: !5798)
!5800 = !DILocation(line: 93, column: 37, scope: !5798)
!5801 = !DILocation(line: 93, column: 44, scope: !5798)
!5802 = !DILocation(line: 93, column: 53, scope: !5798)
!5803 = !DILocation(line: 93, column: 49, scope: !5798)
!5804 = !DILocation(line: 93, column: 56, scope: !5798)
!5805 = !DILocation(line: 94, column: 12, scope: !5798)
!5806 = !DILocation(line: 94, column: 8, scope: !5798)
!5807 = !DILocation(line: 94, column: 15, scope: !5798)
!5808 = !DILocation(line: 93, column: 9, scope: !5798)
!5809 = !DILocation(line: 93, column: 7, scope: !5798)
!5810 = !DILocation(line: 95, column: 7, scope: !5811)
!5811 = distinct !DILexicalBlock(scope: !5798, file: !3, line: 95, column: 7)
!5812 = !DILocation(line: 95, column: 7, scope: !5798)
!5813 = !DILocation(line: 96, column: 4, scope: !5811)
!5814 = !DILocation(line: 97, column: 2, scope: !5798)
!5815 = !DILocation(line: 92, column: 36, scope: !5794)
!5816 = !DILocation(line: 92, column: 2, scope: !5794)
!5817 = distinct !{!5817, !5796, !5818}
!5818 = !DILocation(line: 97, column: 2, scope: !5791)
!5819 = !DILocation(line: 99, column: 27, scope: !5711)
!5820 = !DILocation(line: 99, column: 8, scope: !5711)
!5821 = !DILocation(line: 99, column: 6, scope: !5711)
!5822 = !DILocation(line: 100, column: 6, scope: !5823)
!5823 = distinct !DILexicalBlock(scope: !5711, file: !3, line: 100, column: 6)
!5824 = !DILocation(line: 100, column: 6, scope: !5711)
!5825 = !DILocation(line: 101, column: 3, scope: !5823)
!5826 = !DILocation(line: 103, column: 27, scope: !5711)
!5827 = !DILocation(line: 103, column: 8, scope: !5711)
!5828 = !DILocation(line: 103, column: 6, scope: !5711)
!5829 = !DILocation(line: 105, column: 6, scope: !5830)
!5830 = distinct !DILexicalBlock(scope: !5711, file: !3, line: 105, column: 6)
!5831 = !DILocation(line: 105, column: 6, scope: !5711)
!5832 = !DILocation(line: 106, column: 3, scope: !5830)
!5833 = !DILocation(line: 111, column: 28, scope: !5711)
!5834 = !DILocation(line: 111, column: 8, scope: !5711)
!5835 = !DILocation(line: 111, column: 6, scope: !5711)
!5836 = !DILocation(line: 112, column: 6, scope: !5837)
!5837 = distinct !DILexicalBlock(scope: !5711, file: !3, line: 112, column: 6)
!5838 = !DILocation(line: 112, column: 6, scope: !5711)
!5839 = !DILocation(line: 113, column: 3, scope: !5837)
!5840 = !DILocation(line: 115, column: 28, scope: !5711)
!5841 = !DILocation(line: 115, column: 8, scope: !5711)
!5842 = !DILocation(line: 115, column: 6, scope: !5711)
!5843 = !DILocation(line: 116, column: 6, scope: !5844)
!5844 = distinct !DILexicalBlock(scope: !5711, file: !3, line: 116, column: 6)
!5845 = !DILocation(line: 116, column: 6, scope: !5711)
!5846 = !DILocation(line: 117, column: 3, scope: !5844)
!5847 = !DILocation(line: 120, column: 2, scope: !5711)
!5848 = !DILocation(line: 120, column: 5, scope: !5711)
!5849 = !DILocation(line: 120, column: 14, scope: !5711)
!5850 = !DILocation(line: 120, column: 18, scope: !5711)
!5851 = !DILocation(line: 121, column: 2, scope: !5711)
!5852 = !DILocation(line: 121, column: 5, scope: !5711)
!5853 = !DILocation(line: 121, column: 14, scope: !5711)
!5854 = !DILocation(line: 121, column: 22, scope: !5711)
!5855 = !DILocation(line: 121, column: 28, scope: !5711)
!5856 = !DILocation(line: 122, column: 2, scope: !5711)
!5857 = !DILocation(line: 122, column: 5, scope: !5711)
!5858 = !DILocation(line: 122, column: 9, scope: !5711)
!5859 = !DILocation(line: 122, column: 13, scope: !5711)
!5860 = !DILocation(line: 123, column: 2, scope: !5711)
!5861 = !DILocation(line: 123, column: 5, scope: !5711)
!5862 = !DILocation(line: 123, column: 9, scope: !5711)
!5863 = !DILocation(line: 123, column: 17, scope: !5711)
!5864 = !DILocation(line: 123, column: 23, scope: !5711)
!5865 = !DILocation(line: 124, column: 2, scope: !5711)
!5866 = !DILocation(line: 124, column: 5, scope: !5711)
!5867 = !DILocation(line: 124, column: 20, scope: !5711)
!5868 = !DILocation(line: 124, column: 24, scope: !5711)
!5869 = !DILocation(line: 125, column: 2, scope: !5711)
!5870 = !DILocation(line: 125, column: 5, scope: !5711)
!5871 = !DILocation(line: 125, column: 20, scope: !5711)
!5872 = !DILocation(line: 125, column: 28, scope: !5711)
!5873 = !DILocation(line: 125, column: 34, scope: !5711)
!5874 = !DILocation(line: 126, column: 2, scope: !5711)
!5875 = !DILocation(line: 126, column: 5, scope: !5711)
!5876 = !DILocation(line: 126, column: 20, scope: !5711)
!5877 = !DILocation(line: 126, column: 24, scope: !5711)
!5878 = !DILocation(line: 127, column: 2, scope: !5711)
!5879 = !DILocation(line: 127, column: 5, scope: !5711)
!5880 = !DILocation(line: 127, column: 20, scope: !5711)
!5881 = !DILocation(line: 127, column: 28, scope: !5711)
!5882 = !DILocation(line: 127, column: 34, scope: !5711)
!5883 = !DILocation(line: 129, column: 2, scope: !5711)
!5884 = !DILocation(line: 129, column: 7, scope: !5711)
!5885 = !DILocation(line: 129, column: 16, scope: !5711)
!5886 = !DILocation(line: 131, column: 9, scope: !5711)
!5887 = !DILocation(line: 131, column: 2, scope: !5711)
!5888 = !DILabel(scope: !5711, name: "err", file: !3, line: 132)
!5889 = !DILocation(line: 132, column: 1, scope: !5711)
!5890 = !DILocation(line: 134, column: 9, scope: !5711)
!5891 = !DILocation(line: 134, column: 2, scope: !5711)
!5892 = !DILocation(line: 135, column: 1, scope: !5711)
!5893 = distinct !DISubprogram(name: "rtl2830_sleep", scope: !3, file: !3, line: 137, type: !4480, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5894 = !DILocalVariable(name: "fe", arg: 1, scope: !5893, file: !3, line: 137, type: !4353)
!5895 = !DILocation(line: 137, column: 47, scope: !5893)
!5896 = !DILocalVariable(name: "client", scope: !5893, file: !3, line: 139, type: !390)
!5897 = !DILocation(line: 139, column: 21, scope: !5893)
!5898 = !DILocation(line: 139, column: 30, scope: !5893)
!5899 = !DILocation(line: 139, column: 34, scope: !5893)
!5900 = !DILocalVariable(name: "dev", scope: !5893, file: !3, line: 140, type: !4710)
!5901 = !DILocation(line: 140, column: 22, scope: !5893)
!5902 = !DILocation(line: 140, column: 47, scope: !5893)
!5903 = !DILocation(line: 140, column: 28, scope: !5893)
!5904 = !DILocation(line: 142, column: 2, scope: !5893)
!5905 = !DILocation(line: 142, column: 7, scope: !5893)
!5906 = !DILocation(line: 142, column: 16, scope: !5893)
!5907 = !DILocation(line: 143, column: 2, scope: !5893)
!5908 = !DILocation(line: 143, column: 7, scope: !5893)
!5909 = !DILocation(line: 143, column: 17, scope: !5893)
!5910 = !DILocation(line: 145, column: 2, scope: !5893)
!5911 = !DILocalVariable(name: "fe", arg: 1, scope: !4652, file: !3, line: 158, type: !4353)
!5912 = !DILocation(line: 158, column: 54, scope: !4652)
!5913 = !DILocalVariable(name: "client", scope: !4652, file: !3, line: 160, type: !390)
!5914 = !DILocation(line: 160, column: 21, scope: !4652)
!5915 = !DILocation(line: 160, column: 30, scope: !4652)
!5916 = !DILocation(line: 160, column: 34, scope: !4652)
!5917 = !DILocalVariable(name: "dev", scope: !4652, file: !3, line: 161, type: !4710)
!5918 = !DILocation(line: 161, column: 22, scope: !4652)
!5919 = !DILocation(line: 161, column: 47, scope: !4652)
!5920 = !DILocation(line: 161, column: 28, scope: !4652)
!5921 = !DILocalVariable(name: "c", scope: !4652, file: !3, line: 162, type: !4511)
!5922 = !DILocation(line: 162, column: 34, scope: !4652)
!5923 = !DILocation(line: 162, column: 39, scope: !4652)
!5924 = !DILocation(line: 162, column: 43, scope: !4652)
!5925 = !DILocalVariable(name: "ret", scope: !4652, file: !3, line: 163, type: !345)
!5926 = !DILocation(line: 163, column: 6, scope: !4652)
!5927 = !DILocalVariable(name: "i", scope: !4652, file: !3, line: 163, type: !345)
!5928 = !DILocation(line: 163, column: 11, scope: !4652)
!5929 = !DILocalVariable(name: "num", scope: !4652, file: !3, line: 164, type: !540)
!5930 = !DILocation(line: 164, column: 6, scope: !4652)
!5931 = !DILocalVariable(name: "buf", scope: !4652, file: !3, line: 165, type: !5932)
!5932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 24, elements: !1005)
!5933 = !DILocation(line: 165, column: 5, scope: !4652)
!5934 = !DILocalVariable(name: "u8tmp", scope: !4652, file: !3, line: 165, type: !336)
!5935 = !DILocation(line: 165, column: 13, scope: !4652)
!5936 = !DILocalVariable(name: "if_ctl", scope: !4652, file: !3, line: 166, type: !443)
!5937 = !DILocation(line: 166, column: 6, scope: !4652)
!5938 = !DILocalVariable(name: "if_frequency", scope: !4652, file: !3, line: 166, type: !443)
!5939 = !DILocation(line: 166, column: 14, scope: !4652)
!5940 = !DILocation(line: 195, column: 6, scope: !5941)
!5941 = distinct !DILexicalBlock(scope: !4652, file: !3, line: 195, column: 6)
!5942 = !DILocation(line: 195, column: 10, scope: !5941)
!5943 = !DILocation(line: 195, column: 14, scope: !5941)
!5944 = !DILocation(line: 195, column: 24, scope: !5941)
!5945 = !DILocation(line: 195, column: 6, scope: !4652)
!5946 = !DILocation(line: 196, column: 3, scope: !5941)
!5947 = !DILocation(line: 196, column: 7, scope: !5941)
!5948 = !DILocation(line: 196, column: 11, scope: !5941)
!5949 = !DILocation(line: 196, column: 21, scope: !5941)
!5950 = !DILocation(line: 196, column: 32, scope: !5941)
!5951 = !DILocation(line: 198, column: 10, scope: !4652)
!5952 = !DILocation(line: 198, column: 13, scope: !4652)
!5953 = !DILocation(line: 198, column: 2, scope: !4652)
!5954 = !DILocation(line: 200, column: 5, scope: !5955)
!5955 = distinct !DILexicalBlock(scope: !4652, file: !3, line: 198, column: 27)
!5956 = !DILocation(line: 201, column: 3, scope: !5955)
!5957 = !DILocation(line: 203, column: 5, scope: !5955)
!5958 = !DILocation(line: 204, column: 3, scope: !5955)
!5959 = !DILocation(line: 206, column: 5, scope: !5955)
!5960 = !DILocation(line: 207, column: 3, scope: !5955)
!5961 = !DILocation(line: 209, column: 3, scope: !5955)
!5962 = !DILocation(line: 211, column: 3, scope: !5955)
!5963 = !DILocation(line: 214, column: 28, scope: !4652)
!5964 = !DILocation(line: 214, column: 49, scope: !4652)
!5965 = !DILocation(line: 214, column: 51, scope: !4652)
!5966 = !DILocation(line: 214, column: 8, scope: !4652)
!5967 = !DILocation(line: 214, column: 6, scope: !4652)
!5968 = !DILocation(line: 215, column: 6, scope: !5969)
!5969 = distinct !DILexicalBlock(scope: !4652, file: !3, line: 215, column: 6)
!5970 = !DILocation(line: 215, column: 6, scope: !4652)
!5971 = !DILocation(line: 216, column: 3, scope: !5969)
!5972 = !DILocation(line: 219, column: 6, scope: !5973)
!5973 = distinct !DILexicalBlock(scope: !4652, file: !3, line: 219, column: 6)
!5974 = !DILocation(line: 219, column: 10, scope: !5973)
!5975 = !DILocation(line: 219, column: 14, scope: !5973)
!5976 = !DILocation(line: 219, column: 24, scope: !5973)
!5977 = !DILocation(line: 219, column: 6, scope: !4652)
!5978 = !DILocation(line: 220, column: 9, scope: !5973)
!5979 = !DILocation(line: 220, column: 13, scope: !5973)
!5980 = !DILocation(line: 220, column: 17, scope: !5973)
!5981 = !DILocation(line: 220, column: 27, scope: !5973)
!5982 = !DILocation(line: 220, column: 44, scope: !5973)
!5983 = !DILocation(line: 220, column: 7, scope: !5973)
!5984 = !DILocation(line: 220, column: 3, scope: !5973)
!5985 = !DILocation(line: 222, column: 7, scope: !5973)
!5986 = !DILocation(line: 223, column: 6, scope: !5987)
!5987 = distinct !DILexicalBlock(scope: !4652, file: !3, line: 223, column: 6)
!5988 = !DILocation(line: 223, column: 6, scope: !4652)
!5989 = !DILocation(line: 224, column: 3, scope: !5987)
!5990 = !DILocation(line: 226, column: 8, scope: !4652)
!5991 = !DILocation(line: 226, column: 23, scope: !4652)
!5992 = !DILocation(line: 226, column: 28, scope: !4652)
!5993 = !DILocation(line: 226, column: 35, scope: !4652)
!5994 = !DILocation(line: 226, column: 21, scope: !4652)
!5995 = !DILocation(line: 226, column: 6, scope: !4652)
!5996 = !DILocation(line: 227, column: 6, scope: !4652)
!5997 = !DILocation(line: 228, column: 16, scope: !4652)
!5998 = !DILocation(line: 228, column: 21, scope: !4652)
!5999 = !DILocation(line: 228, column: 26, scope: !4652)
!6000 = !DILocation(line: 228, column: 33, scope: !4652)
!6001 = !DILocation(line: 228, column: 8, scope: !4652)
!6002 = !DILocation(line: 228, column: 6, scope: !4652)
!6003 = !DILocation(line: 229, column: 9, scope: !4652)
!6004 = !DILocation(line: 229, column: 8, scope: !4652)
!6005 = !DILocation(line: 229, column: 6, scope: !4652)
!6006 = !DILocation(line: 230, column: 11, scope: !4652)
!6007 = !DILocation(line: 230, column: 15, scope: !4652)
!6008 = !DILocation(line: 230, column: 9, scope: !4652)
!6009 = !DILocation(line: 234, column: 12, scope: !4652)
!6010 = !DILocation(line: 234, column: 19, scope: !4652)
!6011 = !DILocation(line: 234, column: 26, scope: !4652)
!6012 = !DILocation(line: 234, column: 11, scope: !4652)
!6013 = !DILocation(line: 234, column: 2, scope: !4652)
!6014 = !DILocation(line: 234, column: 9, scope: !4652)
!6015 = !DILocation(line: 235, column: 12, scope: !4652)
!6016 = !DILocation(line: 235, column: 19, scope: !4652)
!6017 = !DILocation(line: 235, column: 26, scope: !4652)
!6018 = !DILocation(line: 235, column: 11, scope: !4652)
!6019 = !DILocation(line: 235, column: 2, scope: !4652)
!6020 = !DILocation(line: 235, column: 9, scope: !4652)
!6021 = !DILocation(line: 236, column: 12, scope: !4652)
!6022 = !DILocation(line: 236, column: 19, scope: !4652)
!6023 = !DILocation(line: 236, column: 26, scope: !4652)
!6024 = !DILocation(line: 236, column: 11, scope: !4652)
!6025 = !DILocation(line: 236, column: 2, scope: !4652)
!6026 = !DILocation(line: 236, column: 9, scope: !4652)
!6027 = !DILocation(line: 238, column: 26, scope: !4652)
!6028 = !DILocation(line: 238, column: 8, scope: !4652)
!6029 = !DILocation(line: 238, column: 6, scope: !4652)
!6030 = !DILocation(line: 239, column: 6, scope: !6031)
!6031 = distinct !DILexicalBlock(scope: !4652, file: !3, line: 239, column: 6)
!6032 = !DILocation(line: 239, column: 6, scope: !4652)
!6033 = !DILocation(line: 240, column: 3, scope: !6031)
!6034 = !DILocation(line: 242, column: 12, scope: !4652)
!6035 = !DILocation(line: 242, column: 18, scope: !4652)
!6036 = !DILocation(line: 242, column: 2, scope: !4652)
!6037 = !DILocation(line: 242, column: 9, scope: !4652)
!6038 = !DILocation(line: 244, column: 27, scope: !4652)
!6039 = !DILocation(line: 244, column: 42, scope: !4652)
!6040 = !DILocation(line: 244, column: 8, scope: !4652)
!6041 = !DILocation(line: 244, column: 6, scope: !4652)
!6042 = !DILocation(line: 245, column: 6, scope: !6043)
!6043 = distinct !DILexicalBlock(scope: !4652, file: !3, line: 245, column: 6)
!6044 = !DILocation(line: 245, column: 6, scope: !4652)
!6045 = !DILocation(line: 246, column: 3, scope: !6043)
!6046 = !DILocation(line: 249, column: 27, scope: !4652)
!6047 = !DILocation(line: 249, column: 54, scope: !4652)
!6048 = !DILocation(line: 249, column: 43, scope: !4652)
!6049 = !DILocation(line: 249, column: 8, scope: !4652)
!6050 = !DILocation(line: 249, column: 6, scope: !4652)
!6051 = !DILocation(line: 250, column: 6, scope: !6052)
!6052 = distinct !DILexicalBlock(scope: !4652, file: !3, line: 250, column: 6)
!6053 = !DILocation(line: 250, column: 6, scope: !4652)
!6054 = !DILocation(line: 251, column: 3, scope: !6052)
!6055 = !DILocation(line: 254, column: 27, scope: !4652)
!6056 = !DILocation(line: 254, column: 54, scope: !4652)
!6057 = !DILocation(line: 254, column: 43, scope: !4652)
!6058 = !DILocation(line: 254, column: 8, scope: !4652)
!6059 = !DILocation(line: 254, column: 6, scope: !4652)
!6060 = !DILocation(line: 255, column: 6, scope: !6061)
!6061 = distinct !DILexicalBlock(scope: !4652, file: !3, line: 255, column: 6)
!6062 = !DILocation(line: 255, column: 6, scope: !4652)
!6063 = !DILocation(line: 256, column: 3, scope: !6061)
!6064 = !DILocation(line: 258, column: 27, scope: !4652)
!6065 = !DILocation(line: 258, column: 53, scope: !4652)
!6066 = !DILocation(line: 258, column: 42, scope: !4652)
!6067 = !DILocation(line: 258, column: 8, scope: !4652)
!6068 = !DILocation(line: 258, column: 6, scope: !4652)
!6069 = !DILocation(line: 259, column: 6, scope: !6070)
!6070 = distinct !DILexicalBlock(scope: !4652, file: !3, line: 259, column: 6)
!6071 = !DILocation(line: 259, column: 6, scope: !4652)
!6072 = !DILocation(line: 260, column: 3, scope: !6070)
!6073 = !DILocation(line: 262, column: 9, scope: !4652)
!6074 = !DILocation(line: 262, column: 2, scope: !4652)
!6075 = !DILabel(scope: !4652, name: "err", file: !3, line: 263)
!6076 = !DILocation(line: 263, column: 1, scope: !4652)
!6077 = !DILocation(line: 265, column: 9, scope: !4652)
!6078 = !DILocation(line: 265, column: 2, scope: !4652)
!6079 = !DILocation(line: 266, column: 1, scope: !4652)
!6080 = distinct !DISubprogram(name: "rtl2830_get_tune_settings", scope: !3, file: !3, line: 148, type: !4499, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!6081 = !DILocalVariable(name: "fe", arg: 1, scope: !6080, file: !3, line: 148, type: !4353)
!6082 = !DILocation(line: 148, column: 59, scope: !6080)
!6083 = !DILocalVariable(name: "s", arg: 2, scope: !6080, file: !3, line: 149, type: !4501)
!6084 = !DILocation(line: 149, column: 45, scope: !6080)
!6085 = !DILocation(line: 151, column: 2, scope: !6080)
!6086 = !DILocation(line: 151, column: 5, scope: !6080)
!6087 = !DILocation(line: 151, column: 18, scope: !6080)
!6088 = !DILocation(line: 152, column: 17, scope: !6080)
!6089 = !DILocation(line: 152, column: 21, scope: !6080)
!6090 = !DILocation(line: 152, column: 25, scope: !6080)
!6091 = !DILocation(line: 152, column: 30, scope: !6080)
!6092 = !DILocation(line: 152, column: 52, scope: !6080)
!6093 = !DILocation(line: 152, column: 2, scope: !6080)
!6094 = !DILocation(line: 152, column: 5, scope: !6080)
!6095 = !DILocation(line: 152, column: 15, scope: !6080)
!6096 = !DILocation(line: 153, column: 18, scope: !6080)
!6097 = !DILocation(line: 153, column: 22, scope: !6080)
!6098 = !DILocation(line: 153, column: 26, scope: !6080)
!6099 = !DILocation(line: 153, column: 31, scope: !6080)
!6100 = !DILocation(line: 153, column: 53, scope: !6080)
!6101 = !DILocation(line: 153, column: 58, scope: !6080)
!6102 = !DILocation(line: 153, column: 2, scope: !6080)
!6103 = !DILocation(line: 153, column: 5, scope: !6080)
!6104 = !DILocation(line: 153, column: 15, scope: !6080)
!6105 = !DILocation(line: 155, column: 2, scope: !6080)
!6106 = distinct !DISubprogram(name: "rtl2830_get_frontend", scope: !3, file: !3, line: 268, type: !4509, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!6107 = !DILocalVariable(name: "fe", arg: 1, scope: !6106, file: !3, line: 268, type: !4353)
!6108 = !DILocation(line: 268, column: 54, scope: !6106)
!6109 = !DILocalVariable(name: "c", arg: 2, scope: !6106, file: !3, line: 269, type: !4511)
!6110 = !DILocation(line: 269, column: 37, scope: !6106)
!6111 = !DILocalVariable(name: "client", scope: !6106, file: !3, line: 271, type: !390)
!6112 = !DILocation(line: 271, column: 21, scope: !6106)
!6113 = !DILocation(line: 271, column: 30, scope: !6106)
!6114 = !DILocation(line: 271, column: 34, scope: !6106)
!6115 = !DILocalVariable(name: "dev", scope: !6106, file: !3, line: 272, type: !4710)
!6116 = !DILocation(line: 272, column: 22, scope: !6106)
!6117 = !DILocation(line: 272, column: 47, scope: !6106)
!6118 = !DILocation(line: 272, column: 28, scope: !6106)
!6119 = !DILocalVariable(name: "ret", scope: !6106, file: !3, line: 273, type: !345)
!6120 = !DILocation(line: 273, column: 6, scope: !6106)
!6121 = !DILocalVariable(name: "buf", scope: !6106, file: !3, line: 274, type: !5932)
!6122 = !DILocation(line: 274, column: 5, scope: !6106)
!6123 = !DILocation(line: 276, column: 6, scope: !6124)
!6124 = distinct !DILexicalBlock(scope: !6106, file: !3, line: 276, column: 6)
!6125 = !DILocation(line: 276, column: 11, scope: !6124)
!6126 = !DILocation(line: 276, column: 6, scope: !6106)
!6127 = !DILocation(line: 277, column: 3, scope: !6124)
!6128 = !DILocation(line: 279, column: 26, scope: !6106)
!6129 = !DILocation(line: 279, column: 41, scope: !6106)
!6130 = !DILocation(line: 279, column: 8, scope: !6106)
!6131 = !DILocation(line: 279, column: 6, scope: !6106)
!6132 = !DILocation(line: 280, column: 6, scope: !6133)
!6133 = distinct !DILexicalBlock(scope: !6106, file: !3, line: 280, column: 6)
!6134 = !DILocation(line: 280, column: 6, scope: !6106)
!6135 = !DILocation(line: 281, column: 3, scope: !6133)
!6136 = !DILocation(line: 283, column: 26, scope: !6106)
!6137 = !DILocation(line: 283, column: 42, scope: !6106)
!6138 = !DILocation(line: 283, column: 8, scope: !6106)
!6139 = !DILocation(line: 283, column: 6, scope: !6106)
!6140 = !DILocation(line: 284, column: 6, scope: !6141)
!6141 = distinct !DILexicalBlock(scope: !6106, file: !3, line: 284, column: 6)
!6142 = !DILocation(line: 284, column: 6, scope: !6106)
!6143 = !DILocation(line: 285, column: 3, scope: !6141)
!6144 = !DILocation(line: 289, column: 11, scope: !6106)
!6145 = !DILocation(line: 289, column: 18, scope: !6106)
!6146 = !DILocation(line: 289, column: 24, scope: !6106)
!6147 = !DILocation(line: 289, column: 2, scope: !6106)
!6148 = !DILocation(line: 291, column: 3, scope: !6149)
!6149 = distinct !DILexicalBlock(scope: !6106, file: !3, line: 289, column: 29)
!6150 = !DILocation(line: 291, column: 6, scope: !6149)
!6151 = !DILocation(line: 291, column: 17, scope: !6149)
!6152 = !DILocation(line: 292, column: 3, scope: !6149)
!6153 = !DILocation(line: 294, column: 3, scope: !6149)
!6154 = !DILocation(line: 294, column: 6, scope: !6149)
!6155 = !DILocation(line: 294, column: 17, scope: !6149)
!6156 = !DILocation(line: 295, column: 3, scope: !6149)
!6157 = !DILocation(line: 297, column: 3, scope: !6149)
!6158 = !DILocation(line: 297, column: 6, scope: !6149)
!6159 = !DILocation(line: 297, column: 17, scope: !6149)
!6160 = !DILocation(line: 298, column: 3, scope: !6149)
!6161 = !DILocation(line: 301, column: 11, scope: !6106)
!6162 = !DILocation(line: 301, column: 18, scope: !6106)
!6163 = !DILocation(line: 301, column: 24, scope: !6106)
!6164 = !DILocation(line: 301, column: 2, scope: !6106)
!6165 = !DILocation(line: 303, column: 3, scope: !6166)
!6166 = distinct !DILexicalBlock(scope: !6106, file: !3, line: 301, column: 29)
!6167 = !DILocation(line: 303, column: 6, scope: !6166)
!6168 = !DILocation(line: 303, column: 24, scope: !6166)
!6169 = !DILocation(line: 304, column: 3, scope: !6166)
!6170 = !DILocation(line: 306, column: 3, scope: !6166)
!6171 = !DILocation(line: 306, column: 6, scope: !6166)
!6172 = !DILocation(line: 306, column: 24, scope: !6166)
!6173 = !DILocation(line: 307, column: 2, scope: !6166)
!6174 = !DILocation(line: 309, column: 11, scope: !6106)
!6175 = !DILocation(line: 309, column: 18, scope: !6106)
!6176 = !DILocation(line: 309, column: 24, scope: !6106)
!6177 = !DILocation(line: 309, column: 2, scope: !6106)
!6178 = !DILocation(line: 311, column: 3, scope: !6179)
!6179 = distinct !DILexicalBlock(scope: !6106, file: !3, line: 309, column: 29)
!6180 = !DILocation(line: 311, column: 6, scope: !6179)
!6181 = !DILocation(line: 311, column: 21, scope: !6179)
!6182 = !DILocation(line: 312, column: 3, scope: !6179)
!6183 = !DILocation(line: 314, column: 3, scope: !6179)
!6184 = !DILocation(line: 314, column: 6, scope: !6179)
!6185 = !DILocation(line: 314, column: 21, scope: !6179)
!6186 = !DILocation(line: 315, column: 3, scope: !6179)
!6187 = !DILocation(line: 317, column: 3, scope: !6179)
!6188 = !DILocation(line: 317, column: 6, scope: !6179)
!6189 = !DILocation(line: 317, column: 21, scope: !6179)
!6190 = !DILocation(line: 318, column: 3, scope: !6179)
!6191 = !DILocation(line: 320, column: 3, scope: !6179)
!6192 = !DILocation(line: 320, column: 6, scope: !6179)
!6193 = !DILocation(line: 320, column: 21, scope: !6179)
!6194 = !DILocation(line: 321, column: 3, scope: !6179)
!6195 = !DILocation(line: 324, column: 11, scope: !6106)
!6196 = !DILocation(line: 324, column: 18, scope: !6106)
!6197 = !DILocation(line: 324, column: 24, scope: !6106)
!6198 = !DILocation(line: 324, column: 2, scope: !6106)
!6199 = !DILocation(line: 326, column: 3, scope: !6200)
!6200 = distinct !DILexicalBlock(scope: !6106, file: !3, line: 324, column: 29)
!6201 = !DILocation(line: 326, column: 6, scope: !6200)
!6202 = !DILocation(line: 326, column: 16, scope: !6200)
!6203 = !DILocation(line: 327, column: 3, scope: !6200)
!6204 = !DILocation(line: 329, column: 3, scope: !6200)
!6205 = !DILocation(line: 329, column: 6, scope: !6200)
!6206 = !DILocation(line: 329, column: 16, scope: !6200)
!6207 = !DILocation(line: 330, column: 3, scope: !6200)
!6208 = !DILocation(line: 332, column: 3, scope: !6200)
!6209 = !DILocation(line: 332, column: 6, scope: !6200)
!6210 = !DILocation(line: 332, column: 16, scope: !6200)
!6211 = !DILocation(line: 333, column: 3, scope: !6200)
!6212 = !DILocation(line: 335, column: 3, scope: !6200)
!6213 = !DILocation(line: 335, column: 6, scope: !6200)
!6214 = !DILocation(line: 335, column: 16, scope: !6200)
!6215 = !DILocation(line: 336, column: 3, scope: !6200)
!6216 = !DILocation(line: 339, column: 11, scope: !6106)
!6217 = !DILocation(line: 339, column: 18, scope: !6106)
!6218 = !DILocation(line: 339, column: 24, scope: !6106)
!6219 = !DILocation(line: 339, column: 2, scope: !6106)
!6220 = !DILocation(line: 341, column: 3, scope: !6221)
!6221 = distinct !DILexicalBlock(scope: !6106, file: !3, line: 339, column: 29)
!6222 = !DILocation(line: 341, column: 6, scope: !6221)
!6223 = !DILocation(line: 341, column: 19, scope: !6221)
!6224 = !DILocation(line: 342, column: 3, scope: !6221)
!6225 = !DILocation(line: 344, column: 3, scope: !6221)
!6226 = !DILocation(line: 344, column: 6, scope: !6221)
!6227 = !DILocation(line: 344, column: 19, scope: !6221)
!6228 = !DILocation(line: 345, column: 3, scope: !6221)
!6229 = !DILocation(line: 347, column: 3, scope: !6221)
!6230 = !DILocation(line: 347, column: 6, scope: !6221)
!6231 = !DILocation(line: 347, column: 19, scope: !6221)
!6232 = !DILocation(line: 348, column: 3, scope: !6221)
!6233 = !DILocation(line: 350, column: 3, scope: !6221)
!6234 = !DILocation(line: 350, column: 6, scope: !6221)
!6235 = !DILocation(line: 350, column: 19, scope: !6221)
!6236 = !DILocation(line: 351, column: 3, scope: !6221)
!6237 = !DILocation(line: 353, column: 3, scope: !6221)
!6238 = !DILocation(line: 353, column: 6, scope: !6221)
!6239 = !DILocation(line: 353, column: 19, scope: !6221)
!6240 = !DILocation(line: 354, column: 3, scope: !6221)
!6241 = !DILocation(line: 357, column: 11, scope: !6106)
!6242 = !DILocation(line: 357, column: 18, scope: !6106)
!6243 = !DILocation(line: 357, column: 24, scope: !6106)
!6244 = !DILocation(line: 357, column: 2, scope: !6106)
!6245 = !DILocation(line: 359, column: 3, scope: !6246)
!6246 = distinct !DILexicalBlock(scope: !6106, file: !3, line: 357, column: 29)
!6247 = !DILocation(line: 359, column: 6, scope: !6246)
!6248 = !DILocation(line: 359, column: 19, scope: !6246)
!6249 = !DILocation(line: 360, column: 3, scope: !6246)
!6250 = !DILocation(line: 362, column: 3, scope: !6246)
!6251 = !DILocation(line: 362, column: 6, scope: !6246)
!6252 = !DILocation(line: 362, column: 19, scope: !6246)
!6253 = !DILocation(line: 363, column: 3, scope: !6246)
!6254 = !DILocation(line: 365, column: 3, scope: !6246)
!6255 = !DILocation(line: 365, column: 6, scope: !6246)
!6256 = !DILocation(line: 365, column: 19, scope: !6246)
!6257 = !DILocation(line: 366, column: 3, scope: !6246)
!6258 = !DILocation(line: 368, column: 3, scope: !6246)
!6259 = !DILocation(line: 368, column: 6, scope: !6246)
!6260 = !DILocation(line: 368, column: 19, scope: !6246)
!6261 = !DILocation(line: 369, column: 3, scope: !6246)
!6262 = !DILocation(line: 371, column: 3, scope: !6246)
!6263 = !DILocation(line: 371, column: 6, scope: !6246)
!6264 = !DILocation(line: 371, column: 19, scope: !6246)
!6265 = !DILocation(line: 372, column: 3, scope: !6246)
!6266 = !DILocation(line: 375, column: 2, scope: !6106)
!6267 = !DILabel(scope: !6106, name: "err", file: !3, line: 376)
!6268 = !DILocation(line: 376, column: 1, scope: !6106)
!6269 = !DILocation(line: 378, column: 9, scope: !6106)
!6270 = !DILocation(line: 378, column: 2, scope: !6106)
!6271 = !DILocation(line: 379, column: 1, scope: !6106)
!6272 = !DILocalVariable(name: "value", arg: 1, scope: !6273, file: !6274, line: 165, type: !444)
!6273 = distinct !DISubprogram(name: "sign_extend32", scope: !6274, file: !6274, line: 165, type: !6275, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!6274 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/lizy2001/genbc/linux")
!6275 = !DISubroutineType(types: !6276)
!6276 = !{!346, !444, !345}
!6277 = !DILocation(line: 165, column: 50, scope: !6273, inlinedAt: !6278)
!6278 = distinct !DILocation(line: 418, column: 10, scope: !6279)
!6279 = distinct !DILexicalBlock(scope: !6280, file: !3, line: 411, column: 38)
!6280 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 411, column: 6)
!6281 = !DILocalVariable(name: "index", arg: 2, scope: !6273, file: !6274, line: 165, type: !345)
!6282 = !DILocation(line: 165, column: 61, scope: !6273, inlinedAt: !6278)
!6283 = !DILocalVariable(name: "shift", scope: !6273, file: !6274, line: 167, type: !338)
!6284 = !DILocation(line: 167, column: 7, scope: !6273, inlinedAt: !6278)
!6285 = !DILocalVariable(name: "fe", arg: 1, scope: !4661, file: !3, line: 381, type: !4353)
!6286 = !DILocation(line: 381, column: 53, scope: !4661)
!6287 = !DILocalVariable(name: "status", arg: 2, scope: !4661, file: !3, line: 381, type: !4491)
!6288 = !DILocation(line: 381, column: 73, scope: !4661)
!6289 = !DILocalVariable(name: "client", scope: !4661, file: !3, line: 383, type: !390)
!6290 = !DILocation(line: 383, column: 21, scope: !4661)
!6291 = !DILocation(line: 383, column: 30, scope: !4661)
!6292 = !DILocation(line: 383, column: 34, scope: !4661)
!6293 = !DILocalVariable(name: "dev", scope: !4661, file: !3, line: 384, type: !4710)
!6294 = !DILocation(line: 384, column: 22, scope: !4661)
!6295 = !DILocation(line: 384, column: 47, scope: !4661)
!6296 = !DILocation(line: 384, column: 28, scope: !4661)
!6297 = !DILocalVariable(name: "c", scope: !4661, file: !3, line: 385, type: !4511)
!6298 = !DILocation(line: 385, column: 34, scope: !4661)
!6299 = !DILocation(line: 385, column: 39, scope: !4661)
!6300 = !DILocation(line: 385, column: 44, scope: !4661)
!6301 = !DILocation(line: 385, column: 47, scope: !4661)
!6302 = !DILocalVariable(name: "ret", scope: !4661, file: !3, line: 386, type: !345)
!6303 = !DILocation(line: 386, column: 6, scope: !4661)
!6304 = !DILocalVariable(name: "stmp", scope: !4661, file: !3, line: 386, type: !345)
!6305 = !DILocation(line: 386, column: 11, scope: !4661)
!6306 = !DILocalVariable(name: "utmp", scope: !4661, file: !3, line: 387, type: !7)
!6307 = !DILocation(line: 387, column: 15, scope: !4661)
!6308 = !DILocalVariable(name: "u8tmp", scope: !4661, file: !3, line: 388, type: !336)
!6309 = !DILocation(line: 388, column: 5, scope: !4661)
!6310 = !DILocalVariable(name: "buf", scope: !4661, file: !3, line: 388, type: !6311)
!6311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 16, elements: !2475)
!6312 = !DILocation(line: 388, column: 12, scope: !4661)
!6313 = !DILocation(line: 390, column: 3, scope: !4661)
!6314 = !DILocation(line: 390, column: 10, scope: !4661)
!6315 = !DILocation(line: 392, column: 6, scope: !6316)
!6316 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 392, column: 6)
!6317 = !DILocation(line: 392, column: 11, scope: !6316)
!6318 = !DILocation(line: 392, column: 6, scope: !4661)
!6319 = !DILocation(line: 393, column: 3, scope: !6316)
!6320 = !DILocation(line: 395, column: 26, scope: !4661)
!6321 = !DILocation(line: 395, column: 8, scope: !4661)
!6322 = !DILocation(line: 395, column: 6, scope: !4661)
!6323 = !DILocation(line: 396, column: 6, scope: !6324)
!6324 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 396, column: 6)
!6325 = !DILocation(line: 396, column: 6, scope: !4661)
!6326 = !DILocation(line: 397, column: 3, scope: !6324)
!6327 = !DILocation(line: 399, column: 11, scope: !4661)
!6328 = !DILocation(line: 399, column: 17, scope: !4661)
!6329 = !DILocation(line: 399, column: 23, scope: !4661)
!6330 = !DILocation(line: 399, column: 10, scope: !4661)
!6331 = !DILocation(line: 399, column: 8, scope: !4661)
!6332 = !DILocation(line: 400, column: 6, scope: !6333)
!6333 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 400, column: 6)
!6334 = !DILocation(line: 400, column: 12, scope: !6333)
!6335 = !DILocation(line: 400, column: 6, scope: !4661)
!6336 = !DILocation(line: 401, column: 4, scope: !6337)
!6337 = distinct !DILexicalBlock(scope: !6333, file: !3, line: 400, column: 19)
!6338 = !DILocation(line: 401, column: 11, scope: !6337)
!6339 = !DILocation(line: 403, column: 2, scope: !6337)
!6340 = !DILocation(line: 403, column: 13, scope: !6341)
!6341 = distinct !DILexicalBlock(scope: !6333, file: !3, line: 403, column: 13)
!6342 = !DILocation(line: 403, column: 19, scope: !6341)
!6343 = !DILocation(line: 403, column: 13, scope: !6333)
!6344 = !DILocation(line: 404, column: 4, scope: !6345)
!6345 = distinct !DILexicalBlock(scope: !6341, file: !3, line: 403, column: 26)
!6346 = !DILocation(line: 404, column: 11, scope: !6345)
!6347 = !DILocation(line: 406, column: 2, scope: !6345)
!6348 = !DILocation(line: 408, column: 20, scope: !4661)
!6349 = !DILocation(line: 408, column: 19, scope: !4661)
!6350 = !DILocation(line: 408, column: 2, scope: !4661)
!6351 = !DILocation(line: 408, column: 7, scope: !4661)
!6352 = !DILocation(line: 408, column: 17, scope: !4661)
!6353 = !DILocation(line: 411, column: 6, scope: !6280)
!6354 = !DILocation(line: 411, column: 11, scope: !6280)
!6355 = !DILocation(line: 411, column: 21, scope: !6280)
!6356 = !DILocation(line: 411, column: 6, scope: !4661)
!6357 = !DILocation(line: 413, column: 27, scope: !6279)
!6358 = !DILocation(line: 413, column: 42, scope: !6279)
!6359 = !DILocation(line: 413, column: 9, scope: !6279)
!6360 = !DILocation(line: 413, column: 7, scope: !6279)
!6361 = !DILocation(line: 414, column: 7, scope: !6362)
!6362 = distinct !DILexicalBlock(scope: !6279, file: !3, line: 414, column: 7)
!6363 = !DILocation(line: 414, column: 7, scope: !6279)
!6364 = !DILocation(line: 415, column: 4, scope: !6362)
!6365 = !DILocation(line: 417, column: 10, scope: !6279)
!6366 = !DILocation(line: 417, column: 17, scope: !6279)
!6367 = !DILocation(line: 417, column: 24, scope: !6279)
!6368 = !DILocation(line: 417, column: 31, scope: !6279)
!6369 = !DILocation(line: 417, column: 22, scope: !6279)
!6370 = !DILocation(line: 417, column: 8, scope: !6279)
!6371 = !DILocation(line: 418, column: 24, scope: !6279)
!6372 = !DILocation(line: 167, column: 20, scope: !6273, inlinedAt: !6278)
!6373 = !DILocation(line: 167, column: 18, scope: !6273, inlinedAt: !6278)
!6374 = !DILocation(line: 167, column: 15, scope: !6273, inlinedAt: !6278)
!6375 = !DILocation(line: 168, column: 17, scope: !6273, inlinedAt: !6278)
!6376 = !DILocation(line: 168, column: 26, scope: !6273, inlinedAt: !6278)
!6377 = !DILocation(line: 168, column: 23, scope: !6273, inlinedAt: !6278)
!6378 = !DILocation(line: 168, column: 36, scope: !6273, inlinedAt: !6278)
!6379 = !DILocation(line: 168, column: 33, scope: !6273, inlinedAt: !6278)
!6380 = !DILocation(line: 418, column: 8, scope: !6279)
!6381 = !DILocalVariable(name: "__UNIQUE_ID___x222", scope: !6382, file: !3, line: 419, type: !345)
!6382 = distinct !DILexicalBlock(scope: !6279, file: !3, line: 419, column: 10)
!6383 = !DILocation(line: 419, column: 10, scope: !6382)
!6384 = !DILocalVariable(name: "__UNIQUE_ID___x220", scope: !6385, file: !3, line: 419, type: !345)
!6385 = distinct !DILexicalBlock(scope: !6382, file: !3, line: 419, column: 10)
!6386 = !DILocation(line: 419, column: 10, scope: !6385)
!6387 = !DILocalVariable(name: "__UNIQUE_ID___y221", scope: !6385, file: !3, line: 419, type: !345)
!6388 = !DILocalVariable(name: "__UNIQUE_ID___y223", scope: !6382, file: !3, line: 419, type: !345)
!6389 = !DILocation(line: 419, column: 8, scope: !6279)
!6390 = !DILocation(line: 423, column: 3, scope: !6279)
!6391 = !DILocation(line: 423, column: 6, scope: !6279)
!6392 = !DILocation(line: 423, column: 15, scope: !6279)
!6393 = !DILocation(line: 423, column: 23, scope: !6279)
!6394 = !DILocation(line: 423, column: 29, scope: !6279)
!6395 = !DILocation(line: 424, column: 32, scope: !6279)
!6396 = !DILocation(line: 424, column: 3, scope: !6279)
!6397 = !DILocation(line: 424, column: 6, scope: !6279)
!6398 = !DILocation(line: 424, column: 15, scope: !6279)
!6399 = !DILocation(line: 424, column: 23, scope: !6279)
!6400 = !DILocation(line: 424, column: 30, scope: !6279)
!6401 = !DILocation(line: 425, column: 2, scope: !6279)
!6402 = !DILocation(line: 426, column: 3, scope: !6403)
!6403 = distinct !DILexicalBlock(scope: !6280, file: !3, line: 425, column: 9)
!6404 = !DILocation(line: 426, column: 6, scope: !6403)
!6405 = !DILocation(line: 426, column: 15, scope: !6403)
!6406 = !DILocation(line: 426, column: 23, scope: !6403)
!6407 = !DILocation(line: 426, column: 29, scope: !6403)
!6408 = !DILocation(line: 430, column: 6, scope: !6409)
!6409 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 430, column: 6)
!6410 = !DILocation(line: 430, column: 11, scope: !6409)
!6411 = !DILocation(line: 430, column: 21, scope: !6409)
!6412 = !DILocation(line: 430, column: 6, scope: !4661)
!6413 = !DILocalVariable(name: "hierarchy", scope: !6414, file: !3, line: 431, type: !7)
!6414 = distinct !DILexicalBlock(scope: !6409, file: !3, line: 430, column: 39)
!6415 = !DILocation(line: 431, column: 16, scope: !6414)
!6416 = !DILocalVariable(name: "constellation", scope: !6414, file: !3, line: 431, type: !7)
!6417 = !DILocation(line: 431, column: 27, scope: !6414)
!6418 = !DILocation(line: 440, column: 27, scope: !6414)
!6419 = !DILocation(line: 440, column: 9, scope: !6414)
!6420 = !DILocation(line: 440, column: 7, scope: !6414)
!6421 = !DILocation(line: 441, column: 7, scope: !6422)
!6422 = distinct !DILexicalBlock(scope: !6414, file: !3, line: 441, column: 7)
!6423 = !DILocation(line: 441, column: 7, scope: !6414)
!6424 = !DILocation(line: 442, column: 4, scope: !6422)
!6425 = !DILocation(line: 444, column: 20, scope: !6414)
!6426 = !DILocation(line: 444, column: 26, scope: !6414)
!6427 = !DILocation(line: 444, column: 32, scope: !6414)
!6428 = !DILocation(line: 444, column: 17, scope: !6414)
!6429 = !DILocation(line: 445, column: 7, scope: !6430)
!6430 = distinct !DILexicalBlock(scope: !6414, file: !3, line: 445, column: 7)
!6431 = !DILocation(line: 445, column: 21, scope: !6430)
!6432 = !DILocation(line: 445, column: 7, scope: !6414)
!6433 = !DILocation(line: 446, column: 4, scope: !6430)
!6434 = !DILocation(line: 448, column: 16, scope: !6414)
!6435 = !DILocation(line: 448, column: 22, scope: !6414)
!6436 = !DILocation(line: 448, column: 28, scope: !6414)
!6437 = !DILocation(line: 448, column: 13, scope: !6414)
!6438 = !DILocation(line: 449, column: 7, scope: !6439)
!6439 = distinct !DILexicalBlock(scope: !6414, file: !3, line: 449, column: 7)
!6440 = !DILocation(line: 449, column: 17, scope: !6439)
!6441 = !DILocation(line: 449, column: 7, scope: !6414)
!6442 = !DILocation(line: 450, column: 4, scope: !6439)
!6443 = !DILocation(line: 452, column: 27, scope: !6414)
!6444 = !DILocation(line: 452, column: 42, scope: !6414)
!6445 = !DILocation(line: 452, column: 9, scope: !6414)
!6446 = !DILocation(line: 452, column: 7, scope: !6414)
!6447 = !DILocation(line: 453, column: 7, scope: !6448)
!6448 = distinct !DILexicalBlock(scope: !6414, file: !3, line: 453, column: 7)
!6449 = !DILocation(line: 453, column: 7, scope: !6414)
!6450 = !DILocation(line: 454, column: 4, scope: !6448)
!6451 = !DILocation(line: 456, column: 10, scope: !6414)
!6452 = !DILocation(line: 456, column: 17, scope: !6414)
!6453 = !DILocation(line: 456, column: 24, scope: !6414)
!6454 = !DILocation(line: 456, column: 31, scope: !6414)
!6455 = !DILocation(line: 456, column: 22, scope: !6414)
!6456 = !DILocation(line: 456, column: 8, scope: !6414)
!6457 = !DILocation(line: 457, column: 7, scope: !6458)
!6458 = distinct !DILexicalBlock(scope: !6414, file: !3, line: 457, column: 7)
!6459 = !DILocation(line: 457, column: 7, scope: !6414)
!6460 = !DILocation(line: 458, column: 21, scope: !6458)
!6461 = !DILocation(line: 458, column: 12, scope: !6458)
!6462 = !DILocation(line: 458, column: 36, scope: !6458)
!6463 = !DILocation(line: 459, column: 20, scope: !6458)
!6464 = !DILocation(line: 459, column: 11, scope: !6458)
!6465 = !DILocation(line: 458, column: 47, scope: !6458)
!6466 = !DILocation(line: 459, column: 27, scope: !6458)
!6467 = !DILocation(line: 458, column: 9, scope: !6458)
!6468 = !DILocation(line: 458, column: 4, scope: !6458)
!6469 = !DILocation(line: 461, column: 9, scope: !6458)
!6470 = !DILocation(line: 465, column: 3, scope: !6414)
!6471 = !DILocation(line: 465, column: 6, scope: !6414)
!6472 = !DILocation(line: 465, column: 10, scope: !6414)
!6473 = !DILocation(line: 465, column: 18, scope: !6414)
!6474 = !DILocation(line: 465, column: 24, scope: !6414)
!6475 = !DILocation(line: 466, column: 27, scope: !6414)
!6476 = !DILocation(line: 466, column: 3, scope: !6414)
!6477 = !DILocation(line: 466, column: 6, scope: !6414)
!6478 = !DILocation(line: 466, column: 10, scope: !6414)
!6479 = !DILocation(line: 466, column: 18, scope: !6414)
!6480 = !DILocation(line: 466, column: 25, scope: !6414)
!6481 = !DILocation(line: 467, column: 2, scope: !6414)
!6482 = !DILocation(line: 468, column: 3, scope: !6483)
!6483 = distinct !DILexicalBlock(scope: !6409, file: !3, line: 467, column: 9)
!6484 = !DILocation(line: 468, column: 6, scope: !6483)
!6485 = !DILocation(line: 468, column: 10, scope: !6483)
!6486 = !DILocation(line: 468, column: 18, scope: !6483)
!6487 = !DILocation(line: 468, column: 24, scope: !6483)
!6488 = !DILocation(line: 472, column: 6, scope: !6489)
!6489 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 472, column: 6)
!6490 = !DILocation(line: 472, column: 11, scope: !6489)
!6491 = !DILocation(line: 472, column: 21, scope: !6489)
!6492 = !DILocation(line: 472, column: 6, scope: !4661)
!6493 = !DILocation(line: 473, column: 27, scope: !6494)
!6494 = distinct !DILexicalBlock(scope: !6489, file: !3, line: 472, column: 36)
!6495 = !DILocation(line: 473, column: 42, scope: !6494)
!6496 = !DILocation(line: 473, column: 9, scope: !6494)
!6497 = !DILocation(line: 473, column: 7, scope: !6494)
!6498 = !DILocation(line: 474, column: 7, scope: !6499)
!6499 = distinct !DILexicalBlock(scope: !6494, file: !3, line: 474, column: 7)
!6500 = !DILocation(line: 474, column: 7, scope: !6494)
!6501 = !DILocation(line: 475, column: 4, scope: !6499)
!6502 = !DILocation(line: 477, column: 10, scope: !6494)
!6503 = !DILocation(line: 477, column: 17, scope: !6494)
!6504 = !DILocation(line: 477, column: 24, scope: !6494)
!6505 = !DILocation(line: 477, column: 31, scope: !6494)
!6506 = !DILocation(line: 477, column: 22, scope: !6494)
!6507 = !DILocation(line: 477, column: 8, scope: !6494)
!6508 = !DILocation(line: 478, column: 26, scope: !6494)
!6509 = !DILocation(line: 478, column: 3, scope: !6494)
!6510 = !DILocation(line: 478, column: 8, scope: !6494)
!6511 = !DILocation(line: 478, column: 23, scope: !6494)
!6512 = !DILocation(line: 479, column: 3, scope: !6494)
!6513 = !DILocation(line: 479, column: 8, scope: !6494)
!6514 = !DILocation(line: 479, column: 23, scope: !6494)
!6515 = !DILocation(line: 483, column: 3, scope: !6494)
!6516 = !DILocation(line: 483, column: 6, scope: !6494)
!6517 = !DILocation(line: 483, column: 21, scope: !6494)
!6518 = !DILocation(line: 483, column: 29, scope: !6494)
!6519 = !DILocation(line: 483, column: 35, scope: !6494)
!6520 = !DILocation(line: 484, column: 38, scope: !6494)
!6521 = !DILocation(line: 484, column: 43, scope: !6494)
!6522 = !DILocation(line: 484, column: 3, scope: !6494)
!6523 = !DILocation(line: 484, column: 6, scope: !6494)
!6524 = !DILocation(line: 484, column: 21, scope: !6494)
!6525 = !DILocation(line: 484, column: 29, scope: !6494)
!6526 = !DILocation(line: 484, column: 36, scope: !6494)
!6527 = !DILocation(line: 485, column: 3, scope: !6494)
!6528 = !DILocation(line: 485, column: 6, scope: !6494)
!6529 = !DILocation(line: 485, column: 21, scope: !6494)
!6530 = !DILocation(line: 485, column: 29, scope: !6494)
!6531 = !DILocation(line: 485, column: 35, scope: !6494)
!6532 = !DILocation(line: 486, column: 38, scope: !6494)
!6533 = !DILocation(line: 486, column: 43, scope: !6494)
!6534 = !DILocation(line: 486, column: 3, scope: !6494)
!6535 = !DILocation(line: 486, column: 6, scope: !6494)
!6536 = !DILocation(line: 486, column: 21, scope: !6494)
!6537 = !DILocation(line: 486, column: 29, scope: !6494)
!6538 = !DILocation(line: 486, column: 36, scope: !6494)
!6539 = !DILocation(line: 487, column: 2, scope: !6494)
!6540 = !DILocation(line: 488, column: 3, scope: !6541)
!6541 = distinct !DILexicalBlock(scope: !6489, file: !3, line: 487, column: 9)
!6542 = !DILocation(line: 488, column: 6, scope: !6541)
!6543 = !DILocation(line: 488, column: 21, scope: !6541)
!6544 = !DILocation(line: 488, column: 29, scope: !6541)
!6545 = !DILocation(line: 488, column: 35, scope: !6541)
!6546 = !DILocation(line: 489, column: 3, scope: !6541)
!6547 = !DILocation(line: 489, column: 6, scope: !6541)
!6548 = !DILocation(line: 489, column: 21, scope: !6541)
!6549 = !DILocation(line: 489, column: 29, scope: !6541)
!6550 = !DILocation(line: 489, column: 35, scope: !6541)
!6551 = !DILocation(line: 493, column: 9, scope: !4661)
!6552 = !DILocation(line: 493, column: 2, scope: !4661)
!6553 = !DILabel(scope: !4661, name: "err", file: !3, line: 494)
!6554 = !DILocation(line: 494, column: 1, scope: !4661)
!6555 = !DILocation(line: 496, column: 9, scope: !4661)
!6556 = !DILocation(line: 496, column: 2, scope: !4661)
!6557 = !DILocation(line: 497, column: 1, scope: !4661)
!6558 = distinct !DISubprogram(name: "rtl2830_read_ber", scope: !3, file: !3, line: 511, type: !4518, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!6559 = !DILocalVariable(name: "fe", arg: 1, scope: !6558, file: !3, line: 511, type: !4353)
!6560 = !DILocation(line: 511, column: 50, scope: !6558)
!6561 = !DILocalVariable(name: "ber", arg: 2, scope: !6558, file: !3, line: 511, type: !2832)
!6562 = !DILocation(line: 511, column: 59, scope: !6558)
!6563 = !DILocalVariable(name: "client", scope: !6558, file: !3, line: 513, type: !390)
!6564 = !DILocation(line: 513, column: 21, scope: !6558)
!6565 = !DILocation(line: 513, column: 30, scope: !6558)
!6566 = !DILocation(line: 513, column: 34, scope: !6558)
!6567 = !DILocalVariable(name: "dev", scope: !6558, file: !3, line: 514, type: !4710)
!6568 = !DILocation(line: 514, column: 22, scope: !6558)
!6569 = !DILocation(line: 514, column: 47, scope: !6558)
!6570 = !DILocation(line: 514, column: 28, scope: !6558)
!6571 = !DILocation(line: 516, column: 10, scope: !6558)
!6572 = !DILocation(line: 516, column: 15, scope: !6558)
!6573 = !DILocation(line: 516, column: 32, scope: !6558)
!6574 = !DILocation(line: 516, column: 37, scope: !6558)
!6575 = !DILocation(line: 516, column: 30, scope: !6558)
!6576 = !DILocation(line: 516, column: 9, scope: !6558)
!6577 = !DILocation(line: 516, column: 3, scope: !6558)
!6578 = !DILocation(line: 516, column: 7, scope: !6558)
!6579 = !DILocation(line: 517, column: 29, scope: !6558)
!6580 = !DILocation(line: 517, column: 34, scope: !6558)
!6581 = !DILocation(line: 517, column: 2, scope: !6558)
!6582 = !DILocation(line: 517, column: 7, scope: !6558)
!6583 = !DILocation(line: 517, column: 27, scope: !6558)
!6584 = !DILocation(line: 519, column: 2, scope: !6558)
!6585 = distinct !DISubprogram(name: "rtl2830_read_signal_strength", scope: !3, file: !3, line: 529, type: !4522, scopeLine: 530, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!6586 = !DILocalVariable(name: "fe", arg: 1, scope: !6585, file: !3, line: 529, type: !4353)
!6587 = !DILocation(line: 529, column: 62, scope: !6585)
!6588 = !DILocalVariable(name: "strength", arg: 2, scope: !6585, file: !3, line: 529, type: !4524)
!6589 = !DILocation(line: 529, column: 71, scope: !6585)
!6590 = !DILocalVariable(name: "c", scope: !6585, file: !3, line: 531, type: !4511)
!6591 = !DILocation(line: 531, column: 34, scope: !6585)
!6592 = !DILocation(line: 531, column: 39, scope: !6585)
!6593 = !DILocation(line: 531, column: 43, scope: !6585)
!6594 = !DILocation(line: 533, column: 6, scope: !6595)
!6595 = distinct !DILexicalBlock(scope: !6585, file: !3, line: 533, column: 6)
!6596 = !DILocation(line: 533, column: 9, scope: !6595)
!6597 = !DILocation(line: 533, column: 18, scope: !6595)
!6598 = !DILocation(line: 533, column: 26, scope: !6595)
!6599 = !DILocation(line: 533, column: 32, scope: !6595)
!6600 = !DILocation(line: 533, column: 6, scope: !6585)
!6601 = !DILocation(line: 534, column: 15, scope: !6595)
!6602 = !DILocation(line: 534, column: 18, scope: !6595)
!6603 = !DILocation(line: 534, column: 27, scope: !6595)
!6604 = !DILocation(line: 534, column: 35, scope: !6595)
!6605 = !DILocation(line: 534, column: 4, scope: !6595)
!6606 = !DILocation(line: 534, column: 13, scope: !6595)
!6607 = !DILocation(line: 534, column: 3, scope: !6595)
!6608 = !DILocation(line: 536, column: 4, scope: !6595)
!6609 = !DILocation(line: 536, column: 13, scope: !6595)
!6610 = !DILocation(line: 538, column: 2, scope: !6585)
!6611 = distinct !DISubprogram(name: "rtl2830_read_snr", scope: !3, file: !3, line: 499, type: !4522, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!6612 = !DILocalVariable(name: "fe", arg: 1, scope: !6611, file: !3, line: 499, type: !4353)
!6613 = !DILocation(line: 499, column: 50, scope: !6611)
!6614 = !DILocalVariable(name: "snr", arg: 2, scope: !6611, file: !3, line: 499, type: !4524)
!6615 = !DILocation(line: 499, column: 59, scope: !6611)
!6616 = !DILocalVariable(name: "c", scope: !6611, file: !3, line: 501, type: !4511)
!6617 = !DILocation(line: 501, column: 34, scope: !6611)
!6618 = !DILocation(line: 501, column: 39, scope: !6611)
!6619 = !DILocation(line: 501, column: 43, scope: !6611)
!6620 = !DILocation(line: 503, column: 6, scope: !6621)
!6621 = distinct !DILexicalBlock(scope: !6611, file: !3, line: 503, column: 6)
!6622 = !DILocation(line: 503, column: 9, scope: !6621)
!6623 = !DILocation(line: 503, column: 13, scope: !6621)
!6624 = !DILocation(line: 503, column: 21, scope: !6621)
!6625 = !DILocation(line: 503, column: 27, scope: !6621)
!6626 = !DILocation(line: 503, column: 6, scope: !6611)
!6627 = !DILocation(line: 504, column: 18, scope: !6621)
!6628 = !DILocation(line: 504, column: 21, scope: !6621)
!6629 = !DILocation(line: 504, column: 25, scope: !6621)
!6630 = !DILocation(line: 504, column: 33, scope: !6621)
!6631 = !DILocation(line: 504, column: 10, scope: !6621)
!6632 = !DILocation(line: 504, column: 4, scope: !6621)
!6633 = !DILocation(line: 504, column: 8, scope: !6621)
!6634 = !DILocation(line: 504, column: 3, scope: !6621)
!6635 = !DILocation(line: 506, column: 4, scope: !6621)
!6636 = !DILocation(line: 506, column: 8, scope: !6621)
!6637 = !DILocation(line: 508, column: 2, scope: !6611)
!6638 = distinct !DISubprogram(name: "rtl2830_read_ucblocks", scope: !3, file: !3, line: 522, type: !4518, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!6639 = !DILocalVariable(name: "fe", arg: 1, scope: !6638, file: !3, line: 522, type: !4353)
!6640 = !DILocation(line: 522, column: 55, scope: !6638)
!6641 = !DILocalVariable(name: "ucblocks", arg: 2, scope: !6638, file: !3, line: 522, type: !2832)
!6642 = !DILocation(line: 522, column: 64, scope: !6638)
!6643 = !DILocation(line: 524, column: 3, scope: !6638)
!6644 = !DILocation(line: 524, column: 12, scope: !6638)
!6645 = !DILocation(line: 526, column: 2, scope: !6638)
!6646 = distinct !DISubprogram(name: "rtl2830_update_bits", scope: !3, file: !3, line: 23, type: !6647, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!6647 = !DISubroutineType(types: !6648)
!6648 = !{!345, !390, !7, !7, !7}
!6649 = !DILocalVariable(name: "client", arg: 1, scope: !6646, file: !3, line: 23, type: !390)
!6650 = !DILocation(line: 23, column: 51, scope: !6646)
!6651 = !DILocalVariable(name: "reg", arg: 2, scope: !6646, file: !3, line: 23, type: !7)
!6652 = !DILocation(line: 23, column: 72, scope: !6646)
!6653 = !DILocalVariable(name: "mask", arg: 3, scope: !6646, file: !3, line: 24, type: !7)
!6654 = !DILocation(line: 24, column: 24, scope: !6646)
!6655 = !DILocalVariable(name: "val", arg: 4, scope: !6646, file: !3, line: 24, type: !7)
!6656 = !DILocation(line: 24, column: 43, scope: !6646)
!6657 = !DILocalVariable(name: "dev", scope: !6646, file: !3, line: 26, type: !4710)
!6658 = !DILocation(line: 26, column: 22, scope: !6646)
!6659 = !DILocation(line: 26, column: 47, scope: !6646)
!6660 = !DILocation(line: 26, column: 28, scope: !6646)
!6661 = !DILocalVariable(name: "ret", scope: !6646, file: !3, line: 27, type: !345)
!6662 = !DILocation(line: 27, column: 6, scope: !6646)
!6663 = !DILocation(line: 29, column: 15, scope: !6646)
!6664 = !DILocation(line: 29, column: 23, scope: !6646)
!6665 = !DILocation(line: 29, column: 2, scope: !6646)
!6666 = !DILocation(line: 30, column: 27, scope: !6646)
!6667 = !DILocation(line: 30, column: 32, scope: !6646)
!6668 = !DILocation(line: 30, column: 40, scope: !6646)
!6669 = !DILocation(line: 30, column: 45, scope: !6646)
!6670 = !DILocation(line: 30, column: 51, scope: !6646)
!6671 = !DILocation(line: 30, column: 8, scope: !6646)
!6672 = !DILocation(line: 30, column: 6, scope: !6646)
!6673 = !DILocation(line: 31, column: 17, scope: !6646)
!6674 = !DILocation(line: 31, column: 25, scope: !6646)
!6675 = !DILocation(line: 31, column: 2, scope: !6646)
!6676 = !DILocation(line: 32, column: 9, scope: !6646)
!6677 = !DILocation(line: 32, column: 2, scope: !6646)
!6678 = distinct !DISubprogram(name: "rtl2830_bulk_write", scope: !3, file: !3, line: 11, type: !6679, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!6679 = !DISubroutineType(types: !6680)
!6680 = !{!345, !390, !7, !2203, !929}
!6681 = !DILocalVariable(name: "client", arg: 1, scope: !6678, file: !3, line: 11, type: !390)
!6682 = !DILocation(line: 11, column: 50, scope: !6678)
!6683 = !DILocalVariable(name: "reg", arg: 2, scope: !6678, file: !3, line: 11, type: !7)
!6684 = !DILocation(line: 11, column: 71, scope: !6678)
!6685 = !DILocalVariable(name: "val", arg: 3, scope: !6678, file: !3, line: 12, type: !2203)
!6686 = !DILocation(line: 12, column: 22, scope: !6678)
!6687 = !DILocalVariable(name: "val_count", arg: 4, scope: !6678, file: !3, line: 12, type: !929)
!6688 = !DILocation(line: 12, column: 34, scope: !6678)
!6689 = !DILocalVariable(name: "dev", scope: !6678, file: !3, line: 14, type: !4710)
!6690 = !DILocation(line: 14, column: 22, scope: !6678)
!6691 = !DILocation(line: 14, column: 47, scope: !6678)
!6692 = !DILocation(line: 14, column: 28, scope: !6678)
!6693 = !DILocalVariable(name: "ret", scope: !6678, file: !3, line: 15, type: !345)
!6694 = !DILocation(line: 15, column: 6, scope: !6678)
!6695 = !DILocation(line: 17, column: 15, scope: !6678)
!6696 = !DILocation(line: 17, column: 23, scope: !6678)
!6697 = !DILocation(line: 17, column: 2, scope: !6678)
!6698 = !DILocation(line: 18, column: 26, scope: !6678)
!6699 = !DILocation(line: 18, column: 31, scope: !6678)
!6700 = !DILocation(line: 18, column: 39, scope: !6678)
!6701 = !DILocation(line: 18, column: 44, scope: !6678)
!6702 = !DILocation(line: 18, column: 49, scope: !6678)
!6703 = !DILocation(line: 18, column: 8, scope: !6678)
!6704 = !DILocation(line: 18, column: 6, scope: !6678)
!6705 = !DILocation(line: 19, column: 17, scope: !6678)
!6706 = !DILocation(line: 19, column: 25, scope: !6678)
!6707 = !DILocation(line: 19, column: 2, scope: !6678)
!6708 = !DILocation(line: 20, column: 9, scope: !6678)
!6709 = !DILocation(line: 20, column: 2, scope: !6678)
!6710 = distinct !DISubprogram(name: "div_u64", scope: !6711, file: !6711, line: 124, type: !6712, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!6711 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/lizy2001/genbc/linux")
!6712 = !DISubroutineType(types: !6713)
!6713 = !{!540, !540, !443}
!6714 = !DILocalVariable(name: "dividend", arg: 1, scope: !6710, file: !6711, line: 124, type: !540)
!6715 = !DILocation(line: 124, column: 31, scope: !6710)
!6716 = !DILocalVariable(name: "divisor", arg: 2, scope: !6710, file: !6711, line: 124, type: !443)
!6717 = !DILocation(line: 124, column: 45, scope: !6710)
!6718 = !DILocalVariable(name: "remainder", scope: !6710, file: !6711, line: 126, type: !443)
!6719 = !DILocation(line: 126, column: 6, scope: !6710)
!6720 = !DILocation(line: 127, column: 21, scope: !6710)
!6721 = !DILocation(line: 127, column: 31, scope: !6710)
!6722 = !DILocation(line: 127, column: 9, scope: !6710)
!6723 = !DILocation(line: 127, column: 2, scope: !6710)
!6724 = distinct !DISubprogram(name: "div_u64_rem", scope: !6711, file: !6711, line: 25, type: !6725, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!6725 = !DISubroutineType(types: !6726)
!6726 = !{!540, !540, !443, !2832}
!6727 = !DILocalVariable(name: "dividend", arg: 1, scope: !6724, file: !6711, line: 25, type: !540)
!6728 = !DILocation(line: 25, column: 35, scope: !6724)
!6729 = !DILocalVariable(name: "divisor", arg: 2, scope: !6724, file: !6711, line: 25, type: !443)
!6730 = !DILocation(line: 25, column: 49, scope: !6724)
!6731 = !DILocalVariable(name: "remainder", arg: 3, scope: !6724, file: !6711, line: 25, type: !2832)
!6732 = !DILocation(line: 25, column: 63, scope: !6724)
!6733 = !DILocation(line: 27, column: 15, scope: !6724)
!6734 = !DILocation(line: 27, column: 26, scope: !6724)
!6735 = !DILocation(line: 27, column: 24, scope: !6724)
!6736 = !DILocation(line: 27, column: 3, scope: !6724)
!6737 = !DILocation(line: 27, column: 13, scope: !6724)
!6738 = !DILocation(line: 28, column: 9, scope: !6724)
!6739 = !DILocation(line: 28, column: 20, scope: !6724)
!6740 = !DILocation(line: 28, column: 18, scope: !6724)
!6741 = !DILocation(line: 28, column: 2, scope: !6724)
!6742 = distinct !DISubprogram(name: "div_s64", scope: !6711, file: !6711, line: 137, type: !6743, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!6743 = !DISubroutineType(types: !6744)
!6744 = !{!570, !570, !2491}
!6745 = !DILocalVariable(name: "dividend", arg: 1, scope: !6742, file: !6711, line: 137, type: !570)
!6746 = !DILocation(line: 137, column: 31, scope: !6742)
!6747 = !DILocalVariable(name: "divisor", arg: 2, scope: !6742, file: !6711, line: 137, type: !2491)
!6748 = !DILocation(line: 137, column: 45, scope: !6742)
!6749 = !DILocalVariable(name: "remainder", scope: !6742, file: !6711, line: 139, type: !2491)
!6750 = !DILocation(line: 139, column: 6, scope: !6742)
!6751 = !DILocation(line: 140, column: 21, scope: !6742)
!6752 = !DILocation(line: 140, column: 31, scope: !6742)
!6753 = !DILocation(line: 140, column: 9, scope: !6742)
!6754 = !DILocation(line: 140, column: 2, scope: !6742)
!6755 = distinct !DISubprogram(name: "div_s64_rem", scope: !6711, file: !6711, line: 39, type: !6756, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!6756 = !DISubroutineType(types: !6757)
!6757 = !{!570, !570, !2491, !4622}
!6758 = !DILocalVariable(name: "dividend", arg: 1, scope: !6755, file: !6711, line: 39, type: !570)
!6759 = !DILocation(line: 39, column: 35, scope: !6755)
!6760 = !DILocalVariable(name: "divisor", arg: 2, scope: !6755, file: !6711, line: 39, type: !2491)
!6761 = !DILocation(line: 39, column: 49, scope: !6755)
!6762 = !DILocalVariable(name: "remainder", arg: 3, scope: !6755, file: !6711, line: 39, type: !4622)
!6763 = !DILocation(line: 39, column: 63, scope: !6755)
!6764 = !DILocation(line: 41, column: 15, scope: !6755)
!6765 = !DILocation(line: 41, column: 26, scope: !6755)
!6766 = !DILocation(line: 41, column: 24, scope: !6755)
!6767 = !DILocation(line: 41, column: 3, scope: !6755)
!6768 = !DILocation(line: 41, column: 13, scope: !6755)
!6769 = !DILocation(line: 42, column: 9, scope: !6755)
!6770 = !DILocation(line: 42, column: 20, scope: !6755)
!6771 = !DILocation(line: 42, column: 18, scope: !6755)
!6772 = !DILocation(line: 42, column: 2, scope: !6755)
!6773 = distinct !DISubprogram(name: "set_bit", scope: !6774, file: !6774, line: 26, type: !6775, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!6774 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!6775 = !DISubroutineType(types: !6776)
!6776 = !{null, !344, !6777}
!6777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6778, size: 64)
!6778 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !343)
!6779 = !DILocalVariable(name: "nr", arg: 1, scope: !6780, file: !5566, line: 52, type: !344)
!6780 = distinct !DISubprogram(name: "arch_set_bit", scope: !5566, file: !5566, line: 52, type: !6775, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!6781 = !DILocation(line: 52, column: 19, scope: !6780, inlinedAt: !6782)
!6782 = distinct !DILocation(line: 29, column: 2, scope: !6773)
!6783 = !DILocalVariable(name: "addr", arg: 2, scope: !6780, file: !5566, line: 52, type: !6777)
!6784 = !DILocation(line: 52, column: 47, scope: !6780, inlinedAt: !6782)
!6785 = !DILocalVariable(name: "v", arg: 1, scope: !6786, file: !6787, line: 84, type: !6790)
!6786 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6787, file: !6787, line: 84, type: !6788, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!6787 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!6788 = !DISubroutineType(types: !6789)
!6789 = !{null, !6790, !929}
!6790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6791, size: 64)
!6791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6792)
!6792 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6793 = !DILocation(line: 84, column: 74, scope: !6786, inlinedAt: !6794)
!6794 = distinct !DILocation(line: 28, column: 2, scope: !6773)
!6795 = !DILocalVariable(name: "size", arg: 2, scope: !6786, file: !6787, line: 84, type: !929)
!6796 = !DILocation(line: 84, column: 84, scope: !6786, inlinedAt: !6794)
!6797 = !DILocalVariable(name: "nr", arg: 1, scope: !6773, file: !6774, line: 26, type: !344)
!6798 = !DILocation(line: 26, column: 33, scope: !6773)
!6799 = !DILocalVariable(name: "addr", arg: 2, scope: !6773, file: !6774, line: 26, type: !6777)
!6800 = !DILocation(line: 26, column: 61, scope: !6773)
!6801 = !DILocation(line: 28, column: 26, scope: !6773)
!6802 = !DILocation(line: 28, column: 33, scope: !6773)
!6803 = !DILocation(line: 28, column: 31, scope: !6773)
!6804 = !DILocation(line: 86, column: 20, scope: !6786, inlinedAt: !6794)
!6805 = !DILocation(line: 86, column: 23, scope: !6786, inlinedAt: !6794)
!6806 = !DILocation(line: 86, column: 2, scope: !6786, inlinedAt: !6794)
!6807 = !DILocation(line: 87, column: 2, scope: !6786, inlinedAt: !6794)
!6808 = !DILocation(line: 29, column: 15, scope: !6773)
!6809 = !DILocation(line: 29, column: 19, scope: !6773)
!6810 = !DILocation(line: 54, column: 27, scope: !6811, inlinedAt: !6782)
!6811 = distinct !DILexicalBlock(scope: !6780, file: !5566, line: 54, column: 6)
!6812 = !DILocation(line: 54, column: 6, scope: !6811, inlinedAt: !6782)
!6813 = !DILocation(line: 54, column: 6, scope: !6780, inlinedAt: !6782)
!6814 = !DILocation(line: 56, column: 6, scope: !6815, inlinedAt: !6782)
!6815 = distinct !DILexicalBlock(scope: !6811, file: !5566, line: 54, column: 32)
!6816 = !DILocation(line: 57, column: 12, scope: !6815, inlinedAt: !6782)
!6817 = !DILocation(line: 55, column: 3, scope: !6815, inlinedAt: !6782)
!6818 = !{i32 -2147077654}
!6819 = !DILocation(line: 59, column: 2, scope: !6815, inlinedAt: !6782)
!6820 = !DILocation(line: 61, column: 8, scope: !6821, inlinedAt: !6782)
!6821 = distinct !DILexicalBlock(scope: !6811, file: !5566, line: 59, column: 9)
!6822 = !DILocation(line: 61, column: 32, scope: !6821, inlinedAt: !6782)
!6823 = !DILocation(line: 60, column: 3, scope: !6821, inlinedAt: !6782)
!6824 = !{i32 -2147077522}
!6825 = !DILocation(line: 30, column: 1, scope: !6773)
!6826 = distinct !DISubprogram(name: "clear_bit", scope: !6774, file: !6774, line: 39, type: !6775, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!6827 = !DILocalVariable(name: "nr", arg: 1, scope: !6828, file: !5566, line: 72, type: !344)
!6828 = distinct !DISubprogram(name: "arch_clear_bit", scope: !5566, file: !5566, line: 72, type: !6775, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!6829 = !DILocation(line: 72, column: 21, scope: !6828, inlinedAt: !6830)
!6830 = distinct !DILocation(line: 42, column: 2, scope: !6826)
!6831 = !DILocalVariable(name: "addr", arg: 2, scope: !6828, file: !5566, line: 72, type: !6777)
!6832 = !DILocation(line: 72, column: 49, scope: !6828, inlinedAt: !6830)
!6833 = !DILocation(line: 84, column: 74, scope: !6786, inlinedAt: !6834)
!6834 = distinct !DILocation(line: 41, column: 2, scope: !6826)
!6835 = !DILocation(line: 84, column: 84, scope: !6786, inlinedAt: !6834)
!6836 = !DILocalVariable(name: "nr", arg: 1, scope: !6826, file: !6774, line: 39, type: !344)
!6837 = !DILocation(line: 39, column: 35, scope: !6826)
!6838 = !DILocalVariable(name: "addr", arg: 2, scope: !6826, file: !6774, line: 39, type: !6777)
!6839 = !DILocation(line: 39, column: 63, scope: !6826)
!6840 = !DILocation(line: 41, column: 26, scope: !6826)
!6841 = !DILocation(line: 41, column: 33, scope: !6826)
!6842 = !DILocation(line: 41, column: 31, scope: !6826)
!6843 = !DILocation(line: 86, column: 20, scope: !6786, inlinedAt: !6834)
!6844 = !DILocation(line: 86, column: 23, scope: !6786, inlinedAt: !6834)
!6845 = !DILocation(line: 86, column: 2, scope: !6786, inlinedAt: !6834)
!6846 = !DILocation(line: 87, column: 2, scope: !6786, inlinedAt: !6834)
!6847 = !DILocation(line: 42, column: 17, scope: !6826)
!6848 = !DILocation(line: 42, column: 21, scope: !6826)
!6849 = !DILocation(line: 74, column: 27, scope: !6850, inlinedAt: !6830)
!6850 = distinct !DILexicalBlock(scope: !6828, file: !5566, line: 74, column: 6)
!6851 = !DILocation(line: 74, column: 6, scope: !6850, inlinedAt: !6830)
!6852 = !DILocation(line: 74, column: 6, scope: !6828, inlinedAt: !6830)
!6853 = !DILocation(line: 76, column: 6, scope: !6854, inlinedAt: !6830)
!6854 = distinct !DILexicalBlock(scope: !6850, file: !5566, line: 74, column: 32)
!6855 = !DILocation(line: 77, column: 13, scope: !6854, inlinedAt: !6830)
!6856 = !DILocation(line: 77, column: 12, scope: !6854, inlinedAt: !6830)
!6857 = !DILocation(line: 75, column: 3, scope: !6854, inlinedAt: !6830)
!6858 = !{i32 -2147076700}
!6859 = !DILocation(line: 78, column: 2, scope: !6854, inlinedAt: !6830)
!6860 = !DILocation(line: 80, column: 8, scope: !6861, inlinedAt: !6830)
!6861 = distinct !DILexicalBlock(scope: !6850, file: !5566, line: 78, column: 9)
!6862 = !DILocation(line: 80, column: 32, scope: !6861, inlinedAt: !6830)
!6863 = !DILocation(line: 79, column: 3, scope: !6861, inlinedAt: !6830)
!6864 = !{i32 -2147076568}
!6865 = !DILocation(line: 43, column: 1, scope: !6826)
!6866 = distinct !DISubprogram(name: "kasan_check_write", scope: !6867, file: !6867, line: 38, type: !6868, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!6867 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6868 = !DISubroutineType(types: !6869)
!6869 = !{!840, !6790, !7}
!6870 = !DILocalVariable(name: "p", arg: 1, scope: !6866, file: !6867, line: 38, type: !6790)
!6871 = !DILocation(line: 38, column: 59, scope: !6866)
!6872 = !DILocalVariable(name: "size", arg: 2, scope: !6866, file: !6867, line: 38, type: !7)
!6873 = !DILocation(line: 38, column: 75, scope: !6866)
!6874 = !DILocation(line: 40, column: 2, scope: !6866)
!6875 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6876, file: !6876, line: 178, type: !6877, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!6876 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6877 = !DISubroutineType(types: !6878)
!6878 = !{null, !6790, !929, !345}
!6879 = !DILocalVariable(name: "ptr", arg: 1, scope: !6875, file: !6876, line: 178, type: !6790)
!6880 = !DILocation(line: 178, column: 60, scope: !6875)
!6881 = !DILocalVariable(name: "size", arg: 2, scope: !6875, file: !6876, line: 178, type: !929)
!6882 = !DILocation(line: 178, column: 72, scope: !6875)
!6883 = !DILocalVariable(name: "type", arg: 3, scope: !6875, file: !6876, line: 179, type: !345)
!6884 = !DILocation(line: 179, column: 15, scope: !6875)
!6885 = !DILocation(line: 179, column: 23, scope: !6875)
